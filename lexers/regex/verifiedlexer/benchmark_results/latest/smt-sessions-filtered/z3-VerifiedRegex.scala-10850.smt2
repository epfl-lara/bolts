; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559410 () Bool)

(assert start!559410)

(declare-fun b!5303102 () Bool)

(assert (=> b!5303102 true))

(assert (=> b!5303102 true))

(declare-fun lambda!269496 () Int)

(declare-fun lambda!269495 () Int)

(assert (=> b!5303102 (not (= lambda!269496 lambda!269495))))

(assert (=> b!5303102 true))

(assert (=> b!5303102 true))

(declare-fun b!5303118 () Bool)

(assert (=> b!5303118 true))

(declare-fun bs!1229866 () Bool)

(declare-fun b!5303100 () Bool)

(assert (= bs!1229866 (and b!5303100 b!5303102)))

(declare-datatypes ((C!30164 0))(
  ( (C!30165 (val!24784 Int)) )
))
(declare-datatypes ((Regex!14947 0))(
  ( (ElementMatch!14947 (c!920739 C!30164)) (Concat!23792 (regOne!30406 Regex!14947) (regTwo!30406 Regex!14947)) (EmptyExpr!14947) (Star!14947 (reg!15276 Regex!14947)) (EmptyLang!14947) (Union!14947 (regOne!30407 Regex!14947) (regTwo!30407 Regex!14947)) )
))
(declare-fun lt!2166725 () Regex!14947)

(declare-fun r!7292 () Regex!14947)

(declare-fun lambda!269498 () Int)

(assert (=> bs!1229866 (= (and (= (regOne!30406 (regOne!30406 r!7292)) (regOne!30406 r!7292)) (= lt!2166725 (regTwo!30406 r!7292))) (= lambda!269498 lambda!269495))))

(assert (=> bs!1229866 (not (= lambda!269498 lambda!269496))))

(assert (=> b!5303100 true))

(assert (=> b!5303100 true))

(assert (=> b!5303100 true))

(declare-fun lambda!269499 () Int)

(assert (=> bs!1229866 (not (= lambda!269499 lambda!269495))))

(assert (=> bs!1229866 (= (and (= (regOne!30406 (regOne!30406 r!7292)) (regOne!30406 r!7292)) (= lt!2166725 (regTwo!30406 r!7292))) (= lambda!269499 lambda!269496))))

(assert (=> b!5303100 (not (= lambda!269499 lambda!269498))))

(assert (=> b!5303100 true))

(assert (=> b!5303100 true))

(assert (=> b!5303100 true))

(declare-fun lambda!269500 () Int)

(declare-fun lt!2166689 () Regex!14947)

(assert (=> bs!1229866 (= (and (= (regTwo!30406 (regOne!30406 r!7292)) (regOne!30406 r!7292)) (= lt!2166689 (regTwo!30406 r!7292))) (= lambda!269500 lambda!269495))))

(assert (=> bs!1229866 (not (= lambda!269500 lambda!269496))))

(assert (=> b!5303100 (= (and (= (regTwo!30406 (regOne!30406 r!7292)) (regOne!30406 (regOne!30406 r!7292))) (= lt!2166689 lt!2166725)) (= lambda!269500 lambda!269498))))

(assert (=> b!5303100 (not (= lambda!269500 lambda!269499))))

(assert (=> b!5303100 true))

(assert (=> b!5303100 true))

(assert (=> b!5303100 true))

(declare-fun lambda!269501 () Int)

(assert (=> b!5303100 (not (= lambda!269501 lambda!269498))))

(assert (=> b!5303100 (= (and (= (regTwo!30406 (regOne!30406 r!7292)) (regOne!30406 (regOne!30406 r!7292))) (= lt!2166689 lt!2166725)) (= lambda!269501 lambda!269499))))

(assert (=> bs!1229866 (= (and (= (regTwo!30406 (regOne!30406 r!7292)) (regOne!30406 r!7292)) (= lt!2166689 (regTwo!30406 r!7292))) (= lambda!269501 lambda!269496))))

(assert (=> b!5303100 (not (= lambda!269501 lambda!269500))))

(assert (=> bs!1229866 (not (= lambda!269501 lambda!269495))))

(assert (=> b!5303100 true))

(assert (=> b!5303100 true))

(assert (=> b!5303100 true))

(declare-fun b!5303089 () Bool)

(declare-fun e!3295934 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61140 0))(
  ( (Nil!61016) (Cons!61016 (h!67464 Regex!14947) (t!374345 List!61140)) )
))
(declare-datatypes ((Context!8662 0))(
  ( (Context!8663 (exprs!4831 List!61140)) )
))
(declare-fun lt!2166710 () (InoxSet Context!8662))

(declare-datatypes ((List!61141 0))(
  ( (Nil!61017) (Cons!61017 (h!67465 C!30164) (t!374346 List!61141)) )
))
(declare-fun s!2326 () List!61141)

(declare-fun matchZipper!1191 ((InoxSet Context!8662) List!61141) Bool)

(declare-fun derivationStepZipper!1190 ((InoxSet Context!8662) C!30164) (InoxSet Context!8662))

(assert (=> b!5303089 (= e!3295934 (not (matchZipper!1191 (derivationStepZipper!1190 lt!2166710 (h!67465 s!2326)) (t!374346 s!2326))))))

(declare-fun b!5303090 () Bool)

(declare-fun e!3295938 () Bool)

(declare-fun lt!2166702 () (InoxSet Context!8662))

(assert (=> b!5303090 (= e!3295938 (matchZipper!1191 lt!2166702 (t!374346 s!2326)))))

(declare-fun b!5303091 () Bool)

(declare-fun e!3295922 () Bool)

(declare-fun e!3295931 () Bool)

(assert (=> b!5303091 (= e!3295922 e!3295931)))

