; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!610104 () Bool)

(assert start!610104)

(declare-fun b!6102387 () Bool)

(assert (=> b!6102387 true))

(assert (=> b!6102387 true))

(declare-fun lambda!332445 () Int)

(declare-fun lambda!332444 () Int)

(assert (=> b!6102387 (not (= lambda!332445 lambda!332444))))

(assert (=> b!6102387 true))

(assert (=> b!6102387 true))

(declare-fun b!6102380 () Bool)

(declare-fun e!3721753 () Bool)

(declare-fun tp!1703775 () Bool)

(declare-fun tp!1703777 () Bool)

(assert (=> b!6102380 (= e!3721753 (and tp!1703775 tp!1703777))))

(declare-fun b!6102381 () Bool)

(declare-fun e!3721752 () Bool)

(declare-datatypes ((C!32374 0))(
  ( (C!32375 (val!25889 Int)) )
))
(declare-datatypes ((Regex!16052 0))(
  ( (ElementMatch!16052 (c!1096208 C!32374)) (Concat!24897 (regOne!32616 Regex!16052) (regTwo!32616 Regex!16052)) (EmptyExpr!16052) (Star!16052 (reg!16381 Regex!16052)) (EmptyLang!16052) (Union!16052 (regOne!32617 Regex!16052) (regTwo!32617 Regex!16052)) )
))
(declare-datatypes ((List!64455 0))(
  ( (Nil!64331) (Cons!64331 (h!70779 Regex!16052) (t!377906 List!64455)) )
))
(declare-datatypes ((Context!10872 0))(
  ( (Context!10873 (exprs!5936 List!64455)) )
))
(declare-datatypes ((List!64456 0))(
  ( (Nil!64332) (Cons!64332 (h!70780 Context!10872) (t!377907 List!64456)) )
))
(declare-fun zl!343 () List!64456)

(declare-fun inv!83378 (Context!10872) Bool)

(assert (=> b!6102381 (= e!3721752 (inv!83378 (Context!10873 (t!377906 (exprs!5936 (h!70780 zl!343))))))))

(declare-fun lt!2329334 () (Set Context!10872))

(declare-datatypes ((List!64457 0))(
  ( (Nil!64333) (Cons!64333 (h!70781 C!32374) (t!377908 List!64457)) )
))
(declare-fun s!2326 () List!64457)

(declare-fun derivationStepZipperUp!1226 (Context!10872 C!32374) (Set Context!10872))

(assert (=> b!6102381 (= lt!2329334 (derivationStepZipperUp!1226 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))) (h!70781 s!2326)))))

(declare-fun b!6102382 () Bool)

(declare-fun res!2531841 () Bool)

(declare-fun e!3721754 () Bool)

(assert (=> b!6102382 (=> res!2531841 e!3721754)))

(declare-fun isEmpty!36251 (List!64456) Bool)

(assert (=> b!6102382 (= res!2531841 (not (isEmpty!36251 (t!377907 zl!343))))))

(declare-fun e!3721756 () Bool)

(declare-fun b!6102383 () Bool)

(declare-fun e!3721757 () Bool)

(declare-fun tp!1703778 () Bool)

(assert (=> b!6102383 (= e!3721757 (and (inv!83378 (h!70780 zl!343)) e!3721756 tp!1703778))))

(declare-fun res!2531848 () Bool)

(declare-fun e!3721755 () Bool)

(assert (=> start!610104 (=> (not res!2531848) (not e!3721755))))

(declare-fun r!7292 () Regex!16052)

(declare-fun validRegex!7788 (Regex!16052) Bool)

(assert (=> start!610104 (= res!2531848 (validRegex!7788 r!7292))))

(assert (=> start!610104 e!3721755))

(assert (=> start!610104 e!3721753))

(declare-fun condSetEmpty!41229 () Bool)

(declare-fun z!1189 () (Set Context!10872))

(assert (=> start!610104 (= condSetEmpty!41229 (= z!1189 (as set.empty (Set Context!10872))))))

(declare-fun setRes!41229 () Bool)

(assert (=> start!610104 setRes!41229))

(assert (=> start!610104 e!3721757))

(declare-fun e!3721750 () Bool)

(assert (=> start!610104 e!3721750))

(declare-fun b!6102384 () Bool)

(declare-fun tp!1703780 () Bool)

(assert (=> b!6102384 (= e!3721753 tp!1703780)))

(declare-fun b!6102385 () Bool)

(declare-fun res!2531845 () Bool)

(assert (=> b!6102385 (=> res!2531845 e!3721754)))

(assert (=> b!6102385 (= res!2531845 (not (is-Cons!64331 (exprs!5936 (h!70780 zl!343)))))))

(declare-fun setIsEmpty!41229 () Bool)

(assert (=> setIsEmpty!41229 setRes!41229))

(declare-fun b!6102386 () Bool)

(declare-fun res!2531846 () Bool)

(assert (=> b!6102386 (=> res!2531846 e!3721752)))

(declare-fun isEmpty!36252 (List!64455) Bool)

(assert (=> b!6102386 (= res!2531846 (isEmpty!36252 (t!377906 (exprs!5936 (h!70780 zl!343)))))))

(declare-fun tp!1703776 () Bool)

(declare-fun e!3721751 () Bool)

(declare-fun setElem!41229 () Context!10872)

(declare-fun setNonEmpty!41229 () Bool)

(assert (=> setNonEmpty!41229 (= setRes!41229 (and tp!1703776 (inv!83378 setElem!41229) e!3721751))))

(declare-fun setRest!41229 () (Set Context!10872))

(assert (=> setNonEmpty!41229 (= z!1189 (set.union (set.insert setElem!41229 (as set.empty (Set Context!10872))) setRest!41229))))

(assert (=> b!6102387 (= e!3721754 e!3721752)))

(declare-fun res!2531844 () Bool)

(assert (=> b!6102387 (=> res!2531844 e!3721752)))

(declare-fun lt!2329338 () Bool)

(declare-fun lt!2329335 () Bool)

(assert (=> b!6102387 (= res!2531844 (or (not (= lt!2329335 lt!2329338)) (is-Nil!64333 s!2326)))))

(declare-fun Exists!3122 (Int) Bool)

(assert (=> b!6102387 (= (Exists!3122 lambda!332444) (Exists!3122 lambda!332445))))

(declare-datatypes ((Unit!157375 0))(
  ( (Unit!157376) )
))
(declare-fun lt!2329333 () Unit!157375)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1659 (Regex!16052 Regex!16052 List!64457) Unit!157375)

(assert (=> b!6102387 (= lt!2329333 (lemmaExistCutMatchRandMatchRSpecEquivalent!1659 (regOne!32616 r!7292) (regTwo!32616 r!7292) s!2326))))

(assert (=> b!6102387 (= lt!2329338 (Exists!3122 lambda!332444))))

(declare-datatypes ((tuple2!66062 0))(
  ( (tuple2!66063 (_1!36334 List!64457) (_2!36334 List!64457)) )
))
(declare-datatypes ((Option!15943 0))(
  ( (None!15942) (Some!15942 (v!52075 tuple2!66062)) )
))
(declare-fun isDefined!12646 (Option!15943) Bool)

(declare-fun findConcatSeparation!2357 (Regex!16052 Regex!16052 List!64457 List!64457 List!64457) Option!15943)

(assert (=> b!6102387 (= lt!2329338 (isDefined!12646 (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) Nil!64333 s!2326 s!2326)))))

(declare-fun lt!2329337 () Unit!157375)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2121 (Regex!16052 Regex!16052 List!64457) Unit!157375)

(assert (=> b!6102387 (= lt!2329337 (lemmaFindConcatSeparationEquivalentToExists!2121 (regOne!32616 r!7292) (regTwo!32616 r!7292) s!2326))))

(declare-fun b!6102388 () Bool)

(declare-fun tp_is_empty!41357 () Bool)

(assert (=> b!6102388 (= e!3721753 tp_is_empty!41357)))

(declare-fun b!6102389 () Bool)

(declare-fun res!2531849 () Bool)

(assert (=> b!6102389 (=> (not res!2531849) (not e!3721755))))

(declare-fun toList!9836 ((Set Context!10872)) List!64456)

(assert (=> b!6102389 (= res!2531849 (= (toList!9836 z!1189) zl!343))))

(declare-fun b!6102390 () Bool)

(declare-fun tp!1703774 () Bool)

(declare-fun tp!1703773 () Bool)

(assert (=> b!6102390 (= e!3721753 (and tp!1703774 tp!1703773))))

(declare-fun b!6102391 () Bool)

(declare-fun res!2531842 () Bool)

(assert (=> b!6102391 (=> res!2531842 e!3721754)))

(declare-fun generalisedConcat!1649 (List!64455) Regex!16052)

(assert (=> b!6102391 (= res!2531842 (not (= r!7292 (generalisedConcat!1649 (exprs!5936 (h!70780 zl!343))))))))

(declare-fun b!6102392 () Bool)

(declare-fun tp!1703771 () Bool)

(assert (=> b!6102392 (= e!3721751 tp!1703771)))

(declare-fun b!6102393 () Bool)

(assert (=> b!6102393 (= e!3721755 (not e!3721754))))

(declare-fun res!2531847 () Bool)

(assert (=> b!6102393 (=> res!2531847 e!3721754)))

(assert (=> b!6102393 (= res!2531847 (not (is-Cons!64332 zl!343)))))

(declare-fun matchRSpec!3153 (Regex!16052 List!64457) Bool)

(assert (=> b!6102393 (= lt!2329335 (matchRSpec!3153 r!7292 s!2326))))

(declare-fun matchR!8235 (Regex!16052 List!64457) Bool)

(assert (=> b!6102393 (= lt!2329335 (matchR!8235 r!7292 s!2326))))

(declare-fun lt!2329336 () Unit!157375)

(declare-fun mainMatchTheorem!3153 (Regex!16052 List!64457) Unit!157375)

(assert (=> b!6102393 (= lt!2329336 (mainMatchTheorem!3153 r!7292 s!2326))))

(declare-fun b!6102394 () Bool)

(declare-fun res!2531850 () Bool)

(assert (=> b!6102394 (=> res!2531850 e!3721754)))

(assert (=> b!6102394 (= res!2531850 (or (is-EmptyExpr!16052 r!7292) (is-EmptyLang!16052 r!7292) (is-ElementMatch!16052 r!7292) (is-Union!16052 r!7292) (not (is-Concat!24897 r!7292))))))

(declare-fun b!6102395 () Bool)

(declare-fun res!2531843 () Bool)

(assert (=> b!6102395 (=> (not res!2531843) (not e!3721755))))

(declare-fun unfocusZipper!1794 (List!64456) Regex!16052)

(assert (=> b!6102395 (= res!2531843 (= r!7292 (unfocusZipper!1794 zl!343)))))

(declare-fun b!6102396 () Bool)

(declare-fun tp!1703772 () Bool)

(assert (=> b!6102396 (= e!3721756 tp!1703772)))

(declare-fun b!6102397 () Bool)

(declare-fun res!2531840 () Bool)

(assert (=> b!6102397 (=> res!2531840 e!3721754)))

(declare-fun generalisedUnion!1896 (List!64455) Regex!16052)

(declare-fun unfocusZipperList!1473 (List!64456) List!64455)

(assert (=> b!6102397 (= res!2531840 (not (= r!7292 (generalisedUnion!1896 (unfocusZipperList!1473 zl!343)))))))

(declare-fun b!6102398 () Bool)

(declare-fun tp!1703779 () Bool)

(assert (=> b!6102398 (= e!3721750 (and tp_is_empty!41357 tp!1703779))))

(assert (= (and start!610104 res!2531848) b!6102389))

(assert (= (and b!6102389 res!2531849) b!6102395))

(assert (= (and b!6102395 res!2531843) b!6102393))

(assert (= (and b!6102393 (not res!2531847)) b!6102382))

(assert (= (and b!6102382 (not res!2531841)) b!6102391))

(assert (= (and b!6102391 (not res!2531842)) b!6102385))

(assert (= (and b!6102385 (not res!2531845)) b!6102397))

(assert (= (and b!6102397 (not res!2531840)) b!6102394))

(assert (= (and b!6102394 (not res!2531850)) b!6102387))

(assert (= (and b!6102387 (not res!2531844)) b!6102386))

(assert (= (and b!6102386 (not res!2531846)) b!6102381))

(assert (= (and start!610104 (is-ElementMatch!16052 r!7292)) b!6102388))

(assert (= (and start!610104 (is-Concat!24897 r!7292)) b!6102380))

(assert (= (and start!610104 (is-Star!16052 r!7292)) b!6102384))

(assert (= (and start!610104 (is-Union!16052 r!7292)) b!6102390))

(assert (= (and start!610104 condSetEmpty!41229) setIsEmpty!41229))

(assert (= (and start!610104 (not condSetEmpty!41229)) setNonEmpty!41229))

(assert (= setNonEmpty!41229 b!6102392))

(assert (= b!6102383 b!6102396))

(assert (= (and start!610104 (is-Cons!64332 zl!343)) b!6102383))

(assert (= (and start!610104 (is-Cons!64333 s!2326)) b!6102398))

(declare-fun m!6954720 () Bool)

(assert (=> b!6102386 m!6954720))

(declare-fun m!6954722 () Bool)

(assert (=> b!6102397 m!6954722))

(assert (=> b!6102397 m!6954722))

(declare-fun m!6954724 () Bool)

(assert (=> b!6102397 m!6954724))

(declare-fun m!6954726 () Bool)

(assert (=> b!6102395 m!6954726))

(declare-fun m!6954728 () Bool)

(assert (=> b!6102383 m!6954728))

(declare-fun m!6954730 () Bool)

(assert (=> b!6102381 m!6954730))

(declare-fun m!6954732 () Bool)

(assert (=> b!6102381 m!6954732))

(declare-fun m!6954734 () Bool)

(assert (=> b!6102389 m!6954734))

(declare-fun m!6954736 () Bool)

(assert (=> b!6102393 m!6954736))

(declare-fun m!6954738 () Bool)

(assert (=> b!6102393 m!6954738))

(declare-fun m!6954740 () Bool)

(assert (=> b!6102393 m!6954740))

(declare-fun m!6954742 () Bool)

(assert (=> start!610104 m!6954742))

(declare-fun m!6954744 () Bool)

(assert (=> b!6102387 m!6954744))

(declare-fun m!6954746 () Bool)

(assert (=> b!6102387 m!6954746))

(declare-fun m!6954748 () Bool)

(assert (=> b!6102387 m!6954748))

(declare-fun m!6954750 () Bool)

(assert (=> b!6102387 m!6954750))

(declare-fun m!6954752 () Bool)

(assert (=> b!6102387 m!6954752))

(assert (=> b!6102387 m!6954744))

(assert (=> b!6102387 m!6954746))

(declare-fun m!6954754 () Bool)

(assert (=> b!6102387 m!6954754))

(declare-fun m!6954756 () Bool)

(assert (=> setNonEmpty!41229 m!6954756))

(declare-fun m!6954758 () Bool)

(assert (=> b!6102391 m!6954758))

(declare-fun m!6954760 () Bool)

(assert (=> b!6102382 m!6954760))

(push 1)

(assert tp_is_empty!41357)

(assert (not b!6102389))

(assert (not b!6102383))

(assert (not b!6102391))

(assert (not b!6102380))

(assert (not b!6102395))

(assert (not b!6102398))

(assert (not b!6102396))

(assert (not start!610104))

(assert (not b!6102381))

(assert (not b!6102382))

(assert (not b!6102392))

(assert (not setNonEmpty!41229))

(assert (not b!6102386))

(assert (not b!6102393))

(assert (not b!6102384))

(assert (not b!6102397))

(assert (not b!6102390))

(assert (not b!6102387))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1912894 () Bool)

(declare-fun lambda!332456 () Int)

(declare-fun forall!15173 (List!64455 Int) Bool)

(assert (=> d!1912894 (= (inv!83378 (h!70780 zl!343)) (forall!15173 (exprs!5936 (h!70780 zl!343)) lambda!332456))))

(declare-fun bs!1515401 () Bool)

(assert (= bs!1515401 d!1912894))

(declare-fun m!6954804 () Bool)

(assert (=> bs!1515401 m!6954804))

(assert (=> b!6102383 d!1912894))

(declare-fun bs!1515402 () Bool)

(declare-fun d!1912896 () Bool)

(assert (= bs!1515402 (and d!1912896 d!1912894)))

(declare-fun lambda!332459 () Int)

(assert (=> bs!1515402 (= lambda!332459 lambda!332456)))

(declare-fun b!6102496 () Bool)

(declare-fun e!3721805 () Bool)

(declare-fun e!3721801 () Bool)

(assert (=> b!6102496 (= e!3721805 e!3721801)))

(declare-fun c!1096221 () Bool)

(assert (=> b!6102496 (= c!1096221 (isEmpty!36252 (exprs!5936 (h!70780 zl!343))))))

(declare-fun b!6102497 () Bool)

(declare-fun e!3721800 () Regex!16052)

(assert (=> b!6102497 (= e!3721800 (h!70779 (exprs!5936 (h!70780 zl!343))))))

(assert (=> d!1912896 e!3721805))

(declare-fun res!2531900 () Bool)

(assert (=> d!1912896 (=> (not res!2531900) (not e!3721805))))

(declare-fun lt!2329359 () Regex!16052)

(assert (=> d!1912896 (= res!2531900 (validRegex!7788 lt!2329359))))

(assert (=> d!1912896 (= lt!2329359 e!3721800)))

(declare-fun c!1096219 () Bool)

(declare-fun e!3721804 () Bool)

(assert (=> d!1912896 (= c!1096219 e!3721804)))

(declare-fun res!2531901 () Bool)

(assert (=> d!1912896 (=> (not res!2531901) (not e!3721804))))

(assert (=> d!1912896 (= res!2531901 (is-Cons!64331 (exprs!5936 (h!70780 zl!343))))))

(assert (=> d!1912896 (forall!15173 (exprs!5936 (h!70780 zl!343)) lambda!332459)))

(assert (=> d!1912896 (= (generalisedConcat!1649 (exprs!5936 (h!70780 zl!343))) lt!2329359)))

(declare-fun b!6102498 () Bool)

(declare-fun isEmptyExpr!1469 (Regex!16052) Bool)

(assert (=> b!6102498 (= e!3721801 (isEmptyExpr!1469 lt!2329359))))

(declare-fun b!6102499 () Bool)

(declare-fun e!3721803 () Bool)

(assert (=> b!6102499 (= e!3721801 e!3721803)))

(declare-fun c!1096220 () Bool)

(declare-fun tail!11710 (List!64455) List!64455)

(assert (=> b!6102499 (= c!1096220 (isEmpty!36252 (tail!11710 (exprs!5936 (h!70780 zl!343)))))))

(declare-fun b!6102500 () Bool)

(declare-fun head!12625 (List!64455) Regex!16052)

(assert (=> b!6102500 (= e!3721803 (= lt!2329359 (head!12625 (exprs!5936 (h!70780 zl!343)))))))

(declare-fun b!6102501 () Bool)

(declare-fun isConcat!992 (Regex!16052) Bool)

(assert (=> b!6102501 (= e!3721803 (isConcat!992 lt!2329359))))

(declare-fun b!6102502 () Bool)

(declare-fun e!3721802 () Regex!16052)

(assert (=> b!6102502 (= e!3721802 (Concat!24897 (h!70779 (exprs!5936 (h!70780 zl!343))) (generalisedConcat!1649 (t!377906 (exprs!5936 (h!70780 zl!343))))))))

(declare-fun b!6102503 () Bool)

(assert (=> b!6102503 (= e!3721802 EmptyExpr!16052)))

(declare-fun b!6102504 () Bool)

(assert (=> b!6102504 (= e!3721804 (isEmpty!36252 (t!377906 (exprs!5936 (h!70780 zl!343)))))))

(declare-fun b!6102505 () Bool)

(assert (=> b!6102505 (= e!3721800 e!3721802)))

(declare-fun c!1096218 () Bool)

(assert (=> b!6102505 (= c!1096218 (is-Cons!64331 (exprs!5936 (h!70780 zl!343))))))

(assert (= (and d!1912896 res!2531901) b!6102504))

(assert (= (and d!1912896 c!1096219) b!6102497))

(assert (= (and d!1912896 (not c!1096219)) b!6102505))

(assert (= (and b!6102505 c!1096218) b!6102502))

(assert (= (and b!6102505 (not c!1096218)) b!6102503))

(assert (= (and d!1912896 res!2531900) b!6102496))

(assert (= (and b!6102496 c!1096221) b!6102498))

(assert (= (and b!6102496 (not c!1096221)) b!6102499))

(assert (= (and b!6102499 c!1096220) b!6102500))

(assert (= (and b!6102499 (not c!1096220)) b!6102501))

(declare-fun m!6954806 () Bool)

(assert (=> b!6102499 m!6954806))

(assert (=> b!6102499 m!6954806))

(declare-fun m!6954808 () Bool)

(assert (=> b!6102499 m!6954808))

(declare-fun m!6954810 () Bool)

(assert (=> b!6102496 m!6954810))

(declare-fun m!6954812 () Bool)

(assert (=> b!6102498 m!6954812))

(declare-fun m!6954814 () Bool)

(assert (=> b!6102502 m!6954814))

(assert (=> b!6102504 m!6954720))

(declare-fun m!6954816 () Bool)

(assert (=> d!1912896 m!6954816))

(declare-fun m!6954818 () Bool)

(assert (=> d!1912896 m!6954818))

(declare-fun m!6954820 () Bool)

(assert (=> b!6102500 m!6954820))

(declare-fun m!6954822 () Bool)

(assert (=> b!6102501 m!6954822))

(assert (=> b!6102391 d!1912896))

(declare-fun d!1912898 () Bool)

(assert (=> d!1912898 (= (isEmpty!36251 (t!377907 zl!343)) (is-Nil!64332 (t!377907 zl!343)))))

(assert (=> b!6102382 d!1912898))

(declare-fun d!1912900 () Bool)

(declare-fun lt!2329362 () Regex!16052)

(assert (=> d!1912900 (validRegex!7788 lt!2329362)))

(assert (=> d!1912900 (= lt!2329362 (generalisedUnion!1896 (unfocusZipperList!1473 zl!343)))))

(assert (=> d!1912900 (= (unfocusZipper!1794 zl!343) lt!2329362)))

(declare-fun bs!1515403 () Bool)

(assert (= bs!1515403 d!1912900))

(declare-fun m!6954824 () Bool)

(assert (=> bs!1515403 m!6954824))

(assert (=> bs!1515403 m!6954722))

(assert (=> bs!1515403 m!6954722))

(assert (=> bs!1515403 m!6954724))

(assert (=> b!6102395 d!1912900))

(declare-fun bs!1515406 () Bool)

(declare-fun b!6102539 () Bool)

(assert (= bs!1515406 (and b!6102539 b!6102387)))

(declare-fun lambda!332467 () Int)

(assert (=> bs!1515406 (not (= lambda!332467 lambda!332444))))

(assert (=> bs!1515406 (not (= lambda!332467 lambda!332445))))

(assert (=> b!6102539 true))

(assert (=> b!6102539 true))

(declare-fun bs!1515407 () Bool)

(declare-fun b!6102546 () Bool)

(assert (= bs!1515407 (and b!6102546 b!6102387)))

(declare-fun lambda!332468 () Int)

(assert (=> bs!1515407 (not (= lambda!332468 lambda!332444))))

(assert (=> bs!1515407 (= lambda!332468 lambda!332445)))

(declare-fun bs!1515408 () Bool)

(assert (= bs!1515408 (and b!6102546 b!6102539)))

(assert (=> bs!1515408 (not (= lambda!332468 lambda!332467))))

(assert (=> b!6102546 true))

(assert (=> b!6102546 true))

(declare-fun b!6102538 () Bool)

(declare-fun e!3721825 () Bool)

(declare-fun e!3721828 () Bool)

(assert (=> b!6102538 (= e!3721825 e!3721828)))

(declare-fun c!1096232 () Bool)

(assert (=> b!6102538 (= c!1096232 (is-Star!16052 r!7292))))

(declare-fun e!3721827 () Bool)

(declare-fun call!504621 () Bool)

(assert (=> b!6102539 (= e!3721827 call!504621)))

(declare-fun b!6102540 () Bool)

(declare-fun c!1096231 () Bool)

(assert (=> b!6102540 (= c!1096231 (is-ElementMatch!16052 r!7292))))

(declare-fun e!3721830 () Bool)

(declare-fun e!3721826 () Bool)

(assert (=> b!6102540 (= e!3721830 e!3721826)))

(declare-fun b!6102541 () Bool)

(declare-fun e!3721824 () Bool)

(assert (=> b!6102541 (= e!3721824 e!3721830)))

(declare-fun res!2531918 () Bool)

(assert (=> b!6102541 (= res!2531918 (not (is-EmptyLang!16052 r!7292)))))

(assert (=> b!6102541 (=> (not res!2531918) (not e!3721830))))

(declare-fun b!6102542 () Bool)

(declare-fun c!1096233 () Bool)

(assert (=> b!6102542 (= c!1096233 (is-Union!16052 r!7292))))

(assert (=> b!6102542 (= e!3721826 e!3721825)))

(declare-fun b!6102543 () Bool)

(declare-fun e!3721829 () Bool)

(assert (=> b!6102543 (= e!3721825 e!3721829)))

(declare-fun res!2531920 () Bool)

(assert (=> b!6102543 (= res!2531920 (matchRSpec!3153 (regOne!32617 r!7292) s!2326))))

(assert (=> b!6102543 (=> res!2531920 e!3721829)))

(declare-fun b!6102544 () Bool)

(assert (=> b!6102544 (= e!3721829 (matchRSpec!3153 (regTwo!32617 r!7292) s!2326))))

(declare-fun b!6102545 () Bool)

(declare-fun call!504622 () Bool)

(assert (=> b!6102545 (= e!3721824 call!504622)))

(assert (=> b!6102546 (= e!3721828 call!504621)))

(declare-fun b!6102547 () Bool)

(assert (=> b!6102547 (= e!3721826 (= s!2326 (Cons!64333 (c!1096208 r!7292) Nil!64333)))))

(declare-fun bm!504616 () Bool)

(declare-fun isEmpty!36255 (List!64457) Bool)

(assert (=> bm!504616 (= call!504622 (isEmpty!36255 s!2326))))

(declare-fun d!1912904 () Bool)

(declare-fun c!1096230 () Bool)

(assert (=> d!1912904 (= c!1096230 (is-EmptyExpr!16052 r!7292))))

(assert (=> d!1912904 (= (matchRSpec!3153 r!7292 s!2326) e!3721824)))

(declare-fun bm!504617 () Bool)

(assert (=> bm!504617 (= call!504621 (Exists!3122 (ite c!1096232 lambda!332467 lambda!332468)))))

(declare-fun b!6102548 () Bool)

(declare-fun res!2531919 () Bool)

(assert (=> b!6102548 (=> res!2531919 e!3721827)))

(assert (=> b!6102548 (= res!2531919 call!504622)))

(assert (=> b!6102548 (= e!3721828 e!3721827)))

(assert (= (and d!1912904 c!1096230) b!6102545))

(assert (= (and d!1912904 (not c!1096230)) b!6102541))

(assert (= (and b!6102541 res!2531918) b!6102540))

(assert (= (and b!6102540 c!1096231) b!6102547))

(assert (= (and b!6102540 (not c!1096231)) b!6102542))

(assert (= (and b!6102542 c!1096233) b!6102543))

(assert (= (and b!6102542 (not c!1096233)) b!6102538))

(assert (= (and b!6102543 (not res!2531920)) b!6102544))

(assert (= (and b!6102538 c!1096232) b!6102548))

(assert (= (and b!6102538 (not c!1096232)) b!6102546))

(assert (= (and b!6102548 (not res!2531919)) b!6102539))

(assert (= (or b!6102539 b!6102546) bm!504617))

(assert (= (or b!6102545 b!6102548) bm!504616))

(declare-fun m!6954830 () Bool)

(assert (=> b!6102543 m!6954830))

(declare-fun m!6954832 () Bool)

(assert (=> b!6102544 m!6954832))

(declare-fun m!6954834 () Bool)

(assert (=> bm!504616 m!6954834))

(declare-fun m!6954836 () Bool)

(assert (=> bm!504617 m!6954836))

(assert (=> b!6102393 d!1912904))

(declare-fun b!6102597 () Bool)

(declare-fun e!3721857 () Bool)

(declare-fun head!12626 (List!64457) C!32374)

(assert (=> b!6102597 (= e!3721857 (= (head!12626 s!2326) (c!1096208 r!7292)))))

(declare-fun b!6102598 () Bool)

(declare-fun e!3721862 () Bool)

(declare-fun nullable!6045 (Regex!16052) Bool)

(assert (=> b!6102598 (= e!3721862 (nullable!6045 r!7292))))

(declare-fun b!6102599 () Bool)

(declare-fun res!2531945 () Bool)

(assert (=> b!6102599 (=> (not res!2531945) (not e!3721857))))

(declare-fun call!504625 () Bool)

(assert (=> b!6102599 (= res!2531945 (not call!504625))))

(declare-fun b!6102600 () Bool)

(declare-fun e!3721859 () Bool)

(declare-fun e!3721860 () Bool)

(assert (=> b!6102600 (= e!3721859 e!3721860)))

(declare-fun c!1096248 () Bool)

(assert (=> b!6102600 (= c!1096248 (is-EmptyLang!16052 r!7292))))

(declare-fun b!6102601 () Bool)

(declare-fun e!3721863 () Bool)

(declare-fun e!3721858 () Bool)

(assert (=> b!6102601 (= e!3721863 e!3721858)))

(declare-fun res!2531946 () Bool)

(assert (=> b!6102601 (=> res!2531946 e!3721858)))

(assert (=> b!6102601 (= res!2531946 call!504625)))

(declare-fun d!1912912 () Bool)

(assert (=> d!1912912 e!3721859))

(declare-fun c!1096249 () Bool)

(assert (=> d!1912912 (= c!1096249 (is-EmptyExpr!16052 r!7292))))

(declare-fun lt!2329370 () Bool)

(assert (=> d!1912912 (= lt!2329370 e!3721862)))

(declare-fun c!1096250 () Bool)

(assert (=> d!1912912 (= c!1096250 (isEmpty!36255 s!2326))))

(assert (=> d!1912912 (validRegex!7788 r!7292)))

(assert (=> d!1912912 (= (matchR!8235 r!7292 s!2326) lt!2329370)))

(declare-fun b!6102602 () Bool)

(assert (=> b!6102602 (= e!3721859 (= lt!2329370 call!504625))))

(declare-fun b!6102603 () Bool)

(declare-fun e!3721861 () Bool)

(assert (=> b!6102603 (= e!3721861 e!3721863)))

(declare-fun res!2531948 () Bool)

(assert (=> b!6102603 (=> (not res!2531948) (not e!3721863))))

(assert (=> b!6102603 (= res!2531948 (not lt!2329370))))

(declare-fun b!6102604 () Bool)

(declare-fun res!2531947 () Bool)

(assert (=> b!6102604 (=> res!2531947 e!3721861)))

(assert (=> b!6102604 (= res!2531947 (not (is-ElementMatch!16052 r!7292)))))

(assert (=> b!6102604 (= e!3721860 e!3721861)))

(declare-fun b!6102605 () Bool)

(declare-fun res!2531944 () Bool)

(assert (=> b!6102605 (=> (not res!2531944) (not e!3721857))))

(declare-fun tail!11711 (List!64457) List!64457)

(assert (=> b!6102605 (= res!2531944 (isEmpty!36255 (tail!11711 s!2326)))))

(declare-fun b!6102606 () Bool)

(declare-fun res!2531941 () Bool)

(assert (=> b!6102606 (=> res!2531941 e!3721858)))

(assert (=> b!6102606 (= res!2531941 (not (isEmpty!36255 (tail!11711 s!2326))))))

(declare-fun bm!504620 () Bool)

(assert (=> bm!504620 (= call!504625 (isEmpty!36255 s!2326))))

(declare-fun b!6102607 () Bool)

(assert (=> b!6102607 (= e!3721858 (not (= (head!12626 s!2326) (c!1096208 r!7292))))))

(declare-fun b!6102608 () Bool)

(assert (=> b!6102608 (= e!3721860 (not lt!2329370))))

(declare-fun b!6102609 () Bool)

(declare-fun derivativeStep!4773 (Regex!16052 C!32374) Regex!16052)

(assert (=> b!6102609 (= e!3721862 (matchR!8235 (derivativeStep!4773 r!7292 (head!12626 s!2326)) (tail!11711 s!2326)))))

(declare-fun b!6102610 () Bool)

(declare-fun res!2531942 () Bool)

(assert (=> b!6102610 (=> res!2531942 e!3721861)))

(assert (=> b!6102610 (= res!2531942 e!3721857)))

(declare-fun res!2531943 () Bool)

(assert (=> b!6102610 (=> (not res!2531943) (not e!3721857))))

(assert (=> b!6102610 (= res!2531943 lt!2329370)))

(assert (= (and d!1912912 c!1096250) b!6102598))

(assert (= (and d!1912912 (not c!1096250)) b!6102609))

(assert (= (and d!1912912 c!1096249) b!6102602))

(assert (= (and d!1912912 (not c!1096249)) b!6102600))

(assert (= (and b!6102600 c!1096248) b!6102608))

(assert (= (and b!6102600 (not c!1096248)) b!6102604))

(assert (= (and b!6102604 (not res!2531947)) b!6102610))

(assert (= (and b!6102610 res!2531943) b!6102599))

(assert (= (and b!6102599 res!2531945) b!6102605))

(assert (= (and b!6102605 res!2531944) b!6102597))

(assert (= (and b!6102610 (not res!2531942)) b!6102603))

(assert (= (and b!6102603 res!2531948) b!6102601))

(assert (= (and b!6102601 (not res!2531946)) b!6102606))

(assert (= (and b!6102606 (not res!2531941)) b!6102607))

(assert (= (or b!6102602 b!6102599 b!6102601) bm!504620))

(assert (=> d!1912912 m!6954834))

(assert (=> d!1912912 m!6954742))

(declare-fun m!6954838 () Bool)

(assert (=> b!6102597 m!6954838))

(assert (=> b!6102607 m!6954838))

(declare-fun m!6954840 () Bool)

(assert (=> b!6102598 m!6954840))

(assert (=> bm!504620 m!6954834))

(declare-fun m!6954842 () Bool)

(assert (=> b!6102606 m!6954842))

(assert (=> b!6102606 m!6954842))

(declare-fun m!6954844 () Bool)

(assert (=> b!6102606 m!6954844))

(assert (=> b!6102609 m!6954838))

(assert (=> b!6102609 m!6954838))

(declare-fun m!6954846 () Bool)

(assert (=> b!6102609 m!6954846))

(assert (=> b!6102609 m!6954842))

(assert (=> b!6102609 m!6954846))

(assert (=> b!6102609 m!6954842))

(declare-fun m!6954848 () Bool)

(assert (=> b!6102609 m!6954848))

(assert (=> b!6102605 m!6954842))

(assert (=> b!6102605 m!6954842))

(assert (=> b!6102605 m!6954844))

(assert (=> b!6102393 d!1912912))

(declare-fun d!1912914 () Bool)

(assert (=> d!1912914 (= (matchR!8235 r!7292 s!2326) (matchRSpec!3153 r!7292 s!2326))))

(declare-fun lt!2329373 () Unit!157375)

(declare-fun choose!45366 (Regex!16052 List!64457) Unit!157375)

(assert (=> d!1912914 (= lt!2329373 (choose!45366 r!7292 s!2326))))

(assert (=> d!1912914 (validRegex!7788 r!7292)))

(assert (=> d!1912914 (= (mainMatchTheorem!3153 r!7292 s!2326) lt!2329373)))

(declare-fun bs!1515409 () Bool)

(assert (= bs!1515409 d!1912914))

(assert (=> bs!1515409 m!6954738))

(assert (=> bs!1515409 m!6954736))

(declare-fun m!6954850 () Bool)

(assert (=> bs!1515409 m!6954850))

(assert (=> bs!1515409 m!6954742))

(assert (=> b!6102393 d!1912914))

(declare-fun d!1912916 () Bool)

(declare-fun e!3721883 () Bool)

(assert (=> d!1912916 e!3721883))

(declare-fun res!2531964 () Bool)

(assert (=> d!1912916 (=> res!2531964 e!3721883)))

(declare-fun e!3721884 () Bool)

(assert (=> d!1912916 (= res!2531964 e!3721884)))

(declare-fun res!2531962 () Bool)

(assert (=> d!1912916 (=> (not res!2531962) (not e!3721884))))

(declare-fun lt!2329386 () Option!15943)

(assert (=> d!1912916 (= res!2531962 (isDefined!12646 lt!2329386))))

(declare-fun e!3721886 () Option!15943)

