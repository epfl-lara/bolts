; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566838 () Bool)

(assert start!566838)

(declare-fun b!5395135 () Bool)

(assert (=> b!5395135 true))

(assert (=> b!5395135 true))

(declare-fun lambda!280500 () Int)

(declare-fun lambda!280499 () Int)

(assert (=> b!5395135 (not (= lambda!280500 lambda!280499))))

(assert (=> b!5395135 true))

(assert (=> b!5395135 true))

(declare-fun b!5395141 () Bool)

(assert (=> b!5395141 true))

(declare-fun b!5395131 () Bool)

(assert (=> b!5395131 true))

(declare-fun e!3345577 () Bool)

(declare-fun e!3345587 () Bool)

(assert (=> b!5395131 (= e!3345577 e!3345587)))

(declare-fun res!2292853 () Bool)

(assert (=> b!5395131 (=> res!2292853 e!3345587)))

(declare-datatypes ((C!30568 0))(
  ( (C!30569 (val!24986 Int)) )
))
(declare-datatypes ((Regex!15149 0))(
  ( (ElementMatch!15149 (c!940257 C!30568)) (Concat!23994 (regOne!30810 Regex!15149) (regTwo!30810 Regex!15149)) (EmptyExpr!15149) (Star!15149 (reg!15478 Regex!15149)) (EmptyLang!15149) (Union!15149 (regOne!30811 Regex!15149) (regTwo!30811 Regex!15149)) )
))
(declare-datatypes ((List!61746 0))(
  ( (Nil!61622) (Cons!61622 (h!68070 Regex!15149) (t!374969 List!61746)) )
))
(declare-datatypes ((Context!9066 0))(
  ( (Context!9067 (exprs!5033 List!61746)) )
))
(declare-fun lt!2198340 () Context!9066)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2198341 () (InoxSet Context!9066))

(declare-fun lt!2198347 () (InoxSet Context!9066))

(declare-fun appendTo!8 ((InoxSet Context!9066) Context!9066) (InoxSet Context!9066))

(assert (=> b!5395131 (= res!2292853 (not (= (appendTo!8 lt!2198347 lt!2198340) lt!2198341)))))

(declare-fun r!7292 () Regex!15149)

(declare-fun lambda!280502 () Int)

(declare-fun lt!2198334 () List!61746)

(declare-fun map!14108 ((InoxSet Context!9066) Int) (InoxSet Context!9066))

(declare-fun ++!13471 (List!61746 List!61746) List!61746)

(assert (=> b!5395131 (= (map!14108 lt!2198347 lambda!280502) (store ((as const (Array Context!9066 Bool)) false) (Context!9067 (++!13471 (Cons!61622 (reg!15478 (regOne!30810 r!7292)) Nil!61622) lt!2198334)) true))))

(declare-fun lambda!280503 () Int)

(declare-datatypes ((Unit!154118 0))(
  ( (Unit!154119) )
))
(declare-fun lt!2198349 () Unit!154118)

(declare-fun lemmaConcatPreservesForall!174 (List!61746 List!61746 Int) Unit!154118)

(assert (=> b!5395131 (= lt!2198349 (lemmaConcatPreservesForall!174 (Cons!61622 (reg!15478 (regOne!30810 r!7292)) Nil!61622) lt!2198334 lambda!280503))))

(declare-fun lt!2198358 () Unit!154118)

(declare-fun lt!2198344 () Context!9066)

(declare-fun lemmaMapOnSingletonSet!8 ((InoxSet Context!9066) Context!9066 Int) Unit!154118)

(assert (=> b!5395131 (= lt!2198358 (lemmaMapOnSingletonSet!8 lt!2198347 lt!2198344 lambda!280502))))

(declare-fun b!5395132 () Bool)

(declare-fun res!2292863 () Bool)

(declare-fun e!3345583 () Bool)

(assert (=> b!5395132 (=> res!2292863 e!3345583)))

(declare-datatypes ((List!61747 0))(
  ( (Nil!61623) (Cons!61623 (h!68071 Context!9066) (t!374970 List!61747)) )
))
(declare-fun zl!343 () List!61747)

(declare-fun isEmpty!33621 (List!61747) Bool)

(assert (=> b!5395132 (= res!2292863 (not (isEmpty!33621 (t!374970 zl!343))))))

(declare-fun b!5395133 () Bool)

(declare-fun res!2292840 () Bool)

(declare-fun e!3345591 () Bool)

(assert (=> b!5395133 (=> res!2292840 e!3345591)))

(declare-fun lt!2198333 () Regex!15149)

(declare-fun unfocusZipper!891 (List!61747) Regex!15149)

(assert (=> b!5395133 (= res!2292840 (not (= (unfocusZipper!891 (Cons!61623 lt!2198340 Nil!61623)) lt!2198333)))))

(declare-fun b!5395134 () Bool)

(declare-fun e!3345594 () Bool)

(declare-fun e!3345579 () Bool)

(assert (=> b!5395134 (= e!3345594 e!3345579)))

(declare-fun res!2292851 () Bool)

(assert (=> b!5395134 (=> res!2292851 e!3345579)))

(assert (=> b!5395134 (= res!2292851 (not (= r!7292 lt!2198333)))))

(declare-fun lt!2198354 () Regex!15149)