(declare-fun res!2249325 () Bool)

(assert (=> b!5303091 (=> res!2249325 e!3295931)))

(declare-fun e!3295930 () Bool)

(assert (=> b!5303091 (= res!2249325 e!3295930)))

(declare-fun res!2249306 () Bool)

(assert (=> b!5303091 (=> (not res!2249306) (not e!3295930))))

(declare-fun lt!2166718 () Bool)

(declare-fun lt!2166682 () Bool)

(assert (=> b!5303091 (= res!2249306 (not (= lt!2166718 lt!2166682)))))

(declare-fun lt!2166724 () (InoxSet Context!8662))

(assert (=> b!5303091 (= lt!2166718 (matchZipper!1191 lt!2166724 (t!374346 s!2326)))))

(declare-fun lt!2166700 () (InoxSet Context!8662))

(assert (=> b!5303091 (= (matchZipper!1191 lt!2166700 (t!374346 s!2326)) e!3295938)))

(declare-fun res!2249318 () Bool)

(assert (=> b!5303091 (=> res!2249318 e!3295938)))

(assert (=> b!5303091 (= res!2249318 lt!2166682)))

(declare-fun lt!2166728 () (InoxSet Context!8662))

(assert (=> b!5303091 (= lt!2166682 (matchZipper!1191 lt!2166728 (t!374346 s!2326)))))

(declare-datatypes ((Unit!153306 0))(
  ( (Unit!153307) )
))
(declare-fun lt!2166711 () Unit!153306)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!184 ((InoxSet Context!8662) (InoxSet Context!8662) List!61141) Unit!153306)

(assert (=> b!5303091 (= lt!2166711 (lemmaZipperConcatMatchesSameAsBothZippers!184 lt!2166728 lt!2166702 (t!374346 s!2326)))))

(declare-fun b!5303092 () Bool)

(declare-fun e!3295921 () Bool)

(declare-fun tp!1478564 () Bool)

(assert (=> b!5303092 (= e!3295921 tp!1478564)))

(declare-fun b!5303093 () Bool)

(assert (=> b!5303093 (= e!3295930 (not (matchZipper!1191 lt!2166702 (t!374346 s!2326))))))

(declare-fun setNonEmpty!34073 () Bool)

(declare-fun setElem!34073 () Context!8662)

(declare-fun tp!1478572 () Bool)

(declare-fun setRes!34073 () Bool)

(declare-fun inv!80614 (Context!8662) Bool)

(assert (=> setNonEmpty!34073 (= setRes!34073 (and tp!1478572 (inv!80614 setElem!34073) e!3295921))))

(declare-fun z!1189 () (InoxSet Context!8662))

(declare-fun setRest!34073 () (InoxSet Context!8662))

(assert (=> setNonEmpty!34073 (= z!1189 ((_ map or) (store ((as const (Array Context!8662 Bool)) false) setElem!34073 true) setRest!34073))))

(declare-fun b!5303094 () Bool)

(declare-fun e!3295924 () Bool)

(declare-fun e!3295919 () Bool)

(assert (=> b!5303094 (= e!3295924 e!3295919)))

(declare-fun res!2249309 () Bool)

(assert (=> b!5303094 (=> res!2249309 e!3295919)))

(declare-datatypes ((List!61142 0))(
  ( (Nil!61018) (Cons!61018 (h!67466 Context!8662) (t!374347 List!61142)) )
))
(declare-fun lt!2166714 () List!61142)

(declare-fun zl!343 () List!61142)

(declare-fun zipperDepthTotal!108 (List!61142) Int)

(assert (=> b!5303094 (= res!2249309 (>= (zipperDepthTotal!108 lt!2166714) (zipperDepthTotal!108 zl!343)))))

(declare-fun lt!2166681 () Context!8662)

(assert (=> b!5303094 (= lt!2166714 (Cons!61018 lt!2166681 Nil!61018))))

(declare-fun b!5303095 () Bool)

(declare-fun e!3295932 () Bool)

(assert (=> b!5303095 (= e!3295932 e!3295924)))

(declare-fun res!2249317 () Bool)

(assert (=> b!5303095 (=> res!2249317 e!3295924)))

(assert (=> b!5303095 (= res!2249317 e!3295934)))

(declare-fun res!2249322 () Bool)

(assert (=> b!5303095 (=> (not res!2249322) (not e!3295934))))

(declare-fun lt!2166707 () (InoxSet Context!8662))

(assert (=> b!5303095 (= res!2249322 (not (= lt!2166718 (matchZipper!1191 lt!2166707 (t!374346 s!2326)))))))

(declare-fun lt!2166720 () (InoxSet Context!8662))

(declare-fun e!3295935 () Bool)

(assert (=> b!5303095 (= (matchZipper!1191 lt!2166720 (t!374346 s!2326)) e!3295935)))

(declare-fun res!2249301 () Bool)

(assert (=> b!5303095 (=> res!2249301 e!3295935)))

(assert (=> b!5303095 (= res!2249301 lt!2166682)))

(declare-fun lt!2166699 () Unit!153306)

(declare-fun lt!2166680 () (InoxSet Context!8662))

(assert (=> b!5303095 (= lt!2166699 (lemmaZipperConcatMatchesSameAsBothZippers!184 lt!2166728 lt!2166680 (t!374346 s!2326)))))

(declare-fun lt!2166694 () Context!8662)

(declare-fun lambda!269497 () Int)

(declare-fun flatMap!674 ((InoxSet Context!8662) Int) (InoxSet Context!8662))

(declare-fun derivationStepZipperUp!319 (Context!8662 C!30164) (InoxSet Context!8662))

(assert (=> b!5303095 (= (flatMap!674 lt!2166710 lambda!269497) (derivationStepZipperUp!319 lt!2166694 (h!67465 s!2326)))))