(assert (=> d!1912916 (= lt!2329386 e!3721886)))

(declare-fun c!1096262 () Bool)

(declare-fun e!3721887 () Bool)

(assert (=> d!1912916 (= c!1096262 e!3721887)))

(declare-fun res!2531965 () Bool)

(assert (=> d!1912916 (=> (not res!2531965) (not e!3721887))))

(assert (=> d!1912916 (= res!2531965 (matchR!8235 (regOne!32616 r!7292) Nil!64333))))

(assert (=> d!1912916 (validRegex!7788 (regOne!32616 r!7292))))

(assert (=> d!1912916 (= (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) Nil!64333 s!2326 s!2326) lt!2329386)))

(declare-fun b!6102645 () Bool)

(assert (=> b!6102645 (= e!3721886 (Some!15942 (tuple2!66063 Nil!64333 s!2326)))))

(declare-fun b!6102646 () Bool)

(declare-fun ++!14139 (List!64457 List!64457) List!64457)

(declare-fun get!22181 (Option!15943) tuple2!66062)

(assert (=> b!6102646 (= e!3721884 (= (++!14139 (_1!36334 (get!22181 lt!2329386)) (_2!36334 (get!22181 lt!2329386))) s!2326))))

(declare-fun b!6102647 () Bool)

(declare-fun e!3721885 () Option!15943)

(assert (=> b!6102647 (= e!3721886 e!3721885)))

(declare-fun c!1096263 () Bool)

(assert (=> b!6102647 (= c!1096263 (is-Nil!64333 s!2326))))

(declare-fun b!6102648 () Bool)

(assert (=> b!6102648 (= e!3721885 None!15942)))

(declare-fun b!6102649 () Bool)

(assert (=> b!6102649 (= e!3721887 (matchR!8235 (regTwo!32616 r!7292) s!2326))))

(declare-fun b!6102650 () Bool)

(declare-fun res!2531961 () Bool)

(assert (=> b!6102650 (=> (not res!2531961) (not e!3721884))))

(assert (=> b!6102650 (= res!2531961 (matchR!8235 (regTwo!32616 r!7292) (_2!36334 (get!22181 lt!2329386))))))

(declare-fun b!6102651 () Bool)

(assert (=> b!6102651 (= e!3721883 (not (isDefined!12646 lt!2329386)))))

(declare-fun b!6102652 () Bool)

(declare-fun lt!2329385 () Unit!157375)

(declare-fun lt!2329384 () Unit!157375)

(assert (=> b!6102652 (= lt!2329385 lt!2329384)))

(assert (=> b!6102652 (= (++!14139 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) (t!377908 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2234 (List!64457 C!32374 List!64457 List!64457) Unit!157375)

(assert (=> b!6102652 (= lt!2329384 (lemmaMoveElementToOtherListKeepsConcatEq!2234 Nil!64333 (h!70781 s!2326) (t!377908 s!2326) s!2326))))

(assert (=> b!6102652 (= e!3721885 (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) (t!377908 s!2326) s!2326))))

(declare-fun b!6102653 () Bool)

(declare-fun res!2531963 () Bool)

(assert (=> b!6102653 (=> (not res!2531963) (not e!3721884))))

(assert (=> b!6102653 (= res!2531963 (matchR!8235 (regOne!32616 r!7292) (_1!36334 (get!22181 lt!2329386))))))

(assert (= (and d!1912916 res!2531965) b!6102649))

(assert (= (and d!1912916 c!1096262) b!6102645))

(assert (= (and d!1912916 (not c!1096262)) b!6102647))

(assert (= (and b!6102647 c!1096263) b!6102648))

(assert (= (and b!6102647 (not c!1096263)) b!6102652))

(assert (= (and d!1912916 res!2531962) b!6102653))

(assert (= (and b!6102653 res!2531963) b!6102650))

(assert (= (and b!6102650 res!2531961) b!6102646))

(assert (= (and d!1912916 (not res!2531964)) b!6102651))

(declare-fun m!6954872 () Bool)

(assert (=> b!6102650 m!6954872))

(declare-fun m!6954876 () Bool)

(assert (=> b!6102650 m!6954876))

(declare-fun m!6954878 () Bool)

(assert (=> b!6102651 m!6954878))

(declare-fun m!6954880 () Bool)

(assert (=> b!6102649 m!6954880))

(assert (=> b!6102653 m!6954872))

(declare-fun m!6954882 () Bool)

(assert (=> b!6102653 m!6954882))

(assert (=> b!6102646 m!6954872))

(declare-fun m!6954886 () Bool)

(assert (=> b!6102646 m!6954886))

(assert (=> d!1912916 m!6954878))

(declare-fun m!6954888 () Bool)

(assert (=> d!1912916 m!6954888))

(declare-fun m!6954890 () Bool)

(assert (=> d!1912916 m!6954890))

(declare-fun m!6954892 () Bool)

(assert (=> b!6102652 m!6954892))

(assert (=> b!6102652 m!6954892))

(declare-fun m!6954894 () Bool)

(assert (=> b!6102652 m!6954894))

(declare-fun m!6954896 () Bool)

(assert (=> b!6102652 m!6954896))

(assert (=> b!6102652 m!6954892))

(declare-fun m!6954898 () Bool)

(assert (=> b!6102652 m!6954898))

(assert (=> b!6102387 d!1912916))

(declare-fun d!1912922 () Bool)

(declare-fun choose!45367 (Int) Bool)

(assert (=> d!1912922 (= (Exists!3122 lambda!332445) (choose!45367 lambda!332445))))

(declare-fun bs!1515413 () Bool)

(assert (= bs!1515413 d!1912922))

(declare-fun m!6954900 () Bool)

(assert (=> bs!1515413 m!6954900))

(assert (=> b!6102387 d!1912922))

(declare-fun d!1912924 () Bool)

(assert (=> d!1912924 (= (Exists!3122 lambda!332444) (choose!45367 lambda!332444))))

(declare-fun bs!1515414 () Bool)

(assert (= bs!1515414 d!1912924))

(declare-fun m!6954902 () Bool)

(assert (=> bs!1515414 m!6954902))

(assert (=> b!6102387 d!1912924))

(declare-fun bs!1515415 () Bool)

(declare-fun d!1912926 () Bool)

(assert (= bs!1515415 (and d!1912926 b!6102387)))

(declare-fun lambda!332477 () Int)

(assert (=> bs!1515415 (= lambda!332477 lambda!332444)))

(assert (=> bs!1515415 (not (= lambda!332477 lambda!332445))))

(declare-fun bs!1515416 () Bool)

(assert (= bs!1515416 (and d!1912926 b!6102539)))

(assert (=> bs!1515416 (not (= lambda!332477 lambda!332467))))

(declare-fun bs!1515417 () Bool)

(assert (= bs!1515417 (and d!1912926 b!6102546)))

(assert (=> bs!1515417 (not (= lambda!332477 lambda!332468))))

(assert (=> d!1912926 true))

(assert (=> d!1912926 true))

(assert (=> d!1912926 true))

(assert (=> d!1912926 (= (isDefined!12646 (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) Nil!64333 s!2326 s!2326)) (Exists!3122 lambda!332477))))

(declare-fun lt!2329389 () Unit!157375)

(declare-fun choose!45368 (Regex!16052 Regex!16052 List!64457) Unit!157375)

(assert (=> d!1912926 (= lt!2329389 (choose!45368 (regOne!32616 r!7292) (regTwo!32616 r!7292) s!2326))))

(assert (=> d!1912926 (validRegex!7788 (regOne!32616 r!7292))))

(assert (=> d!1912926 (= (lemmaFindConcatSeparationEquivalentToExists!2121 (regOne!32616 r!7292) (regTwo!32616 r!7292) s!2326) lt!2329389)))

(declare-fun bs!1515418 () Bool)

(assert (= bs!1515418 d!1912926))

(declare-fun m!6954904 () Bool)

(assert (=> bs!1515418 m!6954904))

(assert (=> bs!1515418 m!6954746))

(assert (=> bs!1515418 m!6954746))

(assert (=> bs!1515418 m!6954748))

(declare-fun m!6954906 () Bool)

(assert (=> bs!1515418 m!6954906))

(assert (=> bs!1515418 m!6954890))

(assert (=> b!6102387 d!1912926))

(declare-fun bs!1515419 () Bool)

(declare-fun d!1912928 () Bool)

(assert (= bs!1515419 (and d!1912928 d!1912926)))

(declare-fun lambda!332482 () Int)

(assert (=> bs!1515419 (= lambda!332482 lambda!332477)))

(declare-fun bs!1515420 () Bool)

(assert (= bs!1515420 (and d!1912928 b!6102539)))

(assert (=> bs!1515420 (not (= lambda!332482 lambda!332467))))

(declare-fun bs!1515421 () Bool)

(assert (= bs!1515421 (and d!1912928 b!6102387)))

(assert (=> bs!1515421 (= lambda!332482 lambda!332444)))

(declare-fun bs!1515422 () Bool)

(assert (= bs!1515422 (and d!1912928 b!6102546)))

(assert (=> bs!1515422 (not (= lambda!332482 lambda!332468))))

(assert (=> bs!1515421 (not (= lambda!332482 lambda!332445))))

(assert (=> d!1912928 true))

(assert (=> d!1912928 true))

(assert (=> d!1912928 true))

(declare-fun bs!1515423 () Bool)

(assert (= bs!1515423 d!1912928))

(declare-fun lambda!332483 () Int)

(assert (=> bs!1515423 (not (= lambda!332483 lambda!332482))))

(assert (=> bs!1515419 (not (= lambda!332483 lambda!332477))))

(assert (=> bs!1515420 (not (= lambda!332483 lambda!332467))))

(assert (=> bs!1515421 (not (= lambda!332483 lambda!332444))))

(assert (=> bs!1515422 (= lambda!332483 lambda!332468)))

(assert (=> bs!1515421 (= lambda!332483 lambda!332445)))

(assert (=> d!1912928 true))

(assert (=> d!1912928 true))

(assert (=> d!1912928 true))

(assert (=> d!1912928 (= (Exists!3122 lambda!332482) (Exists!3122 lambda!332483))))

(declare-fun lt!2329392 () Unit!157375)

(declare-fun choose!45369 (Regex!16052 Regex!16052 List!64457) Unit!157375)

(assert (=> d!1912928 (= lt!2329392 (choose!45369 (regOne!32616 r!7292) (regTwo!32616 r!7292) s!2326))))

(assert (=> d!1912928 (validRegex!7788 (regOne!32616 r!7292))))

(assert (=> d!1912928 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1659 (regOne!32616 r!7292) (regTwo!32616 r!7292) s!2326) lt!2329392)))

(declare-fun m!6954914 () Bool)

(assert (=> bs!1515423 m!6954914))

(declare-fun m!6954916 () Bool)

(assert (=> bs!1515423 m!6954916))

(declare-fun m!6954918 () Bool)

(assert (=> bs!1515423 m!6954918))

(assert (=> bs!1515423 m!6954890))

(assert (=> b!6102387 d!1912928))

(declare-fun d!1912932 () Bool)

(declare-fun isEmpty!36256 (Option!15943) Bool)

(assert (=> d!1912932 (= (isDefined!12646 (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) Nil!64333 s!2326 s!2326)) (not (isEmpty!36256 (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) Nil!64333 s!2326 s!2326))))))

(declare-fun bs!1515424 () Bool)

(assert (= bs!1515424 d!1912932))

(assert (=> bs!1515424 m!6954746))

(declare-fun m!6954920 () Bool)

(assert (=> bs!1515424 m!6954920))

(assert (=> b!6102387 d!1912932))

(declare-fun bs!1515425 () Bool)

(declare-fun d!1912934 () Bool)

(assert (= bs!1515425 (and d!1912934 d!1912894)))

(declare-fun lambda!332486 () Int)

(assert (=> bs!1515425 (= lambda!332486 lambda!332456)))

(declare-fun bs!1515426 () Bool)

(assert (= bs!1515426 (and d!1912934 d!1912896)))

(assert (=> bs!1515426 (= lambda!332486 lambda!332459)))

(declare-fun b!6102723 () Bool)

(declare-fun e!3721937 () Regex!16052)

(declare-fun e!3721933 () Regex!16052)

(assert (=> b!6102723 (= e!3721937 e!3721933)))

(declare-fun c!1096283 () Bool)

(assert (=> b!6102723 (= c!1096283 (is-Cons!64331 (unfocusZipperList!1473 zl!343)))))

(declare-fun b!6102727 () Bool)

(declare-fun e!3721936 () Bool)

(declare-fun lt!2329395 () Regex!16052)

(assert (=> b!6102727 (= e!3721936 (= lt!2329395 (head!12625 (unfocusZipperList!1473 zl!343))))))

(declare-fun b!6102729 () Bool)

(assert (=> b!6102729 (= e!3721933 EmptyLang!16052)))

(declare-fun b!6102730 () Bool)

(declare-fun e!3721934 () Bool)

(declare-fun isEmptyLang!1479 (Regex!16052) Bool)

(assert (=> b!6102730 (= e!3721934 (isEmptyLang!1479 lt!2329395))))

(declare-fun b!6102731 () Bool)

(assert (=> b!6102731 (= e!3721937 (h!70779 (unfocusZipperList!1473 zl!343)))))

(declare-fun e!3721935 () Bool)

(assert (=> d!1912934 e!3721935))

(declare-fun res!2532000 () Bool)

(assert (=> d!1912934 (=> (not res!2532000) (not e!3721935))))

(assert (=> d!1912934 (= res!2532000 (validRegex!7788 lt!2329395))))

(assert (=> d!1912934 (= lt!2329395 e!3721937)))

(declare-fun c!1096285 () Bool)

(declare-fun e!3721938 () Bool)

(assert (=> d!1912934 (= c!1096285 e!3721938)))

(declare-fun res!2531999 () Bool)

(assert (=> d!1912934 (=> (not res!2531999) (not e!3721938))))

(assert (=> d!1912934 (= res!2531999 (is-Cons!64331 (unfocusZipperList!1473 zl!343)))))

(assert (=> d!1912934 (forall!15173 (unfocusZipperList!1473 zl!343) lambda!332486)))

(assert (=> d!1912934 (= (generalisedUnion!1896 (unfocusZipperList!1473 zl!343)) lt!2329395)))

(declare-fun b!6102732 () Bool)

(assert (=> b!6102732 (= e!3721935 e!3721934)))

(declare-fun c!1096282 () Bool)

(assert (=> b!6102732 (= c!1096282 (isEmpty!36252 (unfocusZipperList!1473 zl!343)))))

(declare-fun b!6102733 () Bool)

(assert (=> b!6102733 (= e!3721934 e!3721936)))

(declare-fun c!1096284 () Bool)

(assert (=> b!6102733 (= c!1096284 (isEmpty!36252 (tail!11710 (unfocusZipperList!1473 zl!343))))))

(declare-fun b!6102734 () Bool)

(assert (=> b!6102734 (= e!3721938 (isEmpty!36252 (t!377906 (unfocusZipperList!1473 zl!343))))))

(declare-fun b!6102735 () Bool)

(declare-fun isUnion!909 (Regex!16052) Bool)

(assert (=> b!6102735 (= e!3721936 (isUnion!909 lt!2329395))))

(declare-fun b!6102736 () Bool)

(assert (=> b!6102736 (= e!3721933 (Union!16052 (h!70779 (unfocusZipperList!1473 zl!343)) (generalisedUnion!1896 (t!377906 (unfocusZipperList!1473 zl!343)))))))

(assert (= (and d!1912934 res!2531999) b!6102734))

(assert (= (and d!1912934 c!1096285) b!6102731))

(assert (= (and d!1912934 (not c!1096285)) b!6102723))

(assert (= (and b!6102723 c!1096283) b!6102736))

(assert (= (and b!6102723 (not c!1096283)) b!6102729))

(assert (= (and d!1912934 res!2532000) b!6102732))

(assert (= (and b!6102732 c!1096282) b!6102730))

(assert (= (and b!6102732 (not c!1096282)) b!6102733))

(assert (= (and b!6102733 c!1096284) b!6102727))

(assert (= (and b!6102733 (not c!1096284)) b!6102735))

(assert (=> b!6102732 m!6954722))

(declare-fun m!6954922 () Bool)

(assert (=> b!6102732 m!6954922))

(declare-fun m!6954924 () Bool)

(assert (=> b!6102735 m!6954924))

(declare-fun m!6954926 () Bool)

(assert (=> d!1912934 m!6954926))

(assert (=> d!1912934 m!6954722))

(declare-fun m!6954928 () Bool)

(assert (=> d!1912934 m!6954928))

(declare-fun m!6954930 () Bool)

(assert (=> b!6102734 m!6954930))

(declare-fun m!6954932 () Bool)

(assert (=> b!6102736 m!6954932))

(assert (=> b!6102733 m!6954722))

(declare-fun m!6954934 () Bool)

(assert (=> b!6102733 m!6954934))

(assert (=> b!6102733 m!6954934))

(declare-fun m!6954936 () Bool)

(assert (=> b!6102733 m!6954936))

(declare-fun m!6954938 () Bool)

(assert (=> b!6102730 m!6954938))

(assert (=> b!6102727 m!6954722))

(declare-fun m!6954940 () Bool)

(assert (=> b!6102727 m!6954940))

(assert (=> b!6102397 d!1912934))

(declare-fun bs!1515427 () Bool)

(declare-fun d!1912936 () Bool)

(assert (= bs!1515427 (and d!1912936 d!1912894)))

(declare-fun lambda!332491 () Int)

(assert (=> bs!1515427 (= lambda!332491 lambda!332456)))

(declare-fun bs!1515428 () Bool)

(assert (= bs!1515428 (and d!1912936 d!1912896)))

(assert (=> bs!1515428 (= lambda!332491 lambda!332459)))

(declare-fun bs!1515429 () Bool)

(assert (= bs!1515429 (and d!1912936 d!1912934)))

(assert (=> bs!1515429 (= lambda!332491 lambda!332486)))

(declare-fun lt!2329398 () List!64455)

(assert (=> d!1912936 (forall!15173 lt!2329398 lambda!332491)))

(declare-fun e!3721951 () List!64455)

(assert (=> d!1912936 (= lt!2329398 e!3721951)))

(declare-fun c!1096292 () Bool)

(assert (=> d!1912936 (= c!1096292 (is-Cons!64332 zl!343))))

(assert (=> d!1912936 (= (unfocusZipperList!1473 zl!343) lt!2329398)))

(declare-fun b!6102755 () Bool)

(assert (=> b!6102755 (= e!3721951 (Cons!64331 (generalisedConcat!1649 (exprs!5936 (h!70780 zl!343))) (unfocusZipperList!1473 (t!377907 zl!343))))))

(declare-fun b!6102756 () Bool)

(assert (=> b!6102756 (= e!3721951 Nil!64331)))

(assert (= (and d!1912936 c!1096292) b!6102755))

(assert (= (and d!1912936 (not c!1096292)) b!6102756))

(declare-fun m!6954942 () Bool)

(assert (=> d!1912936 m!6954942))

(assert (=> b!6102755 m!6954758))

(declare-fun m!6954944 () Bool)

(assert (=> b!6102755 m!6954944))

(assert (=> b!6102397 d!1912936))

(declare-fun bs!1515430 () Bool)

(declare-fun d!1912938 () Bool)

(assert (= bs!1515430 (and d!1912938 d!1912894)))

(declare-fun lambda!332492 () Int)

(assert (=> bs!1515430 (= lambda!332492 lambda!332456)))

(declare-fun bs!1515431 () Bool)

(assert (= bs!1515431 (and d!1912938 d!1912896)))

(assert (=> bs!1515431 (= lambda!332492 lambda!332459)))

(declare-fun bs!1515432 () Bool)

(assert (= bs!1515432 (and d!1912938 d!1912934)))

(assert (=> bs!1515432 (= lambda!332492 lambda!332486)))

(declare-fun bs!1515433 () Bool)

(assert (= bs!1515433 (and d!1912938 d!1912936)))

(assert (=> bs!1515433 (= lambda!332492 lambda!332491)))

(assert (=> d!1912938 (= (inv!83378 setElem!41229) (forall!15173 (exprs!5936 setElem!41229) lambda!332492))))

(declare-fun bs!1515434 () Bool)

(assert (= bs!1515434 d!1912938))

(declare-fun m!6954946 () Bool)

(assert (=> bs!1515434 m!6954946))

(assert (=> setNonEmpty!41229 d!1912938))

(declare-fun b!6102779 () Bool)

(declare-fun res!2532027 () Bool)

(declare-fun e!3721971 () Bool)

(assert (=> b!6102779 (=> res!2532027 e!3721971)))

(assert (=> b!6102779 (= res!2532027 (not (is-Concat!24897 r!7292)))))

(declare-fun e!3721968 () Bool)

(assert (=> b!6102779 (= e!3721968 e!3721971)))

(declare-fun b!6102780 () Bool)

(declare-fun e!3721973 () Bool)

(declare-fun call!504642 () Bool)

(assert (=> b!6102780 (= e!3721973 call!504642)))

(declare-fun b!6102781 () Bool)

(declare-fun e!3721974 () Bool)

(declare-fun e!3721972 () Bool)

(assert (=> b!6102781 (= e!3721974 e!3721972)))

(declare-fun c!1096298 () Bool)

(assert (=> b!6102781 (= c!1096298 (is-Star!16052 r!7292))))

(declare-fun b!6102782 () Bool)

(assert (=> b!6102782 (= e!3721972 e!3721968)))

(declare-fun c!1096297 () Bool)

(assert (=> b!6102782 (= c!1096297 (is-Union!16052 r!7292))))

(declare-fun b!6102783 () Bool)

(declare-fun e!3721970 () Bool)

(declare-fun call!504643 () Bool)

(assert (=> b!6102783 (= e!3721970 call!504643)))

(declare-fun b!6102784 () Bool)

(declare-fun e!3721969 () Bool)

(assert (=> b!6102784 (= e!3721971 e!3721969)))

(declare-fun res!2532028 () Bool)

(assert (=> b!6102784 (=> (not res!2532028) (not e!3721969))))

(declare-fun call!504641 () Bool)

(assert (=> b!6102784 (= res!2532028 call!504641)))

(declare-fun b!6102785 () Bool)

(declare-fun res!2532029 () Bool)

(assert (=> b!6102785 (=> (not res!2532029) (not e!3721970))))

(assert (=> b!6102785 (= res!2532029 call!504641)))

(assert (=> b!6102785 (= e!3721968 e!3721970)))

(declare-fun bm!504637 () Bool)

(assert (=> bm!504637 (= call!504641 (validRegex!7788 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))))))

(declare-fun bm!504638 () Bool)

(assert (=> bm!504638 (= call!504642 (validRegex!7788 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))))))

(declare-fun b!6102786 () Bool)

(assert (=> b!6102786 (= e!3721969 call!504643)))

(declare-fun b!6102787 () Bool)

(assert (=> b!6102787 (= e!3721972 e!3721973)))

(declare-fun res!2532025 () Bool)

(assert (=> b!6102787 (= res!2532025 (not (nullable!6045 (reg!16381 r!7292))))))

(assert (=> b!6102787 (=> (not res!2532025) (not e!3721973))))

(declare-fun d!1912940 () Bool)

(declare-fun res!2532026 () Bool)

(assert (=> d!1912940 (=> res!2532026 e!3721974)))

(assert (=> d!1912940 (= res!2532026 (is-ElementMatch!16052 r!7292))))

(assert (=> d!1912940 (= (validRegex!7788 r!7292) e!3721974)))

(declare-fun bm!504636 () Bool)

(assert (=> bm!504636 (= call!504643 call!504642)))

(assert (= (and d!1912940 (not res!2532026)) b!6102781))

(assert (= (and b!6102781 c!1096298) b!6102787))

(assert (= (and b!6102781 (not c!1096298)) b!6102782))

(assert (= (and b!6102787 res!2532025) b!6102780))

(assert (= (and b!6102782 c!1096297) b!6102785))

(assert (= (and b!6102782 (not c!1096297)) b!6102779))

(assert (= (and b!6102785 res!2532029) b!6102783))

(assert (= (and b!6102779 (not res!2532027)) b!6102784))

(assert (= (and b!6102784 res!2532028) b!6102786))

(assert (= (or b!6102783 b!6102786) bm!504636))

(assert (= (or b!6102785 b!6102784) bm!504637))

(assert (= (or b!6102780 bm!504636) bm!504638))

(declare-fun m!6954948 () Bool)

(assert (=> bm!504637 m!6954948))

(declare-fun m!6954950 () Bool)

(assert (=> bm!504638 m!6954950))

(declare-fun m!6954952 () Bool)

(assert (=> b!6102787 m!6954952))

(assert (=> start!610104 d!1912940))

(declare-fun d!1912942 () Bool)

(assert (=> d!1912942 (= (isEmpty!36252 (t!377906 (exprs!5936 (h!70780 zl!343)))) (is-Nil!64331 (t!377906 (exprs!5936 (h!70780 zl!343)))))))

(assert (=> b!6102386 d!1912942))

(declare-fun bs!1515435 () Bool)

(declare-fun d!1912944 () Bool)

(assert (= bs!1515435 (and d!1912944 d!1912938)))

(declare-fun lambda!332495 () Int)

(assert (=> bs!1515435 (= lambda!332495 lambda!332492)))

(declare-fun bs!1515436 () Bool)

(assert (= bs!1515436 (and d!1912944 d!1912894)))

(assert (=> bs!1515436 (= lambda!332495 lambda!332456)))

(declare-fun bs!1515437 () Bool)

(assert (= bs!1515437 (and d!1912944 d!1912934)))

(assert (=> bs!1515437 (= lambda!332495 lambda!332486)))

(declare-fun bs!1515438 () Bool)

(assert (= bs!1515438 (and d!1912944 d!1912936)))

(assert (=> bs!1515438 (= lambda!332495 lambda!332491)))

(declare-fun bs!1515439 () Bool)

(assert (= bs!1515439 (and d!1912944 d!1912896)))

(assert (=> bs!1515439 (= lambda!332495 lambda!332459)))

(assert (=> d!1912944 (= (inv!83378 (Context!10873 (t!377906 (exprs!5936 (h!70780 zl!343))))) (forall!15173 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (h!70780 zl!343))))) lambda!332495))))

(declare-fun bs!1515440 () Bool)

(assert (= bs!1515440 d!1912944))

(declare-fun m!6954954 () Bool)

(assert (=> bs!1515440 m!6954954))

(assert (=> b!6102381 d!1912944))

(declare-fun b!6102798 () Bool)

(declare-fun e!3721981 () (Set Context!10872))

(declare-fun call!504650 () (Set Context!10872))

(assert (=> b!6102798 (= e!3721981 call!504650)))

(declare-fun e!3721983 () (Set Context!10872))

(declare-fun b!6102799 () Bool)

(assert (=> b!6102799 (= e!3721983 (set.union call!504650 (derivationStepZipperUp!1226 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (h!70781 s!2326))))))

(declare-fun d!1912946 () Bool)

(declare-fun c!1096303 () Bool)

(declare-fun e!3721982 () Bool)

(assert (=> d!1912946 (= c!1096303 e!3721982)))

(declare-fun res!2532032 () Bool)

(assert (=> d!1912946 (=> (not res!2532032) (not e!3721982))))

(assert (=> d!1912946 (= res!2532032 (is-Cons!64331 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))))

(assert (=> d!1912946 (= (derivationStepZipperUp!1226 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))) (h!70781 s!2326)) e!3721983)))

(declare-fun bm!504645 () Bool)

(declare-fun derivationStepZipperDown!1300 (Regex!16052 Context!10872 C!32374) (Set Context!10872))

(assert (=> bm!504645 (= call!504650 (derivationStepZipperDown!1300 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))) (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (h!70781 s!2326)))))

(declare-fun b!6102800 () Bool)

(assert (=> b!6102800 (= e!3721983 e!3721981)))

(declare-fun c!1096304 () Bool)

(assert (=> b!6102800 (= c!1096304 (is-Cons!64331 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))))

(declare-fun b!6102801 () Bool)

(assert (=> b!6102801 (= e!3721982 (nullable!6045 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))))))

(declare-fun b!6102802 () Bool)

(assert (=> b!6102802 (= e!3721981 (as set.empty (Set Context!10872)))))

(assert (= (and d!1912946 res!2532032) b!6102801))

(assert (= (and d!1912946 c!1096303) b!6102799))

(assert (= (and d!1912946 (not c!1096303)) b!6102800))

(assert (= (and b!6102800 c!1096304) b!6102798))

(assert (= (and b!6102800 (not c!1096304)) b!6102802))

(assert (= (or b!6102799 b!6102798) bm!504645))

(declare-fun m!6954956 () Bool)

(assert (=> b!6102799 m!6954956))

(declare-fun m!6954958 () Bool)

(assert (=> bm!504645 m!6954958))

(declare-fun m!6954960 () Bool)

(assert (=> b!6102801 m!6954960))

(assert (=> b!6102381 d!1912946))

(declare-fun d!1912948 () Bool)

(declare-fun e!3721986 () Bool)

(assert (=> d!1912948 e!3721986))

(declare-fun res!2532035 () Bool)

(assert (=> d!1912948 (=> (not res!2532035) (not e!3721986))))

(declare-fun lt!2329401 () List!64456)

(declare-fun noDuplicate!1899 (List!64456) Bool)

(assert (=> d!1912948 (= res!2532035 (noDuplicate!1899 lt!2329401))))

(declare-fun choose!45370 ((Set Context!10872)) List!64456)

(assert (=> d!1912948 (= lt!2329401 (choose!45370 z!1189))))

(assert (=> d!1912948 (= (toList!9836 z!1189) lt!2329401)))

(declare-fun b!6102805 () Bool)

(declare-fun content!11930 (List!64456) (Set Context!10872))

(assert (=> b!6102805 (= e!3721986 (= (content!11930 lt!2329401) z!1189))))

(assert (= (and d!1912948 res!2532035) b!6102805))

(declare-fun m!6954962 () Bool)

(assert (=> d!1912948 m!6954962))

(declare-fun m!6954964 () Bool)

(assert (=> d!1912948 m!6954964))

(declare-fun m!6954966 () Bool)

(assert (=> b!6102805 m!6954966))

(assert (=> b!6102389 d!1912948))

(declare-fun e!3721989 () Bool)

(assert (=> b!6102384 (= tp!1703780 e!3721989)))

(declare-fun b!6102816 () Bool)

(assert (=> b!6102816 (= e!3721989 tp_is_empty!41357)))

(declare-fun b!6102818 () Bool)

(declare-fun tp!1703823 () Bool)

(assert (=> b!6102818 (= e!3721989 tp!1703823)))

(declare-fun b!6102819 () Bool)

(declare-fun tp!1703824 () Bool)

(declare-fun tp!1703822 () Bool)

(assert (=> b!6102819 (= e!3721989 (and tp!1703824 tp!1703822))))

(declare-fun b!6102817 () Bool)

(declare-fun tp!1703821 () Bool)

(declare-fun tp!1703825 () Bool)

(assert (=> b!6102817 (= e!3721989 (and tp!1703821 tp!1703825))))

(assert (= (and b!6102384 (is-ElementMatch!16052 (reg!16381 r!7292))) b!6102816))

(assert (= (and b!6102384 (is-Concat!24897 (reg!16381 r!7292))) b!6102817))

(assert (= (and b!6102384 (is-Star!16052 (reg!16381 r!7292))) b!6102818))

(assert (= (and b!6102384 (is-Union!16052 (reg!16381 r!7292))) b!6102819))

(declare-fun b!6102824 () Bool)

(declare-fun e!3721992 () Bool)

(declare-fun tp!1703828 () Bool)

(assert (=> b!6102824 (= e!3721992 (and tp_is_empty!41357 tp!1703828))))

(assert (=> b!6102398 (= tp!1703779 e!3721992)))

(assert (= (and b!6102398 (is-Cons!64333 (t!377908 s!2326))) b!6102824))

(declare-fun b!6102843 () Bool)

(declare-fun e!3722005 () Bool)

(declare-fun tp!1703833 () Bool)

(assert (=> b!6102843 (= e!3722005 tp!1703833)))

(declare-fun tp!1703834 () Bool)

(declare-fun e!3722004 () Bool)

(declare-fun b!6102842 () Bool)

(assert (=> b!6102842 (= e!3722004 (and (inv!83378 (h!70780 (t!377907 zl!343))) e!3722005 tp!1703834))))

(assert (=> b!6102383 (= tp!1703778 e!3722004)))

(assert (= b!6102842 b!6102843))

(assert (= (and b!6102383 (is-Cons!64332 (t!377907 zl!343))) b!6102842))

(declare-fun m!6954968 () Bool)

(assert (=> b!6102842 m!6954968))

(declare-fun b!6102848 () Bool)

(declare-fun e!3722008 () Bool)

(declare-fun tp!1703839 () Bool)

(declare-fun tp!1703840 () Bool)

(assert (=> b!6102848 (= e!3722008 (and tp!1703839 tp!1703840))))

(assert (=> b!6102392 (= tp!1703771 e!3722008)))

(assert (= (and b!6102392 (is-Cons!64331 (exprs!5936 setElem!41229))) b!6102848))

(declare-fun condSetEmpty!41235 () Bool)

(assert (=> setNonEmpty!41229 (= condSetEmpty!41235 (= setRest!41229 (as set.empty (Set Context!10872))))))

(declare-fun setRes!41235 () Bool)

(assert (=> setNonEmpty!41229 (= tp!1703776 setRes!41235)))

(declare-fun setIsEmpty!41235 () Bool)

(assert (=> setIsEmpty!41235 setRes!41235))

(declare-fun setElem!41235 () Context!10872)

(declare-fun tp!1703845 () Bool)

(declare-fun setNonEmpty!41235 () Bool)

(declare-fun e!3722011 () Bool)

(assert (=> setNonEmpty!41235 (= setRes!41235 (and tp!1703845 (inv!83378 setElem!41235) e!3722011))))

(declare-fun setRest!41235 () (Set Context!10872))

(assert (=> setNonEmpty!41235 (= setRest!41229 (set.union (set.insert setElem!41235 (as set.empty (Set Context!10872))) setRest!41235))))

(declare-fun b!6102853 () Bool)

(declare-fun tp!1703846 () Bool)

(assert (=> b!6102853 (= e!3722011 tp!1703846)))

(assert (= (and setNonEmpty!41229 condSetEmpty!41235) setIsEmpty!41235))

(assert (= (and setNonEmpty!41229 (not condSetEmpty!41235)) setNonEmpty!41235))

(assert (= setNonEmpty!41235 b!6102853))

(declare-fun m!6954970 () Bool)

(assert (=> setNonEmpty!41235 m!6954970))

(declare-fun b!6102854 () Bool)

(declare-fun e!3722012 () Bool)

(declare-fun tp!1703847 () Bool)

(declare-fun tp!1703848 () Bool)

(assert (=> b!6102854 (= e!3722012 (and tp!1703847 tp!1703848))))

(assert (=> b!6102396 (= tp!1703772 e!3722012)))

(assert (= (and b!6102396 (is-Cons!64331 (exprs!5936 (h!70780 zl!343)))) b!6102854))

(declare-fun e!3722013 () Bool)

(assert (=> b!6102390 (= tp!1703774 e!3722013)))

(declare-fun b!6102855 () Bool)

(assert (=> b!6102855 (= e!3722013 tp_is_empty!41357)))

(declare-fun b!6102857 () Bool)

(declare-fun tp!1703851 () Bool)

(assert (=> b!6102857 (= e!3722013 tp!1703851)))

(declare-fun b!6102858 () Bool)

(declare-fun tp!1703852 () Bool)

(declare-fun tp!1703850 () Bool)

(assert (=> b!6102858 (= e!3722013 (and tp!1703852 tp!1703850))))

(declare-fun b!6102856 () Bool)

(declare-fun tp!1703849 () Bool)

(declare-fun tp!1703853 () Bool)

(assert (=> b!6102856 (= e!3722013 (and tp!1703849 tp!1703853))))

(assert (= (and b!6102390 (is-ElementMatch!16052 (regOne!32617 r!7292))) b!6102855))

(assert (= (and b!6102390 (is-Concat!24897 (regOne!32617 r!7292))) b!6102856))

(assert (= (and b!6102390 (is-Star!16052 (regOne!32617 r!7292))) b!6102857))

(assert (= (and b!6102390 (is-Union!16052 (regOne!32617 r!7292))) b!6102858))

(declare-fun e!3722014 () Bool)

(assert (=> b!6102390 (= tp!1703773 e!3722014)))

(declare-fun b!6102859 () Bool)

(assert (=> b!6102859 (= e!3722014 tp_is_empty!41357)))

(declare-fun b!6102861 () Bool)

(declare-fun tp!1703856 () Bool)

(assert (=> b!6102861 (= e!3722014 tp!1703856)))