(assert (=> b!5395134 (= lt!2198333 (Concat!23994 lt!2198354 (regTwo!30810 r!7292)))))

(declare-fun e!3345576 () Bool)

(assert (=> b!5395135 (= e!3345583 e!3345576)))

(declare-fun res!2292850 () Bool)

(assert (=> b!5395135 (=> res!2292850 e!3345576)))

(declare-datatypes ((List!61748 0))(
  ( (Nil!61624) (Cons!61624 (h!68072 C!30568) (t!374971 List!61748)) )
))
(declare-fun s!2326 () List!61748)

(declare-fun lt!2198363 () Bool)

(declare-fun lt!2198356 () Bool)

(get-info :version)

(assert (=> b!5395135 (= res!2292850 (or (not (= lt!2198363 lt!2198356)) ((_ is Nil!61624) s!2326)))))

(declare-fun Exists!2330 (Int) Bool)

(assert (=> b!5395135 (= (Exists!2330 lambda!280499) (Exists!2330 lambda!280500))))

(declare-fun lt!2198367 () Unit!154118)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!984 (Regex!15149 Regex!15149 List!61748) Unit!154118)

(assert (=> b!5395135 (= lt!2198367 (lemmaExistCutMatchRandMatchRSpecEquivalent!984 (regOne!30810 r!7292) (regTwo!30810 r!7292) s!2326))))

(assert (=> b!5395135 (= lt!2198356 (Exists!2330 lambda!280499))))

(declare-datatypes ((tuple2!64696 0))(
  ( (tuple2!64697 (_1!35651 List!61748) (_2!35651 List!61748)) )
))
(declare-datatypes ((Option!15260 0))(
  ( (None!15259) (Some!15259 (v!51288 tuple2!64696)) )
))
(declare-fun isDefined!11963 (Option!15260) Bool)

(declare-fun findConcatSeparation!1674 (Regex!15149 Regex!15149 List!61748 List!61748 List!61748) Option!15260)

(assert (=> b!5395135 (= lt!2198356 (isDefined!11963 (findConcatSeparation!1674 (regOne!30810 r!7292) (regTwo!30810 r!7292) Nil!61624 s!2326 s!2326)))))

(declare-fun lt!2198361 () Unit!154118)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1438 (Regex!15149 Regex!15149 List!61748) Unit!154118)

(assert (=> b!5395135 (= lt!2198361 (lemmaFindConcatSeparationEquivalentToExists!1438 (regOne!30810 r!7292) (regTwo!30810 r!7292) s!2326))))

(declare-fun b!5395136 () Bool)

(declare-fun e!3345586 () Bool)

(declare-fun lt!2198338 () (InoxSet Context!9066))

(declare-fun matchZipper!1393 ((InoxSet Context!9066) List!61748) Bool)

(assert (=> b!5395136 (= e!3345586 (matchZipper!1393 lt!2198338 (t!374971 s!2326)))))

(declare-fun setIsEmpty!35075 () Bool)

(declare-fun setRes!35075 () Bool)

(assert (=> setIsEmpty!35075 setRes!35075))

(declare-fun b!5395137 () Bool)

(declare-fun e!3345585 () Bool)

(assert (=> b!5395137 (= e!3345585 (not (matchZipper!1393 lt!2198338 (t!374971 s!2326))))))

(declare-fun b!5395138 () Bool)

(declare-fun e!3345584 () Bool)

(assert (=> b!5395138 (= e!3345584 e!3345577)))

(declare-fun res!2292857 () Bool)

(assert (=> b!5395138 (=> res!2292857 e!3345577)))

(assert (=> b!5395138 (= res!2292857 e!3345585)))

(declare-fun res!2292866 () Bool)

(assert (=> b!5395138 (=> (not res!2292866) (not e!3345585))))

(declare-fun lt!2198348 () Bool)

(assert (=> b!5395138 (= res!2292866 (not lt!2198348))))

(declare-fun lt!2198355 () (InoxSet Context!9066))

(assert (=> b!5395138 (= lt!2198348 (matchZipper!1393 lt!2198355 (t!374971 s!2326)))))

(declare-fun b!5395139 () Bool)

(declare-fun res!2292867 () Bool)

(assert (=> b!5395139 (=> res!2292867 e!3345577)))

(declare-fun lt!2198331 () Bool)

(assert (=> b!5395139 (= res!2292867 (or (not lt!2198348) (not lt!2198331)))))

(declare-fun b!5395140 () Bool)

(declare-fun e!3345592 () Bool)

(assert (=> b!5395140 (= e!3345587 e!3345592)))

(declare-fun res!2292860 () Bool)

(assert (=> b!5395140 (=> res!2292860 e!3345592)))

(declare-fun lt!2198336 () tuple2!64696)

(declare-fun ++!13472 (List!61748 List!61748) List!61748)

(assert (=> b!5395140 (= res!2292860 (not (= s!2326 (++!13472 (_1!35651 lt!2198336) (_2!35651 lt!2198336)))))))

(declare-fun lt!2198352 () Option!15260)

(declare-fun get!21226 (Option!15260) tuple2!64696)

(assert (=> b!5395140 (= lt!2198336 (get!21226 lt!2198352))))