(declare-fun lt!2166697 () Unit!153306)

(declare-fun lemmaFlatMapOnSingletonSet!206 ((InoxSet Context!8662) Context!8662 Int) Unit!153306)

(assert (=> b!5303095 (= lt!2166697 (lemmaFlatMapOnSingletonSet!206 lt!2166710 lt!2166694 lambda!269497))))

(declare-fun b!5303096 () Bool)

(assert (=> b!5303096 (= e!3295931 e!3295932)))

(declare-fun res!2249315 () Bool)

(assert (=> b!5303096 (=> res!2249315 e!3295932)))

(assert (=> b!5303096 (= res!2249315 (not (= lt!2166707 lt!2166720)))))

(assert (=> b!5303096 (= lt!2166720 ((_ map or) lt!2166728 lt!2166680))))

(assert (=> b!5303096 (= lt!2166680 (derivationStepZipperUp!319 lt!2166694 (h!67465 s!2326)))))

(declare-fun lt!2166686 () (InoxSet Context!8662))

(assert (=> b!5303096 (= (flatMap!674 lt!2166686 lambda!269497) (derivationStepZipperUp!319 lt!2166681 (h!67465 s!2326)))))

(declare-fun lt!2166695 () Unit!153306)

(assert (=> b!5303096 (= lt!2166695 (lemmaFlatMapOnSingletonSet!206 lt!2166686 lt!2166681 lambda!269497))))

(declare-fun lt!2166687 () (InoxSet Context!8662))

(assert (=> b!5303096 (= lt!2166687 (derivationStepZipperUp!319 lt!2166681 (h!67465 s!2326)))))

(assert (=> b!5303096 (= lt!2166707 (derivationStepZipper!1190 lt!2166686 (h!67465 s!2326)))))

(assert (=> b!5303096 (= lt!2166710 (store ((as const (Array Context!8662 Bool)) false) lt!2166694 true))))

(assert (=> b!5303096 (= lt!2166686 (store ((as const (Array Context!8662 Bool)) false) lt!2166681 true))))

(declare-fun lt!2166704 () List!61140)

(assert (=> b!5303096 (= lt!2166681 (Context!8663 lt!2166704))))

(declare-fun lt!2166719 () List!61140)

(assert (=> b!5303096 (= lt!2166704 (Cons!61016 (regOne!30406 (regOne!30406 r!7292)) lt!2166719))))

(declare-fun b!5303097 () Bool)

(declare-fun res!2249304 () Bool)

(declare-fun e!3295928 () Bool)

(assert (=> b!5303097 (=> (not res!2249304) (not e!3295928))))

(declare-fun unfocusZipper!689 (List!61142) Regex!14947)

(assert (=> b!5303097 (= res!2249304 (= r!7292 (unfocusZipper!689 zl!343)))))

(declare-fun b!5303098 () Bool)

(declare-fun res!2249307 () Bool)

(assert (=> b!5303098 (=> res!2249307 e!3295919)))

(declare-fun zipperDepth!64 (List!61142) Int)

(assert (=> b!5303098 (= res!2249307 (> (zipperDepth!64 lt!2166714) (zipperDepth!64 zl!343)))))

(declare-fun b!5303099 () Bool)

(declare-fun res!2249303 () Bool)

(declare-fun e!3295929 () Bool)

(assert (=> b!5303099 (=> res!2249303 e!3295929)))

(declare-fun isEmpty!32979 (List!61142) Bool)

(assert (=> b!5303099 (= res!2249303 (not (isEmpty!32979 (t!374347 zl!343))))))

(declare-fun e!3295923 () Bool)

(assert (=> b!5303100 (= e!3295919 e!3295923)))

(declare-fun res!2249323 () Bool)

(assert (=> b!5303100 (=> res!2249323 e!3295923)))

(declare-fun lt!2166721 () Bool)

(declare-fun lt!2166705 () Bool)

(declare-fun lt!2166723 () Bool)

(declare-fun lt!2166717 () Bool)

(declare-fun lt!2166712 () Bool)

(assert (=> b!5303100 (= res!2249323 (or (not (= lt!2166721 (or lt!2166717 lt!2166705))) (not (= lt!2166721 (or lt!2166723 lt!2166712)))))))

(assert (=> b!5303100 (= lt!2166721 (matchZipper!1191 z!1189 s!2326))))

(declare-fun Exists!2128 (Int) Bool)

(assert (=> b!5303100 (= (Exists!2128 lambda!269500) (Exists!2128 lambda!269501))))

(declare-fun lt!2166685 () Unit!153306)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!782 (Regex!14947 Regex!14947 List!61141) Unit!153306)

(assert (=> b!5303100 (= lt!2166685 (lemmaExistCutMatchRandMatchRSpecEquivalent!782 (regTwo!30406 (regOne!30406 r!7292)) lt!2166689 s!2326))))

(declare-datatypes ((tuple2!64292 0))(
  ( (tuple2!64293 (_1!35449 List!61141) (_2!35449 List!61141)) )
))
(declare-datatypes ((Option!15058 0))(
  ( (None!15057) (Some!15057 (v!51086 tuple2!64292)) )
))
(declare-fun isDefined!11761 (Option!15058) Bool)

(declare-fun findConcatSeparation!1472 (Regex!14947 Regex!14947 List!61141 List!61141 List!61141) Option!15058)

(assert (=> b!5303100 (= (isDefined!11761 (findConcatSeparation!1472 (regTwo!30406 (regOne!30406 r!7292)) lt!2166689 Nil!61017 s!2326 s!2326)) (Exists!2128 lambda!269500))))

(declare-fun lt!2166690 () Unit!153306)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1236 (Regex!14947 Regex!14947 List!61141) Unit!153306)

(assert (=> b!5303100 (= lt!2166690 (lemmaFindConcatSeparationEquivalentToExists!1236 (regTwo!30406 (regOne!30406 r!7292)) lt!2166689 s!2326))))