(declare-fun b!6102862 () Bool)

(declare-fun tp!1703857 () Bool)

(declare-fun tp!1703855 () Bool)

(assert (=> b!6102862 (= e!3722014 (and tp!1703857 tp!1703855))))

(declare-fun b!6102860 () Bool)

(declare-fun tp!1703854 () Bool)

(declare-fun tp!1703858 () Bool)

(assert (=> b!6102860 (= e!3722014 (and tp!1703854 tp!1703858))))

(assert (= (and b!6102390 (is-ElementMatch!16052 (regTwo!32617 r!7292))) b!6102859))

(assert (= (and b!6102390 (is-Concat!24897 (regTwo!32617 r!7292))) b!6102860))

(assert (= (and b!6102390 (is-Star!16052 (regTwo!32617 r!7292))) b!6102861))

(assert (= (and b!6102390 (is-Union!16052 (regTwo!32617 r!7292))) b!6102862))

(declare-fun e!3722015 () Bool)

(assert (=> b!6102380 (= tp!1703775 e!3722015)))

(declare-fun b!6102863 () Bool)

(assert (=> b!6102863 (= e!3722015 tp_is_empty!41357)))

(declare-fun b!6102865 () Bool)

(declare-fun tp!1703861 () Bool)

(assert (=> b!6102865 (= e!3722015 tp!1703861)))

(declare-fun b!6102866 () Bool)

(declare-fun tp!1703862 () Bool)

(declare-fun tp!1703860 () Bool)

(assert (=> b!6102866 (= e!3722015 (and tp!1703862 tp!1703860))))

(declare-fun b!6102864 () Bool)

(declare-fun tp!1703859 () Bool)

(declare-fun tp!1703863 () Bool)

(assert (=> b!6102864 (= e!3722015 (and tp!1703859 tp!1703863))))

(assert (= (and b!6102380 (is-ElementMatch!16052 (regOne!32616 r!7292))) b!6102863))

(assert (= (and b!6102380 (is-Concat!24897 (regOne!32616 r!7292))) b!6102864))

(assert (= (and b!6102380 (is-Star!16052 (regOne!32616 r!7292))) b!6102865))

(assert (= (and b!6102380 (is-Union!16052 (regOne!32616 r!7292))) b!6102866))

(declare-fun e!3722016 () Bool)

(assert (=> b!6102380 (= tp!1703777 e!3722016)))

(declare-fun b!6102867 () Bool)

(assert (=> b!6102867 (= e!3722016 tp_is_empty!41357)))

(declare-fun b!6102869 () Bool)

(declare-fun tp!1703866 () Bool)

(assert (=> b!6102869 (= e!3722016 tp!1703866)))

(declare-fun b!6102870 () Bool)

(declare-fun tp!1703867 () Bool)

(declare-fun tp!1703865 () Bool)

(assert (=> b!6102870 (= e!3722016 (and tp!1703867 tp!1703865))))

(declare-fun b!6102868 () Bool)

(declare-fun tp!1703864 () Bool)

(declare-fun tp!1703868 () Bool)

(assert (=> b!6102868 (= e!3722016 (and tp!1703864 tp!1703868))))

(assert (= (and b!6102380 (is-ElementMatch!16052 (regTwo!32616 r!7292))) b!6102867))

(assert (= (and b!6102380 (is-Concat!24897 (regTwo!32616 r!7292))) b!6102868))

(assert (= (and b!6102380 (is-Star!16052 (regTwo!32616 r!7292))) b!6102869))

(assert (= (and b!6102380 (is-Union!16052 (regTwo!32616 r!7292))) b!6102870))

(push 1)

(assert (not b!6102543))

(assert (not b!6102866))

(assert (not b!6102500))

(assert (not b!6102848))

(assert (not b!6102650))

(assert tp_is_empty!41357)

(assert (not b!6102496))

(assert (not bm!504638))

(assert (not b!6102824))

(assert (not d!1912896))

(assert (not d!1912922))

(assert (not d!1912926))

(assert (not b!6102869))

(assert (not d!1912938))

(assert (not b!6102607))

(assert (not b!6102868))

(assert (not d!1912912))

(assert (not b!6102801))

(assert (not b!6102598))

(assert (not b!6102502))

(assert (not b!6102733))

(assert (not b!6102842))

(assert (not b!6102817))

(assert (not setNonEmpty!41235))

(assert (not d!1912932))

(assert (not d!1912948))

(assert (not d!1912894))

(assert (not b!6102865))

(assert (not b!6102854))

(assert (not d!1912914))

(assert (not b!6102544))

(assert (not b!6102860))

(assert (not b!6102805))

(assert (not d!1912928))

(assert (not b!6102605))

(assert (not b!6102653))

(assert (not b!6102736))

(assert (not b!6102734))

(assert (not bm!504616))

(assert (not b!6102504))

(assert (not b!6102499))

(assert (not b!6102818))

(assert (not b!6102649))

(assert (not b!6102606))

(assert (not d!1912900))

(assert (not b!6102727))

(assert (not b!6102755))

(assert (not bm!504645))

(assert (not b!6102735))

(assert (not d!1912936))

(assert (not b!6102651))

(assert (not b!6102730))

(assert (not bm!504637))

(assert (not b!6102799))

(assert (not b!6102858))

(assert (not b!6102856))

(assert (not b!6102498))

(assert (not d!1912916))

(assert (not b!6102597))

(assert (not b!6102870))

(assert (not b!6102857))

(assert (not b!6102787))

(assert (not b!6102864))

(assert (not b!6102609))

(assert (not bm!504620))

(assert (not b!6102732))

(assert (not b!6102861))

(assert (not b!6102843))

(assert (not d!1912924))

(assert (not b!6102853))

(assert (not b!6102862))

(assert (not b!6102819))

(assert (not b!6102501))

(assert (not d!1912944))

(assert (not d!1912934))

(assert (not b!6102646))

(assert (not bm!504617))

(assert (not b!6102652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1912978 () Bool)

(assert (=> d!1912978 (= (isDefined!12646 lt!2329386) (not (isEmpty!36256 lt!2329386)))))

(declare-fun bs!1515471 () Bool)

(assert (= bs!1515471 d!1912978))

(declare-fun m!6955072 () Bool)

(assert (=> bs!1515471 m!6955072))

(assert (=> d!1912916 d!1912978))

(declare-fun b!6103054 () Bool)

(declare-fun e!3722112 () Bool)

(assert (=> b!6103054 (= e!3722112 (= (head!12626 Nil!64333) (c!1096208 (regOne!32616 r!7292))))))

(declare-fun b!6103055 () Bool)

(declare-fun e!3722117 () Bool)

(assert (=> b!6103055 (= e!3722117 (nullable!6045 (regOne!32616 r!7292)))))

(declare-fun b!6103056 () Bool)

(declare-fun res!2532106 () Bool)

(assert (=> b!6103056 (=> (not res!2532106) (not e!3722112))))

(declare-fun call!504659 () Bool)

(assert (=> b!6103056 (= res!2532106 (not call!504659))))

(declare-fun b!6103057 () Bool)

(declare-fun e!3722114 () Bool)

(declare-fun e!3722115 () Bool)

(assert (=> b!6103057 (= e!3722114 e!3722115)))

(declare-fun c!1096342 () Bool)

(assert (=> b!6103057 (= c!1096342 (is-EmptyLang!16052 (regOne!32616 r!7292)))))

(declare-fun b!6103058 () Bool)

(declare-fun e!3722118 () Bool)

(declare-fun e!3722113 () Bool)

(assert (=> b!6103058 (= e!3722118 e!3722113)))

(declare-fun res!2532107 () Bool)

(assert (=> b!6103058 (=> res!2532107 e!3722113)))

(assert (=> b!6103058 (= res!2532107 call!504659)))

(declare-fun d!1912980 () Bool)

(assert (=> d!1912980 e!3722114))

(declare-fun c!1096343 () Bool)

(assert (=> d!1912980 (= c!1096343 (is-EmptyExpr!16052 (regOne!32616 r!7292)))))

(declare-fun lt!2329429 () Bool)

(assert (=> d!1912980 (= lt!2329429 e!3722117)))

(declare-fun c!1096344 () Bool)

(assert (=> d!1912980 (= c!1096344 (isEmpty!36255 Nil!64333))))

(assert (=> d!1912980 (validRegex!7788 (regOne!32616 r!7292))))

(assert (=> d!1912980 (= (matchR!8235 (regOne!32616 r!7292) Nil!64333) lt!2329429)))

(declare-fun b!6103059 () Bool)

(assert (=> b!6103059 (= e!3722114 (= lt!2329429 call!504659))))

(declare-fun b!6103060 () Bool)

(declare-fun e!3722116 () Bool)

(assert (=> b!6103060 (= e!3722116 e!3722118)))

(declare-fun res!2532109 () Bool)

(assert (=> b!6103060 (=> (not res!2532109) (not e!3722118))))

(assert (=> b!6103060 (= res!2532109 (not lt!2329429))))

(declare-fun b!6103061 () Bool)

(declare-fun res!2532108 () Bool)

(assert (=> b!6103061 (=> res!2532108 e!3722116)))

(assert (=> b!6103061 (= res!2532108 (not (is-ElementMatch!16052 (regOne!32616 r!7292))))))

(assert (=> b!6103061 (= e!3722115 e!3722116)))

(declare-fun b!6103062 () Bool)

(declare-fun res!2532105 () Bool)

(assert (=> b!6103062 (=> (not res!2532105) (not e!3722112))))

(assert (=> b!6103062 (= res!2532105 (isEmpty!36255 (tail!11711 Nil!64333)))))

(declare-fun b!6103063 () Bool)

(declare-fun res!2532102 () Bool)

(assert (=> b!6103063 (=> res!2532102 e!3722113)))

(assert (=> b!6103063 (= res!2532102 (not (isEmpty!36255 (tail!11711 Nil!64333))))))

(declare-fun bm!504654 () Bool)

(assert (=> bm!504654 (= call!504659 (isEmpty!36255 Nil!64333))))

(declare-fun b!6103064 () Bool)

(assert (=> b!6103064 (= e!3722113 (not (= (head!12626 Nil!64333) (c!1096208 (regOne!32616 r!7292)))))))

(declare-fun b!6103065 () Bool)

(assert (=> b!6103065 (= e!3722115 (not lt!2329429))))

(declare-fun b!6103066 () Bool)

(assert (=> b!6103066 (= e!3722117 (matchR!8235 (derivativeStep!4773 (regOne!32616 r!7292) (head!12626 Nil!64333)) (tail!11711 Nil!64333)))))

(declare-fun b!6103067 () Bool)

(declare-fun res!2532103 () Bool)

(assert (=> b!6103067 (=> res!2532103 e!3722116)))

(assert (=> b!6103067 (= res!2532103 e!3722112)))

(declare-fun res!2532104 () Bool)

(assert (=> b!6103067 (=> (not res!2532104) (not e!3722112))))

(assert (=> b!6103067 (= res!2532104 lt!2329429)))

(assert (= (and d!1912980 c!1096344) b!6103055))

(assert (= (and d!1912980 (not c!1096344)) b!6103066))

(assert (= (and d!1912980 c!1096343) b!6103059))

(assert (= (and d!1912980 (not c!1096343)) b!6103057))

(assert (= (and b!6103057 c!1096342) b!6103065))

(assert (= (and b!6103057 (not c!1096342)) b!6103061))

(assert (= (and b!6103061 (not res!2532108)) b!6103067))

(assert (= (and b!6103067 res!2532104) b!6103056))

(assert (= (and b!6103056 res!2532106) b!6103062))

(assert (= (and b!6103062 res!2532105) b!6103054))

(assert (= (and b!6103067 (not res!2532103)) b!6103060))

(assert (= (and b!6103060 res!2532109) b!6103058))

(assert (= (and b!6103058 (not res!2532107)) b!6103063))

(assert (= (and b!6103063 (not res!2532102)) b!6103064))

(assert (= (or b!6103059 b!6103056 b!6103058) bm!504654))

(declare-fun m!6955074 () Bool)

(assert (=> d!1912980 m!6955074))

(assert (=> d!1912980 m!6954890))

(declare-fun m!6955076 () Bool)

(assert (=> b!6103054 m!6955076))

(assert (=> b!6103064 m!6955076))

(declare-fun m!6955078 () Bool)

(assert (=> b!6103055 m!6955078))

(assert (=> bm!504654 m!6955074))

(declare-fun m!6955080 () Bool)

(assert (=> b!6103063 m!6955080))

(assert (=> b!6103063 m!6955080))

(declare-fun m!6955082 () Bool)

(assert (=> b!6103063 m!6955082))

(assert (=> b!6103066 m!6955076))

(assert (=> b!6103066 m!6955076))

(declare-fun m!6955084 () Bool)

(assert (=> b!6103066 m!6955084))

(assert (=> b!6103066 m!6955080))

(assert (=> b!6103066 m!6955084))

(assert (=> b!6103066 m!6955080))

(declare-fun m!6955086 () Bool)

(assert (=> b!6103066 m!6955086))

(assert (=> b!6103062 m!6955080))

(assert (=> b!6103062 m!6955080))

(assert (=> b!6103062 m!6955082))

(assert (=> d!1912916 d!1912980))

(declare-fun b!6103068 () Bool)

(declare-fun res!2532112 () Bool)

(declare-fun e!3722122 () Bool)

(assert (=> b!6103068 (=> res!2532112 e!3722122)))

(assert (=> b!6103068 (= res!2532112 (not (is-Concat!24897 (regOne!32616 r!7292))))))

(declare-fun e!3722119 () Bool)

(assert (=> b!6103068 (= e!3722119 e!3722122)))

(declare-fun b!6103069 () Bool)

(declare-fun e!3722124 () Bool)

(declare-fun call!504661 () Bool)

(assert (=> b!6103069 (= e!3722124 call!504661)))

(declare-fun b!6103070 () Bool)

(declare-fun e!3722125 () Bool)

(declare-fun e!3722123 () Bool)

(assert (=> b!6103070 (= e!3722125 e!3722123)))

(declare-fun c!1096346 () Bool)

(assert (=> b!6103070 (= c!1096346 (is-Star!16052 (regOne!32616 r!7292)))))

(declare-fun b!6103071 () Bool)

(assert (=> b!6103071 (= e!3722123 e!3722119)))

(declare-fun c!1096345 () Bool)

(assert (=> b!6103071 (= c!1096345 (is-Union!16052 (regOne!32616 r!7292)))))

(declare-fun b!6103072 () Bool)

(declare-fun e!3722121 () Bool)

(declare-fun call!504662 () Bool)

(assert (=> b!6103072 (= e!3722121 call!504662)))

(declare-fun b!6103073 () Bool)

(declare-fun e!3722120 () Bool)

(assert (=> b!6103073 (= e!3722122 e!3722120)))

(declare-fun res!2532113 () Bool)

(assert (=> b!6103073 (=> (not res!2532113) (not e!3722120))))

(declare-fun call!504660 () Bool)

(assert (=> b!6103073 (= res!2532113 call!504660)))

(declare-fun b!6103074 () Bool)

(declare-fun res!2532114 () Bool)

(assert (=> b!6103074 (=> (not res!2532114) (not e!3722121))))

(assert (=> b!6103074 (= res!2532114 call!504660)))

(assert (=> b!6103074 (= e!3722119 e!3722121)))

(declare-fun bm!504656 () Bool)

(assert (=> bm!504656 (= call!504660 (validRegex!7788 (ite c!1096345 (regOne!32617 (regOne!32616 r!7292)) (regOne!32616 (regOne!32616 r!7292)))))))

(declare-fun bm!504657 () Bool)

(assert (=> bm!504657 (= call!504661 (validRegex!7788 (ite c!1096346 (reg!16381 (regOne!32616 r!7292)) (ite c!1096345 (regTwo!32617 (regOne!32616 r!7292)) (regTwo!32616 (regOne!32616 r!7292))))))))

(declare-fun b!6103075 () Bool)

(assert (=> b!6103075 (= e!3722120 call!504662)))

(declare-fun b!6103076 () Bool)

(assert (=> b!6103076 (= e!3722123 e!3722124)))

(declare-fun res!2532110 () Bool)

(assert (=> b!6103076 (= res!2532110 (not (nullable!6045 (reg!16381 (regOne!32616 r!7292)))))))

(assert (=> b!6103076 (=> (not res!2532110) (not e!3722124))))

(declare-fun d!1912982 () Bool)

(declare-fun res!2532111 () Bool)

(assert (=> d!1912982 (=> res!2532111 e!3722125)))

(assert (=> d!1912982 (= res!2532111 (is-ElementMatch!16052 (regOne!32616 r!7292)))))

(assert (=> d!1912982 (= (validRegex!7788 (regOne!32616 r!7292)) e!3722125)))

(declare-fun bm!504655 () Bool)

(assert (=> bm!504655 (= call!504662 call!504661)))

(assert (= (and d!1912982 (not res!2532111)) b!6103070))

(assert (= (and b!6103070 c!1096346) b!6103076))

(assert (= (and b!6103070 (not c!1096346)) b!6103071))

(assert (= (and b!6103076 res!2532110) b!6103069))

(assert (= (and b!6103071 c!1096345) b!6103074))

(assert (= (and b!6103071 (not c!1096345)) b!6103068))

(assert (= (and b!6103074 res!2532114) b!6103072))

(assert (= (and b!6103068 (not res!2532112)) b!6103073))

(assert (= (and b!6103073 res!2532113) b!6103075))

(assert (= (or b!6103072 b!6103075) bm!504655))

(assert (= (or b!6103074 b!6103073) bm!504656))

(assert (= (or b!6103069 bm!504655) bm!504657))

(declare-fun m!6955088 () Bool)

(assert (=> bm!504656 m!6955088))

(declare-fun m!6955090 () Bool)

(assert (=> bm!504657 m!6955090))

(declare-fun m!6955092 () Bool)

(assert (=> b!6103076 m!6955092))

(assert (=> d!1912916 d!1912982))

(declare-fun d!1912984 () Bool)

(assert (=> d!1912984 true))

(assert (=> d!1912984 true))

(declare-fun res!2532117 () Bool)

(assert (=> d!1912984 (= (choose!45367 lambda!332444) res!2532117)))

(assert (=> d!1912924 d!1912984))

(declare-fun b!6103077 () Bool)

(declare-fun e!3722126 () Bool)

(assert (=> b!6103077 (= e!3722126 (= (head!12626 (_1!36334 (get!22181 lt!2329386))) (c!1096208 (regOne!32616 r!7292))))))

(declare-fun b!6103078 () Bool)

(declare-fun e!3722131 () Bool)

(assert (=> b!6103078 (= e!3722131 (nullable!6045 (regOne!32616 r!7292)))))

(declare-fun b!6103079 () Bool)

(declare-fun res!2532122 () Bool)

(assert (=> b!6103079 (=> (not res!2532122) (not e!3722126))))

(declare-fun call!504663 () Bool)

(assert (=> b!6103079 (= res!2532122 (not call!504663))))

(declare-fun b!6103080 () Bool)

(declare-fun e!3722128 () Bool)

(declare-fun e!3722129 () Bool)

(assert (=> b!6103080 (= e!3722128 e!3722129)))

(declare-fun c!1096347 () Bool)

(assert (=> b!6103080 (= c!1096347 (is-EmptyLang!16052 (regOne!32616 r!7292)))))

(declare-fun b!6103081 () Bool)

(declare-fun e!3722132 () Bool)

(declare-fun e!3722127 () Bool)

(assert (=> b!6103081 (= e!3722132 e!3722127)))

(declare-fun res!2532123 () Bool)

(assert (=> b!6103081 (=> res!2532123 e!3722127)))

(assert (=> b!6103081 (= res!2532123 call!504663)))

(declare-fun d!1912986 () Bool)

(assert (=> d!1912986 e!3722128))

(declare-fun c!1096348 () Bool)

(assert (=> d!1912986 (= c!1096348 (is-EmptyExpr!16052 (regOne!32616 r!7292)))))

(declare-fun lt!2329430 () Bool)

(assert (=> d!1912986 (= lt!2329430 e!3722131)))

(declare-fun c!1096349 () Bool)

(assert (=> d!1912986 (= c!1096349 (isEmpty!36255 (_1!36334 (get!22181 lt!2329386))))))

(assert (=> d!1912986 (validRegex!7788 (regOne!32616 r!7292))))

(assert (=> d!1912986 (= (matchR!8235 (regOne!32616 r!7292) (_1!36334 (get!22181 lt!2329386))) lt!2329430)))

(declare-fun b!6103082 () Bool)

(assert (=> b!6103082 (= e!3722128 (= lt!2329430 call!504663))))

(declare-fun b!6103083 () Bool)

(declare-fun e!3722130 () Bool)

(assert (=> b!6103083 (= e!3722130 e!3722132)))

(declare-fun res!2532125 () Bool)

(assert (=> b!6103083 (=> (not res!2532125) (not e!3722132))))

(assert (=> b!6103083 (= res!2532125 (not lt!2329430))))

(declare-fun b!6103084 () Bool)

(declare-fun res!2532124 () Bool)

(assert (=> b!6103084 (=> res!2532124 e!3722130)))

(assert (=> b!6103084 (= res!2532124 (not (is-ElementMatch!16052 (regOne!32616 r!7292))))))

(assert (=> b!6103084 (= e!3722129 e!3722130)))

(declare-fun b!6103085 () Bool)

(declare-fun res!2532121 () Bool)

(assert (=> b!6103085 (=> (not res!2532121) (not e!3722126))))

(assert (=> b!6103085 (= res!2532121 (isEmpty!36255 (tail!11711 (_1!36334 (get!22181 lt!2329386)))))))

(declare-fun b!6103086 () Bool)

(declare-fun res!2532118 () Bool)

(assert (=> b!6103086 (=> res!2532118 e!3722127)))

(assert (=> b!6103086 (= res!2532118 (not (isEmpty!36255 (tail!11711 (_1!36334 (get!22181 lt!2329386))))))))

(declare-fun bm!504658 () Bool)

(assert (=> bm!504658 (= call!504663 (isEmpty!36255 (_1!36334 (get!22181 lt!2329386))))))

(declare-fun b!6103087 () Bool)

(assert (=> b!6103087 (= e!3722127 (not (= (head!12626 (_1!36334 (get!22181 lt!2329386))) (c!1096208 (regOne!32616 r!7292)))))))

(declare-fun b!6103088 () Bool)

(assert (=> b!6103088 (= e!3722129 (not lt!2329430))))

(declare-fun b!6103089 () Bool)

(assert (=> b!6103089 (= e!3722131 (matchR!8235 (derivativeStep!4773 (regOne!32616 r!7292) (head!12626 (_1!36334 (get!22181 lt!2329386)))) (tail!11711 (_1!36334 (get!22181 lt!2329386)))))))

(declare-fun b!6103090 () Bool)

(declare-fun res!2532119 () Bool)

(assert (=> b!6103090 (=> res!2532119 e!3722130)))

(assert (=> b!6103090 (= res!2532119 e!3722126)))

(declare-fun res!2532120 () Bool)

(assert (=> b!6103090 (=> (not res!2532120) (not e!3722126))))

(assert (=> b!6103090 (= res!2532120 lt!2329430)))

(assert (= (and d!1912986 c!1096349) b!6103078))

(assert (= (and d!1912986 (not c!1096349)) b!6103089))

(assert (= (and d!1912986 c!1096348) b!6103082))

(assert (= (and d!1912986 (not c!1096348)) b!6103080))

(assert (= (and b!6103080 c!1096347) b!6103088))

(assert (= (and b!6103080 (not c!1096347)) b!6103084))

(assert (= (and b!6103084 (not res!2532124)) b!6103090))

(assert (= (and b!6103090 res!2532120) b!6103079))

(assert (= (and b!6103079 res!2532122) b!6103085))

(assert (= (and b!6103085 res!2532121) b!6103077))

(assert (= (and b!6103090 (not res!2532119)) b!6103083))

(assert (= (and b!6103083 res!2532125) b!6103081))

(assert (= (and b!6103081 (not res!2532123)) b!6103086))

(assert (= (and b!6103086 (not res!2532118)) b!6103087))

(assert (= (or b!6103082 b!6103079 b!6103081) bm!504658))

(declare-fun m!6955094 () Bool)

(assert (=> d!1912986 m!6955094))

(assert (=> d!1912986 m!6954890))

(declare-fun m!6955096 () Bool)

(assert (=> b!6103077 m!6955096))

(assert (=> b!6103087 m!6955096))

(assert (=> b!6103078 m!6955078))

(assert (=> bm!504658 m!6955094))

(declare-fun m!6955098 () Bool)

(assert (=> b!6103086 m!6955098))

(assert (=> b!6103086 m!6955098))

(declare-fun m!6955100 () Bool)

(assert (=> b!6103086 m!6955100))

(assert (=> b!6103089 m!6955096))

(assert (=> b!6103089 m!6955096))

(declare-fun m!6955102 () Bool)

(assert (=> b!6103089 m!6955102))

(assert (=> b!6103089 m!6955098))

(assert (=> b!6103089 m!6955102))

(assert (=> b!6103089 m!6955098))

(declare-fun m!6955104 () Bool)

(assert (=> b!6103089 m!6955104))

(assert (=> b!6103085 m!6955098))

(assert (=> b!6103085 m!6955098))

(assert (=> b!6103085 m!6955100))

(assert (=> b!6102653 d!1912986))

(declare-fun d!1912988 () Bool)

(assert (=> d!1912988 (= (get!22181 lt!2329386) (v!52075 lt!2329386))))

(assert (=> b!6102653 d!1912988))

(declare-fun d!1912990 () Bool)

(assert (=> d!1912990 (= (isEmpty!36255 s!2326) (is-Nil!64333 s!2326))))

(assert (=> bm!504616 d!1912990))

(declare-fun bs!1515472 () Bool)

(declare-fun d!1912992 () Bool)

(assert (= bs!1515472 (and d!1912992 d!1912938)))

(declare-fun lambda!332512 () Int)

(assert (=> bs!1515472 (= lambda!332512 lambda!332492)))

(declare-fun bs!1515473 () Bool)

(assert (= bs!1515473 (and d!1912992 d!1912944)))

(assert (=> bs!1515473 (= lambda!332512 lambda!332495)))

(declare-fun bs!1515474 () Bool)

(assert (= bs!1515474 (and d!1912992 d!1912894)))

(assert (=> bs!1515474 (= lambda!332512 lambda!332456)))

(declare-fun bs!1515475 () Bool)

(assert (= bs!1515475 (and d!1912992 d!1912934)))

(assert (=> bs!1515475 (= lambda!332512 lambda!332486)))

(declare-fun bs!1515476 () Bool)

(assert (= bs!1515476 (and d!1912992 d!1912936)))

(assert (=> bs!1515476 (= lambda!332512 lambda!332491)))

(declare-fun bs!1515477 () Bool)

(assert (= bs!1515477 (and d!1912992 d!1912896)))

(assert (=> bs!1515477 (= lambda!332512 lambda!332459)))

(assert (=> d!1912992 (= (inv!83378 setElem!41235) (forall!15173 (exprs!5936 setElem!41235) lambda!332512))))

(declare-fun bs!1515478 () Bool)

(assert (= bs!1515478 d!1912992))

(declare-fun m!6955106 () Bool)

(assert (=> bs!1515478 m!6955106))

(assert (=> setNonEmpty!41235 d!1912992))

(declare-fun d!1912994 () Bool)

(assert (=> d!1912994 (= (head!12626 s!2326) (h!70781 s!2326))))

(assert (=> b!6102597 d!1912994))

(declare-fun b!6103091 () Bool)

(declare-fun e!3722133 () (Set Context!10872))

(declare-fun call!504664 () (Set Context!10872))

(assert (=> b!6103091 (= e!3722133 call!504664)))

(declare-fun b!6103092 () Bool)

(declare-fun e!3722135 () (Set Context!10872))

(assert (=> b!6103092 (= e!3722135 (set.union call!504664 (derivationStepZipperUp!1226 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))))) (h!70781 s!2326))))))

(declare-fun d!1912996 () Bool)

(declare-fun c!1096350 () Bool)

(declare-fun e!3722134 () Bool)

(assert (=> d!1912996 (= c!1096350 e!3722134)))

(declare-fun res!2532126 () Bool)

(assert (=> d!1912996 (=> (not res!2532126) (not e!3722134))))

(assert (=> d!1912996 (= res!2532126 (is-Cons!64331 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))))))))

(assert (=> d!1912996 (= (derivationStepZipperUp!1226 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (h!70781 s!2326)) e!3722135)))

(declare-fun bm!504659 () Bool)

(assert (=> bm!504659 (= call!504664 (derivationStepZipperDown!1300 (h!70779 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))))) (Context!10873 (t!377906 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))))) (h!70781 s!2326)))))

(declare-fun b!6103093 () Bool)

(assert (=> b!6103093 (= e!3722135 e!3722133)))

(declare-fun c!1096351 () Bool)

(assert (=> b!6103093 (= c!1096351 (is-Cons!64331 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))))))))

(declare-fun b!6103094 () Bool)

(assert (=> b!6103094 (= e!3722134 (nullable!6045 (h!70779 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))))))))

(declare-fun b!6103095 () Bool)

(assert (=> b!6103095 (= e!3722133 (as set.empty (Set Context!10872)))))

(assert (= (and d!1912996 res!2532126) b!6103094))

(assert (= (and d!1912996 c!1096350) b!6103092))

(assert (= (and d!1912996 (not c!1096350)) b!6103093))

(assert (= (and b!6103093 c!1096351) b!6103091))

(assert (= (and b!6103093 (not c!1096351)) b!6103095))

(assert (= (or b!6103092 b!6103091) bm!504659))

(declare-fun m!6955108 () Bool)

(assert (=> b!6103092 m!6955108))

(declare-fun m!6955110 () Bool)

(assert (=> bm!504659 m!6955110))

(declare-fun m!6955112 () Bool)

(assert (=> b!6103094 m!6955112))

(assert (=> b!6102799 d!1912996))

(declare-fun d!1912998 () Bool)

(declare-fun nullableFct!2009 (Regex!16052) Bool)

(assert (=> d!1912998 (= (nullable!6045 (reg!16381 r!7292)) (nullableFct!2009 (reg!16381 r!7292)))))

(declare-fun bs!1515479 () Bool)

(assert (= bs!1515479 d!1912998))

(declare-fun m!6955114 () Bool)

(assert (=> bs!1515479 m!6955114))

(assert (=> b!6102787 d!1912998))

(assert (=> b!6102755 d!1912896))

(declare-fun bs!1515480 () Bool)

(declare-fun d!1913000 () Bool)

(assert (= bs!1515480 (and d!1913000 d!1912938)))

(declare-fun lambda!332513 () Int)

(assert (=> bs!1515480 (= lambda!332513 lambda!332492)))

(declare-fun bs!1515481 () Bool)

(assert (= bs!1515481 (and d!1913000 d!1912944)))

(assert (=> bs!1515481 (= lambda!332513 lambda!332495)))

(declare-fun bs!1515482 () Bool)

(assert (= bs!1515482 (and d!1913000 d!1912992)))

(assert (=> bs!1515482 (= lambda!332513 lambda!332512)))

(declare-fun bs!1515483 () Bool)

(assert (= bs!1515483 (and d!1913000 d!1912894)))

(assert (=> bs!1515483 (= lambda!332513 lambda!332456)))

(declare-fun bs!1515484 () Bool)

(assert (= bs!1515484 (and d!1913000 d!1912934)))

(assert (=> bs!1515484 (= lambda!332513 lambda!332486)))

(declare-fun bs!1515485 () Bool)

(assert (= bs!1515485 (and d!1913000 d!1912936)))

(assert (=> bs!1515485 (= lambda!332513 lambda!332491)))

(declare-fun bs!1515486 () Bool)

(assert (= bs!1515486 (and d!1913000 d!1912896)))

(assert (=> bs!1515486 (= lambda!332513 lambda!332459)))

(declare-fun lt!2329431 () List!64455)

(assert (=> d!1913000 (forall!15173 lt!2329431 lambda!332513)))

(declare-fun e!3722136 () List!64455)

(assert (=> d!1913000 (= lt!2329431 e!3722136)))

(declare-fun c!1096352 () Bool)

(assert (=> d!1913000 (= c!1096352 (is-Cons!64332 (t!377907 zl!343)))))

(assert (=> d!1913000 (= (unfocusZipperList!1473 (t!377907 zl!343)) lt!2329431)))

(declare-fun b!6103096 () Bool)

(assert (=> b!6103096 (= e!3722136 (Cons!64331 (generalisedConcat!1649 (exprs!5936 (h!70780 (t!377907 zl!343)))) (unfocusZipperList!1473 (t!377907 (t!377907 zl!343)))))))

(declare-fun b!6103097 () Bool)

(assert (=> b!6103097 (= e!3722136 Nil!64331)))

(assert (= (and d!1913000 c!1096352) b!6103096))

(assert (= (and d!1913000 (not c!1096352)) b!6103097))

(declare-fun m!6955116 () Bool)

(assert (=> d!1913000 m!6955116))

(declare-fun m!6955118 () Bool)

(assert (=> b!6103096 m!6955118))

(declare-fun m!6955120 () Bool)

(assert (=> b!6103096 m!6955120))

(assert (=> b!6102755 d!1913000))

(declare-fun b!6103098 () Bool)

(declare-fun e!3722137 () Bool)

(assert (=> b!6103098 (= e!3722137 (= (head!12626 s!2326) (c!1096208 (regTwo!32616 r!7292))))))

(declare-fun b!6103099 () Bool)

(declare-fun e!3722142 () Bool)

(assert (=> b!6103099 (= e!3722142 (nullable!6045 (regTwo!32616 r!7292)))))

(declare-fun b!6103100 () Bool)

(declare-fun res!2532131 () Bool)

(assert (=> b!6103100 (=> (not res!2532131) (not e!3722137))))

(declare-fun call!504665 () Bool)

(assert (=> b!6103100 (= res!2532131 (not call!504665))))

(declare-fun b!6103101 () Bool)

(declare-fun e!3722139 () Bool)

(declare-fun e!3722140 () Bool)

(assert (=> b!6103101 (= e!3722139 e!3722140)))

(declare-fun c!1096353 () Bool)

(assert (=> b!6103101 (= c!1096353 (is-EmptyLang!16052 (regTwo!32616 r!7292)))))

(declare-fun b!6103102 () Bool)

(declare-fun e!3722143 () Bool)

(declare-fun e!3722138 () Bool)

(assert (=> b!6103102 (= e!3722143 e!3722138)))

(declare-fun res!2532132 () Bool)

(assert (=> b!6103102 (=> res!2532132 e!3722138)))

(assert (=> b!6103102 (= res!2532132 call!504665)))

(declare-fun d!1913002 () Bool)

(assert (=> d!1913002 e!3722139))

(declare-fun c!1096354 () Bool)

(assert (=> d!1913002 (= c!1096354 (is-EmptyExpr!16052 (regTwo!32616 r!7292)))))

(declare-fun lt!2329432 () Bool)

(assert (=> d!1913002 (= lt!2329432 e!3722142)))

(declare-fun c!1096355 () Bool)

(assert (=> d!1913002 (= c!1096355 (isEmpty!36255 s!2326))))

(assert (=> d!1913002 (validRegex!7788 (regTwo!32616 r!7292))))

(assert (=> d!1913002 (= (matchR!8235 (regTwo!32616 r!7292) s!2326) lt!2329432)))

(declare-fun b!6103103 () Bool)

(assert (=> b!6103103 (= e!3722139 (= lt!2329432 call!504665))))

(declare-fun b!6103104 () Bool)

(declare-fun e!3722141 () Bool)

(assert (=> b!6103104 (= e!3722141 e!3722143)))

(declare-fun res!2532134 () Bool)

(assert (=> b!6103104 (=> (not res!2532134) (not e!3722143))))

(assert (=> b!6103104 (= res!2532134 (not lt!2329432))))

(declare-fun b!6103105 () Bool)

(declare-fun res!2532133 () Bool)

(assert (=> b!6103105 (=> res!2532133 e!3722141)))

(assert (=> b!6103105 (= res!2532133 (not (is-ElementMatch!16052 (regTwo!32616 r!7292))))))

(assert (=> b!6103105 (= e!3722140 e!3722141)))

(declare-fun b!6103106 () Bool)

(declare-fun res!2532130 () Bool)

(assert (=> b!6103106 (=> (not res!2532130) (not e!3722137))))

(assert (=> b!6103106 (= res!2532130 (isEmpty!36255 (tail!11711 s!2326)))))

(declare-fun b!6103107 () Bool)

(declare-fun res!2532127 () Bool)

(assert (=> b!6103107 (=> res!2532127 e!3722138)))

(assert (=> b!6103107 (= res!2532127 (not (isEmpty!36255 (tail!11711 s!2326))))))

(declare-fun bm!504660 () Bool)