(assert (=> b!5395140 (isDefined!11963 lt!2198352)))

(declare-fun lt!2198339 () (InoxSet Context!9066))

(declare-fun findConcatSeparationZippers!6 ((InoxSet Context!9066) (InoxSet Context!9066) List!61748 List!61748 List!61748) Option!15260)

(assert (=> b!5395140 (= lt!2198352 (findConcatSeparationZippers!6 lt!2198347 lt!2198339 Nil!61624 s!2326 s!2326))))

(declare-fun lt!2198362 () Unit!154118)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!6 ((InoxSet Context!9066) Context!9066 List!61748) Unit!154118)

(assert (=> b!5395140 (= lt!2198362 (lemmaConcatZipperMatchesStringThenFindConcatDefined!6 lt!2198347 lt!2198340 s!2326))))

(declare-fun e!3345595 () Bool)

(assert (=> b!5395141 (= e!3345576 e!3345595)))

(declare-fun res!2292839 () Bool)

(assert (=> b!5395141 (=> res!2292839 e!3345595)))

(assert (=> b!5395141 (= res!2292839 (or (and ((_ is ElementMatch!15149) (regOne!30810 r!7292)) (= (c!940257 (regOne!30810 r!7292)) (h!68072 s!2326))) ((_ is Union!15149) (regOne!30810 r!7292))))))

(declare-fun lt!2198335 () Unit!154118)

(declare-fun e!3345593 () Unit!154118)

(assert (=> b!5395141 (= lt!2198335 e!3345593)))

(declare-fun c!940256 () Bool)

(declare-fun lt!2198357 () Bool)

(assert (=> b!5395141 (= c!940256 lt!2198357)))

(declare-fun nullable!5318 (Regex!15149) Bool)

(assert (=> b!5395141 (= lt!2198357 (nullable!5318 (h!68070 (exprs!5033 (h!68071 zl!343)))))))

(declare-fun lambda!280501 () Int)

(declare-fun z!1189 () (InoxSet Context!9066))

(declare-fun flatMap!876 ((InoxSet Context!9066) Int) (InoxSet Context!9066))

(declare-fun derivationStepZipperUp!521 (Context!9066 C!30568) (InoxSet Context!9066))

(assert (=> b!5395141 (= (flatMap!876 z!1189 lambda!280501) (derivationStepZipperUp!521 (h!68071 zl!343) (h!68072 s!2326)))))

(declare-fun lt!2198346 () Unit!154118)

(declare-fun lemmaFlatMapOnSingletonSet!408 ((InoxSet Context!9066) Context!9066 Int) Unit!154118)

(assert (=> b!5395141 (= lt!2198346 (lemmaFlatMapOnSingletonSet!408 z!1189 (h!68071 zl!343) lambda!280501))))

(declare-fun lt!2198351 () Context!9066)

(assert (=> b!5395141 (= lt!2198338 (derivationStepZipperUp!521 lt!2198351 (h!68072 s!2326)))))

(declare-fun derivationStepZipperDown!597 (Regex!15149 Context!9066 C!30568) (InoxSet Context!9066))

(assert (=> b!5395141 (= lt!2198355 (derivationStepZipperDown!597 (h!68070 (exprs!5033 (h!68071 zl!343))) lt!2198351 (h!68072 s!2326)))))

(assert (=> b!5395141 (= lt!2198351 (Context!9067 (t!374969 (exprs!5033 (h!68071 zl!343)))))))

(declare-fun lt!2198342 () (InoxSet Context!9066))

(assert (=> b!5395141 (= lt!2198342 (derivationStepZipperUp!521 (Context!9067 (Cons!61622 (h!68070 (exprs!5033 (h!68071 zl!343))) (t!374969 (exprs!5033 (h!68071 zl!343))))) (h!68072 s!2326)))))

(declare-fun b!5395142 () Bool)

(assert (=> b!5395142 (= e!3345592 true)))

(declare-fun lt!2198343 () Bool)

(assert (=> b!5395142 (= lt!2198343 (matchZipper!1393 lt!2198339 (_2!35651 lt!2198336)))))

(declare-fun res!2292861 () Bool)

(declare-fun e!3345575 () Bool)

(assert (=> start!566838 (=> (not res!2292861) (not e!3345575))))

(declare-fun validRegex!6885 (Regex!15149) Bool)

(assert (=> start!566838 (= res!2292861 (validRegex!6885 r!7292))))

(assert (=> start!566838 e!3345575))

(declare-fun e!3345598 () Bool)

(assert (=> start!566838 e!3345598))

(declare-fun condSetEmpty!35075 () Bool)

(assert (=> start!566838 (= condSetEmpty!35075 (= z!1189 ((as const (Array Context!9066 Bool)) false)))))

(assert (=> start!566838 setRes!35075))

(declare-fun e!3345589 () Bool)

(assert (=> start!566838 e!3345589))

(declare-fun e!3345581 () Bool)

(assert (=> start!566838 e!3345581))

(declare-fun b!5395143 () Bool)

(declare-fun res!2292869 () Bool)

(assert (=> b!5395143 (=> res!2292869 e!3345595)))

(declare-fun e!3345590 () Bool)

(assert (=> b!5395143 (= res!2292869 e!3345590)))

(declare-fun res!2292845 () Bool)