(declare-fun generalisedConcat!616 (List!61140) Regex!14947)

(assert (=> b!5303100 (= lt!2166689 (generalisedConcat!616 (t!374345 (exprs!4831 (h!67466 zl!343)))))))

(declare-fun matchRSpec!2050 (Regex!14947 List!61141) Bool)

(assert (=> b!5303100 (= lt!2166712 (matchRSpec!2050 lt!2166725 s!2326))))

(declare-fun lt!2166692 () Unit!153306)

(declare-fun mainMatchTheorem!2050 (Regex!14947 List!61141) Unit!153306)

(assert (=> b!5303100 (= lt!2166692 (mainMatchTheorem!2050 lt!2166725 s!2326))))

(assert (=> b!5303100 (= (Exists!2128 lambda!269498) (Exists!2128 lambda!269499))))

(declare-fun lt!2166701 () Unit!153306)

(assert (=> b!5303100 (= lt!2166701 (lemmaExistCutMatchRandMatchRSpecEquivalent!782 (regOne!30406 (regOne!30406 r!7292)) lt!2166725 s!2326))))

(assert (=> b!5303100 (= (isDefined!11761 (findConcatSeparation!1472 (regOne!30406 (regOne!30406 r!7292)) lt!2166725 Nil!61017 s!2326 s!2326)) (Exists!2128 lambda!269498))))

(declare-fun lt!2166683 () Unit!153306)

(assert (=> b!5303100 (= lt!2166683 (lemmaFindConcatSeparationEquivalentToExists!1236 (regOne!30406 (regOne!30406 r!7292)) lt!2166725 s!2326))))

(declare-fun lt!2166693 () Regex!14947)

(assert (=> b!5303100 (= lt!2166723 (matchRSpec!2050 lt!2166693 s!2326))))

(declare-fun lt!2166706 () Unit!153306)

(assert (=> b!5303100 (= lt!2166706 (mainMatchTheorem!2050 lt!2166693 s!2326))))

(assert (=> b!5303100 (= lt!2166712 lt!2166705)))

(assert (=> b!5303100 (= lt!2166705 (matchZipper!1191 lt!2166710 s!2326))))

(declare-fun matchR!7132 (Regex!14947 List!61141) Bool)

(assert (=> b!5303100 (= lt!2166712 (matchR!7132 lt!2166725 s!2326))))

(declare-fun lt!2166726 () Unit!153306)

(declare-fun theoremZipperRegexEquiv!357 ((InoxSet Context!8662) List!61142 Regex!14947 List!61141) Unit!153306)

(assert (=> b!5303100 (= lt!2166726 (theoremZipperRegexEquiv!357 lt!2166710 (Cons!61018 lt!2166694 Nil!61018) lt!2166725 s!2326))))

(assert (=> b!5303100 (= lt!2166725 (generalisedConcat!616 lt!2166719))))

(assert (=> b!5303100 (= lt!2166723 lt!2166717)))

(assert (=> b!5303100 (= lt!2166717 (matchZipper!1191 lt!2166686 s!2326))))

(assert (=> b!5303100 (= lt!2166723 (matchR!7132 lt!2166693 s!2326))))

(declare-fun lt!2166698 () Unit!153306)

(assert (=> b!5303100 (= lt!2166698 (theoremZipperRegexEquiv!357 lt!2166686 lt!2166714 lt!2166693 s!2326))))

(assert (=> b!5303100 (= lt!2166693 (generalisedConcat!616 lt!2166704))))

(declare-fun b!5303101 () Bool)

(declare-fun e!3295925 () Bool)

(declare-fun tp!1478570 () Bool)

(assert (=> b!5303101 (= e!3295925 tp!1478570)))

(declare-fun e!3295937 () Bool)

(assert (=> b!5303102 (= e!3295929 e!3295937)))

(declare-fun res!2249313 () Bool)

(assert (=> b!5303102 (=> res!2249313 e!3295937)))

(declare-fun lt!2166696 () Bool)

(declare-fun lt!2166727 () Bool)

(get-info :version)

(assert (=> b!5303102 (= res!2249313 (or (not (= lt!2166727 lt!2166696)) ((_ is Nil!61017) s!2326)))))

(assert (=> b!5303102 (= (Exists!2128 lambda!269495) (Exists!2128 lambda!269496))))

(declare-fun lt!2166684 () Unit!153306)

(assert (=> b!5303102 (= lt!2166684 (lemmaExistCutMatchRandMatchRSpecEquivalent!782 (regOne!30406 r!7292) (regTwo!30406 r!7292) s!2326))))

(assert (=> b!5303102 (= lt!2166696 (Exists!2128 lambda!269495))))

(assert (=> b!5303102 (= lt!2166696 (isDefined!11761 (findConcatSeparation!1472 (regOne!30406 r!7292) (regTwo!30406 r!7292) Nil!61017 s!2326 s!2326)))))

(declare-fun lt!2166708 () Unit!153306)

(assert (=> b!5303102 (= lt!2166708 (lemmaFindConcatSeparationEquivalentToExists!1236 (regOne!30406 r!7292) (regTwo!30406 r!7292) s!2326))))

(declare-fun b!5303103 () Bool)

(declare-fun e!3295936 () Bool)

(declare-fun tp!1478569 () Bool)

(declare-fun tp!1478568 () Bool)

(assert (=> b!5303103 (= e!3295936 (and tp!1478569 tp!1478568))))

(declare-fun b!5303104 () Bool)

(declare-fun e!3295933 () Bool)

(declare-fun lt!2166722 () (InoxSet Context!8662))

(assert (=> b!5303104 (= e!3295933 (matchZipper!1191 lt!2166722 (t!374346 s!2326)))))

(declare-fun b!5303105 () Bool)