(assert (=> bm!504660 (= call!504665 (isEmpty!36255 s!2326))))

(declare-fun b!6103108 () Bool)

(assert (=> b!6103108 (= e!3722138 (not (= (head!12626 s!2326) (c!1096208 (regTwo!32616 r!7292)))))))

(declare-fun b!6103109 () Bool)

(assert (=> b!6103109 (= e!3722140 (not lt!2329432))))

(declare-fun b!6103110 () Bool)

(assert (=> b!6103110 (= e!3722142 (matchR!8235 (derivativeStep!4773 (regTwo!32616 r!7292) (head!12626 s!2326)) (tail!11711 s!2326)))))

(declare-fun b!6103111 () Bool)

(declare-fun res!2532128 () Bool)

(assert (=> b!6103111 (=> res!2532128 e!3722141)))

(assert (=> b!6103111 (= res!2532128 e!3722137)))

(declare-fun res!2532129 () Bool)

(assert (=> b!6103111 (=> (not res!2532129) (not e!3722137))))

(assert (=> b!6103111 (= res!2532129 lt!2329432)))

(assert (= (and d!1913002 c!1096355) b!6103099))

(assert (= (and d!1913002 (not c!1096355)) b!6103110))

(assert (= (and d!1913002 c!1096354) b!6103103))

(assert (= (and d!1913002 (not c!1096354)) b!6103101))

(assert (= (and b!6103101 c!1096353) b!6103109))

(assert (= (and b!6103101 (not c!1096353)) b!6103105))

(assert (= (and b!6103105 (not res!2532133)) b!6103111))

(assert (= (and b!6103111 res!2532129) b!6103100))

(assert (= (and b!6103100 res!2532131) b!6103106))

(assert (= (and b!6103106 res!2532130) b!6103098))

(assert (= (and b!6103111 (not res!2532128)) b!6103104))

(assert (= (and b!6103104 res!2532134) b!6103102))

(assert (= (and b!6103102 (not res!2532132)) b!6103107))

(assert (= (and b!6103107 (not res!2532127)) b!6103108))

(assert (= (or b!6103103 b!6103100 b!6103102) bm!504660))

(assert (=> d!1913002 m!6954834))

(declare-fun m!6955122 () Bool)

(assert (=> d!1913002 m!6955122))

(assert (=> b!6103098 m!6954838))

(assert (=> b!6103108 m!6954838))

(declare-fun m!6955124 () Bool)

(assert (=> b!6103099 m!6955124))

(assert (=> bm!504660 m!6954834))

(assert (=> b!6103107 m!6954842))

(assert (=> b!6103107 m!6954842))

(assert (=> b!6103107 m!6954844))

(assert (=> b!6103110 m!6954838))

(assert (=> b!6103110 m!6954838))

(declare-fun m!6955126 () Bool)

(assert (=> b!6103110 m!6955126))

(assert (=> b!6103110 m!6954842))

(assert (=> b!6103110 m!6955126))

(assert (=> b!6103110 m!6954842))

(declare-fun m!6955128 () Bool)

(assert (=> b!6103110 m!6955128))

(assert (=> b!6103106 m!6954842))

(assert (=> b!6103106 m!6954842))

(assert (=> b!6103106 m!6954844))

(assert (=> b!6102649 d!1913002))

(declare-fun b!6103112 () Bool)

(declare-fun e!3722144 () Bool)

(assert (=> b!6103112 (= e!3722144 (= (head!12626 (tail!11711 s!2326)) (c!1096208 (derivativeStep!4773 r!7292 (head!12626 s!2326)))))))

(declare-fun b!6103113 () Bool)

(declare-fun e!3722149 () Bool)

(assert (=> b!6103113 (= e!3722149 (nullable!6045 (derivativeStep!4773 r!7292 (head!12626 s!2326))))))

(declare-fun b!6103114 () Bool)

(declare-fun res!2532139 () Bool)

(assert (=> b!6103114 (=> (not res!2532139) (not e!3722144))))

(declare-fun call!504666 () Bool)

(assert (=> b!6103114 (= res!2532139 (not call!504666))))

(declare-fun b!6103115 () Bool)

(declare-fun e!3722146 () Bool)

(declare-fun e!3722147 () Bool)

(assert (=> b!6103115 (= e!3722146 e!3722147)))

(declare-fun c!1096356 () Bool)

(assert (=> b!6103115 (= c!1096356 (is-EmptyLang!16052 (derivativeStep!4773 r!7292 (head!12626 s!2326))))))

(declare-fun b!6103116 () Bool)

(declare-fun e!3722150 () Bool)

(declare-fun e!3722145 () Bool)

(assert (=> b!6103116 (= e!3722150 e!3722145)))

(declare-fun res!2532140 () Bool)

(assert (=> b!6103116 (=> res!2532140 e!3722145)))

(assert (=> b!6103116 (= res!2532140 call!504666)))

(declare-fun d!1913004 () Bool)

(assert (=> d!1913004 e!3722146))

(declare-fun c!1096357 () Bool)

(assert (=> d!1913004 (= c!1096357 (is-EmptyExpr!16052 (derivativeStep!4773 r!7292 (head!12626 s!2326))))))

(declare-fun lt!2329433 () Bool)

(assert (=> d!1913004 (= lt!2329433 e!3722149)))

(declare-fun c!1096358 () Bool)

(assert (=> d!1913004 (= c!1096358 (isEmpty!36255 (tail!11711 s!2326)))))

(assert (=> d!1913004 (validRegex!7788 (derivativeStep!4773 r!7292 (head!12626 s!2326)))))

(assert (=> d!1913004 (= (matchR!8235 (derivativeStep!4773 r!7292 (head!12626 s!2326)) (tail!11711 s!2326)) lt!2329433)))

(declare-fun b!6103117 () Bool)

(assert (=> b!6103117 (= e!3722146 (= lt!2329433 call!504666))))

(declare-fun b!6103118 () Bool)

(declare-fun e!3722148 () Bool)

(assert (=> b!6103118 (= e!3722148 e!3722150)))

(declare-fun res!2532142 () Bool)

(assert (=> b!6103118 (=> (not res!2532142) (not e!3722150))))

(assert (=> b!6103118 (= res!2532142 (not lt!2329433))))

(declare-fun b!6103119 () Bool)

(declare-fun res!2532141 () Bool)

(assert (=> b!6103119 (=> res!2532141 e!3722148)))

(assert (=> b!6103119 (= res!2532141 (not (is-ElementMatch!16052 (derivativeStep!4773 r!7292 (head!12626 s!2326)))))))

(assert (=> b!6103119 (= e!3722147 e!3722148)))

(declare-fun b!6103120 () Bool)

(declare-fun res!2532138 () Bool)

(assert (=> b!6103120 (=> (not res!2532138) (not e!3722144))))

(assert (=> b!6103120 (= res!2532138 (isEmpty!36255 (tail!11711 (tail!11711 s!2326))))))

(declare-fun b!6103121 () Bool)

(declare-fun res!2532135 () Bool)

(assert (=> b!6103121 (=> res!2532135 e!3722145)))

(assert (=> b!6103121 (= res!2532135 (not (isEmpty!36255 (tail!11711 (tail!11711 s!2326)))))))

(declare-fun bm!504661 () Bool)

(assert (=> bm!504661 (= call!504666 (isEmpty!36255 (tail!11711 s!2326)))))

(declare-fun b!6103122 () Bool)

(assert (=> b!6103122 (= e!3722145 (not (= (head!12626 (tail!11711 s!2326)) (c!1096208 (derivativeStep!4773 r!7292 (head!12626 s!2326))))))))

(declare-fun b!6103123 () Bool)

(assert (=> b!6103123 (= e!3722147 (not lt!2329433))))

(declare-fun b!6103124 () Bool)

(assert (=> b!6103124 (= e!3722149 (matchR!8235 (derivativeStep!4773 (derivativeStep!4773 r!7292 (head!12626 s!2326)) (head!12626 (tail!11711 s!2326))) (tail!11711 (tail!11711 s!2326))))))

(declare-fun b!6103125 () Bool)

(declare-fun res!2532136 () Bool)

(assert (=> b!6103125 (=> res!2532136 e!3722148)))

(assert (=> b!6103125 (= res!2532136 e!3722144)))

(declare-fun res!2532137 () Bool)

(assert (=> b!6103125 (=> (not res!2532137) (not e!3722144))))

(assert (=> b!6103125 (= res!2532137 lt!2329433)))

(assert (= (and d!1913004 c!1096358) b!6103113))

(assert (= (and d!1913004 (not c!1096358)) b!6103124))

(assert (= (and d!1913004 c!1096357) b!6103117))

(assert (= (and d!1913004 (not c!1096357)) b!6103115))

(assert (= (and b!6103115 c!1096356) b!6103123))

(assert (= (and b!6103115 (not c!1096356)) b!6103119))

(assert (= (and b!6103119 (not res!2532141)) b!6103125))

(assert (= (and b!6103125 res!2532137) b!6103114))

(assert (= (and b!6103114 res!2532139) b!6103120))

(assert (= (and b!6103120 res!2532138) b!6103112))

(assert (= (and b!6103125 (not res!2532136)) b!6103118))

(assert (= (and b!6103118 res!2532142) b!6103116))

(assert (= (and b!6103116 (not res!2532140)) b!6103121))

(assert (= (and b!6103121 (not res!2532135)) b!6103122))

(assert (= (or b!6103117 b!6103114 b!6103116) bm!504661))

(assert (=> d!1913004 m!6954842))

(assert (=> d!1913004 m!6954844))

(assert (=> d!1913004 m!6954846))

(declare-fun m!6955130 () Bool)

(assert (=> d!1913004 m!6955130))

(assert (=> b!6103112 m!6954842))

(declare-fun m!6955132 () Bool)

(assert (=> b!6103112 m!6955132))

(assert (=> b!6103122 m!6954842))

(assert (=> b!6103122 m!6955132))

(assert (=> b!6103113 m!6954846))

(declare-fun m!6955134 () Bool)

(assert (=> b!6103113 m!6955134))

(assert (=> bm!504661 m!6954842))

(assert (=> bm!504661 m!6954844))

(assert (=> b!6103121 m!6954842))

(declare-fun m!6955136 () Bool)

(assert (=> b!6103121 m!6955136))

(assert (=> b!6103121 m!6955136))

(declare-fun m!6955138 () Bool)

(assert (=> b!6103121 m!6955138))

(assert (=> b!6103124 m!6954842))

(assert (=> b!6103124 m!6955132))

(assert (=> b!6103124 m!6954846))

(assert (=> b!6103124 m!6955132))

(declare-fun m!6955140 () Bool)

(assert (=> b!6103124 m!6955140))

(assert (=> b!6103124 m!6954842))

(assert (=> b!6103124 m!6955136))

(assert (=> b!6103124 m!6955140))

(assert (=> b!6103124 m!6955136))

(declare-fun m!6955142 () Bool)

(assert (=> b!6103124 m!6955142))

(assert (=> b!6103120 m!6954842))

(assert (=> b!6103120 m!6955136))

(assert (=> b!6103120 m!6955136))

(assert (=> b!6103120 m!6955138))

(assert (=> b!6102609 d!1913004))

(declare-fun b!6103146 () Bool)

(declare-fun e!3722163 () Regex!16052)

(declare-fun call!504678 () Regex!16052)

(assert (=> b!6103146 (= e!3722163 (Concat!24897 call!504678 r!7292))))

(declare-fun c!1096371 () Bool)

(declare-fun c!1096369 () Bool)

(declare-fun call!504677 () Regex!16052)

(declare-fun c!1096373 () Bool)

(declare-fun bm!504670 () Bool)

(assert (=> bm!504670 (= call!504677 (derivativeStep!4773 (ite c!1096369 (regOne!32617 r!7292) (ite c!1096371 (reg!16381 r!7292) (ite c!1096373 (regTwo!32616 r!7292) (regOne!32616 r!7292)))) (head!12626 s!2326)))))

(declare-fun b!6103147 () Bool)

(declare-fun e!3722164 () Regex!16052)

(assert (=> b!6103147 (= e!3722164 EmptyLang!16052)))

(declare-fun b!6103149 () Bool)

(assert (=> b!6103149 (= c!1096369 (is-Union!16052 r!7292))))

(declare-fun e!3722161 () Regex!16052)

(declare-fun e!3722165 () Regex!16052)

(assert (=> b!6103149 (= e!3722161 e!3722165)))

(declare-fun bm!504671 () Bool)

(declare-fun call!504676 () Regex!16052)

(assert (=> bm!504671 (= call!504676 (derivativeStep!4773 (ite c!1096369 (regTwo!32617 r!7292) (regOne!32616 r!7292)) (head!12626 s!2326)))))

(declare-fun b!6103150 () Bool)

(assert (=> b!6103150 (= e!3722165 (Union!16052 call!504677 call!504676))))

(declare-fun bm!504672 () Bool)

(declare-fun call!504675 () Regex!16052)

(assert (=> bm!504672 (= call!504675 call!504678)))

(declare-fun b!6103151 () Bool)

(assert (=> b!6103151 (= e!3722161 (ite (= (head!12626 s!2326) (c!1096208 r!7292)) EmptyExpr!16052 EmptyLang!16052))))

(declare-fun bm!504673 () Bool)

(assert (=> bm!504673 (= call!504678 call!504677)))

(declare-fun b!6103152 () Bool)

(assert (=> b!6103152 (= e!3722164 e!3722161)))

(declare-fun c!1096370 () Bool)

(assert (=> b!6103152 (= c!1096370 (is-ElementMatch!16052 r!7292))))

(declare-fun b!6103153 () Bool)

(declare-fun e!3722162 () Regex!16052)

(assert (=> b!6103153 (= e!3722162 (Union!16052 (Concat!24897 call!504675 (regTwo!32616 r!7292)) EmptyLang!16052))))

(declare-fun b!6103148 () Bool)

(assert (=> b!6103148 (= c!1096373 (nullable!6045 (regOne!32616 r!7292)))))

(assert (=> b!6103148 (= e!3722163 e!3722162)))

(declare-fun d!1913006 () Bool)

(declare-fun lt!2329436 () Regex!16052)

(assert (=> d!1913006 (validRegex!7788 lt!2329436)))

(assert (=> d!1913006 (= lt!2329436 e!3722164)))

(declare-fun c!1096372 () Bool)

(assert (=> d!1913006 (= c!1096372 (or (is-EmptyExpr!16052 r!7292) (is-EmptyLang!16052 r!7292)))))

(assert (=> d!1913006 (validRegex!7788 r!7292)))

(assert (=> d!1913006 (= (derivativeStep!4773 r!7292 (head!12626 s!2326)) lt!2329436)))

(declare-fun b!6103154 () Bool)

(assert (=> b!6103154 (= e!3722162 (Union!16052 (Concat!24897 call!504676 (regTwo!32616 r!7292)) call!504675))))

(declare-fun b!6103155 () Bool)

(assert (=> b!6103155 (= e!3722165 e!3722163)))

(assert (=> b!6103155 (= c!1096371 (is-Star!16052 r!7292))))

(assert (= (and d!1913006 c!1096372) b!6103147))

(assert (= (and d!1913006 (not c!1096372)) b!6103152))

(assert (= (and b!6103152 c!1096370) b!6103151))

(assert (= (and b!6103152 (not c!1096370)) b!6103149))

(assert (= (and b!6103149 c!1096369) b!6103150))

(assert (= (and b!6103149 (not c!1096369)) b!6103155))

(assert (= (and b!6103155 c!1096371) b!6103146))

(assert (= (and b!6103155 (not c!1096371)) b!6103148))

(assert (= (and b!6103148 c!1096373) b!6103154))

(assert (= (and b!6103148 (not c!1096373)) b!6103153))

(assert (= (or b!6103154 b!6103153) bm!504672))

(assert (= (or b!6103146 bm!504672) bm!504673))

(assert (= (or b!6103150 b!6103154) bm!504671))

(assert (= (or b!6103150 bm!504673) bm!504670))

(assert (=> bm!504670 m!6954838))

(declare-fun m!6955144 () Bool)

(assert (=> bm!504670 m!6955144))

(assert (=> bm!504671 m!6954838))

(declare-fun m!6955146 () Bool)

(assert (=> bm!504671 m!6955146))

(assert (=> b!6103148 m!6955078))

(declare-fun m!6955148 () Bool)

(assert (=> d!1913006 m!6955148))

(assert (=> d!1913006 m!6954742))

(assert (=> b!6102609 d!1913006))

(assert (=> b!6102609 d!1912994))

(declare-fun d!1913008 () Bool)

(assert (=> d!1913008 (= (tail!11711 s!2326) (t!377908 s!2326))))

(assert (=> b!6102609 d!1913008))

(declare-fun d!1913010 () Bool)

(assert (=> d!1913010 (= (isConcat!992 lt!2329359) (is-Concat!24897 lt!2329359))))

(assert (=> b!6102501 d!1913010))

(declare-fun d!1913012 () Bool)

(declare-fun res!2532147 () Bool)

(declare-fun e!3722170 () Bool)

(assert (=> d!1913012 (=> res!2532147 e!3722170)))

(assert (=> d!1913012 (= res!2532147 (is-Nil!64331 (exprs!5936 (h!70780 zl!343))))))

(assert (=> d!1913012 (= (forall!15173 (exprs!5936 (h!70780 zl!343)) lambda!332456) e!3722170)))

(declare-fun b!6103160 () Bool)

(declare-fun e!3722171 () Bool)

(assert (=> b!6103160 (= e!3722170 e!3722171)))

(declare-fun res!2532148 () Bool)

(assert (=> b!6103160 (=> (not res!2532148) (not e!3722171))))

(declare-fun dynLambda!25333 (Int Regex!16052) Bool)

(assert (=> b!6103160 (= res!2532148 (dynLambda!25333 lambda!332456 (h!70779 (exprs!5936 (h!70780 zl!343)))))))

(declare-fun b!6103161 () Bool)

(assert (=> b!6103161 (= e!3722171 (forall!15173 (t!377906 (exprs!5936 (h!70780 zl!343))) lambda!332456))))

(assert (= (and d!1913012 (not res!2532147)) b!6103160))

(assert (= (and b!6103160 res!2532148) b!6103161))

(declare-fun b_lambda!232513 () Bool)

(assert (=> (not b_lambda!232513) (not b!6103160)))

(declare-fun m!6955150 () Bool)

(assert (=> b!6103160 m!6955150))

(declare-fun m!6955152 () Bool)

(assert (=> b!6103161 m!6955152))

(assert (=> d!1912894 d!1913012))

(declare-fun b!6103162 () Bool)

(declare-fun res!2532151 () Bool)

(declare-fun e!3722175 () Bool)

(assert (=> b!6103162 (=> res!2532151 e!3722175)))

(assert (=> b!6103162 (= res!2532151 (not (is-Concat!24897 lt!2329359)))))

(declare-fun e!3722172 () Bool)

(assert (=> b!6103162 (= e!3722172 e!3722175)))

(declare-fun b!6103163 () Bool)

(declare-fun e!3722177 () Bool)

(declare-fun call!504680 () Bool)

(assert (=> b!6103163 (= e!3722177 call!504680)))

(declare-fun b!6103164 () Bool)

(declare-fun e!3722178 () Bool)

(declare-fun e!3722176 () Bool)

(assert (=> b!6103164 (= e!3722178 e!3722176)))

(declare-fun c!1096375 () Bool)

(assert (=> b!6103164 (= c!1096375 (is-Star!16052 lt!2329359))))

(declare-fun b!6103165 () Bool)

(assert (=> b!6103165 (= e!3722176 e!3722172)))

(declare-fun c!1096374 () Bool)

(assert (=> b!6103165 (= c!1096374 (is-Union!16052 lt!2329359))))

(declare-fun b!6103166 () Bool)

(declare-fun e!3722174 () Bool)

(declare-fun call!504681 () Bool)

(assert (=> b!6103166 (= e!3722174 call!504681)))

(declare-fun b!6103167 () Bool)

(declare-fun e!3722173 () Bool)

(assert (=> b!6103167 (= e!3722175 e!3722173)))

(declare-fun res!2532152 () Bool)

(assert (=> b!6103167 (=> (not res!2532152) (not e!3722173))))

(declare-fun call!504679 () Bool)

(assert (=> b!6103167 (= res!2532152 call!504679)))

(declare-fun b!6103168 () Bool)

(declare-fun res!2532153 () Bool)

(assert (=> b!6103168 (=> (not res!2532153) (not e!3722174))))

(assert (=> b!6103168 (= res!2532153 call!504679)))

(assert (=> b!6103168 (= e!3722172 e!3722174)))

(declare-fun bm!504675 () Bool)

(assert (=> bm!504675 (= call!504679 (validRegex!7788 (ite c!1096374 (regOne!32617 lt!2329359) (regOne!32616 lt!2329359))))))

(declare-fun bm!504676 () Bool)

(assert (=> bm!504676 (= call!504680 (validRegex!7788 (ite c!1096375 (reg!16381 lt!2329359) (ite c!1096374 (regTwo!32617 lt!2329359) (regTwo!32616 lt!2329359)))))))

(declare-fun b!6103169 () Bool)

(assert (=> b!6103169 (= e!3722173 call!504681)))

(declare-fun b!6103170 () Bool)

(assert (=> b!6103170 (= e!3722176 e!3722177)))

(declare-fun res!2532149 () Bool)

(assert (=> b!6103170 (= res!2532149 (not (nullable!6045 (reg!16381 lt!2329359))))))

(assert (=> b!6103170 (=> (not res!2532149) (not e!3722177))))

(declare-fun d!1913014 () Bool)

(declare-fun res!2532150 () Bool)

(assert (=> d!1913014 (=> res!2532150 e!3722178)))

(assert (=> d!1913014 (= res!2532150 (is-ElementMatch!16052 lt!2329359))))

(assert (=> d!1913014 (= (validRegex!7788 lt!2329359) e!3722178)))

(declare-fun bm!504674 () Bool)

(assert (=> bm!504674 (= call!504681 call!504680)))

(assert (= (and d!1913014 (not res!2532150)) b!6103164))

(assert (= (and b!6103164 c!1096375) b!6103170))

(assert (= (and b!6103164 (not c!1096375)) b!6103165))

(assert (= (and b!6103170 res!2532149) b!6103163))

(assert (= (and b!6103165 c!1096374) b!6103168))

(assert (= (and b!6103165 (not c!1096374)) b!6103162))

(assert (= (and b!6103168 res!2532153) b!6103166))

(assert (= (and b!6103162 (not res!2532151)) b!6103167))

(assert (= (and b!6103167 res!2532152) b!6103169))

(assert (= (or b!6103166 b!6103169) bm!504674))

(assert (= (or b!6103168 b!6103167) bm!504675))

(assert (= (or b!6103163 bm!504674) bm!504676))

(declare-fun m!6955154 () Bool)

(assert (=> bm!504675 m!6955154))

(declare-fun m!6955156 () Bool)

(assert (=> bm!504676 m!6955156))

(declare-fun m!6955158 () Bool)

(assert (=> b!6103170 m!6955158))

(assert (=> d!1912896 d!1913014))

(declare-fun d!1913016 () Bool)

(declare-fun res!2532154 () Bool)

(declare-fun e!3722179 () Bool)

(assert (=> d!1913016 (=> res!2532154 e!3722179)))

(assert (=> d!1913016 (= res!2532154 (is-Nil!64331 (exprs!5936 (h!70780 zl!343))))))

(assert (=> d!1913016 (= (forall!15173 (exprs!5936 (h!70780 zl!343)) lambda!332459) e!3722179)))

(declare-fun b!6103171 () Bool)

(declare-fun e!3722180 () Bool)

(assert (=> b!6103171 (= e!3722179 e!3722180)))

(declare-fun res!2532155 () Bool)

(assert (=> b!6103171 (=> (not res!2532155) (not e!3722180))))

(assert (=> b!6103171 (= res!2532155 (dynLambda!25333 lambda!332459 (h!70779 (exprs!5936 (h!70780 zl!343)))))))

(declare-fun b!6103172 () Bool)

(assert (=> b!6103172 (= e!3722180 (forall!15173 (t!377906 (exprs!5936 (h!70780 zl!343))) lambda!332459))))

(assert (= (and d!1913016 (not res!2532154)) b!6103171))

(assert (= (and b!6103171 res!2532155) b!6103172))

(declare-fun b_lambda!232515 () Bool)

(assert (=> (not b_lambda!232515) (not b!6103171)))

(declare-fun m!6955160 () Bool)

(assert (=> b!6103171 m!6955160))

(declare-fun m!6955162 () Bool)

(assert (=> b!6103172 m!6955162))

(assert (=> d!1912896 d!1913016))

(assert (=> b!6102651 d!1912978))

(declare-fun d!1913018 () Bool)

(declare-fun res!2532156 () Bool)

(declare-fun e!3722181 () Bool)

(assert (=> d!1913018 (=> res!2532156 e!3722181)))

(assert (=> d!1913018 (= res!2532156 (is-Nil!64331 lt!2329398))))

(assert (=> d!1913018 (= (forall!15173 lt!2329398 lambda!332491) e!3722181)))

(declare-fun b!6103173 () Bool)

(declare-fun e!3722182 () Bool)

(assert (=> b!6103173 (= e!3722181 e!3722182)))

(declare-fun res!2532157 () Bool)

(assert (=> b!6103173 (=> (not res!2532157) (not e!3722182))))

(assert (=> b!6103173 (= res!2532157 (dynLambda!25333 lambda!332491 (h!70779 lt!2329398)))))

(declare-fun b!6103174 () Bool)

(assert (=> b!6103174 (= e!3722182 (forall!15173 (t!377906 lt!2329398) lambda!332491))))

(assert (= (and d!1913018 (not res!2532156)) b!6103173))

(assert (= (and b!6103173 res!2532157) b!6103174))

(declare-fun b_lambda!232517 () Bool)

(assert (=> (not b_lambda!232517) (not b!6103173)))

(declare-fun m!6955164 () Bool)

(assert (=> b!6103173 m!6955164))

(declare-fun m!6955166 () Bool)

(assert (=> b!6103174 m!6955166))

(assert (=> d!1912936 d!1913018))

(declare-fun b!6103175 () Bool)

(declare-fun res!2532160 () Bool)

(declare-fun e!3722186 () Bool)

(assert (=> b!6103175 (=> res!2532160 e!3722186)))

(assert (=> b!6103175 (= res!2532160 (not (is-Concat!24897 lt!2329395)))))

(declare-fun e!3722183 () Bool)

(assert (=> b!6103175 (= e!3722183 e!3722186)))

(declare-fun b!6103176 () Bool)

(declare-fun e!3722188 () Bool)

(declare-fun call!504683 () Bool)

(assert (=> b!6103176 (= e!3722188 call!504683)))

(declare-fun b!6103177 () Bool)

(declare-fun e!3722189 () Bool)

(declare-fun e!3722187 () Bool)

(assert (=> b!6103177 (= e!3722189 e!3722187)))

(declare-fun c!1096377 () Bool)

(assert (=> b!6103177 (= c!1096377 (is-Star!16052 lt!2329395))))

(declare-fun b!6103178 () Bool)

(assert (=> b!6103178 (= e!3722187 e!3722183)))

(declare-fun c!1096376 () Bool)

(assert (=> b!6103178 (= c!1096376 (is-Union!16052 lt!2329395))))

(declare-fun b!6103179 () Bool)

(declare-fun e!3722185 () Bool)

(declare-fun call!504684 () Bool)

(assert (=> b!6103179 (= e!3722185 call!504684)))

(declare-fun b!6103180 () Bool)

(declare-fun e!3722184 () Bool)

(assert (=> b!6103180 (= e!3722186 e!3722184)))

(declare-fun res!2532161 () Bool)

(assert (=> b!6103180 (=> (not res!2532161) (not e!3722184))))

(declare-fun call!504682 () Bool)

(assert (=> b!6103180 (= res!2532161 call!504682)))

(declare-fun b!6103181 () Bool)

(declare-fun res!2532162 () Bool)

(assert (=> b!6103181 (=> (not res!2532162) (not e!3722185))))

(assert (=> b!6103181 (= res!2532162 call!504682)))

(assert (=> b!6103181 (= e!3722183 e!3722185)))

(declare-fun bm!504678 () Bool)

(assert (=> bm!504678 (= call!504682 (validRegex!7788 (ite c!1096376 (regOne!32617 lt!2329395) (regOne!32616 lt!2329395))))))

(declare-fun bm!504679 () Bool)

(assert (=> bm!504679 (= call!504683 (validRegex!7788 (ite c!1096377 (reg!16381 lt!2329395) (ite c!1096376 (regTwo!32617 lt!2329395) (regTwo!32616 lt!2329395)))))))

(declare-fun b!6103182 () Bool)

(assert (=> b!6103182 (= e!3722184 call!504684)))

(declare-fun b!6103183 () Bool)

(assert (=> b!6103183 (= e!3722187 e!3722188)))

(declare-fun res!2532158 () Bool)

(assert (=> b!6103183 (= res!2532158 (not (nullable!6045 (reg!16381 lt!2329395))))))

(assert (=> b!6103183 (=> (not res!2532158) (not e!3722188))))

(declare-fun d!1913020 () Bool)

(declare-fun res!2532159 () Bool)

(assert (=> d!1913020 (=> res!2532159 e!3722189)))

(assert (=> d!1913020 (= res!2532159 (is-ElementMatch!16052 lt!2329395))))

(assert (=> d!1913020 (= (validRegex!7788 lt!2329395) e!3722189)))

(declare-fun bm!504677 () Bool)

(assert (=> bm!504677 (= call!504684 call!504683)))

(assert (= (and d!1913020 (not res!2532159)) b!6103177))

(assert (= (and b!6103177 c!1096377) b!6103183))

(assert (= (and b!6103177 (not c!1096377)) b!6103178))

(assert (= (and b!6103183 res!2532158) b!6103176))

(assert (= (and b!6103178 c!1096376) b!6103181))

(assert (= (and b!6103178 (not c!1096376)) b!6103175))

(assert (= (and b!6103181 res!2532162) b!6103179))

(assert (= (and b!6103175 (not res!2532160)) b!6103180))

(assert (= (and b!6103180 res!2532161) b!6103182))

(assert (= (or b!6103179 b!6103182) bm!504677))

(assert (= (or b!6103181 b!6103180) bm!504678))

(assert (= (or b!6103176 bm!504677) bm!504679))

(declare-fun m!6955168 () Bool)

(assert (=> bm!504678 m!6955168))

(declare-fun m!6955170 () Bool)

(assert (=> bm!504679 m!6955170))

(declare-fun m!6955172 () Bool)

(assert (=> b!6103183 m!6955172))

(assert (=> d!1912934 d!1913020))

(declare-fun d!1913022 () Bool)

(declare-fun res!2532163 () Bool)

(declare-fun e!3722190 () Bool)

(assert (=> d!1913022 (=> res!2532163 e!3722190)))

(assert (=> d!1913022 (= res!2532163 (is-Nil!64331 (unfocusZipperList!1473 zl!343)))))

(assert (=> d!1913022 (= (forall!15173 (unfocusZipperList!1473 zl!343) lambda!332486) e!3722190)))

(declare-fun b!6103184 () Bool)

(declare-fun e!3722191 () Bool)

(assert (=> b!6103184 (= e!3722190 e!3722191)))

(declare-fun res!2532164 () Bool)

(assert (=> b!6103184 (=> (not res!2532164) (not e!3722191))))

(assert (=> b!6103184 (= res!2532164 (dynLambda!25333 lambda!332486 (h!70779 (unfocusZipperList!1473 zl!343))))))

(declare-fun b!6103185 () Bool)

(assert (=> b!6103185 (= e!3722191 (forall!15173 (t!377906 (unfocusZipperList!1473 zl!343)) lambda!332486))))

(assert (= (and d!1913022 (not res!2532163)) b!6103184))

(assert (= (and b!6103184 res!2532164) b!6103185))

(declare-fun b_lambda!232519 () Bool)

(assert (=> (not b_lambda!232519) (not b!6103184)))

(declare-fun m!6955174 () Bool)

(assert (=> b!6103184 m!6955174))

(declare-fun m!6955176 () Bool)

(assert (=> b!6103185 m!6955176))

(assert (=> d!1912934 d!1913022))

(declare-fun d!1913024 () Bool)

(assert (=> d!1913024 (= (isEmpty!36255 (tail!11711 s!2326)) (is-Nil!64333 (tail!11711 s!2326)))))

(assert (=> b!6102606 d!1913024))

(assert (=> b!6102606 d!1913008))

(declare-fun d!1913026 () Bool)

(assert (=> d!1913026 (= (isEmpty!36252 (tail!11710 (unfocusZipperList!1473 zl!343))) (is-Nil!64331 (tail!11710 (unfocusZipperList!1473 zl!343))))))

(assert (=> b!6102733 d!1913026))

(declare-fun d!1913028 () Bool)

(assert (=> d!1913028 (= (tail!11710 (unfocusZipperList!1473 zl!343)) (t!377906 (unfocusZipperList!1473 zl!343)))))

(assert (=> b!6102733 d!1913028))

(assert (=> d!1912914 d!1912912))

(assert (=> d!1912914 d!1912904))

(declare-fun d!1913030 () Bool)

(assert (=> d!1913030 (= (matchR!8235 r!7292 s!2326) (matchRSpec!3153 r!7292 s!2326))))

(assert (=> d!1913030 true))

(declare-fun _$88!4581 () Unit!157375)

(assert (=> d!1913030 (= (choose!45366 r!7292 s!2326) _$88!4581)))

(declare-fun bs!1515487 () Bool)

(assert (= bs!1515487 d!1913030))

(assert (=> bs!1515487 m!6954738))

(assert (=> bs!1515487 m!6954736))

(assert (=> d!1912914 d!1913030))

(assert (=> d!1912914 d!1912940))

(assert (=> b!6102607 d!1912994))

(declare-fun d!1913032 () Bool)

(assert (=> d!1913032 (= (isEmpty!36252 (tail!11710 (exprs!5936 (h!70780 zl!343)))) (is-Nil!64331 (tail!11710 (exprs!5936 (h!70780 zl!343)))))))

(assert (=> b!6102499 d!1913032))

(declare-fun d!1913034 () Bool)

(assert (=> d!1913034 (= (tail!11710 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))

(assert (=> b!6102499 d!1913034))

(declare-fun d!1913036 () Bool)

(assert (=> d!1913036 (= (isUnion!909 lt!2329395) (is-Union!16052 lt!2329395))))

(assert (=> b!6102735 d!1913036))

(declare-fun b!6103186 () Bool)

(declare-fun res!2532167 () Bool)

(declare-fun e!3722195 () Bool)

(assert (=> b!6103186 (=> res!2532167 e!3722195)))

(assert (=> b!6103186 (= res!2532167 (not (is-Concat!24897 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292))))))))

(declare-fun e!3722192 () Bool)

(assert (=> b!6103186 (= e!3722192 e!3722195)))

(declare-fun b!6103187 () Bool)

(declare-fun e!3722197 () Bool)

(declare-fun call!504686 () Bool)

(assert (=> b!6103187 (= e!3722197 call!504686)))

(declare-fun b!6103188 () Bool)

(declare-fun e!3722198 () Bool)

(declare-fun e!3722196 () Bool)

(assert (=> b!6103188 (= e!3722198 e!3722196)))

(declare-fun c!1096379 () Bool)

(assert (=> b!6103188 (= c!1096379 (is-Star!16052 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))))))

(declare-fun b!6103189 () Bool)

(assert (=> b!6103189 (= e!3722196 e!3722192)))

(declare-fun c!1096378 () Bool)

(assert (=> b!6103189 (= c!1096378 (is-Union!16052 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))))))

(declare-fun b!6103190 () Bool)

(declare-fun e!3722194 () Bool)

(declare-fun call!504687 () Bool)

(assert (=> b!6103190 (= e!3722194 call!504687)))

(declare-fun b!6103191 () Bool)

(declare-fun e!3722193 () Bool)

(assert (=> b!6103191 (= e!3722195 e!3722193)))

(declare-fun res!2532168 () Bool)

(assert (=> b!6103191 (=> (not res!2532168) (not e!3722193))))

(declare-fun call!504685 () Bool)

(assert (=> b!6103191 (= res!2532168 call!504685)))

(declare-fun b!6103192 () Bool)

(declare-fun res!2532169 () Bool)

(assert (=> b!6103192 (=> (not res!2532169) (not e!3722194))))

(assert (=> b!6103192 (= res!2532169 call!504685)))

(assert (=> b!6103192 (= e!3722192 e!3722194)))

(declare-fun bm!504681 () Bool)

(assert (=> bm!504681 (= call!504685 (validRegex!7788 (ite c!1096378 (regOne!32617 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))) (regOne!32616 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))))))))

(declare-fun bm!504682 () Bool)