(assert (=> b!5395143 (=> (not res!2292845) (not e!3345590))))

(assert (=> b!5395143 (= res!2292845 ((_ is Concat!23994) (regOne!30810 r!7292)))))

(declare-fun e!3345578 () Bool)

(declare-fun b!5395144 () Bool)

(declare-fun tp!1493481 () Bool)

(declare-fun inv!81119 (Context!9066) Bool)

(assert (=> b!5395144 (= e!3345589 (and (inv!81119 (h!68071 zl!343)) e!3345578 tp!1493481))))

(declare-fun tp!1493485 () Bool)

(declare-fun setNonEmpty!35075 () Bool)

(declare-fun e!3345582 () Bool)

(declare-fun setElem!35075 () Context!9066)

(assert (=> setNonEmpty!35075 (= setRes!35075 (and tp!1493485 (inv!81119 setElem!35075) e!3345582))))

(declare-fun setRest!35075 () (InoxSet Context!9066))

(assert (=> setNonEmpty!35075 (= z!1189 ((_ map or) (store ((as const (Array Context!9066 Bool)) false) setElem!35075 true) setRest!35075))))

(declare-fun b!5395145 () Bool)

(declare-fun tp!1493483 () Bool)

(assert (=> b!5395145 (= e!3345582 tp!1493483)))

(declare-fun b!5395146 () Bool)

(declare-fun res!2292859 () Bool)

(assert (=> b!5395146 (=> res!2292859 e!3345595)))

(assert (=> b!5395146 (= res!2292859 (or ((_ is Concat!23994) (regOne!30810 r!7292)) (not ((_ is Star!15149) (regOne!30810 r!7292)))))))

(declare-fun b!5395147 () Bool)

(declare-fun e!3345588 () Bool)

(assert (=> b!5395147 (= e!3345588 e!3345591)))

(declare-fun res!2292844 () Bool)

(assert (=> b!5395147 (=> res!2292844 e!3345591)))

(assert (=> b!5395147 (= res!2292844 (not (= (unfocusZipper!891 (Cons!61623 lt!2198344 Nil!61623)) (reg!15478 (regOne!30810 r!7292)))))))

(assert (=> b!5395147 (= (flatMap!876 lt!2198339 lambda!280501) (derivationStepZipperUp!521 lt!2198340 (h!68072 s!2326)))))

(declare-fun lt!2198369 () Unit!154118)

(assert (=> b!5395147 (= lt!2198369 (lemmaFlatMapOnSingletonSet!408 lt!2198339 lt!2198340 lambda!280501))))

(assert (=> b!5395147 (= (flatMap!876 lt!2198347 lambda!280501) (derivationStepZipperUp!521 lt!2198344 (h!68072 s!2326)))))

(declare-fun lt!2198337 () Unit!154118)

(assert (=> b!5395147 (= lt!2198337 (lemmaFlatMapOnSingletonSet!408 lt!2198347 lt!2198344 lambda!280501))))

(declare-fun lt!2198365 () (InoxSet Context!9066))

(assert (=> b!5395147 (= lt!2198365 (derivationStepZipperUp!521 lt!2198340 (h!68072 s!2326)))))

(declare-fun lt!2198332 () (InoxSet Context!9066))

(assert (=> b!5395147 (= lt!2198332 (derivationStepZipperUp!521 lt!2198344 (h!68072 s!2326)))))

(assert (=> b!5395147 (= lt!2198339 (store ((as const (Array Context!9066 Bool)) false) lt!2198340 true))))

(assert (=> b!5395147 (= lt!2198347 (store ((as const (Array Context!9066 Bool)) false) lt!2198344 true))))

(assert (=> b!5395147 (= lt!2198344 (Context!9067 (Cons!61622 (reg!15478 (regOne!30810 r!7292)) Nil!61622)))))

(declare-fun b!5395148 () Bool)

(declare-fun tp!1493478 () Bool)

(assert (=> b!5395148 (= e!3345598 tp!1493478)))

(declare-fun b!5395149 () Bool)

(declare-fun res!2292864 () Bool)

(assert (=> b!5395149 (=> res!2292864 e!3345583)))

(declare-fun generalisedConcat!818 (List!61746) Regex!15149)

(assert (=> b!5395149 (= res!2292864 (not (= r!7292 (generalisedConcat!818 (exprs!5033 (h!68071 zl!343))))))))

(declare-fun b!5395150 () Bool)

(declare-fun res!2292847 () Bool)

(assert (=> b!5395150 (=> res!2292847 e!3345583)))

(assert (=> b!5395150 (= res!2292847 (or ((_ is EmptyExpr!15149) r!7292) ((_ is EmptyLang!15149) r!7292) ((_ is ElementMatch!15149) r!7292) ((_ is Union!15149) r!7292) (not ((_ is Concat!23994) r!7292))))))

(declare-fun b!5395151 () Bool)

(declare-fun e!3345597 () Bool)

(assert (=> b!5395151 (= e!3345575 e!3345597)))

(declare-fun res!2292852 () Bool)

(assert (=> b!5395151 (=> (not res!2292852) (not e!3345597))))

(declare-fun lt!2198330 () Regex!15149)

(assert (=> b!5395151 (= res!2292852 (= r!7292 lt!2198330))))