(declare-fun res!2249310 () Bool)

(assert (=> b!5303105 (=> res!2249310 e!3295929)))

(declare-fun generalisedUnion!876 (List!61140) Regex!14947)

(declare-fun unfocusZipperList!389 (List!61142) List!61140)

(assert (=> b!5303105 (= res!2249310 (not (= r!7292 (generalisedUnion!876 (unfocusZipperList!389 zl!343)))))))

(declare-fun b!5303106 () Bool)

(declare-fun res!2249320 () Bool)

(assert (=> b!5303106 (=> res!2249320 e!3295937)))

(declare-fun isEmpty!32980 (List!61140) Bool)

(assert (=> b!5303106 (= res!2249320 (isEmpty!32980 (t!374345 (exprs!4831 (h!67466 zl!343)))))))

(declare-fun b!5303107 () Bool)

(assert (=> b!5303107 (= e!3295935 (matchZipper!1191 lt!2166680 (t!374346 s!2326)))))

(declare-fun b!5303108 () Bool)

(declare-fun e!3295918 () Unit!153306)

(declare-fun Unit!153308 () Unit!153306)

(assert (=> b!5303108 (= e!3295918 Unit!153308)))

(declare-fun lt!2166713 () Unit!153306)

(assert (=> b!5303108 (= lt!2166713 (lemmaZipperConcatMatchesSameAsBothZippers!184 lt!2166724 lt!2166722 (t!374346 s!2326)))))

(declare-fun res!2249311 () Bool)

(assert (=> b!5303108 (= res!2249311 (matchZipper!1191 lt!2166724 (t!374346 s!2326)))))

(assert (=> b!5303108 (=> res!2249311 e!3295933)))

(assert (=> b!5303108 (= (matchZipper!1191 ((_ map or) lt!2166724 lt!2166722) (t!374346 s!2326)) e!3295933)))

(declare-fun b!5303109 () Bool)

(declare-fun tp!1478565 () Bool)

(assert (=> b!5303109 (= e!3295936 tp!1478565)))

(declare-fun b!5303110 () Bool)

(declare-fun tp!1478566 () Bool)

(declare-fun tp!1478571 () Bool)

(assert (=> b!5303110 (= e!3295936 (and tp!1478566 tp!1478571))))

(declare-fun b!5303111 () Bool)

(declare-fun res!2249312 () Bool)

(declare-fun e!3295920 () Bool)

(assert (=> b!5303111 (=> res!2249312 e!3295920)))

(declare-fun nullable!5116 (Regex!14947) Bool)

(assert (=> b!5303111 (= res!2249312 (not (nullable!5116 (regOne!30406 (regOne!30406 r!7292)))))))

(declare-fun b!5303112 () Bool)

(declare-fun e!3295926 () Bool)

(declare-fun tp_is_empty!39147 () Bool)

(declare-fun tp!1478567 () Bool)

(assert (=> b!5303112 (= e!3295926 (and tp_is_empty!39147 tp!1478567))))

(declare-fun b!5303113 () Bool)

(declare-fun res!2249308 () Bool)

(assert (=> b!5303113 (=> res!2249308 e!3295924)))

(declare-fun contextDepthTotal!88 (Context!8662) Int)

(assert (=> b!5303113 (= res!2249308 (>= (contextDepthTotal!88 lt!2166681) (contextDepthTotal!88 (h!67466 zl!343))))))

(declare-fun b!5303114 () Bool)

(declare-fun Unit!153309 () Unit!153306)

(assert (=> b!5303114 (= e!3295918 Unit!153309)))

(declare-fun b!5303115 () Bool)

(declare-fun res!2249314 () Bool)

(assert (=> b!5303115 (=> res!2249314 e!3295929)))

(assert (=> b!5303115 (= res!2249314 (or ((_ is EmptyExpr!14947) r!7292) ((_ is EmptyLang!14947) r!7292) ((_ is ElementMatch!14947) r!7292) ((_ is Union!14947) r!7292) (not ((_ is Concat!23792) r!7292))))))

(declare-fun e!3295927 () Bool)

(declare-fun tp!1478573 () Bool)

(declare-fun b!5303116 () Bool)

(assert (=> b!5303116 (= e!3295927 (and (inv!80614 (h!67466 zl!343)) e!3295925 tp!1478573))))

(declare-fun res!2249324 () Bool)

(assert (=> start!559410 (=> (not res!2249324) (not e!3295928))))

(declare-fun validRegex!6683 (Regex!14947) Bool)

(assert (=> start!559410 (= res!2249324 (validRegex!6683 r!7292))))

(assert (=> start!559410 e!3295928))

(assert (=> start!559410 e!3295936))

(declare-fun condSetEmpty!34073 () Bool)

(assert (=> start!559410 (= condSetEmpty!34073 (= z!1189 ((as const (Array Context!8662 Bool)) false)))))

(assert (=> start!559410 setRes!34073))

(assert (=> start!559410 e!3295927))

(assert (=> start!559410 e!3295926))

(declare-fun b!5303117 () Bool)

(assert (=> b!5303117 (= e!3295936 tp_is_empty!39147)))

(assert (=> b!5303118 (= e!3295937 e!3295920)))

(declare-fun res!2249326 () Bool)

(assert (=> b!5303118 (=> res!2249326 e!3295920)))

(assert (=> b!5303118 (= res!2249326 (or (and ((_ is ElementMatch!14947) (regOne!30406 r!7292)) (= (c!920739 (regOne!30406 r!7292)) (h!67465 s!2326))) ((_ is Union!14947) (regOne!30406 r!7292)) (not ((_ is Concat!23792) (regOne!30406 r!7292)))))))

(declare-fun lt!2166691 () Unit!153306)

(assert (=> b!5303118 (= lt!2166691 e!3295918)))

(declare-fun c!920738 () Bool)

