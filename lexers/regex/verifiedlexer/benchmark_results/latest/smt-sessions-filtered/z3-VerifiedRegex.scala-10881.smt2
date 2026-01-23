; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562354 () Bool)

(assert start!562354)

(declare-fun b!5336707 () Bool)

(assert (=> b!5336707 true))

(assert (=> b!5336707 true))

(declare-fun lambda!273186 () Int)

(declare-fun lambda!273185 () Int)

(assert (=> b!5336707 (not (= lambda!273186 lambda!273185))))

(assert (=> b!5336707 true))

(assert (=> b!5336707 true))

(declare-fun b!5336701 () Bool)

(assert (=> b!5336701 true))

(declare-fun bs!1237624 () Bool)

(declare-fun b!5336717 () Bool)

(assert (= bs!1237624 (and b!5336717 b!5336707)))

(declare-datatypes ((C!30288 0))(
  ( (C!30289 (val!24846 Int)) )
))
(declare-datatypes ((Regex!15009 0))(
  ( (ElementMatch!15009 (c!928407 C!30288)) (Concat!23854 (regOne!30530 Regex!15009) (regTwo!30530 Regex!15009)) (EmptyExpr!15009) (Star!15009 (reg!15338 Regex!15009)) (EmptyLang!15009) (Union!15009 (regOne!30531 Regex!15009) (regTwo!30531 Regex!15009)) )
))
(declare-fun r!7292 () Regex!15009)

(declare-fun lambda!273188 () Int)

(declare-fun lt!2176307 () Regex!15009)

(assert (=> bs!1237624 (= (and (= (regOne!30530 (regOne!30530 r!7292)) (regOne!30530 r!7292)) (= lt!2176307 (regTwo!30530 r!7292))) (= lambda!273188 lambda!273185))))

(assert (=> bs!1237624 (not (= lambda!273188 lambda!273186))))

(assert (=> b!5336717 true))

(assert (=> b!5336717 true))

(assert (=> b!5336717 true))

(declare-fun lambda!273189 () Int)

(assert (=> bs!1237624 (not (= lambda!273189 lambda!273185))))

(assert (=> bs!1237624 (= (and (= (regOne!30530 (regOne!30530 r!7292)) (regOne!30530 r!7292)) (= lt!2176307 (regTwo!30530 r!7292))) (= lambda!273189 lambda!273186))))

(assert (=> b!5336717 (not (= lambda!273189 lambda!273188))))

(assert (=> b!5336717 true))

(assert (=> b!5336717 true))

(assert (=> b!5336717 true))

(declare-fun lt!2176336 () Regex!15009)

(declare-fun lambda!273190 () Int)

(assert (=> bs!1237624 (= (and (= (regTwo!30530 (regOne!30530 r!7292)) (regOne!30530 r!7292)) (= lt!2176336 (regTwo!30530 r!7292))) (= lambda!273190 lambda!273185))))

(assert (=> bs!1237624 (not (= lambda!273190 lambda!273186))))

(assert (=> b!5336717 (= (and (= (regTwo!30530 (regOne!30530 r!7292)) (regOne!30530 (regOne!30530 r!7292))) (= lt!2176336 lt!2176307)) (= lambda!273190 lambda!273188))))

(assert (=> b!5336717 (not (= lambda!273190 lambda!273189))))

(assert (=> b!5336717 true))

(assert (=> b!5336717 true))

(assert (=> b!5336717 true))

(declare-fun lambda!273191 () Int)

(assert (=> b!5336717 (not (= lambda!273191 lambda!273190))))

(assert (=> bs!1237624 (not (= lambda!273191 lambda!273185))))

(assert (=> b!5336717 (not (= lambda!273191 lambda!273188))))

(assert (=> bs!1237624 (= (and (= (regTwo!30530 (regOne!30530 r!7292)) (regOne!30530 r!7292)) (= lt!2176336 (regTwo!30530 r!7292))) (= lambda!273191 lambda!273186))))

(assert (=> b!5336717 (= (and (= (regTwo!30530 (regOne!30530 r!7292)) (regOne!30530 (regOne!30530 r!7292))) (= lt!2176336 lt!2176307)) (= lambda!273191 lambda!273189))))

(assert (=> b!5336717 true))

(assert (=> b!5336717 true))

(assert (=> b!5336717 true))

(declare-fun b!5336692 () Bool)

(declare-fun e!3314169 () Bool)

(declare-fun tp!1484450 () Bool)

(declare-fun tp!1484449 () Bool)

(assert (=> b!5336692 (= e!3314169 (and tp!1484450 tp!1484449))))

(declare-fun b!5336693 () Bool)

(declare-fun e!3314182 () Bool)

(declare-fun tp!1484448 () Bool)

(assert (=> b!5336693 (= e!3314182 tp!1484448)))

(declare-fun b!5336694 () Bool)

(declare-fun e!3314174 () Bool)

(declare-fun e!3314179 () Bool)