(assert (=> b!5395151 (= lt!2198330 (unfocusZipper!891 zl!343))))

(declare-fun b!5395152 () Bool)

(declare-fun Unit!154120 () Unit!154118)

(assert (=> b!5395152 (= e!3345593 Unit!154120)))

(declare-fun lt!2198364 () Unit!154118)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!386 ((InoxSet Context!9066) (InoxSet Context!9066) List!61748) Unit!154118)

(assert (=> b!5395152 (= lt!2198364 (lemmaZipperConcatMatchesSameAsBothZippers!386 lt!2198355 lt!2198338 (t!374971 s!2326)))))

(declare-fun res!2292868 () Bool)

(assert (=> b!5395152 (= res!2292868 (matchZipper!1393 lt!2198355 (t!374971 s!2326)))))

(assert (=> b!5395152 (=> res!2292868 e!3345586)))

(assert (=> b!5395152 (= (matchZipper!1393 ((_ map or) lt!2198355 lt!2198338) (t!374971 s!2326)) e!3345586)))

(declare-fun b!5395153 () Bool)

(declare-fun e!3345580 () Bool)

(assert (=> b!5395153 (= e!3345580 e!3345594)))

(declare-fun res!2292862 () Bool)

(assert (=> b!5395153 (=> res!2292862 e!3345594)))

(declare-fun lt!2198370 () (InoxSet Context!9066))

(assert (=> b!5395153 (= res!2292862 (not (= lt!2198331 (matchZipper!1393 lt!2198370 (t!374971 s!2326)))))))

(assert (=> b!5395153 (= lt!2198331 (matchZipper!1393 lt!2198341 s!2326))))

(declare-fun b!5395154 () Bool)

(declare-fun res!2292849 () Bool)

(assert (=> b!5395154 (=> res!2292849 e!3345584)))

(assert (=> b!5395154 (= res!2292849 (not (matchZipper!1393 z!1189 s!2326)))))

(declare-fun b!5395155 () Bool)

(declare-fun Unit!154121 () Unit!154118)

(assert (=> b!5395155 (= e!3345593 Unit!154121)))

(declare-fun b!5395156 () Bool)

(declare-fun e!3345596 () Bool)

(assert (=> b!5395156 (= e!3345595 e!3345596)))

(declare-fun res!2292855 () Bool)

(assert (=> b!5395156 (=> res!2292855 e!3345596)))

(declare-fun lt!2198353 () (InoxSet Context!9066))

(assert (=> b!5395156 (= res!2292855 (not (= lt!2198355 lt!2198353)))))

(assert (=> b!5395156 (= lt!2198353 (derivationStepZipperDown!597 (reg!15478 (regOne!30810 r!7292)) lt!2198340 (h!68072 s!2326)))))

(assert (=> b!5395156 (= lt!2198340 (Context!9067 lt!2198334))))

(assert (=> b!5395156 (= lt!2198334 (Cons!61622 lt!2198354 (t!374969 (exprs!5033 (h!68071 zl!343)))))))

(assert (=> b!5395156 (= lt!2198354 (Star!15149 (reg!15478 (regOne!30810 r!7292))))))

(declare-fun b!5395157 () Bool)

(declare-fun res!2292858 () Bool)

(assert (=> b!5395157 (=> res!2292858 e!3345583)))

(declare-fun generalisedUnion!1078 (List!61746) Regex!15149)

(declare-fun unfocusZipperList!591 (List!61747) List!61746)

(assert (=> b!5395157 (= res!2292858 (not (= r!7292 (generalisedUnion!1078 (unfocusZipperList!591 zl!343)))))))

(declare-fun b!5395158 () Bool)

(declare-fun tp!1493484 () Bool)

(declare-fun tp!1493482 () Bool)

(assert (=> b!5395158 (= e!3345598 (and tp!1493484 tp!1493482))))

(declare-fun b!5395159 () Bool)

(declare-fun res!2292842 () Bool)

(assert (=> b!5395159 (=> res!2292842 e!3345583)))

(assert (=> b!5395159 (= res!2292842 (not ((_ is Cons!61622) (exprs!5033 (h!68071 zl!343)))))))

(declare-fun b!5395160 () Bool)

(assert (=> b!5395160 (= e!3345591 e!3345584)))

(declare-fun res!2292854 () Bool)

(assert (=> b!5395160 (=> res!2292854 e!3345584)))

(assert (=> b!5395160 (= res!2292854 lt!2198363)))

(declare-fun lt!2198360 () Regex!15149)

(declare-fun matchR!7334 (Regex!15149 List!61748) Bool)

(declare-fun matchRSpec!2252 (Regex!15149 List!61748) Bool)

(assert (=> b!5395160 (= (matchR!7334 lt!2198360 s!2326) (matchRSpec!2252 lt!2198360 s!2326))))

(declare-fun lt!2198350 () Unit!154118)

(declare-fun mainMatchTheorem!2252 (Regex!15149 List!61748) Unit!154118)

(assert (=> b!5395160 (= lt!2198350 (mainMatchTheorem!2252 lt!2198360 s!2326))))

(declare-fun b!5395161 () Bool)

(declare-fun res!2292856 () Bool)

(assert (=> b!5395161 (=> res!2292856 e!3345594)))