(assert (=> b!5303118 (= c!920738 (nullable!5116 (h!67464 (exprs!4831 (h!67466 zl!343)))))))

(assert (=> b!5303118 (= (flatMap!674 z!1189 lambda!269497) (derivationStepZipperUp!319 (h!67466 zl!343) (h!67465 s!2326)))))

(declare-fun lt!2166709 () Unit!153306)

(assert (=> b!5303118 (= lt!2166709 (lemmaFlatMapOnSingletonSet!206 z!1189 (h!67466 zl!343) lambda!269497))))

(declare-fun lt!2166703 () Context!8662)

(assert (=> b!5303118 (= lt!2166722 (derivationStepZipperUp!319 lt!2166703 (h!67465 s!2326)))))

(declare-fun derivationStepZipperDown!395 (Regex!14947 Context!8662 C!30164) (InoxSet Context!8662))

(assert (=> b!5303118 (= lt!2166724 (derivationStepZipperDown!395 (h!67464 (exprs!4831 (h!67466 zl!343))) lt!2166703 (h!67465 s!2326)))))

(assert (=> b!5303118 (= lt!2166703 (Context!8663 (t!374345 (exprs!4831 (h!67466 zl!343)))))))

(declare-fun lt!2166715 () (InoxSet Context!8662))

(assert (=> b!5303118 (= lt!2166715 (derivationStepZipperUp!319 (Context!8663 (Cons!61016 (h!67464 (exprs!4831 (h!67466 zl!343))) (t!374345 (exprs!4831 (h!67466 zl!343))))) (h!67465 s!2326)))))

(declare-fun b!5303119 () Bool)

(declare-fun res!2249321 () Bool)

(assert (=> b!5303119 (=> (not res!2249321) (not e!3295928))))

(declare-fun toList!8731 ((InoxSet Context!8662)) List!61142)

(assert (=> b!5303119 (= res!2249321 (= (toList!8731 z!1189) zl!343))))

(declare-fun b!5303120 () Bool)

(assert (=> b!5303120 (= e!3295928 (not e!3295929))))

(declare-fun res!2249316 () Bool)

(assert (=> b!5303120 (=> res!2249316 e!3295929)))

(assert (=> b!5303120 (= res!2249316 (not ((_ is Cons!61018) zl!343)))))

(assert (=> b!5303120 (= lt!2166727 (matchRSpec!2050 r!7292 s!2326))))

(assert (=> b!5303120 (= lt!2166727 (matchR!7132 r!7292 s!2326))))

(declare-fun lt!2166716 () Unit!153306)

(assert (=> b!5303120 (= lt!2166716 (mainMatchTheorem!2050 r!7292 s!2326))))

(declare-fun setIsEmpty!34073 () Bool)

(assert (=> setIsEmpty!34073 setRes!34073))

(declare-fun b!5303121 () Bool)

(declare-fun res!2249302 () Bool)

(assert (=> b!5303121 (=> res!2249302 e!3295929)))

(assert (=> b!5303121 (= res!2249302 (not ((_ is Cons!61016) (exprs!4831 (h!67466 zl!343)))))))

(declare-fun b!5303122 () Bool)

(declare-fun res!2249327 () Bool)

(assert (=> b!5303122 (=> res!2249327 e!3295924)))

(assert (=> b!5303122 (= res!2249327 (not (= (exprs!4831 (h!67466 zl!343)) (Cons!61016 (Concat!23792 (regOne!30406 (regOne!30406 r!7292)) (regTwo!30406 (regOne!30406 r!7292))) (t!374345 (exprs!4831 (h!67466 zl!343)))))))))

(declare-fun b!5303123 () Bool)

(assert (=> b!5303123 (= e!3295920 e!3295922)))

(declare-fun res!2249319 () Bool)

(assert (=> b!5303123 (=> res!2249319 e!3295922)))

(assert (=> b!5303123 (= res!2249319 (not (= lt!2166724 lt!2166700)))))

(assert (=> b!5303123 (= lt!2166700 ((_ map or) lt!2166728 lt!2166702))))

(assert (=> b!5303123 (= lt!2166702 (derivationStepZipperDown!395 (regTwo!30406 (regOne!30406 r!7292)) lt!2166703 (h!67465 s!2326)))))

(assert (=> b!5303123 (= lt!2166728 (derivationStepZipperDown!395 (regOne!30406 (regOne!30406 r!7292)) lt!2166694 (h!67465 s!2326)))))

(assert (=> b!5303123 (= lt!2166694 (Context!8663 lt!2166719))))

(assert (=> b!5303123 (= lt!2166719 (Cons!61016 (regTwo!30406 (regOne!30406 r!7292)) (t!374345 (exprs!4831 (h!67466 zl!343)))))))

(declare-fun b!5303124 () Bool)

(declare-fun res!2249305 () Bool)

(assert (=> b!5303124 (=> res!2249305 e!3295929)))

(assert (=> b!5303124 (= res!2249305 (not (= r!7292 (generalisedConcat!616 (exprs!4831 (h!67466 zl!343))))))))

(declare-fun b!5303125 () Bool)

(assert (=> b!5303125 (= e!3295923 true)))

(declare-fun lt!2166688 () Bool)

(assert (=> b!5303125 (= lt!2166688 (matchR!7132 (Concat!23792 (regOne!30406 r!7292) (regTwo!30406 r!7292)) s!2326))))

(assert (= (and start!559410 res!2249324) b!5303119))

(assert (= (and b!5303119 res!2249321) b!5303097))

(assert (= (and b!5303097 res!2249304) b!5303120))

(assert (= (and b!5303120 (not res!2249316)) b!5303099))

(assert (= (and b!5303099 (not res!2249303)) b!5303124))

(assert (= (and b!5303124 (not res!2249305)) b!5303121))