(assert (=> b!5336694 (= e!3314174 e!3314179)))

(declare-fun res!2263684 () Bool)

(assert (=> b!5336694 (=> res!2263684 e!3314179)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61326 0))(
  ( (Nil!61202) (Cons!61202 (h!67650 Regex!15009) (t!374543 List!61326)) )
))
(declare-datatypes ((Context!8786 0))(
  ( (Context!8787 (exprs!4893 List!61326)) )
))
(declare-fun lt!2176313 () (InoxSet Context!8786))

(declare-fun lt!2176310 () (InoxSet Context!8786))

(assert (=> b!5336694 (= res!2263684 (not (= lt!2176313 lt!2176310)))))

(declare-datatypes ((List!61327 0))(
  ( (Nil!61203) (Cons!61203 (h!67651 C!30288) (t!374544 List!61327)) )
))
(declare-fun s!2326 () List!61327)

(declare-fun lt!2176333 () (InoxSet Context!8786))

(declare-fun lambda!273187 () Int)

(declare-fun lt!2176337 () Context!8786)

(declare-fun flatMap!736 ((InoxSet Context!8786) Int) (InoxSet Context!8786))

(declare-fun derivationStepZipperUp!381 (Context!8786 C!30288) (InoxSet Context!8786))

(assert (=> b!5336694 (= (flatMap!736 lt!2176333 lambda!273187) (derivationStepZipperUp!381 lt!2176337 (h!67651 s!2326)))))

(declare-datatypes ((Unit!153554 0))(
  ( (Unit!153555) )
))
(declare-fun lt!2176316 () Unit!153554)

(declare-fun lemmaFlatMapOnSingletonSet!268 ((InoxSet Context!8786) Context!8786 Int) Unit!153554)

(assert (=> b!5336694 (= lt!2176316 (lemmaFlatMapOnSingletonSet!268 lt!2176333 lt!2176337 lambda!273187))))

(declare-fun lt!2176329 () (InoxSet Context!8786))

(assert (=> b!5336694 (= lt!2176329 (derivationStepZipperUp!381 lt!2176337 (h!67651 s!2326)))))

(declare-fun derivationStepZipper!1250 ((InoxSet Context!8786) C!30288) (InoxSet Context!8786))

(assert (=> b!5336694 (= lt!2176313 (derivationStepZipper!1250 lt!2176333 (h!67651 s!2326)))))

(assert (=> b!5336694 (= lt!2176333 (store ((as const (Array Context!8786 Bool)) false) lt!2176337 true))))

(declare-fun lt!2176338 () List!61326)

(assert (=> b!5336694 (= lt!2176337 (Context!8787 lt!2176338))))

(declare-fun lt!2176308 () List!61326)

(assert (=> b!5336694 (= lt!2176338 (Cons!61202 (regOne!30530 (regOne!30530 r!7292)) lt!2176308))))

(declare-fun setIsEmpty!34423 () Bool)

(declare-fun setRes!34423 () Bool)

(assert (=> setIsEmpty!34423 setRes!34423))

(declare-fun b!5336695 () Bool)

(declare-fun res!2263668 () Bool)

(declare-fun e!3314176 () Bool)

(assert (=> b!5336695 (=> res!2263668 e!3314176)))

(declare-datatypes ((List!61328 0))(
  ( (Nil!61204) (Cons!61204 (h!67652 Context!8786) (t!374545 List!61328)) )
))
(declare-fun zl!343 () List!61328)

(declare-fun generalisedConcat!678 (List!61326) Regex!15009)

(assert (=> b!5336695 (= res!2263668 (not (= r!7292 (generalisedConcat!678 (exprs!4893 (h!67652 zl!343))))))))

(declare-fun b!5336697 () Bool)

(declare-fun e!3314173 () Bool)

(declare-fun lt!2176312 () (InoxSet Context!8786))

(declare-fun matchZipper!1253 ((InoxSet Context!8786) List!61327) Bool)

(assert (=> b!5336697 (= e!3314173 (matchZipper!1253 lt!2176312 (t!374544 s!2326)))))

(declare-fun b!5336698 () Bool)

(declare-fun e!3314181 () Bool)

(declare-fun tp!1484452 () Bool)

(declare-fun inv!80769 (Context!8786) Bool)

(assert (=> b!5336698 (= e!3314181 (and (inv!80769 (h!67652 zl!343)) e!3314182 tp!1484452))))

(declare-fun b!5336699 () Bool)

(declare-fun tp_is_empty!39271 () Bool)

(assert (=> b!5336699 (= e!3314169 tp_is_empty!39271)))

(declare-fun b!5336700 () Bool)

(declare-fun res!2263677 () Bool)

(assert (=> b!5336700 (=> res!2263677 e!3314176)))

(declare-fun generalisedUnion!938 (List!61326) Regex!15009)

(declare-fun unfocusZipperList!451 (List!61328) List!61326)