(assert (=> b!5395161 (= res!2292856 (not (= lt!2198330 r!7292)))))

(declare-fun b!5395162 () Bool)

(declare-fun res!2292846 () Bool)

(assert (=> b!5395162 (=> (not res!2292846) (not e!3345575))))

(declare-fun toList!8933 ((InoxSet Context!9066)) List!61747)

(assert (=> b!5395162 (= res!2292846 (= (toList!8933 z!1189) zl!343))))

(declare-fun b!5395163 () Bool)

(declare-fun tp_is_empty!39551 () Bool)

(declare-fun tp!1493479 () Bool)

(assert (=> b!5395163 (= e!3345581 (and tp_is_empty!39551 tp!1493479))))

(declare-fun b!5395164 () Bool)

(declare-fun tp!1493477 () Bool)

(assert (=> b!5395164 (= e!3345578 tp!1493477)))

(declare-fun b!5395165 () Bool)

(declare-fun res!2292838 () Bool)

(assert (=> b!5395165 (=> res!2292838 e!3345584)))

(assert (=> b!5395165 (= res!2292838 (not lt!2198357))))

(declare-fun b!5395166 () Bool)

(assert (=> b!5395166 (= e!3345596 e!3345580)))

(declare-fun res!2292843 () Bool)

(assert (=> b!5395166 (=> res!2292843 e!3345580)))

(assert (=> b!5395166 (= res!2292843 (not (= lt!2198370 lt!2198353)))))

(declare-fun lt!2198368 () Context!9066)

(assert (=> b!5395166 (= (flatMap!876 lt!2198341 lambda!280501) (derivationStepZipperUp!521 lt!2198368 (h!68072 s!2326)))))

(declare-fun lt!2198359 () Unit!154118)

(assert (=> b!5395166 (= lt!2198359 (lemmaFlatMapOnSingletonSet!408 lt!2198341 lt!2198368 lambda!280501))))

(declare-fun lt!2198345 () (InoxSet Context!9066))

(assert (=> b!5395166 (= lt!2198345 (derivationStepZipperUp!521 lt!2198368 (h!68072 s!2326)))))

(declare-fun derivationStepZipper!1388 ((InoxSet Context!9066) C!30568) (InoxSet Context!9066))

(assert (=> b!5395166 (= lt!2198370 (derivationStepZipper!1388 lt!2198341 (h!68072 s!2326)))))

(assert (=> b!5395166 (= lt!2198341 (store ((as const (Array Context!9066 Bool)) false) lt!2198368 true))))

(assert (=> b!5395166 (= lt!2198368 (Context!9067 (Cons!61622 (reg!15478 (regOne!30810 r!7292)) lt!2198334)))))

(declare-fun b!5395167 () Bool)

(assert (=> b!5395167 (= e!3345579 e!3345588)))

(declare-fun res!2292848 () Bool)

(assert (=> b!5395167 (=> res!2292848 e!3345588)))

(assert (=> b!5395167 (= res!2292848 (not (= (unfocusZipper!891 (Cons!61623 lt!2198368 Nil!61623)) lt!2198360)))))

(assert (=> b!5395167 (= lt!2198360 (Concat!23994 (reg!15478 (regOne!30810 r!7292)) lt!2198333))))

(declare-fun b!5395168 () Bool)

(assert (=> b!5395168 (= e!3345598 tp_is_empty!39551)))

(declare-fun b!5395169 () Bool)

(declare-fun tp!1493480 () Bool)

(declare-fun tp!1493476 () Bool)

(assert (=> b!5395169 (= e!3345598 (and tp!1493480 tp!1493476))))

(declare-fun b!5395170 () Bool)

(assert (=> b!5395170 (= e!3345597 (not e!3345583))))

(declare-fun res!2292837 () Bool)

(assert (=> b!5395170 (=> res!2292837 e!3345583)))

(assert (=> b!5395170 (= res!2292837 (not ((_ is Cons!61623) zl!343)))))

(assert (=> b!5395170 (= lt!2198363 (matchRSpec!2252 r!7292 s!2326))))

(assert (=> b!5395170 (= lt!2198363 (matchR!7334 r!7292 s!2326))))

(declare-fun lt!2198366 () Unit!154118)

(assert (=> b!5395170 (= lt!2198366 (mainMatchTheorem!2252 r!7292 s!2326))))

(declare-fun b!5395171 () Bool)

(declare-fun res!2292865 () Bool)

(assert (=> b!5395171 (=> res!2292865 e!3345592)))

(assert (=> b!5395171 (= res!2292865 (not (matchZipper!1393 lt!2198347 (_1!35651 lt!2198336))))))

(declare-fun b!5395172 () Bool)

(declare-fun res!2292841 () Bool)

(assert (=> b!5395172 (=> res!2292841 e!3345576)))

(declare-fun isEmpty!33622 (List!61746) Bool)

(assert (=> b!5395172 (= res!2292841 (isEmpty!33622 (t!374969 (exprs!5033 (h!68071 zl!343)))))))

(declare-fun b!5395173 () Bool)

(assert (=> b!5395173 (= e!3345590 (nullable!5318 (regOne!30810 (regOne!30810 r!7292))))))

(assert (= (and start!566838 res!2292861) b!5395162))