(assert (= (and b!5303121 (not res!2249302)) b!5303105))

(assert (= (and b!5303105 (not res!2249310)) b!5303115))

(assert (= (and b!5303115 (not res!2249314)) b!5303102))

(assert (= (and b!5303102 (not res!2249313)) b!5303106))

(assert (= (and b!5303106 (not res!2249320)) b!5303118))

(assert (= (and b!5303118 c!920738) b!5303108))

(assert (= (and b!5303118 (not c!920738)) b!5303114))

(assert (= (and b!5303108 (not res!2249311)) b!5303104))

(assert (= (and b!5303118 (not res!2249326)) b!5303111))

(assert (= (and b!5303111 (not res!2249312)) b!5303123))

(assert (= (and b!5303123 (not res!2249319)) b!5303091))

(assert (= (and b!5303091 (not res!2249318)) b!5303090))

(assert (= (and b!5303091 res!2249306) b!5303093))

(assert (= (and b!5303091 (not res!2249325)) b!5303096))

(assert (= (and b!5303096 (not res!2249315)) b!5303095))

(assert (= (and b!5303095 (not res!2249301)) b!5303107))

(assert (= (and b!5303095 res!2249322) b!5303089))

(assert (= (and b!5303095 (not res!2249317)) b!5303122))

(assert (= (and b!5303122 (not res!2249327)) b!5303113))

(assert (= (and b!5303113 (not res!2249308)) b!5303094))

(assert (= (and b!5303094 (not res!2249309)) b!5303098))

(assert (= (and b!5303098 (not res!2249307)) b!5303100))

(assert (= (and b!5303100 (not res!2249323)) b!5303125))

(assert (= (and start!559410 ((_ is ElementMatch!14947) r!7292)) b!5303117))

(assert (= (and start!559410 ((_ is Concat!23792) r!7292)) b!5303103))

(assert (= (and start!559410 ((_ is Star!14947) r!7292)) b!5303109))

(assert (= (and start!559410 ((_ is Union!14947) r!7292)) b!5303110))

(assert (= (and start!559410 condSetEmpty!34073) setIsEmpty!34073))

(assert (= (and start!559410 (not condSetEmpty!34073)) setNonEmpty!34073))

(assert (= setNonEmpty!34073 b!5303092))

(assert (= b!5303116 b!5303101))

(assert (= (and start!559410 ((_ is Cons!61018) zl!343)) b!5303116))

(assert (= (and start!559410 ((_ is Cons!61017) s!2326)) b!5303112))

(declare-fun m!6340318 () Bool)

(assert (=> b!5303113 m!6340318))

(declare-fun m!6340320 () Bool)

(assert (=> b!5303113 m!6340320))

(declare-fun m!6340322 () Bool)

(assert (=> b!5303097 m!6340322))

(declare-fun m!6340324 () Bool)

(assert (=> b!5303096 m!6340324))

(declare-fun m!6340326 () Bool)

(assert (=> b!5303096 m!6340326))

(declare-fun m!6340328 () Bool)

(assert (=> b!5303096 m!6340328))

(declare-fun m!6340330 () Bool)

(assert (=> b!5303096 m!6340330))

(declare-fun m!6340332 () Bool)

(assert (=> b!5303096 m!6340332))

(declare-fun m!6340334 () Bool)

(assert (=> b!5303096 m!6340334))

(declare-fun m!6340336 () Bool)

(assert (=> b!5303096 m!6340336))

(declare-fun m!6340338 () Bool)

(assert (=> b!5303118 m!6340338))

(declare-fun m!6340340 () Bool)

(assert (=> b!5303118 m!6340340))

(declare-fun m!6340342 () Bool)

(assert (=> b!5303118 m!6340342))

(declare-fun m!6340344 () Bool)

(assert (=> b!5303118 m!6340344))

(declare-fun m!6340346 () Bool)

(assert (=> b!5303118 m!6340346))

(declare-fun m!6340348 () Bool)

(assert (=> b!5303118 m!6340348))

(declare-fun m!6340350 () Bool)

(assert (=> b!5303118 m!6340350))

(declare-fun m!6340352 () Bool)

(assert (=> b!5303098 m!6340352))

(declare-fun m!6340354 () Bool)

(assert (=> b!5303098 m!6340354))

(declare-fun m!6340356 () Bool)

(assert (=> setNonEmpty!34073 m!6340356))

(declare-fun m!6340358 () Bool)

(assert (=> b!5303095 m!6340358))

(assert (=> b!5303095 m!6340330))

(declare-fun m!6340360 () Bool)

(assert (=> b!5303095 m!6340360))

(declare-fun m!6340362 () Bool)

(assert (=> b!5303095 m!6340362))

(declare-fun m!6340364 () Bool)

(assert (=> b!5303095 m!6340364))

(declare-fun m!6340366 () Bool)

(assert (=> b!5303095 m!6340366))

(declare-fun m!6340368 () Bool)

(assert (=> b!5303102 m!6340368))

(declare-fun m!6340370 () Bool)

(assert (=> b!5303102 m!6340370))

(declare-fun m!6340372 () Bool)

(assert (=> b!5303102 m!6340372))

(assert (=> b!5303102 m!6340368))

(declare-fun m!6340374 () Bool)

(assert (=> b!5303102 m!6340374))

(declare-fun m!6340376 () Bool)

(assert (=> b!5303102 m!6340376))

(assert (=> b!5303102 m!6340370))

(declare-fun m!6340378 () Bool)

(assert (=> b!5303102 m!6340378))

(declare-fun m!6340380 () Bool)

(assert (=> b!5303093 m!6340380))

(declare-fun m!6340382 () Bool)

(assert (=> start!559410 m!6340382))

(declare-fun m!6340384 () Bool)

(assert (=> b!5303108 m!6340384))

(declare-fun m!6340386 () Bool)