(assert (=> bm!504682 (= call!504686 (validRegex!7788 (ite c!1096379 (reg!16381 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))) (ite c!1096378 (regTwo!32617 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))) (regTwo!32616 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292))))))))))

(declare-fun b!6103193 () Bool)

(assert (=> b!6103193 (= e!3722193 call!504687)))

(declare-fun b!6103194 () Bool)

(assert (=> b!6103194 (= e!3722196 e!3722197)))

(declare-fun res!2532165 () Bool)

(assert (=> b!6103194 (= res!2532165 (not (nullable!6045 (reg!16381 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))))))))

(assert (=> b!6103194 (=> (not res!2532165) (not e!3722197))))

(declare-fun d!1913038 () Bool)

(declare-fun res!2532166 () Bool)

(assert (=> d!1913038 (=> res!2532166 e!3722198)))

(assert (=> d!1913038 (= res!2532166 (is-ElementMatch!16052 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))))))

(assert (=> d!1913038 (= (validRegex!7788 (ite c!1096298 (reg!16381 r!7292) (ite c!1096297 (regTwo!32617 r!7292) (regTwo!32616 r!7292)))) e!3722198)))

(declare-fun bm!504680 () Bool)

(assert (=> bm!504680 (= call!504687 call!504686)))

(assert (= (and d!1913038 (not res!2532166)) b!6103188))

(assert (= (and b!6103188 c!1096379) b!6103194))

(assert (= (and b!6103188 (not c!1096379)) b!6103189))

(assert (= (and b!6103194 res!2532165) b!6103187))

(assert (= (and b!6103189 c!1096378) b!6103192))

(assert (= (and b!6103189 (not c!1096378)) b!6103186))

(assert (= (and b!6103192 res!2532169) b!6103190))

(assert (= (and b!6103186 (not res!2532167)) b!6103191))

(assert (= (and b!6103191 res!2532168) b!6103193))

(assert (= (or b!6103190 b!6103193) bm!504680))

(assert (= (or b!6103192 b!6103191) bm!504681))

(assert (= (or b!6103187 bm!504680) bm!504682))

(declare-fun m!6955178 () Bool)

(assert (=> bm!504681 m!6955178))

(declare-fun m!6955180 () Bool)

(assert (=> bm!504682 m!6955180))

(declare-fun m!6955182 () Bool)

(assert (=> b!6103194 m!6955182))

(assert (=> bm!504638 d!1913038))

(declare-fun d!1913040 () Bool)

(assert (=> d!1913040 true))

(assert (=> d!1913040 true))

(declare-fun res!2532170 () Bool)

(assert (=> d!1913040 (= (choose!45367 lambda!332445) res!2532170)))

(assert (=> d!1912922 d!1913040))

(declare-fun d!1913042 () Bool)

(declare-fun res!2532171 () Bool)

(declare-fun e!3722199 () Bool)

(assert (=> d!1913042 (=> res!2532171 e!3722199)))

(assert (=> d!1913042 (= res!2532171 (is-Nil!64331 (exprs!5936 setElem!41229)))))

(assert (=> d!1913042 (= (forall!15173 (exprs!5936 setElem!41229) lambda!332492) e!3722199)))

(declare-fun b!6103195 () Bool)

(declare-fun e!3722200 () Bool)

(assert (=> b!6103195 (= e!3722199 e!3722200)))

(declare-fun res!2532172 () Bool)

(assert (=> b!6103195 (=> (not res!2532172) (not e!3722200))))

(assert (=> b!6103195 (= res!2532172 (dynLambda!25333 lambda!332492 (h!70779 (exprs!5936 setElem!41229))))))

(declare-fun b!6103196 () Bool)

(assert (=> b!6103196 (= e!3722200 (forall!15173 (t!377906 (exprs!5936 setElem!41229)) lambda!332492))))

(assert (= (and d!1913042 (not res!2532171)) b!6103195))

(assert (= (and b!6103195 res!2532172) b!6103196))

(declare-fun b_lambda!232521 () Bool)

(assert (=> (not b_lambda!232521) (not b!6103195)))

(declare-fun m!6955184 () Bool)

(assert (=> b!6103195 m!6955184))

(declare-fun m!6955186 () Bool)

(assert (=> b!6103196 m!6955186))

(assert (=> d!1912938 d!1913042))

(declare-fun bs!1515488 () Bool)

(declare-fun b!6103198 () Bool)

(assert (= bs!1515488 (and b!6103198 d!1912928)))

(declare-fun lambda!332514 () Int)

(assert (=> bs!1515488 (not (= lambda!332514 lambda!332483))))

(assert (=> bs!1515488 (not (= lambda!332514 lambda!332482))))

(declare-fun bs!1515489 () Bool)

(assert (= bs!1515489 (and b!6103198 d!1912926)))

(assert (=> bs!1515489 (not (= lambda!332514 lambda!332477))))

(declare-fun bs!1515490 () Bool)

(assert (= bs!1515490 (and b!6103198 b!6102539)))

(assert (=> bs!1515490 (= (and (= (reg!16381 (regOne!32617 r!7292)) (reg!16381 r!7292)) (= (regOne!32617 r!7292) r!7292)) (= lambda!332514 lambda!332467))))

(declare-fun bs!1515491 () Bool)

(assert (= bs!1515491 (and b!6103198 b!6102387)))

(assert (=> bs!1515491 (not (= lambda!332514 lambda!332444))))

(declare-fun bs!1515492 () Bool)

(assert (= bs!1515492 (and b!6103198 b!6102546)))

(assert (=> bs!1515492 (not (= lambda!332514 lambda!332468))))

(assert (=> bs!1515491 (not (= lambda!332514 lambda!332445))))

(assert (=> b!6103198 true))

(assert (=> b!6103198 true))

(declare-fun bs!1515493 () Bool)

(declare-fun b!6103205 () Bool)

(assert (= bs!1515493 (and b!6103205 d!1912928)))

(declare-fun lambda!332515 () Int)

(assert (=> bs!1515493 (= (and (= (regOne!32616 (regOne!32617 r!7292)) (regOne!32616 r!7292)) (= (regTwo!32616 (regOne!32617 r!7292)) (regTwo!32616 r!7292))) (= lambda!332515 lambda!332483))))

(assert (=> bs!1515493 (not (= lambda!332515 lambda!332482))))

(declare-fun bs!1515494 () Bool)

(assert (= bs!1515494 (and b!6103205 d!1912926)))

(assert (=> bs!1515494 (not (= lambda!332515 lambda!332477))))

(declare-fun bs!1515495 () Bool)

(assert (= bs!1515495 (and b!6103205 b!6102539)))

(assert (=> bs!1515495 (not (= lambda!332515 lambda!332467))))

(declare-fun bs!1515496 () Bool)

(assert (= bs!1515496 (and b!6103205 b!6102387)))

(assert (=> bs!1515496 (not (= lambda!332515 lambda!332444))))

(declare-fun bs!1515497 () Bool)

(assert (= bs!1515497 (and b!6103205 b!6102546)))

(assert (=> bs!1515497 (= (and (= (regOne!32616 (regOne!32617 r!7292)) (regOne!32616 r!7292)) (= (regTwo!32616 (regOne!32617 r!7292)) (regTwo!32616 r!7292))) (= lambda!332515 lambda!332468))))

(assert (=> bs!1515496 (= (and (= (regOne!32616 (regOne!32617 r!7292)) (regOne!32616 r!7292)) (= (regTwo!32616 (regOne!32617 r!7292)) (regTwo!32616 r!7292))) (= lambda!332515 lambda!332445))))

(declare-fun bs!1515498 () Bool)

(assert (= bs!1515498 (and b!6103205 b!6103198)))

(assert (=> bs!1515498 (not (= lambda!332515 lambda!332514))))

(assert (=> b!6103205 true))

(assert (=> b!6103205 true))

(declare-fun b!6103197 () Bool)

(declare-fun e!3722202 () Bool)

(declare-fun e!3722205 () Bool)

(assert (=> b!6103197 (= e!3722202 e!3722205)))

(declare-fun c!1096382 () Bool)

(assert (=> b!6103197 (= c!1096382 (is-Star!16052 (regOne!32617 r!7292)))))

(declare-fun e!3722204 () Bool)

(declare-fun call!504688 () Bool)

(assert (=> b!6103198 (= e!3722204 call!504688)))

(declare-fun b!6103199 () Bool)

(declare-fun c!1096381 () Bool)

(assert (=> b!6103199 (= c!1096381 (is-ElementMatch!16052 (regOne!32617 r!7292)))))

(declare-fun e!3722207 () Bool)

(declare-fun e!3722203 () Bool)

(assert (=> b!6103199 (= e!3722207 e!3722203)))

(declare-fun b!6103200 () Bool)

(declare-fun e!3722201 () Bool)

(assert (=> b!6103200 (= e!3722201 e!3722207)))

(declare-fun res!2532173 () Bool)

(assert (=> b!6103200 (= res!2532173 (not (is-EmptyLang!16052 (regOne!32617 r!7292))))))

(assert (=> b!6103200 (=> (not res!2532173) (not e!3722207))))

(declare-fun b!6103201 () Bool)

(declare-fun c!1096383 () Bool)

(assert (=> b!6103201 (= c!1096383 (is-Union!16052 (regOne!32617 r!7292)))))

(assert (=> b!6103201 (= e!3722203 e!3722202)))

(declare-fun b!6103202 () Bool)

(declare-fun e!3722206 () Bool)

(assert (=> b!6103202 (= e!3722202 e!3722206)))

(declare-fun res!2532175 () Bool)

(assert (=> b!6103202 (= res!2532175 (matchRSpec!3153 (regOne!32617 (regOne!32617 r!7292)) s!2326))))

(assert (=> b!6103202 (=> res!2532175 e!3722206)))

(declare-fun b!6103203 () Bool)

(assert (=> b!6103203 (= e!3722206 (matchRSpec!3153 (regTwo!32617 (regOne!32617 r!7292)) s!2326))))

(declare-fun b!6103204 () Bool)

(declare-fun call!504689 () Bool)

(assert (=> b!6103204 (= e!3722201 call!504689)))

(assert (=> b!6103205 (= e!3722205 call!504688)))

(declare-fun b!6103206 () Bool)

(assert (=> b!6103206 (= e!3722203 (= s!2326 (Cons!64333 (c!1096208 (regOne!32617 r!7292)) Nil!64333)))))

(declare-fun bm!504683 () Bool)

(assert (=> bm!504683 (= call!504689 (isEmpty!36255 s!2326))))

(declare-fun d!1913044 () Bool)

(declare-fun c!1096380 () Bool)

(assert (=> d!1913044 (= c!1096380 (is-EmptyExpr!16052 (regOne!32617 r!7292)))))

(assert (=> d!1913044 (= (matchRSpec!3153 (regOne!32617 r!7292) s!2326) e!3722201)))

(declare-fun bm!504684 () Bool)

(assert (=> bm!504684 (= call!504688 (Exists!3122 (ite c!1096382 lambda!332514 lambda!332515)))))

(declare-fun b!6103207 () Bool)

(declare-fun res!2532174 () Bool)

(assert (=> b!6103207 (=> res!2532174 e!3722204)))

(assert (=> b!6103207 (= res!2532174 call!504689)))

(assert (=> b!6103207 (= e!3722205 e!3722204)))

(assert (= (and d!1913044 c!1096380) b!6103204))

(assert (= (and d!1913044 (not c!1096380)) b!6103200))

(assert (= (and b!6103200 res!2532173) b!6103199))

(assert (= (and b!6103199 c!1096381) b!6103206))

(assert (= (and b!6103199 (not c!1096381)) b!6103201))

(assert (= (and b!6103201 c!1096383) b!6103202))

(assert (= (and b!6103201 (not c!1096383)) b!6103197))

(assert (= (and b!6103202 (not res!2532175)) b!6103203))

(assert (= (and b!6103197 c!1096382) b!6103207))

(assert (= (and b!6103197 (not c!1096382)) b!6103205))

(assert (= (and b!6103207 (not res!2532174)) b!6103198))

(assert (= (or b!6103198 b!6103205) bm!504684))

(assert (= (or b!6103204 b!6103207) bm!504683))

(declare-fun m!6955188 () Bool)

(assert (=> b!6103202 m!6955188))

(declare-fun m!6955190 () Bool)

(assert (=> b!6103203 m!6955190))

(assert (=> bm!504683 m!6954834))

(declare-fun m!6955192 () Bool)

(assert (=> bm!504684 m!6955192))

(assert (=> b!6102543 d!1913044))

(assert (=> d!1912912 d!1912990))

(assert (=> d!1912912 d!1912940))

(assert (=> d!1912926 d!1912916))

(assert (=> d!1912926 d!1912982))

(assert (=> d!1912926 d!1912932))

(declare-fun d!1913046 () Bool)

(assert (=> d!1913046 (= (Exists!3122 lambda!332477) (choose!45367 lambda!332477))))

(declare-fun bs!1515499 () Bool)

(assert (= bs!1515499 d!1913046))

(declare-fun m!6955194 () Bool)

(assert (=> bs!1515499 m!6955194))

(assert (=> d!1912926 d!1913046))

(declare-fun bs!1515500 () Bool)

(declare-fun d!1913048 () Bool)

(assert (= bs!1515500 (and d!1913048 d!1912928)))

(declare-fun lambda!332518 () Int)

(assert (=> bs!1515500 (not (= lambda!332518 lambda!332483))))

(assert (=> bs!1515500 (= lambda!332518 lambda!332482)))

(declare-fun bs!1515501 () Bool)

(assert (= bs!1515501 (and d!1913048 d!1912926)))

(assert (=> bs!1515501 (= lambda!332518 lambda!332477)))

(declare-fun bs!1515502 () Bool)

(assert (= bs!1515502 (and d!1913048 b!6102539)))

(assert (=> bs!1515502 (not (= lambda!332518 lambda!332467))))

(declare-fun bs!1515503 () Bool)

(assert (= bs!1515503 (and d!1913048 b!6102387)))

(assert (=> bs!1515503 (= lambda!332518 lambda!332444)))

(declare-fun bs!1515504 () Bool)

(assert (= bs!1515504 (and d!1913048 b!6102546)))

(assert (=> bs!1515504 (not (= lambda!332518 lambda!332468))))

(assert (=> bs!1515503 (not (= lambda!332518 lambda!332445))))

(declare-fun bs!1515505 () Bool)

(assert (= bs!1515505 (and d!1913048 b!6103205)))

(assert (=> bs!1515505 (not (= lambda!332518 lambda!332515))))

(declare-fun bs!1515506 () Bool)

(assert (= bs!1515506 (and d!1913048 b!6103198)))

(assert (=> bs!1515506 (not (= lambda!332518 lambda!332514))))

(assert (=> d!1913048 true))

(assert (=> d!1913048 true))

(assert (=> d!1913048 true))

(assert (=> d!1913048 (= (isDefined!12646 (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) Nil!64333 s!2326 s!2326)) (Exists!3122 lambda!332518))))

(assert (=> d!1913048 true))

(declare-fun _$89!2143 () Unit!157375)

(assert (=> d!1913048 (= (choose!45368 (regOne!32616 r!7292) (regTwo!32616 r!7292) s!2326) _$89!2143)))

(declare-fun bs!1515507 () Bool)

(assert (= bs!1515507 d!1913048))

(assert (=> bs!1515507 m!6954746))

(assert (=> bs!1515507 m!6954746))

(assert (=> bs!1515507 m!6954748))

(declare-fun m!6955196 () Bool)

(assert (=> bs!1515507 m!6955196))

(assert (=> d!1912926 d!1913048))

(declare-fun d!1913050 () Bool)

(assert (=> d!1913050 (= (nullable!6045 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (nullableFct!2009 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))))))

(declare-fun bs!1515508 () Bool)

(assert (= bs!1515508 d!1913050))

(declare-fun m!6955198 () Bool)

(assert (=> bs!1515508 m!6955198))

(assert (=> b!6102801 d!1913050))

(declare-fun d!1913052 () Bool)

(declare-fun res!2532180 () Bool)

(declare-fun e!3722210 () Bool)

(assert (=> d!1913052 (=> res!2532180 e!3722210)))

(assert (=> d!1913052 (= res!2532180 (is-Nil!64331 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (h!70780 zl!343)))))))))

(assert (=> d!1913052 (= (forall!15173 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (h!70780 zl!343))))) lambda!332495) e!3722210)))

(declare-fun b!6103212 () Bool)

(declare-fun e!3722211 () Bool)

(assert (=> b!6103212 (= e!3722210 e!3722211)))

(declare-fun res!2532181 () Bool)

(assert (=> b!6103212 (=> (not res!2532181) (not e!3722211))))

(assert (=> b!6103212 (= res!2532181 (dynLambda!25333 lambda!332495 (h!70779 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (h!70780 zl!343))))))))))

(declare-fun b!6103213 () Bool)

(assert (=> b!6103213 (= e!3722211 (forall!15173 (t!377906 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (h!70780 zl!343)))))) lambda!332495))))

(assert (= (and d!1913052 (not res!2532180)) b!6103212))

(assert (= (and b!6103212 res!2532181) b!6103213))

(declare-fun b_lambda!232523 () Bool)

(assert (=> (not b_lambda!232523) (not b!6103212)))

(declare-fun m!6955200 () Bool)

(assert (=> b!6103212 m!6955200))

(declare-fun m!6955202 () Bool)

(assert (=> b!6103213 m!6955202))

(assert (=> d!1912944 d!1913052))

(declare-fun b!6103222 () Bool)

(declare-fun e!3722217 () List!64457)

(assert (=> b!6103222 (= e!3722217 (t!377908 s!2326))))

(declare-fun b!6103223 () Bool)

(assert (=> b!6103223 (= e!3722217 (Cons!64333 (h!70781 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333))) (++!14139 (t!377908 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333))) (t!377908 s!2326))))))

(declare-fun d!1913054 () Bool)

(declare-fun e!3722216 () Bool)

(assert (=> d!1913054 e!3722216))

(declare-fun res!2532187 () Bool)

(assert (=> d!1913054 (=> (not res!2532187) (not e!3722216))))

(declare-fun lt!2329439 () List!64457)

(declare-fun content!11932 (List!64457) (Set C!32374))

(assert (=> d!1913054 (= res!2532187 (= (content!11932 lt!2329439) (set.union (content!11932 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333))) (content!11932 (t!377908 s!2326)))))))

(assert (=> d!1913054 (= lt!2329439 e!3722217)))

(declare-fun c!1096386 () Bool)

(assert (=> d!1913054 (= c!1096386 (is-Nil!64333 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333))))))

(assert (=> d!1913054 (= (++!14139 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) (t!377908 s!2326)) lt!2329439)))

(declare-fun b!6103224 () Bool)

(declare-fun res!2532186 () Bool)

(assert (=> b!6103224 (=> (not res!2532186) (not e!3722216))))

(declare-fun size!40197 (List!64457) Int)

(assert (=> b!6103224 (= res!2532186 (= (size!40197 lt!2329439) (+ (size!40197 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333))) (size!40197 (t!377908 s!2326)))))))

(declare-fun b!6103225 () Bool)

(assert (=> b!6103225 (= e!3722216 (or (not (= (t!377908 s!2326) Nil!64333)) (= lt!2329439 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)))))))

(assert (= (and d!1913054 c!1096386) b!6103222))

(assert (= (and d!1913054 (not c!1096386)) b!6103223))

(assert (= (and d!1913054 res!2532187) b!6103224))

(assert (= (and b!6103224 res!2532186) b!6103225))

(declare-fun m!6955204 () Bool)

(assert (=> b!6103223 m!6955204))

(declare-fun m!6955206 () Bool)

(assert (=> d!1913054 m!6955206))

(assert (=> d!1913054 m!6954892))

(declare-fun m!6955208 () Bool)

(assert (=> d!1913054 m!6955208))

(declare-fun m!6955210 () Bool)

(assert (=> d!1913054 m!6955210))

(declare-fun m!6955212 () Bool)

(assert (=> b!6103224 m!6955212))

(assert (=> b!6103224 m!6954892))

(declare-fun m!6955214 () Bool)

(assert (=> b!6103224 m!6955214))

(declare-fun m!6955216 () Bool)

(assert (=> b!6103224 m!6955216))

(assert (=> b!6102652 d!1913054))

(declare-fun b!6103226 () Bool)

(declare-fun e!3722219 () List!64457)

(assert (=> b!6103226 (= e!3722219 (Cons!64333 (h!70781 s!2326) Nil!64333))))

(declare-fun b!6103227 () Bool)

(assert (=> b!6103227 (= e!3722219 (Cons!64333 (h!70781 Nil!64333) (++!14139 (t!377908 Nil!64333) (Cons!64333 (h!70781 s!2326) Nil!64333))))))

(declare-fun d!1913056 () Bool)

(declare-fun e!3722218 () Bool)

(assert (=> d!1913056 e!3722218))

(declare-fun res!2532189 () Bool)

(assert (=> d!1913056 (=> (not res!2532189) (not e!3722218))))

(declare-fun lt!2329440 () List!64457)

(assert (=> d!1913056 (= res!2532189 (= (content!11932 lt!2329440) (set.union (content!11932 Nil!64333) (content!11932 (Cons!64333 (h!70781 s!2326) Nil!64333)))))))

(assert (=> d!1913056 (= lt!2329440 e!3722219)))

(declare-fun c!1096387 () Bool)

(assert (=> d!1913056 (= c!1096387 (is-Nil!64333 Nil!64333))))

(assert (=> d!1913056 (= (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) lt!2329440)))

(declare-fun b!6103228 () Bool)

(declare-fun res!2532188 () Bool)

(assert (=> b!6103228 (=> (not res!2532188) (not e!3722218))))

(assert (=> b!6103228 (= res!2532188 (= (size!40197 lt!2329440) (+ (size!40197 Nil!64333) (size!40197 (Cons!64333 (h!70781 s!2326) Nil!64333)))))))

(declare-fun b!6103229 () Bool)

(assert (=> b!6103229 (= e!3722218 (or (not (= (Cons!64333 (h!70781 s!2326) Nil!64333) Nil!64333)) (= lt!2329440 Nil!64333)))))

(assert (= (and d!1913056 c!1096387) b!6103226))

(assert (= (and d!1913056 (not c!1096387)) b!6103227))

(assert (= (and d!1913056 res!2532189) b!6103228))

(assert (= (and b!6103228 res!2532188) b!6103229))

(declare-fun m!6955218 () Bool)

(assert (=> b!6103227 m!6955218))

(declare-fun m!6955220 () Bool)

(assert (=> d!1913056 m!6955220))

(declare-fun m!6955222 () Bool)

(assert (=> d!1913056 m!6955222))

(declare-fun m!6955224 () Bool)

(assert (=> d!1913056 m!6955224))

(declare-fun m!6955226 () Bool)

(assert (=> b!6103228 m!6955226))

(declare-fun m!6955228 () Bool)

(assert (=> b!6103228 m!6955228))

(declare-fun m!6955230 () Bool)

(assert (=> b!6103228 m!6955230))

(assert (=> b!6102652 d!1913056))

(declare-fun d!1913058 () Bool)

(assert (=> d!1913058 (= (++!14139 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) (t!377908 s!2326)) s!2326)))

(declare-fun lt!2329443 () Unit!157375)

(declare-fun choose!45376 (List!64457 C!32374 List!64457 List!64457) Unit!157375)

(assert (=> d!1913058 (= lt!2329443 (choose!45376 Nil!64333 (h!70781 s!2326) (t!377908 s!2326) s!2326))))

(assert (=> d!1913058 (= (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) (t!377908 s!2326))) s!2326)))

(assert (=> d!1913058 (= (lemmaMoveElementToOtherListKeepsConcatEq!2234 Nil!64333 (h!70781 s!2326) (t!377908 s!2326) s!2326) lt!2329443)))

(declare-fun bs!1515509 () Bool)

(assert (= bs!1515509 d!1913058))

(assert (=> bs!1515509 m!6954892))

(assert (=> bs!1515509 m!6954892))

(assert (=> bs!1515509 m!6954894))

(declare-fun m!6955232 () Bool)

(assert (=> bs!1515509 m!6955232))

(declare-fun m!6955234 () Bool)

(assert (=> bs!1515509 m!6955234))

(assert (=> b!6102652 d!1913058))

(declare-fun d!1913060 () Bool)

(declare-fun e!3722220 () Bool)

(assert (=> d!1913060 e!3722220))

(declare-fun res!2532193 () Bool)

(assert (=> d!1913060 (=> res!2532193 e!3722220)))

(declare-fun e!3722221 () Bool)

(assert (=> d!1913060 (= res!2532193 e!3722221)))

(declare-fun res!2532191 () Bool)

(assert (=> d!1913060 (=> (not res!2532191) (not e!3722221))))

(declare-fun lt!2329446 () Option!15943)

(assert (=> d!1913060 (= res!2532191 (isDefined!12646 lt!2329446))))

(declare-fun e!3722223 () Option!15943)

(assert (=> d!1913060 (= lt!2329446 e!3722223)))

(declare-fun c!1096388 () Bool)

(declare-fun e!3722224 () Bool)

(assert (=> d!1913060 (= c!1096388 e!3722224)))

(declare-fun res!2532194 () Bool)

(assert (=> d!1913060 (=> (not res!2532194) (not e!3722224))))

(assert (=> d!1913060 (= res!2532194 (matchR!8235 (regOne!32616 r!7292) (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333))))))

(assert (=> d!1913060 (validRegex!7788 (regOne!32616 r!7292))))

(assert (=> d!1913060 (= (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) (t!377908 s!2326) s!2326) lt!2329446)))

(declare-fun b!6103230 () Bool)

(assert (=> b!6103230 (= e!3722223 (Some!15942 (tuple2!66063 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) (t!377908 s!2326))))))

(declare-fun b!6103231 () Bool)

(assert (=> b!6103231 (= e!3722221 (= (++!14139 (_1!36334 (get!22181 lt!2329446)) (_2!36334 (get!22181 lt!2329446))) s!2326))))

(declare-fun b!6103232 () Bool)

(declare-fun e!3722222 () Option!15943)

(assert (=> b!6103232 (= e!3722223 e!3722222)))

(declare-fun c!1096389 () Bool)

(assert (=> b!6103232 (= c!1096389 (is-Nil!64333 (t!377908 s!2326)))))

(declare-fun b!6103233 () Bool)

(assert (=> b!6103233 (= e!3722222 None!15942)))

(declare-fun b!6103234 () Bool)

(assert (=> b!6103234 (= e!3722224 (matchR!8235 (regTwo!32616 r!7292) (t!377908 s!2326)))))

(declare-fun b!6103235 () Bool)

(declare-fun res!2532190 () Bool)

(assert (=> b!6103235 (=> (not res!2532190) (not e!3722221))))

(assert (=> b!6103235 (= res!2532190 (matchR!8235 (regTwo!32616 r!7292) (_2!36334 (get!22181 lt!2329446))))))

(declare-fun b!6103236 () Bool)

(assert (=> b!6103236 (= e!3722220 (not (isDefined!12646 lt!2329446)))))

(declare-fun b!6103237 () Bool)

(declare-fun lt!2329445 () Unit!157375)

(declare-fun lt!2329444 () Unit!157375)

(assert (=> b!6103237 (= lt!2329445 lt!2329444)))

(assert (=> b!6103237 (= (++!14139 (++!14139 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) (Cons!64333 (h!70781 (t!377908 s!2326)) Nil!64333)) (t!377908 (t!377908 s!2326))) s!2326)))

(assert (=> b!6103237 (= lt!2329444 (lemmaMoveElementToOtherListKeepsConcatEq!2234 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) (h!70781 (t!377908 s!2326)) (t!377908 (t!377908 s!2326)) s!2326))))

(assert (=> b!6103237 (= e!3722222 (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) (++!14139 (++!14139 Nil!64333 (Cons!64333 (h!70781 s!2326) Nil!64333)) (Cons!64333 (h!70781 (t!377908 s!2326)) Nil!64333)) (t!377908 (t!377908 s!2326)) s!2326))))

(declare-fun b!6103238 () Bool)

(declare-fun res!2532192 () Bool)

(assert (=> b!6103238 (=> (not res!2532192) (not e!3722221))))

(assert (=> b!6103238 (= res!2532192 (matchR!8235 (regOne!32616 r!7292) (_1!36334 (get!22181 lt!2329446))))))

(assert (= (and d!1913060 res!2532194) b!6103234))

(assert (= (and d!1913060 c!1096388) b!6103230))

(assert (= (and d!1913060 (not c!1096388)) b!6103232))

(assert (= (and b!6103232 c!1096389) b!6103233))

(assert (= (and b!6103232 (not c!1096389)) b!6103237))

(assert (= (and d!1913060 res!2532191) b!6103238))

(assert (= (and b!6103238 res!2532192) b!6103235))

(assert (= (and b!6103235 res!2532190) b!6103231))

(assert (= (and d!1913060 (not res!2532193)) b!6103236))

(declare-fun m!6955236 () Bool)

(assert (=> b!6103235 m!6955236))

(declare-fun m!6955238 () Bool)

(assert (=> b!6103235 m!6955238))

(declare-fun m!6955240 () Bool)

(assert (=> b!6103236 m!6955240))

(declare-fun m!6955242 () Bool)

(assert (=> b!6103234 m!6955242))

(assert (=> b!6103238 m!6955236))

(declare-fun m!6955244 () Bool)

(assert (=> b!6103238 m!6955244))

(assert (=> b!6103231 m!6955236))

(declare-fun m!6955246 () Bool)

(assert (=> b!6103231 m!6955246))

(assert (=> d!1913060 m!6955240))

(assert (=> d!1913060 m!6954892))

(declare-fun m!6955248 () Bool)

(assert (=> d!1913060 m!6955248))

(assert (=> d!1913060 m!6954890))

(assert (=> b!6103237 m!6954892))

(declare-fun m!6955250 () Bool)

(assert (=> b!6103237 m!6955250))

(assert (=> b!6103237 m!6955250))

(declare-fun m!6955252 () Bool)

(assert (=> b!6103237 m!6955252))

(assert (=> b!6103237 m!6954892))

(declare-fun m!6955254 () Bool)

(assert (=> b!6103237 m!6955254))

(assert (=> b!6103237 m!6955250))

(declare-fun m!6955256 () Bool)

(assert (=> b!6103237 m!6955256))

(assert (=> b!6102652 d!1913060))

(declare-fun d!1913062 () Bool)

(assert (=> d!1913062 (= (isEmpty!36256 (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) Nil!64333 s!2326 s!2326)) (not (is-Some!15942 (findConcatSeparation!2357 (regOne!32616 r!7292) (regTwo!32616 r!7292) Nil!64333 s!2326 s!2326))))))

(assert (=> d!1912932 d!1913062))

(declare-fun call!504707 () (Set Context!10872))

(declare-fun call!504703 () List!64455)

(declare-fun c!1096403 () Bool)

(declare-fun bm!504697 () Bool)

(assert (=> bm!504697 (= call!504707 (derivationStepZipperDown!1300 (ite c!1096403 (regOne!32617 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (regOne!32616 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))) (ite c!1096403 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (Context!10873 call!504703)) (h!70781 s!2326)))))

(declare-fun b!6103261 () Bool)

(declare-fun e!3722238 () (Set Context!10872))

(assert (=> b!6103261 (= e!3722238 (as set.empty (Set Context!10872)))))

(declare-fun b!6103262 () Bool)

(declare-fun e!3722240 () Bool)

(assert (=> b!6103262 (= e!3722240 (nullable!6045 (regOne!32616 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))))))

(declare-fun bm!504698 () Bool)

(declare-fun call!504702 () (Set Context!10872))

(declare-fun call!504704 () (Set Context!10872))

(assert (=> bm!504698 (= call!504702 call!504704)))

(declare-fun b!6103263 () Bool)

(declare-fun e!3722242 () (Set Context!10872))

(assert (=> b!6103263 (= e!3722242 (set.union call!504707 call!504704))))

(declare-fun bm!504699 () Bool)

(declare-fun call!504705 () List!64455)

(assert (=> bm!504699 (= call!504705 call!504703)))

(declare-fun b!6103264 () Bool)

(declare-fun e!3722239 () (Set Context!10872))

(assert (=> b!6103264 (= e!3722239 e!3722242)))

(assert (=> b!6103264 (= c!1096403 (is-Union!16052 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))))))

(declare-fun b!6103265 () Bool)

(declare-fun e!3722237 () (Set Context!10872))

(declare-fun e!3722241 () (Set Context!10872))

(assert (=> b!6103265 (= e!3722237 e!3722241)))

(declare-fun c!1096400 () Bool)

(assert (=> b!6103265 (= c!1096400 (is-Concat!24897 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))))))

(declare-fun b!6103266 () Bool)

(declare-fun call!504706 () (Set Context!10872))

(assert (=> b!6103266 (= e!3722241 call!504706)))

(declare-fun b!6103267 () Bool)

(declare-fun c!1096402 () Bool)

(assert (=> b!6103267 (= c!1096402 (is-Star!16052 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))))))

(assert (=> b!6103267 (= e!3722241 e!3722238)))

(declare-fun b!6103268 () Bool)

(assert (=> b!6103268 (= e!3722239 (set.insert (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (as set.empty (Set Context!10872))))))

(declare-fun b!6103269 () Bool)

(assert (=> b!6103269 (= e!3722238 call!504706)))

(declare-fun d!1913064 () Bool)

(declare-fun c!1096401 () Bool)

(assert (=> d!1913064 (= c!1096401 (and (is-ElementMatch!16052 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (= (c!1096208 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (h!70781 s!2326))))))

(assert (=> d!1913064 (= (derivationStepZipperDown!1300 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))) (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (h!70781 s!2326)) e!3722239)))

(declare-fun b!6103270 () Bool)

(assert (=> b!6103270 (= e!3722237 (set.union call!504707 call!504702))))

(declare-fun bm!504700 () Bool)

(declare-fun c!1096404 () Bool)

(declare-fun $colon$colon!1929 (List!64455 Regex!16052) List!64455)

(assert (=> bm!504700 (= call!504703 ($colon$colon!1929 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))) (ite (or c!1096404 c!1096400) (regTwo!32616 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))))))

(declare-fun bm!504701 () Bool)

(assert (=> bm!504701 (= call!504706 call!504702)))

(declare-fun b!6103271 () Bool)

(assert (=> b!6103271 (= c!1096404 e!3722240)))

(declare-fun res!2532197 () Bool)

(assert (=> b!6103271 (=> (not res!2532197) (not e!3722240))))

(assert (=> b!6103271 (= res!2532197 (is-Concat!24897 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))))))

(assert (=> b!6103271 (= e!3722242 e!3722237)))

(declare-fun bm!504702 () Bool)

(assert (=> bm!504702 (= call!504704 (derivationStepZipperDown!1300 (ite c!1096403 (regTwo!32617 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (ite c!1096404 (regTwo!32616 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (ite c!1096400 (regOne!32616 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (reg!16381 (h!70779 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343))))))))))) (ite (or c!1096403 c!1096404) (Context!10873 (t!377906 (exprs!5936 (Context!10873 (Cons!64331 (h!70779 (exprs!5936 (h!70780 zl!343))) (t!377906 (exprs!5936 (h!70780 zl!343)))))))) (Context!10873 call!504705)) (h!70781 s!2326)))))

(assert (= (and d!1913064 c!1096401) b!6103268))

(assert (= (and d!1913064 (not c!1096401)) b!6103264))

(assert (= (and b!6103264 c!1096403) b!6103263))

(assert (= (and b!6103264 (not c!1096403)) b!6103271))

(assert (= (and b!6103271 res!2532197) b!6103262))

(assert (= (and b!6103271 c!1096404) b!6103270))

(assert (= (and b!6103271 (not c!1096404)) b!6103265))

(assert (= (and b!6103265 c!1096400) b!6103266))

(assert (= (and b!6103265 (not c!1096400)) b!6103267))

(assert (= (and b!6103267 c!1096402) b!6103269))

(assert (= (and b!6103267 (not c!1096402)) b!6103261))

(assert (= (or b!6103266 b!6103269) bm!504699))

(assert (= (or b!6103266 b!6103269) bm!504701))

(assert (= (or b!6103270 bm!504699) bm!504700))

(assert (= (or b!6103270 bm!504701) bm!504698))

(assert (= (or b!6103263 bm!504698) bm!504702))

(assert (= (or b!6103263 b!6103270) bm!504697))

(declare-fun m!6955258 () Bool)

(assert (=> b!6103262 m!6955258))

(declare-fun m!6955260 () Bool)

(assert (=> b!6103268 m!6955260))

(declare-fun m!6955262 () Bool)

(assert (=> bm!504702 m!6955262))

(declare-fun m!6955264 () Bool)

(assert (=> bm!504697 m!6955264))

(declare-fun m!6955266 () Bool)

(assert (=> bm!504700 m!6955266))

(assert (=> bm!504645 d!1913064))

(declare-fun d!1913066 () Bool)