(assert (= (and b!5395162 res!2292846) b!5395151))

(assert (= (and b!5395151 res!2292852) b!5395170))

(assert (= (and b!5395170 (not res!2292837)) b!5395132))

(assert (= (and b!5395132 (not res!2292863)) b!5395149))

(assert (= (and b!5395149 (not res!2292864)) b!5395159))

(assert (= (and b!5395159 (not res!2292842)) b!5395157))

(assert (= (and b!5395157 (not res!2292858)) b!5395150))

(assert (= (and b!5395150 (not res!2292847)) b!5395135))

(assert (= (and b!5395135 (not res!2292850)) b!5395172))

(assert (= (and b!5395172 (not res!2292841)) b!5395141))

(assert (= (and b!5395141 c!940256) b!5395152))

(assert (= (and b!5395141 (not c!940256)) b!5395155))

(assert (= (and b!5395152 (not res!2292868)) b!5395136))

(assert (= (and b!5395141 (not res!2292839)) b!5395143))

(assert (= (and b!5395143 res!2292845) b!5395173))

(assert (= (and b!5395143 (not res!2292869)) b!5395146))

(assert (= (and b!5395146 (not res!2292859)) b!5395156))

(assert (= (and b!5395156 (not res!2292855)) b!5395166))

(assert (= (and b!5395166 (not res!2292843)) b!5395153))

(assert (= (and b!5395153 (not res!2292862)) b!5395161))

(assert (= (and b!5395161 (not res!2292856)) b!5395134))

(assert (= (and b!5395134 (not res!2292851)) b!5395167))

(assert (= (and b!5395167 (not res!2292848)) b!5395147))

(assert (= (and b!5395147 (not res!2292844)) b!5395133))

(assert (= (and b!5395133 (not res!2292840)) b!5395160))

(assert (= (and b!5395160 (not res!2292854)) b!5395154))

(assert (= (and b!5395154 (not res!2292849)) b!5395165))

(assert (= (and b!5395165 (not res!2292838)) b!5395138))

(assert (= (and b!5395138 res!2292866) b!5395137))

(assert (= (and b!5395138 (not res!2292857)) b!5395139))

(assert (= (and b!5395139 (not res!2292867)) b!5395131))

(assert (= (and b!5395131 (not res!2292853)) b!5395140))

(assert (= (and b!5395140 (not res!2292860)) b!5395171))

(assert (= (and b!5395171 (not res!2292865)) b!5395142))

(assert (= (and start!566838 ((_ is ElementMatch!15149) r!7292)) b!5395168))

(assert (= (and start!566838 ((_ is Concat!23994) r!7292)) b!5395169))

(assert (= (and start!566838 ((_ is Star!15149) r!7292)) b!5395148))

(assert (= (and start!566838 ((_ is Union!15149) r!7292)) b!5395158))

(assert (= (and start!566838 condSetEmpty!35075) setIsEmpty!35075))

(assert (= (and start!566838 (not condSetEmpty!35075)) setNonEmpty!35075))

(assert (= setNonEmpty!35075 b!5395145))

(assert (= b!5395144 b!5395164))

(assert (= (and start!566838 ((_ is Cons!61623) zl!343)) b!5395144))

(assert (= (and start!566838 ((_ is Cons!61624) s!2326)) b!5395163))

(declare-fun m!6420106 () Bool)

(assert (=> b!5395137 m!6420106))

(declare-fun m!6420108 () Bool)

(assert (=> b!5395135 m!6420108))

(declare-fun m!6420110 () Bool)

(assert (=> b!5395135 m!6420110))

(declare-fun m!6420112 () Bool)

(assert (=> b!5395135 m!6420112))

(declare-fun m!6420114 () Bool)

(assert (=> b!5395135 m!6420114))

(declare-fun m!6420116 () Bool)

(assert (=> b!5395135 m!6420116))

(assert (=> b!5395135 m!6420112))

(assert (=> b!5395135 m!6420108))

(declare-fun m!6420118 () Bool)

(assert (=> b!5395135 m!6420118))

(declare-fun m!6420120 () Bool)

(assert (=> b!5395147 m!6420120))

(declare-fun m!6420122 () Bool)

(assert (=> b!5395147 m!6420122))

(declare-fun m!6420124 () Bool)

(assert (=> b!5395147 m!6420124))

(declare-fun m!6420126 () Bool)

(assert (=> b!5395147 m!6420126))

(declare-fun m!6420128 () Bool)

(assert (=> b!5395147 m!6420128))

(declare-fun m!6420130 () Bool)

(assert (=> b!5395147 m!6420130))

(declare-fun m!6420132 () Bool)

(assert (=> b!5395147 m!6420132))

(declare-fun m!6420134 () Bool)

(assert (=> b!5395147 m!6420134))

(declare-fun m!6420136 () Bool)

(assert (=> b!5395147 m!6420136))

(declare-fun m!6420138 () Bool)

(assert (=> b!5395153 m!6420138))

(declare-fun m!6420140 () Bool)

(assert (=> b!5395153 m!6420140))

(assert (=> b!5395136 m!6420106))

(declare-fun m!6420142 () Bool)

(assert (=> b!5395157 m!6420142))

(assert (=> b!5395157 m!6420142))

(declare-fun m!6420144 () Bool)