(assert (=> b!5303108 m!6340386))

(declare-fun m!6340388 () Bool)

(assert (=> b!5303108 m!6340388))

(declare-fun m!6340390 () Bool)

(assert (=> b!5303124 m!6340390))

(declare-fun m!6340392 () Bool)

(assert (=> b!5303094 m!6340392))

(declare-fun m!6340394 () Bool)

(assert (=> b!5303094 m!6340394))

(declare-fun m!6340396 () Bool)

(assert (=> b!5303125 m!6340396))

(declare-fun m!6340398 () Bool)

(assert (=> b!5303111 m!6340398))

(declare-fun m!6340400 () Bool)

(assert (=> b!5303120 m!6340400))

(declare-fun m!6340402 () Bool)

(assert (=> b!5303120 m!6340402))

(declare-fun m!6340404 () Bool)

(assert (=> b!5303120 m!6340404))

(assert (=> b!5303091 m!6340386))

(declare-fun m!6340406 () Bool)

(assert (=> b!5303091 m!6340406))

(declare-fun m!6340408 () Bool)

(assert (=> b!5303091 m!6340408))

(declare-fun m!6340410 () Bool)

(assert (=> b!5303091 m!6340410))

(declare-fun m!6340412 () Bool)

(assert (=> b!5303104 m!6340412))

(declare-fun m!6340414 () Bool)

(assert (=> b!5303119 m!6340414))

(declare-fun m!6340416 () Bool)

(assert (=> b!5303116 m!6340416))

(declare-fun m!6340418 () Bool)

(assert (=> b!5303107 m!6340418))

(declare-fun m!6340420 () Bool)

(assert (=> b!5303100 m!6340420))

(declare-fun m!6340422 () Bool)

(assert (=> b!5303100 m!6340422))

(declare-fun m!6340424 () Bool)

(assert (=> b!5303100 m!6340424))

(declare-fun m!6340426 () Bool)

(assert (=> b!5303100 m!6340426))

(declare-fun m!6340428 () Bool)

(assert (=> b!5303100 m!6340428))

(declare-fun m!6340430 () Bool)

(assert (=> b!5303100 m!6340430))

(declare-fun m!6340432 () Bool)

(assert (=> b!5303100 m!6340432))

(declare-fun m!6340434 () Bool)

(assert (=> b!5303100 m!6340434))

(declare-fun m!6340436 () Bool)

(assert (=> b!5303100 m!6340436))

(declare-fun m!6340438 () Bool)

(assert (=> b!5303100 m!6340438))

(declare-fun m!6340440 () Bool)

(assert (=> b!5303100 m!6340440))

(declare-fun m!6340442 () Bool)

(assert (=> b!5303100 m!6340442))

(declare-fun m!6340444 () Bool)

(assert (=> b!5303100 m!6340444))

(declare-fun m!6340446 () Bool)

(assert (=> b!5303100 m!6340446))

(declare-fun m!6340448 () Bool)

(assert (=> b!5303100 m!6340448))

(declare-fun m!6340450 () Bool)

(assert (=> b!5303100 m!6340450))

(declare-fun m!6340452 () Bool)

(assert (=> b!5303100 m!6340452))

(declare-fun m!6340454 () Bool)

(assert (=> b!5303100 m!6340454))

(declare-fun m!6340456 () Bool)

(assert (=> b!5303100 m!6340456))

(declare-fun m!6340458 () Bool)

(assert (=> b!5303100 m!6340458))

(assert (=> b!5303100 m!6340420))

(assert (=> b!5303100 m!6340454))

(assert (=> b!5303100 m!6340424))

(declare-fun m!6340460 () Bool)

(assert (=> b!5303100 m!6340460))

(declare-fun m!6340462 () Bool)

(assert (=> b!5303100 m!6340462))

(declare-fun m!6340464 () Bool)

(assert (=> b!5303100 m!6340464))

(declare-fun m!6340466 () Bool)

(assert (=> b!5303100 m!6340466))

(assert (=> b!5303100 m!6340450))

(declare-fun m!6340468 () Bool)

(assert (=> b!5303100 m!6340468))

(declare-fun m!6340470 () Bool)

(assert (=> b!5303100 m!6340470))

(assert (=> b!5303090 m!6340380))

(declare-fun m!6340472 () Bool)

(assert (=> b!5303089 m!6340472))

(assert (=> b!5303089 m!6340472))

(declare-fun m!6340474 () Bool)

(assert (=> b!5303089 m!6340474))

(declare-fun m!6340476 () Bool)

(assert (=> b!5303106 m!6340476))

(declare-fun m!6340478 () Bool)

(assert (=> b!5303105 m!6340478))

(assert (=> b!5303105 m!6340478))

(declare-fun m!6340480 () Bool)

(assert (=> b!5303105 m!6340480))

(declare-fun m!6340482 () Bool)

(assert (=> b!5303099 m!6340482))

(declare-fun m!6340484 () Bool)

(assert (=> b!5303123 m!6340484))

(declare-fun m!6340486 () Bool)

(assert (=> b!5303123 m!6340486))

(check-sat (not b!5303118) (not b!5303106) (not start!559410) (not setNonEmpty!34073) (not b!5303090) (not b!5303120) (not b!5303111) (not b!5303091) (not b!5303100) tp_is_empty!39147 (not b!5303108) (not b!5303105) (not b!5303092) (not b!5303110) (not b!5303124) (not b!5303119) (not b!5303102) (not b!5303099) (not b!5303095) (not b!5303112) (not b!5303116) (not b!5303104) (not b!5303098) (not b!5303094) (not b!5303107) (not b!5303113) (not b!5303093) (not b!5303109) (not b!5303123) (not b!5303101) (not b!5303096) (not b!5303103) (not b!5303089) (not b!5303097) (not b!5303125))
(check-sat)