(assert (=> d!1913066 (= (nullable!6045 r!7292) (nullableFct!2009 r!7292))))

(declare-fun bs!1515510 () Bool)

(assert (= bs!1515510 d!1913066))

(declare-fun m!6955268 () Bool)

(assert (=> bs!1515510 m!6955268))

(assert (=> b!6102598 d!1913066))

(declare-fun d!1913068 () Bool)

(assert (=> d!1913068 (= (head!12625 (unfocusZipperList!1473 zl!343)) (h!70779 (unfocusZipperList!1473 zl!343)))))

(assert (=> b!6102727 d!1913068))

(declare-fun bs!1515511 () Bool)

(declare-fun d!1913070 () Bool)

(assert (= bs!1515511 (and d!1913070 d!1912938)))

(declare-fun lambda!332519 () Int)

(assert (=> bs!1515511 (= lambda!332519 lambda!332492)))

(declare-fun bs!1515512 () Bool)

(assert (= bs!1515512 (and d!1913070 d!1913000)))

(assert (=> bs!1515512 (= lambda!332519 lambda!332513)))

(declare-fun bs!1515513 () Bool)

(assert (= bs!1515513 (and d!1913070 d!1912944)))

(assert (=> bs!1515513 (= lambda!332519 lambda!332495)))

(declare-fun bs!1515514 () Bool)

(assert (= bs!1515514 (and d!1913070 d!1912992)))

(assert (=> bs!1515514 (= lambda!332519 lambda!332512)))

(declare-fun bs!1515515 () Bool)

(assert (= bs!1515515 (and d!1913070 d!1912894)))

(assert (=> bs!1515515 (= lambda!332519 lambda!332456)))

(declare-fun bs!1515516 () Bool)

(assert (= bs!1515516 (and d!1913070 d!1912934)))

(assert (=> bs!1515516 (= lambda!332519 lambda!332486)))

(declare-fun bs!1515517 () Bool)

(assert (= bs!1515517 (and d!1913070 d!1912936)))

(assert (=> bs!1515517 (= lambda!332519 lambda!332491)))

(declare-fun bs!1515518 () Bool)

(assert (= bs!1515518 (and d!1913070 d!1912896)))

(assert (=> bs!1515518 (= lambda!332519 lambda!332459)))

(declare-fun b!6103272 () Bool)

(declare-fun e!3722248 () Bool)

(declare-fun e!3722244 () Bool)

(assert (=> b!6103272 (= e!3722248 e!3722244)))

(declare-fun c!1096408 () Bool)

(assert (=> b!6103272 (= c!1096408 (isEmpty!36252 (t!377906 (exprs!5936 (h!70780 zl!343)))))))

(declare-fun b!6103273 () Bool)

(declare-fun e!3722243 () Regex!16052)

(assert (=> b!6103273 (= e!3722243 (h!70779 (t!377906 (exprs!5936 (h!70780 zl!343)))))))

(assert (=> d!1913070 e!3722248))

(declare-fun res!2532198 () Bool)

(assert (=> d!1913070 (=> (not res!2532198) (not e!3722248))))

(declare-fun lt!2329447 () Regex!16052)

(assert (=> d!1913070 (= res!2532198 (validRegex!7788 lt!2329447))))

(assert (=> d!1913070 (= lt!2329447 e!3722243)))

(declare-fun c!1096406 () Bool)

(declare-fun e!3722247 () Bool)

(assert (=> d!1913070 (= c!1096406 e!3722247)))

(declare-fun res!2532199 () Bool)

(assert (=> d!1913070 (=> (not res!2532199) (not e!3722247))))

(assert (=> d!1913070 (= res!2532199 (is-Cons!64331 (t!377906 (exprs!5936 (h!70780 zl!343)))))))

(assert (=> d!1913070 (forall!15173 (t!377906 (exprs!5936 (h!70780 zl!343))) lambda!332519)))

(assert (=> d!1913070 (= (generalisedConcat!1649 (t!377906 (exprs!5936 (h!70780 zl!343)))) lt!2329447)))

(declare-fun b!6103274 () Bool)

(assert (=> b!6103274 (= e!3722244 (isEmptyExpr!1469 lt!2329447))))

(declare-fun b!6103275 () Bool)

(declare-fun e!3722246 () Bool)

(assert (=> b!6103275 (= e!3722244 e!3722246)))

(declare-fun c!1096407 () Bool)

(assert (=> b!6103275 (= c!1096407 (isEmpty!36252 (tail!11710 (t!377906 (exprs!5936 (h!70780 zl!343))))))))

(declare-fun b!6103276 () Bool)

(assert (=> b!6103276 (= e!3722246 (= lt!2329447 (head!12625 (t!377906 (exprs!5936 (h!70780 zl!343))))))))

(declare-fun b!6103277 () Bool)

(assert (=> b!6103277 (= e!3722246 (isConcat!992 lt!2329447))))

(declare-fun b!6103278 () Bool)

(declare-fun e!3722245 () Regex!16052)

(assert (=> b!6103278 (= e!3722245 (Concat!24897 (h!70779 (t!377906 (exprs!5936 (h!70780 zl!343)))) (generalisedConcat!1649 (t!377906 (t!377906 (exprs!5936 (h!70780 zl!343)))))))))

(declare-fun b!6103279 () Bool)

(assert (=> b!6103279 (= e!3722245 EmptyExpr!16052)))

(declare-fun b!6103280 () Bool)

(assert (=> b!6103280 (= e!3722247 (isEmpty!36252 (t!377906 (t!377906 (exprs!5936 (h!70780 zl!343))))))))

(declare-fun b!6103281 () Bool)

(assert (=> b!6103281 (= e!3722243 e!3722245)))

(declare-fun c!1096405 () Bool)

(assert (=> b!6103281 (= c!1096405 (is-Cons!64331 (t!377906 (exprs!5936 (h!70780 zl!343)))))))

(assert (= (and d!1913070 res!2532199) b!6103280))

(assert (= (and d!1913070 c!1096406) b!6103273))

(assert (= (and d!1913070 (not c!1096406)) b!6103281))

(assert (= (and b!6103281 c!1096405) b!6103278))

(assert (= (and b!6103281 (not c!1096405)) b!6103279))

(assert (= (and d!1913070 res!2532198) b!6103272))

(assert (= (and b!6103272 c!1096408) b!6103274))

(assert (= (and b!6103272 (not c!1096408)) b!6103275))

(assert (= (and b!6103275 c!1096407) b!6103276))

(assert (= (and b!6103275 (not c!1096407)) b!6103277))

(declare-fun m!6955270 () Bool)

(assert (=> b!6103275 m!6955270))

(assert (=> b!6103275 m!6955270))

(declare-fun m!6955272 () Bool)

(assert (=> b!6103275 m!6955272))

(assert (=> b!6103272 m!6954720))

(declare-fun m!6955274 () Bool)

(assert (=> b!6103274 m!6955274))

(declare-fun m!6955276 () Bool)

(assert (=> b!6103278 m!6955276))

(declare-fun m!6955278 () Bool)

(assert (=> b!6103280 m!6955278))

(declare-fun m!6955280 () Bool)

(assert (=> d!1913070 m!6955280))

(declare-fun m!6955282 () Bool)

(assert (=> d!1913070 m!6955282))

(declare-fun m!6955284 () Bool)

(assert (=> b!6103276 m!6955284))

(declare-fun m!6955286 () Bool)

(assert (=> b!6103277 m!6955286))

(assert (=> b!6102502 d!1913070))

(declare-fun d!1913072 () Bool)

(assert (=> d!1913072 (= (head!12625 (exprs!5936 (h!70780 zl!343))) (h!70779 (exprs!5936 (h!70780 zl!343))))))

(assert (=> b!6102500 d!1913072))

(declare-fun d!1913074 () Bool)

(assert (=> d!1913074 (= (Exists!3122 lambda!332482) (choose!45367 lambda!332482))))

(declare-fun bs!1515519 () Bool)

(assert (= bs!1515519 d!1913074))

(declare-fun m!6955288 () Bool)

(assert (=> bs!1515519 m!6955288))

(assert (=> d!1912928 d!1913074))

(declare-fun d!1913076 () Bool)

(assert (=> d!1913076 (= (Exists!3122 lambda!332483) (choose!45367 lambda!332483))))

(declare-fun bs!1515520 () Bool)

(assert (= bs!1515520 d!1913076))

(declare-fun m!6955290 () Bool)

(assert (=> bs!1515520 m!6955290))

(assert (=> d!1912928 d!1913076))

(declare-fun bs!1515521 () Bool)

(declare-fun d!1913078 () Bool)

(assert (= bs!1515521 (and d!1913078 d!1912928)))

(declare-fun lambda!332524 () Int)

(assert (=> bs!1515521 (not (= lambda!332524 lambda!332483))))

(assert (=> bs!1515521 (= lambda!332524 lambda!332482)))

(declare-fun bs!1515522 () Bool)

(assert (= bs!1515522 (and d!1913078 d!1912926)))

(assert (=> bs!1515522 (= lambda!332524 lambda!332477)))

(declare-fun bs!1515523 () Bool)

(assert (= bs!1515523 (and d!1913078 b!6102539)))

(assert (=> bs!1515523 (not (= lambda!332524 lambda!332467))))

(declare-fun bs!1515524 () Bool)

(assert (= bs!1515524 (and d!1913078 d!1913048)))

(assert (=> bs!1515524 (= lambda!332524 lambda!332518)))

(declare-fun bs!1515525 () Bool)

(assert (= bs!1515525 (and d!1913078 b!6102387)))

(assert (=> bs!1515525 (= lambda!332524 lambda!332444)))

(declare-fun bs!1515526 () Bool)

(assert (= bs!1515526 (and d!1913078 b!6102546)))

(assert (=> bs!1515526 (not (= lambda!332524 lambda!332468))))

(assert (=> bs!1515525 (not (= lambda!332524 lambda!332445))))

(declare-fun bs!1515527 () Bool)

(assert (= bs!1515527 (and d!1913078 b!6103205)))

(assert (=> bs!1515527 (not (= lambda!332524 lambda!332515))))

(declare-fun bs!1515528 () Bool)

(assert (= bs!1515528 (and d!1913078 b!6103198)))

(assert (=> bs!1515528 (not (= lambda!332524 lambda!332514))))

(assert (=> d!1913078 true))

(assert (=> d!1913078 true))

(assert (=> d!1913078 true))

(declare-fun lambda!332525 () Int)

(assert (=> bs!1515521 (= lambda!332525 lambda!332483)))

(declare-fun bs!1515529 () Bool)

(assert (= bs!1515529 d!1913078))

(assert (=> bs!1515529 (not (= lambda!332525 lambda!332524))))

(assert (=> bs!1515521 (not (= lambda!332525 lambda!332482))))

(assert (=> bs!1515522 (not (= lambda!332525 lambda!332477))))

(assert (=> bs!1515523 (not (= lambda!332525 lambda!332467))))

(assert (=> bs!1515524 (not (= lambda!332525 lambda!332518))))

(assert (=> bs!1515525 (not (= lambda!332525 lambda!332444))))

(assert (=> bs!1515526 (= lambda!332525 lambda!332468)))

(assert (=> bs!1515525 (= lambda!332525 lambda!332445)))

(assert (=> bs!1515527 (= (and (= (regOne!32616 r!7292) (regOne!32616 (regOne!32617 r!7292))) (= (regTwo!32616 r!7292) (regTwo!32616 (regOne!32617 r!7292)))) (= lambda!332525 lambda!332515))))

(assert (=> bs!1515528 (not (= lambda!332525 lambda!332514))))

(assert (=> d!1913078 true))

(assert (=> d!1913078 true))

(assert (=> d!1913078 true))

(assert (=> d!1913078 (= (Exists!3122 lambda!332524) (Exists!3122 lambda!332525))))

(assert (=> d!1913078 true))

(declare-fun _$90!1767 () Unit!157375)

(assert (=> d!1913078 (= (choose!45369 (regOne!32616 r!7292) (regTwo!32616 r!7292) s!2326) _$90!1767)))

(declare-fun m!6955292 () Bool)

(assert (=> bs!1515529 m!6955292))

(declare-fun m!6955294 () Bool)

(assert (=> bs!1515529 m!6955294))

(assert (=> d!1912928 d!1913078))

(assert (=> d!1912928 d!1912982))

(assert (=> b!6102504 d!1912942))

(declare-fun b!6103290 () Bool)

(declare-fun e!3722253 () Bool)

(assert (=> b!6103290 (= e!3722253 (= (head!12626 (_2!36334 (get!22181 lt!2329386))) (c!1096208 (regTwo!32616 r!7292))))))

(declare-fun b!6103291 () Bool)

(declare-fun e!3722258 () Bool)

(assert (=> b!6103291 (= e!3722258 (nullable!6045 (regTwo!32616 r!7292)))))

(declare-fun b!6103292 () Bool)

(declare-fun res!2532212 () Bool)

(assert (=> b!6103292 (=> (not res!2532212) (not e!3722253))))

(declare-fun call!504708 () Bool)

(assert (=> b!6103292 (= res!2532212 (not call!504708))))

(declare-fun b!6103293 () Bool)

(declare-fun e!3722255 () Bool)

(declare-fun e!3722256 () Bool)

(assert (=> b!6103293 (= e!3722255 e!3722256)))

(declare-fun c!1096409 () Bool)

(assert (=> b!6103293 (= c!1096409 (is-EmptyLang!16052 (regTwo!32616 r!7292)))))

(declare-fun b!6103294 () Bool)

(declare-fun e!3722259 () Bool)

(declare-fun e!3722254 () Bool)

(assert (=> b!6103294 (= e!3722259 e!3722254)))

(declare-fun res!2532213 () Bool)

(assert (=> b!6103294 (=> res!2532213 e!3722254)))

(assert (=> b!6103294 (= res!2532213 call!504708)))

(declare-fun d!1913080 () Bool)

(assert (=> d!1913080 e!3722255))

(declare-fun c!1096410 () Bool)

(assert (=> d!1913080 (= c!1096410 (is-EmptyExpr!16052 (regTwo!32616 r!7292)))))

(declare-fun lt!2329448 () Bool)

(assert (=> d!1913080 (= lt!2329448 e!3722258)))

(declare-fun c!1096411 () Bool)

(assert (=> d!1913080 (= c!1096411 (isEmpty!36255 (_2!36334 (get!22181 lt!2329386))))))

(assert (=> d!1913080 (validRegex!7788 (regTwo!32616 r!7292))))

(assert (=> d!1913080 (= (matchR!8235 (regTwo!32616 r!7292) (_2!36334 (get!22181 lt!2329386))) lt!2329448)))

(declare-fun b!6103295 () Bool)

(assert (=> b!6103295 (= e!3722255 (= lt!2329448 call!504708))))

(declare-fun b!6103296 () Bool)

(declare-fun e!3722257 () Bool)

(assert (=> b!6103296 (= e!3722257 e!3722259)))

(declare-fun res!2532215 () Bool)

(assert (=> b!6103296 (=> (not res!2532215) (not e!3722259))))

(assert (=> b!6103296 (= res!2532215 (not lt!2329448))))

(declare-fun b!6103297 () Bool)

(declare-fun res!2532214 () Bool)

(assert (=> b!6103297 (=> res!2532214 e!3722257)))

(assert (=> b!6103297 (= res!2532214 (not (is-ElementMatch!16052 (regTwo!32616 r!7292))))))

(assert (=> b!6103297 (= e!3722256 e!3722257)))

(declare-fun b!6103298 () Bool)

(declare-fun res!2532211 () Bool)

(assert (=> b!6103298 (=> (not res!2532211) (not e!3722253))))

(assert (=> b!6103298 (= res!2532211 (isEmpty!36255 (tail!11711 (_2!36334 (get!22181 lt!2329386)))))))

(declare-fun b!6103299 () Bool)

(declare-fun res!2532208 () Bool)

(assert (=> b!6103299 (=> res!2532208 e!3722254)))

(assert (=> b!6103299 (= res!2532208 (not (isEmpty!36255 (tail!11711 (_2!36334 (get!22181 lt!2329386))))))))

(declare-fun bm!504703 () Bool)

(assert (=> bm!504703 (= call!504708 (isEmpty!36255 (_2!36334 (get!22181 lt!2329386))))))

(declare-fun b!6103300 () Bool)

(assert (=> b!6103300 (= e!3722254 (not (= (head!12626 (_2!36334 (get!22181 lt!2329386))) (c!1096208 (regTwo!32616 r!7292)))))))

(declare-fun b!6103301 () Bool)

(assert (=> b!6103301 (= e!3722256 (not lt!2329448))))

(declare-fun b!6103302 () Bool)

(assert (=> b!6103302 (= e!3722258 (matchR!8235 (derivativeStep!4773 (regTwo!32616 r!7292) (head!12626 (_2!36334 (get!22181 lt!2329386)))) (tail!11711 (_2!36334 (get!22181 lt!2329386)))))))

(declare-fun b!6103303 () Bool)

(declare-fun res!2532209 () Bool)

(assert (=> b!6103303 (=> res!2532209 e!3722257)))

(assert (=> b!6103303 (= res!2532209 e!3722253)))

(declare-fun res!2532210 () Bool)

(assert (=> b!6103303 (=> (not res!2532210) (not e!3722253))))

(assert (=> b!6103303 (= res!2532210 lt!2329448)))

(assert (= (and d!1913080 c!1096411) b!6103291))

(assert (= (and d!1913080 (not c!1096411)) b!6103302))

(assert (= (and d!1913080 c!1096410) b!6103295))

(assert (= (and d!1913080 (not c!1096410)) b!6103293))

(assert (= (and b!6103293 c!1096409) b!6103301))

(assert (= (and b!6103293 (not c!1096409)) b!6103297))

(assert (= (and b!6103297 (not res!2532214)) b!6103303))

(assert (= (and b!6103303 res!2532210) b!6103292))

(assert (= (and b!6103292 res!2532212) b!6103298))

(assert (= (and b!6103298 res!2532211) b!6103290))

(assert (= (and b!6103303 (not res!2532209)) b!6103296))

(assert (= (and b!6103296 res!2532215) b!6103294))

(assert (= (and b!6103294 (not res!2532213)) b!6103299))

(assert (= (and b!6103299 (not res!2532208)) b!6103300))

(assert (= (or b!6103295 b!6103292 b!6103294) bm!504703))

(declare-fun m!6955296 () Bool)

(assert (=> d!1913080 m!6955296))

(assert (=> d!1913080 m!6955122))

(declare-fun m!6955298 () Bool)

(assert (=> b!6103290 m!6955298))

(assert (=> b!6103300 m!6955298))

(assert (=> b!6103291 m!6955124))

(assert (=> bm!504703 m!6955296))

(declare-fun m!6955300 () Bool)

(assert (=> b!6103299 m!6955300))

(assert (=> b!6103299 m!6955300))

(declare-fun m!6955302 () Bool)

(assert (=> b!6103299 m!6955302))

(assert (=> b!6103302 m!6955298))

(assert (=> b!6103302 m!6955298))

(declare-fun m!6955304 () Bool)

(assert (=> b!6103302 m!6955304))

(assert (=> b!6103302 m!6955300))

(assert (=> b!6103302 m!6955304))

(assert (=> b!6103302 m!6955300))

(declare-fun m!6955306 () Bool)

(assert (=> b!6103302 m!6955306))

(assert (=> b!6103298 m!6955300))

(assert (=> b!6103298 m!6955300))

(assert (=> b!6103298 m!6955302))

(assert (=> b!6102650 d!1913080))

(assert (=> b!6102650 d!1912988))

(assert (=> b!6102605 d!1913024))

(assert (=> b!6102605 d!1913008))

(declare-fun d!1913082 () Bool)

(assert (=> d!1913082 (= (isEmpty!36252 (exprs!5936 (h!70780 zl!343))) (is-Nil!64331 (exprs!5936 (h!70780 zl!343))))))

(assert (=> b!6102496 d!1913082))

(declare-fun d!1913084 () Bool)

(assert (=> d!1913084 (= (Exists!3122 (ite c!1096232 lambda!332467 lambda!332468)) (choose!45367 (ite c!1096232 lambda!332467 lambda!332468)))))

(declare-fun bs!1515530 () Bool)

(assert (= bs!1515530 d!1913084))

(declare-fun m!6955308 () Bool)

(assert (=> bs!1515530 m!6955308))

(assert (=> bm!504617 d!1913084))

(declare-fun bs!1515531 () Bool)

(declare-fun d!1913086 () Bool)

(assert (= bs!1515531 (and d!1913086 d!1912938)))

(declare-fun lambda!332526 () Int)

(assert (=> bs!1515531 (= lambda!332526 lambda!332492)))

(declare-fun bs!1515532 () Bool)

(assert (= bs!1515532 (and d!1913086 d!1913070)))

(assert (=> bs!1515532 (= lambda!332526 lambda!332519)))

(declare-fun bs!1515533 () Bool)

(assert (= bs!1515533 (and d!1913086 d!1913000)))

(assert (=> bs!1515533 (= lambda!332526 lambda!332513)))

(declare-fun bs!1515534 () Bool)

(assert (= bs!1515534 (and d!1913086 d!1912944)))

(assert (=> bs!1515534 (= lambda!332526 lambda!332495)))

(declare-fun bs!1515535 () Bool)

(assert (= bs!1515535 (and d!1913086 d!1912992)))

(assert (=> bs!1515535 (= lambda!332526 lambda!332512)))

(declare-fun bs!1515536 () Bool)

(assert (= bs!1515536 (and d!1913086 d!1912894)))

(assert (=> bs!1515536 (= lambda!332526 lambda!332456)))

(declare-fun bs!1515537 () Bool)

(assert (= bs!1515537 (and d!1913086 d!1912934)))

(assert (=> bs!1515537 (= lambda!332526 lambda!332486)))

(declare-fun bs!1515538 () Bool)

(assert (= bs!1515538 (and d!1913086 d!1912936)))

(assert (=> bs!1515538 (= lambda!332526 lambda!332491)))

(declare-fun bs!1515539 () Bool)

(assert (= bs!1515539 (and d!1913086 d!1912896)))

(assert (=> bs!1515539 (= lambda!332526 lambda!332459)))

(assert (=> d!1913086 (= (inv!83378 (h!70780 (t!377907 zl!343))) (forall!15173 (exprs!5936 (h!70780 (t!377907 zl!343))) lambda!332526))))

(declare-fun bs!1515540 () Bool)

(assert (= bs!1515540 d!1913086))

(declare-fun m!6955310 () Bool)

(assert (=> bs!1515540 m!6955310))

(assert (=> b!6102842 d!1913086))

(declare-fun d!1913088 () Bool)

(assert (=> d!1913088 (= (isEmpty!36252 (unfocusZipperList!1473 zl!343)) (is-Nil!64331 (unfocusZipperList!1473 zl!343)))))

(assert (=> b!6102732 d!1913088))

(declare-fun d!1913090 () Bool)

(declare-fun res!2532220 () Bool)

(declare-fun e!3722264 () Bool)

(assert (=> d!1913090 (=> res!2532220 e!3722264)))

(assert (=> d!1913090 (= res!2532220 (is-Nil!64332 lt!2329401))))

(assert (=> d!1913090 (= (noDuplicate!1899 lt!2329401) e!3722264)))

(declare-fun b!6103308 () Bool)

(declare-fun e!3722265 () Bool)

(assert (=> b!6103308 (= e!3722264 e!3722265)))

(declare-fun res!2532221 () Bool)

(assert (=> b!6103308 (=> (not res!2532221) (not e!3722265))))

(declare-fun contains!20015 (List!64456 Context!10872) Bool)

(assert (=> b!6103308 (= res!2532221 (not (contains!20015 (t!377907 lt!2329401) (h!70780 lt!2329401))))))

(declare-fun b!6103309 () Bool)

(assert (=> b!6103309 (= e!3722265 (noDuplicate!1899 (t!377907 lt!2329401)))))

(assert (= (and d!1913090 (not res!2532220)) b!6103308))

(assert (= (and b!6103308 res!2532221) b!6103309))

(declare-fun m!6955312 () Bool)

(assert (=> b!6103308 m!6955312))

(declare-fun m!6955314 () Bool)

(assert (=> b!6103309 m!6955314))

(assert (=> d!1912948 d!1913090))

(declare-fun d!1913092 () Bool)

(declare-fun e!3722274 () Bool)

(assert (=> d!1913092 e!3722274))

(declare-fun res!2532226 () Bool)

(assert (=> d!1913092 (=> (not res!2532226) (not e!3722274))))

(declare-fun res!2532227 () List!64456)

(assert (=> d!1913092 (= res!2532226 (noDuplicate!1899 res!2532227))))

(declare-fun e!3722272 () Bool)

(assert (=> d!1913092 e!3722272))

(assert (=> d!1913092 (= (choose!45370 z!1189) res!2532227)))

(declare-fun b!6103317 () Bool)

(declare-fun e!3722273 () Bool)

(declare-fun tp!1703931 () Bool)

(assert (=> b!6103317 (= e!3722273 tp!1703931)))

(declare-fun b!6103316 () Bool)

(declare-fun tp!1703932 () Bool)

(assert (=> b!6103316 (= e!3722272 (and (inv!83378 (h!70780 res!2532227)) e!3722273 tp!1703932))))

(declare-fun b!6103318 () Bool)

(assert (=> b!6103318 (= e!3722274 (= (content!11930 res!2532227) z!1189))))

(assert (= b!6103316 b!6103317))

(assert (= (and d!1913092 (is-Cons!64332 res!2532227)) b!6103316))

(assert (= (and d!1913092 res!2532226) b!6103318))

(declare-fun m!6955316 () Bool)

(assert (=> d!1913092 m!6955316))

(declare-fun m!6955318 () Bool)

(assert (=> b!6103316 m!6955318))

(declare-fun m!6955320 () Bool)

(assert (=> b!6103318 m!6955320))

(assert (=> d!1912948 d!1913092))

(declare-fun bs!1515541 () Bool)

(declare-fun d!1913094 () Bool)

(assert (= bs!1515541 (and d!1913094 d!1912938)))

(declare-fun lambda!332527 () Int)

(assert (=> bs!1515541 (= lambda!332527 lambda!332492)))

(declare-fun bs!1515542 () Bool)

(assert (= bs!1515542 (and d!1913094 d!1913070)))

(assert (=> bs!1515542 (= lambda!332527 lambda!332519)))

(declare-fun bs!1515543 () Bool)

(assert (= bs!1515543 (and d!1913094 d!1913000)))

(assert (=> bs!1515543 (= lambda!332527 lambda!332513)))

(declare-fun bs!1515544 () Bool)

(assert (= bs!1515544 (and d!1913094 d!1912944)))

(assert (=> bs!1515544 (= lambda!332527 lambda!332495)))

(declare-fun bs!1515545 () Bool)

(assert (= bs!1515545 (and d!1913094 d!1912992)))

(assert (=> bs!1515545 (= lambda!332527 lambda!332512)))

(declare-fun bs!1515546 () Bool)

(assert (= bs!1515546 (and d!1913094 d!1912894)))

(assert (=> bs!1515546 (= lambda!332527 lambda!332456)))

(declare-fun bs!1515547 () Bool)

(assert (= bs!1515547 (and d!1913094 d!1912934)))

(assert (=> bs!1515547 (= lambda!332527 lambda!332486)))

(declare-fun bs!1515548 () Bool)

(assert (= bs!1515548 (and d!1913094 d!1912936)))

(assert (=> bs!1515548 (= lambda!332527 lambda!332491)))

(declare-fun bs!1515549 () Bool)

(assert (= bs!1515549 (and d!1913094 d!1913086)))

(assert (=> bs!1515549 (= lambda!332527 lambda!332526)))

(declare-fun bs!1515550 () Bool)

(assert (= bs!1515550 (and d!1913094 d!1912896)))

(assert (=> bs!1515550 (= lambda!332527 lambda!332459)))

(declare-fun b!6103319 () Bool)

(declare-fun e!3722279 () Regex!16052)

(declare-fun e!3722275 () Regex!16052)

(assert (=> b!6103319 (= e!3722279 e!3722275)))

(declare-fun c!1096413 () Bool)

(assert (=> b!6103319 (= c!1096413 (is-Cons!64331 (t!377906 (unfocusZipperList!1473 zl!343))))))

(declare-fun b!6103320 () Bool)

(declare-fun e!3722278 () Bool)

(declare-fun lt!2329449 () Regex!16052)

(assert (=> b!6103320 (= e!3722278 (= lt!2329449 (head!12625 (t!377906 (unfocusZipperList!1473 zl!343)))))))

(declare-fun b!6103321 () Bool)

(assert (=> b!6103321 (= e!3722275 EmptyLang!16052)))

(declare-fun b!6103322 () Bool)

(declare-fun e!3722276 () Bool)

(assert (=> b!6103322 (= e!3722276 (isEmptyLang!1479 lt!2329449))))

(declare-fun b!6103323 () Bool)

(assert (=> b!6103323 (= e!3722279 (h!70779 (t!377906 (unfocusZipperList!1473 zl!343))))))

(declare-fun e!3722277 () Bool)

(assert (=> d!1913094 e!3722277))

(declare-fun res!2532229 () Bool)

(assert (=> d!1913094 (=> (not res!2532229) (not e!3722277))))

(assert (=> d!1913094 (= res!2532229 (validRegex!7788 lt!2329449))))

(assert (=> d!1913094 (= lt!2329449 e!3722279)))

(declare-fun c!1096415 () Bool)

(declare-fun e!3722280 () Bool)

(assert (=> d!1913094 (= c!1096415 e!3722280)))

(declare-fun res!2532228 () Bool)

(assert (=> d!1913094 (=> (not res!2532228) (not e!3722280))))

(assert (=> d!1913094 (= res!2532228 (is-Cons!64331 (t!377906 (unfocusZipperList!1473 zl!343))))))

(assert (=> d!1913094 (forall!15173 (t!377906 (unfocusZipperList!1473 zl!343)) lambda!332527)))

(assert (=> d!1913094 (= (generalisedUnion!1896 (t!377906 (unfocusZipperList!1473 zl!343))) lt!2329449)))

(declare-fun b!6103324 () Bool)

(assert (=> b!6103324 (= e!3722277 e!3722276)))

(declare-fun c!1096412 () Bool)

(assert (=> b!6103324 (= c!1096412 (isEmpty!36252 (t!377906 (unfocusZipperList!1473 zl!343))))))

(declare-fun b!6103325 () Bool)

(assert (=> b!6103325 (= e!3722276 e!3722278)))

(declare-fun c!1096414 () Bool)

(assert (=> b!6103325 (= c!1096414 (isEmpty!36252 (tail!11710 (t!377906 (unfocusZipperList!1473 zl!343)))))))

(declare-fun b!6103326 () Bool)

(assert (=> b!6103326 (= e!3722280 (isEmpty!36252 (t!377906 (t!377906 (unfocusZipperList!1473 zl!343)))))))

(declare-fun b!6103327 () Bool)

(assert (=> b!6103327 (= e!3722278 (isUnion!909 lt!2329449))))

(declare-fun b!6103328 () Bool)

(assert (=> b!6103328 (= e!3722275 (Union!16052 (h!70779 (t!377906 (unfocusZipperList!1473 zl!343))) (generalisedUnion!1896 (t!377906 (t!377906 (unfocusZipperList!1473 zl!343))))))))

(assert (= (and d!1913094 res!2532228) b!6103326))

(assert (= (and d!1913094 c!1096415) b!6103323))

(assert (= (and d!1913094 (not c!1096415)) b!6103319))

(assert (= (and b!6103319 c!1096413) b!6103328))

(assert (= (and b!6103319 (not c!1096413)) b!6103321))

(assert (= (and d!1913094 res!2532229) b!6103324))

(assert (= (and b!6103324 c!1096412) b!6103322))

(assert (= (and b!6103324 (not c!1096412)) b!6103325))

(assert (= (and b!6103325 c!1096414) b!6103320))

(assert (= (and b!6103325 (not c!1096414)) b!6103327))

(assert (=> b!6103324 m!6954930))

(declare-fun m!6955322 () Bool)

(assert (=> b!6103327 m!6955322))

(declare-fun m!6955324 () Bool)

(assert (=> d!1913094 m!6955324))

(declare-fun m!6955326 () Bool)

(assert (=> d!1913094 m!6955326))

(declare-fun m!6955328 () Bool)

(assert (=> b!6103326 m!6955328))

(declare-fun m!6955330 () Bool)

(assert (=> b!6103328 m!6955330))

(declare-fun m!6955332 () Bool)

(assert (=> b!6103325 m!6955332))

(assert (=> b!6103325 m!6955332))

(declare-fun m!6955334 () Bool)

(assert (=> b!6103325 m!6955334))

(declare-fun m!6955336 () Bool)

(assert (=> b!6103322 m!6955336))

(declare-fun m!6955338 () Bool)

(assert (=> b!6103320 m!6955338))

(assert (=> b!6102736 d!1913094))

(declare-fun b!6103329 () Bool)

(declare-fun e!3722282 () List!64457)

(assert (=> b!6103329 (= e!3722282 (_2!36334 (get!22181 lt!2329386)))))

(declare-fun b!6103330 () Bool)

(assert (=> b!6103330 (= e!3722282 (Cons!64333 (h!70781 (_1!36334 (get!22181 lt!2329386))) (++!14139 (t!377908 (_1!36334 (get!22181 lt!2329386))) (_2!36334 (get!22181 lt!2329386)))))))

(declare-fun d!1913096 () Bool)

(declare-fun e!3722281 () Bool)

(assert (=> d!1913096 e!3722281))

(declare-fun res!2532231 () Bool)

(assert (=> d!1913096 (=> (not res!2532231) (not e!3722281))))

(declare-fun lt!2329450 () List!64457)

(assert (=> d!1913096 (= res!2532231 (= (content!11932 lt!2329450) (set.union (content!11932 (_1!36334 (get!22181 lt!2329386))) (content!11932 (_2!36334 (get!22181 lt!2329386))))))))

(assert (=> d!1913096 (= lt!2329450 e!3722282)))

(declare-fun c!1096416 () Bool)

(assert (=> d!1913096 (= c!1096416 (is-Nil!64333 (_1!36334 (get!22181 lt!2329386))))))

(assert (=> d!1913096 (= (++!14139 (_1!36334 (get!22181 lt!2329386)) (_2!36334 (get!22181 lt!2329386))) lt!2329450)))

(declare-fun b!6103331 () Bool)

(declare-fun res!2532230 () Bool)

(assert (=> b!6103331 (=> (not res!2532230) (not e!3722281))))

(assert (=> b!6103331 (= res!2532230 (= (size!40197 lt!2329450) (+ (size!40197 (_1!36334 (get!22181 lt!2329386))) (size!40197 (_2!36334 (get!22181 lt!2329386))))))))

(declare-fun b!6103332 () Bool)

(assert (=> b!6103332 (= e!3722281 (or (not (= (_2!36334 (get!22181 lt!2329386)) Nil!64333)) (= lt!2329450 (_1!36334 (get!22181 lt!2329386)))))))

(assert (= (and d!1913096 c!1096416) b!6103329))

(assert (= (and d!1913096 (not c!1096416)) b!6103330))

(assert (= (and d!1913096 res!2532231) b!6103331))

(assert (= (and b!6103331 res!2532230) b!6103332))

(declare-fun m!6955340 () Bool)

(assert (=> b!6103330 m!6955340))

(declare-fun m!6955342 () Bool)

(assert (=> d!1913096 m!6955342))

(declare-fun m!6955344 () Bool)

(assert (=> d!1913096 m!6955344))

(declare-fun m!6955346 () Bool)

(assert (=> d!1913096 m!6955346))

(declare-fun m!6955348 () Bool)

(assert (=> b!6103331 m!6955348))

(declare-fun m!6955350 () Bool)

(assert (=> b!6103331 m!6955350))

(declare-fun m!6955352 () Bool)

(assert (=> b!6103331 m!6955352))

(assert (=> b!6102646 d!1913096))

(assert (=> b!6102646 d!1912988))

(declare-fun d!1913098 () Bool)

(assert (=> d!1913098 (= (isEmpty!36252 (t!377906 (unfocusZipperList!1473 zl!343))) (is-Nil!64331 (t!377906 (unfocusZipperList!1473 zl!343))))))

(assert (=> b!6102734 d!1913098))

(assert (=> bm!504620 d!1912990))

(declare-fun d!1913100 () Bool)

(assert (=> d!1913100 (= (isEmptyExpr!1469 lt!2329359) (is-EmptyExpr!16052 lt!2329359))))

(assert (=> b!6102498 d!1913100))

(declare-fun b!6103333 () Bool)

(declare-fun res!2532234 () Bool)

(declare-fun e!3722286 () Bool)

(assert (=> b!6103333 (=> res!2532234 e!3722286)))

(assert (=> b!6103333 (= res!2532234 (not (is-Concat!24897 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292)))))))