(assert (=> b!5395157 m!6420144))

(declare-fun m!6420146 () Bool)

(assert (=> b!5395154 m!6420146))

(declare-fun m!6420148 () Bool)

(assert (=> b!5395170 m!6420148))

(declare-fun m!6420150 () Bool)

(assert (=> b!5395170 m!6420150))

(declare-fun m!6420152 () Bool)

(assert (=> b!5395170 m!6420152))

(declare-fun m!6420154 () Bool)

(assert (=> b!5395171 m!6420154))

(declare-fun m!6420156 () Bool)

(assert (=> b!5395173 m!6420156))

(declare-fun m!6420158 () Bool)

(assert (=> b!5395132 m!6420158))

(declare-fun m!6420160 () Bool)

(assert (=> b!5395160 m!6420160))

(declare-fun m!6420162 () Bool)

(assert (=> b!5395160 m!6420162))

(declare-fun m!6420164 () Bool)

(assert (=> b!5395160 m!6420164))

(declare-fun m!6420166 () Bool)

(assert (=> b!5395131 m!6420166))

(declare-fun m!6420168 () Bool)

(assert (=> b!5395131 m!6420168))

(declare-fun m!6420170 () Bool)

(assert (=> b!5395131 m!6420170))

(declare-fun m!6420172 () Bool)

(assert (=> b!5395131 m!6420172))

(declare-fun m!6420174 () Bool)

(assert (=> b!5395131 m!6420174))

(declare-fun m!6420176 () Bool)

(assert (=> b!5395131 m!6420176))

(declare-fun m!6420178 () Bool)

(assert (=> b!5395141 m!6420178))

(declare-fun m!6420180 () Bool)

(assert (=> b!5395141 m!6420180))

(declare-fun m!6420182 () Bool)

(assert (=> b!5395141 m!6420182))

(declare-fun m!6420184 () Bool)

(assert (=> b!5395141 m!6420184))

(declare-fun m!6420186 () Bool)

(assert (=> b!5395141 m!6420186))

(declare-fun m!6420188 () Bool)

(assert (=> b!5395141 m!6420188))

(declare-fun m!6420190 () Bool)

(assert (=> b!5395141 m!6420190))

(declare-fun m!6420192 () Bool)

(assert (=> b!5395172 m!6420192))

(declare-fun m!6420194 () Bool)

(assert (=> b!5395166 m!6420194))

(declare-fun m!6420196 () Bool)

(assert (=> b!5395166 m!6420196))

(declare-fun m!6420198 () Bool)

(assert (=> b!5395166 m!6420198))

(declare-fun m!6420200 () Bool)

(assert (=> b!5395166 m!6420200))

(declare-fun m!6420202 () Bool)

(assert (=> b!5395166 m!6420202))

(declare-fun m!6420204 () Bool)

(assert (=> b!5395144 m!6420204))

(declare-fun m!6420206 () Bool)

(assert (=> b!5395149 m!6420206))

(declare-fun m!6420208 () Bool)

(assert (=> b!5395138 m!6420208))

(declare-fun m!6420210 () Bool)

(assert (=> b!5395162 m!6420210))

(declare-fun m!6420212 () Bool)

(assert (=> b!5395156 m!6420212))

(declare-fun m!6420214 () Bool)

(assert (=> start!566838 m!6420214))

(declare-fun m!6420216 () Bool)

(assert (=> b!5395142 m!6420216))

(declare-fun m!6420218 () Bool)

(assert (=> b!5395133 m!6420218))

(declare-fun m!6420220 () Bool)

(assert (=> b!5395167 m!6420220))

(declare-fun m!6420222 () Bool)

(assert (=> setNonEmpty!35075 m!6420222))

(declare-fun m!6420224 () Bool)

(assert (=> b!5395151 m!6420224))

(declare-fun m!6420226 () Bool)

(assert (=> b!5395140 m!6420226))

(declare-fun m!6420228 () Bool)

(assert (=> b!5395140 m!6420228))

(declare-fun m!6420230 () Bool)

(assert (=> b!5395140 m!6420230))

(declare-fun m!6420232 () Bool)

(assert (=> b!5395140 m!6420232))

(declare-fun m!6420234 () Bool)

(assert (=> b!5395140 m!6420234))

(declare-fun m!6420236 () Bool)

(assert (=> b!5395152 m!6420236))

(assert (=> b!5395152 m!6420208))

(declare-fun m!6420238 () Bool)

(assert (=> b!5395152 m!6420238))

(check-sat (not setNonEmpty!35075) (not b!5395173) (not b!5395157) (not b!5395142) (not b!5395144) (not b!5395167) (not b!5395136) (not b!5395158) (not b!5395138) (not start!566838) (not b!5395140) tp_is_empty!39551 (not b!5395137) (not b!5395141) (not b!5395170) (not b!5395169) (not b!5395133) (not b!5395163) (not b!5395166) (not b!5395160) (not b!5395151) (not b!5395171) (not b!5395148) (not b!5395154) (not b!5395172) (not b!5395132) (not b!5395149) (not b!5395164) (not b!5395153) (not b!5395162) (not b!5395147) (not b!5395152) (not b!5395131) (not b!5395156) (not b!5395135) (not b!5395145))
(check-sat)