(assert (=> b!5336700 (= res!2263677 (not (= r!7292 (generalisedUnion!938 (unfocusZipperList!451 zl!343)))))))

(declare-fun e!3314178 () Bool)

(declare-fun e!3314168 () Bool)

(assert (=> b!5336701 (= e!3314178 e!3314168)))

(declare-fun res!2263675 () Bool)

(assert (=> b!5336701 (=> res!2263675 e!3314168)))

(get-info :version)

(assert (=> b!5336701 (= res!2263675 (or (and ((_ is ElementMatch!15009) (regOne!30530 r!7292)) (= (c!928407 (regOne!30530 r!7292)) (h!67651 s!2326))) ((_ is Union!15009) (regOne!30530 r!7292))))))

(declare-fun lt!2176319 () Unit!153554)

(declare-fun e!3314171 () Unit!153554)

(assert (=> b!5336701 (= lt!2176319 e!3314171)))

(declare-fun c!928406 () Bool)

(declare-fun nullable!5178 (Regex!15009) Bool)

(assert (=> b!5336701 (= c!928406 (nullable!5178 (h!67650 (exprs!4893 (h!67652 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8786))

(assert (=> b!5336701 (= (flatMap!736 z!1189 lambda!273187) (derivationStepZipperUp!381 (h!67652 zl!343) (h!67651 s!2326)))))

(declare-fun lt!2176306 () Unit!153554)

(assert (=> b!5336701 (= lt!2176306 (lemmaFlatMapOnSingletonSet!268 z!1189 (h!67652 zl!343) lambda!273187))))

(declare-fun lt!2176327 () Context!8786)

(assert (=> b!5336701 (= lt!2176312 (derivationStepZipperUp!381 lt!2176327 (h!67651 s!2326)))))

(declare-fun lt!2176318 () (InoxSet Context!8786))

(declare-fun derivationStepZipperDown!457 (Regex!15009 Context!8786 C!30288) (InoxSet Context!8786))

(assert (=> b!5336701 (= lt!2176318 (derivationStepZipperDown!457 (h!67650 (exprs!4893 (h!67652 zl!343))) lt!2176327 (h!67651 s!2326)))))

(assert (=> b!5336701 (= lt!2176327 (Context!8787 (t!374543 (exprs!4893 (h!67652 zl!343)))))))

(declare-fun lt!2176326 () (InoxSet Context!8786))

(assert (=> b!5336701 (= lt!2176326 (derivationStepZipperUp!381 (Context!8787 (Cons!61202 (h!67650 (exprs!4893 (h!67652 zl!343))) (t!374543 (exprs!4893 (h!67652 zl!343))))) (h!67651 s!2326)))))

(declare-fun b!5336702 () Bool)

(declare-fun res!2263678 () Bool)

(declare-fun e!3314177 () Bool)

(assert (=> b!5336702 (=> res!2263678 e!3314177)))

(declare-fun lt!2176324 () List!61328)

(declare-fun zipperDepth!118 (List!61328) Int)

(assert (=> b!5336702 (= res!2263678 (> (zipperDepth!118 lt!2176324) (zipperDepth!118 zl!343)))))

(declare-fun b!5336703 () Bool)

(declare-fun e!3314172 () Bool)

(declare-fun tp!1484453 () Bool)

(assert (=> b!5336703 (= e!3314172 (and tp_is_empty!39271 tp!1484453))))

(declare-fun b!5336704 () Bool)

(declare-fun e!3314180 () Bool)

(assert (=> b!5336704 (= e!3314180 e!3314174)))

(declare-fun res!2263691 () Bool)

(assert (=> b!5336704 (=> res!2263691 e!3314174)))

(declare-fun lt!2176317 () Bool)

(assert (=> b!5336704 (= res!2263691 (not (= lt!2176317 (matchZipper!1253 lt!2176310 (t!374544 s!2326)))))))

(assert (=> b!5336704 (= lt!2176317 (matchZipper!1253 lt!2176318 (t!374544 s!2326)))))

(declare-fun b!5336705 () Bool)

(declare-fun Unit!153556 () Unit!153554)

(assert (=> b!5336705 (= e!3314171 Unit!153556)))

(declare-fun lt!2176305 () Unit!153554)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!246 ((InoxSet Context!8786) (InoxSet Context!8786) List!61327) Unit!153554)

(assert (=> b!5336705 (= lt!2176305 (lemmaZipperConcatMatchesSameAsBothZippers!246 lt!2176318 lt!2176312 (t!374544 s!2326)))))

(declare-fun res!2263680 () Bool)

(assert (=> b!5336705 (= res!2263680 (matchZipper!1253 lt!2176318 (t!374544 s!2326)))))

(assert (=> b!5336705 (=> res!2263680 e!3314173)))

(assert (=> b!5336705 (= (matchZipper!1253 ((_ map or) lt!2176318 lt!2176312) (t!374544 s!2326)) e!3314173)))

(declare-fun b!5336706 () Bool)

(declare-fun res!2263685 () Bool)

(assert (=> b!5336706 (=> res!2263685 e!3314178)))

(declare-fun isEmpty!33175 (List!61326) Bool)

(assert (=> b!5336706 (= res!2263685 (isEmpty!33175 (t!374543 (exprs!4893 (h!67652 zl!343)))))))

(assert (=> b!5336707 (= e!3314176 e!3314178)))

(declare-fun res!2263671 () Bool)

(assert (=> b!5336707 (=> res!2263671 e!3314178)))

(declare-fun lt!2176331 () Bool)

(declare-fun lt!2176332 () Bool)

(assert (=> b!5336707 (= res!2263671 (or (not (= lt!2176331 lt!2176332)) ((_ is Nil!61203) s!2326)))))

(declare-fun Exists!2190 (Int) Bool)

(assert (=> b!5336707 (= (Exists!2190 lambda!273185) (Exists!2190 lambda!273186))))

(declare-fun lt!2176330 () Unit!153554)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!844 (Regex!15009 Regex!15009 List!61327) Unit!153554)

(assert (=> b!5336707 (= lt!2176330 (lemmaExistCutMatchRandMatchRSpecEquivalent!844 (regOne!30530 r!7292) (regTwo!30530 r!7292) s!2326))))

(assert (=> b!5336707 (= lt!2176332 (Exists!2190 lambda!273185))))

(declare-datatypes ((tuple2!64416 0))(
  ( (tuple2!64417 (_1!35511 List!61327) (_2!35511 List!61327)) )
))
(declare-datatypes ((Option!15120 0))(
  ( (None!15119) (Some!15119 (v!51148 tuple2!64416)) )
))
(declare-fun isDefined!11823 (Option!15120) Bool)

(declare-fun findConcatSeparation!1534 (Regex!15009 Regex!15009 List!61327 List!61327 List!61327) Option!15120)

(assert (=> b!5336707 (= lt!2176332 (isDefined!11823 (findConcatSeparation!1534 (regOne!30530 r!7292) (regTwo!30530 r!7292) Nil!61203 s!2326 s!2326)))))

(declare-fun lt!2176309 () Unit!153554)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1298 (Regex!15009 Regex!15009 List!61327) Unit!153554)

(assert (=> b!5336707 (= lt!2176309 (lemmaFindConcatSeparationEquivalentToExists!1298 (regOne!30530 r!7292) (regTwo!30530 r!7292) s!2326))))

(declare-fun b!5336708 () Bool)

(declare-fun e!3314175 () Bool)

(assert (=> b!5336708 (= e!3314175 (not e!3314176))))

(declare-fun res!2263687 () Bool)

(assert (=> b!5336708 (=> res!2263687 e!3314176)))

(assert (=> b!5336708 (= res!2263687 (not ((_ is Cons!61204) zl!343)))))

(declare-fun matchRSpec!2112 (Regex!15009 List!61327) Bool)

(assert (=> b!5336708 (= lt!2176331 (matchRSpec!2112 r!7292 s!2326))))

(declare-fun matchR!7194 (Regex!15009 List!61327) Bool)

(assert (=> b!5336708 (= lt!2176331 (matchR!7194 r!7292 s!2326))))

(declare-fun lt!2176311 () Unit!153554)

(declare-fun mainMatchTheorem!2112 (Regex!15009 List!61327) Unit!153554)

(assert (=> b!5336708 (= lt!2176311 (mainMatchTheorem!2112 r!7292 s!2326))))

(declare-fun b!5336709 () Bool)

(declare-fun res!2263672 () Bool)

(assert (=> b!5336709 (=> (not res!2263672) (not e!3314175))))

(declare-fun toList!8793 ((InoxSet Context!8786)) List!61328)

(assert (=> b!5336709 (= res!2263672 (= (toList!8793 z!1189) zl!343))))

(declare-fun b!5336710 () Bool)

(declare-fun res!2263679 () Bool)

(assert (=> b!5336710 (=> res!2263679 e!3314176)))

(assert (=> b!5336710 (= res!2263679 (or ((_ is EmptyExpr!15009) r!7292) ((_ is EmptyLang!15009) r!7292) ((_ is ElementMatch!15009) r!7292) ((_ is Union!15009) r!7292) (not ((_ is Concat!23854) r!7292))))))

(declare-fun b!5336711 () Bool)

(declare-fun res!2263689 () Bool)

(assert (=> b!5336711 (=> res!2263689 e!3314176)))

(assert (=> b!5336711 (= res!2263689 (not ((_ is Cons!61202) (exprs!4893 (h!67652 zl!343)))))))

(declare-fun b!5336712 () Bool)

(declare-fun Unit!153557 () Unit!153554)

(assert (=> b!5336712 (= e!3314171 Unit!153557)))

(declare-fun b!5336713 () Bool)

(declare-fun res!2263681 () Bool)

(assert (=> b!5336713 (=> res!2263681 e!3314179)))

(assert (=> b!5336713 (= res!2263681 (not (= lt!2176317 (matchZipper!1253 lt!2176313 (t!374544 s!2326)))))))

(declare-fun b!5336714 () Bool)

(assert (=> b!5336714 (= e!3314179 e!3314177)))

(declare-fun res!2263683 () Bool)

(assert (=> b!5336714 (=> res!2263683 e!3314177)))

(declare-fun zipperDepthTotal!162 (List!61328) Int)

(assert (=> b!5336714 (= res!2263683 (>= (zipperDepthTotal!162 lt!2176324) (zipperDepthTotal!162 zl!343)))))

(assert (=> b!5336714 (= lt!2176324 (Cons!61204 lt!2176337 Nil!61204))))

(declare-fun b!5336715 () Bool)

(assert (=> b!5336715 (= e!3314168 e!3314180)))

(declare-fun res!2263690 () Bool)

(assert (=> b!5336715 (=> res!2263690 e!3314180)))

(assert (=> b!5336715 (= res!2263690 (not (= lt!2176318 lt!2176310)))))

(assert (=> b!5336715 (= lt!2176310 (derivationStepZipperDown!457 (regOne!30530 (regOne!30530 r!7292)) (Context!8787 lt!2176308) (h!67651 s!2326)))))

(assert (=> b!5336715 (= lt!2176308 (Cons!61202 (regTwo!30530 (regOne!30530 r!7292)) (t!374543 (exprs!4893 (h!67652 zl!343)))))))

(declare-fun b!5336716 () Bool)

(declare-fun e!3314167 () Bool)

(assert (=> b!5336716 (= e!3314167 (nullable!5178 (regOne!30530 (regOne!30530 r!7292))))))

(assert (=> b!5336717 (= e!3314177 true)))

(declare-fun lt!2176335 () Bool)

(assert (=> b!5336717 (= lt!2176335 (matchZipper!1253 z!1189 s!2326))))

(assert (=> b!5336717 (= (Exists!2190 lambda!273190) (Exists!2190 lambda!273191))))

(declare-fun lt!2176315 () Unit!153554)

(assert (=> b!5336717 (= lt!2176315 (lemmaExistCutMatchRandMatchRSpecEquivalent!844 (regTwo!30530 (regOne!30530 r!7292)) lt!2176336 s!2326))))

(assert (=> b!5336717 (= (isDefined!11823 (findConcatSeparation!1534 (regTwo!30530 (regOne!30530 r!7292)) lt!2176336 Nil!61203 s!2326 s!2326)) (Exists!2190 lambda!273190))))

(declare-fun lt!2176323 () Unit!153554)

(assert (=> b!5336717 (= lt!2176323 (lemmaFindConcatSeparationEquivalentToExists!1298 (regTwo!30530 (regOne!30530 r!7292)) lt!2176336 s!2326))))

(assert (=> b!5336717 (= lt!2176336 (generalisedConcat!678 (t!374543 (exprs!4893 (h!67652 zl!343)))))))

(assert (=> b!5336717 (= (matchR!7194 lt!2176307 s!2326) (matchRSpec!2112 lt!2176307 s!2326))))

(declare-fun lt!2176328 () Unit!153554)

(assert (=> b!5336717 (= lt!2176328 (mainMatchTheorem!2112 lt!2176307 s!2326))))

(assert (=> b!5336717 (= (Exists!2190 lambda!273188) (Exists!2190 lambda!273189))))

(declare-fun lt!2176320 () Unit!153554)

(assert (=> b!5336717 (= lt!2176320 (lemmaExistCutMatchRandMatchRSpecEquivalent!844 (regOne!30530 (regOne!30530 r!7292)) lt!2176307 s!2326))))

(assert (=> b!5336717 (= (isDefined!11823 (findConcatSeparation!1534 (regOne!30530 (regOne!30530 r!7292)) lt!2176307 Nil!61203 s!2326 s!2326)) (Exists!2190 lambda!273188))))

(declare-fun lt!2176322 () Unit!153554)

(assert (=> b!5336717 (= lt!2176322 (lemmaFindConcatSeparationEquivalentToExists!1298 (regOne!30530 (regOne!30530 r!7292)) lt!2176307 s!2326))))

(assert (=> b!5336717 (= lt!2176307 (generalisedConcat!678 lt!2176308))))

(declare-fun lt!2176334 () Bool)

(declare-fun lt!2176321 () Regex!15009)

(assert (=> b!5336717 (= lt!2176334 (matchRSpec!2112 lt!2176321 s!2326))))

(declare-fun lt!2176314 () Unit!153554)

(assert (=> b!5336717 (= lt!2176314 (mainMatchTheorem!2112 lt!2176321 s!2326))))

(assert (=> b!5336717 (= lt!2176334 (matchZipper!1253 lt!2176333 s!2326))))

(assert (=> b!5336717 (= lt!2176334 (matchR!7194 lt!2176321 s!2326))))

(declare-fun lt!2176325 () Unit!153554)

(declare-fun theoremZipperRegexEquiv!407 ((InoxSet Context!8786) List!61328 Regex!15009 List!61327) Unit!153554)

(assert (=> b!5336717 (= lt!2176325 (theoremZipperRegexEquiv!407 lt!2176333 lt!2176324 lt!2176321 s!2326))))

(assert (=> b!5336717 (= lt!2176321 (generalisedConcat!678 lt!2176338))))

(declare-fun b!5336718 () Bool)

(declare-fun tp!1484457 () Bool)

(assert (=> b!5336718 (= e!3314169 tp!1484457)))

(declare-fun b!5336719 () Bool)

(declare-fun res!2263686 () Bool)

(assert (=> b!5336719 (=> res!2263686 e!3314176)))

(declare-fun isEmpty!33176 (List!61328) Bool)

(assert (=> b!5336719 (= res!2263686 (not (isEmpty!33176 (t!374545 zl!343))))))

(declare-fun res!2263673 () Bool)

(assert (=> start!562354 (=> (not res!2263673) (not e!3314175))))

(declare-fun validRegex!6745 (Regex!15009) Bool)

(assert (=> start!562354 (= res!2263673 (validRegex!6745 r!7292))))

(assert (=> start!562354 e!3314175))

(assert (=> start!562354 e!3314169))

(declare-fun condSetEmpty!34423 () Bool)

(assert (=> start!562354 (= condSetEmpty!34423 (= z!1189 ((as const (Array Context!8786 Bool)) false)))))

(assert (=> start!562354 setRes!34423))

(assert (=> start!562354 e!3314181))

(assert (=> start!562354 e!3314172))

(declare-fun b!5336696 () Bool)

(declare-fun res!2263669 () Bool)

(assert (=> b!5336696 (=> res!2263669 e!3314168)))

(assert (=> b!5336696 (= res!2263669 e!3314167)))

(declare-fun res!2263670 () Bool)

(assert (=> b!5336696 (=> (not res!2263670) (not e!3314167))))

(assert (=> b!5336696 (= res!2263670 ((_ is Concat!23854) (regOne!30530 r!7292)))))

(declare-fun b!5336720 () Bool)

(declare-fun res!2263688 () Bool)

(assert (=> b!5336720 (=> res!2263688 e!3314179)))

(assert (=> b!5336720 (= res!2263688 (not (= (exprs!4893 (h!67652 zl!343)) (Cons!61202 (Concat!23854 (regOne!30530 (regOne!30530 r!7292)) (regTwo!30530 (regOne!30530 r!7292))) (t!374543 (exprs!4893 (h!67652 zl!343)))))))))

(declare-fun b!5336721 () Bool)

(declare-fun res!2263682 () Bool)

(assert (=> b!5336721 (=> (not res!2263682) (not e!3314175))))

(declare-fun unfocusZipper!751 (List!61328) Regex!15009)

(assert (=> b!5336721 (= res!2263682 (= r!7292 (unfocusZipper!751 zl!343)))))

(declare-fun b!5336722 () Bool)

(declare-fun tp!1484454 () Bool)

(declare-fun tp!1484455 () Bool)

(assert (=> b!5336722 (= e!3314169 (and tp!1484454 tp!1484455))))

(declare-fun b!5336723 () Bool)

(declare-fun res!2263676 () Bool)

(assert (=> b!5336723 (=> res!2263676 e!3314168)))

(assert (=> b!5336723 (= res!2263676 (not ((_ is Concat!23854) (regOne!30530 r!7292))))))

(declare-fun b!5336724 () Bool)

(declare-fun e!3314170 () Bool)

(declare-fun tp!1484456 () Bool)

(assert (=> b!5336724 (= e!3314170 tp!1484456)))

(declare-fun setNonEmpty!34423 () Bool)

(declare-fun setElem!34423 () Context!8786)

(declare-fun tp!1484451 () Bool)

(assert (=> setNonEmpty!34423 (= setRes!34423 (and tp!1484451 (inv!80769 setElem!34423) e!3314170))))

(declare-fun setRest!34423 () (InoxSet Context!8786))

(assert (=> setNonEmpty!34423 (= z!1189 ((_ map or) (store ((as const (Array Context!8786 Bool)) false) setElem!34423 true) setRest!34423))))

(declare-fun b!5336725 () Bool)

(declare-fun res!2263674 () Bool)

(assert (=> b!5336725 (=> res!2263674 e!3314179)))

(declare-fun contextDepthTotal!142 (Context!8786) Int)

(assert (=> b!5336725 (= res!2263674 (>= (contextDepthTotal!142 lt!2176337) (contextDepthTotal!142 (h!67652 zl!343))))))

(assert (= (and start!562354 res!2263673) b!5336709))

(assert (= (and b!5336709 res!2263672) b!5336721))

(assert (= (and b!5336721 res!2263682) b!5336708))

(assert (= (and b!5336708 (not res!2263687)) b!5336719))

(assert (= (and b!5336719 (not res!2263686)) b!5336695))

(assert (= (and b!5336695 (not res!2263668)) b!5336711))

(assert (= (and b!5336711 (not res!2263689)) b!5336700))

(assert (= (and b!5336700 (not res!2263677)) b!5336710))

(assert (= (and b!5336710 (not res!2263679)) b!5336707))

(assert (= (and b!5336707 (not res!2263671)) b!5336706))

(assert (= (and b!5336706 (not res!2263685)) b!5336701))

(assert (= (and b!5336701 c!928406) b!5336705))

(assert (= (and b!5336701 (not c!928406)) b!5336712))

(assert (= (and b!5336705 (not res!2263680)) b!5336697))

(assert (= (and b!5336701 (not res!2263675)) b!5336696))

(assert (= (and b!5336696 res!2263670) b!5336716))

(assert (= (and b!5336696 (not res!2263669)) b!5336723))

(assert (= (and b!5336723 (not res!2263676)) b!5336715))

(assert (= (and b!5336715 (not res!2263690)) b!5336704))

(assert (= (and b!5336704 (not res!2263691)) b!5336694))

(assert (= (and b!5336694 (not res!2263684)) b!5336713))

(assert (= (and b!5336713 (not res!2263681)) b!5336720))

(assert (= (and b!5336720 (not res!2263688)) b!5336725))

(assert (= (and b!5336725 (not res!2263674)) b!5336714))

(assert (= (and b!5336714 (not res!2263683)) b!5336702))

(assert (= (and b!5336702 (not res!2263678)) b!5336717))

(assert (= (and start!562354 ((_ is ElementMatch!15009) r!7292)) b!5336699))

(assert (= (and start!562354 ((_ is Concat!23854) r!7292)) b!5336722))

(assert (= (and start!562354 ((_ is Star!15009) r!7292)) b!5336718))

(assert (= (and start!562354 ((_ is Union!15009) r!7292)) b!5336692))

(assert (= (and start!562354 condSetEmpty!34423) setIsEmpty!34423))

(assert (= (and start!562354 (not condSetEmpty!34423)) setNonEmpty!34423))

(assert (= setNonEmpty!34423 b!5336724))

(assert (= b!5336698 b!5336693))

(assert (= (and start!562354 ((_ is Cons!61204) zl!343)) b!5336698))

(assert (= (and start!562354 ((_ is Cons!61203) s!2326)) b!5336703))

(declare-fun m!6369462 () Bool)

(assert (=> b!5336706 m!6369462))

(declare-fun m!6369464 () Bool)

(assert (=> b!5336704 m!6369464))

(declare-fun m!6369466 () Bool)

(assert (=> b!5336704 m!6369466))

(declare-fun m!6369468 () Bool)

(assert (=> b!5336716 m!6369468))

(declare-fun m!6369470 () Bool)

(assert (=> b!5336721 m!6369470))

(declare-fun m!6369472 () Bool)

(assert (=> b!5336700 m!6369472))

(assert (=> b!5336700 m!6369472))

(declare-fun m!6369474 () Bool)

(assert (=> b!5336700 m!6369474))

(declare-fun m!6369476 () Bool)

(assert (=> start!562354 m!6369476))

(declare-fun m!6369478 () Bool)

(assert (=> b!5336694 m!6369478))

(declare-fun m!6369480 () Bool)

(assert (=> b!5336694 m!6369480))

(declare-fun m!6369482 () Bool)

(assert (=> b!5336694 m!6369482))

(declare-fun m!6369484 () Bool)

(assert (=> b!5336694 m!6369484))

(declare-fun m!6369486 () Bool)

(assert (=> b!5336694 m!6369486))

(declare-fun m!6369488 () Bool)

(assert (=> b!5336702 m!6369488))

(declare-fun m!6369490 () Bool)

(assert (=> b!5336702 m!6369490))

(declare-fun m!6369492 () Bool)

(assert (=> b!5336725 m!6369492))

(declare-fun m!6369494 () Bool)

(assert (=> b!5336725 m!6369494))

(declare-fun m!6369496 () Bool)

(assert (=> b!5336719 m!6369496))

(declare-fun m!6369498 () Bool)

(assert (=> b!5336714 m!6369498))

(declare-fun m!6369500 () Bool)

(assert (=> b!5336714 m!6369500))

(declare-fun m!6369502 () Bool)

(assert (=> b!5336715 m!6369502))

(declare-fun m!6369504 () Bool)

(assert (=> b!5336708 m!6369504))

(declare-fun m!6369506 () Bool)

(assert (=> b!5336708 m!6369506))

(declare-fun m!6369508 () Bool)

(assert (=> b!5336708 m!6369508))

(declare-fun m!6369510 () Bool)

(assert (=> b!5336707 m!6369510))

(declare-fun m!6369512 () Bool)

(assert (=> b!5336707 m!6369512))

(declare-fun m!6369514 () Bool)

(assert (=> b!5336707 m!6369514))

(assert (=> b!5336707 m!6369514))

(declare-fun m!6369516 () Bool)

(assert (=> b!5336707 m!6369516))

(declare-fun m!6369518 () Bool)

(assert (=> b!5336707 m!6369518))

(assert (=> b!5336707 m!6369510))

(declare-fun m!6369520 () Bool)

(assert (=> b!5336707 m!6369520))

(declare-fun m!6369522 () Bool)

(assert (=> b!5336698 m!6369522))

(declare-fun m!6369524 () Bool)

(assert (=> b!5336697 m!6369524))

(declare-fun m!6369526 () Bool)

(assert (=> setNonEmpty!34423 m!6369526))

(declare-fun m!6369528 () Bool)

(assert (=> b!5336695 m!6369528))

(declare-fun m!6369530 () Bool)

(assert (=> b!5336717 m!6369530))

(declare-fun m!6369532 () Bool)

(assert (=> b!5336717 m!6369532))

(declare-fun m!6369534 () Bool)

(assert (=> b!5336717 m!6369534))

(declare-fun m!6369536 () Bool)

(assert (=> b!5336717 m!6369536))

(declare-fun m!6369538 () Bool)

(assert (=> b!5336717 m!6369538))

(declare-fun m!6369540 () Bool)

(assert (=> b!5336717 m!6369540))

(declare-fun m!6369542 () Bool)

(assert (=> b!5336717 m!6369542))

(declare-fun m!6369544 () Bool)

(assert (=> b!5336717 m!6369544))

(declare-fun m!6369546 () Bool)

(assert (=> b!5336717 m!6369546))

(declare-fun m!6369548 () Bool)

(assert (=> b!5336717 m!6369548))

(declare-fun m!6369550 () Bool)

(assert (=> b!5336717 m!6369550))

(declare-fun m!6369552 () Bool)

(assert (=> b!5336717 m!6369552))

(declare-fun m!6369554 () Bool)

(assert (=> b!5336717 m!6369554))

(declare-fun m!6369556 () Bool)

(assert (=> b!5336717 m!6369556))

(assert (=> b!5336717 m!6369536))

(assert (=> b!5336717 m!6369546))

(declare-fun m!6369558 () Bool)

(assert (=> b!5336717 m!6369558))

(assert (=> b!5336717 m!6369554))

(assert (=> b!5336717 m!6369538))

(declare-fun m!6369560 () Bool)

(assert (=> b!5336717 m!6369560))

(declare-fun m!6369562 () Bool)

(assert (=> b!5336717 m!6369562))

(declare-fun m!6369564 () Bool)

(assert (=> b!5336717 m!6369564))

(declare-fun m!6369566 () Bool)

(assert (=> b!5336717 m!6369566))

(declare-fun m!6369568 () Bool)

(assert (=> b!5336717 m!6369568))

(declare-fun m!6369570 () Bool)

(assert (=> b!5336717 m!6369570))

(declare-fun m!6369572 () Bool)

(assert (=> b!5336717 m!6369572))

(declare-fun m!6369574 () Bool)

(assert (=> b!5336717 m!6369574))

(declare-fun m!6369576 () Bool)

(assert (=> b!5336717 m!6369576))

(declare-fun m!6369578 () Bool)

(assert (=> b!5336709 m!6369578))

(declare-fun m!6369580 () Bool)

(assert (=> b!5336713 m!6369580))

(declare-fun m!6369582 () Bool)

(assert (=> b!5336705 m!6369582))

(assert (=> b!5336705 m!6369466))

(declare-fun m!6369584 () Bool)

(assert (=> b!5336705 m!6369584))

(declare-fun m!6369586 () Bool)

(assert (=> b!5336701 m!6369586))

(declare-fun m!6369588 () Bool)

(assert (=> b!5336701 m!6369588))

(declare-fun m!6369590 () Bool)

(assert (=> b!5336701 m!6369590))

(declare-fun m!6369592 () Bool)

(assert (=> b!5336701 m!6369592))

(declare-fun m!6369594 () Bool)

(assert (=> b!5336701 m!6369594))

(declare-fun m!6369596 () Bool)

(assert (=> b!5336701 m!6369596))

(declare-fun m!6369598 () Bool)

(assert (=> b!5336701 m!6369598))

(check-sat (not b!5336709) (not b!5336713) (not b!5336714) (not b!5336722) (not b!5336716) tp_is_empty!39271 (not setNonEmpty!34423) (not b!5336704) (not b!5336702) (not b!5336706) (not b!5336693) (not b!5336701) (not b!5336698) (not b!5336692) (not b!5336725) (not b!5336707) (not start!562354) (not b!5336695) (not b!5336717) (not b!5336708) (not b!5336694) (not b!5336719) (not b!5336703) (not b!5336721) (not b!5336715) (not b!5336700) (not b!5336697) (not b!5336705) (not b!5336724) (not b!5336718))
(check-sat)