(declare-fun e!3722283 () Bool)

(assert (=> b!6103333 (= e!3722283 e!3722286)))

(declare-fun b!6103334 () Bool)

(declare-fun e!3722288 () Bool)

(declare-fun call!504710 () Bool)

(assert (=> b!6103334 (= e!3722288 call!504710)))

(declare-fun b!6103335 () Bool)

(declare-fun e!3722289 () Bool)

(declare-fun e!3722287 () Bool)

(assert (=> b!6103335 (= e!3722289 e!3722287)))

(declare-fun c!1096418 () Bool)

(assert (=> b!6103335 (= c!1096418 (is-Star!16052 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))))))

(declare-fun b!6103336 () Bool)

(assert (=> b!6103336 (= e!3722287 e!3722283)))

(declare-fun c!1096417 () Bool)

(assert (=> b!6103336 (= c!1096417 (is-Union!16052 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))))))

(declare-fun b!6103337 () Bool)

(declare-fun e!3722285 () Bool)

(declare-fun call!504711 () Bool)

(assert (=> b!6103337 (= e!3722285 call!504711)))

(declare-fun b!6103338 () Bool)

(declare-fun e!3722284 () Bool)

(assert (=> b!6103338 (= e!3722286 e!3722284)))

(declare-fun res!2532235 () Bool)

(assert (=> b!6103338 (=> (not res!2532235) (not e!3722284))))

(declare-fun call!504709 () Bool)

(assert (=> b!6103338 (= res!2532235 call!504709)))

(declare-fun b!6103339 () Bool)

(declare-fun res!2532236 () Bool)

(assert (=> b!6103339 (=> (not res!2532236) (not e!3722285))))

(assert (=> b!6103339 (= res!2532236 call!504709)))

(assert (=> b!6103339 (= e!3722283 e!3722285)))

(declare-fun bm!504705 () Bool)

(assert (=> bm!504705 (= call!504709 (validRegex!7788 (ite c!1096417 (regOne!32617 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))) (regOne!32616 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))))))))

(declare-fun bm!504706 () Bool)

(assert (=> bm!504706 (= call!504710 (validRegex!7788 (ite c!1096418 (reg!16381 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))) (ite c!1096417 (regTwo!32617 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))) (regTwo!32616 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292)))))))))

(declare-fun b!6103340 () Bool)

(assert (=> b!6103340 (= e!3722284 call!504711)))

(declare-fun b!6103341 () Bool)

(assert (=> b!6103341 (= e!3722287 e!3722288)))

(declare-fun res!2532232 () Bool)

(assert (=> b!6103341 (= res!2532232 (not (nullable!6045 (reg!16381 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))))))))

(assert (=> b!6103341 (=> (not res!2532232) (not e!3722288))))

(declare-fun d!1913102 () Bool)

(declare-fun res!2532233 () Bool)

(assert (=> d!1913102 (=> res!2532233 e!3722289)))

(assert (=> d!1913102 (= res!2532233 (is-ElementMatch!16052 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))))))

(assert (=> d!1913102 (= (validRegex!7788 (ite c!1096297 (regOne!32617 r!7292) (regOne!32616 r!7292))) e!3722289)))

(declare-fun bm!504704 () Bool)

(assert (=> bm!504704 (= call!504711 call!504710)))

(assert (= (and d!1913102 (not res!2532233)) b!6103335))

(assert (= (and b!6103335 c!1096418) b!6103341))

(assert (= (and b!6103335 (not c!1096418)) b!6103336))

(assert (= (and b!6103341 res!2532232) b!6103334))

(assert (= (and b!6103336 c!1096417) b!6103339))

(assert (= (and b!6103336 (not c!1096417)) b!6103333))

(assert (= (and b!6103339 res!2532236) b!6103337))

(assert (= (and b!6103333 (not res!2532234)) b!6103338))

(assert (= (and b!6103338 res!2532235) b!6103340))

(assert (= (or b!6103337 b!6103340) bm!504704))

(assert (= (or b!6103339 b!6103338) bm!504705))

(assert (= (or b!6103334 bm!504704) bm!504706))

(declare-fun m!6955354 () Bool)

(assert (=> bm!504705 m!6955354))

(declare-fun m!6955356 () Bool)

(assert (=> bm!504706 m!6955356))

(declare-fun m!6955358 () Bool)

(assert (=> b!6103341 m!6955358))

(assert (=> bm!504637 d!1913102))

(declare-fun bs!1515551 () Bool)

(declare-fun b!6103343 () Bool)

(assert (= bs!1515551 (and b!6103343 d!1912928)))

(declare-fun lambda!332528 () Int)

(assert (=> bs!1515551 (not (= lambda!332528 lambda!332483))))

(declare-fun bs!1515552 () Bool)

(assert (= bs!1515552 (and b!6103343 d!1913078)))

(assert (=> bs!1515552 (not (= lambda!332528 lambda!332524))))

(assert (=> bs!1515551 (not (= lambda!332528 lambda!332482))))

(declare-fun bs!1515553 () Bool)

(assert (= bs!1515553 (and b!6103343 b!6102539)))

(assert (=> bs!1515553 (= (and (= (reg!16381 (regTwo!32617 r!7292)) (reg!16381 r!7292)) (= (regTwo!32617 r!7292) r!7292)) (= lambda!332528 lambda!332467))))

(declare-fun bs!1515554 () Bool)

(assert (= bs!1515554 (and b!6103343 d!1913048)))

(assert (=> bs!1515554 (not (= lambda!332528 lambda!332518))))

(declare-fun bs!1515555 () Bool)

(assert (= bs!1515555 (and b!6103343 b!6102387)))

(assert (=> bs!1515555 (not (= lambda!332528 lambda!332444))))

(declare-fun bs!1515556 () Bool)

(assert (= bs!1515556 (and b!6103343 b!6102546)))

(assert (=> bs!1515556 (not (= lambda!332528 lambda!332468))))

(assert (=> bs!1515555 (not (= lambda!332528 lambda!332445))))

(declare-fun bs!1515557 () Bool)

(assert (= bs!1515557 (and b!6103343 b!6103205)))

(assert (=> bs!1515557 (not (= lambda!332528 lambda!332515))))

(declare-fun bs!1515558 () Bool)

(assert (= bs!1515558 (and b!6103343 b!6103198)))

(assert (=> bs!1515558 (= (and (= (reg!16381 (regTwo!32617 r!7292)) (reg!16381 (regOne!32617 r!7292))) (= (regTwo!32617 r!7292) (regOne!32617 r!7292))) (= lambda!332528 lambda!332514))))

(declare-fun bs!1515559 () Bool)

(assert (= bs!1515559 (and b!6103343 d!1912926)))

(assert (=> bs!1515559 (not (= lambda!332528 lambda!332477))))

(assert (=> bs!1515552 (not (= lambda!332528 lambda!332525))))

(assert (=> b!6103343 true))

(assert (=> b!6103343 true))

(declare-fun bs!1515560 () Bool)

(declare-fun b!6103350 () Bool)

(assert (= bs!1515560 (and b!6103350 d!1912928)))

(declare-fun lambda!332529 () Int)

(assert (=> bs!1515560 (= (and (= (regOne!32616 (regTwo!32617 r!7292)) (regOne!32616 r!7292)) (= (regTwo!32616 (regTwo!32617 r!7292)) (regTwo!32616 r!7292))) (= lambda!332529 lambda!332483))))

(declare-fun bs!1515561 () Bool)

(assert (= bs!1515561 (and b!6103350 b!6103343)))

(assert (=> bs!1515561 (not (= lambda!332529 lambda!332528))))

(declare-fun bs!1515562 () Bool)

(assert (= bs!1515562 (and b!6103350 d!1913078)))

(assert (=> bs!1515562 (not (= lambda!332529 lambda!332524))))

(assert (=> bs!1515560 (not (= lambda!332529 lambda!332482))))

(declare-fun bs!1515563 () Bool)

(assert (= bs!1515563 (and b!6103350 b!6102539)))

(assert (=> bs!1515563 (not (= lambda!332529 lambda!332467))))

(declare-fun bs!1515564 () Bool)

(assert (= bs!1515564 (and b!6103350 d!1913048)))

(assert (=> bs!1515564 (not (= lambda!332529 lambda!332518))))

(declare-fun bs!1515565 () Bool)

(assert (= bs!1515565 (and b!6103350 b!6102387)))

(assert (=> bs!1515565 (not (= lambda!332529 lambda!332444))))

(declare-fun bs!1515566 () Bool)

(assert (= bs!1515566 (and b!6103350 b!6102546)))

(assert (=> bs!1515566 (= (and (= (regOne!32616 (regTwo!32617 r!7292)) (regOne!32616 r!7292)) (= (regTwo!32616 (regTwo!32617 r!7292)) (regTwo!32616 r!7292))) (= lambda!332529 lambda!332468))))

(assert (=> bs!1515565 (= (and (= (regOne!32616 (regTwo!32617 r!7292)) (regOne!32616 r!7292)) (= (regTwo!32616 (regTwo!32617 r!7292)) (regTwo!32616 r!7292))) (= lambda!332529 lambda!332445))))

(declare-fun bs!1515567 () Bool)

(assert (= bs!1515567 (and b!6103350 b!6103205)))

(assert (=> bs!1515567 (= (and (= (regOne!32616 (regTwo!32617 r!7292)) (regOne!32616 (regOne!32617 r!7292))) (= (regTwo!32616 (regTwo!32617 r!7292)) (regTwo!32616 (regOne!32617 r!7292)))) (= lambda!332529 lambda!332515))))

(declare-fun bs!1515568 () Bool)

(assert (= bs!1515568 (and b!6103350 b!6103198)))

(assert (=> bs!1515568 (not (= lambda!332529 lambda!332514))))

(declare-fun bs!1515569 () Bool)

(assert (= bs!1515569 (and b!6103350 d!1912926)))

(assert (=> bs!1515569 (not (= lambda!332529 lambda!332477))))

(assert (=> bs!1515562 (= (and (= (regOne!32616 (regTwo!32617 r!7292)) (regOne!32616 r!7292)) (= (regTwo!32616 (regTwo!32617 r!7292)) (regTwo!32616 r!7292))) (= lambda!332529 lambda!332525))))

(assert (=> b!6103350 true))

(assert (=> b!6103350 true))

(declare-fun b!6103342 () Bool)

(declare-fun e!3722291 () Bool)

(declare-fun e!3722294 () Bool)

(assert (=> b!6103342 (= e!3722291 e!3722294)))

(declare-fun c!1096421 () Bool)

(assert (=> b!6103342 (= c!1096421 (is-Star!16052 (regTwo!32617 r!7292)))))

(declare-fun e!3722293 () Bool)

(declare-fun call!504712 () Bool)

(assert (=> b!6103343 (= e!3722293 call!504712)))

(declare-fun b!6103344 () Bool)

(declare-fun c!1096420 () Bool)

(assert (=> b!6103344 (= c!1096420 (is-ElementMatch!16052 (regTwo!32617 r!7292)))))

(declare-fun e!3722296 () Bool)

(declare-fun e!3722292 () Bool)

(assert (=> b!6103344 (= e!3722296 e!3722292)))

(declare-fun b!6103345 () Bool)

(declare-fun e!3722290 () Bool)

(assert (=> b!6103345 (= e!3722290 e!3722296)))

(declare-fun res!2532237 () Bool)

(assert (=> b!6103345 (= res!2532237 (not (is-EmptyLang!16052 (regTwo!32617 r!7292))))))

(assert (=> b!6103345 (=> (not res!2532237) (not e!3722296))))

(declare-fun b!6103346 () Bool)

(declare-fun c!1096422 () Bool)

(assert (=> b!6103346 (= c!1096422 (is-Union!16052 (regTwo!32617 r!7292)))))

(assert (=> b!6103346 (= e!3722292 e!3722291)))

(declare-fun b!6103347 () Bool)

(declare-fun e!3722295 () Bool)

(assert (=> b!6103347 (= e!3722291 e!3722295)))

(declare-fun res!2532239 () Bool)

(assert (=> b!6103347 (= res!2532239 (matchRSpec!3153 (regOne!32617 (regTwo!32617 r!7292)) s!2326))))

(assert (=> b!6103347 (=> res!2532239 e!3722295)))

(declare-fun b!6103348 () Bool)

(assert (=> b!6103348 (= e!3722295 (matchRSpec!3153 (regTwo!32617 (regTwo!32617 r!7292)) s!2326))))

(declare-fun b!6103349 () Bool)

(declare-fun call!504713 () Bool)

(assert (=> b!6103349 (= e!3722290 call!504713)))

(assert (=> b!6103350 (= e!3722294 call!504712)))

(declare-fun b!6103351 () Bool)

(assert (=> b!6103351 (= e!3722292 (= s!2326 (Cons!64333 (c!1096208 (regTwo!32617 r!7292)) Nil!64333)))))

(declare-fun bm!504707 () Bool)

(assert (=> bm!504707 (= call!504713 (isEmpty!36255 s!2326))))

(declare-fun d!1913104 () Bool)

(declare-fun c!1096419 () Bool)

(assert (=> d!1913104 (= c!1096419 (is-EmptyExpr!16052 (regTwo!32617 r!7292)))))

(assert (=> d!1913104 (= (matchRSpec!3153 (regTwo!32617 r!7292) s!2326) e!3722290)))

(declare-fun bm!504708 () Bool)

(assert (=> bm!504708 (= call!504712 (Exists!3122 (ite c!1096421 lambda!332528 lambda!332529)))))

(declare-fun b!6103352 () Bool)

(declare-fun res!2532238 () Bool)

(assert (=> b!6103352 (=> res!2532238 e!3722293)))

(assert (=> b!6103352 (= res!2532238 call!504713)))

(assert (=> b!6103352 (= e!3722294 e!3722293)))

(assert (= (and d!1913104 c!1096419) b!6103349))

(assert (= (and d!1913104 (not c!1096419)) b!6103345))

(assert (= (and b!6103345 res!2532237) b!6103344))

(assert (= (and b!6103344 c!1096420) b!6103351))

(assert (= (and b!6103344 (not c!1096420)) b!6103346))

(assert (= (and b!6103346 c!1096422) b!6103347))

(assert (= (and b!6103346 (not c!1096422)) b!6103342))

(assert (= (and b!6103347 (not res!2532239)) b!6103348))

(assert (= (and b!6103342 c!1096421) b!6103352))

(assert (= (and b!6103342 (not c!1096421)) b!6103350))

(assert (= (and b!6103352 (not res!2532238)) b!6103343))

(assert (= (or b!6103343 b!6103350) bm!504708))

(assert (= (or b!6103349 b!6103352) bm!504707))

(declare-fun m!6955360 () Bool)

(assert (=> b!6103347 m!6955360))

(declare-fun m!6955362 () Bool)

(assert (=> b!6103348 m!6955362))

(assert (=> bm!504707 m!6954834))

(declare-fun m!6955364 () Bool)

(assert (=> bm!504708 m!6955364))

(assert (=> b!6102544 d!1913104))

(declare-fun b!6103353 () Bool)

(declare-fun res!2532242 () Bool)

(declare-fun e!3722300 () Bool)

(assert (=> b!6103353 (=> res!2532242 e!3722300)))

(assert (=> b!6103353 (= res!2532242 (not (is-Concat!24897 lt!2329362)))))

(declare-fun e!3722297 () Bool)

(assert (=> b!6103353 (= e!3722297 e!3722300)))

(declare-fun b!6103354 () Bool)

(declare-fun e!3722302 () Bool)

(declare-fun call!504715 () Bool)

(assert (=> b!6103354 (= e!3722302 call!504715)))

(declare-fun b!6103355 () Bool)

(declare-fun e!3722303 () Bool)

(declare-fun e!3722301 () Bool)

(assert (=> b!6103355 (= e!3722303 e!3722301)))

(declare-fun c!1096424 () Bool)

(assert (=> b!6103355 (= c!1096424 (is-Star!16052 lt!2329362))))

(declare-fun b!6103356 () Bool)

(assert (=> b!6103356 (= e!3722301 e!3722297)))

(declare-fun c!1096423 () Bool)

(assert (=> b!6103356 (= c!1096423 (is-Union!16052 lt!2329362))))

(declare-fun b!6103357 () Bool)

(declare-fun e!3722299 () Bool)

(declare-fun call!504716 () Bool)

(assert (=> b!6103357 (= e!3722299 call!504716)))

(declare-fun b!6103358 () Bool)

(declare-fun e!3722298 () Bool)

(assert (=> b!6103358 (= e!3722300 e!3722298)))

(declare-fun res!2532243 () Bool)

(assert (=> b!6103358 (=> (not res!2532243) (not e!3722298))))

(declare-fun call!504714 () Bool)

(assert (=> b!6103358 (= res!2532243 call!504714)))

(declare-fun b!6103359 () Bool)

(declare-fun res!2532244 () Bool)

(assert (=> b!6103359 (=> (not res!2532244) (not e!3722299))))

(assert (=> b!6103359 (= res!2532244 call!504714)))

(assert (=> b!6103359 (= e!3722297 e!3722299)))

(declare-fun bm!504710 () Bool)

(assert (=> bm!504710 (= call!504714 (validRegex!7788 (ite c!1096423 (regOne!32617 lt!2329362) (regOne!32616 lt!2329362))))))

(declare-fun bm!504711 () Bool)

(assert (=> bm!504711 (= call!504715 (validRegex!7788 (ite c!1096424 (reg!16381 lt!2329362) (ite c!1096423 (regTwo!32617 lt!2329362) (regTwo!32616 lt!2329362)))))))

(declare-fun b!6103360 () Bool)

(assert (=> b!6103360 (= e!3722298 call!504716)))

(declare-fun b!6103361 () Bool)

(assert (=> b!6103361 (= e!3722301 e!3722302)))

(declare-fun res!2532240 () Bool)

(assert (=> b!6103361 (= res!2532240 (not (nullable!6045 (reg!16381 lt!2329362))))))

(assert (=> b!6103361 (=> (not res!2532240) (not e!3722302))))

(declare-fun d!1913106 () Bool)

(declare-fun res!2532241 () Bool)

(assert (=> d!1913106 (=> res!2532241 e!3722303)))

(assert (=> d!1913106 (= res!2532241 (is-ElementMatch!16052 lt!2329362))))

(assert (=> d!1913106 (= (validRegex!7788 lt!2329362) e!3722303)))

(declare-fun bm!504709 () Bool)

(assert (=> bm!504709 (= call!504716 call!504715)))

(assert (= (and d!1913106 (not res!2532241)) b!6103355))

(assert (= (and b!6103355 c!1096424) b!6103361))

(assert (= (and b!6103355 (not c!1096424)) b!6103356))

(assert (= (and b!6103361 res!2532240) b!6103354))

(assert (= (and b!6103356 c!1096423) b!6103359))

(assert (= (and b!6103356 (not c!1096423)) b!6103353))

(assert (= (and b!6103359 res!2532244) b!6103357))

(assert (= (and b!6103353 (not res!2532242)) b!6103358))

(assert (= (and b!6103358 res!2532243) b!6103360))

(assert (= (or b!6103357 b!6103360) bm!504709))

(assert (= (or b!6103359 b!6103358) bm!504710))

(assert (= (or b!6103354 bm!504709) bm!504711))

(declare-fun m!6955366 () Bool)

(assert (=> bm!504710 m!6955366))

(declare-fun m!6955368 () Bool)

(assert (=> bm!504711 m!6955368))

(declare-fun m!6955370 () Bool)

(assert (=> b!6103361 m!6955370))

(assert (=> d!1912900 d!1913106))

(assert (=> d!1912900 d!1912934))

(assert (=> d!1912900 d!1912936))

(declare-fun d!1913108 () Bool)

(assert (=> d!1913108 (= (isEmptyLang!1479 lt!2329395) (is-EmptyLang!16052 lt!2329395))))

(assert (=> b!6102730 d!1913108))

(declare-fun d!1913110 () Bool)

(declare-fun c!1096427 () Bool)

(assert (=> d!1913110 (= c!1096427 (is-Nil!64332 lt!2329401))))

(declare-fun e!3722306 () (Set Context!10872))

(assert (=> d!1913110 (= (content!11930 lt!2329401) e!3722306)))

(declare-fun b!6103366 () Bool)

(assert (=> b!6103366 (= e!3722306 (as set.empty (Set Context!10872)))))

(declare-fun b!6103367 () Bool)

(assert (=> b!6103367 (= e!3722306 (set.union (set.insert (h!70780 lt!2329401) (as set.empty (Set Context!10872))) (content!11930 (t!377907 lt!2329401))))))

(assert (= (and d!1913110 c!1096427) b!6103366))

(assert (= (and d!1913110 (not c!1096427)) b!6103367))

(declare-fun m!6955372 () Bool)

(assert (=> b!6103367 m!6955372))

(declare-fun m!6955374 () Bool)

(assert (=> b!6103367 m!6955374))

(assert (=> b!6102805 d!1913110))

(declare-fun b!6103368 () Bool)

(declare-fun e!3722307 () Bool)

(declare-fun tp!1703933 () Bool)

(assert (=> b!6103368 (= e!3722307 (and tp_is_empty!41357 tp!1703933))))

(assert (=> b!6102824 (= tp!1703828 e!3722307)))

(assert (= (and b!6102824 (is-Cons!64333 (t!377908 (t!377908 s!2326)))) b!6103368))

(declare-fun e!3722308 () Bool)

(assert (=> b!6102858 (= tp!1703852 e!3722308)))

(declare-fun b!6103369 () Bool)

(assert (=> b!6103369 (= e!3722308 tp_is_empty!41357)))

(declare-fun b!6103371 () Bool)

(declare-fun tp!1703936 () Bool)

(assert (=> b!6103371 (= e!3722308 tp!1703936)))

(declare-fun b!6103372 () Bool)

(declare-fun tp!1703937 () Bool)

(declare-fun tp!1703935 () Bool)

(assert (=> b!6103372 (= e!3722308 (and tp!1703937 tp!1703935))))

(declare-fun b!6103370 () Bool)

(declare-fun tp!1703934 () Bool)

(declare-fun tp!1703938 () Bool)

(assert (=> b!6103370 (= e!3722308 (and tp!1703934 tp!1703938))))

(assert (= (and b!6102858 (is-ElementMatch!16052 (regOne!32617 (regOne!32617 r!7292)))) b!6103369))

(assert (= (and b!6102858 (is-Concat!24897 (regOne!32617 (regOne!32617 r!7292)))) b!6103370))

(assert (= (and b!6102858 (is-Star!16052 (regOne!32617 (regOne!32617 r!7292)))) b!6103371))

(assert (= (and b!6102858 (is-Union!16052 (regOne!32617 (regOne!32617 r!7292)))) b!6103372))

(declare-fun e!3722309 () Bool)

(assert (=> b!6102858 (= tp!1703850 e!3722309)))

(declare-fun b!6103373 () Bool)

(assert (=> b!6103373 (= e!3722309 tp_is_empty!41357)))

(declare-fun b!6103375 () Bool)

(declare-fun tp!1703941 () Bool)

(assert (=> b!6103375 (= e!3722309 tp!1703941)))

(declare-fun b!6103376 () Bool)

(declare-fun tp!1703942 () Bool)

(declare-fun tp!1703940 () Bool)

(assert (=> b!6103376 (= e!3722309 (and tp!1703942 tp!1703940))))

(declare-fun b!6103374 () Bool)

(declare-fun tp!1703939 () Bool)

(declare-fun tp!1703943 () Bool)

(assert (=> b!6103374 (= e!3722309 (and tp!1703939 tp!1703943))))

(assert (= (and b!6102858 (is-ElementMatch!16052 (regTwo!32617 (regOne!32617 r!7292)))) b!6103373))

(assert (= (and b!6102858 (is-Concat!24897 (regTwo!32617 (regOne!32617 r!7292)))) b!6103374))

(assert (= (and b!6102858 (is-Star!16052 (regTwo!32617 (regOne!32617 r!7292)))) b!6103375))

(assert (= (and b!6102858 (is-Union!16052 (regTwo!32617 (regOne!32617 r!7292)))) b!6103376))

(declare-fun condSetEmpty!41239 () Bool)

(assert (=> setNonEmpty!41235 (= condSetEmpty!41239 (= setRest!41235 (as set.empty (Set Context!10872))))))

(declare-fun setRes!41239 () Bool)

(assert (=> setNonEmpty!41235 (= tp!1703845 setRes!41239)))

(declare-fun setIsEmpty!41239 () Bool)

(assert (=> setIsEmpty!41239 setRes!41239))

(declare-fun tp!1703944 () Bool)

(declare-fun setNonEmpty!41239 () Bool)

(declare-fun setElem!41239 () Context!10872)

(declare-fun e!3722310 () Bool)

(assert (=> setNonEmpty!41239 (= setRes!41239 (and tp!1703944 (inv!83378 setElem!41239) e!3722310))))

(declare-fun setRest!41239 () (Set Context!10872))

(assert (=> setNonEmpty!41239 (= setRest!41235 (set.union (set.insert setElem!41239 (as set.empty (Set Context!10872))) setRest!41239))))

(declare-fun b!6103377 () Bool)

(declare-fun tp!1703945 () Bool)

(assert (=> b!6103377 (= e!3722310 tp!1703945)))

(assert (= (and setNonEmpty!41235 condSetEmpty!41239) setIsEmpty!41239))

(assert (= (and setNonEmpty!41235 (not condSetEmpty!41239)) setNonEmpty!41239))

(assert (= setNonEmpty!41239 b!6103377))

(declare-fun m!6955376 () Bool)

(assert (=> setNonEmpty!41239 m!6955376))

(declare-fun b!6103378 () Bool)

(declare-fun e!3722311 () Bool)

(declare-fun tp!1703946 () Bool)

(declare-fun tp!1703947 () Bool)

(assert (=> b!6103378 (= e!3722311 (and tp!1703946 tp!1703947))))

(assert (=> b!6102853 (= tp!1703846 e!3722311)))

(assert (= (and b!6102853 (is-Cons!64331 (exprs!5936 setElem!41235))) b!6103378))

(declare-fun e!3722312 () Bool)

(assert (=> b!6102856 (= tp!1703849 e!3722312)))

(declare-fun b!6103379 () Bool)

(assert (=> b!6103379 (= e!3722312 tp_is_empty!41357)))

(declare-fun b!6103381 () Bool)

(declare-fun tp!1703950 () Bool)

(assert (=> b!6103381 (= e!3722312 tp!1703950)))

(declare-fun b!6103382 () Bool)

(declare-fun tp!1703951 () Bool)

(declare-fun tp!1703949 () Bool)

(assert (=> b!6103382 (= e!3722312 (and tp!1703951 tp!1703949))))

(declare-fun b!6103380 () Bool)

(declare-fun tp!1703948 () Bool)

(declare-fun tp!1703952 () Bool)

(assert (=> b!6103380 (= e!3722312 (and tp!1703948 tp!1703952))))

(assert (= (and b!6102856 (is-ElementMatch!16052 (regOne!32616 (regOne!32617 r!7292)))) b!6103379))

(assert (= (and b!6102856 (is-Concat!24897 (regOne!32616 (regOne!32617 r!7292)))) b!6103380))

(assert (= (and b!6102856 (is-Star!16052 (regOne!32616 (regOne!32617 r!7292)))) b!6103381))

(assert (= (and b!6102856 (is-Union!16052 (regOne!32616 (regOne!32617 r!7292)))) b!6103382))

(declare-fun e!3722313 () Bool)

(assert (=> b!6102856 (= tp!1703853 e!3722313)))

(declare-fun b!6103383 () Bool)

(assert (=> b!6103383 (= e!3722313 tp_is_empty!41357)))

(declare-fun b!6103385 () Bool)

(declare-fun tp!1703955 () Bool)

(assert (=> b!6103385 (= e!3722313 tp!1703955)))

(declare-fun b!6103386 () Bool)

(declare-fun tp!1703956 () Bool)

(declare-fun tp!1703954 () Bool)

(assert (=> b!6103386 (= e!3722313 (and tp!1703956 tp!1703954))))

(declare-fun b!6103384 () Bool)

(declare-fun tp!1703953 () Bool)

(declare-fun tp!1703957 () Bool)

(assert (=> b!6103384 (= e!3722313 (and tp!1703953 tp!1703957))))

(assert (= (and b!6102856 (is-ElementMatch!16052 (regTwo!32616 (regOne!32617 r!7292)))) b!6103383))

(assert (= (and b!6102856 (is-Concat!24897 (regTwo!32616 (regOne!32617 r!7292)))) b!6103384))

(assert (= (and b!6102856 (is-Star!16052 (regTwo!32616 (regOne!32617 r!7292)))) b!6103385))

(assert (= (and b!6102856 (is-Union!16052 (regTwo!32616 (regOne!32617 r!7292)))) b!6103386))

(declare-fun e!3722314 () Bool)

(assert (=> b!6102866 (= tp!1703862 e!3722314)))

(declare-fun b!6103387 () Bool)

(assert (=> b!6103387 (= e!3722314 tp_is_empty!41357)))

(declare-fun b!6103389 () Bool)

(declare-fun tp!1703960 () Bool)

(assert (=> b!6103389 (= e!3722314 tp!1703960)))

(declare-fun b!6103390 () Bool)

(declare-fun tp!1703961 () Bool)

(declare-fun tp!1703959 () Bool)

(assert (=> b!6103390 (= e!3722314 (and tp!1703961 tp!1703959))))

(declare-fun b!6103388 () Bool)

(declare-fun tp!1703958 () Bool)

(declare-fun tp!1703962 () Bool)

(assert (=> b!6103388 (= e!3722314 (and tp!1703958 tp!1703962))))

(assert (= (and b!6102866 (is-ElementMatch!16052 (regOne!32617 (regOne!32616 r!7292)))) b!6103387))

(assert (= (and b!6102866 (is-Concat!24897 (regOne!32617 (regOne!32616 r!7292)))) b!6103388))

(assert (= (and b!6102866 (is-Star!16052 (regOne!32617 (regOne!32616 r!7292)))) b!6103389))

(assert (= (and b!6102866 (is-Union!16052 (regOne!32617 (regOne!32616 r!7292)))) b!6103390))

(declare-fun e!3722315 () Bool)

(assert (=> b!6102866 (= tp!1703860 e!3722315)))

(declare-fun b!6103391 () Bool)

(assert (=> b!6103391 (= e!3722315 tp_is_empty!41357)))

(declare-fun b!6103393 () Bool)

(declare-fun tp!1703965 () Bool)

(assert (=> b!6103393 (= e!3722315 tp!1703965)))

(declare-fun b!6103394 () Bool)

(declare-fun tp!1703966 () Bool)

(declare-fun tp!1703964 () Bool)

(assert (=> b!6103394 (= e!3722315 (and tp!1703966 tp!1703964))))

(declare-fun b!6103392 () Bool)

(declare-fun tp!1703963 () Bool)

(declare-fun tp!1703967 () Bool)

(assert (=> b!6103392 (= e!3722315 (and tp!1703963 tp!1703967))))

(assert (= (and b!6102866 (is-ElementMatch!16052 (regTwo!32617 (regOne!32616 r!7292)))) b!6103391))

(assert (= (and b!6102866 (is-Concat!24897 (regTwo!32617 (regOne!32616 r!7292)))) b!6103392))

(assert (= (and b!6102866 (is-Star!16052 (regTwo!32617 (regOne!32616 r!7292)))) b!6103393))

(assert (= (and b!6102866 (is-Union!16052 (regTwo!32617 (regOne!32616 r!7292)))) b!6103394))

(declare-fun e!3722316 () Bool)

(assert (=> b!6102857 (= tp!1703851 e!3722316)))

(declare-fun b!6103395 () Bool)

(assert (=> b!6103395 (= e!3722316 tp_is_empty!41357)))

(declare-fun b!6103397 () Bool)

(declare-fun tp!1703970 () Bool)

(assert (=> b!6103397 (= e!3722316 tp!1703970)))

(declare-fun b!6103398 () Bool)

(declare-fun tp!1703971 () Bool)

(declare-fun tp!1703969 () Bool)

(assert (=> b!6103398 (= e!3722316 (and tp!1703971 tp!1703969))))

(declare-fun b!6103396 () Bool)

(declare-fun tp!1703968 () Bool)

(declare-fun tp!1703972 () Bool)

(assert (=> b!6103396 (= e!3722316 (and tp!1703968 tp!1703972))))

(assert (= (and b!6102857 (is-ElementMatch!16052 (reg!16381 (regOne!32617 r!7292)))) b!6103395))

(assert (= (and b!6102857 (is-Concat!24897 (reg!16381 (regOne!32617 r!7292)))) b!6103396))

(assert (= (and b!6102857 (is-Star!16052 (reg!16381 (regOne!32617 r!7292)))) b!6103397))

(assert (= (and b!6102857 (is-Union!16052 (reg!16381 (regOne!32617 r!7292)))) b!6103398))

(declare-fun e!3722317 () Bool)

(assert (=> b!6102864 (= tp!1703859 e!3722317)))

(declare-fun b!6103399 () Bool)

(assert (=> b!6103399 (= e!3722317 tp_is_empty!41357)))

(declare-fun b!6103401 () Bool)

(declare-fun tp!1703975 () Bool)

(assert (=> b!6103401 (= e!3722317 tp!1703975)))

(declare-fun b!6103402 () Bool)

(declare-fun tp!1703976 () Bool)

(declare-fun tp!1703974 () Bool)

(assert (=> b!6103402 (= e!3722317 (and tp!1703976 tp!1703974))))

(declare-fun b!6103400 () Bool)

(declare-fun tp!1703973 () Bool)

(declare-fun tp!1703977 () Bool)

(assert (=> b!6103400 (= e!3722317 (and tp!1703973 tp!1703977))))

(assert (= (and b!6102864 (is-ElementMatch!16052 (regOne!32616 (regOne!32616 r!7292)))) b!6103399))

(assert (= (and b!6102864 (is-Concat!24897 (regOne!32616 (regOne!32616 r!7292)))) b!6103400))

(assert (= (and b!6102864 (is-Star!16052 (regOne!32616 (regOne!32616 r!7292)))) b!6103401))

(assert (= (and b!6102864 (is-Union!16052 (regOne!32616 (regOne!32616 r!7292)))) b!6103402))

(declare-fun e!3722318 () Bool)

(assert (=> b!6102864 (= tp!1703863 e!3722318)))

(declare-fun b!6103403 () Bool)

(assert (=> b!6103403 (= e!3722318 tp_is_empty!41357)))

(declare-fun b!6103405 () Bool)

(declare-fun tp!1703980 () Bool)

(assert (=> b!6103405 (= e!3722318 tp!1703980)))

(declare-fun b!6103406 () Bool)

(declare-fun tp!1703981 () Bool)

(declare-fun tp!1703979 () Bool)

(assert (=> b!6103406 (= e!3722318 (and tp!1703981 tp!1703979))))

(declare-fun b!6103404 () Bool)

(declare-fun tp!1703978 () Bool)

(declare-fun tp!1703982 () Bool)

(assert (=> b!6103404 (= e!3722318 (and tp!1703978 tp!1703982))))

(assert (= (and b!6102864 (is-ElementMatch!16052 (regTwo!32616 (regOne!32616 r!7292)))) b!6103403))

(assert (= (and b!6102864 (is-Concat!24897 (regTwo!32616 (regOne!32616 r!7292)))) b!6103404))

(assert (= (and b!6102864 (is-Star!16052 (regTwo!32616 (regOne!32616 r!7292)))) b!6103405))

(assert (= (and b!6102864 (is-Union!16052 (regTwo!32616 (regOne!32616 r!7292)))) b!6103406))

(declare-fun e!3722319 () Bool)

(assert (=> b!6102865 (= tp!1703861 e!3722319)))

(declare-fun b!6103407 () Bool)

(assert (=> b!6103407 (= e!3722319 tp_is_empty!41357)))

(declare-fun b!6103409 () Bool)

(declare-fun tp!1703985 () Bool)

(assert (=> b!6103409 (= e!3722319 tp!1703985)))

(declare-fun b!6103410 () Bool)

(declare-fun tp!1703986 () Bool)

(declare-fun tp!1703984 () Bool)

(assert (=> b!6103410 (= e!3722319 (and tp!1703986 tp!1703984))))

(declare-fun b!6103408 () Bool)

(declare-fun tp!1703983 () Bool)

(declare-fun tp!1703987 () Bool)

(assert (=> b!6103408 (= e!3722319 (and tp!1703983 tp!1703987))))

(assert (= (and b!6102865 (is-ElementMatch!16052 (reg!16381 (regOne!32616 r!7292)))) b!6103407))

(assert (= (and b!6102865 (is-Concat!24897 (reg!16381 (regOne!32616 r!7292)))) b!6103408))

(assert (= (and b!6102865 (is-Star!16052 (reg!16381 (regOne!32616 r!7292)))) b!6103409))

(assert (= (and b!6102865 (is-Union!16052 (reg!16381 (regOne!32616 r!7292)))) b!6103410))

(declare-fun b!6103411 () Bool)

(declare-fun e!3722320 () Bool)

(declare-fun tp!1703988 () Bool)

(declare-fun tp!1703989 () Bool)

(assert (=> b!6103411 (= e!3722320 (and tp!1703988 tp!1703989))))

(assert (=> b!6102843 (= tp!1703833 e!3722320)))

(assert (= (and b!6102843 (is-Cons!64331 (exprs!5936 (h!70780 (t!377907 zl!343))))) b!6103411))

(declare-fun e!3722321 () Bool)

(assert (=> b!6102862 (= tp!1703857 e!3722321)))

(declare-fun b!6103412 () Bool)

(assert (=> b!6103412 (= e!3722321 tp_is_empty!41357)))

(declare-fun b!6103414 () Bool)

(declare-fun tp!1703992 () Bool)

(assert (=> b!6103414 (= e!3722321 tp!1703992)))

(declare-fun b!6103415 () Bool)

(declare-fun tp!1703993 () Bool)

(declare-fun tp!1703991 () Bool)

(assert (=> b!6103415 (= e!3722321 (and tp!1703993 tp!1703991))))

(declare-fun b!6103413 () Bool)

(declare-fun tp!1703990 () Bool)

(declare-fun tp!1703994 () Bool)

(assert (=> b!6103413 (= e!3722321 (and tp!1703990 tp!1703994))))

(assert (= (and b!6102862 (is-ElementMatch!16052 (regOne!32617 (regTwo!32617 r!7292)))) b!6103412))

(assert (= (and b!6102862 (is-Concat!24897 (regOne!32617 (regTwo!32617 r!7292)))) b!6103413))

(assert (= (and b!6102862 (is-Star!16052 (regOne!32617 (regTwo!32617 r!7292)))) b!6103414))

(assert (= (and b!6102862 (is-Union!16052 (regOne!32617 (regTwo!32617 r!7292)))) b!6103415))

(declare-fun e!3722322 () Bool)

(assert (=> b!6102862 (= tp!1703855 e!3722322)))

(declare-fun b!6103416 () Bool)

(assert (=> b!6103416 (= e!3722322 tp_is_empty!41357)))

(declare-fun b!6103418 () Bool)

(declare-fun tp!1703997 () Bool)

(assert (=> b!6103418 (= e!3722322 tp!1703997)))

(declare-fun b!6103419 () Bool)

(declare-fun tp!1703998 () Bool)

(declare-fun tp!1703996 () Bool)

(assert (=> b!6103419 (= e!3722322 (and tp!1703998 tp!1703996))))

(declare-fun b!6103417 () Bool)

(declare-fun tp!1703995 () Bool)

(declare-fun tp!1703999 () Bool)

(assert (=> b!6103417 (= e!3722322 (and tp!1703995 tp!1703999))))

(assert (= (and b!6102862 (is-ElementMatch!16052 (regTwo!32617 (regTwo!32617 r!7292)))) b!6103416))

(assert (= (and b!6102862 (is-Concat!24897 (regTwo!32617 (regTwo!32617 r!7292)))) b!6103417))

(assert (= (and b!6102862 (is-Star!16052 (regTwo!32617 (regTwo!32617 r!7292)))) b!6103418))

(assert (= (and b!6102862 (is-Union!16052 (regTwo!32617 (regTwo!32617 r!7292)))) b!6103419))

(declare-fun e!3722323 () Bool)

(assert (=> b!6102848 (= tp!1703839 e!3722323)))

(declare-fun b!6103420 () Bool)

(assert (=> b!6103420 (= e!3722323 tp_is_empty!41357)))

(declare-fun b!6103422 () Bool)

(declare-fun tp!1704002 () Bool)

(assert (=> b!6103422 (= e!3722323 tp!1704002)))

(declare-fun b!6103423 () Bool)

(declare-fun tp!1704003 () Bool)

(declare-fun tp!1704001 () Bool)

(assert (=> b!6103423 (= e!3722323 (and tp!1704003 tp!1704001))))

(declare-fun b!6103421 () Bool)

(declare-fun tp!1704000 () Bool)

(declare-fun tp!1704004 () Bool)

(assert (=> b!6103421 (= e!3722323 (and tp!1704000 tp!1704004))))

(assert (= (and b!6102848 (is-ElementMatch!16052 (h!70779 (exprs!5936 setElem!41229)))) b!6103420))

(assert (= (and b!6102848 (is-Concat!24897 (h!70779 (exprs!5936 setElem!41229)))) b!6103421))

(assert (= (and b!6102848 (is-Star!16052 (h!70779 (exprs!5936 setElem!41229)))) b!6103422))

(assert (= (and b!6102848 (is-Union!16052 (h!70779 (exprs!5936 setElem!41229)))) b!6103423))

(declare-fun b!6103424 () Bool)

(declare-fun e!3722324 () Bool)

(declare-fun tp!1704005 () Bool)

(declare-fun tp!1704006 () Bool)

(assert (=> b!6103424 (= e!3722324 (and tp!1704005 tp!1704006))))

(assert (=> b!6102848 (= tp!1703840 e!3722324)))

(assert (= (and b!6102848 (is-Cons!64331 (t!377906 (exprs!5936 setElem!41229)))) b!6103424))

(declare-fun e!3722325 () Bool)

(assert (=> b!6102854 (= tp!1703847 e!3722325)))

(declare-fun b!6103425 () Bool)

(assert (=> b!6103425 (= e!3722325 tp_is_empty!41357)))

(declare-fun b!6103427 () Bool)

(declare-fun tp!1704009 () Bool)

(assert (=> b!6103427 (= e!3722325 tp!1704009)))

(declare-fun b!6103428 () Bool)

(declare-fun tp!1704010 () Bool)

(declare-fun tp!1704008 () Bool)

(assert (=> b!6103428 (= e!3722325 (and tp!1704010 tp!1704008))))

(declare-fun b!6103426 () Bool)

(declare-fun tp!1704007 () Bool)

(declare-fun tp!1704011 () Bool)

(assert (=> b!6103426 (= e!3722325 (and tp!1704007 tp!1704011))))

(assert (= (and b!6102854 (is-ElementMatch!16052 (h!70779 (exprs!5936 (h!70780 zl!343))))) b!6103425))

(assert (= (and b!6102854 (is-Concat!24897 (h!70779 (exprs!5936 (h!70780 zl!343))))) b!6103426))

(assert (= (and b!6102854 (is-Star!16052 (h!70779 (exprs!5936 (h!70780 zl!343))))) b!6103427))

(assert (= (and b!6102854 (is-Union!16052 (h!70779 (exprs!5936 (h!70780 zl!343))))) b!6103428))

(declare-fun b!6103429 () Bool)

(declare-fun e!3722326 () Bool)

(declare-fun tp!1704012 () Bool)

(declare-fun tp!1704013 () Bool)

(assert (=> b!6103429 (= e!3722326 (and tp!1704012 tp!1704013))))

(assert (=> b!6102854 (= tp!1703848 e!3722326)))

(assert (= (and b!6102854 (is-Cons!64331 (t!377906 (exprs!5936 (h!70780 zl!343))))) b!6103429))

(declare-fun b!6103431 () Bool)

(declare-fun e!3722328 () Bool)

(declare-fun tp!1704014 () Bool)

(assert (=> b!6103431 (= e!3722328 tp!1704014)))

(declare-fun b!6103430 () Bool)

(declare-fun tp!1704015 () Bool)

(declare-fun e!3722327 () Bool)

(assert (=> b!6103430 (= e!3722327 (and (inv!83378 (h!70780 (t!377907 (t!377907 zl!343)))) e!3722328 tp!1704015))))

(assert (=> b!6102842 (= tp!1703834 e!3722327)))

(assert (= b!6103430 b!6103431))

(assert (= (and b!6102842 (is-Cons!64332 (t!377907 (t!377907 zl!343)))) b!6103430))

(declare-fun m!6955378 () Bool)

(assert (=> b!6103430 m!6955378))

(declare-fun e!3722329 () Bool)

(assert (=> b!6102818 (= tp!1703823 e!3722329)))

(declare-fun b!6103432 () Bool)

(assert (=> b!6103432 (= e!3722329 tp_is_empty!41357)))

(declare-fun b!6103434 () Bool)

(declare-fun tp!1704018 () Bool)

(assert (=> b!6103434 (= e!3722329 tp!1704018)))

(declare-fun b!6103435 () Bool)

(declare-fun tp!1704019 () Bool)

(declare-fun tp!1704017 () Bool)

(assert (=> b!6103435 (= e!3722329 (and tp!1704019 tp!1704017))))

(declare-fun b!6103433 () Bool)

(declare-fun tp!1704016 () Bool)

(declare-fun tp!1704020 () Bool)

(assert (=> b!6103433 (= e!3722329 (and tp!1704016 tp!1704020))))

(assert (= (and b!6102818 (is-ElementMatch!16052 (reg!16381 (reg!16381 r!7292)))) b!6103432))

(assert (= (and b!6102818 (is-Concat!24897 (reg!16381 (reg!16381 r!7292)))) b!6103433))

(assert (= (and b!6102818 (is-Star!16052 (reg!16381 (reg!16381 r!7292)))) b!6103434))

(assert (= (and b!6102818 (is-Union!16052 (reg!16381 (reg!16381 r!7292)))) b!6103435))

(declare-fun e!3722330 () Bool)

(assert (=> b!6102868 (= tp!1703864 e!3722330)))

(declare-fun b!6103436 () Bool)

(assert (=> b!6103436 (= e!3722330 tp_is_empty!41357)))

(declare-fun b!6103438 () Bool)

(declare-fun tp!1704023 () Bool)

(assert (=> b!6103438 (= e!3722330 tp!1704023)))

(declare-fun b!6103439 () Bool)

(declare-fun tp!1704024 () Bool)

(declare-fun tp!1704022 () Bool)

(assert (=> b!6103439 (= e!3722330 (and tp!1704024 tp!1704022))))

(declare-fun b!6103437 () Bool)

(declare-fun tp!1704021 () Bool)

(declare-fun tp!1704025 () Bool)

(assert (=> b!6103437 (= e!3722330 (and tp!1704021 tp!1704025))))

(assert (= (and b!6102868 (is-ElementMatch!16052 (regOne!32616 (regTwo!32616 r!7292)))) b!6103436))

(assert (= (and b!6102868 (is-Concat!24897 (regOne!32616 (regTwo!32616 r!7292)))) b!6103437))

(assert (= (and b!6102868 (is-Star!16052 (regOne!32616 (regTwo!32616 r!7292)))) b!6103438))

(assert (= (and b!6102868 (is-Union!16052 (regOne!32616 (regTwo!32616 r!7292)))) b!6103439))

(declare-fun e!3722331 () Bool)

(assert (=> b!6102868 (= tp!1703868 e!3722331)))

(declare-fun b!6103440 () Bool)

(assert (=> b!6103440 (= e!3722331 tp_is_empty!41357)))

(declare-fun b!6103442 () Bool)

(declare-fun tp!1704028 () Bool)

(assert (=> b!6103442 (= e!3722331 tp!1704028)))

(declare-fun b!6103443 () Bool)

(declare-fun tp!1704029 () Bool)

(declare-fun tp!1704027 () Bool)

(assert (=> b!6103443 (= e!3722331 (and tp!1704029 tp!1704027))))

(declare-fun b!6103441 () Bool)

(declare-fun tp!1704026 () Bool)

(declare-fun tp!1704030 () Bool)

(assert (=> b!6103441 (= e!3722331 (and tp!1704026 tp!1704030))))

(assert (= (and b!6102868 (is-ElementMatch!16052 (regTwo!32616 (regTwo!32616 r!7292)))) b!6103440))

(assert (= (and b!6102868 (is-Concat!24897 (regTwo!32616 (regTwo!32616 r!7292)))) b!6103441))

(assert (= (and b!6102868 (is-Star!16052 (regTwo!32616 (regTwo!32616 r!7292)))) b!6103442))

(assert (= (and b!6102868 (is-Union!16052 (regTwo!32616 (regTwo!32616 r!7292)))) b!6103443))

(declare-fun e!3722332 () Bool)

(assert (=> b!6102817 (= tp!1703821 e!3722332)))

(declare-fun b!6103444 () Bool)

(assert (=> b!6103444 (= e!3722332 tp_is_empty!41357)))

(declare-fun b!6103446 () Bool)

(declare-fun tp!1704033 () Bool)

(assert (=> b!6103446 (= e!3722332 tp!1704033)))

(declare-fun b!6103447 () Bool)

(declare-fun tp!1704034 () Bool)

(declare-fun tp!1704032 () Bool)

(assert (=> b!6103447 (= e!3722332 (and tp!1704034 tp!1704032))))

(declare-fun b!6103445 () Bool)

(declare-fun tp!1704031 () Bool)

(declare-fun tp!1704035 () Bool)

(assert (=> b!6103445 (= e!3722332 (and tp!1704031 tp!1704035))))

(assert (= (and b!6102817 (is-ElementMatch!16052 (regOne!32616 (reg!16381 r!7292)))) b!6103444))

(assert (= (and b!6102817 (is-Concat!24897 (regOne!32616 (reg!16381 r!7292)))) b!6103445))

(assert (= (and b!6102817 (is-Star!16052 (regOne!32616 (reg!16381 r!7292)))) b!6103446))

(assert (= (and b!6102817 (is-Union!16052 (regOne!32616 (reg!16381 r!7292)))) b!6103447))

(declare-fun e!3722333 () Bool)

(assert (=> b!6102817 (= tp!1703825 e!3722333)))

(declare-fun b!6103448 () Bool)

(assert (=> b!6103448 (= e!3722333 tp_is_empty!41357)))

(declare-fun b!6103450 () Bool)

(declare-fun tp!1704038 () Bool)

(assert (=> b!6103450 (= e!3722333 tp!1704038)))

(declare-fun b!6103451 () Bool)

(declare-fun tp!1704039 () Bool)

(declare-fun tp!1704037 () Bool)

(assert (=> b!6103451 (= e!3722333 (and tp!1704039 tp!1704037))))

(declare-fun b!6103449 () Bool)

(declare-fun tp!1704036 () Bool)

(declare-fun tp!1704040 () Bool)

(assert (=> b!6103449 (= e!3722333 (and tp!1704036 tp!1704040))))

(assert (= (and b!6102817 (is-ElementMatch!16052 (regTwo!32616 (reg!16381 r!7292)))) b!6103448))

(assert (= (and b!6102817 (is-Concat!24897 (regTwo!32616 (reg!16381 r!7292)))) b!6103449))

(assert (= (and b!6102817 (is-Star!16052 (regTwo!32616 (reg!16381 r!7292)))) b!6103450))

(assert (= (and b!6102817 (is-Union!16052 (regTwo!32616 (reg!16381 r!7292)))) b!6103451))

(declare-fun e!3722334 () Bool)

(assert (=> b!6102870 (= tp!1703867 e!3722334)))

(declare-fun b!6103452 () Bool)

(assert (=> b!6103452 (= e!3722334 tp_is_empty!41357)))

(declare-fun b!6103454 () Bool)

(declare-fun tp!1704043 () Bool)

(assert (=> b!6103454 (= e!3722334 tp!1704043)))

(declare-fun b!6103455 () Bool)

(declare-fun tp!1704044 () Bool)

(declare-fun tp!1704042 () Bool)

(assert (=> b!6103455 (= e!3722334 (and tp!1704044 tp!1704042))))

(declare-fun b!6103453 () Bool)

(declare-fun tp!1704041 () Bool)

(declare-fun tp!1704045 () Bool)

(assert (=> b!6103453 (= e!3722334 (and tp!1704041 tp!1704045))))

(assert (= (and b!6102870 (is-ElementMatch!16052 (regOne!32617 (regTwo!32616 r!7292)))) b!6103452))

(assert (= (and b!6102870 (is-Concat!24897 (regOne!32617 (regTwo!32616 r!7292)))) b!6103453))

(assert (= (and b!6102870 (is-Star!16052 (regOne!32617 (regTwo!32616 r!7292)))) b!6103454))

(assert (= (and b!6102870 (is-Union!16052 (regOne!32617 (regTwo!32616 r!7292)))) b!6103455))

(declare-fun e!3722335 () Bool)

(assert (=> b!6102870 (= tp!1703865 e!3722335)))

(declare-fun b!6103456 () Bool)

(assert (=> b!6103456 (= e!3722335 tp_is_empty!41357)))

(declare-fun b!6103458 () Bool)

(declare-fun tp!1704048 () Bool)

(assert (=> b!6103458 (= e!3722335 tp!1704048)))

(declare-fun b!6103459 () Bool)

(declare-fun tp!1704049 () Bool)

(declare-fun tp!1704047 () Bool)

(assert (=> b!6103459 (= e!3722335 (and tp!1704049 tp!1704047))))

(declare-fun b!6103457 () Bool)

(declare-fun tp!1704046 () Bool)

(declare-fun tp!1704050 () Bool)

(assert (=> b!6103457 (= e!3722335 (and tp!1704046 tp!1704050))))

(assert (= (and b!6102870 (is-ElementMatch!16052 (regTwo!32617 (regTwo!32616 r!7292)))) b!6103456))

(assert (= (and b!6102870 (is-Concat!24897 (regTwo!32617 (regTwo!32616 r!7292)))) b!6103457))

(assert (= (and b!6102870 (is-Star!16052 (regTwo!32617 (regTwo!32616 r!7292)))) b!6103458))

(assert (= (and b!6102870 (is-Union!16052 (regTwo!32617 (regTwo!32616 r!7292)))) b!6103459))

(declare-fun e!3722336 () Bool)

(assert (=> b!6102861 (= tp!1703856 e!3722336)))

(declare-fun b!6103460 () Bool)

(assert (=> b!6103460 (= e!3722336 tp_is_empty!41357)))

(declare-fun b!6103462 () Bool)

(declare-fun tp!1704053 () Bool)

(assert (=> b!6103462 (= e!3722336 tp!1704053)))

(declare-fun b!6103463 () Bool)

(declare-fun tp!1704054 () Bool)

(declare-fun tp!1704052 () Bool)

(assert (=> b!6103463 (= e!3722336 (and tp!1704054 tp!1704052))))

(declare-fun b!6103461 () Bool)

(declare-fun tp!1704051 () Bool)

(declare-fun tp!1704055 () Bool)

(assert (=> b!6103461 (= e!3722336 (and tp!1704051 tp!1704055))))

(assert (= (and b!6102861 (is-ElementMatch!16052 (reg!16381 (regTwo!32617 r!7292)))) b!6103460))

(assert (= (and b!6102861 (is-Concat!24897 (reg!16381 (regTwo!32617 r!7292)))) b!6103461))

(assert (= (and b!6102861 (is-Star!16052 (reg!16381 (regTwo!32617 r!7292)))) b!6103462))

(assert (= (and b!6102861 (is-Union!16052 (reg!16381 (regTwo!32617 r!7292)))) b!6103463))

(declare-fun e!3722337 () Bool)

(assert (=> b!6102819 (= tp!1703824 e!3722337)))

(declare-fun b!6103464 () Bool)

(assert (=> b!6103464 (= e!3722337 tp_is_empty!41357)))

(declare-fun b!6103466 () Bool)

(declare-fun tp!1704058 () Bool)

(assert (=> b!6103466 (= e!3722337 tp!1704058)))

(declare-fun b!6103467 () Bool)

(declare-fun tp!1704059 () Bool)

(declare-fun tp!1704057 () Bool)

(assert (=> b!6103467 (= e!3722337 (and tp!1704059 tp!1704057))))

(declare-fun b!6103465 () Bool)

(declare-fun tp!1704056 () Bool)

(declare-fun tp!1704060 () Bool)

(assert (=> b!6103465 (= e!3722337 (and tp!1704056 tp!1704060))))

(assert (= (and b!6102819 (is-ElementMatch!16052 (regOne!32617 (reg!16381 r!7292)))) b!6103464))

(assert (= (and b!6102819 (is-Concat!24897 (regOne!32617 (reg!16381 r!7292)))) b!6103465))

(assert (= (and b!6102819 (is-Star!16052 (regOne!32617 (reg!16381 r!7292)))) b!6103466))

(assert (= (and b!6102819 (is-Union!16052 (regOne!32617 (reg!16381 r!7292)))) b!6103467))

(declare-fun e!3722338 () Bool)

(assert (=> b!6102819 (= tp!1703822 e!3722338)))

(declare-fun b!6103468 () Bool)

(assert (=> b!6103468 (= e!3722338 tp_is_empty!41357)))

(declare-fun b!6103470 () Bool)

(declare-fun tp!1704063 () Bool)

(assert (=> b!6103470 (= e!3722338 tp!1704063)))

(declare-fun b!6103471 () Bool)

(declare-fun tp!1704064 () Bool)

(declare-fun tp!1704062 () Bool)

(assert (=> b!6103471 (= e!3722338 (and tp!1704064 tp!1704062))))

(declare-fun b!6103469 () Bool)

(declare-fun tp!1704061 () Bool)

(declare-fun tp!1704065 () Bool)

(assert (=> b!6103469 (= e!3722338 (and tp!1704061 tp!1704065))))

(assert (= (and b!6102819 (is-ElementMatch!16052 (regTwo!32617 (reg!16381 r!7292)))) b!6103468))

(assert (= (and b!6102819 (is-Concat!24897 (regTwo!32617 (reg!16381 r!7292)))) b!6103469))

(assert (= (and b!6102819 (is-Star!16052 (regTwo!32617 (reg!16381 r!7292)))) b!6103470))

(assert (= (and b!6102819 (is-Union!16052 (regTwo!32617 (reg!16381 r!7292)))) b!6103471))

(declare-fun e!3722339 () Bool)

(assert (=> b!6102869 (= tp!1703866 e!3722339)))

(declare-fun b!6103472 () Bool)

(assert (=> b!6103472 (= e!3722339 tp_is_empty!41357)))

(declare-fun b!6103474 () Bool)

(declare-fun tp!1704068 () Bool)

(assert (=> b!6103474 (= e!3722339 tp!1704068)))

(declare-fun b!6103475 () Bool)

(declare-fun tp!1704069 () Bool)

(declare-fun tp!1704067 () Bool)

(assert (=> b!6103475 (= e!3722339 (and tp!1704069 tp!1704067))))

(declare-fun b!6103473 () Bool)

(declare-fun tp!1704066 () Bool)

(declare-fun tp!1704070 () Bool)

(assert (=> b!6103473 (= e!3722339 (and tp!1704066 tp!1704070))))

(assert (= (and b!6102869 (is-ElementMatch!16052 (reg!16381 (regTwo!32616 r!7292)))) b!6103472))

(assert (= (and b!6102869 (is-Concat!24897 (reg!16381 (regTwo!32616 r!7292)))) b!6103473))

(assert (= (and b!6102869 (is-Star!16052 (reg!16381 (regTwo!32616 r!7292)))) b!6103474))

(assert (= (and b!6102869 (is-Union!16052 (reg!16381 (regTwo!32616 r!7292)))) b!6103475))

(declare-fun e!3722340 () Bool)

(assert (=> b!6102860 (= tp!1703854 e!3722340)))

(declare-fun b!6103476 () Bool)

(assert (=> b!6103476 (= e!3722340 tp_is_empty!41357)))

(declare-fun b!6103478 () Bool)

(declare-fun tp!1704073 () Bool)

(assert (=> b!6103478 (= e!3722340 tp!1704073)))

(declare-fun b!6103479 () Bool)

(declare-fun tp!1704074 () Bool)

(declare-fun tp!1704072 () Bool)

(assert (=> b!6103479 (= e!3722340 (and tp!1704074 tp!1704072))))

(declare-fun b!6103477 () Bool)

(declare-fun tp!1704071 () Bool)

(declare-fun tp!1704075 () Bool)

(assert (=> b!6103477 (= e!3722340 (and tp!1704071 tp!1704075))))

(assert (= (and b!6102860 (is-ElementMatch!16052 (regOne!32616 (regTwo!32617 r!7292)))) b!6103476))

(assert (= (and b!6102860 (is-Concat!24897 (regOne!32616 (regTwo!32617 r!7292)))) b!6103477))

(assert (= (and b!6102860 (is-Star!16052 (regOne!32616 (regTwo!32617 r!7292)))) b!6103478))

(assert (= (and b!6102860 (is-Union!16052 (regOne!32616 (regTwo!32617 r!7292)))) b!6103479))

(declare-fun e!3722341 () Bool)

(assert (=> b!6102860 (= tp!1703858 e!3722341)))

(declare-fun b!6103480 () Bool)

(assert (=> b!6103480 (= e!3722341 tp_is_empty!41357)))

(declare-fun b!6103482 () Bool)

(declare-fun tp!1704078 () Bool)

(assert (=> b!6103482 (= e!3722341 tp!1704078)))

(declare-fun b!6103483 () Bool)

(declare-fun tp!1704079 () Bool)

(declare-fun tp!1704077 () Bool)

(assert (=> b!6103483 (= e!3722341 (and tp!1704079 tp!1704077))))

(declare-fun b!6103481 () Bool)

(declare-fun tp!1704076 () Bool)

(declare-fun tp!1704080 () Bool)

(assert (=> b!6103481 (= e!3722341 (and tp!1704076 tp!1704080))))

(assert (= (and b!6102860 (is-ElementMatch!16052 (regTwo!32616 (regTwo!32617 r!7292)))) b!6103480))

(assert (= (and b!6102860 (is-Concat!24897 (regTwo!32616 (regTwo!32617 r!7292)))) b!6103481))

(assert (= (and b!6102860 (is-Star!16052 (regTwo!32616 (regTwo!32617 r!7292)))) b!6103482))

(assert (= (and b!6102860 (is-Union!16052 (regTwo!32616 (regTwo!32617 r!7292)))) b!6103483))

(declare-fun b_lambda!232525 () Bool)

(assert (= b_lambda!232521 (or d!1912938 b_lambda!232525)))

(declare-fun bs!1515570 () Bool)

(declare-fun d!1913112 () Bool)

(assert (= bs!1515570 (and d!1913112 d!1912938)))

(assert (=> bs!1515570 (= (dynLambda!25333 lambda!332492 (h!70779 (exprs!5936 setElem!41229))) (validRegex!7788 (h!70779 (exprs!5936 setElem!41229))))))

(declare-fun m!6955380 () Bool)

(assert (=> bs!1515570 m!6955380))

(assert (=> b!6103195 d!1913112))

(declare-fun b_lambda!232527 () Bool)

(assert (= b_lambda!232517 (or d!1912936 b_lambda!232527)))

(declare-fun bs!1515571 () Bool)

(declare-fun d!1913114 () Bool)

(assert (= bs!1515571 (and d!1913114 d!1912936)))

(assert (=> bs!1515571 (= (dynLambda!25333 lambda!332491 (h!70779 lt!2329398)) (validRegex!7788 (h!70779 lt!2329398)))))

(declare-fun m!6955382 () Bool)

(assert (=> bs!1515571 m!6955382))

(assert (=> b!6103173 d!1913114))

(declare-fun b_lambda!232529 () Bool)

(assert (= b_lambda!232515 (or d!1912896 b_lambda!232529)))

(declare-fun bs!1515572 () Bool)

(declare-fun d!1913116 () Bool)

(assert (= bs!1515572 (and d!1913116 d!1912896)))

(assert (=> bs!1515572 (= (dynLambda!25333 lambda!332459 (h!70779 (exprs!5936 (h!70780 zl!343)))) (validRegex!7788 (h!70779 (exprs!5936 (h!70780 zl!343)))))))

(declare-fun m!6955384 () Bool)

(assert (=> bs!1515572 m!6955384))

(assert (=> b!6103171 d!1913116))

(declare-fun b_lambda!232531 () Bool)

(assert (= b_lambda!232523 (or d!1912944 b_lambda!232531)))

(declare-fun bs!1515573 () Bool)

(declare-fun d!1913118 () Bool)

(assert (= bs!1515573 (and d!1913118 d!1912944)))

(assert (=> bs!1515573 (= (dynLambda!25333 lambda!332495 (h!70779 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (h!70780 zl!343))))))) (validRegex!7788 (h!70779 (exprs!5936 (Context!10873 (t!377906 (exprs!5936 (h!70780 zl!343))))))))))

(declare-fun m!6955386 () Bool)

(assert (=> bs!1515573 m!6955386))

(assert (=> b!6103212 d!1913118))

(declare-fun b_lambda!232533 () Bool)

(assert (= b_lambda!232513 (or d!1912894 b_lambda!232533)))

(declare-fun bs!1515574 () Bool)

(declare-fun d!1913120 () Bool)

(assert (= bs!1515574 (and d!1913120 d!1912894)))

(assert (=> bs!1515574 (= (dynLambda!25333 lambda!332456 (h!70779 (exprs!5936 (h!70780 zl!343)))) (validRegex!7788 (h!70779 (exprs!5936 (h!70780 zl!343)))))))

(assert (=> bs!1515574 m!6955384))

(assert (=> b!6103160 d!1913120))

(declare-fun b_lambda!232535 () Bool)

(assert (= b_lambda!232519 (or d!1912934 b_lambda!232535)))

(declare-fun bs!1515575 () Bool)

(declare-fun d!1913122 () Bool)

(assert (= bs!1515575 (and d!1913122 d!1912934)))

(assert (=> bs!1515575 (= (dynLambda!25333 lambda!332486 (h!70779 (unfocusZipperList!1473 zl!343))) (validRegex!7788 (h!70779 (unfocusZipperList!1473 zl!343))))))

(declare-fun m!6955388 () Bool)

(assert (=> bs!1515575 m!6955388))

(assert (=> b!6103184 d!1913122))

(push 1)

(assert (not b!6103375))

(assert tp_is_empty!41357)

(assert (not b!6103223))

(assert (not b!6103316))

(assert (not d!1913050))

(assert (not b!6103466))

(assert (not d!1913004))

(assert (not bm!504675))

(assert (not b!6103330))

(assert (not b!6103280))

(assert (not b!6103435))

(assert (not b!6103120))

(assert (not b!6103172))

(assert (not b!6103327))

(assert (not b!6103236))

(assert (not b!6103374))

(assert (not b!6103467))

(assert (not bs!1515570))

(assert (not b!6103087))

(assert (not d!1913074))

(assert (not bm!504705))

(assert (not b!6103473))

(assert (not b!6103370))

(assert (not b!6103274))

(assert (not b!6103203))

(assert (not b!6103394))

(assert (not d!1913058))

(assert (not b!6103317))

(assert (not b!6103170))

(assert (not d!1913060))

(assert (not d!1912978))

(assert (not b!6103099))

(assert (not b!6103202))

(assert (not b!6103389))

(assert (not d!1913080))

(assert (not b!6103231))

(assert (not b!6103438))

(assert (not b!6103421))

(assert (not b!6103066))

(assert (not b!6103404))

(assert (not bm!504706))

(assert (not d!1912986))

(assert (not b!6103482))

(assert (not b!6103122))

(assert (not bs!1515574))

(assert (not b!6103457))

(assert (not b!6103234))

(assert (not bm!504657))

(assert (not bm!504710))

(assert (not b!6103185))

(assert (not b!6103406))

(assert (not b!6103471))

(assert (not b!6103076))

(assert (not bm!504700))

(assert (not b!6103411))

(assert (not b!6103450))

(assert (not b!6103414))

(assert (not bm!504670))

(assert (not b!6103458))

(assert (not b!6103309))

(assert (not b!6103077))

(assert (not b!6103428))

(assert (not bs!1515575))

(assert (not bm!504697))

(assert (not b!6103481))

(assert (not b!6103418))

(assert (not b!6103161))

(assert (not b!6103405))

(assert (not b!6103396))

(assert (not b!6103384))

(assert (not b!6103148))

(assert (not b!6103430))

(assert (not b!6103477))

(assert (not b_lambda!232533))

(assert (not b!6103086))

(assert (not d!1913094))

(assert (not b!6103372))

(assert (not b!6103392))

(assert (not b!6103434))

(assert (not b!6103429))

(assert (not bm!504707))

(assert (not bm!504676))

(assert (not b!6103096))

(assert (not b!6103402))

(assert (not d!1913076))

(assert (not b!6103300))

(assert (not b!6103474))

(assert (not d!1913096))

(assert (not bm!504708))

(assert (not d!1913054))

(assert (not bm!504660))

(assert (not b!6103408))

(assert (not b!6103415))

(assert (not d!1913092))

(assert (not b!6103227))

(assert (not b!6103235))

(assert (not b!6103106))

(assert (not b!6103326))

(assert (not b!6103459))

(assert (not b!6103422))

(assert (not b!6103328))

(assert (not b!6103121))

(assert (not b!6103376))

(assert (not b!6103085))

(assert (not b_lambda!232535))

(assert (not b!6103437))

(assert (not b!6103276))

(assert (not b!6103417))

(assert (not b!6103108))

(assert (not b!6103331))

(assert (not bm!504678))

(assert (not b!6103427))

(assert (not b!6103378))

(assert (not b!6103107))

(assert (not b!6103400))

(assert (not d!1913078))

(assert (not bm!504681))

(assert (not bm!504703))

(assert (not b!6103347))

(assert (not b!6103371))

(assert (not b!6103367))

(assert (not b!6103424))

(assert (not d!1913086))

(assert (not d!1913000))

(assert (not b!6103092))

(assert (not b!6103098))

(assert (not bm!504671))

(assert (not b!6103183))

(assert (not b!6103124))

(assert (not b!6103397))

(assert (not b!6103348))

(assert (not b!6103423))

(assert (not setNonEmpty!41239))

(assert (not b!6103054))

(assert (not b!6103449))

(assert (not b_lambda!232531))

(assert (not d!1913048))

(assert (not b!6103299))

(assert (not b!6103461))

(assert (not b!6103213))

(assert (not b!6103320))

(assert (not bs!1515572))

(assert (not b!6103382))

(assert (not b_lambda!232529))

(assert (not b!6103431))

(assert (not b!6103451))

(assert (not b!6103325))

(assert (not b!6103483))

(assert (not bm!504684))

(assert (not b!6103302))

(assert (not b!6103386))

(assert (not b!6103439))

(assert (not b!6103465))

(assert (not b!6103308))

(assert (not b!6103475))

(assert (not b!6103398))

(assert (not b_lambda!232525))

(assert (not b!6103479))

(assert (not b!6103443))

(assert (not b!6103194))

(assert (not b!6103318))

(assert (not b!6103324))

(assert (not bm!504711))

(assert (not bm!504661))

(assert (not b!6103381))

(assert (not b!6103462))

(assert (not b!6103272))

(assert (not d!1913030))

(assert (not b!6103390))

(assert (not b!6103290))

(assert (not b!6103426))

(assert (not d!1912992))

(assert (not b!6103278))

(assert (not b!6103112))

(assert (not bm!504683))

(assert (not d!1912998))

(assert (not b!6103401))

(assert (not b!6103224))

(assert (not b!6103277))

(assert (not b!6103453))

(assert (not b!6103478))

(assert (not bm!504679))

(assert (not b!6103094))

(assert (not d!1913084))

(assert (not b!6103361))

(assert (not b!6103455))

(assert (not bm!504656))

(assert (not b!6103377))

(assert (not b!6103410))

(assert (not b!6103062))

(assert (not bs!1515573))

(assert (not b!6103388))

(assert (not d!1913006))

(assert (not b!6103298))

(assert (not b!6103368))

(assert (not b!6103064))

(assert (not b!6103446))

(assert (not b!6103419))

(assert (not d!1912980))

(assert (not d!1913002))

(assert (not b!6103322))

(assert (not b!6103463))

(assert (not b!6103447))

(assert (not bm!504654))

(assert (not b!6103341))

(assert (not bm!504658))

(assert (not b!6103442))

(assert (not b!6103196))

(assert (not d!1913066))

(assert (not bm!504702))

(assert (not b!6103237))

(assert (not b!6103445))

(assert (not bs!1515571))

(assert (not b!6103469))

(assert (not b!6103275))

(assert (not b!6103380))

(assert (not b!6103055))

(assert (not b!6103238))

(assert (not b!6103393))

(assert (not b!6103291))

(assert (not b!6103433))

(assert (not b!6103174))

(assert (not b!6103078))

(assert (not d!1913070))

(assert (not b!6103454))

(assert (not d!1913046))

(assert (not b!6103110))

(assert (not bm!504682))

(assert (not b!6103228))

(assert (not b!6103441))

(assert (not b!6103413))

(assert (not b!6103063))

(assert (not b!6103385))

(assert (not b!6103113))

(assert (not b!6103470))

(assert (not bm!504659))

(assert (not b_lambda!232527))

(assert (not b!6103409))

(assert (not b!6103089))

(assert (not d!1913056))

(assert (not b!6103262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

