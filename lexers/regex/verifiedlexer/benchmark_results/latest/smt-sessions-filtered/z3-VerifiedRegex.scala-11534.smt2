; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!633790 () Bool)

(assert start!633790)

(declare-fun b!6412781 () Bool)

(assert (=> b!6412781 true))

(assert (=> b!6412781 true))

(declare-fun lambda!354022 () Int)

(declare-fun lambda!354021 () Int)

(assert (=> b!6412781 (not (= lambda!354022 lambda!354021))))

(assert (=> b!6412781 true))

(assert (=> b!6412781 true))

(declare-fun b!6412770 () Bool)

(assert (=> b!6412770 true))

(declare-fun bs!1612153 () Bool)

(declare-fun b!6412754 () Bool)

(assert (= bs!1612153 (and b!6412754 b!6412781)))

(declare-datatypes ((C!32900 0))(
  ( (C!32901 (val!26152 Int)) )
))
(declare-datatypes ((Regex!16315 0))(
  ( (ElementMatch!16315 (c!1170970 C!32900)) (Concat!25160 (regOne!33142 Regex!16315) (regTwo!33142 Regex!16315)) (EmptyExpr!16315) (Star!16315 (reg!16644 Regex!16315)) (EmptyLang!16315) (Union!16315 (regOne!33143 Regex!16315) (regTwo!33143 Regex!16315)) )
))
(declare-fun r!7292 () Regex!16315)

(declare-fun lt!2375222 () Regex!16315)

(declare-fun lambda!354024 () Int)

(assert (=> bs!1612153 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354024 lambda!354021))))

(assert (=> bs!1612153 (not (= lambda!354024 lambda!354022))))

(assert (=> b!6412754 true))

(assert (=> b!6412754 true))

(assert (=> b!6412754 true))

(declare-fun lambda!354025 () Int)

(assert (=> bs!1612153 (not (= lambda!354025 lambda!354021))))

(assert (=> bs!1612153 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354025 lambda!354022))))

(assert (=> b!6412754 (not (= lambda!354025 lambda!354024))))

(assert (=> b!6412754 true))

(assert (=> b!6412754 true))

(assert (=> b!6412754 true))

(declare-fun b!6412747 () Bool)

(declare-fun e!3891316 () Bool)

(declare-fun tp!1781701 () Bool)

(assert (=> b!6412747 (= e!3891316 tp!1781701)))

(declare-fun b!6412748 () Bool)

(declare-fun e!3891306 () Bool)

(declare-fun e!3891305 () Bool)

(assert (=> b!6412748 (= e!3891306 e!3891305)))

(declare-fun res!2635660 () Bool)

(assert (=> b!6412748 (=> res!2635660 e!3891305)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65244 0))(
  ( (Nil!65120) (Cons!65120 (h!71568 Regex!16315) (t!378856 List!65244)) )
))
(declare-datatypes ((Context!11398 0))(
  ( (Context!11399 (exprs!6199 List!65244)) )
))
(declare-fun lt!2375213 () (InoxSet Context!11398))

(declare-fun lt!2375188 () (InoxSet Context!11398))

(assert (=> b!6412748 (= res!2635660 (not (= lt!2375213 lt!2375188)))))

(declare-fun lt!2375199 () (InoxSet Context!11398))

(declare-datatypes ((List!65245 0))(
  ( (Nil!65121) (Cons!65121 (h!71569 C!32900) (t!378857 List!65245)) )
))
(declare-fun s!2326 () List!65245)

(declare-fun lambda!354023 () Int)

(declare-fun lt!2375221 () Context!11398)

(declare-fun flatMap!1820 ((InoxSet Context!11398) Int) (InoxSet Context!11398))

(declare-fun derivationStepZipperUp!1489 (Context!11398 C!32900) (InoxSet Context!11398))

(assert (=> b!6412748 (= (flatMap!1820 lt!2375199 lambda!354023) (derivationStepZipperUp!1489 lt!2375221 (h!71569 s!2326)))))

(declare-datatypes ((Unit!158591 0))(
  ( (Unit!158592) )
))
(declare-fun lt!2375194 () Unit!158591)

(declare-fun lemmaFlatMapOnSingletonSet!1346 ((InoxSet Context!11398) Context!11398 Int) Unit!158591)

(assert (=> b!6412748 (= lt!2375194 (lemmaFlatMapOnSingletonSet!1346 lt!2375199 lt!2375221 lambda!354023))))

(declare-fun lt!2375187 () (InoxSet Context!11398))

(assert (=> b!6412748 (= lt!2375187 (derivationStepZipperUp!1489 lt!2375221 (h!71569 s!2326)))))

(declare-fun derivationStepZipper!2281 ((InoxSet Context!11398) C!32900) (InoxSet Context!11398))

(assert (=> b!6412748 (= lt!2375213 (derivationStepZipper!2281 lt!2375199 (h!71569 s!2326)))))

(assert (=> b!6412748 (= lt!2375199 (store ((as const (Array Context!11398 Bool)) false) lt!2375221 true))))

(declare-fun lt!2375219 () List!65244)

(assert (=> b!6412748 (= lt!2375221 (Context!11399 (Cons!65120 (reg!16644 (regOne!33142 r!7292)) lt!2375219)))))

(declare-fun b!6412749 () Bool)

(declare-fun tp_is_empty!41883 () Bool)

(assert (=> b!6412749 (= e!3891316 tp_is_empty!41883)))

(declare-fun tp!1781696 () Bool)

(declare-fun e!3891300 () Bool)

(declare-fun b!6412750 () Bool)

(declare-datatypes ((List!65246 0))(
  ( (Nil!65122) (Cons!65122 (h!71570 Context!11398) (t!378858 List!65246)) )
))
(declare-fun zl!343 () List!65246)

(declare-fun e!3891294 () Bool)

(declare-fun inv!84034 (Context!11398) Bool)

(assert (=> b!6412750 (= e!3891300 (and (inv!84034 (h!71570 zl!343)) e!3891294 tp!1781696))))

(declare-fun res!2635656 () Bool)

(declare-fun e!3891296 () Bool)

(assert (=> start!633790 (=> (not res!2635656) (not e!3891296))))

(declare-fun validRegex!8051 (Regex!16315) Bool)

(assert (=> start!633790 (= res!2635656 (validRegex!8051 r!7292))))

(assert (=> start!633790 e!3891296))

(assert (=> start!633790 e!3891316))

(declare-fun condSetEmpty!43758 () Bool)

(declare-fun z!1189 () (InoxSet Context!11398))

(assert (=> start!633790 (= condSetEmpty!43758 (= z!1189 ((as const (Array Context!11398 Bool)) false)))))

(declare-fun setRes!43758 () Bool)

(assert (=> start!633790 setRes!43758))

(assert (=> start!633790 e!3891300))

(declare-fun e!3891314 () Bool)

(assert (=> start!633790 e!3891314))

(declare-fun b!6412751 () Bool)

(declare-fun res!2635668 () Bool)

(assert (=> b!6412751 (=> res!2635668 e!3891305)))

(declare-fun lt!2375184 () Regex!16315)

(assert (=> b!6412751 (= res!2635668 (not (= lt!2375184 r!7292)))))

(declare-fun b!6412752 () Bool)

(declare-fun res!2635652 () Bool)

(declare-fun e!3891312 () Bool)

(assert (=> b!6412752 (=> res!2635652 e!3891312)))

(declare-datatypes ((tuple2!66588 0))(
  ( (tuple2!66589 (_1!36597 List!65245) (_2!36597 List!65245)) )
))
(declare-fun lt!2375224 () tuple2!66588)

(declare-fun matchR!8498 (Regex!16315 List!65245) Bool)

(assert (=> b!6412752 (= res!2635652 (not (matchR!8498 lt!2375222 (_1!36597 lt!2375224))))))

(declare-fun b!6412753 () Bool)

(declare-fun e!3891310 () Bool)

(declare-fun e!3891295 () Bool)

(assert (=> b!6412753 (= e!3891310 (not e!3891295))))

(declare-fun res!2635663 () Bool)

(assert (=> b!6412753 (=> res!2635663 e!3891295)))

(get-info :version)

(assert (=> b!6412753 (= res!2635663 (not ((_ is Cons!65122) zl!343)))))

(declare-fun lt!2375191 () Bool)

(declare-fun lt!2375202 () Bool)

(assert (=> b!6412753 (= lt!2375191 lt!2375202)))

(declare-fun matchRSpec!3416 (Regex!16315 List!65245) Bool)

(assert (=> b!6412753 (= lt!2375202 (matchRSpec!3416 r!7292 s!2326))))

(assert (=> b!6412753 (= lt!2375191 (matchR!8498 r!7292 s!2326))))

(declare-fun lt!2375217 () Unit!158591)

(declare-fun mainMatchTheorem!3416 (Regex!16315 List!65245) Unit!158591)

(assert (=> b!6412753 (= lt!2375217 (mainMatchTheorem!3416 r!7292 s!2326))))

(declare-fun setIsEmpty!43758 () Bool)

(assert (=> setIsEmpty!43758 setRes!43758))

(declare-fun e!3891298 () Bool)

(assert (=> b!6412754 (= e!3891298 e!3891312)))

(declare-fun res!2635649 () Bool)

(assert (=> b!6412754 (=> res!2635649 e!3891312)))

(declare-fun ++!14383 (List!65245 List!65245) List!65245)

(assert (=> b!6412754 (= res!2635649 (not (= (++!14383 (_1!36597 lt!2375224) (_2!36597 lt!2375224)) s!2326)))))

(declare-datatypes ((Option!16206 0))(
  ( (None!16205) (Some!16205 (v!52378 tuple2!66588)) )
))
(declare-fun lt!2375214 () Option!16206)

(declare-fun get!22556 (Option!16206) tuple2!66588)

(assert (=> b!6412754 (= lt!2375224 (get!22556 lt!2375214))))

(declare-fun Exists!3385 (Int) Bool)

(assert (=> b!6412754 (= (Exists!3385 lambda!354024) (Exists!3385 lambda!354025))))

(declare-fun lt!2375196 () Unit!158591)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1922 (Regex!16315 Regex!16315 List!65245) Unit!158591)

(assert (=> b!6412754 (= lt!2375196 (lemmaExistCutMatchRandMatchRSpecEquivalent!1922 lt!2375222 (regTwo!33142 r!7292) s!2326))))

(declare-fun isDefined!12909 (Option!16206) Bool)

(assert (=> b!6412754 (= (isDefined!12909 lt!2375214) (Exists!3385 lambda!354024))))

(declare-fun findConcatSeparation!2620 (Regex!16315 Regex!16315 List!65245 List!65245 List!65245) Option!16206)

(assert (=> b!6412754 (= lt!2375214 (findConcatSeparation!2620 lt!2375222 (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326))))

(declare-fun lt!2375190 () Unit!158591)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2384 (Regex!16315 Regex!16315 List!65245) Unit!158591)

(assert (=> b!6412754 (= lt!2375190 (lemmaFindConcatSeparationEquivalentToExists!2384 lt!2375222 (regTwo!33142 r!7292) s!2326))))

(declare-fun b!6412755 () Bool)

(declare-fun tp!1781700 () Bool)

(declare-fun tp!1781698 () Bool)

(assert (=> b!6412755 (= e!3891316 (and tp!1781700 tp!1781698))))

(declare-fun b!6412756 () Bool)

(declare-fun e!3891299 () Bool)

(assert (=> b!6412756 (= e!3891299 (or (not lt!2375191) lt!2375202))))

(declare-fun b!6412757 () Bool)

(declare-fun res!2635651 () Bool)

(declare-fun e!3891308 () Bool)

(assert (=> b!6412757 (=> res!2635651 e!3891308)))

(assert (=> b!6412757 (= res!2635651 (or ((_ is Concat!25160) (regOne!33142 r!7292)) (not ((_ is Star!16315) (regOne!33142 r!7292)))))))

(declare-fun b!6412758 () Bool)

(declare-fun tp!1781697 () Bool)

(declare-fun tp!1781695 () Bool)

(assert (=> b!6412758 (= e!3891316 (and tp!1781697 tp!1781695))))

(declare-fun b!6412759 () Bool)

(declare-fun res!2635658 () Bool)

(assert (=> b!6412759 (=> res!2635658 e!3891305)))

(declare-fun matchZipper!2327 ((InoxSet Context!11398) List!65245) Bool)

(assert (=> b!6412759 (= res!2635658 (not (= (matchZipper!2327 lt!2375199 s!2326) (matchZipper!2327 lt!2375213 (t!378857 s!2326)))))))

(declare-fun b!6412760 () Bool)

(declare-fun e!3891293 () Bool)

(declare-fun e!3891311 () Bool)

(assert (=> b!6412760 (= e!3891293 e!3891311)))

(declare-fun res!2635647 () Bool)

(assert (=> b!6412760 (=> res!2635647 e!3891311)))

(declare-fun lt!2375193 () List!65246)

(declare-fun zipperDepth!384 (List!65246) Int)

(assert (=> b!6412760 (= res!2635647 (< (zipperDepth!384 zl!343) (zipperDepth!384 lt!2375193)))))

(declare-fun lt!2375218 () Context!11398)

(assert (=> b!6412760 (= lt!2375193 (Cons!65122 lt!2375218 Nil!65122))))

(declare-fun b!6412761 () Bool)

(declare-fun res!2635655 () Bool)

(assert (=> b!6412761 (=> res!2635655 e!3891308)))

(declare-fun e!3891304 () Bool)

(assert (=> b!6412761 (= res!2635655 e!3891304)))

(declare-fun res!2635653 () Bool)

(assert (=> b!6412761 (=> (not res!2635653) (not e!3891304))))

(assert (=> b!6412761 (= res!2635653 ((_ is Concat!25160) (regOne!33142 r!7292)))))

(declare-fun b!6412762 () Bool)

(declare-fun e!3891313 () Bool)

(declare-fun e!3891297 () Bool)

(assert (=> b!6412762 (= e!3891313 e!3891297)))

(declare-fun res!2635657 () Bool)

(assert (=> b!6412762 (=> res!2635657 e!3891297)))

(declare-fun lt!2375204 () Context!11398)

(declare-fun unfocusZipper!2057 (List!65246) Regex!16315)

(assert (=> b!6412762 (= res!2635657 (not (= (unfocusZipper!2057 (Cons!65122 lt!2375204 Nil!65122)) (reg!16644 (regOne!33142 r!7292)))))))

(declare-fun lt!2375195 () Context!11398)

(declare-fun lt!2375207 () (InoxSet Context!11398))

(assert (=> b!6412762 (= (flatMap!1820 lt!2375207 lambda!354023) (derivationStepZipperUp!1489 lt!2375195 (h!71569 s!2326)))))

(declare-fun lt!2375212 () Unit!158591)

(assert (=> b!6412762 (= lt!2375212 (lemmaFlatMapOnSingletonSet!1346 lt!2375207 lt!2375195 lambda!354023))))

(declare-fun lt!2375183 () (InoxSet Context!11398))

(assert (=> b!6412762 (= (flatMap!1820 lt!2375183 lambda!354023) (derivationStepZipperUp!1489 lt!2375204 (h!71569 s!2326)))))

(declare-fun lt!2375192 () Unit!158591)

(assert (=> b!6412762 (= lt!2375192 (lemmaFlatMapOnSingletonSet!1346 lt!2375183 lt!2375204 lambda!354023))))

(declare-fun lt!2375223 () (InoxSet Context!11398))

(assert (=> b!6412762 (= lt!2375223 (derivationStepZipperUp!1489 lt!2375195 (h!71569 s!2326)))))

(declare-fun lt!2375189 () (InoxSet Context!11398))

(assert (=> b!6412762 (= lt!2375189 (derivationStepZipperUp!1489 lt!2375204 (h!71569 s!2326)))))

(assert (=> b!6412762 (= lt!2375207 (store ((as const (Array Context!11398 Bool)) false) lt!2375195 true))))

(assert (=> b!6412762 (= lt!2375183 (store ((as const (Array Context!11398 Bool)) false) lt!2375204 true))))

(assert (=> b!6412762 (= lt!2375204 (Context!11399 (Cons!65120 (reg!16644 (regOne!33142 r!7292)) Nil!65120)))))

(declare-fun b!6412763 () Bool)

(declare-fun res!2635637 () Bool)

(assert (=> b!6412763 (=> res!2635637 e!3891312)))

(assert (=> b!6412763 (= res!2635637 (not (matchR!8498 (regTwo!33142 r!7292) (_2!36597 lt!2375224))))))

(declare-fun b!6412764 () Bool)

(declare-fun res!2635641 () Bool)

(assert (=> b!6412764 (=> res!2635641 e!3891297)))

(declare-fun lt!2375208 () Regex!16315)

(assert (=> b!6412764 (= res!2635641 (not (= (unfocusZipper!2057 (Cons!65122 lt!2375195 Nil!65122)) lt!2375208)))))

(declare-fun b!6412765 () Bool)

(declare-fun nullable!6308 (Regex!16315) Bool)

(assert (=> b!6412765 (= e!3891304 (nullable!6308 (regOne!33142 (regOne!33142 r!7292))))))

(declare-fun b!6412766 () Bool)

(declare-fun res!2635661 () Bool)

(declare-fun e!3891301 () Bool)

(assert (=> b!6412766 (=> res!2635661 e!3891301)))

(declare-fun isEmpty!37268 (List!65244) Bool)

(assert (=> b!6412766 (= res!2635661 (isEmpty!37268 (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6412767 () Bool)

(declare-fun e!3891309 () Bool)

(assert (=> b!6412767 (= e!3891309 e!3891293)))

(declare-fun res!2635645 () Bool)

(assert (=> b!6412767 (=> res!2635645 e!3891293)))

(declare-fun lt!2375210 () Regex!16315)

(declare-fun regexDepth!342 (Regex!16315) Int)

(assert (=> b!6412767 (= res!2635645 (< (regexDepth!342 r!7292) (regexDepth!342 lt!2375210)))))

(declare-fun generalisedConcat!1912 (List!65244) Regex!16315)

(assert (=> b!6412767 (= lt!2375210 (generalisedConcat!1912 (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6412768 () Bool)

(declare-fun e!3891307 () Unit!158591)

(declare-fun Unit!158593 () Unit!158591)

(assert (=> b!6412768 (= e!3891307 Unit!158593)))

(declare-fun lt!2375197 () Unit!158591)

(declare-fun lt!2375211 () (InoxSet Context!11398))

(declare-fun lt!2375209 () (InoxSet Context!11398))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1146 ((InoxSet Context!11398) (InoxSet Context!11398) List!65245) Unit!158591)

(assert (=> b!6412768 (= lt!2375197 (lemmaZipperConcatMatchesSameAsBothZippers!1146 lt!2375209 lt!2375211 (t!378857 s!2326)))))

(declare-fun res!2635643 () Bool)

(assert (=> b!6412768 (= res!2635643 (matchZipper!2327 lt!2375209 (t!378857 s!2326)))))

(declare-fun e!3891303 () Bool)

(assert (=> b!6412768 (=> res!2635643 e!3891303)))

(assert (=> b!6412768 (= (matchZipper!2327 ((_ map or) lt!2375209 lt!2375211) (t!378857 s!2326)) e!3891303)))

(declare-fun b!6412769 () Bool)

(declare-fun e!3891302 () Bool)

(declare-fun tp!1781699 () Bool)

(assert (=> b!6412769 (= e!3891302 tp!1781699)))

(assert (=> b!6412770 (= e!3891301 e!3891308)))

(declare-fun res!2635638 () Bool)

(assert (=> b!6412770 (=> res!2635638 e!3891308)))

(assert (=> b!6412770 (= res!2635638 (or (and ((_ is ElementMatch!16315) (regOne!33142 r!7292)) (= (c!1170970 (regOne!33142 r!7292)) (h!71569 s!2326))) ((_ is Union!16315) (regOne!33142 r!7292))))))

(declare-fun lt!2375216 () Unit!158591)

(assert (=> b!6412770 (= lt!2375216 e!3891307)))

(declare-fun c!1170969 () Bool)

(assert (=> b!6412770 (= c!1170969 (nullable!6308 (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> b!6412770 (= (flatMap!1820 z!1189 lambda!354023) (derivationStepZipperUp!1489 (h!71570 zl!343) (h!71569 s!2326)))))

(declare-fun lt!2375186 () Unit!158591)

(assert (=> b!6412770 (= lt!2375186 (lemmaFlatMapOnSingletonSet!1346 z!1189 (h!71570 zl!343) lambda!354023))))

(assert (=> b!6412770 (= lt!2375211 (derivationStepZipperUp!1489 lt!2375218 (h!71569 s!2326)))))

(declare-fun derivationStepZipperDown!1563 (Regex!16315 Context!11398 C!32900) (InoxSet Context!11398))

(assert (=> b!6412770 (= lt!2375209 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (h!71570 zl!343))) lt!2375218 (h!71569 s!2326)))))

(assert (=> b!6412770 (= lt!2375218 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun lt!2375185 () (InoxSet Context!11398))

(assert (=> b!6412770 (= lt!2375185 (derivationStepZipperUp!1489 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))) (h!71569 s!2326)))))

(declare-fun b!6412771 () Bool)

(declare-fun e!3891315 () Bool)

(assert (=> b!6412771 (= e!3891315 e!3891313)))

(declare-fun res!2635644 () Bool)

(assert (=> b!6412771 (=> res!2635644 e!3891313)))

(declare-fun lt!2375201 () Regex!16315)

(assert (=> b!6412771 (= res!2635644 (not (= (unfocusZipper!2057 (Cons!65122 lt!2375221 Nil!65122)) lt!2375201)))))

(assert (=> b!6412771 (= lt!2375201 (Concat!25160 (reg!16644 (regOne!33142 r!7292)) lt!2375208))))

(declare-fun b!6412772 () Bool)

(declare-fun res!2635666 () Bool)

(assert (=> b!6412772 (=> res!2635666 e!3891295)))

(declare-fun generalisedUnion!2159 (List!65244) Regex!16315)

(declare-fun unfocusZipperList!1736 (List!65246) List!65244)

(assert (=> b!6412772 (= res!2635666 (not (= r!7292 (generalisedUnion!2159 (unfocusZipperList!1736 zl!343)))))))

(declare-fun b!6412773 () Bool)

(assert (=> b!6412773 (= e!3891305 e!3891315)))

(declare-fun res!2635662 () Bool)

(assert (=> b!6412773 (=> res!2635662 e!3891315)))

(assert (=> b!6412773 (= res!2635662 (not (= r!7292 lt!2375208)))))

(assert (=> b!6412773 (= lt!2375208 (Concat!25160 lt!2375222 (regTwo!33142 r!7292)))))

(declare-fun b!6412774 () Bool)

(declare-fun res!2635650 () Bool)

(assert (=> b!6412774 (=> res!2635650 e!3891312)))

(declare-fun isEmpty!37269 (List!65245) Bool)

(assert (=> b!6412774 (= res!2635650 (not (isEmpty!37269 (_1!36597 lt!2375224))))))

(declare-fun b!6412775 () Bool)

(declare-fun tp!1781694 () Bool)

(assert (=> b!6412775 (= e!3891314 (and tp_is_empty!41883 tp!1781694))))

(declare-fun b!6412776 () Bool)

(declare-fun res!2635636 () Bool)

(assert (=> b!6412776 (=> res!2635636 e!3891295)))

(assert (=> b!6412776 (= res!2635636 (not (= r!7292 (generalisedConcat!1912 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun b!6412777 () Bool)

(assert (=> b!6412777 (= e!3891297 e!3891298)))

(declare-fun res!2635665 () Bool)

(assert (=> b!6412777 (=> res!2635665 e!3891298)))

(assert (=> b!6412777 (= res!2635665 (not lt!2375191))))

(assert (=> b!6412777 e!3891299))

(declare-fun res!2635664 () Bool)

(assert (=> b!6412777 (=> (not res!2635664) (not e!3891299))))

(assert (=> b!6412777 (= res!2635664 (= (matchR!8498 lt!2375201 s!2326) (matchRSpec!3416 lt!2375201 s!2326)))))

(declare-fun lt!2375205 () Unit!158591)

(assert (=> b!6412777 (= lt!2375205 (mainMatchTheorem!3416 lt!2375201 s!2326))))

(declare-fun b!6412778 () Bool)

(declare-fun Unit!158594 () Unit!158591)

(assert (=> b!6412778 (= e!3891307 Unit!158594)))

(declare-fun b!6412779 () Bool)

(assert (=> b!6412779 (= e!3891303 (matchZipper!2327 lt!2375211 (t!378857 s!2326)))))

(declare-fun b!6412780 () Bool)

(declare-fun res!2635640 () Bool)

(assert (=> b!6412780 (=> (not res!2635640) (not e!3891296))))

(declare-fun toList!10099 ((InoxSet Context!11398)) List!65246)

(assert (=> b!6412780 (= res!2635640 (= (toList!10099 z!1189) zl!343))))

(assert (=> b!6412781 (= e!3891295 e!3891301)))

(declare-fun res!2635654 () Bool)

(assert (=> b!6412781 (=> res!2635654 e!3891301)))

(declare-fun lt!2375220 () Bool)

(assert (=> b!6412781 (= res!2635654 (or (not (= lt!2375191 lt!2375220)) ((_ is Nil!65121) s!2326)))))

(assert (=> b!6412781 (= (Exists!3385 lambda!354021) (Exists!3385 lambda!354022))))

(declare-fun lt!2375198 () Unit!158591)

(assert (=> b!6412781 (= lt!2375198 (lemmaExistCutMatchRandMatchRSpecEquivalent!1922 (regOne!33142 r!7292) (regTwo!33142 r!7292) s!2326))))

(assert (=> b!6412781 (= lt!2375220 (Exists!3385 lambda!354021))))

(assert (=> b!6412781 (= lt!2375220 (isDefined!12909 (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326)))))

(declare-fun lt!2375206 () Unit!158591)

(assert (=> b!6412781 (= lt!2375206 (lemmaFindConcatSeparationEquivalentToExists!2384 (regOne!33142 r!7292) (regTwo!33142 r!7292) s!2326))))

(declare-fun b!6412782 () Bool)

(declare-fun tp!1781693 () Bool)

(assert (=> b!6412782 (= e!3891294 tp!1781693)))

(declare-fun tp!1781702 () Bool)

(declare-fun setNonEmpty!43758 () Bool)

(declare-fun setElem!43758 () Context!11398)

(assert (=> setNonEmpty!43758 (= setRes!43758 (and tp!1781702 (inv!84034 setElem!43758) e!3891302))))

(declare-fun setRest!43758 () (InoxSet Context!11398))

(assert (=> setNonEmpty!43758 (= z!1189 ((_ map or) (store ((as const (Array Context!11398 Bool)) false) setElem!43758 true) setRest!43758))))

(declare-fun b!6412783 () Bool)

(declare-fun res!2635648 () Bool)

(assert (=> b!6412783 (=> res!2635648 e!3891295)))

(assert (=> b!6412783 (= res!2635648 (or ((_ is EmptyExpr!16315) r!7292) ((_ is EmptyLang!16315) r!7292) ((_ is ElementMatch!16315) r!7292) ((_ is Union!16315) r!7292) (not ((_ is Concat!25160) r!7292))))))

(declare-fun b!6412784 () Bool)

(assert (=> b!6412784 (= e!3891312 e!3891309)))

(declare-fun res!2635659 () Bool)

(assert (=> b!6412784 (=> res!2635659 e!3891309)))

(declare-fun lt!2375203 () (InoxSet Context!11398))

(assert (=> b!6412784 (= res!2635659 (not (= lt!2375211 (derivationStepZipper!2281 lt!2375203 (h!71569 s!2326)))))))

(assert (=> b!6412784 (= (flatMap!1820 lt!2375203 lambda!354023) (derivationStepZipperUp!1489 lt!2375218 (h!71569 s!2326)))))

(declare-fun lt!2375215 () Unit!158591)

(assert (=> b!6412784 (= lt!2375215 (lemmaFlatMapOnSingletonSet!1346 lt!2375203 lt!2375218 lambda!354023))))

(assert (=> b!6412784 (= lt!2375203 (store ((as const (Array Context!11398 Bool)) false) lt!2375218 true))))

(declare-fun b!6412785 () Bool)

(declare-fun res!2635667 () Bool)

(assert (=> b!6412785 (=> res!2635667 e!3891295)))

(declare-fun isEmpty!37270 (List!65246) Bool)

(assert (=> b!6412785 (= res!2635667 (not (isEmpty!37270 (t!378858 zl!343))))))

(declare-fun b!6412786 () Bool)

(assert (=> b!6412786 (= e!3891296 e!3891310)))

(declare-fun res!2635646 () Bool)

(assert (=> b!6412786 (=> (not res!2635646) (not e!3891310))))

(assert (=> b!6412786 (= res!2635646 (= r!7292 lt!2375184))))

(assert (=> b!6412786 (= lt!2375184 (unfocusZipper!2057 zl!343))))

(declare-fun b!6412787 () Bool)

(declare-fun res!2635642 () Bool)

(assert (=> b!6412787 (=> res!2635642 e!3891295)))

(assert (=> b!6412787 (= res!2635642 (not ((_ is Cons!65120) (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6412788 () Bool)

(assert (=> b!6412788 (= e!3891308 e!3891306)))

(declare-fun res!2635639 () Bool)

(assert (=> b!6412788 (=> res!2635639 e!3891306)))

(assert (=> b!6412788 (= res!2635639 (not (= lt!2375209 lt!2375188)))))

(assert (=> b!6412788 (= lt!2375188 (derivationStepZipperDown!1563 (reg!16644 (regOne!33142 r!7292)) lt!2375195 (h!71569 s!2326)))))

(assert (=> b!6412788 (= lt!2375195 (Context!11399 lt!2375219))))

(assert (=> b!6412788 (= lt!2375219 (Cons!65120 lt!2375222 (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> b!6412788 (= lt!2375222 (Star!16315 (reg!16644 (regOne!33142 r!7292))))))

(declare-fun b!6412789 () Bool)

(assert (=> b!6412789 (= e!3891311 (matchZipper!2327 z!1189 s!2326))))

(assert (=> b!6412789 (= (matchR!8498 lt!2375210 s!2326) (matchZipper!2327 lt!2375203 s!2326))))

(declare-fun lt!2375200 () Unit!158591)

(declare-fun theoremZipperRegexEquiv!809 ((InoxSet Context!11398) List!65246 Regex!16315 List!65245) Unit!158591)

(assert (=> b!6412789 (= lt!2375200 (theoremZipperRegexEquiv!809 lt!2375203 lt!2375193 lt!2375210 s!2326))))

(assert (= (and start!633790 res!2635656) b!6412780))

(assert (= (and b!6412780 res!2635640) b!6412786))

(assert (= (and b!6412786 res!2635646) b!6412753))

(assert (= (and b!6412753 (not res!2635663)) b!6412785))

(assert (= (and b!6412785 (not res!2635667)) b!6412776))

(assert (= (and b!6412776 (not res!2635636)) b!6412787))

(assert (= (and b!6412787 (not res!2635642)) b!6412772))

(assert (= (and b!6412772 (not res!2635666)) b!6412783))

(assert (= (and b!6412783 (not res!2635648)) b!6412781))

(assert (= (and b!6412781 (not res!2635654)) b!6412766))

(assert (= (and b!6412766 (not res!2635661)) b!6412770))

(assert (= (and b!6412770 c!1170969) b!6412768))

(assert (= (and b!6412770 (not c!1170969)) b!6412778))

(assert (= (and b!6412768 (not res!2635643)) b!6412779))

(assert (= (and b!6412770 (not res!2635638)) b!6412761))

(assert (= (and b!6412761 res!2635653) b!6412765))

(assert (= (and b!6412761 (not res!2635655)) b!6412757))

(assert (= (and b!6412757 (not res!2635651)) b!6412788))

(assert (= (and b!6412788 (not res!2635639)) b!6412748))

(assert (= (and b!6412748 (not res!2635660)) b!6412759))

(assert (= (and b!6412759 (not res!2635658)) b!6412751))

(assert (= (and b!6412751 (not res!2635668)) b!6412773))

(assert (= (and b!6412773 (not res!2635662)) b!6412771))

(assert (= (and b!6412771 (not res!2635644)) b!6412762))

(assert (= (and b!6412762 (not res!2635657)) b!6412764))

(assert (= (and b!6412764 (not res!2635641)) b!6412777))

(assert (= (and b!6412777 res!2635664) b!6412756))

(assert (= (and b!6412777 (not res!2635665)) b!6412754))

(assert (= (and b!6412754 (not res!2635649)) b!6412752))

(assert (= (and b!6412752 (not res!2635652)) b!6412763))

(assert (= (and b!6412763 (not res!2635637)) b!6412774))

(assert (= (and b!6412774 (not res!2635650)) b!6412784))

(assert (= (and b!6412784 (not res!2635659)) b!6412767))

(assert (= (and b!6412767 (not res!2635645)) b!6412760))

(assert (= (and b!6412760 (not res!2635647)) b!6412789))

(assert (= (and start!633790 ((_ is ElementMatch!16315) r!7292)) b!6412749))

(assert (= (and start!633790 ((_ is Concat!25160) r!7292)) b!6412755))

(assert (= (and start!633790 ((_ is Star!16315) r!7292)) b!6412747))

(assert (= (and start!633790 ((_ is Union!16315) r!7292)) b!6412758))

(assert (= (and start!633790 condSetEmpty!43758) setIsEmpty!43758))

(assert (= (and start!633790 (not condSetEmpty!43758)) setNonEmpty!43758))

(assert (= setNonEmpty!43758 b!6412769))

(assert (= b!6412750 b!6412782))

(assert (= (and start!633790 ((_ is Cons!65122) zl!343)) b!6412750))

(assert (= (and start!633790 ((_ is Cons!65121) s!2326)) b!6412775))

(declare-fun m!7208446 () Bool)

(assert (=> b!6412780 m!7208446))

(declare-fun m!7208448 () Bool)

(assert (=> b!6412750 m!7208448))

(declare-fun m!7208450 () Bool)

(assert (=> b!6412753 m!7208450))

(declare-fun m!7208452 () Bool)

(assert (=> b!6412753 m!7208452))

(declare-fun m!7208454 () Bool)

(assert (=> b!6412753 m!7208454))

(declare-fun m!7208456 () Bool)

(assert (=> start!633790 m!7208456))

(declare-fun m!7208458 () Bool)

(assert (=> b!6412762 m!7208458))

(declare-fun m!7208460 () Bool)

(assert (=> b!6412762 m!7208460))

(declare-fun m!7208462 () Bool)

(assert (=> b!6412762 m!7208462))

(declare-fun m!7208464 () Bool)

(assert (=> b!6412762 m!7208464))

(declare-fun m!7208466 () Bool)

(assert (=> b!6412762 m!7208466))

(declare-fun m!7208468 () Bool)

(assert (=> b!6412762 m!7208468))

(declare-fun m!7208470 () Bool)

(assert (=> b!6412762 m!7208470))

(declare-fun m!7208472 () Bool)

(assert (=> b!6412762 m!7208472))

(declare-fun m!7208474 () Bool)

(assert (=> b!6412762 m!7208474))

(declare-fun m!7208476 () Bool)

(assert (=> b!6412771 m!7208476))

(declare-fun m!7208478 () Bool)

(assert (=> b!6412764 m!7208478))

(declare-fun m!7208480 () Bool)

(assert (=> b!6412748 m!7208480))

(declare-fun m!7208482 () Bool)

(assert (=> b!6412748 m!7208482))

(declare-fun m!7208484 () Bool)

(assert (=> b!6412748 m!7208484))

(declare-fun m!7208486 () Bool)

(assert (=> b!6412748 m!7208486))

(declare-fun m!7208488 () Bool)

(assert (=> b!6412748 m!7208488))

(declare-fun m!7208490 () Bool)

(assert (=> b!6412789 m!7208490))

(declare-fun m!7208492 () Bool)

(assert (=> b!6412789 m!7208492))

(declare-fun m!7208494 () Bool)

(assert (=> b!6412789 m!7208494))

(declare-fun m!7208496 () Bool)

(assert (=> b!6412789 m!7208496))

(declare-fun m!7208498 () Bool)

(assert (=> b!6412777 m!7208498))

(declare-fun m!7208500 () Bool)

(assert (=> b!6412777 m!7208500))

(declare-fun m!7208502 () Bool)

(assert (=> b!6412777 m!7208502))

(declare-fun m!7208504 () Bool)

(assert (=> b!6412759 m!7208504))

(declare-fun m!7208506 () Bool)

(assert (=> b!6412759 m!7208506))

(declare-fun m!7208508 () Bool)

(assert (=> b!6412766 m!7208508))

(declare-fun m!7208510 () Bool)

(assert (=> b!6412752 m!7208510))

(declare-fun m!7208512 () Bool)

(assert (=> b!6412772 m!7208512))

(assert (=> b!6412772 m!7208512))

(declare-fun m!7208514 () Bool)

(assert (=> b!6412772 m!7208514))

(declare-fun m!7208516 () Bool)

(assert (=> b!6412788 m!7208516))

(declare-fun m!7208518 () Bool)

(assert (=> b!6412776 m!7208518))

(declare-fun m!7208520 () Bool)

(assert (=> b!6412763 m!7208520))

(declare-fun m!7208522 () Bool)

(assert (=> b!6412768 m!7208522))

(declare-fun m!7208524 () Bool)

(assert (=> b!6412768 m!7208524))

(declare-fun m!7208526 () Bool)

(assert (=> b!6412768 m!7208526))

(declare-fun m!7208528 () Bool)

(assert (=> b!6412785 m!7208528))

(declare-fun m!7208530 () Bool)

(assert (=> setNonEmpty!43758 m!7208530))

(declare-fun m!7208532 () Bool)

(assert (=> b!6412779 m!7208532))

(declare-fun m!7208534 () Bool)

(assert (=> b!6412781 m!7208534))

(declare-fun m!7208536 () Bool)

(assert (=> b!6412781 m!7208536))

(declare-fun m!7208538 () Bool)

(assert (=> b!6412781 m!7208538))

(declare-fun m!7208540 () Bool)

(assert (=> b!6412781 m!7208540))

(assert (=> b!6412781 m!7208540))

(declare-fun m!7208542 () Bool)

(assert (=> b!6412781 m!7208542))

(assert (=> b!6412781 m!7208534))

(declare-fun m!7208544 () Bool)

(assert (=> b!6412781 m!7208544))

(declare-fun m!7208546 () Bool)

(assert (=> b!6412774 m!7208546))

(declare-fun m!7208548 () Bool)

(assert (=> b!6412786 m!7208548))

(declare-fun m!7208550 () Bool)

(assert (=> b!6412767 m!7208550))

(declare-fun m!7208552 () Bool)

(assert (=> b!6412767 m!7208552))

(declare-fun m!7208554 () Bool)

(assert (=> b!6412767 m!7208554))

(declare-fun m!7208556 () Bool)

(assert (=> b!6412760 m!7208556))

(declare-fun m!7208558 () Bool)

(assert (=> b!6412760 m!7208558))

(declare-fun m!7208560 () Bool)

(assert (=> b!6412784 m!7208560))

(declare-fun m!7208562 () Bool)

(assert (=> b!6412784 m!7208562))

(declare-fun m!7208564 () Bool)

(assert (=> b!6412784 m!7208564))

(declare-fun m!7208566 () Bool)

(assert (=> b!6412784 m!7208566))

(declare-fun m!7208568 () Bool)

(assert (=> b!6412784 m!7208568))

(declare-fun m!7208570 () Bool)

(assert (=> b!6412770 m!7208570))

(declare-fun m!7208572 () Bool)

(assert (=> b!6412770 m!7208572))

(declare-fun m!7208574 () Bool)

(assert (=> b!6412770 m!7208574))

(declare-fun m!7208576 () Bool)

(assert (=> b!6412770 m!7208576))

(declare-fun m!7208578 () Bool)

(assert (=> b!6412770 m!7208578))

(assert (=> b!6412770 m!7208564))

(declare-fun m!7208580 () Bool)

(assert (=> b!6412770 m!7208580))

(declare-fun m!7208582 () Bool)

(assert (=> b!6412765 m!7208582))

(declare-fun m!7208584 () Bool)

(assert (=> b!6412754 m!7208584))

(declare-fun m!7208586 () Bool)

(assert (=> b!6412754 m!7208586))

(declare-fun m!7208588 () Bool)

(assert (=> b!6412754 m!7208588))

(declare-fun m!7208590 () Bool)

(assert (=> b!6412754 m!7208590))

(declare-fun m!7208592 () Bool)

(assert (=> b!6412754 m!7208592))

(declare-fun m!7208594 () Bool)

(assert (=> b!6412754 m!7208594))

(declare-fun m!7208596 () Bool)

(assert (=> b!6412754 m!7208596))

(assert (=> b!6412754 m!7208586))

(declare-fun m!7208598 () Bool)

(assert (=> b!6412754 m!7208598))

(check-sat (not b!6412767) (not start!633790) (not b!6412750) (not b!6412774) (not b!6412769) (not b!6412772) (not b!6412782) tp_is_empty!41883 (not b!6412786) (not b!6412768) (not b!6412753) (not b!6412766) (not b!6412759) (not b!6412764) (not b!6412770) (not b!6412785) (not b!6412747) (not b!6412780) (not b!6412755) (not b!6412781) (not b!6412748) (not b!6412762) (not b!6412763) (not b!6412752) (not b!6412760) (not b!6412775) (not b!6412758) (not b!6412771) (not setNonEmpty!43758) (not b!6412788) (not b!6412789) (not b!6412777) (not b!6412779) (not b!6412754) (not b!6412784) (not b!6412765) (not b!6412776))
(check-sat)
(get-model)

(declare-fun d!2010879 () Bool)

(declare-fun c!1170973 () Bool)

(assert (=> d!2010879 (= c!1170973 (isEmpty!37269 (t!378857 s!2326)))))

(declare-fun e!3891319 () Bool)

(assert (=> d!2010879 (= (matchZipper!2327 lt!2375211 (t!378857 s!2326)) e!3891319)))

(declare-fun b!6412800 () Bool)

(declare-fun nullableZipper!2080 ((InoxSet Context!11398)) Bool)

(assert (=> b!6412800 (= e!3891319 (nullableZipper!2080 lt!2375211))))

(declare-fun b!6412801 () Bool)

(declare-fun head!13120 (List!65245) C!32900)

(declare-fun tail!12205 (List!65245) List!65245)

(assert (=> b!6412801 (= e!3891319 (matchZipper!2327 (derivationStepZipper!2281 lt!2375211 (head!13120 (t!378857 s!2326))) (tail!12205 (t!378857 s!2326))))))

(assert (= (and d!2010879 c!1170973) b!6412800))

(assert (= (and d!2010879 (not c!1170973)) b!6412801))

(declare-fun m!7208600 () Bool)

(assert (=> d!2010879 m!7208600))

(declare-fun m!7208602 () Bool)

(assert (=> b!6412800 m!7208602))

(declare-fun m!7208604 () Bool)

(assert (=> b!6412801 m!7208604))

(assert (=> b!6412801 m!7208604))

(declare-fun m!7208606 () Bool)

(assert (=> b!6412801 m!7208606))

(declare-fun m!7208608 () Bool)

(assert (=> b!6412801 m!7208608))

(assert (=> b!6412801 m!7208606))

(assert (=> b!6412801 m!7208608))

(declare-fun m!7208610 () Bool)

(assert (=> b!6412801 m!7208610))

(assert (=> b!6412779 d!2010879))

(declare-fun d!2010881 () Bool)

(declare-fun e!3891322 () Bool)

(assert (=> d!2010881 e!3891322))

(declare-fun res!2635671 () Bool)

(assert (=> d!2010881 (=> (not res!2635671) (not e!3891322))))

(declare-fun lt!2375227 () List!65246)

(declare-fun noDuplicate!2143 (List!65246) Bool)

(assert (=> d!2010881 (= res!2635671 (noDuplicate!2143 lt!2375227))))

(declare-fun choose!47629 ((InoxSet Context!11398)) List!65246)

(assert (=> d!2010881 (= lt!2375227 (choose!47629 z!1189))))

(assert (=> d!2010881 (= (toList!10099 z!1189) lt!2375227)))

(declare-fun b!6412804 () Bool)

(declare-fun content!12342 (List!65246) (InoxSet Context!11398))

(assert (=> b!6412804 (= e!3891322 (= (content!12342 lt!2375227) z!1189))))

(assert (= (and d!2010881 res!2635671) b!6412804))

(declare-fun m!7208612 () Bool)

(assert (=> d!2010881 m!7208612))

(declare-fun m!7208614 () Bool)

(assert (=> d!2010881 m!7208614))

(declare-fun m!7208616 () Bool)

(assert (=> b!6412804 m!7208616))

(assert (=> b!6412780 d!2010881))

(declare-fun d!2010883 () Bool)

(declare-fun c!1170974 () Bool)

(assert (=> d!2010883 (= c!1170974 (isEmpty!37269 s!2326))))

(declare-fun e!3891323 () Bool)

(assert (=> d!2010883 (= (matchZipper!2327 lt!2375199 s!2326) e!3891323)))

(declare-fun b!6412805 () Bool)

(assert (=> b!6412805 (= e!3891323 (nullableZipper!2080 lt!2375199))))

(declare-fun b!6412806 () Bool)

(assert (=> b!6412806 (= e!3891323 (matchZipper!2327 (derivationStepZipper!2281 lt!2375199 (head!13120 s!2326)) (tail!12205 s!2326)))))

(assert (= (and d!2010883 c!1170974) b!6412805))

(assert (= (and d!2010883 (not c!1170974)) b!6412806))

(declare-fun m!7208618 () Bool)

(assert (=> d!2010883 m!7208618))

(declare-fun m!7208620 () Bool)

(assert (=> b!6412805 m!7208620))

(declare-fun m!7208622 () Bool)

(assert (=> b!6412806 m!7208622))

(assert (=> b!6412806 m!7208622))

(declare-fun m!7208624 () Bool)

(assert (=> b!6412806 m!7208624))

(declare-fun m!7208626 () Bool)

(assert (=> b!6412806 m!7208626))

(assert (=> b!6412806 m!7208624))

(assert (=> b!6412806 m!7208626))

(declare-fun m!7208628 () Bool)

(assert (=> b!6412806 m!7208628))

(assert (=> b!6412759 d!2010883))

(declare-fun d!2010885 () Bool)

(declare-fun c!1170975 () Bool)

(assert (=> d!2010885 (= c!1170975 (isEmpty!37269 (t!378857 s!2326)))))

(declare-fun e!3891324 () Bool)

(assert (=> d!2010885 (= (matchZipper!2327 lt!2375213 (t!378857 s!2326)) e!3891324)))

(declare-fun b!6412807 () Bool)

(assert (=> b!6412807 (= e!3891324 (nullableZipper!2080 lt!2375213))))

(declare-fun b!6412808 () Bool)

(assert (=> b!6412808 (= e!3891324 (matchZipper!2327 (derivationStepZipper!2281 lt!2375213 (head!13120 (t!378857 s!2326))) (tail!12205 (t!378857 s!2326))))))

(assert (= (and d!2010885 c!1170975) b!6412807))

(assert (= (and d!2010885 (not c!1170975)) b!6412808))

(assert (=> d!2010885 m!7208600))

(declare-fun m!7208630 () Bool)

(assert (=> b!6412807 m!7208630))

(assert (=> b!6412808 m!7208604))

(assert (=> b!6412808 m!7208604))

(declare-fun m!7208632 () Bool)

(assert (=> b!6412808 m!7208632))

(assert (=> b!6412808 m!7208608))

(assert (=> b!6412808 m!7208632))

(assert (=> b!6412808 m!7208608))

(declare-fun m!7208634 () Bool)

(assert (=> b!6412808 m!7208634))

(assert (=> b!6412759 d!2010885))

(declare-fun b!6412815 () Bool)

(assert (=> b!6412815 true))

(declare-fun bs!1612154 () Bool)

(declare-fun b!6412817 () Bool)

(assert (= bs!1612154 (and b!6412817 b!6412815)))

(declare-fun lambda!354034 () Int)

(declare-fun lt!2375236 () Int)

(declare-fun lt!2375237 () Int)

(declare-fun lambda!354033 () Int)

(assert (=> bs!1612154 (= (= lt!2375236 lt!2375237) (= lambda!354034 lambda!354033))))

(assert (=> b!6412817 true))

(declare-fun d!2010887 () Bool)

(declare-fun e!3891330 () Bool)

(assert (=> d!2010887 e!3891330))

(declare-fun res!2635674 () Bool)

(assert (=> d!2010887 (=> (not res!2635674) (not e!3891330))))

(assert (=> d!2010887 (= res!2635674 (>= lt!2375236 0))))

(declare-fun e!3891329 () Int)

(assert (=> d!2010887 (= lt!2375236 e!3891329)))

(declare-fun c!1170984 () Bool)

(assert (=> d!2010887 (= c!1170984 ((_ is Cons!65122) zl!343))))

(assert (=> d!2010887 (= (zipperDepth!384 zl!343) lt!2375236)))

(assert (=> b!6412815 (= e!3891329 lt!2375237)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!272 (Context!11398) Int)

(assert (=> b!6412815 (= lt!2375237 (maxBigInt!0 (contextDepth!272 (h!71570 zl!343)) (zipperDepth!384 (t!378858 zl!343))))))

(declare-fun lambda!354032 () Int)

(declare-fun lt!2375239 () Unit!158591)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!256 (List!65246 Int Int Int) Unit!158591)

(assert (=> b!6412815 (= lt!2375239 (lemmaForallContextDepthBiggerThanTransitive!256 (t!378858 zl!343) lt!2375237 (zipperDepth!384 (t!378858 zl!343)) lambda!354032))))

(declare-fun forall!15503 (List!65246 Int) Bool)

(assert (=> b!6412815 (forall!15503 (t!378858 zl!343) lambda!354033)))

(declare-fun lt!2375238 () Unit!158591)

(assert (=> b!6412815 (= lt!2375238 lt!2375239)))

(declare-fun b!6412816 () Bool)

(assert (=> b!6412816 (= e!3891329 0)))

(assert (=> b!6412817 (= e!3891330 (forall!15503 zl!343 lambda!354034))))

(assert (= (and d!2010887 c!1170984) b!6412815))

(assert (= (and d!2010887 (not c!1170984)) b!6412816))

(assert (= (and d!2010887 res!2635674) b!6412817))

(declare-fun m!7208636 () Bool)

(assert (=> b!6412815 m!7208636))

(declare-fun m!7208638 () Bool)

(assert (=> b!6412815 m!7208638))

(declare-fun m!7208640 () Bool)

(assert (=> b!6412815 m!7208640))

(declare-fun m!7208642 () Bool)

(assert (=> b!6412815 m!7208642))

(assert (=> b!6412815 m!7208640))

(assert (=> b!6412815 m!7208638))

(assert (=> b!6412815 m!7208640))

(declare-fun m!7208644 () Bool)

(assert (=> b!6412815 m!7208644))

(declare-fun m!7208646 () Bool)

(assert (=> b!6412817 m!7208646))

(assert (=> b!6412760 d!2010887))

(declare-fun bs!1612155 () Bool)

(declare-fun b!6412820 () Bool)

(assert (= bs!1612155 (and b!6412820 b!6412815)))

(declare-fun lambda!354035 () Int)

(assert (=> bs!1612155 (= lambda!354035 lambda!354032)))

(declare-fun lt!2375241 () Int)

(declare-fun lambda!354036 () Int)

(assert (=> bs!1612155 (= (= lt!2375241 lt!2375237) (= lambda!354036 lambda!354033))))

(declare-fun bs!1612156 () Bool)

(assert (= bs!1612156 (and b!6412820 b!6412817)))

(assert (=> bs!1612156 (= (= lt!2375241 lt!2375236) (= lambda!354036 lambda!354034))))

(assert (=> b!6412820 true))

(declare-fun bs!1612157 () Bool)

(declare-fun b!6412822 () Bool)

(assert (= bs!1612157 (and b!6412822 b!6412815)))

(declare-fun lambda!354037 () Int)

(declare-fun lt!2375240 () Int)

(assert (=> bs!1612157 (= (= lt!2375240 lt!2375237) (= lambda!354037 lambda!354033))))

(declare-fun bs!1612158 () Bool)

(assert (= bs!1612158 (and b!6412822 b!6412817)))

(assert (=> bs!1612158 (= (= lt!2375240 lt!2375236) (= lambda!354037 lambda!354034))))

(declare-fun bs!1612159 () Bool)

(assert (= bs!1612159 (and b!6412822 b!6412820)))

(assert (=> bs!1612159 (= (= lt!2375240 lt!2375241) (= lambda!354037 lambda!354036))))

(assert (=> b!6412822 true))

(declare-fun d!2010889 () Bool)

(declare-fun e!3891332 () Bool)

(assert (=> d!2010889 e!3891332))

(declare-fun res!2635675 () Bool)

(assert (=> d!2010889 (=> (not res!2635675) (not e!3891332))))

(assert (=> d!2010889 (= res!2635675 (>= lt!2375240 0))))

(declare-fun e!3891331 () Int)

(assert (=> d!2010889 (= lt!2375240 e!3891331)))

(declare-fun c!1170985 () Bool)

(assert (=> d!2010889 (= c!1170985 ((_ is Cons!65122) lt!2375193))))

(assert (=> d!2010889 (= (zipperDepth!384 lt!2375193) lt!2375240)))

(assert (=> b!6412820 (= e!3891331 lt!2375241)))

(assert (=> b!6412820 (= lt!2375241 (maxBigInt!0 (contextDepth!272 (h!71570 lt!2375193)) (zipperDepth!384 (t!378858 lt!2375193))))))

(declare-fun lt!2375243 () Unit!158591)

(assert (=> b!6412820 (= lt!2375243 (lemmaForallContextDepthBiggerThanTransitive!256 (t!378858 lt!2375193) lt!2375241 (zipperDepth!384 (t!378858 lt!2375193)) lambda!354035))))

(assert (=> b!6412820 (forall!15503 (t!378858 lt!2375193) lambda!354036)))

(declare-fun lt!2375242 () Unit!158591)

(assert (=> b!6412820 (= lt!2375242 lt!2375243)))

(declare-fun b!6412821 () Bool)

(assert (=> b!6412821 (= e!3891331 0)))

(assert (=> b!6412822 (= e!3891332 (forall!15503 lt!2375193 lambda!354037))))

(assert (= (and d!2010889 c!1170985) b!6412820))

(assert (= (and d!2010889 (not c!1170985)) b!6412821))

(assert (= (and d!2010889 res!2635675) b!6412822))

(declare-fun m!7208648 () Bool)

(assert (=> b!6412820 m!7208648))

(declare-fun m!7208650 () Bool)

(assert (=> b!6412820 m!7208650))

(declare-fun m!7208652 () Bool)

(assert (=> b!6412820 m!7208652))

(declare-fun m!7208654 () Bool)

(assert (=> b!6412820 m!7208654))

(assert (=> b!6412820 m!7208652))

(assert (=> b!6412820 m!7208650))

(assert (=> b!6412820 m!7208652))

(declare-fun m!7208656 () Bool)

(assert (=> b!6412820 m!7208656))

(declare-fun m!7208658 () Bool)

(assert (=> b!6412822 m!7208658))

(assert (=> b!6412760 d!2010889))

(declare-fun d!2010891 () Bool)

(declare-fun choose!47631 (Int) Bool)

(assert (=> d!2010891 (= (Exists!3385 lambda!354021) (choose!47631 lambda!354021))))

(declare-fun bs!1612160 () Bool)

(assert (= bs!1612160 d!2010891))

(declare-fun m!7208660 () Bool)

(assert (=> bs!1612160 m!7208660))

(assert (=> b!6412781 d!2010891))

(declare-fun b!6412859 () Bool)

(declare-fun res!2635694 () Bool)

(declare-fun e!3891355 () Bool)

(assert (=> b!6412859 (=> (not res!2635694) (not e!3891355))))

(declare-fun lt!2375258 () Option!16206)

(assert (=> b!6412859 (= res!2635694 (matchR!8498 (regOne!33142 r!7292) (_1!36597 (get!22556 lt!2375258))))))

(declare-fun b!6412860 () Bool)

(declare-fun e!3891359 () Option!16206)

(assert (=> b!6412860 (= e!3891359 None!16205)))

(declare-fun b!6412861 () Bool)

(declare-fun lt!2375257 () Unit!158591)

(declare-fun lt!2375256 () Unit!158591)

(assert (=> b!6412861 (= lt!2375257 lt!2375256)))

(assert (=> b!6412861 (= (++!14383 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2477 (List!65245 C!32900 List!65245 List!65245) Unit!158591)

(assert (=> b!6412861 (= lt!2375256 (lemmaMoveElementToOtherListKeepsConcatEq!2477 Nil!65121 (h!71569 s!2326) (t!378857 s!2326) s!2326))))

(assert (=> b!6412861 (= e!3891359 (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326) s!2326))))

(declare-fun b!6412862 () Bool)

(declare-fun e!3891357 () Option!16206)

(assert (=> b!6412862 (= e!3891357 e!3891359)))

(declare-fun c!1170996 () Bool)

(assert (=> b!6412862 (= c!1170996 ((_ is Nil!65121) s!2326))))

(declare-fun b!6412863 () Bool)

(declare-fun e!3891356 () Bool)

(assert (=> b!6412863 (= e!3891356 (matchR!8498 (regTwo!33142 r!7292) s!2326))))

(declare-fun b!6412864 () Bool)

(declare-fun res!2635693 () Bool)

(assert (=> b!6412864 (=> (not res!2635693) (not e!3891355))))

(assert (=> b!6412864 (= res!2635693 (matchR!8498 (regTwo!33142 r!7292) (_2!36597 (get!22556 lt!2375258))))))

(declare-fun b!6412865 () Bool)

(assert (=> b!6412865 (= e!3891357 (Some!16205 (tuple2!66589 Nil!65121 s!2326)))))

(declare-fun b!6412866 () Bool)

(assert (=> b!6412866 (= e!3891355 (= (++!14383 (_1!36597 (get!22556 lt!2375258)) (_2!36597 (get!22556 lt!2375258))) s!2326))))

(declare-fun b!6412867 () Bool)

(declare-fun e!3891358 () Bool)

(assert (=> b!6412867 (= e!3891358 (not (isDefined!12909 lt!2375258)))))

(declare-fun d!2010893 () Bool)

(assert (=> d!2010893 e!3891358))

(declare-fun res!2635692 () Bool)

(assert (=> d!2010893 (=> res!2635692 e!3891358)))

(assert (=> d!2010893 (= res!2635692 e!3891355)))

(declare-fun res!2635695 () Bool)

(assert (=> d!2010893 (=> (not res!2635695) (not e!3891355))))

(assert (=> d!2010893 (= res!2635695 (isDefined!12909 lt!2375258))))

(assert (=> d!2010893 (= lt!2375258 e!3891357)))

(declare-fun c!1170997 () Bool)

(assert (=> d!2010893 (= c!1170997 e!3891356)))

(declare-fun res!2635696 () Bool)

(assert (=> d!2010893 (=> (not res!2635696) (not e!3891356))))

(assert (=> d!2010893 (= res!2635696 (matchR!8498 (regOne!33142 r!7292) Nil!65121))))

(assert (=> d!2010893 (validRegex!8051 (regOne!33142 r!7292))))

(assert (=> d!2010893 (= (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326) lt!2375258)))

(assert (= (and d!2010893 res!2635696) b!6412863))

(assert (= (and d!2010893 c!1170997) b!6412865))

(assert (= (and d!2010893 (not c!1170997)) b!6412862))

(assert (= (and b!6412862 c!1170996) b!6412860))

(assert (= (and b!6412862 (not c!1170996)) b!6412861))

(assert (= (and d!2010893 res!2635695) b!6412859))

(assert (= (and b!6412859 res!2635694) b!6412864))

(assert (= (and b!6412864 res!2635693) b!6412866))

(assert (= (and d!2010893 (not res!2635692)) b!6412867))

(declare-fun m!7208706 () Bool)

(assert (=> b!6412859 m!7208706))

(declare-fun m!7208708 () Bool)

(assert (=> b!6412859 m!7208708))

(declare-fun m!7208710 () Bool)

(assert (=> b!6412867 m!7208710))

(assert (=> b!6412864 m!7208706))

(declare-fun m!7208712 () Bool)

(assert (=> b!6412864 m!7208712))

(declare-fun m!7208714 () Bool)

(assert (=> b!6412863 m!7208714))

(assert (=> d!2010893 m!7208710))

(declare-fun m!7208716 () Bool)

(assert (=> d!2010893 m!7208716))

(declare-fun m!7208718 () Bool)

(assert (=> d!2010893 m!7208718))

(declare-fun m!7208720 () Bool)

(assert (=> b!6412861 m!7208720))

(assert (=> b!6412861 m!7208720))

(declare-fun m!7208722 () Bool)

(assert (=> b!6412861 m!7208722))

(declare-fun m!7208724 () Bool)

(assert (=> b!6412861 m!7208724))

(assert (=> b!6412861 m!7208720))

(declare-fun m!7208726 () Bool)

(assert (=> b!6412861 m!7208726))

(assert (=> b!6412866 m!7208706))

(declare-fun m!7208728 () Bool)

(assert (=> b!6412866 m!7208728))

(assert (=> b!6412781 d!2010893))

(declare-fun d!2010909 () Bool)

(assert (=> d!2010909 (= (Exists!3385 lambda!354022) (choose!47631 lambda!354022))))

(declare-fun bs!1612161 () Bool)

(assert (= bs!1612161 d!2010909))

(declare-fun m!7208730 () Bool)

(assert (=> bs!1612161 m!7208730))

(assert (=> b!6412781 d!2010909))

(declare-fun bs!1612163 () Bool)

(declare-fun d!2010911 () Bool)

(assert (= bs!1612163 (and d!2010911 b!6412781)))

(declare-fun lambda!354046 () Int)

(assert (=> bs!1612163 (= lambda!354046 lambda!354021)))

(assert (=> bs!1612163 (not (= lambda!354046 lambda!354022))))

(declare-fun bs!1612164 () Bool)

(assert (= bs!1612164 (and d!2010911 b!6412754)))

(assert (=> bs!1612164 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354046 lambda!354024))))

(assert (=> bs!1612164 (not (= lambda!354046 lambda!354025))))

(assert (=> d!2010911 true))

(assert (=> d!2010911 true))

(assert (=> d!2010911 true))

(assert (=> d!2010911 (= (isDefined!12909 (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326)) (Exists!3385 lambda!354046))))

(declare-fun lt!2375269 () Unit!158591)

(declare-fun choose!47632 (Regex!16315 Regex!16315 List!65245) Unit!158591)

(assert (=> d!2010911 (= lt!2375269 (choose!47632 (regOne!33142 r!7292) (regTwo!33142 r!7292) s!2326))))

(assert (=> d!2010911 (validRegex!8051 (regOne!33142 r!7292))))

(assert (=> d!2010911 (= (lemmaFindConcatSeparationEquivalentToExists!2384 (regOne!33142 r!7292) (regTwo!33142 r!7292) s!2326) lt!2375269)))

(declare-fun bs!1612165 () Bool)

(assert (= bs!1612165 d!2010911))

(assert (=> bs!1612165 m!7208534))

(assert (=> bs!1612165 m!7208536))

(assert (=> bs!1612165 m!7208718))

(declare-fun m!7208762 () Bool)

(assert (=> bs!1612165 m!7208762))

(declare-fun m!7208764 () Bool)

(assert (=> bs!1612165 m!7208764))

(assert (=> bs!1612165 m!7208534))

(assert (=> b!6412781 d!2010911))

(declare-fun bs!1612167 () Bool)

(declare-fun d!2010919 () Bool)

(assert (= bs!1612167 (and d!2010919 b!6412781)))

(declare-fun lambda!354051 () Int)

(assert (=> bs!1612167 (not (= lambda!354051 lambda!354022))))

(declare-fun bs!1612168 () Bool)

(assert (= bs!1612168 (and d!2010919 b!6412754)))

(assert (=> bs!1612168 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354051 lambda!354024))))

(assert (=> bs!1612167 (= lambda!354051 lambda!354021)))

(assert (=> bs!1612168 (not (= lambda!354051 lambda!354025))))

(declare-fun bs!1612169 () Bool)

(assert (= bs!1612169 (and d!2010919 d!2010911)))

(assert (=> bs!1612169 (= lambda!354051 lambda!354046)))

(assert (=> d!2010919 true))

(assert (=> d!2010919 true))

(assert (=> d!2010919 true))

(declare-fun lambda!354052 () Int)

(assert (=> bs!1612167 (= lambda!354052 lambda!354022)))

(declare-fun bs!1612170 () Bool)

(assert (= bs!1612170 d!2010919))

(assert (=> bs!1612170 (not (= lambda!354052 lambda!354051))))

(assert (=> bs!1612168 (not (= lambda!354052 lambda!354024))))

(assert (=> bs!1612167 (not (= lambda!354052 lambda!354021))))

(assert (=> bs!1612168 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354052 lambda!354025))))

(assert (=> bs!1612169 (not (= lambda!354052 lambda!354046))))

(assert (=> d!2010919 true))

(assert (=> d!2010919 true))

(assert (=> d!2010919 true))

(assert (=> d!2010919 (= (Exists!3385 lambda!354051) (Exists!3385 lambda!354052))))

(declare-fun lt!2375282 () Unit!158591)

(declare-fun choose!47634 (Regex!16315 Regex!16315 List!65245) Unit!158591)

(assert (=> d!2010919 (= lt!2375282 (choose!47634 (regOne!33142 r!7292) (regTwo!33142 r!7292) s!2326))))

(assert (=> d!2010919 (validRegex!8051 (regOne!33142 r!7292))))

(assert (=> d!2010919 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1922 (regOne!33142 r!7292) (regTwo!33142 r!7292) s!2326) lt!2375282)))

(declare-fun m!7208810 () Bool)

(assert (=> bs!1612170 m!7208810))

(declare-fun m!7208814 () Bool)

(assert (=> bs!1612170 m!7208814))

(declare-fun m!7208816 () Bool)

(assert (=> bs!1612170 m!7208816))

(assert (=> bs!1612170 m!7208718))

(assert (=> b!6412781 d!2010919))

(declare-fun d!2010933 () Bool)

(declare-fun isEmpty!37271 (Option!16206) Bool)

(assert (=> d!2010933 (= (isDefined!12909 (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326)) (not (isEmpty!37271 (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326))))))

(declare-fun bs!1612173 () Bool)

(assert (= bs!1612173 d!2010933))

(assert (=> bs!1612173 m!7208534))

(declare-fun m!7208818 () Bool)

(assert (=> bs!1612173 m!7208818))

(assert (=> b!6412781 d!2010933))

(declare-fun d!2010935 () Bool)

(assert (=> d!2010935 (= (isEmpty!37269 (_1!36597 lt!2375224)) ((_ is Nil!65121) (_1!36597 lt!2375224)))))

(assert (=> b!6412774 d!2010935))

(declare-fun b!6413029 () Bool)

(declare-fun res!2635785 () Bool)

(declare-fun e!3891446 () Bool)

(assert (=> b!6413029 (=> res!2635785 e!3891446)))

(assert (=> b!6413029 (= res!2635785 (not (isEmpty!37269 (tail!12205 (_1!36597 lt!2375224)))))))

(declare-fun b!6413030 () Bool)

(declare-fun res!2635782 () Bool)

(declare-fun e!3891445 () Bool)

(assert (=> b!6413030 (=> res!2635782 e!3891445)))

(assert (=> b!6413030 (= res!2635782 (not ((_ is ElementMatch!16315) lt!2375222)))))

(declare-fun e!3891449 () Bool)

(assert (=> b!6413030 (= e!3891449 e!3891445)))

(declare-fun b!6413031 () Bool)

(declare-fun res!2635789 () Bool)

(declare-fun e!3891448 () Bool)

(assert (=> b!6413031 (=> (not res!2635789) (not e!3891448))))

(assert (=> b!6413031 (= res!2635789 (isEmpty!37269 (tail!12205 (_1!36597 lt!2375224))))))

(declare-fun b!6413032 () Bool)

(declare-fun res!2635786 () Bool)

(assert (=> b!6413032 (=> res!2635786 e!3891445)))

(assert (=> b!6413032 (= res!2635786 e!3891448)))

(declare-fun res!2635783 () Bool)

(assert (=> b!6413032 (=> (not res!2635783) (not e!3891448))))

(declare-fun lt!2375294 () Bool)

(assert (=> b!6413032 (= res!2635783 lt!2375294)))

(declare-fun bm!550997 () Bool)

(declare-fun call!551002 () Bool)

(assert (=> bm!550997 (= call!551002 (isEmpty!37269 (_1!36597 lt!2375224)))))

(declare-fun b!6413033 () Bool)

(declare-fun e!3891447 () Bool)

(assert (=> b!6413033 (= e!3891447 (nullable!6308 lt!2375222))))

(declare-fun b!6413034 () Bool)

(declare-fun e!3891451 () Bool)

(assert (=> b!6413034 (= e!3891445 e!3891451)))

(declare-fun res!2635788 () Bool)

(assert (=> b!6413034 (=> (not res!2635788) (not e!3891451))))

(assert (=> b!6413034 (= res!2635788 (not lt!2375294))))

(declare-fun b!6413035 () Bool)

(assert (=> b!6413035 (= e!3891451 e!3891446)))

(declare-fun res!2635787 () Bool)

(assert (=> b!6413035 (=> res!2635787 e!3891446)))

(assert (=> b!6413035 (= res!2635787 call!551002)))

(declare-fun b!6413036 () Bool)

(assert (=> b!6413036 (= e!3891448 (= (head!13120 (_1!36597 lt!2375224)) (c!1170970 lt!2375222)))))

(declare-fun b!6413037 () Bool)

(assert (=> b!6413037 (= e!3891446 (not (= (head!13120 (_1!36597 lt!2375224)) (c!1170970 lt!2375222))))))

(declare-fun d!2010937 () Bool)

(declare-fun e!3891450 () Bool)

(assert (=> d!2010937 e!3891450))

(declare-fun c!1171038 () Bool)

(assert (=> d!2010937 (= c!1171038 ((_ is EmptyExpr!16315) lt!2375222))))

(assert (=> d!2010937 (= lt!2375294 e!3891447)))

(declare-fun c!1171037 () Bool)

(assert (=> d!2010937 (= c!1171037 (isEmpty!37269 (_1!36597 lt!2375224)))))

(assert (=> d!2010937 (validRegex!8051 lt!2375222)))

(assert (=> d!2010937 (= (matchR!8498 lt!2375222 (_1!36597 lt!2375224)) lt!2375294)))

(declare-fun b!6413038 () Bool)

(declare-fun res!2635784 () Bool)

(assert (=> b!6413038 (=> (not res!2635784) (not e!3891448))))

(assert (=> b!6413038 (= res!2635784 (not call!551002))))

(declare-fun b!6413039 () Bool)

(assert (=> b!6413039 (= e!3891449 (not lt!2375294))))

(declare-fun b!6413040 () Bool)

(declare-fun derivativeStep!5019 (Regex!16315 C!32900) Regex!16315)

(assert (=> b!6413040 (= e!3891447 (matchR!8498 (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224))) (tail!12205 (_1!36597 lt!2375224))))))

(declare-fun b!6413041 () Bool)

(assert (=> b!6413041 (= e!3891450 (= lt!2375294 call!551002))))

(declare-fun b!6413042 () Bool)

(assert (=> b!6413042 (= e!3891450 e!3891449)))

(declare-fun c!1171036 () Bool)

(assert (=> b!6413042 (= c!1171036 ((_ is EmptyLang!16315) lt!2375222))))

(assert (= (and d!2010937 c!1171037) b!6413033))

(assert (= (and d!2010937 (not c!1171037)) b!6413040))

(assert (= (and d!2010937 c!1171038) b!6413041))

(assert (= (and d!2010937 (not c!1171038)) b!6413042))

(assert (= (and b!6413042 c!1171036) b!6413039))

(assert (= (and b!6413042 (not c!1171036)) b!6413030))

(assert (= (and b!6413030 (not res!2635782)) b!6413032))

(assert (= (and b!6413032 res!2635783) b!6413038))

(assert (= (and b!6413038 res!2635784) b!6413031))

(assert (= (and b!6413031 res!2635789) b!6413036))

(assert (= (and b!6413032 (not res!2635786)) b!6413034))

(assert (= (and b!6413034 res!2635788) b!6413035))

(assert (= (and b!6413035 (not res!2635787)) b!6413029))

(assert (= (and b!6413029 (not res!2635785)) b!6413037))

(assert (= (or b!6413041 b!6413035 b!6413038) bm!550997))

(assert (=> d!2010937 m!7208546))

(declare-fun m!7208830 () Bool)

(assert (=> d!2010937 m!7208830))

(declare-fun m!7208832 () Bool)

(assert (=> b!6413037 m!7208832))

(declare-fun m!7208834 () Bool)

(assert (=> b!6413033 m!7208834))

(assert (=> b!6413036 m!7208832))

(assert (=> b!6413040 m!7208832))

(assert (=> b!6413040 m!7208832))

(declare-fun m!7208836 () Bool)

(assert (=> b!6413040 m!7208836))

(declare-fun m!7208838 () Bool)

(assert (=> b!6413040 m!7208838))

(assert (=> b!6413040 m!7208836))

(assert (=> b!6413040 m!7208838))

(declare-fun m!7208840 () Bool)

(assert (=> b!6413040 m!7208840))

(assert (=> b!6413031 m!7208838))

(assert (=> b!6413031 m!7208838))

(declare-fun m!7208842 () Bool)

(assert (=> b!6413031 m!7208842))

(assert (=> bm!550997 m!7208546))

(assert (=> b!6413029 m!7208838))

(assert (=> b!6413029 m!7208838))

(assert (=> b!6413029 m!7208842))

(assert (=> b!6412752 d!2010937))

(declare-fun b!6413071 () Bool)

(declare-fun res!2635804 () Bool)

(declare-fun e!3891472 () Bool)

(assert (=> b!6413071 (=> res!2635804 e!3891472)))

(assert (=> b!6413071 (= res!2635804 (not ((_ is Concat!25160) r!7292)))))

(declare-fun e!3891473 () Bool)

(assert (=> b!6413071 (= e!3891473 e!3891472)))

(declare-fun b!6413072 () Bool)

(declare-fun e!3891475 () Bool)

(declare-fun e!3891477 () Bool)

(assert (=> b!6413072 (= e!3891475 e!3891477)))

(declare-fun res!2635805 () Bool)

(assert (=> b!6413072 (= res!2635805 (not (nullable!6308 (reg!16644 r!7292))))))

(assert (=> b!6413072 (=> (not res!2635805) (not e!3891477))))

(declare-fun b!6413073 () Bool)

(declare-fun call!551013 () Bool)

(assert (=> b!6413073 (= e!3891477 call!551013)))

(declare-fun b!6413074 () Bool)

(declare-fun e!3891478 () Bool)

(assert (=> b!6413074 (= e!3891472 e!3891478)))

(declare-fun res!2635802 () Bool)

(assert (=> b!6413074 (=> (not res!2635802) (not e!3891478))))

(declare-fun call!551011 () Bool)

(assert (=> b!6413074 (= res!2635802 call!551011)))

(declare-fun bm!551006 () Bool)

(declare-fun call!551012 () Bool)

(assert (=> bm!551006 (= call!551012 call!551013)))

(declare-fun b!6413076 () Bool)

(declare-fun res!2635803 () Bool)

(declare-fun e!3891476 () Bool)

(assert (=> b!6413076 (=> (not res!2635803) (not e!3891476))))

(assert (=> b!6413076 (= res!2635803 call!551011)))

(assert (=> b!6413076 (= e!3891473 e!3891476)))

(declare-fun b!6413077 () Bool)

(declare-fun e!3891474 () Bool)

(assert (=> b!6413077 (= e!3891474 e!3891475)))

(declare-fun c!1171047 () Bool)

(assert (=> b!6413077 (= c!1171047 ((_ is Star!16315) r!7292))))

(declare-fun c!1171048 () Bool)

(declare-fun bm!551007 () Bool)

(assert (=> bm!551007 (= call!551013 (validRegex!8051 (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))))))

(declare-fun bm!551008 () Bool)

(assert (=> bm!551008 (= call!551011 (validRegex!8051 (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))))))

(declare-fun b!6413078 () Bool)

(assert (=> b!6413078 (= e!3891475 e!3891473)))

(assert (=> b!6413078 (= c!1171048 ((_ is Union!16315) r!7292))))

(declare-fun b!6413079 () Bool)

(assert (=> b!6413079 (= e!3891476 call!551012)))

(declare-fun d!2010943 () Bool)

(declare-fun res!2635806 () Bool)

(assert (=> d!2010943 (=> res!2635806 e!3891474)))

(assert (=> d!2010943 (= res!2635806 ((_ is ElementMatch!16315) r!7292))))

(assert (=> d!2010943 (= (validRegex!8051 r!7292) e!3891474)))

(declare-fun b!6413075 () Bool)

(assert (=> b!6413075 (= e!3891478 call!551012)))

(assert (= (and d!2010943 (not res!2635806)) b!6413077))

(assert (= (and b!6413077 c!1171047) b!6413072))

(assert (= (and b!6413077 (not c!1171047)) b!6413078))

(assert (= (and b!6413072 res!2635805) b!6413073))

(assert (= (and b!6413078 c!1171048) b!6413076))

(assert (= (and b!6413078 (not c!1171048)) b!6413071))

(assert (= (and b!6413076 res!2635803) b!6413079))

(assert (= (and b!6413071 (not res!2635804)) b!6413074))

(assert (= (and b!6413074 res!2635802) b!6413075))

(assert (= (or b!6413079 b!6413075) bm!551006))

(assert (= (or b!6413076 b!6413074) bm!551008))

(assert (= (or b!6413073 bm!551006) bm!551007))

(declare-fun m!7208850 () Bool)

(assert (=> b!6413072 m!7208850))

(declare-fun m!7208852 () Bool)

(assert (=> bm!551007 m!7208852))

(declare-fun m!7208854 () Bool)

(assert (=> bm!551008 m!7208854))

(assert (=> start!633790 d!2010943))

(declare-fun bs!1612184 () Bool)

(declare-fun b!6413152 () Bool)

(assert (= bs!1612184 (and b!6413152 b!6412781)))

(declare-fun lambda!354066 () Int)

(assert (=> bs!1612184 (not (= lambda!354066 lambda!354022))))

(declare-fun bs!1612185 () Bool)

(assert (= bs!1612185 (and b!6413152 d!2010919)))

(assert (=> bs!1612185 (not (= lambda!354066 lambda!354051))))

(declare-fun bs!1612187 () Bool)

(assert (= bs!1612187 (and b!6413152 b!6412754)))

(assert (=> bs!1612187 (not (= lambda!354066 lambda!354024))))

(assert (=> bs!1612185 (not (= lambda!354066 lambda!354052))))

(assert (=> bs!1612184 (not (= lambda!354066 lambda!354021))))

(assert (=> bs!1612187 (not (= lambda!354066 lambda!354025))))

(declare-fun bs!1612188 () Bool)

(assert (= bs!1612188 (and b!6413152 d!2010911)))

(assert (=> bs!1612188 (not (= lambda!354066 lambda!354046))))

(assert (=> b!6413152 true))

(assert (=> b!6413152 true))

(declare-fun bs!1612189 () Bool)

(declare-fun b!6413154 () Bool)

(assert (= bs!1612189 (and b!6413154 b!6413152)))

(declare-fun lambda!354067 () Int)

(assert (=> bs!1612189 (not (= lambda!354067 lambda!354066))))

(declare-fun bs!1612190 () Bool)

(assert (= bs!1612190 (and b!6413154 b!6412781)))

(assert (=> bs!1612190 (= lambda!354067 lambda!354022)))

(declare-fun bs!1612191 () Bool)

(assert (= bs!1612191 (and b!6413154 d!2010919)))

(assert (=> bs!1612191 (not (= lambda!354067 lambda!354051))))

(declare-fun bs!1612192 () Bool)

(assert (= bs!1612192 (and b!6413154 b!6412754)))

(assert (=> bs!1612192 (not (= lambda!354067 lambda!354024))))

(assert (=> bs!1612191 (= lambda!354067 lambda!354052)))

(assert (=> bs!1612190 (not (= lambda!354067 lambda!354021))))

(assert (=> bs!1612192 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354067 lambda!354025))))

(declare-fun bs!1612193 () Bool)

(assert (= bs!1612193 (and b!6413154 d!2010911)))

(assert (=> bs!1612193 (not (= lambda!354067 lambda!354046))))

(assert (=> b!6413154 true))

(assert (=> b!6413154 true))

(declare-fun bm!551032 () Bool)

(declare-fun call!551037 () Bool)

(assert (=> bm!551032 (= call!551037 (isEmpty!37269 s!2326))))

(declare-fun call!551038 () Bool)

(declare-fun bm!551033 () Bool)

(declare-fun c!1171076 () Bool)

(assert (=> bm!551033 (= call!551038 (Exists!3385 (ite c!1171076 lambda!354066 lambda!354067)))))

(declare-fun b!6413150 () Bool)

(declare-fun e!3891519 () Bool)

(declare-fun e!3891523 () Bool)

(assert (=> b!6413150 (= e!3891519 e!3891523)))

(assert (=> b!6413150 (= c!1171076 ((_ is Star!16315) r!7292))))

(declare-fun b!6413151 () Bool)

(declare-fun res!2635829 () Bool)

(declare-fun e!3891518 () Bool)

(assert (=> b!6413151 (=> res!2635829 e!3891518)))

(assert (=> b!6413151 (= res!2635829 call!551037)))

(assert (=> b!6413151 (= e!3891523 e!3891518)))

(assert (=> b!6413152 (= e!3891518 call!551038)))

(declare-fun b!6413153 () Bool)

(declare-fun e!3891522 () Bool)

(declare-fun e!3891521 () Bool)

(assert (=> b!6413153 (= e!3891522 e!3891521)))

(declare-fun res!2635827 () Bool)

(assert (=> b!6413153 (= res!2635827 (not ((_ is EmptyLang!16315) r!7292)))))

(assert (=> b!6413153 (=> (not res!2635827) (not e!3891521))))

(assert (=> b!6413154 (= e!3891523 call!551038)))

(declare-fun b!6413155 () Bool)

(declare-fun c!1171077 () Bool)

(assert (=> b!6413155 (= c!1171077 ((_ is ElementMatch!16315) r!7292))))

(declare-fun e!3891520 () Bool)

(assert (=> b!6413155 (= e!3891521 e!3891520)))

(declare-fun b!6413156 () Bool)

(declare-fun e!3891524 () Bool)

(assert (=> b!6413156 (= e!3891524 (matchRSpec!3416 (regTwo!33143 r!7292) s!2326))))

(declare-fun d!2010951 () Bool)

(declare-fun c!1171075 () Bool)

(assert (=> d!2010951 (= c!1171075 ((_ is EmptyExpr!16315) r!7292))))

(assert (=> d!2010951 (= (matchRSpec!3416 r!7292 s!2326) e!3891522)))

(declare-fun b!6413157 () Bool)

(assert (=> b!6413157 (= e!3891520 (= s!2326 (Cons!65121 (c!1170970 r!7292) Nil!65121)))))

(declare-fun b!6413158 () Bool)

(assert (=> b!6413158 (= e!3891519 e!3891524)))

(declare-fun res!2635828 () Bool)

(assert (=> b!6413158 (= res!2635828 (matchRSpec!3416 (regOne!33143 r!7292) s!2326))))

(assert (=> b!6413158 (=> res!2635828 e!3891524)))

(declare-fun b!6413159 () Bool)

(declare-fun c!1171074 () Bool)

(assert (=> b!6413159 (= c!1171074 ((_ is Union!16315) r!7292))))

(assert (=> b!6413159 (= e!3891520 e!3891519)))

(declare-fun b!6413160 () Bool)

(assert (=> b!6413160 (= e!3891522 call!551037)))

(assert (= (and d!2010951 c!1171075) b!6413160))

(assert (= (and d!2010951 (not c!1171075)) b!6413153))

(assert (= (and b!6413153 res!2635827) b!6413155))

(assert (= (and b!6413155 c!1171077) b!6413157))

(assert (= (and b!6413155 (not c!1171077)) b!6413159))

(assert (= (and b!6413159 c!1171074) b!6413158))

(assert (= (and b!6413159 (not c!1171074)) b!6413150))

(assert (= (and b!6413158 (not res!2635828)) b!6413156))

(assert (= (and b!6413150 c!1171076) b!6413151))

(assert (= (and b!6413150 (not c!1171076)) b!6413154))

(assert (= (and b!6413151 (not res!2635829)) b!6413152))

(assert (= (or b!6413152 b!6413154) bm!551033))

(assert (= (or b!6413160 b!6413151) bm!551032))

(assert (=> bm!551032 m!7208618))

(declare-fun m!7208886 () Bool)

(assert (=> bm!551033 m!7208886))

(declare-fun m!7208888 () Bool)

(assert (=> b!6413156 m!7208888))

(declare-fun m!7208890 () Bool)

(assert (=> b!6413158 m!7208890))

(assert (=> b!6412753 d!2010951))

(declare-fun b!6413171 () Bool)

(declare-fun res!2635835 () Bool)

(declare-fun e!3891532 () Bool)

(assert (=> b!6413171 (=> res!2635835 e!3891532)))

(assert (=> b!6413171 (= res!2635835 (not (isEmpty!37269 (tail!12205 s!2326))))))

(declare-fun b!6413172 () Bool)

(declare-fun res!2635832 () Bool)

(declare-fun e!3891531 () Bool)

(assert (=> b!6413172 (=> res!2635832 e!3891531)))

(assert (=> b!6413172 (= res!2635832 (not ((_ is ElementMatch!16315) r!7292)))))

(declare-fun e!3891535 () Bool)

(assert (=> b!6413172 (= e!3891535 e!3891531)))

(declare-fun b!6413173 () Bool)

(declare-fun res!2635839 () Bool)

(declare-fun e!3891534 () Bool)

(assert (=> b!6413173 (=> (not res!2635839) (not e!3891534))))

(assert (=> b!6413173 (= res!2635839 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun b!6413174 () Bool)

(declare-fun res!2635836 () Bool)

(assert (=> b!6413174 (=> res!2635836 e!3891531)))

(assert (=> b!6413174 (= res!2635836 e!3891534)))

(declare-fun res!2635833 () Bool)

(assert (=> b!6413174 (=> (not res!2635833) (not e!3891534))))

(declare-fun lt!2375298 () Bool)

(assert (=> b!6413174 (= res!2635833 lt!2375298)))

(declare-fun bm!551036 () Bool)

(declare-fun call!551041 () Bool)

(assert (=> bm!551036 (= call!551041 (isEmpty!37269 s!2326))))

(declare-fun b!6413175 () Bool)

(declare-fun e!3891533 () Bool)

(assert (=> b!6413175 (= e!3891533 (nullable!6308 r!7292))))

(declare-fun b!6413176 () Bool)

(declare-fun e!3891537 () Bool)

(assert (=> b!6413176 (= e!3891531 e!3891537)))

(declare-fun res!2635838 () Bool)

(assert (=> b!6413176 (=> (not res!2635838) (not e!3891537))))

(assert (=> b!6413176 (= res!2635838 (not lt!2375298))))

(declare-fun b!6413177 () Bool)

(assert (=> b!6413177 (= e!3891537 e!3891532)))

(declare-fun res!2635837 () Bool)

(assert (=> b!6413177 (=> res!2635837 e!3891532)))

(assert (=> b!6413177 (= res!2635837 call!551041)))

(declare-fun b!6413178 () Bool)

(assert (=> b!6413178 (= e!3891534 (= (head!13120 s!2326) (c!1170970 r!7292)))))

(declare-fun b!6413179 () Bool)

(assert (=> b!6413179 (= e!3891532 (not (= (head!13120 s!2326) (c!1170970 r!7292))))))

(declare-fun d!2010963 () Bool)

(declare-fun e!3891536 () Bool)

(assert (=> d!2010963 e!3891536))

(declare-fun c!1171084 () Bool)

(assert (=> d!2010963 (= c!1171084 ((_ is EmptyExpr!16315) r!7292))))

(assert (=> d!2010963 (= lt!2375298 e!3891533)))

(declare-fun c!1171083 () Bool)

(assert (=> d!2010963 (= c!1171083 (isEmpty!37269 s!2326))))

(assert (=> d!2010963 (validRegex!8051 r!7292)))

(assert (=> d!2010963 (= (matchR!8498 r!7292 s!2326) lt!2375298)))

(declare-fun b!6413180 () Bool)

(declare-fun res!2635834 () Bool)

(assert (=> b!6413180 (=> (not res!2635834) (not e!3891534))))

(assert (=> b!6413180 (= res!2635834 (not call!551041))))

(declare-fun b!6413181 () Bool)

(assert (=> b!6413181 (= e!3891535 (not lt!2375298))))

(declare-fun b!6413182 () Bool)

(assert (=> b!6413182 (= e!3891533 (matchR!8498 (derivativeStep!5019 r!7292 (head!13120 s!2326)) (tail!12205 s!2326)))))

(declare-fun b!6413183 () Bool)

(assert (=> b!6413183 (= e!3891536 (= lt!2375298 call!551041))))

(declare-fun b!6413184 () Bool)

(assert (=> b!6413184 (= e!3891536 e!3891535)))

(declare-fun c!1171082 () Bool)

(assert (=> b!6413184 (= c!1171082 ((_ is EmptyLang!16315) r!7292))))

(assert (= (and d!2010963 c!1171083) b!6413175))

(assert (= (and d!2010963 (not c!1171083)) b!6413182))

(assert (= (and d!2010963 c!1171084) b!6413183))

(assert (= (and d!2010963 (not c!1171084)) b!6413184))

(assert (= (and b!6413184 c!1171082) b!6413181))

(assert (= (and b!6413184 (not c!1171082)) b!6413172))

(assert (= (and b!6413172 (not res!2635832)) b!6413174))

(assert (= (and b!6413174 res!2635833) b!6413180))

(assert (= (and b!6413180 res!2635834) b!6413173))

(assert (= (and b!6413173 res!2635839) b!6413178))

(assert (= (and b!6413174 (not res!2635836)) b!6413176))

(assert (= (and b!6413176 res!2635838) b!6413177))

(assert (= (and b!6413177 (not res!2635837)) b!6413171))

(assert (= (and b!6413171 (not res!2635835)) b!6413179))

(assert (= (or b!6413183 b!6413177 b!6413180) bm!551036))

(assert (=> d!2010963 m!7208618))

(assert (=> d!2010963 m!7208456))

(assert (=> b!6413179 m!7208622))

(declare-fun m!7208892 () Bool)

(assert (=> b!6413175 m!7208892))

(assert (=> b!6413178 m!7208622))

(assert (=> b!6413182 m!7208622))

(assert (=> b!6413182 m!7208622))

(declare-fun m!7208894 () Bool)

(assert (=> b!6413182 m!7208894))

(assert (=> b!6413182 m!7208626))

(assert (=> b!6413182 m!7208894))

(assert (=> b!6413182 m!7208626))

(declare-fun m!7208896 () Bool)

(assert (=> b!6413182 m!7208896))

(assert (=> b!6413173 m!7208626))

(assert (=> b!6413173 m!7208626))

(declare-fun m!7208898 () Bool)

(assert (=> b!6413173 m!7208898))

(assert (=> bm!551036 m!7208618))

(assert (=> b!6413171 m!7208626))

(assert (=> b!6413171 m!7208626))

(assert (=> b!6413171 m!7208898))

(assert (=> b!6412753 d!2010963))

(declare-fun d!2010965 () Bool)

(assert (=> d!2010965 (= (matchR!8498 r!7292 s!2326) (matchRSpec!3416 r!7292 s!2326))))

(declare-fun lt!2375301 () Unit!158591)

(declare-fun choose!47640 (Regex!16315 List!65245) Unit!158591)

(assert (=> d!2010965 (= lt!2375301 (choose!47640 r!7292 s!2326))))

(assert (=> d!2010965 (validRegex!8051 r!7292)))

(assert (=> d!2010965 (= (mainMatchTheorem!3416 r!7292 s!2326) lt!2375301)))

(declare-fun bs!1612194 () Bool)

(assert (= bs!1612194 d!2010965))

(assert (=> bs!1612194 m!7208452))

(assert (=> bs!1612194 m!7208450))

(declare-fun m!7208900 () Bool)

(assert (=> bs!1612194 m!7208900))

(assert (=> bs!1612194 m!7208456))

(assert (=> b!6412753 d!2010965))

(declare-fun b!6413209 () Bool)

(declare-fun res!2635851 () Bool)

(declare-fun e!3891555 () Bool)

(assert (=> b!6413209 (=> res!2635851 e!3891555)))

(assert (=> b!6413209 (= res!2635851 (not (isEmpty!37269 (tail!12205 s!2326))))))

(declare-fun b!6413210 () Bool)

(declare-fun res!2635848 () Bool)

(declare-fun e!3891554 () Bool)

(assert (=> b!6413210 (=> res!2635848 e!3891554)))

(assert (=> b!6413210 (= res!2635848 (not ((_ is ElementMatch!16315) lt!2375201)))))

(declare-fun e!3891558 () Bool)

(assert (=> b!6413210 (= e!3891558 e!3891554)))

(declare-fun b!6413211 () Bool)

(declare-fun res!2635855 () Bool)

(declare-fun e!3891557 () Bool)

(assert (=> b!6413211 (=> (not res!2635855) (not e!3891557))))

(assert (=> b!6413211 (= res!2635855 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun b!6413212 () Bool)

(declare-fun res!2635852 () Bool)

(assert (=> b!6413212 (=> res!2635852 e!3891554)))

(assert (=> b!6413212 (= res!2635852 e!3891557)))

(declare-fun res!2635849 () Bool)

(assert (=> b!6413212 (=> (not res!2635849) (not e!3891557))))

(declare-fun lt!2375302 () Bool)

(assert (=> b!6413212 (= res!2635849 lt!2375302)))

(declare-fun bm!551037 () Bool)

(declare-fun call!551042 () Bool)

(assert (=> bm!551037 (= call!551042 (isEmpty!37269 s!2326))))

(declare-fun b!6413213 () Bool)

(declare-fun e!3891556 () Bool)

(assert (=> b!6413213 (= e!3891556 (nullable!6308 lt!2375201))))

(declare-fun b!6413214 () Bool)

(declare-fun e!3891560 () Bool)

(assert (=> b!6413214 (= e!3891554 e!3891560)))

(declare-fun res!2635854 () Bool)

(assert (=> b!6413214 (=> (not res!2635854) (not e!3891560))))

(assert (=> b!6413214 (= res!2635854 (not lt!2375302))))

(declare-fun b!6413215 () Bool)

(assert (=> b!6413215 (= e!3891560 e!3891555)))

(declare-fun res!2635853 () Bool)

(assert (=> b!6413215 (=> res!2635853 e!3891555)))

(assert (=> b!6413215 (= res!2635853 call!551042)))

(declare-fun b!6413216 () Bool)

(assert (=> b!6413216 (= e!3891557 (= (head!13120 s!2326) (c!1170970 lt!2375201)))))

(declare-fun b!6413217 () Bool)

(assert (=> b!6413217 (= e!3891555 (not (= (head!13120 s!2326) (c!1170970 lt!2375201))))))

(declare-fun d!2010967 () Bool)

(declare-fun e!3891559 () Bool)

(assert (=> d!2010967 e!3891559))

(declare-fun c!1171095 () Bool)

(assert (=> d!2010967 (= c!1171095 ((_ is EmptyExpr!16315) lt!2375201))))

(assert (=> d!2010967 (= lt!2375302 e!3891556)))

(declare-fun c!1171094 () Bool)

(assert (=> d!2010967 (= c!1171094 (isEmpty!37269 s!2326))))

(assert (=> d!2010967 (validRegex!8051 lt!2375201)))

(assert (=> d!2010967 (= (matchR!8498 lt!2375201 s!2326) lt!2375302)))

(declare-fun b!6413218 () Bool)

(declare-fun res!2635850 () Bool)

(assert (=> b!6413218 (=> (not res!2635850) (not e!3891557))))

(assert (=> b!6413218 (= res!2635850 (not call!551042))))

(declare-fun b!6413219 () Bool)

(assert (=> b!6413219 (= e!3891558 (not lt!2375302))))

(declare-fun b!6413220 () Bool)

(assert (=> b!6413220 (= e!3891556 (matchR!8498 (derivativeStep!5019 lt!2375201 (head!13120 s!2326)) (tail!12205 s!2326)))))

(declare-fun b!6413221 () Bool)

(assert (=> b!6413221 (= e!3891559 (= lt!2375302 call!551042))))

(declare-fun b!6413222 () Bool)

(assert (=> b!6413222 (= e!3891559 e!3891558)))

(declare-fun c!1171093 () Bool)

(assert (=> b!6413222 (= c!1171093 ((_ is EmptyLang!16315) lt!2375201))))

(assert (= (and d!2010967 c!1171094) b!6413213))

(assert (= (and d!2010967 (not c!1171094)) b!6413220))

(assert (= (and d!2010967 c!1171095) b!6413221))

(assert (= (and d!2010967 (not c!1171095)) b!6413222))

(assert (= (and b!6413222 c!1171093) b!6413219))

(assert (= (and b!6413222 (not c!1171093)) b!6413210))

(assert (= (and b!6413210 (not res!2635848)) b!6413212))

(assert (= (and b!6413212 res!2635849) b!6413218))

(assert (= (and b!6413218 res!2635850) b!6413211))

(assert (= (and b!6413211 res!2635855) b!6413216))

(assert (= (and b!6413212 (not res!2635852)) b!6413214))

(assert (= (and b!6413214 res!2635854) b!6413215))

(assert (= (and b!6413215 (not res!2635853)) b!6413209))

(assert (= (and b!6413209 (not res!2635851)) b!6413217))

(assert (= (or b!6413221 b!6413215 b!6413218) bm!551037))

(assert (=> d!2010967 m!7208618))

(declare-fun m!7208902 () Bool)

(assert (=> d!2010967 m!7208902))

(assert (=> b!6413217 m!7208622))

(declare-fun m!7208904 () Bool)

(assert (=> b!6413213 m!7208904))

(assert (=> b!6413216 m!7208622))

(assert (=> b!6413220 m!7208622))

(assert (=> b!6413220 m!7208622))

(declare-fun m!7208906 () Bool)

(assert (=> b!6413220 m!7208906))

(assert (=> b!6413220 m!7208626))

(assert (=> b!6413220 m!7208906))

(assert (=> b!6413220 m!7208626))

(declare-fun m!7208908 () Bool)

(assert (=> b!6413220 m!7208908))

(assert (=> b!6413211 m!7208626))

(assert (=> b!6413211 m!7208626))

(assert (=> b!6413211 m!7208898))

(assert (=> bm!551037 m!7208618))

(assert (=> b!6413209 m!7208626))

(assert (=> b!6413209 m!7208626))

(assert (=> b!6413209 m!7208898))

(assert (=> b!6412777 d!2010967))

(declare-fun bs!1612195 () Bool)

(declare-fun b!6413229 () Bool)

(assert (= bs!1612195 (and b!6413229 b!6413152)))

(declare-fun lambda!354070 () Int)

(assert (=> bs!1612195 (= (and (= (reg!16644 lt!2375201) (reg!16644 r!7292)) (= lt!2375201 r!7292)) (= lambda!354070 lambda!354066))))

(declare-fun bs!1612196 () Bool)

(assert (= bs!1612196 (and b!6413229 b!6412781)))

(assert (=> bs!1612196 (not (= lambda!354070 lambda!354022))))

(declare-fun bs!1612197 () Bool)

(assert (= bs!1612197 (and b!6413229 d!2010919)))

(assert (=> bs!1612197 (not (= lambda!354070 lambda!354051))))

(assert (=> bs!1612197 (not (= lambda!354070 lambda!354052))))

(assert (=> bs!1612196 (not (= lambda!354070 lambda!354021))))

(declare-fun bs!1612198 () Bool)

(assert (= bs!1612198 (and b!6413229 b!6412754)))

(assert (=> bs!1612198 (not (= lambda!354070 lambda!354025))))

(declare-fun bs!1612199 () Bool)

(assert (= bs!1612199 (and b!6413229 d!2010911)))

(assert (=> bs!1612199 (not (= lambda!354070 lambda!354046))))

(declare-fun bs!1612200 () Bool)

(assert (= bs!1612200 (and b!6413229 b!6413154)))

(assert (=> bs!1612200 (not (= lambda!354070 lambda!354067))))

(assert (=> bs!1612198 (not (= lambda!354070 lambda!354024))))

(assert (=> b!6413229 true))

(assert (=> b!6413229 true))

(declare-fun bs!1612201 () Bool)

(declare-fun b!6413231 () Bool)

(assert (= bs!1612201 (and b!6413231 b!6413152)))

(declare-fun lambda!354073 () Int)

(assert (=> bs!1612201 (not (= lambda!354073 lambda!354066))))

(declare-fun bs!1612202 () Bool)

(assert (= bs!1612202 (and b!6413231 b!6412781)))

(assert (=> bs!1612202 (= (and (= (regOne!33142 lt!2375201) (regOne!33142 r!7292)) (= (regTwo!33142 lt!2375201) (regTwo!33142 r!7292))) (= lambda!354073 lambda!354022))))

(declare-fun bs!1612203 () Bool)

(assert (= bs!1612203 (and b!6413231 b!6413229)))

(assert (=> bs!1612203 (not (= lambda!354073 lambda!354070))))

(declare-fun bs!1612204 () Bool)

(assert (= bs!1612204 (and b!6413231 d!2010919)))

(assert (=> bs!1612204 (not (= lambda!354073 lambda!354051))))

(assert (=> bs!1612204 (= (and (= (regOne!33142 lt!2375201) (regOne!33142 r!7292)) (= (regTwo!33142 lt!2375201) (regTwo!33142 r!7292))) (= lambda!354073 lambda!354052))))

(assert (=> bs!1612202 (not (= lambda!354073 lambda!354021))))

(declare-fun bs!1612205 () Bool)

(assert (= bs!1612205 (and b!6413231 b!6412754)))

(assert (=> bs!1612205 (= (and (= (regOne!33142 lt!2375201) lt!2375222) (= (regTwo!33142 lt!2375201) (regTwo!33142 r!7292))) (= lambda!354073 lambda!354025))))

(declare-fun bs!1612206 () Bool)

(assert (= bs!1612206 (and b!6413231 d!2010911)))

(assert (=> bs!1612206 (not (= lambda!354073 lambda!354046))))

(declare-fun bs!1612207 () Bool)

(assert (= bs!1612207 (and b!6413231 b!6413154)))

(assert (=> bs!1612207 (= (and (= (regOne!33142 lt!2375201) (regOne!33142 r!7292)) (= (regTwo!33142 lt!2375201) (regTwo!33142 r!7292))) (= lambda!354073 lambda!354067))))

(assert (=> bs!1612205 (not (= lambda!354073 lambda!354024))))

(assert (=> b!6413231 true))

(assert (=> b!6413231 true))

(declare-fun bm!551038 () Bool)

(declare-fun call!551043 () Bool)

(assert (=> bm!551038 (= call!551043 (isEmpty!37269 s!2326))))

(declare-fun bm!551039 () Bool)

(declare-fun call!551044 () Bool)

(declare-fun c!1171098 () Bool)

(assert (=> bm!551039 (= call!551044 (Exists!3385 (ite c!1171098 lambda!354070 lambda!354073)))))

(declare-fun b!6413227 () Bool)

(declare-fun e!3891562 () Bool)

(declare-fun e!3891566 () Bool)

(assert (=> b!6413227 (= e!3891562 e!3891566)))

(assert (=> b!6413227 (= c!1171098 ((_ is Star!16315) lt!2375201))))

(declare-fun b!6413228 () Bool)

(declare-fun res!2635862 () Bool)

(declare-fun e!3891561 () Bool)

(assert (=> b!6413228 (=> res!2635862 e!3891561)))

(assert (=> b!6413228 (= res!2635862 call!551043)))

(assert (=> b!6413228 (= e!3891566 e!3891561)))

(assert (=> b!6413229 (= e!3891561 call!551044)))

(declare-fun b!6413230 () Bool)

(declare-fun e!3891565 () Bool)

(declare-fun e!3891564 () Bool)

(assert (=> b!6413230 (= e!3891565 e!3891564)))

(declare-fun res!2635860 () Bool)

(assert (=> b!6413230 (= res!2635860 (not ((_ is EmptyLang!16315) lt!2375201)))))

(assert (=> b!6413230 (=> (not res!2635860) (not e!3891564))))

(assert (=> b!6413231 (= e!3891566 call!551044)))

(declare-fun b!6413232 () Bool)

(declare-fun c!1171099 () Bool)

(assert (=> b!6413232 (= c!1171099 ((_ is ElementMatch!16315) lt!2375201))))

(declare-fun e!3891563 () Bool)

(assert (=> b!6413232 (= e!3891564 e!3891563)))

(declare-fun b!6413233 () Bool)

(declare-fun e!3891567 () Bool)

(assert (=> b!6413233 (= e!3891567 (matchRSpec!3416 (regTwo!33143 lt!2375201) s!2326))))

(declare-fun d!2010969 () Bool)

(declare-fun c!1171097 () Bool)

(assert (=> d!2010969 (= c!1171097 ((_ is EmptyExpr!16315) lt!2375201))))

(assert (=> d!2010969 (= (matchRSpec!3416 lt!2375201 s!2326) e!3891565)))

(declare-fun b!6413234 () Bool)

(assert (=> b!6413234 (= e!3891563 (= s!2326 (Cons!65121 (c!1170970 lt!2375201) Nil!65121)))))

(declare-fun b!6413235 () Bool)

(assert (=> b!6413235 (= e!3891562 e!3891567)))

(declare-fun res!2635861 () Bool)

(assert (=> b!6413235 (= res!2635861 (matchRSpec!3416 (regOne!33143 lt!2375201) s!2326))))

(assert (=> b!6413235 (=> res!2635861 e!3891567)))

(declare-fun b!6413236 () Bool)

(declare-fun c!1171096 () Bool)

(assert (=> b!6413236 (= c!1171096 ((_ is Union!16315) lt!2375201))))

(assert (=> b!6413236 (= e!3891563 e!3891562)))

(declare-fun b!6413237 () Bool)

(assert (=> b!6413237 (= e!3891565 call!551043)))

(assert (= (and d!2010969 c!1171097) b!6413237))

(assert (= (and d!2010969 (not c!1171097)) b!6413230))

(assert (= (and b!6413230 res!2635860) b!6413232))

(assert (= (and b!6413232 c!1171099) b!6413234))

(assert (= (and b!6413232 (not c!1171099)) b!6413236))

(assert (= (and b!6413236 c!1171096) b!6413235))

(assert (= (and b!6413236 (not c!1171096)) b!6413227))

(assert (= (and b!6413235 (not res!2635861)) b!6413233))

(assert (= (and b!6413227 c!1171098) b!6413228))

(assert (= (and b!6413227 (not c!1171098)) b!6413231))

(assert (= (and b!6413228 (not res!2635862)) b!6413229))

(assert (= (or b!6413229 b!6413231) bm!551039))

(assert (= (or b!6413237 b!6413228) bm!551038))

(assert (=> bm!551038 m!7208618))

(declare-fun m!7208910 () Bool)

(assert (=> bm!551039 m!7208910))

(declare-fun m!7208912 () Bool)

(assert (=> b!6413233 m!7208912))

(declare-fun m!7208914 () Bool)

(assert (=> b!6413235 m!7208914))

(assert (=> b!6412777 d!2010969))

(declare-fun d!2010971 () Bool)

(assert (=> d!2010971 (= (matchR!8498 lt!2375201 s!2326) (matchRSpec!3416 lt!2375201 s!2326))))

(declare-fun lt!2375303 () Unit!158591)

(assert (=> d!2010971 (= lt!2375303 (choose!47640 lt!2375201 s!2326))))

(assert (=> d!2010971 (validRegex!8051 lt!2375201)))

(assert (=> d!2010971 (= (mainMatchTheorem!3416 lt!2375201 s!2326) lt!2375303)))

(declare-fun bs!1612208 () Bool)

(assert (= bs!1612208 d!2010971))

(assert (=> bs!1612208 m!7208498))

(assert (=> bs!1612208 m!7208500))

(declare-fun m!7208916 () Bool)

(assert (=> bs!1612208 m!7208916))

(assert (=> bs!1612208 m!7208902))

(assert (=> b!6412777 d!2010971))

(declare-fun bs!1612209 () Bool)

(declare-fun d!2010973 () Bool)

(assert (= bs!1612209 (and d!2010973 b!6413152)))

(declare-fun lambda!354074 () Int)

(assert (=> bs!1612209 (not (= lambda!354074 lambda!354066))))

(declare-fun bs!1612210 () Bool)

(assert (= bs!1612210 (and d!2010973 b!6412781)))

(assert (=> bs!1612210 (not (= lambda!354074 lambda!354022))))

(declare-fun bs!1612211 () Bool)

(assert (= bs!1612211 (and d!2010973 b!6413229)))

(assert (=> bs!1612211 (not (= lambda!354074 lambda!354070))))

(declare-fun bs!1612212 () Bool)

(assert (= bs!1612212 (and d!2010973 d!2010919)))

(assert (=> bs!1612212 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354074 lambda!354051))))

(assert (=> bs!1612212 (not (= lambda!354074 lambda!354052))))

(assert (=> bs!1612210 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354074 lambda!354021))))

(declare-fun bs!1612213 () Bool)

(assert (= bs!1612213 (and d!2010973 b!6412754)))

(assert (=> bs!1612213 (not (= lambda!354074 lambda!354025))))

(declare-fun bs!1612214 () Bool)

(assert (= bs!1612214 (and d!2010973 b!6413231)))

(assert (=> bs!1612214 (not (= lambda!354074 lambda!354073))))

(declare-fun bs!1612215 () Bool)

(assert (= bs!1612215 (and d!2010973 d!2010911)))

(assert (=> bs!1612215 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354074 lambda!354046))))

(declare-fun bs!1612216 () Bool)

(assert (= bs!1612216 (and d!2010973 b!6413154)))

(assert (=> bs!1612216 (not (= lambda!354074 lambda!354067))))

(assert (=> bs!1612213 (= lambda!354074 lambda!354024)))

(assert (=> d!2010973 true))

(assert (=> d!2010973 true))

(assert (=> d!2010973 true))

(assert (=> d!2010973 (= (isDefined!12909 (findConcatSeparation!2620 lt!2375222 (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326)) (Exists!3385 lambda!354074))))

(declare-fun lt!2375304 () Unit!158591)

(assert (=> d!2010973 (= lt!2375304 (choose!47632 lt!2375222 (regTwo!33142 r!7292) s!2326))))

(assert (=> d!2010973 (validRegex!8051 lt!2375222)))

(assert (=> d!2010973 (= (lemmaFindConcatSeparationEquivalentToExists!2384 lt!2375222 (regTwo!33142 r!7292) s!2326) lt!2375304)))

(declare-fun bs!1612217 () Bool)

(assert (= bs!1612217 d!2010973))

(assert (=> bs!1612217 m!7208594))

(declare-fun m!7208918 () Bool)

(assert (=> bs!1612217 m!7208918))

(assert (=> bs!1612217 m!7208830))

(declare-fun m!7208920 () Bool)

(assert (=> bs!1612217 m!7208920))

(declare-fun m!7208922 () Bool)

(assert (=> bs!1612217 m!7208922))

(assert (=> bs!1612217 m!7208594))

(assert (=> b!6412754 d!2010973))

(declare-fun d!2010975 () Bool)

(assert (=> d!2010975 (= (get!22556 lt!2375214) (v!52378 lt!2375214))))

(assert (=> b!6412754 d!2010975))

(declare-fun b!6413277 () Bool)

(declare-fun res!2635882 () Bool)

(declare-fun e!3891588 () Bool)

(assert (=> b!6413277 (=> (not res!2635882) (not e!3891588))))

(declare-fun lt!2375308 () List!65245)

(declare-fun size!40373 (List!65245) Int)

(assert (=> b!6413277 (= res!2635882 (= (size!40373 lt!2375308) (+ (size!40373 (_1!36597 lt!2375224)) (size!40373 (_2!36597 lt!2375224)))))))

(declare-fun b!6413278 () Bool)

(assert (=> b!6413278 (= e!3891588 (or (not (= (_2!36597 lt!2375224) Nil!65121)) (= lt!2375308 (_1!36597 lt!2375224))))))

(declare-fun b!6413275 () Bool)

(declare-fun e!3891589 () List!65245)

(assert (=> b!6413275 (= e!3891589 (_2!36597 lt!2375224))))

(declare-fun b!6413276 () Bool)

(assert (=> b!6413276 (= e!3891589 (Cons!65121 (h!71569 (_1!36597 lt!2375224)) (++!14383 (t!378857 (_1!36597 lt!2375224)) (_2!36597 lt!2375224))))))

(declare-fun d!2010977 () Bool)

(assert (=> d!2010977 e!3891588))

(declare-fun res!2635883 () Bool)

(assert (=> d!2010977 (=> (not res!2635883) (not e!3891588))))

(declare-fun content!12344 (List!65245) (InoxSet C!32900))

(assert (=> d!2010977 (= res!2635883 (= (content!12344 lt!2375308) ((_ map or) (content!12344 (_1!36597 lt!2375224)) (content!12344 (_2!36597 lt!2375224)))))))

(assert (=> d!2010977 (= lt!2375308 e!3891589)))

(declare-fun c!1171109 () Bool)

(assert (=> d!2010977 (= c!1171109 ((_ is Nil!65121) (_1!36597 lt!2375224)))))

(assert (=> d!2010977 (= (++!14383 (_1!36597 lt!2375224) (_2!36597 lt!2375224)) lt!2375308)))

(assert (= (and d!2010977 c!1171109) b!6413275))

(assert (= (and d!2010977 (not c!1171109)) b!6413276))

(assert (= (and d!2010977 res!2635883) b!6413277))

(assert (= (and b!6413277 res!2635882) b!6413278))

(declare-fun m!7208936 () Bool)

(assert (=> b!6413277 m!7208936))

(declare-fun m!7208938 () Bool)

(assert (=> b!6413277 m!7208938))

(declare-fun m!7208940 () Bool)

(assert (=> b!6413277 m!7208940))

(declare-fun m!7208942 () Bool)

(assert (=> b!6413276 m!7208942))

(declare-fun m!7208944 () Bool)

(assert (=> d!2010977 m!7208944))

(declare-fun m!7208946 () Bool)

(assert (=> d!2010977 m!7208946))

(declare-fun m!7208948 () Bool)

(assert (=> d!2010977 m!7208948))

(assert (=> b!6412754 d!2010977))

(declare-fun d!2010983 () Bool)

(assert (=> d!2010983 (= (isDefined!12909 lt!2375214) (not (isEmpty!37271 lt!2375214)))))

(declare-fun bs!1612227 () Bool)

(assert (= bs!1612227 d!2010983))

(declare-fun m!7208950 () Bool)

(assert (=> bs!1612227 m!7208950))

(assert (=> b!6412754 d!2010983))

(declare-fun d!2010985 () Bool)

(assert (=> d!2010985 (= (Exists!3385 lambda!354024) (choose!47631 lambda!354024))))

(declare-fun bs!1612228 () Bool)

(assert (= bs!1612228 d!2010985))

(declare-fun m!7208952 () Bool)

(assert (=> bs!1612228 m!7208952))

(assert (=> b!6412754 d!2010985))

(declare-fun b!6413279 () Bool)

(declare-fun res!2635886 () Bool)

(declare-fun e!3891590 () Bool)

(assert (=> b!6413279 (=> (not res!2635886) (not e!3891590))))

(declare-fun lt!2375311 () Option!16206)

(assert (=> b!6413279 (= res!2635886 (matchR!8498 lt!2375222 (_1!36597 (get!22556 lt!2375311))))))

(declare-fun b!6413280 () Bool)

(declare-fun e!3891594 () Option!16206)

(assert (=> b!6413280 (= e!3891594 None!16205)))

(declare-fun b!6413281 () Bool)

(declare-fun lt!2375310 () Unit!158591)

(declare-fun lt!2375309 () Unit!158591)

(assert (=> b!6413281 (= lt!2375310 lt!2375309)))

(assert (=> b!6413281 (= (++!14383 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326)) s!2326)))

(assert (=> b!6413281 (= lt!2375309 (lemmaMoveElementToOtherListKeepsConcatEq!2477 Nil!65121 (h!71569 s!2326) (t!378857 s!2326) s!2326))))

(assert (=> b!6413281 (= e!3891594 (findConcatSeparation!2620 lt!2375222 (regTwo!33142 r!7292) (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326) s!2326))))

(declare-fun b!6413282 () Bool)

(declare-fun e!3891592 () Option!16206)

(assert (=> b!6413282 (= e!3891592 e!3891594)))

(declare-fun c!1171110 () Bool)

(assert (=> b!6413282 (= c!1171110 ((_ is Nil!65121) s!2326))))

(declare-fun b!6413283 () Bool)

(declare-fun e!3891591 () Bool)

(assert (=> b!6413283 (= e!3891591 (matchR!8498 (regTwo!33142 r!7292) s!2326))))

(declare-fun b!6413284 () Bool)

(declare-fun res!2635885 () Bool)

(assert (=> b!6413284 (=> (not res!2635885) (not e!3891590))))

(assert (=> b!6413284 (= res!2635885 (matchR!8498 (regTwo!33142 r!7292) (_2!36597 (get!22556 lt!2375311))))))

(declare-fun b!6413285 () Bool)

(assert (=> b!6413285 (= e!3891592 (Some!16205 (tuple2!66589 Nil!65121 s!2326)))))

(declare-fun b!6413286 () Bool)

(assert (=> b!6413286 (= e!3891590 (= (++!14383 (_1!36597 (get!22556 lt!2375311)) (_2!36597 (get!22556 lt!2375311))) s!2326))))

(declare-fun b!6413287 () Bool)

(declare-fun e!3891593 () Bool)

(assert (=> b!6413287 (= e!3891593 (not (isDefined!12909 lt!2375311)))))

(declare-fun d!2010987 () Bool)

(assert (=> d!2010987 e!3891593))

(declare-fun res!2635884 () Bool)

(assert (=> d!2010987 (=> res!2635884 e!3891593)))

(assert (=> d!2010987 (= res!2635884 e!3891590)))

(declare-fun res!2635887 () Bool)

(assert (=> d!2010987 (=> (not res!2635887) (not e!3891590))))

(assert (=> d!2010987 (= res!2635887 (isDefined!12909 lt!2375311))))

(assert (=> d!2010987 (= lt!2375311 e!3891592)))

(declare-fun c!1171111 () Bool)

(assert (=> d!2010987 (= c!1171111 e!3891591)))

(declare-fun res!2635888 () Bool)

(assert (=> d!2010987 (=> (not res!2635888) (not e!3891591))))

(assert (=> d!2010987 (= res!2635888 (matchR!8498 lt!2375222 Nil!65121))))

(assert (=> d!2010987 (validRegex!8051 lt!2375222)))

(assert (=> d!2010987 (= (findConcatSeparation!2620 lt!2375222 (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326) lt!2375311)))

(assert (= (and d!2010987 res!2635888) b!6413283))

(assert (= (and d!2010987 c!1171111) b!6413285))

(assert (= (and d!2010987 (not c!1171111)) b!6413282))

(assert (= (and b!6413282 c!1171110) b!6413280))

(assert (= (and b!6413282 (not c!1171110)) b!6413281))

(assert (= (and d!2010987 res!2635887) b!6413279))

(assert (= (and b!6413279 res!2635886) b!6413284))

(assert (= (and b!6413284 res!2635885) b!6413286))

(assert (= (and d!2010987 (not res!2635884)) b!6413287))

(declare-fun m!7208954 () Bool)

(assert (=> b!6413279 m!7208954))

(declare-fun m!7208956 () Bool)

(assert (=> b!6413279 m!7208956))

(declare-fun m!7208958 () Bool)

(assert (=> b!6413287 m!7208958))

(assert (=> b!6413284 m!7208954))

(declare-fun m!7208960 () Bool)

(assert (=> b!6413284 m!7208960))

(assert (=> b!6413283 m!7208714))

(assert (=> d!2010987 m!7208958))

(declare-fun m!7208962 () Bool)

(assert (=> d!2010987 m!7208962))

(assert (=> d!2010987 m!7208830))

(assert (=> b!6413281 m!7208720))

(assert (=> b!6413281 m!7208720))

(assert (=> b!6413281 m!7208722))

(assert (=> b!6413281 m!7208724))

(assert (=> b!6413281 m!7208720))

(declare-fun m!7208964 () Bool)

(assert (=> b!6413281 m!7208964))

(assert (=> b!6413286 m!7208954))

(declare-fun m!7208966 () Bool)

(assert (=> b!6413286 m!7208966))

(assert (=> b!6412754 d!2010987))

(declare-fun d!2010989 () Bool)

(assert (=> d!2010989 (= (Exists!3385 lambda!354025) (choose!47631 lambda!354025))))

(declare-fun bs!1612229 () Bool)

(assert (= bs!1612229 d!2010989))

(declare-fun m!7208968 () Bool)

(assert (=> bs!1612229 m!7208968))

(assert (=> b!6412754 d!2010989))

(declare-fun bs!1612231 () Bool)

(declare-fun d!2010991 () Bool)

(assert (= bs!1612231 (and d!2010991 b!6413152)))

(declare-fun lambda!354077 () Int)

(assert (=> bs!1612231 (not (= lambda!354077 lambda!354066))))

(declare-fun bs!1612233 () Bool)

(assert (= bs!1612233 (and d!2010991 b!6412781)))

(assert (=> bs!1612233 (not (= lambda!354077 lambda!354022))))

(declare-fun bs!1612234 () Bool)

(assert (= bs!1612234 (and d!2010991 b!6413229)))

(assert (=> bs!1612234 (not (= lambda!354077 lambda!354070))))

(declare-fun bs!1612235 () Bool)

(assert (= bs!1612235 (and d!2010991 d!2010919)))

(assert (=> bs!1612235 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354077 lambda!354051))))

(assert (=> bs!1612235 (not (= lambda!354077 lambda!354052))))

(assert (=> bs!1612233 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354077 lambda!354021))))

(declare-fun bs!1612236 () Bool)

(assert (= bs!1612236 (and d!2010991 b!6412754)))

(assert (=> bs!1612236 (not (= lambda!354077 lambda!354025))))

(declare-fun bs!1612237 () Bool)

(assert (= bs!1612237 (and d!2010991 b!6413231)))

(assert (=> bs!1612237 (not (= lambda!354077 lambda!354073))))

(declare-fun bs!1612238 () Bool)

(assert (= bs!1612238 (and d!2010991 b!6413154)))

(assert (=> bs!1612238 (not (= lambda!354077 lambda!354067))))

(assert (=> bs!1612236 (= lambda!354077 lambda!354024)))

(declare-fun bs!1612239 () Bool)

(assert (= bs!1612239 (and d!2010991 d!2010911)))

(assert (=> bs!1612239 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354077 lambda!354046))))

(declare-fun bs!1612240 () Bool)

(assert (= bs!1612240 (and d!2010991 d!2010973)))

(assert (=> bs!1612240 (= lambda!354077 lambda!354074)))

(assert (=> d!2010991 true))

(assert (=> d!2010991 true))

(assert (=> d!2010991 true))

(declare-fun lambda!354078 () Int)

(assert (=> bs!1612231 (not (= lambda!354078 lambda!354066))))

(assert (=> bs!1612233 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354078 lambda!354022))))

(assert (=> bs!1612234 (not (= lambda!354078 lambda!354070))))

(assert (=> bs!1612235 (not (= lambda!354078 lambda!354051))))

(assert (=> bs!1612235 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354078 lambda!354052))))

(assert (=> bs!1612233 (not (= lambda!354078 lambda!354021))))

(assert (=> bs!1612236 (= lambda!354078 lambda!354025)))

(assert (=> bs!1612237 (= (and (= lt!2375222 (regOne!33142 lt!2375201)) (= (regTwo!33142 r!7292) (regTwo!33142 lt!2375201))) (= lambda!354078 lambda!354073))))

(declare-fun bs!1612242 () Bool)

(assert (= bs!1612242 d!2010991))

(assert (=> bs!1612242 (not (= lambda!354078 lambda!354077))))

(assert (=> bs!1612238 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354078 lambda!354067))))

(assert (=> bs!1612236 (not (= lambda!354078 lambda!354024))))

(assert (=> bs!1612239 (not (= lambda!354078 lambda!354046))))

(assert (=> bs!1612240 (not (= lambda!354078 lambda!354074))))

(assert (=> d!2010991 true))

(assert (=> d!2010991 true))

(assert (=> d!2010991 true))

(assert (=> d!2010991 (= (Exists!3385 lambda!354077) (Exists!3385 lambda!354078))))

(declare-fun lt!2375314 () Unit!158591)

(assert (=> d!2010991 (= lt!2375314 (choose!47634 lt!2375222 (regTwo!33142 r!7292) s!2326))))

(assert (=> d!2010991 (validRegex!8051 lt!2375222)))

(assert (=> d!2010991 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1922 lt!2375222 (regTwo!33142 r!7292) s!2326) lt!2375314)))

(declare-fun m!7208980 () Bool)

(assert (=> bs!1612242 m!7208980))

(declare-fun m!7208982 () Bool)

(assert (=> bs!1612242 m!7208982))

(declare-fun m!7208984 () Bool)

(assert (=> bs!1612242 m!7208984))

(assert (=> bs!1612242 m!7208830))

(assert (=> b!6412754 d!2010991))

(declare-fun b!6413352 () Bool)

(declare-fun e!3891636 () Bool)

(declare-fun lt!2375325 () Regex!16315)

(declare-fun isConcat!1239 (Regex!16315) Bool)

(assert (=> b!6413352 (= e!3891636 (isConcat!1239 lt!2375325))))

(declare-fun b!6413353 () Bool)

(declare-fun e!3891632 () Regex!16315)

(assert (=> b!6413353 (= e!3891632 (h!71568 (exprs!6199 (h!71570 zl!343))))))

(declare-fun d!2010999 () Bool)

(declare-fun e!3891635 () Bool)

(assert (=> d!2010999 e!3891635))

(declare-fun res!2635907 () Bool)

(assert (=> d!2010999 (=> (not res!2635907) (not e!3891635))))

(assert (=> d!2010999 (= res!2635907 (validRegex!8051 lt!2375325))))

(assert (=> d!2010999 (= lt!2375325 e!3891632)))

(declare-fun c!1171137 () Bool)

(declare-fun e!3891634 () Bool)

(assert (=> d!2010999 (= c!1171137 e!3891634)))

(declare-fun res!2635908 () Bool)

(assert (=> d!2010999 (=> (not res!2635908) (not e!3891634))))

(assert (=> d!2010999 (= res!2635908 ((_ is Cons!65120) (exprs!6199 (h!71570 zl!343))))))

(declare-fun lambda!354084 () Int)

(declare-fun forall!15504 (List!65244 Int) Bool)

(assert (=> d!2010999 (forall!15504 (exprs!6199 (h!71570 zl!343)) lambda!354084)))

(assert (=> d!2010999 (= (generalisedConcat!1912 (exprs!6199 (h!71570 zl!343))) lt!2375325)))

(declare-fun b!6413354 () Bool)

(declare-fun e!3891637 () Bool)

(declare-fun isEmptyExpr!1716 (Regex!16315) Bool)

(assert (=> b!6413354 (= e!3891637 (isEmptyExpr!1716 lt!2375325))))

(declare-fun b!6413355 () Bool)

(declare-fun head!13122 (List!65244) Regex!16315)

(assert (=> b!6413355 (= e!3891636 (= lt!2375325 (head!13122 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6413356 () Bool)

(assert (=> b!6413356 (= e!3891634 (isEmpty!37268 (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6413357 () Bool)

(assert (=> b!6413357 (= e!3891635 e!3891637)))

(declare-fun c!1171136 () Bool)

(assert (=> b!6413357 (= c!1171136 (isEmpty!37268 (exprs!6199 (h!71570 zl!343))))))

(declare-fun b!6413358 () Bool)

(declare-fun e!3891633 () Regex!16315)

(assert (=> b!6413358 (= e!3891633 EmptyExpr!16315)))

(declare-fun b!6413359 () Bool)

(assert (=> b!6413359 (= e!3891633 (Concat!25160 (h!71568 (exprs!6199 (h!71570 zl!343))) (generalisedConcat!1912 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun b!6413360 () Bool)

(assert (=> b!6413360 (= e!3891637 e!3891636)))

(declare-fun c!1171135 () Bool)

(declare-fun tail!12207 (List!65244) List!65244)

(assert (=> b!6413360 (= c!1171135 (isEmpty!37268 (tail!12207 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6413361 () Bool)

(assert (=> b!6413361 (= e!3891632 e!3891633)))

(declare-fun c!1171138 () Bool)

(assert (=> b!6413361 (= c!1171138 ((_ is Cons!65120) (exprs!6199 (h!71570 zl!343))))))

(assert (= (and d!2010999 res!2635908) b!6413356))

(assert (= (and d!2010999 c!1171137) b!6413353))

(assert (= (and d!2010999 (not c!1171137)) b!6413361))

(assert (= (and b!6413361 c!1171138) b!6413359))

(assert (= (and b!6413361 (not c!1171138)) b!6413358))

(assert (= (and d!2010999 res!2635907) b!6413357))

(assert (= (and b!6413357 c!1171136) b!6413354))

(assert (= (and b!6413357 (not c!1171136)) b!6413360))

(assert (= (and b!6413360 c!1171135) b!6413355))

(assert (= (and b!6413360 (not c!1171135)) b!6413352))

(declare-fun m!7209010 () Bool)

(assert (=> b!6413354 m!7209010))

(declare-fun m!7209012 () Bool)

(assert (=> b!6413360 m!7209012))

(assert (=> b!6413360 m!7209012))

(declare-fun m!7209014 () Bool)

(assert (=> b!6413360 m!7209014))

(declare-fun m!7209016 () Bool)

(assert (=> b!6413352 m!7209016))

(assert (=> b!6413356 m!7208508))

(declare-fun m!7209018 () Bool)

(assert (=> b!6413357 m!7209018))

(declare-fun m!7209020 () Bool)

(assert (=> b!6413355 m!7209020))

(declare-fun m!7209022 () Bool)

(assert (=> d!2010999 m!7209022))

(declare-fun m!7209024 () Bool)

(assert (=> d!2010999 m!7209024))

(assert (=> b!6413359 m!7208554))

(assert (=> b!6412776 d!2010999))

(declare-fun d!2011005 () Bool)

(declare-fun c!1171143 () Bool)

(assert (=> d!2011005 (= c!1171143 (isEmpty!37269 s!2326))))

(declare-fun e!3891645 () Bool)

(assert (=> d!2011005 (= (matchZipper!2327 z!1189 s!2326) e!3891645)))

(declare-fun b!6413373 () Bool)

(assert (=> b!6413373 (= e!3891645 (nullableZipper!2080 z!1189))))

(declare-fun b!6413374 () Bool)

(assert (=> b!6413374 (= e!3891645 (matchZipper!2327 (derivationStepZipper!2281 z!1189 (head!13120 s!2326)) (tail!12205 s!2326)))))

(assert (= (and d!2011005 c!1171143) b!6413373))

(assert (= (and d!2011005 (not c!1171143)) b!6413374))

(assert (=> d!2011005 m!7208618))

(declare-fun m!7209026 () Bool)

(assert (=> b!6413373 m!7209026))

(assert (=> b!6413374 m!7208622))

(assert (=> b!6413374 m!7208622))

(declare-fun m!7209028 () Bool)

(assert (=> b!6413374 m!7209028))

(assert (=> b!6413374 m!7208626))

(assert (=> b!6413374 m!7209028))

(assert (=> b!6413374 m!7208626))

(declare-fun m!7209030 () Bool)

(assert (=> b!6413374 m!7209030))

(assert (=> b!6412789 d!2011005))

(declare-fun b!6413375 () Bool)

(declare-fun res!2635915 () Bool)

(declare-fun e!3891647 () Bool)

(assert (=> b!6413375 (=> res!2635915 e!3891647)))

(assert (=> b!6413375 (= res!2635915 (not (isEmpty!37269 (tail!12205 s!2326))))))

(declare-fun b!6413376 () Bool)

(declare-fun res!2635912 () Bool)

(declare-fun e!3891646 () Bool)

(assert (=> b!6413376 (=> res!2635912 e!3891646)))

(assert (=> b!6413376 (= res!2635912 (not ((_ is ElementMatch!16315) lt!2375210)))))

(declare-fun e!3891650 () Bool)

(assert (=> b!6413376 (= e!3891650 e!3891646)))

(declare-fun b!6413377 () Bool)

(declare-fun res!2635919 () Bool)

(declare-fun e!3891649 () Bool)

(assert (=> b!6413377 (=> (not res!2635919) (not e!3891649))))

(assert (=> b!6413377 (= res!2635919 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun b!6413378 () Bool)

(declare-fun res!2635916 () Bool)

(assert (=> b!6413378 (=> res!2635916 e!3891646)))

(assert (=> b!6413378 (= res!2635916 e!3891649)))

(declare-fun res!2635913 () Bool)

(assert (=> b!6413378 (=> (not res!2635913) (not e!3891649))))

(declare-fun lt!2375326 () Bool)

(assert (=> b!6413378 (= res!2635913 lt!2375326)))

(declare-fun bm!551050 () Bool)

(declare-fun call!551055 () Bool)

(assert (=> bm!551050 (= call!551055 (isEmpty!37269 s!2326))))

(declare-fun b!6413379 () Bool)

(declare-fun e!3891648 () Bool)

(assert (=> b!6413379 (= e!3891648 (nullable!6308 lt!2375210))))

(declare-fun b!6413380 () Bool)

(declare-fun e!3891652 () Bool)

(assert (=> b!6413380 (= e!3891646 e!3891652)))

(declare-fun res!2635918 () Bool)

(assert (=> b!6413380 (=> (not res!2635918) (not e!3891652))))

(assert (=> b!6413380 (= res!2635918 (not lt!2375326))))

(declare-fun b!6413381 () Bool)

(assert (=> b!6413381 (= e!3891652 e!3891647)))

(declare-fun res!2635917 () Bool)

(assert (=> b!6413381 (=> res!2635917 e!3891647)))

(assert (=> b!6413381 (= res!2635917 call!551055)))

(declare-fun b!6413382 () Bool)

(assert (=> b!6413382 (= e!3891649 (= (head!13120 s!2326) (c!1170970 lt!2375210)))))

(declare-fun b!6413383 () Bool)

(assert (=> b!6413383 (= e!3891647 (not (= (head!13120 s!2326) (c!1170970 lt!2375210))))))

(declare-fun d!2011007 () Bool)

(declare-fun e!3891651 () Bool)

(assert (=> d!2011007 e!3891651))

(declare-fun c!1171146 () Bool)

(assert (=> d!2011007 (= c!1171146 ((_ is EmptyExpr!16315) lt!2375210))))

(assert (=> d!2011007 (= lt!2375326 e!3891648)))

(declare-fun c!1171145 () Bool)

(assert (=> d!2011007 (= c!1171145 (isEmpty!37269 s!2326))))

(assert (=> d!2011007 (validRegex!8051 lt!2375210)))

(assert (=> d!2011007 (= (matchR!8498 lt!2375210 s!2326) lt!2375326)))

(declare-fun b!6413384 () Bool)

(declare-fun res!2635914 () Bool)

(assert (=> b!6413384 (=> (not res!2635914) (not e!3891649))))

(assert (=> b!6413384 (= res!2635914 (not call!551055))))

(declare-fun b!6413385 () Bool)

(assert (=> b!6413385 (= e!3891650 (not lt!2375326))))

(declare-fun b!6413386 () Bool)

(assert (=> b!6413386 (= e!3891648 (matchR!8498 (derivativeStep!5019 lt!2375210 (head!13120 s!2326)) (tail!12205 s!2326)))))

(declare-fun b!6413387 () Bool)

(assert (=> b!6413387 (= e!3891651 (= lt!2375326 call!551055))))

(declare-fun b!6413388 () Bool)

(assert (=> b!6413388 (= e!3891651 e!3891650)))

(declare-fun c!1171144 () Bool)

(assert (=> b!6413388 (= c!1171144 ((_ is EmptyLang!16315) lt!2375210))))

(assert (= (and d!2011007 c!1171145) b!6413379))

(assert (= (and d!2011007 (not c!1171145)) b!6413386))

(assert (= (and d!2011007 c!1171146) b!6413387))

(assert (= (and d!2011007 (not c!1171146)) b!6413388))

(assert (= (and b!6413388 c!1171144) b!6413385))

(assert (= (and b!6413388 (not c!1171144)) b!6413376))

(assert (= (and b!6413376 (not res!2635912)) b!6413378))

(assert (= (and b!6413378 res!2635913) b!6413384))

(assert (= (and b!6413384 res!2635914) b!6413377))

(assert (= (and b!6413377 res!2635919) b!6413382))

(assert (= (and b!6413378 (not res!2635916)) b!6413380))

(assert (= (and b!6413380 res!2635918) b!6413381))

(assert (= (and b!6413381 (not res!2635917)) b!6413375))

(assert (= (and b!6413375 (not res!2635915)) b!6413383))

(assert (= (or b!6413387 b!6413381 b!6413384) bm!551050))

(assert (=> d!2011007 m!7208618))

(declare-fun m!7209032 () Bool)

(assert (=> d!2011007 m!7209032))

(assert (=> b!6413383 m!7208622))

(declare-fun m!7209034 () Bool)

(assert (=> b!6413379 m!7209034))

(assert (=> b!6413382 m!7208622))

(assert (=> b!6413386 m!7208622))

(assert (=> b!6413386 m!7208622))

(declare-fun m!7209036 () Bool)

(assert (=> b!6413386 m!7209036))

(assert (=> b!6413386 m!7208626))

(assert (=> b!6413386 m!7209036))

(assert (=> b!6413386 m!7208626))

(declare-fun m!7209038 () Bool)

(assert (=> b!6413386 m!7209038))

(assert (=> b!6413377 m!7208626))

(assert (=> b!6413377 m!7208626))

(assert (=> b!6413377 m!7208898))

(assert (=> bm!551050 m!7208618))

(assert (=> b!6413375 m!7208626))

(assert (=> b!6413375 m!7208626))

(assert (=> b!6413375 m!7208898))

(assert (=> b!6412789 d!2011007))

(declare-fun d!2011009 () Bool)

(declare-fun c!1171147 () Bool)

(assert (=> d!2011009 (= c!1171147 (isEmpty!37269 s!2326))))

(declare-fun e!3891653 () Bool)

(assert (=> d!2011009 (= (matchZipper!2327 lt!2375203 s!2326) e!3891653)))

(declare-fun b!6413389 () Bool)

(assert (=> b!6413389 (= e!3891653 (nullableZipper!2080 lt!2375203))))

(declare-fun b!6413390 () Bool)

(assert (=> b!6413390 (= e!3891653 (matchZipper!2327 (derivationStepZipper!2281 lt!2375203 (head!13120 s!2326)) (tail!12205 s!2326)))))

(assert (= (and d!2011009 c!1171147) b!6413389))

(assert (= (and d!2011009 (not c!1171147)) b!6413390))

(assert (=> d!2011009 m!7208618))

(declare-fun m!7209040 () Bool)

(assert (=> b!6413389 m!7209040))

(assert (=> b!6413390 m!7208622))

(assert (=> b!6413390 m!7208622))

(declare-fun m!7209042 () Bool)

(assert (=> b!6413390 m!7209042))

(assert (=> b!6413390 m!7208626))

(assert (=> b!6413390 m!7209042))

(assert (=> b!6413390 m!7208626))

(declare-fun m!7209044 () Bool)

(assert (=> b!6413390 m!7209044))

(assert (=> b!6412789 d!2011009))

(declare-fun d!2011011 () Bool)

(assert (=> d!2011011 (= (matchR!8498 lt!2375210 s!2326) (matchZipper!2327 lt!2375203 s!2326))))

(declare-fun lt!2375331 () Unit!158591)

(declare-fun choose!47642 ((InoxSet Context!11398) List!65246 Regex!16315 List!65245) Unit!158591)

(assert (=> d!2011011 (= lt!2375331 (choose!47642 lt!2375203 lt!2375193 lt!2375210 s!2326))))

(assert (=> d!2011011 (validRegex!8051 lt!2375210)))

(assert (=> d!2011011 (= (theoremZipperRegexEquiv!809 lt!2375203 lt!2375193 lt!2375210 s!2326) lt!2375331)))

(declare-fun bs!1612261 () Bool)

(assert (= bs!1612261 d!2011011))

(assert (=> bs!1612261 m!7208492))

(assert (=> bs!1612261 m!7208494))

(declare-fun m!7209066 () Bool)

(assert (=> bs!1612261 m!7209066))

(assert (=> bs!1612261 m!7209032))

(assert (=> b!6412789 d!2011011))

(declare-fun d!2011023 () Bool)

(declare-fun choose!47643 ((InoxSet Context!11398) Int) (InoxSet Context!11398))

(assert (=> d!2011023 (= (flatMap!1820 lt!2375199 lambda!354023) (choose!47643 lt!2375199 lambda!354023))))

(declare-fun bs!1612264 () Bool)

(assert (= bs!1612264 d!2011023))

(declare-fun m!7209070 () Bool)

(assert (=> bs!1612264 m!7209070))

(assert (=> b!6412748 d!2011023))

(declare-fun bm!551060 () Bool)

(declare-fun call!551065 () (InoxSet Context!11398))

(assert (=> bm!551060 (= call!551065 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 lt!2375221)) (Context!11399 (t!378856 (exprs!6199 lt!2375221))) (h!71569 s!2326)))))

(declare-fun b!6413424 () Bool)

(declare-fun e!3891671 () (InoxSet Context!11398))

(assert (=> b!6413424 (= e!3891671 ((_ map or) call!551065 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 lt!2375221))) (h!71569 s!2326))))))

(declare-fun b!6413425 () Bool)

(declare-fun e!3891673 () (InoxSet Context!11398))

(assert (=> b!6413425 (= e!3891673 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6413427 () Bool)

(assert (=> b!6413427 (= e!3891673 call!551065)))

(declare-fun b!6413428 () Bool)

(declare-fun e!3891672 () Bool)

(assert (=> b!6413428 (= e!3891672 (nullable!6308 (h!71568 (exprs!6199 lt!2375221))))))

(declare-fun b!6413426 () Bool)

(assert (=> b!6413426 (= e!3891671 e!3891673)))

(declare-fun c!1171165 () Bool)

(assert (=> b!6413426 (= c!1171165 ((_ is Cons!65120) (exprs!6199 lt!2375221)))))

(declare-fun d!2011027 () Bool)

(declare-fun c!1171164 () Bool)

(assert (=> d!2011027 (= c!1171164 e!3891672)))

(declare-fun res!2635923 () Bool)

(assert (=> d!2011027 (=> (not res!2635923) (not e!3891672))))

(assert (=> d!2011027 (= res!2635923 ((_ is Cons!65120) (exprs!6199 lt!2375221)))))

(assert (=> d!2011027 (= (derivationStepZipperUp!1489 lt!2375221 (h!71569 s!2326)) e!3891671)))

(assert (= (and d!2011027 res!2635923) b!6413428))

(assert (= (and d!2011027 c!1171164) b!6413424))

(assert (= (and d!2011027 (not c!1171164)) b!6413426))

(assert (= (and b!6413426 c!1171165) b!6413427))

(assert (= (and b!6413426 (not c!1171165)) b!6413425))

(assert (= (or b!6413424 b!6413427) bm!551060))

(declare-fun m!7209072 () Bool)

(assert (=> bm!551060 m!7209072))

(declare-fun m!7209074 () Bool)

(assert (=> b!6413424 m!7209074))

(declare-fun m!7209076 () Bool)

(assert (=> b!6413428 m!7209076))

(assert (=> b!6412748 d!2011027))

(declare-fun d!2011029 () Bool)

(declare-fun dynLambda!25862 (Int Context!11398) (InoxSet Context!11398))

(assert (=> d!2011029 (= (flatMap!1820 lt!2375199 lambda!354023) (dynLambda!25862 lambda!354023 lt!2375221))))

(declare-fun lt!2375336 () Unit!158591)

(declare-fun choose!47644 ((InoxSet Context!11398) Context!11398 Int) Unit!158591)

(assert (=> d!2011029 (= lt!2375336 (choose!47644 lt!2375199 lt!2375221 lambda!354023))))

(assert (=> d!2011029 (= lt!2375199 (store ((as const (Array Context!11398 Bool)) false) lt!2375221 true))))

(assert (=> d!2011029 (= (lemmaFlatMapOnSingletonSet!1346 lt!2375199 lt!2375221 lambda!354023) lt!2375336)))

(declare-fun b_lambda!243793 () Bool)

(assert (=> (not b_lambda!243793) (not d!2011029)))

(declare-fun bs!1612265 () Bool)

(assert (= bs!1612265 d!2011029))

(assert (=> bs!1612265 m!7208486))

(declare-fun m!7209078 () Bool)

(assert (=> bs!1612265 m!7209078))

(declare-fun m!7209080 () Bool)

(assert (=> bs!1612265 m!7209080))

(assert (=> bs!1612265 m!7208480))

(assert (=> b!6412748 d!2011029))

(declare-fun bs!1612266 () Bool)

(declare-fun d!2011031 () Bool)

(assert (= bs!1612266 (and d!2011031 b!6412770)))

(declare-fun lambda!354092 () Int)

(assert (=> bs!1612266 (= lambda!354092 lambda!354023)))

(assert (=> d!2011031 true))

(assert (=> d!2011031 (= (derivationStepZipper!2281 lt!2375199 (h!71569 s!2326)) (flatMap!1820 lt!2375199 lambda!354092))))

(declare-fun bs!1612267 () Bool)

(assert (= bs!1612267 d!2011031))

(declare-fun m!7209082 () Bool)

(assert (=> bs!1612267 m!7209082))

(assert (=> b!6412748 d!2011031))

(declare-fun b!6413559 () Bool)

(declare-fun res!2635964 () Bool)

(declare-fun e!3891759 () Bool)

(assert (=> b!6413559 (=> (not res!2635964) (not e!3891759))))

(declare-fun lt!2375343 () Int)

(declare-fun call!551105 () Int)

(assert (=> b!6413559 (= res!2635964 (> lt!2375343 call!551105))))

(declare-fun e!3891754 () Bool)

(assert (=> b!6413559 (= e!3891754 e!3891759)))

(declare-fun b!6413560 () Bool)

(declare-fun e!3891757 () Bool)

(assert (=> b!6413560 (= e!3891757 e!3891754)))

(declare-fun c!1171218 () Bool)

(assert (=> b!6413560 (= c!1171218 ((_ is Concat!25160) r!7292))))

(declare-fun bm!551098 () Bool)

(declare-fun call!551104 () Int)

(declare-fun call!551103 () Int)

(assert (=> bm!551098 (= call!551104 call!551103)))

(declare-fun c!1171214 () Bool)

(declare-fun bm!551099 () Bool)

(declare-fun c!1171213 () Bool)

(assert (=> bm!551099 (= call!551103 (regexDepth!342 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))

(declare-fun bm!551100 () Bool)

(declare-fun call!551109 () Int)

(assert (=> bm!551100 (= call!551109 (regexDepth!342 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun b!6413561 () Bool)

(declare-fun e!3891762 () Int)

(declare-fun call!551108 () Int)

(assert (=> b!6413561 (= e!3891762 (+ 1 call!551108))))

(declare-fun call!551106 () Int)

(declare-fun c!1171215 () Bool)

(declare-fun bm!551101 () Bool)

(assert (=> bm!551101 (= call!551106 (regexDepth!342 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))

(declare-fun b!6413562 () Bool)

(declare-fun e!3891753 () Int)

(declare-fun e!3891761 () Int)

(assert (=> b!6413562 (= e!3891753 e!3891761)))

(assert (=> b!6413562 (= c!1171213 ((_ is Star!16315) r!7292))))

(declare-fun bm!551102 () Bool)

(declare-fun call!551107 () Int)

(assert (=> bm!551102 (= call!551107 (regexDepth!342 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun b!6413563 () Bool)

(declare-fun c!1171217 () Bool)

(assert (=> b!6413563 (= c!1171217 ((_ is Star!16315) r!7292))))

(declare-fun e!3891756 () Bool)

(assert (=> b!6413563 (= e!3891754 e!3891756)))

(declare-fun b!6413564 () Bool)

(assert (=> b!6413564 (= e!3891756 (= lt!2375343 1))))

(declare-fun bm!551103 () Bool)

(assert (=> bm!551103 (= call!551108 (maxBigInt!0 (ite c!1171214 call!551109 call!551104) (ite c!1171214 call!551104 call!551109)))))

(declare-fun b!6413565 () Bool)

(declare-fun e!3891758 () Bool)

(assert (=> b!6413565 (= e!3891758 e!3891757)))

(assert (=> b!6413565 (= c!1171215 ((_ is Union!16315) r!7292))))

(declare-fun b!6413566 () Bool)

(assert (=> b!6413566 (= c!1171214 ((_ is Union!16315) r!7292))))

(declare-fun e!3891755 () Int)

(assert (=> b!6413566 (= e!3891761 e!3891755)))

(declare-fun d!2011033 () Bool)

(assert (=> d!2011033 e!3891758))

(declare-fun res!2635963 () Bool)

(assert (=> d!2011033 (=> (not res!2635963) (not e!3891758))))

(assert (=> d!2011033 (= res!2635963 (> lt!2375343 0))))

(assert (=> d!2011033 (= lt!2375343 e!3891753)))

(declare-fun c!1171216 () Bool)

(assert (=> d!2011033 (= c!1171216 ((_ is ElementMatch!16315) r!7292))))

(assert (=> d!2011033 (= (regexDepth!342 r!7292) lt!2375343)))

(declare-fun b!6413567 () Bool)

(declare-fun e!3891760 () Bool)

(assert (=> b!6413567 (= e!3891757 e!3891760)))

(declare-fun res!2635962 () Bool)

(assert (=> b!6413567 (= res!2635962 (> lt!2375343 call!551107))))

(assert (=> b!6413567 (=> (not res!2635962) (not e!3891760))))

(declare-fun bm!551104 () Bool)

(assert (=> bm!551104 (= call!551105 call!551106)))

(declare-fun b!6413568 () Bool)

(assert (=> b!6413568 (= e!3891761 (+ 1 call!551103))))

(declare-fun b!6413569 () Bool)

(assert (=> b!6413569 (= e!3891762 1)))

(declare-fun b!6413570 () Bool)

(assert (=> b!6413570 (= e!3891755 e!3891762)))

(declare-fun c!1171219 () Bool)

(assert (=> b!6413570 (= c!1171219 ((_ is Concat!25160) r!7292))))

(declare-fun b!6413571 () Bool)

(assert (=> b!6413571 (= e!3891759 (> lt!2375343 call!551107))))

(declare-fun b!6413572 () Bool)

(assert (=> b!6413572 (= e!3891753 1)))

(declare-fun b!6413573 () Bool)

(assert (=> b!6413573 (= e!3891756 (> lt!2375343 call!551105))))

(declare-fun b!6413574 () Bool)

(assert (=> b!6413574 (= e!3891760 (> lt!2375343 call!551106))))

(declare-fun b!6413575 () Bool)

(assert (=> b!6413575 (= e!3891755 (+ 1 call!551108))))

(assert (= (and d!2011033 c!1171216) b!6413572))

(assert (= (and d!2011033 (not c!1171216)) b!6413562))

(assert (= (and b!6413562 c!1171213) b!6413568))

(assert (= (and b!6413562 (not c!1171213)) b!6413566))

(assert (= (and b!6413566 c!1171214) b!6413575))

(assert (= (and b!6413566 (not c!1171214)) b!6413570))

(assert (= (and b!6413570 c!1171219) b!6413561))

(assert (= (and b!6413570 (not c!1171219)) b!6413569))

(assert (= (or b!6413575 b!6413561) bm!551098))

(assert (= (or b!6413575 b!6413561) bm!551100))

(assert (= (or b!6413575 b!6413561) bm!551103))

(assert (= (or b!6413568 bm!551098) bm!551099))

(assert (= (and d!2011033 res!2635963) b!6413565))

(assert (= (and b!6413565 c!1171215) b!6413567))

(assert (= (and b!6413565 (not c!1171215)) b!6413560))

(assert (= (and b!6413567 res!2635962) b!6413574))

(assert (= (and b!6413560 c!1171218) b!6413559))

(assert (= (and b!6413560 (not c!1171218)) b!6413563))

(assert (= (and b!6413559 res!2635964) b!6413571))

(assert (= (and b!6413563 c!1171217) b!6413573))

(assert (= (and b!6413563 (not c!1171217)) b!6413564))

(assert (= (or b!6413559 b!6413573) bm!551104))

(assert (= (or b!6413574 bm!551104) bm!551101))

(assert (= (or b!6413567 b!6413571) bm!551102))

(declare-fun m!7209140 () Bool)

(assert (=> bm!551101 m!7209140))

(declare-fun m!7209142 () Bool)

(assert (=> bm!551099 m!7209142))

(declare-fun m!7209144 () Bool)

(assert (=> bm!551103 m!7209144))

(declare-fun m!7209146 () Bool)

(assert (=> bm!551100 m!7209146))

(declare-fun m!7209148 () Bool)

(assert (=> bm!551102 m!7209148))

(assert (=> b!6412767 d!2011033))

(declare-fun b!6413576 () Bool)

(declare-fun res!2635967 () Bool)

(declare-fun e!3891769 () Bool)

(assert (=> b!6413576 (=> (not res!2635967) (not e!3891769))))

(declare-fun lt!2375344 () Int)

(declare-fun call!551118 () Int)

(assert (=> b!6413576 (= res!2635967 (> lt!2375344 call!551118))))

(declare-fun e!3891764 () Bool)

(assert (=> b!6413576 (= e!3891764 e!3891769)))

(declare-fun b!6413577 () Bool)

(declare-fun e!3891767 () Bool)

(assert (=> b!6413577 (= e!3891767 e!3891764)))

(declare-fun c!1171225 () Bool)

(assert (=> b!6413577 (= c!1171225 ((_ is Concat!25160) lt!2375210))))

(declare-fun bm!551111 () Bool)

(declare-fun call!551117 () Int)

(declare-fun call!551116 () Int)

(assert (=> bm!551111 (= call!551117 call!551116)))

(declare-fun c!1171221 () Bool)

(declare-fun c!1171220 () Bool)

(declare-fun bm!551112 () Bool)

(assert (=> bm!551112 (= call!551116 (regexDepth!342 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))

(declare-fun bm!551113 () Bool)

(declare-fun call!551122 () Int)

(assert (=> bm!551113 (= call!551122 (regexDepth!342 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun b!6413578 () Bool)

(declare-fun e!3891772 () Int)

(declare-fun call!551121 () Int)

(assert (=> b!6413578 (= e!3891772 (+ 1 call!551121))))

(declare-fun call!551119 () Int)

(declare-fun c!1171222 () Bool)

(declare-fun bm!551114 () Bool)

(assert (=> bm!551114 (= call!551119 (regexDepth!342 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))

(declare-fun b!6413579 () Bool)

(declare-fun e!3891763 () Int)

(declare-fun e!3891771 () Int)

(assert (=> b!6413579 (= e!3891763 e!3891771)))

(assert (=> b!6413579 (= c!1171220 ((_ is Star!16315) lt!2375210))))

(declare-fun bm!551115 () Bool)

(declare-fun call!551120 () Int)

(assert (=> bm!551115 (= call!551120 (regexDepth!342 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun b!6413580 () Bool)

(declare-fun c!1171224 () Bool)

(assert (=> b!6413580 (= c!1171224 ((_ is Star!16315) lt!2375210))))

(declare-fun e!3891766 () Bool)

(assert (=> b!6413580 (= e!3891764 e!3891766)))

(declare-fun b!6413581 () Bool)

(assert (=> b!6413581 (= e!3891766 (= lt!2375344 1))))

(declare-fun bm!551116 () Bool)

(assert (=> bm!551116 (= call!551121 (maxBigInt!0 (ite c!1171221 call!551122 call!551117) (ite c!1171221 call!551117 call!551122)))))

(declare-fun b!6413582 () Bool)

(declare-fun e!3891768 () Bool)

(assert (=> b!6413582 (= e!3891768 e!3891767)))

(assert (=> b!6413582 (= c!1171222 ((_ is Union!16315) lt!2375210))))

(declare-fun b!6413583 () Bool)

(assert (=> b!6413583 (= c!1171221 ((_ is Union!16315) lt!2375210))))

(declare-fun e!3891765 () Int)

(assert (=> b!6413583 (= e!3891771 e!3891765)))

(declare-fun d!2011047 () Bool)

(assert (=> d!2011047 e!3891768))

(declare-fun res!2635966 () Bool)

(assert (=> d!2011047 (=> (not res!2635966) (not e!3891768))))

(assert (=> d!2011047 (= res!2635966 (> lt!2375344 0))))

(assert (=> d!2011047 (= lt!2375344 e!3891763)))

(declare-fun c!1171223 () Bool)

(assert (=> d!2011047 (= c!1171223 ((_ is ElementMatch!16315) lt!2375210))))

(assert (=> d!2011047 (= (regexDepth!342 lt!2375210) lt!2375344)))

(declare-fun b!6413584 () Bool)

(declare-fun e!3891770 () Bool)

(assert (=> b!6413584 (= e!3891767 e!3891770)))

(declare-fun res!2635965 () Bool)

(assert (=> b!6413584 (= res!2635965 (> lt!2375344 call!551120))))

(assert (=> b!6413584 (=> (not res!2635965) (not e!3891770))))

(declare-fun bm!551117 () Bool)

(assert (=> bm!551117 (= call!551118 call!551119)))

(declare-fun b!6413585 () Bool)

(assert (=> b!6413585 (= e!3891771 (+ 1 call!551116))))

(declare-fun b!6413586 () Bool)

(assert (=> b!6413586 (= e!3891772 1)))

(declare-fun b!6413587 () Bool)

(assert (=> b!6413587 (= e!3891765 e!3891772)))

(declare-fun c!1171226 () Bool)

(assert (=> b!6413587 (= c!1171226 ((_ is Concat!25160) lt!2375210))))

(declare-fun b!6413588 () Bool)

(assert (=> b!6413588 (= e!3891769 (> lt!2375344 call!551120))))

(declare-fun b!6413589 () Bool)

(assert (=> b!6413589 (= e!3891763 1)))

(declare-fun b!6413590 () Bool)

(assert (=> b!6413590 (= e!3891766 (> lt!2375344 call!551118))))

(declare-fun b!6413591 () Bool)

(assert (=> b!6413591 (= e!3891770 (> lt!2375344 call!551119))))

(declare-fun b!6413592 () Bool)

(assert (=> b!6413592 (= e!3891765 (+ 1 call!551121))))

(assert (= (and d!2011047 c!1171223) b!6413589))

(assert (= (and d!2011047 (not c!1171223)) b!6413579))

(assert (= (and b!6413579 c!1171220) b!6413585))

(assert (= (and b!6413579 (not c!1171220)) b!6413583))

(assert (= (and b!6413583 c!1171221) b!6413592))

(assert (= (and b!6413583 (not c!1171221)) b!6413587))

(assert (= (and b!6413587 c!1171226) b!6413578))

(assert (= (and b!6413587 (not c!1171226)) b!6413586))

(assert (= (or b!6413592 b!6413578) bm!551111))

(assert (= (or b!6413592 b!6413578) bm!551113))

(assert (= (or b!6413592 b!6413578) bm!551116))

(assert (= (or b!6413585 bm!551111) bm!551112))

(assert (= (and d!2011047 res!2635966) b!6413582))

(assert (= (and b!6413582 c!1171222) b!6413584))

(assert (= (and b!6413582 (not c!1171222)) b!6413577))

(assert (= (and b!6413584 res!2635965) b!6413591))

(assert (= (and b!6413577 c!1171225) b!6413576))

(assert (= (and b!6413577 (not c!1171225)) b!6413580))

(assert (= (and b!6413576 res!2635967) b!6413588))

(assert (= (and b!6413580 c!1171224) b!6413590))

(assert (= (and b!6413580 (not c!1171224)) b!6413581))

(assert (= (or b!6413576 b!6413590) bm!551117))

(assert (= (or b!6413591 bm!551117) bm!551114))

(assert (= (or b!6413584 b!6413588) bm!551115))

(declare-fun m!7209150 () Bool)

(assert (=> bm!551114 m!7209150))

(declare-fun m!7209152 () Bool)

(assert (=> bm!551112 m!7209152))

(declare-fun m!7209154 () Bool)

(assert (=> bm!551116 m!7209154))

(declare-fun m!7209156 () Bool)

(assert (=> bm!551113 m!7209156))

(declare-fun m!7209158 () Bool)

(assert (=> bm!551115 m!7209158))

(assert (=> b!6412767 d!2011047))

(declare-fun bs!1612282 () Bool)

(declare-fun d!2011049 () Bool)

(assert (= bs!1612282 (and d!2011049 d!2010999)))

(declare-fun lambda!354098 () Int)

(assert (=> bs!1612282 (= lambda!354098 lambda!354084)))

(declare-fun b!6413593 () Bool)

(declare-fun e!3891777 () Bool)

(declare-fun lt!2375345 () Regex!16315)

(assert (=> b!6413593 (= e!3891777 (isConcat!1239 lt!2375345))))

(declare-fun b!6413594 () Bool)

(declare-fun e!3891773 () Regex!16315)

(assert (=> b!6413594 (= e!3891773 (h!71568 (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun e!3891776 () Bool)

(assert (=> d!2011049 e!3891776))

(declare-fun res!2635968 () Bool)

(assert (=> d!2011049 (=> (not res!2635968) (not e!3891776))))

(assert (=> d!2011049 (= res!2635968 (validRegex!8051 lt!2375345))))

(assert (=> d!2011049 (= lt!2375345 e!3891773)))

(declare-fun c!1171229 () Bool)

(declare-fun e!3891775 () Bool)

(assert (=> d!2011049 (= c!1171229 e!3891775)))

(declare-fun res!2635969 () Bool)

(assert (=> d!2011049 (=> (not res!2635969) (not e!3891775))))

(assert (=> d!2011049 (= res!2635969 ((_ is Cons!65120) (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> d!2011049 (forall!15504 (t!378856 (exprs!6199 (h!71570 zl!343))) lambda!354098)))

(assert (=> d!2011049 (= (generalisedConcat!1912 (t!378856 (exprs!6199 (h!71570 zl!343)))) lt!2375345)))

(declare-fun b!6413595 () Bool)

(declare-fun e!3891778 () Bool)

(assert (=> b!6413595 (= e!3891778 (isEmptyExpr!1716 lt!2375345))))

(declare-fun b!6413596 () Bool)

(assert (=> b!6413596 (= e!3891777 (= lt!2375345 (head!13122 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun b!6413597 () Bool)

(assert (=> b!6413597 (= e!3891775 (isEmpty!37268 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun b!6413598 () Bool)

(assert (=> b!6413598 (= e!3891776 e!3891778)))

(declare-fun c!1171228 () Bool)

(assert (=> b!6413598 (= c!1171228 (isEmpty!37268 (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6413599 () Bool)

(declare-fun e!3891774 () Regex!16315)

(assert (=> b!6413599 (= e!3891774 EmptyExpr!16315)))

(declare-fun b!6413600 () Bool)

(assert (=> b!6413600 (= e!3891774 (Concat!25160 (h!71568 (t!378856 (exprs!6199 (h!71570 zl!343)))) (generalisedConcat!1912 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun b!6413601 () Bool)

(assert (=> b!6413601 (= e!3891778 e!3891777)))

(declare-fun c!1171227 () Bool)

(assert (=> b!6413601 (= c!1171227 (isEmpty!37268 (tail!12207 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun b!6413602 () Bool)

(assert (=> b!6413602 (= e!3891773 e!3891774)))

(declare-fun c!1171230 () Bool)

(assert (=> b!6413602 (= c!1171230 ((_ is Cons!65120) (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(assert (= (and d!2011049 res!2635969) b!6413597))

(assert (= (and d!2011049 c!1171229) b!6413594))

(assert (= (and d!2011049 (not c!1171229)) b!6413602))

(assert (= (and b!6413602 c!1171230) b!6413600))

(assert (= (and b!6413602 (not c!1171230)) b!6413599))

(assert (= (and d!2011049 res!2635968) b!6413598))

(assert (= (and b!6413598 c!1171228) b!6413595))

(assert (= (and b!6413598 (not c!1171228)) b!6413601))

(assert (= (and b!6413601 c!1171227) b!6413596))

(assert (= (and b!6413601 (not c!1171227)) b!6413593))

(declare-fun m!7209160 () Bool)

(assert (=> b!6413595 m!7209160))

(declare-fun m!7209162 () Bool)

(assert (=> b!6413601 m!7209162))

(assert (=> b!6413601 m!7209162))

(declare-fun m!7209164 () Bool)

(assert (=> b!6413601 m!7209164))

(declare-fun m!7209166 () Bool)

(assert (=> b!6413593 m!7209166))

(declare-fun m!7209168 () Bool)

(assert (=> b!6413597 m!7209168))

(assert (=> b!6413598 m!7208508))

(declare-fun m!7209170 () Bool)

(assert (=> b!6413596 m!7209170))

(declare-fun m!7209172 () Bool)

(assert (=> d!2011049 m!7209172))

(declare-fun m!7209174 () Bool)

(assert (=> d!2011049 m!7209174))

(declare-fun m!7209176 () Bool)

(assert (=> b!6413600 m!7209176))

(assert (=> b!6412767 d!2011049))

(declare-fun d!2011051 () Bool)

(declare-fun e!3891795 () Bool)

(assert (=> d!2011051 (= (matchZipper!2327 ((_ map or) lt!2375209 lt!2375211) (t!378857 s!2326)) e!3891795)))

(declare-fun res!2635978 () Bool)

(assert (=> d!2011051 (=> res!2635978 e!3891795)))

(assert (=> d!2011051 (= res!2635978 (matchZipper!2327 lt!2375209 (t!378857 s!2326)))))

(declare-fun lt!2375349 () Unit!158591)

(declare-fun choose!47645 ((InoxSet Context!11398) (InoxSet Context!11398) List!65245) Unit!158591)

(assert (=> d!2011051 (= lt!2375349 (choose!47645 lt!2375209 lt!2375211 (t!378857 s!2326)))))

(assert (=> d!2011051 (= (lemmaZipperConcatMatchesSameAsBothZippers!1146 lt!2375209 lt!2375211 (t!378857 s!2326)) lt!2375349)))

(declare-fun b!6413627 () Bool)

(assert (=> b!6413627 (= e!3891795 (matchZipper!2327 lt!2375211 (t!378857 s!2326)))))

(assert (= (and d!2011051 (not res!2635978)) b!6413627))

(assert (=> d!2011051 m!7208526))

(assert (=> d!2011051 m!7208524))

(declare-fun m!7209200 () Bool)

(assert (=> d!2011051 m!7209200))

(assert (=> b!6413627 m!7208532))

(assert (=> b!6412768 d!2011051))

(declare-fun d!2011063 () Bool)

(declare-fun c!1171239 () Bool)

(assert (=> d!2011063 (= c!1171239 (isEmpty!37269 (t!378857 s!2326)))))

(declare-fun e!3891796 () Bool)

(assert (=> d!2011063 (= (matchZipper!2327 lt!2375209 (t!378857 s!2326)) e!3891796)))

(declare-fun b!6413628 () Bool)

(assert (=> b!6413628 (= e!3891796 (nullableZipper!2080 lt!2375209))))

(declare-fun b!6413629 () Bool)

(assert (=> b!6413629 (= e!3891796 (matchZipper!2327 (derivationStepZipper!2281 lt!2375209 (head!13120 (t!378857 s!2326))) (tail!12205 (t!378857 s!2326))))))

(assert (= (and d!2011063 c!1171239) b!6413628))

(assert (= (and d!2011063 (not c!1171239)) b!6413629))

(assert (=> d!2011063 m!7208600))

(declare-fun m!7209202 () Bool)

(assert (=> b!6413628 m!7209202))

(assert (=> b!6413629 m!7208604))

(assert (=> b!6413629 m!7208604))

(declare-fun m!7209204 () Bool)

(assert (=> b!6413629 m!7209204))

(assert (=> b!6413629 m!7208608))

(assert (=> b!6413629 m!7209204))

(assert (=> b!6413629 m!7208608))

(declare-fun m!7209206 () Bool)

(assert (=> b!6413629 m!7209206))

(assert (=> b!6412768 d!2011063))

(declare-fun d!2011065 () Bool)

(declare-fun c!1171240 () Bool)

(assert (=> d!2011065 (= c!1171240 (isEmpty!37269 (t!378857 s!2326)))))

(declare-fun e!3891797 () Bool)

(assert (=> d!2011065 (= (matchZipper!2327 ((_ map or) lt!2375209 lt!2375211) (t!378857 s!2326)) e!3891797)))

(declare-fun b!6413630 () Bool)

(assert (=> b!6413630 (= e!3891797 (nullableZipper!2080 ((_ map or) lt!2375209 lt!2375211)))))

(declare-fun b!6413631 () Bool)

(assert (=> b!6413631 (= e!3891797 (matchZipper!2327 (derivationStepZipper!2281 ((_ map or) lt!2375209 lt!2375211) (head!13120 (t!378857 s!2326))) (tail!12205 (t!378857 s!2326))))))

(assert (= (and d!2011065 c!1171240) b!6413630))

(assert (= (and d!2011065 (not c!1171240)) b!6413631))

(assert (=> d!2011065 m!7208600))

(declare-fun m!7209208 () Bool)

(assert (=> b!6413630 m!7209208))

(assert (=> b!6413631 m!7208604))

(assert (=> b!6413631 m!7208604))

(declare-fun m!7209210 () Bool)

(assert (=> b!6413631 m!7209210))

(assert (=> b!6413631 m!7208608))

(assert (=> b!6413631 m!7209210))

(assert (=> b!6413631 m!7208608))

(declare-fun m!7209212 () Bool)

(assert (=> b!6413631 m!7209212))

(assert (=> b!6412768 d!2011065))

(declare-fun c!1171267 () Bool)

(declare-fun bm!551140 () Bool)

(declare-fun c!1171264 () Bool)

(declare-fun c!1171265 () Bool)

(declare-fun call!551150 () (InoxSet Context!11398))

(declare-fun call!551146 () List!65244)

(assert (=> bm!551140 (= call!551150 (derivationStepZipperDown!1563 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292)))))) (ite (or c!1171267 c!1171264) lt!2375195 (Context!11399 call!551146)) (h!71569 s!2326)))))

(declare-fun b!6413683 () Bool)

(declare-fun c!1171266 () Bool)

(assert (=> b!6413683 (= c!1171266 ((_ is Star!16315) (reg!16644 (regOne!33142 r!7292))))))

(declare-fun e!3891828 () (InoxSet Context!11398))

(declare-fun e!3891826 () (InoxSet Context!11398))

(assert (=> b!6413683 (= e!3891828 e!3891826)))

(declare-fun b!6413684 () Bool)

(declare-fun call!551148 () (InoxSet Context!11398))

(assert (=> b!6413684 (= e!3891826 call!551148)))

(declare-fun b!6413685 () Bool)

(declare-fun e!3891825 () (InoxSet Context!11398))

(assert (=> b!6413685 (= e!3891825 e!3891828)))

(assert (=> b!6413685 (= c!1171265 ((_ is Concat!25160) (reg!16644 (regOne!33142 r!7292))))))

(declare-fun b!6413686 () Bool)

(declare-fun e!3891829 () (InoxSet Context!11398))

(declare-fun call!551149 () (InoxSet Context!11398))

(assert (=> b!6413686 (= e!3891829 ((_ map or) call!551150 call!551149))))

(declare-fun b!6413687 () Bool)

(declare-fun e!3891827 () Bool)

(assert (=> b!6413687 (= e!3891827 (nullable!6308 (regOne!33142 (reg!16644 (regOne!33142 r!7292)))))))

(declare-fun call!551145 () List!65244)

(declare-fun bm!551141 () Bool)

(assert (=> bm!551141 (= call!551149 (derivationStepZipperDown!1563 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292)))) (ite c!1171267 lt!2375195 (Context!11399 call!551145)) (h!71569 s!2326)))))

(declare-fun b!6413682 () Bool)

(assert (=> b!6413682 (= e!3891828 call!551148)))

(declare-fun d!2011067 () Bool)

(declare-fun c!1171268 () Bool)

(assert (=> d!2011067 (= c!1171268 (and ((_ is ElementMatch!16315) (reg!16644 (regOne!33142 r!7292))) (= (c!1170970 (reg!16644 (regOne!33142 r!7292))) (h!71569 s!2326))))))

(declare-fun e!3891830 () (InoxSet Context!11398))

(assert (=> d!2011067 (= (derivationStepZipperDown!1563 (reg!16644 (regOne!33142 r!7292)) lt!2375195 (h!71569 s!2326)) e!3891830)))

(declare-fun bm!551142 () Bool)

(declare-fun call!551147 () (InoxSet Context!11398))

(assert (=> bm!551142 (= call!551148 call!551147)))

(declare-fun b!6413688 () Bool)

(assert (=> b!6413688 (= e!3891826 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551143 () Bool)

(declare-fun $colon$colon!2176 (List!65244 Regex!16315) List!65244)

(assert (=> bm!551143 (= call!551145 ($colon$colon!2176 (exprs!6199 lt!2375195) (ite (or c!1171264 c!1171265) (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (regOne!33142 r!7292)))))))

(declare-fun bm!551144 () Bool)

(assert (=> bm!551144 (= call!551147 call!551150)))

(declare-fun bm!551145 () Bool)

(assert (=> bm!551145 (= call!551146 call!551145)))

(declare-fun b!6413689 () Bool)

(assert (=> b!6413689 (= e!3891830 e!3891829)))

(assert (=> b!6413689 (= c!1171267 ((_ is Union!16315) (reg!16644 (regOne!33142 r!7292))))))

(declare-fun b!6413690 () Bool)

(assert (=> b!6413690 (= e!3891825 ((_ map or) call!551149 call!551147))))

(declare-fun b!6413691 () Bool)

(assert (=> b!6413691 (= e!3891830 (store ((as const (Array Context!11398 Bool)) false) lt!2375195 true))))

(declare-fun b!6413692 () Bool)

(assert (=> b!6413692 (= c!1171264 e!3891827)))

(declare-fun res!2635993 () Bool)

(assert (=> b!6413692 (=> (not res!2635993) (not e!3891827))))

(assert (=> b!6413692 (= res!2635993 ((_ is Concat!25160) (reg!16644 (regOne!33142 r!7292))))))

(assert (=> b!6413692 (= e!3891829 e!3891825)))

(assert (= (and d!2011067 c!1171268) b!6413691))

(assert (= (and d!2011067 (not c!1171268)) b!6413689))

(assert (= (and b!6413689 c!1171267) b!6413686))

(assert (= (and b!6413689 (not c!1171267)) b!6413692))

(assert (= (and b!6413692 res!2635993) b!6413687))

(assert (= (and b!6413692 c!1171264) b!6413690))

(assert (= (and b!6413692 (not c!1171264)) b!6413685))

(assert (= (and b!6413685 c!1171265) b!6413682))

(assert (= (and b!6413685 (not c!1171265)) b!6413683))

(assert (= (and b!6413683 c!1171266) b!6413684))

(assert (= (and b!6413683 (not c!1171266)) b!6413688))

(assert (= (or b!6413682 b!6413684) bm!551145))

(assert (= (or b!6413682 b!6413684) bm!551142))

(assert (= (or b!6413690 bm!551145) bm!551143))

(assert (= (or b!6413690 bm!551142) bm!551144))

(assert (= (or b!6413686 b!6413690) bm!551141))

(assert (= (or b!6413686 bm!551144) bm!551140))

(declare-fun m!7209254 () Bool)

(assert (=> bm!551143 m!7209254))

(declare-fun m!7209256 () Bool)

(assert (=> b!6413687 m!7209256))

(declare-fun m!7209258 () Bool)

(assert (=> bm!551141 m!7209258))

(assert (=> b!6413691 m!7208468))

(declare-fun m!7209260 () Bool)

(assert (=> bm!551140 m!7209260))

(assert (=> b!6412788 d!2011067))

(declare-fun d!2011075 () Bool)

(declare-fun lt!2375370 () Regex!16315)

(assert (=> d!2011075 (validRegex!8051 lt!2375370)))

(assert (=> d!2011075 (= lt!2375370 (generalisedUnion!2159 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122))))))

(assert (=> d!2011075 (= (unfocusZipper!2057 (Cons!65122 lt!2375221 Nil!65122)) lt!2375370)))

(declare-fun bs!1612298 () Bool)

(assert (= bs!1612298 d!2011075))

(declare-fun m!7209262 () Bool)

(assert (=> bs!1612298 m!7209262))

(declare-fun m!7209264 () Bool)

(assert (=> bs!1612298 m!7209264))

(assert (=> bs!1612298 m!7209264))

(declare-fun m!7209266 () Bool)

(assert (=> bs!1612298 m!7209266))

(assert (=> b!6412771 d!2011075))

(declare-fun bs!1612311 () Bool)

(declare-fun d!2011077 () Bool)

(assert (= bs!1612311 (and d!2011077 d!2010999)))

(declare-fun lambda!354116 () Int)

(assert (=> bs!1612311 (= lambda!354116 lambda!354084)))

(declare-fun bs!1612312 () Bool)

(assert (= bs!1612312 (and d!2011077 d!2011049)))

(assert (=> bs!1612312 (= lambda!354116 lambda!354098)))

(declare-fun b!6413721 () Bool)

(declare-fun e!3891848 () Bool)

(declare-fun lt!2375376 () Regex!16315)

(assert (=> b!6413721 (= e!3891848 (= lt!2375376 (head!13122 (unfocusZipperList!1736 zl!343))))))

(declare-fun b!6413722 () Bool)

(declare-fun e!3891850 () Regex!16315)

(assert (=> b!6413722 (= e!3891850 EmptyLang!16315)))

(declare-fun e!3891852 () Bool)

(assert (=> d!2011077 e!3891852))

(declare-fun res!2636003 () Bool)

(assert (=> d!2011077 (=> (not res!2636003) (not e!3891852))))

(assert (=> d!2011077 (= res!2636003 (validRegex!8051 lt!2375376))))

(declare-fun e!3891849 () Regex!16315)

(assert (=> d!2011077 (= lt!2375376 e!3891849)))

(declare-fun c!1171279 () Bool)

(declare-fun e!3891847 () Bool)

(assert (=> d!2011077 (= c!1171279 e!3891847)))

(declare-fun res!2636002 () Bool)

(assert (=> d!2011077 (=> (not res!2636002) (not e!3891847))))

(assert (=> d!2011077 (= res!2636002 ((_ is Cons!65120) (unfocusZipperList!1736 zl!343)))))

(assert (=> d!2011077 (forall!15504 (unfocusZipperList!1736 zl!343) lambda!354116)))

(assert (=> d!2011077 (= (generalisedUnion!2159 (unfocusZipperList!1736 zl!343)) lt!2375376)))

(declare-fun b!6413723 () Bool)

(assert (=> b!6413723 (= e!3891849 e!3891850)))

(declare-fun c!1171282 () Bool)

(assert (=> b!6413723 (= c!1171282 ((_ is Cons!65120) (unfocusZipperList!1736 zl!343)))))

(declare-fun b!6413724 () Bool)

(assert (=> b!6413724 (= e!3891850 (Union!16315 (h!71568 (unfocusZipperList!1736 zl!343)) (generalisedUnion!2159 (t!378856 (unfocusZipperList!1736 zl!343)))))))

(declare-fun b!6413725 () Bool)

(declare-fun isUnion!1153 (Regex!16315) Bool)

(assert (=> b!6413725 (= e!3891848 (isUnion!1153 lt!2375376))))

(declare-fun b!6413726 () Bool)

(assert (=> b!6413726 (= e!3891847 (isEmpty!37268 (t!378856 (unfocusZipperList!1736 zl!343))))))

(declare-fun b!6413727 () Bool)

(declare-fun e!3891851 () Bool)

(assert (=> b!6413727 (= e!3891852 e!3891851)))

(declare-fun c!1171280 () Bool)

(assert (=> b!6413727 (= c!1171280 (isEmpty!37268 (unfocusZipperList!1736 zl!343)))))

(declare-fun b!6413728 () Bool)

(assert (=> b!6413728 (= e!3891851 e!3891848)))

(declare-fun c!1171281 () Bool)

(assert (=> b!6413728 (= c!1171281 (isEmpty!37268 (tail!12207 (unfocusZipperList!1736 zl!343))))))

(declare-fun b!6413729 () Bool)

(assert (=> b!6413729 (= e!3891849 (h!71568 (unfocusZipperList!1736 zl!343)))))

(declare-fun b!6413730 () Bool)

(declare-fun isEmptyLang!1723 (Regex!16315) Bool)

(assert (=> b!6413730 (= e!3891851 (isEmptyLang!1723 lt!2375376))))

(assert (= (and d!2011077 res!2636002) b!6413726))

(assert (= (and d!2011077 c!1171279) b!6413729))

(assert (= (and d!2011077 (not c!1171279)) b!6413723))

(assert (= (and b!6413723 c!1171282) b!6413724))

(assert (= (and b!6413723 (not c!1171282)) b!6413722))

(assert (= (and d!2011077 res!2636003) b!6413727))

(assert (= (and b!6413727 c!1171280) b!6413730))

(assert (= (and b!6413727 (not c!1171280)) b!6413728))

(assert (= (and b!6413728 c!1171281) b!6413721))

(assert (= (and b!6413728 (not c!1171281)) b!6413725))

(assert (=> b!6413721 m!7208512))

(declare-fun m!7209296 () Bool)

(assert (=> b!6413721 m!7209296))

(declare-fun m!7209298 () Bool)

(assert (=> b!6413730 m!7209298))

(declare-fun m!7209300 () Bool)

(assert (=> b!6413724 m!7209300))

(declare-fun m!7209302 () Bool)

(assert (=> d!2011077 m!7209302))

(assert (=> d!2011077 m!7208512))

(declare-fun m!7209304 () Bool)

(assert (=> d!2011077 m!7209304))

(assert (=> b!6413728 m!7208512))

(declare-fun m!7209308 () Bool)

(assert (=> b!6413728 m!7209308))

(assert (=> b!6413728 m!7209308))

(declare-fun m!7209310 () Bool)

(assert (=> b!6413728 m!7209310))

(assert (=> b!6413727 m!7208512))

(declare-fun m!7209312 () Bool)

(assert (=> b!6413727 m!7209312))

(declare-fun m!7209314 () Bool)

(assert (=> b!6413725 m!7209314))

(declare-fun m!7209316 () Bool)

(assert (=> b!6413726 m!7209316))

(assert (=> b!6412772 d!2011077))

(declare-fun bs!1612317 () Bool)

(declare-fun d!2011089 () Bool)

(assert (= bs!1612317 (and d!2011089 d!2010999)))

(declare-fun lambda!354119 () Int)

(assert (=> bs!1612317 (= lambda!354119 lambda!354084)))

(declare-fun bs!1612318 () Bool)

(assert (= bs!1612318 (and d!2011089 d!2011049)))

(assert (=> bs!1612318 (= lambda!354119 lambda!354098)))

(declare-fun bs!1612319 () Bool)

(assert (= bs!1612319 (and d!2011089 d!2011077)))

(assert (=> bs!1612319 (= lambda!354119 lambda!354116)))

(declare-fun lt!2375385 () List!65244)

(assert (=> d!2011089 (forall!15504 lt!2375385 lambda!354119)))

(declare-fun e!3891865 () List!65244)

(assert (=> d!2011089 (= lt!2375385 e!3891865)))

(declare-fun c!1171290 () Bool)

(assert (=> d!2011089 (= c!1171290 ((_ is Cons!65122) zl!343))))

(assert (=> d!2011089 (= (unfocusZipperList!1736 zl!343) lt!2375385)))

(declare-fun b!6413753 () Bool)

(assert (=> b!6413753 (= e!3891865 (Cons!65120 (generalisedConcat!1912 (exprs!6199 (h!71570 zl!343))) (unfocusZipperList!1736 (t!378858 zl!343))))))

(declare-fun b!6413754 () Bool)

(assert (=> b!6413754 (= e!3891865 Nil!65120)))

(assert (= (and d!2011089 c!1171290) b!6413753))

(assert (= (and d!2011089 (not c!1171290)) b!6413754))

(declare-fun m!7209352 () Bool)

(assert (=> d!2011089 m!7209352))

(assert (=> b!6413753 m!7208518))

(declare-fun m!7209358 () Bool)

(assert (=> b!6413753 m!7209358))

(assert (=> b!6412772 d!2011089))

(declare-fun bm!551148 () Bool)

(declare-fun call!551154 () List!65244)

(declare-fun c!1171296 () Bool)

(declare-fun call!551158 () (InoxSet Context!11398))

(declare-fun c!1171293 () Bool)

(declare-fun c!1171294 () Bool)

(assert (=> bm!551148 (= call!551158 (derivationStepZipperDown!1563 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343))))))) (ite (or c!1171296 c!1171293) lt!2375218 (Context!11399 call!551154)) (h!71569 s!2326)))))

(declare-fun b!6413761 () Bool)

(declare-fun c!1171295 () Bool)

(assert (=> b!6413761 (= c!1171295 ((_ is Star!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun e!3891872 () (InoxSet Context!11398))

(declare-fun e!3891870 () (InoxSet Context!11398))

(assert (=> b!6413761 (= e!3891872 e!3891870)))

(declare-fun b!6413762 () Bool)

(declare-fun call!551156 () (InoxSet Context!11398))

(assert (=> b!6413762 (= e!3891870 call!551156)))

(declare-fun b!6413763 () Bool)

(declare-fun e!3891869 () (InoxSet Context!11398))

(assert (=> b!6413763 (= e!3891869 e!3891872)))

(assert (=> b!6413763 (= c!1171294 ((_ is Concat!25160) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6413764 () Bool)

(declare-fun e!3891873 () (InoxSet Context!11398))

(declare-fun call!551157 () (InoxSet Context!11398))

(assert (=> b!6413764 (= e!3891873 ((_ map or) call!551158 call!551157))))

(declare-fun b!6413765 () Bool)

(declare-fun e!3891871 () Bool)

(assert (=> b!6413765 (= e!3891871 (nullable!6308 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun call!551153 () List!65244)

(declare-fun bm!551149 () Bool)

(assert (=> bm!551149 (= call!551157 (derivationStepZipperDown!1563 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))) (ite c!1171296 lt!2375218 (Context!11399 call!551153)) (h!71569 s!2326)))))

(declare-fun b!6413760 () Bool)

(assert (=> b!6413760 (= e!3891872 call!551156)))

(declare-fun d!2011107 () Bool)

(declare-fun c!1171297 () Bool)

(assert (=> d!2011107 (= c!1171297 (and ((_ is ElementMatch!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))) (= (c!1170970 (h!71568 (exprs!6199 (h!71570 zl!343)))) (h!71569 s!2326))))))

(declare-fun e!3891874 () (InoxSet Context!11398))

(assert (=> d!2011107 (= (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (h!71570 zl!343))) lt!2375218 (h!71569 s!2326)) e!3891874)))

(declare-fun bm!551150 () Bool)

(declare-fun call!551155 () (InoxSet Context!11398))

(assert (=> bm!551150 (= call!551156 call!551155)))

(declare-fun b!6413766 () Bool)

(assert (=> b!6413766 (= e!3891870 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551151 () Bool)

(assert (=> bm!551151 (= call!551153 ($colon$colon!2176 (exprs!6199 lt!2375218) (ite (or c!1171293 c!1171294) (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (h!71568 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun bm!551152 () Bool)

(assert (=> bm!551152 (= call!551155 call!551158)))

(declare-fun bm!551153 () Bool)

(assert (=> bm!551153 (= call!551154 call!551153)))

(declare-fun b!6413767 () Bool)

(assert (=> b!6413767 (= e!3891874 e!3891873)))

(assert (=> b!6413767 (= c!1171296 ((_ is Union!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6413768 () Bool)

(assert (=> b!6413768 (= e!3891869 ((_ map or) call!551157 call!551155))))

(declare-fun b!6413769 () Bool)

(assert (=> b!6413769 (= e!3891874 (store ((as const (Array Context!11398 Bool)) false) lt!2375218 true))))

(declare-fun b!6413770 () Bool)

(assert (=> b!6413770 (= c!1171293 e!3891871)))

(declare-fun res!2636013 () Bool)

(assert (=> b!6413770 (=> (not res!2636013) (not e!3891871))))

(assert (=> b!6413770 (= res!2636013 ((_ is Concat!25160) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> b!6413770 (= e!3891873 e!3891869)))

(assert (= (and d!2011107 c!1171297) b!6413769))

(assert (= (and d!2011107 (not c!1171297)) b!6413767))

(assert (= (and b!6413767 c!1171296) b!6413764))

(assert (= (and b!6413767 (not c!1171296)) b!6413770))

(assert (= (and b!6413770 res!2636013) b!6413765))

(assert (= (and b!6413770 c!1171293) b!6413768))

(assert (= (and b!6413770 (not c!1171293)) b!6413763))

(assert (= (and b!6413763 c!1171294) b!6413760))

(assert (= (and b!6413763 (not c!1171294)) b!6413761))

(assert (= (and b!6413761 c!1171295) b!6413762))

(assert (= (and b!6413761 (not c!1171295)) b!6413766))

(assert (= (or b!6413760 b!6413762) bm!551153))

(assert (= (or b!6413760 b!6413762) bm!551150))

(assert (= (or b!6413768 bm!551153) bm!551151))

(assert (= (or b!6413768 bm!551150) bm!551152))

(assert (= (or b!6413764 b!6413768) bm!551149))

(assert (= (or b!6413764 bm!551152) bm!551148))

(declare-fun m!7209374 () Bool)

(assert (=> bm!551151 m!7209374))

(declare-fun m!7209376 () Bool)

(assert (=> b!6413765 m!7209376))

(declare-fun m!7209378 () Bool)

(assert (=> bm!551149 m!7209378))

(assert (=> b!6413769 m!7208568))

(declare-fun m!7209380 () Bool)

(assert (=> bm!551148 m!7209380))

(assert (=> b!6412770 d!2011107))

(declare-fun d!2011117 () Bool)

(assert (=> d!2011117 (= (flatMap!1820 z!1189 lambda!354023) (dynLambda!25862 lambda!354023 (h!71570 zl!343)))))

(declare-fun lt!2375388 () Unit!158591)

(assert (=> d!2011117 (= lt!2375388 (choose!47644 z!1189 (h!71570 zl!343) lambda!354023))))

(assert (=> d!2011117 (= z!1189 (store ((as const (Array Context!11398 Bool)) false) (h!71570 zl!343) true))))

(assert (=> d!2011117 (= (lemmaFlatMapOnSingletonSet!1346 z!1189 (h!71570 zl!343) lambda!354023) lt!2375388)))

(declare-fun b_lambda!243799 () Bool)

(assert (=> (not b_lambda!243799) (not d!2011117)))

(declare-fun bs!1612327 () Bool)

(assert (= bs!1612327 d!2011117))

(assert (=> bs!1612327 m!7208572))

(declare-fun m!7209386 () Bool)

(assert (=> bs!1612327 m!7209386))

(declare-fun m!7209388 () Bool)

(assert (=> bs!1612327 m!7209388))

(declare-fun m!7209390 () Bool)

(assert (=> bs!1612327 m!7209390))

(assert (=> b!6412770 d!2011117))

(declare-fun bm!551154 () Bool)

(declare-fun call!551159 () (InoxSet Context!11398))

(assert (=> bm!551154 (= call!551159 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 lt!2375218)) (Context!11399 (t!378856 (exprs!6199 lt!2375218))) (h!71569 s!2326)))))

(declare-fun b!6413771 () Bool)

(declare-fun e!3891875 () (InoxSet Context!11398))

(assert (=> b!6413771 (= e!3891875 ((_ map or) call!551159 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 lt!2375218))) (h!71569 s!2326))))))

(declare-fun b!6413772 () Bool)

(declare-fun e!3891877 () (InoxSet Context!11398))

(assert (=> b!6413772 (= e!3891877 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6413774 () Bool)

(assert (=> b!6413774 (= e!3891877 call!551159)))

(declare-fun b!6413775 () Bool)

(declare-fun e!3891876 () Bool)

(assert (=> b!6413775 (= e!3891876 (nullable!6308 (h!71568 (exprs!6199 lt!2375218))))))

(declare-fun b!6413773 () Bool)

(assert (=> b!6413773 (= e!3891875 e!3891877)))

(declare-fun c!1171299 () Bool)

(assert (=> b!6413773 (= c!1171299 ((_ is Cons!65120) (exprs!6199 lt!2375218)))))

(declare-fun d!2011123 () Bool)

(declare-fun c!1171298 () Bool)

(assert (=> d!2011123 (= c!1171298 e!3891876)))

(declare-fun res!2636014 () Bool)

(assert (=> d!2011123 (=> (not res!2636014) (not e!3891876))))

(assert (=> d!2011123 (= res!2636014 ((_ is Cons!65120) (exprs!6199 lt!2375218)))))

(assert (=> d!2011123 (= (derivationStepZipperUp!1489 lt!2375218 (h!71569 s!2326)) e!3891875)))

(assert (= (and d!2011123 res!2636014) b!6413775))

(assert (= (and d!2011123 c!1171298) b!6413771))

(assert (= (and d!2011123 (not c!1171298)) b!6413773))

(assert (= (and b!6413773 c!1171299) b!6413774))

(assert (= (and b!6413773 (not c!1171299)) b!6413772))

(assert (= (or b!6413771 b!6413774) bm!551154))

(declare-fun m!7209396 () Bool)

(assert (=> bm!551154 m!7209396))

(declare-fun m!7209398 () Bool)

(assert (=> b!6413771 m!7209398))

(declare-fun m!7209400 () Bool)

(assert (=> b!6413775 m!7209400))

(assert (=> b!6412770 d!2011123))

(declare-fun d!2011127 () Bool)

(declare-fun nullableFct!2254 (Regex!16315) Bool)

(assert (=> d!2011127 (= (nullable!6308 (h!71568 (exprs!6199 (h!71570 zl!343)))) (nullableFct!2254 (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun bs!1612330 () Bool)

(assert (= bs!1612330 d!2011127))

(declare-fun m!7209402 () Bool)

(assert (=> bs!1612330 m!7209402))

(assert (=> b!6412770 d!2011127))

(declare-fun bm!551155 () Bool)

(declare-fun call!551160 () (InoxSet Context!11398))

(assert (=> bm!551155 (= call!551160 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (h!71569 s!2326)))))

(declare-fun e!3891880 () (InoxSet Context!11398))

(declare-fun b!6413786 () Bool)

(assert (=> b!6413786 (= e!3891880 ((_ map or) call!551160 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (h!71569 s!2326))))))

(declare-fun b!6413787 () Bool)

(declare-fun e!3891882 () (InoxSet Context!11398))

(assert (=> b!6413787 (= e!3891882 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6413789 () Bool)

(assert (=> b!6413789 (= e!3891882 call!551160)))

(declare-fun b!6413790 () Bool)

(declare-fun e!3891881 () Bool)

(assert (=> b!6413790 (= e!3891881 (nullable!6308 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))))))

(declare-fun b!6413788 () Bool)

(assert (=> b!6413788 (= e!3891880 e!3891882)))

(declare-fun c!1171301 () Bool)

(assert (=> b!6413788 (= c!1171301 ((_ is Cons!65120) (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))))

(declare-fun d!2011129 () Bool)

(declare-fun c!1171300 () Bool)

(assert (=> d!2011129 (= c!1171300 e!3891881)))

(declare-fun res!2636015 () Bool)

(assert (=> d!2011129 (=> (not res!2636015) (not e!3891881))))

(assert (=> d!2011129 (= res!2636015 ((_ is Cons!65120) (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))))

(assert (=> d!2011129 (= (derivationStepZipperUp!1489 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))) (h!71569 s!2326)) e!3891880)))

(assert (= (and d!2011129 res!2636015) b!6413790))

(assert (= (and d!2011129 c!1171300) b!6413786))

(assert (= (and d!2011129 (not c!1171300)) b!6413788))

(assert (= (and b!6413788 c!1171301) b!6413789))

(assert (= (and b!6413788 (not c!1171301)) b!6413787))

(assert (= (or b!6413786 b!6413789) bm!551155))

(declare-fun m!7209404 () Bool)

(assert (=> bm!551155 m!7209404))

(declare-fun m!7209406 () Bool)

(assert (=> b!6413786 m!7209406))

(declare-fun m!7209408 () Bool)

(assert (=> b!6413790 m!7209408))

(assert (=> b!6412770 d!2011129))

(declare-fun d!2011131 () Bool)

(assert (=> d!2011131 (= (flatMap!1820 z!1189 lambda!354023) (choose!47643 z!1189 lambda!354023))))

(declare-fun bs!1612331 () Bool)

(assert (= bs!1612331 d!2011131))

(declare-fun m!7209410 () Bool)

(assert (=> bs!1612331 m!7209410))

(assert (=> b!6412770 d!2011131))

(declare-fun bm!551156 () Bool)

(declare-fun call!551161 () (InoxSet Context!11398))

(assert (=> bm!551156 (= call!551161 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (h!71570 zl!343))) (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))) (h!71569 s!2326)))))

(declare-fun e!3891884 () (InoxSet Context!11398))

(declare-fun b!6413795 () Bool)

(assert (=> b!6413795 (= e!3891884 ((_ map or) call!551161 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))) (h!71569 s!2326))))))

(declare-fun b!6413796 () Bool)

(declare-fun e!3891886 () (InoxSet Context!11398))

(assert (=> b!6413796 (= e!3891886 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6413798 () Bool)

(assert (=> b!6413798 (= e!3891886 call!551161)))

(declare-fun b!6413799 () Bool)

(declare-fun e!3891885 () Bool)

(assert (=> b!6413799 (= e!3891885 (nullable!6308 (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6413797 () Bool)

(assert (=> b!6413797 (= e!3891884 e!3891886)))

(declare-fun c!1171303 () Bool)

(assert (=> b!6413797 (= c!1171303 ((_ is Cons!65120) (exprs!6199 (h!71570 zl!343))))))

(declare-fun d!2011133 () Bool)

(declare-fun c!1171302 () Bool)

(assert (=> d!2011133 (= c!1171302 e!3891885)))

(declare-fun res!2636016 () Bool)

(assert (=> d!2011133 (=> (not res!2636016) (not e!3891885))))

(assert (=> d!2011133 (= res!2636016 ((_ is Cons!65120) (exprs!6199 (h!71570 zl!343))))))

(assert (=> d!2011133 (= (derivationStepZipperUp!1489 (h!71570 zl!343) (h!71569 s!2326)) e!3891884)))

(assert (= (and d!2011133 res!2636016) b!6413799))

(assert (= (and d!2011133 c!1171302) b!6413795))

(assert (= (and d!2011133 (not c!1171302)) b!6413797))

(assert (= (and b!6413797 c!1171303) b!6413798))

(assert (= (and b!6413797 (not c!1171303)) b!6413796))

(assert (= (or b!6413795 b!6413798) bm!551156))

(declare-fun m!7209412 () Bool)

(assert (=> bm!551156 m!7209412))

(declare-fun m!7209414 () Bool)

(assert (=> b!6413795 m!7209414))

(assert (=> b!6413799 m!7208580))

(assert (=> b!6412770 d!2011133))

(declare-fun bs!1612332 () Bool)

(declare-fun d!2011135 () Bool)

(assert (= bs!1612332 (and d!2011135 d!2010999)))

(declare-fun lambda!354123 () Int)

(assert (=> bs!1612332 (= lambda!354123 lambda!354084)))

(declare-fun bs!1612333 () Bool)

(assert (= bs!1612333 (and d!2011135 d!2011049)))

(assert (=> bs!1612333 (= lambda!354123 lambda!354098)))

(declare-fun bs!1612334 () Bool)

(assert (= bs!1612334 (and d!2011135 d!2011077)))

(assert (=> bs!1612334 (= lambda!354123 lambda!354116)))

(declare-fun bs!1612335 () Bool)

(assert (= bs!1612335 (and d!2011135 d!2011089)))

(assert (=> bs!1612335 (= lambda!354123 lambda!354119)))

(assert (=> d!2011135 (= (inv!84034 (h!71570 zl!343)) (forall!15504 (exprs!6199 (h!71570 zl!343)) lambda!354123))))

(declare-fun bs!1612336 () Bool)

(assert (= bs!1612336 d!2011135))

(declare-fun m!7209418 () Bool)

(assert (=> bs!1612336 m!7209418))

(assert (=> b!6412750 d!2011135))

(declare-fun b!6413820 () Bool)

(declare-fun res!2636020 () Bool)

(declare-fun e!3891899 () Bool)

(assert (=> b!6413820 (=> res!2636020 e!3891899)))

(assert (=> b!6413820 (= res!2636020 (not (isEmpty!37269 (tail!12205 (_2!36597 lt!2375224)))))))

(declare-fun b!6413821 () Bool)

(declare-fun res!2636017 () Bool)

(declare-fun e!3891898 () Bool)

(assert (=> b!6413821 (=> res!2636017 e!3891898)))

(assert (=> b!6413821 (= res!2636017 (not ((_ is ElementMatch!16315) (regTwo!33142 r!7292))))))

(declare-fun e!3891902 () Bool)

(assert (=> b!6413821 (= e!3891902 e!3891898)))

(declare-fun b!6413822 () Bool)

(declare-fun res!2636024 () Bool)

(declare-fun e!3891901 () Bool)

(assert (=> b!6413822 (=> (not res!2636024) (not e!3891901))))

(assert (=> b!6413822 (= res!2636024 (isEmpty!37269 (tail!12205 (_2!36597 lt!2375224))))))

(declare-fun b!6413823 () Bool)

(declare-fun res!2636021 () Bool)

(assert (=> b!6413823 (=> res!2636021 e!3891898)))

(assert (=> b!6413823 (= res!2636021 e!3891901)))

(declare-fun res!2636018 () Bool)

(assert (=> b!6413823 (=> (not res!2636018) (not e!3891901))))

(declare-fun lt!2375390 () Bool)

(assert (=> b!6413823 (= res!2636018 lt!2375390)))

(declare-fun bm!551157 () Bool)

(declare-fun call!551162 () Bool)

(assert (=> bm!551157 (= call!551162 (isEmpty!37269 (_2!36597 lt!2375224)))))

(declare-fun b!6413824 () Bool)

(declare-fun e!3891900 () Bool)

(assert (=> b!6413824 (= e!3891900 (nullable!6308 (regTwo!33142 r!7292)))))

(declare-fun b!6413825 () Bool)

(declare-fun e!3891904 () Bool)

(assert (=> b!6413825 (= e!3891898 e!3891904)))

(declare-fun res!2636023 () Bool)

(assert (=> b!6413825 (=> (not res!2636023) (not e!3891904))))

(assert (=> b!6413825 (= res!2636023 (not lt!2375390))))

(declare-fun b!6413826 () Bool)

(assert (=> b!6413826 (= e!3891904 e!3891899)))

(declare-fun res!2636022 () Bool)

(assert (=> b!6413826 (=> res!2636022 e!3891899)))

(assert (=> b!6413826 (= res!2636022 call!551162)))

(declare-fun b!6413827 () Bool)

(assert (=> b!6413827 (= e!3891901 (= (head!13120 (_2!36597 lt!2375224)) (c!1170970 (regTwo!33142 r!7292))))))

(declare-fun b!6413828 () Bool)

(assert (=> b!6413828 (= e!3891899 (not (= (head!13120 (_2!36597 lt!2375224)) (c!1170970 (regTwo!33142 r!7292)))))))

(declare-fun d!2011137 () Bool)

(declare-fun e!3891903 () Bool)

(assert (=> d!2011137 e!3891903))

(declare-fun c!1171306 () Bool)

(assert (=> d!2011137 (= c!1171306 ((_ is EmptyExpr!16315) (regTwo!33142 r!7292)))))

(assert (=> d!2011137 (= lt!2375390 e!3891900)))

(declare-fun c!1171305 () Bool)

(assert (=> d!2011137 (= c!1171305 (isEmpty!37269 (_2!36597 lt!2375224)))))

(assert (=> d!2011137 (validRegex!8051 (regTwo!33142 r!7292))))

(assert (=> d!2011137 (= (matchR!8498 (regTwo!33142 r!7292) (_2!36597 lt!2375224)) lt!2375390)))

(declare-fun b!6413829 () Bool)

(declare-fun res!2636019 () Bool)

(assert (=> b!6413829 (=> (not res!2636019) (not e!3891901))))

(assert (=> b!6413829 (= res!2636019 (not call!551162))))

(declare-fun b!6413830 () Bool)

(assert (=> b!6413830 (= e!3891902 (not lt!2375390))))

(declare-fun b!6413831 () Bool)

(assert (=> b!6413831 (= e!3891900 (matchR!8498 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224))) (tail!12205 (_2!36597 lt!2375224))))))

(declare-fun b!6413832 () Bool)

(assert (=> b!6413832 (= e!3891903 (= lt!2375390 call!551162))))

(declare-fun b!6413833 () Bool)

(assert (=> b!6413833 (= e!3891903 e!3891902)))

(declare-fun c!1171304 () Bool)

(assert (=> b!6413833 (= c!1171304 ((_ is EmptyLang!16315) (regTwo!33142 r!7292)))))

(assert (= (and d!2011137 c!1171305) b!6413824))

(assert (= (and d!2011137 (not c!1171305)) b!6413831))

(assert (= (and d!2011137 c!1171306) b!6413832))

(assert (= (and d!2011137 (not c!1171306)) b!6413833))

(assert (= (and b!6413833 c!1171304) b!6413830))

(assert (= (and b!6413833 (not c!1171304)) b!6413821))

(assert (= (and b!6413821 (not res!2636017)) b!6413823))

(assert (= (and b!6413823 res!2636018) b!6413829))

(assert (= (and b!6413829 res!2636019) b!6413822))

(assert (= (and b!6413822 res!2636024) b!6413827))

(assert (= (and b!6413823 (not res!2636021)) b!6413825))

(assert (= (and b!6413825 res!2636023) b!6413826))

(assert (= (and b!6413826 (not res!2636022)) b!6413820))

(assert (= (and b!6413820 (not res!2636020)) b!6413828))

(assert (= (or b!6413832 b!6413826 b!6413829) bm!551157))

(declare-fun m!7209422 () Bool)

(assert (=> d!2011137 m!7209422))

(declare-fun m!7209424 () Bool)

(assert (=> d!2011137 m!7209424))

(declare-fun m!7209426 () Bool)

(assert (=> b!6413828 m!7209426))

(declare-fun m!7209428 () Bool)

(assert (=> b!6413824 m!7209428))

(assert (=> b!6413827 m!7209426))

(assert (=> b!6413831 m!7209426))

(assert (=> b!6413831 m!7209426))

(declare-fun m!7209430 () Bool)

(assert (=> b!6413831 m!7209430))

(declare-fun m!7209432 () Bool)

(assert (=> b!6413831 m!7209432))

(assert (=> b!6413831 m!7209430))

(assert (=> b!6413831 m!7209432))

(declare-fun m!7209434 () Bool)

(assert (=> b!6413831 m!7209434))

(assert (=> b!6413822 m!7209432))

(assert (=> b!6413822 m!7209432))

(declare-fun m!7209436 () Bool)

(assert (=> b!6413822 m!7209436))

(assert (=> bm!551157 m!7209422))

(assert (=> b!6413820 m!7209432))

(assert (=> b!6413820 m!7209432))

(assert (=> b!6413820 m!7209436))

(assert (=> b!6412763 d!2011137))

(declare-fun d!2011139 () Bool)

(declare-fun lt!2375391 () Regex!16315)

(assert (=> d!2011139 (validRegex!8051 lt!2375391)))

(assert (=> d!2011139 (= lt!2375391 (generalisedUnion!2159 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122))))))

(assert (=> d!2011139 (= (unfocusZipper!2057 (Cons!65122 lt!2375195 Nil!65122)) lt!2375391)))

(declare-fun bs!1612337 () Bool)

(assert (= bs!1612337 d!2011139))

(declare-fun m!7209438 () Bool)

(assert (=> bs!1612337 m!7209438))

(declare-fun m!7209440 () Bool)

(assert (=> bs!1612337 m!7209440))

(assert (=> bs!1612337 m!7209440))

(declare-fun m!7209442 () Bool)

(assert (=> bs!1612337 m!7209442))

(assert (=> b!6412764 d!2011139))

(declare-fun bs!1612338 () Bool)

(declare-fun d!2011141 () Bool)

(assert (= bs!1612338 (and d!2011141 b!6412770)))

(declare-fun lambda!354124 () Int)

(assert (=> bs!1612338 (= lambda!354124 lambda!354023)))

(declare-fun bs!1612340 () Bool)

(assert (= bs!1612340 (and d!2011141 d!2011031)))

(assert (=> bs!1612340 (= lambda!354124 lambda!354092)))

(assert (=> d!2011141 true))

(assert (=> d!2011141 (= (derivationStepZipper!2281 lt!2375203 (h!71569 s!2326)) (flatMap!1820 lt!2375203 lambda!354124))))

(declare-fun bs!1612342 () Bool)

(assert (= bs!1612342 d!2011141))

(declare-fun m!7209444 () Bool)

(assert (=> bs!1612342 m!7209444))

(assert (=> b!6412784 d!2011141))

(declare-fun d!2011147 () Bool)

(assert (=> d!2011147 (= (flatMap!1820 lt!2375203 lambda!354023) (choose!47643 lt!2375203 lambda!354023))))

(declare-fun bs!1612344 () Bool)

(assert (= bs!1612344 d!2011147))

(declare-fun m!7209446 () Bool)

(assert (=> bs!1612344 m!7209446))

(assert (=> b!6412784 d!2011147))

(assert (=> b!6412784 d!2011123))

(declare-fun d!2011153 () Bool)

(assert (=> d!2011153 (= (flatMap!1820 lt!2375203 lambda!354023) (dynLambda!25862 lambda!354023 lt!2375218))))

(declare-fun lt!2375392 () Unit!158591)

(assert (=> d!2011153 (= lt!2375392 (choose!47644 lt!2375203 lt!2375218 lambda!354023))))

(assert (=> d!2011153 (= lt!2375203 (store ((as const (Array Context!11398 Bool)) false) lt!2375218 true))))

(assert (=> d!2011153 (= (lemmaFlatMapOnSingletonSet!1346 lt!2375203 lt!2375218 lambda!354023) lt!2375392)))

(declare-fun b_lambda!243813 () Bool)

(assert (=> (not b_lambda!243813) (not d!2011153)))

(declare-fun bs!1612347 () Bool)

(assert (= bs!1612347 d!2011153))

(assert (=> bs!1612347 m!7208560))

(declare-fun m!7209448 () Bool)

(assert (=> bs!1612347 m!7209448))

(declare-fun m!7209450 () Bool)

(assert (=> bs!1612347 m!7209450))

(assert (=> bs!1612347 m!7208568))

(assert (=> b!6412784 d!2011153))

(declare-fun d!2011157 () Bool)

(declare-fun lt!2375393 () Regex!16315)

(assert (=> d!2011157 (validRegex!8051 lt!2375393)))

(assert (=> d!2011157 (= lt!2375393 (generalisedUnion!2159 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122))))))

(assert (=> d!2011157 (= (unfocusZipper!2057 (Cons!65122 lt!2375204 Nil!65122)) lt!2375393)))

(declare-fun bs!1612348 () Bool)

(assert (= bs!1612348 d!2011157))

(declare-fun m!7209452 () Bool)

(assert (=> bs!1612348 m!7209452))

(declare-fun m!7209454 () Bool)

(assert (=> bs!1612348 m!7209454))

(assert (=> bs!1612348 m!7209454))

(declare-fun m!7209456 () Bool)

(assert (=> bs!1612348 m!7209456))

(assert (=> b!6412762 d!2011157))

(declare-fun bm!551158 () Bool)

(declare-fun call!551163 () (InoxSet Context!11398))

(assert (=> bm!551158 (= call!551163 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 lt!2375195)) (Context!11399 (t!378856 (exprs!6199 lt!2375195))) (h!71569 s!2326)))))

(declare-fun e!3891914 () (InoxSet Context!11398))

(declare-fun b!6413854 () Bool)

(assert (=> b!6413854 (= e!3891914 ((_ map or) call!551163 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 lt!2375195))) (h!71569 s!2326))))))

(declare-fun b!6413855 () Bool)

(declare-fun e!3891916 () (InoxSet Context!11398))

(assert (=> b!6413855 (= e!3891916 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6413857 () Bool)

(assert (=> b!6413857 (= e!3891916 call!551163)))

(declare-fun b!6413858 () Bool)

(declare-fun e!3891915 () Bool)

(assert (=> b!6413858 (= e!3891915 (nullable!6308 (h!71568 (exprs!6199 lt!2375195))))))

(declare-fun b!6413856 () Bool)

(assert (=> b!6413856 (= e!3891914 e!3891916)))

(declare-fun c!1171308 () Bool)

(assert (=> b!6413856 (= c!1171308 ((_ is Cons!65120) (exprs!6199 lt!2375195)))))

(declare-fun d!2011159 () Bool)

(declare-fun c!1171307 () Bool)

(assert (=> d!2011159 (= c!1171307 e!3891915)))

(declare-fun res!2636025 () Bool)

(assert (=> d!2011159 (=> (not res!2636025) (not e!3891915))))

(assert (=> d!2011159 (= res!2636025 ((_ is Cons!65120) (exprs!6199 lt!2375195)))))

(assert (=> d!2011159 (= (derivationStepZipperUp!1489 lt!2375195 (h!71569 s!2326)) e!3891914)))

(assert (= (and d!2011159 res!2636025) b!6413858))

(assert (= (and d!2011159 c!1171307) b!6413854))

(assert (= (and d!2011159 (not c!1171307)) b!6413856))

(assert (= (and b!6413856 c!1171308) b!6413857))

(assert (= (and b!6413856 (not c!1171308)) b!6413855))

(assert (= (or b!6413854 b!6413857) bm!551158))

(declare-fun m!7209458 () Bool)

(assert (=> bm!551158 m!7209458))

(declare-fun m!7209460 () Bool)

(assert (=> b!6413854 m!7209460))

(declare-fun m!7209462 () Bool)

(assert (=> b!6413858 m!7209462))

(assert (=> b!6412762 d!2011159))

(declare-fun d!2011161 () Bool)

(assert (=> d!2011161 (= (flatMap!1820 lt!2375207 lambda!354023) (dynLambda!25862 lambda!354023 lt!2375195))))

(declare-fun lt!2375394 () Unit!158591)

(assert (=> d!2011161 (= lt!2375394 (choose!47644 lt!2375207 lt!2375195 lambda!354023))))

(assert (=> d!2011161 (= lt!2375207 (store ((as const (Array Context!11398 Bool)) false) lt!2375195 true))))

(assert (=> d!2011161 (= (lemmaFlatMapOnSingletonSet!1346 lt!2375207 lt!2375195 lambda!354023) lt!2375394)))

(declare-fun b_lambda!243815 () Bool)

(assert (=> (not b_lambda!243815) (not d!2011161)))

(declare-fun bs!1612349 () Bool)

(assert (= bs!1612349 d!2011161))

(assert (=> bs!1612349 m!7208470))

(declare-fun m!7209464 () Bool)

(assert (=> bs!1612349 m!7209464))

(declare-fun m!7209466 () Bool)

(assert (=> bs!1612349 m!7209466))

(assert (=> bs!1612349 m!7208468))

(assert (=> b!6412762 d!2011161))

(declare-fun d!2011163 () Bool)

(assert (=> d!2011163 (= (flatMap!1820 lt!2375207 lambda!354023) (choose!47643 lt!2375207 lambda!354023))))

(declare-fun bs!1612350 () Bool)

(assert (= bs!1612350 d!2011163))

(declare-fun m!7209468 () Bool)

(assert (=> bs!1612350 m!7209468))

(assert (=> b!6412762 d!2011163))

(declare-fun d!2011165 () Bool)

(assert (=> d!2011165 (= (flatMap!1820 lt!2375183 lambda!354023) (choose!47643 lt!2375183 lambda!354023))))

(declare-fun bs!1612351 () Bool)

(assert (= bs!1612351 d!2011165))

(declare-fun m!7209470 () Bool)

(assert (=> bs!1612351 m!7209470))

(assert (=> b!6412762 d!2011165))

(declare-fun bm!551159 () Bool)

(declare-fun call!551164 () (InoxSet Context!11398))

(assert (=> bm!551159 (= call!551164 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 lt!2375204)) (Context!11399 (t!378856 (exprs!6199 lt!2375204))) (h!71569 s!2326)))))

(declare-fun e!3891917 () (InoxSet Context!11398))

(declare-fun b!6413859 () Bool)

(assert (=> b!6413859 (= e!3891917 ((_ map or) call!551164 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 lt!2375204))) (h!71569 s!2326))))))

(declare-fun b!6413860 () Bool)

(declare-fun e!3891919 () (InoxSet Context!11398))

(assert (=> b!6413860 (= e!3891919 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6413862 () Bool)

(assert (=> b!6413862 (= e!3891919 call!551164)))

(declare-fun b!6413863 () Bool)

(declare-fun e!3891918 () Bool)

(assert (=> b!6413863 (= e!3891918 (nullable!6308 (h!71568 (exprs!6199 lt!2375204))))))

(declare-fun b!6413861 () Bool)

(assert (=> b!6413861 (= e!3891917 e!3891919)))

(declare-fun c!1171310 () Bool)

(assert (=> b!6413861 (= c!1171310 ((_ is Cons!65120) (exprs!6199 lt!2375204)))))

(declare-fun d!2011167 () Bool)

(declare-fun c!1171309 () Bool)

(assert (=> d!2011167 (= c!1171309 e!3891918)))

(declare-fun res!2636026 () Bool)

(assert (=> d!2011167 (=> (not res!2636026) (not e!3891918))))

(assert (=> d!2011167 (= res!2636026 ((_ is Cons!65120) (exprs!6199 lt!2375204)))))

(assert (=> d!2011167 (= (derivationStepZipperUp!1489 lt!2375204 (h!71569 s!2326)) e!3891917)))

(assert (= (and d!2011167 res!2636026) b!6413863))

(assert (= (and d!2011167 c!1171309) b!6413859))

(assert (= (and d!2011167 (not c!1171309)) b!6413861))

(assert (= (and b!6413861 c!1171310) b!6413862))

(assert (= (and b!6413861 (not c!1171310)) b!6413860))

(assert (= (or b!6413859 b!6413862) bm!551159))

(declare-fun m!7209472 () Bool)

(assert (=> bm!551159 m!7209472))

(declare-fun m!7209474 () Bool)

(assert (=> b!6413859 m!7209474))

(declare-fun m!7209476 () Bool)

(assert (=> b!6413863 m!7209476))

(assert (=> b!6412762 d!2011167))

(declare-fun d!2011169 () Bool)

(assert (=> d!2011169 (= (flatMap!1820 lt!2375183 lambda!354023) (dynLambda!25862 lambda!354023 lt!2375204))))

(declare-fun lt!2375395 () Unit!158591)

(assert (=> d!2011169 (= lt!2375395 (choose!47644 lt!2375183 lt!2375204 lambda!354023))))

(assert (=> d!2011169 (= lt!2375183 (store ((as const (Array Context!11398 Bool)) false) lt!2375204 true))))

(assert (=> d!2011169 (= (lemmaFlatMapOnSingletonSet!1346 lt!2375183 lt!2375204 lambda!354023) lt!2375395)))

(declare-fun b_lambda!243817 () Bool)

(assert (=> (not b_lambda!243817) (not d!2011169)))

(declare-fun bs!1612352 () Bool)

(assert (= bs!1612352 d!2011169))

(assert (=> bs!1612352 m!7208474))

(declare-fun m!7209478 () Bool)

(assert (=> bs!1612352 m!7209478))

(declare-fun m!7209480 () Bool)

(assert (=> bs!1612352 m!7209480))

(assert (=> bs!1612352 m!7208462))

(assert (=> b!6412762 d!2011169))

(declare-fun bs!1612353 () Bool)

(declare-fun d!2011171 () Bool)

(assert (= bs!1612353 (and d!2011171 d!2011135)))

(declare-fun lambda!354125 () Int)

(assert (=> bs!1612353 (= lambda!354125 lambda!354123)))

(declare-fun bs!1612354 () Bool)

(assert (= bs!1612354 (and d!2011171 d!2011049)))

(assert (=> bs!1612354 (= lambda!354125 lambda!354098)))

(declare-fun bs!1612355 () Bool)

(assert (= bs!1612355 (and d!2011171 d!2010999)))

(assert (=> bs!1612355 (= lambda!354125 lambda!354084)))

(declare-fun bs!1612356 () Bool)

(assert (= bs!1612356 (and d!2011171 d!2011077)))

(assert (=> bs!1612356 (= lambda!354125 lambda!354116)))

(declare-fun bs!1612357 () Bool)

(assert (= bs!1612357 (and d!2011171 d!2011089)))

(assert (=> bs!1612357 (= lambda!354125 lambda!354119)))

(assert (=> d!2011171 (= (inv!84034 setElem!43758) (forall!15504 (exprs!6199 setElem!43758) lambda!354125))))

(declare-fun bs!1612358 () Bool)

(assert (= bs!1612358 d!2011171))

(declare-fun m!7209482 () Bool)

(assert (=> bs!1612358 m!7209482))

(assert (=> setNonEmpty!43758 d!2011171))

(declare-fun d!2011173 () Bool)

(assert (=> d!2011173 (= (isEmpty!37268 (t!378856 (exprs!6199 (h!71570 zl!343)))) ((_ is Nil!65120) (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> b!6412766 d!2011173))

(declare-fun d!2011175 () Bool)

(declare-fun lt!2375396 () Regex!16315)

(assert (=> d!2011175 (validRegex!8051 lt!2375396)))

(assert (=> d!2011175 (= lt!2375396 (generalisedUnion!2159 (unfocusZipperList!1736 zl!343)))))

(assert (=> d!2011175 (= (unfocusZipper!2057 zl!343) lt!2375396)))

(declare-fun bs!1612359 () Bool)

(assert (= bs!1612359 d!2011175))

(declare-fun m!7209484 () Bool)

(assert (=> bs!1612359 m!7209484))

(assert (=> bs!1612359 m!7208512))

(assert (=> bs!1612359 m!7208512))

(assert (=> bs!1612359 m!7208514))

(assert (=> b!6412786 d!2011175))

(declare-fun d!2011177 () Bool)

(assert (=> d!2011177 (= (isEmpty!37270 (t!378858 zl!343)) ((_ is Nil!65122) (t!378858 zl!343)))))

(assert (=> b!6412785 d!2011177))

(declare-fun d!2011179 () Bool)

(assert (=> d!2011179 (= (nullable!6308 (regOne!33142 (regOne!33142 r!7292))) (nullableFct!2254 (regOne!33142 (regOne!33142 r!7292))))))

(declare-fun bs!1612360 () Bool)

(assert (= bs!1612360 d!2011179))

(declare-fun m!7209486 () Bool)

(assert (=> bs!1612360 m!7209486))

(assert (=> b!6412765 d!2011179))

(declare-fun b!6413877 () Bool)

(declare-fun e!3891922 () Bool)

(declare-fun tp!1781773 () Bool)

(declare-fun tp!1781774 () Bool)

(assert (=> b!6413877 (= e!3891922 (and tp!1781773 tp!1781774))))

(declare-fun b!6413876 () Bool)

(declare-fun tp!1781772 () Bool)

(assert (=> b!6413876 (= e!3891922 tp!1781772)))

(declare-fun b!6413874 () Bool)

(assert (=> b!6413874 (= e!3891922 tp_is_empty!41883)))

(assert (=> b!6412758 (= tp!1781697 e!3891922)))

(declare-fun b!6413875 () Bool)

(declare-fun tp!1781771 () Bool)

(declare-fun tp!1781775 () Bool)

(assert (=> b!6413875 (= e!3891922 (and tp!1781771 tp!1781775))))

(assert (= (and b!6412758 ((_ is ElementMatch!16315) (regOne!33143 r!7292))) b!6413874))

(assert (= (and b!6412758 ((_ is Concat!25160) (regOne!33143 r!7292))) b!6413875))

(assert (= (and b!6412758 ((_ is Star!16315) (regOne!33143 r!7292))) b!6413876))

(assert (= (and b!6412758 ((_ is Union!16315) (regOne!33143 r!7292))) b!6413877))

(declare-fun b!6413881 () Bool)

(declare-fun e!3891923 () Bool)

(declare-fun tp!1781778 () Bool)

(declare-fun tp!1781779 () Bool)

(assert (=> b!6413881 (= e!3891923 (and tp!1781778 tp!1781779))))

(declare-fun b!6413880 () Bool)

(declare-fun tp!1781777 () Bool)

(assert (=> b!6413880 (= e!3891923 tp!1781777)))

(declare-fun b!6413878 () Bool)

(assert (=> b!6413878 (= e!3891923 tp_is_empty!41883)))

(assert (=> b!6412758 (= tp!1781695 e!3891923)))

(declare-fun b!6413879 () Bool)

(declare-fun tp!1781776 () Bool)

(declare-fun tp!1781780 () Bool)

(assert (=> b!6413879 (= e!3891923 (and tp!1781776 tp!1781780))))

(assert (= (and b!6412758 ((_ is ElementMatch!16315) (regTwo!33143 r!7292))) b!6413878))

(assert (= (and b!6412758 ((_ is Concat!25160) (regTwo!33143 r!7292))) b!6413879))

(assert (= (and b!6412758 ((_ is Star!16315) (regTwo!33143 r!7292))) b!6413880))

(assert (= (and b!6412758 ((_ is Union!16315) (regTwo!33143 r!7292))) b!6413881))

(declare-fun b!6413886 () Bool)

(declare-fun e!3891926 () Bool)

(declare-fun tp!1781785 () Bool)

(declare-fun tp!1781786 () Bool)

(assert (=> b!6413886 (= e!3891926 (and tp!1781785 tp!1781786))))

(assert (=> b!6412769 (= tp!1781699 e!3891926)))

(assert (= (and b!6412769 ((_ is Cons!65120) (exprs!6199 setElem!43758))) b!6413886))

(declare-fun b!6413890 () Bool)

(declare-fun e!3891927 () Bool)

(declare-fun tp!1781789 () Bool)

(declare-fun tp!1781790 () Bool)

(assert (=> b!6413890 (= e!3891927 (and tp!1781789 tp!1781790))))

(declare-fun b!6413889 () Bool)

(declare-fun tp!1781788 () Bool)

(assert (=> b!6413889 (= e!3891927 tp!1781788)))

(declare-fun b!6413887 () Bool)

(assert (=> b!6413887 (= e!3891927 tp_is_empty!41883)))

(assert (=> b!6412747 (= tp!1781701 e!3891927)))

(declare-fun b!6413888 () Bool)

(declare-fun tp!1781787 () Bool)

(declare-fun tp!1781791 () Bool)

(assert (=> b!6413888 (= e!3891927 (and tp!1781787 tp!1781791))))

(assert (= (and b!6412747 ((_ is ElementMatch!16315) (reg!16644 r!7292))) b!6413887))

(assert (= (and b!6412747 ((_ is Concat!25160) (reg!16644 r!7292))) b!6413888))

(assert (= (and b!6412747 ((_ is Star!16315) (reg!16644 r!7292))) b!6413889))

(assert (= (and b!6412747 ((_ is Union!16315) (reg!16644 r!7292))) b!6413890))

(declare-fun condSetEmpty!43764 () Bool)

(assert (=> setNonEmpty!43758 (= condSetEmpty!43764 (= setRest!43758 ((as const (Array Context!11398 Bool)) false)))))

(declare-fun setRes!43764 () Bool)

(assert (=> setNonEmpty!43758 (= tp!1781702 setRes!43764)))

(declare-fun setIsEmpty!43764 () Bool)

(assert (=> setIsEmpty!43764 setRes!43764))

(declare-fun setNonEmpty!43764 () Bool)

(declare-fun e!3891930 () Bool)

(declare-fun setElem!43764 () Context!11398)

(declare-fun tp!1781796 () Bool)

(assert (=> setNonEmpty!43764 (= setRes!43764 (and tp!1781796 (inv!84034 setElem!43764) e!3891930))))

(declare-fun setRest!43764 () (InoxSet Context!11398))

(assert (=> setNonEmpty!43764 (= setRest!43758 ((_ map or) (store ((as const (Array Context!11398 Bool)) false) setElem!43764 true) setRest!43764))))

(declare-fun b!6413895 () Bool)

(declare-fun tp!1781797 () Bool)

(assert (=> b!6413895 (= e!3891930 tp!1781797)))

(assert (= (and setNonEmpty!43758 condSetEmpty!43764) setIsEmpty!43764))

(assert (= (and setNonEmpty!43758 (not condSetEmpty!43764)) setNonEmpty!43764))

(assert (= setNonEmpty!43764 b!6413895))

(declare-fun m!7209488 () Bool)

(assert (=> setNonEmpty!43764 m!7209488))

(declare-fun b!6413896 () Bool)

(declare-fun e!3891931 () Bool)

(declare-fun tp!1781798 () Bool)

(declare-fun tp!1781799 () Bool)

(assert (=> b!6413896 (= e!3891931 (and tp!1781798 tp!1781799))))

(assert (=> b!6412782 (= tp!1781693 e!3891931)))

(assert (= (and b!6412782 ((_ is Cons!65120) (exprs!6199 (h!71570 zl!343)))) b!6413896))

(declare-fun b!6413900 () Bool)

(declare-fun e!3891932 () Bool)

(declare-fun tp!1781802 () Bool)

(declare-fun tp!1781803 () Bool)

(assert (=> b!6413900 (= e!3891932 (and tp!1781802 tp!1781803))))

(declare-fun b!6413899 () Bool)

(declare-fun tp!1781801 () Bool)

(assert (=> b!6413899 (= e!3891932 tp!1781801)))

(declare-fun b!6413897 () Bool)

(assert (=> b!6413897 (= e!3891932 tp_is_empty!41883)))

(assert (=> b!6412755 (= tp!1781700 e!3891932)))

(declare-fun b!6413898 () Bool)

(declare-fun tp!1781800 () Bool)

(declare-fun tp!1781804 () Bool)

(assert (=> b!6413898 (= e!3891932 (and tp!1781800 tp!1781804))))

(assert (= (and b!6412755 ((_ is ElementMatch!16315) (regOne!33142 r!7292))) b!6413897))

(assert (= (and b!6412755 ((_ is Concat!25160) (regOne!33142 r!7292))) b!6413898))

(assert (= (and b!6412755 ((_ is Star!16315) (regOne!33142 r!7292))) b!6413899))

(assert (= (and b!6412755 ((_ is Union!16315) (regOne!33142 r!7292))) b!6413900))

(declare-fun b!6413904 () Bool)

(declare-fun e!3891933 () Bool)

(declare-fun tp!1781807 () Bool)

(declare-fun tp!1781808 () Bool)

(assert (=> b!6413904 (= e!3891933 (and tp!1781807 tp!1781808))))

(declare-fun b!6413903 () Bool)

(declare-fun tp!1781806 () Bool)

(assert (=> b!6413903 (= e!3891933 tp!1781806)))

(declare-fun b!6413901 () Bool)

(assert (=> b!6413901 (= e!3891933 tp_is_empty!41883)))

(assert (=> b!6412755 (= tp!1781698 e!3891933)))

(declare-fun b!6413902 () Bool)

(declare-fun tp!1781805 () Bool)

(declare-fun tp!1781809 () Bool)

(assert (=> b!6413902 (= e!3891933 (and tp!1781805 tp!1781809))))

(assert (= (and b!6412755 ((_ is ElementMatch!16315) (regTwo!33142 r!7292))) b!6413901))

(assert (= (and b!6412755 ((_ is Concat!25160) (regTwo!33142 r!7292))) b!6413902))

(assert (= (and b!6412755 ((_ is Star!16315) (regTwo!33142 r!7292))) b!6413903))

(assert (= (and b!6412755 ((_ is Union!16315) (regTwo!33142 r!7292))) b!6413904))

(declare-fun b!6413909 () Bool)

(declare-fun e!3891936 () Bool)

(declare-fun tp!1781812 () Bool)

(assert (=> b!6413909 (= e!3891936 (and tp_is_empty!41883 tp!1781812))))

(assert (=> b!6412775 (= tp!1781694 e!3891936)))

(assert (= (and b!6412775 ((_ is Cons!65121) (t!378857 s!2326))) b!6413909))

(declare-fun b!6413917 () Bool)

(declare-fun e!3891942 () Bool)

(declare-fun tp!1781817 () Bool)

(assert (=> b!6413917 (= e!3891942 tp!1781817)))

(declare-fun e!3891941 () Bool)

(declare-fun b!6413916 () Bool)

(declare-fun tp!1781818 () Bool)

(assert (=> b!6413916 (= e!3891941 (and (inv!84034 (h!71570 (t!378858 zl!343))) e!3891942 tp!1781818))))

(assert (=> b!6412750 (= tp!1781696 e!3891941)))

(assert (= b!6413916 b!6413917))

(assert (= (and b!6412750 ((_ is Cons!65122) (t!378858 zl!343))) b!6413916))

(declare-fun m!7209490 () Bool)

(assert (=> b!6413916 m!7209490))

(declare-fun b_lambda!243819 () Bool)

(assert (= b_lambda!243817 (or b!6412770 b_lambda!243819)))

(declare-fun bs!1612361 () Bool)

(declare-fun d!2011181 () Bool)

(assert (= bs!1612361 (and d!2011181 b!6412770)))

(assert (=> bs!1612361 (= (dynLambda!25862 lambda!354023 lt!2375204) (derivationStepZipperUp!1489 lt!2375204 (h!71569 s!2326)))))

(assert (=> bs!1612361 m!7208458))

(assert (=> d!2011169 d!2011181))

(declare-fun b_lambda!243821 () Bool)

(assert (= b_lambda!243815 (or b!6412770 b_lambda!243821)))

(declare-fun bs!1612362 () Bool)

(declare-fun d!2011183 () Bool)

(assert (= bs!1612362 (and d!2011183 b!6412770)))

(assert (=> bs!1612362 (= (dynLambda!25862 lambda!354023 lt!2375195) (derivationStepZipperUp!1489 lt!2375195 (h!71569 s!2326)))))

(assert (=> bs!1612362 m!7208464))

(assert (=> d!2011161 d!2011183))

(declare-fun b_lambda!243823 () Bool)

(assert (= b_lambda!243799 (or b!6412770 b_lambda!243823)))

(declare-fun bs!1612363 () Bool)

(declare-fun d!2011185 () Bool)

(assert (= bs!1612363 (and d!2011185 b!6412770)))

(assert (=> bs!1612363 (= (dynLambda!25862 lambda!354023 (h!71570 zl!343)) (derivationStepZipperUp!1489 (h!71570 zl!343) (h!71569 s!2326)))))

(assert (=> bs!1612363 m!7208574))

(assert (=> d!2011117 d!2011185))

(declare-fun b_lambda!243825 () Bool)

(assert (= b_lambda!243813 (or b!6412770 b_lambda!243825)))

(declare-fun bs!1612364 () Bool)

(declare-fun d!2011187 () Bool)

(assert (= bs!1612364 (and d!2011187 b!6412770)))

(assert (=> bs!1612364 (= (dynLambda!25862 lambda!354023 lt!2375218) (derivationStepZipperUp!1489 lt!2375218 (h!71569 s!2326)))))

(assert (=> bs!1612364 m!7208564))

(assert (=> d!2011153 d!2011187))

(declare-fun b_lambda!243827 () Bool)

(assert (= b_lambda!243793 (or b!6412770 b_lambda!243827)))

(declare-fun bs!1612365 () Bool)

(declare-fun d!2011189 () Bool)

(assert (= bs!1612365 (and d!2011189 b!6412770)))

(assert (=> bs!1612365 (= (dynLambda!25862 lambda!354023 lt!2375221) (derivationStepZipperUp!1489 lt!2375221 (h!71569 s!2326)))))

(assert (=> bs!1612365 m!7208488))

(assert (=> d!2011029 d!2011189))

(check-sat (not b!6413881) (not b!6413428) (not bm!551114) (not b!6412804) (not b!6413824) (not d!2011007) (not b!6413287) (not d!2011171) (not b!6413209) (not d!2011157) (not b_lambda!243825) (not b!6413182) (not d!2011051) (not b!6413389) (not b!6413799) (not d!2011127) (not bm!551103) (not b!6413765) (not b!6413900) (not d!2010883) (not b!6413179) (not d!2010999) (not bm!551100) (not d!2011153) (not bm!551033) (not b!6413628) (not b!6413033) (not d!2011077) (not b!6413036) (not b_lambda!243823) (not b!6413795) (not bm!551141) (not b!6413031) (not b!6412801) (not d!2010893) (not b!6413276) (not b!6413880) (not b!6413390) (not b!6413593) (not b!6413284) (not b!6413888) (not bm!551115) (not b!6413217) (not bm!551112) (not b!6413173) (not b!6413171) (not d!2011029) (not b!6412800) (not bs!1612361) (not d!2010909) (not bm!551155) (not b!6413072) (not d!2011031) (not b!6413595) (not bm!551140) (not b!6413374) (not bm!551039) (not d!2011137) (not d!2011147) (not bm!550997) (not d!2011011) (not d!2011049) (not d!2011135) (not bs!1612364) (not b!6413786) (not d!2010967) (not b!6413029) (not b!6413898) (not b!6413886) (not bm!551050) (not b!6413220) (not b!6413790) (not b!6413357) (not setNonEmpty!43764) (not d!2010881) (not bs!1612363) (not b!6413359) (not bm!551157) (not d!2011089) (not b!6413596) (not b!6413158) (not d!2011165) (not d!2011131) (not b!6413424) (not b!6413356) (not b_lambda!243827) (not d!2010985) (not b!6412861) (not b!6413175) (not bm!551008) (not b!6413820) (not b!6412866) (not b!6413909) (not bm!551113) (not b!6413629) (not b!6412822) (not b!6413354) (not bm!551116) (not b!6413771) (not b!6413895) (not b!6413598) (not d!2010885) (not d!2011141) (not b!6413827) (not d!2010973) (not b!6413631) (not b!6413630) (not d!2010937) (not d!2011075) (not b!6413902) (not b!6413721) (not d!2010963) (not b!6412820) (not b!6412805) (not d!2010879) (not bm!551101) tp_is_empty!41883 (not bs!1612365) (not b!6412807) (not b!6412867) (not b!6413896) (not d!2010891) (not bm!551032) (not b!6413859) (not d!2011065) (not b!6413875) (not b!6413283) (not b!6413917) (not d!2011161) (not b!6412863) (not b!6413877) (not b!6413360) (not d!2011169) (not b!6413724) (not b!6413386) (not b!6413687) (not b!6413627) (not b!6413854) (not b!6413352) (not b!6413876) (not b!6413281) (not b!6413216) (not b!6413728) (not bm!551159) (not b!6413899) (not d!2010989) (not b!6413355) (not d!2011005) (not b!6413890) (not b!6413831) (not d!2011139) (not b!6413213) (not b!6413279) (not d!2010977) (not b!6413916) (not d!2010911) (not b!6413725) (not b!6413040) (not b_lambda!243819) (not b!6413727) (not b!6413383) (not bm!551007) (not d!2011163) (not b_lambda!243821) (not b!6412806) (not bm!551037) (not bm!551154) (not bm!551148) (not b!6413373) (not bm!551102) (not b!6413889) (not b!6413601) (not d!2011023) (not b!6413178) (not d!2011117) (not d!2010991) (not bm!551099) (not d!2011063) (not b!6413375) (not d!2010919) (not bm!551158) (not b!6413600) (not b!6413775) (not d!2011175) (not b!6413726) (not b!6413037) (not b!6412864) (not b!6412859) (not bm!551038) (not b!6413828) (not bm!551149) (not b!6413211) (not b!6413233) (not b!6413235) (not b!6413858) (not d!2011009) (not d!2010987) (not d!2010971) (not b!6413904) (not b!6413286) (not b!6413730) (not d!2010965) (not bm!551143) (not b!6413379) (not b!6412817) (not d!2010983) (not b!6413903) (not b!6412808) (not d!2011179) (not b!6413377) (not bm!551156) (not bm!551036) (not bm!551060) (not d!2010933) (not bs!1612362) (not b!6413753) (not b!6413822) (not b!6413879) (not bm!551151) (not b!6413277) (not b!6412815) (not b!6413156) (not b!6413382) (not b!6413863) (not b!6413597))
(check-sat)
(get-model)

(declare-fun d!2011191 () Bool)

(assert (=> d!2011191 (= (isEmpty!37268 (tail!12207 (unfocusZipperList!1736 zl!343))) ((_ is Nil!65120) (tail!12207 (unfocusZipperList!1736 zl!343))))))

(assert (=> b!6413728 d!2011191))

(declare-fun d!2011193 () Bool)

(assert (=> d!2011193 (= (tail!12207 (unfocusZipperList!1736 zl!343)) (t!378856 (unfocusZipperList!1736 zl!343)))))

(assert (=> b!6413728 d!2011193))

(declare-fun c!1171312 () Bool)

(declare-fun call!551166 () List!65244)

(declare-fun bm!551160 () Bool)

(declare-fun call!551170 () (InoxSet Context!11398))

(declare-fun c!1171311 () Bool)

(declare-fun c!1171314 () Bool)

(assert (=> bm!551160 (= call!551170 (derivationStepZipperDown!1563 (ite c!1171314 (regOne!33143 (h!71568 (exprs!6199 lt!2375221))) (ite c!1171311 (regTwo!33142 (h!71568 (exprs!6199 lt!2375221))) (ite c!1171312 (regOne!33142 (h!71568 (exprs!6199 lt!2375221))) (reg!16644 (h!71568 (exprs!6199 lt!2375221)))))) (ite (or c!1171314 c!1171311) (Context!11399 (t!378856 (exprs!6199 lt!2375221))) (Context!11399 call!551166)) (h!71569 s!2326)))))

(declare-fun b!6413919 () Bool)

(declare-fun c!1171313 () Bool)

(assert (=> b!6413919 (= c!1171313 ((_ is Star!16315) (h!71568 (exprs!6199 lt!2375221))))))

(declare-fun e!3891946 () (InoxSet Context!11398))

(declare-fun e!3891944 () (InoxSet Context!11398))

(assert (=> b!6413919 (= e!3891946 e!3891944)))

(declare-fun b!6413920 () Bool)

(declare-fun call!551168 () (InoxSet Context!11398))

(assert (=> b!6413920 (= e!3891944 call!551168)))

(declare-fun b!6413921 () Bool)

(declare-fun e!3891943 () (InoxSet Context!11398))

(assert (=> b!6413921 (= e!3891943 e!3891946)))

(assert (=> b!6413921 (= c!1171312 ((_ is Concat!25160) (h!71568 (exprs!6199 lt!2375221))))))

(declare-fun b!6413922 () Bool)

(declare-fun e!3891947 () (InoxSet Context!11398))

(declare-fun call!551169 () (InoxSet Context!11398))

(assert (=> b!6413922 (= e!3891947 ((_ map or) call!551170 call!551169))))

(declare-fun b!6413923 () Bool)

(declare-fun e!3891945 () Bool)

(assert (=> b!6413923 (= e!3891945 (nullable!6308 (regOne!33142 (h!71568 (exprs!6199 lt!2375221)))))))

(declare-fun call!551165 () List!65244)

(declare-fun bm!551161 () Bool)

(assert (=> bm!551161 (= call!551169 (derivationStepZipperDown!1563 (ite c!1171314 (regTwo!33143 (h!71568 (exprs!6199 lt!2375221))) (regOne!33142 (h!71568 (exprs!6199 lt!2375221)))) (ite c!1171314 (Context!11399 (t!378856 (exprs!6199 lt!2375221))) (Context!11399 call!551165)) (h!71569 s!2326)))))

(declare-fun b!6413918 () Bool)

(assert (=> b!6413918 (= e!3891946 call!551168)))

(declare-fun d!2011195 () Bool)

(declare-fun c!1171315 () Bool)

(assert (=> d!2011195 (= c!1171315 (and ((_ is ElementMatch!16315) (h!71568 (exprs!6199 lt!2375221))) (= (c!1170970 (h!71568 (exprs!6199 lt!2375221))) (h!71569 s!2326))))))

(declare-fun e!3891948 () (InoxSet Context!11398))

(assert (=> d!2011195 (= (derivationStepZipperDown!1563 (h!71568 (exprs!6199 lt!2375221)) (Context!11399 (t!378856 (exprs!6199 lt!2375221))) (h!71569 s!2326)) e!3891948)))

(declare-fun bm!551162 () Bool)

(declare-fun call!551167 () (InoxSet Context!11398))

(assert (=> bm!551162 (= call!551168 call!551167)))

(declare-fun b!6413924 () Bool)

(assert (=> b!6413924 (= e!3891944 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551163 () Bool)

(assert (=> bm!551163 (= call!551165 ($colon$colon!2176 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375221)))) (ite (or c!1171311 c!1171312) (regTwo!33142 (h!71568 (exprs!6199 lt!2375221))) (h!71568 (exprs!6199 lt!2375221)))))))

(declare-fun bm!551164 () Bool)

(assert (=> bm!551164 (= call!551167 call!551170)))

(declare-fun bm!551165 () Bool)

(assert (=> bm!551165 (= call!551166 call!551165)))

(declare-fun b!6413925 () Bool)

(assert (=> b!6413925 (= e!3891948 e!3891947)))

(assert (=> b!6413925 (= c!1171314 ((_ is Union!16315) (h!71568 (exprs!6199 lt!2375221))))))

(declare-fun b!6413926 () Bool)

(assert (=> b!6413926 (= e!3891943 ((_ map or) call!551169 call!551167))))

(declare-fun b!6413927 () Bool)

(assert (=> b!6413927 (= e!3891948 (store ((as const (Array Context!11398 Bool)) false) (Context!11399 (t!378856 (exprs!6199 lt!2375221))) true))))

(declare-fun b!6413928 () Bool)

(assert (=> b!6413928 (= c!1171311 e!3891945)))

(declare-fun res!2636027 () Bool)

(assert (=> b!6413928 (=> (not res!2636027) (not e!3891945))))

(assert (=> b!6413928 (= res!2636027 ((_ is Concat!25160) (h!71568 (exprs!6199 lt!2375221))))))

(assert (=> b!6413928 (= e!3891947 e!3891943)))

(assert (= (and d!2011195 c!1171315) b!6413927))

(assert (= (and d!2011195 (not c!1171315)) b!6413925))

(assert (= (and b!6413925 c!1171314) b!6413922))

(assert (= (and b!6413925 (not c!1171314)) b!6413928))

(assert (= (and b!6413928 res!2636027) b!6413923))

(assert (= (and b!6413928 c!1171311) b!6413926))

(assert (= (and b!6413928 (not c!1171311)) b!6413921))

(assert (= (and b!6413921 c!1171312) b!6413918))

(assert (= (and b!6413921 (not c!1171312)) b!6413919))

(assert (= (and b!6413919 c!1171313) b!6413920))

(assert (= (and b!6413919 (not c!1171313)) b!6413924))

(assert (= (or b!6413918 b!6413920) bm!551165))

(assert (= (or b!6413918 b!6413920) bm!551162))

(assert (= (or b!6413926 bm!551165) bm!551163))

(assert (= (or b!6413926 bm!551162) bm!551164))

(assert (= (or b!6413922 b!6413926) bm!551161))

(assert (= (or b!6413922 bm!551164) bm!551160))

(declare-fun m!7209492 () Bool)

(assert (=> bm!551163 m!7209492))

(declare-fun m!7209494 () Bool)

(assert (=> b!6413923 m!7209494))

(declare-fun m!7209496 () Bool)

(assert (=> bm!551161 m!7209496))

(declare-fun m!7209498 () Bool)

(assert (=> b!6413927 m!7209498))

(declare-fun m!7209500 () Bool)

(assert (=> bm!551160 m!7209500))

(assert (=> bm!551060 d!2011195))

(assert (=> d!2010965 d!2010963))

(assert (=> d!2010965 d!2010951))

(declare-fun d!2011197 () Bool)

(assert (=> d!2011197 (= (matchR!8498 r!7292 s!2326) (matchRSpec!3416 r!7292 s!2326))))

(assert (=> d!2011197 true))

(declare-fun _$88!5106 () Unit!158591)

(assert (=> d!2011197 (= (choose!47640 r!7292 s!2326) _$88!5106)))

(declare-fun bs!1612366 () Bool)

(assert (= bs!1612366 d!2011197))

(assert (=> bs!1612366 m!7208452))

(assert (=> bs!1612366 m!7208450))

(assert (=> d!2010965 d!2011197))

(assert (=> d!2010965 d!2010943))

(declare-fun d!2011199 () Bool)

(assert (=> d!2011199 (= (head!13120 s!2326) (h!71569 s!2326))))

(assert (=> b!6413217 d!2011199))

(declare-fun b!6413929 () Bool)

(declare-fun res!2636030 () Bool)

(declare-fun e!3891949 () Bool)

(assert (=> b!6413929 (=> res!2636030 e!3891949)))

(assert (=> b!6413929 (= res!2636030 (not ((_ is Concat!25160) (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292)))))))

(declare-fun e!3891950 () Bool)

(assert (=> b!6413929 (= e!3891950 e!3891949)))

(declare-fun b!6413930 () Bool)

(declare-fun e!3891952 () Bool)

(declare-fun e!3891954 () Bool)

(assert (=> b!6413930 (= e!3891952 e!3891954)))

(declare-fun res!2636031 () Bool)

(assert (=> b!6413930 (= res!2636031 (not (nullable!6308 (reg!16644 (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))))))))

(assert (=> b!6413930 (=> (not res!2636031) (not e!3891954))))

(declare-fun b!6413931 () Bool)

(declare-fun call!551173 () Bool)

(assert (=> b!6413931 (= e!3891954 call!551173)))

(declare-fun b!6413932 () Bool)

(declare-fun e!3891955 () Bool)

(assert (=> b!6413932 (= e!3891949 e!3891955)))

(declare-fun res!2636028 () Bool)

(assert (=> b!6413932 (=> (not res!2636028) (not e!3891955))))

(declare-fun call!551171 () Bool)

(assert (=> b!6413932 (= res!2636028 call!551171)))

(declare-fun bm!551166 () Bool)

(declare-fun call!551172 () Bool)

(assert (=> bm!551166 (= call!551172 call!551173)))

(declare-fun b!6413934 () Bool)

(declare-fun res!2636029 () Bool)

(declare-fun e!3891953 () Bool)

(assert (=> b!6413934 (=> (not res!2636029) (not e!3891953))))

(assert (=> b!6413934 (= res!2636029 call!551171)))

(assert (=> b!6413934 (= e!3891950 e!3891953)))

(declare-fun b!6413935 () Bool)

(declare-fun e!3891951 () Bool)

(assert (=> b!6413935 (= e!3891951 e!3891952)))

(declare-fun c!1171316 () Bool)

(assert (=> b!6413935 (= c!1171316 ((_ is Star!16315) (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))))))

(declare-fun c!1171317 () Bool)

(declare-fun bm!551167 () Bool)

(assert (=> bm!551167 (= call!551173 (validRegex!8051 (ite c!1171316 (reg!16644 (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))) (ite c!1171317 (regTwo!33143 (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))) (regTwo!33142 (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292)))))))))

(declare-fun bm!551168 () Bool)

(assert (=> bm!551168 (= call!551171 (validRegex!8051 (ite c!1171317 (regOne!33143 (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))) (regOne!33142 (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))))))))

(declare-fun b!6413936 () Bool)

(assert (=> b!6413936 (= e!3891952 e!3891950)))

(assert (=> b!6413936 (= c!1171317 ((_ is Union!16315) (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))))))

(declare-fun b!6413937 () Bool)

(assert (=> b!6413937 (= e!3891953 call!551172)))

(declare-fun d!2011201 () Bool)

(declare-fun res!2636032 () Bool)

(assert (=> d!2011201 (=> res!2636032 e!3891951)))

(assert (=> d!2011201 (= res!2636032 ((_ is ElementMatch!16315) (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))))))

(assert (=> d!2011201 (= (validRegex!8051 (ite c!1171048 (regOne!33143 r!7292) (regOne!33142 r!7292))) e!3891951)))

(declare-fun b!6413933 () Bool)

(assert (=> b!6413933 (= e!3891955 call!551172)))

(assert (= (and d!2011201 (not res!2636032)) b!6413935))

(assert (= (and b!6413935 c!1171316) b!6413930))

(assert (= (and b!6413935 (not c!1171316)) b!6413936))

(assert (= (and b!6413930 res!2636031) b!6413931))

(assert (= (and b!6413936 c!1171317) b!6413934))

(assert (= (and b!6413936 (not c!1171317)) b!6413929))

(assert (= (and b!6413934 res!2636029) b!6413937))

(assert (= (and b!6413929 (not res!2636030)) b!6413932))

(assert (= (and b!6413932 res!2636028) b!6413933))

(assert (= (or b!6413937 b!6413933) bm!551166))

(assert (= (or b!6413934 b!6413932) bm!551168))

(assert (= (or b!6413931 bm!551166) bm!551167))

(declare-fun m!7209502 () Bool)

(assert (=> b!6413930 m!7209502))

(declare-fun m!7209504 () Bool)

(assert (=> bm!551167 m!7209504))

(declare-fun m!7209506 () Bool)

(assert (=> bm!551168 m!7209506))

(assert (=> bm!551008 d!2011201))

(assert (=> d!2011161 d!2011163))

(declare-fun d!2011203 () Bool)

(assert (=> d!2011203 (= (flatMap!1820 lt!2375207 lambda!354023) (dynLambda!25862 lambda!354023 lt!2375195))))

(assert (=> d!2011203 true))

(declare-fun _$13!3621 () Unit!158591)

(assert (=> d!2011203 (= (choose!47644 lt!2375207 lt!2375195 lambda!354023) _$13!3621)))

(declare-fun b_lambda!243829 () Bool)

(assert (=> (not b_lambda!243829) (not d!2011203)))

(declare-fun bs!1612367 () Bool)

(assert (= bs!1612367 d!2011203))

(assert (=> bs!1612367 m!7208470))

(assert (=> bs!1612367 m!7209464))

(assert (=> d!2011161 d!2011203))

(declare-fun d!2011205 () Bool)

(assert (=> d!2011205 (= (isEmpty!37269 (tail!12205 s!2326)) ((_ is Nil!65121) (tail!12205 s!2326)))))

(assert (=> b!6413211 d!2011205))

(declare-fun d!2011207 () Bool)

(assert (=> d!2011207 (= (tail!12205 s!2326) (t!378857 s!2326))))

(assert (=> b!6413211 d!2011207))

(declare-fun d!2011209 () Bool)

(assert (=> d!2011209 (= (Exists!3385 (ite c!1171076 lambda!354066 lambda!354067)) (choose!47631 (ite c!1171076 lambda!354066 lambda!354067)))))

(declare-fun bs!1612368 () Bool)

(assert (= bs!1612368 d!2011209))

(declare-fun m!7209508 () Bool)

(assert (=> bs!1612368 m!7209508))

(assert (=> bm!551033 d!2011209))

(declare-fun d!2011211 () Bool)

(assert (=> d!2011211 (= (nullable!6308 (reg!16644 r!7292)) (nullableFct!2254 (reg!16644 r!7292)))))

(declare-fun bs!1612369 () Bool)

(assert (= bs!1612369 d!2011211))

(declare-fun m!7209510 () Bool)

(assert (=> bs!1612369 m!7209510))

(assert (=> b!6413072 d!2011211))

(assert (=> d!2011029 d!2011023))

(declare-fun d!2011213 () Bool)

(assert (=> d!2011213 (= (flatMap!1820 lt!2375199 lambda!354023) (dynLambda!25862 lambda!354023 lt!2375221))))

(assert (=> d!2011213 true))

(declare-fun _$13!3622 () Unit!158591)

(assert (=> d!2011213 (= (choose!47644 lt!2375199 lt!2375221 lambda!354023) _$13!3622)))

(declare-fun b_lambda!243831 () Bool)

(assert (=> (not b_lambda!243831) (not d!2011213)))

(declare-fun bs!1612370 () Bool)

(assert (= bs!1612370 d!2011213))

(assert (=> bs!1612370 m!7208486))

(assert (=> bs!1612370 m!7209078))

(assert (=> d!2011029 d!2011213))

(declare-fun d!2011215 () Bool)

(assert (=> d!2011215 (= (nullable!6308 (h!71568 (exprs!6199 lt!2375195))) (nullableFct!2254 (h!71568 (exprs!6199 lt!2375195))))))

(declare-fun bs!1612371 () Bool)

(assert (= bs!1612371 d!2011215))

(declare-fun m!7209512 () Bool)

(assert (=> bs!1612371 m!7209512))

(assert (=> b!6413858 d!2011215))

(declare-fun d!2011217 () Bool)

(assert (=> d!2011217 (= (isEmpty!37269 (t!378857 s!2326)) ((_ is Nil!65121) (t!378857 s!2326)))))

(assert (=> d!2011063 d!2011217))

(declare-fun d!2011219 () Bool)

(assert (=> d!2011219 (= (isEmpty!37269 (tail!12205 (_2!36597 lt!2375224))) ((_ is Nil!65121) (tail!12205 (_2!36597 lt!2375224))))))

(assert (=> b!6413822 d!2011219))

(declare-fun d!2011221 () Bool)

(assert (=> d!2011221 (= (tail!12205 (_2!36597 lt!2375224)) (t!378857 (_2!36597 lt!2375224)))))

(assert (=> b!6413822 d!2011221))

(declare-fun c!1171318 () Bool)

(declare-fun c!1171321 () Bool)

(declare-fun call!551179 () (InoxSet Context!11398))

(declare-fun bm!551169 () Bool)

(declare-fun c!1171319 () Bool)

(declare-fun call!551175 () List!65244)

(assert (=> bm!551169 (= call!551179 (derivationStepZipperDown!1563 (ite c!1171321 (regOne!33143 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))) (ite c!1171318 (regTwo!33142 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))) (ite c!1171319 (regOne!33142 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))) (reg!16644 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292)))))))))) (ite (or c!1171321 c!1171318) (ite (or c!1171267 c!1171264) lt!2375195 (Context!11399 call!551146)) (Context!11399 call!551175)) (h!71569 s!2326)))))

(declare-fun b!6413939 () Bool)

(declare-fun c!1171320 () Bool)

(assert (=> b!6413939 (= c!1171320 ((_ is Star!16315) (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))))))

(declare-fun e!3891959 () (InoxSet Context!11398))

(declare-fun e!3891957 () (InoxSet Context!11398))

(assert (=> b!6413939 (= e!3891959 e!3891957)))

(declare-fun b!6413940 () Bool)

(declare-fun call!551177 () (InoxSet Context!11398))

(assert (=> b!6413940 (= e!3891957 call!551177)))

(declare-fun b!6413941 () Bool)

(declare-fun e!3891956 () (InoxSet Context!11398))

(assert (=> b!6413941 (= e!3891956 e!3891959)))

(assert (=> b!6413941 (= c!1171319 ((_ is Concat!25160) (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))))))

(declare-fun b!6413942 () Bool)

(declare-fun e!3891960 () (InoxSet Context!11398))

(declare-fun call!551178 () (InoxSet Context!11398))

(assert (=> b!6413942 (= e!3891960 ((_ map or) call!551179 call!551178))))

(declare-fun b!6413943 () Bool)

(declare-fun e!3891958 () Bool)

(assert (=> b!6413943 (= e!3891958 (nullable!6308 (regOne!33142 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292)))))))))))

(declare-fun call!551174 () List!65244)

(declare-fun bm!551170 () Bool)

(assert (=> bm!551170 (= call!551178 (derivationStepZipperDown!1563 (ite c!1171321 (regTwo!33143 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))) (regOne!33142 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292)))))))) (ite c!1171321 (ite (or c!1171267 c!1171264) lt!2375195 (Context!11399 call!551146)) (Context!11399 call!551174)) (h!71569 s!2326)))))

(declare-fun b!6413938 () Bool)

(assert (=> b!6413938 (= e!3891959 call!551177)))

(declare-fun c!1171322 () Bool)

(declare-fun d!2011223 () Bool)

(assert (=> d!2011223 (= c!1171322 (and ((_ is ElementMatch!16315) (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))) (= (c!1170970 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))) (h!71569 s!2326))))))

(declare-fun e!3891961 () (InoxSet Context!11398))

(assert (=> d!2011223 (= (derivationStepZipperDown!1563 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292)))))) (ite (or c!1171267 c!1171264) lt!2375195 (Context!11399 call!551146)) (h!71569 s!2326)) e!3891961)))

(declare-fun bm!551171 () Bool)

(declare-fun call!551176 () (InoxSet Context!11398))

(assert (=> bm!551171 (= call!551177 call!551176)))

(declare-fun b!6413944 () Bool)

(assert (=> b!6413944 (= e!3891957 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551172 () Bool)

(assert (=> bm!551172 (= call!551174 ($colon$colon!2176 (exprs!6199 (ite (or c!1171267 c!1171264) lt!2375195 (Context!11399 call!551146))) (ite (or c!1171318 c!1171319) (regTwo!33142 (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))) (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292)))))))))))

(declare-fun bm!551173 () Bool)

(assert (=> bm!551173 (= call!551176 call!551179)))

(declare-fun bm!551174 () Bool)

(assert (=> bm!551174 (= call!551175 call!551174)))

(declare-fun b!6413945 () Bool)

(assert (=> b!6413945 (= e!3891961 e!3891960)))

(assert (=> b!6413945 (= c!1171321 ((_ is Union!16315) (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))))))

(declare-fun b!6413946 () Bool)

(assert (=> b!6413946 (= e!3891956 ((_ map or) call!551178 call!551176))))

(declare-fun b!6413947 () Bool)

(assert (=> b!6413947 (= e!3891961 (store ((as const (Array Context!11398 Bool)) false) (ite (or c!1171267 c!1171264) lt!2375195 (Context!11399 call!551146)) true))))

(declare-fun b!6413948 () Bool)

(assert (=> b!6413948 (= c!1171318 e!3891958)))

(declare-fun res!2636033 () Bool)

(assert (=> b!6413948 (=> (not res!2636033) (not e!3891958))))

(assert (=> b!6413948 (= res!2636033 ((_ is Concat!25160) (ite c!1171267 (regOne!33143 (reg!16644 (regOne!33142 r!7292))) (ite c!1171264 (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (ite c!1171265 (regOne!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (reg!16644 (regOne!33142 r!7292))))))))))

(assert (=> b!6413948 (= e!3891960 e!3891956)))

(assert (= (and d!2011223 c!1171322) b!6413947))

(assert (= (and d!2011223 (not c!1171322)) b!6413945))

(assert (= (and b!6413945 c!1171321) b!6413942))

(assert (= (and b!6413945 (not c!1171321)) b!6413948))

(assert (= (and b!6413948 res!2636033) b!6413943))

(assert (= (and b!6413948 c!1171318) b!6413946))

(assert (= (and b!6413948 (not c!1171318)) b!6413941))

(assert (= (and b!6413941 c!1171319) b!6413938))

(assert (= (and b!6413941 (not c!1171319)) b!6413939))

(assert (= (and b!6413939 c!1171320) b!6413940))

(assert (= (and b!6413939 (not c!1171320)) b!6413944))

(assert (= (or b!6413938 b!6413940) bm!551174))

(assert (= (or b!6413938 b!6413940) bm!551171))

(assert (= (or b!6413946 bm!551174) bm!551172))

(assert (= (or b!6413946 bm!551171) bm!551173))

(assert (= (or b!6413942 b!6413946) bm!551170))

(assert (= (or b!6413942 bm!551173) bm!551169))

(declare-fun m!7209514 () Bool)

(assert (=> bm!551172 m!7209514))

(declare-fun m!7209516 () Bool)

(assert (=> b!6413943 m!7209516))

(declare-fun m!7209518 () Bool)

(assert (=> bm!551170 m!7209518))

(declare-fun m!7209520 () Bool)

(assert (=> b!6413947 m!7209520))

(declare-fun m!7209522 () Bool)

(assert (=> bm!551169 m!7209522))

(assert (=> bm!551140 d!2011223))

(declare-fun d!2011225 () Bool)

(declare-fun res!2636038 () Bool)

(declare-fun e!3891966 () Bool)

(assert (=> d!2011225 (=> res!2636038 e!3891966)))

(assert (=> d!2011225 (= res!2636038 ((_ is Nil!65120) (exprs!6199 setElem!43758)))))

(assert (=> d!2011225 (= (forall!15504 (exprs!6199 setElem!43758) lambda!354125) e!3891966)))

(declare-fun b!6413953 () Bool)

(declare-fun e!3891967 () Bool)

(assert (=> b!6413953 (= e!3891966 e!3891967)))

(declare-fun res!2636039 () Bool)

(assert (=> b!6413953 (=> (not res!2636039) (not e!3891967))))

(declare-fun dynLambda!25863 (Int Regex!16315) Bool)

(assert (=> b!6413953 (= res!2636039 (dynLambda!25863 lambda!354125 (h!71568 (exprs!6199 setElem!43758))))))

(declare-fun b!6413954 () Bool)

(assert (=> b!6413954 (= e!3891967 (forall!15504 (t!378856 (exprs!6199 setElem!43758)) lambda!354125))))

(assert (= (and d!2011225 (not res!2636038)) b!6413953))

(assert (= (and b!6413953 res!2636039) b!6413954))

(declare-fun b_lambda!243833 () Bool)

(assert (=> (not b_lambda!243833) (not b!6413953)))

(declare-fun m!7209524 () Bool)

(assert (=> b!6413953 m!7209524))

(declare-fun m!7209526 () Bool)

(assert (=> b!6413954 m!7209526))

(assert (=> d!2011171 d!2011225))

(declare-fun bm!551175 () Bool)

(declare-fun call!551180 () (InoxSet Context!11398))

(assert (=> bm!551175 (= call!551180 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))))) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343))))))) (h!71569 s!2326)))))

(declare-fun b!6413955 () Bool)

(declare-fun e!3891968 () (InoxSet Context!11398))

(assert (=> b!6413955 (= e!3891968 ((_ map or) call!551180 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343))))))) (h!71569 s!2326))))))

(declare-fun b!6413956 () Bool)

(declare-fun e!3891970 () (InoxSet Context!11398))

(assert (=> b!6413956 (= e!3891970 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6413958 () Bool)

(assert (=> b!6413958 (= e!3891970 call!551180)))

(declare-fun b!6413959 () Bool)

(declare-fun e!3891969 () Bool)

(assert (=> b!6413959 (= e!3891969 (nullable!6308 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343))))))))))

(declare-fun b!6413957 () Bool)

(assert (=> b!6413957 (= e!3891968 e!3891970)))

(declare-fun c!1171324 () Bool)

(assert (=> b!6413957 (= c!1171324 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun d!2011227 () Bool)

(declare-fun c!1171323 () Bool)

(assert (=> d!2011227 (= c!1171323 e!3891969)))

(declare-fun res!2636040 () Bool)

(assert (=> d!2011227 (=> (not res!2636040) (not e!3891969))))

(assert (=> d!2011227 (= res!2636040 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))))))))

(assert (=> d!2011227 (= (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))) (h!71569 s!2326)) e!3891968)))

(assert (= (and d!2011227 res!2636040) b!6413959))

(assert (= (and d!2011227 c!1171323) b!6413955))

(assert (= (and d!2011227 (not c!1171323)) b!6413957))

(assert (= (and b!6413957 c!1171324) b!6413958))

(assert (= (and b!6413957 (not c!1171324)) b!6413956))

(assert (= (or b!6413955 b!6413958) bm!551175))

(declare-fun m!7209528 () Bool)

(assert (=> bm!551175 m!7209528))

(declare-fun m!7209530 () Bool)

(assert (=> b!6413955 m!7209530))

(declare-fun m!7209532 () Bool)

(assert (=> b!6413959 m!7209532))

(assert (=> b!6413795 d!2011227))

(assert (=> bs!1612362 d!2011159))

(declare-fun d!2011229 () Bool)

(declare-fun res!2636041 () Bool)

(declare-fun e!3891971 () Bool)

(assert (=> d!2011229 (=> res!2636041 e!3891971)))

(assert (=> d!2011229 (= res!2636041 ((_ is Nil!65120) (exprs!6199 (h!71570 zl!343))))))

(assert (=> d!2011229 (= (forall!15504 (exprs!6199 (h!71570 zl!343)) lambda!354123) e!3891971)))

(declare-fun b!6413960 () Bool)

(declare-fun e!3891972 () Bool)

(assert (=> b!6413960 (= e!3891971 e!3891972)))

(declare-fun res!2636042 () Bool)

(assert (=> b!6413960 (=> (not res!2636042) (not e!3891972))))

(assert (=> b!6413960 (= res!2636042 (dynLambda!25863 lambda!354123 (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6413961 () Bool)

(assert (=> b!6413961 (= e!3891972 (forall!15504 (t!378856 (exprs!6199 (h!71570 zl!343))) lambda!354123))))

(assert (= (and d!2011229 (not res!2636041)) b!6413960))

(assert (= (and b!6413960 res!2636042) b!6413961))

(declare-fun b_lambda!243835 () Bool)

(assert (=> (not b_lambda!243835) (not b!6413960)))

(declare-fun m!7209534 () Bool)

(assert (=> b!6413960 m!7209534))

(declare-fun m!7209536 () Bool)

(assert (=> b!6413961 m!7209536))

(assert (=> d!2011135 d!2011229))

(declare-fun bs!1612372 () Bool)

(declare-fun d!2011231 () Bool)

(assert (= bs!1612372 (and d!2011231 d!2011135)))

(declare-fun lambda!354126 () Int)

(assert (=> bs!1612372 (= lambda!354126 lambda!354123)))

(declare-fun bs!1612373 () Bool)

(assert (= bs!1612373 (and d!2011231 d!2011049)))

(assert (=> bs!1612373 (= lambda!354126 lambda!354098)))

(declare-fun bs!1612374 () Bool)

(assert (= bs!1612374 (and d!2011231 d!2011171)))

(assert (=> bs!1612374 (= lambda!354126 lambda!354125)))

(declare-fun bs!1612375 () Bool)

(assert (= bs!1612375 (and d!2011231 d!2010999)))

(assert (=> bs!1612375 (= lambda!354126 lambda!354084)))

(declare-fun bs!1612376 () Bool)

(assert (= bs!1612376 (and d!2011231 d!2011077)))

(assert (=> bs!1612376 (= lambda!354126 lambda!354116)))

(declare-fun bs!1612377 () Bool)

(assert (= bs!1612377 (and d!2011231 d!2011089)))

(assert (=> bs!1612377 (= lambda!354126 lambda!354119)))

(assert (=> d!2011231 (= (inv!84034 setElem!43764) (forall!15504 (exprs!6199 setElem!43764) lambda!354126))))

(declare-fun bs!1612378 () Bool)

(assert (= bs!1612378 d!2011231))

(declare-fun m!7209538 () Bool)

(assert (=> bs!1612378 m!7209538))

(assert (=> setNonEmpty!43764 d!2011231))

(assert (=> b!6413178 d!2011199))

(declare-fun b!6413962 () Bool)

(declare-fun res!2636045 () Bool)

(declare-fun e!3891973 () Bool)

(assert (=> b!6413962 (=> res!2636045 e!3891973)))

(assert (=> b!6413962 (= res!2636045 (not ((_ is Concat!25160) lt!2375396)))))

(declare-fun e!3891974 () Bool)

(assert (=> b!6413962 (= e!3891974 e!3891973)))

(declare-fun b!6413963 () Bool)

(declare-fun e!3891976 () Bool)

(declare-fun e!3891978 () Bool)

(assert (=> b!6413963 (= e!3891976 e!3891978)))

(declare-fun res!2636046 () Bool)

(assert (=> b!6413963 (= res!2636046 (not (nullable!6308 (reg!16644 lt!2375396))))))

(assert (=> b!6413963 (=> (not res!2636046) (not e!3891978))))

(declare-fun b!6413964 () Bool)

(declare-fun call!551183 () Bool)

(assert (=> b!6413964 (= e!3891978 call!551183)))

(declare-fun b!6413965 () Bool)

(declare-fun e!3891979 () Bool)

(assert (=> b!6413965 (= e!3891973 e!3891979)))

(declare-fun res!2636043 () Bool)

(assert (=> b!6413965 (=> (not res!2636043) (not e!3891979))))

(declare-fun call!551181 () Bool)

(assert (=> b!6413965 (= res!2636043 call!551181)))

(declare-fun bm!551176 () Bool)

(declare-fun call!551182 () Bool)

(assert (=> bm!551176 (= call!551182 call!551183)))

(declare-fun b!6413967 () Bool)

(declare-fun res!2636044 () Bool)

(declare-fun e!3891977 () Bool)

(assert (=> b!6413967 (=> (not res!2636044) (not e!3891977))))

(assert (=> b!6413967 (= res!2636044 call!551181)))

(assert (=> b!6413967 (= e!3891974 e!3891977)))

(declare-fun b!6413968 () Bool)

(declare-fun e!3891975 () Bool)

(assert (=> b!6413968 (= e!3891975 e!3891976)))

(declare-fun c!1171325 () Bool)

(assert (=> b!6413968 (= c!1171325 ((_ is Star!16315) lt!2375396))))

(declare-fun bm!551177 () Bool)

(declare-fun c!1171326 () Bool)

(assert (=> bm!551177 (= call!551183 (validRegex!8051 (ite c!1171325 (reg!16644 lt!2375396) (ite c!1171326 (regTwo!33143 lt!2375396) (regTwo!33142 lt!2375396)))))))

(declare-fun bm!551178 () Bool)

(assert (=> bm!551178 (= call!551181 (validRegex!8051 (ite c!1171326 (regOne!33143 lt!2375396) (regOne!33142 lt!2375396))))))

(declare-fun b!6413969 () Bool)

(assert (=> b!6413969 (= e!3891976 e!3891974)))

(assert (=> b!6413969 (= c!1171326 ((_ is Union!16315) lt!2375396))))

(declare-fun b!6413970 () Bool)

(assert (=> b!6413970 (= e!3891977 call!551182)))

(declare-fun d!2011233 () Bool)

(declare-fun res!2636047 () Bool)

(assert (=> d!2011233 (=> res!2636047 e!3891975)))

(assert (=> d!2011233 (= res!2636047 ((_ is ElementMatch!16315) lt!2375396))))

(assert (=> d!2011233 (= (validRegex!8051 lt!2375396) e!3891975)))

(declare-fun b!6413966 () Bool)

(assert (=> b!6413966 (= e!3891979 call!551182)))

(assert (= (and d!2011233 (not res!2636047)) b!6413968))

(assert (= (and b!6413968 c!1171325) b!6413963))

(assert (= (and b!6413968 (not c!1171325)) b!6413969))

(assert (= (and b!6413963 res!2636046) b!6413964))

(assert (= (and b!6413969 c!1171326) b!6413967))

(assert (= (and b!6413969 (not c!1171326)) b!6413962))

(assert (= (and b!6413967 res!2636044) b!6413970))

(assert (= (and b!6413962 (not res!2636045)) b!6413965))

(assert (= (and b!6413965 res!2636043) b!6413966))

(assert (= (or b!6413970 b!6413966) bm!551176))

(assert (= (or b!6413967 b!6413965) bm!551178))

(assert (= (or b!6413964 bm!551176) bm!551177))

(declare-fun m!7209540 () Bool)

(assert (=> b!6413963 m!7209540))

(declare-fun m!7209542 () Bool)

(assert (=> bm!551177 m!7209542))

(declare-fun m!7209544 () Bool)

(assert (=> bm!551178 m!7209544))

(assert (=> d!2011175 d!2011233))

(assert (=> d!2011175 d!2011077))

(assert (=> d!2011175 d!2011089))

(declare-fun bs!1612379 () Bool)

(declare-fun b!6413973 () Bool)

(assert (= bs!1612379 (and b!6413973 b!6413152)))

(declare-fun lambda!354127 () Int)

(assert (=> bs!1612379 (= (and (= (reg!16644 (regTwo!33143 r!7292)) (reg!16644 r!7292)) (= (regTwo!33143 r!7292) r!7292)) (= lambda!354127 lambda!354066))))

(declare-fun bs!1612380 () Bool)

(assert (= bs!1612380 (and b!6413973 b!6412781)))

(assert (=> bs!1612380 (not (= lambda!354127 lambda!354022))))

(declare-fun bs!1612381 () Bool)

(assert (= bs!1612381 (and b!6413973 d!2010919)))

(assert (=> bs!1612381 (not (= lambda!354127 lambda!354051))))

(assert (=> bs!1612381 (not (= lambda!354127 lambda!354052))))

(assert (=> bs!1612380 (not (= lambda!354127 lambda!354021))))

(declare-fun bs!1612382 () Bool)

(assert (= bs!1612382 (and b!6413973 b!6412754)))

(assert (=> bs!1612382 (not (= lambda!354127 lambda!354025))))

(declare-fun bs!1612383 () Bool)

(assert (= bs!1612383 (and b!6413973 b!6413231)))

(assert (=> bs!1612383 (not (= lambda!354127 lambda!354073))))

(declare-fun bs!1612384 () Bool)

(assert (= bs!1612384 (and b!6413973 d!2010991)))

(assert (=> bs!1612384 (not (= lambda!354127 lambda!354077))))

(declare-fun bs!1612385 () Bool)

(assert (= bs!1612385 (and b!6413973 b!6413229)))

(assert (=> bs!1612385 (= (and (= (reg!16644 (regTwo!33143 r!7292)) (reg!16644 lt!2375201)) (= (regTwo!33143 r!7292) lt!2375201)) (= lambda!354127 lambda!354070))))

(assert (=> bs!1612384 (not (= lambda!354127 lambda!354078))))

(declare-fun bs!1612386 () Bool)

(assert (= bs!1612386 (and b!6413973 b!6413154)))

(assert (=> bs!1612386 (not (= lambda!354127 lambda!354067))))

(assert (=> bs!1612382 (not (= lambda!354127 lambda!354024))))

(declare-fun bs!1612387 () Bool)

(assert (= bs!1612387 (and b!6413973 d!2010911)))

(assert (=> bs!1612387 (not (= lambda!354127 lambda!354046))))

(declare-fun bs!1612388 () Bool)

(assert (= bs!1612388 (and b!6413973 d!2010973)))

(assert (=> bs!1612388 (not (= lambda!354127 lambda!354074))))

(assert (=> b!6413973 true))

(assert (=> b!6413973 true))

(declare-fun bs!1612389 () Bool)

(declare-fun b!6413975 () Bool)

(assert (= bs!1612389 (and b!6413975 b!6413152)))

(declare-fun lambda!354128 () Int)

(assert (=> bs!1612389 (not (= lambda!354128 lambda!354066))))

(declare-fun bs!1612390 () Bool)

(assert (= bs!1612390 (and b!6413975 b!6412781)))

(assert (=> bs!1612390 (= (and (= (regOne!33142 (regTwo!33143 r!7292)) (regOne!33142 r!7292)) (= (regTwo!33142 (regTwo!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354128 lambda!354022))))

(declare-fun bs!1612391 () Bool)

(assert (= bs!1612391 (and b!6413975 d!2010919)))

(assert (=> bs!1612391 (not (= lambda!354128 lambda!354051))))

(assert (=> bs!1612391 (= (and (= (regOne!33142 (regTwo!33143 r!7292)) (regOne!33142 r!7292)) (= (regTwo!33142 (regTwo!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354128 lambda!354052))))

(assert (=> bs!1612390 (not (= lambda!354128 lambda!354021))))

(declare-fun bs!1612392 () Bool)

(assert (= bs!1612392 (and b!6413975 b!6412754)))

(assert (=> bs!1612392 (= (and (= (regOne!33142 (regTwo!33143 r!7292)) lt!2375222) (= (regTwo!33142 (regTwo!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354128 lambda!354025))))

(declare-fun bs!1612393 () Bool)

(assert (= bs!1612393 (and b!6413975 b!6413231)))

(assert (=> bs!1612393 (= (and (= (regOne!33142 (regTwo!33143 r!7292)) (regOne!33142 lt!2375201)) (= (regTwo!33142 (regTwo!33143 r!7292)) (regTwo!33142 lt!2375201))) (= lambda!354128 lambda!354073))))

(declare-fun bs!1612394 () Bool)

(assert (= bs!1612394 (and b!6413975 d!2010991)))

(assert (=> bs!1612394 (not (= lambda!354128 lambda!354077))))

(declare-fun bs!1612395 () Bool)

(assert (= bs!1612395 (and b!6413975 b!6413973)))

(assert (=> bs!1612395 (not (= lambda!354128 lambda!354127))))

(declare-fun bs!1612396 () Bool)

(assert (= bs!1612396 (and b!6413975 b!6413229)))

(assert (=> bs!1612396 (not (= lambda!354128 lambda!354070))))

(assert (=> bs!1612394 (= (and (= (regOne!33142 (regTwo!33143 r!7292)) lt!2375222) (= (regTwo!33142 (regTwo!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354128 lambda!354078))))

(declare-fun bs!1612397 () Bool)

(assert (= bs!1612397 (and b!6413975 b!6413154)))

(assert (=> bs!1612397 (= (and (= (regOne!33142 (regTwo!33143 r!7292)) (regOne!33142 r!7292)) (= (regTwo!33142 (regTwo!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354128 lambda!354067))))

(assert (=> bs!1612392 (not (= lambda!354128 lambda!354024))))

(declare-fun bs!1612398 () Bool)

(assert (= bs!1612398 (and b!6413975 d!2010911)))

(assert (=> bs!1612398 (not (= lambda!354128 lambda!354046))))

(declare-fun bs!1612399 () Bool)

(assert (= bs!1612399 (and b!6413975 d!2010973)))

(assert (=> bs!1612399 (not (= lambda!354128 lambda!354074))))

(assert (=> b!6413975 true))

(assert (=> b!6413975 true))

(declare-fun bm!551179 () Bool)

(declare-fun call!551184 () Bool)

(assert (=> bm!551179 (= call!551184 (isEmpty!37269 s!2326))))

(declare-fun c!1171329 () Bool)

(declare-fun bm!551180 () Bool)

(declare-fun call!551185 () Bool)

(assert (=> bm!551180 (= call!551185 (Exists!3385 (ite c!1171329 lambda!354127 lambda!354128)))))

(declare-fun b!6413971 () Bool)

(declare-fun e!3891981 () Bool)

(declare-fun e!3891985 () Bool)

(assert (=> b!6413971 (= e!3891981 e!3891985)))

(assert (=> b!6413971 (= c!1171329 ((_ is Star!16315) (regTwo!33143 r!7292)))))

(declare-fun b!6413972 () Bool)

(declare-fun res!2636050 () Bool)

(declare-fun e!3891980 () Bool)

(assert (=> b!6413972 (=> res!2636050 e!3891980)))

(assert (=> b!6413972 (= res!2636050 call!551184)))

(assert (=> b!6413972 (= e!3891985 e!3891980)))

(assert (=> b!6413973 (= e!3891980 call!551185)))

(declare-fun b!6413974 () Bool)

(declare-fun e!3891984 () Bool)

(declare-fun e!3891983 () Bool)

(assert (=> b!6413974 (= e!3891984 e!3891983)))

(declare-fun res!2636048 () Bool)

(assert (=> b!6413974 (= res!2636048 (not ((_ is EmptyLang!16315) (regTwo!33143 r!7292))))))

(assert (=> b!6413974 (=> (not res!2636048) (not e!3891983))))

(assert (=> b!6413975 (= e!3891985 call!551185)))

(declare-fun b!6413976 () Bool)

(declare-fun c!1171330 () Bool)

(assert (=> b!6413976 (= c!1171330 ((_ is ElementMatch!16315) (regTwo!33143 r!7292)))))

(declare-fun e!3891982 () Bool)

(assert (=> b!6413976 (= e!3891983 e!3891982)))

(declare-fun b!6413977 () Bool)

(declare-fun e!3891986 () Bool)

(assert (=> b!6413977 (= e!3891986 (matchRSpec!3416 (regTwo!33143 (regTwo!33143 r!7292)) s!2326))))

(declare-fun d!2011235 () Bool)

(declare-fun c!1171328 () Bool)

(assert (=> d!2011235 (= c!1171328 ((_ is EmptyExpr!16315) (regTwo!33143 r!7292)))))

(assert (=> d!2011235 (= (matchRSpec!3416 (regTwo!33143 r!7292) s!2326) e!3891984)))

(declare-fun b!6413978 () Bool)

(assert (=> b!6413978 (= e!3891982 (= s!2326 (Cons!65121 (c!1170970 (regTwo!33143 r!7292)) Nil!65121)))))

(declare-fun b!6413979 () Bool)

(assert (=> b!6413979 (= e!3891981 e!3891986)))

(declare-fun res!2636049 () Bool)

(assert (=> b!6413979 (= res!2636049 (matchRSpec!3416 (regOne!33143 (regTwo!33143 r!7292)) s!2326))))

(assert (=> b!6413979 (=> res!2636049 e!3891986)))

(declare-fun b!6413980 () Bool)

(declare-fun c!1171327 () Bool)

(assert (=> b!6413980 (= c!1171327 ((_ is Union!16315) (regTwo!33143 r!7292)))))

(assert (=> b!6413980 (= e!3891982 e!3891981)))

(declare-fun b!6413981 () Bool)

(assert (=> b!6413981 (= e!3891984 call!551184)))

(assert (= (and d!2011235 c!1171328) b!6413981))

(assert (= (and d!2011235 (not c!1171328)) b!6413974))

(assert (= (and b!6413974 res!2636048) b!6413976))

(assert (= (and b!6413976 c!1171330) b!6413978))

(assert (= (and b!6413976 (not c!1171330)) b!6413980))

(assert (= (and b!6413980 c!1171327) b!6413979))

(assert (= (and b!6413980 (not c!1171327)) b!6413971))

(assert (= (and b!6413979 (not res!2636049)) b!6413977))

(assert (= (and b!6413971 c!1171329) b!6413972))

(assert (= (and b!6413971 (not c!1171329)) b!6413975))

(assert (= (and b!6413972 (not res!2636050)) b!6413973))

(assert (= (or b!6413973 b!6413975) bm!551180))

(assert (= (or b!6413981 b!6413972) bm!551179))

(assert (=> bm!551179 m!7208618))

(declare-fun m!7209546 () Bool)

(assert (=> bm!551180 m!7209546))

(declare-fun m!7209548 () Bool)

(assert (=> b!6413977 m!7209548))

(declare-fun m!7209550 () Bool)

(assert (=> b!6413979 m!7209550))

(assert (=> b!6413156 d!2011235))

(declare-fun b!6413982 () Bool)

(declare-fun res!2636053 () Bool)

(declare-fun e!3891987 () Bool)

(assert (=> b!6413982 (=> res!2636053 e!3891987)))

(assert (=> b!6413982 (= res!2636053 (not ((_ is Concat!25160) (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292))))))))

(declare-fun e!3891988 () Bool)

(assert (=> b!6413982 (= e!3891988 e!3891987)))

(declare-fun b!6413983 () Bool)

(declare-fun e!3891990 () Bool)

(declare-fun e!3891992 () Bool)

(assert (=> b!6413983 (= e!3891990 e!3891992)))

(declare-fun res!2636054 () Bool)

(assert (=> b!6413983 (= res!2636054 (not (nullable!6308 (reg!16644 (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))))))))

(assert (=> b!6413983 (=> (not res!2636054) (not e!3891992))))

(declare-fun b!6413984 () Bool)

(declare-fun call!551188 () Bool)

(assert (=> b!6413984 (= e!3891992 call!551188)))

(declare-fun b!6413985 () Bool)

(declare-fun e!3891993 () Bool)

(assert (=> b!6413985 (= e!3891987 e!3891993)))

(declare-fun res!2636051 () Bool)

(assert (=> b!6413985 (=> (not res!2636051) (not e!3891993))))

(declare-fun call!551186 () Bool)

(assert (=> b!6413985 (= res!2636051 call!551186)))

(declare-fun bm!551181 () Bool)

(declare-fun call!551187 () Bool)

(assert (=> bm!551181 (= call!551187 call!551188)))

(declare-fun b!6413987 () Bool)

(declare-fun res!2636052 () Bool)

(declare-fun e!3891991 () Bool)

(assert (=> b!6413987 (=> (not res!2636052) (not e!3891991))))

(assert (=> b!6413987 (= res!2636052 call!551186)))

(assert (=> b!6413987 (= e!3891988 e!3891991)))

(declare-fun b!6413988 () Bool)

(declare-fun e!3891989 () Bool)

(assert (=> b!6413988 (= e!3891989 e!3891990)))

(declare-fun c!1171331 () Bool)

(assert (=> b!6413988 (= c!1171331 ((_ is Star!16315) (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))))))

(declare-fun c!1171332 () Bool)

(declare-fun bm!551182 () Bool)

(assert (=> bm!551182 (= call!551188 (validRegex!8051 (ite c!1171331 (reg!16644 (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))) (ite c!1171332 (regTwo!33143 (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))) (regTwo!33142 (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292))))))))))

(declare-fun bm!551183 () Bool)

(assert (=> bm!551183 (= call!551186 (validRegex!8051 (ite c!1171332 (regOne!33143 (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))) (regOne!33142 (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))))))))

(declare-fun b!6413989 () Bool)

(assert (=> b!6413989 (= e!3891990 e!3891988)))

(assert (=> b!6413989 (= c!1171332 ((_ is Union!16315) (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))))))

(declare-fun b!6413990 () Bool)

(assert (=> b!6413990 (= e!3891991 call!551187)))

(declare-fun d!2011237 () Bool)

(declare-fun res!2636055 () Bool)

(assert (=> d!2011237 (=> res!2636055 e!3891989)))

(assert (=> d!2011237 (= res!2636055 ((_ is ElementMatch!16315) (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))))))

(assert (=> d!2011237 (= (validRegex!8051 (ite c!1171047 (reg!16644 r!7292) (ite c!1171048 (regTwo!33143 r!7292) (regTwo!33142 r!7292)))) e!3891989)))

(declare-fun b!6413986 () Bool)

(assert (=> b!6413986 (= e!3891993 call!551187)))

(assert (= (and d!2011237 (not res!2636055)) b!6413988))

(assert (= (and b!6413988 c!1171331) b!6413983))

(assert (= (and b!6413988 (not c!1171331)) b!6413989))

(assert (= (and b!6413983 res!2636054) b!6413984))

(assert (= (and b!6413989 c!1171332) b!6413987))

(assert (= (and b!6413989 (not c!1171332)) b!6413982))

(assert (= (and b!6413987 res!2636052) b!6413990))

(assert (= (and b!6413982 (not res!2636053)) b!6413985))

(assert (= (and b!6413985 res!2636051) b!6413986))

(assert (= (or b!6413990 b!6413986) bm!551181))

(assert (= (or b!6413987 b!6413985) bm!551183))

(assert (= (or b!6413984 bm!551181) bm!551182))

(declare-fun m!7209552 () Bool)

(assert (=> b!6413983 m!7209552))

(declare-fun m!7209554 () Bool)

(assert (=> bm!551182 m!7209554))

(declare-fun m!7209556 () Bool)

(assert (=> bm!551183 m!7209556))

(assert (=> bm!551007 d!2011237))

(declare-fun b!6413993 () Bool)

(declare-fun res!2636056 () Bool)

(declare-fun e!3891994 () Bool)

(assert (=> b!6413993 (=> (not res!2636056) (not e!3891994))))

(declare-fun lt!2375397 () List!65245)

(assert (=> b!6413993 (= res!2636056 (= (size!40373 lt!2375397) (+ (size!40373 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121))) (size!40373 (t!378857 s!2326)))))))

(declare-fun b!6413994 () Bool)

(assert (=> b!6413994 (= e!3891994 (or (not (= (t!378857 s!2326) Nil!65121)) (= lt!2375397 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)))))))

(declare-fun b!6413991 () Bool)

(declare-fun e!3891995 () List!65245)

(assert (=> b!6413991 (= e!3891995 (t!378857 s!2326))))

(declare-fun b!6413992 () Bool)

(assert (=> b!6413992 (= e!3891995 (Cons!65121 (h!71569 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121))) (++!14383 (t!378857 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121))) (t!378857 s!2326))))))

(declare-fun d!2011239 () Bool)

(assert (=> d!2011239 e!3891994))

(declare-fun res!2636057 () Bool)

(assert (=> d!2011239 (=> (not res!2636057) (not e!3891994))))

(assert (=> d!2011239 (= res!2636057 (= (content!12344 lt!2375397) ((_ map or) (content!12344 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121))) (content!12344 (t!378857 s!2326)))))))

(assert (=> d!2011239 (= lt!2375397 e!3891995)))

(declare-fun c!1171333 () Bool)

(assert (=> d!2011239 (= c!1171333 ((_ is Nil!65121) (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121))))))

(assert (=> d!2011239 (= (++!14383 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326)) lt!2375397)))

(assert (= (and d!2011239 c!1171333) b!6413991))

(assert (= (and d!2011239 (not c!1171333)) b!6413992))

(assert (= (and d!2011239 res!2636057) b!6413993))

(assert (= (and b!6413993 res!2636056) b!6413994))

(declare-fun m!7209558 () Bool)

(assert (=> b!6413993 m!7209558))

(assert (=> b!6413993 m!7208720))

(declare-fun m!7209560 () Bool)

(assert (=> b!6413993 m!7209560))

(declare-fun m!7209562 () Bool)

(assert (=> b!6413993 m!7209562))

(declare-fun m!7209564 () Bool)

(assert (=> b!6413992 m!7209564))

(declare-fun m!7209566 () Bool)

(assert (=> d!2011239 m!7209566))

(assert (=> d!2011239 m!7208720))

(declare-fun m!7209568 () Bool)

(assert (=> d!2011239 m!7209568))

(declare-fun m!7209570 () Bool)

(assert (=> d!2011239 m!7209570))

(assert (=> b!6412861 d!2011239))

(declare-fun b!6413997 () Bool)

(declare-fun res!2636058 () Bool)

(declare-fun e!3891996 () Bool)

(assert (=> b!6413997 (=> (not res!2636058) (not e!3891996))))

(declare-fun lt!2375398 () List!65245)

(assert (=> b!6413997 (= res!2636058 (= (size!40373 lt!2375398) (+ (size!40373 Nil!65121) (size!40373 (Cons!65121 (h!71569 s!2326) Nil!65121)))))))

(declare-fun b!6413998 () Bool)

(assert (=> b!6413998 (= e!3891996 (or (not (= (Cons!65121 (h!71569 s!2326) Nil!65121) Nil!65121)) (= lt!2375398 Nil!65121)))))

(declare-fun b!6413995 () Bool)

(declare-fun e!3891997 () List!65245)

(assert (=> b!6413995 (= e!3891997 (Cons!65121 (h!71569 s!2326) Nil!65121))))

(declare-fun b!6413996 () Bool)

(assert (=> b!6413996 (= e!3891997 (Cons!65121 (h!71569 Nil!65121) (++!14383 (t!378857 Nil!65121) (Cons!65121 (h!71569 s!2326) Nil!65121))))))

(declare-fun d!2011241 () Bool)

(assert (=> d!2011241 e!3891996))

(declare-fun res!2636059 () Bool)

(assert (=> d!2011241 (=> (not res!2636059) (not e!3891996))))

(assert (=> d!2011241 (= res!2636059 (= (content!12344 lt!2375398) ((_ map or) (content!12344 Nil!65121) (content!12344 (Cons!65121 (h!71569 s!2326) Nil!65121)))))))

(assert (=> d!2011241 (= lt!2375398 e!3891997)))

(declare-fun c!1171334 () Bool)

(assert (=> d!2011241 (= c!1171334 ((_ is Nil!65121) Nil!65121))))

(assert (=> d!2011241 (= (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) lt!2375398)))

(assert (= (and d!2011241 c!1171334) b!6413995))

(assert (= (and d!2011241 (not c!1171334)) b!6413996))

(assert (= (and d!2011241 res!2636059) b!6413997))

(assert (= (and b!6413997 res!2636058) b!6413998))

(declare-fun m!7209572 () Bool)

(assert (=> b!6413997 m!7209572))

(declare-fun m!7209574 () Bool)

(assert (=> b!6413997 m!7209574))

(declare-fun m!7209576 () Bool)

(assert (=> b!6413997 m!7209576))

(declare-fun m!7209578 () Bool)

(assert (=> b!6413996 m!7209578))

(declare-fun m!7209580 () Bool)

(assert (=> d!2011241 m!7209580))

(declare-fun m!7209582 () Bool)

(assert (=> d!2011241 m!7209582))

(declare-fun m!7209584 () Bool)

(assert (=> d!2011241 m!7209584))

(assert (=> b!6412861 d!2011241))

(declare-fun d!2011243 () Bool)

(assert (=> d!2011243 (= (++!14383 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326)) s!2326)))

(declare-fun lt!2375401 () Unit!158591)

(declare-fun choose!47646 (List!65245 C!32900 List!65245 List!65245) Unit!158591)

(assert (=> d!2011243 (= lt!2375401 (choose!47646 Nil!65121 (h!71569 s!2326) (t!378857 s!2326) s!2326))))

(assert (=> d!2011243 (= (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) (t!378857 s!2326))) s!2326)))

(assert (=> d!2011243 (= (lemmaMoveElementToOtherListKeepsConcatEq!2477 Nil!65121 (h!71569 s!2326) (t!378857 s!2326) s!2326) lt!2375401)))

(declare-fun bs!1612400 () Bool)

(assert (= bs!1612400 d!2011243))

(assert (=> bs!1612400 m!7208720))

(assert (=> bs!1612400 m!7208720))

(assert (=> bs!1612400 m!7208722))

(declare-fun m!7209586 () Bool)

(assert (=> bs!1612400 m!7209586))

(declare-fun m!7209588 () Bool)

(assert (=> bs!1612400 m!7209588))

(assert (=> b!6412861 d!2011243))

(declare-fun b!6413999 () Bool)

(declare-fun res!2636062 () Bool)

(declare-fun e!3891998 () Bool)

(assert (=> b!6413999 (=> (not res!2636062) (not e!3891998))))

(declare-fun lt!2375404 () Option!16206)

(assert (=> b!6413999 (= res!2636062 (matchR!8498 (regOne!33142 r!7292) (_1!36597 (get!22556 lt!2375404))))))

(declare-fun b!6414000 () Bool)

(declare-fun e!3892002 () Option!16206)

(assert (=> b!6414000 (= e!3892002 None!16205)))

(declare-fun b!6414001 () Bool)

(declare-fun lt!2375403 () Unit!158591)

(declare-fun lt!2375402 () Unit!158591)

(assert (=> b!6414001 (= lt!2375403 lt!2375402)))

(assert (=> b!6414001 (= (++!14383 (++!14383 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (Cons!65121 (h!71569 (t!378857 s!2326)) Nil!65121)) (t!378857 (t!378857 s!2326))) s!2326)))

(assert (=> b!6414001 (= lt!2375402 (lemmaMoveElementToOtherListKeepsConcatEq!2477 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (h!71569 (t!378857 s!2326)) (t!378857 (t!378857 s!2326)) s!2326))))

(assert (=> b!6414001 (= e!3892002 (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) (++!14383 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (Cons!65121 (h!71569 (t!378857 s!2326)) Nil!65121)) (t!378857 (t!378857 s!2326)) s!2326))))

(declare-fun b!6414002 () Bool)

(declare-fun e!3892000 () Option!16206)

(assert (=> b!6414002 (= e!3892000 e!3892002)))

(declare-fun c!1171335 () Bool)

(assert (=> b!6414002 (= c!1171335 ((_ is Nil!65121) (t!378857 s!2326)))))

(declare-fun b!6414003 () Bool)

(declare-fun e!3891999 () Bool)

(assert (=> b!6414003 (= e!3891999 (matchR!8498 (regTwo!33142 r!7292) (t!378857 s!2326)))))

(declare-fun b!6414004 () Bool)

(declare-fun res!2636061 () Bool)

(assert (=> b!6414004 (=> (not res!2636061) (not e!3891998))))

(assert (=> b!6414004 (= res!2636061 (matchR!8498 (regTwo!33142 r!7292) (_2!36597 (get!22556 lt!2375404))))))

(declare-fun b!6414005 () Bool)

(assert (=> b!6414005 (= e!3892000 (Some!16205 (tuple2!66589 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326))))))

(declare-fun b!6414006 () Bool)

(assert (=> b!6414006 (= e!3891998 (= (++!14383 (_1!36597 (get!22556 lt!2375404)) (_2!36597 (get!22556 lt!2375404))) s!2326))))

(declare-fun b!6414007 () Bool)

(declare-fun e!3892001 () Bool)

(assert (=> b!6414007 (= e!3892001 (not (isDefined!12909 lt!2375404)))))

(declare-fun d!2011245 () Bool)

(assert (=> d!2011245 e!3892001))

(declare-fun res!2636060 () Bool)

(assert (=> d!2011245 (=> res!2636060 e!3892001)))

(assert (=> d!2011245 (= res!2636060 e!3891998)))

(declare-fun res!2636063 () Bool)

(assert (=> d!2011245 (=> (not res!2636063) (not e!3891998))))

(assert (=> d!2011245 (= res!2636063 (isDefined!12909 lt!2375404))))

(assert (=> d!2011245 (= lt!2375404 e!3892000)))

(declare-fun c!1171336 () Bool)

(assert (=> d!2011245 (= c!1171336 e!3891999)))

(declare-fun res!2636064 () Bool)

(assert (=> d!2011245 (=> (not res!2636064) (not e!3891999))))

(assert (=> d!2011245 (= res!2636064 (matchR!8498 (regOne!33142 r!7292) (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121))))))

(assert (=> d!2011245 (validRegex!8051 (regOne!33142 r!7292))))

(assert (=> d!2011245 (= (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326) s!2326) lt!2375404)))

(assert (= (and d!2011245 res!2636064) b!6414003))

(assert (= (and d!2011245 c!1171336) b!6414005))

(assert (= (and d!2011245 (not c!1171336)) b!6414002))

(assert (= (and b!6414002 c!1171335) b!6414000))

(assert (= (and b!6414002 (not c!1171335)) b!6414001))

(assert (= (and d!2011245 res!2636063) b!6413999))

(assert (= (and b!6413999 res!2636062) b!6414004))

(assert (= (and b!6414004 res!2636061) b!6414006))

(assert (= (and d!2011245 (not res!2636060)) b!6414007))

(declare-fun m!7209590 () Bool)

(assert (=> b!6413999 m!7209590))

(declare-fun m!7209592 () Bool)

(assert (=> b!6413999 m!7209592))

(declare-fun m!7209594 () Bool)

(assert (=> b!6414007 m!7209594))

(assert (=> b!6414004 m!7209590))

(declare-fun m!7209596 () Bool)

(assert (=> b!6414004 m!7209596))

(declare-fun m!7209598 () Bool)

(assert (=> b!6414003 m!7209598))

(assert (=> d!2011245 m!7209594))

(assert (=> d!2011245 m!7208720))

(declare-fun m!7209600 () Bool)

(assert (=> d!2011245 m!7209600))

(assert (=> d!2011245 m!7208718))

(assert (=> b!6414001 m!7208720))

(declare-fun m!7209602 () Bool)

(assert (=> b!6414001 m!7209602))

(assert (=> b!6414001 m!7209602))

(declare-fun m!7209604 () Bool)

(assert (=> b!6414001 m!7209604))

(assert (=> b!6414001 m!7208720))

(declare-fun m!7209606 () Bool)

(assert (=> b!6414001 m!7209606))

(assert (=> b!6414001 m!7209602))

(declare-fun m!7209608 () Bool)

(assert (=> b!6414001 m!7209608))

(assert (=> b!6414006 m!7209590))

(declare-fun m!7209610 () Bool)

(assert (=> b!6414006 m!7209610))

(assert (=> b!6412861 d!2011245))

(declare-fun d!2011247 () Bool)

(assert (=> d!2011247 true))

(assert (=> d!2011247 true))

(declare-fun res!2636067 () Bool)

(assert (=> d!2011247 (= (choose!47631 lambda!354024) res!2636067)))

(assert (=> d!2010985 d!2011247))

(declare-fun d!2011249 () Bool)

(assert (=> d!2011249 (= (Exists!3385 (ite c!1171098 lambda!354070 lambda!354073)) (choose!47631 (ite c!1171098 lambda!354070 lambda!354073)))))

(declare-fun bs!1612401 () Bool)

(assert (= bs!1612401 d!2011249))

(declare-fun m!7209612 () Bool)

(assert (=> bs!1612401 m!7209612))

(assert (=> bm!551039 d!2011249))

(declare-fun d!2011251 () Bool)

(assert (=> d!2011251 (= (isEmpty!37269 s!2326) ((_ is Nil!65121) s!2326))))

(assert (=> d!2011007 d!2011251))

(declare-fun b!6414008 () Bool)

(declare-fun res!2636070 () Bool)

(declare-fun e!3892003 () Bool)

(assert (=> b!6414008 (=> res!2636070 e!3892003)))

(assert (=> b!6414008 (= res!2636070 (not ((_ is Concat!25160) lt!2375210)))))

(declare-fun e!3892004 () Bool)

(assert (=> b!6414008 (= e!3892004 e!3892003)))

(declare-fun b!6414009 () Bool)

(declare-fun e!3892006 () Bool)

(declare-fun e!3892008 () Bool)

(assert (=> b!6414009 (= e!3892006 e!3892008)))

(declare-fun res!2636071 () Bool)

(assert (=> b!6414009 (= res!2636071 (not (nullable!6308 (reg!16644 lt!2375210))))))

(assert (=> b!6414009 (=> (not res!2636071) (not e!3892008))))

(declare-fun b!6414010 () Bool)

(declare-fun call!551191 () Bool)

(assert (=> b!6414010 (= e!3892008 call!551191)))

(declare-fun b!6414011 () Bool)

(declare-fun e!3892009 () Bool)

(assert (=> b!6414011 (= e!3892003 e!3892009)))

(declare-fun res!2636068 () Bool)

(assert (=> b!6414011 (=> (not res!2636068) (not e!3892009))))

(declare-fun call!551189 () Bool)

(assert (=> b!6414011 (= res!2636068 call!551189)))

(declare-fun bm!551184 () Bool)

(declare-fun call!551190 () Bool)

(assert (=> bm!551184 (= call!551190 call!551191)))

(declare-fun b!6414013 () Bool)

(declare-fun res!2636069 () Bool)

(declare-fun e!3892007 () Bool)

(assert (=> b!6414013 (=> (not res!2636069) (not e!3892007))))

(assert (=> b!6414013 (= res!2636069 call!551189)))

(assert (=> b!6414013 (= e!3892004 e!3892007)))

(declare-fun b!6414014 () Bool)

(declare-fun e!3892005 () Bool)

(assert (=> b!6414014 (= e!3892005 e!3892006)))

(declare-fun c!1171337 () Bool)

(assert (=> b!6414014 (= c!1171337 ((_ is Star!16315) lt!2375210))))

(declare-fun c!1171338 () Bool)

(declare-fun bm!551185 () Bool)

(assert (=> bm!551185 (= call!551191 (validRegex!8051 (ite c!1171337 (reg!16644 lt!2375210) (ite c!1171338 (regTwo!33143 lt!2375210) (regTwo!33142 lt!2375210)))))))

(declare-fun bm!551186 () Bool)

(assert (=> bm!551186 (= call!551189 (validRegex!8051 (ite c!1171338 (regOne!33143 lt!2375210) (regOne!33142 lt!2375210))))))

(declare-fun b!6414015 () Bool)

(assert (=> b!6414015 (= e!3892006 e!3892004)))

(assert (=> b!6414015 (= c!1171338 ((_ is Union!16315) lt!2375210))))

(declare-fun b!6414016 () Bool)

(assert (=> b!6414016 (= e!3892007 call!551190)))

(declare-fun d!2011253 () Bool)

(declare-fun res!2636072 () Bool)

(assert (=> d!2011253 (=> res!2636072 e!3892005)))

(assert (=> d!2011253 (= res!2636072 ((_ is ElementMatch!16315) lt!2375210))))

(assert (=> d!2011253 (= (validRegex!8051 lt!2375210) e!3892005)))

(declare-fun b!6414012 () Bool)

(assert (=> b!6414012 (= e!3892009 call!551190)))

(assert (= (and d!2011253 (not res!2636072)) b!6414014))

(assert (= (and b!6414014 c!1171337) b!6414009))

(assert (= (and b!6414014 (not c!1171337)) b!6414015))

(assert (= (and b!6414009 res!2636071) b!6414010))

(assert (= (and b!6414015 c!1171338) b!6414013))

(assert (= (and b!6414015 (not c!1171338)) b!6414008))

(assert (= (and b!6414013 res!2636069) b!6414016))

(assert (= (and b!6414008 (not res!2636070)) b!6414011))

(assert (= (and b!6414011 res!2636068) b!6414012))

(assert (= (or b!6414016 b!6414012) bm!551184))

(assert (= (or b!6414013 b!6414011) bm!551186))

(assert (= (or b!6414010 bm!551184) bm!551185))

(declare-fun m!7209614 () Bool)

(assert (=> b!6414009 m!7209614))

(declare-fun m!7209616 () Bool)

(assert (=> bm!551185 m!7209616))

(declare-fun m!7209618 () Bool)

(assert (=> bm!551186 m!7209618))

(assert (=> d!2011007 d!2011253))

(assert (=> d!2011169 d!2011165))

(declare-fun d!2011255 () Bool)

(assert (=> d!2011255 (= (flatMap!1820 lt!2375183 lambda!354023) (dynLambda!25862 lambda!354023 lt!2375204))))

(assert (=> d!2011255 true))

(declare-fun _$13!3623 () Unit!158591)

(assert (=> d!2011255 (= (choose!47644 lt!2375183 lt!2375204 lambda!354023) _$13!3623)))

(declare-fun b_lambda!243837 () Bool)

(assert (=> (not b_lambda!243837) (not d!2011255)))

(declare-fun bs!1612402 () Bool)

(assert (= bs!1612402 d!2011255))

(assert (=> bs!1612402 m!7208474))

(assert (=> bs!1612402 m!7209478))

(assert (=> d!2011169 d!2011255))

(declare-fun d!2011257 () Bool)

(assert (=> d!2011257 (= (nullable!6308 lt!2375222) (nullableFct!2254 lt!2375222))))

(declare-fun bs!1612403 () Bool)

(assert (= bs!1612403 d!2011257))

(declare-fun m!7209620 () Bool)

(assert (=> bs!1612403 m!7209620))

(assert (=> b!6413033 d!2011257))

(declare-fun b!6414017 () Bool)

(declare-fun res!2636076 () Bool)

(declare-fun e!3892011 () Bool)

(assert (=> b!6414017 (=> res!2636076 e!3892011)))

(assert (=> b!6414017 (= res!2636076 (not (isEmpty!37269 (tail!12205 (tail!12205 s!2326)))))))

(declare-fun b!6414018 () Bool)

(declare-fun res!2636073 () Bool)

(declare-fun e!3892010 () Bool)

(assert (=> b!6414018 (=> res!2636073 e!3892010)))

(assert (=> b!6414018 (= res!2636073 (not ((_ is ElementMatch!16315) (derivativeStep!5019 lt!2375210 (head!13120 s!2326)))))))

(declare-fun e!3892014 () Bool)

(assert (=> b!6414018 (= e!3892014 e!3892010)))

(declare-fun b!6414019 () Bool)

(declare-fun res!2636080 () Bool)

(declare-fun e!3892013 () Bool)

(assert (=> b!6414019 (=> (not res!2636080) (not e!3892013))))

(assert (=> b!6414019 (= res!2636080 (isEmpty!37269 (tail!12205 (tail!12205 s!2326))))))

(declare-fun b!6414020 () Bool)

(declare-fun res!2636077 () Bool)

(assert (=> b!6414020 (=> res!2636077 e!3892010)))

(assert (=> b!6414020 (= res!2636077 e!3892013)))

(declare-fun res!2636074 () Bool)

(assert (=> b!6414020 (=> (not res!2636074) (not e!3892013))))

(declare-fun lt!2375405 () Bool)

(assert (=> b!6414020 (= res!2636074 lt!2375405)))

(declare-fun bm!551187 () Bool)

(declare-fun call!551192 () Bool)

(assert (=> bm!551187 (= call!551192 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun b!6414021 () Bool)

(declare-fun e!3892012 () Bool)

(assert (=> b!6414021 (= e!3892012 (nullable!6308 (derivativeStep!5019 lt!2375210 (head!13120 s!2326))))))

(declare-fun b!6414022 () Bool)

(declare-fun e!3892016 () Bool)

(assert (=> b!6414022 (= e!3892010 e!3892016)))

(declare-fun res!2636079 () Bool)

(assert (=> b!6414022 (=> (not res!2636079) (not e!3892016))))

(assert (=> b!6414022 (= res!2636079 (not lt!2375405))))

(declare-fun b!6414023 () Bool)

(assert (=> b!6414023 (= e!3892016 e!3892011)))

(declare-fun res!2636078 () Bool)

(assert (=> b!6414023 (=> res!2636078 e!3892011)))

(assert (=> b!6414023 (= res!2636078 call!551192)))

(declare-fun b!6414024 () Bool)

(assert (=> b!6414024 (= e!3892013 (= (head!13120 (tail!12205 s!2326)) (c!1170970 (derivativeStep!5019 lt!2375210 (head!13120 s!2326)))))))

(declare-fun b!6414025 () Bool)

(assert (=> b!6414025 (= e!3892011 (not (= (head!13120 (tail!12205 s!2326)) (c!1170970 (derivativeStep!5019 lt!2375210 (head!13120 s!2326))))))))

(declare-fun d!2011259 () Bool)

(declare-fun e!3892015 () Bool)

(assert (=> d!2011259 e!3892015))

(declare-fun c!1171341 () Bool)

(assert (=> d!2011259 (= c!1171341 ((_ is EmptyExpr!16315) (derivativeStep!5019 lt!2375210 (head!13120 s!2326))))))

(assert (=> d!2011259 (= lt!2375405 e!3892012)))

(declare-fun c!1171340 () Bool)

(assert (=> d!2011259 (= c!1171340 (isEmpty!37269 (tail!12205 s!2326)))))

(assert (=> d!2011259 (validRegex!8051 (derivativeStep!5019 lt!2375210 (head!13120 s!2326)))))

(assert (=> d!2011259 (= (matchR!8498 (derivativeStep!5019 lt!2375210 (head!13120 s!2326)) (tail!12205 s!2326)) lt!2375405)))

(declare-fun b!6414026 () Bool)

(declare-fun res!2636075 () Bool)

(assert (=> b!6414026 (=> (not res!2636075) (not e!3892013))))

(assert (=> b!6414026 (= res!2636075 (not call!551192))))

(declare-fun b!6414027 () Bool)

(assert (=> b!6414027 (= e!3892014 (not lt!2375405))))

(declare-fun b!6414028 () Bool)

(assert (=> b!6414028 (= e!3892012 (matchR!8498 (derivativeStep!5019 (derivativeStep!5019 lt!2375210 (head!13120 s!2326)) (head!13120 (tail!12205 s!2326))) (tail!12205 (tail!12205 s!2326))))))

(declare-fun b!6414029 () Bool)

(assert (=> b!6414029 (= e!3892015 (= lt!2375405 call!551192))))

(declare-fun b!6414030 () Bool)

(assert (=> b!6414030 (= e!3892015 e!3892014)))

(declare-fun c!1171339 () Bool)

(assert (=> b!6414030 (= c!1171339 ((_ is EmptyLang!16315) (derivativeStep!5019 lt!2375210 (head!13120 s!2326))))))

(assert (= (and d!2011259 c!1171340) b!6414021))

(assert (= (and d!2011259 (not c!1171340)) b!6414028))

(assert (= (and d!2011259 c!1171341) b!6414029))

(assert (= (and d!2011259 (not c!1171341)) b!6414030))

(assert (= (and b!6414030 c!1171339) b!6414027))

(assert (= (and b!6414030 (not c!1171339)) b!6414018))

(assert (= (and b!6414018 (not res!2636073)) b!6414020))

(assert (= (and b!6414020 res!2636074) b!6414026))

(assert (= (and b!6414026 res!2636075) b!6414019))

(assert (= (and b!6414019 res!2636080) b!6414024))

(assert (= (and b!6414020 (not res!2636077)) b!6414022))

(assert (= (and b!6414022 res!2636079) b!6414023))

(assert (= (and b!6414023 (not res!2636078)) b!6414017))

(assert (= (and b!6414017 (not res!2636076)) b!6414025))

(assert (= (or b!6414029 b!6414023 b!6414026) bm!551187))

(assert (=> d!2011259 m!7208626))

(assert (=> d!2011259 m!7208898))

(assert (=> d!2011259 m!7209036))

(declare-fun m!7209622 () Bool)

(assert (=> d!2011259 m!7209622))

(assert (=> b!6414025 m!7208626))

(declare-fun m!7209624 () Bool)

(assert (=> b!6414025 m!7209624))

(assert (=> b!6414021 m!7209036))

(declare-fun m!7209626 () Bool)

(assert (=> b!6414021 m!7209626))

(assert (=> b!6414024 m!7208626))

(assert (=> b!6414024 m!7209624))

(assert (=> b!6414028 m!7208626))

(assert (=> b!6414028 m!7209624))

(assert (=> b!6414028 m!7209036))

(assert (=> b!6414028 m!7209624))

(declare-fun m!7209628 () Bool)

(assert (=> b!6414028 m!7209628))

(assert (=> b!6414028 m!7208626))

(declare-fun m!7209630 () Bool)

(assert (=> b!6414028 m!7209630))

(assert (=> b!6414028 m!7209628))

(assert (=> b!6414028 m!7209630))

(declare-fun m!7209632 () Bool)

(assert (=> b!6414028 m!7209632))

(assert (=> b!6414019 m!7208626))

(assert (=> b!6414019 m!7209630))

(assert (=> b!6414019 m!7209630))

(declare-fun m!7209634 () Bool)

(assert (=> b!6414019 m!7209634))

(assert (=> bm!551187 m!7208626))

(assert (=> bm!551187 m!7208898))

(assert (=> b!6414017 m!7208626))

(assert (=> b!6414017 m!7209630))

(assert (=> b!6414017 m!7209630))

(assert (=> b!6414017 m!7209634))

(assert (=> b!6413386 d!2011259))

(declare-fun call!551202 () Regex!16315)

(declare-fun call!551203 () Regex!16315)

(declare-fun e!3892030 () Regex!16315)

(declare-fun b!6414051 () Bool)

(assert (=> b!6414051 (= e!3892030 (Union!16315 (Concat!25160 call!551202 (regTwo!33142 lt!2375210)) call!551203))))

(declare-fun b!6414052 () Bool)

(declare-fun e!3892028 () Regex!16315)

(declare-fun e!3892031 () Regex!16315)

(assert (=> b!6414052 (= e!3892028 e!3892031)))

(declare-fun c!1171354 () Bool)

(assert (=> b!6414052 (= c!1171354 ((_ is Star!16315) lt!2375210))))

(declare-fun b!6414053 () Bool)

(declare-fun e!3892029 () Regex!16315)

(assert (=> b!6414053 (= e!3892029 EmptyLang!16315)))

(declare-fun c!1171355 () Bool)

(declare-fun c!1171352 () Bool)

(declare-fun bm!551196 () Bool)

(declare-fun call!551204 () Regex!16315)

(assert (=> bm!551196 (= call!551204 (derivativeStep!5019 (ite c!1171352 (regTwo!33143 lt!2375210) (ite c!1171354 (reg!16644 lt!2375210) (ite c!1171355 (regTwo!33142 lt!2375210) (regOne!33142 lt!2375210)))) (head!13120 s!2326)))))

(declare-fun b!6414054 () Bool)

(assert (=> b!6414054 (= c!1171355 (nullable!6308 (regOne!33142 lt!2375210)))))

(assert (=> b!6414054 (= e!3892031 e!3892030)))

(declare-fun b!6414055 () Bool)

(assert (=> b!6414055 (= e!3892028 (Union!16315 call!551202 call!551204))))

(declare-fun b!6414056 () Bool)

(declare-fun e!3892027 () Regex!16315)

(assert (=> b!6414056 (= e!3892027 (ite (= (head!13120 s!2326) (c!1170970 lt!2375210)) EmptyExpr!16315 EmptyLang!16315))))

(declare-fun bm!551197 () Bool)

(declare-fun call!551201 () Regex!16315)

(assert (=> bm!551197 (= call!551201 call!551204)))

(declare-fun d!2011261 () Bool)

(declare-fun lt!2375408 () Regex!16315)

(assert (=> d!2011261 (validRegex!8051 lt!2375408)))

(assert (=> d!2011261 (= lt!2375408 e!3892029)))

(declare-fun c!1171353 () Bool)

(assert (=> d!2011261 (= c!1171353 (or ((_ is EmptyExpr!16315) lt!2375210) ((_ is EmptyLang!16315) lt!2375210)))))

(assert (=> d!2011261 (validRegex!8051 lt!2375210)))

(assert (=> d!2011261 (= (derivativeStep!5019 lt!2375210 (head!13120 s!2326)) lt!2375408)))

(declare-fun b!6414057 () Bool)

(assert (=> b!6414057 (= e!3892031 (Concat!25160 call!551201 lt!2375210))))

(declare-fun bm!551198 () Bool)

(assert (=> bm!551198 (= call!551202 (derivativeStep!5019 (ite c!1171352 (regOne!33143 lt!2375210) (regOne!33142 lt!2375210)) (head!13120 s!2326)))))

(declare-fun b!6414058 () Bool)

(assert (=> b!6414058 (= c!1171352 ((_ is Union!16315) lt!2375210))))

(assert (=> b!6414058 (= e!3892027 e!3892028)))

(declare-fun b!6414059 () Bool)

(assert (=> b!6414059 (= e!3892029 e!3892027)))

(declare-fun c!1171356 () Bool)

(assert (=> b!6414059 (= c!1171356 ((_ is ElementMatch!16315) lt!2375210))))

(declare-fun b!6414060 () Bool)

(assert (=> b!6414060 (= e!3892030 (Union!16315 (Concat!25160 call!551203 (regTwo!33142 lt!2375210)) EmptyLang!16315))))

(declare-fun bm!551199 () Bool)

(assert (=> bm!551199 (= call!551203 call!551201)))

(assert (= (and d!2011261 c!1171353) b!6414053))

(assert (= (and d!2011261 (not c!1171353)) b!6414059))

(assert (= (and b!6414059 c!1171356) b!6414056))

(assert (= (and b!6414059 (not c!1171356)) b!6414058))

(assert (= (and b!6414058 c!1171352) b!6414055))

(assert (= (and b!6414058 (not c!1171352)) b!6414052))

(assert (= (and b!6414052 c!1171354) b!6414057))

(assert (= (and b!6414052 (not c!1171354)) b!6414054))

(assert (= (and b!6414054 c!1171355) b!6414051))

(assert (= (and b!6414054 (not c!1171355)) b!6414060))

(assert (= (or b!6414051 b!6414060) bm!551199))

(assert (= (or b!6414057 bm!551199) bm!551197))

(assert (= (or b!6414055 bm!551197) bm!551196))

(assert (= (or b!6414055 b!6414051) bm!551198))

(assert (=> bm!551196 m!7208622))

(declare-fun m!7209636 () Bool)

(assert (=> bm!551196 m!7209636))

(declare-fun m!7209638 () Bool)

(assert (=> b!6414054 m!7209638))

(declare-fun m!7209640 () Bool)

(assert (=> d!2011261 m!7209640))

(assert (=> d!2011261 m!7209032))

(assert (=> bm!551198 m!7208622))

(declare-fun m!7209642 () Bool)

(assert (=> bm!551198 m!7209642))

(assert (=> b!6413386 d!2011261))

(assert (=> b!6413386 d!2011199))

(assert (=> b!6413386 d!2011207))

(declare-fun d!2011263 () Bool)

(assert (=> d!2011263 (= (nullable!6308 (h!71568 (exprs!6199 lt!2375204))) (nullableFct!2254 (h!71568 (exprs!6199 lt!2375204))))))

(declare-fun bs!1612404 () Bool)

(assert (= bs!1612404 d!2011263))

(declare-fun m!7209644 () Bool)

(assert (=> bs!1612404 m!7209644))

(assert (=> b!6413863 d!2011263))

(assert (=> b!6413598 d!2011173))

(assert (=> d!2010971 d!2010967))

(assert (=> d!2010971 d!2010969))

(declare-fun d!2011265 () Bool)

(assert (=> d!2011265 (= (matchR!8498 lt!2375201 s!2326) (matchRSpec!3416 lt!2375201 s!2326))))

(assert (=> d!2011265 true))

(declare-fun _$88!5107 () Unit!158591)

(assert (=> d!2011265 (= (choose!47640 lt!2375201 s!2326) _$88!5107)))

(declare-fun bs!1612405 () Bool)

(assert (= bs!1612405 d!2011265))

(assert (=> bs!1612405 m!7208498))

(assert (=> bs!1612405 m!7208500))

(assert (=> d!2010971 d!2011265))

(declare-fun b!6414061 () Bool)

(declare-fun res!2636083 () Bool)

(declare-fun e!3892032 () Bool)

(assert (=> b!6414061 (=> res!2636083 e!3892032)))

(assert (=> b!6414061 (= res!2636083 (not ((_ is Concat!25160) lt!2375201)))))

(declare-fun e!3892033 () Bool)

(assert (=> b!6414061 (= e!3892033 e!3892032)))

(declare-fun b!6414062 () Bool)

(declare-fun e!3892035 () Bool)

(declare-fun e!3892037 () Bool)

(assert (=> b!6414062 (= e!3892035 e!3892037)))

(declare-fun res!2636084 () Bool)

(assert (=> b!6414062 (= res!2636084 (not (nullable!6308 (reg!16644 lt!2375201))))))

(assert (=> b!6414062 (=> (not res!2636084) (not e!3892037))))

(declare-fun b!6414063 () Bool)

(declare-fun call!551207 () Bool)

(assert (=> b!6414063 (= e!3892037 call!551207)))

(declare-fun b!6414064 () Bool)

(declare-fun e!3892038 () Bool)

(assert (=> b!6414064 (= e!3892032 e!3892038)))

(declare-fun res!2636081 () Bool)

(assert (=> b!6414064 (=> (not res!2636081) (not e!3892038))))

(declare-fun call!551205 () Bool)

(assert (=> b!6414064 (= res!2636081 call!551205)))

(declare-fun bm!551200 () Bool)

(declare-fun call!551206 () Bool)

(assert (=> bm!551200 (= call!551206 call!551207)))

(declare-fun b!6414066 () Bool)

(declare-fun res!2636082 () Bool)

(declare-fun e!3892036 () Bool)

(assert (=> b!6414066 (=> (not res!2636082) (not e!3892036))))

(assert (=> b!6414066 (= res!2636082 call!551205)))

(assert (=> b!6414066 (= e!3892033 e!3892036)))

(declare-fun b!6414067 () Bool)

(declare-fun e!3892034 () Bool)

(assert (=> b!6414067 (= e!3892034 e!3892035)))

(declare-fun c!1171357 () Bool)

(assert (=> b!6414067 (= c!1171357 ((_ is Star!16315) lt!2375201))))

(declare-fun c!1171358 () Bool)

(declare-fun bm!551201 () Bool)

(assert (=> bm!551201 (= call!551207 (validRegex!8051 (ite c!1171357 (reg!16644 lt!2375201) (ite c!1171358 (regTwo!33143 lt!2375201) (regTwo!33142 lt!2375201)))))))

(declare-fun bm!551202 () Bool)

(assert (=> bm!551202 (= call!551205 (validRegex!8051 (ite c!1171358 (regOne!33143 lt!2375201) (regOne!33142 lt!2375201))))))

(declare-fun b!6414068 () Bool)

(assert (=> b!6414068 (= e!3892035 e!3892033)))

(assert (=> b!6414068 (= c!1171358 ((_ is Union!16315) lt!2375201))))

(declare-fun b!6414069 () Bool)

(assert (=> b!6414069 (= e!3892036 call!551206)))

(declare-fun d!2011267 () Bool)

(declare-fun res!2636085 () Bool)

(assert (=> d!2011267 (=> res!2636085 e!3892034)))

(assert (=> d!2011267 (= res!2636085 ((_ is ElementMatch!16315) lt!2375201))))

(assert (=> d!2011267 (= (validRegex!8051 lt!2375201) e!3892034)))

(declare-fun b!6414065 () Bool)

(assert (=> b!6414065 (= e!3892038 call!551206)))

(assert (= (and d!2011267 (not res!2636085)) b!6414067))

(assert (= (and b!6414067 c!1171357) b!6414062))

(assert (= (and b!6414067 (not c!1171357)) b!6414068))

(assert (= (and b!6414062 res!2636084) b!6414063))

(assert (= (and b!6414068 c!1171358) b!6414066))

(assert (= (and b!6414068 (not c!1171358)) b!6414061))

(assert (= (and b!6414066 res!2636082) b!6414069))

(assert (= (and b!6414061 (not res!2636083)) b!6414064))

(assert (= (and b!6414064 res!2636081) b!6414065))

(assert (= (or b!6414069 b!6414065) bm!551200))

(assert (= (or b!6414066 b!6414064) bm!551202))

(assert (= (or b!6414063 bm!551200) bm!551201))

(declare-fun m!7209646 () Bool)

(assert (=> b!6414062 m!7209646))

(declare-fun m!7209648 () Bool)

(assert (=> bm!551201 m!7209648))

(declare-fun m!7209650 () Bool)

(assert (=> bm!551202 m!7209650))

(assert (=> d!2010971 d!2011267))

(assert (=> b!6413753 d!2010999))

(declare-fun bs!1612406 () Bool)

(declare-fun d!2011269 () Bool)

(assert (= bs!1612406 (and d!2011269 d!2011135)))

(declare-fun lambda!354129 () Int)

(assert (=> bs!1612406 (= lambda!354129 lambda!354123)))

(declare-fun bs!1612407 () Bool)

(assert (= bs!1612407 (and d!2011269 d!2011231)))

(assert (=> bs!1612407 (= lambda!354129 lambda!354126)))

(declare-fun bs!1612408 () Bool)

(assert (= bs!1612408 (and d!2011269 d!2011049)))

(assert (=> bs!1612408 (= lambda!354129 lambda!354098)))

(declare-fun bs!1612409 () Bool)

(assert (= bs!1612409 (and d!2011269 d!2011171)))

(assert (=> bs!1612409 (= lambda!354129 lambda!354125)))

(declare-fun bs!1612410 () Bool)

(assert (= bs!1612410 (and d!2011269 d!2010999)))

(assert (=> bs!1612410 (= lambda!354129 lambda!354084)))

(declare-fun bs!1612411 () Bool)

(assert (= bs!1612411 (and d!2011269 d!2011077)))

(assert (=> bs!1612411 (= lambda!354129 lambda!354116)))

(declare-fun bs!1612412 () Bool)

(assert (= bs!1612412 (and d!2011269 d!2011089)))

(assert (=> bs!1612412 (= lambda!354129 lambda!354119)))

(declare-fun lt!2375409 () List!65244)

(assert (=> d!2011269 (forall!15504 lt!2375409 lambda!354129)))

(declare-fun e!3892039 () List!65244)

(assert (=> d!2011269 (= lt!2375409 e!3892039)))

(declare-fun c!1171359 () Bool)

(assert (=> d!2011269 (= c!1171359 ((_ is Cons!65122) (t!378858 zl!343)))))

(assert (=> d!2011269 (= (unfocusZipperList!1736 (t!378858 zl!343)) lt!2375409)))

(declare-fun b!6414070 () Bool)

(assert (=> b!6414070 (= e!3892039 (Cons!65120 (generalisedConcat!1912 (exprs!6199 (h!71570 (t!378858 zl!343)))) (unfocusZipperList!1736 (t!378858 (t!378858 zl!343)))))))

(declare-fun b!6414071 () Bool)

(assert (=> b!6414071 (= e!3892039 Nil!65120)))

(assert (= (and d!2011269 c!1171359) b!6414070))

(assert (= (and d!2011269 (not c!1171359)) b!6414071))

(declare-fun m!7209652 () Bool)

(assert (=> d!2011269 m!7209652))

(declare-fun m!7209654 () Bool)

(assert (=> b!6414070 m!7209654))

(declare-fun m!7209656 () Bool)

(assert (=> b!6414070 m!7209656))

(assert (=> b!6413753 d!2011269))

(declare-fun b!6414072 () Bool)

(declare-fun res!2636088 () Bool)

(declare-fun e!3892040 () Bool)

(assert (=> b!6414072 (=> res!2636088 e!3892040)))

(assert (=> b!6414072 (= res!2636088 (not ((_ is Concat!25160) lt!2375391)))))

(declare-fun e!3892041 () Bool)

(assert (=> b!6414072 (= e!3892041 e!3892040)))

(declare-fun b!6414073 () Bool)

(declare-fun e!3892043 () Bool)

(declare-fun e!3892045 () Bool)

(assert (=> b!6414073 (= e!3892043 e!3892045)))

(declare-fun res!2636089 () Bool)

(assert (=> b!6414073 (= res!2636089 (not (nullable!6308 (reg!16644 lt!2375391))))))

(assert (=> b!6414073 (=> (not res!2636089) (not e!3892045))))

(declare-fun b!6414074 () Bool)

(declare-fun call!551210 () Bool)

(assert (=> b!6414074 (= e!3892045 call!551210)))

(declare-fun b!6414075 () Bool)

(declare-fun e!3892046 () Bool)

(assert (=> b!6414075 (= e!3892040 e!3892046)))

(declare-fun res!2636086 () Bool)

(assert (=> b!6414075 (=> (not res!2636086) (not e!3892046))))

(declare-fun call!551208 () Bool)

(assert (=> b!6414075 (= res!2636086 call!551208)))

(declare-fun bm!551203 () Bool)

(declare-fun call!551209 () Bool)

(assert (=> bm!551203 (= call!551209 call!551210)))

(declare-fun b!6414077 () Bool)

(declare-fun res!2636087 () Bool)

(declare-fun e!3892044 () Bool)

(assert (=> b!6414077 (=> (not res!2636087) (not e!3892044))))

(assert (=> b!6414077 (= res!2636087 call!551208)))

(assert (=> b!6414077 (= e!3892041 e!3892044)))

(declare-fun b!6414078 () Bool)

(declare-fun e!3892042 () Bool)

(assert (=> b!6414078 (= e!3892042 e!3892043)))

(declare-fun c!1171360 () Bool)

(assert (=> b!6414078 (= c!1171360 ((_ is Star!16315) lt!2375391))))

(declare-fun c!1171361 () Bool)

(declare-fun bm!551204 () Bool)

(assert (=> bm!551204 (= call!551210 (validRegex!8051 (ite c!1171360 (reg!16644 lt!2375391) (ite c!1171361 (regTwo!33143 lt!2375391) (regTwo!33142 lt!2375391)))))))

(declare-fun bm!551205 () Bool)

(assert (=> bm!551205 (= call!551208 (validRegex!8051 (ite c!1171361 (regOne!33143 lt!2375391) (regOne!33142 lt!2375391))))))

(declare-fun b!6414079 () Bool)

(assert (=> b!6414079 (= e!3892043 e!3892041)))

(assert (=> b!6414079 (= c!1171361 ((_ is Union!16315) lt!2375391))))

(declare-fun b!6414080 () Bool)

(assert (=> b!6414080 (= e!3892044 call!551209)))

(declare-fun d!2011271 () Bool)

(declare-fun res!2636090 () Bool)

(assert (=> d!2011271 (=> res!2636090 e!3892042)))

(assert (=> d!2011271 (= res!2636090 ((_ is ElementMatch!16315) lt!2375391))))

(assert (=> d!2011271 (= (validRegex!8051 lt!2375391) e!3892042)))

(declare-fun b!6414076 () Bool)

(assert (=> b!6414076 (= e!3892046 call!551209)))

(assert (= (and d!2011271 (not res!2636090)) b!6414078))

(assert (= (and b!6414078 c!1171360) b!6414073))

(assert (= (and b!6414078 (not c!1171360)) b!6414079))

(assert (= (and b!6414073 res!2636089) b!6414074))

(assert (= (and b!6414079 c!1171361) b!6414077))

(assert (= (and b!6414079 (not c!1171361)) b!6414072))

(assert (= (and b!6414077 res!2636087) b!6414080))

(assert (= (and b!6414072 (not res!2636088)) b!6414075))

(assert (= (and b!6414075 res!2636086) b!6414076))

(assert (= (or b!6414080 b!6414076) bm!551203))

(assert (= (or b!6414077 b!6414075) bm!551205))

(assert (= (or b!6414074 bm!551203) bm!551204))

(declare-fun m!7209658 () Bool)

(assert (=> b!6414073 m!7209658))

(declare-fun m!7209660 () Bool)

(assert (=> bm!551204 m!7209660))

(declare-fun m!7209662 () Bool)

(assert (=> bm!551205 m!7209662))

(assert (=> d!2011139 d!2011271))

(declare-fun bs!1612413 () Bool)

(declare-fun d!2011273 () Bool)

(assert (= bs!1612413 (and d!2011273 d!2011269)))

(declare-fun lambda!354130 () Int)

(assert (=> bs!1612413 (= lambda!354130 lambda!354129)))

(declare-fun bs!1612414 () Bool)

(assert (= bs!1612414 (and d!2011273 d!2011135)))

(assert (=> bs!1612414 (= lambda!354130 lambda!354123)))

(declare-fun bs!1612415 () Bool)

(assert (= bs!1612415 (and d!2011273 d!2011231)))

(assert (=> bs!1612415 (= lambda!354130 lambda!354126)))

(declare-fun bs!1612416 () Bool)

(assert (= bs!1612416 (and d!2011273 d!2011049)))

(assert (=> bs!1612416 (= lambda!354130 lambda!354098)))

(declare-fun bs!1612417 () Bool)

(assert (= bs!1612417 (and d!2011273 d!2011171)))

(assert (=> bs!1612417 (= lambda!354130 lambda!354125)))

(declare-fun bs!1612418 () Bool)

(assert (= bs!1612418 (and d!2011273 d!2010999)))

(assert (=> bs!1612418 (= lambda!354130 lambda!354084)))

(declare-fun bs!1612419 () Bool)

(assert (= bs!1612419 (and d!2011273 d!2011077)))

(assert (=> bs!1612419 (= lambda!354130 lambda!354116)))

(declare-fun bs!1612420 () Bool)

(assert (= bs!1612420 (and d!2011273 d!2011089)))

(assert (=> bs!1612420 (= lambda!354130 lambda!354119)))

(declare-fun b!6414081 () Bool)

(declare-fun e!3892048 () Bool)

(declare-fun lt!2375410 () Regex!16315)

(assert (=> b!6414081 (= e!3892048 (= lt!2375410 (head!13122 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122)))))))

(declare-fun b!6414082 () Bool)

(declare-fun e!3892050 () Regex!16315)

(assert (=> b!6414082 (= e!3892050 EmptyLang!16315)))

(declare-fun e!3892052 () Bool)

(assert (=> d!2011273 e!3892052))

(declare-fun res!2636092 () Bool)

(assert (=> d!2011273 (=> (not res!2636092) (not e!3892052))))

(assert (=> d!2011273 (= res!2636092 (validRegex!8051 lt!2375410))))

(declare-fun e!3892049 () Regex!16315)

(assert (=> d!2011273 (= lt!2375410 e!3892049)))

(declare-fun c!1171362 () Bool)

(declare-fun e!3892047 () Bool)

(assert (=> d!2011273 (= c!1171362 e!3892047)))

(declare-fun res!2636091 () Bool)

(assert (=> d!2011273 (=> (not res!2636091) (not e!3892047))))

(assert (=> d!2011273 (= res!2636091 ((_ is Cons!65120) (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122))))))

(assert (=> d!2011273 (forall!15504 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122)) lambda!354130)))

(assert (=> d!2011273 (= (generalisedUnion!2159 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122))) lt!2375410)))

(declare-fun b!6414083 () Bool)

(assert (=> b!6414083 (= e!3892049 e!3892050)))

(declare-fun c!1171365 () Bool)

(assert (=> b!6414083 (= c!1171365 ((_ is Cons!65120) (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122))))))

(declare-fun b!6414084 () Bool)

(assert (=> b!6414084 (= e!3892050 (Union!16315 (h!71568 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122))) (generalisedUnion!2159 (t!378856 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122))))))))

(declare-fun b!6414085 () Bool)

(assert (=> b!6414085 (= e!3892048 (isUnion!1153 lt!2375410))))

(declare-fun b!6414086 () Bool)

(assert (=> b!6414086 (= e!3892047 (isEmpty!37268 (t!378856 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122)))))))

(declare-fun b!6414087 () Bool)

(declare-fun e!3892051 () Bool)

(assert (=> b!6414087 (= e!3892052 e!3892051)))

(declare-fun c!1171363 () Bool)

(assert (=> b!6414087 (= c!1171363 (isEmpty!37268 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122))))))

(declare-fun b!6414088 () Bool)

(assert (=> b!6414088 (= e!3892051 e!3892048)))

(declare-fun c!1171364 () Bool)

(assert (=> b!6414088 (= c!1171364 (isEmpty!37268 (tail!12207 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122)))))))

(declare-fun b!6414089 () Bool)

(assert (=> b!6414089 (= e!3892049 (h!71568 (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122))))))

(declare-fun b!6414090 () Bool)

(assert (=> b!6414090 (= e!3892051 (isEmptyLang!1723 lt!2375410))))

(assert (= (and d!2011273 res!2636091) b!6414086))

(assert (= (and d!2011273 c!1171362) b!6414089))

(assert (= (and d!2011273 (not c!1171362)) b!6414083))

(assert (= (and b!6414083 c!1171365) b!6414084))

(assert (= (and b!6414083 (not c!1171365)) b!6414082))

(assert (= (and d!2011273 res!2636092) b!6414087))

(assert (= (and b!6414087 c!1171363) b!6414090))

(assert (= (and b!6414087 (not c!1171363)) b!6414088))

(assert (= (and b!6414088 c!1171364) b!6414081))

(assert (= (and b!6414088 (not c!1171364)) b!6414085))

(assert (=> b!6414081 m!7209440))

(declare-fun m!7209664 () Bool)

(assert (=> b!6414081 m!7209664))

(declare-fun m!7209666 () Bool)

(assert (=> b!6414090 m!7209666))

(declare-fun m!7209668 () Bool)

(assert (=> b!6414084 m!7209668))

(declare-fun m!7209670 () Bool)

(assert (=> d!2011273 m!7209670))

(assert (=> d!2011273 m!7209440))

(declare-fun m!7209672 () Bool)

(assert (=> d!2011273 m!7209672))

(assert (=> b!6414088 m!7209440))

(declare-fun m!7209674 () Bool)

(assert (=> b!6414088 m!7209674))

(assert (=> b!6414088 m!7209674))

(declare-fun m!7209676 () Bool)

(assert (=> b!6414088 m!7209676))

(assert (=> b!6414087 m!7209440))

(declare-fun m!7209678 () Bool)

(assert (=> b!6414087 m!7209678))

(declare-fun m!7209680 () Bool)

(assert (=> b!6414085 m!7209680))

(declare-fun m!7209682 () Bool)

(assert (=> b!6414086 m!7209682))

(assert (=> d!2011139 d!2011273))

(declare-fun bs!1612421 () Bool)

(declare-fun d!2011275 () Bool)

(assert (= bs!1612421 (and d!2011275 d!2011135)))

(declare-fun lambda!354131 () Int)

(assert (=> bs!1612421 (= lambda!354131 lambda!354123)))

(declare-fun bs!1612422 () Bool)

(assert (= bs!1612422 (and d!2011275 d!2011231)))

(assert (=> bs!1612422 (= lambda!354131 lambda!354126)))

(declare-fun bs!1612423 () Bool)

(assert (= bs!1612423 (and d!2011275 d!2011049)))

(assert (=> bs!1612423 (= lambda!354131 lambda!354098)))

(declare-fun bs!1612424 () Bool)

(assert (= bs!1612424 (and d!2011275 d!2011171)))

(assert (=> bs!1612424 (= lambda!354131 lambda!354125)))

(declare-fun bs!1612425 () Bool)

(assert (= bs!1612425 (and d!2011275 d!2010999)))

(assert (=> bs!1612425 (= lambda!354131 lambda!354084)))

(declare-fun bs!1612426 () Bool)

(assert (= bs!1612426 (and d!2011275 d!2011273)))

(assert (=> bs!1612426 (= lambda!354131 lambda!354130)))

(declare-fun bs!1612427 () Bool)

(assert (= bs!1612427 (and d!2011275 d!2011269)))

(assert (=> bs!1612427 (= lambda!354131 lambda!354129)))

(declare-fun bs!1612428 () Bool)

(assert (= bs!1612428 (and d!2011275 d!2011077)))

(assert (=> bs!1612428 (= lambda!354131 lambda!354116)))

(declare-fun bs!1612429 () Bool)

(assert (= bs!1612429 (and d!2011275 d!2011089)))

(assert (=> bs!1612429 (= lambda!354131 lambda!354119)))

(declare-fun lt!2375411 () List!65244)

(assert (=> d!2011275 (forall!15504 lt!2375411 lambda!354131)))

(declare-fun e!3892053 () List!65244)

(assert (=> d!2011275 (= lt!2375411 e!3892053)))

(declare-fun c!1171366 () Bool)

(assert (=> d!2011275 (= c!1171366 ((_ is Cons!65122) (Cons!65122 lt!2375195 Nil!65122)))))

(assert (=> d!2011275 (= (unfocusZipperList!1736 (Cons!65122 lt!2375195 Nil!65122)) lt!2375411)))

(declare-fun b!6414091 () Bool)

(assert (=> b!6414091 (= e!3892053 (Cons!65120 (generalisedConcat!1912 (exprs!6199 (h!71570 (Cons!65122 lt!2375195 Nil!65122)))) (unfocusZipperList!1736 (t!378858 (Cons!65122 lt!2375195 Nil!65122)))))))

(declare-fun b!6414092 () Bool)

(assert (=> b!6414092 (= e!3892053 Nil!65120)))

(assert (= (and d!2011275 c!1171366) b!6414091))

(assert (= (and d!2011275 (not c!1171366)) b!6414092))

(declare-fun m!7209684 () Bool)

(assert (=> d!2011275 m!7209684))

(declare-fun m!7209686 () Bool)

(assert (=> b!6414091 m!7209686))

(declare-fun m!7209688 () Bool)

(assert (=> b!6414091 m!7209688))

(assert (=> d!2011139 d!2011275))

(declare-fun b!6414093 () Bool)

(declare-fun res!2636095 () Bool)

(declare-fun e!3892060 () Bool)

(assert (=> b!6414093 (=> (not res!2636095) (not e!3892060))))

(declare-fun lt!2375412 () Int)

(declare-fun call!551213 () Int)

(assert (=> b!6414093 (= res!2636095 (> lt!2375412 call!551213))))

(declare-fun e!3892055 () Bool)

(assert (=> b!6414093 (= e!3892055 e!3892060)))

(declare-fun b!6414094 () Bool)

(declare-fun e!3892058 () Bool)

(assert (=> b!6414094 (= e!3892058 e!3892055)))

(declare-fun c!1171372 () Bool)

(assert (=> b!6414094 (= c!1171372 ((_ is Concat!25160) (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun bm!551206 () Bool)

(declare-fun call!551212 () Int)

(declare-fun call!551211 () Int)

(assert (=> bm!551206 (= call!551212 call!551211)))

(declare-fun bm!551207 () Bool)

(declare-fun c!1171367 () Bool)

(declare-fun c!1171368 () Bool)

(assert (=> bm!551207 (= call!551211 (regexDepth!342 (ite c!1171367 (reg!16644 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (ite c!1171368 (regTwo!33143 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (regOne!33142 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292)))))))))

(declare-fun call!551217 () Int)

(declare-fun bm!551208 () Bool)

(assert (=> bm!551208 (= call!551217 (regexDepth!342 (ite c!1171368 (regOne!33143 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (regTwo!33142 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))))

(declare-fun b!6414095 () Bool)

(declare-fun e!3892063 () Int)

(declare-fun call!551216 () Int)

(assert (=> b!6414095 (= e!3892063 (+ 1 call!551216))))

(declare-fun c!1171369 () Bool)

(declare-fun bm!551209 () Bool)

(declare-fun call!551214 () Int)

(assert (=> bm!551209 (= call!551214 (regexDepth!342 (ite c!1171369 (regTwo!33143 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (ite c!1171372 (regOne!33142 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (reg!16644 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292)))))))))

(declare-fun b!6414096 () Bool)

(declare-fun e!3892054 () Int)

(declare-fun e!3892062 () Int)

(assert (=> b!6414096 (= e!3892054 e!3892062)))

(assert (=> b!6414096 (= c!1171367 ((_ is Star!16315) (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun bm!551210 () Bool)

(declare-fun call!551215 () Int)

(assert (=> bm!551210 (= call!551215 (regexDepth!342 (ite c!1171369 (regOne!33143 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (regTwo!33142 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))))

(declare-fun b!6414097 () Bool)

(declare-fun c!1171371 () Bool)

(assert (=> b!6414097 (= c!1171371 ((_ is Star!16315) (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun e!3892057 () Bool)

(assert (=> b!6414097 (= e!3892055 e!3892057)))

(declare-fun b!6414098 () Bool)

(assert (=> b!6414098 (= e!3892057 (= lt!2375412 1))))

(declare-fun bm!551211 () Bool)

(assert (=> bm!551211 (= call!551216 (maxBigInt!0 (ite c!1171368 call!551217 call!551212) (ite c!1171368 call!551212 call!551217)))))

(declare-fun b!6414099 () Bool)

(declare-fun e!3892059 () Bool)

(assert (=> b!6414099 (= e!3892059 e!3892058)))

(assert (=> b!6414099 (= c!1171369 ((_ is Union!16315) (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun b!6414100 () Bool)

(assert (=> b!6414100 (= c!1171368 ((_ is Union!16315) (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun e!3892056 () Int)

(assert (=> b!6414100 (= e!3892062 e!3892056)))

(declare-fun d!2011277 () Bool)

(assert (=> d!2011277 e!3892059))

(declare-fun res!2636094 () Bool)

(assert (=> d!2011277 (=> (not res!2636094) (not e!3892059))))

(assert (=> d!2011277 (= res!2636094 (> lt!2375412 0))))

(assert (=> d!2011277 (= lt!2375412 e!3892054)))

(declare-fun c!1171370 () Bool)

(assert (=> d!2011277 (= c!1171370 ((_ is ElementMatch!16315) (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(assert (=> d!2011277 (= (regexDepth!342 (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))) lt!2375412)))

(declare-fun b!6414101 () Bool)

(declare-fun e!3892061 () Bool)

(assert (=> b!6414101 (= e!3892058 e!3892061)))

(declare-fun res!2636093 () Bool)

(assert (=> b!6414101 (= res!2636093 (> lt!2375412 call!551215))))

(assert (=> b!6414101 (=> (not res!2636093) (not e!3892061))))

(declare-fun bm!551212 () Bool)

(assert (=> bm!551212 (= call!551213 call!551214)))

(declare-fun b!6414102 () Bool)

(assert (=> b!6414102 (= e!3892062 (+ 1 call!551211))))

(declare-fun b!6414103 () Bool)

(assert (=> b!6414103 (= e!3892063 1)))

(declare-fun b!6414104 () Bool)

(assert (=> b!6414104 (= e!3892056 e!3892063)))

(declare-fun c!1171373 () Bool)

(assert (=> b!6414104 (= c!1171373 ((_ is Concat!25160) (ite c!1171214 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun b!6414105 () Bool)

(assert (=> b!6414105 (= e!3892060 (> lt!2375412 call!551215))))

(declare-fun b!6414106 () Bool)

(assert (=> b!6414106 (= e!3892054 1)))

(declare-fun b!6414107 () Bool)

(assert (=> b!6414107 (= e!3892057 (> lt!2375412 call!551213))))

(declare-fun b!6414108 () Bool)

(assert (=> b!6414108 (= e!3892061 (> lt!2375412 call!551214))))

(declare-fun b!6414109 () Bool)

(assert (=> b!6414109 (= e!3892056 (+ 1 call!551216))))

(assert (= (and d!2011277 c!1171370) b!6414106))

(assert (= (and d!2011277 (not c!1171370)) b!6414096))

(assert (= (and b!6414096 c!1171367) b!6414102))

(assert (= (and b!6414096 (not c!1171367)) b!6414100))

(assert (= (and b!6414100 c!1171368) b!6414109))

(assert (= (and b!6414100 (not c!1171368)) b!6414104))

(assert (= (and b!6414104 c!1171373) b!6414095))

(assert (= (and b!6414104 (not c!1171373)) b!6414103))

(assert (= (or b!6414109 b!6414095) bm!551206))

(assert (= (or b!6414109 b!6414095) bm!551208))

(assert (= (or b!6414109 b!6414095) bm!551211))

(assert (= (or b!6414102 bm!551206) bm!551207))

(assert (= (and d!2011277 res!2636094) b!6414099))

(assert (= (and b!6414099 c!1171369) b!6414101))

(assert (= (and b!6414099 (not c!1171369)) b!6414094))

(assert (= (and b!6414101 res!2636093) b!6414108))

(assert (= (and b!6414094 c!1171372) b!6414093))

(assert (= (and b!6414094 (not c!1171372)) b!6414097))

(assert (= (and b!6414093 res!2636095) b!6414105))

(assert (= (and b!6414097 c!1171371) b!6414107))

(assert (= (and b!6414097 (not c!1171371)) b!6414098))

(assert (= (or b!6414093 b!6414107) bm!551212))

(assert (= (or b!6414108 bm!551212) bm!551209))

(assert (= (or b!6414101 b!6414105) bm!551210))

(declare-fun m!7209690 () Bool)

(assert (=> bm!551209 m!7209690))

(declare-fun m!7209692 () Bool)

(assert (=> bm!551207 m!7209692))

(declare-fun m!7209694 () Bool)

(assert (=> bm!551211 m!7209694))

(declare-fun m!7209696 () Bool)

(assert (=> bm!551208 m!7209696))

(declare-fun m!7209698 () Bool)

(assert (=> bm!551210 m!7209698))

(assert (=> bm!551100 d!2011277))

(declare-fun d!2011279 () Bool)

(assert (=> d!2011279 (= (isEmpty!37268 (unfocusZipperList!1736 zl!343)) ((_ is Nil!65120) (unfocusZipperList!1736 zl!343)))))

(assert (=> b!6413727 d!2011279))

(declare-fun b!6414110 () Bool)

(declare-fun res!2636098 () Bool)

(declare-fun e!3892070 () Bool)

(assert (=> b!6414110 (=> (not res!2636098) (not e!3892070))))

(declare-fun lt!2375413 () Int)

(declare-fun call!551220 () Int)

(assert (=> b!6414110 (= res!2636098 (> lt!2375413 call!551220))))

(declare-fun e!3892065 () Bool)

(assert (=> b!6414110 (= e!3892065 e!3892070)))

(declare-fun b!6414111 () Bool)

(declare-fun e!3892068 () Bool)

(assert (=> b!6414111 (= e!3892068 e!3892065)))

(declare-fun c!1171379 () Bool)

(assert (=> b!6414111 (= c!1171379 ((_ is Concat!25160) (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun bm!551213 () Bool)

(declare-fun call!551219 () Int)

(declare-fun call!551218 () Int)

(assert (=> bm!551213 (= call!551219 call!551218)))

(declare-fun c!1171375 () Bool)

(declare-fun c!1171374 () Bool)

(declare-fun bm!551214 () Bool)

(assert (=> bm!551214 (= call!551218 (regexDepth!342 (ite c!1171374 (reg!16644 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (ite c!1171375 (regTwo!33143 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (regOne!33142 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210)))))))))

(declare-fun bm!551215 () Bool)

(declare-fun call!551224 () Int)

(assert (=> bm!551215 (= call!551224 (regexDepth!342 (ite c!1171375 (regOne!33143 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (regTwo!33142 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))))

(declare-fun b!6414112 () Bool)

(declare-fun e!3892073 () Int)

(declare-fun call!551223 () Int)

(assert (=> b!6414112 (= e!3892073 (+ 1 call!551223))))

(declare-fun bm!551216 () Bool)

(declare-fun call!551221 () Int)

(declare-fun c!1171376 () Bool)

(assert (=> bm!551216 (= call!551221 (regexDepth!342 (ite c!1171376 (regTwo!33143 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (ite c!1171379 (regOne!33142 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (reg!16644 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210)))))))))

(declare-fun b!6414113 () Bool)

(declare-fun e!3892064 () Int)

(declare-fun e!3892072 () Int)

(assert (=> b!6414113 (= e!3892064 e!3892072)))

(assert (=> b!6414113 (= c!1171374 ((_ is Star!16315) (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun bm!551217 () Bool)

(declare-fun call!551222 () Int)

(assert (=> bm!551217 (= call!551222 (regexDepth!342 (ite c!1171376 (regOne!33143 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (regTwo!33142 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))))

(declare-fun b!6414114 () Bool)

(declare-fun c!1171378 () Bool)

(assert (=> b!6414114 (= c!1171378 ((_ is Star!16315) (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun e!3892067 () Bool)

(assert (=> b!6414114 (= e!3892065 e!3892067)))

(declare-fun b!6414115 () Bool)

(assert (=> b!6414115 (= e!3892067 (= lt!2375413 1))))

(declare-fun bm!551218 () Bool)

(assert (=> bm!551218 (= call!551223 (maxBigInt!0 (ite c!1171375 call!551224 call!551219) (ite c!1171375 call!551219 call!551224)))))

(declare-fun b!6414116 () Bool)

(declare-fun e!3892069 () Bool)

(assert (=> b!6414116 (= e!3892069 e!3892068)))

(assert (=> b!6414116 (= c!1171376 ((_ is Union!16315) (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun b!6414117 () Bool)

(assert (=> b!6414117 (= c!1171375 ((_ is Union!16315) (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun e!3892066 () Int)

(assert (=> b!6414117 (= e!3892072 e!3892066)))

(declare-fun d!2011281 () Bool)

(assert (=> d!2011281 e!3892069))

(declare-fun res!2636097 () Bool)

(assert (=> d!2011281 (=> (not res!2636097) (not e!3892069))))

(assert (=> d!2011281 (= res!2636097 (> lt!2375413 0))))

(assert (=> d!2011281 (= lt!2375413 e!3892064)))

(declare-fun c!1171377 () Bool)

(assert (=> d!2011281 (= c!1171377 ((_ is ElementMatch!16315) (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(assert (=> d!2011281 (= (regexDepth!342 (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) lt!2375413)))

(declare-fun b!6414118 () Bool)

(declare-fun e!3892071 () Bool)

(assert (=> b!6414118 (= e!3892068 e!3892071)))

(declare-fun res!2636096 () Bool)

(assert (=> b!6414118 (= res!2636096 (> lt!2375413 call!551222))))

(assert (=> b!6414118 (=> (not res!2636096) (not e!3892071))))

(declare-fun bm!551219 () Bool)

(assert (=> bm!551219 (= call!551220 call!551221)))

(declare-fun b!6414119 () Bool)

(assert (=> b!6414119 (= e!3892072 (+ 1 call!551218))))

(declare-fun b!6414120 () Bool)

(assert (=> b!6414120 (= e!3892073 1)))

(declare-fun b!6414121 () Bool)

(assert (=> b!6414121 (= e!3892066 e!3892073)))

(declare-fun c!1171380 () Bool)

(assert (=> b!6414121 (= c!1171380 ((_ is Concat!25160) (ite c!1171221 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun b!6414122 () Bool)

(assert (=> b!6414122 (= e!3892070 (> lt!2375413 call!551222))))

(declare-fun b!6414123 () Bool)

(assert (=> b!6414123 (= e!3892064 1)))

(declare-fun b!6414124 () Bool)

(assert (=> b!6414124 (= e!3892067 (> lt!2375413 call!551220))))

(declare-fun b!6414125 () Bool)

(assert (=> b!6414125 (= e!3892071 (> lt!2375413 call!551221))))

(declare-fun b!6414126 () Bool)

(assert (=> b!6414126 (= e!3892066 (+ 1 call!551223))))

(assert (= (and d!2011281 c!1171377) b!6414123))

(assert (= (and d!2011281 (not c!1171377)) b!6414113))

(assert (= (and b!6414113 c!1171374) b!6414119))

(assert (= (and b!6414113 (not c!1171374)) b!6414117))

(assert (= (and b!6414117 c!1171375) b!6414126))

(assert (= (and b!6414117 (not c!1171375)) b!6414121))

(assert (= (and b!6414121 c!1171380) b!6414112))

(assert (= (and b!6414121 (not c!1171380)) b!6414120))

(assert (= (or b!6414126 b!6414112) bm!551213))

(assert (= (or b!6414126 b!6414112) bm!551215))

(assert (= (or b!6414126 b!6414112) bm!551218))

(assert (= (or b!6414119 bm!551213) bm!551214))

(assert (= (and d!2011281 res!2636097) b!6414116))

(assert (= (and b!6414116 c!1171376) b!6414118))

(assert (= (and b!6414116 (not c!1171376)) b!6414111))

(assert (= (and b!6414118 res!2636096) b!6414125))

(assert (= (and b!6414111 c!1171379) b!6414110))

(assert (= (and b!6414111 (not c!1171379)) b!6414114))

(assert (= (and b!6414110 res!2636098) b!6414122))

(assert (= (and b!6414114 c!1171378) b!6414124))

(assert (= (and b!6414114 (not c!1171378)) b!6414115))

(assert (= (or b!6414110 b!6414124) bm!551219))

(assert (= (or b!6414125 bm!551219) bm!551216))

(assert (= (or b!6414118 b!6414122) bm!551217))

(declare-fun m!7209700 () Bool)

(assert (=> bm!551216 m!7209700))

(declare-fun m!7209702 () Bool)

(assert (=> bm!551214 m!7209702))

(declare-fun m!7209704 () Bool)

(assert (=> bm!551218 m!7209704))

(declare-fun m!7209706 () Bool)

(assert (=> bm!551215 m!7209706))

(declare-fun m!7209708 () Bool)

(assert (=> bm!551217 m!7209708))

(assert (=> bm!551113 d!2011281))

(assert (=> bm!551032 d!2011251))

(declare-fun d!2011283 () Bool)

(assert (=> d!2011283 (= (isEmpty!37268 (exprs!6199 (h!71570 zl!343))) ((_ is Nil!65120) (exprs!6199 (h!71570 zl!343))))))

(assert (=> b!6413357 d!2011283))

(declare-fun c!1171384 () Bool)

(declare-fun c!1171382 () Bool)

(declare-fun bm!551220 () Bool)

(declare-fun c!1171381 () Bool)

(declare-fun call!551226 () List!65244)

(declare-fun call!551230 () (InoxSet Context!11398))

(assert (=> bm!551220 (= call!551230 (derivationStepZipperDown!1563 (ite c!1171384 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171381 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171382 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343))))))) (ite (or c!1171384 c!1171381) (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))) (Context!11399 call!551226)) (h!71569 s!2326)))))

(declare-fun b!6414128 () Bool)

(declare-fun c!1171383 () Bool)

(assert (=> b!6414128 (= c!1171383 ((_ is Star!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun e!3892077 () (InoxSet Context!11398))

(declare-fun e!3892075 () (InoxSet Context!11398))

(assert (=> b!6414128 (= e!3892077 e!3892075)))

(declare-fun b!6414129 () Bool)

(declare-fun call!551228 () (InoxSet Context!11398))

(assert (=> b!6414129 (= e!3892075 call!551228)))

(declare-fun b!6414130 () Bool)

(declare-fun e!3892074 () (InoxSet Context!11398))

(assert (=> b!6414130 (= e!3892074 e!3892077)))

(assert (=> b!6414130 (= c!1171382 ((_ is Concat!25160) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6414131 () Bool)

(declare-fun e!3892078 () (InoxSet Context!11398))

(declare-fun call!551229 () (InoxSet Context!11398))

(assert (=> b!6414131 (= e!3892078 ((_ map or) call!551230 call!551229))))

(declare-fun b!6414132 () Bool)

(declare-fun e!3892076 () Bool)

(assert (=> b!6414132 (= e!3892076 (nullable!6308 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun call!551225 () List!65244)

(declare-fun bm!551221 () Bool)

(assert (=> bm!551221 (= call!551229 (derivationStepZipperDown!1563 (ite c!1171384 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))) (ite c!1171384 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))) (Context!11399 call!551225)) (h!71569 s!2326)))))

(declare-fun b!6414127 () Bool)

(assert (=> b!6414127 (= e!3892077 call!551228)))

(declare-fun d!2011285 () Bool)

(declare-fun c!1171385 () Bool)

(assert (=> d!2011285 (= c!1171385 (and ((_ is ElementMatch!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))) (= (c!1170970 (h!71568 (exprs!6199 (h!71570 zl!343)))) (h!71569 s!2326))))))

(declare-fun e!3892079 () (InoxSet Context!11398))

(assert (=> d!2011285 (= (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (h!71570 zl!343))) (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))) (h!71569 s!2326)) e!3892079)))

(declare-fun bm!551222 () Bool)

(declare-fun call!551227 () (InoxSet Context!11398))

(assert (=> bm!551222 (= call!551228 call!551227)))

(declare-fun b!6414133 () Bool)

(assert (=> b!6414133 (= e!3892075 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551223 () Bool)

(assert (=> bm!551223 (= call!551225 ($colon$colon!2176 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343))))) (ite (or c!1171381 c!1171382) (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (h!71568 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun bm!551224 () Bool)

(assert (=> bm!551224 (= call!551227 call!551230)))

(declare-fun bm!551225 () Bool)

(assert (=> bm!551225 (= call!551226 call!551225)))

(declare-fun b!6414134 () Bool)

(assert (=> b!6414134 (= e!3892079 e!3892078)))

(assert (=> b!6414134 (= c!1171384 ((_ is Union!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6414135 () Bool)

(assert (=> b!6414135 (= e!3892074 ((_ map or) call!551229 call!551227))))

(declare-fun b!6414136 () Bool)

(assert (=> b!6414136 (= e!3892079 (store ((as const (Array Context!11398 Bool)) false) (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))) true))))

(declare-fun b!6414137 () Bool)

(assert (=> b!6414137 (= c!1171381 e!3892076)))

(declare-fun res!2636099 () Bool)

(assert (=> b!6414137 (=> (not res!2636099) (not e!3892076))))

(assert (=> b!6414137 (= res!2636099 ((_ is Concat!25160) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> b!6414137 (= e!3892078 e!3892074)))

(assert (= (and d!2011285 c!1171385) b!6414136))

(assert (= (and d!2011285 (not c!1171385)) b!6414134))

(assert (= (and b!6414134 c!1171384) b!6414131))

(assert (= (and b!6414134 (not c!1171384)) b!6414137))

(assert (= (and b!6414137 res!2636099) b!6414132))

(assert (= (and b!6414137 c!1171381) b!6414135))

(assert (= (and b!6414137 (not c!1171381)) b!6414130))

(assert (= (and b!6414130 c!1171382) b!6414127))

(assert (= (and b!6414130 (not c!1171382)) b!6414128))

(assert (= (and b!6414128 c!1171383) b!6414129))

(assert (= (and b!6414128 (not c!1171383)) b!6414133))

(assert (= (or b!6414127 b!6414129) bm!551225))

(assert (= (or b!6414127 b!6414129) bm!551222))

(assert (= (or b!6414135 bm!551225) bm!551223))

(assert (= (or b!6414135 bm!551222) bm!551224))

(assert (= (or b!6414131 b!6414135) bm!551221))

(assert (= (or b!6414131 bm!551224) bm!551220))

(declare-fun m!7209710 () Bool)

(assert (=> bm!551223 m!7209710))

(assert (=> b!6414132 m!7209376))

(declare-fun m!7209712 () Bool)

(assert (=> bm!551221 m!7209712))

(declare-fun m!7209714 () Bool)

(assert (=> b!6414136 m!7209714))

(declare-fun m!7209716 () Bool)

(assert (=> bm!551220 m!7209716))

(assert (=> bm!551156 d!2011285))

(declare-fun d!2011287 () Bool)

(declare-fun c!1171386 () Bool)

(assert (=> d!2011287 (= c!1171386 (isEmpty!37269 (tail!12205 (t!378857 s!2326))))))

(declare-fun e!3892080 () Bool)

(assert (=> d!2011287 (= (matchZipper!2327 (derivationStepZipper!2281 ((_ map or) lt!2375209 lt!2375211) (head!13120 (t!378857 s!2326))) (tail!12205 (t!378857 s!2326))) e!3892080)))

(declare-fun b!6414138 () Bool)

(assert (=> b!6414138 (= e!3892080 (nullableZipper!2080 (derivationStepZipper!2281 ((_ map or) lt!2375209 lt!2375211) (head!13120 (t!378857 s!2326)))))))

(declare-fun b!6414139 () Bool)

(assert (=> b!6414139 (= e!3892080 (matchZipper!2327 (derivationStepZipper!2281 (derivationStepZipper!2281 ((_ map or) lt!2375209 lt!2375211) (head!13120 (t!378857 s!2326))) (head!13120 (tail!12205 (t!378857 s!2326)))) (tail!12205 (tail!12205 (t!378857 s!2326)))))))

(assert (= (and d!2011287 c!1171386) b!6414138))

(assert (= (and d!2011287 (not c!1171386)) b!6414139))

(assert (=> d!2011287 m!7208608))

(declare-fun m!7209718 () Bool)

(assert (=> d!2011287 m!7209718))

(assert (=> b!6414138 m!7209210))

(declare-fun m!7209720 () Bool)

(assert (=> b!6414138 m!7209720))

(assert (=> b!6414139 m!7208608))

(declare-fun m!7209722 () Bool)

(assert (=> b!6414139 m!7209722))

(assert (=> b!6414139 m!7209210))

(assert (=> b!6414139 m!7209722))

(declare-fun m!7209724 () Bool)

(assert (=> b!6414139 m!7209724))

(assert (=> b!6414139 m!7208608))

(declare-fun m!7209726 () Bool)

(assert (=> b!6414139 m!7209726))

(assert (=> b!6414139 m!7209724))

(assert (=> b!6414139 m!7209726))

(declare-fun m!7209728 () Bool)

(assert (=> b!6414139 m!7209728))

(assert (=> b!6413631 d!2011287))

(declare-fun bs!1612430 () Bool)

(declare-fun d!2011289 () Bool)

(assert (= bs!1612430 (and d!2011289 b!6412770)))

(declare-fun lambda!354132 () Int)

(assert (=> bs!1612430 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354132 lambda!354023))))

(declare-fun bs!1612431 () Bool)

(assert (= bs!1612431 (and d!2011289 d!2011031)))

(assert (=> bs!1612431 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354132 lambda!354092))))

(declare-fun bs!1612432 () Bool)

(assert (= bs!1612432 (and d!2011289 d!2011141)))

(assert (=> bs!1612432 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354132 lambda!354124))))

(assert (=> d!2011289 true))

(assert (=> d!2011289 (= (derivationStepZipper!2281 ((_ map or) lt!2375209 lt!2375211) (head!13120 (t!378857 s!2326))) (flatMap!1820 ((_ map or) lt!2375209 lt!2375211) lambda!354132))))

(declare-fun bs!1612433 () Bool)

(assert (= bs!1612433 d!2011289))

(declare-fun m!7209730 () Bool)

(assert (=> bs!1612433 m!7209730))

(assert (=> b!6413631 d!2011289))

(declare-fun d!2011291 () Bool)

(assert (=> d!2011291 (= (head!13120 (t!378857 s!2326)) (h!71569 (t!378857 s!2326)))))

(assert (=> b!6413631 d!2011291))

(declare-fun d!2011293 () Bool)

(assert (=> d!2011293 (= (tail!12205 (t!378857 s!2326)) (t!378857 (t!378857 s!2326)))))

(assert (=> b!6413631 d!2011293))

(declare-fun d!2011295 () Bool)

(declare-fun res!2636100 () Bool)

(declare-fun e!3892081 () Bool)

(assert (=> d!2011295 (=> res!2636100 e!3892081)))

(assert (=> d!2011295 (= res!2636100 ((_ is Nil!65120) lt!2375385))))

(assert (=> d!2011295 (= (forall!15504 lt!2375385 lambda!354119) e!3892081)))

(declare-fun b!6414140 () Bool)

(declare-fun e!3892082 () Bool)

(assert (=> b!6414140 (= e!3892081 e!3892082)))

(declare-fun res!2636101 () Bool)

(assert (=> b!6414140 (=> (not res!2636101) (not e!3892082))))

(assert (=> b!6414140 (= res!2636101 (dynLambda!25863 lambda!354119 (h!71568 lt!2375385)))))

(declare-fun b!6414141 () Bool)

(assert (=> b!6414141 (= e!3892082 (forall!15504 (t!378856 lt!2375385) lambda!354119))))

(assert (= (and d!2011295 (not res!2636100)) b!6414140))

(assert (= (and b!6414140 res!2636101) b!6414141))

(declare-fun b_lambda!243839 () Bool)

(assert (=> (not b_lambda!243839) (not b!6414140)))

(declare-fun m!7209732 () Bool)

(assert (=> b!6414140 m!7209732))

(declare-fun m!7209734 () Bool)

(assert (=> b!6414141 m!7209734))

(assert (=> d!2011089 d!2011295))

(declare-fun b!6414142 () Bool)

(declare-fun res!2636105 () Bool)

(declare-fun e!3892084 () Bool)

(assert (=> b!6414142 (=> res!2636105 e!3892084)))

(assert (=> b!6414142 (= res!2636105 (not (isEmpty!37269 (tail!12205 (_2!36597 (get!22556 lt!2375311))))))))

(declare-fun b!6414143 () Bool)

(declare-fun res!2636102 () Bool)

(declare-fun e!3892083 () Bool)

(assert (=> b!6414143 (=> res!2636102 e!3892083)))

(assert (=> b!6414143 (= res!2636102 (not ((_ is ElementMatch!16315) (regTwo!33142 r!7292))))))

(declare-fun e!3892087 () Bool)

(assert (=> b!6414143 (= e!3892087 e!3892083)))

(declare-fun b!6414144 () Bool)

(declare-fun res!2636109 () Bool)

(declare-fun e!3892086 () Bool)

(assert (=> b!6414144 (=> (not res!2636109) (not e!3892086))))

(assert (=> b!6414144 (= res!2636109 (isEmpty!37269 (tail!12205 (_2!36597 (get!22556 lt!2375311)))))))

(declare-fun b!6414145 () Bool)

(declare-fun res!2636106 () Bool)

(assert (=> b!6414145 (=> res!2636106 e!3892083)))

(assert (=> b!6414145 (= res!2636106 e!3892086)))

(declare-fun res!2636103 () Bool)

(assert (=> b!6414145 (=> (not res!2636103) (not e!3892086))))

(declare-fun lt!2375414 () Bool)

(assert (=> b!6414145 (= res!2636103 lt!2375414)))

(declare-fun bm!551226 () Bool)

(declare-fun call!551231 () Bool)

(assert (=> bm!551226 (= call!551231 (isEmpty!37269 (_2!36597 (get!22556 lt!2375311))))))

(declare-fun b!6414146 () Bool)

(declare-fun e!3892085 () Bool)

(assert (=> b!6414146 (= e!3892085 (nullable!6308 (regTwo!33142 r!7292)))))

(declare-fun b!6414147 () Bool)

(declare-fun e!3892089 () Bool)

(assert (=> b!6414147 (= e!3892083 e!3892089)))

(declare-fun res!2636108 () Bool)

(assert (=> b!6414147 (=> (not res!2636108) (not e!3892089))))

(assert (=> b!6414147 (= res!2636108 (not lt!2375414))))

(declare-fun b!6414148 () Bool)

(assert (=> b!6414148 (= e!3892089 e!3892084)))

(declare-fun res!2636107 () Bool)

(assert (=> b!6414148 (=> res!2636107 e!3892084)))

(assert (=> b!6414148 (= res!2636107 call!551231)))

(declare-fun b!6414149 () Bool)

(assert (=> b!6414149 (= e!3892086 (= (head!13120 (_2!36597 (get!22556 lt!2375311))) (c!1170970 (regTwo!33142 r!7292))))))

(declare-fun b!6414150 () Bool)

(assert (=> b!6414150 (= e!3892084 (not (= (head!13120 (_2!36597 (get!22556 lt!2375311))) (c!1170970 (regTwo!33142 r!7292)))))))

(declare-fun d!2011297 () Bool)

(declare-fun e!3892088 () Bool)

(assert (=> d!2011297 e!3892088))

(declare-fun c!1171389 () Bool)

(assert (=> d!2011297 (= c!1171389 ((_ is EmptyExpr!16315) (regTwo!33142 r!7292)))))

(assert (=> d!2011297 (= lt!2375414 e!3892085)))

(declare-fun c!1171388 () Bool)

(assert (=> d!2011297 (= c!1171388 (isEmpty!37269 (_2!36597 (get!22556 lt!2375311))))))

(assert (=> d!2011297 (validRegex!8051 (regTwo!33142 r!7292))))

(assert (=> d!2011297 (= (matchR!8498 (regTwo!33142 r!7292) (_2!36597 (get!22556 lt!2375311))) lt!2375414)))

(declare-fun b!6414151 () Bool)

(declare-fun res!2636104 () Bool)

(assert (=> b!6414151 (=> (not res!2636104) (not e!3892086))))

(assert (=> b!6414151 (= res!2636104 (not call!551231))))

(declare-fun b!6414152 () Bool)

(assert (=> b!6414152 (= e!3892087 (not lt!2375414))))

(declare-fun b!6414153 () Bool)

(assert (=> b!6414153 (= e!3892085 (matchR!8498 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 (get!22556 lt!2375311)))) (tail!12205 (_2!36597 (get!22556 lt!2375311)))))))

(declare-fun b!6414154 () Bool)

(assert (=> b!6414154 (= e!3892088 (= lt!2375414 call!551231))))

(declare-fun b!6414155 () Bool)

(assert (=> b!6414155 (= e!3892088 e!3892087)))

(declare-fun c!1171387 () Bool)

(assert (=> b!6414155 (= c!1171387 ((_ is EmptyLang!16315) (regTwo!33142 r!7292)))))

(assert (= (and d!2011297 c!1171388) b!6414146))

(assert (= (and d!2011297 (not c!1171388)) b!6414153))

(assert (= (and d!2011297 c!1171389) b!6414154))

(assert (= (and d!2011297 (not c!1171389)) b!6414155))

(assert (= (and b!6414155 c!1171387) b!6414152))

(assert (= (and b!6414155 (not c!1171387)) b!6414143))

(assert (= (and b!6414143 (not res!2636102)) b!6414145))

(assert (= (and b!6414145 res!2636103) b!6414151))

(assert (= (and b!6414151 res!2636104) b!6414144))

(assert (= (and b!6414144 res!2636109) b!6414149))

(assert (= (and b!6414145 (not res!2636106)) b!6414147))

(assert (= (and b!6414147 res!2636108) b!6414148))

(assert (= (and b!6414148 (not res!2636107)) b!6414142))

(assert (= (and b!6414142 (not res!2636105)) b!6414150))

(assert (= (or b!6414154 b!6414148 b!6414151) bm!551226))

(declare-fun m!7209736 () Bool)

(assert (=> d!2011297 m!7209736))

(assert (=> d!2011297 m!7209424))

(declare-fun m!7209738 () Bool)

(assert (=> b!6414150 m!7209738))

(assert (=> b!6414146 m!7209428))

(assert (=> b!6414149 m!7209738))

(assert (=> b!6414153 m!7209738))

(assert (=> b!6414153 m!7209738))

(declare-fun m!7209740 () Bool)

(assert (=> b!6414153 m!7209740))

(declare-fun m!7209742 () Bool)

(assert (=> b!6414153 m!7209742))

(assert (=> b!6414153 m!7209740))

(assert (=> b!6414153 m!7209742))

(declare-fun m!7209744 () Bool)

(assert (=> b!6414153 m!7209744))

(assert (=> b!6414144 m!7209742))

(assert (=> b!6414144 m!7209742))

(declare-fun m!7209746 () Bool)

(assert (=> b!6414144 m!7209746))

(assert (=> bm!551226 m!7209736))

(assert (=> b!6414142 m!7209742))

(assert (=> b!6414142 m!7209742))

(assert (=> b!6414142 m!7209746))

(assert (=> b!6413284 d!2011297))

(declare-fun d!2011299 () Bool)

(assert (=> d!2011299 (= (get!22556 lt!2375311) (v!52378 lt!2375311))))

(assert (=> b!6413284 d!2011299))

(declare-fun d!2011301 () Bool)

(assert (=> d!2011301 (= (nullable!6308 lt!2375210) (nullableFct!2254 lt!2375210))))

(declare-fun bs!1612434 () Bool)

(assert (= bs!1612434 d!2011301))

(declare-fun m!7209748 () Bool)

(assert (=> bs!1612434 m!7209748))

(assert (=> b!6413379 d!2011301))

(declare-fun bs!1612435 () Bool)

(declare-fun b!6414158 () Bool)

(assert (= bs!1612435 (and b!6414158 b!6413152)))

(declare-fun lambda!354133 () Int)

(assert (=> bs!1612435 (= (and (= (reg!16644 (regOne!33143 lt!2375201)) (reg!16644 r!7292)) (= (regOne!33143 lt!2375201) r!7292)) (= lambda!354133 lambda!354066))))

(declare-fun bs!1612436 () Bool)

(assert (= bs!1612436 (and b!6414158 b!6413975)))

(assert (=> bs!1612436 (not (= lambda!354133 lambda!354128))))

(declare-fun bs!1612437 () Bool)

(assert (= bs!1612437 (and b!6414158 b!6412781)))

(assert (=> bs!1612437 (not (= lambda!354133 lambda!354022))))

(declare-fun bs!1612438 () Bool)

(assert (= bs!1612438 (and b!6414158 d!2010919)))

(assert (=> bs!1612438 (not (= lambda!354133 lambda!354051))))

(assert (=> bs!1612438 (not (= lambda!354133 lambda!354052))))

(assert (=> bs!1612437 (not (= lambda!354133 lambda!354021))))

(declare-fun bs!1612439 () Bool)

(assert (= bs!1612439 (and b!6414158 b!6412754)))

(assert (=> bs!1612439 (not (= lambda!354133 lambda!354025))))

(declare-fun bs!1612440 () Bool)

(assert (= bs!1612440 (and b!6414158 b!6413231)))

(assert (=> bs!1612440 (not (= lambda!354133 lambda!354073))))

(declare-fun bs!1612441 () Bool)

(assert (= bs!1612441 (and b!6414158 d!2010991)))

(assert (=> bs!1612441 (not (= lambda!354133 lambda!354077))))

(declare-fun bs!1612442 () Bool)

(assert (= bs!1612442 (and b!6414158 b!6413973)))

(assert (=> bs!1612442 (= (and (= (reg!16644 (regOne!33143 lt!2375201)) (reg!16644 (regTwo!33143 r!7292))) (= (regOne!33143 lt!2375201) (regTwo!33143 r!7292))) (= lambda!354133 lambda!354127))))

(declare-fun bs!1612443 () Bool)

(assert (= bs!1612443 (and b!6414158 b!6413229)))

(assert (=> bs!1612443 (= (and (= (reg!16644 (regOne!33143 lt!2375201)) (reg!16644 lt!2375201)) (= (regOne!33143 lt!2375201) lt!2375201)) (= lambda!354133 lambda!354070))))

(assert (=> bs!1612441 (not (= lambda!354133 lambda!354078))))

(declare-fun bs!1612444 () Bool)

(assert (= bs!1612444 (and b!6414158 b!6413154)))

(assert (=> bs!1612444 (not (= lambda!354133 lambda!354067))))

(assert (=> bs!1612439 (not (= lambda!354133 lambda!354024))))

(declare-fun bs!1612445 () Bool)

(assert (= bs!1612445 (and b!6414158 d!2010911)))

(assert (=> bs!1612445 (not (= lambda!354133 lambda!354046))))

(declare-fun bs!1612446 () Bool)

(assert (= bs!1612446 (and b!6414158 d!2010973)))

(assert (=> bs!1612446 (not (= lambda!354133 lambda!354074))))

(assert (=> b!6414158 true))

(assert (=> b!6414158 true))

(declare-fun bs!1612447 () Bool)

(declare-fun b!6414160 () Bool)

(assert (= bs!1612447 (and b!6414160 b!6413152)))

(declare-fun lambda!354134 () Int)

(assert (=> bs!1612447 (not (= lambda!354134 lambda!354066))))

(declare-fun bs!1612448 () Bool)

(assert (= bs!1612448 (and b!6414160 b!6413975)))

(assert (=> bs!1612448 (= (and (= (regOne!33142 (regOne!33143 lt!2375201)) (regOne!33142 (regTwo!33143 r!7292))) (= (regTwo!33142 (regOne!33143 lt!2375201)) (regTwo!33142 (regTwo!33143 r!7292)))) (= lambda!354134 lambda!354128))))

(declare-fun bs!1612449 () Bool)

(assert (= bs!1612449 (and b!6414160 b!6412781)))

(assert (=> bs!1612449 (= (and (= (regOne!33142 (regOne!33143 lt!2375201)) (regOne!33142 r!7292)) (= (regTwo!33142 (regOne!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354134 lambda!354022))))

(declare-fun bs!1612450 () Bool)

(assert (= bs!1612450 (and b!6414160 d!2010919)))

(assert (=> bs!1612450 (not (= lambda!354134 lambda!354051))))

(declare-fun bs!1612451 () Bool)

(assert (= bs!1612451 (and b!6414160 b!6414158)))

(assert (=> bs!1612451 (not (= lambda!354134 lambda!354133))))

(assert (=> bs!1612450 (= (and (= (regOne!33142 (regOne!33143 lt!2375201)) (regOne!33142 r!7292)) (= (regTwo!33142 (regOne!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354134 lambda!354052))))

(assert (=> bs!1612449 (not (= lambda!354134 lambda!354021))))

(declare-fun bs!1612452 () Bool)

(assert (= bs!1612452 (and b!6414160 b!6412754)))

(assert (=> bs!1612452 (= (and (= (regOne!33142 (regOne!33143 lt!2375201)) lt!2375222) (= (regTwo!33142 (regOne!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354134 lambda!354025))))

(declare-fun bs!1612453 () Bool)

(assert (= bs!1612453 (and b!6414160 b!6413231)))

(assert (=> bs!1612453 (= (and (= (regOne!33142 (regOne!33143 lt!2375201)) (regOne!33142 lt!2375201)) (= (regTwo!33142 (regOne!33143 lt!2375201)) (regTwo!33142 lt!2375201))) (= lambda!354134 lambda!354073))))

(declare-fun bs!1612454 () Bool)

(assert (= bs!1612454 (and b!6414160 d!2010991)))

(assert (=> bs!1612454 (not (= lambda!354134 lambda!354077))))

(declare-fun bs!1612455 () Bool)

(assert (= bs!1612455 (and b!6414160 b!6413973)))

(assert (=> bs!1612455 (not (= lambda!354134 lambda!354127))))

(declare-fun bs!1612456 () Bool)

(assert (= bs!1612456 (and b!6414160 b!6413229)))

(assert (=> bs!1612456 (not (= lambda!354134 lambda!354070))))

(assert (=> bs!1612454 (= (and (= (regOne!33142 (regOne!33143 lt!2375201)) lt!2375222) (= (regTwo!33142 (regOne!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354134 lambda!354078))))

(declare-fun bs!1612457 () Bool)

(assert (= bs!1612457 (and b!6414160 b!6413154)))

(assert (=> bs!1612457 (= (and (= (regOne!33142 (regOne!33143 lt!2375201)) (regOne!33142 r!7292)) (= (regTwo!33142 (regOne!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354134 lambda!354067))))

(assert (=> bs!1612452 (not (= lambda!354134 lambda!354024))))

(declare-fun bs!1612458 () Bool)

(assert (= bs!1612458 (and b!6414160 d!2010911)))

(assert (=> bs!1612458 (not (= lambda!354134 lambda!354046))))

(declare-fun bs!1612459 () Bool)

(assert (= bs!1612459 (and b!6414160 d!2010973)))

(assert (=> bs!1612459 (not (= lambda!354134 lambda!354074))))

(assert (=> b!6414160 true))

(assert (=> b!6414160 true))

(declare-fun bm!551227 () Bool)

(declare-fun call!551232 () Bool)

(assert (=> bm!551227 (= call!551232 (isEmpty!37269 s!2326))))

(declare-fun call!551233 () Bool)

(declare-fun bm!551228 () Bool)

(declare-fun c!1171392 () Bool)

(assert (=> bm!551228 (= call!551233 (Exists!3385 (ite c!1171392 lambda!354133 lambda!354134)))))

(declare-fun b!6414156 () Bool)

(declare-fun e!3892091 () Bool)

(declare-fun e!3892095 () Bool)

(assert (=> b!6414156 (= e!3892091 e!3892095)))

(assert (=> b!6414156 (= c!1171392 ((_ is Star!16315) (regOne!33143 lt!2375201)))))

(declare-fun b!6414157 () Bool)

(declare-fun res!2636112 () Bool)

(declare-fun e!3892090 () Bool)

(assert (=> b!6414157 (=> res!2636112 e!3892090)))

(assert (=> b!6414157 (= res!2636112 call!551232)))

(assert (=> b!6414157 (= e!3892095 e!3892090)))

(assert (=> b!6414158 (= e!3892090 call!551233)))

(declare-fun b!6414159 () Bool)

(declare-fun e!3892094 () Bool)

(declare-fun e!3892093 () Bool)

(assert (=> b!6414159 (= e!3892094 e!3892093)))

(declare-fun res!2636110 () Bool)

(assert (=> b!6414159 (= res!2636110 (not ((_ is EmptyLang!16315) (regOne!33143 lt!2375201))))))

(assert (=> b!6414159 (=> (not res!2636110) (not e!3892093))))

(assert (=> b!6414160 (= e!3892095 call!551233)))

(declare-fun b!6414161 () Bool)

(declare-fun c!1171393 () Bool)

(assert (=> b!6414161 (= c!1171393 ((_ is ElementMatch!16315) (regOne!33143 lt!2375201)))))

(declare-fun e!3892092 () Bool)

(assert (=> b!6414161 (= e!3892093 e!3892092)))

(declare-fun b!6414162 () Bool)

(declare-fun e!3892096 () Bool)

(assert (=> b!6414162 (= e!3892096 (matchRSpec!3416 (regTwo!33143 (regOne!33143 lt!2375201)) s!2326))))

(declare-fun d!2011303 () Bool)

(declare-fun c!1171391 () Bool)

(assert (=> d!2011303 (= c!1171391 ((_ is EmptyExpr!16315) (regOne!33143 lt!2375201)))))

(assert (=> d!2011303 (= (matchRSpec!3416 (regOne!33143 lt!2375201) s!2326) e!3892094)))

(declare-fun b!6414163 () Bool)

(assert (=> b!6414163 (= e!3892092 (= s!2326 (Cons!65121 (c!1170970 (regOne!33143 lt!2375201)) Nil!65121)))))

(declare-fun b!6414164 () Bool)

(assert (=> b!6414164 (= e!3892091 e!3892096)))

(declare-fun res!2636111 () Bool)

(assert (=> b!6414164 (= res!2636111 (matchRSpec!3416 (regOne!33143 (regOne!33143 lt!2375201)) s!2326))))

(assert (=> b!6414164 (=> res!2636111 e!3892096)))

(declare-fun b!6414165 () Bool)

(declare-fun c!1171390 () Bool)

(assert (=> b!6414165 (= c!1171390 ((_ is Union!16315) (regOne!33143 lt!2375201)))))

(assert (=> b!6414165 (= e!3892092 e!3892091)))

(declare-fun b!6414166 () Bool)

(assert (=> b!6414166 (= e!3892094 call!551232)))

(assert (= (and d!2011303 c!1171391) b!6414166))

(assert (= (and d!2011303 (not c!1171391)) b!6414159))

(assert (= (and b!6414159 res!2636110) b!6414161))

(assert (= (and b!6414161 c!1171393) b!6414163))

(assert (= (and b!6414161 (not c!1171393)) b!6414165))

(assert (= (and b!6414165 c!1171390) b!6414164))

(assert (= (and b!6414165 (not c!1171390)) b!6414156))

(assert (= (and b!6414164 (not res!2636111)) b!6414162))

(assert (= (and b!6414156 c!1171392) b!6414157))

(assert (= (and b!6414156 (not c!1171392)) b!6414160))

(assert (= (and b!6414157 (not res!2636112)) b!6414158))

(assert (= (or b!6414158 b!6414160) bm!551228))

(assert (= (or b!6414166 b!6414157) bm!551227))

(assert (=> bm!551227 m!7208618))

(declare-fun m!7209750 () Bool)

(assert (=> bm!551228 m!7209750))

(declare-fun m!7209752 () Bool)

(assert (=> b!6414162 m!7209752))

(declare-fun m!7209754 () Bool)

(assert (=> b!6414164 m!7209754))

(assert (=> b!6413235 d!2011303))

(declare-fun d!2011305 () Bool)

(assert (=> d!2011305 true))

(assert (=> d!2011305 true))

(declare-fun res!2636113 () Bool)

(assert (=> d!2011305 (= (choose!47631 lambda!354025) res!2636113)))

(assert (=> d!2010989 d!2011305))

(assert (=> b!6413216 d!2011199))

(declare-fun d!2011307 () Bool)

(assert (=> d!2011307 (= (nullable!6308 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (nullableFct!2254 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))))))

(declare-fun bs!1612460 () Bool)

(assert (= bs!1612460 d!2011307))

(declare-fun m!7209756 () Bool)

(assert (=> bs!1612460 m!7209756))

(assert (=> b!6413790 d!2011307))

(declare-fun d!2011309 () Bool)

(declare-fun c!1171394 () Bool)

(assert (=> d!2011309 (= c!1171394 (isEmpty!37269 (tail!12205 (t!378857 s!2326))))))

(declare-fun e!3892097 () Bool)

(assert (=> d!2011309 (= (matchZipper!2327 (derivationStepZipper!2281 lt!2375211 (head!13120 (t!378857 s!2326))) (tail!12205 (t!378857 s!2326))) e!3892097)))

(declare-fun b!6414167 () Bool)

(assert (=> b!6414167 (= e!3892097 (nullableZipper!2080 (derivationStepZipper!2281 lt!2375211 (head!13120 (t!378857 s!2326)))))))

(declare-fun b!6414168 () Bool)

(assert (=> b!6414168 (= e!3892097 (matchZipper!2327 (derivationStepZipper!2281 (derivationStepZipper!2281 lt!2375211 (head!13120 (t!378857 s!2326))) (head!13120 (tail!12205 (t!378857 s!2326)))) (tail!12205 (tail!12205 (t!378857 s!2326)))))))

(assert (= (and d!2011309 c!1171394) b!6414167))

(assert (= (and d!2011309 (not c!1171394)) b!6414168))

(assert (=> d!2011309 m!7208608))

(assert (=> d!2011309 m!7209718))

(assert (=> b!6414167 m!7208606))

(declare-fun m!7209758 () Bool)

(assert (=> b!6414167 m!7209758))

(assert (=> b!6414168 m!7208608))

(assert (=> b!6414168 m!7209722))

(assert (=> b!6414168 m!7208606))

(assert (=> b!6414168 m!7209722))

(declare-fun m!7209760 () Bool)

(assert (=> b!6414168 m!7209760))

(assert (=> b!6414168 m!7208608))

(assert (=> b!6414168 m!7209726))

(assert (=> b!6414168 m!7209760))

(assert (=> b!6414168 m!7209726))

(declare-fun m!7209762 () Bool)

(assert (=> b!6414168 m!7209762))

(assert (=> b!6412801 d!2011309))

(declare-fun bs!1612461 () Bool)

(declare-fun d!2011311 () Bool)

(assert (= bs!1612461 (and d!2011311 b!6412770)))

(declare-fun lambda!354135 () Int)

(assert (=> bs!1612461 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354135 lambda!354023))))

(declare-fun bs!1612462 () Bool)

(assert (= bs!1612462 (and d!2011311 d!2011031)))

(assert (=> bs!1612462 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354135 lambda!354092))))

(declare-fun bs!1612463 () Bool)

(assert (= bs!1612463 (and d!2011311 d!2011141)))

(assert (=> bs!1612463 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354135 lambda!354124))))

(declare-fun bs!1612464 () Bool)

(assert (= bs!1612464 (and d!2011311 d!2011289)))

(assert (=> bs!1612464 (= lambda!354135 lambda!354132)))

(assert (=> d!2011311 true))

(assert (=> d!2011311 (= (derivationStepZipper!2281 lt!2375211 (head!13120 (t!378857 s!2326))) (flatMap!1820 lt!2375211 lambda!354135))))

(declare-fun bs!1612465 () Bool)

(assert (= bs!1612465 d!2011311))

(declare-fun m!7209764 () Bool)

(assert (=> bs!1612465 m!7209764))

(assert (=> b!6412801 d!2011311))

(assert (=> b!6412801 d!2011291))

(assert (=> b!6412801 d!2011293))

(assert (=> bm!551038 d!2011251))

(assert (=> bs!1612361 d!2011167))

(assert (=> d!2011153 d!2011147))

(declare-fun d!2011313 () Bool)

(assert (=> d!2011313 (= (flatMap!1820 lt!2375203 lambda!354023) (dynLambda!25862 lambda!354023 lt!2375218))))

(assert (=> d!2011313 true))

(declare-fun _$13!3624 () Unit!158591)

(assert (=> d!2011313 (= (choose!47644 lt!2375203 lt!2375218 lambda!354023) _$13!3624)))

(declare-fun b_lambda!243841 () Bool)

(assert (=> (not b_lambda!243841) (not d!2011313)))

(declare-fun bs!1612466 () Bool)

(assert (= bs!1612466 d!2011313))

(assert (=> bs!1612466 m!7208560))

(assert (=> bs!1612466 m!7209448))

(assert (=> d!2011153 d!2011313))

(declare-fun d!2011315 () Bool)

(assert (=> d!2011315 (= (nullable!6308 r!7292) (nullableFct!2254 r!7292))))

(declare-fun bs!1612467 () Bool)

(assert (= bs!1612467 d!2011315))

(declare-fun m!7209766 () Bool)

(assert (=> bs!1612467 m!7209766))

(assert (=> b!6413175 d!2011315))

(declare-fun b!6414169 () Bool)

(declare-fun res!2636117 () Bool)

(declare-fun e!3892099 () Bool)

(assert (=> b!6414169 (=> res!2636117 e!3892099)))

(assert (=> b!6414169 (= res!2636117 (not (isEmpty!37269 (tail!12205 (tail!12205 (_1!36597 lt!2375224))))))))

(declare-fun b!6414170 () Bool)

(declare-fun res!2636114 () Bool)

(declare-fun e!3892098 () Bool)

(assert (=> b!6414170 (=> res!2636114 e!3892098)))

(assert (=> b!6414170 (= res!2636114 (not ((_ is ElementMatch!16315) (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224))))))))

(declare-fun e!3892102 () Bool)

(assert (=> b!6414170 (= e!3892102 e!3892098)))

(declare-fun b!6414171 () Bool)

(declare-fun res!2636121 () Bool)

(declare-fun e!3892101 () Bool)

(assert (=> b!6414171 (=> (not res!2636121) (not e!3892101))))

(assert (=> b!6414171 (= res!2636121 (isEmpty!37269 (tail!12205 (tail!12205 (_1!36597 lt!2375224)))))))

(declare-fun b!6414172 () Bool)

(declare-fun res!2636118 () Bool)

(assert (=> b!6414172 (=> res!2636118 e!3892098)))

(assert (=> b!6414172 (= res!2636118 e!3892101)))

(declare-fun res!2636115 () Bool)

(assert (=> b!6414172 (=> (not res!2636115) (not e!3892101))))

(declare-fun lt!2375415 () Bool)

(assert (=> b!6414172 (= res!2636115 lt!2375415)))

(declare-fun bm!551229 () Bool)

(declare-fun call!551234 () Bool)

(assert (=> bm!551229 (= call!551234 (isEmpty!37269 (tail!12205 (_1!36597 lt!2375224))))))

(declare-fun b!6414173 () Bool)

(declare-fun e!3892100 () Bool)

(assert (=> b!6414173 (= e!3892100 (nullable!6308 (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224)))))))

(declare-fun b!6414174 () Bool)

(declare-fun e!3892104 () Bool)

(assert (=> b!6414174 (= e!3892098 e!3892104)))

(declare-fun res!2636120 () Bool)

(assert (=> b!6414174 (=> (not res!2636120) (not e!3892104))))

(assert (=> b!6414174 (= res!2636120 (not lt!2375415))))

(declare-fun b!6414175 () Bool)

(assert (=> b!6414175 (= e!3892104 e!3892099)))

(declare-fun res!2636119 () Bool)

(assert (=> b!6414175 (=> res!2636119 e!3892099)))

(assert (=> b!6414175 (= res!2636119 call!551234)))

(declare-fun b!6414176 () Bool)

(assert (=> b!6414176 (= e!3892101 (= (head!13120 (tail!12205 (_1!36597 lt!2375224))) (c!1170970 (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224))))))))

(declare-fun b!6414177 () Bool)

(assert (=> b!6414177 (= e!3892099 (not (= (head!13120 (tail!12205 (_1!36597 lt!2375224))) (c!1170970 (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224)))))))))

(declare-fun d!2011317 () Bool)

(declare-fun e!3892103 () Bool)

(assert (=> d!2011317 e!3892103))

(declare-fun c!1171397 () Bool)

(assert (=> d!2011317 (= c!1171397 ((_ is EmptyExpr!16315) (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224)))))))

(assert (=> d!2011317 (= lt!2375415 e!3892100)))

(declare-fun c!1171396 () Bool)

(assert (=> d!2011317 (= c!1171396 (isEmpty!37269 (tail!12205 (_1!36597 lt!2375224))))))

(assert (=> d!2011317 (validRegex!8051 (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224))))))

(assert (=> d!2011317 (= (matchR!8498 (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224))) (tail!12205 (_1!36597 lt!2375224))) lt!2375415)))

(declare-fun b!6414178 () Bool)

(declare-fun res!2636116 () Bool)

(assert (=> b!6414178 (=> (not res!2636116) (not e!3892101))))

(assert (=> b!6414178 (= res!2636116 (not call!551234))))

(declare-fun b!6414179 () Bool)

(assert (=> b!6414179 (= e!3892102 (not lt!2375415))))

(declare-fun b!6414180 () Bool)

(assert (=> b!6414180 (= e!3892100 (matchR!8498 (derivativeStep!5019 (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224))) (head!13120 (tail!12205 (_1!36597 lt!2375224)))) (tail!12205 (tail!12205 (_1!36597 lt!2375224)))))))

(declare-fun b!6414181 () Bool)

(assert (=> b!6414181 (= e!3892103 (= lt!2375415 call!551234))))

(declare-fun b!6414182 () Bool)

(assert (=> b!6414182 (= e!3892103 e!3892102)))

(declare-fun c!1171395 () Bool)

(assert (=> b!6414182 (= c!1171395 ((_ is EmptyLang!16315) (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224)))))))

(assert (= (and d!2011317 c!1171396) b!6414173))

(assert (= (and d!2011317 (not c!1171396)) b!6414180))

(assert (= (and d!2011317 c!1171397) b!6414181))

(assert (= (and d!2011317 (not c!1171397)) b!6414182))

(assert (= (and b!6414182 c!1171395) b!6414179))

(assert (= (and b!6414182 (not c!1171395)) b!6414170))

(assert (= (and b!6414170 (not res!2636114)) b!6414172))

(assert (= (and b!6414172 res!2636115) b!6414178))

(assert (= (and b!6414178 res!2636116) b!6414171))

(assert (= (and b!6414171 res!2636121) b!6414176))

(assert (= (and b!6414172 (not res!2636118)) b!6414174))

(assert (= (and b!6414174 res!2636120) b!6414175))

(assert (= (and b!6414175 (not res!2636119)) b!6414169))

(assert (= (and b!6414169 (not res!2636117)) b!6414177))

(assert (= (or b!6414181 b!6414175 b!6414178) bm!551229))

(assert (=> d!2011317 m!7208838))

(assert (=> d!2011317 m!7208842))

(assert (=> d!2011317 m!7208836))

(declare-fun m!7209768 () Bool)

(assert (=> d!2011317 m!7209768))

(assert (=> b!6414177 m!7208838))

(declare-fun m!7209770 () Bool)

(assert (=> b!6414177 m!7209770))

(assert (=> b!6414173 m!7208836))

(declare-fun m!7209772 () Bool)

(assert (=> b!6414173 m!7209772))

(assert (=> b!6414176 m!7208838))

(assert (=> b!6414176 m!7209770))

(assert (=> b!6414180 m!7208838))

(assert (=> b!6414180 m!7209770))

(assert (=> b!6414180 m!7208836))

(assert (=> b!6414180 m!7209770))

(declare-fun m!7209774 () Bool)

(assert (=> b!6414180 m!7209774))

(assert (=> b!6414180 m!7208838))

(declare-fun m!7209776 () Bool)

(assert (=> b!6414180 m!7209776))

(assert (=> b!6414180 m!7209774))

(assert (=> b!6414180 m!7209776))

(declare-fun m!7209778 () Bool)

(assert (=> b!6414180 m!7209778))

(assert (=> b!6414171 m!7208838))

(assert (=> b!6414171 m!7209776))

(assert (=> b!6414171 m!7209776))

(declare-fun m!7209780 () Bool)

(assert (=> b!6414171 m!7209780))

(assert (=> bm!551229 m!7208838))

(assert (=> bm!551229 m!7208842))

(assert (=> b!6414169 m!7208838))

(assert (=> b!6414169 m!7209776))

(assert (=> b!6414169 m!7209776))

(assert (=> b!6414169 m!7209780))

(assert (=> b!6413040 d!2011317))

(declare-fun call!551237 () Regex!16315)

(declare-fun b!6414183 () Bool)

(declare-fun e!3892108 () Regex!16315)

(declare-fun call!551236 () Regex!16315)

(assert (=> b!6414183 (= e!3892108 (Union!16315 (Concat!25160 call!551236 (regTwo!33142 lt!2375222)) call!551237))))

(declare-fun b!6414184 () Bool)

(declare-fun e!3892106 () Regex!16315)

(declare-fun e!3892109 () Regex!16315)

(assert (=> b!6414184 (= e!3892106 e!3892109)))

(declare-fun c!1171400 () Bool)

(assert (=> b!6414184 (= c!1171400 ((_ is Star!16315) lt!2375222))))

(declare-fun b!6414185 () Bool)

(declare-fun e!3892107 () Regex!16315)

(assert (=> b!6414185 (= e!3892107 EmptyLang!16315)))

(declare-fun bm!551230 () Bool)

(declare-fun c!1171401 () Bool)

(declare-fun c!1171398 () Bool)

(declare-fun call!551238 () Regex!16315)

(assert (=> bm!551230 (= call!551238 (derivativeStep!5019 (ite c!1171398 (regTwo!33143 lt!2375222) (ite c!1171400 (reg!16644 lt!2375222) (ite c!1171401 (regTwo!33142 lt!2375222) (regOne!33142 lt!2375222)))) (head!13120 (_1!36597 lt!2375224))))))

(declare-fun b!6414186 () Bool)

(assert (=> b!6414186 (= c!1171401 (nullable!6308 (regOne!33142 lt!2375222)))))

(assert (=> b!6414186 (= e!3892109 e!3892108)))

(declare-fun b!6414187 () Bool)

(assert (=> b!6414187 (= e!3892106 (Union!16315 call!551236 call!551238))))

(declare-fun b!6414188 () Bool)

(declare-fun e!3892105 () Regex!16315)

(assert (=> b!6414188 (= e!3892105 (ite (= (head!13120 (_1!36597 lt!2375224)) (c!1170970 lt!2375222)) EmptyExpr!16315 EmptyLang!16315))))

(declare-fun bm!551231 () Bool)

(declare-fun call!551235 () Regex!16315)

(assert (=> bm!551231 (= call!551235 call!551238)))

(declare-fun d!2011319 () Bool)

(declare-fun lt!2375416 () Regex!16315)

(assert (=> d!2011319 (validRegex!8051 lt!2375416)))

(assert (=> d!2011319 (= lt!2375416 e!3892107)))

(declare-fun c!1171399 () Bool)

(assert (=> d!2011319 (= c!1171399 (or ((_ is EmptyExpr!16315) lt!2375222) ((_ is EmptyLang!16315) lt!2375222)))))

(assert (=> d!2011319 (validRegex!8051 lt!2375222)))

(assert (=> d!2011319 (= (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 lt!2375224))) lt!2375416)))

(declare-fun b!6414189 () Bool)

(assert (=> b!6414189 (= e!3892109 (Concat!25160 call!551235 lt!2375222))))

(declare-fun bm!551232 () Bool)

(assert (=> bm!551232 (= call!551236 (derivativeStep!5019 (ite c!1171398 (regOne!33143 lt!2375222) (regOne!33142 lt!2375222)) (head!13120 (_1!36597 lt!2375224))))))

(declare-fun b!6414190 () Bool)

(assert (=> b!6414190 (= c!1171398 ((_ is Union!16315) lt!2375222))))

(assert (=> b!6414190 (= e!3892105 e!3892106)))

(declare-fun b!6414191 () Bool)

(assert (=> b!6414191 (= e!3892107 e!3892105)))

(declare-fun c!1171402 () Bool)

(assert (=> b!6414191 (= c!1171402 ((_ is ElementMatch!16315) lt!2375222))))

(declare-fun b!6414192 () Bool)

(assert (=> b!6414192 (= e!3892108 (Union!16315 (Concat!25160 call!551237 (regTwo!33142 lt!2375222)) EmptyLang!16315))))

(declare-fun bm!551233 () Bool)

(assert (=> bm!551233 (= call!551237 call!551235)))

(assert (= (and d!2011319 c!1171399) b!6414185))

(assert (= (and d!2011319 (not c!1171399)) b!6414191))

(assert (= (and b!6414191 c!1171402) b!6414188))

(assert (= (and b!6414191 (not c!1171402)) b!6414190))

(assert (= (and b!6414190 c!1171398) b!6414187))

(assert (= (and b!6414190 (not c!1171398)) b!6414184))

(assert (= (and b!6414184 c!1171400) b!6414189))

(assert (= (and b!6414184 (not c!1171400)) b!6414186))

(assert (= (and b!6414186 c!1171401) b!6414183))

(assert (= (and b!6414186 (not c!1171401)) b!6414192))

(assert (= (or b!6414183 b!6414192) bm!551233))

(assert (= (or b!6414189 bm!551233) bm!551231))

(assert (= (or b!6414187 bm!551231) bm!551230))

(assert (= (or b!6414187 b!6414183) bm!551232))

(assert (=> bm!551230 m!7208832))

(declare-fun m!7209782 () Bool)

(assert (=> bm!551230 m!7209782))

(declare-fun m!7209784 () Bool)

(assert (=> b!6414186 m!7209784))

(declare-fun m!7209786 () Bool)

(assert (=> d!2011319 m!7209786))

(assert (=> d!2011319 m!7208830))

(assert (=> bm!551232 m!7208832))

(declare-fun m!7209788 () Bool)

(assert (=> bm!551232 m!7209788))

(assert (=> b!6413040 d!2011319))

(declare-fun d!2011321 () Bool)

(assert (=> d!2011321 (= (head!13120 (_1!36597 lt!2375224)) (h!71569 (_1!36597 lt!2375224)))))

(assert (=> b!6413040 d!2011321))

(declare-fun d!2011323 () Bool)

(assert (=> d!2011323 (= (tail!12205 (_1!36597 lt!2375224)) (t!378857 (_1!36597 lt!2375224)))))

(assert (=> b!6413040 d!2011323))

(declare-fun d!2011325 () Bool)

(declare-fun c!1171403 () Bool)

(assert (=> d!2011325 (= c!1171403 (isEmpty!37269 (tail!12205 (t!378857 s!2326))))))

(declare-fun e!3892110 () Bool)

(assert (=> d!2011325 (= (matchZipper!2327 (derivationStepZipper!2281 lt!2375213 (head!13120 (t!378857 s!2326))) (tail!12205 (t!378857 s!2326))) e!3892110)))

(declare-fun b!6414193 () Bool)

(assert (=> b!6414193 (= e!3892110 (nullableZipper!2080 (derivationStepZipper!2281 lt!2375213 (head!13120 (t!378857 s!2326)))))))

(declare-fun b!6414194 () Bool)

(assert (=> b!6414194 (= e!3892110 (matchZipper!2327 (derivationStepZipper!2281 (derivationStepZipper!2281 lt!2375213 (head!13120 (t!378857 s!2326))) (head!13120 (tail!12205 (t!378857 s!2326)))) (tail!12205 (tail!12205 (t!378857 s!2326)))))))

(assert (= (and d!2011325 c!1171403) b!6414193))

(assert (= (and d!2011325 (not c!1171403)) b!6414194))

(assert (=> d!2011325 m!7208608))

(assert (=> d!2011325 m!7209718))

(assert (=> b!6414193 m!7208632))

(declare-fun m!7209790 () Bool)

(assert (=> b!6414193 m!7209790))

(assert (=> b!6414194 m!7208608))

(assert (=> b!6414194 m!7209722))

(assert (=> b!6414194 m!7208632))

(assert (=> b!6414194 m!7209722))

(declare-fun m!7209792 () Bool)

(assert (=> b!6414194 m!7209792))

(assert (=> b!6414194 m!7208608))

(assert (=> b!6414194 m!7209726))

(assert (=> b!6414194 m!7209792))

(assert (=> b!6414194 m!7209726))

(declare-fun m!7209794 () Bool)

(assert (=> b!6414194 m!7209794))

(assert (=> b!6412808 d!2011325))

(declare-fun bs!1612468 () Bool)

(declare-fun d!2011327 () Bool)

(assert (= bs!1612468 (and d!2011327 d!2011311)))

(declare-fun lambda!354136 () Int)

(assert (=> bs!1612468 (= lambda!354136 lambda!354135)))

(declare-fun bs!1612469 () Bool)

(assert (= bs!1612469 (and d!2011327 d!2011289)))

(assert (=> bs!1612469 (= lambda!354136 lambda!354132)))

(declare-fun bs!1612470 () Bool)

(assert (= bs!1612470 (and d!2011327 b!6412770)))

(assert (=> bs!1612470 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354136 lambda!354023))))

(declare-fun bs!1612471 () Bool)

(assert (= bs!1612471 (and d!2011327 d!2011031)))

(assert (=> bs!1612471 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354136 lambda!354092))))

(declare-fun bs!1612472 () Bool)

(assert (= bs!1612472 (and d!2011327 d!2011141)))

(assert (=> bs!1612472 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354136 lambda!354124))))

(assert (=> d!2011327 true))

(assert (=> d!2011327 (= (derivationStepZipper!2281 lt!2375213 (head!13120 (t!378857 s!2326))) (flatMap!1820 lt!2375213 lambda!354136))))

(declare-fun bs!1612473 () Bool)

(assert (= bs!1612473 d!2011327))

(declare-fun m!7209796 () Bool)

(assert (=> bs!1612473 m!7209796))

(assert (=> b!6412808 d!2011327))

(assert (=> b!6412808 d!2011291))

(assert (=> b!6412808 d!2011293))

(declare-fun d!2011329 () Bool)

(declare-fun c!1171404 () Bool)

(assert (=> d!2011329 (= c!1171404 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun e!3892111 () Bool)

(assert (=> d!2011329 (= (matchZipper!2327 (derivationStepZipper!2281 z!1189 (head!13120 s!2326)) (tail!12205 s!2326)) e!3892111)))

(declare-fun b!6414195 () Bool)

(assert (=> b!6414195 (= e!3892111 (nullableZipper!2080 (derivationStepZipper!2281 z!1189 (head!13120 s!2326))))))

(declare-fun b!6414196 () Bool)

(assert (=> b!6414196 (= e!3892111 (matchZipper!2327 (derivationStepZipper!2281 (derivationStepZipper!2281 z!1189 (head!13120 s!2326)) (head!13120 (tail!12205 s!2326))) (tail!12205 (tail!12205 s!2326))))))

(assert (= (and d!2011329 c!1171404) b!6414195))

(assert (= (and d!2011329 (not c!1171404)) b!6414196))

(assert (=> d!2011329 m!7208626))

(assert (=> d!2011329 m!7208898))

(assert (=> b!6414195 m!7209028))

(declare-fun m!7209798 () Bool)

(assert (=> b!6414195 m!7209798))

(assert (=> b!6414196 m!7208626))

(assert (=> b!6414196 m!7209624))

(assert (=> b!6414196 m!7209028))

(assert (=> b!6414196 m!7209624))

(declare-fun m!7209800 () Bool)

(assert (=> b!6414196 m!7209800))

(assert (=> b!6414196 m!7208626))

(assert (=> b!6414196 m!7209630))

(assert (=> b!6414196 m!7209800))

(assert (=> b!6414196 m!7209630))

(declare-fun m!7209802 () Bool)

(assert (=> b!6414196 m!7209802))

(assert (=> b!6413374 d!2011329))

(declare-fun bs!1612474 () Bool)

(declare-fun d!2011331 () Bool)

(assert (= bs!1612474 (and d!2011331 d!2011311)))

(declare-fun lambda!354137 () Int)

(assert (=> bs!1612474 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354137 lambda!354135))))

(declare-fun bs!1612475 () Bool)

(assert (= bs!1612475 (and d!2011331 d!2011289)))

(assert (=> bs!1612475 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354137 lambda!354132))))

(declare-fun bs!1612476 () Bool)

(assert (= bs!1612476 (and d!2011331 b!6412770)))

(assert (=> bs!1612476 (= (= (head!13120 s!2326) (h!71569 s!2326)) (= lambda!354137 lambda!354023))))

(declare-fun bs!1612477 () Bool)

(assert (= bs!1612477 (and d!2011331 d!2011031)))

(assert (=> bs!1612477 (= (= (head!13120 s!2326) (h!71569 s!2326)) (= lambda!354137 lambda!354092))))

(declare-fun bs!1612478 () Bool)

(assert (= bs!1612478 (and d!2011331 d!2011141)))

(assert (=> bs!1612478 (= (= (head!13120 s!2326) (h!71569 s!2326)) (= lambda!354137 lambda!354124))))

(declare-fun bs!1612479 () Bool)

(assert (= bs!1612479 (and d!2011331 d!2011327)))

(assert (=> bs!1612479 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354137 lambda!354136))))

(assert (=> d!2011331 true))

(assert (=> d!2011331 (= (derivationStepZipper!2281 z!1189 (head!13120 s!2326)) (flatMap!1820 z!1189 lambda!354137))))

(declare-fun bs!1612480 () Bool)

(assert (= bs!1612480 d!2011331))

(declare-fun m!7209804 () Bool)

(assert (=> bs!1612480 m!7209804))

(assert (=> b!6413374 d!2011331))

(assert (=> b!6413374 d!2011199))

(assert (=> b!6413374 d!2011207))

(declare-fun d!2011333 () Bool)

(assert (=> d!2011333 (= (maxBigInt!0 (ite c!1171221 call!551122 call!551117) (ite c!1171221 call!551117 call!551122)) (ite (>= (ite c!1171221 call!551122 call!551117) (ite c!1171221 call!551117 call!551122)) (ite c!1171221 call!551122 call!551117) (ite c!1171221 call!551117 call!551122)))))

(assert (=> bm!551116 d!2011333))

(declare-fun d!2011335 () Bool)

(assert (=> d!2011335 (= (isEmpty!37268 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))) ((_ is Nil!65120) (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(assert (=> b!6413597 d!2011335))

(assert (=> bm!550997 d!2010935))

(declare-fun b!6414198 () Bool)

(declare-fun res!2636124 () Bool)

(declare-fun e!3892118 () Bool)

(assert (=> b!6414198 (=> (not res!2636124) (not e!3892118))))

(declare-fun lt!2375417 () Int)

(declare-fun call!551241 () Int)

(assert (=> b!6414198 (= res!2636124 (> lt!2375417 call!551241))))

(declare-fun e!3892113 () Bool)

(assert (=> b!6414198 (= e!3892113 e!3892118)))

(declare-fun b!6414199 () Bool)

(declare-fun e!3892116 () Bool)

(assert (=> b!6414199 (= e!3892116 e!3892113)))

(declare-fun c!1171410 () Bool)

(assert (=> b!6414199 (= c!1171410 ((_ is Concat!25160) (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))

(declare-fun bm!551234 () Bool)

(declare-fun call!551240 () Int)

(declare-fun call!551239 () Int)

(assert (=> bm!551234 (= call!551240 call!551239)))

(declare-fun bm!551235 () Bool)

(declare-fun c!1171405 () Bool)

(declare-fun c!1171406 () Bool)

(assert (=> bm!551235 (= call!551239 (regexDepth!342 (ite c!1171405 (reg!16644 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))) (ite c!1171406 (regTwo!33143 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))) (regOne!33142 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292))))))))))

(declare-fun call!551245 () Int)

(declare-fun bm!551236 () Bool)

(assert (=> bm!551236 (= call!551245 (regexDepth!342 (ite c!1171406 (regOne!33143 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))) (regTwo!33142 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))))

(declare-fun b!6414200 () Bool)

(declare-fun e!3892121 () Int)

(declare-fun call!551244 () Int)

(assert (=> b!6414200 (= e!3892121 (+ 1 call!551244))))

(declare-fun call!551242 () Int)

(declare-fun c!1171407 () Bool)

(declare-fun bm!551237 () Bool)

(assert (=> bm!551237 (= call!551242 (regexDepth!342 (ite c!1171407 (regTwo!33143 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))) (ite c!1171410 (regOne!33142 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))) (reg!16644 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292))))))))))

(declare-fun b!6414201 () Bool)

(declare-fun e!3892112 () Int)

(declare-fun e!3892120 () Int)

(assert (=> b!6414201 (= e!3892112 e!3892120)))

(assert (=> b!6414201 (= c!1171405 ((_ is Star!16315) (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))

(declare-fun call!551243 () Int)

(declare-fun bm!551238 () Bool)

(assert (=> bm!551238 (= call!551243 (regexDepth!342 (ite c!1171407 (regOne!33143 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))) (regTwo!33142 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))))

(declare-fun c!1171409 () Bool)

(declare-fun b!6414202 () Bool)

(assert (=> b!6414202 (= c!1171409 ((_ is Star!16315) (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))

(declare-fun e!3892115 () Bool)

(assert (=> b!6414202 (= e!3892113 e!3892115)))

(declare-fun b!6414203 () Bool)

(assert (=> b!6414203 (= e!3892115 (= lt!2375417 1))))

(declare-fun bm!551239 () Bool)

(assert (=> bm!551239 (= call!551244 (maxBigInt!0 (ite c!1171406 call!551245 call!551240) (ite c!1171406 call!551240 call!551245)))))

(declare-fun b!6414204 () Bool)

(declare-fun e!3892117 () Bool)

(assert (=> b!6414204 (= e!3892117 e!3892116)))

(assert (=> b!6414204 (= c!1171407 ((_ is Union!16315) (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))

(declare-fun b!6414205 () Bool)

(assert (=> b!6414205 (= c!1171406 ((_ is Union!16315) (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))

(declare-fun e!3892114 () Int)

(assert (=> b!6414205 (= e!3892120 e!3892114)))

(declare-fun d!2011337 () Bool)

(assert (=> d!2011337 e!3892117))

(declare-fun res!2636123 () Bool)

(assert (=> d!2011337 (=> (not res!2636123) (not e!3892117))))

(assert (=> d!2011337 (= res!2636123 (> lt!2375417 0))))

(assert (=> d!2011337 (= lt!2375417 e!3892112)))

(declare-fun c!1171408 () Bool)

(assert (=> d!2011337 (= c!1171408 ((_ is ElementMatch!16315) (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))

(assert (=> d!2011337 (= (regexDepth!342 (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))) lt!2375417)))

(declare-fun b!6414206 () Bool)

(declare-fun e!3892119 () Bool)

(assert (=> b!6414206 (= e!3892116 e!3892119)))

(declare-fun res!2636122 () Bool)

(assert (=> b!6414206 (= res!2636122 (> lt!2375417 call!551243))))

(assert (=> b!6414206 (=> (not res!2636122) (not e!3892119))))

(declare-fun bm!551240 () Bool)

(assert (=> bm!551240 (= call!551241 call!551242)))

(declare-fun b!6414207 () Bool)

(assert (=> b!6414207 (= e!3892120 (+ 1 call!551239))))

(declare-fun b!6414208 () Bool)

(assert (=> b!6414208 (= e!3892121 1)))

(declare-fun b!6414209 () Bool)

(assert (=> b!6414209 (= e!3892114 e!3892121)))

(declare-fun c!1171411 () Bool)

(assert (=> b!6414209 (= c!1171411 ((_ is Concat!25160) (ite c!1171213 (reg!16644 r!7292) (ite c!1171214 (regTwo!33143 r!7292) (regOne!33142 r!7292)))))))

(declare-fun b!6414210 () Bool)

(assert (=> b!6414210 (= e!3892118 (> lt!2375417 call!551243))))

(declare-fun b!6414211 () Bool)

(assert (=> b!6414211 (= e!3892112 1)))

(declare-fun b!6414212 () Bool)

(assert (=> b!6414212 (= e!3892115 (> lt!2375417 call!551241))))

(declare-fun b!6414213 () Bool)

(assert (=> b!6414213 (= e!3892119 (> lt!2375417 call!551242))))

(declare-fun b!6414214 () Bool)

(assert (=> b!6414214 (= e!3892114 (+ 1 call!551244))))

(assert (= (and d!2011337 c!1171408) b!6414211))

(assert (= (and d!2011337 (not c!1171408)) b!6414201))

(assert (= (and b!6414201 c!1171405) b!6414207))

(assert (= (and b!6414201 (not c!1171405)) b!6414205))

(assert (= (and b!6414205 c!1171406) b!6414214))

(assert (= (and b!6414205 (not c!1171406)) b!6414209))

(assert (= (and b!6414209 c!1171411) b!6414200))

(assert (= (and b!6414209 (not c!1171411)) b!6414208))

(assert (= (or b!6414214 b!6414200) bm!551234))

(assert (= (or b!6414214 b!6414200) bm!551236))

(assert (= (or b!6414214 b!6414200) bm!551239))

(assert (= (or b!6414207 bm!551234) bm!551235))

(assert (= (and d!2011337 res!2636123) b!6414204))

(assert (= (and b!6414204 c!1171407) b!6414206))

(assert (= (and b!6414204 (not c!1171407)) b!6414199))

(assert (= (and b!6414206 res!2636122) b!6414213))

(assert (= (and b!6414199 c!1171410) b!6414198))

(assert (= (and b!6414199 (not c!1171410)) b!6414202))

(assert (= (and b!6414198 res!2636124) b!6414210))

(assert (= (and b!6414202 c!1171409) b!6414212))

(assert (= (and b!6414202 (not c!1171409)) b!6414203))

(assert (= (or b!6414198 b!6414212) bm!551240))

(assert (= (or b!6414213 bm!551240) bm!551237))

(assert (= (or b!6414206 b!6414210) bm!551238))

(declare-fun m!7209806 () Bool)

(assert (=> bm!551237 m!7209806))

(declare-fun m!7209808 () Bool)

(assert (=> bm!551235 m!7209808))

(declare-fun m!7209810 () Bool)

(assert (=> bm!551239 m!7209810))

(declare-fun m!7209812 () Bool)

(assert (=> bm!551236 m!7209812))

(declare-fun m!7209814 () Bool)

(assert (=> bm!551238 m!7209814))

(assert (=> bm!551099 d!2011337))

(assert (=> b!6413820 d!2011219))

(assert (=> b!6413820 d!2011221))

(declare-fun bm!551241 () Bool)

(declare-fun call!551246 () (InoxSet Context!11398))

(assert (=> bm!551241 (= call!551246 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375218))))) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375218)))))) (h!71569 s!2326)))))

(declare-fun b!6414215 () Bool)

(declare-fun e!3892122 () (InoxSet Context!11398))

(assert (=> b!6414215 (= e!3892122 ((_ map or) call!551246 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375218)))))) (h!71569 s!2326))))))

(declare-fun b!6414216 () Bool)

(declare-fun e!3892124 () (InoxSet Context!11398))

(assert (=> b!6414216 (= e!3892124 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6414218 () Bool)

(assert (=> b!6414218 (= e!3892124 call!551246)))

(declare-fun b!6414219 () Bool)

(declare-fun e!3892123 () Bool)

(assert (=> b!6414219 (= e!3892123 (nullable!6308 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375218)))))))))

(declare-fun b!6414217 () Bool)

(assert (=> b!6414217 (= e!3892122 e!3892124)))

(declare-fun c!1171413 () Bool)

(assert (=> b!6414217 (= c!1171413 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375218))))))))

(declare-fun d!2011339 () Bool)

(declare-fun c!1171412 () Bool)

(assert (=> d!2011339 (= c!1171412 e!3892123)))

(declare-fun res!2636125 () Bool)

(assert (=> d!2011339 (=> (not res!2636125) (not e!3892123))))

(assert (=> d!2011339 (= res!2636125 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375218))))))))

(assert (=> d!2011339 (= (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 lt!2375218))) (h!71569 s!2326)) e!3892122)))

(assert (= (and d!2011339 res!2636125) b!6414219))

(assert (= (and d!2011339 c!1171412) b!6414215))

(assert (= (and d!2011339 (not c!1171412)) b!6414217))

(assert (= (and b!6414217 c!1171413) b!6414218))

(assert (= (and b!6414217 (not c!1171413)) b!6414216))

(assert (= (or b!6414215 b!6414218) bm!551241))

(declare-fun m!7209816 () Bool)

(assert (=> bm!551241 m!7209816))

(declare-fun m!7209818 () Bool)

(assert (=> b!6414215 m!7209818))

(declare-fun m!7209820 () Bool)

(assert (=> b!6414219 m!7209820))

(assert (=> b!6413771 d!2011339))

(declare-fun bm!551242 () Bool)

(declare-fun call!551252 () (InoxSet Context!11398))

(declare-fun c!1171414 () Bool)

(declare-fun c!1171417 () Bool)

(declare-fun c!1171415 () Bool)

(declare-fun call!551248 () List!65244)

(assert (=> bm!551242 (= call!551252 (derivationStepZipperDown!1563 (ite c!1171417 (regOne!33143 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))) (ite c!1171414 (regTwo!33142 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))) (ite c!1171415 (regOne!33142 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))) (reg!16644 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292)))))))) (ite (or c!1171417 c!1171414) (ite c!1171267 lt!2375195 (Context!11399 call!551145)) (Context!11399 call!551248)) (h!71569 s!2326)))))

(declare-fun b!6414221 () Bool)

(declare-fun c!1171416 () Bool)

(assert (=> b!6414221 (= c!1171416 ((_ is Star!16315) (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))))))

(declare-fun e!3892128 () (InoxSet Context!11398))

(declare-fun e!3892126 () (InoxSet Context!11398))

(assert (=> b!6414221 (= e!3892128 e!3892126)))

(declare-fun b!6414222 () Bool)

(declare-fun call!551250 () (InoxSet Context!11398))

(assert (=> b!6414222 (= e!3892126 call!551250)))

(declare-fun b!6414223 () Bool)

(declare-fun e!3892125 () (InoxSet Context!11398))

(assert (=> b!6414223 (= e!3892125 e!3892128)))

(assert (=> b!6414223 (= c!1171415 ((_ is Concat!25160) (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))))))

(declare-fun b!6414224 () Bool)

(declare-fun e!3892129 () (InoxSet Context!11398))

(declare-fun call!551251 () (InoxSet Context!11398))

(assert (=> b!6414224 (= e!3892129 ((_ map or) call!551252 call!551251))))

(declare-fun b!6414225 () Bool)

(declare-fun e!3892127 () Bool)

(assert (=> b!6414225 (= e!3892127 (nullable!6308 (regOne!33142 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292)))))))))

(declare-fun call!551247 () List!65244)

(declare-fun bm!551243 () Bool)

(assert (=> bm!551243 (= call!551251 (derivationStepZipperDown!1563 (ite c!1171417 (regTwo!33143 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))) (regOne!33142 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292)))))) (ite c!1171417 (ite c!1171267 lt!2375195 (Context!11399 call!551145)) (Context!11399 call!551247)) (h!71569 s!2326)))))

(declare-fun b!6414220 () Bool)

(assert (=> b!6414220 (= e!3892128 call!551250)))

(declare-fun c!1171418 () Bool)

(declare-fun d!2011341 () Bool)

(assert (=> d!2011341 (= c!1171418 (and ((_ is ElementMatch!16315) (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))) (= (c!1170970 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))) (h!71569 s!2326))))))

(declare-fun e!3892130 () (InoxSet Context!11398))

(assert (=> d!2011341 (= (derivationStepZipperDown!1563 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292)))) (ite c!1171267 lt!2375195 (Context!11399 call!551145)) (h!71569 s!2326)) e!3892130)))

(declare-fun bm!551244 () Bool)

(declare-fun call!551249 () (InoxSet Context!11398))

(assert (=> bm!551244 (= call!551250 call!551249)))

(declare-fun b!6414226 () Bool)

(assert (=> b!6414226 (= e!3892126 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551245 () Bool)

(assert (=> bm!551245 (= call!551247 ($colon$colon!2176 (exprs!6199 (ite c!1171267 lt!2375195 (Context!11399 call!551145))) (ite (or c!1171414 c!1171415) (regTwo!33142 (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))) (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292)))))))))

(declare-fun bm!551246 () Bool)

(assert (=> bm!551246 (= call!551249 call!551252)))

(declare-fun bm!551247 () Bool)

(assert (=> bm!551247 (= call!551248 call!551247)))

(declare-fun b!6414227 () Bool)

(assert (=> b!6414227 (= e!3892130 e!3892129)))

(assert (=> b!6414227 (= c!1171417 ((_ is Union!16315) (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))))))

(declare-fun b!6414228 () Bool)

(assert (=> b!6414228 (= e!3892125 ((_ map or) call!551251 call!551249))))

(declare-fun b!6414229 () Bool)

(assert (=> b!6414229 (= e!3892130 (store ((as const (Array Context!11398 Bool)) false) (ite c!1171267 lt!2375195 (Context!11399 call!551145)) true))))

(declare-fun b!6414230 () Bool)

(assert (=> b!6414230 (= c!1171414 e!3892127)))

(declare-fun res!2636126 () Bool)

(assert (=> b!6414230 (=> (not res!2636126) (not e!3892127))))

(assert (=> b!6414230 (= res!2636126 ((_ is Concat!25160) (ite c!1171267 (regTwo!33143 (reg!16644 (regOne!33142 r!7292))) (regOne!33142 (reg!16644 (regOne!33142 r!7292))))))))

(assert (=> b!6414230 (= e!3892129 e!3892125)))

(assert (= (and d!2011341 c!1171418) b!6414229))

(assert (= (and d!2011341 (not c!1171418)) b!6414227))

(assert (= (and b!6414227 c!1171417) b!6414224))

(assert (= (and b!6414227 (not c!1171417)) b!6414230))

(assert (= (and b!6414230 res!2636126) b!6414225))

(assert (= (and b!6414230 c!1171414) b!6414228))

(assert (= (and b!6414230 (not c!1171414)) b!6414223))

(assert (= (and b!6414223 c!1171415) b!6414220))

(assert (= (and b!6414223 (not c!1171415)) b!6414221))

(assert (= (and b!6414221 c!1171416) b!6414222))

(assert (= (and b!6414221 (not c!1171416)) b!6414226))

(assert (= (or b!6414220 b!6414222) bm!551247))

(assert (= (or b!6414220 b!6414222) bm!551244))

(assert (= (or b!6414228 bm!551247) bm!551245))

(assert (= (or b!6414228 bm!551244) bm!551246))

(assert (= (or b!6414224 b!6414228) bm!551243))

(assert (= (or b!6414224 bm!551246) bm!551242))

(declare-fun m!7209822 () Bool)

(assert (=> bm!551245 m!7209822))

(declare-fun m!7209824 () Bool)

(assert (=> b!6414225 m!7209824))

(declare-fun m!7209826 () Bool)

(assert (=> bm!551243 m!7209826))

(declare-fun m!7209828 () Bool)

(assert (=> b!6414229 m!7209828))

(declare-fun m!7209830 () Bool)

(assert (=> bm!551242 m!7209830))

(assert (=> bm!551141 d!2011341))

(declare-fun d!2011343 () Bool)

(assert (=> d!2011343 (= (isEmpty!37268 (t!378856 (unfocusZipperList!1736 zl!343))) ((_ is Nil!65120) (t!378856 (unfocusZipperList!1736 zl!343))))))

(assert (=> b!6413726 d!2011343))

(assert (=> d!2010911 d!2010893))

(declare-fun b!6414231 () Bool)

(declare-fun res!2636129 () Bool)

(declare-fun e!3892131 () Bool)

(assert (=> b!6414231 (=> res!2636129 e!3892131)))

(assert (=> b!6414231 (= res!2636129 (not ((_ is Concat!25160) (regOne!33142 r!7292))))))

(declare-fun e!3892132 () Bool)

(assert (=> b!6414231 (= e!3892132 e!3892131)))

(declare-fun b!6414232 () Bool)

(declare-fun e!3892134 () Bool)

(declare-fun e!3892136 () Bool)

(assert (=> b!6414232 (= e!3892134 e!3892136)))

(declare-fun res!2636130 () Bool)

(assert (=> b!6414232 (= res!2636130 (not (nullable!6308 (reg!16644 (regOne!33142 r!7292)))))))

(assert (=> b!6414232 (=> (not res!2636130) (not e!3892136))))

(declare-fun b!6414233 () Bool)

(declare-fun call!551255 () Bool)

(assert (=> b!6414233 (= e!3892136 call!551255)))

(declare-fun b!6414234 () Bool)

(declare-fun e!3892137 () Bool)

(assert (=> b!6414234 (= e!3892131 e!3892137)))

(declare-fun res!2636127 () Bool)

(assert (=> b!6414234 (=> (not res!2636127) (not e!3892137))))

(declare-fun call!551253 () Bool)

(assert (=> b!6414234 (= res!2636127 call!551253)))

(declare-fun bm!551248 () Bool)

(declare-fun call!551254 () Bool)

(assert (=> bm!551248 (= call!551254 call!551255)))

(declare-fun b!6414236 () Bool)

(declare-fun res!2636128 () Bool)

(declare-fun e!3892135 () Bool)

(assert (=> b!6414236 (=> (not res!2636128) (not e!3892135))))

(assert (=> b!6414236 (= res!2636128 call!551253)))

(assert (=> b!6414236 (= e!3892132 e!3892135)))

(declare-fun b!6414237 () Bool)

(declare-fun e!3892133 () Bool)

(assert (=> b!6414237 (= e!3892133 e!3892134)))

(declare-fun c!1171419 () Bool)

(assert (=> b!6414237 (= c!1171419 ((_ is Star!16315) (regOne!33142 r!7292)))))

(declare-fun bm!551249 () Bool)

(declare-fun c!1171420 () Bool)

(assert (=> bm!551249 (= call!551255 (validRegex!8051 (ite c!1171419 (reg!16644 (regOne!33142 r!7292)) (ite c!1171420 (regTwo!33143 (regOne!33142 r!7292)) (regTwo!33142 (regOne!33142 r!7292))))))))

(declare-fun bm!551250 () Bool)

(assert (=> bm!551250 (= call!551253 (validRegex!8051 (ite c!1171420 (regOne!33143 (regOne!33142 r!7292)) (regOne!33142 (regOne!33142 r!7292)))))))

(declare-fun b!6414238 () Bool)

(assert (=> b!6414238 (= e!3892134 e!3892132)))

(assert (=> b!6414238 (= c!1171420 ((_ is Union!16315) (regOne!33142 r!7292)))))

(declare-fun b!6414239 () Bool)

(assert (=> b!6414239 (= e!3892135 call!551254)))

(declare-fun d!2011345 () Bool)

(declare-fun res!2636131 () Bool)

(assert (=> d!2011345 (=> res!2636131 e!3892133)))

(assert (=> d!2011345 (= res!2636131 ((_ is ElementMatch!16315) (regOne!33142 r!7292)))))

(assert (=> d!2011345 (= (validRegex!8051 (regOne!33142 r!7292)) e!3892133)))

(declare-fun b!6414235 () Bool)

(assert (=> b!6414235 (= e!3892137 call!551254)))

(assert (= (and d!2011345 (not res!2636131)) b!6414237))

(assert (= (and b!6414237 c!1171419) b!6414232))

(assert (= (and b!6414237 (not c!1171419)) b!6414238))

(assert (= (and b!6414232 res!2636130) b!6414233))

(assert (= (and b!6414238 c!1171420) b!6414236))

(assert (= (and b!6414238 (not c!1171420)) b!6414231))

(assert (= (and b!6414236 res!2636128) b!6414239))

(assert (= (and b!6414231 (not res!2636129)) b!6414234))

(assert (= (and b!6414234 res!2636127) b!6414235))

(assert (= (or b!6414239 b!6414235) bm!551248))

(assert (= (or b!6414236 b!6414234) bm!551250))

(assert (= (or b!6414233 bm!551248) bm!551249))

(declare-fun m!7209832 () Bool)

(assert (=> b!6414232 m!7209832))

(declare-fun m!7209834 () Bool)

(assert (=> bm!551249 m!7209834))

(declare-fun m!7209836 () Bool)

(assert (=> bm!551250 m!7209836))

(assert (=> d!2010911 d!2011345))

(assert (=> d!2010911 d!2010933))

(declare-fun d!2011347 () Bool)

(assert (=> d!2011347 (= (Exists!3385 lambda!354046) (choose!47631 lambda!354046))))

(declare-fun bs!1612481 () Bool)

(assert (= bs!1612481 d!2011347))

(declare-fun m!7209838 () Bool)

(assert (=> bs!1612481 m!7209838))

(assert (=> d!2010911 d!2011347))

(declare-fun bs!1612482 () Bool)

(declare-fun d!2011349 () Bool)

(assert (= bs!1612482 (and d!2011349 b!6413152)))

(declare-fun lambda!354140 () Int)

(assert (=> bs!1612482 (not (= lambda!354140 lambda!354066))))

(declare-fun bs!1612483 () Bool)

(assert (= bs!1612483 (and d!2011349 b!6413975)))

(assert (=> bs!1612483 (not (= lambda!354140 lambda!354128))))

(declare-fun bs!1612484 () Bool)

(assert (= bs!1612484 (and d!2011349 b!6412781)))

(assert (=> bs!1612484 (not (= lambda!354140 lambda!354022))))

(declare-fun bs!1612485 () Bool)

(assert (= bs!1612485 (and d!2011349 d!2010919)))

(assert (=> bs!1612485 (= lambda!354140 lambda!354051)))

(declare-fun bs!1612486 () Bool)

(assert (= bs!1612486 (and d!2011349 b!6414158)))

(assert (=> bs!1612486 (not (= lambda!354140 lambda!354133))))

(assert (=> bs!1612485 (not (= lambda!354140 lambda!354052))))

(assert (=> bs!1612484 (= lambda!354140 lambda!354021)))

(declare-fun bs!1612487 () Bool)

(assert (= bs!1612487 (and d!2011349 b!6412754)))

(assert (=> bs!1612487 (not (= lambda!354140 lambda!354025))))

(declare-fun bs!1612488 () Bool)

(assert (= bs!1612488 (and d!2011349 b!6414160)))

(assert (=> bs!1612488 (not (= lambda!354140 lambda!354134))))

(declare-fun bs!1612489 () Bool)

(assert (= bs!1612489 (and d!2011349 b!6413231)))

(assert (=> bs!1612489 (not (= lambda!354140 lambda!354073))))

(declare-fun bs!1612490 () Bool)

(assert (= bs!1612490 (and d!2011349 d!2010991)))

(assert (=> bs!1612490 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354140 lambda!354077))))

(declare-fun bs!1612491 () Bool)

(assert (= bs!1612491 (and d!2011349 b!6413973)))

(assert (=> bs!1612491 (not (= lambda!354140 lambda!354127))))

(declare-fun bs!1612492 () Bool)

(assert (= bs!1612492 (and d!2011349 b!6413229)))

(assert (=> bs!1612492 (not (= lambda!354140 lambda!354070))))

(assert (=> bs!1612490 (not (= lambda!354140 lambda!354078))))

(declare-fun bs!1612493 () Bool)

(assert (= bs!1612493 (and d!2011349 b!6413154)))

(assert (=> bs!1612493 (not (= lambda!354140 lambda!354067))))

(assert (=> bs!1612487 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354140 lambda!354024))))

(declare-fun bs!1612494 () Bool)

(assert (= bs!1612494 (and d!2011349 d!2010911)))

(assert (=> bs!1612494 (= lambda!354140 lambda!354046)))

(declare-fun bs!1612495 () Bool)

(assert (= bs!1612495 (and d!2011349 d!2010973)))

(assert (=> bs!1612495 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354140 lambda!354074))))

(assert (=> d!2011349 true))

(assert (=> d!2011349 true))

(assert (=> d!2011349 true))

(assert (=> d!2011349 (= (isDefined!12909 (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326)) (Exists!3385 lambda!354140))))

(assert (=> d!2011349 true))

(declare-fun _$89!2652 () Unit!158591)

(assert (=> d!2011349 (= (choose!47632 (regOne!33142 r!7292) (regTwo!33142 r!7292) s!2326) _$89!2652)))

(declare-fun bs!1612496 () Bool)

(assert (= bs!1612496 d!2011349))

(assert (=> bs!1612496 m!7208534))

(assert (=> bs!1612496 m!7208534))

(assert (=> bs!1612496 m!7208536))

(declare-fun m!7209840 () Bool)

(assert (=> bs!1612496 m!7209840))

(assert (=> d!2010911 d!2011349))

(declare-fun d!2011351 () Bool)

(assert (=> d!2011351 true))

(declare-fun setRes!43767 () Bool)

(assert (=> d!2011351 setRes!43767))

(declare-fun condSetEmpty!43767 () Bool)

(declare-fun res!2636138 () (InoxSet Context!11398))

(assert (=> d!2011351 (= condSetEmpty!43767 (= res!2636138 ((as const (Array Context!11398 Bool)) false)))))

(assert (=> d!2011351 (= (choose!47643 lt!2375183 lambda!354023) res!2636138)))

(declare-fun setIsEmpty!43767 () Bool)

(assert (=> setIsEmpty!43767 setRes!43767))

(declare-fun setElem!43767 () Context!11398)

(declare-fun setNonEmpty!43767 () Bool)

(declare-fun e!3892142 () Bool)

(declare-fun tp!1781824 () Bool)

(assert (=> setNonEmpty!43767 (= setRes!43767 (and tp!1781824 (inv!84034 setElem!43767) e!3892142))))

(declare-fun setRest!43767 () (InoxSet Context!11398))

(assert (=> setNonEmpty!43767 (= res!2636138 ((_ map or) (store ((as const (Array Context!11398 Bool)) false) setElem!43767 true) setRest!43767))))

(declare-fun b!6414246 () Bool)

(declare-fun tp!1781823 () Bool)

(assert (=> b!6414246 (= e!3892142 tp!1781823)))

(assert (= (and d!2011351 condSetEmpty!43767) setIsEmpty!43767))

(assert (= (and d!2011351 (not condSetEmpty!43767)) setNonEmpty!43767))

(assert (= setNonEmpty!43767 b!6414246))

(declare-fun m!7209842 () Bool)

(assert (=> setNonEmpty!43767 m!7209842))

(assert (=> d!2011165 d!2011351))

(declare-fun d!2011353 () Bool)

(declare-fun res!2636143 () Bool)

(declare-fun e!3892147 () Bool)

(assert (=> d!2011353 (=> res!2636143 e!3892147)))

(assert (=> d!2011353 (= res!2636143 ((_ is Nil!65122) lt!2375193))))

(assert (=> d!2011353 (= (forall!15503 lt!2375193 lambda!354037) e!3892147)))

(declare-fun b!6414251 () Bool)

(declare-fun e!3892148 () Bool)

(assert (=> b!6414251 (= e!3892147 e!3892148)))

(declare-fun res!2636144 () Bool)

(assert (=> b!6414251 (=> (not res!2636144) (not e!3892148))))

(declare-fun dynLambda!25865 (Int Context!11398) Bool)

(assert (=> b!6414251 (= res!2636144 (dynLambda!25865 lambda!354037 (h!71570 lt!2375193)))))

(declare-fun b!6414252 () Bool)

(assert (=> b!6414252 (= e!3892148 (forall!15503 (t!378858 lt!2375193) lambda!354037))))

(assert (= (and d!2011353 (not res!2636143)) b!6414251))

(assert (= (and b!6414251 res!2636144) b!6414252))

(declare-fun b_lambda!243843 () Bool)

(assert (=> (not b_lambda!243843) (not b!6414251)))

(declare-fun m!7209844 () Bool)

(assert (=> b!6414251 m!7209844))

(declare-fun m!7209846 () Bool)

(assert (=> b!6414252 m!7209846))

(assert (=> b!6412822 d!2011353))

(assert (=> d!2011009 d!2011251))

(assert (=> bs!1612364 d!2011123))

(assert (=> b!6413356 d!2011173))

(assert (=> b!6413209 d!2011205))

(assert (=> b!6413209 d!2011207))

(declare-fun bs!1612497 () Bool)

(declare-fun d!2011355 () Bool)

(assert (= bs!1612497 (and d!2011355 b!6412815)))

(declare-fun lambda!354143 () Int)

(assert (=> bs!1612497 (not (= lambda!354143 lambda!354033))))

(declare-fun bs!1612498 () Bool)

(assert (= bs!1612498 (and d!2011355 b!6412817)))

(assert (=> bs!1612498 (not (= lambda!354143 lambda!354034))))

(declare-fun bs!1612499 () Bool)

(assert (= bs!1612499 (and d!2011355 b!6412820)))

(assert (=> bs!1612499 (not (= lambda!354143 lambda!354036))))

(declare-fun bs!1612500 () Bool)

(assert (= bs!1612500 (and d!2011355 b!6412822)))

(assert (=> bs!1612500 (not (= lambda!354143 lambda!354037))))

(declare-fun exists!2597 ((InoxSet Context!11398) Int) Bool)

(assert (=> d!2011355 (= (nullableZipper!2080 ((_ map or) lt!2375209 lt!2375211)) (exists!2597 ((_ map or) lt!2375209 lt!2375211) lambda!354143))))

(declare-fun bs!1612501 () Bool)

(assert (= bs!1612501 d!2011355))

(declare-fun m!7209848 () Bool)

(assert (=> bs!1612501 m!7209848))

(assert (=> b!6413630 d!2011355))

(assert (=> d!2010879 d!2011217))

(declare-fun b!6414253 () Bool)

(declare-fun res!2636148 () Bool)

(declare-fun e!3892150 () Bool)

(assert (=> b!6414253 (=> res!2636148 e!3892150)))

(assert (=> b!6414253 (= res!2636148 (not (isEmpty!37269 (tail!12205 s!2326))))))

(declare-fun b!6414254 () Bool)

(declare-fun res!2636145 () Bool)

(declare-fun e!3892149 () Bool)

(assert (=> b!6414254 (=> res!2636145 e!3892149)))

(assert (=> b!6414254 (= res!2636145 (not ((_ is ElementMatch!16315) (regTwo!33142 r!7292))))))

(declare-fun e!3892153 () Bool)

(assert (=> b!6414254 (= e!3892153 e!3892149)))

(declare-fun b!6414255 () Bool)

(declare-fun res!2636152 () Bool)

(declare-fun e!3892152 () Bool)

(assert (=> b!6414255 (=> (not res!2636152) (not e!3892152))))

(assert (=> b!6414255 (= res!2636152 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun b!6414256 () Bool)

(declare-fun res!2636149 () Bool)

(assert (=> b!6414256 (=> res!2636149 e!3892149)))

(assert (=> b!6414256 (= res!2636149 e!3892152)))

(declare-fun res!2636146 () Bool)

(assert (=> b!6414256 (=> (not res!2636146) (not e!3892152))))

(declare-fun lt!2375418 () Bool)

(assert (=> b!6414256 (= res!2636146 lt!2375418)))

(declare-fun bm!551251 () Bool)

(declare-fun call!551256 () Bool)

(assert (=> bm!551251 (= call!551256 (isEmpty!37269 s!2326))))

(declare-fun b!6414257 () Bool)

(declare-fun e!3892151 () Bool)

(assert (=> b!6414257 (= e!3892151 (nullable!6308 (regTwo!33142 r!7292)))))

(declare-fun b!6414258 () Bool)

(declare-fun e!3892155 () Bool)

(assert (=> b!6414258 (= e!3892149 e!3892155)))

(declare-fun res!2636151 () Bool)

(assert (=> b!6414258 (=> (not res!2636151) (not e!3892155))))

(assert (=> b!6414258 (= res!2636151 (not lt!2375418))))

(declare-fun b!6414259 () Bool)

(assert (=> b!6414259 (= e!3892155 e!3892150)))

(declare-fun res!2636150 () Bool)

(assert (=> b!6414259 (=> res!2636150 e!3892150)))

(assert (=> b!6414259 (= res!2636150 call!551256)))

(declare-fun b!6414260 () Bool)

(assert (=> b!6414260 (= e!3892152 (= (head!13120 s!2326) (c!1170970 (regTwo!33142 r!7292))))))

(declare-fun b!6414261 () Bool)

(assert (=> b!6414261 (= e!3892150 (not (= (head!13120 s!2326) (c!1170970 (regTwo!33142 r!7292)))))))

(declare-fun d!2011357 () Bool)

(declare-fun e!3892154 () Bool)

(assert (=> d!2011357 e!3892154))

(declare-fun c!1171425 () Bool)

(assert (=> d!2011357 (= c!1171425 ((_ is EmptyExpr!16315) (regTwo!33142 r!7292)))))

(assert (=> d!2011357 (= lt!2375418 e!3892151)))

(declare-fun c!1171424 () Bool)

(assert (=> d!2011357 (= c!1171424 (isEmpty!37269 s!2326))))

(assert (=> d!2011357 (validRegex!8051 (regTwo!33142 r!7292))))

(assert (=> d!2011357 (= (matchR!8498 (regTwo!33142 r!7292) s!2326) lt!2375418)))

(declare-fun b!6414262 () Bool)

(declare-fun res!2636147 () Bool)

(assert (=> b!6414262 (=> (not res!2636147) (not e!3892152))))

(assert (=> b!6414262 (= res!2636147 (not call!551256))))

(declare-fun b!6414263 () Bool)

(assert (=> b!6414263 (= e!3892153 (not lt!2375418))))

(declare-fun b!6414264 () Bool)

(assert (=> b!6414264 (= e!3892151 (matchR!8498 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 s!2326)) (tail!12205 s!2326)))))

(declare-fun b!6414265 () Bool)

(assert (=> b!6414265 (= e!3892154 (= lt!2375418 call!551256))))

(declare-fun b!6414266 () Bool)

(assert (=> b!6414266 (= e!3892154 e!3892153)))

(declare-fun c!1171423 () Bool)

(assert (=> b!6414266 (= c!1171423 ((_ is EmptyLang!16315) (regTwo!33142 r!7292)))))

(assert (= (and d!2011357 c!1171424) b!6414257))

(assert (= (and d!2011357 (not c!1171424)) b!6414264))

(assert (= (and d!2011357 c!1171425) b!6414265))

(assert (= (and d!2011357 (not c!1171425)) b!6414266))

(assert (= (and b!6414266 c!1171423) b!6414263))

(assert (= (and b!6414266 (not c!1171423)) b!6414254))

(assert (= (and b!6414254 (not res!2636145)) b!6414256))

(assert (= (and b!6414256 res!2636146) b!6414262))

(assert (= (and b!6414262 res!2636147) b!6414255))

(assert (= (and b!6414255 res!2636152) b!6414260))

(assert (= (and b!6414256 (not res!2636149)) b!6414258))

(assert (= (and b!6414258 res!2636151) b!6414259))

(assert (= (and b!6414259 (not res!2636150)) b!6414253))

(assert (= (and b!6414253 (not res!2636148)) b!6414261))

(assert (= (or b!6414265 b!6414259 b!6414262) bm!551251))

(assert (=> d!2011357 m!7208618))

(assert (=> d!2011357 m!7209424))

(assert (=> b!6414261 m!7208622))

(assert (=> b!6414257 m!7209428))

(assert (=> b!6414260 m!7208622))

(assert (=> b!6414264 m!7208622))

(assert (=> b!6414264 m!7208622))

(declare-fun m!7209850 () Bool)

(assert (=> b!6414264 m!7209850))

(assert (=> b!6414264 m!7208626))

(assert (=> b!6414264 m!7209850))

(assert (=> b!6414264 m!7208626))

(declare-fun m!7209852 () Bool)

(assert (=> b!6414264 m!7209852))

(assert (=> b!6414255 m!7208626))

(assert (=> b!6414255 m!7208626))

(assert (=> b!6414255 m!7208898))

(assert (=> bm!551251 m!7208618))

(assert (=> b!6414253 m!7208626))

(assert (=> b!6414253 m!7208626))

(assert (=> b!6414253 m!7208898))

(assert (=> b!6413283 d!2011357))

(declare-fun d!2011359 () Bool)

(assert (=> d!2011359 true))

(declare-fun setRes!43768 () Bool)

(assert (=> d!2011359 setRes!43768))

(declare-fun condSetEmpty!43768 () Bool)

(declare-fun res!2636153 () (InoxSet Context!11398))

(assert (=> d!2011359 (= condSetEmpty!43768 (= res!2636153 ((as const (Array Context!11398 Bool)) false)))))

(assert (=> d!2011359 (= (choose!47643 lt!2375199 lambda!354023) res!2636153)))

(declare-fun setIsEmpty!43768 () Bool)

(assert (=> setIsEmpty!43768 setRes!43768))

(declare-fun e!3892156 () Bool)

(declare-fun setElem!43768 () Context!11398)

(declare-fun setNonEmpty!43768 () Bool)

(declare-fun tp!1781826 () Bool)

(assert (=> setNonEmpty!43768 (= setRes!43768 (and tp!1781826 (inv!84034 setElem!43768) e!3892156))))

(declare-fun setRest!43768 () (InoxSet Context!11398))

(assert (=> setNonEmpty!43768 (= res!2636153 ((_ map or) (store ((as const (Array Context!11398 Bool)) false) setElem!43768 true) setRest!43768))))

(declare-fun b!6414267 () Bool)

(declare-fun tp!1781825 () Bool)

(assert (=> b!6414267 (= e!3892156 tp!1781825)))

(assert (= (and d!2011359 condSetEmpty!43768) setIsEmpty!43768))

(assert (= (and d!2011359 (not condSetEmpty!43768)) setNonEmpty!43768))

(assert (= setNonEmpty!43768 b!6414267))

(declare-fun m!7209854 () Bool)

(assert (=> setNonEmpty!43768 m!7209854))

(assert (=> d!2011023 d!2011359))

(assert (=> d!2011117 d!2011131))

(declare-fun d!2011361 () Bool)

(assert (=> d!2011361 (= (flatMap!1820 z!1189 lambda!354023) (dynLambda!25862 lambda!354023 (h!71570 zl!343)))))

(assert (=> d!2011361 true))

(declare-fun _$13!3625 () Unit!158591)

(assert (=> d!2011361 (= (choose!47644 z!1189 (h!71570 zl!343) lambda!354023) _$13!3625)))

(declare-fun b_lambda!243845 () Bool)

(assert (=> (not b_lambda!243845) (not d!2011361)))

(declare-fun bs!1612502 () Bool)

(assert (= bs!1612502 d!2011361))

(assert (=> bs!1612502 m!7208572))

(assert (=> bs!1612502 m!7209386))

(assert (=> d!2011117 d!2011361))

(assert (=> bm!551050 d!2011251))

(declare-fun d!2011363 () Bool)

(assert (=> d!2011363 (= (head!13120 (_2!36597 lt!2375224)) (h!71569 (_2!36597 lt!2375224)))))

(assert (=> b!6413828 d!2011363))

(declare-fun bs!1612503 () Bool)

(declare-fun d!2011365 () Bool)

(assert (= bs!1612503 (and d!2011365 d!2011135)))

(declare-fun lambda!354144 () Int)

(assert (=> bs!1612503 (= lambda!354144 lambda!354123)))

(declare-fun bs!1612504 () Bool)

(assert (= bs!1612504 (and d!2011365 d!2011231)))

(assert (=> bs!1612504 (= lambda!354144 lambda!354126)))

(declare-fun bs!1612505 () Bool)

(assert (= bs!1612505 (and d!2011365 d!2011049)))

(assert (=> bs!1612505 (= lambda!354144 lambda!354098)))

(declare-fun bs!1612506 () Bool)

(assert (= bs!1612506 (and d!2011365 d!2011171)))

(assert (=> bs!1612506 (= lambda!354144 lambda!354125)))

(declare-fun bs!1612507 () Bool)

(assert (= bs!1612507 (and d!2011365 d!2011275)))

(assert (=> bs!1612507 (= lambda!354144 lambda!354131)))

(declare-fun bs!1612508 () Bool)

(assert (= bs!1612508 (and d!2011365 d!2010999)))

(assert (=> bs!1612508 (= lambda!354144 lambda!354084)))

(declare-fun bs!1612509 () Bool)

(assert (= bs!1612509 (and d!2011365 d!2011273)))

(assert (=> bs!1612509 (= lambda!354144 lambda!354130)))

(declare-fun bs!1612510 () Bool)

(assert (= bs!1612510 (and d!2011365 d!2011269)))

(assert (=> bs!1612510 (= lambda!354144 lambda!354129)))

(declare-fun bs!1612511 () Bool)

(assert (= bs!1612511 (and d!2011365 d!2011077)))

(assert (=> bs!1612511 (= lambda!354144 lambda!354116)))

(declare-fun bs!1612512 () Bool)

(assert (= bs!1612512 (and d!2011365 d!2011089)))

(assert (=> bs!1612512 (= lambda!354144 lambda!354119)))

(assert (=> d!2011365 (= (inv!84034 (h!71570 (t!378858 zl!343))) (forall!15504 (exprs!6199 (h!71570 (t!378858 zl!343))) lambda!354144))))

(declare-fun bs!1612513 () Bool)

(assert (= bs!1612513 d!2011365))

(declare-fun m!7209856 () Bool)

(assert (=> bs!1612513 m!7209856))

(assert (=> b!6413916 d!2011365))

(declare-fun b!6414268 () Bool)

(declare-fun res!2636156 () Bool)

(declare-fun e!3892163 () Bool)

(assert (=> b!6414268 (=> (not res!2636156) (not e!3892163))))

(declare-fun lt!2375419 () Int)

(declare-fun call!551259 () Int)

(assert (=> b!6414268 (= res!2636156 (> lt!2375419 call!551259))))

(declare-fun e!3892158 () Bool)

(assert (=> b!6414268 (= e!3892158 e!3892163)))

(declare-fun b!6414269 () Bool)

(declare-fun e!3892161 () Bool)

(assert (=> b!6414269 (= e!3892161 e!3892158)))

(declare-fun c!1171431 () Bool)

(assert (=> b!6414269 (= c!1171431 ((_ is Concat!25160) (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))

(declare-fun bm!551252 () Bool)

(declare-fun call!551258 () Int)

(declare-fun call!551257 () Int)

(assert (=> bm!551252 (= call!551258 call!551257)))

(declare-fun c!1171427 () Bool)

(declare-fun bm!551253 () Bool)

(declare-fun c!1171426 () Bool)

(assert (=> bm!551253 (= call!551257 (regexDepth!342 (ite c!1171426 (reg!16644 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))) (ite c!1171427 (regTwo!33143 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))) (regOne!33142 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210))))))))))

(declare-fun call!551263 () Int)

(declare-fun bm!551254 () Bool)

(assert (=> bm!551254 (= call!551263 (regexDepth!342 (ite c!1171427 (regOne!33143 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))) (regTwo!33142 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))))

(declare-fun b!6414270 () Bool)

(declare-fun e!3892166 () Int)

(declare-fun call!551262 () Int)

(assert (=> b!6414270 (= e!3892166 (+ 1 call!551262))))

(declare-fun bm!551255 () Bool)

(declare-fun call!551260 () Int)

(declare-fun c!1171428 () Bool)

(assert (=> bm!551255 (= call!551260 (regexDepth!342 (ite c!1171428 (regTwo!33143 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))) (ite c!1171431 (regOne!33142 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))) (reg!16644 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210))))))))))

(declare-fun b!6414271 () Bool)

(declare-fun e!3892157 () Int)

(declare-fun e!3892165 () Int)

(assert (=> b!6414271 (= e!3892157 e!3892165)))

(assert (=> b!6414271 (= c!1171426 ((_ is Star!16315) (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))

(declare-fun bm!551256 () Bool)

(declare-fun call!551261 () Int)

(assert (=> bm!551256 (= call!551261 (regexDepth!342 (ite c!1171428 (regOne!33143 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))) (regTwo!33142 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))))

(declare-fun b!6414272 () Bool)

(declare-fun c!1171430 () Bool)

(assert (=> b!6414272 (= c!1171430 ((_ is Star!16315) (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))

(declare-fun e!3892160 () Bool)

(assert (=> b!6414272 (= e!3892158 e!3892160)))

(declare-fun b!6414273 () Bool)

(assert (=> b!6414273 (= e!3892160 (= lt!2375419 1))))

(declare-fun bm!551257 () Bool)

(assert (=> bm!551257 (= call!551262 (maxBigInt!0 (ite c!1171427 call!551263 call!551258) (ite c!1171427 call!551258 call!551263)))))

(declare-fun b!6414274 () Bool)

(declare-fun e!3892162 () Bool)

(assert (=> b!6414274 (= e!3892162 e!3892161)))

(assert (=> b!6414274 (= c!1171428 ((_ is Union!16315) (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))

(declare-fun b!6414275 () Bool)

(assert (=> b!6414275 (= c!1171427 ((_ is Union!16315) (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))

(declare-fun e!3892159 () Int)

(assert (=> b!6414275 (= e!3892165 e!3892159)))

(declare-fun d!2011367 () Bool)

(assert (=> d!2011367 e!3892162))

(declare-fun res!2636155 () Bool)

(assert (=> d!2011367 (=> (not res!2636155) (not e!3892162))))

(assert (=> d!2011367 (= res!2636155 (> lt!2375419 0))))

(assert (=> d!2011367 (= lt!2375419 e!3892157)))

(declare-fun c!1171429 () Bool)

(assert (=> d!2011367 (= c!1171429 ((_ is ElementMatch!16315) (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))

(assert (=> d!2011367 (= (regexDepth!342 (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))) lt!2375419)))

(declare-fun b!6414276 () Bool)

(declare-fun e!3892164 () Bool)

(assert (=> b!6414276 (= e!3892161 e!3892164)))

(declare-fun res!2636154 () Bool)

(assert (=> b!6414276 (= res!2636154 (> lt!2375419 call!551261))))

(assert (=> b!6414276 (=> (not res!2636154) (not e!3892164))))

(declare-fun bm!551258 () Bool)

(assert (=> bm!551258 (= call!551259 call!551260)))

(declare-fun b!6414277 () Bool)

(assert (=> b!6414277 (= e!3892165 (+ 1 call!551257))))

(declare-fun b!6414278 () Bool)

(assert (=> b!6414278 (= e!3892166 1)))

(declare-fun b!6414279 () Bool)

(assert (=> b!6414279 (= e!3892159 e!3892166)))

(declare-fun c!1171432 () Bool)

(assert (=> b!6414279 (= c!1171432 ((_ is Concat!25160) (ite c!1171220 (reg!16644 lt!2375210) (ite c!1171221 (regTwo!33143 lt!2375210) (regOne!33142 lt!2375210)))))))

(declare-fun b!6414280 () Bool)

(assert (=> b!6414280 (= e!3892163 (> lt!2375419 call!551261))))

(declare-fun b!6414281 () Bool)

(assert (=> b!6414281 (= e!3892157 1)))

(declare-fun b!6414282 () Bool)

(assert (=> b!6414282 (= e!3892160 (> lt!2375419 call!551259))))

(declare-fun b!6414283 () Bool)

(assert (=> b!6414283 (= e!3892164 (> lt!2375419 call!551260))))

(declare-fun b!6414284 () Bool)

(assert (=> b!6414284 (= e!3892159 (+ 1 call!551262))))

(assert (= (and d!2011367 c!1171429) b!6414281))

(assert (= (and d!2011367 (not c!1171429)) b!6414271))

(assert (= (and b!6414271 c!1171426) b!6414277))

(assert (= (and b!6414271 (not c!1171426)) b!6414275))

(assert (= (and b!6414275 c!1171427) b!6414284))

(assert (= (and b!6414275 (not c!1171427)) b!6414279))

(assert (= (and b!6414279 c!1171432) b!6414270))

(assert (= (and b!6414279 (not c!1171432)) b!6414278))

(assert (= (or b!6414284 b!6414270) bm!551252))

(assert (= (or b!6414284 b!6414270) bm!551254))

(assert (= (or b!6414284 b!6414270) bm!551257))

(assert (= (or b!6414277 bm!551252) bm!551253))

(assert (= (and d!2011367 res!2636155) b!6414274))

(assert (= (and b!6414274 c!1171428) b!6414276))

(assert (= (and b!6414274 (not c!1171428)) b!6414269))

(assert (= (and b!6414276 res!2636154) b!6414283))

(assert (= (and b!6414269 c!1171431) b!6414268))

(assert (= (and b!6414269 (not c!1171431)) b!6414272))

(assert (= (and b!6414268 res!2636156) b!6414280))

(assert (= (and b!6414272 c!1171430) b!6414282))

(assert (= (and b!6414272 (not c!1171430)) b!6414273))

(assert (= (or b!6414268 b!6414282) bm!551258))

(assert (= (or b!6414283 bm!551258) bm!551255))

(assert (= (or b!6414276 b!6414280) bm!551256))

(declare-fun m!7209858 () Bool)

(assert (=> bm!551255 m!7209858))

(declare-fun m!7209860 () Bool)

(assert (=> bm!551253 m!7209860))

(declare-fun m!7209862 () Bool)

(assert (=> bm!551257 m!7209862))

(declare-fun m!7209864 () Bool)

(assert (=> bm!551254 m!7209864))

(declare-fun m!7209866 () Bool)

(assert (=> bm!551256 m!7209866))

(assert (=> bm!551112 d!2011367))

(assert (=> bm!551036 d!2011251))

(declare-fun bs!1612514 () Bool)

(declare-fun d!2011369 () Bool)

(assert (= bs!1612514 (and d!2011369 b!6412822)))

(declare-fun lambda!354145 () Int)

(assert (=> bs!1612514 (not (= lambda!354145 lambda!354037))))

(declare-fun bs!1612515 () Bool)

(assert (= bs!1612515 (and d!2011369 b!6412815)))

(assert (=> bs!1612515 (not (= lambda!354145 lambda!354033))))

(declare-fun bs!1612516 () Bool)

(assert (= bs!1612516 (and d!2011369 d!2011355)))

(assert (=> bs!1612516 (= lambda!354145 lambda!354143)))

(declare-fun bs!1612517 () Bool)

(assert (= bs!1612517 (and d!2011369 b!6412817)))

(assert (=> bs!1612517 (not (= lambda!354145 lambda!354034))))

(declare-fun bs!1612518 () Bool)

(assert (= bs!1612518 (and d!2011369 b!6412820)))

(assert (=> bs!1612518 (not (= lambda!354145 lambda!354036))))

(assert (=> d!2011369 (= (nullableZipper!2080 lt!2375211) (exists!2597 lt!2375211 lambda!354145))))

(declare-fun bs!1612519 () Bool)

(assert (= bs!1612519 d!2011369))

(declare-fun m!7209868 () Bool)

(assert (=> bs!1612519 m!7209868))

(assert (=> b!6412800 d!2011369))

(declare-fun bs!1612520 () Bool)

(declare-fun d!2011371 () Bool)

(assert (= bs!1612520 (and d!2011371 b!6413152)))

(declare-fun lambda!354146 () Int)

(assert (=> bs!1612520 (not (= lambda!354146 lambda!354066))))

(declare-fun bs!1612521 () Bool)

(assert (= bs!1612521 (and d!2011371 b!6412781)))

(assert (=> bs!1612521 (not (= lambda!354146 lambda!354022))))

(declare-fun bs!1612522 () Bool)

(assert (= bs!1612522 (and d!2011371 d!2010919)))

(assert (=> bs!1612522 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354146 lambda!354051))))

(declare-fun bs!1612523 () Bool)

(assert (= bs!1612523 (and d!2011371 b!6414158)))

(assert (=> bs!1612523 (not (= lambda!354146 lambda!354133))))

(assert (=> bs!1612522 (not (= lambda!354146 lambda!354052))))

(assert (=> bs!1612521 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354146 lambda!354021))))

(declare-fun bs!1612524 () Bool)

(assert (= bs!1612524 (and d!2011371 b!6412754)))

(assert (=> bs!1612524 (not (= lambda!354146 lambda!354025))))

(declare-fun bs!1612525 () Bool)

(assert (= bs!1612525 (and d!2011371 b!6414160)))

(assert (=> bs!1612525 (not (= lambda!354146 lambda!354134))))

(declare-fun bs!1612526 () Bool)

(assert (= bs!1612526 (and d!2011371 b!6413231)))

(assert (=> bs!1612526 (not (= lambda!354146 lambda!354073))))

(declare-fun bs!1612527 () Bool)

(assert (= bs!1612527 (and d!2011371 d!2010991)))

(assert (=> bs!1612527 (= lambda!354146 lambda!354077)))

(declare-fun bs!1612528 () Bool)

(assert (= bs!1612528 (and d!2011371 b!6413973)))

(assert (=> bs!1612528 (not (= lambda!354146 lambda!354127))))

(declare-fun bs!1612529 () Bool)

(assert (= bs!1612529 (and d!2011371 d!2011349)))

(assert (=> bs!1612529 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354146 lambda!354140))))

(declare-fun bs!1612530 () Bool)

(assert (= bs!1612530 (and d!2011371 b!6413975)))

(assert (=> bs!1612530 (not (= lambda!354146 lambda!354128))))

(declare-fun bs!1612531 () Bool)

(assert (= bs!1612531 (and d!2011371 b!6413229)))

(assert (=> bs!1612531 (not (= lambda!354146 lambda!354070))))

(assert (=> bs!1612527 (not (= lambda!354146 lambda!354078))))

(declare-fun bs!1612532 () Bool)

(assert (= bs!1612532 (and d!2011371 b!6413154)))

(assert (=> bs!1612532 (not (= lambda!354146 lambda!354067))))

(assert (=> bs!1612524 (= lambda!354146 lambda!354024)))

(declare-fun bs!1612533 () Bool)

(assert (= bs!1612533 (and d!2011371 d!2010911)))

(assert (=> bs!1612533 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354146 lambda!354046))))

(declare-fun bs!1612534 () Bool)

(assert (= bs!1612534 (and d!2011371 d!2010973)))

(assert (=> bs!1612534 (= lambda!354146 lambda!354074)))

(assert (=> d!2011371 true))

(assert (=> d!2011371 true))

(assert (=> d!2011371 true))

(assert (=> d!2011371 (= (isDefined!12909 (findConcatSeparation!2620 lt!2375222 (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326)) (Exists!3385 lambda!354146))))

(assert (=> d!2011371 true))

(declare-fun _$89!2653 () Unit!158591)

(assert (=> d!2011371 (= (choose!47632 lt!2375222 (regTwo!33142 r!7292) s!2326) _$89!2653)))

(declare-fun bs!1612535 () Bool)

(assert (= bs!1612535 d!2011371))

(assert (=> bs!1612535 m!7208594))

(assert (=> bs!1612535 m!7208594))

(assert (=> bs!1612535 m!7208918))

(declare-fun m!7209870 () Bool)

(assert (=> bs!1612535 m!7209870))

(assert (=> d!2010973 d!2011371))

(declare-fun d!2011373 () Bool)

(assert (=> d!2011373 (= (isDefined!12909 (findConcatSeparation!2620 lt!2375222 (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326)) (not (isEmpty!37271 (findConcatSeparation!2620 lt!2375222 (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326))))))

(declare-fun bs!1612536 () Bool)

(assert (= bs!1612536 d!2011373))

(assert (=> bs!1612536 m!7208594))

(declare-fun m!7209872 () Bool)

(assert (=> bs!1612536 m!7209872))

(assert (=> d!2010973 d!2011373))

(declare-fun d!2011375 () Bool)

(assert (=> d!2011375 (= (Exists!3385 lambda!354074) (choose!47631 lambda!354074))))

(declare-fun bs!1612537 () Bool)

(assert (= bs!1612537 d!2011375))

(declare-fun m!7209874 () Bool)

(assert (=> bs!1612537 m!7209874))

(assert (=> d!2010973 d!2011375))

(assert (=> d!2010973 d!2010987))

(declare-fun b!6414285 () Bool)

(declare-fun res!2636159 () Bool)

(declare-fun e!3892167 () Bool)

(assert (=> b!6414285 (=> res!2636159 e!3892167)))

(assert (=> b!6414285 (= res!2636159 (not ((_ is Concat!25160) lt!2375222)))))

(declare-fun e!3892168 () Bool)

(assert (=> b!6414285 (= e!3892168 e!3892167)))

(declare-fun b!6414286 () Bool)

(declare-fun e!3892170 () Bool)

(declare-fun e!3892172 () Bool)

(assert (=> b!6414286 (= e!3892170 e!3892172)))

(declare-fun res!2636160 () Bool)

(assert (=> b!6414286 (= res!2636160 (not (nullable!6308 (reg!16644 lt!2375222))))))

(assert (=> b!6414286 (=> (not res!2636160) (not e!3892172))))

(declare-fun b!6414287 () Bool)

(declare-fun call!551266 () Bool)

(assert (=> b!6414287 (= e!3892172 call!551266)))

(declare-fun b!6414288 () Bool)

(declare-fun e!3892173 () Bool)

(assert (=> b!6414288 (= e!3892167 e!3892173)))

(declare-fun res!2636157 () Bool)

(assert (=> b!6414288 (=> (not res!2636157) (not e!3892173))))

(declare-fun call!551264 () Bool)

(assert (=> b!6414288 (= res!2636157 call!551264)))

(declare-fun bm!551259 () Bool)

(declare-fun call!551265 () Bool)

(assert (=> bm!551259 (= call!551265 call!551266)))

(declare-fun b!6414290 () Bool)

(declare-fun res!2636158 () Bool)

(declare-fun e!3892171 () Bool)

(assert (=> b!6414290 (=> (not res!2636158) (not e!3892171))))

(assert (=> b!6414290 (= res!2636158 call!551264)))

(assert (=> b!6414290 (= e!3892168 e!3892171)))

(declare-fun b!6414291 () Bool)

(declare-fun e!3892169 () Bool)

(assert (=> b!6414291 (= e!3892169 e!3892170)))

(declare-fun c!1171433 () Bool)

(assert (=> b!6414291 (= c!1171433 ((_ is Star!16315) lt!2375222))))

(declare-fun c!1171434 () Bool)

(declare-fun bm!551260 () Bool)

(assert (=> bm!551260 (= call!551266 (validRegex!8051 (ite c!1171433 (reg!16644 lt!2375222) (ite c!1171434 (regTwo!33143 lt!2375222) (regTwo!33142 lt!2375222)))))))

(declare-fun bm!551261 () Bool)

(assert (=> bm!551261 (= call!551264 (validRegex!8051 (ite c!1171434 (regOne!33143 lt!2375222) (regOne!33142 lt!2375222))))))

(declare-fun b!6414292 () Bool)

(assert (=> b!6414292 (= e!3892170 e!3892168)))

(assert (=> b!6414292 (= c!1171434 ((_ is Union!16315) lt!2375222))))

(declare-fun b!6414293 () Bool)

(assert (=> b!6414293 (= e!3892171 call!551265)))

(declare-fun d!2011377 () Bool)

(declare-fun res!2636161 () Bool)

(assert (=> d!2011377 (=> res!2636161 e!3892169)))

(assert (=> d!2011377 (= res!2636161 ((_ is ElementMatch!16315) lt!2375222))))

(assert (=> d!2011377 (= (validRegex!8051 lt!2375222) e!3892169)))

(declare-fun b!6414289 () Bool)

(assert (=> b!6414289 (= e!3892173 call!551265)))

(assert (= (and d!2011377 (not res!2636161)) b!6414291))

(assert (= (and b!6414291 c!1171433) b!6414286))

(assert (= (and b!6414291 (not c!1171433)) b!6414292))

(assert (= (and b!6414286 res!2636160) b!6414287))

(assert (= (and b!6414292 c!1171434) b!6414290))

(assert (= (and b!6414292 (not c!1171434)) b!6414285))

(assert (= (and b!6414290 res!2636158) b!6414293))

(assert (= (and b!6414285 (not res!2636159)) b!6414288))

(assert (= (and b!6414288 res!2636157) b!6414289))

(assert (= (or b!6414293 b!6414289) bm!551259))

(assert (= (or b!6414290 b!6414288) bm!551261))

(assert (= (or b!6414287 bm!551259) bm!551260))

(declare-fun m!7209876 () Bool)

(assert (=> b!6414286 m!7209876))

(declare-fun m!7209878 () Bool)

(assert (=> bm!551260 m!7209878))

(declare-fun m!7209880 () Bool)

(assert (=> bm!551261 m!7209880))

(assert (=> d!2010973 d!2011377))

(assert (=> b!6413281 d!2011239))

(assert (=> b!6413281 d!2011241))

(assert (=> b!6413281 d!2011243))

(declare-fun b!6414294 () Bool)

(declare-fun res!2636164 () Bool)

(declare-fun e!3892174 () Bool)

(assert (=> b!6414294 (=> (not res!2636164) (not e!3892174))))

(declare-fun lt!2375422 () Option!16206)

(assert (=> b!6414294 (= res!2636164 (matchR!8498 lt!2375222 (_1!36597 (get!22556 lt!2375422))))))

(declare-fun b!6414295 () Bool)

(declare-fun e!3892178 () Option!16206)

(assert (=> b!6414295 (= e!3892178 None!16205)))

(declare-fun b!6414296 () Bool)

(declare-fun lt!2375421 () Unit!158591)

(declare-fun lt!2375420 () Unit!158591)

(assert (=> b!6414296 (= lt!2375421 lt!2375420)))

(assert (=> b!6414296 (= (++!14383 (++!14383 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (Cons!65121 (h!71569 (t!378857 s!2326)) Nil!65121)) (t!378857 (t!378857 s!2326))) s!2326)))

(assert (=> b!6414296 (= lt!2375420 (lemmaMoveElementToOtherListKeepsConcatEq!2477 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (h!71569 (t!378857 s!2326)) (t!378857 (t!378857 s!2326)) s!2326))))

(assert (=> b!6414296 (= e!3892178 (findConcatSeparation!2620 lt!2375222 (regTwo!33142 r!7292) (++!14383 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (Cons!65121 (h!71569 (t!378857 s!2326)) Nil!65121)) (t!378857 (t!378857 s!2326)) s!2326))))

(declare-fun b!6414297 () Bool)

(declare-fun e!3892176 () Option!16206)

(assert (=> b!6414297 (= e!3892176 e!3892178)))

(declare-fun c!1171435 () Bool)

(assert (=> b!6414297 (= c!1171435 ((_ is Nil!65121) (t!378857 s!2326)))))

(declare-fun b!6414298 () Bool)

(declare-fun e!3892175 () Bool)

(assert (=> b!6414298 (= e!3892175 (matchR!8498 (regTwo!33142 r!7292) (t!378857 s!2326)))))

(declare-fun b!6414299 () Bool)

(declare-fun res!2636163 () Bool)

(assert (=> b!6414299 (=> (not res!2636163) (not e!3892174))))

(assert (=> b!6414299 (= res!2636163 (matchR!8498 (regTwo!33142 r!7292) (_2!36597 (get!22556 lt!2375422))))))

(declare-fun b!6414300 () Bool)

(assert (=> b!6414300 (= e!3892176 (Some!16205 (tuple2!66589 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326))))))

(declare-fun b!6414301 () Bool)

(assert (=> b!6414301 (= e!3892174 (= (++!14383 (_1!36597 (get!22556 lt!2375422)) (_2!36597 (get!22556 lt!2375422))) s!2326))))

(declare-fun b!6414302 () Bool)

(declare-fun e!3892177 () Bool)

(assert (=> b!6414302 (= e!3892177 (not (isDefined!12909 lt!2375422)))))

(declare-fun d!2011379 () Bool)

(assert (=> d!2011379 e!3892177))

(declare-fun res!2636162 () Bool)

(assert (=> d!2011379 (=> res!2636162 e!3892177)))

(assert (=> d!2011379 (= res!2636162 e!3892174)))

(declare-fun res!2636165 () Bool)

(assert (=> d!2011379 (=> (not res!2636165) (not e!3892174))))

(assert (=> d!2011379 (= res!2636165 (isDefined!12909 lt!2375422))))

(assert (=> d!2011379 (= lt!2375422 e!3892176)))

(declare-fun c!1171436 () Bool)

(assert (=> d!2011379 (= c!1171436 e!3892175)))

(declare-fun res!2636166 () Bool)

(assert (=> d!2011379 (=> (not res!2636166) (not e!3892175))))

(assert (=> d!2011379 (= res!2636166 (matchR!8498 lt!2375222 (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121))))))

(assert (=> d!2011379 (validRegex!8051 lt!2375222)))

(assert (=> d!2011379 (= (findConcatSeparation!2620 lt!2375222 (regTwo!33142 r!7292) (++!14383 Nil!65121 (Cons!65121 (h!71569 s!2326) Nil!65121)) (t!378857 s!2326) s!2326) lt!2375422)))

(assert (= (and d!2011379 res!2636166) b!6414298))

(assert (= (and d!2011379 c!1171436) b!6414300))

(assert (= (and d!2011379 (not c!1171436)) b!6414297))

(assert (= (and b!6414297 c!1171435) b!6414295))

(assert (= (and b!6414297 (not c!1171435)) b!6414296))

(assert (= (and d!2011379 res!2636165) b!6414294))

(assert (= (and b!6414294 res!2636164) b!6414299))

(assert (= (and b!6414299 res!2636163) b!6414301))

(assert (= (and d!2011379 (not res!2636162)) b!6414302))

(declare-fun m!7209882 () Bool)

(assert (=> b!6414294 m!7209882))

(declare-fun m!7209884 () Bool)

(assert (=> b!6414294 m!7209884))

(declare-fun m!7209886 () Bool)

(assert (=> b!6414302 m!7209886))

(assert (=> b!6414299 m!7209882))

(declare-fun m!7209888 () Bool)

(assert (=> b!6414299 m!7209888))

(assert (=> b!6414298 m!7209598))

(assert (=> d!2011379 m!7209886))

(assert (=> d!2011379 m!7208720))

(declare-fun m!7209890 () Bool)

(assert (=> d!2011379 m!7209890))

(assert (=> d!2011379 m!7208830))

(assert (=> b!6414296 m!7208720))

(assert (=> b!6414296 m!7209602))

(assert (=> b!6414296 m!7209602))

(assert (=> b!6414296 m!7209604))

(assert (=> b!6414296 m!7208720))

(assert (=> b!6414296 m!7209606))

(assert (=> b!6414296 m!7209602))

(declare-fun m!7209892 () Bool)

(assert (=> b!6414296 m!7209892))

(assert (=> b!6414301 m!7209882))

(declare-fun m!7209894 () Bool)

(assert (=> b!6414301 m!7209894))

(assert (=> b!6413281 d!2011379))

(declare-fun d!2011381 () Bool)

(assert (=> d!2011381 (= (head!13122 (t!378856 (exprs!6199 (h!71570 zl!343)))) (h!71568 (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> b!6413596 d!2011381))

(declare-fun call!551272 () (InoxSet Context!11398))

(declare-fun c!1171438 () Bool)

(declare-fun bm!551262 () Bool)

(declare-fun call!551268 () List!65244)

(declare-fun c!1171440 () Bool)

(declare-fun c!1171437 () Bool)

(assert (=> bm!551262 (= call!551272 (derivationStepZipperDown!1563 (ite c!1171440 (regOne!33143 (h!71568 (exprs!6199 lt!2375218))) (ite c!1171437 (regTwo!33142 (h!71568 (exprs!6199 lt!2375218))) (ite c!1171438 (regOne!33142 (h!71568 (exprs!6199 lt!2375218))) (reg!16644 (h!71568 (exprs!6199 lt!2375218)))))) (ite (or c!1171440 c!1171437) (Context!11399 (t!378856 (exprs!6199 lt!2375218))) (Context!11399 call!551268)) (h!71569 s!2326)))))

(declare-fun b!6414304 () Bool)

(declare-fun c!1171439 () Bool)

(assert (=> b!6414304 (= c!1171439 ((_ is Star!16315) (h!71568 (exprs!6199 lt!2375218))))))

(declare-fun e!3892182 () (InoxSet Context!11398))

(declare-fun e!3892180 () (InoxSet Context!11398))

(assert (=> b!6414304 (= e!3892182 e!3892180)))

(declare-fun b!6414305 () Bool)

(declare-fun call!551270 () (InoxSet Context!11398))

(assert (=> b!6414305 (= e!3892180 call!551270)))

(declare-fun b!6414306 () Bool)

(declare-fun e!3892179 () (InoxSet Context!11398))

(assert (=> b!6414306 (= e!3892179 e!3892182)))

(assert (=> b!6414306 (= c!1171438 ((_ is Concat!25160) (h!71568 (exprs!6199 lt!2375218))))))

(declare-fun b!6414307 () Bool)

(declare-fun e!3892183 () (InoxSet Context!11398))

(declare-fun call!551271 () (InoxSet Context!11398))

(assert (=> b!6414307 (= e!3892183 ((_ map or) call!551272 call!551271))))

(declare-fun b!6414308 () Bool)

(declare-fun e!3892181 () Bool)

(assert (=> b!6414308 (= e!3892181 (nullable!6308 (regOne!33142 (h!71568 (exprs!6199 lt!2375218)))))))

(declare-fun call!551267 () List!65244)

(declare-fun bm!551263 () Bool)

(assert (=> bm!551263 (= call!551271 (derivationStepZipperDown!1563 (ite c!1171440 (regTwo!33143 (h!71568 (exprs!6199 lt!2375218))) (regOne!33142 (h!71568 (exprs!6199 lt!2375218)))) (ite c!1171440 (Context!11399 (t!378856 (exprs!6199 lt!2375218))) (Context!11399 call!551267)) (h!71569 s!2326)))))

(declare-fun b!6414303 () Bool)

(assert (=> b!6414303 (= e!3892182 call!551270)))

(declare-fun d!2011383 () Bool)

(declare-fun c!1171441 () Bool)

(assert (=> d!2011383 (= c!1171441 (and ((_ is ElementMatch!16315) (h!71568 (exprs!6199 lt!2375218))) (= (c!1170970 (h!71568 (exprs!6199 lt!2375218))) (h!71569 s!2326))))))

(declare-fun e!3892184 () (InoxSet Context!11398))

(assert (=> d!2011383 (= (derivationStepZipperDown!1563 (h!71568 (exprs!6199 lt!2375218)) (Context!11399 (t!378856 (exprs!6199 lt!2375218))) (h!71569 s!2326)) e!3892184)))

(declare-fun bm!551264 () Bool)

(declare-fun call!551269 () (InoxSet Context!11398))

(assert (=> bm!551264 (= call!551270 call!551269)))

(declare-fun b!6414309 () Bool)

(assert (=> b!6414309 (= e!3892180 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551265 () Bool)

(assert (=> bm!551265 (= call!551267 ($colon$colon!2176 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375218)))) (ite (or c!1171437 c!1171438) (regTwo!33142 (h!71568 (exprs!6199 lt!2375218))) (h!71568 (exprs!6199 lt!2375218)))))))

(declare-fun bm!551266 () Bool)

(assert (=> bm!551266 (= call!551269 call!551272)))

(declare-fun bm!551267 () Bool)

(assert (=> bm!551267 (= call!551268 call!551267)))

(declare-fun b!6414310 () Bool)

(assert (=> b!6414310 (= e!3892184 e!3892183)))

(assert (=> b!6414310 (= c!1171440 ((_ is Union!16315) (h!71568 (exprs!6199 lt!2375218))))))

(declare-fun b!6414311 () Bool)

(assert (=> b!6414311 (= e!3892179 ((_ map or) call!551271 call!551269))))

(declare-fun b!6414312 () Bool)

(assert (=> b!6414312 (= e!3892184 (store ((as const (Array Context!11398 Bool)) false) (Context!11399 (t!378856 (exprs!6199 lt!2375218))) true))))

(declare-fun b!6414313 () Bool)

(assert (=> b!6414313 (= c!1171437 e!3892181)))

(declare-fun res!2636167 () Bool)

(assert (=> b!6414313 (=> (not res!2636167) (not e!3892181))))

(assert (=> b!6414313 (= res!2636167 ((_ is Concat!25160) (h!71568 (exprs!6199 lt!2375218))))))

(assert (=> b!6414313 (= e!3892183 e!3892179)))

(assert (= (and d!2011383 c!1171441) b!6414312))

(assert (= (and d!2011383 (not c!1171441)) b!6414310))

(assert (= (and b!6414310 c!1171440) b!6414307))

(assert (= (and b!6414310 (not c!1171440)) b!6414313))

(assert (= (and b!6414313 res!2636167) b!6414308))

(assert (= (and b!6414313 c!1171437) b!6414311))

(assert (= (and b!6414313 (not c!1171437)) b!6414306))

(assert (= (and b!6414306 c!1171438) b!6414303))

(assert (= (and b!6414306 (not c!1171438)) b!6414304))

(assert (= (and b!6414304 c!1171439) b!6414305))

(assert (= (and b!6414304 (not c!1171439)) b!6414309))

(assert (= (or b!6414303 b!6414305) bm!551267))

(assert (= (or b!6414303 b!6414305) bm!551264))

(assert (= (or b!6414311 bm!551267) bm!551265))

(assert (= (or b!6414311 bm!551264) bm!551266))

(assert (= (or b!6414307 b!6414311) bm!551263))

(assert (= (or b!6414307 bm!551266) bm!551262))

(declare-fun m!7209896 () Bool)

(assert (=> bm!551265 m!7209896))

(declare-fun m!7209898 () Bool)

(assert (=> b!6414308 m!7209898))

(declare-fun m!7209900 () Bool)

(assert (=> bm!551263 m!7209900))

(declare-fun m!7209902 () Bool)

(assert (=> b!6414312 m!7209902))

(declare-fun m!7209904 () Bool)

(assert (=> bm!551262 m!7209904))

(assert (=> bm!551154 d!2011383))

(declare-fun bs!1612538 () Bool)

(declare-fun d!2011385 () Bool)

(assert (= bs!1612538 (and d!2011385 b!6412822)))

(declare-fun lambda!354147 () Int)

(assert (=> bs!1612538 (not (= lambda!354147 lambda!354037))))

(declare-fun bs!1612539 () Bool)

(assert (= bs!1612539 (and d!2011385 b!6412815)))

(assert (=> bs!1612539 (not (= lambda!354147 lambda!354033))))

(declare-fun bs!1612540 () Bool)

(assert (= bs!1612540 (and d!2011385 d!2011355)))

(assert (=> bs!1612540 (= lambda!354147 lambda!354143)))

(declare-fun bs!1612541 () Bool)

(assert (= bs!1612541 (and d!2011385 b!6412817)))

(assert (=> bs!1612541 (not (= lambda!354147 lambda!354034))))

(declare-fun bs!1612542 () Bool)

(assert (= bs!1612542 (and d!2011385 d!2011369)))

(assert (=> bs!1612542 (= lambda!354147 lambda!354145)))

(declare-fun bs!1612543 () Bool)

(assert (= bs!1612543 (and d!2011385 b!6412820)))

(assert (=> bs!1612543 (not (= lambda!354147 lambda!354036))))

(assert (=> d!2011385 (= (nullableZipper!2080 lt!2375213) (exists!2597 lt!2375213 lambda!354147))))

(declare-fun bs!1612544 () Bool)

(assert (= bs!1612544 d!2011385))

(declare-fun m!7209906 () Bool)

(assert (=> bs!1612544 m!7209906))

(assert (=> b!6412807 d!2011385))

(declare-fun d!2011387 () Bool)

(assert (=> d!2011387 (= (nullable!6308 (regOne!33142 (reg!16644 (regOne!33142 r!7292)))) (nullableFct!2254 (regOne!33142 (reg!16644 (regOne!33142 r!7292)))))))

(declare-fun bs!1612545 () Bool)

(assert (= bs!1612545 d!2011387))

(declare-fun m!7209908 () Bool)

(assert (=> bs!1612545 m!7209908))

(assert (=> b!6413687 d!2011387))

(declare-fun d!2011389 () Bool)

(assert (=> d!2011389 (= (isUnion!1153 lt!2375376) ((_ is Union!16315) lt!2375376))))

(assert (=> b!6413725 d!2011389))

(declare-fun d!2011391 () Bool)

(declare-fun c!1171442 () Bool)

(assert (=> d!2011391 (= c!1171442 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun e!3892185 () Bool)

(assert (=> d!2011391 (= (matchZipper!2327 (derivationStepZipper!2281 lt!2375199 (head!13120 s!2326)) (tail!12205 s!2326)) e!3892185)))

(declare-fun b!6414314 () Bool)

(assert (=> b!6414314 (= e!3892185 (nullableZipper!2080 (derivationStepZipper!2281 lt!2375199 (head!13120 s!2326))))))

(declare-fun b!6414315 () Bool)

(assert (=> b!6414315 (= e!3892185 (matchZipper!2327 (derivationStepZipper!2281 (derivationStepZipper!2281 lt!2375199 (head!13120 s!2326)) (head!13120 (tail!12205 s!2326))) (tail!12205 (tail!12205 s!2326))))))

(assert (= (and d!2011391 c!1171442) b!6414314))

(assert (= (and d!2011391 (not c!1171442)) b!6414315))

(assert (=> d!2011391 m!7208626))

(assert (=> d!2011391 m!7208898))

(assert (=> b!6414314 m!7208624))

(declare-fun m!7209910 () Bool)

(assert (=> b!6414314 m!7209910))

(assert (=> b!6414315 m!7208626))

(assert (=> b!6414315 m!7209624))

(assert (=> b!6414315 m!7208624))

(assert (=> b!6414315 m!7209624))

(declare-fun m!7209912 () Bool)

(assert (=> b!6414315 m!7209912))

(assert (=> b!6414315 m!7208626))

(assert (=> b!6414315 m!7209630))

(assert (=> b!6414315 m!7209912))

(assert (=> b!6414315 m!7209630))

(declare-fun m!7209914 () Bool)

(assert (=> b!6414315 m!7209914))

(assert (=> b!6412806 d!2011391))

(declare-fun bs!1612546 () Bool)

(declare-fun d!2011393 () Bool)

(assert (= bs!1612546 (and d!2011393 d!2011311)))

(declare-fun lambda!354148 () Int)

(assert (=> bs!1612546 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354148 lambda!354135))))

(declare-fun bs!1612547 () Bool)

(assert (= bs!1612547 (and d!2011393 d!2011331)))

(assert (=> bs!1612547 (= lambda!354148 lambda!354137)))

(declare-fun bs!1612548 () Bool)

(assert (= bs!1612548 (and d!2011393 d!2011289)))

(assert (=> bs!1612548 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354148 lambda!354132))))

(declare-fun bs!1612549 () Bool)

(assert (= bs!1612549 (and d!2011393 b!6412770)))

(assert (=> bs!1612549 (= (= (head!13120 s!2326) (h!71569 s!2326)) (= lambda!354148 lambda!354023))))

(declare-fun bs!1612550 () Bool)

(assert (= bs!1612550 (and d!2011393 d!2011031)))

(assert (=> bs!1612550 (= (= (head!13120 s!2326) (h!71569 s!2326)) (= lambda!354148 lambda!354092))))

(declare-fun bs!1612551 () Bool)

(assert (= bs!1612551 (and d!2011393 d!2011141)))

(assert (=> bs!1612551 (= (= (head!13120 s!2326) (h!71569 s!2326)) (= lambda!354148 lambda!354124))))

(declare-fun bs!1612552 () Bool)

(assert (= bs!1612552 (and d!2011393 d!2011327)))

(assert (=> bs!1612552 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354148 lambda!354136))))

(assert (=> d!2011393 true))

(assert (=> d!2011393 (= (derivationStepZipper!2281 lt!2375199 (head!13120 s!2326)) (flatMap!1820 lt!2375199 lambda!354148))))

(declare-fun bs!1612553 () Bool)

(assert (= bs!1612553 d!2011393))

(declare-fun m!7209916 () Bool)

(assert (=> bs!1612553 m!7209916))

(assert (=> b!6412806 d!2011393))

(assert (=> b!6412806 d!2011199))

(assert (=> b!6412806 d!2011207))

(declare-fun b!6414316 () Bool)

(declare-fun res!2636170 () Bool)

(declare-fun e!3892186 () Bool)

(assert (=> b!6414316 (=> res!2636170 e!3892186)))

(assert (=> b!6414316 (= res!2636170 (not ((_ is Concat!25160) lt!2375345)))))

(declare-fun e!3892187 () Bool)

(assert (=> b!6414316 (= e!3892187 e!3892186)))

(declare-fun b!6414317 () Bool)

(declare-fun e!3892189 () Bool)

(declare-fun e!3892191 () Bool)

(assert (=> b!6414317 (= e!3892189 e!3892191)))

(declare-fun res!2636171 () Bool)

(assert (=> b!6414317 (= res!2636171 (not (nullable!6308 (reg!16644 lt!2375345))))))

(assert (=> b!6414317 (=> (not res!2636171) (not e!3892191))))

(declare-fun b!6414318 () Bool)

(declare-fun call!551275 () Bool)

(assert (=> b!6414318 (= e!3892191 call!551275)))

(declare-fun b!6414319 () Bool)

(declare-fun e!3892192 () Bool)

(assert (=> b!6414319 (= e!3892186 e!3892192)))

(declare-fun res!2636168 () Bool)

(assert (=> b!6414319 (=> (not res!2636168) (not e!3892192))))

(declare-fun call!551273 () Bool)

(assert (=> b!6414319 (= res!2636168 call!551273)))

(declare-fun bm!551268 () Bool)

(declare-fun call!551274 () Bool)

(assert (=> bm!551268 (= call!551274 call!551275)))

(declare-fun b!6414321 () Bool)

(declare-fun res!2636169 () Bool)

(declare-fun e!3892190 () Bool)

(assert (=> b!6414321 (=> (not res!2636169) (not e!3892190))))

(assert (=> b!6414321 (= res!2636169 call!551273)))

(assert (=> b!6414321 (= e!3892187 e!3892190)))

(declare-fun b!6414322 () Bool)

(declare-fun e!3892188 () Bool)

(assert (=> b!6414322 (= e!3892188 e!3892189)))

(declare-fun c!1171443 () Bool)

(assert (=> b!6414322 (= c!1171443 ((_ is Star!16315) lt!2375345))))

(declare-fun c!1171444 () Bool)

(declare-fun bm!551269 () Bool)

(assert (=> bm!551269 (= call!551275 (validRegex!8051 (ite c!1171443 (reg!16644 lt!2375345) (ite c!1171444 (regTwo!33143 lt!2375345) (regTwo!33142 lt!2375345)))))))

(declare-fun bm!551270 () Bool)

(assert (=> bm!551270 (= call!551273 (validRegex!8051 (ite c!1171444 (regOne!33143 lt!2375345) (regOne!33142 lt!2375345))))))

(declare-fun b!6414323 () Bool)

(assert (=> b!6414323 (= e!3892189 e!3892187)))

(assert (=> b!6414323 (= c!1171444 ((_ is Union!16315) lt!2375345))))

(declare-fun b!6414324 () Bool)

(assert (=> b!6414324 (= e!3892190 call!551274)))

(declare-fun d!2011395 () Bool)

(declare-fun res!2636172 () Bool)

(assert (=> d!2011395 (=> res!2636172 e!3892188)))

(assert (=> d!2011395 (= res!2636172 ((_ is ElementMatch!16315) lt!2375345))))

(assert (=> d!2011395 (= (validRegex!8051 lt!2375345) e!3892188)))

(declare-fun b!6414320 () Bool)

(assert (=> b!6414320 (= e!3892192 call!551274)))

(assert (= (and d!2011395 (not res!2636172)) b!6414322))

(assert (= (and b!6414322 c!1171443) b!6414317))

(assert (= (and b!6414322 (not c!1171443)) b!6414323))

(assert (= (and b!6414317 res!2636171) b!6414318))

(assert (= (and b!6414323 c!1171444) b!6414321))

(assert (= (and b!6414323 (not c!1171444)) b!6414316))

(assert (= (and b!6414321 res!2636169) b!6414324))

(assert (= (and b!6414316 (not res!2636170)) b!6414319))

(assert (= (and b!6414319 res!2636168) b!6414320))

(assert (= (or b!6414324 b!6414320) bm!551268))

(assert (= (or b!6414321 b!6414319) bm!551270))

(assert (= (or b!6414318 bm!551268) bm!551269))

(declare-fun m!7209918 () Bool)

(assert (=> b!6414317 m!7209918))

(declare-fun m!7209920 () Bool)

(assert (=> bm!551269 m!7209920))

(declare-fun m!7209922 () Bool)

(assert (=> bm!551270 m!7209922))

(assert (=> d!2011049 d!2011395))

(declare-fun d!2011397 () Bool)

(declare-fun res!2636173 () Bool)

(declare-fun e!3892193 () Bool)

(assert (=> d!2011397 (=> res!2636173 e!3892193)))

(assert (=> d!2011397 (= res!2636173 ((_ is Nil!65120) (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> d!2011397 (= (forall!15504 (t!378856 (exprs!6199 (h!71570 zl!343))) lambda!354098) e!3892193)))

(declare-fun b!6414325 () Bool)

(declare-fun e!3892194 () Bool)

(assert (=> b!6414325 (= e!3892193 e!3892194)))

(declare-fun res!2636174 () Bool)

(assert (=> b!6414325 (=> (not res!2636174) (not e!3892194))))

(assert (=> b!6414325 (= res!2636174 (dynLambda!25863 lambda!354098 (h!71568 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun b!6414326 () Bool)

(assert (=> b!6414326 (= e!3892194 (forall!15504 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343)))) lambda!354098))))

(assert (= (and d!2011397 (not res!2636173)) b!6414325))

(assert (= (and b!6414325 res!2636174) b!6414326))

(declare-fun b_lambda!243847 () Bool)

(assert (=> (not b_lambda!243847) (not b!6414325)))

(declare-fun m!7209924 () Bool)

(assert (=> b!6414325 m!7209924))

(declare-fun m!7209926 () Bool)

(assert (=> b!6414326 m!7209926))

(assert (=> d!2011049 d!2011397))

(declare-fun d!2011399 () Bool)

(declare-fun res!2636175 () Bool)

(declare-fun e!3892195 () Bool)

(assert (=> d!2011399 (=> res!2636175 e!3892195)))

(assert (=> d!2011399 (= res!2636175 ((_ is Nil!65122) zl!343))))

(assert (=> d!2011399 (= (forall!15503 zl!343 lambda!354034) e!3892195)))

(declare-fun b!6414327 () Bool)

(declare-fun e!3892196 () Bool)

(assert (=> b!6414327 (= e!3892195 e!3892196)))

(declare-fun res!2636176 () Bool)

(assert (=> b!6414327 (=> (not res!2636176) (not e!3892196))))

(assert (=> b!6414327 (= res!2636176 (dynLambda!25865 lambda!354034 (h!71570 zl!343)))))

(declare-fun b!6414328 () Bool)

(assert (=> b!6414328 (= e!3892196 (forall!15503 (t!378858 zl!343) lambda!354034))))

(assert (= (and d!2011399 (not res!2636175)) b!6414327))

(assert (= (and b!6414327 res!2636176) b!6414328))

(declare-fun b_lambda!243849 () Bool)

(assert (=> (not b_lambda!243849) (not b!6414327)))

(declare-fun m!7209928 () Bool)

(assert (=> b!6414327 m!7209928))

(declare-fun m!7209930 () Bool)

(assert (=> b!6414328 m!7209930))

(assert (=> b!6412817 d!2011399))

(declare-fun b!6414329 () Bool)

(declare-fun res!2636180 () Bool)

(declare-fun e!3892198 () Bool)

(assert (=> b!6414329 (=> res!2636180 e!3892198)))

(assert (=> b!6414329 (= res!2636180 (not (isEmpty!37269 (tail!12205 (_1!36597 (get!22556 lt!2375258))))))))

(declare-fun b!6414330 () Bool)

(declare-fun res!2636177 () Bool)

(declare-fun e!3892197 () Bool)

(assert (=> b!6414330 (=> res!2636177 e!3892197)))

(assert (=> b!6414330 (= res!2636177 (not ((_ is ElementMatch!16315) (regOne!33142 r!7292))))))

(declare-fun e!3892201 () Bool)

(assert (=> b!6414330 (= e!3892201 e!3892197)))

(declare-fun b!6414331 () Bool)

(declare-fun res!2636184 () Bool)

(declare-fun e!3892200 () Bool)

(assert (=> b!6414331 (=> (not res!2636184) (not e!3892200))))

(assert (=> b!6414331 (= res!2636184 (isEmpty!37269 (tail!12205 (_1!36597 (get!22556 lt!2375258)))))))

(declare-fun b!6414332 () Bool)

(declare-fun res!2636181 () Bool)

(assert (=> b!6414332 (=> res!2636181 e!3892197)))

(assert (=> b!6414332 (= res!2636181 e!3892200)))

(declare-fun res!2636178 () Bool)

(assert (=> b!6414332 (=> (not res!2636178) (not e!3892200))))

(declare-fun lt!2375423 () Bool)

(assert (=> b!6414332 (= res!2636178 lt!2375423)))

(declare-fun bm!551271 () Bool)

(declare-fun call!551276 () Bool)

(assert (=> bm!551271 (= call!551276 (isEmpty!37269 (_1!36597 (get!22556 lt!2375258))))))

(declare-fun b!6414333 () Bool)

(declare-fun e!3892199 () Bool)

(assert (=> b!6414333 (= e!3892199 (nullable!6308 (regOne!33142 r!7292)))))

(declare-fun b!6414334 () Bool)

(declare-fun e!3892203 () Bool)

(assert (=> b!6414334 (= e!3892197 e!3892203)))

(declare-fun res!2636183 () Bool)

(assert (=> b!6414334 (=> (not res!2636183) (not e!3892203))))

(assert (=> b!6414334 (= res!2636183 (not lt!2375423))))

(declare-fun b!6414335 () Bool)

(assert (=> b!6414335 (= e!3892203 e!3892198)))

(declare-fun res!2636182 () Bool)

(assert (=> b!6414335 (=> res!2636182 e!3892198)))

(assert (=> b!6414335 (= res!2636182 call!551276)))

(declare-fun b!6414336 () Bool)

(assert (=> b!6414336 (= e!3892200 (= (head!13120 (_1!36597 (get!22556 lt!2375258))) (c!1170970 (regOne!33142 r!7292))))))

(declare-fun b!6414337 () Bool)

(assert (=> b!6414337 (= e!3892198 (not (= (head!13120 (_1!36597 (get!22556 lt!2375258))) (c!1170970 (regOne!33142 r!7292)))))))

(declare-fun d!2011401 () Bool)

(declare-fun e!3892202 () Bool)

(assert (=> d!2011401 e!3892202))

(declare-fun c!1171447 () Bool)

(assert (=> d!2011401 (= c!1171447 ((_ is EmptyExpr!16315) (regOne!33142 r!7292)))))

(assert (=> d!2011401 (= lt!2375423 e!3892199)))

(declare-fun c!1171446 () Bool)

(assert (=> d!2011401 (= c!1171446 (isEmpty!37269 (_1!36597 (get!22556 lt!2375258))))))

(assert (=> d!2011401 (validRegex!8051 (regOne!33142 r!7292))))

(assert (=> d!2011401 (= (matchR!8498 (regOne!33142 r!7292) (_1!36597 (get!22556 lt!2375258))) lt!2375423)))

(declare-fun b!6414338 () Bool)

(declare-fun res!2636179 () Bool)

(assert (=> b!6414338 (=> (not res!2636179) (not e!3892200))))

(assert (=> b!6414338 (= res!2636179 (not call!551276))))

(declare-fun b!6414339 () Bool)

(assert (=> b!6414339 (= e!3892201 (not lt!2375423))))

(declare-fun b!6414340 () Bool)

(assert (=> b!6414340 (= e!3892199 (matchR!8498 (derivativeStep!5019 (regOne!33142 r!7292) (head!13120 (_1!36597 (get!22556 lt!2375258)))) (tail!12205 (_1!36597 (get!22556 lt!2375258)))))))

(declare-fun b!6414341 () Bool)

(assert (=> b!6414341 (= e!3892202 (= lt!2375423 call!551276))))

(declare-fun b!6414342 () Bool)

(assert (=> b!6414342 (= e!3892202 e!3892201)))

(declare-fun c!1171445 () Bool)

(assert (=> b!6414342 (= c!1171445 ((_ is EmptyLang!16315) (regOne!33142 r!7292)))))

(assert (= (and d!2011401 c!1171446) b!6414333))

(assert (= (and d!2011401 (not c!1171446)) b!6414340))

(assert (= (and d!2011401 c!1171447) b!6414341))

(assert (= (and d!2011401 (not c!1171447)) b!6414342))

(assert (= (and b!6414342 c!1171445) b!6414339))

(assert (= (and b!6414342 (not c!1171445)) b!6414330))

(assert (= (and b!6414330 (not res!2636177)) b!6414332))

(assert (= (and b!6414332 res!2636178) b!6414338))

(assert (= (and b!6414338 res!2636179) b!6414331))

(assert (= (and b!6414331 res!2636184) b!6414336))

(assert (= (and b!6414332 (not res!2636181)) b!6414334))

(assert (= (and b!6414334 res!2636183) b!6414335))

(assert (= (and b!6414335 (not res!2636182)) b!6414329))

(assert (= (and b!6414329 (not res!2636180)) b!6414337))

(assert (= (or b!6414341 b!6414335 b!6414338) bm!551271))

(declare-fun m!7209932 () Bool)

(assert (=> d!2011401 m!7209932))

(assert (=> d!2011401 m!7208718))

(declare-fun m!7209934 () Bool)

(assert (=> b!6414337 m!7209934))

(declare-fun m!7209936 () Bool)

(assert (=> b!6414333 m!7209936))

(assert (=> b!6414336 m!7209934))

(assert (=> b!6414340 m!7209934))

(assert (=> b!6414340 m!7209934))

(declare-fun m!7209938 () Bool)

(assert (=> b!6414340 m!7209938))

(declare-fun m!7209940 () Bool)

(assert (=> b!6414340 m!7209940))

(assert (=> b!6414340 m!7209938))

(assert (=> b!6414340 m!7209940))

(declare-fun m!7209942 () Bool)

(assert (=> b!6414340 m!7209942))

(assert (=> b!6414331 m!7209940))

(assert (=> b!6414331 m!7209940))

(declare-fun m!7209944 () Bool)

(assert (=> b!6414331 m!7209944))

(assert (=> bm!551271 m!7209932))

(assert (=> b!6414329 m!7209940))

(assert (=> b!6414329 m!7209940))

(assert (=> b!6414329 m!7209944))

(assert (=> b!6412859 d!2011401))

(declare-fun d!2011403 () Bool)

(assert (=> d!2011403 (= (get!22556 lt!2375258) (v!52378 lt!2375258))))

(assert (=> b!6412859 d!2011403))

(assert (=> d!2010963 d!2011251))

(assert (=> d!2010963 d!2010943))

(declare-fun d!2011405 () Bool)

(assert (=> d!2011405 (= (head!13122 (exprs!6199 (h!71570 zl!343))) (h!71568 (exprs!6199 (h!71570 zl!343))))))

(assert (=> b!6413355 d!2011405))

(declare-fun d!2011407 () Bool)

(assert (=> d!2011407 (= (isEmpty!37271 (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326)) (not ((_ is Some!16205) (findConcatSeparation!2620 (regOne!33142 r!7292) (regTwo!33142 r!7292) Nil!65121 s!2326 s!2326))))))

(assert (=> d!2010933 d!2011407))

(declare-fun bs!1612554 () Bool)

(declare-fun d!2011409 () Bool)

(assert (= bs!1612554 (and d!2011409 d!2011385)))

(declare-fun lambda!354149 () Int)

(assert (=> bs!1612554 (= lambda!354149 lambda!354147)))

(declare-fun bs!1612555 () Bool)

(assert (= bs!1612555 (and d!2011409 b!6412822)))

(assert (=> bs!1612555 (not (= lambda!354149 lambda!354037))))

(declare-fun bs!1612556 () Bool)

(assert (= bs!1612556 (and d!2011409 b!6412815)))

(assert (=> bs!1612556 (not (= lambda!354149 lambda!354033))))

(declare-fun bs!1612557 () Bool)

(assert (= bs!1612557 (and d!2011409 d!2011355)))

(assert (=> bs!1612557 (= lambda!354149 lambda!354143)))

(declare-fun bs!1612558 () Bool)

(assert (= bs!1612558 (and d!2011409 b!6412817)))

(assert (=> bs!1612558 (not (= lambda!354149 lambda!354034))))

(declare-fun bs!1612559 () Bool)

(assert (= bs!1612559 (and d!2011409 d!2011369)))

(assert (=> bs!1612559 (= lambda!354149 lambda!354145)))

(declare-fun bs!1612560 () Bool)

(assert (= bs!1612560 (and d!2011409 b!6412820)))

(assert (=> bs!1612560 (not (= lambda!354149 lambda!354036))))

(assert (=> d!2011409 (= (nullableZipper!2080 z!1189) (exists!2597 z!1189 lambda!354149))))

(declare-fun bs!1612561 () Bool)

(assert (= bs!1612561 d!2011409))

(declare-fun m!7209946 () Bool)

(assert (=> bs!1612561 m!7209946))

(assert (=> b!6413373 d!2011409))

(declare-fun d!2011411 () Bool)

(assert (=> d!2011411 (= (maxBigInt!0 (ite c!1171214 call!551109 call!551104) (ite c!1171214 call!551104 call!551109)) (ite (>= (ite c!1171214 call!551109 call!551104) (ite c!1171214 call!551104 call!551109)) (ite c!1171214 call!551109 call!551104) (ite c!1171214 call!551104 call!551109)))))

(assert (=> bm!551103 d!2011411))

(assert (=> b!6413827 d!2011363))

(declare-fun d!2011413 () Bool)

(assert (=> d!2011413 (= ($colon$colon!2176 (exprs!6199 lt!2375218) (ite (or c!1171293 c!1171294) (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (h!71568 (exprs!6199 (h!71570 zl!343))))) (Cons!65120 (ite (or c!1171293 c!1171294) (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (h!71568 (exprs!6199 (h!71570 zl!343)))) (exprs!6199 lt!2375218)))))

(assert (=> bm!551151 d!2011413))

(declare-fun bs!1612562 () Bool)

(declare-fun b!6414345 () Bool)

(assert (= bs!1612562 (and b!6414345 b!6413152)))

(declare-fun lambda!354150 () Int)

(assert (=> bs!1612562 (= (and (= (reg!16644 (regTwo!33143 lt!2375201)) (reg!16644 r!7292)) (= (regTwo!33143 lt!2375201) r!7292)) (= lambda!354150 lambda!354066))))

(declare-fun bs!1612563 () Bool)

(assert (= bs!1612563 (and b!6414345 b!6412781)))

(assert (=> bs!1612563 (not (= lambda!354150 lambda!354022))))

(declare-fun bs!1612564 () Bool)

(assert (= bs!1612564 (and b!6414345 d!2010919)))

(assert (=> bs!1612564 (not (= lambda!354150 lambda!354051))))

(declare-fun bs!1612565 () Bool)

(assert (= bs!1612565 (and b!6414345 b!6414158)))

(assert (=> bs!1612565 (= (and (= (reg!16644 (regTwo!33143 lt!2375201)) (reg!16644 (regOne!33143 lt!2375201))) (= (regTwo!33143 lt!2375201) (regOne!33143 lt!2375201))) (= lambda!354150 lambda!354133))))

(assert (=> bs!1612564 (not (= lambda!354150 lambda!354052))))

(assert (=> bs!1612563 (not (= lambda!354150 lambda!354021))))

(declare-fun bs!1612566 () Bool)

(assert (= bs!1612566 (and b!6414345 d!2011371)))

(assert (=> bs!1612566 (not (= lambda!354150 lambda!354146))))

(declare-fun bs!1612567 () Bool)

(assert (= bs!1612567 (and b!6414345 b!6412754)))

(assert (=> bs!1612567 (not (= lambda!354150 lambda!354025))))

(declare-fun bs!1612568 () Bool)

(assert (= bs!1612568 (and b!6414345 b!6414160)))

(assert (=> bs!1612568 (not (= lambda!354150 lambda!354134))))

(declare-fun bs!1612569 () Bool)

(assert (= bs!1612569 (and b!6414345 b!6413231)))

(assert (=> bs!1612569 (not (= lambda!354150 lambda!354073))))

(declare-fun bs!1612570 () Bool)

(assert (= bs!1612570 (and b!6414345 d!2010991)))

(assert (=> bs!1612570 (not (= lambda!354150 lambda!354077))))

(declare-fun bs!1612571 () Bool)

(assert (= bs!1612571 (and b!6414345 b!6413973)))

(assert (=> bs!1612571 (= (and (= (reg!16644 (regTwo!33143 lt!2375201)) (reg!16644 (regTwo!33143 r!7292))) (= (regTwo!33143 lt!2375201) (regTwo!33143 r!7292))) (= lambda!354150 lambda!354127))))

(declare-fun bs!1612572 () Bool)

(assert (= bs!1612572 (and b!6414345 d!2011349)))

(assert (=> bs!1612572 (not (= lambda!354150 lambda!354140))))

(declare-fun bs!1612573 () Bool)

(assert (= bs!1612573 (and b!6414345 b!6413975)))

(assert (=> bs!1612573 (not (= lambda!354150 lambda!354128))))

(declare-fun bs!1612574 () Bool)

(assert (= bs!1612574 (and b!6414345 b!6413229)))

(assert (=> bs!1612574 (= (and (= (reg!16644 (regTwo!33143 lt!2375201)) (reg!16644 lt!2375201)) (= (regTwo!33143 lt!2375201) lt!2375201)) (= lambda!354150 lambda!354070))))

(assert (=> bs!1612570 (not (= lambda!354150 lambda!354078))))

(declare-fun bs!1612575 () Bool)

(assert (= bs!1612575 (and b!6414345 b!6413154)))

(assert (=> bs!1612575 (not (= lambda!354150 lambda!354067))))

(assert (=> bs!1612567 (not (= lambda!354150 lambda!354024))))

(declare-fun bs!1612576 () Bool)

(assert (= bs!1612576 (and b!6414345 d!2010911)))

(assert (=> bs!1612576 (not (= lambda!354150 lambda!354046))))

(declare-fun bs!1612577 () Bool)

(assert (= bs!1612577 (and b!6414345 d!2010973)))

(assert (=> bs!1612577 (not (= lambda!354150 lambda!354074))))

(assert (=> b!6414345 true))

(assert (=> b!6414345 true))

(declare-fun bs!1612578 () Bool)

(declare-fun b!6414347 () Bool)

(assert (= bs!1612578 (and b!6414347 b!6413152)))

(declare-fun lambda!354151 () Int)

(assert (=> bs!1612578 (not (= lambda!354151 lambda!354066))))

(declare-fun bs!1612579 () Bool)

(assert (= bs!1612579 (and b!6414347 b!6414345)))

(assert (=> bs!1612579 (not (= lambda!354151 lambda!354150))))

(declare-fun bs!1612580 () Bool)

(assert (= bs!1612580 (and b!6414347 b!6412781)))

(assert (=> bs!1612580 (= (and (= (regOne!33142 (regTwo!33143 lt!2375201)) (regOne!33142 r!7292)) (= (regTwo!33142 (regTwo!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354151 lambda!354022))))

(declare-fun bs!1612581 () Bool)

(assert (= bs!1612581 (and b!6414347 d!2010919)))

(assert (=> bs!1612581 (not (= lambda!354151 lambda!354051))))

(declare-fun bs!1612582 () Bool)

(assert (= bs!1612582 (and b!6414347 b!6414158)))

(assert (=> bs!1612582 (not (= lambda!354151 lambda!354133))))

(assert (=> bs!1612581 (= (and (= (regOne!33142 (regTwo!33143 lt!2375201)) (regOne!33142 r!7292)) (= (regTwo!33142 (regTwo!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354151 lambda!354052))))

(assert (=> bs!1612580 (not (= lambda!354151 lambda!354021))))

(declare-fun bs!1612583 () Bool)

(assert (= bs!1612583 (and b!6414347 d!2011371)))

(assert (=> bs!1612583 (not (= lambda!354151 lambda!354146))))

(declare-fun bs!1612584 () Bool)

(assert (= bs!1612584 (and b!6414347 b!6412754)))

(assert (=> bs!1612584 (= (and (= (regOne!33142 (regTwo!33143 lt!2375201)) lt!2375222) (= (regTwo!33142 (regTwo!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354151 lambda!354025))))

(declare-fun bs!1612585 () Bool)

(assert (= bs!1612585 (and b!6414347 b!6414160)))

(assert (=> bs!1612585 (= (and (= (regOne!33142 (regTwo!33143 lt!2375201)) (regOne!33142 (regOne!33143 lt!2375201))) (= (regTwo!33142 (regTwo!33143 lt!2375201)) (regTwo!33142 (regOne!33143 lt!2375201)))) (= lambda!354151 lambda!354134))))

(declare-fun bs!1612586 () Bool)

(assert (= bs!1612586 (and b!6414347 b!6413231)))

(assert (=> bs!1612586 (= (and (= (regOne!33142 (regTwo!33143 lt!2375201)) (regOne!33142 lt!2375201)) (= (regTwo!33142 (regTwo!33143 lt!2375201)) (regTwo!33142 lt!2375201))) (= lambda!354151 lambda!354073))))

(declare-fun bs!1612587 () Bool)

(assert (= bs!1612587 (and b!6414347 d!2010991)))

(assert (=> bs!1612587 (not (= lambda!354151 lambda!354077))))

(declare-fun bs!1612588 () Bool)

(assert (= bs!1612588 (and b!6414347 b!6413973)))

(assert (=> bs!1612588 (not (= lambda!354151 lambda!354127))))

(declare-fun bs!1612589 () Bool)

(assert (= bs!1612589 (and b!6414347 d!2011349)))

(assert (=> bs!1612589 (not (= lambda!354151 lambda!354140))))

(declare-fun bs!1612590 () Bool)

(assert (= bs!1612590 (and b!6414347 b!6413975)))

(assert (=> bs!1612590 (= (and (= (regOne!33142 (regTwo!33143 lt!2375201)) (regOne!33142 (regTwo!33143 r!7292))) (= (regTwo!33142 (regTwo!33143 lt!2375201)) (regTwo!33142 (regTwo!33143 r!7292)))) (= lambda!354151 lambda!354128))))

(declare-fun bs!1612591 () Bool)

(assert (= bs!1612591 (and b!6414347 b!6413229)))

(assert (=> bs!1612591 (not (= lambda!354151 lambda!354070))))

(assert (=> bs!1612587 (= (and (= (regOne!33142 (regTwo!33143 lt!2375201)) lt!2375222) (= (regTwo!33142 (regTwo!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354151 lambda!354078))))

(declare-fun bs!1612592 () Bool)

(assert (= bs!1612592 (and b!6414347 b!6413154)))

(assert (=> bs!1612592 (= (and (= (regOne!33142 (regTwo!33143 lt!2375201)) (regOne!33142 r!7292)) (= (regTwo!33142 (regTwo!33143 lt!2375201)) (regTwo!33142 r!7292))) (= lambda!354151 lambda!354067))))

(assert (=> bs!1612584 (not (= lambda!354151 lambda!354024))))

(declare-fun bs!1612593 () Bool)

(assert (= bs!1612593 (and b!6414347 d!2010911)))

(assert (=> bs!1612593 (not (= lambda!354151 lambda!354046))))

(declare-fun bs!1612594 () Bool)

(assert (= bs!1612594 (and b!6414347 d!2010973)))

(assert (=> bs!1612594 (not (= lambda!354151 lambda!354074))))

(assert (=> b!6414347 true))

(assert (=> b!6414347 true))

(declare-fun bm!551272 () Bool)

(declare-fun call!551277 () Bool)

(assert (=> bm!551272 (= call!551277 (isEmpty!37269 s!2326))))

(declare-fun bm!551273 () Bool)

(declare-fun call!551278 () Bool)

(declare-fun c!1171450 () Bool)

(assert (=> bm!551273 (= call!551278 (Exists!3385 (ite c!1171450 lambda!354150 lambda!354151)))))

(declare-fun b!6414343 () Bool)

(declare-fun e!3892205 () Bool)

(declare-fun e!3892209 () Bool)

(assert (=> b!6414343 (= e!3892205 e!3892209)))

(assert (=> b!6414343 (= c!1171450 ((_ is Star!16315) (regTwo!33143 lt!2375201)))))

(declare-fun b!6414344 () Bool)

(declare-fun res!2636187 () Bool)

(declare-fun e!3892204 () Bool)

(assert (=> b!6414344 (=> res!2636187 e!3892204)))

(assert (=> b!6414344 (= res!2636187 call!551277)))

(assert (=> b!6414344 (= e!3892209 e!3892204)))

(assert (=> b!6414345 (= e!3892204 call!551278)))

(declare-fun b!6414346 () Bool)

(declare-fun e!3892208 () Bool)

(declare-fun e!3892207 () Bool)

(assert (=> b!6414346 (= e!3892208 e!3892207)))

(declare-fun res!2636185 () Bool)

(assert (=> b!6414346 (= res!2636185 (not ((_ is EmptyLang!16315) (regTwo!33143 lt!2375201))))))

(assert (=> b!6414346 (=> (not res!2636185) (not e!3892207))))

(assert (=> b!6414347 (= e!3892209 call!551278)))

(declare-fun b!6414348 () Bool)

(declare-fun c!1171451 () Bool)

(assert (=> b!6414348 (= c!1171451 ((_ is ElementMatch!16315) (regTwo!33143 lt!2375201)))))

(declare-fun e!3892206 () Bool)

(assert (=> b!6414348 (= e!3892207 e!3892206)))

(declare-fun b!6414349 () Bool)

(declare-fun e!3892210 () Bool)

(assert (=> b!6414349 (= e!3892210 (matchRSpec!3416 (regTwo!33143 (regTwo!33143 lt!2375201)) s!2326))))

(declare-fun d!2011415 () Bool)

(declare-fun c!1171449 () Bool)

(assert (=> d!2011415 (= c!1171449 ((_ is EmptyExpr!16315) (regTwo!33143 lt!2375201)))))

(assert (=> d!2011415 (= (matchRSpec!3416 (regTwo!33143 lt!2375201) s!2326) e!3892208)))

(declare-fun b!6414350 () Bool)

(assert (=> b!6414350 (= e!3892206 (= s!2326 (Cons!65121 (c!1170970 (regTwo!33143 lt!2375201)) Nil!65121)))))

(declare-fun b!6414351 () Bool)

(assert (=> b!6414351 (= e!3892205 e!3892210)))

(declare-fun res!2636186 () Bool)

(assert (=> b!6414351 (= res!2636186 (matchRSpec!3416 (regOne!33143 (regTwo!33143 lt!2375201)) s!2326))))

(assert (=> b!6414351 (=> res!2636186 e!3892210)))

(declare-fun b!6414352 () Bool)

(declare-fun c!1171448 () Bool)

(assert (=> b!6414352 (= c!1171448 ((_ is Union!16315) (regTwo!33143 lt!2375201)))))

(assert (=> b!6414352 (= e!3892206 e!3892205)))

(declare-fun b!6414353 () Bool)

(assert (=> b!6414353 (= e!3892208 call!551277)))

(assert (= (and d!2011415 c!1171449) b!6414353))

(assert (= (and d!2011415 (not c!1171449)) b!6414346))

(assert (= (and b!6414346 res!2636185) b!6414348))

(assert (= (and b!6414348 c!1171451) b!6414350))

(assert (= (and b!6414348 (not c!1171451)) b!6414352))

(assert (= (and b!6414352 c!1171448) b!6414351))

(assert (= (and b!6414352 (not c!1171448)) b!6414343))

(assert (= (and b!6414351 (not res!2636186)) b!6414349))

(assert (= (and b!6414343 c!1171450) b!6414344))

(assert (= (and b!6414343 (not c!1171450)) b!6414347))

(assert (= (and b!6414344 (not res!2636187)) b!6414345))

(assert (= (or b!6414345 b!6414347) bm!551273))

(assert (= (or b!6414353 b!6414344) bm!551272))

(assert (=> bm!551272 m!7208618))

(declare-fun m!7209948 () Bool)

(assert (=> bm!551273 m!7209948))

(declare-fun m!7209950 () Bool)

(assert (=> b!6414349 m!7209950))

(declare-fun m!7209952 () Bool)

(assert (=> b!6414351 m!7209952))

(assert (=> b!6413233 d!2011415))

(declare-fun d!2011417 () Bool)

(assert (=> d!2011417 (= (flatMap!1820 lt!2375199 lambda!354092) (choose!47643 lt!2375199 lambda!354092))))

(declare-fun bs!1612595 () Bool)

(assert (= bs!1612595 d!2011417))

(declare-fun m!7209954 () Bool)

(assert (=> bs!1612595 m!7209954))

(assert (=> d!2011031 d!2011417))

(declare-fun d!2011419 () Bool)

(declare-fun c!1171452 () Bool)

(assert (=> d!2011419 (= c!1171452 (isEmpty!37269 (tail!12205 (t!378857 s!2326))))))

(declare-fun e!3892211 () Bool)

(assert (=> d!2011419 (= (matchZipper!2327 (derivationStepZipper!2281 lt!2375209 (head!13120 (t!378857 s!2326))) (tail!12205 (t!378857 s!2326))) e!3892211)))

(declare-fun b!6414354 () Bool)

(assert (=> b!6414354 (= e!3892211 (nullableZipper!2080 (derivationStepZipper!2281 lt!2375209 (head!13120 (t!378857 s!2326)))))))

(declare-fun b!6414355 () Bool)

(assert (=> b!6414355 (= e!3892211 (matchZipper!2327 (derivationStepZipper!2281 (derivationStepZipper!2281 lt!2375209 (head!13120 (t!378857 s!2326))) (head!13120 (tail!12205 (t!378857 s!2326)))) (tail!12205 (tail!12205 (t!378857 s!2326)))))))

(assert (= (and d!2011419 c!1171452) b!6414354))

(assert (= (and d!2011419 (not c!1171452)) b!6414355))

(assert (=> d!2011419 m!7208608))

(assert (=> d!2011419 m!7209718))

(assert (=> b!6414354 m!7209204))

(declare-fun m!7209956 () Bool)

(assert (=> b!6414354 m!7209956))

(assert (=> b!6414355 m!7208608))

(assert (=> b!6414355 m!7209722))

(assert (=> b!6414355 m!7209204))

(assert (=> b!6414355 m!7209722))

(declare-fun m!7209958 () Bool)

(assert (=> b!6414355 m!7209958))

(assert (=> b!6414355 m!7208608))

(assert (=> b!6414355 m!7209726))

(assert (=> b!6414355 m!7209958))

(assert (=> b!6414355 m!7209726))

(declare-fun m!7209960 () Bool)

(assert (=> b!6414355 m!7209960))

(assert (=> b!6413629 d!2011419))

(declare-fun bs!1612596 () Bool)

(declare-fun d!2011421 () Bool)

(assert (= bs!1612596 (and d!2011421 d!2011311)))

(declare-fun lambda!354152 () Int)

(assert (=> bs!1612596 (= lambda!354152 lambda!354135)))

(declare-fun bs!1612597 () Bool)

(assert (= bs!1612597 (and d!2011421 d!2011331)))

(assert (=> bs!1612597 (= (= (head!13120 (t!378857 s!2326)) (head!13120 s!2326)) (= lambda!354152 lambda!354137))))

(declare-fun bs!1612598 () Bool)

(assert (= bs!1612598 (and d!2011421 d!2011289)))

(assert (=> bs!1612598 (= lambda!354152 lambda!354132)))

(declare-fun bs!1612599 () Bool)

(assert (= bs!1612599 (and d!2011421 d!2011031)))

(assert (=> bs!1612599 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354152 lambda!354092))))

(declare-fun bs!1612600 () Bool)

(assert (= bs!1612600 (and d!2011421 d!2011141)))

(assert (=> bs!1612600 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354152 lambda!354124))))

(declare-fun bs!1612601 () Bool)

(assert (= bs!1612601 (and d!2011421 d!2011327)))

(assert (=> bs!1612601 (= lambda!354152 lambda!354136)))

(declare-fun bs!1612602 () Bool)

(assert (= bs!1612602 (and d!2011421 b!6412770)))

(assert (=> bs!1612602 (= (= (head!13120 (t!378857 s!2326)) (h!71569 s!2326)) (= lambda!354152 lambda!354023))))

(declare-fun bs!1612603 () Bool)

(assert (= bs!1612603 (and d!2011421 d!2011393)))

(assert (=> bs!1612603 (= (= (head!13120 (t!378857 s!2326)) (head!13120 s!2326)) (= lambda!354152 lambda!354148))))

(assert (=> d!2011421 true))

(assert (=> d!2011421 (= (derivationStepZipper!2281 lt!2375209 (head!13120 (t!378857 s!2326))) (flatMap!1820 lt!2375209 lambda!354152))))

(declare-fun bs!1612604 () Bool)

(assert (= bs!1612604 d!2011421))

(declare-fun m!7209962 () Bool)

(assert (=> bs!1612604 m!7209962))

(assert (=> b!6413629 d!2011421))

(assert (=> b!6413629 d!2011291))

(assert (=> b!6413629 d!2011293))

(declare-fun b!6414358 () Bool)

(declare-fun res!2636188 () Bool)

(declare-fun e!3892212 () Bool)

(assert (=> b!6414358 (=> (not res!2636188) (not e!3892212))))

(declare-fun lt!2375424 () List!65245)

(assert (=> b!6414358 (= res!2636188 (= (size!40373 lt!2375424) (+ (size!40373 (_1!36597 (get!22556 lt!2375258))) (size!40373 (_2!36597 (get!22556 lt!2375258))))))))

(declare-fun b!6414359 () Bool)

(assert (=> b!6414359 (= e!3892212 (or (not (= (_2!36597 (get!22556 lt!2375258)) Nil!65121)) (= lt!2375424 (_1!36597 (get!22556 lt!2375258)))))))

(declare-fun b!6414356 () Bool)

(declare-fun e!3892213 () List!65245)

(assert (=> b!6414356 (= e!3892213 (_2!36597 (get!22556 lt!2375258)))))

(declare-fun b!6414357 () Bool)

(assert (=> b!6414357 (= e!3892213 (Cons!65121 (h!71569 (_1!36597 (get!22556 lt!2375258))) (++!14383 (t!378857 (_1!36597 (get!22556 lt!2375258))) (_2!36597 (get!22556 lt!2375258)))))))

(declare-fun d!2011423 () Bool)

(assert (=> d!2011423 e!3892212))

(declare-fun res!2636189 () Bool)

(assert (=> d!2011423 (=> (not res!2636189) (not e!3892212))))

(assert (=> d!2011423 (= res!2636189 (= (content!12344 lt!2375424) ((_ map or) (content!12344 (_1!36597 (get!22556 lt!2375258))) (content!12344 (_2!36597 (get!22556 lt!2375258))))))))

(assert (=> d!2011423 (= lt!2375424 e!3892213)))

(declare-fun c!1171453 () Bool)

(assert (=> d!2011423 (= c!1171453 ((_ is Nil!65121) (_1!36597 (get!22556 lt!2375258))))))

(assert (=> d!2011423 (= (++!14383 (_1!36597 (get!22556 lt!2375258)) (_2!36597 (get!22556 lt!2375258))) lt!2375424)))

(assert (= (and d!2011423 c!1171453) b!6414356))

(assert (= (and d!2011423 (not c!1171453)) b!6414357))

(assert (= (and d!2011423 res!2636189) b!6414358))

(assert (= (and b!6414358 res!2636188) b!6414359))

(declare-fun m!7209964 () Bool)

(assert (=> b!6414358 m!7209964))

(declare-fun m!7209966 () Bool)

(assert (=> b!6414358 m!7209966))

(declare-fun m!7209968 () Bool)

(assert (=> b!6414358 m!7209968))

(declare-fun m!7209970 () Bool)

(assert (=> b!6414357 m!7209970))

(declare-fun m!7209972 () Bool)

(assert (=> d!2011423 m!7209972))

(declare-fun m!7209974 () Bool)

(assert (=> d!2011423 m!7209974))

(declare-fun m!7209976 () Bool)

(assert (=> d!2011423 m!7209976))

(assert (=> b!6412866 d!2011423))

(assert (=> b!6412866 d!2011403))

(assert (=> b!6413627 d!2010879))

(declare-fun bs!1612605 () Bool)

(declare-fun d!2011425 () Bool)

(assert (= bs!1612605 (and d!2011425 d!2011135)))

(declare-fun lambda!354153 () Int)

(assert (=> bs!1612605 (= lambda!354153 lambda!354123)))

(declare-fun bs!1612606 () Bool)

(assert (= bs!1612606 (and d!2011425 d!2011231)))

(assert (=> bs!1612606 (= lambda!354153 lambda!354126)))

(declare-fun bs!1612607 () Bool)

(assert (= bs!1612607 (and d!2011425 d!2011049)))

(assert (=> bs!1612607 (= lambda!354153 lambda!354098)))

(declare-fun bs!1612608 () Bool)

(assert (= bs!1612608 (and d!2011425 d!2011275)))

(assert (=> bs!1612608 (= lambda!354153 lambda!354131)))

(declare-fun bs!1612609 () Bool)

(assert (= bs!1612609 (and d!2011425 d!2010999)))

(assert (=> bs!1612609 (= lambda!354153 lambda!354084)))

(declare-fun bs!1612610 () Bool)

(assert (= bs!1612610 (and d!2011425 d!2011273)))

(assert (=> bs!1612610 (= lambda!354153 lambda!354130)))

(declare-fun bs!1612611 () Bool)

(assert (= bs!1612611 (and d!2011425 d!2011269)))

(assert (=> bs!1612611 (= lambda!354153 lambda!354129)))

(declare-fun bs!1612612 () Bool)

(assert (= bs!1612612 (and d!2011425 d!2011365)))

(assert (=> bs!1612612 (= lambda!354153 lambda!354144)))

(declare-fun bs!1612613 () Bool)

(assert (= bs!1612613 (and d!2011425 d!2011171)))

(assert (=> bs!1612613 (= lambda!354153 lambda!354125)))

(declare-fun bs!1612614 () Bool)

(assert (= bs!1612614 (and d!2011425 d!2011077)))

(assert (=> bs!1612614 (= lambda!354153 lambda!354116)))

(declare-fun bs!1612615 () Bool)

(assert (= bs!1612615 (and d!2011425 d!2011089)))

(assert (=> bs!1612615 (= lambda!354153 lambda!354119)))

(declare-fun b!6414360 () Bool)

(declare-fun e!3892215 () Bool)

(declare-fun lt!2375425 () Regex!16315)

(assert (=> b!6414360 (= e!3892215 (= lt!2375425 (head!13122 (t!378856 (unfocusZipperList!1736 zl!343)))))))

(declare-fun b!6414361 () Bool)

(declare-fun e!3892217 () Regex!16315)

(assert (=> b!6414361 (= e!3892217 EmptyLang!16315)))

(declare-fun e!3892219 () Bool)

(assert (=> d!2011425 e!3892219))

(declare-fun res!2636191 () Bool)

(assert (=> d!2011425 (=> (not res!2636191) (not e!3892219))))

(assert (=> d!2011425 (= res!2636191 (validRegex!8051 lt!2375425))))

(declare-fun e!3892216 () Regex!16315)

(assert (=> d!2011425 (= lt!2375425 e!3892216)))

(declare-fun c!1171454 () Bool)

(declare-fun e!3892214 () Bool)

(assert (=> d!2011425 (= c!1171454 e!3892214)))

(declare-fun res!2636190 () Bool)

(assert (=> d!2011425 (=> (not res!2636190) (not e!3892214))))

(assert (=> d!2011425 (= res!2636190 ((_ is Cons!65120) (t!378856 (unfocusZipperList!1736 zl!343))))))

(assert (=> d!2011425 (forall!15504 (t!378856 (unfocusZipperList!1736 zl!343)) lambda!354153)))

(assert (=> d!2011425 (= (generalisedUnion!2159 (t!378856 (unfocusZipperList!1736 zl!343))) lt!2375425)))

(declare-fun b!6414362 () Bool)

(assert (=> b!6414362 (= e!3892216 e!3892217)))

(declare-fun c!1171457 () Bool)

(assert (=> b!6414362 (= c!1171457 ((_ is Cons!65120) (t!378856 (unfocusZipperList!1736 zl!343))))))

(declare-fun b!6414363 () Bool)

(assert (=> b!6414363 (= e!3892217 (Union!16315 (h!71568 (t!378856 (unfocusZipperList!1736 zl!343))) (generalisedUnion!2159 (t!378856 (t!378856 (unfocusZipperList!1736 zl!343))))))))

(declare-fun b!6414364 () Bool)

(assert (=> b!6414364 (= e!3892215 (isUnion!1153 lt!2375425))))

(declare-fun b!6414365 () Bool)

(assert (=> b!6414365 (= e!3892214 (isEmpty!37268 (t!378856 (t!378856 (unfocusZipperList!1736 zl!343)))))))

(declare-fun b!6414366 () Bool)

(declare-fun e!3892218 () Bool)

(assert (=> b!6414366 (= e!3892219 e!3892218)))

(declare-fun c!1171455 () Bool)

(assert (=> b!6414366 (= c!1171455 (isEmpty!37268 (t!378856 (unfocusZipperList!1736 zl!343))))))

(declare-fun b!6414367 () Bool)

(assert (=> b!6414367 (= e!3892218 e!3892215)))

(declare-fun c!1171456 () Bool)

(assert (=> b!6414367 (= c!1171456 (isEmpty!37268 (tail!12207 (t!378856 (unfocusZipperList!1736 zl!343)))))))

(declare-fun b!6414368 () Bool)

(assert (=> b!6414368 (= e!3892216 (h!71568 (t!378856 (unfocusZipperList!1736 zl!343))))))

(declare-fun b!6414369 () Bool)

(assert (=> b!6414369 (= e!3892218 (isEmptyLang!1723 lt!2375425))))

(assert (= (and d!2011425 res!2636190) b!6414365))

(assert (= (and d!2011425 c!1171454) b!6414368))

(assert (= (and d!2011425 (not c!1171454)) b!6414362))

(assert (= (and b!6414362 c!1171457) b!6414363))

(assert (= (and b!6414362 (not c!1171457)) b!6414361))

(assert (= (and d!2011425 res!2636191) b!6414366))

(assert (= (and b!6414366 c!1171455) b!6414369))

(assert (= (and b!6414366 (not c!1171455)) b!6414367))

(assert (= (and b!6414367 c!1171456) b!6414360))

(assert (= (and b!6414367 (not c!1171456)) b!6414364))

(declare-fun m!7209978 () Bool)

(assert (=> b!6414360 m!7209978))

(declare-fun m!7209980 () Bool)

(assert (=> b!6414369 m!7209980))

(declare-fun m!7209982 () Bool)

(assert (=> b!6414363 m!7209982))

(declare-fun m!7209984 () Bool)

(assert (=> d!2011425 m!7209984))

(declare-fun m!7209986 () Bool)

(assert (=> d!2011425 m!7209986))

(declare-fun m!7209988 () Bool)

(assert (=> b!6414367 m!7209988))

(assert (=> b!6414367 m!7209988))

(declare-fun m!7209990 () Bool)

(assert (=> b!6414367 m!7209990))

(assert (=> b!6414366 m!7209316))

(declare-fun m!7209992 () Bool)

(assert (=> b!6414364 m!7209992))

(declare-fun m!7209994 () Bool)

(assert (=> b!6414365 m!7209994))

(assert (=> b!6413724 d!2011425))

(assert (=> b!6413799 d!2011127))

(declare-fun bs!1612616 () Bool)

(declare-fun d!2011427 () Bool)

(assert (= bs!1612616 (and d!2011427 b!6412822)))

(declare-fun lambda!354154 () Int)

(assert (=> bs!1612616 (not (= lambda!354154 lambda!354037))))

(declare-fun bs!1612617 () Bool)

(assert (= bs!1612617 (and d!2011427 b!6412815)))

(assert (=> bs!1612617 (not (= lambda!354154 lambda!354033))))

(declare-fun bs!1612618 () Bool)

(assert (= bs!1612618 (and d!2011427 d!2011355)))

(assert (=> bs!1612618 (= lambda!354154 lambda!354143)))

(declare-fun bs!1612619 () Bool)

(assert (= bs!1612619 (and d!2011427 b!6412817)))

(assert (=> bs!1612619 (not (= lambda!354154 lambda!354034))))

(declare-fun bs!1612620 () Bool)

(assert (= bs!1612620 (and d!2011427 d!2011409)))

(assert (=> bs!1612620 (= lambda!354154 lambda!354149)))

(declare-fun bs!1612621 () Bool)

(assert (= bs!1612621 (and d!2011427 d!2011385)))

(assert (=> bs!1612621 (= lambda!354154 lambda!354147)))

(declare-fun bs!1612622 () Bool)

(assert (= bs!1612622 (and d!2011427 d!2011369)))

(assert (=> bs!1612622 (= lambda!354154 lambda!354145)))

(declare-fun bs!1612623 () Bool)

(assert (= bs!1612623 (and d!2011427 b!6412820)))

(assert (=> bs!1612623 (not (= lambda!354154 lambda!354036))))

(assert (=> d!2011427 (= (nullableZipper!2080 lt!2375199) (exists!2597 lt!2375199 lambda!354154))))

(declare-fun bs!1612624 () Bool)

(assert (= bs!1612624 d!2011427))

(declare-fun m!7209996 () Bool)

(assert (=> bs!1612624 m!7209996))

(assert (=> b!6412805 d!2011427))

(declare-fun d!2011429 () Bool)

(assert (=> d!2011429 (= (isEmptyExpr!1716 lt!2375325) ((_ is EmptyExpr!16315) lt!2375325))))

(assert (=> b!6413354 d!2011429))

(declare-fun d!2011431 () Bool)

(assert (=> d!2011431 (= (flatMap!1820 lt!2375203 lambda!354124) (choose!47643 lt!2375203 lambda!354124))))

(declare-fun bs!1612625 () Bool)

(assert (= bs!1612625 d!2011431))

(declare-fun m!7209998 () Bool)

(assert (=> bs!1612625 m!7209998))

(assert (=> d!2011141 d!2011431))

(declare-fun d!2011433 () Bool)

(assert (=> d!2011433 (= (isEmpty!37269 (tail!12205 (_1!36597 lt!2375224))) ((_ is Nil!65121) (tail!12205 (_1!36597 lt!2375224))))))

(assert (=> b!6413031 d!2011433))

(assert (=> b!6413031 d!2011323))

(declare-fun bm!551274 () Bool)

(declare-fun call!551279 () (InoxSet Context!11398))

(assert (=> bm!551274 (= call!551279 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375195))))) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375195)))))) (h!71569 s!2326)))))

(declare-fun b!6414370 () Bool)

(declare-fun e!3892220 () (InoxSet Context!11398))

(assert (=> b!6414370 (= e!3892220 ((_ map or) call!551279 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375195)))))) (h!71569 s!2326))))))

(declare-fun b!6414371 () Bool)

(declare-fun e!3892222 () (InoxSet Context!11398))

(assert (=> b!6414371 (= e!3892222 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6414373 () Bool)

(assert (=> b!6414373 (= e!3892222 call!551279)))

(declare-fun b!6414374 () Bool)

(declare-fun e!3892221 () Bool)

(assert (=> b!6414374 (= e!3892221 (nullable!6308 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375195)))))))))

(declare-fun b!6414372 () Bool)

(assert (=> b!6414372 (= e!3892220 e!3892222)))

(declare-fun c!1171459 () Bool)

(assert (=> b!6414372 (= c!1171459 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375195))))))))

(declare-fun d!2011435 () Bool)

(declare-fun c!1171458 () Bool)

(assert (=> d!2011435 (= c!1171458 e!3892221)))

(declare-fun res!2636192 () Bool)

(assert (=> d!2011435 (=> (not res!2636192) (not e!3892221))))

(assert (=> d!2011435 (= res!2636192 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375195))))))))

(assert (=> d!2011435 (= (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 lt!2375195))) (h!71569 s!2326)) e!3892220)))

(assert (= (and d!2011435 res!2636192) b!6414374))

(assert (= (and d!2011435 c!1171458) b!6414370))

(assert (= (and d!2011435 (not c!1171458)) b!6414372))

(assert (= (and b!6414372 c!1171459) b!6414373))

(assert (= (and b!6414372 (not c!1171459)) b!6414371))

(assert (= (or b!6414370 b!6414373) bm!551274))

(declare-fun m!7210000 () Bool)

(assert (=> bm!551274 m!7210000))

(declare-fun m!7210002 () Bool)

(assert (=> b!6414370 m!7210002))

(declare-fun m!7210004 () Bool)

(assert (=> b!6414374 m!7210004))

(assert (=> b!6413854 d!2011435))

(declare-fun d!2011437 () Bool)

(assert (=> d!2011437 (= (isEmptyExpr!1716 lt!2375345) ((_ is EmptyExpr!16315) lt!2375345))))

(assert (=> b!6413595 d!2011437))

(declare-fun d!2011439 () Bool)

(assert (=> d!2011439 (= (Exists!3385 lambda!354077) (choose!47631 lambda!354077))))

(declare-fun bs!1612626 () Bool)

(assert (= bs!1612626 d!2011439))

(declare-fun m!7210006 () Bool)

(assert (=> bs!1612626 m!7210006))

(assert (=> d!2010991 d!2011439))

(declare-fun d!2011441 () Bool)

(assert (=> d!2011441 (= (Exists!3385 lambda!354078) (choose!47631 lambda!354078))))

(declare-fun bs!1612627 () Bool)

(assert (= bs!1612627 d!2011441))

(declare-fun m!7210008 () Bool)

(assert (=> bs!1612627 m!7210008))

(assert (=> d!2010991 d!2011441))

(declare-fun bs!1612628 () Bool)

(declare-fun d!2011443 () Bool)

(assert (= bs!1612628 (and d!2011443 b!6413152)))

(declare-fun lambda!354159 () Int)

(assert (=> bs!1612628 (not (= lambda!354159 lambda!354066))))

(declare-fun bs!1612629 () Bool)

(assert (= bs!1612629 (and d!2011443 b!6414345)))

(assert (=> bs!1612629 (not (= lambda!354159 lambda!354150))))

(declare-fun bs!1612630 () Bool)

(assert (= bs!1612630 (and d!2011443 b!6412781)))

(assert (=> bs!1612630 (not (= lambda!354159 lambda!354022))))

(declare-fun bs!1612631 () Bool)

(assert (= bs!1612631 (and d!2011443 d!2010919)))

(assert (=> bs!1612631 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354159 lambda!354051))))

(declare-fun bs!1612632 () Bool)

(assert (= bs!1612632 (and d!2011443 b!6414158)))

(assert (=> bs!1612632 (not (= lambda!354159 lambda!354133))))

(assert (=> bs!1612631 (not (= lambda!354159 lambda!354052))))

(assert (=> bs!1612630 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354159 lambda!354021))))

(declare-fun bs!1612633 () Bool)

(assert (= bs!1612633 (and d!2011443 b!6412754)))

(assert (=> bs!1612633 (not (= lambda!354159 lambda!354025))))

(declare-fun bs!1612634 () Bool)

(assert (= bs!1612634 (and d!2011443 b!6414160)))

(assert (=> bs!1612634 (not (= lambda!354159 lambda!354134))))

(declare-fun bs!1612635 () Bool)

(assert (= bs!1612635 (and d!2011443 b!6413231)))

(assert (=> bs!1612635 (not (= lambda!354159 lambda!354073))))

(declare-fun bs!1612636 () Bool)

(assert (= bs!1612636 (and d!2011443 d!2010991)))

(assert (=> bs!1612636 (= lambda!354159 lambda!354077)))

(declare-fun bs!1612637 () Bool)

(assert (= bs!1612637 (and d!2011443 b!6413973)))

(assert (=> bs!1612637 (not (= lambda!354159 lambda!354127))))

(declare-fun bs!1612638 () Bool)

(assert (= bs!1612638 (and d!2011443 d!2011349)))

(assert (=> bs!1612638 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354159 lambda!354140))))

(declare-fun bs!1612639 () Bool)

(assert (= bs!1612639 (and d!2011443 b!6413975)))

(assert (=> bs!1612639 (not (= lambda!354159 lambda!354128))))

(declare-fun bs!1612640 () Bool)

(assert (= bs!1612640 (and d!2011443 b!6413229)))

(assert (=> bs!1612640 (not (= lambda!354159 lambda!354070))))

(assert (=> bs!1612636 (not (= lambda!354159 lambda!354078))))

(declare-fun bs!1612641 () Bool)

(assert (= bs!1612641 (and d!2011443 b!6413154)))

(assert (=> bs!1612641 (not (= lambda!354159 lambda!354067))))

(assert (=> bs!1612633 (= lambda!354159 lambda!354024)))

(declare-fun bs!1612642 () Bool)

(assert (= bs!1612642 (and d!2011443 b!6414347)))

(assert (=> bs!1612642 (not (= lambda!354159 lambda!354151))))

(declare-fun bs!1612643 () Bool)

(assert (= bs!1612643 (and d!2011443 d!2011371)))

(assert (=> bs!1612643 (= lambda!354159 lambda!354146)))

(declare-fun bs!1612644 () Bool)

(assert (= bs!1612644 (and d!2011443 d!2010911)))

(assert (=> bs!1612644 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354159 lambda!354046))))

(declare-fun bs!1612645 () Bool)

(assert (= bs!1612645 (and d!2011443 d!2010973)))

(assert (=> bs!1612645 (= lambda!354159 lambda!354074)))

(assert (=> d!2011443 true))

(assert (=> d!2011443 true))

(assert (=> d!2011443 true))

(declare-fun lambda!354160 () Int)

(assert (=> bs!1612628 (not (= lambda!354160 lambda!354066))))

(declare-fun bs!1612646 () Bool)

(assert (= bs!1612646 d!2011443))

(assert (=> bs!1612646 (not (= lambda!354160 lambda!354159))))

(assert (=> bs!1612629 (not (= lambda!354160 lambda!354150))))

(assert (=> bs!1612630 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354160 lambda!354022))))

(assert (=> bs!1612631 (not (= lambda!354160 lambda!354051))))

(assert (=> bs!1612632 (not (= lambda!354160 lambda!354133))))

(assert (=> bs!1612631 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354160 lambda!354052))))

(assert (=> bs!1612630 (not (= lambda!354160 lambda!354021))))

(assert (=> bs!1612633 (= lambda!354160 lambda!354025)))

(assert (=> bs!1612634 (= (and (= lt!2375222 (regOne!33142 (regOne!33143 lt!2375201))) (= (regTwo!33142 r!7292) (regTwo!33142 (regOne!33143 lt!2375201)))) (= lambda!354160 lambda!354134))))

(assert (=> bs!1612635 (= (and (= lt!2375222 (regOne!33142 lt!2375201)) (= (regTwo!33142 r!7292) (regTwo!33142 lt!2375201))) (= lambda!354160 lambda!354073))))

(assert (=> bs!1612636 (not (= lambda!354160 lambda!354077))))

(assert (=> bs!1612637 (not (= lambda!354160 lambda!354127))))

(assert (=> bs!1612638 (not (= lambda!354160 lambda!354140))))

(assert (=> bs!1612639 (= (and (= lt!2375222 (regOne!33142 (regTwo!33143 r!7292))) (= (regTwo!33142 r!7292) (regTwo!33142 (regTwo!33143 r!7292)))) (= lambda!354160 lambda!354128))))

(assert (=> bs!1612640 (not (= lambda!354160 lambda!354070))))

(assert (=> bs!1612636 (= lambda!354160 lambda!354078)))

(assert (=> bs!1612641 (= (= lt!2375222 (regOne!33142 r!7292)) (= lambda!354160 lambda!354067))))

(assert (=> bs!1612633 (not (= lambda!354160 lambda!354024))))

(assert (=> bs!1612642 (= (and (= lt!2375222 (regOne!33142 (regTwo!33143 lt!2375201))) (= (regTwo!33142 r!7292) (regTwo!33142 (regTwo!33143 lt!2375201)))) (= lambda!354160 lambda!354151))))

(assert (=> bs!1612643 (not (= lambda!354160 lambda!354146))))

(assert (=> bs!1612644 (not (= lambda!354160 lambda!354046))))

(assert (=> bs!1612645 (not (= lambda!354160 lambda!354074))))

(assert (=> d!2011443 true))

(assert (=> d!2011443 true))

(assert (=> d!2011443 true))

(assert (=> d!2011443 (= (Exists!3385 lambda!354159) (Exists!3385 lambda!354160))))

(assert (=> d!2011443 true))

(declare-fun _$90!2276 () Unit!158591)

(assert (=> d!2011443 (= (choose!47634 lt!2375222 (regTwo!33142 r!7292) s!2326) _$90!2276)))

(declare-fun m!7210010 () Bool)

(assert (=> bs!1612646 m!7210010))

(declare-fun m!7210012 () Bool)

(assert (=> bs!1612646 m!7210012))

(assert (=> d!2010991 d!2011443))

(assert (=> d!2010991 d!2011377))

(declare-fun d!2011445 () Bool)

(assert (=> d!2011445 (= (nullable!6308 (h!71568 (exprs!6199 lt!2375221))) (nullableFct!2254 (h!71568 (exprs!6199 lt!2375221))))))

(declare-fun bs!1612647 () Bool)

(assert (= bs!1612647 d!2011445))

(declare-fun m!7210014 () Bool)

(assert (=> bs!1612647 m!7210014))

(assert (=> b!6413428 d!2011445))

(assert (=> b!6413377 d!2011205))

(assert (=> b!6413377 d!2011207))

(declare-fun d!2011447 () Bool)

(assert (=> d!2011447 (= (isDefined!12909 lt!2375258) (not (isEmpty!37271 lt!2375258)))))

(declare-fun bs!1612648 () Bool)

(assert (= bs!1612648 d!2011447))

(declare-fun m!7210016 () Bool)

(assert (=> bs!1612648 m!7210016))

(assert (=> b!6412867 d!2011447))

(assert (=> d!2010967 d!2011251))

(assert (=> d!2010967 d!2011267))

(declare-fun b!6414383 () Bool)

(declare-fun res!2636204 () Bool)

(declare-fun e!3892228 () Bool)

(assert (=> b!6414383 (=> res!2636204 e!3892228)))

(assert (=> b!6414383 (= res!2636204 (not (isEmpty!37269 (tail!12205 (tail!12205 s!2326)))))))

(declare-fun b!6414384 () Bool)

(declare-fun res!2636201 () Bool)

(declare-fun e!3892227 () Bool)

(assert (=> b!6414384 (=> res!2636201 e!3892227)))

(assert (=> b!6414384 (= res!2636201 (not ((_ is ElementMatch!16315) (derivativeStep!5019 r!7292 (head!13120 s!2326)))))))

(declare-fun e!3892231 () Bool)

(assert (=> b!6414384 (= e!3892231 e!3892227)))

(declare-fun b!6414385 () Bool)

(declare-fun res!2636208 () Bool)

(declare-fun e!3892230 () Bool)

(assert (=> b!6414385 (=> (not res!2636208) (not e!3892230))))

(assert (=> b!6414385 (= res!2636208 (isEmpty!37269 (tail!12205 (tail!12205 s!2326))))))

(declare-fun b!6414386 () Bool)

(declare-fun res!2636205 () Bool)

(assert (=> b!6414386 (=> res!2636205 e!3892227)))

(assert (=> b!6414386 (= res!2636205 e!3892230)))

(declare-fun res!2636202 () Bool)

(assert (=> b!6414386 (=> (not res!2636202) (not e!3892230))))

(declare-fun lt!2375426 () Bool)

(assert (=> b!6414386 (= res!2636202 lt!2375426)))

(declare-fun bm!551275 () Bool)

(declare-fun call!551280 () Bool)

(assert (=> bm!551275 (= call!551280 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun b!6414387 () Bool)

(declare-fun e!3892229 () Bool)

(assert (=> b!6414387 (= e!3892229 (nullable!6308 (derivativeStep!5019 r!7292 (head!13120 s!2326))))))

(declare-fun b!6414388 () Bool)

(declare-fun e!3892233 () Bool)

(assert (=> b!6414388 (= e!3892227 e!3892233)))

(declare-fun res!2636207 () Bool)

(assert (=> b!6414388 (=> (not res!2636207) (not e!3892233))))

(assert (=> b!6414388 (= res!2636207 (not lt!2375426))))

(declare-fun b!6414389 () Bool)

(assert (=> b!6414389 (= e!3892233 e!3892228)))

(declare-fun res!2636206 () Bool)

(assert (=> b!6414389 (=> res!2636206 e!3892228)))

(assert (=> b!6414389 (= res!2636206 call!551280)))

(declare-fun b!6414390 () Bool)

(assert (=> b!6414390 (= e!3892230 (= (head!13120 (tail!12205 s!2326)) (c!1170970 (derivativeStep!5019 r!7292 (head!13120 s!2326)))))))

(declare-fun b!6414391 () Bool)

(assert (=> b!6414391 (= e!3892228 (not (= (head!13120 (tail!12205 s!2326)) (c!1170970 (derivativeStep!5019 r!7292 (head!13120 s!2326))))))))

(declare-fun d!2011449 () Bool)

(declare-fun e!3892232 () Bool)

(assert (=> d!2011449 e!3892232))

(declare-fun c!1171462 () Bool)

(assert (=> d!2011449 (= c!1171462 ((_ is EmptyExpr!16315) (derivativeStep!5019 r!7292 (head!13120 s!2326))))))

(assert (=> d!2011449 (= lt!2375426 e!3892229)))

(declare-fun c!1171461 () Bool)

(assert (=> d!2011449 (= c!1171461 (isEmpty!37269 (tail!12205 s!2326)))))

(assert (=> d!2011449 (validRegex!8051 (derivativeStep!5019 r!7292 (head!13120 s!2326)))))

(assert (=> d!2011449 (= (matchR!8498 (derivativeStep!5019 r!7292 (head!13120 s!2326)) (tail!12205 s!2326)) lt!2375426)))

(declare-fun b!6414392 () Bool)

(declare-fun res!2636203 () Bool)

(assert (=> b!6414392 (=> (not res!2636203) (not e!3892230))))

(assert (=> b!6414392 (= res!2636203 (not call!551280))))

(declare-fun b!6414393 () Bool)

(assert (=> b!6414393 (= e!3892231 (not lt!2375426))))

(declare-fun b!6414394 () Bool)

(assert (=> b!6414394 (= e!3892229 (matchR!8498 (derivativeStep!5019 (derivativeStep!5019 r!7292 (head!13120 s!2326)) (head!13120 (tail!12205 s!2326))) (tail!12205 (tail!12205 s!2326))))))

(declare-fun b!6414395 () Bool)

(assert (=> b!6414395 (= e!3892232 (= lt!2375426 call!551280))))

(declare-fun b!6414396 () Bool)

(assert (=> b!6414396 (= e!3892232 e!3892231)))

(declare-fun c!1171460 () Bool)

(assert (=> b!6414396 (= c!1171460 ((_ is EmptyLang!16315) (derivativeStep!5019 r!7292 (head!13120 s!2326))))))

(assert (= (and d!2011449 c!1171461) b!6414387))

(assert (= (and d!2011449 (not c!1171461)) b!6414394))

(assert (= (and d!2011449 c!1171462) b!6414395))

(assert (= (and d!2011449 (not c!1171462)) b!6414396))

(assert (= (and b!6414396 c!1171460) b!6414393))

(assert (= (and b!6414396 (not c!1171460)) b!6414384))

(assert (= (and b!6414384 (not res!2636201)) b!6414386))

(assert (= (and b!6414386 res!2636202) b!6414392))

(assert (= (and b!6414392 res!2636203) b!6414385))

(assert (= (and b!6414385 res!2636208) b!6414390))

(assert (= (and b!6414386 (not res!2636205)) b!6414388))

(assert (= (and b!6414388 res!2636207) b!6414389))

(assert (= (and b!6414389 (not res!2636206)) b!6414383))

(assert (= (and b!6414383 (not res!2636204)) b!6414391))

(assert (= (or b!6414395 b!6414389 b!6414392) bm!551275))

(assert (=> d!2011449 m!7208626))

(assert (=> d!2011449 m!7208898))

(assert (=> d!2011449 m!7208894))

(declare-fun m!7210018 () Bool)

(assert (=> d!2011449 m!7210018))

(assert (=> b!6414391 m!7208626))

(assert (=> b!6414391 m!7209624))

(assert (=> b!6414387 m!7208894))

(declare-fun m!7210020 () Bool)

(assert (=> b!6414387 m!7210020))

(assert (=> b!6414390 m!7208626))

(assert (=> b!6414390 m!7209624))

(assert (=> b!6414394 m!7208626))

(assert (=> b!6414394 m!7209624))

(assert (=> b!6414394 m!7208894))

(assert (=> b!6414394 m!7209624))

(declare-fun m!7210022 () Bool)

(assert (=> b!6414394 m!7210022))

(assert (=> b!6414394 m!7208626))

(assert (=> b!6414394 m!7209630))

(assert (=> b!6414394 m!7210022))

(assert (=> b!6414394 m!7209630))

(declare-fun m!7210024 () Bool)

(assert (=> b!6414394 m!7210024))

(assert (=> b!6414385 m!7208626))

(assert (=> b!6414385 m!7209630))

(assert (=> b!6414385 m!7209630))

(assert (=> b!6414385 m!7209634))

(assert (=> bm!551275 m!7208626))

(assert (=> bm!551275 m!7208898))

(assert (=> b!6414383 m!7208626))

(assert (=> b!6414383 m!7209630))

(assert (=> b!6414383 m!7209630))

(assert (=> b!6414383 m!7209634))

(assert (=> b!6413182 d!2011449))

(declare-fun call!551283 () Regex!16315)

(declare-fun call!551282 () Regex!16315)

(declare-fun e!3892237 () Regex!16315)

(declare-fun b!6414397 () Bool)

(assert (=> b!6414397 (= e!3892237 (Union!16315 (Concat!25160 call!551282 (regTwo!33142 r!7292)) call!551283))))

(declare-fun b!6414398 () Bool)

(declare-fun e!3892235 () Regex!16315)

(declare-fun e!3892238 () Regex!16315)

(assert (=> b!6414398 (= e!3892235 e!3892238)))

(declare-fun c!1171465 () Bool)

(assert (=> b!6414398 (= c!1171465 ((_ is Star!16315) r!7292))))

(declare-fun b!6414399 () Bool)

(declare-fun e!3892236 () Regex!16315)

(assert (=> b!6414399 (= e!3892236 EmptyLang!16315)))

(declare-fun c!1171463 () Bool)

(declare-fun c!1171466 () Bool)

(declare-fun call!551284 () Regex!16315)

(declare-fun bm!551276 () Bool)

(assert (=> bm!551276 (= call!551284 (derivativeStep!5019 (ite c!1171463 (regTwo!33143 r!7292) (ite c!1171465 (reg!16644 r!7292) (ite c!1171466 (regTwo!33142 r!7292) (regOne!33142 r!7292)))) (head!13120 s!2326)))))

(declare-fun b!6414400 () Bool)

(assert (=> b!6414400 (= c!1171466 (nullable!6308 (regOne!33142 r!7292)))))

(assert (=> b!6414400 (= e!3892238 e!3892237)))

(declare-fun b!6414401 () Bool)

(assert (=> b!6414401 (= e!3892235 (Union!16315 call!551282 call!551284))))

(declare-fun b!6414402 () Bool)

(declare-fun e!3892234 () Regex!16315)

(assert (=> b!6414402 (= e!3892234 (ite (= (head!13120 s!2326) (c!1170970 r!7292)) EmptyExpr!16315 EmptyLang!16315))))

(declare-fun bm!551277 () Bool)

(declare-fun call!551281 () Regex!16315)

(assert (=> bm!551277 (= call!551281 call!551284)))

(declare-fun d!2011451 () Bool)

(declare-fun lt!2375427 () Regex!16315)

(assert (=> d!2011451 (validRegex!8051 lt!2375427)))

(assert (=> d!2011451 (= lt!2375427 e!3892236)))

(declare-fun c!1171464 () Bool)

(assert (=> d!2011451 (= c!1171464 (or ((_ is EmptyExpr!16315) r!7292) ((_ is EmptyLang!16315) r!7292)))))

(assert (=> d!2011451 (validRegex!8051 r!7292)))

(assert (=> d!2011451 (= (derivativeStep!5019 r!7292 (head!13120 s!2326)) lt!2375427)))

(declare-fun b!6414403 () Bool)

(assert (=> b!6414403 (= e!3892238 (Concat!25160 call!551281 r!7292))))

(declare-fun bm!551278 () Bool)

(assert (=> bm!551278 (= call!551282 (derivativeStep!5019 (ite c!1171463 (regOne!33143 r!7292) (regOne!33142 r!7292)) (head!13120 s!2326)))))

(declare-fun b!6414404 () Bool)

(assert (=> b!6414404 (= c!1171463 ((_ is Union!16315) r!7292))))

(assert (=> b!6414404 (= e!3892234 e!3892235)))

(declare-fun b!6414405 () Bool)

(assert (=> b!6414405 (= e!3892236 e!3892234)))

(declare-fun c!1171467 () Bool)

(assert (=> b!6414405 (= c!1171467 ((_ is ElementMatch!16315) r!7292))))

(declare-fun b!6414406 () Bool)

(assert (=> b!6414406 (= e!3892237 (Union!16315 (Concat!25160 call!551283 (regTwo!33142 r!7292)) EmptyLang!16315))))

(declare-fun bm!551279 () Bool)

(assert (=> bm!551279 (= call!551283 call!551281)))

(assert (= (and d!2011451 c!1171464) b!6414399))

(assert (= (and d!2011451 (not c!1171464)) b!6414405))

(assert (= (and b!6414405 c!1171467) b!6414402))

(assert (= (and b!6414405 (not c!1171467)) b!6414404))

(assert (= (and b!6414404 c!1171463) b!6414401))

(assert (= (and b!6414404 (not c!1171463)) b!6414398))

(assert (= (and b!6414398 c!1171465) b!6414403))

(assert (= (and b!6414398 (not c!1171465)) b!6414400))

(assert (= (and b!6414400 c!1171466) b!6414397))

(assert (= (and b!6414400 (not c!1171466)) b!6414406))

(assert (= (or b!6414397 b!6414406) bm!551279))

(assert (= (or b!6414403 bm!551279) bm!551277))

(assert (= (or b!6414401 bm!551277) bm!551276))

(assert (= (or b!6414401 b!6414397) bm!551278))

(assert (=> bm!551276 m!7208622))

(declare-fun m!7210026 () Bool)

(assert (=> bm!551276 m!7210026))

(assert (=> b!6414400 m!7209936))

(declare-fun m!7210028 () Bool)

(assert (=> d!2011451 m!7210028))

(assert (=> d!2011451 m!7208456))

(assert (=> bm!551278 m!7208622))

(declare-fun m!7210030 () Bool)

(assert (=> bm!551278 m!7210030))

(assert (=> b!6413182 d!2011451))

(assert (=> b!6413182 d!2011199))

(assert (=> b!6413182 d!2011207))

(declare-fun d!2011453 () Bool)

(declare-fun res!2636209 () Bool)

(declare-fun e!3892239 () Bool)

(assert (=> d!2011453 (=> res!2636209 e!3892239)))

(assert (=> d!2011453 (= res!2636209 ((_ is Nil!65122) (t!378858 lt!2375193)))))

(assert (=> d!2011453 (= (forall!15503 (t!378858 lt!2375193) lambda!354036) e!3892239)))

(declare-fun b!6414407 () Bool)

(declare-fun e!3892240 () Bool)

(assert (=> b!6414407 (= e!3892239 e!3892240)))

(declare-fun res!2636210 () Bool)

(assert (=> b!6414407 (=> (not res!2636210) (not e!3892240))))

(assert (=> b!6414407 (= res!2636210 (dynLambda!25865 lambda!354036 (h!71570 (t!378858 lt!2375193))))))

(declare-fun b!6414408 () Bool)

(assert (=> b!6414408 (= e!3892240 (forall!15503 (t!378858 (t!378858 lt!2375193)) lambda!354036))))

(assert (= (and d!2011453 (not res!2636209)) b!6414407))

(assert (= (and b!6414407 res!2636210) b!6414408))

(declare-fun b_lambda!243851 () Bool)

(assert (=> (not b_lambda!243851) (not b!6414407)))

(declare-fun m!7210032 () Bool)

(assert (=> b!6414407 m!7210032))

(declare-fun m!7210034 () Bool)

(assert (=> b!6414408 m!7210034))

(assert (=> b!6412820 d!2011453))

(declare-fun bs!1612649 () Bool)

(declare-fun d!2011455 () Bool)

(assert (= bs!1612649 (and d!2011455 b!6412822)))

(declare-fun lambda!354163 () Int)

(assert (=> bs!1612649 (not (= lambda!354163 lambda!354037))))

(declare-fun bs!1612650 () Bool)

(assert (= bs!1612650 (and d!2011455 b!6412815)))

(assert (=> bs!1612650 (not (= lambda!354163 lambda!354033))))

(declare-fun bs!1612651 () Bool)

(assert (= bs!1612651 (and d!2011455 d!2011355)))

(assert (=> bs!1612651 (not (= lambda!354163 lambda!354143))))

(declare-fun bs!1612652 () Bool)

(assert (= bs!1612652 (and d!2011455 b!6412817)))

(assert (=> bs!1612652 (not (= lambda!354163 lambda!354034))))

(declare-fun bs!1612653 () Bool)

(assert (= bs!1612653 (and d!2011455 d!2011427)))

(assert (=> bs!1612653 (not (= lambda!354163 lambda!354154))))

(declare-fun bs!1612654 () Bool)

(assert (= bs!1612654 (and d!2011455 d!2011409)))

(assert (=> bs!1612654 (not (= lambda!354163 lambda!354149))))

(declare-fun bs!1612655 () Bool)

(assert (= bs!1612655 (and d!2011455 d!2011385)))

(assert (=> bs!1612655 (not (= lambda!354163 lambda!354147))))

(declare-fun bs!1612656 () Bool)

(assert (= bs!1612656 (and d!2011455 d!2011369)))

(assert (=> bs!1612656 (not (= lambda!354163 lambda!354145))))

(declare-fun bs!1612657 () Bool)

(assert (= bs!1612657 (and d!2011455 b!6412820)))

(assert (=> bs!1612657 (not (= lambda!354163 lambda!354036))))

(assert (=> d!2011455 true))

(assert (=> d!2011455 true))

(declare-fun order!27557 () Int)

(declare-fun order!27559 () Int)

(declare-fun dynLambda!25869 (Int Int) Int)

(declare-fun dynLambda!25870 (Int Int) Int)

(assert (=> d!2011455 (< (dynLambda!25869 order!27557 lambda!354035) (dynLambda!25870 order!27559 lambda!354163))))

(assert (=> d!2011455 (forall!15503 (t!378858 lt!2375193) lambda!354163)))

(declare-fun lt!2375430 () Unit!158591)

(declare-fun choose!47649 (List!65246 Int Int Int) Unit!158591)

(assert (=> d!2011455 (= lt!2375430 (choose!47649 (t!378858 lt!2375193) lt!2375241 (zipperDepth!384 (t!378858 lt!2375193)) lambda!354035))))

(assert (=> d!2011455 (>= lt!2375241 (zipperDepth!384 (t!378858 lt!2375193)))))

(assert (=> d!2011455 (= (lemmaForallContextDepthBiggerThanTransitive!256 (t!378858 lt!2375193) lt!2375241 (zipperDepth!384 (t!378858 lt!2375193)) lambda!354035) lt!2375430)))

(declare-fun bs!1612658 () Bool)

(assert (= bs!1612658 d!2011455))

(declare-fun m!7210036 () Bool)

(assert (=> bs!1612658 m!7210036))

(assert (=> bs!1612658 m!7208652))

(declare-fun m!7210038 () Bool)

(assert (=> bs!1612658 m!7210038))

(assert (=> b!6412820 d!2011455))

(declare-fun d!2011457 () Bool)

(assert (=> d!2011457 (= (maxBigInt!0 (contextDepth!272 (h!71570 lt!2375193)) (zipperDepth!384 (t!378858 lt!2375193))) (ite (>= (contextDepth!272 (h!71570 lt!2375193)) (zipperDepth!384 (t!378858 lt!2375193))) (contextDepth!272 (h!71570 lt!2375193)) (zipperDepth!384 (t!378858 lt!2375193))))))

(assert (=> b!6412820 d!2011457))

(declare-fun bs!1612659 () Bool)

(declare-fun b!6414412 () Bool)

(assert (= bs!1612659 (and b!6414412 b!6412815)))

(declare-fun lambda!354164 () Int)

(assert (=> bs!1612659 (= lambda!354164 lambda!354032)))

(declare-fun bs!1612660 () Bool)

(assert (= bs!1612660 (and b!6414412 b!6412820)))

(assert (=> bs!1612660 (= lambda!354164 lambda!354035)))

(declare-fun bs!1612661 () Bool)

(assert (= bs!1612661 (and b!6414412 b!6412822)))

(declare-fun lambda!354165 () Int)

(declare-fun lt!2375432 () Int)

(assert (=> bs!1612661 (= (= lt!2375432 lt!2375240) (= lambda!354165 lambda!354037))))

(declare-fun bs!1612662 () Bool)

(assert (= bs!1612662 (and b!6414412 d!2011455)))

(assert (=> bs!1612662 (not (= lambda!354165 lambda!354163))))

(assert (=> bs!1612659 (= (= lt!2375432 lt!2375237) (= lambda!354165 lambda!354033))))

(declare-fun bs!1612663 () Bool)

(assert (= bs!1612663 (and b!6414412 d!2011355)))

(assert (=> bs!1612663 (not (= lambda!354165 lambda!354143))))

(declare-fun bs!1612664 () Bool)

(assert (= bs!1612664 (and b!6414412 b!6412817)))

(assert (=> bs!1612664 (= (= lt!2375432 lt!2375236) (= lambda!354165 lambda!354034))))

(declare-fun bs!1612665 () Bool)

(assert (= bs!1612665 (and b!6414412 d!2011427)))

(assert (=> bs!1612665 (not (= lambda!354165 lambda!354154))))

(declare-fun bs!1612666 () Bool)

(assert (= bs!1612666 (and b!6414412 d!2011409)))

(assert (=> bs!1612666 (not (= lambda!354165 lambda!354149))))

(declare-fun bs!1612667 () Bool)

(assert (= bs!1612667 (and b!6414412 d!2011385)))

(assert (=> bs!1612667 (not (= lambda!354165 lambda!354147))))

(declare-fun bs!1612668 () Bool)

(assert (= bs!1612668 (and b!6414412 d!2011369)))

(assert (=> bs!1612668 (not (= lambda!354165 lambda!354145))))

(assert (=> bs!1612660 (= (= lt!2375432 lt!2375241) (= lambda!354165 lambda!354036))))

(assert (=> b!6414412 true))

(declare-fun bs!1612669 () Bool)

(declare-fun b!6414414 () Bool)

(assert (= bs!1612669 (and b!6414414 b!6412822)))

(declare-fun lt!2375431 () Int)

(declare-fun lambda!354166 () Int)

(assert (=> bs!1612669 (= (= lt!2375431 lt!2375240) (= lambda!354166 lambda!354037))))

(declare-fun bs!1612670 () Bool)

(assert (= bs!1612670 (and b!6414414 b!6414412)))

(assert (=> bs!1612670 (= (= lt!2375431 lt!2375432) (= lambda!354166 lambda!354165))))

(declare-fun bs!1612671 () Bool)

(assert (= bs!1612671 (and b!6414414 d!2011455)))

(assert (=> bs!1612671 (not (= lambda!354166 lambda!354163))))

(declare-fun bs!1612672 () Bool)

(assert (= bs!1612672 (and b!6414414 b!6412815)))

(assert (=> bs!1612672 (= (= lt!2375431 lt!2375237) (= lambda!354166 lambda!354033))))

(declare-fun bs!1612673 () Bool)

(assert (= bs!1612673 (and b!6414414 d!2011355)))

(assert (=> bs!1612673 (not (= lambda!354166 lambda!354143))))

(declare-fun bs!1612674 () Bool)

(assert (= bs!1612674 (and b!6414414 b!6412817)))

(assert (=> bs!1612674 (= (= lt!2375431 lt!2375236) (= lambda!354166 lambda!354034))))

(declare-fun bs!1612675 () Bool)

(assert (= bs!1612675 (and b!6414414 d!2011427)))

(assert (=> bs!1612675 (not (= lambda!354166 lambda!354154))))

(declare-fun bs!1612676 () Bool)

(assert (= bs!1612676 (and b!6414414 d!2011409)))

(assert (=> bs!1612676 (not (= lambda!354166 lambda!354149))))

(declare-fun bs!1612677 () Bool)

(assert (= bs!1612677 (and b!6414414 d!2011385)))

(assert (=> bs!1612677 (not (= lambda!354166 lambda!354147))))

(declare-fun bs!1612678 () Bool)

(assert (= bs!1612678 (and b!6414414 d!2011369)))

(assert (=> bs!1612678 (not (= lambda!354166 lambda!354145))))

(declare-fun bs!1612679 () Bool)

(assert (= bs!1612679 (and b!6414414 b!6412820)))

(assert (=> bs!1612679 (= (= lt!2375431 lt!2375241) (= lambda!354166 lambda!354036))))

(assert (=> b!6414414 true))

(declare-fun d!2011459 () Bool)

(declare-fun e!3892242 () Bool)

(assert (=> d!2011459 e!3892242))

(declare-fun res!2636211 () Bool)

(assert (=> d!2011459 (=> (not res!2636211) (not e!3892242))))

(assert (=> d!2011459 (= res!2636211 (>= lt!2375431 0))))

(declare-fun e!3892241 () Int)

(assert (=> d!2011459 (= lt!2375431 e!3892241)))

(declare-fun c!1171470 () Bool)

(assert (=> d!2011459 (= c!1171470 ((_ is Cons!65122) (t!378858 lt!2375193)))))

(assert (=> d!2011459 (= (zipperDepth!384 (t!378858 lt!2375193)) lt!2375431)))

(assert (=> b!6414412 (= e!3892241 lt!2375432)))

(assert (=> b!6414412 (= lt!2375432 (maxBigInt!0 (contextDepth!272 (h!71570 (t!378858 lt!2375193))) (zipperDepth!384 (t!378858 (t!378858 lt!2375193)))))))

(declare-fun lt!2375434 () Unit!158591)

(assert (=> b!6414412 (= lt!2375434 (lemmaForallContextDepthBiggerThanTransitive!256 (t!378858 (t!378858 lt!2375193)) lt!2375432 (zipperDepth!384 (t!378858 (t!378858 lt!2375193))) lambda!354164))))

(assert (=> b!6414412 (forall!15503 (t!378858 (t!378858 lt!2375193)) lambda!354165)))

(declare-fun lt!2375433 () Unit!158591)

(assert (=> b!6414412 (= lt!2375433 lt!2375434)))

(declare-fun b!6414413 () Bool)

(assert (=> b!6414413 (= e!3892241 0)))

(assert (=> b!6414414 (= e!3892242 (forall!15503 (t!378858 lt!2375193) lambda!354166))))

(assert (= (and d!2011459 c!1171470) b!6414412))

(assert (= (and d!2011459 (not c!1171470)) b!6414413))

(assert (= (and d!2011459 res!2636211) b!6414414))

(declare-fun m!7210040 () Bool)

(assert (=> b!6414412 m!7210040))

(declare-fun m!7210042 () Bool)

(assert (=> b!6414412 m!7210042))

(declare-fun m!7210044 () Bool)

(assert (=> b!6414412 m!7210044))

(declare-fun m!7210046 () Bool)

(assert (=> b!6414412 m!7210046))

(assert (=> b!6414412 m!7210044))

(assert (=> b!6414412 m!7210042))

(assert (=> b!6414412 m!7210044))

(declare-fun m!7210048 () Bool)

(assert (=> b!6414412 m!7210048))

(declare-fun m!7210050 () Bool)

(assert (=> b!6414414 m!7210050))

(assert (=> b!6412820 d!2011459))

(declare-fun bs!1612680 () Bool)

(declare-fun b!6414421 () Bool)

(assert (= bs!1612680 (and b!6414421 d!2011135)))

(declare-fun lambda!354171 () Int)

(assert (=> bs!1612680 (not (= lambda!354171 lambda!354123))))

(declare-fun bs!1612681 () Bool)

(assert (= bs!1612681 (and b!6414421 d!2011231)))

(assert (=> bs!1612681 (not (= lambda!354171 lambda!354126))))

(declare-fun bs!1612682 () Bool)

(assert (= bs!1612682 (and b!6414421 d!2011049)))

(assert (=> bs!1612682 (not (= lambda!354171 lambda!354098))))

(declare-fun bs!1612683 () Bool)

(assert (= bs!1612683 (and b!6414421 d!2011425)))

(assert (=> bs!1612683 (not (= lambda!354171 lambda!354153))))

(declare-fun bs!1612684 () Bool)

(assert (= bs!1612684 (and b!6414421 d!2011275)))

(assert (=> bs!1612684 (not (= lambda!354171 lambda!354131))))

(declare-fun bs!1612685 () Bool)

(assert (= bs!1612685 (and b!6414421 d!2010999)))

(assert (=> bs!1612685 (not (= lambda!354171 lambda!354084))))

(declare-fun bs!1612686 () Bool)

(assert (= bs!1612686 (and b!6414421 d!2011273)))

(assert (=> bs!1612686 (not (= lambda!354171 lambda!354130))))

(declare-fun bs!1612687 () Bool)

(assert (= bs!1612687 (and b!6414421 d!2011269)))

(assert (=> bs!1612687 (not (= lambda!354171 lambda!354129))))

(declare-fun bs!1612688 () Bool)

(assert (= bs!1612688 (and b!6414421 d!2011365)))

(assert (=> bs!1612688 (not (= lambda!354171 lambda!354144))))

(declare-fun bs!1612689 () Bool)

(assert (= bs!1612689 (and b!6414421 d!2011171)))

(assert (=> bs!1612689 (not (= lambda!354171 lambda!354125))))

(declare-fun bs!1612690 () Bool)

(assert (= bs!1612690 (and b!6414421 d!2011077)))

(assert (=> bs!1612690 (not (= lambda!354171 lambda!354116))))

(declare-fun bs!1612691 () Bool)

(assert (= bs!1612691 (and b!6414421 d!2011089)))

(assert (=> bs!1612691 (not (= lambda!354171 lambda!354119))))

(assert (=> b!6414421 true))

(declare-fun bs!1612692 () Bool)

(declare-fun b!6414423 () Bool)

(assert (= bs!1612692 (and b!6414423 d!2011135)))

(declare-fun lambda!354172 () Int)

(assert (=> bs!1612692 (not (= lambda!354172 lambda!354123))))

(declare-fun bs!1612693 () Bool)

(assert (= bs!1612693 (and b!6414423 d!2011231)))

(assert (=> bs!1612693 (not (= lambda!354172 lambda!354126))))

(declare-fun bs!1612694 () Bool)

(assert (= bs!1612694 (and b!6414423 d!2011049)))

(assert (=> bs!1612694 (not (= lambda!354172 lambda!354098))))

(declare-fun bs!1612695 () Bool)

(assert (= bs!1612695 (and b!6414423 d!2011425)))

(assert (=> bs!1612695 (not (= lambda!354172 lambda!354153))))

(declare-fun bs!1612696 () Bool)

(assert (= bs!1612696 (and b!6414423 d!2011275)))

(assert (=> bs!1612696 (not (= lambda!354172 lambda!354131))))

(declare-fun bs!1612697 () Bool)

(assert (= bs!1612697 (and b!6414423 d!2010999)))

(assert (=> bs!1612697 (not (= lambda!354172 lambda!354084))))

(declare-fun bs!1612698 () Bool)

(assert (= bs!1612698 (and b!6414423 b!6414421)))

(declare-fun lt!2375446 () Int)

(declare-fun lt!2375443 () Int)

(assert (=> bs!1612698 (= (= lt!2375446 lt!2375443) (= lambda!354172 lambda!354171))))

(declare-fun bs!1612699 () Bool)

(assert (= bs!1612699 (and b!6414423 d!2011273)))

(assert (=> bs!1612699 (not (= lambda!354172 lambda!354130))))

(declare-fun bs!1612700 () Bool)

(assert (= bs!1612700 (and b!6414423 d!2011269)))

(assert (=> bs!1612700 (not (= lambda!354172 lambda!354129))))

(declare-fun bs!1612701 () Bool)

(assert (= bs!1612701 (and b!6414423 d!2011365)))

(assert (=> bs!1612701 (not (= lambda!354172 lambda!354144))))

(declare-fun bs!1612702 () Bool)

(assert (= bs!1612702 (and b!6414423 d!2011171)))

(assert (=> bs!1612702 (not (= lambda!354172 lambda!354125))))

(declare-fun bs!1612703 () Bool)

(assert (= bs!1612703 (and b!6414423 d!2011077)))

(assert (=> bs!1612703 (not (= lambda!354172 lambda!354116))))

(declare-fun bs!1612704 () Bool)

(assert (= bs!1612704 (and b!6414423 d!2011089)))

(assert (=> bs!1612704 (not (= lambda!354172 lambda!354119))))

(assert (=> b!6414423 true))

(declare-fun d!2011461 () Bool)

(declare-fun e!3892248 () Bool)

(assert (=> d!2011461 e!3892248))

(declare-fun res!2636214 () Bool)

(assert (=> d!2011461 (=> (not res!2636214) (not e!3892248))))

(assert (=> d!2011461 (= res!2636214 (>= lt!2375446 0))))

(declare-fun e!3892247 () Int)

(assert (=> d!2011461 (= lt!2375446 e!3892247)))

(declare-fun c!1171474 () Bool)

(assert (=> d!2011461 (= c!1171474 ((_ is Cons!65120) (exprs!6199 (h!71570 lt!2375193))))))

(assert (=> d!2011461 (= (contextDepth!272 (h!71570 lt!2375193)) lt!2375446)))

(assert (=> b!6414421 (= e!3892247 lt!2375443)))

(assert (=> b!6414421 (= lt!2375443 (maxBigInt!0 (regexDepth!342 (h!71568 (exprs!6199 (h!71570 lt!2375193)))) (contextDepth!272 (Context!11399 (t!378856 (exprs!6199 (h!71570 lt!2375193)))))))))

(declare-fun lt!2375445 () Unit!158591)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!126 (List!65244 Int Int) Unit!158591)

(assert (=> b!6414421 (= lt!2375445 (lemmaForallRegexDepthBiggerThanTransitive!126 (t!378856 (exprs!6199 (h!71570 lt!2375193))) lt!2375443 (contextDepth!272 (Context!11399 (t!378856 (exprs!6199 (h!71570 lt!2375193)))))))))

(assert (=> b!6414421 (forall!15504 (t!378856 (exprs!6199 (h!71570 lt!2375193))) lambda!354171)))

(declare-fun lt!2375444 () Unit!158591)

(assert (=> b!6414421 (= lt!2375444 lt!2375445)))

(declare-fun b!6414422 () Bool)

(assert (=> b!6414422 (= e!3892247 0)))

(assert (=> b!6414423 (= e!3892248 (forall!15504 (exprs!6199 (h!71570 lt!2375193)) lambda!354172))))

(assert (= (and d!2011461 c!1171474) b!6414421))

(assert (= (and d!2011461 (not c!1171474)) b!6414422))

(assert (= (and d!2011461 res!2636214) b!6414423))

(declare-fun m!7210052 () Bool)

(assert (=> b!6414421 m!7210052))

(declare-fun m!7210054 () Bool)

(assert (=> b!6414421 m!7210054))

(assert (=> b!6414421 m!7210052))

(declare-fun m!7210056 () Bool)

(assert (=> b!6414421 m!7210056))

(declare-fun m!7210058 () Bool)

(assert (=> b!6414421 m!7210058))

(assert (=> b!6414421 m!7210054))

(assert (=> b!6414421 m!7210052))

(declare-fun m!7210060 () Bool)

(assert (=> b!6414421 m!7210060))

(declare-fun m!7210062 () Bool)

(assert (=> b!6414423 m!7210062))

(assert (=> b!6412820 d!2011461))

(assert (=> b!6413173 d!2011205))

(assert (=> b!6413173 d!2011207))

(assert (=> b!6413037 d!2011321))

(declare-fun b!6414426 () Bool)

(declare-fun res!2636218 () Bool)

(declare-fun e!3892250 () Bool)

(assert (=> b!6414426 (=> res!2636218 e!3892250)))

(assert (=> b!6414426 (= res!2636218 (not (isEmpty!37269 (tail!12205 (_1!36597 (get!22556 lt!2375311))))))))

(declare-fun b!6414427 () Bool)

(declare-fun res!2636215 () Bool)

(declare-fun e!3892249 () Bool)

(assert (=> b!6414427 (=> res!2636215 e!3892249)))

(assert (=> b!6414427 (= res!2636215 (not ((_ is ElementMatch!16315) lt!2375222)))))

(declare-fun e!3892253 () Bool)

(assert (=> b!6414427 (= e!3892253 e!3892249)))

(declare-fun b!6414428 () Bool)

(declare-fun res!2636222 () Bool)

(declare-fun e!3892252 () Bool)

(assert (=> b!6414428 (=> (not res!2636222) (not e!3892252))))

(assert (=> b!6414428 (= res!2636222 (isEmpty!37269 (tail!12205 (_1!36597 (get!22556 lt!2375311)))))))

(declare-fun b!6414429 () Bool)

(declare-fun res!2636219 () Bool)

(assert (=> b!6414429 (=> res!2636219 e!3892249)))

(assert (=> b!6414429 (= res!2636219 e!3892252)))

(declare-fun res!2636216 () Bool)

(assert (=> b!6414429 (=> (not res!2636216) (not e!3892252))))

(declare-fun lt!2375447 () Bool)

(assert (=> b!6414429 (= res!2636216 lt!2375447)))

(declare-fun bm!551280 () Bool)

(declare-fun call!551285 () Bool)

(assert (=> bm!551280 (= call!551285 (isEmpty!37269 (_1!36597 (get!22556 lt!2375311))))))

(declare-fun b!6414430 () Bool)

(declare-fun e!3892251 () Bool)

(assert (=> b!6414430 (= e!3892251 (nullable!6308 lt!2375222))))

(declare-fun b!6414431 () Bool)

(declare-fun e!3892255 () Bool)

(assert (=> b!6414431 (= e!3892249 e!3892255)))

(declare-fun res!2636221 () Bool)

(assert (=> b!6414431 (=> (not res!2636221) (not e!3892255))))

(assert (=> b!6414431 (= res!2636221 (not lt!2375447))))

(declare-fun b!6414432 () Bool)

(assert (=> b!6414432 (= e!3892255 e!3892250)))

(declare-fun res!2636220 () Bool)

(assert (=> b!6414432 (=> res!2636220 e!3892250)))

(assert (=> b!6414432 (= res!2636220 call!551285)))

(declare-fun b!6414433 () Bool)

(assert (=> b!6414433 (= e!3892252 (= (head!13120 (_1!36597 (get!22556 lt!2375311))) (c!1170970 lt!2375222)))))

(declare-fun b!6414434 () Bool)

(assert (=> b!6414434 (= e!3892250 (not (= (head!13120 (_1!36597 (get!22556 lt!2375311))) (c!1170970 lt!2375222))))))

(declare-fun d!2011463 () Bool)

(declare-fun e!3892254 () Bool)

(assert (=> d!2011463 e!3892254))

(declare-fun c!1171477 () Bool)

(assert (=> d!2011463 (= c!1171477 ((_ is EmptyExpr!16315) lt!2375222))))

(assert (=> d!2011463 (= lt!2375447 e!3892251)))

(declare-fun c!1171476 () Bool)

(assert (=> d!2011463 (= c!1171476 (isEmpty!37269 (_1!36597 (get!22556 lt!2375311))))))

(assert (=> d!2011463 (validRegex!8051 lt!2375222)))

(assert (=> d!2011463 (= (matchR!8498 lt!2375222 (_1!36597 (get!22556 lt!2375311))) lt!2375447)))

(declare-fun b!6414435 () Bool)

(declare-fun res!2636217 () Bool)

(assert (=> b!6414435 (=> (not res!2636217) (not e!3892252))))

(assert (=> b!6414435 (= res!2636217 (not call!551285))))

(declare-fun b!6414436 () Bool)

(assert (=> b!6414436 (= e!3892253 (not lt!2375447))))

(declare-fun b!6414437 () Bool)

(assert (=> b!6414437 (= e!3892251 (matchR!8498 (derivativeStep!5019 lt!2375222 (head!13120 (_1!36597 (get!22556 lt!2375311)))) (tail!12205 (_1!36597 (get!22556 lt!2375311)))))))

(declare-fun b!6414438 () Bool)

(assert (=> b!6414438 (= e!3892254 (= lt!2375447 call!551285))))

(declare-fun b!6414439 () Bool)

(assert (=> b!6414439 (= e!3892254 e!3892253)))

(declare-fun c!1171475 () Bool)

(assert (=> b!6414439 (= c!1171475 ((_ is EmptyLang!16315) lt!2375222))))

(assert (= (and d!2011463 c!1171476) b!6414430))

(assert (= (and d!2011463 (not c!1171476)) b!6414437))

(assert (= (and d!2011463 c!1171477) b!6414438))

(assert (= (and d!2011463 (not c!1171477)) b!6414439))

(assert (= (and b!6414439 c!1171475) b!6414436))

(assert (= (and b!6414439 (not c!1171475)) b!6414427))

(assert (= (and b!6414427 (not res!2636215)) b!6414429))

(assert (= (and b!6414429 res!2636216) b!6414435))

(assert (= (and b!6414435 res!2636217) b!6414428))

(assert (= (and b!6414428 res!2636222) b!6414433))

(assert (= (and b!6414429 (not res!2636219)) b!6414431))

(assert (= (and b!6414431 res!2636221) b!6414432))

(assert (= (and b!6414432 (not res!2636220)) b!6414426))

(assert (= (and b!6414426 (not res!2636218)) b!6414434))

(assert (= (or b!6414438 b!6414432 b!6414435) bm!551280))

(declare-fun m!7210064 () Bool)

(assert (=> d!2011463 m!7210064))

(assert (=> d!2011463 m!7208830))

(declare-fun m!7210066 () Bool)

(assert (=> b!6414434 m!7210066))

(assert (=> b!6414430 m!7208834))

(assert (=> b!6414433 m!7210066))

(assert (=> b!6414437 m!7210066))

(assert (=> b!6414437 m!7210066))

(declare-fun m!7210068 () Bool)

(assert (=> b!6414437 m!7210068))

(declare-fun m!7210070 () Bool)

(assert (=> b!6414437 m!7210070))

(assert (=> b!6414437 m!7210068))

(assert (=> b!6414437 m!7210070))

(declare-fun m!7210072 () Bool)

(assert (=> b!6414437 m!7210072))

(assert (=> b!6414428 m!7210070))

(assert (=> b!6414428 m!7210070))

(declare-fun m!7210074 () Bool)

(assert (=> b!6414428 m!7210074))

(assert (=> bm!551280 m!7210064))

(assert (=> b!6414426 m!7210070))

(assert (=> b!6414426 m!7210070))

(assert (=> b!6414426 m!7210074))

(assert (=> b!6413279 d!2011463))

(assert (=> b!6413279 d!2011299))

(assert (=> b!6413375 d!2011205))

(assert (=> b!6413375 d!2011207))

(declare-fun d!2011465 () Bool)

(assert (=> d!2011465 (= (nullable!6308 (regTwo!33142 r!7292)) (nullableFct!2254 (regTwo!33142 r!7292)))))

(declare-fun bs!1612705 () Bool)

(assert (= bs!1612705 d!2011465))

(declare-fun m!7210076 () Bool)

(assert (=> bs!1612705 m!7210076))

(assert (=> b!6413824 d!2011465))

(declare-fun bs!1612706 () Bool)

(declare-fun d!2011467 () Bool)

(assert (= bs!1612706 (and d!2011467 b!6414414)))

(declare-fun lambda!354173 () Int)

(assert (=> bs!1612706 (not (= lambda!354173 lambda!354166))))

(declare-fun bs!1612707 () Bool)

(assert (= bs!1612707 (and d!2011467 b!6412822)))

(assert (=> bs!1612707 (not (= lambda!354173 lambda!354037))))

(declare-fun bs!1612708 () Bool)

(assert (= bs!1612708 (and d!2011467 b!6414412)))

(assert (=> bs!1612708 (not (= lambda!354173 lambda!354165))))

(declare-fun bs!1612709 () Bool)

(assert (= bs!1612709 (and d!2011467 d!2011455)))

(assert (=> bs!1612709 (not (= lambda!354173 lambda!354163))))

(declare-fun bs!1612710 () Bool)

(assert (= bs!1612710 (and d!2011467 b!6412815)))

(assert (=> bs!1612710 (not (= lambda!354173 lambda!354033))))

(declare-fun bs!1612711 () Bool)

(assert (= bs!1612711 (and d!2011467 d!2011355)))

(assert (=> bs!1612711 (= lambda!354173 lambda!354143)))

(declare-fun bs!1612712 () Bool)

(assert (= bs!1612712 (and d!2011467 b!6412817)))

(assert (=> bs!1612712 (not (= lambda!354173 lambda!354034))))

(declare-fun bs!1612713 () Bool)

(assert (= bs!1612713 (and d!2011467 d!2011427)))

(assert (=> bs!1612713 (= lambda!354173 lambda!354154)))

(declare-fun bs!1612714 () Bool)

(assert (= bs!1612714 (and d!2011467 d!2011409)))

(assert (=> bs!1612714 (= lambda!354173 lambda!354149)))

(declare-fun bs!1612715 () Bool)

(assert (= bs!1612715 (and d!2011467 d!2011385)))

(assert (=> bs!1612715 (= lambda!354173 lambda!354147)))

(declare-fun bs!1612716 () Bool)

(assert (= bs!1612716 (and d!2011467 d!2011369)))

(assert (=> bs!1612716 (= lambda!354173 lambda!354145)))

(declare-fun bs!1612717 () Bool)

(assert (= bs!1612717 (and d!2011467 b!6412820)))

(assert (=> bs!1612717 (not (= lambda!354173 lambda!354036))))

(assert (=> d!2011467 (= (nullableZipper!2080 lt!2375209) (exists!2597 lt!2375209 lambda!354173))))

(declare-fun bs!1612718 () Bool)

(assert (= bs!1612718 d!2011467))

(declare-fun m!7210078 () Bool)

(assert (=> bs!1612718 m!7210078))

(assert (=> b!6413628 d!2011467))

(declare-fun c!1171478 () Bool)

(declare-fun c!1171481 () Bool)

(declare-fun bm!551281 () Bool)

(declare-fun call!551291 () (InoxSet Context!11398))

(declare-fun call!551287 () List!65244)

(declare-fun c!1171479 () Bool)

(assert (=> bm!551281 (= call!551291 (derivationStepZipperDown!1563 (ite c!1171481 (regOne!33143 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))) (ite c!1171478 (regTwo!33142 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))) (ite c!1171479 (regOne!33142 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))) (reg!16644 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))))))) (ite (or c!1171481 c!1171478) (ite c!1171296 lt!2375218 (Context!11399 call!551153)) (Context!11399 call!551287)) (h!71569 s!2326)))))

(declare-fun b!6414441 () Bool)

(declare-fun c!1171480 () Bool)

(assert (=> b!6414441 (= c!1171480 ((_ is Star!16315) (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun e!3892259 () (InoxSet Context!11398))

(declare-fun e!3892257 () (InoxSet Context!11398))

(assert (=> b!6414441 (= e!3892259 e!3892257)))

(declare-fun b!6414442 () Bool)

(declare-fun call!551289 () (InoxSet Context!11398))

(assert (=> b!6414442 (= e!3892257 call!551289)))

(declare-fun b!6414443 () Bool)

(declare-fun e!3892256 () (InoxSet Context!11398))

(assert (=> b!6414443 (= e!3892256 e!3892259)))

(assert (=> b!6414443 (= c!1171479 ((_ is Concat!25160) (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun b!6414444 () Bool)

(declare-fun e!3892260 () (InoxSet Context!11398))

(declare-fun call!551290 () (InoxSet Context!11398))

(assert (=> b!6414444 (= e!3892260 ((_ map or) call!551291 call!551290))))

(declare-fun b!6414445 () Bool)

(declare-fun e!3892258 () Bool)

(assert (=> b!6414445 (= e!3892258 (nullable!6308 (regOne!33142 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))))))))

(declare-fun bm!551282 () Bool)

(declare-fun call!551286 () List!65244)

(assert (=> bm!551282 (= call!551290 (derivationStepZipperDown!1563 (ite c!1171481 (regTwo!33143 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))) (regOne!33142 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))))) (ite c!1171481 (ite c!1171296 lt!2375218 (Context!11399 call!551153)) (Context!11399 call!551286)) (h!71569 s!2326)))))

(declare-fun b!6414440 () Bool)

(assert (=> b!6414440 (= e!3892259 call!551289)))

(declare-fun d!2011469 () Bool)

(declare-fun c!1171482 () Bool)

(assert (=> d!2011469 (= c!1171482 (and ((_ is ElementMatch!16315) (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))) (= (c!1170970 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))) (h!71569 s!2326))))))

(declare-fun e!3892261 () (InoxSet Context!11398))

(assert (=> d!2011469 (= (derivationStepZipperDown!1563 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))) (ite c!1171296 lt!2375218 (Context!11399 call!551153)) (h!71569 s!2326)) e!3892261)))

(declare-fun bm!551283 () Bool)

(declare-fun call!551288 () (InoxSet Context!11398))

(assert (=> bm!551283 (= call!551289 call!551288)))

(declare-fun b!6414446 () Bool)

(assert (=> b!6414446 (= e!3892257 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551284 () Bool)

(assert (=> bm!551284 (= call!551286 ($colon$colon!2176 (exprs!6199 (ite c!1171296 lt!2375218 (Context!11399 call!551153))) (ite (or c!1171478 c!1171479) (regTwo!33142 (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))) (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))))))))

(declare-fun bm!551285 () Bool)

(assert (=> bm!551285 (= call!551288 call!551291)))

(declare-fun bm!551286 () Bool)

(assert (=> bm!551286 (= call!551287 call!551286)))

(declare-fun b!6414447 () Bool)

(assert (=> b!6414447 (= e!3892261 e!3892260)))

(assert (=> b!6414447 (= c!1171481 ((_ is Union!16315) (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun b!6414448 () Bool)

(assert (=> b!6414448 (= e!3892256 ((_ map or) call!551290 call!551288))))

(declare-fun b!6414449 () Bool)

(assert (=> b!6414449 (= e!3892261 (store ((as const (Array Context!11398 Bool)) false) (ite c!1171296 lt!2375218 (Context!11399 call!551153)) true))))

(declare-fun b!6414450 () Bool)

(assert (=> b!6414450 (= c!1171478 e!3892258)))

(declare-fun res!2636223 () Bool)

(assert (=> b!6414450 (=> (not res!2636223) (not e!3892258))))

(assert (=> b!6414450 (= res!2636223 ((_ is Concat!25160) (ite c!1171296 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))

(assert (=> b!6414450 (= e!3892260 e!3892256)))

(assert (= (and d!2011469 c!1171482) b!6414449))

(assert (= (and d!2011469 (not c!1171482)) b!6414447))

(assert (= (and b!6414447 c!1171481) b!6414444))

(assert (= (and b!6414447 (not c!1171481)) b!6414450))

(assert (= (and b!6414450 res!2636223) b!6414445))

(assert (= (and b!6414450 c!1171478) b!6414448))

(assert (= (and b!6414450 (not c!1171478)) b!6414443))

(assert (= (and b!6414443 c!1171479) b!6414440))

(assert (= (and b!6414443 (not c!1171479)) b!6414441))

(assert (= (and b!6414441 c!1171480) b!6414442))

(assert (= (and b!6414441 (not c!1171480)) b!6414446))

(assert (= (or b!6414440 b!6414442) bm!551286))

(assert (= (or b!6414440 b!6414442) bm!551283))

(assert (= (or b!6414448 bm!551286) bm!551284))

(assert (= (or b!6414448 bm!551283) bm!551285))

(assert (= (or b!6414444 b!6414448) bm!551282))

(assert (= (or b!6414444 bm!551285) bm!551281))

(declare-fun m!7210080 () Bool)

(assert (=> bm!551284 m!7210080))

(declare-fun m!7210082 () Bool)

(assert (=> b!6414445 m!7210082))

(declare-fun m!7210084 () Bool)

(assert (=> bm!551282 m!7210084))

(declare-fun m!7210086 () Bool)

(assert (=> b!6414449 m!7210086))

(declare-fun m!7210088 () Bool)

(assert (=> bm!551281 m!7210088))

(assert (=> bm!551149 d!2011469))

(assert (=> d!2011011 d!2011007))

(assert (=> d!2011011 d!2011009))

(declare-fun d!2011471 () Bool)

(assert (=> d!2011471 (= (matchR!8498 lt!2375210 s!2326) (matchZipper!2327 lt!2375203 s!2326))))

(assert (=> d!2011471 true))

(declare-fun _$44!1645 () Unit!158591)

(assert (=> d!2011471 (= (choose!47642 lt!2375203 lt!2375193 lt!2375210 s!2326) _$44!1645)))

(declare-fun bs!1612719 () Bool)

(assert (= bs!1612719 d!2011471))

(assert (=> bs!1612719 m!7208492))

(assert (=> bs!1612719 m!7208494))

(assert (=> d!2011011 d!2011471))

(assert (=> d!2011011 d!2011253))

(declare-fun b!6414451 () Bool)

(declare-fun res!2636226 () Bool)

(declare-fun e!3892268 () Bool)

(assert (=> b!6414451 (=> (not res!2636226) (not e!3892268))))

(declare-fun lt!2375448 () Int)

(declare-fun call!551294 () Int)

(assert (=> b!6414451 (= res!2636226 (> lt!2375448 call!551294))))

(declare-fun e!3892263 () Bool)

(assert (=> b!6414451 (= e!3892263 e!3892268)))

(declare-fun b!6414452 () Bool)

(declare-fun e!3892266 () Bool)

(assert (=> b!6414452 (= e!3892266 e!3892263)))

(declare-fun c!1171488 () Bool)

(assert (=> b!6414452 (= c!1171488 ((_ is Concat!25160) (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun bm!551287 () Bool)

(declare-fun call!551293 () Int)

(declare-fun call!551292 () Int)

(assert (=> bm!551287 (= call!551293 call!551292)))

(declare-fun bm!551288 () Bool)

(declare-fun c!1171483 () Bool)

(declare-fun c!1171484 () Bool)

(assert (=> bm!551288 (= call!551292 (regexDepth!342 (ite c!1171483 (reg!16644 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (ite c!1171484 (regTwo!33143 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (regOne!33142 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292)))))))))

(declare-fun call!551298 () Int)

(declare-fun bm!551289 () Bool)

(assert (=> bm!551289 (= call!551298 (regexDepth!342 (ite c!1171484 (regOne!33143 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (regTwo!33142 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))))

(declare-fun b!6414453 () Bool)

(declare-fun e!3892271 () Int)

(declare-fun call!551297 () Int)

(assert (=> b!6414453 (= e!3892271 (+ 1 call!551297))))

(declare-fun bm!551290 () Bool)

(declare-fun call!551295 () Int)

(declare-fun c!1171485 () Bool)

(assert (=> bm!551290 (= call!551295 (regexDepth!342 (ite c!1171485 (regTwo!33143 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (ite c!1171488 (regOne!33142 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (reg!16644 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292)))))))))

(declare-fun b!6414454 () Bool)

(declare-fun e!3892262 () Int)

(declare-fun e!3892270 () Int)

(assert (=> b!6414454 (= e!3892262 e!3892270)))

(assert (=> b!6414454 (= c!1171483 ((_ is Star!16315) (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun bm!551291 () Bool)

(declare-fun call!551296 () Int)

(assert (=> bm!551291 (= call!551296 (regexDepth!342 (ite c!1171485 (regOne!33143 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))) (regTwo!33142 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))))

(declare-fun b!6414455 () Bool)

(declare-fun c!1171487 () Bool)

(assert (=> b!6414455 (= c!1171487 ((_ is Star!16315) (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun e!3892265 () Bool)

(assert (=> b!6414455 (= e!3892263 e!3892265)))

(declare-fun b!6414456 () Bool)

(assert (=> b!6414456 (= e!3892265 (= lt!2375448 1))))

(declare-fun bm!551292 () Bool)

(assert (=> bm!551292 (= call!551297 (maxBigInt!0 (ite c!1171484 call!551298 call!551293) (ite c!1171484 call!551293 call!551298)))))

(declare-fun b!6414457 () Bool)

(declare-fun e!3892267 () Bool)

(assert (=> b!6414457 (= e!3892267 e!3892266)))

(assert (=> b!6414457 (= c!1171485 ((_ is Union!16315) (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun b!6414458 () Bool)

(assert (=> b!6414458 (= c!1171484 ((_ is Union!16315) (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun e!3892264 () Int)

(assert (=> b!6414458 (= e!3892270 e!3892264)))

(declare-fun d!2011473 () Bool)

(assert (=> d!2011473 e!3892267))

(declare-fun res!2636225 () Bool)

(assert (=> d!2011473 (=> (not res!2636225) (not e!3892267))))

(assert (=> d!2011473 (= res!2636225 (> lt!2375448 0))))

(assert (=> d!2011473 (= lt!2375448 e!3892262)))

(declare-fun c!1171486 () Bool)

(assert (=> d!2011473 (= c!1171486 ((_ is ElementMatch!16315) (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(assert (=> d!2011473 (= (regexDepth!342 (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))) lt!2375448)))

(declare-fun b!6414459 () Bool)

(declare-fun e!3892269 () Bool)

(assert (=> b!6414459 (= e!3892266 e!3892269)))

(declare-fun res!2636224 () Bool)

(assert (=> b!6414459 (= res!2636224 (> lt!2375448 call!551296))))

(assert (=> b!6414459 (=> (not res!2636224) (not e!3892269))))

(declare-fun bm!551293 () Bool)

(assert (=> bm!551293 (= call!551294 call!551295)))

(declare-fun b!6414460 () Bool)

(assert (=> b!6414460 (= e!3892270 (+ 1 call!551292))))

(declare-fun b!6414461 () Bool)

(assert (=> b!6414461 (= e!3892271 1)))

(declare-fun b!6414462 () Bool)

(assert (=> b!6414462 (= e!3892264 e!3892271)))

(declare-fun c!1171489 () Bool)

(assert (=> b!6414462 (= c!1171489 ((_ is Concat!25160) (ite c!1171215 (regOne!33143 r!7292) (regTwo!33142 r!7292))))))

(declare-fun b!6414463 () Bool)

(assert (=> b!6414463 (= e!3892268 (> lt!2375448 call!551296))))

(declare-fun b!6414464 () Bool)

(assert (=> b!6414464 (= e!3892262 1)))

(declare-fun b!6414465 () Bool)

(assert (=> b!6414465 (= e!3892265 (> lt!2375448 call!551294))))

(declare-fun b!6414466 () Bool)

(assert (=> b!6414466 (= e!3892269 (> lt!2375448 call!551295))))

(declare-fun b!6414467 () Bool)

(assert (=> b!6414467 (= e!3892264 (+ 1 call!551297))))

(assert (= (and d!2011473 c!1171486) b!6414464))

(assert (= (and d!2011473 (not c!1171486)) b!6414454))

(assert (= (and b!6414454 c!1171483) b!6414460))

(assert (= (and b!6414454 (not c!1171483)) b!6414458))

(assert (= (and b!6414458 c!1171484) b!6414467))

(assert (= (and b!6414458 (not c!1171484)) b!6414462))

(assert (= (and b!6414462 c!1171489) b!6414453))

(assert (= (and b!6414462 (not c!1171489)) b!6414461))

(assert (= (or b!6414467 b!6414453) bm!551287))

(assert (= (or b!6414467 b!6414453) bm!551289))

(assert (= (or b!6414467 b!6414453) bm!551292))

(assert (= (or b!6414460 bm!551287) bm!551288))

(assert (= (and d!2011473 res!2636225) b!6414457))

(assert (= (and b!6414457 c!1171485) b!6414459))

(assert (= (and b!6414457 (not c!1171485)) b!6414452))

(assert (= (and b!6414459 res!2636224) b!6414466))

(assert (= (and b!6414452 c!1171488) b!6414451))

(assert (= (and b!6414452 (not c!1171488)) b!6414455))

(assert (= (and b!6414451 res!2636226) b!6414463))

(assert (= (and b!6414455 c!1171487) b!6414465))

(assert (= (and b!6414455 (not c!1171487)) b!6414456))

(assert (= (or b!6414451 b!6414465) bm!551293))

(assert (= (or b!6414466 bm!551293) bm!551290))

(assert (= (or b!6414459 b!6414463) bm!551291))

(declare-fun m!7210090 () Bool)

(assert (=> bm!551290 m!7210090))

(declare-fun m!7210092 () Bool)

(assert (=> bm!551288 m!7210092))

(declare-fun m!7210094 () Bool)

(assert (=> bm!551292 m!7210094))

(declare-fun m!7210096 () Bool)

(assert (=> bm!551289 m!7210096))

(declare-fun m!7210098 () Bool)

(assert (=> bm!551291 m!7210098))

(assert (=> bm!551102 d!2011473))

(declare-fun d!2011475 () Bool)

(declare-fun res!2636227 () Bool)

(declare-fun e!3892272 () Bool)

(assert (=> d!2011475 (=> res!2636227 e!3892272)))

(assert (=> d!2011475 (= res!2636227 ((_ is Nil!65122) (t!378858 zl!343)))))

(assert (=> d!2011475 (= (forall!15503 (t!378858 zl!343) lambda!354033) e!3892272)))

(declare-fun b!6414468 () Bool)

(declare-fun e!3892273 () Bool)

(assert (=> b!6414468 (= e!3892272 e!3892273)))

(declare-fun res!2636228 () Bool)

(assert (=> b!6414468 (=> (not res!2636228) (not e!3892273))))

(assert (=> b!6414468 (= res!2636228 (dynLambda!25865 lambda!354033 (h!71570 (t!378858 zl!343))))))

(declare-fun b!6414469 () Bool)

(assert (=> b!6414469 (= e!3892273 (forall!15503 (t!378858 (t!378858 zl!343)) lambda!354033))))

(assert (= (and d!2011475 (not res!2636227)) b!6414468))

(assert (= (and b!6414468 res!2636228) b!6414469))

(declare-fun b_lambda!243853 () Bool)

(assert (=> (not b_lambda!243853) (not b!6414468)))

(declare-fun m!7210100 () Bool)

(assert (=> b!6414468 m!7210100))

(declare-fun m!7210102 () Bool)

(assert (=> b!6414469 m!7210102))

(assert (=> b!6412815 d!2011475))

(declare-fun bs!1612720 () Bool)

(declare-fun b!6414470 () Bool)

(assert (= bs!1612720 (and b!6414470 d!2011135)))

(declare-fun lambda!354174 () Int)

(assert (=> bs!1612720 (not (= lambda!354174 lambda!354123))))

(declare-fun bs!1612721 () Bool)

(assert (= bs!1612721 (and b!6414470 d!2011231)))

(assert (=> bs!1612721 (not (= lambda!354174 lambda!354126))))

(declare-fun bs!1612722 () Bool)

(assert (= bs!1612722 (and b!6414470 d!2011049)))

(assert (=> bs!1612722 (not (= lambda!354174 lambda!354098))))

(declare-fun bs!1612723 () Bool)

(assert (= bs!1612723 (and b!6414470 d!2011425)))

(assert (=> bs!1612723 (not (= lambda!354174 lambda!354153))))

(declare-fun bs!1612724 () Bool)

(assert (= bs!1612724 (and b!6414470 d!2011275)))

(assert (=> bs!1612724 (not (= lambda!354174 lambda!354131))))

(declare-fun bs!1612725 () Bool)

(assert (= bs!1612725 (and b!6414470 d!2010999)))

(assert (=> bs!1612725 (not (= lambda!354174 lambda!354084))))

(declare-fun bs!1612726 () Bool)

(assert (= bs!1612726 (and b!6414470 b!6414423)))

(declare-fun lt!2375449 () Int)

(assert (=> bs!1612726 (= (= lt!2375449 lt!2375446) (= lambda!354174 lambda!354172))))

(declare-fun bs!1612727 () Bool)

(assert (= bs!1612727 (and b!6414470 b!6414421)))

(assert (=> bs!1612727 (= (= lt!2375449 lt!2375443) (= lambda!354174 lambda!354171))))

(declare-fun bs!1612728 () Bool)

(assert (= bs!1612728 (and b!6414470 d!2011273)))

(assert (=> bs!1612728 (not (= lambda!354174 lambda!354130))))

(declare-fun bs!1612729 () Bool)

(assert (= bs!1612729 (and b!6414470 d!2011269)))

(assert (=> bs!1612729 (not (= lambda!354174 lambda!354129))))

(declare-fun bs!1612730 () Bool)

(assert (= bs!1612730 (and b!6414470 d!2011365)))

(assert (=> bs!1612730 (not (= lambda!354174 lambda!354144))))

(declare-fun bs!1612731 () Bool)

(assert (= bs!1612731 (and b!6414470 d!2011171)))

(assert (=> bs!1612731 (not (= lambda!354174 lambda!354125))))

(declare-fun bs!1612732 () Bool)

(assert (= bs!1612732 (and b!6414470 d!2011077)))

(assert (=> bs!1612732 (not (= lambda!354174 lambda!354116))))

(declare-fun bs!1612733 () Bool)

(assert (= bs!1612733 (and b!6414470 d!2011089)))

(assert (=> bs!1612733 (not (= lambda!354174 lambda!354119))))

(assert (=> b!6414470 true))

(declare-fun bs!1612734 () Bool)

(declare-fun b!6414472 () Bool)

(assert (= bs!1612734 (and b!6414472 d!2011135)))

(declare-fun lambda!354175 () Int)

(assert (=> bs!1612734 (not (= lambda!354175 lambda!354123))))

(declare-fun bs!1612735 () Bool)

(assert (= bs!1612735 (and b!6414472 d!2011231)))

(assert (=> bs!1612735 (not (= lambda!354175 lambda!354126))))

(declare-fun bs!1612736 () Bool)

(assert (= bs!1612736 (and b!6414472 d!2011049)))

(assert (=> bs!1612736 (not (= lambda!354175 lambda!354098))))

(declare-fun bs!1612737 () Bool)

(assert (= bs!1612737 (and b!6414472 d!2011425)))

(assert (=> bs!1612737 (not (= lambda!354175 lambda!354153))))

(declare-fun bs!1612738 () Bool)

(assert (= bs!1612738 (and b!6414472 d!2011275)))

(assert (=> bs!1612738 (not (= lambda!354175 lambda!354131))))

(declare-fun bs!1612739 () Bool)

(assert (= bs!1612739 (and b!6414472 d!2010999)))

(assert (=> bs!1612739 (not (= lambda!354175 lambda!354084))))

(declare-fun bs!1612740 () Bool)

(assert (= bs!1612740 (and b!6414472 b!6414423)))

(declare-fun lt!2375452 () Int)

(assert (=> bs!1612740 (= (= lt!2375452 lt!2375446) (= lambda!354175 lambda!354172))))

(declare-fun bs!1612741 () Bool)

(assert (= bs!1612741 (and b!6414472 b!6414470)))

(assert (=> bs!1612741 (= (= lt!2375452 lt!2375449) (= lambda!354175 lambda!354174))))

(declare-fun bs!1612742 () Bool)

(assert (= bs!1612742 (and b!6414472 b!6414421)))

(assert (=> bs!1612742 (= (= lt!2375452 lt!2375443) (= lambda!354175 lambda!354171))))

(declare-fun bs!1612743 () Bool)

(assert (= bs!1612743 (and b!6414472 d!2011273)))

(assert (=> bs!1612743 (not (= lambda!354175 lambda!354130))))

(declare-fun bs!1612744 () Bool)

(assert (= bs!1612744 (and b!6414472 d!2011269)))

(assert (=> bs!1612744 (not (= lambda!354175 lambda!354129))))

(declare-fun bs!1612745 () Bool)

(assert (= bs!1612745 (and b!6414472 d!2011365)))

(assert (=> bs!1612745 (not (= lambda!354175 lambda!354144))))

(declare-fun bs!1612746 () Bool)

(assert (= bs!1612746 (and b!6414472 d!2011171)))

(assert (=> bs!1612746 (not (= lambda!354175 lambda!354125))))

(declare-fun bs!1612747 () Bool)

(assert (= bs!1612747 (and b!6414472 d!2011077)))

(assert (=> bs!1612747 (not (= lambda!354175 lambda!354116))))

(declare-fun bs!1612748 () Bool)

(assert (= bs!1612748 (and b!6414472 d!2011089)))

(assert (=> bs!1612748 (not (= lambda!354175 lambda!354119))))

(assert (=> b!6414472 true))

(declare-fun d!2011477 () Bool)

(declare-fun e!3892275 () Bool)

(assert (=> d!2011477 e!3892275))

(declare-fun res!2636229 () Bool)

(assert (=> d!2011477 (=> (not res!2636229) (not e!3892275))))

(assert (=> d!2011477 (= res!2636229 (>= lt!2375452 0))))

(declare-fun e!3892274 () Int)

(assert (=> d!2011477 (= lt!2375452 e!3892274)))

(declare-fun c!1171490 () Bool)

(assert (=> d!2011477 (= c!1171490 ((_ is Cons!65120) (exprs!6199 (h!71570 zl!343))))))

(assert (=> d!2011477 (= (contextDepth!272 (h!71570 zl!343)) lt!2375452)))

(assert (=> b!6414470 (= e!3892274 lt!2375449)))

(assert (=> b!6414470 (= lt!2375449 (maxBigInt!0 (regexDepth!342 (h!71568 (exprs!6199 (h!71570 zl!343)))) (contextDepth!272 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun lt!2375451 () Unit!158591)

(assert (=> b!6414470 (= lt!2375451 (lemmaForallRegexDepthBiggerThanTransitive!126 (t!378856 (exprs!6199 (h!71570 zl!343))) lt!2375449 (contextDepth!272 (Context!11399 (t!378856 (exprs!6199 (h!71570 zl!343)))))))))

(assert (=> b!6414470 (forall!15504 (t!378856 (exprs!6199 (h!71570 zl!343))) lambda!354174)))

(declare-fun lt!2375450 () Unit!158591)

(assert (=> b!6414470 (= lt!2375450 lt!2375451)))

(declare-fun b!6414471 () Bool)

(assert (=> b!6414471 (= e!3892274 0)))

(assert (=> b!6414472 (= e!3892275 (forall!15504 (exprs!6199 (h!71570 zl!343)) lambda!354175))))

(assert (= (and d!2011477 c!1171490) b!6414470))

(assert (= (and d!2011477 (not c!1171490)) b!6414471))

(assert (= (and d!2011477 res!2636229) b!6414472))

(declare-fun m!7210104 () Bool)

(assert (=> b!6414470 m!7210104))

(declare-fun m!7210106 () Bool)

(assert (=> b!6414470 m!7210106))

(assert (=> b!6414470 m!7210104))

(declare-fun m!7210108 () Bool)

(assert (=> b!6414470 m!7210108))

(declare-fun m!7210110 () Bool)

(assert (=> b!6414470 m!7210110))

(assert (=> b!6414470 m!7210106))

(assert (=> b!6414470 m!7210104))

(declare-fun m!7210112 () Bool)

(assert (=> b!6414470 m!7210112))

(declare-fun m!7210114 () Bool)

(assert (=> b!6414472 m!7210114))

(assert (=> b!6412815 d!2011477))

(declare-fun bs!1612749 () Bool)

(declare-fun d!2011479 () Bool)

(assert (= bs!1612749 (and d!2011479 b!6414414)))

(declare-fun lambda!354176 () Int)

(assert (=> bs!1612749 (not (= lambda!354176 lambda!354166))))

(declare-fun bs!1612750 () Bool)

(assert (= bs!1612750 (and d!2011479 b!6412822)))

(assert (=> bs!1612750 (not (= lambda!354176 lambda!354037))))

(declare-fun bs!1612751 () Bool)

(assert (= bs!1612751 (and d!2011479 b!6414412)))

(assert (=> bs!1612751 (not (= lambda!354176 lambda!354165))))

(declare-fun bs!1612752 () Bool)

(assert (= bs!1612752 (and d!2011479 d!2011455)))

(assert (=> bs!1612752 (= (and (= lt!2375237 lt!2375241) (= lambda!354032 lambda!354035)) (= lambda!354176 lambda!354163))))

(declare-fun bs!1612753 () Bool)

(assert (= bs!1612753 (and d!2011479 b!6412815)))

(assert (=> bs!1612753 (not (= lambda!354176 lambda!354033))))

(declare-fun bs!1612754 () Bool)

(assert (= bs!1612754 (and d!2011479 d!2011355)))

(assert (=> bs!1612754 (not (= lambda!354176 lambda!354143))))

(declare-fun bs!1612755 () Bool)

(assert (= bs!1612755 (and d!2011479 b!6412817)))

(assert (=> bs!1612755 (not (= lambda!354176 lambda!354034))))

(declare-fun bs!1612756 () Bool)

(assert (= bs!1612756 (and d!2011479 d!2011427)))

(assert (=> bs!1612756 (not (= lambda!354176 lambda!354154))))

(declare-fun bs!1612757 () Bool)

(assert (= bs!1612757 (and d!2011479 d!2011467)))

(assert (=> bs!1612757 (not (= lambda!354176 lambda!354173))))

(declare-fun bs!1612758 () Bool)

(assert (= bs!1612758 (and d!2011479 d!2011409)))

(assert (=> bs!1612758 (not (= lambda!354176 lambda!354149))))

(declare-fun bs!1612759 () Bool)

(assert (= bs!1612759 (and d!2011479 d!2011385)))

(assert (=> bs!1612759 (not (= lambda!354176 lambda!354147))))

(declare-fun bs!1612760 () Bool)

(assert (= bs!1612760 (and d!2011479 d!2011369)))

(assert (=> bs!1612760 (not (= lambda!354176 lambda!354145))))

(declare-fun bs!1612761 () Bool)

(assert (= bs!1612761 (and d!2011479 b!6412820)))

(assert (=> bs!1612761 (not (= lambda!354176 lambda!354036))))

(assert (=> d!2011479 true))

(assert (=> d!2011479 true))

(assert (=> d!2011479 (< (dynLambda!25869 order!27557 lambda!354032) (dynLambda!25870 order!27559 lambda!354176))))

(assert (=> d!2011479 (forall!15503 (t!378858 zl!343) lambda!354176)))

(declare-fun lt!2375453 () Unit!158591)

(assert (=> d!2011479 (= lt!2375453 (choose!47649 (t!378858 zl!343) lt!2375237 (zipperDepth!384 (t!378858 zl!343)) lambda!354032))))

(assert (=> d!2011479 (>= lt!2375237 (zipperDepth!384 (t!378858 zl!343)))))

(assert (=> d!2011479 (= (lemmaForallContextDepthBiggerThanTransitive!256 (t!378858 zl!343) lt!2375237 (zipperDepth!384 (t!378858 zl!343)) lambda!354032) lt!2375453)))

(declare-fun bs!1612762 () Bool)

(assert (= bs!1612762 d!2011479))

(declare-fun m!7210116 () Bool)

(assert (=> bs!1612762 m!7210116))

(assert (=> bs!1612762 m!7208640))

(declare-fun m!7210118 () Bool)

(assert (=> bs!1612762 m!7210118))

(assert (=> b!6412815 d!2011479))

(declare-fun bs!1612763 () Bool)

(declare-fun b!6414473 () Bool)

(assert (= bs!1612763 (and b!6414473 b!6412815)))

(declare-fun lambda!354177 () Int)

(assert (=> bs!1612763 (= lambda!354177 lambda!354032)))

(declare-fun bs!1612764 () Bool)

(assert (= bs!1612764 (and b!6414473 b!6412820)))

(assert (=> bs!1612764 (= lambda!354177 lambda!354035)))

(declare-fun bs!1612765 () Bool)

(assert (= bs!1612765 (and b!6414473 b!6414412)))

(assert (=> bs!1612765 (= lambda!354177 lambda!354164)))

(declare-fun bs!1612766 () Bool)

(assert (= bs!1612766 (and b!6414473 b!6414414)))

(declare-fun lambda!354178 () Int)

(declare-fun lt!2375455 () Int)

(assert (=> bs!1612766 (= (= lt!2375455 lt!2375431) (= lambda!354178 lambda!354166))))

(declare-fun bs!1612767 () Bool)

(assert (= bs!1612767 (and b!6414473 b!6412822)))

(assert (=> bs!1612767 (= (= lt!2375455 lt!2375240) (= lambda!354178 lambda!354037))))

(assert (=> bs!1612765 (= (= lt!2375455 lt!2375432) (= lambda!354178 lambda!354165))))

(declare-fun bs!1612768 () Bool)

(assert (= bs!1612768 (and b!6414473 d!2011455)))

(assert (=> bs!1612768 (not (= lambda!354178 lambda!354163))))

(assert (=> bs!1612763 (= (= lt!2375455 lt!2375237) (= lambda!354178 lambda!354033))))

(declare-fun bs!1612769 () Bool)

(assert (= bs!1612769 (and b!6414473 d!2011355)))

(assert (=> bs!1612769 (not (= lambda!354178 lambda!354143))))

(declare-fun bs!1612770 () Bool)

(assert (= bs!1612770 (and b!6414473 b!6412817)))

(assert (=> bs!1612770 (= (= lt!2375455 lt!2375236) (= lambda!354178 lambda!354034))))

(declare-fun bs!1612771 () Bool)

(assert (= bs!1612771 (and b!6414473 d!2011427)))

(assert (=> bs!1612771 (not (= lambda!354178 lambda!354154))))

(declare-fun bs!1612772 () Bool)

(assert (= bs!1612772 (and b!6414473 d!2011467)))

(assert (=> bs!1612772 (not (= lambda!354178 lambda!354173))))

(declare-fun bs!1612773 () Bool)

(assert (= bs!1612773 (and b!6414473 d!2011409)))

(assert (=> bs!1612773 (not (= lambda!354178 lambda!354149))))

(declare-fun bs!1612774 () Bool)

(assert (= bs!1612774 (and b!6414473 d!2011385)))

(assert (=> bs!1612774 (not (= lambda!354178 lambda!354147))))

(declare-fun bs!1612775 () Bool)

(assert (= bs!1612775 (and b!6414473 d!2011479)))

(assert (=> bs!1612775 (not (= lambda!354178 lambda!354176))))

(declare-fun bs!1612776 () Bool)

(assert (= bs!1612776 (and b!6414473 d!2011369)))

(assert (=> bs!1612776 (not (= lambda!354178 lambda!354145))))

(assert (=> bs!1612764 (= (= lt!2375455 lt!2375241) (= lambda!354178 lambda!354036))))

(assert (=> b!6414473 true))

(declare-fun bs!1612777 () Bool)

(declare-fun b!6414475 () Bool)

(assert (= bs!1612777 (and b!6414475 b!6414473)))

(declare-fun lt!2375454 () Int)

(declare-fun lambda!354179 () Int)

(assert (=> bs!1612777 (= (= lt!2375454 lt!2375455) (= lambda!354179 lambda!354178))))

(declare-fun bs!1612778 () Bool)

(assert (= bs!1612778 (and b!6414475 b!6414414)))

(assert (=> bs!1612778 (= (= lt!2375454 lt!2375431) (= lambda!354179 lambda!354166))))

(declare-fun bs!1612779 () Bool)

(assert (= bs!1612779 (and b!6414475 b!6412822)))

(assert (=> bs!1612779 (= (= lt!2375454 lt!2375240) (= lambda!354179 lambda!354037))))

(declare-fun bs!1612780 () Bool)

(assert (= bs!1612780 (and b!6414475 b!6414412)))

(assert (=> bs!1612780 (= (= lt!2375454 lt!2375432) (= lambda!354179 lambda!354165))))

(declare-fun bs!1612781 () Bool)

(assert (= bs!1612781 (and b!6414475 d!2011455)))

(assert (=> bs!1612781 (not (= lambda!354179 lambda!354163))))

(declare-fun bs!1612782 () Bool)

(assert (= bs!1612782 (and b!6414475 b!6412815)))

(assert (=> bs!1612782 (= (= lt!2375454 lt!2375237) (= lambda!354179 lambda!354033))))

(declare-fun bs!1612783 () Bool)

(assert (= bs!1612783 (and b!6414475 d!2011355)))

(assert (=> bs!1612783 (not (= lambda!354179 lambda!354143))))

(declare-fun bs!1612784 () Bool)

(assert (= bs!1612784 (and b!6414475 b!6412817)))

(assert (=> bs!1612784 (= (= lt!2375454 lt!2375236) (= lambda!354179 lambda!354034))))

(declare-fun bs!1612785 () Bool)

(assert (= bs!1612785 (and b!6414475 d!2011427)))

(assert (=> bs!1612785 (not (= lambda!354179 lambda!354154))))

(declare-fun bs!1612786 () Bool)

(assert (= bs!1612786 (and b!6414475 d!2011467)))

(assert (=> bs!1612786 (not (= lambda!354179 lambda!354173))))

(declare-fun bs!1612787 () Bool)

(assert (= bs!1612787 (and b!6414475 d!2011409)))

(assert (=> bs!1612787 (not (= lambda!354179 lambda!354149))))

(declare-fun bs!1612788 () Bool)

(assert (= bs!1612788 (and b!6414475 d!2011385)))

(assert (=> bs!1612788 (not (= lambda!354179 lambda!354147))))

(declare-fun bs!1612789 () Bool)

(assert (= bs!1612789 (and b!6414475 d!2011479)))

(assert (=> bs!1612789 (not (= lambda!354179 lambda!354176))))

(declare-fun bs!1612790 () Bool)

(assert (= bs!1612790 (and b!6414475 d!2011369)))

(assert (=> bs!1612790 (not (= lambda!354179 lambda!354145))))

(declare-fun bs!1612791 () Bool)

(assert (= bs!1612791 (and b!6414475 b!6412820)))

(assert (=> bs!1612791 (= (= lt!2375454 lt!2375241) (= lambda!354179 lambda!354036))))

(assert (=> b!6414475 true))

(declare-fun d!2011481 () Bool)

(declare-fun e!3892277 () Bool)

(assert (=> d!2011481 e!3892277))

(declare-fun res!2636230 () Bool)

(assert (=> d!2011481 (=> (not res!2636230) (not e!3892277))))

(assert (=> d!2011481 (= res!2636230 (>= lt!2375454 0))))

(declare-fun e!3892276 () Int)

(assert (=> d!2011481 (= lt!2375454 e!3892276)))

(declare-fun c!1171491 () Bool)

(assert (=> d!2011481 (= c!1171491 ((_ is Cons!65122) (t!378858 zl!343)))))

(assert (=> d!2011481 (= (zipperDepth!384 (t!378858 zl!343)) lt!2375454)))

(assert (=> b!6414473 (= e!3892276 lt!2375455)))

(assert (=> b!6414473 (= lt!2375455 (maxBigInt!0 (contextDepth!272 (h!71570 (t!378858 zl!343))) (zipperDepth!384 (t!378858 (t!378858 zl!343)))))))

(declare-fun lt!2375457 () Unit!158591)

(assert (=> b!6414473 (= lt!2375457 (lemmaForallContextDepthBiggerThanTransitive!256 (t!378858 (t!378858 zl!343)) lt!2375455 (zipperDepth!384 (t!378858 (t!378858 zl!343))) lambda!354177))))

(assert (=> b!6414473 (forall!15503 (t!378858 (t!378858 zl!343)) lambda!354178)))

(declare-fun lt!2375456 () Unit!158591)

(assert (=> b!6414473 (= lt!2375456 lt!2375457)))

(declare-fun b!6414474 () Bool)

(assert (=> b!6414474 (= e!3892276 0)))

(assert (=> b!6414475 (= e!3892277 (forall!15503 (t!378858 zl!343) lambda!354179))))

(assert (= (and d!2011481 c!1171491) b!6414473))

(assert (= (and d!2011481 (not c!1171491)) b!6414474))

(assert (= (and d!2011481 res!2636230) b!6414475))

(declare-fun m!7210120 () Bool)

(assert (=> b!6414473 m!7210120))

(declare-fun m!7210122 () Bool)

(assert (=> b!6414473 m!7210122))

(declare-fun m!7210124 () Bool)

(assert (=> b!6414473 m!7210124))

(declare-fun m!7210126 () Bool)

(assert (=> b!6414473 m!7210126))

(assert (=> b!6414473 m!7210124))

(assert (=> b!6414473 m!7210122))

(assert (=> b!6414473 m!7210124))

(declare-fun m!7210128 () Bool)

(assert (=> b!6414473 m!7210128))

(declare-fun m!7210130 () Bool)

(assert (=> b!6414475 m!7210130))

(assert (=> b!6412815 d!2011481))

(declare-fun d!2011483 () Bool)

(assert (=> d!2011483 (= (maxBigInt!0 (contextDepth!272 (h!71570 zl!343)) (zipperDepth!384 (t!378858 zl!343))) (ite (>= (contextDepth!272 (h!71570 zl!343)) (zipperDepth!384 (t!378858 zl!343))) (contextDepth!272 (h!71570 zl!343)) (zipperDepth!384 (t!378858 zl!343))))))

(assert (=> b!6412815 d!2011483))

(declare-fun call!551304 () (InoxSet Context!11398))

(declare-fun c!1171492 () Bool)

(declare-fun c!1171493 () Bool)

(declare-fun bm!551294 () Bool)

(declare-fun c!1171495 () Bool)

(declare-fun call!551300 () List!65244)

(assert (=> bm!551294 (= call!551304 (derivationStepZipperDown!1563 (ite c!1171495 (regOne!33143 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))) (ite c!1171492 (regTwo!33142 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))) (ite c!1171493 (regOne!33142 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))) (reg!16644 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343))))))))))) (ite (or c!1171495 c!1171492) (ite (or c!1171296 c!1171293) lt!2375218 (Context!11399 call!551154)) (Context!11399 call!551300)) (h!71569 s!2326)))))

(declare-fun b!6414477 () Bool)

(declare-fun c!1171494 () Bool)

(assert (=> b!6414477 (= c!1171494 ((_ is Star!16315) (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))))

(declare-fun e!3892281 () (InoxSet Context!11398))

(declare-fun e!3892279 () (InoxSet Context!11398))

(assert (=> b!6414477 (= e!3892281 e!3892279)))

(declare-fun b!6414478 () Bool)

(declare-fun call!551302 () (InoxSet Context!11398))

(assert (=> b!6414478 (= e!3892279 call!551302)))

(declare-fun b!6414479 () Bool)

(declare-fun e!3892278 () (InoxSet Context!11398))

(assert (=> b!6414479 (= e!3892278 e!3892281)))

(assert (=> b!6414479 (= c!1171493 ((_ is Concat!25160) (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))))

(declare-fun b!6414480 () Bool)

(declare-fun e!3892282 () (InoxSet Context!11398))

(declare-fun call!551303 () (InoxSet Context!11398))

(assert (=> b!6414480 (= e!3892282 ((_ map or) call!551304 call!551303))))

(declare-fun b!6414481 () Bool)

(declare-fun e!3892280 () Bool)

(assert (=> b!6414481 (= e!3892280 (nullable!6308 (regOne!33142 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343))))))))))))

(declare-fun call!551299 () List!65244)

(declare-fun bm!551295 () Bool)

(assert (=> bm!551295 (= call!551303 (derivationStepZipperDown!1563 (ite c!1171495 (regTwo!33143 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))) (regOne!33142 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343))))))))) (ite c!1171495 (ite (or c!1171296 c!1171293) lt!2375218 (Context!11399 call!551154)) (Context!11399 call!551299)) (h!71569 s!2326)))))

(declare-fun b!6414476 () Bool)

(assert (=> b!6414476 (= e!3892281 call!551302)))

(declare-fun c!1171496 () Bool)

(declare-fun d!2011485 () Bool)

(assert (=> d!2011485 (= c!1171496 (and ((_ is ElementMatch!16315) (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))) (= (c!1170970 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))) (h!71569 s!2326))))))

(declare-fun e!3892283 () (InoxSet Context!11398))

(assert (=> d!2011485 (= (derivationStepZipperDown!1563 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343))))))) (ite (or c!1171296 c!1171293) lt!2375218 (Context!11399 call!551154)) (h!71569 s!2326)) e!3892283)))

(declare-fun bm!551296 () Bool)

(declare-fun call!551301 () (InoxSet Context!11398))

(assert (=> bm!551296 (= call!551302 call!551301)))

(declare-fun b!6414482 () Bool)

(assert (=> b!6414482 (= e!3892279 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551297 () Bool)

(assert (=> bm!551297 (= call!551299 ($colon$colon!2176 (exprs!6199 (ite (or c!1171296 c!1171293) lt!2375218 (Context!11399 call!551154))) (ite (or c!1171492 c!1171493) (regTwo!33142 (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))) (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343))))))))))))

(declare-fun bm!551298 () Bool)

(assert (=> bm!551298 (= call!551301 call!551304)))

(declare-fun bm!551299 () Bool)

(assert (=> bm!551299 (= call!551300 call!551299)))

(declare-fun b!6414483 () Bool)

(assert (=> b!6414483 (= e!3892283 e!3892282)))

(assert (=> b!6414483 (= c!1171495 ((_ is Union!16315) (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))))

(declare-fun b!6414484 () Bool)

(assert (=> b!6414484 (= e!3892278 ((_ map or) call!551303 call!551301))))

(declare-fun b!6414485 () Bool)

(assert (=> b!6414485 (= e!3892283 (store ((as const (Array Context!11398 Bool)) false) (ite (or c!1171296 c!1171293) lt!2375218 (Context!11399 call!551154)) true))))

(declare-fun b!6414486 () Bool)

(assert (=> b!6414486 (= c!1171492 e!3892280)))

(declare-fun res!2636231 () Bool)

(assert (=> b!6414486 (=> (not res!2636231) (not e!3892280))))

(assert (=> b!6414486 (= res!2636231 ((_ is Concat!25160) (ite c!1171296 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171293 (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (ite c!1171294 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))) (reg!16644 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))))

(assert (=> b!6414486 (= e!3892282 e!3892278)))

(assert (= (and d!2011485 c!1171496) b!6414485))

(assert (= (and d!2011485 (not c!1171496)) b!6414483))

(assert (= (and b!6414483 c!1171495) b!6414480))

(assert (= (and b!6414483 (not c!1171495)) b!6414486))

(assert (= (and b!6414486 res!2636231) b!6414481))

(assert (= (and b!6414486 c!1171492) b!6414484))

(assert (= (and b!6414486 (not c!1171492)) b!6414479))

(assert (= (and b!6414479 c!1171493) b!6414476))

(assert (= (and b!6414479 (not c!1171493)) b!6414477))

(assert (= (and b!6414477 c!1171494) b!6414478))

(assert (= (and b!6414477 (not c!1171494)) b!6414482))

(assert (= (or b!6414476 b!6414478) bm!551299))

(assert (= (or b!6414476 b!6414478) bm!551296))

(assert (= (or b!6414484 bm!551299) bm!551297))

(assert (= (or b!6414484 bm!551296) bm!551298))

(assert (= (or b!6414480 b!6414484) bm!551295))

(assert (= (or b!6414480 bm!551298) bm!551294))

(declare-fun m!7210132 () Bool)

(assert (=> bm!551297 m!7210132))

(declare-fun m!7210134 () Bool)

(assert (=> b!6414481 m!7210134))

(declare-fun m!7210136 () Bool)

(assert (=> bm!551295 m!7210136))

(declare-fun m!7210138 () Bool)

(assert (=> b!6414485 m!7210138))

(declare-fun m!7210140 () Bool)

(assert (=> bm!551294 m!7210140))

(assert (=> bm!551148 d!2011485))

(declare-fun d!2011487 () Bool)

(declare-fun c!1171497 () Bool)

(assert (=> d!2011487 (= c!1171497 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun e!3892284 () Bool)

(assert (=> d!2011487 (= (matchZipper!2327 (derivationStepZipper!2281 lt!2375203 (head!13120 s!2326)) (tail!12205 s!2326)) e!3892284)))

(declare-fun b!6414487 () Bool)

(assert (=> b!6414487 (= e!3892284 (nullableZipper!2080 (derivationStepZipper!2281 lt!2375203 (head!13120 s!2326))))))

(declare-fun b!6414488 () Bool)

(assert (=> b!6414488 (= e!3892284 (matchZipper!2327 (derivationStepZipper!2281 (derivationStepZipper!2281 lt!2375203 (head!13120 s!2326)) (head!13120 (tail!12205 s!2326))) (tail!12205 (tail!12205 s!2326))))))

(assert (= (and d!2011487 c!1171497) b!6414487))

(assert (= (and d!2011487 (not c!1171497)) b!6414488))

(assert (=> d!2011487 m!7208626))

(assert (=> d!2011487 m!7208898))

(assert (=> b!6414487 m!7209042))

(declare-fun m!7210142 () Bool)

(assert (=> b!6414487 m!7210142))

(assert (=> b!6414488 m!7208626))

(assert (=> b!6414488 m!7209624))

(assert (=> b!6414488 m!7209042))

(assert (=> b!6414488 m!7209624))

(declare-fun m!7210144 () Bool)

(assert (=> b!6414488 m!7210144))

(assert (=> b!6414488 m!7208626))

(assert (=> b!6414488 m!7209630))

(assert (=> b!6414488 m!7210144))

(assert (=> b!6414488 m!7209630))

(declare-fun m!7210146 () Bool)

(assert (=> b!6414488 m!7210146))

(assert (=> b!6413390 d!2011487))

(declare-fun bs!1612792 () Bool)

(declare-fun d!2011489 () Bool)

(assert (= bs!1612792 (and d!2011489 d!2011311)))

(declare-fun lambda!354180 () Int)

(assert (=> bs!1612792 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354180 lambda!354135))))

(declare-fun bs!1612793 () Bool)

(assert (= bs!1612793 (and d!2011489 d!2011331)))

(assert (=> bs!1612793 (= lambda!354180 lambda!354137)))

(declare-fun bs!1612794 () Bool)

(assert (= bs!1612794 (and d!2011489 d!2011289)))

(assert (=> bs!1612794 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354180 lambda!354132))))

(declare-fun bs!1612795 () Bool)

(assert (= bs!1612795 (and d!2011489 d!2011421)))

(assert (=> bs!1612795 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354180 lambda!354152))))

(declare-fun bs!1612796 () Bool)

(assert (= bs!1612796 (and d!2011489 d!2011031)))

(assert (=> bs!1612796 (= (= (head!13120 s!2326) (h!71569 s!2326)) (= lambda!354180 lambda!354092))))

(declare-fun bs!1612797 () Bool)

(assert (= bs!1612797 (and d!2011489 d!2011141)))

(assert (=> bs!1612797 (= (= (head!13120 s!2326) (h!71569 s!2326)) (= lambda!354180 lambda!354124))))

(declare-fun bs!1612798 () Bool)

(assert (= bs!1612798 (and d!2011489 d!2011327)))

(assert (=> bs!1612798 (= (= (head!13120 s!2326) (head!13120 (t!378857 s!2326))) (= lambda!354180 lambda!354136))))

(declare-fun bs!1612799 () Bool)

(assert (= bs!1612799 (and d!2011489 b!6412770)))

(assert (=> bs!1612799 (= (= (head!13120 s!2326) (h!71569 s!2326)) (= lambda!354180 lambda!354023))))

(declare-fun bs!1612800 () Bool)

(assert (= bs!1612800 (and d!2011489 d!2011393)))

(assert (=> bs!1612800 (= lambda!354180 lambda!354148)))

(assert (=> d!2011489 true))

(assert (=> d!2011489 (= (derivationStepZipper!2281 lt!2375203 (head!13120 s!2326)) (flatMap!1820 lt!2375203 lambda!354180))))

(declare-fun bs!1612801 () Bool)

(assert (= bs!1612801 d!2011489))

(declare-fun m!7210148 () Bool)

(assert (=> bs!1612801 m!7210148))

(assert (=> b!6413390 d!2011489))

(assert (=> b!6413390 d!2011199))

(assert (=> b!6413390 d!2011207))

(declare-fun d!2011491 () Bool)

(assert (=> d!2011491 (= (Exists!3385 lambda!354051) (choose!47631 lambda!354051))))

(declare-fun bs!1612802 () Bool)

(assert (= bs!1612802 d!2011491))

(declare-fun m!7210150 () Bool)

(assert (=> bs!1612802 m!7210150))

(assert (=> d!2010919 d!2011491))

(declare-fun d!2011493 () Bool)

(assert (=> d!2011493 (= (Exists!3385 lambda!354052) (choose!47631 lambda!354052))))

(declare-fun bs!1612803 () Bool)

(assert (= bs!1612803 d!2011493))

(declare-fun m!7210152 () Bool)

(assert (=> bs!1612803 m!7210152))

(assert (=> d!2010919 d!2011493))

(declare-fun bs!1612804 () Bool)

(declare-fun d!2011495 () Bool)

(assert (= bs!1612804 (and d!2011495 b!6413152)))

(declare-fun lambda!354181 () Int)

(assert (=> bs!1612804 (not (= lambda!354181 lambda!354066))))

(declare-fun bs!1612805 () Bool)

(assert (= bs!1612805 (and d!2011495 d!2011443)))

(assert (=> bs!1612805 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354181 lambda!354159))))

(declare-fun bs!1612806 () Bool)

(assert (= bs!1612806 (and d!2011495 b!6414345)))

(assert (=> bs!1612806 (not (= lambda!354181 lambda!354150))))

(declare-fun bs!1612807 () Bool)

(assert (= bs!1612807 (and d!2011495 b!6412781)))

(assert (=> bs!1612807 (not (= lambda!354181 lambda!354022))))

(declare-fun bs!1612808 () Bool)

(assert (= bs!1612808 (and d!2011495 d!2010919)))

(assert (=> bs!1612808 (= lambda!354181 lambda!354051)))

(declare-fun bs!1612809 () Bool)

(assert (= bs!1612809 (and d!2011495 b!6414158)))

(assert (=> bs!1612809 (not (= lambda!354181 lambda!354133))))

(assert (=> bs!1612808 (not (= lambda!354181 lambda!354052))))

(assert (=> bs!1612807 (= lambda!354181 lambda!354021)))

(declare-fun bs!1612810 () Bool)

(assert (= bs!1612810 (and d!2011495 b!6412754)))

(assert (=> bs!1612810 (not (= lambda!354181 lambda!354025))))

(declare-fun bs!1612811 () Bool)

(assert (= bs!1612811 (and d!2011495 b!6413231)))

(assert (=> bs!1612811 (not (= lambda!354181 lambda!354073))))

(declare-fun bs!1612812 () Bool)

(assert (= bs!1612812 (and d!2011495 d!2010991)))

(assert (=> bs!1612812 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354181 lambda!354077))))

(declare-fun bs!1612813 () Bool)

(assert (= bs!1612813 (and d!2011495 b!6413973)))

(assert (=> bs!1612813 (not (= lambda!354181 lambda!354127))))

(declare-fun bs!1612814 () Bool)

(assert (= bs!1612814 (and d!2011495 d!2011349)))

(assert (=> bs!1612814 (= lambda!354181 lambda!354140)))

(declare-fun bs!1612815 () Bool)

(assert (= bs!1612815 (and d!2011495 b!6413975)))

(assert (=> bs!1612815 (not (= lambda!354181 lambda!354128))))

(declare-fun bs!1612816 () Bool)

(assert (= bs!1612816 (and d!2011495 b!6413229)))

(assert (=> bs!1612816 (not (= lambda!354181 lambda!354070))))

(assert (=> bs!1612812 (not (= lambda!354181 lambda!354078))))

(declare-fun bs!1612817 () Bool)

(assert (= bs!1612817 (and d!2011495 b!6413154)))

(assert (=> bs!1612817 (not (= lambda!354181 lambda!354067))))

(assert (=> bs!1612810 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354181 lambda!354024))))

(declare-fun bs!1612818 () Bool)

(assert (= bs!1612818 (and d!2011495 b!6414347)))

(assert (=> bs!1612818 (not (= lambda!354181 lambda!354151))))

(declare-fun bs!1612819 () Bool)

(assert (= bs!1612819 (and d!2011495 d!2011371)))

(assert (=> bs!1612819 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354181 lambda!354146))))

(assert (=> bs!1612805 (not (= lambda!354181 lambda!354160))))

(declare-fun bs!1612820 () Bool)

(assert (= bs!1612820 (and d!2011495 b!6414160)))

(assert (=> bs!1612820 (not (= lambda!354181 lambda!354134))))

(declare-fun bs!1612821 () Bool)

(assert (= bs!1612821 (and d!2011495 d!2010911)))

(assert (=> bs!1612821 (= lambda!354181 lambda!354046)))

(declare-fun bs!1612822 () Bool)

(assert (= bs!1612822 (and d!2011495 d!2010973)))

(assert (=> bs!1612822 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354181 lambda!354074))))

(assert (=> d!2011495 true))

(assert (=> d!2011495 true))

(assert (=> d!2011495 true))

(declare-fun lambda!354182 () Int)

(assert (=> bs!1612804 (not (= lambda!354182 lambda!354066))))

(assert (=> bs!1612805 (not (= lambda!354182 lambda!354159))))

(assert (=> bs!1612806 (not (= lambda!354182 lambda!354150))))

(assert (=> bs!1612807 (= lambda!354182 lambda!354022)))

(assert (=> bs!1612808 (not (= lambda!354182 lambda!354051))))

(assert (=> bs!1612809 (not (= lambda!354182 lambda!354133))))

(assert (=> bs!1612808 (= lambda!354182 lambda!354052)))

(assert (=> bs!1612807 (not (= lambda!354182 lambda!354021))))

(assert (=> bs!1612810 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354182 lambda!354025))))

(declare-fun bs!1612823 () Bool)

(assert (= bs!1612823 d!2011495))

(assert (=> bs!1612823 (not (= lambda!354182 lambda!354181))))

(assert (=> bs!1612811 (= (and (= (regOne!33142 r!7292) (regOne!33142 lt!2375201)) (= (regTwo!33142 r!7292) (regTwo!33142 lt!2375201))) (= lambda!354182 lambda!354073))))

(assert (=> bs!1612812 (not (= lambda!354182 lambda!354077))))

(assert (=> bs!1612813 (not (= lambda!354182 lambda!354127))))

(assert (=> bs!1612814 (not (= lambda!354182 lambda!354140))))

(assert (=> bs!1612815 (= (and (= (regOne!33142 r!7292) (regOne!33142 (regTwo!33143 r!7292))) (= (regTwo!33142 r!7292) (regTwo!33142 (regTwo!33143 r!7292)))) (= lambda!354182 lambda!354128))))

(assert (=> bs!1612816 (not (= lambda!354182 lambda!354070))))

(assert (=> bs!1612812 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354182 lambda!354078))))

(assert (=> bs!1612817 (= lambda!354182 lambda!354067)))

(assert (=> bs!1612810 (not (= lambda!354182 lambda!354024))))

(assert (=> bs!1612818 (= (and (= (regOne!33142 r!7292) (regOne!33142 (regTwo!33143 lt!2375201))) (= (regTwo!33142 r!7292) (regTwo!33142 (regTwo!33143 lt!2375201)))) (= lambda!354182 lambda!354151))))

(assert (=> bs!1612819 (not (= lambda!354182 lambda!354146))))

(assert (=> bs!1612805 (= (= (regOne!33142 r!7292) lt!2375222) (= lambda!354182 lambda!354160))))

(assert (=> bs!1612820 (= (and (= (regOne!33142 r!7292) (regOne!33142 (regOne!33143 lt!2375201))) (= (regTwo!33142 r!7292) (regTwo!33142 (regOne!33143 lt!2375201)))) (= lambda!354182 lambda!354134))))

(assert (=> bs!1612821 (not (= lambda!354182 lambda!354046))))

(assert (=> bs!1612822 (not (= lambda!354182 lambda!354074))))

(assert (=> d!2011495 true))

(assert (=> d!2011495 true))

(assert (=> d!2011495 true))

(assert (=> d!2011495 (= (Exists!3385 lambda!354181) (Exists!3385 lambda!354182))))

(assert (=> d!2011495 true))

(declare-fun _$90!2277 () Unit!158591)

(assert (=> d!2011495 (= (choose!47634 (regOne!33142 r!7292) (regTwo!33142 r!7292) s!2326) _$90!2277)))

(declare-fun m!7210154 () Bool)

(assert (=> bs!1612823 m!7210154))

(declare-fun m!7210156 () Bool)

(assert (=> bs!1612823 m!7210156))

(assert (=> d!2010919 d!2011495))

(assert (=> d!2010919 d!2011345))

(declare-fun d!2011497 () Bool)

(assert (=> d!2011497 (= (nullable!6308 lt!2375201) (nullableFct!2254 lt!2375201))))

(declare-fun bs!1612824 () Bool)

(assert (= bs!1612824 d!2011497))

(declare-fun m!7210158 () Bool)

(assert (=> bs!1612824 m!7210158))

(assert (=> b!6413213 d!2011497))

(assert (=> d!2010893 d!2011447))

(declare-fun b!6414489 () Bool)

(declare-fun res!2636235 () Bool)

(declare-fun e!3892286 () Bool)

(assert (=> b!6414489 (=> res!2636235 e!3892286)))

(assert (=> b!6414489 (= res!2636235 (not (isEmpty!37269 (tail!12205 Nil!65121))))))

(declare-fun b!6414490 () Bool)

(declare-fun res!2636232 () Bool)

(declare-fun e!3892285 () Bool)

(assert (=> b!6414490 (=> res!2636232 e!3892285)))

(assert (=> b!6414490 (= res!2636232 (not ((_ is ElementMatch!16315) (regOne!33142 r!7292))))))

(declare-fun e!3892289 () Bool)

(assert (=> b!6414490 (= e!3892289 e!3892285)))

(declare-fun b!6414491 () Bool)

(declare-fun res!2636239 () Bool)

(declare-fun e!3892288 () Bool)

(assert (=> b!6414491 (=> (not res!2636239) (not e!3892288))))

(assert (=> b!6414491 (= res!2636239 (isEmpty!37269 (tail!12205 Nil!65121)))))

(declare-fun b!6414492 () Bool)

(declare-fun res!2636236 () Bool)

(assert (=> b!6414492 (=> res!2636236 e!3892285)))

(assert (=> b!6414492 (= res!2636236 e!3892288)))

(declare-fun res!2636233 () Bool)

(assert (=> b!6414492 (=> (not res!2636233) (not e!3892288))))

(declare-fun lt!2375458 () Bool)

(assert (=> b!6414492 (= res!2636233 lt!2375458)))

(declare-fun bm!551300 () Bool)

(declare-fun call!551305 () Bool)

(assert (=> bm!551300 (= call!551305 (isEmpty!37269 Nil!65121))))

(declare-fun b!6414493 () Bool)

(declare-fun e!3892287 () Bool)

(assert (=> b!6414493 (= e!3892287 (nullable!6308 (regOne!33142 r!7292)))))

(declare-fun b!6414494 () Bool)

(declare-fun e!3892291 () Bool)

(assert (=> b!6414494 (= e!3892285 e!3892291)))

(declare-fun res!2636238 () Bool)

(assert (=> b!6414494 (=> (not res!2636238) (not e!3892291))))

(assert (=> b!6414494 (= res!2636238 (not lt!2375458))))

(declare-fun b!6414495 () Bool)

(assert (=> b!6414495 (= e!3892291 e!3892286)))

(declare-fun res!2636237 () Bool)

(assert (=> b!6414495 (=> res!2636237 e!3892286)))

(assert (=> b!6414495 (= res!2636237 call!551305)))

(declare-fun b!6414496 () Bool)

(assert (=> b!6414496 (= e!3892288 (= (head!13120 Nil!65121) (c!1170970 (regOne!33142 r!7292))))))

(declare-fun b!6414497 () Bool)

(assert (=> b!6414497 (= e!3892286 (not (= (head!13120 Nil!65121) (c!1170970 (regOne!33142 r!7292)))))))

(declare-fun d!2011499 () Bool)

(declare-fun e!3892290 () Bool)

(assert (=> d!2011499 e!3892290))

(declare-fun c!1171500 () Bool)

(assert (=> d!2011499 (= c!1171500 ((_ is EmptyExpr!16315) (regOne!33142 r!7292)))))

(assert (=> d!2011499 (= lt!2375458 e!3892287)))

(declare-fun c!1171499 () Bool)

(assert (=> d!2011499 (= c!1171499 (isEmpty!37269 Nil!65121))))

(assert (=> d!2011499 (validRegex!8051 (regOne!33142 r!7292))))

(assert (=> d!2011499 (= (matchR!8498 (regOne!33142 r!7292) Nil!65121) lt!2375458)))

(declare-fun b!6414498 () Bool)

(declare-fun res!2636234 () Bool)

(assert (=> b!6414498 (=> (not res!2636234) (not e!3892288))))

(assert (=> b!6414498 (= res!2636234 (not call!551305))))

(declare-fun b!6414499 () Bool)

(assert (=> b!6414499 (= e!3892289 (not lt!2375458))))

(declare-fun b!6414500 () Bool)

(assert (=> b!6414500 (= e!3892287 (matchR!8498 (derivativeStep!5019 (regOne!33142 r!7292) (head!13120 Nil!65121)) (tail!12205 Nil!65121)))))

(declare-fun b!6414501 () Bool)

(assert (=> b!6414501 (= e!3892290 (= lt!2375458 call!551305))))

(declare-fun b!6414502 () Bool)

(assert (=> b!6414502 (= e!3892290 e!3892289)))

(declare-fun c!1171498 () Bool)

(assert (=> b!6414502 (= c!1171498 ((_ is EmptyLang!16315) (regOne!33142 r!7292)))))

(assert (= (and d!2011499 c!1171499) b!6414493))

(assert (= (and d!2011499 (not c!1171499)) b!6414500))

(assert (= (and d!2011499 c!1171500) b!6414501))

(assert (= (and d!2011499 (not c!1171500)) b!6414502))

(assert (= (and b!6414502 c!1171498) b!6414499))

(assert (= (and b!6414502 (not c!1171498)) b!6414490))

(assert (= (and b!6414490 (not res!2636232)) b!6414492))

(assert (= (and b!6414492 res!2636233) b!6414498))

(assert (= (and b!6414498 res!2636234) b!6414491))

(assert (= (and b!6414491 res!2636239) b!6414496))

(assert (= (and b!6414492 (not res!2636236)) b!6414494))

(assert (= (and b!6414494 res!2636238) b!6414495))

(assert (= (and b!6414495 (not res!2636237)) b!6414489))

(assert (= (and b!6414489 (not res!2636235)) b!6414497))

(assert (= (or b!6414501 b!6414495 b!6414498) bm!551300))

(declare-fun m!7210160 () Bool)

(assert (=> d!2011499 m!7210160))

(assert (=> d!2011499 m!7208718))

(declare-fun m!7210162 () Bool)

(assert (=> b!6414497 m!7210162))

(assert (=> b!6414493 m!7209936))

(assert (=> b!6414496 m!7210162))

(assert (=> b!6414500 m!7210162))

(assert (=> b!6414500 m!7210162))

(declare-fun m!7210164 () Bool)

(assert (=> b!6414500 m!7210164))

(declare-fun m!7210166 () Bool)

(assert (=> b!6414500 m!7210166))

(assert (=> b!6414500 m!7210164))

(assert (=> b!6414500 m!7210166))

(declare-fun m!7210168 () Bool)

(assert (=> b!6414500 m!7210168))

(assert (=> b!6414491 m!7210166))

(assert (=> b!6414491 m!7210166))

(declare-fun m!7210170 () Bool)

(assert (=> b!6414491 m!7210170))

(assert (=> bm!551300 m!7210160))

(assert (=> b!6414489 m!7210166))

(assert (=> b!6414489 m!7210166))

(assert (=> b!6414489 m!7210170))

(assert (=> d!2010893 d!2011499))

(assert (=> d!2010893 d!2011345))

(declare-fun bm!551305 () Bool)

(declare-fun call!551311 () Bool)

(declare-fun c!1171503 () Bool)

(assert (=> bm!551305 (= call!551311 (nullable!6308 (ite c!1171503 (regTwo!33143 (regOne!33142 (regOne!33142 r!7292))) (regTwo!33142 (regOne!33142 (regOne!33142 r!7292))))))))

(declare-fun b!6414517 () Bool)

(declare-fun e!3892304 () Bool)

(assert (=> b!6414517 (= e!3892304 call!551311)))

(declare-fun b!6414518 () Bool)

(declare-fun e!3892307 () Bool)

(declare-fun e!3892305 () Bool)

(assert (=> b!6414518 (= e!3892307 e!3892305)))

(declare-fun res!2636251 () Bool)

(declare-fun call!551310 () Bool)

(assert (=> b!6414518 (= res!2636251 call!551310)))

(assert (=> b!6414518 (=> (not res!2636251) (not e!3892305))))

(declare-fun d!2011501 () Bool)

(declare-fun res!2636253 () Bool)

(declare-fun e!3892306 () Bool)

(assert (=> d!2011501 (=> res!2636253 e!3892306)))

(assert (=> d!2011501 (= res!2636253 ((_ is EmptyExpr!16315) (regOne!33142 (regOne!33142 r!7292))))))

(assert (=> d!2011501 (= (nullableFct!2254 (regOne!33142 (regOne!33142 r!7292))) e!3892306)))

(declare-fun bm!551306 () Bool)

(assert (=> bm!551306 (= call!551310 (nullable!6308 (ite c!1171503 (regOne!33143 (regOne!33142 (regOne!33142 r!7292))) (regOne!33142 (regOne!33142 (regOne!33142 r!7292))))))))

(declare-fun b!6414519 () Bool)

(declare-fun e!3892308 () Bool)

(assert (=> b!6414519 (= e!3892306 e!3892308)))

(declare-fun res!2636250 () Bool)

(assert (=> b!6414519 (=> (not res!2636250) (not e!3892308))))

(assert (=> b!6414519 (= res!2636250 (and (not ((_ is EmptyLang!16315) (regOne!33142 (regOne!33142 r!7292)))) (not ((_ is ElementMatch!16315) (regOne!33142 (regOne!33142 r!7292))))))))

(declare-fun b!6414520 () Bool)

(declare-fun e!3892309 () Bool)

(assert (=> b!6414520 (= e!3892309 e!3892307)))

(assert (=> b!6414520 (= c!1171503 ((_ is Union!16315) (regOne!33142 (regOne!33142 r!7292))))))

(declare-fun b!6414521 () Bool)

(assert (=> b!6414521 (= e!3892305 call!551311)))

(declare-fun b!6414522 () Bool)

(assert (=> b!6414522 (= e!3892307 e!3892304)))

(declare-fun res!2636252 () Bool)

(assert (=> b!6414522 (= res!2636252 call!551310)))

(assert (=> b!6414522 (=> res!2636252 e!3892304)))

(declare-fun b!6414523 () Bool)

(assert (=> b!6414523 (= e!3892308 e!3892309)))

(declare-fun res!2636254 () Bool)

(assert (=> b!6414523 (=> res!2636254 e!3892309)))

(assert (=> b!6414523 (= res!2636254 ((_ is Star!16315) (regOne!33142 (regOne!33142 r!7292))))))

(assert (= (and d!2011501 (not res!2636253)) b!6414519))

(assert (= (and b!6414519 res!2636250) b!6414523))

(assert (= (and b!6414523 (not res!2636254)) b!6414520))

(assert (= (and b!6414520 c!1171503) b!6414522))

(assert (= (and b!6414520 (not c!1171503)) b!6414518))

(assert (= (and b!6414522 (not res!2636252)) b!6414517))

(assert (= (and b!6414518 res!2636251) b!6414521))

(assert (= (or b!6414517 b!6414521) bm!551305))

(assert (= (or b!6414522 b!6414518) bm!551306))

(declare-fun m!7210172 () Bool)

(assert (=> bm!551305 m!7210172))

(declare-fun m!7210174 () Bool)

(assert (=> bm!551306 m!7210174))

(assert (=> d!2011179 d!2011501))

(assert (=> d!2011065 d!2011217))

(declare-fun d!2011503 () Bool)

(assert (=> d!2011503 true))

(assert (=> d!2011503 true))

(declare-fun res!2636255 () Bool)

(assert (=> d!2011503 (= (choose!47631 lambda!354021) res!2636255)))

(assert (=> d!2010891 d!2011503))

(assert (=> b!6413383 d!2011199))

(declare-fun bm!551307 () Bool)

(declare-fun call!551312 () (InoxSet Context!11398))

(assert (=> bm!551307 (= call!551312 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375204))))) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375204)))))) (h!71569 s!2326)))))

(declare-fun b!6414524 () Bool)

(declare-fun e!3892310 () (InoxSet Context!11398))

(assert (=> b!6414524 (= e!3892310 ((_ map or) call!551312 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375204)))))) (h!71569 s!2326))))))

(declare-fun b!6414525 () Bool)

(declare-fun e!3892312 () (InoxSet Context!11398))

(assert (=> b!6414525 (= e!3892312 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6414527 () Bool)

(assert (=> b!6414527 (= e!3892312 call!551312)))

(declare-fun b!6414528 () Bool)

(declare-fun e!3892311 () Bool)

(assert (=> b!6414528 (= e!3892311 (nullable!6308 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375204)))))))))

(declare-fun b!6414526 () Bool)

(assert (=> b!6414526 (= e!3892310 e!3892312)))

(declare-fun c!1171505 () Bool)

(assert (=> b!6414526 (= c!1171505 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375204))))))))

(declare-fun d!2011505 () Bool)

(declare-fun c!1171504 () Bool)

(assert (=> d!2011505 (= c!1171504 e!3892311)))

(declare-fun res!2636256 () Bool)

(assert (=> d!2011505 (=> (not res!2636256) (not e!3892311))))

(assert (=> d!2011505 (= res!2636256 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375204))))))))

(assert (=> d!2011505 (= (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 lt!2375204))) (h!71569 s!2326)) e!3892310)))

(assert (= (and d!2011505 res!2636256) b!6414528))

(assert (= (and d!2011505 c!1171504) b!6414524))

(assert (= (and d!2011505 (not c!1171504)) b!6414526))

(assert (= (and b!6414526 c!1171505) b!6414527))

(assert (= (and b!6414526 (not c!1171505)) b!6414525))

(assert (= (or b!6414524 b!6414527) bm!551307))

(declare-fun m!7210176 () Bool)

(assert (=> bm!551307 m!7210176))

(declare-fun m!7210178 () Bool)

(assert (=> b!6414524 m!7210178))

(declare-fun m!7210180 () Bool)

(assert (=> b!6414528 m!7210180))

(assert (=> b!6413859 d!2011505))

(declare-fun bm!551308 () Bool)

(declare-fun c!1171507 () Bool)

(declare-fun call!551318 () (InoxSet Context!11398))

(declare-fun c!1171509 () Bool)

(declare-fun call!551314 () List!65244)

(declare-fun c!1171506 () Bool)

(assert (=> bm!551308 (= call!551318 (derivationStepZipperDown!1563 (ite c!1171509 (regOne!33143 (h!71568 (exprs!6199 lt!2375195))) (ite c!1171506 (regTwo!33142 (h!71568 (exprs!6199 lt!2375195))) (ite c!1171507 (regOne!33142 (h!71568 (exprs!6199 lt!2375195))) (reg!16644 (h!71568 (exprs!6199 lt!2375195)))))) (ite (or c!1171509 c!1171506) (Context!11399 (t!378856 (exprs!6199 lt!2375195))) (Context!11399 call!551314)) (h!71569 s!2326)))))

(declare-fun b!6414530 () Bool)

(declare-fun c!1171508 () Bool)

(assert (=> b!6414530 (= c!1171508 ((_ is Star!16315) (h!71568 (exprs!6199 lt!2375195))))))

(declare-fun e!3892316 () (InoxSet Context!11398))

(declare-fun e!3892314 () (InoxSet Context!11398))

(assert (=> b!6414530 (= e!3892316 e!3892314)))

(declare-fun b!6414531 () Bool)

(declare-fun call!551316 () (InoxSet Context!11398))

(assert (=> b!6414531 (= e!3892314 call!551316)))

(declare-fun b!6414532 () Bool)

(declare-fun e!3892313 () (InoxSet Context!11398))

(assert (=> b!6414532 (= e!3892313 e!3892316)))

(assert (=> b!6414532 (= c!1171507 ((_ is Concat!25160) (h!71568 (exprs!6199 lt!2375195))))))

(declare-fun b!6414533 () Bool)

(declare-fun e!3892317 () (InoxSet Context!11398))

(declare-fun call!551317 () (InoxSet Context!11398))

(assert (=> b!6414533 (= e!3892317 ((_ map or) call!551318 call!551317))))

(declare-fun b!6414534 () Bool)

(declare-fun e!3892315 () Bool)

(assert (=> b!6414534 (= e!3892315 (nullable!6308 (regOne!33142 (h!71568 (exprs!6199 lt!2375195)))))))

(declare-fun call!551313 () List!65244)

(declare-fun bm!551309 () Bool)

(assert (=> bm!551309 (= call!551317 (derivationStepZipperDown!1563 (ite c!1171509 (regTwo!33143 (h!71568 (exprs!6199 lt!2375195))) (regOne!33142 (h!71568 (exprs!6199 lt!2375195)))) (ite c!1171509 (Context!11399 (t!378856 (exprs!6199 lt!2375195))) (Context!11399 call!551313)) (h!71569 s!2326)))))

(declare-fun b!6414529 () Bool)

(assert (=> b!6414529 (= e!3892316 call!551316)))

(declare-fun d!2011507 () Bool)

(declare-fun c!1171510 () Bool)

(assert (=> d!2011507 (= c!1171510 (and ((_ is ElementMatch!16315) (h!71568 (exprs!6199 lt!2375195))) (= (c!1170970 (h!71568 (exprs!6199 lt!2375195))) (h!71569 s!2326))))))

(declare-fun e!3892318 () (InoxSet Context!11398))

(assert (=> d!2011507 (= (derivationStepZipperDown!1563 (h!71568 (exprs!6199 lt!2375195)) (Context!11399 (t!378856 (exprs!6199 lt!2375195))) (h!71569 s!2326)) e!3892318)))

(declare-fun bm!551310 () Bool)

(declare-fun call!551315 () (InoxSet Context!11398))

(assert (=> bm!551310 (= call!551316 call!551315)))

(declare-fun b!6414535 () Bool)

(assert (=> b!6414535 (= e!3892314 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551311 () Bool)

(assert (=> bm!551311 (= call!551313 ($colon$colon!2176 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375195)))) (ite (or c!1171506 c!1171507) (regTwo!33142 (h!71568 (exprs!6199 lt!2375195))) (h!71568 (exprs!6199 lt!2375195)))))))

(declare-fun bm!551312 () Bool)

(assert (=> bm!551312 (= call!551315 call!551318)))

(declare-fun bm!551313 () Bool)

(assert (=> bm!551313 (= call!551314 call!551313)))

(declare-fun b!6414536 () Bool)

(assert (=> b!6414536 (= e!3892318 e!3892317)))

(assert (=> b!6414536 (= c!1171509 ((_ is Union!16315) (h!71568 (exprs!6199 lt!2375195))))))

(declare-fun b!6414537 () Bool)

(assert (=> b!6414537 (= e!3892313 ((_ map or) call!551317 call!551315))))

(declare-fun b!6414538 () Bool)

(assert (=> b!6414538 (= e!3892318 (store ((as const (Array Context!11398 Bool)) false) (Context!11399 (t!378856 (exprs!6199 lt!2375195))) true))))

(declare-fun b!6414539 () Bool)

(assert (=> b!6414539 (= c!1171506 e!3892315)))

(declare-fun res!2636257 () Bool)

(assert (=> b!6414539 (=> (not res!2636257) (not e!3892315))))

(assert (=> b!6414539 (= res!2636257 ((_ is Concat!25160) (h!71568 (exprs!6199 lt!2375195))))))

(assert (=> b!6414539 (= e!3892317 e!3892313)))

(assert (= (and d!2011507 c!1171510) b!6414538))

(assert (= (and d!2011507 (not c!1171510)) b!6414536))

(assert (= (and b!6414536 c!1171509) b!6414533))

(assert (= (and b!6414536 (not c!1171509)) b!6414539))

(assert (= (and b!6414539 res!2636257) b!6414534))

(assert (= (and b!6414539 c!1171506) b!6414537))

(assert (= (and b!6414539 (not c!1171506)) b!6414532))

(assert (= (and b!6414532 c!1171507) b!6414529))

(assert (= (and b!6414532 (not c!1171507)) b!6414530))

(assert (= (and b!6414530 c!1171508) b!6414531))

(assert (= (and b!6414530 (not c!1171508)) b!6414535))

(assert (= (or b!6414529 b!6414531) bm!551313))

(assert (= (or b!6414529 b!6414531) bm!551310))

(assert (= (or b!6414537 bm!551313) bm!551311))

(assert (= (or b!6414537 bm!551310) bm!551312))

(assert (= (or b!6414533 b!6414537) bm!551309))

(assert (= (or b!6414533 bm!551312) bm!551308))

(declare-fun m!7210182 () Bool)

(assert (=> bm!551311 m!7210182))

(declare-fun m!7210184 () Bool)

(assert (=> b!6414534 m!7210184))

(declare-fun m!7210186 () Bool)

(assert (=> bm!551309 m!7210186))

(declare-fun m!7210188 () Bool)

(assert (=> b!6414538 m!7210188))

(declare-fun m!7210190 () Bool)

(assert (=> bm!551308 m!7210190))

(assert (=> bm!551158 d!2011507))

(declare-fun d!2011509 () Bool)

(declare-fun res!2636262 () Bool)

(declare-fun e!3892323 () Bool)

(assert (=> d!2011509 (=> res!2636262 e!3892323)))

(assert (=> d!2011509 (= res!2636262 ((_ is Nil!65122) lt!2375227))))

(assert (=> d!2011509 (= (noDuplicate!2143 lt!2375227) e!3892323)))

(declare-fun b!6414544 () Bool)

(declare-fun e!3892324 () Bool)

(assert (=> b!6414544 (= e!3892323 e!3892324)))

(declare-fun res!2636263 () Bool)

(assert (=> b!6414544 (=> (not res!2636263) (not e!3892324))))

(declare-fun contains!20177 (List!65246 Context!11398) Bool)

(assert (=> b!6414544 (= res!2636263 (not (contains!20177 (t!378858 lt!2375227) (h!71570 lt!2375227))))))

(declare-fun b!6414545 () Bool)

(assert (=> b!6414545 (= e!3892324 (noDuplicate!2143 (t!378858 lt!2375227)))))

(assert (= (and d!2011509 (not res!2636262)) b!6414544))

(assert (= (and b!6414544 res!2636263) b!6414545))

(declare-fun m!7210192 () Bool)

(assert (=> b!6414544 m!7210192))

(declare-fun m!7210194 () Bool)

(assert (=> b!6414545 m!7210194))

(assert (=> d!2010881 d!2011509))

(declare-fun d!2011511 () Bool)

(declare-fun e!3892333 () Bool)

(assert (=> d!2011511 e!3892333))

(declare-fun res!2636268 () Bool)

(assert (=> d!2011511 (=> (not res!2636268) (not e!3892333))))

(declare-fun res!2636269 () List!65246)

(assert (=> d!2011511 (= res!2636268 (noDuplicate!2143 res!2636269))))

(declare-fun e!3892331 () Bool)

(assert (=> d!2011511 e!3892331))

(assert (=> d!2011511 (= (choose!47629 z!1189) res!2636269)))

(declare-fun b!6414553 () Bool)

(declare-fun e!3892332 () Bool)

(declare-fun tp!1781832 () Bool)

(assert (=> b!6414553 (= e!3892332 tp!1781832)))

(declare-fun tp!1781831 () Bool)

(declare-fun b!6414552 () Bool)

(assert (=> b!6414552 (= e!3892331 (and (inv!84034 (h!71570 res!2636269)) e!3892332 tp!1781831))))

(declare-fun b!6414554 () Bool)

(assert (=> b!6414554 (= e!3892333 (= (content!12342 res!2636269) z!1189))))

(assert (= b!6414552 b!6414553))

(assert (= (and d!2011511 ((_ is Cons!65122) res!2636269)) b!6414552))

(assert (= (and d!2011511 res!2636268) b!6414554))

(declare-fun m!7210196 () Bool)

(assert (=> d!2011511 m!7210196))

(declare-fun m!7210198 () Bool)

(assert (=> b!6414552 m!7210198))

(declare-fun m!7210200 () Bool)

(assert (=> b!6414554 m!7210200))

(assert (=> d!2010881 d!2011511))

(declare-fun d!2011513 () Bool)

(assert (=> d!2011513 true))

(declare-fun setRes!43769 () Bool)

(assert (=> d!2011513 setRes!43769))

(declare-fun condSetEmpty!43769 () Bool)

(declare-fun res!2636270 () (InoxSet Context!11398))

(assert (=> d!2011513 (= condSetEmpty!43769 (= res!2636270 ((as const (Array Context!11398 Bool)) false)))))

(assert (=> d!2011513 (= (choose!47643 lt!2375203 lambda!354023) res!2636270)))

(declare-fun setIsEmpty!43769 () Bool)

(assert (=> setIsEmpty!43769 setRes!43769))

(declare-fun tp!1781834 () Bool)

(declare-fun setElem!43769 () Context!11398)

(declare-fun e!3892334 () Bool)

(declare-fun setNonEmpty!43769 () Bool)

(assert (=> setNonEmpty!43769 (= setRes!43769 (and tp!1781834 (inv!84034 setElem!43769) e!3892334))))

(declare-fun setRest!43769 () (InoxSet Context!11398))

(assert (=> setNonEmpty!43769 (= res!2636270 ((_ map or) (store ((as const (Array Context!11398 Bool)) false) setElem!43769 true) setRest!43769))))

(declare-fun b!6414555 () Bool)

(declare-fun tp!1781833 () Bool)

(assert (=> b!6414555 (= e!3892334 tp!1781833)))

(assert (= (and d!2011513 condSetEmpty!43769) setIsEmpty!43769))

(assert (= (and d!2011513 (not condSetEmpty!43769)) setNonEmpty!43769))

(assert (= setNonEmpty!43769 b!6414555))

(declare-fun m!7210202 () Bool)

(assert (=> setNonEmpty!43769 m!7210202))

(assert (=> d!2011147 d!2011513))

(declare-fun b!6414556 () Bool)

(declare-fun res!2636273 () Bool)

(declare-fun e!3892341 () Bool)

(assert (=> b!6414556 (=> (not res!2636273) (not e!3892341))))

(declare-fun lt!2375459 () Int)

(declare-fun call!551321 () Int)

(assert (=> b!6414556 (= res!2636273 (> lt!2375459 call!551321))))

(declare-fun e!3892336 () Bool)

(assert (=> b!6414556 (= e!3892336 e!3892341)))

(declare-fun b!6414557 () Bool)

(declare-fun e!3892339 () Bool)

(assert (=> b!6414557 (= e!3892339 e!3892336)))

(declare-fun c!1171516 () Bool)

(assert (=> b!6414557 (= c!1171516 ((_ is Concat!25160) (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun bm!551314 () Bool)

(declare-fun call!551320 () Int)

(declare-fun call!551319 () Int)

(assert (=> bm!551314 (= call!551320 call!551319)))

(declare-fun bm!551315 () Bool)

(declare-fun c!1171511 () Bool)

(declare-fun c!1171512 () Bool)

(assert (=> bm!551315 (= call!551319 (regexDepth!342 (ite c!1171511 (reg!16644 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (ite c!1171512 (regTwo!33143 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (regOne!33142 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210)))))))))

(declare-fun bm!551316 () Bool)

(declare-fun call!551325 () Int)

(assert (=> bm!551316 (= call!551325 (regexDepth!342 (ite c!1171512 (regOne!33143 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (regTwo!33142 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))))

(declare-fun b!6414558 () Bool)

(declare-fun e!3892344 () Int)

(declare-fun call!551324 () Int)

(assert (=> b!6414558 (= e!3892344 (+ 1 call!551324))))

(declare-fun bm!551317 () Bool)

(declare-fun call!551322 () Int)

(declare-fun c!1171513 () Bool)

(assert (=> bm!551317 (= call!551322 (regexDepth!342 (ite c!1171513 (regTwo!33143 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (ite c!1171516 (regOne!33142 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (reg!16644 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210)))))))))

(declare-fun b!6414559 () Bool)

(declare-fun e!3892335 () Int)

(declare-fun e!3892343 () Int)

(assert (=> b!6414559 (= e!3892335 e!3892343)))

(assert (=> b!6414559 (= c!1171511 ((_ is Star!16315) (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun call!551323 () Int)

(declare-fun bm!551318 () Bool)

(assert (=> bm!551318 (= call!551323 (regexDepth!342 (ite c!1171513 (regOne!33143 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) (regTwo!33142 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))))

(declare-fun b!6414560 () Bool)

(declare-fun c!1171515 () Bool)

(assert (=> b!6414560 (= c!1171515 ((_ is Star!16315) (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun e!3892338 () Bool)

(assert (=> b!6414560 (= e!3892336 e!3892338)))

(declare-fun b!6414561 () Bool)

(assert (=> b!6414561 (= e!3892338 (= lt!2375459 1))))

(declare-fun bm!551319 () Bool)

(assert (=> bm!551319 (= call!551324 (maxBigInt!0 (ite c!1171512 call!551325 call!551320) (ite c!1171512 call!551320 call!551325)))))

(declare-fun b!6414562 () Bool)

(declare-fun e!3892340 () Bool)

(assert (=> b!6414562 (= e!3892340 e!3892339)))

(assert (=> b!6414562 (= c!1171513 ((_ is Union!16315) (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun b!6414563 () Bool)

(assert (=> b!6414563 (= c!1171512 ((_ is Union!16315) (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun e!3892337 () Int)

(assert (=> b!6414563 (= e!3892343 e!3892337)))

(declare-fun d!2011515 () Bool)

(assert (=> d!2011515 e!3892340))

(declare-fun res!2636272 () Bool)

(assert (=> d!2011515 (=> (not res!2636272) (not e!3892340))))

(assert (=> d!2011515 (= res!2636272 (> lt!2375459 0))))

(assert (=> d!2011515 (= lt!2375459 e!3892335)))

(declare-fun c!1171514 () Bool)

(assert (=> d!2011515 (= c!1171514 ((_ is ElementMatch!16315) (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(assert (=> d!2011515 (= (regexDepth!342 (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))) lt!2375459)))

(declare-fun b!6414564 () Bool)

(declare-fun e!3892342 () Bool)

(assert (=> b!6414564 (= e!3892339 e!3892342)))

(declare-fun res!2636271 () Bool)

(assert (=> b!6414564 (= res!2636271 (> lt!2375459 call!551323))))

(assert (=> b!6414564 (=> (not res!2636271) (not e!3892342))))

(declare-fun bm!551320 () Bool)

(assert (=> bm!551320 (= call!551321 call!551322)))

(declare-fun b!6414565 () Bool)

(assert (=> b!6414565 (= e!3892343 (+ 1 call!551319))))

(declare-fun b!6414566 () Bool)

(assert (=> b!6414566 (= e!3892344 1)))

(declare-fun b!6414567 () Bool)

(assert (=> b!6414567 (= e!3892337 e!3892344)))

(declare-fun c!1171517 () Bool)

(assert (=> b!6414567 (= c!1171517 ((_ is Concat!25160) (ite c!1171222 (regOne!33143 lt!2375210) (regTwo!33142 lt!2375210))))))

(declare-fun b!6414568 () Bool)

(assert (=> b!6414568 (= e!3892341 (> lt!2375459 call!551323))))

(declare-fun b!6414569 () Bool)

(assert (=> b!6414569 (= e!3892335 1)))

(declare-fun b!6414570 () Bool)

(assert (=> b!6414570 (= e!3892338 (> lt!2375459 call!551321))))

(declare-fun b!6414571 () Bool)

(assert (=> b!6414571 (= e!3892342 (> lt!2375459 call!551322))))

(declare-fun b!6414572 () Bool)

(assert (=> b!6414572 (= e!3892337 (+ 1 call!551324))))

(assert (= (and d!2011515 c!1171514) b!6414569))

(assert (= (and d!2011515 (not c!1171514)) b!6414559))

(assert (= (and b!6414559 c!1171511) b!6414565))

(assert (= (and b!6414559 (not c!1171511)) b!6414563))

(assert (= (and b!6414563 c!1171512) b!6414572))

(assert (= (and b!6414563 (not c!1171512)) b!6414567))

(assert (= (and b!6414567 c!1171517) b!6414558))

(assert (= (and b!6414567 (not c!1171517)) b!6414566))

(assert (= (or b!6414572 b!6414558) bm!551314))

(assert (= (or b!6414572 b!6414558) bm!551316))

(assert (= (or b!6414572 b!6414558) bm!551319))

(assert (= (or b!6414565 bm!551314) bm!551315))

(assert (= (and d!2011515 res!2636272) b!6414562))

(assert (= (and b!6414562 c!1171513) b!6414564))

(assert (= (and b!6414562 (not c!1171513)) b!6414557))

(assert (= (and b!6414564 res!2636271) b!6414571))

(assert (= (and b!6414557 c!1171516) b!6414556))

(assert (= (and b!6414557 (not c!1171516)) b!6414560))

(assert (= (and b!6414556 res!2636273) b!6414568))

(assert (= (and b!6414560 c!1171515) b!6414570))

(assert (= (and b!6414560 (not c!1171515)) b!6414561))

(assert (= (or b!6414556 b!6414570) bm!551320))

(assert (= (or b!6414571 bm!551320) bm!551317))

(assert (= (or b!6414564 b!6414568) bm!551318))

(declare-fun m!7210204 () Bool)

(assert (=> bm!551317 m!7210204))

(declare-fun m!7210206 () Bool)

(assert (=> bm!551315 m!7210206))

(declare-fun m!7210208 () Bool)

(assert (=> bm!551319 m!7210208))

(declare-fun m!7210210 () Bool)

(assert (=> bm!551316 m!7210210))

(declare-fun m!7210212 () Bool)

(assert (=> bm!551318 m!7210212))

(assert (=> bm!551115 d!2011515))

(declare-fun b!6414573 () Bool)

(declare-fun res!2636277 () Bool)

(declare-fun e!3892346 () Bool)

(assert (=> b!6414573 (=> res!2636277 e!3892346)))

(assert (=> b!6414573 (= res!2636277 (not (isEmpty!37269 (tail!12205 (tail!12205 s!2326)))))))

(declare-fun b!6414574 () Bool)

(declare-fun res!2636274 () Bool)

(declare-fun e!3892345 () Bool)

(assert (=> b!6414574 (=> res!2636274 e!3892345)))

(assert (=> b!6414574 (= res!2636274 (not ((_ is ElementMatch!16315) (derivativeStep!5019 lt!2375201 (head!13120 s!2326)))))))

(declare-fun e!3892349 () Bool)

(assert (=> b!6414574 (= e!3892349 e!3892345)))

(declare-fun b!6414575 () Bool)

(declare-fun res!2636281 () Bool)

(declare-fun e!3892348 () Bool)

(assert (=> b!6414575 (=> (not res!2636281) (not e!3892348))))

(assert (=> b!6414575 (= res!2636281 (isEmpty!37269 (tail!12205 (tail!12205 s!2326))))))

(declare-fun b!6414576 () Bool)

(declare-fun res!2636278 () Bool)

(assert (=> b!6414576 (=> res!2636278 e!3892345)))

(assert (=> b!6414576 (= res!2636278 e!3892348)))

(declare-fun res!2636275 () Bool)

(assert (=> b!6414576 (=> (not res!2636275) (not e!3892348))))

(declare-fun lt!2375460 () Bool)

(assert (=> b!6414576 (= res!2636275 lt!2375460)))

(declare-fun bm!551321 () Bool)

(declare-fun call!551326 () Bool)

(assert (=> bm!551321 (= call!551326 (isEmpty!37269 (tail!12205 s!2326)))))

(declare-fun b!6414577 () Bool)

(declare-fun e!3892347 () Bool)

(assert (=> b!6414577 (= e!3892347 (nullable!6308 (derivativeStep!5019 lt!2375201 (head!13120 s!2326))))))

(declare-fun b!6414578 () Bool)

(declare-fun e!3892351 () Bool)

(assert (=> b!6414578 (= e!3892345 e!3892351)))

(declare-fun res!2636280 () Bool)

(assert (=> b!6414578 (=> (not res!2636280) (not e!3892351))))

(assert (=> b!6414578 (= res!2636280 (not lt!2375460))))

(declare-fun b!6414579 () Bool)

(assert (=> b!6414579 (= e!3892351 e!3892346)))

(declare-fun res!2636279 () Bool)

(assert (=> b!6414579 (=> res!2636279 e!3892346)))

(assert (=> b!6414579 (= res!2636279 call!551326)))

(declare-fun b!6414580 () Bool)

(assert (=> b!6414580 (= e!3892348 (= (head!13120 (tail!12205 s!2326)) (c!1170970 (derivativeStep!5019 lt!2375201 (head!13120 s!2326)))))))

(declare-fun b!6414581 () Bool)

(assert (=> b!6414581 (= e!3892346 (not (= (head!13120 (tail!12205 s!2326)) (c!1170970 (derivativeStep!5019 lt!2375201 (head!13120 s!2326))))))))

(declare-fun d!2011517 () Bool)

(declare-fun e!3892350 () Bool)

(assert (=> d!2011517 e!3892350))

(declare-fun c!1171520 () Bool)

(assert (=> d!2011517 (= c!1171520 ((_ is EmptyExpr!16315) (derivativeStep!5019 lt!2375201 (head!13120 s!2326))))))

(assert (=> d!2011517 (= lt!2375460 e!3892347)))

(declare-fun c!1171519 () Bool)

(assert (=> d!2011517 (= c!1171519 (isEmpty!37269 (tail!12205 s!2326)))))

(assert (=> d!2011517 (validRegex!8051 (derivativeStep!5019 lt!2375201 (head!13120 s!2326)))))

(assert (=> d!2011517 (= (matchR!8498 (derivativeStep!5019 lt!2375201 (head!13120 s!2326)) (tail!12205 s!2326)) lt!2375460)))

(declare-fun b!6414582 () Bool)

(declare-fun res!2636276 () Bool)

(assert (=> b!6414582 (=> (not res!2636276) (not e!3892348))))

(assert (=> b!6414582 (= res!2636276 (not call!551326))))

(declare-fun b!6414583 () Bool)

(assert (=> b!6414583 (= e!3892349 (not lt!2375460))))

(declare-fun b!6414584 () Bool)

(assert (=> b!6414584 (= e!3892347 (matchR!8498 (derivativeStep!5019 (derivativeStep!5019 lt!2375201 (head!13120 s!2326)) (head!13120 (tail!12205 s!2326))) (tail!12205 (tail!12205 s!2326))))))

(declare-fun b!6414585 () Bool)

(assert (=> b!6414585 (= e!3892350 (= lt!2375460 call!551326))))

(declare-fun b!6414586 () Bool)

(assert (=> b!6414586 (= e!3892350 e!3892349)))

(declare-fun c!1171518 () Bool)

(assert (=> b!6414586 (= c!1171518 ((_ is EmptyLang!16315) (derivativeStep!5019 lt!2375201 (head!13120 s!2326))))))

(assert (= (and d!2011517 c!1171519) b!6414577))

(assert (= (and d!2011517 (not c!1171519)) b!6414584))

(assert (= (and d!2011517 c!1171520) b!6414585))

(assert (= (and d!2011517 (not c!1171520)) b!6414586))

(assert (= (and b!6414586 c!1171518) b!6414583))

(assert (= (and b!6414586 (not c!1171518)) b!6414574))

(assert (= (and b!6414574 (not res!2636274)) b!6414576))

(assert (= (and b!6414576 res!2636275) b!6414582))

(assert (= (and b!6414582 res!2636276) b!6414575))

(assert (= (and b!6414575 res!2636281) b!6414580))

(assert (= (and b!6414576 (not res!2636278)) b!6414578))

(assert (= (and b!6414578 res!2636280) b!6414579))

(assert (= (and b!6414579 (not res!2636279)) b!6414573))

(assert (= (and b!6414573 (not res!2636277)) b!6414581))

(assert (= (or b!6414585 b!6414579 b!6414582) bm!551321))

(assert (=> d!2011517 m!7208626))

(assert (=> d!2011517 m!7208898))

(assert (=> d!2011517 m!7208906))

(declare-fun m!7210214 () Bool)

(assert (=> d!2011517 m!7210214))

(assert (=> b!6414581 m!7208626))

(assert (=> b!6414581 m!7209624))

(assert (=> b!6414577 m!7208906))

(declare-fun m!7210216 () Bool)

(assert (=> b!6414577 m!7210216))

(assert (=> b!6414580 m!7208626))

(assert (=> b!6414580 m!7209624))

(assert (=> b!6414584 m!7208626))

(assert (=> b!6414584 m!7209624))

(assert (=> b!6414584 m!7208906))

(assert (=> b!6414584 m!7209624))

(declare-fun m!7210218 () Bool)

(assert (=> b!6414584 m!7210218))

(assert (=> b!6414584 m!7208626))

(assert (=> b!6414584 m!7209630))

(assert (=> b!6414584 m!7210218))

(assert (=> b!6414584 m!7209630))

(declare-fun m!7210220 () Bool)

(assert (=> b!6414584 m!7210220))

(assert (=> b!6414575 m!7208626))

(assert (=> b!6414575 m!7209630))

(assert (=> b!6414575 m!7209630))

(assert (=> b!6414575 m!7209634))

(assert (=> bm!551321 m!7208626))

(assert (=> bm!551321 m!7208898))

(assert (=> b!6414573 m!7208626))

(assert (=> b!6414573 m!7209630))

(assert (=> b!6414573 m!7209630))

(assert (=> b!6414573 m!7209634))

(assert (=> b!6413220 d!2011517))

(declare-fun e!3892355 () Regex!16315)

(declare-fun call!551328 () Regex!16315)

(declare-fun call!551329 () Regex!16315)

(declare-fun b!6414587 () Bool)

(assert (=> b!6414587 (= e!3892355 (Union!16315 (Concat!25160 call!551328 (regTwo!33142 lt!2375201)) call!551329))))

(declare-fun b!6414588 () Bool)

(declare-fun e!3892353 () Regex!16315)

(declare-fun e!3892356 () Regex!16315)

(assert (=> b!6414588 (= e!3892353 e!3892356)))

(declare-fun c!1171523 () Bool)

(assert (=> b!6414588 (= c!1171523 ((_ is Star!16315) lt!2375201))))

(declare-fun b!6414589 () Bool)

(declare-fun e!3892354 () Regex!16315)

(assert (=> b!6414589 (= e!3892354 EmptyLang!16315)))

(declare-fun bm!551322 () Bool)

(declare-fun call!551330 () Regex!16315)

(declare-fun c!1171524 () Bool)

(declare-fun c!1171521 () Bool)

(assert (=> bm!551322 (= call!551330 (derivativeStep!5019 (ite c!1171521 (regTwo!33143 lt!2375201) (ite c!1171523 (reg!16644 lt!2375201) (ite c!1171524 (regTwo!33142 lt!2375201) (regOne!33142 lt!2375201)))) (head!13120 s!2326)))))

(declare-fun b!6414590 () Bool)

(assert (=> b!6414590 (= c!1171524 (nullable!6308 (regOne!33142 lt!2375201)))))

(assert (=> b!6414590 (= e!3892356 e!3892355)))

(declare-fun b!6414591 () Bool)

(assert (=> b!6414591 (= e!3892353 (Union!16315 call!551328 call!551330))))

(declare-fun b!6414592 () Bool)

(declare-fun e!3892352 () Regex!16315)

(assert (=> b!6414592 (= e!3892352 (ite (= (head!13120 s!2326) (c!1170970 lt!2375201)) EmptyExpr!16315 EmptyLang!16315))))

(declare-fun bm!551323 () Bool)

(declare-fun call!551327 () Regex!16315)

(assert (=> bm!551323 (= call!551327 call!551330)))

(declare-fun d!2011519 () Bool)

(declare-fun lt!2375461 () Regex!16315)

(assert (=> d!2011519 (validRegex!8051 lt!2375461)))

(assert (=> d!2011519 (= lt!2375461 e!3892354)))

(declare-fun c!1171522 () Bool)

(assert (=> d!2011519 (= c!1171522 (or ((_ is EmptyExpr!16315) lt!2375201) ((_ is EmptyLang!16315) lt!2375201)))))

(assert (=> d!2011519 (validRegex!8051 lt!2375201)))

(assert (=> d!2011519 (= (derivativeStep!5019 lt!2375201 (head!13120 s!2326)) lt!2375461)))

(declare-fun b!6414593 () Bool)

(assert (=> b!6414593 (= e!3892356 (Concat!25160 call!551327 lt!2375201))))

(declare-fun bm!551324 () Bool)

(assert (=> bm!551324 (= call!551328 (derivativeStep!5019 (ite c!1171521 (regOne!33143 lt!2375201) (regOne!33142 lt!2375201)) (head!13120 s!2326)))))

(declare-fun b!6414594 () Bool)

(assert (=> b!6414594 (= c!1171521 ((_ is Union!16315) lt!2375201))))

(assert (=> b!6414594 (= e!3892352 e!3892353)))

(declare-fun b!6414595 () Bool)

(assert (=> b!6414595 (= e!3892354 e!3892352)))

(declare-fun c!1171525 () Bool)

(assert (=> b!6414595 (= c!1171525 ((_ is ElementMatch!16315) lt!2375201))))

(declare-fun b!6414596 () Bool)

(assert (=> b!6414596 (= e!3892355 (Union!16315 (Concat!25160 call!551329 (regTwo!33142 lt!2375201)) EmptyLang!16315))))

(declare-fun bm!551325 () Bool)

(assert (=> bm!551325 (= call!551329 call!551327)))

(assert (= (and d!2011519 c!1171522) b!6414589))

(assert (= (and d!2011519 (not c!1171522)) b!6414595))

(assert (= (and b!6414595 c!1171525) b!6414592))

(assert (= (and b!6414595 (not c!1171525)) b!6414594))

(assert (= (and b!6414594 c!1171521) b!6414591))

(assert (= (and b!6414594 (not c!1171521)) b!6414588))

(assert (= (and b!6414588 c!1171523) b!6414593))

(assert (= (and b!6414588 (not c!1171523)) b!6414590))

(assert (= (and b!6414590 c!1171524) b!6414587))

(assert (= (and b!6414590 (not c!1171524)) b!6414596))

(assert (= (or b!6414587 b!6414596) bm!551325))

(assert (= (or b!6414593 bm!551325) bm!551323))

(assert (= (or b!6414591 bm!551323) bm!551322))

(assert (= (or b!6414591 b!6414587) bm!551324))

(assert (=> bm!551322 m!7208622))

(declare-fun m!7210222 () Bool)

(assert (=> bm!551322 m!7210222))

(declare-fun m!7210224 () Bool)

(assert (=> b!6414590 m!7210224))

(declare-fun m!7210226 () Bool)

(assert (=> d!2011519 m!7210226))

(assert (=> d!2011519 m!7208902))

(assert (=> bm!551324 m!7208622))

(declare-fun m!7210228 () Bool)

(assert (=> bm!551324 m!7210228))

(assert (=> b!6413220 d!2011519))

(assert (=> b!6413220 d!2011199))

(assert (=> b!6413220 d!2011207))

(declare-fun d!2011521 () Bool)

(assert (=> d!2011521 (= (isDefined!12909 lt!2375311) (not (isEmpty!37271 lt!2375311)))))

(declare-fun bs!1612825 () Bool)

(assert (= bs!1612825 d!2011521))

(declare-fun m!7210230 () Bool)

(assert (=> bs!1612825 m!7210230))

(assert (=> d!2010987 d!2011521))

(declare-fun b!6414597 () Bool)

(declare-fun res!2636285 () Bool)

(declare-fun e!3892358 () Bool)

(assert (=> b!6414597 (=> res!2636285 e!3892358)))

(assert (=> b!6414597 (= res!2636285 (not (isEmpty!37269 (tail!12205 Nil!65121))))))

(declare-fun b!6414598 () Bool)

(declare-fun res!2636282 () Bool)

(declare-fun e!3892357 () Bool)

(assert (=> b!6414598 (=> res!2636282 e!3892357)))

(assert (=> b!6414598 (= res!2636282 (not ((_ is ElementMatch!16315) lt!2375222)))))

(declare-fun e!3892361 () Bool)

(assert (=> b!6414598 (= e!3892361 e!3892357)))

(declare-fun b!6414599 () Bool)

(declare-fun res!2636289 () Bool)

(declare-fun e!3892360 () Bool)

(assert (=> b!6414599 (=> (not res!2636289) (not e!3892360))))

(assert (=> b!6414599 (= res!2636289 (isEmpty!37269 (tail!12205 Nil!65121)))))

(declare-fun b!6414600 () Bool)

(declare-fun res!2636286 () Bool)

(assert (=> b!6414600 (=> res!2636286 e!3892357)))

(assert (=> b!6414600 (= res!2636286 e!3892360)))

(declare-fun res!2636283 () Bool)

(assert (=> b!6414600 (=> (not res!2636283) (not e!3892360))))

(declare-fun lt!2375462 () Bool)

(assert (=> b!6414600 (= res!2636283 lt!2375462)))

(declare-fun bm!551326 () Bool)

(declare-fun call!551331 () Bool)

(assert (=> bm!551326 (= call!551331 (isEmpty!37269 Nil!65121))))

(declare-fun b!6414601 () Bool)

(declare-fun e!3892359 () Bool)

(assert (=> b!6414601 (= e!3892359 (nullable!6308 lt!2375222))))

(declare-fun b!6414602 () Bool)

(declare-fun e!3892363 () Bool)

(assert (=> b!6414602 (= e!3892357 e!3892363)))

(declare-fun res!2636288 () Bool)

(assert (=> b!6414602 (=> (not res!2636288) (not e!3892363))))

(assert (=> b!6414602 (= res!2636288 (not lt!2375462))))

(declare-fun b!6414603 () Bool)

(assert (=> b!6414603 (= e!3892363 e!3892358)))

(declare-fun res!2636287 () Bool)

(assert (=> b!6414603 (=> res!2636287 e!3892358)))

(assert (=> b!6414603 (= res!2636287 call!551331)))

(declare-fun b!6414604 () Bool)

(assert (=> b!6414604 (= e!3892360 (= (head!13120 Nil!65121) (c!1170970 lt!2375222)))))

(declare-fun b!6414605 () Bool)

(assert (=> b!6414605 (= e!3892358 (not (= (head!13120 Nil!65121) (c!1170970 lt!2375222))))))

(declare-fun d!2011523 () Bool)

(declare-fun e!3892362 () Bool)

(assert (=> d!2011523 e!3892362))

(declare-fun c!1171528 () Bool)

(assert (=> d!2011523 (= c!1171528 ((_ is EmptyExpr!16315) lt!2375222))))

(assert (=> d!2011523 (= lt!2375462 e!3892359)))

(declare-fun c!1171527 () Bool)

(assert (=> d!2011523 (= c!1171527 (isEmpty!37269 Nil!65121))))

(assert (=> d!2011523 (validRegex!8051 lt!2375222)))

(assert (=> d!2011523 (= (matchR!8498 lt!2375222 Nil!65121) lt!2375462)))

(declare-fun b!6414606 () Bool)

(declare-fun res!2636284 () Bool)

(assert (=> b!6414606 (=> (not res!2636284) (not e!3892360))))

(assert (=> b!6414606 (= res!2636284 (not call!551331))))

(declare-fun b!6414607 () Bool)

(assert (=> b!6414607 (= e!3892361 (not lt!2375462))))

(declare-fun b!6414608 () Bool)

(assert (=> b!6414608 (= e!3892359 (matchR!8498 (derivativeStep!5019 lt!2375222 (head!13120 Nil!65121)) (tail!12205 Nil!65121)))))

(declare-fun b!6414609 () Bool)

(assert (=> b!6414609 (= e!3892362 (= lt!2375462 call!551331))))

(declare-fun b!6414610 () Bool)

(assert (=> b!6414610 (= e!3892362 e!3892361)))

(declare-fun c!1171526 () Bool)

(assert (=> b!6414610 (= c!1171526 ((_ is EmptyLang!16315) lt!2375222))))

(assert (= (and d!2011523 c!1171527) b!6414601))

(assert (= (and d!2011523 (not c!1171527)) b!6414608))

(assert (= (and d!2011523 c!1171528) b!6414609))

(assert (= (and d!2011523 (not c!1171528)) b!6414610))

(assert (= (and b!6414610 c!1171526) b!6414607))

(assert (= (and b!6414610 (not c!1171526)) b!6414598))

(assert (= (and b!6414598 (not res!2636282)) b!6414600))

(assert (= (and b!6414600 res!2636283) b!6414606))

(assert (= (and b!6414606 res!2636284) b!6414599))

(assert (= (and b!6414599 res!2636289) b!6414604))

(assert (= (and b!6414600 (not res!2636286)) b!6414602))

(assert (= (and b!6414602 res!2636288) b!6414603))

(assert (= (and b!6414603 (not res!2636287)) b!6414597))

(assert (= (and b!6414597 (not res!2636285)) b!6414605))

(assert (= (or b!6414609 b!6414603 b!6414606) bm!551326))

(assert (=> d!2011523 m!7210160))

(assert (=> d!2011523 m!7208830))

(assert (=> b!6414605 m!7210162))

(assert (=> b!6414601 m!7208834))

(assert (=> b!6414604 m!7210162))

(assert (=> b!6414608 m!7210162))

(assert (=> b!6414608 m!7210162))

(declare-fun m!7210232 () Bool)

(assert (=> b!6414608 m!7210232))

(assert (=> b!6414608 m!7210166))

(assert (=> b!6414608 m!7210232))

(assert (=> b!6414608 m!7210166))

(declare-fun m!7210234 () Bool)

(assert (=> b!6414608 m!7210234))

(assert (=> b!6414599 m!7210166))

(assert (=> b!6414599 m!7210166))

(assert (=> b!6414599 m!7210170))

(assert (=> bm!551326 m!7210160))

(assert (=> b!6414597 m!7210166))

(assert (=> b!6414597 m!7210166))

(assert (=> b!6414597 m!7210170))

(assert (=> d!2010987 d!2011523))

(assert (=> d!2010987 d!2011377))

(assert (=> bs!1612363 d!2011133))

(assert (=> d!2011051 d!2011065))

(assert (=> d!2011051 d!2011063))

(declare-fun d!2011525 () Bool)

(declare-fun e!3892366 () Bool)

(assert (=> d!2011525 (= (matchZipper!2327 ((_ map or) lt!2375209 lt!2375211) (t!378857 s!2326)) e!3892366)))

(declare-fun res!2636292 () Bool)

(assert (=> d!2011525 (=> res!2636292 e!3892366)))

(assert (=> d!2011525 (= res!2636292 (matchZipper!2327 lt!2375209 (t!378857 s!2326)))))

(assert (=> d!2011525 true))

(declare-fun _$48!2201 () Unit!158591)

(assert (=> d!2011525 (= (choose!47645 lt!2375209 lt!2375211 (t!378857 s!2326)) _$48!2201)))

(declare-fun b!6414613 () Bool)

(assert (=> b!6414613 (= e!3892366 (matchZipper!2327 lt!2375211 (t!378857 s!2326)))))

(assert (= (and d!2011525 (not res!2636292)) b!6414613))

(assert (=> d!2011525 m!7208526))

(assert (=> d!2011525 m!7208524))

(assert (=> b!6414613 m!7208532))

(assert (=> d!2011051 d!2011525))

(declare-fun d!2011527 () Bool)

(declare-fun lt!2375465 () Int)

(assert (=> d!2011527 (>= lt!2375465 0)))

(declare-fun e!3892369 () Int)

(assert (=> d!2011527 (= lt!2375465 e!3892369)))

(declare-fun c!1171531 () Bool)

(assert (=> d!2011527 (= c!1171531 ((_ is Nil!65121) lt!2375308))))

(assert (=> d!2011527 (= (size!40373 lt!2375308) lt!2375465)))

(declare-fun b!6414618 () Bool)

(assert (=> b!6414618 (= e!3892369 0)))

(declare-fun b!6414619 () Bool)

(assert (=> b!6414619 (= e!3892369 (+ 1 (size!40373 (t!378857 lt!2375308))))))

(assert (= (and d!2011527 c!1171531) b!6414618))

(assert (= (and d!2011527 (not c!1171531)) b!6414619))

(declare-fun m!7210236 () Bool)

(assert (=> b!6414619 m!7210236))

(assert (=> b!6413277 d!2011527))

(declare-fun d!2011529 () Bool)

(declare-fun lt!2375466 () Int)

(assert (=> d!2011529 (>= lt!2375466 0)))

(declare-fun e!3892370 () Int)

(assert (=> d!2011529 (= lt!2375466 e!3892370)))

(declare-fun c!1171532 () Bool)

(assert (=> d!2011529 (= c!1171532 ((_ is Nil!65121) (_1!36597 lt!2375224)))))

(assert (=> d!2011529 (= (size!40373 (_1!36597 lt!2375224)) lt!2375466)))

(declare-fun b!6414620 () Bool)

(assert (=> b!6414620 (= e!3892370 0)))

(declare-fun b!6414621 () Bool)

(assert (=> b!6414621 (= e!3892370 (+ 1 (size!40373 (t!378857 (_1!36597 lt!2375224)))))))

(assert (= (and d!2011529 c!1171532) b!6414620))

(assert (= (and d!2011529 (not c!1171532)) b!6414621))

(declare-fun m!7210238 () Bool)

(assert (=> b!6414621 m!7210238))

(assert (=> b!6413277 d!2011529))

(declare-fun d!2011531 () Bool)

(declare-fun lt!2375467 () Int)

(assert (=> d!2011531 (>= lt!2375467 0)))

(declare-fun e!3892371 () Int)

(assert (=> d!2011531 (= lt!2375467 e!3892371)))

(declare-fun c!1171533 () Bool)

(assert (=> d!2011531 (= c!1171533 ((_ is Nil!65121) (_2!36597 lt!2375224)))))

(assert (=> d!2011531 (= (size!40373 (_2!36597 lt!2375224)) lt!2375467)))

(declare-fun b!6414622 () Bool)

(assert (=> b!6414622 (= e!3892371 0)))

(declare-fun b!6414623 () Bool)

(assert (=> b!6414623 (= e!3892371 (+ 1 (size!40373 (t!378857 (_2!36597 lt!2375224)))))))

(assert (= (and d!2011531 c!1171533) b!6414622))

(assert (= (and d!2011531 (not c!1171533)) b!6414623))

(declare-fun m!7210240 () Bool)

(assert (=> b!6414623 m!7210240))

(assert (=> b!6413277 d!2011531))

(declare-fun d!2011533 () Bool)

(assert (=> d!2011533 (= (isEmpty!37268 (tail!12207 (t!378856 (exprs!6199 (h!71570 zl!343))))) ((_ is Nil!65120) (tail!12207 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(assert (=> b!6413601 d!2011533))

(declare-fun d!2011535 () Bool)

(assert (=> d!2011535 (= (tail!12207 (t!378856 (exprs!6199 (h!71570 zl!343)))) (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> b!6413601 d!2011535))

(declare-fun d!2011537 () Bool)

(assert (=> d!2011537 (= (isEmpty!37269 (_2!36597 lt!2375224)) ((_ is Nil!65121) (_2!36597 lt!2375224)))))

(assert (=> bm!551157 d!2011537))

(declare-fun d!2011539 () Bool)

(assert (=> d!2011539 (= (nullable!6308 (h!71568 (exprs!6199 lt!2375218))) (nullableFct!2254 (h!71568 (exprs!6199 lt!2375218))))))

(declare-fun bs!1612826 () Bool)

(assert (= bs!1612826 d!2011539))

(declare-fun m!7210242 () Bool)

(assert (=> bs!1612826 m!7210242))

(assert (=> b!6413775 d!2011539))

(declare-fun d!2011541 () Bool)

(assert (=> d!2011541 (= (isEmptyLang!1723 lt!2375376) ((_ is EmptyLang!16315) lt!2375376))))

(assert (=> b!6413730 d!2011541))

(declare-fun d!2011543 () Bool)

(assert (=> d!2011543 (= (nullable!6308 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))) (nullableFct!2254 (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun bs!1612827 () Bool)

(assert (= bs!1612827 d!2011543))

(declare-fun m!7210244 () Bool)

(assert (=> bs!1612827 m!7210244))

(assert (=> b!6413765 d!2011543))

(declare-fun b!6414624 () Bool)

(declare-fun res!2636296 () Bool)

(declare-fun e!3892373 () Bool)

(assert (=> b!6414624 (=> res!2636296 e!3892373)))

(assert (=> b!6414624 (= res!2636296 (not (isEmpty!37269 (tail!12205 (_2!36597 (get!22556 lt!2375258))))))))

(declare-fun b!6414625 () Bool)

(declare-fun res!2636293 () Bool)

(declare-fun e!3892372 () Bool)

(assert (=> b!6414625 (=> res!2636293 e!3892372)))

(assert (=> b!6414625 (= res!2636293 (not ((_ is ElementMatch!16315) (regTwo!33142 r!7292))))))

(declare-fun e!3892376 () Bool)

(assert (=> b!6414625 (= e!3892376 e!3892372)))

(declare-fun b!6414626 () Bool)

(declare-fun res!2636300 () Bool)

(declare-fun e!3892375 () Bool)

(assert (=> b!6414626 (=> (not res!2636300) (not e!3892375))))

(assert (=> b!6414626 (= res!2636300 (isEmpty!37269 (tail!12205 (_2!36597 (get!22556 lt!2375258)))))))

(declare-fun b!6414627 () Bool)

(declare-fun res!2636297 () Bool)

(assert (=> b!6414627 (=> res!2636297 e!3892372)))

(assert (=> b!6414627 (= res!2636297 e!3892375)))

(declare-fun res!2636294 () Bool)

(assert (=> b!6414627 (=> (not res!2636294) (not e!3892375))))

(declare-fun lt!2375468 () Bool)

(assert (=> b!6414627 (= res!2636294 lt!2375468)))

(declare-fun bm!551327 () Bool)

(declare-fun call!551332 () Bool)

(assert (=> bm!551327 (= call!551332 (isEmpty!37269 (_2!36597 (get!22556 lt!2375258))))))

(declare-fun b!6414628 () Bool)

(declare-fun e!3892374 () Bool)

(assert (=> b!6414628 (= e!3892374 (nullable!6308 (regTwo!33142 r!7292)))))

(declare-fun b!6414629 () Bool)

(declare-fun e!3892378 () Bool)

(assert (=> b!6414629 (= e!3892372 e!3892378)))

(declare-fun res!2636299 () Bool)

(assert (=> b!6414629 (=> (not res!2636299) (not e!3892378))))

(assert (=> b!6414629 (= res!2636299 (not lt!2375468))))

(declare-fun b!6414630 () Bool)

(assert (=> b!6414630 (= e!3892378 e!3892373)))

(declare-fun res!2636298 () Bool)

(assert (=> b!6414630 (=> res!2636298 e!3892373)))

(assert (=> b!6414630 (= res!2636298 call!551332)))

(declare-fun b!6414631 () Bool)

(assert (=> b!6414631 (= e!3892375 (= (head!13120 (_2!36597 (get!22556 lt!2375258))) (c!1170970 (regTwo!33142 r!7292))))))

(declare-fun b!6414632 () Bool)

(assert (=> b!6414632 (= e!3892373 (not (= (head!13120 (_2!36597 (get!22556 lt!2375258))) (c!1170970 (regTwo!33142 r!7292)))))))

(declare-fun d!2011545 () Bool)

(declare-fun e!3892377 () Bool)

(assert (=> d!2011545 e!3892377))

(declare-fun c!1171536 () Bool)

(assert (=> d!2011545 (= c!1171536 ((_ is EmptyExpr!16315) (regTwo!33142 r!7292)))))

(assert (=> d!2011545 (= lt!2375468 e!3892374)))

(declare-fun c!1171535 () Bool)

(assert (=> d!2011545 (= c!1171535 (isEmpty!37269 (_2!36597 (get!22556 lt!2375258))))))

(assert (=> d!2011545 (validRegex!8051 (regTwo!33142 r!7292))))

(assert (=> d!2011545 (= (matchR!8498 (regTwo!33142 r!7292) (_2!36597 (get!22556 lt!2375258))) lt!2375468)))

(declare-fun b!6414633 () Bool)

(declare-fun res!2636295 () Bool)

(assert (=> b!6414633 (=> (not res!2636295) (not e!3892375))))

(assert (=> b!6414633 (= res!2636295 (not call!551332))))

(declare-fun b!6414634 () Bool)

(assert (=> b!6414634 (= e!3892376 (not lt!2375468))))

(declare-fun b!6414635 () Bool)

(assert (=> b!6414635 (= e!3892374 (matchR!8498 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 (get!22556 lt!2375258)))) (tail!12205 (_2!36597 (get!22556 lt!2375258)))))))

(declare-fun b!6414636 () Bool)

(assert (=> b!6414636 (= e!3892377 (= lt!2375468 call!551332))))

(declare-fun b!6414637 () Bool)

(assert (=> b!6414637 (= e!3892377 e!3892376)))

(declare-fun c!1171534 () Bool)

(assert (=> b!6414637 (= c!1171534 ((_ is EmptyLang!16315) (regTwo!33142 r!7292)))))

(assert (= (and d!2011545 c!1171535) b!6414628))

(assert (= (and d!2011545 (not c!1171535)) b!6414635))

(assert (= (and d!2011545 c!1171536) b!6414636))

(assert (= (and d!2011545 (not c!1171536)) b!6414637))

(assert (= (and b!6414637 c!1171534) b!6414634))

(assert (= (and b!6414637 (not c!1171534)) b!6414625))

(assert (= (and b!6414625 (not res!2636293)) b!6414627))

(assert (= (and b!6414627 res!2636294) b!6414633))

(assert (= (and b!6414633 res!2636295) b!6414626))

(assert (= (and b!6414626 res!2636300) b!6414631))

(assert (= (and b!6414627 (not res!2636297)) b!6414629))

(assert (= (and b!6414629 res!2636299) b!6414630))

(assert (= (and b!6414630 (not res!2636298)) b!6414624))

(assert (= (and b!6414624 (not res!2636296)) b!6414632))

(assert (= (or b!6414636 b!6414630 b!6414633) bm!551327))

(declare-fun m!7210246 () Bool)

(assert (=> d!2011545 m!7210246))

(assert (=> d!2011545 m!7209424))

(declare-fun m!7210248 () Bool)

(assert (=> b!6414632 m!7210248))

(assert (=> b!6414628 m!7209428))

(assert (=> b!6414631 m!7210248))

(assert (=> b!6414635 m!7210248))

(assert (=> b!6414635 m!7210248))

(declare-fun m!7210250 () Bool)

(assert (=> b!6414635 m!7210250))

(declare-fun m!7210252 () Bool)

(assert (=> b!6414635 m!7210252))

(assert (=> b!6414635 m!7210250))

(assert (=> b!6414635 m!7210252))

(declare-fun m!7210254 () Bool)

(assert (=> b!6414635 m!7210254))

(assert (=> b!6414626 m!7210252))

(assert (=> b!6414626 m!7210252))

(declare-fun m!7210256 () Bool)

(assert (=> b!6414626 m!7210256))

(assert (=> bm!551327 m!7210246))

(assert (=> b!6414624 m!7210252))

(assert (=> b!6414624 m!7210252))

(assert (=> b!6414624 m!7210256))

(assert (=> b!6412864 d!2011545))

(assert (=> b!6412864 d!2011403))

(declare-fun d!2011547 () Bool)

(assert (=> d!2011547 (= (isEmpty!37268 (tail!12207 (exprs!6199 (h!71570 zl!343)))) ((_ is Nil!65120) (tail!12207 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> b!6413360 d!2011547))

(declare-fun d!2011549 () Bool)

(assert (=> d!2011549 (= (tail!12207 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))

(assert (=> b!6413360 d!2011549))

(declare-fun b!6414638 () Bool)

(declare-fun res!2636303 () Bool)

(declare-fun e!3892379 () Bool)

(assert (=> b!6414638 (=> res!2636303 e!3892379)))

(assert (=> b!6414638 (= res!2636303 (not ((_ is Concat!25160) lt!2375393)))))

(declare-fun e!3892380 () Bool)

(assert (=> b!6414638 (= e!3892380 e!3892379)))

(declare-fun b!6414639 () Bool)

(declare-fun e!3892382 () Bool)

(declare-fun e!3892384 () Bool)

(assert (=> b!6414639 (= e!3892382 e!3892384)))

(declare-fun res!2636304 () Bool)

(assert (=> b!6414639 (= res!2636304 (not (nullable!6308 (reg!16644 lt!2375393))))))

(assert (=> b!6414639 (=> (not res!2636304) (not e!3892384))))

(declare-fun b!6414640 () Bool)

(declare-fun call!551335 () Bool)

(assert (=> b!6414640 (= e!3892384 call!551335)))

(declare-fun b!6414641 () Bool)

(declare-fun e!3892385 () Bool)

(assert (=> b!6414641 (= e!3892379 e!3892385)))

(declare-fun res!2636301 () Bool)

(assert (=> b!6414641 (=> (not res!2636301) (not e!3892385))))

(declare-fun call!551333 () Bool)

(assert (=> b!6414641 (= res!2636301 call!551333)))

(declare-fun bm!551328 () Bool)

(declare-fun call!551334 () Bool)

(assert (=> bm!551328 (= call!551334 call!551335)))

(declare-fun b!6414643 () Bool)

(declare-fun res!2636302 () Bool)

(declare-fun e!3892383 () Bool)

(assert (=> b!6414643 (=> (not res!2636302) (not e!3892383))))

(assert (=> b!6414643 (= res!2636302 call!551333)))

(assert (=> b!6414643 (= e!3892380 e!3892383)))

(declare-fun b!6414644 () Bool)

(declare-fun e!3892381 () Bool)

(assert (=> b!6414644 (= e!3892381 e!3892382)))

(declare-fun c!1171537 () Bool)

(assert (=> b!6414644 (= c!1171537 ((_ is Star!16315) lt!2375393))))

(declare-fun bm!551329 () Bool)

(declare-fun c!1171538 () Bool)

(assert (=> bm!551329 (= call!551335 (validRegex!8051 (ite c!1171537 (reg!16644 lt!2375393) (ite c!1171538 (regTwo!33143 lt!2375393) (regTwo!33142 lt!2375393)))))))

(declare-fun bm!551330 () Bool)

(assert (=> bm!551330 (= call!551333 (validRegex!8051 (ite c!1171538 (regOne!33143 lt!2375393) (regOne!33142 lt!2375393))))))

(declare-fun b!6414645 () Bool)

(assert (=> b!6414645 (= e!3892382 e!3892380)))

(assert (=> b!6414645 (= c!1171538 ((_ is Union!16315) lt!2375393))))

(declare-fun b!6414646 () Bool)

(assert (=> b!6414646 (= e!3892383 call!551334)))

(declare-fun d!2011551 () Bool)

(declare-fun res!2636305 () Bool)

(assert (=> d!2011551 (=> res!2636305 e!3892381)))

(assert (=> d!2011551 (= res!2636305 ((_ is ElementMatch!16315) lt!2375393))))

(assert (=> d!2011551 (= (validRegex!8051 lt!2375393) e!3892381)))

(declare-fun b!6414642 () Bool)

(assert (=> b!6414642 (= e!3892385 call!551334)))

(assert (= (and d!2011551 (not res!2636305)) b!6414644))

(assert (= (and b!6414644 c!1171537) b!6414639))

(assert (= (and b!6414644 (not c!1171537)) b!6414645))

(assert (= (and b!6414639 res!2636304) b!6414640))

(assert (= (and b!6414645 c!1171538) b!6414643))

(assert (= (and b!6414645 (not c!1171538)) b!6414638))

(assert (= (and b!6414643 res!2636302) b!6414646))

(assert (= (and b!6414638 (not res!2636303)) b!6414641))

(assert (= (and b!6414641 res!2636301) b!6414642))

(assert (= (or b!6414646 b!6414642) bm!551328))

(assert (= (or b!6414643 b!6414641) bm!551330))

(assert (= (or b!6414640 bm!551328) bm!551329))

(declare-fun m!7210258 () Bool)

(assert (=> b!6414639 m!7210258))

(declare-fun m!7210260 () Bool)

(assert (=> bm!551329 m!7210260))

(declare-fun m!7210262 () Bool)

(assert (=> bm!551330 m!7210262))

(assert (=> d!2011157 d!2011551))

(declare-fun bs!1612828 () Bool)

(declare-fun d!2011553 () Bool)

(assert (= bs!1612828 (and d!2011553 d!2011231)))

(declare-fun lambda!354183 () Int)

(assert (=> bs!1612828 (= lambda!354183 lambda!354126)))

(declare-fun bs!1612829 () Bool)

(assert (= bs!1612829 (and d!2011553 d!2011049)))

(assert (=> bs!1612829 (= lambda!354183 lambda!354098)))

(declare-fun bs!1612830 () Bool)

(assert (= bs!1612830 (and d!2011553 d!2011425)))

(assert (=> bs!1612830 (= lambda!354183 lambda!354153)))

(declare-fun bs!1612831 () Bool)

(assert (= bs!1612831 (and d!2011553 d!2011275)))

(assert (=> bs!1612831 (= lambda!354183 lambda!354131)))

(declare-fun bs!1612832 () Bool)

(assert (= bs!1612832 (and d!2011553 d!2010999)))

(assert (=> bs!1612832 (= lambda!354183 lambda!354084)))

(declare-fun bs!1612833 () Bool)

(assert (= bs!1612833 (and d!2011553 b!6414423)))

(assert (=> bs!1612833 (not (= lambda!354183 lambda!354172))))

(declare-fun bs!1612834 () Bool)

(assert (= bs!1612834 (and d!2011553 b!6414470)))

(assert (=> bs!1612834 (not (= lambda!354183 lambda!354174))))

(declare-fun bs!1612835 () Bool)

(assert (= bs!1612835 (and d!2011553 b!6414421)))

(assert (=> bs!1612835 (not (= lambda!354183 lambda!354171))))

(declare-fun bs!1612836 () Bool)

(assert (= bs!1612836 (and d!2011553 d!2011273)))

(assert (=> bs!1612836 (= lambda!354183 lambda!354130)))

(declare-fun bs!1612837 () Bool)

(assert (= bs!1612837 (and d!2011553 d!2011269)))

(assert (=> bs!1612837 (= lambda!354183 lambda!354129)))

(declare-fun bs!1612838 () Bool)

(assert (= bs!1612838 (and d!2011553 d!2011135)))

(assert (=> bs!1612838 (= lambda!354183 lambda!354123)))

(declare-fun bs!1612839 () Bool)

(assert (= bs!1612839 (and d!2011553 b!6414472)))

(assert (=> bs!1612839 (not (= lambda!354183 lambda!354175))))

(declare-fun bs!1612840 () Bool)

(assert (= bs!1612840 (and d!2011553 d!2011365)))

(assert (=> bs!1612840 (= lambda!354183 lambda!354144)))

(declare-fun bs!1612841 () Bool)

(assert (= bs!1612841 (and d!2011553 d!2011171)))

(assert (=> bs!1612841 (= lambda!354183 lambda!354125)))

(declare-fun bs!1612842 () Bool)

(assert (= bs!1612842 (and d!2011553 d!2011077)))

(assert (=> bs!1612842 (= lambda!354183 lambda!354116)))

(declare-fun bs!1612843 () Bool)

(assert (= bs!1612843 (and d!2011553 d!2011089)))

(assert (=> bs!1612843 (= lambda!354183 lambda!354119)))

(declare-fun b!6414647 () Bool)

(declare-fun e!3892387 () Bool)

(declare-fun lt!2375469 () Regex!16315)

(assert (=> b!6414647 (= e!3892387 (= lt!2375469 (head!13122 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122)))))))

(declare-fun b!6414648 () Bool)

(declare-fun e!3892389 () Regex!16315)

(assert (=> b!6414648 (= e!3892389 EmptyLang!16315)))

(declare-fun e!3892391 () Bool)

(assert (=> d!2011553 e!3892391))

(declare-fun res!2636307 () Bool)

(assert (=> d!2011553 (=> (not res!2636307) (not e!3892391))))

(assert (=> d!2011553 (= res!2636307 (validRegex!8051 lt!2375469))))

(declare-fun e!3892388 () Regex!16315)

(assert (=> d!2011553 (= lt!2375469 e!3892388)))

(declare-fun c!1171539 () Bool)

(declare-fun e!3892386 () Bool)

(assert (=> d!2011553 (= c!1171539 e!3892386)))

(declare-fun res!2636306 () Bool)

(assert (=> d!2011553 (=> (not res!2636306) (not e!3892386))))

(assert (=> d!2011553 (= res!2636306 ((_ is Cons!65120) (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122))))))

(assert (=> d!2011553 (forall!15504 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122)) lambda!354183)))

(assert (=> d!2011553 (= (generalisedUnion!2159 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122))) lt!2375469)))

(declare-fun b!6414649 () Bool)

(assert (=> b!6414649 (= e!3892388 e!3892389)))

(declare-fun c!1171542 () Bool)

(assert (=> b!6414649 (= c!1171542 ((_ is Cons!65120) (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122))))))

(declare-fun b!6414650 () Bool)

(assert (=> b!6414650 (= e!3892389 (Union!16315 (h!71568 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122))) (generalisedUnion!2159 (t!378856 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122))))))))

(declare-fun b!6414651 () Bool)

(assert (=> b!6414651 (= e!3892387 (isUnion!1153 lt!2375469))))

(declare-fun b!6414652 () Bool)

(assert (=> b!6414652 (= e!3892386 (isEmpty!37268 (t!378856 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122)))))))

(declare-fun b!6414653 () Bool)

(declare-fun e!3892390 () Bool)

(assert (=> b!6414653 (= e!3892391 e!3892390)))

(declare-fun c!1171540 () Bool)

(assert (=> b!6414653 (= c!1171540 (isEmpty!37268 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122))))))

(declare-fun b!6414654 () Bool)

(assert (=> b!6414654 (= e!3892390 e!3892387)))

(declare-fun c!1171541 () Bool)

(assert (=> b!6414654 (= c!1171541 (isEmpty!37268 (tail!12207 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122)))))))

(declare-fun b!6414655 () Bool)

(assert (=> b!6414655 (= e!3892388 (h!71568 (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122))))))

(declare-fun b!6414656 () Bool)

(assert (=> b!6414656 (= e!3892390 (isEmptyLang!1723 lt!2375469))))

(assert (= (and d!2011553 res!2636306) b!6414652))

(assert (= (and d!2011553 c!1171539) b!6414655))

(assert (= (and d!2011553 (not c!1171539)) b!6414649))

(assert (= (and b!6414649 c!1171542) b!6414650))

(assert (= (and b!6414649 (not c!1171542)) b!6414648))

(assert (= (and d!2011553 res!2636307) b!6414653))

(assert (= (and b!6414653 c!1171540) b!6414656))

(assert (= (and b!6414653 (not c!1171540)) b!6414654))

(assert (= (and b!6414654 c!1171541) b!6414647))

(assert (= (and b!6414654 (not c!1171541)) b!6414651))

(assert (=> b!6414647 m!7209454))

(declare-fun m!7210264 () Bool)

(assert (=> b!6414647 m!7210264))

(declare-fun m!7210266 () Bool)

(assert (=> b!6414656 m!7210266))

(declare-fun m!7210268 () Bool)

(assert (=> b!6414650 m!7210268))

(declare-fun m!7210270 () Bool)

(assert (=> d!2011553 m!7210270))

(assert (=> d!2011553 m!7209454))

(declare-fun m!7210272 () Bool)

(assert (=> d!2011553 m!7210272))

(assert (=> b!6414654 m!7209454))

(declare-fun m!7210274 () Bool)

(assert (=> b!6414654 m!7210274))

(assert (=> b!6414654 m!7210274))

(declare-fun m!7210276 () Bool)

(assert (=> b!6414654 m!7210276))

(assert (=> b!6414653 m!7209454))

(declare-fun m!7210278 () Bool)

(assert (=> b!6414653 m!7210278))

(declare-fun m!7210280 () Bool)

(assert (=> b!6414651 m!7210280))

(declare-fun m!7210282 () Bool)

(assert (=> b!6414652 m!7210282))

(assert (=> d!2011157 d!2011553))

(declare-fun bs!1612844 () Bool)

(declare-fun d!2011555 () Bool)

(assert (= bs!1612844 (and d!2011555 d!2011231)))

(declare-fun lambda!354184 () Int)

(assert (=> bs!1612844 (= lambda!354184 lambda!354126)))

(declare-fun bs!1612845 () Bool)

(assert (= bs!1612845 (and d!2011555 d!2011049)))

(assert (=> bs!1612845 (= lambda!354184 lambda!354098)))

(declare-fun bs!1612846 () Bool)

(assert (= bs!1612846 (and d!2011555 d!2011425)))

(assert (=> bs!1612846 (= lambda!354184 lambda!354153)))

(declare-fun bs!1612847 () Bool)

(assert (= bs!1612847 (and d!2011555 d!2011553)))

(assert (=> bs!1612847 (= lambda!354184 lambda!354183)))

(declare-fun bs!1612848 () Bool)

(assert (= bs!1612848 (and d!2011555 d!2011275)))

(assert (=> bs!1612848 (= lambda!354184 lambda!354131)))

(declare-fun bs!1612849 () Bool)

(assert (= bs!1612849 (and d!2011555 d!2010999)))

(assert (=> bs!1612849 (= lambda!354184 lambda!354084)))

(declare-fun bs!1612850 () Bool)

(assert (= bs!1612850 (and d!2011555 b!6414423)))

(assert (=> bs!1612850 (not (= lambda!354184 lambda!354172))))

(declare-fun bs!1612851 () Bool)

(assert (= bs!1612851 (and d!2011555 b!6414470)))

(assert (=> bs!1612851 (not (= lambda!354184 lambda!354174))))

(declare-fun bs!1612852 () Bool)

(assert (= bs!1612852 (and d!2011555 b!6414421)))

(assert (=> bs!1612852 (not (= lambda!354184 lambda!354171))))

(declare-fun bs!1612853 () Bool)

(assert (= bs!1612853 (and d!2011555 d!2011273)))

(assert (=> bs!1612853 (= lambda!354184 lambda!354130)))

(declare-fun bs!1612854 () Bool)

(assert (= bs!1612854 (and d!2011555 d!2011269)))

(assert (=> bs!1612854 (= lambda!354184 lambda!354129)))

(declare-fun bs!1612855 () Bool)

(assert (= bs!1612855 (and d!2011555 d!2011135)))

(assert (=> bs!1612855 (= lambda!354184 lambda!354123)))

(declare-fun bs!1612856 () Bool)

(assert (= bs!1612856 (and d!2011555 b!6414472)))

(assert (=> bs!1612856 (not (= lambda!354184 lambda!354175))))

(declare-fun bs!1612857 () Bool)

(assert (= bs!1612857 (and d!2011555 d!2011365)))

(assert (=> bs!1612857 (= lambda!354184 lambda!354144)))

(declare-fun bs!1612858 () Bool)

(assert (= bs!1612858 (and d!2011555 d!2011171)))

(assert (=> bs!1612858 (= lambda!354184 lambda!354125)))

(declare-fun bs!1612859 () Bool)

(assert (= bs!1612859 (and d!2011555 d!2011077)))

(assert (=> bs!1612859 (= lambda!354184 lambda!354116)))

(declare-fun bs!1612860 () Bool)

(assert (= bs!1612860 (and d!2011555 d!2011089)))

(assert (=> bs!1612860 (= lambda!354184 lambda!354119)))

(declare-fun lt!2375470 () List!65244)

(assert (=> d!2011555 (forall!15504 lt!2375470 lambda!354184)))

(declare-fun e!3892392 () List!65244)

(assert (=> d!2011555 (= lt!2375470 e!3892392)))

(declare-fun c!1171543 () Bool)

(assert (=> d!2011555 (= c!1171543 ((_ is Cons!65122) (Cons!65122 lt!2375204 Nil!65122)))))

(assert (=> d!2011555 (= (unfocusZipperList!1736 (Cons!65122 lt!2375204 Nil!65122)) lt!2375470)))

(declare-fun b!6414657 () Bool)

(assert (=> b!6414657 (= e!3892392 (Cons!65120 (generalisedConcat!1912 (exprs!6199 (h!71570 (Cons!65122 lt!2375204 Nil!65122)))) (unfocusZipperList!1736 (t!378858 (Cons!65122 lt!2375204 Nil!65122)))))))

(declare-fun b!6414658 () Bool)

(assert (=> b!6414658 (= e!3892392 Nil!65120)))

(assert (= (and d!2011555 c!1171543) b!6414657))

(assert (= (and d!2011555 (not c!1171543)) b!6414658))

(declare-fun m!7210284 () Bool)

(assert (=> d!2011555 m!7210284))

(declare-fun m!7210286 () Bool)

(assert (=> b!6414657 m!7210286))

(declare-fun m!7210288 () Bool)

(assert (=> b!6414657 m!7210288))

(assert (=> d!2011157 d!2011555))

(assert (=> bm!551037 d!2011251))

(declare-fun bm!551331 () Bool)

(declare-fun call!551336 () (InoxSet Context!11398))

(assert (=> bm!551331 (= call!551336 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))))) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))))) (h!71569 s!2326)))))

(declare-fun e!3892393 () (InoxSet Context!11398))

(declare-fun b!6414659 () Bool)

(assert (=> b!6414659 (= e!3892393 ((_ map or) call!551336 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))))) (h!71569 s!2326))))))

(declare-fun b!6414660 () Bool)

(declare-fun e!3892395 () (InoxSet Context!11398))

(assert (=> b!6414660 (= e!3892395 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6414662 () Bool)

(assert (=> b!6414662 (= e!3892395 call!551336)))

(declare-fun b!6414663 () Bool)

(declare-fun e!3892394 () Bool)

(assert (=> b!6414663 (= e!3892394 (nullable!6308 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))))))))

(declare-fun b!6414661 () Bool)

(assert (=> b!6414661 (= e!3892393 e!3892395)))

(declare-fun c!1171545 () Bool)

(assert (=> b!6414661 (= c!1171545 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))))))))

(declare-fun d!2011557 () Bool)

(declare-fun c!1171544 () Bool)

(assert (=> d!2011557 (= c!1171544 e!3892394)))

(declare-fun res!2636308 () Bool)

(assert (=> d!2011557 (=> (not res!2636308) (not e!3892394))))

(assert (=> d!2011557 (= res!2636308 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))))))))

(assert (=> d!2011557 (= (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (h!71569 s!2326)) e!3892393)))

(assert (= (and d!2011557 res!2636308) b!6414663))

(assert (= (and d!2011557 c!1171544) b!6414659))

(assert (= (and d!2011557 (not c!1171544)) b!6414661))

(assert (= (and b!6414661 c!1171545) b!6414662))

(assert (= (and b!6414661 (not c!1171545)) b!6414660))

(assert (= (or b!6414659 b!6414662) bm!551331))

(declare-fun m!7210290 () Bool)

(assert (=> bm!551331 m!7210290))

(declare-fun m!7210292 () Bool)

(assert (=> b!6414659 m!7210292))

(declare-fun m!7210294 () Bool)

(assert (=> b!6414663 m!7210294))

(assert (=> b!6413786 d!2011557))

(declare-fun d!2011559 () Bool)

(assert (=> d!2011559 (= (isEmpty!37271 lt!2375214) (not ((_ is Some!16205) lt!2375214)))))

(assert (=> d!2010983 d!2011559))

(declare-fun bm!551332 () Bool)

(declare-fun call!551338 () Bool)

(declare-fun c!1171546 () Bool)

(assert (=> bm!551332 (= call!551338 (nullable!6308 (ite c!1171546 (regTwo!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regTwo!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun b!6414664 () Bool)

(declare-fun e!3892396 () Bool)

(assert (=> b!6414664 (= e!3892396 call!551338)))

(declare-fun b!6414665 () Bool)

(declare-fun e!3892399 () Bool)

(declare-fun e!3892397 () Bool)

(assert (=> b!6414665 (= e!3892399 e!3892397)))

(declare-fun res!2636310 () Bool)

(declare-fun call!551337 () Bool)

(assert (=> b!6414665 (= res!2636310 call!551337)))

(assert (=> b!6414665 (=> (not res!2636310) (not e!3892397))))

(declare-fun d!2011561 () Bool)

(declare-fun res!2636312 () Bool)

(declare-fun e!3892398 () Bool)

(assert (=> d!2011561 (=> res!2636312 e!3892398)))

(assert (=> d!2011561 (= res!2636312 ((_ is EmptyExpr!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> d!2011561 (= (nullableFct!2254 (h!71568 (exprs!6199 (h!71570 zl!343)))) e!3892398)))

(declare-fun bm!551333 () Bool)

(assert (=> bm!551333 (= call!551337 (nullable!6308 (ite c!1171546 (regOne!33143 (h!71568 (exprs!6199 (h!71570 zl!343)))) (regOne!33142 (h!71568 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun b!6414666 () Bool)

(declare-fun e!3892400 () Bool)

(assert (=> b!6414666 (= e!3892398 e!3892400)))

(declare-fun res!2636309 () Bool)

(assert (=> b!6414666 (=> (not res!2636309) (not e!3892400))))

(assert (=> b!6414666 (= res!2636309 (and (not ((_ is EmptyLang!16315) (h!71568 (exprs!6199 (h!71570 zl!343))))) (not ((_ is ElementMatch!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun b!6414667 () Bool)

(declare-fun e!3892401 () Bool)

(assert (=> b!6414667 (= e!3892401 e!3892399)))

(assert (=> b!6414667 (= c!1171546 ((_ is Union!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6414668 () Bool)

(assert (=> b!6414668 (= e!3892397 call!551338)))

(declare-fun b!6414669 () Bool)

(assert (=> b!6414669 (= e!3892399 e!3892396)))

(declare-fun res!2636311 () Bool)

(assert (=> b!6414669 (= res!2636311 call!551337)))

(assert (=> b!6414669 (=> res!2636311 e!3892396)))

(declare-fun b!6414670 () Bool)

(assert (=> b!6414670 (= e!3892400 e!3892401)))

(declare-fun res!2636313 () Bool)

(assert (=> b!6414670 (=> res!2636313 e!3892401)))

(assert (=> b!6414670 (= res!2636313 ((_ is Star!16315) (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(assert (= (and d!2011561 (not res!2636312)) b!6414666))

(assert (= (and b!6414666 res!2636309) b!6414670))

(assert (= (and b!6414670 (not res!2636313)) b!6414667))

(assert (= (and b!6414667 c!1171546) b!6414669))

(assert (= (and b!6414667 (not c!1171546)) b!6414665))

(assert (= (and b!6414669 (not res!2636311)) b!6414664))

(assert (= (and b!6414665 res!2636310) b!6414668))

(assert (= (or b!6414664 b!6414668) bm!551332))

(assert (= (or b!6414669 b!6414665) bm!551333))

(declare-fun m!7210296 () Bool)

(assert (=> bm!551332 m!7210296))

(declare-fun m!7210298 () Bool)

(assert (=> bm!551333 m!7210298))

(assert (=> d!2011127 d!2011561))

(declare-fun b!6414671 () Bool)

(declare-fun res!2636316 () Bool)

(declare-fun e!3892402 () Bool)

(assert (=> b!6414671 (=> res!2636316 e!3892402)))

(assert (=> b!6414671 (= res!2636316 (not ((_ is Concat!25160) lt!2375376)))))

(declare-fun e!3892403 () Bool)

(assert (=> b!6414671 (= e!3892403 e!3892402)))

(declare-fun b!6414672 () Bool)

(declare-fun e!3892405 () Bool)

(declare-fun e!3892407 () Bool)

(assert (=> b!6414672 (= e!3892405 e!3892407)))

(declare-fun res!2636317 () Bool)

(assert (=> b!6414672 (= res!2636317 (not (nullable!6308 (reg!16644 lt!2375376))))))

(assert (=> b!6414672 (=> (not res!2636317) (not e!3892407))))

(declare-fun b!6414673 () Bool)

(declare-fun call!551341 () Bool)

(assert (=> b!6414673 (= e!3892407 call!551341)))

(declare-fun b!6414674 () Bool)

(declare-fun e!3892408 () Bool)

(assert (=> b!6414674 (= e!3892402 e!3892408)))

(declare-fun res!2636314 () Bool)

(assert (=> b!6414674 (=> (not res!2636314) (not e!3892408))))

(declare-fun call!551339 () Bool)

(assert (=> b!6414674 (= res!2636314 call!551339)))

(declare-fun bm!551334 () Bool)

(declare-fun call!551340 () Bool)

(assert (=> bm!551334 (= call!551340 call!551341)))

(declare-fun b!6414676 () Bool)

(declare-fun res!2636315 () Bool)

(declare-fun e!3892406 () Bool)

(assert (=> b!6414676 (=> (not res!2636315) (not e!3892406))))

(assert (=> b!6414676 (= res!2636315 call!551339)))

(assert (=> b!6414676 (= e!3892403 e!3892406)))

(declare-fun b!6414677 () Bool)

(declare-fun e!3892404 () Bool)

(assert (=> b!6414677 (= e!3892404 e!3892405)))

(declare-fun c!1171547 () Bool)

(assert (=> b!6414677 (= c!1171547 ((_ is Star!16315) lt!2375376))))

(declare-fun c!1171548 () Bool)

(declare-fun bm!551335 () Bool)

(assert (=> bm!551335 (= call!551341 (validRegex!8051 (ite c!1171547 (reg!16644 lt!2375376) (ite c!1171548 (regTwo!33143 lt!2375376) (regTwo!33142 lt!2375376)))))))

(declare-fun bm!551336 () Bool)

(assert (=> bm!551336 (= call!551339 (validRegex!8051 (ite c!1171548 (regOne!33143 lt!2375376) (regOne!33142 lt!2375376))))))

(declare-fun b!6414678 () Bool)

(assert (=> b!6414678 (= e!3892405 e!3892403)))

(assert (=> b!6414678 (= c!1171548 ((_ is Union!16315) lt!2375376))))

(declare-fun b!6414679 () Bool)

(assert (=> b!6414679 (= e!3892406 call!551340)))

(declare-fun d!2011563 () Bool)

(declare-fun res!2636318 () Bool)

(assert (=> d!2011563 (=> res!2636318 e!3892404)))

(assert (=> d!2011563 (= res!2636318 ((_ is ElementMatch!16315) lt!2375376))))

(assert (=> d!2011563 (= (validRegex!8051 lt!2375376) e!3892404)))

(declare-fun b!6414675 () Bool)

(assert (=> b!6414675 (= e!3892408 call!551340)))

(assert (= (and d!2011563 (not res!2636318)) b!6414677))

(assert (= (and b!6414677 c!1171547) b!6414672))

(assert (= (and b!6414677 (not c!1171547)) b!6414678))

(assert (= (and b!6414672 res!2636317) b!6414673))

(assert (= (and b!6414678 c!1171548) b!6414676))

(assert (= (and b!6414678 (not c!1171548)) b!6414671))

(assert (= (and b!6414676 res!2636315) b!6414679))

(assert (= (and b!6414671 (not res!2636316)) b!6414674))

(assert (= (and b!6414674 res!2636314) b!6414675))

(assert (= (or b!6414679 b!6414675) bm!551334))

(assert (= (or b!6414676 b!6414674) bm!551336))

(assert (= (or b!6414673 bm!551334) bm!551335))

(declare-fun m!7210300 () Bool)

(assert (=> b!6414672 m!7210300))

(declare-fun m!7210302 () Bool)

(assert (=> bm!551335 m!7210302))

(declare-fun m!7210304 () Bool)

(assert (=> bm!551336 m!7210304))

(assert (=> d!2011077 d!2011563))

(declare-fun d!2011565 () Bool)

(declare-fun res!2636319 () Bool)

(declare-fun e!3892409 () Bool)

(assert (=> d!2011565 (=> res!2636319 e!3892409)))

(assert (=> d!2011565 (= res!2636319 ((_ is Nil!65120) (unfocusZipperList!1736 zl!343)))))

(assert (=> d!2011565 (= (forall!15504 (unfocusZipperList!1736 zl!343) lambda!354116) e!3892409)))

(declare-fun b!6414680 () Bool)

(declare-fun e!3892410 () Bool)

(assert (=> b!6414680 (= e!3892409 e!3892410)))

(declare-fun res!2636320 () Bool)

(assert (=> b!6414680 (=> (not res!2636320) (not e!3892410))))

(assert (=> b!6414680 (= res!2636320 (dynLambda!25863 lambda!354116 (h!71568 (unfocusZipperList!1736 zl!343))))))

(declare-fun b!6414681 () Bool)

(assert (=> b!6414681 (= e!3892410 (forall!15504 (t!378856 (unfocusZipperList!1736 zl!343)) lambda!354116))))

(assert (= (and d!2011565 (not res!2636319)) b!6414680))

(assert (= (and b!6414680 res!2636320) b!6414681))

(declare-fun b_lambda!243855 () Bool)

(assert (=> (not b_lambda!243855) (not b!6414680)))

(declare-fun m!7210306 () Bool)

(assert (=> b!6414680 m!7210306))

(declare-fun m!7210308 () Bool)

(assert (=> b!6414681 m!7210308))

(assert (=> d!2011077 d!2011565))

(assert (=> b!6413036 d!2011321))

(assert (=> d!2011137 d!2011537))

(declare-fun b!6414682 () Bool)

(declare-fun res!2636323 () Bool)

(declare-fun e!3892411 () Bool)

(assert (=> b!6414682 (=> res!2636323 e!3892411)))

(assert (=> b!6414682 (= res!2636323 (not ((_ is Concat!25160) (regTwo!33142 r!7292))))))

(declare-fun e!3892412 () Bool)

(assert (=> b!6414682 (= e!3892412 e!3892411)))

(declare-fun b!6414683 () Bool)

(declare-fun e!3892414 () Bool)

(declare-fun e!3892416 () Bool)

(assert (=> b!6414683 (= e!3892414 e!3892416)))

(declare-fun res!2636324 () Bool)

(assert (=> b!6414683 (= res!2636324 (not (nullable!6308 (reg!16644 (regTwo!33142 r!7292)))))))

(assert (=> b!6414683 (=> (not res!2636324) (not e!3892416))))

(declare-fun b!6414684 () Bool)

(declare-fun call!551344 () Bool)

(assert (=> b!6414684 (= e!3892416 call!551344)))

(declare-fun b!6414685 () Bool)

(declare-fun e!3892417 () Bool)

(assert (=> b!6414685 (= e!3892411 e!3892417)))

(declare-fun res!2636321 () Bool)

(assert (=> b!6414685 (=> (not res!2636321) (not e!3892417))))

(declare-fun call!551342 () Bool)

(assert (=> b!6414685 (= res!2636321 call!551342)))

(declare-fun bm!551337 () Bool)

(declare-fun call!551343 () Bool)

(assert (=> bm!551337 (= call!551343 call!551344)))

(declare-fun b!6414687 () Bool)

(declare-fun res!2636322 () Bool)

(declare-fun e!3892415 () Bool)

(assert (=> b!6414687 (=> (not res!2636322) (not e!3892415))))

(assert (=> b!6414687 (= res!2636322 call!551342)))

(assert (=> b!6414687 (= e!3892412 e!3892415)))

(declare-fun b!6414688 () Bool)

(declare-fun e!3892413 () Bool)

(assert (=> b!6414688 (= e!3892413 e!3892414)))

(declare-fun c!1171549 () Bool)

(assert (=> b!6414688 (= c!1171549 ((_ is Star!16315) (regTwo!33142 r!7292)))))

(declare-fun bm!551338 () Bool)

(declare-fun c!1171550 () Bool)

(assert (=> bm!551338 (= call!551344 (validRegex!8051 (ite c!1171549 (reg!16644 (regTwo!33142 r!7292)) (ite c!1171550 (regTwo!33143 (regTwo!33142 r!7292)) (regTwo!33142 (regTwo!33142 r!7292))))))))

(declare-fun bm!551339 () Bool)

(assert (=> bm!551339 (= call!551342 (validRegex!8051 (ite c!1171550 (regOne!33143 (regTwo!33142 r!7292)) (regOne!33142 (regTwo!33142 r!7292)))))))

(declare-fun b!6414689 () Bool)

(assert (=> b!6414689 (= e!3892414 e!3892412)))

(assert (=> b!6414689 (= c!1171550 ((_ is Union!16315) (regTwo!33142 r!7292)))))

(declare-fun b!6414690 () Bool)

(assert (=> b!6414690 (= e!3892415 call!551343)))

(declare-fun d!2011567 () Bool)

(declare-fun res!2636325 () Bool)

(assert (=> d!2011567 (=> res!2636325 e!3892413)))

(assert (=> d!2011567 (= res!2636325 ((_ is ElementMatch!16315) (regTwo!33142 r!7292)))))

(assert (=> d!2011567 (= (validRegex!8051 (regTwo!33142 r!7292)) e!3892413)))

(declare-fun b!6414686 () Bool)

(assert (=> b!6414686 (= e!3892417 call!551343)))

(assert (= (and d!2011567 (not res!2636325)) b!6414688))

(assert (= (and b!6414688 c!1171549) b!6414683))

(assert (= (and b!6414688 (not c!1171549)) b!6414689))

(assert (= (and b!6414683 res!2636324) b!6414684))

(assert (= (and b!6414689 c!1171550) b!6414687))

(assert (= (and b!6414689 (not c!1171550)) b!6414682))

(assert (= (and b!6414687 res!2636322) b!6414690))

(assert (= (and b!6414682 (not res!2636323)) b!6414685))

(assert (= (and b!6414685 res!2636321) b!6414686))

(assert (= (or b!6414690 b!6414686) bm!551337))

(assert (= (or b!6414687 b!6414685) bm!551339))

(assert (= (or b!6414684 bm!551337) bm!551338))

(declare-fun m!7210310 () Bool)

(assert (=> b!6414683 m!7210310))

(declare-fun m!7210312 () Bool)

(assert (=> bm!551338 m!7210312))

(declare-fun m!7210314 () Bool)

(assert (=> bm!551339 m!7210314))

(assert (=> d!2011137 d!2011567))

(assert (=> b!6413382 d!2011199))

(declare-fun call!551346 () List!65244)

(declare-fun c!1171551 () Bool)

(declare-fun c!1171554 () Bool)

(declare-fun c!1171552 () Bool)

(declare-fun call!551350 () (InoxSet Context!11398))

(declare-fun bm!551340 () Bool)

(assert (=> bm!551340 (= call!551350 (derivationStepZipperDown!1563 (ite c!1171554 (regOne!33143 (h!71568 (exprs!6199 lt!2375204))) (ite c!1171551 (regTwo!33142 (h!71568 (exprs!6199 lt!2375204))) (ite c!1171552 (regOne!33142 (h!71568 (exprs!6199 lt!2375204))) (reg!16644 (h!71568 (exprs!6199 lt!2375204)))))) (ite (or c!1171554 c!1171551) (Context!11399 (t!378856 (exprs!6199 lt!2375204))) (Context!11399 call!551346)) (h!71569 s!2326)))))

(declare-fun b!6414692 () Bool)

(declare-fun c!1171553 () Bool)

(assert (=> b!6414692 (= c!1171553 ((_ is Star!16315) (h!71568 (exprs!6199 lt!2375204))))))

(declare-fun e!3892421 () (InoxSet Context!11398))

(declare-fun e!3892419 () (InoxSet Context!11398))

(assert (=> b!6414692 (= e!3892421 e!3892419)))

(declare-fun b!6414693 () Bool)

(declare-fun call!551348 () (InoxSet Context!11398))

(assert (=> b!6414693 (= e!3892419 call!551348)))

(declare-fun b!6414694 () Bool)

(declare-fun e!3892418 () (InoxSet Context!11398))

(assert (=> b!6414694 (= e!3892418 e!3892421)))

(assert (=> b!6414694 (= c!1171552 ((_ is Concat!25160) (h!71568 (exprs!6199 lt!2375204))))))

(declare-fun b!6414695 () Bool)

(declare-fun e!3892422 () (InoxSet Context!11398))

(declare-fun call!551349 () (InoxSet Context!11398))

(assert (=> b!6414695 (= e!3892422 ((_ map or) call!551350 call!551349))))

(declare-fun b!6414696 () Bool)

(declare-fun e!3892420 () Bool)

(assert (=> b!6414696 (= e!3892420 (nullable!6308 (regOne!33142 (h!71568 (exprs!6199 lt!2375204)))))))

(declare-fun call!551345 () List!65244)

(declare-fun bm!551341 () Bool)

(assert (=> bm!551341 (= call!551349 (derivationStepZipperDown!1563 (ite c!1171554 (regTwo!33143 (h!71568 (exprs!6199 lt!2375204))) (regOne!33142 (h!71568 (exprs!6199 lt!2375204)))) (ite c!1171554 (Context!11399 (t!378856 (exprs!6199 lt!2375204))) (Context!11399 call!551345)) (h!71569 s!2326)))))

(declare-fun b!6414691 () Bool)

(assert (=> b!6414691 (= e!3892421 call!551348)))

(declare-fun d!2011569 () Bool)

(declare-fun c!1171555 () Bool)

(assert (=> d!2011569 (= c!1171555 (and ((_ is ElementMatch!16315) (h!71568 (exprs!6199 lt!2375204))) (= (c!1170970 (h!71568 (exprs!6199 lt!2375204))) (h!71569 s!2326))))))

(declare-fun e!3892423 () (InoxSet Context!11398))

(assert (=> d!2011569 (= (derivationStepZipperDown!1563 (h!71568 (exprs!6199 lt!2375204)) (Context!11399 (t!378856 (exprs!6199 lt!2375204))) (h!71569 s!2326)) e!3892423)))

(declare-fun bm!551342 () Bool)

(declare-fun call!551347 () (InoxSet Context!11398))

(assert (=> bm!551342 (= call!551348 call!551347)))

(declare-fun b!6414697 () Bool)

(assert (=> b!6414697 (= e!3892419 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551343 () Bool)

(assert (=> bm!551343 (= call!551345 ($colon$colon!2176 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375204)))) (ite (or c!1171551 c!1171552) (regTwo!33142 (h!71568 (exprs!6199 lt!2375204))) (h!71568 (exprs!6199 lt!2375204)))))))

(declare-fun bm!551344 () Bool)

(assert (=> bm!551344 (= call!551347 call!551350)))

(declare-fun bm!551345 () Bool)

(assert (=> bm!551345 (= call!551346 call!551345)))

(declare-fun b!6414698 () Bool)

(assert (=> b!6414698 (= e!3892423 e!3892422)))

(assert (=> b!6414698 (= c!1171554 ((_ is Union!16315) (h!71568 (exprs!6199 lt!2375204))))))

(declare-fun b!6414699 () Bool)

(assert (=> b!6414699 (= e!3892418 ((_ map or) call!551349 call!551347))))

(declare-fun b!6414700 () Bool)

(assert (=> b!6414700 (= e!3892423 (store ((as const (Array Context!11398 Bool)) false) (Context!11399 (t!378856 (exprs!6199 lt!2375204))) true))))

(declare-fun b!6414701 () Bool)

(assert (=> b!6414701 (= c!1171551 e!3892420)))

(declare-fun res!2636326 () Bool)

(assert (=> b!6414701 (=> (not res!2636326) (not e!3892420))))

(assert (=> b!6414701 (= res!2636326 ((_ is Concat!25160) (h!71568 (exprs!6199 lt!2375204))))))

(assert (=> b!6414701 (= e!3892422 e!3892418)))

(assert (= (and d!2011569 c!1171555) b!6414700))

(assert (= (and d!2011569 (not c!1171555)) b!6414698))

(assert (= (and b!6414698 c!1171554) b!6414695))

(assert (= (and b!6414698 (not c!1171554)) b!6414701))

(assert (= (and b!6414701 res!2636326) b!6414696))

(assert (= (and b!6414701 c!1171551) b!6414699))

(assert (= (and b!6414701 (not c!1171551)) b!6414694))

(assert (= (and b!6414694 c!1171552) b!6414691))

(assert (= (and b!6414694 (not c!1171552)) b!6414692))

(assert (= (and b!6414692 c!1171553) b!6414693))

(assert (= (and b!6414692 (not c!1171553)) b!6414697))

(assert (= (or b!6414691 b!6414693) bm!551345))

(assert (= (or b!6414691 b!6414693) bm!551342))

(assert (= (or b!6414699 bm!551345) bm!551343))

(assert (= (or b!6414699 bm!551342) bm!551344))

(assert (= (or b!6414695 b!6414699) bm!551341))

(assert (= (or b!6414695 bm!551344) bm!551340))

(declare-fun m!7210316 () Bool)

(assert (=> bm!551343 m!7210316))

(declare-fun m!7210318 () Bool)

(assert (=> b!6414696 m!7210318))

(declare-fun m!7210320 () Bool)

(assert (=> bm!551341 m!7210320))

(declare-fun m!7210322 () Bool)

(assert (=> b!6414700 m!7210322))

(declare-fun m!7210324 () Bool)

(assert (=> bm!551340 m!7210324))

(assert (=> bm!551159 d!2011569))

(assert (=> b!6413029 d!2011433))

(assert (=> b!6413029 d!2011323))

(assert (=> d!2011005 d!2011251))

(declare-fun b!6414702 () Bool)

(declare-fun res!2636329 () Bool)

(declare-fun e!3892424 () Bool)

(assert (=> b!6414702 (=> res!2636329 e!3892424)))

(assert (=> b!6414702 (= res!2636329 (not ((_ is Concat!25160) lt!2375370)))))

(declare-fun e!3892425 () Bool)

(assert (=> b!6414702 (= e!3892425 e!3892424)))

(declare-fun b!6414703 () Bool)

(declare-fun e!3892427 () Bool)

(declare-fun e!3892429 () Bool)

(assert (=> b!6414703 (= e!3892427 e!3892429)))

(declare-fun res!2636330 () Bool)

(assert (=> b!6414703 (= res!2636330 (not (nullable!6308 (reg!16644 lt!2375370))))))

(assert (=> b!6414703 (=> (not res!2636330) (not e!3892429))))

(declare-fun b!6414704 () Bool)

(declare-fun call!551353 () Bool)

(assert (=> b!6414704 (= e!3892429 call!551353)))

(declare-fun b!6414705 () Bool)

(declare-fun e!3892430 () Bool)

(assert (=> b!6414705 (= e!3892424 e!3892430)))

(declare-fun res!2636327 () Bool)

(assert (=> b!6414705 (=> (not res!2636327) (not e!3892430))))

(declare-fun call!551351 () Bool)

(assert (=> b!6414705 (= res!2636327 call!551351)))

(declare-fun bm!551346 () Bool)

(declare-fun call!551352 () Bool)

(assert (=> bm!551346 (= call!551352 call!551353)))

(declare-fun b!6414707 () Bool)

(declare-fun res!2636328 () Bool)

(declare-fun e!3892428 () Bool)

(assert (=> b!6414707 (=> (not res!2636328) (not e!3892428))))

(assert (=> b!6414707 (= res!2636328 call!551351)))

(assert (=> b!6414707 (= e!3892425 e!3892428)))

(declare-fun b!6414708 () Bool)

(declare-fun e!3892426 () Bool)

(assert (=> b!6414708 (= e!3892426 e!3892427)))

(declare-fun c!1171556 () Bool)

(assert (=> b!6414708 (= c!1171556 ((_ is Star!16315) lt!2375370))))

(declare-fun c!1171557 () Bool)

(declare-fun bm!551347 () Bool)

(assert (=> bm!551347 (= call!551353 (validRegex!8051 (ite c!1171556 (reg!16644 lt!2375370) (ite c!1171557 (regTwo!33143 lt!2375370) (regTwo!33142 lt!2375370)))))))

(declare-fun bm!551348 () Bool)

(assert (=> bm!551348 (= call!551351 (validRegex!8051 (ite c!1171557 (regOne!33143 lt!2375370) (regOne!33142 lt!2375370))))))

(declare-fun b!6414709 () Bool)

(assert (=> b!6414709 (= e!3892427 e!3892425)))

(assert (=> b!6414709 (= c!1171557 ((_ is Union!16315) lt!2375370))))

(declare-fun b!6414710 () Bool)

(assert (=> b!6414710 (= e!3892428 call!551352)))

(declare-fun d!2011571 () Bool)

(declare-fun res!2636331 () Bool)

(assert (=> d!2011571 (=> res!2636331 e!3892426)))

(assert (=> d!2011571 (= res!2636331 ((_ is ElementMatch!16315) lt!2375370))))

(assert (=> d!2011571 (= (validRegex!8051 lt!2375370) e!3892426)))

(declare-fun b!6414706 () Bool)

(assert (=> b!6414706 (= e!3892430 call!551352)))

(assert (= (and d!2011571 (not res!2636331)) b!6414708))

(assert (= (and b!6414708 c!1171556) b!6414703))

(assert (= (and b!6414708 (not c!1171556)) b!6414709))

(assert (= (and b!6414703 res!2636330) b!6414704))

(assert (= (and b!6414709 c!1171557) b!6414707))

(assert (= (and b!6414709 (not c!1171557)) b!6414702))

(assert (= (and b!6414707 res!2636328) b!6414710))

(assert (= (and b!6414702 (not res!2636329)) b!6414705))

(assert (= (and b!6414705 res!2636327) b!6414706))

(assert (= (or b!6414710 b!6414706) bm!551346))

(assert (= (or b!6414707 b!6414705) bm!551348))

(assert (= (or b!6414704 bm!551346) bm!551347))

(declare-fun m!7210326 () Bool)

(assert (=> b!6414703 m!7210326))

(declare-fun m!7210328 () Bool)

(assert (=> bm!551347 m!7210328))

(declare-fun m!7210330 () Bool)

(assert (=> bm!551348 m!7210330))

(assert (=> d!2011075 d!2011571))

(declare-fun bs!1612861 () Bool)

(declare-fun d!2011573 () Bool)

(assert (= bs!1612861 (and d!2011573 d!2011231)))

(declare-fun lambda!354185 () Int)

(assert (=> bs!1612861 (= lambda!354185 lambda!354126)))

(declare-fun bs!1612862 () Bool)

(assert (= bs!1612862 (and d!2011573 d!2011049)))

(assert (=> bs!1612862 (= lambda!354185 lambda!354098)))

(declare-fun bs!1612863 () Bool)

(assert (= bs!1612863 (and d!2011573 d!2011425)))

(assert (=> bs!1612863 (= lambda!354185 lambda!354153)))

(declare-fun bs!1612864 () Bool)

(assert (= bs!1612864 (and d!2011573 d!2011553)))

(assert (=> bs!1612864 (= lambda!354185 lambda!354183)))

(declare-fun bs!1612865 () Bool)

(assert (= bs!1612865 (and d!2011573 d!2011275)))

(assert (=> bs!1612865 (= lambda!354185 lambda!354131)))

(declare-fun bs!1612866 () Bool)

(assert (= bs!1612866 (and d!2011573 d!2011555)))

(assert (=> bs!1612866 (= lambda!354185 lambda!354184)))

(declare-fun bs!1612867 () Bool)

(assert (= bs!1612867 (and d!2011573 d!2010999)))

(assert (=> bs!1612867 (= lambda!354185 lambda!354084)))

(declare-fun bs!1612868 () Bool)

(assert (= bs!1612868 (and d!2011573 b!6414423)))

(assert (=> bs!1612868 (not (= lambda!354185 lambda!354172))))

(declare-fun bs!1612869 () Bool)

(assert (= bs!1612869 (and d!2011573 b!6414470)))

(assert (=> bs!1612869 (not (= lambda!354185 lambda!354174))))

(declare-fun bs!1612870 () Bool)

(assert (= bs!1612870 (and d!2011573 b!6414421)))

(assert (=> bs!1612870 (not (= lambda!354185 lambda!354171))))

(declare-fun bs!1612871 () Bool)

(assert (= bs!1612871 (and d!2011573 d!2011273)))

(assert (=> bs!1612871 (= lambda!354185 lambda!354130)))

(declare-fun bs!1612872 () Bool)

(assert (= bs!1612872 (and d!2011573 d!2011269)))

(assert (=> bs!1612872 (= lambda!354185 lambda!354129)))

(declare-fun bs!1612873 () Bool)

(assert (= bs!1612873 (and d!2011573 d!2011135)))

(assert (=> bs!1612873 (= lambda!354185 lambda!354123)))

(declare-fun bs!1612874 () Bool)

(assert (= bs!1612874 (and d!2011573 b!6414472)))

(assert (=> bs!1612874 (not (= lambda!354185 lambda!354175))))

(declare-fun bs!1612875 () Bool)

(assert (= bs!1612875 (and d!2011573 d!2011365)))

(assert (=> bs!1612875 (= lambda!354185 lambda!354144)))

(declare-fun bs!1612876 () Bool)

(assert (= bs!1612876 (and d!2011573 d!2011171)))

(assert (=> bs!1612876 (= lambda!354185 lambda!354125)))

(declare-fun bs!1612877 () Bool)

(assert (= bs!1612877 (and d!2011573 d!2011077)))

(assert (=> bs!1612877 (= lambda!354185 lambda!354116)))

(declare-fun bs!1612878 () Bool)

(assert (= bs!1612878 (and d!2011573 d!2011089)))

(assert (=> bs!1612878 (= lambda!354185 lambda!354119)))

(declare-fun b!6414711 () Bool)

(declare-fun e!3892432 () Bool)

(declare-fun lt!2375471 () Regex!16315)

(assert (=> b!6414711 (= e!3892432 (= lt!2375471 (head!13122 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122)))))))

(declare-fun b!6414712 () Bool)

(declare-fun e!3892434 () Regex!16315)

(assert (=> b!6414712 (= e!3892434 EmptyLang!16315)))

(declare-fun e!3892436 () Bool)

(assert (=> d!2011573 e!3892436))

(declare-fun res!2636333 () Bool)

(assert (=> d!2011573 (=> (not res!2636333) (not e!3892436))))

(assert (=> d!2011573 (= res!2636333 (validRegex!8051 lt!2375471))))

(declare-fun e!3892433 () Regex!16315)

(assert (=> d!2011573 (= lt!2375471 e!3892433)))

(declare-fun c!1171558 () Bool)

(declare-fun e!3892431 () Bool)

(assert (=> d!2011573 (= c!1171558 e!3892431)))

(declare-fun res!2636332 () Bool)

(assert (=> d!2011573 (=> (not res!2636332) (not e!3892431))))

(assert (=> d!2011573 (= res!2636332 ((_ is Cons!65120) (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122))))))

(assert (=> d!2011573 (forall!15504 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122)) lambda!354185)))

(assert (=> d!2011573 (= (generalisedUnion!2159 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122))) lt!2375471)))

(declare-fun b!6414713 () Bool)

(assert (=> b!6414713 (= e!3892433 e!3892434)))

(declare-fun c!1171561 () Bool)

(assert (=> b!6414713 (= c!1171561 ((_ is Cons!65120) (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122))))))

(declare-fun b!6414714 () Bool)

(assert (=> b!6414714 (= e!3892434 (Union!16315 (h!71568 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122))) (generalisedUnion!2159 (t!378856 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122))))))))

(declare-fun b!6414715 () Bool)

(assert (=> b!6414715 (= e!3892432 (isUnion!1153 lt!2375471))))

(declare-fun b!6414716 () Bool)

(assert (=> b!6414716 (= e!3892431 (isEmpty!37268 (t!378856 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122)))))))

(declare-fun b!6414717 () Bool)

(declare-fun e!3892435 () Bool)

(assert (=> b!6414717 (= e!3892436 e!3892435)))

(declare-fun c!1171559 () Bool)

(assert (=> b!6414717 (= c!1171559 (isEmpty!37268 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122))))))

(declare-fun b!6414718 () Bool)

(assert (=> b!6414718 (= e!3892435 e!3892432)))

(declare-fun c!1171560 () Bool)

(assert (=> b!6414718 (= c!1171560 (isEmpty!37268 (tail!12207 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122)))))))

(declare-fun b!6414719 () Bool)

(assert (=> b!6414719 (= e!3892433 (h!71568 (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122))))))

(declare-fun b!6414720 () Bool)

(assert (=> b!6414720 (= e!3892435 (isEmptyLang!1723 lt!2375471))))

(assert (= (and d!2011573 res!2636332) b!6414716))

(assert (= (and d!2011573 c!1171558) b!6414719))

(assert (= (and d!2011573 (not c!1171558)) b!6414713))

(assert (= (and b!6414713 c!1171561) b!6414714))

(assert (= (and b!6414713 (not c!1171561)) b!6414712))

(assert (= (and d!2011573 res!2636333) b!6414717))

(assert (= (and b!6414717 c!1171559) b!6414720))

(assert (= (and b!6414717 (not c!1171559)) b!6414718))

(assert (= (and b!6414718 c!1171560) b!6414711))

(assert (= (and b!6414718 (not c!1171560)) b!6414715))

(assert (=> b!6414711 m!7209264))

(declare-fun m!7210332 () Bool)

(assert (=> b!6414711 m!7210332))

(declare-fun m!7210334 () Bool)

(assert (=> b!6414720 m!7210334))

(declare-fun m!7210336 () Bool)

(assert (=> b!6414714 m!7210336))

(declare-fun m!7210338 () Bool)

(assert (=> d!2011573 m!7210338))

(assert (=> d!2011573 m!7209264))

(declare-fun m!7210340 () Bool)

(assert (=> d!2011573 m!7210340))

(assert (=> b!6414718 m!7209264))

(declare-fun m!7210342 () Bool)

(assert (=> b!6414718 m!7210342))

(assert (=> b!6414718 m!7210342))

(declare-fun m!7210344 () Bool)

(assert (=> b!6414718 m!7210344))

(assert (=> b!6414717 m!7209264))

(declare-fun m!7210346 () Bool)

(assert (=> b!6414717 m!7210346))

(declare-fun m!7210348 () Bool)

(assert (=> b!6414715 m!7210348))

(declare-fun m!7210350 () Bool)

(assert (=> b!6414716 m!7210350))

(assert (=> d!2011075 d!2011573))

(declare-fun bs!1612879 () Bool)

(declare-fun d!2011575 () Bool)

(assert (= bs!1612879 (and d!2011575 d!2011231)))

(declare-fun lambda!354186 () Int)

(assert (=> bs!1612879 (= lambda!354186 lambda!354126)))

(declare-fun bs!1612880 () Bool)

(assert (= bs!1612880 (and d!2011575 d!2011049)))

(assert (=> bs!1612880 (= lambda!354186 lambda!354098)))

(declare-fun bs!1612881 () Bool)

(assert (= bs!1612881 (and d!2011575 d!2011425)))

(assert (=> bs!1612881 (= lambda!354186 lambda!354153)))

(declare-fun bs!1612882 () Bool)

(assert (= bs!1612882 (and d!2011575 d!2011553)))

(assert (=> bs!1612882 (= lambda!354186 lambda!354183)))

(declare-fun bs!1612883 () Bool)

(assert (= bs!1612883 (and d!2011575 d!2011275)))

(assert (=> bs!1612883 (= lambda!354186 lambda!354131)))

(declare-fun bs!1612884 () Bool)

(assert (= bs!1612884 (and d!2011575 d!2011555)))

(assert (=> bs!1612884 (= lambda!354186 lambda!354184)))

(declare-fun bs!1612885 () Bool)

(assert (= bs!1612885 (and d!2011575 d!2011573)))

(assert (=> bs!1612885 (= lambda!354186 lambda!354185)))

(declare-fun bs!1612886 () Bool)

(assert (= bs!1612886 (and d!2011575 d!2010999)))

(assert (=> bs!1612886 (= lambda!354186 lambda!354084)))

(declare-fun bs!1612887 () Bool)

(assert (= bs!1612887 (and d!2011575 b!6414423)))

(assert (=> bs!1612887 (not (= lambda!354186 lambda!354172))))

(declare-fun bs!1612888 () Bool)

(assert (= bs!1612888 (and d!2011575 b!6414470)))

(assert (=> bs!1612888 (not (= lambda!354186 lambda!354174))))

(declare-fun bs!1612889 () Bool)

(assert (= bs!1612889 (and d!2011575 b!6414421)))

(assert (=> bs!1612889 (not (= lambda!354186 lambda!354171))))

(declare-fun bs!1612890 () Bool)

(assert (= bs!1612890 (and d!2011575 d!2011273)))

(assert (=> bs!1612890 (= lambda!354186 lambda!354130)))

(declare-fun bs!1612891 () Bool)

(assert (= bs!1612891 (and d!2011575 d!2011269)))

(assert (=> bs!1612891 (= lambda!354186 lambda!354129)))

(declare-fun bs!1612892 () Bool)

(assert (= bs!1612892 (and d!2011575 d!2011135)))

(assert (=> bs!1612892 (= lambda!354186 lambda!354123)))

(declare-fun bs!1612893 () Bool)

(assert (= bs!1612893 (and d!2011575 b!6414472)))

(assert (=> bs!1612893 (not (= lambda!354186 lambda!354175))))

(declare-fun bs!1612894 () Bool)

(assert (= bs!1612894 (and d!2011575 d!2011365)))

(assert (=> bs!1612894 (= lambda!354186 lambda!354144)))

(declare-fun bs!1612895 () Bool)

(assert (= bs!1612895 (and d!2011575 d!2011171)))

(assert (=> bs!1612895 (= lambda!354186 lambda!354125)))

(declare-fun bs!1612896 () Bool)

(assert (= bs!1612896 (and d!2011575 d!2011077)))

(assert (=> bs!1612896 (= lambda!354186 lambda!354116)))

(declare-fun bs!1612897 () Bool)

(assert (= bs!1612897 (and d!2011575 d!2011089)))

(assert (=> bs!1612897 (= lambda!354186 lambda!354119)))

(declare-fun lt!2375472 () List!65244)

(assert (=> d!2011575 (forall!15504 lt!2375472 lambda!354186)))

(declare-fun e!3892437 () List!65244)

(assert (=> d!2011575 (= lt!2375472 e!3892437)))

(declare-fun c!1171562 () Bool)

(assert (=> d!2011575 (= c!1171562 ((_ is Cons!65122) (Cons!65122 lt!2375221 Nil!65122)))))

(assert (=> d!2011575 (= (unfocusZipperList!1736 (Cons!65122 lt!2375221 Nil!65122)) lt!2375472)))

(declare-fun b!6414721 () Bool)

(assert (=> b!6414721 (= e!3892437 (Cons!65120 (generalisedConcat!1912 (exprs!6199 (h!71570 (Cons!65122 lt!2375221 Nil!65122)))) (unfocusZipperList!1736 (t!378858 (Cons!65122 lt!2375221 Nil!65122)))))))

(declare-fun b!6414722 () Bool)

(assert (=> b!6414722 (= e!3892437 Nil!65120)))

(assert (= (and d!2011575 c!1171562) b!6414721))

(assert (= (and d!2011575 (not c!1171562)) b!6414722))

(declare-fun m!7210352 () Bool)

(assert (=> d!2011575 m!7210352))

(declare-fun m!7210354 () Bool)

(assert (=> b!6414721 m!7210354))

(declare-fun m!7210356 () Bool)

(assert (=> b!6414721 m!7210356))

(assert (=> d!2011075 d!2011575))

(declare-fun d!2011577 () Bool)

(assert (=> d!2011577 (= (isConcat!1239 lt!2375345) ((_ is Concat!25160) lt!2375345))))

(assert (=> b!6413593 d!2011577))

(assert (=> d!2010885 d!2011217))

(declare-fun bs!1612898 () Bool)

(declare-fun d!2011579 () Bool)

(assert (= bs!1612898 (and d!2011579 b!6414475)))

(declare-fun lambda!354187 () Int)

(assert (=> bs!1612898 (not (= lambda!354187 lambda!354179))))

(declare-fun bs!1612899 () Bool)

(assert (= bs!1612899 (and d!2011579 b!6414473)))

(assert (=> bs!1612899 (not (= lambda!354187 lambda!354178))))

(declare-fun bs!1612900 () Bool)

(assert (= bs!1612900 (and d!2011579 b!6414414)))

(assert (=> bs!1612900 (not (= lambda!354187 lambda!354166))))

(declare-fun bs!1612901 () Bool)

(assert (= bs!1612901 (and d!2011579 b!6412822)))

(assert (=> bs!1612901 (not (= lambda!354187 lambda!354037))))

(declare-fun bs!1612902 () Bool)

(assert (= bs!1612902 (and d!2011579 b!6414412)))

(assert (=> bs!1612902 (not (= lambda!354187 lambda!354165))))

(declare-fun bs!1612903 () Bool)

(assert (= bs!1612903 (and d!2011579 d!2011455)))

(assert (=> bs!1612903 (not (= lambda!354187 lambda!354163))))

(declare-fun bs!1612904 () Bool)

(assert (= bs!1612904 (and d!2011579 b!6412815)))

(assert (=> bs!1612904 (not (= lambda!354187 lambda!354033))))

(declare-fun bs!1612905 () Bool)

(assert (= bs!1612905 (and d!2011579 d!2011355)))

(assert (=> bs!1612905 (= lambda!354187 lambda!354143)))

(declare-fun bs!1612906 () Bool)

(assert (= bs!1612906 (and d!2011579 b!6412817)))

(assert (=> bs!1612906 (not (= lambda!354187 lambda!354034))))

(declare-fun bs!1612907 () Bool)

(assert (= bs!1612907 (and d!2011579 d!2011427)))

(assert (=> bs!1612907 (= lambda!354187 lambda!354154)))

(declare-fun bs!1612908 () Bool)

(assert (= bs!1612908 (and d!2011579 d!2011467)))

(assert (=> bs!1612908 (= lambda!354187 lambda!354173)))

(declare-fun bs!1612909 () Bool)

(assert (= bs!1612909 (and d!2011579 d!2011409)))

(assert (=> bs!1612909 (= lambda!354187 lambda!354149)))

(declare-fun bs!1612910 () Bool)

(assert (= bs!1612910 (and d!2011579 d!2011385)))

(assert (=> bs!1612910 (= lambda!354187 lambda!354147)))

(declare-fun bs!1612911 () Bool)

(assert (= bs!1612911 (and d!2011579 d!2011479)))

(assert (=> bs!1612911 (not (= lambda!354187 lambda!354176))))

(declare-fun bs!1612912 () Bool)

(assert (= bs!1612912 (and d!2011579 d!2011369)))

(assert (=> bs!1612912 (= lambda!354187 lambda!354145)))

(declare-fun bs!1612913 () Bool)

(assert (= bs!1612913 (and d!2011579 b!6412820)))

(assert (=> bs!1612913 (not (= lambda!354187 lambda!354036))))

(assert (=> d!2011579 (= (nullableZipper!2080 lt!2375203) (exists!2597 lt!2375203 lambda!354187))))

(declare-fun bs!1612914 () Bool)

(assert (= bs!1612914 d!2011579))

(declare-fun m!7210358 () Bool)

(assert (=> bs!1612914 m!7210358))

(assert (=> b!6413389 d!2011579))

(declare-fun d!2011581 () Bool)

(assert (=> d!2011581 (= (isConcat!1239 lt!2375325) ((_ is Concat!25160) lt!2375325))))

(assert (=> b!6413352 d!2011581))

(assert (=> b!6413287 d!2011521))

(declare-fun b!6414723 () Bool)

(declare-fun res!2636336 () Bool)

(declare-fun e!3892444 () Bool)

(assert (=> b!6414723 (=> (not res!2636336) (not e!3892444))))

(declare-fun lt!2375473 () Int)

(declare-fun call!551356 () Int)

(assert (=> b!6414723 (= res!2636336 (> lt!2375473 call!551356))))

(declare-fun e!3892439 () Bool)

(assert (=> b!6414723 (= e!3892439 e!3892444)))

(declare-fun b!6414724 () Bool)

(declare-fun e!3892442 () Bool)

(assert (=> b!6414724 (= e!3892442 e!3892439)))

(declare-fun c!1171568 () Bool)

(assert (=> b!6414724 (= c!1171568 ((_ is Concat!25160) (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))

(declare-fun bm!551349 () Bool)

(declare-fun call!551355 () Int)

(declare-fun call!551354 () Int)

(assert (=> bm!551349 (= call!551355 call!551354)))

(declare-fun c!1171563 () Bool)

(declare-fun c!1171564 () Bool)

(declare-fun bm!551350 () Bool)

(assert (=> bm!551350 (= call!551354 (regexDepth!342 (ite c!1171563 (reg!16644 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))) (ite c!1171564 (regTwo!33143 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))) (regOne!33142 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292))))))))))

(declare-fun bm!551351 () Bool)

(declare-fun call!551360 () Int)

(assert (=> bm!551351 (= call!551360 (regexDepth!342 (ite c!1171564 (regOne!33143 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))) (regTwo!33142 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))))

(declare-fun b!6414725 () Bool)

(declare-fun e!3892447 () Int)

(declare-fun call!551359 () Int)

(assert (=> b!6414725 (= e!3892447 (+ 1 call!551359))))

(declare-fun bm!551352 () Bool)

(declare-fun c!1171565 () Bool)

(declare-fun call!551357 () Int)

(assert (=> bm!551352 (= call!551357 (regexDepth!342 (ite c!1171565 (regTwo!33143 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))) (ite c!1171568 (regOne!33142 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))) (reg!16644 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292))))))))))

(declare-fun b!6414726 () Bool)

(declare-fun e!3892438 () Int)

(declare-fun e!3892446 () Int)

(assert (=> b!6414726 (= e!3892438 e!3892446)))

(assert (=> b!6414726 (= c!1171563 ((_ is Star!16315) (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))

(declare-fun bm!551353 () Bool)

(declare-fun call!551358 () Int)

(assert (=> bm!551353 (= call!551358 (regexDepth!342 (ite c!1171565 (regOne!33143 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))) (regTwo!33142 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))))

(declare-fun b!6414727 () Bool)

(declare-fun c!1171567 () Bool)

(assert (=> b!6414727 (= c!1171567 ((_ is Star!16315) (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))

(declare-fun e!3892441 () Bool)

(assert (=> b!6414727 (= e!3892439 e!3892441)))

(declare-fun b!6414728 () Bool)

(assert (=> b!6414728 (= e!3892441 (= lt!2375473 1))))

(declare-fun bm!551354 () Bool)

(assert (=> bm!551354 (= call!551359 (maxBigInt!0 (ite c!1171564 call!551360 call!551355) (ite c!1171564 call!551355 call!551360)))))

(declare-fun b!6414729 () Bool)

(declare-fun e!3892443 () Bool)

(assert (=> b!6414729 (= e!3892443 e!3892442)))

(assert (=> b!6414729 (= c!1171565 ((_ is Union!16315) (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))

(declare-fun b!6414730 () Bool)

(assert (=> b!6414730 (= c!1171564 ((_ is Union!16315) (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))

(declare-fun e!3892440 () Int)

(assert (=> b!6414730 (= e!3892446 e!3892440)))

(declare-fun d!2011583 () Bool)

(assert (=> d!2011583 e!3892443))

(declare-fun res!2636335 () Bool)

(assert (=> d!2011583 (=> (not res!2636335) (not e!3892443))))

(assert (=> d!2011583 (= res!2636335 (> lt!2375473 0))))

(assert (=> d!2011583 (= lt!2375473 e!3892438)))

(declare-fun c!1171566 () Bool)

(assert (=> d!2011583 (= c!1171566 ((_ is ElementMatch!16315) (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))

(assert (=> d!2011583 (= (regexDepth!342 (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))) lt!2375473)))

(declare-fun b!6414731 () Bool)

(declare-fun e!3892445 () Bool)

(assert (=> b!6414731 (= e!3892442 e!3892445)))

(declare-fun res!2636334 () Bool)

(assert (=> b!6414731 (= res!2636334 (> lt!2375473 call!551358))))

(assert (=> b!6414731 (=> (not res!2636334) (not e!3892445))))

(declare-fun bm!551355 () Bool)

(assert (=> bm!551355 (= call!551356 call!551357)))

(declare-fun b!6414732 () Bool)

(assert (=> b!6414732 (= e!3892446 (+ 1 call!551354))))

(declare-fun b!6414733 () Bool)

(assert (=> b!6414733 (= e!3892447 1)))

(declare-fun b!6414734 () Bool)

(assert (=> b!6414734 (= e!3892440 e!3892447)))

(declare-fun c!1171569 () Bool)

(assert (=> b!6414734 (= c!1171569 ((_ is Concat!25160) (ite c!1171215 (regTwo!33143 r!7292) (ite c!1171218 (regOne!33142 r!7292) (reg!16644 r!7292)))))))

(declare-fun b!6414735 () Bool)

(assert (=> b!6414735 (= e!3892444 (> lt!2375473 call!551358))))

(declare-fun b!6414736 () Bool)

(assert (=> b!6414736 (= e!3892438 1)))

(declare-fun b!6414737 () Bool)

(assert (=> b!6414737 (= e!3892441 (> lt!2375473 call!551356))))

(declare-fun b!6414738 () Bool)

(assert (=> b!6414738 (= e!3892445 (> lt!2375473 call!551357))))

(declare-fun b!6414739 () Bool)

(assert (=> b!6414739 (= e!3892440 (+ 1 call!551359))))

(assert (= (and d!2011583 c!1171566) b!6414736))

(assert (= (and d!2011583 (not c!1171566)) b!6414726))

(assert (= (and b!6414726 c!1171563) b!6414732))

(assert (= (and b!6414726 (not c!1171563)) b!6414730))

(assert (= (and b!6414730 c!1171564) b!6414739))

(assert (= (and b!6414730 (not c!1171564)) b!6414734))

(assert (= (and b!6414734 c!1171569) b!6414725))

(assert (= (and b!6414734 (not c!1171569)) b!6414733))

(assert (= (or b!6414739 b!6414725) bm!551349))

(assert (= (or b!6414739 b!6414725) bm!551351))

(assert (= (or b!6414739 b!6414725) bm!551354))

(assert (= (or b!6414732 bm!551349) bm!551350))

(assert (= (and d!2011583 res!2636335) b!6414729))

(assert (= (and b!6414729 c!1171565) b!6414731))

(assert (= (and b!6414729 (not c!1171565)) b!6414724))

(assert (= (and b!6414731 res!2636334) b!6414738))

(assert (= (and b!6414724 c!1171568) b!6414723))

(assert (= (and b!6414724 (not c!1171568)) b!6414727))

(assert (= (and b!6414723 res!2636336) b!6414735))

(assert (= (and b!6414727 c!1171567) b!6414737))

(assert (= (and b!6414727 (not c!1171567)) b!6414728))

(assert (= (or b!6414723 b!6414737) bm!551355))

(assert (= (or b!6414738 bm!551355) bm!551352))

(assert (= (or b!6414731 b!6414735) bm!551353))

(declare-fun m!7210360 () Bool)

(assert (=> bm!551352 m!7210360))

(declare-fun m!7210362 () Bool)

(assert (=> bm!551350 m!7210362))

(declare-fun m!7210364 () Bool)

(assert (=> bm!551354 m!7210364))

(declare-fun m!7210366 () Bool)

(assert (=> bm!551351 m!7210366))

(declare-fun m!7210368 () Bool)

(assert (=> bm!551353 m!7210368))

(assert (=> bm!551101 d!2011583))

(assert (=> b!6412863 d!2011357))

(declare-fun b!6414742 () Bool)

(declare-fun res!2636337 () Bool)

(declare-fun e!3892448 () Bool)

(assert (=> b!6414742 (=> (not res!2636337) (not e!3892448))))

(declare-fun lt!2375474 () List!65245)

(assert (=> b!6414742 (= res!2636337 (= (size!40373 lt!2375474) (+ (size!40373 (t!378857 (_1!36597 lt!2375224))) (size!40373 (_2!36597 lt!2375224)))))))

(declare-fun b!6414743 () Bool)

(assert (=> b!6414743 (= e!3892448 (or (not (= (_2!36597 lt!2375224) Nil!65121)) (= lt!2375474 (t!378857 (_1!36597 lt!2375224)))))))

(declare-fun b!6414740 () Bool)

(declare-fun e!3892449 () List!65245)

(assert (=> b!6414740 (= e!3892449 (_2!36597 lt!2375224))))

(declare-fun b!6414741 () Bool)

(assert (=> b!6414741 (= e!3892449 (Cons!65121 (h!71569 (t!378857 (_1!36597 lt!2375224))) (++!14383 (t!378857 (t!378857 (_1!36597 lt!2375224))) (_2!36597 lt!2375224))))))

(declare-fun d!2011585 () Bool)

(assert (=> d!2011585 e!3892448))

(declare-fun res!2636338 () Bool)

(assert (=> d!2011585 (=> (not res!2636338) (not e!3892448))))

(assert (=> d!2011585 (= res!2636338 (= (content!12344 lt!2375474) ((_ map or) (content!12344 (t!378857 (_1!36597 lt!2375224))) (content!12344 (_2!36597 lt!2375224)))))))

(assert (=> d!2011585 (= lt!2375474 e!3892449)))

(declare-fun c!1171570 () Bool)

(assert (=> d!2011585 (= c!1171570 ((_ is Nil!65121) (t!378857 (_1!36597 lt!2375224))))))

(assert (=> d!2011585 (= (++!14383 (t!378857 (_1!36597 lt!2375224)) (_2!36597 lt!2375224)) lt!2375474)))

(assert (= (and d!2011585 c!1171570) b!6414740))

(assert (= (and d!2011585 (not c!1171570)) b!6414741))

(assert (= (and d!2011585 res!2636338) b!6414742))

(assert (= (and b!6414742 res!2636337) b!6414743))

(declare-fun m!7210370 () Bool)

(assert (=> b!6414742 m!7210370))

(assert (=> b!6414742 m!7210238))

(assert (=> b!6414742 m!7208940))

(declare-fun m!7210372 () Bool)

(assert (=> b!6414741 m!7210372))

(declare-fun m!7210374 () Bool)

(assert (=> d!2011585 m!7210374))

(declare-fun m!7210376 () Bool)

(assert (=> d!2011585 m!7210376))

(assert (=> d!2011585 m!7208948))

(assert (=> b!6413276 d!2011585))

(declare-fun d!2011587 () Bool)

(assert (=> d!2011587 (= ($colon$colon!2176 (exprs!6199 lt!2375195) (ite (or c!1171264 c!1171265) (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (regOne!33142 r!7292)))) (Cons!65120 (ite (or c!1171264 c!1171265) (regTwo!33142 (reg!16644 (regOne!33142 r!7292))) (reg!16644 (regOne!33142 r!7292))) (exprs!6199 lt!2375195)))))

(assert (=> bm!551143 d!2011587))

(declare-fun bm!551356 () Bool)

(declare-fun call!551361 () (InoxSet Context!11398))

(assert (=> bm!551356 (= call!551361 (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375221))))) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375221)))))) (h!71569 s!2326)))))

(declare-fun b!6414744 () Bool)

(declare-fun e!3892450 () (InoxSet Context!11398))

(assert (=> b!6414744 (= e!3892450 ((_ map or) call!551361 (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375221)))))) (h!71569 s!2326))))))

(declare-fun b!6414745 () Bool)

(declare-fun e!3892452 () (InoxSet Context!11398))

(assert (=> b!6414745 (= e!3892452 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6414747 () Bool)

(assert (=> b!6414747 (= e!3892452 call!551361)))

(declare-fun b!6414748 () Bool)

(declare-fun e!3892451 () Bool)

(assert (=> b!6414748 (= e!3892451 (nullable!6308 (h!71568 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375221)))))))))

(declare-fun b!6414746 () Bool)

(assert (=> b!6414746 (= e!3892450 e!3892452)))

(declare-fun c!1171572 () Bool)

(assert (=> b!6414746 (= c!1171572 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375221))))))))

(declare-fun d!2011589 () Bool)

(declare-fun c!1171571 () Bool)

(assert (=> d!2011589 (= c!1171571 e!3892451)))

(declare-fun res!2636339 () Bool)

(assert (=> d!2011589 (=> (not res!2636339) (not e!3892451))))

(assert (=> d!2011589 (= res!2636339 ((_ is Cons!65120) (exprs!6199 (Context!11399 (t!378856 (exprs!6199 lt!2375221))))))))

(assert (=> d!2011589 (= (derivationStepZipperUp!1489 (Context!11399 (t!378856 (exprs!6199 lt!2375221))) (h!71569 s!2326)) e!3892450)))

(assert (= (and d!2011589 res!2636339) b!6414748))

(assert (= (and d!2011589 c!1171571) b!6414744))

(assert (= (and d!2011589 (not c!1171571)) b!6414746))

(assert (= (and b!6414746 c!1171572) b!6414747))

(assert (= (and b!6414746 (not c!1171572)) b!6414745))

(assert (= (or b!6414744 b!6414747) bm!551356))

(declare-fun m!7210378 () Bool)

(assert (=> bm!551356 m!7210378))

(declare-fun m!7210380 () Bool)

(assert (=> b!6414744 m!7210380))

(declare-fun m!7210382 () Bool)

(assert (=> b!6414748 m!7210382))

(assert (=> b!6413424 d!2011589))

(declare-fun bs!1612915 () Bool)

(declare-fun b!6414751 () Bool)

(assert (= bs!1612915 (and b!6414751 b!6413152)))

(declare-fun lambda!354188 () Int)

(assert (=> bs!1612915 (= (and (= (reg!16644 (regOne!33143 r!7292)) (reg!16644 r!7292)) (= (regOne!33143 r!7292) r!7292)) (= lambda!354188 lambda!354066))))

(declare-fun bs!1612916 () Bool)

(assert (= bs!1612916 (and b!6414751 d!2011443)))

(assert (=> bs!1612916 (not (= lambda!354188 lambda!354159))))

(declare-fun bs!1612917 () Bool)

(assert (= bs!1612917 (and b!6414751 b!6414345)))

(assert (=> bs!1612917 (= (and (= (reg!16644 (regOne!33143 r!7292)) (reg!16644 (regTwo!33143 lt!2375201))) (= (regOne!33143 r!7292) (regTwo!33143 lt!2375201))) (= lambda!354188 lambda!354150))))

(declare-fun bs!1612918 () Bool)

(assert (= bs!1612918 (and b!6414751 b!6412781)))

(assert (=> bs!1612918 (not (= lambda!354188 lambda!354022))))

(declare-fun bs!1612919 () Bool)

(assert (= bs!1612919 (and b!6414751 d!2010919)))

(assert (=> bs!1612919 (not (= lambda!354188 lambda!354051))))

(declare-fun bs!1612920 () Bool)

(assert (= bs!1612920 (and b!6414751 b!6414158)))

(assert (=> bs!1612920 (= (and (= (reg!16644 (regOne!33143 r!7292)) (reg!16644 (regOne!33143 lt!2375201))) (= (regOne!33143 r!7292) (regOne!33143 lt!2375201))) (= lambda!354188 lambda!354133))))

(assert (=> bs!1612919 (not (= lambda!354188 lambda!354052))))

(declare-fun bs!1612921 () Bool)

(assert (= bs!1612921 (and b!6414751 b!6412754)))

(assert (=> bs!1612921 (not (= lambda!354188 lambda!354025))))

(declare-fun bs!1612922 () Bool)

(assert (= bs!1612922 (and b!6414751 d!2011495)))

(assert (=> bs!1612922 (not (= lambda!354188 lambda!354181))))

(declare-fun bs!1612923 () Bool)

(assert (= bs!1612923 (and b!6414751 b!6413231)))

(assert (=> bs!1612923 (not (= lambda!354188 lambda!354073))))

(declare-fun bs!1612924 () Bool)

(assert (= bs!1612924 (and b!6414751 d!2010991)))

(assert (=> bs!1612924 (not (= lambda!354188 lambda!354077))))

(declare-fun bs!1612925 () Bool)

(assert (= bs!1612925 (and b!6414751 b!6413973)))

(assert (=> bs!1612925 (= (and (= (reg!16644 (regOne!33143 r!7292)) (reg!16644 (regTwo!33143 r!7292))) (= (regOne!33143 r!7292) (regTwo!33143 r!7292))) (= lambda!354188 lambda!354127))))

(declare-fun bs!1612926 () Bool)

(assert (= bs!1612926 (and b!6414751 d!2011349)))

(assert (=> bs!1612926 (not (= lambda!354188 lambda!354140))))

(declare-fun bs!1612927 () Bool)

(assert (= bs!1612927 (and b!6414751 b!6413975)))

(assert (=> bs!1612927 (not (= lambda!354188 lambda!354128))))

(declare-fun bs!1612928 () Bool)

(assert (= bs!1612928 (and b!6414751 b!6413229)))

(assert (=> bs!1612928 (= (and (= (reg!16644 (regOne!33143 r!7292)) (reg!16644 lt!2375201)) (= (regOne!33143 r!7292) lt!2375201)) (= lambda!354188 lambda!354070))))

(assert (=> bs!1612924 (not (= lambda!354188 lambda!354078))))

(declare-fun bs!1612929 () Bool)

(assert (= bs!1612929 (and b!6414751 b!6413154)))

(assert (=> bs!1612929 (not (= lambda!354188 lambda!354067))))

(assert (=> bs!1612921 (not (= lambda!354188 lambda!354024))))

(assert (=> bs!1612922 (not (= lambda!354188 lambda!354182))))

(assert (=> bs!1612918 (not (= lambda!354188 lambda!354021))))

(declare-fun bs!1612930 () Bool)

(assert (= bs!1612930 (and b!6414751 b!6414347)))

(assert (=> bs!1612930 (not (= lambda!354188 lambda!354151))))

(declare-fun bs!1612931 () Bool)

(assert (= bs!1612931 (and b!6414751 d!2011371)))

(assert (=> bs!1612931 (not (= lambda!354188 lambda!354146))))

(assert (=> bs!1612916 (not (= lambda!354188 lambda!354160))))

(declare-fun bs!1612932 () Bool)

(assert (= bs!1612932 (and b!6414751 b!6414160)))

(assert (=> bs!1612932 (not (= lambda!354188 lambda!354134))))

(declare-fun bs!1612933 () Bool)

(assert (= bs!1612933 (and b!6414751 d!2010911)))

(assert (=> bs!1612933 (not (= lambda!354188 lambda!354046))))

(declare-fun bs!1612934 () Bool)

(assert (= bs!1612934 (and b!6414751 d!2010973)))

(assert (=> bs!1612934 (not (= lambda!354188 lambda!354074))))

(assert (=> b!6414751 true))

(assert (=> b!6414751 true))

(declare-fun bs!1612935 () Bool)

(declare-fun b!6414753 () Bool)

(assert (= bs!1612935 (and b!6414753 b!6413152)))

(declare-fun lambda!354189 () Int)

(assert (=> bs!1612935 (not (= lambda!354189 lambda!354066))))

(declare-fun bs!1612936 () Bool)

(assert (= bs!1612936 (and b!6414753 d!2011443)))

(assert (=> bs!1612936 (not (= lambda!354189 lambda!354159))))

(declare-fun bs!1612937 () Bool)

(assert (= bs!1612937 (and b!6414753 b!6414345)))

(assert (=> bs!1612937 (not (= lambda!354189 lambda!354150))))

(declare-fun bs!1612938 () Bool)

(assert (= bs!1612938 (and b!6414753 b!6412781)))

(assert (=> bs!1612938 (= (and (= (regOne!33142 (regOne!33143 r!7292)) (regOne!33142 r!7292)) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354189 lambda!354022))))

(declare-fun bs!1612939 () Bool)

(assert (= bs!1612939 (and b!6414753 b!6414158)))

(assert (=> bs!1612939 (not (= lambda!354189 lambda!354133))))

(declare-fun bs!1612940 () Bool)

(assert (= bs!1612940 (and b!6414753 d!2010919)))

(assert (=> bs!1612940 (= (and (= (regOne!33142 (regOne!33143 r!7292)) (regOne!33142 r!7292)) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354189 lambda!354052))))

(declare-fun bs!1612941 () Bool)

(assert (= bs!1612941 (and b!6414753 b!6412754)))

(assert (=> bs!1612941 (= (and (= (regOne!33142 (regOne!33143 r!7292)) lt!2375222) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354189 lambda!354025))))

(declare-fun bs!1612942 () Bool)

(assert (= bs!1612942 (and b!6414753 d!2011495)))

(assert (=> bs!1612942 (not (= lambda!354189 lambda!354181))))

(declare-fun bs!1612943 () Bool)

(assert (= bs!1612943 (and b!6414753 b!6413231)))

(assert (=> bs!1612943 (= (and (= (regOne!33142 (regOne!33143 r!7292)) (regOne!33142 lt!2375201)) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 lt!2375201))) (= lambda!354189 lambda!354073))))

(declare-fun bs!1612944 () Bool)

(assert (= bs!1612944 (and b!6414753 d!2010991)))

(assert (=> bs!1612944 (not (= lambda!354189 lambda!354077))))

(declare-fun bs!1612945 () Bool)

(assert (= bs!1612945 (and b!6414753 b!6413973)))

(assert (=> bs!1612945 (not (= lambda!354189 lambda!354127))))

(declare-fun bs!1612946 () Bool)

(assert (= bs!1612946 (and b!6414753 d!2011349)))

(assert (=> bs!1612946 (not (= lambda!354189 lambda!354140))))

(declare-fun bs!1612947 () Bool)

(assert (= bs!1612947 (and b!6414753 b!6413975)))

(assert (=> bs!1612947 (= (and (= (regOne!33142 (regOne!33143 r!7292)) (regOne!33142 (regTwo!33143 r!7292))) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 (regTwo!33143 r!7292)))) (= lambda!354189 lambda!354128))))

(declare-fun bs!1612948 () Bool)

(assert (= bs!1612948 (and b!6414753 b!6413229)))

(assert (=> bs!1612948 (not (= lambda!354189 lambda!354070))))

(assert (=> bs!1612944 (= (and (= (regOne!33142 (regOne!33143 r!7292)) lt!2375222) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354189 lambda!354078))))

(assert (=> bs!1612940 (not (= lambda!354189 lambda!354051))))

(declare-fun bs!1612949 () Bool)

(assert (= bs!1612949 (and b!6414753 b!6414751)))

(assert (=> bs!1612949 (not (= lambda!354189 lambda!354188))))

(declare-fun bs!1612950 () Bool)

(assert (= bs!1612950 (and b!6414753 b!6413154)))

(assert (=> bs!1612950 (= (and (= (regOne!33142 (regOne!33143 r!7292)) (regOne!33142 r!7292)) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354189 lambda!354067))))

(assert (=> bs!1612941 (not (= lambda!354189 lambda!354024))))

(assert (=> bs!1612942 (= (and (= (regOne!33142 (regOne!33143 r!7292)) (regOne!33142 r!7292)) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354189 lambda!354182))))

(assert (=> bs!1612938 (not (= lambda!354189 lambda!354021))))

(declare-fun bs!1612951 () Bool)

(assert (= bs!1612951 (and b!6414753 b!6414347)))

(assert (=> bs!1612951 (= (and (= (regOne!33142 (regOne!33143 r!7292)) (regOne!33142 (regTwo!33143 lt!2375201))) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 (regTwo!33143 lt!2375201)))) (= lambda!354189 lambda!354151))))

(declare-fun bs!1612952 () Bool)

(assert (= bs!1612952 (and b!6414753 d!2011371)))

(assert (=> bs!1612952 (not (= lambda!354189 lambda!354146))))

(assert (=> bs!1612936 (= (and (= (regOne!33142 (regOne!33143 r!7292)) lt!2375222) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 r!7292))) (= lambda!354189 lambda!354160))))

(declare-fun bs!1612953 () Bool)

(assert (= bs!1612953 (and b!6414753 b!6414160)))

(assert (=> bs!1612953 (= (and (= (regOne!33142 (regOne!33143 r!7292)) (regOne!33142 (regOne!33143 lt!2375201))) (= (regTwo!33142 (regOne!33143 r!7292)) (regTwo!33142 (regOne!33143 lt!2375201)))) (= lambda!354189 lambda!354134))))

(declare-fun bs!1612954 () Bool)

(assert (= bs!1612954 (and b!6414753 d!2010911)))

(assert (=> bs!1612954 (not (= lambda!354189 lambda!354046))))

(declare-fun bs!1612955 () Bool)

(assert (= bs!1612955 (and b!6414753 d!2010973)))

(assert (=> bs!1612955 (not (= lambda!354189 lambda!354074))))

(assert (=> b!6414753 true))

(assert (=> b!6414753 true))

(declare-fun bm!551357 () Bool)

(declare-fun call!551362 () Bool)

(assert (=> bm!551357 (= call!551362 (isEmpty!37269 s!2326))))

(declare-fun bm!551358 () Bool)

(declare-fun c!1171575 () Bool)

(declare-fun call!551363 () Bool)

(assert (=> bm!551358 (= call!551363 (Exists!3385 (ite c!1171575 lambda!354188 lambda!354189)))))

(declare-fun b!6414749 () Bool)

(declare-fun e!3892454 () Bool)

(declare-fun e!3892458 () Bool)

(assert (=> b!6414749 (= e!3892454 e!3892458)))

(assert (=> b!6414749 (= c!1171575 ((_ is Star!16315) (regOne!33143 r!7292)))))

(declare-fun b!6414750 () Bool)

(declare-fun res!2636342 () Bool)

(declare-fun e!3892453 () Bool)

(assert (=> b!6414750 (=> res!2636342 e!3892453)))

(assert (=> b!6414750 (= res!2636342 call!551362)))

(assert (=> b!6414750 (= e!3892458 e!3892453)))

(assert (=> b!6414751 (= e!3892453 call!551363)))

(declare-fun b!6414752 () Bool)

(declare-fun e!3892457 () Bool)

(declare-fun e!3892456 () Bool)

(assert (=> b!6414752 (= e!3892457 e!3892456)))

(declare-fun res!2636340 () Bool)

(assert (=> b!6414752 (= res!2636340 (not ((_ is EmptyLang!16315) (regOne!33143 r!7292))))))

(assert (=> b!6414752 (=> (not res!2636340) (not e!3892456))))

(assert (=> b!6414753 (= e!3892458 call!551363)))

(declare-fun b!6414754 () Bool)

(declare-fun c!1171576 () Bool)

(assert (=> b!6414754 (= c!1171576 ((_ is ElementMatch!16315) (regOne!33143 r!7292)))))

(declare-fun e!3892455 () Bool)

(assert (=> b!6414754 (= e!3892456 e!3892455)))

(declare-fun b!6414755 () Bool)

(declare-fun e!3892459 () Bool)

(assert (=> b!6414755 (= e!3892459 (matchRSpec!3416 (regTwo!33143 (regOne!33143 r!7292)) s!2326))))

(declare-fun d!2011591 () Bool)

(declare-fun c!1171574 () Bool)

(assert (=> d!2011591 (= c!1171574 ((_ is EmptyExpr!16315) (regOne!33143 r!7292)))))

(assert (=> d!2011591 (= (matchRSpec!3416 (regOne!33143 r!7292) s!2326) e!3892457)))

(declare-fun b!6414756 () Bool)

(assert (=> b!6414756 (= e!3892455 (= s!2326 (Cons!65121 (c!1170970 (regOne!33143 r!7292)) Nil!65121)))))

(declare-fun b!6414757 () Bool)

(assert (=> b!6414757 (= e!3892454 e!3892459)))

(declare-fun res!2636341 () Bool)

(assert (=> b!6414757 (= res!2636341 (matchRSpec!3416 (regOne!33143 (regOne!33143 r!7292)) s!2326))))

(assert (=> b!6414757 (=> res!2636341 e!3892459)))

(declare-fun b!6414758 () Bool)

(declare-fun c!1171573 () Bool)

(assert (=> b!6414758 (= c!1171573 ((_ is Union!16315) (regOne!33143 r!7292)))))

(assert (=> b!6414758 (= e!3892455 e!3892454)))

(declare-fun b!6414759 () Bool)

(assert (=> b!6414759 (= e!3892457 call!551362)))

(assert (= (and d!2011591 c!1171574) b!6414759))

(assert (= (and d!2011591 (not c!1171574)) b!6414752))

(assert (= (and b!6414752 res!2636340) b!6414754))

(assert (= (and b!6414754 c!1171576) b!6414756))

(assert (= (and b!6414754 (not c!1171576)) b!6414758))

(assert (= (and b!6414758 c!1171573) b!6414757))

(assert (= (and b!6414758 (not c!1171573)) b!6414749))

(assert (= (and b!6414757 (not res!2636341)) b!6414755))

(assert (= (and b!6414749 c!1171575) b!6414750))

(assert (= (and b!6414749 (not c!1171575)) b!6414753))

(assert (= (and b!6414750 (not res!2636342)) b!6414751))

(assert (= (or b!6414751 b!6414753) bm!551358))

(assert (= (or b!6414759 b!6414750) bm!551357))

(assert (=> bm!551357 m!7208618))

(declare-fun m!7210384 () Bool)

(assert (=> bm!551358 m!7210384))

(declare-fun m!7210386 () Bool)

(assert (=> b!6414755 m!7210386))

(declare-fun m!7210388 () Bool)

(assert (=> b!6414757 m!7210388))

(assert (=> b!6413158 d!2011591))

(assert (=> b!6413359 d!2011049))

(declare-fun c!1171578 () Bool)

(declare-fun c!1171577 () Bool)

(declare-fun call!551365 () List!65244)

(declare-fun bm!551359 () Bool)

(declare-fun c!1171580 () Bool)

(declare-fun call!551369 () (InoxSet Context!11398))

(assert (=> bm!551359 (= call!551369 (derivationStepZipperDown!1563 (ite c!1171580 (regOne!33143 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (ite c!1171577 (regTwo!33142 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (ite c!1171578 (regOne!33142 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (reg!16644 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))))) (ite (or c!1171580 c!1171577) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (Context!11399 call!551365)) (h!71569 s!2326)))))

(declare-fun b!6414761 () Bool)

(declare-fun c!1171579 () Bool)

(assert (=> b!6414761 (= c!1171579 ((_ is Star!16315) (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))))))

(declare-fun e!3892463 () (InoxSet Context!11398))

(declare-fun e!3892461 () (InoxSet Context!11398))

(assert (=> b!6414761 (= e!3892463 e!3892461)))

(declare-fun b!6414762 () Bool)

(declare-fun call!551367 () (InoxSet Context!11398))

(assert (=> b!6414762 (= e!3892461 call!551367)))

(declare-fun b!6414763 () Bool)

(declare-fun e!3892460 () (InoxSet Context!11398))

(assert (=> b!6414763 (= e!3892460 e!3892463)))

(assert (=> b!6414763 (= c!1171578 ((_ is Concat!25160) (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))))))

(declare-fun b!6414764 () Bool)

(declare-fun e!3892464 () (InoxSet Context!11398))

(declare-fun call!551368 () (InoxSet Context!11398))

(assert (=> b!6414764 (= e!3892464 ((_ map or) call!551369 call!551368))))

(declare-fun b!6414765 () Bool)

(declare-fun e!3892462 () Bool)

(assert (=> b!6414765 (= e!3892462 (nullable!6308 (regOne!33142 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))))))

(declare-fun bm!551360 () Bool)

(declare-fun call!551364 () List!65244)

(assert (=> bm!551360 (= call!551368 (derivationStepZipperDown!1563 (ite c!1171580 (regTwo!33143 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (regOne!33142 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))) (ite c!1171580 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (Context!11399 call!551364)) (h!71569 s!2326)))))

(declare-fun b!6414760 () Bool)

(assert (=> b!6414760 (= e!3892463 call!551367)))

(declare-fun d!2011593 () Bool)

(declare-fun c!1171581 () Bool)

(assert (=> d!2011593 (= c!1171581 (and ((_ is ElementMatch!16315) (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (= (c!1170970 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (h!71569 s!2326))))))

(declare-fun e!3892465 () (InoxSet Context!11398))

(assert (=> d!2011593 (= (derivationStepZipperDown!1563 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (h!71569 s!2326)) e!3892465)))

(declare-fun bm!551361 () Bool)

(declare-fun call!551366 () (InoxSet Context!11398))

(assert (=> bm!551361 (= call!551367 call!551366)))

(declare-fun b!6414766 () Bool)

(assert (=> b!6414766 (= e!3892461 ((as const (Array Context!11398 Bool)) false))))

(declare-fun bm!551362 () Bool)

(assert (=> bm!551362 (= call!551364 ($colon$colon!2176 (exprs!6199 (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))) (ite (or c!1171577 c!1171578) (regTwo!33142 (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343))))))))))))

(declare-fun bm!551363 () Bool)

(assert (=> bm!551363 (= call!551366 call!551369)))

(declare-fun bm!551364 () Bool)

(assert (=> bm!551364 (= call!551365 call!551364)))

(declare-fun b!6414767 () Bool)

(assert (=> b!6414767 (= e!3892465 e!3892464)))

(assert (=> b!6414767 (= c!1171580 ((_ is Union!16315) (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))))))

(declare-fun b!6414768 () Bool)

(assert (=> b!6414768 (= e!3892460 ((_ map or) call!551368 call!551366))))

(declare-fun b!6414769 () Bool)

(assert (=> b!6414769 (= e!3892465 (store ((as const (Array Context!11398 Bool)) false) (Context!11399 (t!378856 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))) true))))

(declare-fun b!6414770 () Bool)

(assert (=> b!6414770 (= c!1171577 e!3892462)))

(declare-fun res!2636343 () Bool)

(assert (=> b!6414770 (=> (not res!2636343) (not e!3892462))))

(assert (=> b!6414770 (= res!2636343 ((_ is Concat!25160) (h!71568 (exprs!6199 (Context!11399 (Cons!65120 (h!71568 (exprs!6199 (h!71570 zl!343))) (t!378856 (exprs!6199 (h!71570 zl!343)))))))))))

(assert (=> b!6414770 (= e!3892464 e!3892460)))

(assert (= (and d!2011593 c!1171581) b!6414769))

(assert (= (and d!2011593 (not c!1171581)) b!6414767))

(assert (= (and b!6414767 c!1171580) b!6414764))

(assert (= (and b!6414767 (not c!1171580)) b!6414770))

(assert (= (and b!6414770 res!2636343) b!6414765))

(assert (= (and b!6414770 c!1171577) b!6414768))

(assert (= (and b!6414770 (not c!1171577)) b!6414763))

(assert (= (and b!6414763 c!1171578) b!6414760))

(assert (= (and b!6414763 (not c!1171578)) b!6414761))

(assert (= (and b!6414761 c!1171579) b!6414762))

(assert (= (and b!6414761 (not c!1171579)) b!6414766))

(assert (= (or b!6414760 b!6414762) bm!551364))

(assert (= (or b!6414760 b!6414762) bm!551361))

(assert (= (or b!6414768 bm!551364) bm!551362))

(assert (= (or b!6414768 bm!551361) bm!551363))

(assert (= (or b!6414764 b!6414768) bm!551360))

(assert (= (or b!6414764 bm!551363) bm!551359))

(declare-fun m!7210390 () Bool)

(assert (=> bm!551362 m!7210390))

(declare-fun m!7210392 () Bool)

(assert (=> b!6414765 m!7210392))

(declare-fun m!7210394 () Bool)

(assert (=> bm!551360 m!7210394))

(declare-fun m!7210396 () Bool)

(assert (=> b!6414769 m!7210396))

(declare-fun m!7210398 () Bool)

(assert (=> bm!551359 m!7210398))

(assert (=> bm!551155 d!2011593))

(assert (=> d!2010883 d!2011251))

(declare-fun b!6414771 () Bool)

(declare-fun res!2636346 () Bool)

(declare-fun e!3892466 () Bool)

(assert (=> b!6414771 (=> res!2636346 e!3892466)))

(assert (=> b!6414771 (= res!2636346 (not ((_ is Concat!25160) lt!2375325)))))

(declare-fun e!3892467 () Bool)

(assert (=> b!6414771 (= e!3892467 e!3892466)))

(declare-fun b!6414772 () Bool)

(declare-fun e!3892469 () Bool)

(declare-fun e!3892471 () Bool)

(assert (=> b!6414772 (= e!3892469 e!3892471)))

(declare-fun res!2636347 () Bool)

(assert (=> b!6414772 (= res!2636347 (not (nullable!6308 (reg!16644 lt!2375325))))))

(assert (=> b!6414772 (=> (not res!2636347) (not e!3892471))))

(declare-fun b!6414773 () Bool)

(declare-fun call!551372 () Bool)

(assert (=> b!6414773 (= e!3892471 call!551372)))

(declare-fun b!6414774 () Bool)

(declare-fun e!3892472 () Bool)

(assert (=> b!6414774 (= e!3892466 e!3892472)))

(declare-fun res!2636344 () Bool)

(assert (=> b!6414774 (=> (not res!2636344) (not e!3892472))))

(declare-fun call!551370 () Bool)

(assert (=> b!6414774 (= res!2636344 call!551370)))

(declare-fun bm!551365 () Bool)

(declare-fun call!551371 () Bool)

(assert (=> bm!551365 (= call!551371 call!551372)))

(declare-fun b!6414776 () Bool)

(declare-fun res!2636345 () Bool)

(declare-fun e!3892470 () Bool)

(assert (=> b!6414776 (=> (not res!2636345) (not e!3892470))))

(assert (=> b!6414776 (= res!2636345 call!551370)))

(assert (=> b!6414776 (= e!3892467 e!3892470)))

(declare-fun b!6414777 () Bool)

(declare-fun e!3892468 () Bool)

(assert (=> b!6414777 (= e!3892468 e!3892469)))

(declare-fun c!1171582 () Bool)

(assert (=> b!6414777 (= c!1171582 ((_ is Star!16315) lt!2375325))))

(declare-fun c!1171583 () Bool)

(declare-fun bm!551366 () Bool)

(assert (=> bm!551366 (= call!551372 (validRegex!8051 (ite c!1171582 (reg!16644 lt!2375325) (ite c!1171583 (regTwo!33143 lt!2375325) (regTwo!33142 lt!2375325)))))))

(declare-fun bm!551367 () Bool)

(assert (=> bm!551367 (= call!551370 (validRegex!8051 (ite c!1171583 (regOne!33143 lt!2375325) (regOne!33142 lt!2375325))))))

(declare-fun b!6414778 () Bool)

(assert (=> b!6414778 (= e!3892469 e!3892467)))

(assert (=> b!6414778 (= c!1171583 ((_ is Union!16315) lt!2375325))))

(declare-fun b!6414779 () Bool)

(assert (=> b!6414779 (= e!3892470 call!551371)))

(declare-fun d!2011595 () Bool)

(declare-fun res!2636348 () Bool)

(assert (=> d!2011595 (=> res!2636348 e!3892468)))

(assert (=> d!2011595 (= res!2636348 ((_ is ElementMatch!16315) lt!2375325))))

(assert (=> d!2011595 (= (validRegex!8051 lt!2375325) e!3892468)))

(declare-fun b!6414775 () Bool)

(assert (=> b!6414775 (= e!3892472 call!551371)))

(assert (= (and d!2011595 (not res!2636348)) b!6414777))

(assert (= (and b!6414777 c!1171582) b!6414772))

(assert (= (and b!6414777 (not c!1171582)) b!6414778))

(assert (= (and b!6414772 res!2636347) b!6414773))

(assert (= (and b!6414778 c!1171583) b!6414776))

(assert (= (and b!6414778 (not c!1171583)) b!6414771))

(assert (= (and b!6414776 res!2636345) b!6414779))

(assert (= (and b!6414771 (not res!2636346)) b!6414774))

(assert (= (and b!6414774 res!2636344) b!6414775))

(assert (= (or b!6414779 b!6414775) bm!551365))

(assert (= (or b!6414776 b!6414774) bm!551367))

(assert (= (or b!6414773 bm!551365) bm!551366))

(declare-fun m!7210400 () Bool)

(assert (=> b!6414772 m!7210400))

(declare-fun m!7210402 () Bool)

(assert (=> bm!551366 m!7210402))

(declare-fun m!7210404 () Bool)

(assert (=> bm!551367 m!7210404))

(assert (=> d!2010999 d!2011595))

(declare-fun d!2011597 () Bool)

(declare-fun res!2636349 () Bool)

(declare-fun e!3892473 () Bool)

(assert (=> d!2011597 (=> res!2636349 e!3892473)))

(assert (=> d!2011597 (= res!2636349 ((_ is Nil!65120) (exprs!6199 (h!71570 zl!343))))))

(assert (=> d!2011597 (= (forall!15504 (exprs!6199 (h!71570 zl!343)) lambda!354084) e!3892473)))

(declare-fun b!6414780 () Bool)

(declare-fun e!3892474 () Bool)

(assert (=> b!6414780 (= e!3892473 e!3892474)))

(declare-fun res!2636350 () Bool)

(assert (=> b!6414780 (=> (not res!2636350) (not e!3892474))))

(assert (=> b!6414780 (= res!2636350 (dynLambda!25863 lambda!354084 (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun b!6414781 () Bool)

(assert (=> b!6414781 (= e!3892474 (forall!15504 (t!378856 (exprs!6199 (h!71570 zl!343))) lambda!354084))))

(assert (= (and d!2011597 (not res!2636349)) b!6414780))

(assert (= (and b!6414780 res!2636350) b!6414781))

(declare-fun b_lambda!243857 () Bool)

(assert (=> (not b_lambda!243857) (not b!6414780)))

(declare-fun m!7210406 () Bool)

(assert (=> b!6414780 m!7210406))

(declare-fun m!7210408 () Bool)

(assert (=> b!6414781 m!7210408))

(assert (=> d!2010999 d!2011597))

(assert (=> b!6413171 d!2011205))

(assert (=> b!6413171 d!2011207))

(declare-fun bs!1612956 () Bool)

(declare-fun d!2011599 () Bool)

(assert (= bs!1612956 (and d!2011599 d!2011231)))

(declare-fun lambda!354190 () Int)

(assert (=> bs!1612956 (= lambda!354190 lambda!354126)))

(declare-fun bs!1612957 () Bool)

(assert (= bs!1612957 (and d!2011599 d!2011049)))

(assert (=> bs!1612957 (= lambda!354190 lambda!354098)))

(declare-fun bs!1612958 () Bool)

(assert (= bs!1612958 (and d!2011599 d!2011425)))

(assert (=> bs!1612958 (= lambda!354190 lambda!354153)))

(declare-fun bs!1612959 () Bool)

(assert (= bs!1612959 (and d!2011599 d!2011553)))

(assert (=> bs!1612959 (= lambda!354190 lambda!354183)))

(declare-fun bs!1612960 () Bool)

(assert (= bs!1612960 (and d!2011599 d!2011275)))

(assert (=> bs!1612960 (= lambda!354190 lambda!354131)))

(declare-fun bs!1612961 () Bool)

(assert (= bs!1612961 (and d!2011599 d!2011555)))

(assert (=> bs!1612961 (= lambda!354190 lambda!354184)))

(declare-fun bs!1612962 () Bool)

(assert (= bs!1612962 (and d!2011599 d!2011573)))

(assert (=> bs!1612962 (= lambda!354190 lambda!354185)))

(declare-fun bs!1612963 () Bool)

(assert (= bs!1612963 (and d!2011599 d!2010999)))

(assert (=> bs!1612963 (= lambda!354190 lambda!354084)))

(declare-fun bs!1612964 () Bool)

(assert (= bs!1612964 (and d!2011599 b!6414423)))

(assert (=> bs!1612964 (not (= lambda!354190 lambda!354172))))

(declare-fun bs!1612965 () Bool)

(assert (= bs!1612965 (and d!2011599 b!6414470)))

(assert (=> bs!1612965 (not (= lambda!354190 lambda!354174))))

(declare-fun bs!1612966 () Bool)

(assert (= bs!1612966 (and d!2011599 d!2011273)))

(assert (=> bs!1612966 (= lambda!354190 lambda!354130)))

(declare-fun bs!1612967 () Bool)

(assert (= bs!1612967 (and d!2011599 d!2011269)))

(assert (=> bs!1612967 (= lambda!354190 lambda!354129)))

(declare-fun bs!1612968 () Bool)

(assert (= bs!1612968 (and d!2011599 d!2011135)))

(assert (=> bs!1612968 (= lambda!354190 lambda!354123)))

(declare-fun bs!1612969 () Bool)

(assert (= bs!1612969 (and d!2011599 b!6414472)))

(assert (=> bs!1612969 (not (= lambda!354190 lambda!354175))))

(declare-fun bs!1612970 () Bool)

(assert (= bs!1612970 (and d!2011599 d!2011365)))

(assert (=> bs!1612970 (= lambda!354190 lambda!354144)))

(declare-fun bs!1612971 () Bool)

(assert (= bs!1612971 (and d!2011599 d!2011171)))

(assert (=> bs!1612971 (= lambda!354190 lambda!354125)))

(declare-fun bs!1612972 () Bool)

(assert (= bs!1612972 (and d!2011599 d!2011077)))

(assert (=> bs!1612972 (= lambda!354190 lambda!354116)))

(declare-fun bs!1612973 () Bool)

(assert (= bs!1612973 (and d!2011599 d!2011089)))

(assert (=> bs!1612973 (= lambda!354190 lambda!354119)))

(declare-fun bs!1612974 () Bool)

(assert (= bs!1612974 (and d!2011599 d!2011575)))

(assert (=> bs!1612974 (= lambda!354190 lambda!354186)))

(declare-fun bs!1612975 () Bool)

(assert (= bs!1612975 (and d!2011599 b!6414421)))

(assert (=> bs!1612975 (not (= lambda!354190 lambda!354171))))

(declare-fun b!6414782 () Bool)

(declare-fun e!3892479 () Bool)

(declare-fun lt!2375475 () Regex!16315)

(assert (=> b!6414782 (= e!3892479 (isConcat!1239 lt!2375475))))

(declare-fun b!6414783 () Bool)

(declare-fun e!3892475 () Regex!16315)

(assert (=> b!6414783 (= e!3892475 (h!71568 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun e!3892478 () Bool)

(assert (=> d!2011599 e!3892478))

(declare-fun res!2636351 () Bool)

(assert (=> d!2011599 (=> (not res!2636351) (not e!3892478))))

(assert (=> d!2011599 (= res!2636351 (validRegex!8051 lt!2375475))))

(assert (=> d!2011599 (= lt!2375475 e!3892475)))

(declare-fun c!1171586 () Bool)

(declare-fun e!3892477 () Bool)

(assert (=> d!2011599 (= c!1171586 e!3892477)))

(declare-fun res!2636352 () Bool)

(assert (=> d!2011599 (=> (not res!2636352) (not e!3892477))))

(assert (=> d!2011599 (= res!2636352 ((_ is Cons!65120) (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(assert (=> d!2011599 (forall!15504 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343)))) lambda!354190)))

(assert (=> d!2011599 (= (generalisedConcat!1912 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))) lt!2375475)))

(declare-fun b!6414784 () Bool)

(declare-fun e!3892480 () Bool)

(assert (=> b!6414784 (= e!3892480 (isEmptyExpr!1716 lt!2375475))))

(declare-fun b!6414785 () Bool)

(assert (=> b!6414785 (= e!3892479 (= lt!2375475 (head!13122 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun b!6414786 () Bool)

(assert (=> b!6414786 (= e!3892477 (isEmpty!37268 (t!378856 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun b!6414787 () Bool)

(assert (=> b!6414787 (= e!3892478 e!3892480)))

(declare-fun c!1171585 () Bool)

(assert (=> b!6414787 (= c!1171585 (isEmpty!37268 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun b!6414788 () Bool)

(declare-fun e!3892476 () Regex!16315)

(assert (=> b!6414788 (= e!3892476 EmptyExpr!16315)))

(declare-fun b!6414789 () Bool)

(assert (=> b!6414789 (= e!3892476 (Concat!25160 (h!71568 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))) (generalisedConcat!1912 (t!378856 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))))))))

(declare-fun b!6414790 () Bool)

(assert (=> b!6414790 (= e!3892480 e!3892479)))

(declare-fun c!1171584 () Bool)

(assert (=> b!6414790 (= c!1171584 (isEmpty!37268 (tail!12207 (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343)))))))))

(declare-fun b!6414791 () Bool)

(assert (=> b!6414791 (= e!3892475 e!3892476)))

(declare-fun c!1171587 () Bool)

(assert (=> b!6414791 (= c!1171587 ((_ is Cons!65120) (t!378856 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(assert (= (and d!2011599 res!2636352) b!6414786))

(assert (= (and d!2011599 c!1171586) b!6414783))

(assert (= (and d!2011599 (not c!1171586)) b!6414791))

(assert (= (and b!6414791 c!1171587) b!6414789))

(assert (= (and b!6414791 (not c!1171587)) b!6414788))

(assert (= (and d!2011599 res!2636351) b!6414787))

(assert (= (and b!6414787 c!1171585) b!6414784))

(assert (= (and b!6414787 (not c!1171585)) b!6414790))

(assert (= (and b!6414790 c!1171584) b!6414785))

(assert (= (and b!6414790 (not c!1171584)) b!6414782))

(declare-fun m!7210410 () Bool)

(assert (=> b!6414784 m!7210410))

(declare-fun m!7210412 () Bool)

(assert (=> b!6414790 m!7210412))

(assert (=> b!6414790 m!7210412))

(declare-fun m!7210414 () Bool)

(assert (=> b!6414790 m!7210414))

(declare-fun m!7210416 () Bool)

(assert (=> b!6414782 m!7210416))

(declare-fun m!7210418 () Bool)

(assert (=> b!6414786 m!7210418))

(assert (=> b!6414787 m!7209168))

(declare-fun m!7210420 () Bool)

(assert (=> b!6414785 m!7210420))

(declare-fun m!7210422 () Bool)

(assert (=> d!2011599 m!7210422))

(declare-fun m!7210424 () Bool)

(assert (=> d!2011599 m!7210424))

(declare-fun m!7210426 () Bool)

(assert (=> b!6414789 m!7210426))

(assert (=> b!6413600 d!2011599))

(declare-fun d!2011601 () Bool)

(assert (=> d!2011601 true))

(declare-fun setRes!43770 () Bool)

(assert (=> d!2011601 setRes!43770))

(declare-fun condSetEmpty!43770 () Bool)

(declare-fun res!2636353 () (InoxSet Context!11398))

(assert (=> d!2011601 (= condSetEmpty!43770 (= res!2636353 ((as const (Array Context!11398 Bool)) false)))))

(assert (=> d!2011601 (= (choose!47643 z!1189 lambda!354023) res!2636353)))

(declare-fun setIsEmpty!43770 () Bool)

(assert (=> setIsEmpty!43770 setRes!43770))

(declare-fun setElem!43770 () Context!11398)

(declare-fun setNonEmpty!43770 () Bool)

(declare-fun tp!1781836 () Bool)

(declare-fun e!3892481 () Bool)

(assert (=> setNonEmpty!43770 (= setRes!43770 (and tp!1781836 (inv!84034 setElem!43770) e!3892481))))

(declare-fun setRest!43770 () (InoxSet Context!11398))

(assert (=> setNonEmpty!43770 (= res!2636353 ((_ map or) (store ((as const (Array Context!11398 Bool)) false) setElem!43770 true) setRest!43770))))

(declare-fun b!6414792 () Bool)

(declare-fun tp!1781835 () Bool)

(assert (=> b!6414792 (= e!3892481 tp!1781835)))

(assert (= (and d!2011601 condSetEmpty!43770) setIsEmpty!43770))

(assert (= (and d!2011601 (not condSetEmpty!43770)) setNonEmpty!43770))

(assert (= setNonEmpty!43770 b!6414792))

(declare-fun m!7210428 () Bool)

(assert (=> setNonEmpty!43770 m!7210428))

(assert (=> d!2011131 d!2011601))

(declare-fun b!6414793 () Bool)

(declare-fun res!2636356 () Bool)

(declare-fun e!3892488 () Bool)

(assert (=> b!6414793 (=> (not res!2636356) (not e!3892488))))

(declare-fun lt!2375476 () Int)

(declare-fun call!551375 () Int)

(assert (=> b!6414793 (= res!2636356 (> lt!2375476 call!551375))))

(declare-fun e!3892483 () Bool)

(assert (=> b!6414793 (= e!3892483 e!3892488)))

(declare-fun b!6414794 () Bool)

(declare-fun e!3892486 () Bool)

(assert (=> b!6414794 (= e!3892486 e!3892483)))

(declare-fun c!1171593 () Bool)

(assert (=> b!6414794 (= c!1171593 ((_ is Concat!25160) (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))

(declare-fun bm!551368 () Bool)

(declare-fun call!551374 () Int)

(declare-fun call!551373 () Int)

(assert (=> bm!551368 (= call!551374 call!551373)))

(declare-fun c!1171588 () Bool)

(declare-fun bm!551369 () Bool)

(declare-fun c!1171589 () Bool)

(assert (=> bm!551369 (= call!551373 (regexDepth!342 (ite c!1171588 (reg!16644 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))) (ite c!1171589 (regTwo!33143 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))) (regOne!33142 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210))))))))))

(declare-fun call!551379 () Int)

(declare-fun bm!551370 () Bool)

(assert (=> bm!551370 (= call!551379 (regexDepth!342 (ite c!1171589 (regOne!33143 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))) (regTwo!33142 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))))

(declare-fun b!6414795 () Bool)

(declare-fun e!3892491 () Int)

(declare-fun call!551378 () Int)

(assert (=> b!6414795 (= e!3892491 (+ 1 call!551378))))

(declare-fun call!551376 () Int)

(declare-fun bm!551371 () Bool)

(declare-fun c!1171590 () Bool)

(assert (=> bm!551371 (= call!551376 (regexDepth!342 (ite c!1171590 (regTwo!33143 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))) (ite c!1171593 (regOne!33142 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))) (reg!16644 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210))))))))))

(declare-fun b!6414796 () Bool)

(declare-fun e!3892482 () Int)

(declare-fun e!3892490 () Int)

(assert (=> b!6414796 (= e!3892482 e!3892490)))

(assert (=> b!6414796 (= c!1171588 ((_ is Star!16315) (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))

(declare-fun call!551377 () Int)

(declare-fun bm!551372 () Bool)

(assert (=> bm!551372 (= call!551377 (regexDepth!342 (ite c!1171590 (regOne!33143 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))) (regTwo!33142 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))))

(declare-fun b!6414797 () Bool)

(declare-fun c!1171592 () Bool)

(assert (=> b!6414797 (= c!1171592 ((_ is Star!16315) (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))

(declare-fun e!3892485 () Bool)

(assert (=> b!6414797 (= e!3892483 e!3892485)))

(declare-fun b!6414798 () Bool)

(assert (=> b!6414798 (= e!3892485 (= lt!2375476 1))))

(declare-fun bm!551373 () Bool)

(assert (=> bm!551373 (= call!551378 (maxBigInt!0 (ite c!1171589 call!551379 call!551374) (ite c!1171589 call!551374 call!551379)))))

(declare-fun b!6414799 () Bool)

(declare-fun e!3892487 () Bool)

(assert (=> b!6414799 (= e!3892487 e!3892486)))

(assert (=> b!6414799 (= c!1171590 ((_ is Union!16315) (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))

(declare-fun b!6414800 () Bool)

(assert (=> b!6414800 (= c!1171589 ((_ is Union!16315) (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))

(declare-fun e!3892484 () Int)

(assert (=> b!6414800 (= e!3892490 e!3892484)))

(declare-fun d!2011603 () Bool)

(assert (=> d!2011603 e!3892487))

(declare-fun res!2636355 () Bool)

(assert (=> d!2011603 (=> (not res!2636355) (not e!3892487))))

(assert (=> d!2011603 (= res!2636355 (> lt!2375476 0))))

(assert (=> d!2011603 (= lt!2375476 e!3892482)))

(declare-fun c!1171591 () Bool)

(assert (=> d!2011603 (= c!1171591 ((_ is ElementMatch!16315) (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))

(assert (=> d!2011603 (= (regexDepth!342 (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))) lt!2375476)))

(declare-fun b!6414801 () Bool)

(declare-fun e!3892489 () Bool)

(assert (=> b!6414801 (= e!3892486 e!3892489)))

(declare-fun res!2636354 () Bool)

(assert (=> b!6414801 (= res!2636354 (> lt!2375476 call!551377))))

(assert (=> b!6414801 (=> (not res!2636354) (not e!3892489))))

(declare-fun bm!551374 () Bool)

(assert (=> bm!551374 (= call!551375 call!551376)))

(declare-fun b!6414802 () Bool)

(assert (=> b!6414802 (= e!3892490 (+ 1 call!551373))))

(declare-fun b!6414803 () Bool)

(assert (=> b!6414803 (= e!3892491 1)))

(declare-fun b!6414804 () Bool)

(assert (=> b!6414804 (= e!3892484 e!3892491)))

(declare-fun c!1171594 () Bool)

(assert (=> b!6414804 (= c!1171594 ((_ is Concat!25160) (ite c!1171222 (regTwo!33143 lt!2375210) (ite c!1171225 (regOne!33142 lt!2375210) (reg!16644 lt!2375210)))))))

(declare-fun b!6414805 () Bool)

(assert (=> b!6414805 (= e!3892488 (> lt!2375476 call!551377))))

(declare-fun b!6414806 () Bool)

(assert (=> b!6414806 (= e!3892482 1)))

(declare-fun b!6414807 () Bool)

(assert (=> b!6414807 (= e!3892485 (> lt!2375476 call!551375))))

(declare-fun b!6414808 () Bool)

(assert (=> b!6414808 (= e!3892489 (> lt!2375476 call!551376))))

(declare-fun b!6414809 () Bool)

(assert (=> b!6414809 (= e!3892484 (+ 1 call!551378))))

(assert (= (and d!2011603 c!1171591) b!6414806))

(assert (= (and d!2011603 (not c!1171591)) b!6414796))

(assert (= (and b!6414796 c!1171588) b!6414802))

(assert (= (and b!6414796 (not c!1171588)) b!6414800))

(assert (= (and b!6414800 c!1171589) b!6414809))

(assert (= (and b!6414800 (not c!1171589)) b!6414804))

(assert (= (and b!6414804 c!1171594) b!6414795))

(assert (= (and b!6414804 (not c!1171594)) b!6414803))

(assert (= (or b!6414809 b!6414795) bm!551368))

(assert (= (or b!6414809 b!6414795) bm!551370))

(assert (= (or b!6414809 b!6414795) bm!551373))

(assert (= (or b!6414802 bm!551368) bm!551369))

(assert (= (and d!2011603 res!2636355) b!6414799))

(assert (= (and b!6414799 c!1171590) b!6414801))

(assert (= (and b!6414799 (not c!1171590)) b!6414794))

(assert (= (and b!6414801 res!2636354) b!6414808))

(assert (= (and b!6414794 c!1171593) b!6414793))

(assert (= (and b!6414794 (not c!1171593)) b!6414797))

(assert (= (and b!6414793 res!2636356) b!6414805))

(assert (= (and b!6414797 c!1171592) b!6414807))

(assert (= (and b!6414797 (not c!1171592)) b!6414798))

(assert (= (or b!6414793 b!6414807) bm!551374))

(assert (= (or b!6414808 bm!551374) bm!551371))

(assert (= (or b!6414801 b!6414805) bm!551372))

(declare-fun m!7210430 () Bool)

(assert (=> bm!551371 m!7210430))

(declare-fun m!7210432 () Bool)

(assert (=> bm!551369 m!7210432))

(declare-fun m!7210434 () Bool)

(assert (=> bm!551373 m!7210434))

(declare-fun m!7210436 () Bool)

(assert (=> bm!551370 m!7210436))

(declare-fun m!7210438 () Bool)

(assert (=> bm!551372 m!7210438))

(assert (=> bm!551114 d!2011603))

(declare-fun d!2011605 () Bool)

(assert (=> d!2011605 true))

(declare-fun setRes!43771 () Bool)

(assert (=> d!2011605 setRes!43771))

(declare-fun condSetEmpty!43771 () Bool)

(declare-fun res!2636357 () (InoxSet Context!11398))

(assert (=> d!2011605 (= condSetEmpty!43771 (= res!2636357 ((as const (Array Context!11398 Bool)) false)))))

(assert (=> d!2011605 (= (choose!47643 lt!2375207 lambda!354023) res!2636357)))

(declare-fun setIsEmpty!43771 () Bool)

(assert (=> setIsEmpty!43771 setRes!43771))

(declare-fun tp!1781838 () Bool)

(declare-fun e!3892492 () Bool)

(declare-fun setElem!43771 () Context!11398)

(declare-fun setNonEmpty!43771 () Bool)

(assert (=> setNonEmpty!43771 (= setRes!43771 (and tp!1781838 (inv!84034 setElem!43771) e!3892492))))

(declare-fun setRest!43771 () (InoxSet Context!11398))

(assert (=> setNonEmpty!43771 (= res!2636357 ((_ map or) (store ((as const (Array Context!11398 Bool)) false) setElem!43771 true) setRest!43771))))

(declare-fun b!6414810 () Bool)

(declare-fun tp!1781837 () Bool)

(assert (=> b!6414810 (= e!3892492 tp!1781837)))

(assert (= (and d!2011605 condSetEmpty!43771) setIsEmpty!43771))

(assert (= (and d!2011605 (not condSetEmpty!43771)) setNonEmpty!43771))

(assert (= setNonEmpty!43771 b!6414810))

(declare-fun m!7210440 () Bool)

(assert (=> setNonEmpty!43771 m!7210440))

(assert (=> d!2011163 d!2011605))

(assert (=> bs!1612365 d!2011027))

(declare-fun d!2011607 () Bool)

(assert (=> d!2011607 (= (head!13122 (unfocusZipperList!1736 zl!343)) (h!71568 (unfocusZipperList!1736 zl!343)))))

(assert (=> b!6413721 d!2011607))

(declare-fun d!2011609 () Bool)

(assert (=> d!2011609 true))

(assert (=> d!2011609 true))

(declare-fun res!2636358 () Bool)

(assert (=> d!2011609 (= (choose!47631 lambda!354022) res!2636358)))

(assert (=> d!2010909 d!2011609))

(declare-fun d!2011611 () Bool)

(declare-fun c!1171597 () Bool)

(assert (=> d!2011611 (= c!1171597 ((_ is Nil!65121) lt!2375308))))

(declare-fun e!3892495 () (InoxSet C!32900))

(assert (=> d!2011611 (= (content!12344 lt!2375308) e!3892495)))

(declare-fun b!6414815 () Bool)

(assert (=> b!6414815 (= e!3892495 ((as const (Array C!32900 Bool)) false))))

(declare-fun b!6414816 () Bool)

(assert (=> b!6414816 (= e!3892495 ((_ map or) (store ((as const (Array C!32900 Bool)) false) (h!71569 lt!2375308) true) (content!12344 (t!378857 lt!2375308))))))

(assert (= (and d!2011611 c!1171597) b!6414815))

(assert (= (and d!2011611 (not c!1171597)) b!6414816))

(declare-fun m!7210442 () Bool)

(assert (=> b!6414816 m!7210442))

(declare-fun m!7210444 () Bool)

(assert (=> b!6414816 m!7210444))

(assert (=> d!2010977 d!2011611))

(declare-fun d!2011613 () Bool)

(declare-fun c!1171598 () Bool)

(assert (=> d!2011613 (= c!1171598 ((_ is Nil!65121) (_1!36597 lt!2375224)))))

(declare-fun e!3892496 () (InoxSet C!32900))

(assert (=> d!2011613 (= (content!12344 (_1!36597 lt!2375224)) e!3892496)))

(declare-fun b!6414817 () Bool)

(assert (=> b!6414817 (= e!3892496 ((as const (Array C!32900 Bool)) false))))

(declare-fun b!6414818 () Bool)

(assert (=> b!6414818 (= e!3892496 ((_ map or) (store ((as const (Array C!32900 Bool)) false) (h!71569 (_1!36597 lt!2375224)) true) (content!12344 (t!378857 (_1!36597 lt!2375224)))))))

(assert (= (and d!2011613 c!1171598) b!6414817))

(assert (= (and d!2011613 (not c!1171598)) b!6414818))

(declare-fun m!7210446 () Bool)

(assert (=> b!6414818 m!7210446))

(assert (=> b!6414818 m!7210376))

(assert (=> d!2010977 d!2011613))

(declare-fun d!2011615 () Bool)

(declare-fun c!1171599 () Bool)

(assert (=> d!2011615 (= c!1171599 ((_ is Nil!65121) (_2!36597 lt!2375224)))))

(declare-fun e!3892497 () (InoxSet C!32900))

(assert (=> d!2011615 (= (content!12344 (_2!36597 lt!2375224)) e!3892497)))

(declare-fun b!6414819 () Bool)

(assert (=> b!6414819 (= e!3892497 ((as const (Array C!32900 Bool)) false))))

(declare-fun b!6414820 () Bool)

(assert (=> b!6414820 (= e!3892497 ((_ map or) (store ((as const (Array C!32900 Bool)) false) (h!71569 (_2!36597 lt!2375224)) true) (content!12344 (t!378857 (_2!36597 lt!2375224)))))))

(assert (= (and d!2011615 c!1171599) b!6414819))

(assert (= (and d!2011615 (not c!1171599)) b!6414820))

(declare-fun m!7210448 () Bool)

(assert (=> b!6414820 m!7210448))

(declare-fun m!7210450 () Bool)

(assert (=> b!6414820 m!7210450))

(assert (=> d!2010977 d!2011615))

(assert (=> d!2010937 d!2010935))

(assert (=> d!2010937 d!2011377))

(assert (=> b!6413179 d!2011199))

(declare-fun b!6414823 () Bool)

(declare-fun res!2636359 () Bool)

(declare-fun e!3892498 () Bool)

(assert (=> b!6414823 (=> (not res!2636359) (not e!3892498))))

(declare-fun lt!2375477 () List!65245)

(assert (=> b!6414823 (= res!2636359 (= (size!40373 lt!2375477) (+ (size!40373 (_1!36597 (get!22556 lt!2375311))) (size!40373 (_2!36597 (get!22556 lt!2375311))))))))

(declare-fun b!6414824 () Bool)

(assert (=> b!6414824 (= e!3892498 (or (not (= (_2!36597 (get!22556 lt!2375311)) Nil!65121)) (= lt!2375477 (_1!36597 (get!22556 lt!2375311)))))))

(declare-fun b!6414821 () Bool)

(declare-fun e!3892499 () List!65245)

(assert (=> b!6414821 (= e!3892499 (_2!36597 (get!22556 lt!2375311)))))

(declare-fun b!6414822 () Bool)

(assert (=> b!6414822 (= e!3892499 (Cons!65121 (h!71569 (_1!36597 (get!22556 lt!2375311))) (++!14383 (t!378857 (_1!36597 (get!22556 lt!2375311))) (_2!36597 (get!22556 lt!2375311)))))))

(declare-fun d!2011617 () Bool)

(assert (=> d!2011617 e!3892498))

(declare-fun res!2636360 () Bool)

(assert (=> d!2011617 (=> (not res!2636360) (not e!3892498))))

(assert (=> d!2011617 (= res!2636360 (= (content!12344 lt!2375477) ((_ map or) (content!12344 (_1!36597 (get!22556 lt!2375311))) (content!12344 (_2!36597 (get!22556 lt!2375311))))))))

(assert (=> d!2011617 (= lt!2375477 e!3892499)))

(declare-fun c!1171600 () Bool)

(assert (=> d!2011617 (= c!1171600 ((_ is Nil!65121) (_1!36597 (get!22556 lt!2375311))))))

(assert (=> d!2011617 (= (++!14383 (_1!36597 (get!22556 lt!2375311)) (_2!36597 (get!22556 lt!2375311))) lt!2375477)))

(assert (= (and d!2011617 c!1171600) b!6414821))

(assert (= (and d!2011617 (not c!1171600)) b!6414822))

(assert (= (and d!2011617 res!2636360) b!6414823))

(assert (= (and b!6414823 res!2636359) b!6414824))

(declare-fun m!7210452 () Bool)

(assert (=> b!6414823 m!7210452))

(declare-fun m!7210454 () Bool)

(assert (=> b!6414823 m!7210454))

(declare-fun m!7210456 () Bool)

(assert (=> b!6414823 m!7210456))

(declare-fun m!7210458 () Bool)

(assert (=> b!6414822 m!7210458))

(declare-fun m!7210460 () Bool)

(assert (=> d!2011617 m!7210460))

(declare-fun m!7210462 () Bool)

(assert (=> d!2011617 m!7210462))

(declare-fun m!7210464 () Bool)

(assert (=> d!2011617 m!7210464))

(assert (=> b!6413286 d!2011617))

(assert (=> b!6413286 d!2011299))

(declare-fun b!6414825 () Bool)

(declare-fun res!2636364 () Bool)

(declare-fun e!3892501 () Bool)

(assert (=> b!6414825 (=> res!2636364 e!3892501)))

(assert (=> b!6414825 (= res!2636364 (not (isEmpty!37269 (tail!12205 (tail!12205 (_2!36597 lt!2375224))))))))

(declare-fun b!6414826 () Bool)

(declare-fun res!2636361 () Bool)

(declare-fun e!3892500 () Bool)

(assert (=> b!6414826 (=> res!2636361 e!3892500)))

(assert (=> b!6414826 (= res!2636361 (not ((_ is ElementMatch!16315) (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224))))))))

(declare-fun e!3892504 () Bool)

(assert (=> b!6414826 (= e!3892504 e!3892500)))

(declare-fun b!6414827 () Bool)

(declare-fun res!2636368 () Bool)

(declare-fun e!3892503 () Bool)

(assert (=> b!6414827 (=> (not res!2636368) (not e!3892503))))

(assert (=> b!6414827 (= res!2636368 (isEmpty!37269 (tail!12205 (tail!12205 (_2!36597 lt!2375224)))))))

(declare-fun b!6414828 () Bool)

(declare-fun res!2636365 () Bool)

(assert (=> b!6414828 (=> res!2636365 e!3892500)))

(assert (=> b!6414828 (= res!2636365 e!3892503)))

(declare-fun res!2636362 () Bool)

(assert (=> b!6414828 (=> (not res!2636362) (not e!3892503))))

(declare-fun lt!2375478 () Bool)

(assert (=> b!6414828 (= res!2636362 lt!2375478)))

(declare-fun bm!551375 () Bool)

(declare-fun call!551380 () Bool)

(assert (=> bm!551375 (= call!551380 (isEmpty!37269 (tail!12205 (_2!36597 lt!2375224))))))

(declare-fun b!6414829 () Bool)

(declare-fun e!3892502 () Bool)

(assert (=> b!6414829 (= e!3892502 (nullable!6308 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224)))))))

(declare-fun b!6414830 () Bool)

(declare-fun e!3892506 () Bool)

(assert (=> b!6414830 (= e!3892500 e!3892506)))

(declare-fun res!2636367 () Bool)

(assert (=> b!6414830 (=> (not res!2636367) (not e!3892506))))

(assert (=> b!6414830 (= res!2636367 (not lt!2375478))))

(declare-fun b!6414831 () Bool)

(assert (=> b!6414831 (= e!3892506 e!3892501)))

(declare-fun res!2636366 () Bool)

(assert (=> b!6414831 (=> res!2636366 e!3892501)))

(assert (=> b!6414831 (= res!2636366 call!551380)))

(declare-fun b!6414832 () Bool)

(assert (=> b!6414832 (= e!3892503 (= (head!13120 (tail!12205 (_2!36597 lt!2375224))) (c!1170970 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224))))))))

(declare-fun b!6414833 () Bool)

(assert (=> b!6414833 (= e!3892501 (not (= (head!13120 (tail!12205 (_2!36597 lt!2375224))) (c!1170970 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224)))))))))

(declare-fun d!2011619 () Bool)

(declare-fun e!3892505 () Bool)

(assert (=> d!2011619 e!3892505))

(declare-fun c!1171603 () Bool)

(assert (=> d!2011619 (= c!1171603 ((_ is EmptyExpr!16315) (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224)))))))

(assert (=> d!2011619 (= lt!2375478 e!3892502)))

(declare-fun c!1171602 () Bool)

(assert (=> d!2011619 (= c!1171602 (isEmpty!37269 (tail!12205 (_2!36597 lt!2375224))))))

(assert (=> d!2011619 (validRegex!8051 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224))))))

(assert (=> d!2011619 (= (matchR!8498 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224))) (tail!12205 (_2!36597 lt!2375224))) lt!2375478)))

(declare-fun b!6414834 () Bool)

(declare-fun res!2636363 () Bool)

(assert (=> b!6414834 (=> (not res!2636363) (not e!3892503))))

(assert (=> b!6414834 (= res!2636363 (not call!551380))))

(declare-fun b!6414835 () Bool)

(assert (=> b!6414835 (= e!3892504 (not lt!2375478))))

(declare-fun b!6414836 () Bool)

(assert (=> b!6414836 (= e!3892502 (matchR!8498 (derivativeStep!5019 (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224))) (head!13120 (tail!12205 (_2!36597 lt!2375224)))) (tail!12205 (tail!12205 (_2!36597 lt!2375224)))))))

(declare-fun b!6414837 () Bool)

(assert (=> b!6414837 (= e!3892505 (= lt!2375478 call!551380))))

(declare-fun b!6414838 () Bool)

(assert (=> b!6414838 (= e!3892505 e!3892504)))

(declare-fun c!1171601 () Bool)

(assert (=> b!6414838 (= c!1171601 ((_ is EmptyLang!16315) (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224)))))))

(assert (= (and d!2011619 c!1171602) b!6414829))

(assert (= (and d!2011619 (not c!1171602)) b!6414836))

(assert (= (and d!2011619 c!1171603) b!6414837))

(assert (= (and d!2011619 (not c!1171603)) b!6414838))

(assert (= (and b!6414838 c!1171601) b!6414835))

(assert (= (and b!6414838 (not c!1171601)) b!6414826))

(assert (= (and b!6414826 (not res!2636361)) b!6414828))

(assert (= (and b!6414828 res!2636362) b!6414834))

(assert (= (and b!6414834 res!2636363) b!6414827))

(assert (= (and b!6414827 res!2636368) b!6414832))

(assert (= (and b!6414828 (not res!2636365)) b!6414830))

(assert (= (and b!6414830 res!2636367) b!6414831))

(assert (= (and b!6414831 (not res!2636366)) b!6414825))

(assert (= (and b!6414825 (not res!2636364)) b!6414833))

(assert (= (or b!6414837 b!6414831 b!6414834) bm!551375))

(assert (=> d!2011619 m!7209432))

(assert (=> d!2011619 m!7209436))

(assert (=> d!2011619 m!7209430))

(declare-fun m!7210466 () Bool)

(assert (=> d!2011619 m!7210466))

(assert (=> b!6414833 m!7209432))

(declare-fun m!7210468 () Bool)

(assert (=> b!6414833 m!7210468))

(assert (=> b!6414829 m!7209430))

(declare-fun m!7210470 () Bool)

(assert (=> b!6414829 m!7210470))

(assert (=> b!6414832 m!7209432))

(assert (=> b!6414832 m!7210468))

(assert (=> b!6414836 m!7209432))

(assert (=> b!6414836 m!7210468))

(assert (=> b!6414836 m!7209430))

(assert (=> b!6414836 m!7210468))

(declare-fun m!7210472 () Bool)

(assert (=> b!6414836 m!7210472))

(assert (=> b!6414836 m!7209432))

(declare-fun m!7210474 () Bool)

(assert (=> b!6414836 m!7210474))

(assert (=> b!6414836 m!7210472))

(assert (=> b!6414836 m!7210474))

(declare-fun m!7210476 () Bool)

(assert (=> b!6414836 m!7210476))

(assert (=> b!6414827 m!7209432))

(assert (=> b!6414827 m!7210474))

(assert (=> b!6414827 m!7210474))

(declare-fun m!7210478 () Bool)

(assert (=> b!6414827 m!7210478))

(assert (=> bm!551375 m!7209432))

(assert (=> bm!551375 m!7209436))

(assert (=> b!6414825 m!7209432))

(assert (=> b!6414825 m!7210474))

(assert (=> b!6414825 m!7210474))

(assert (=> b!6414825 m!7210478))

(assert (=> b!6413831 d!2011619))

(declare-fun call!551383 () Regex!16315)

(declare-fun call!551382 () Regex!16315)

(declare-fun e!3892510 () Regex!16315)

(declare-fun b!6414839 () Bool)

(assert (=> b!6414839 (= e!3892510 (Union!16315 (Concat!25160 call!551382 (regTwo!33142 (regTwo!33142 r!7292))) call!551383))))

(declare-fun b!6414840 () Bool)

(declare-fun e!3892508 () Regex!16315)

(declare-fun e!3892511 () Regex!16315)

(assert (=> b!6414840 (= e!3892508 e!3892511)))

(declare-fun c!1171606 () Bool)

(assert (=> b!6414840 (= c!1171606 ((_ is Star!16315) (regTwo!33142 r!7292)))))

(declare-fun b!6414841 () Bool)

(declare-fun e!3892509 () Regex!16315)

(assert (=> b!6414841 (= e!3892509 EmptyLang!16315)))

(declare-fun bm!551376 () Bool)

(declare-fun c!1171607 () Bool)

(declare-fun c!1171604 () Bool)

(declare-fun call!551384 () Regex!16315)

(assert (=> bm!551376 (= call!551384 (derivativeStep!5019 (ite c!1171604 (regTwo!33143 (regTwo!33142 r!7292)) (ite c!1171606 (reg!16644 (regTwo!33142 r!7292)) (ite c!1171607 (regTwo!33142 (regTwo!33142 r!7292)) (regOne!33142 (regTwo!33142 r!7292))))) (head!13120 (_2!36597 lt!2375224))))))

(declare-fun b!6414842 () Bool)

(assert (=> b!6414842 (= c!1171607 (nullable!6308 (regOne!33142 (regTwo!33142 r!7292))))))

(assert (=> b!6414842 (= e!3892511 e!3892510)))

(declare-fun b!6414843 () Bool)

(assert (=> b!6414843 (= e!3892508 (Union!16315 call!551382 call!551384))))

(declare-fun b!6414844 () Bool)

(declare-fun e!3892507 () Regex!16315)

(assert (=> b!6414844 (= e!3892507 (ite (= (head!13120 (_2!36597 lt!2375224)) (c!1170970 (regTwo!33142 r!7292))) EmptyExpr!16315 EmptyLang!16315))))

(declare-fun bm!551377 () Bool)

(declare-fun call!551381 () Regex!16315)

(assert (=> bm!551377 (= call!551381 call!551384)))

(declare-fun d!2011621 () Bool)

(declare-fun lt!2375479 () Regex!16315)

(assert (=> d!2011621 (validRegex!8051 lt!2375479)))

(assert (=> d!2011621 (= lt!2375479 e!3892509)))

(declare-fun c!1171605 () Bool)

(assert (=> d!2011621 (= c!1171605 (or ((_ is EmptyExpr!16315) (regTwo!33142 r!7292)) ((_ is EmptyLang!16315) (regTwo!33142 r!7292))))))

(assert (=> d!2011621 (validRegex!8051 (regTwo!33142 r!7292))))

(assert (=> d!2011621 (= (derivativeStep!5019 (regTwo!33142 r!7292) (head!13120 (_2!36597 lt!2375224))) lt!2375479)))

(declare-fun b!6414845 () Bool)

(assert (=> b!6414845 (= e!3892511 (Concat!25160 call!551381 (regTwo!33142 r!7292)))))

(declare-fun bm!551378 () Bool)

(assert (=> bm!551378 (= call!551382 (derivativeStep!5019 (ite c!1171604 (regOne!33143 (regTwo!33142 r!7292)) (regOne!33142 (regTwo!33142 r!7292))) (head!13120 (_2!36597 lt!2375224))))))

(declare-fun b!6414846 () Bool)

(assert (=> b!6414846 (= c!1171604 ((_ is Union!16315) (regTwo!33142 r!7292)))))

(assert (=> b!6414846 (= e!3892507 e!3892508)))

(declare-fun b!6414847 () Bool)

(assert (=> b!6414847 (= e!3892509 e!3892507)))

(declare-fun c!1171608 () Bool)

(assert (=> b!6414847 (= c!1171608 ((_ is ElementMatch!16315) (regTwo!33142 r!7292)))))

(declare-fun b!6414848 () Bool)

(assert (=> b!6414848 (= e!3892510 (Union!16315 (Concat!25160 call!551383 (regTwo!33142 (regTwo!33142 r!7292))) EmptyLang!16315))))

(declare-fun bm!551379 () Bool)

(assert (=> bm!551379 (= call!551383 call!551381)))

(assert (= (and d!2011621 c!1171605) b!6414841))

(assert (= (and d!2011621 (not c!1171605)) b!6414847))

(assert (= (and b!6414847 c!1171608) b!6414844))

(assert (= (and b!6414847 (not c!1171608)) b!6414846))

(assert (= (and b!6414846 c!1171604) b!6414843))

(assert (= (and b!6414846 (not c!1171604)) b!6414840))

(assert (= (and b!6414840 c!1171606) b!6414845))

(assert (= (and b!6414840 (not c!1171606)) b!6414842))

(assert (= (and b!6414842 c!1171607) b!6414839))

(assert (= (and b!6414842 (not c!1171607)) b!6414848))

(assert (= (or b!6414839 b!6414848) bm!551379))

(assert (= (or b!6414845 bm!551379) bm!551377))

(assert (= (or b!6414843 bm!551377) bm!551376))

(assert (= (or b!6414843 b!6414839) bm!551378))

(assert (=> bm!551376 m!7209426))

(declare-fun m!7210480 () Bool)

(assert (=> bm!551376 m!7210480))

(declare-fun m!7210482 () Bool)

(assert (=> b!6414842 m!7210482))

(declare-fun m!7210484 () Bool)

(assert (=> d!2011621 m!7210484))

(assert (=> d!2011621 m!7209424))

(assert (=> bm!551378 m!7209426))

(declare-fun m!7210486 () Bool)

(assert (=> bm!551378 m!7210486))

(assert (=> b!6413831 d!2011621))

(assert (=> b!6413831 d!2011363))

(assert (=> b!6413831 d!2011221))

(declare-fun d!2011627 () Bool)

(declare-fun c!1171611 () Bool)

(assert (=> d!2011627 (= c!1171611 ((_ is Nil!65122) lt!2375227))))

(declare-fun e!3892516 () (InoxSet Context!11398))

(assert (=> d!2011627 (= (content!12342 lt!2375227) e!3892516)))

(declare-fun b!6414855 () Bool)

(assert (=> b!6414855 (= e!3892516 ((as const (Array Context!11398 Bool)) false))))

(declare-fun b!6414856 () Bool)

(assert (=> b!6414856 (= e!3892516 ((_ map or) (store ((as const (Array Context!11398 Bool)) false) (h!71570 lt!2375227) true) (content!12342 (t!378858 lt!2375227))))))

(assert (= (and d!2011627 c!1171611) b!6414855))

(assert (= (and d!2011627 (not c!1171611)) b!6414856))

(declare-fun m!7210488 () Bool)

(assert (=> b!6414856 m!7210488))

(declare-fun m!7210490 () Bool)

(assert (=> b!6414856 m!7210490))

(assert (=> b!6412804 d!2011627))

(declare-fun b!6414860 () Bool)

(declare-fun e!3892517 () Bool)

(declare-fun tp!1781845 () Bool)

(declare-fun tp!1781846 () Bool)

(assert (=> b!6414860 (= e!3892517 (and tp!1781845 tp!1781846))))

(declare-fun b!6414859 () Bool)

(declare-fun tp!1781844 () Bool)

(assert (=> b!6414859 (= e!3892517 tp!1781844)))

(declare-fun b!6414857 () Bool)

(assert (=> b!6414857 (= e!3892517 tp_is_empty!41883)))

(assert (=> b!6413898 (= tp!1781800 e!3892517)))

(declare-fun b!6414858 () Bool)

(declare-fun tp!1781843 () Bool)

(declare-fun tp!1781847 () Bool)

(assert (=> b!6414858 (= e!3892517 (and tp!1781843 tp!1781847))))

(assert (= (and b!6413898 ((_ is ElementMatch!16315) (regOne!33142 (regOne!33142 r!7292)))) b!6414857))

(assert (= (and b!6413898 ((_ is Concat!25160) (regOne!33142 (regOne!33142 r!7292)))) b!6414858))

(assert (= (and b!6413898 ((_ is Star!16315) (regOne!33142 (regOne!33142 r!7292)))) b!6414859))

(assert (= (and b!6413898 ((_ is Union!16315) (regOne!33142 (regOne!33142 r!7292)))) b!6414860))

(declare-fun b!6414864 () Bool)

(declare-fun e!3892518 () Bool)

(declare-fun tp!1781850 () Bool)

(declare-fun tp!1781851 () Bool)

(assert (=> b!6414864 (= e!3892518 (and tp!1781850 tp!1781851))))

(declare-fun b!6414863 () Bool)

(declare-fun tp!1781849 () Bool)

(assert (=> b!6414863 (= e!3892518 tp!1781849)))

(declare-fun b!6414861 () Bool)

(assert (=> b!6414861 (= e!3892518 tp_is_empty!41883)))

(assert (=> b!6413898 (= tp!1781804 e!3892518)))

(declare-fun b!6414862 () Bool)

(declare-fun tp!1781848 () Bool)

(declare-fun tp!1781852 () Bool)

(assert (=> b!6414862 (= e!3892518 (and tp!1781848 tp!1781852))))

(assert (= (and b!6413898 ((_ is ElementMatch!16315) (regTwo!33142 (regOne!33142 r!7292)))) b!6414861))

(assert (= (and b!6413898 ((_ is Concat!25160) (regTwo!33142 (regOne!33142 r!7292)))) b!6414862))

(assert (= (and b!6413898 ((_ is Star!16315) (regTwo!33142 (regOne!33142 r!7292)))) b!6414863))

(assert (= (and b!6413898 ((_ is Union!16315) (regTwo!33142 (regOne!33142 r!7292)))) b!6414864))

(declare-fun b!6414868 () Bool)

(declare-fun e!3892519 () Bool)

(declare-fun tp!1781855 () Bool)

(declare-fun tp!1781856 () Bool)

(assert (=> b!6414868 (= e!3892519 (and tp!1781855 tp!1781856))))

(declare-fun b!6414867 () Bool)

(declare-fun tp!1781854 () Bool)

(assert (=> b!6414867 (= e!3892519 tp!1781854)))

(declare-fun b!6414865 () Bool)

(assert (=> b!6414865 (= e!3892519 tp_is_empty!41883)))

(assert (=> b!6413899 (= tp!1781801 e!3892519)))

(declare-fun b!6414866 () Bool)

(declare-fun tp!1781853 () Bool)

(declare-fun tp!1781857 () Bool)

(assert (=> b!6414866 (= e!3892519 (and tp!1781853 tp!1781857))))

(assert (= (and b!6413899 ((_ is ElementMatch!16315) (reg!16644 (regOne!33142 r!7292)))) b!6414865))

(assert (= (and b!6413899 ((_ is Concat!25160) (reg!16644 (regOne!33142 r!7292)))) b!6414866))

(assert (= (and b!6413899 ((_ is Star!16315) (reg!16644 (regOne!33142 r!7292)))) b!6414867))

(assert (= (and b!6413899 ((_ is Union!16315) (reg!16644 (regOne!33142 r!7292)))) b!6414868))

(declare-fun b!6414873 () Bool)

(declare-fun e!3892521 () Bool)

(declare-fun tp!1781862 () Bool)

(declare-fun tp!1781863 () Bool)

(assert (=> b!6414873 (= e!3892521 (and tp!1781862 tp!1781863))))

(declare-fun b!6414872 () Bool)

(declare-fun tp!1781861 () Bool)

(assert (=> b!6414872 (= e!3892521 tp!1781861)))

(declare-fun b!6414870 () Bool)

(assert (=> b!6414870 (= e!3892521 tp_is_empty!41883)))

(assert (=> b!6413879 (= tp!1781776 e!3892521)))

(declare-fun b!6414871 () Bool)

(declare-fun tp!1781860 () Bool)

(declare-fun tp!1781864 () Bool)

(assert (=> b!6414871 (= e!3892521 (and tp!1781860 tp!1781864))))

(assert (= (and b!6413879 ((_ is ElementMatch!16315) (regOne!33142 (regTwo!33143 r!7292)))) b!6414870))

(assert (= (and b!6413879 ((_ is Concat!25160) (regOne!33142 (regTwo!33143 r!7292)))) b!6414871))

(assert (= (and b!6413879 ((_ is Star!16315) (regOne!33142 (regTwo!33143 r!7292)))) b!6414872))

(assert (= (and b!6413879 ((_ is Union!16315) (regOne!33142 (regTwo!33143 r!7292)))) b!6414873))

(declare-fun b!6414877 () Bool)

(declare-fun e!3892522 () Bool)

(declare-fun tp!1781867 () Bool)

(declare-fun tp!1781868 () Bool)

(assert (=> b!6414877 (= e!3892522 (and tp!1781867 tp!1781868))))

(declare-fun b!6414876 () Bool)

(declare-fun tp!1781866 () Bool)

(assert (=> b!6414876 (= e!3892522 tp!1781866)))

(declare-fun b!6414874 () Bool)

(assert (=> b!6414874 (= e!3892522 tp_is_empty!41883)))

(assert (=> b!6413879 (= tp!1781780 e!3892522)))

(declare-fun b!6414875 () Bool)

(declare-fun tp!1781865 () Bool)

(declare-fun tp!1781869 () Bool)

(assert (=> b!6414875 (= e!3892522 (and tp!1781865 tp!1781869))))

(assert (= (and b!6413879 ((_ is ElementMatch!16315) (regTwo!33142 (regTwo!33143 r!7292)))) b!6414874))

(assert (= (and b!6413879 ((_ is Concat!25160) (regTwo!33142 (regTwo!33143 r!7292)))) b!6414875))

(assert (= (and b!6413879 ((_ is Star!16315) (regTwo!33142 (regTwo!33143 r!7292)))) b!6414876))

(assert (= (and b!6413879 ((_ is Union!16315) (regTwo!33142 (regTwo!33143 r!7292)))) b!6414877))

(declare-fun b!6414881 () Bool)

(declare-fun e!3892523 () Bool)

(declare-fun tp!1781872 () Bool)

(declare-fun tp!1781873 () Bool)

(assert (=> b!6414881 (= e!3892523 (and tp!1781872 tp!1781873))))

(declare-fun b!6414880 () Bool)

(declare-fun tp!1781871 () Bool)

(assert (=> b!6414880 (= e!3892523 tp!1781871)))

(declare-fun b!6414878 () Bool)

(assert (=> b!6414878 (= e!3892523 tp_is_empty!41883)))

(assert (=> b!6413900 (= tp!1781802 e!3892523)))

(declare-fun b!6414879 () Bool)

(declare-fun tp!1781870 () Bool)

(declare-fun tp!1781874 () Bool)

(assert (=> b!6414879 (= e!3892523 (and tp!1781870 tp!1781874))))

(assert (= (and b!6413900 ((_ is ElementMatch!16315) (regOne!33143 (regOne!33142 r!7292)))) b!6414878))

(assert (= (and b!6413900 ((_ is Concat!25160) (regOne!33143 (regOne!33142 r!7292)))) b!6414879))

(assert (= (and b!6413900 ((_ is Star!16315) (regOne!33143 (regOne!33142 r!7292)))) b!6414880))

(assert (= (and b!6413900 ((_ is Union!16315) (regOne!33143 (regOne!33142 r!7292)))) b!6414881))

(declare-fun b!6414885 () Bool)

(declare-fun e!3892524 () Bool)

(declare-fun tp!1781877 () Bool)

(declare-fun tp!1781878 () Bool)

(assert (=> b!6414885 (= e!3892524 (and tp!1781877 tp!1781878))))

(declare-fun b!6414884 () Bool)

(declare-fun tp!1781876 () Bool)

(assert (=> b!6414884 (= e!3892524 tp!1781876)))

(declare-fun b!6414882 () Bool)

(assert (=> b!6414882 (= e!3892524 tp_is_empty!41883)))

(assert (=> b!6413900 (= tp!1781803 e!3892524)))

(declare-fun b!6414883 () Bool)

(declare-fun tp!1781875 () Bool)

(declare-fun tp!1781879 () Bool)

(assert (=> b!6414883 (= e!3892524 (and tp!1781875 tp!1781879))))

(assert (= (and b!6413900 ((_ is ElementMatch!16315) (regTwo!33143 (regOne!33142 r!7292)))) b!6414882))

(assert (= (and b!6413900 ((_ is Concat!25160) (regTwo!33143 (regOne!33142 r!7292)))) b!6414883))

(assert (= (and b!6413900 ((_ is Star!16315) (regTwo!33143 (regOne!33142 r!7292)))) b!6414884))

(assert (= (and b!6413900 ((_ is Union!16315) (regTwo!33143 (regOne!33142 r!7292)))) b!6414885))

(declare-fun b!6414889 () Bool)

(declare-fun e!3892525 () Bool)

(declare-fun tp!1781882 () Bool)

(declare-fun tp!1781883 () Bool)

(assert (=> b!6414889 (= e!3892525 (and tp!1781882 tp!1781883))))

(declare-fun b!6414888 () Bool)

(declare-fun tp!1781881 () Bool)

(assert (=> b!6414888 (= e!3892525 tp!1781881)))

(declare-fun b!6414886 () Bool)

(assert (=> b!6414886 (= e!3892525 tp_is_empty!41883)))

(assert (=> b!6413886 (= tp!1781785 e!3892525)))

(declare-fun b!6414887 () Bool)

(declare-fun tp!1781880 () Bool)

(declare-fun tp!1781884 () Bool)

(assert (=> b!6414887 (= e!3892525 (and tp!1781880 tp!1781884))))

(assert (= (and b!6413886 ((_ is ElementMatch!16315) (h!71568 (exprs!6199 setElem!43758)))) b!6414886))

(assert (= (and b!6413886 ((_ is Concat!25160) (h!71568 (exprs!6199 setElem!43758)))) b!6414887))

(assert (= (and b!6413886 ((_ is Star!16315) (h!71568 (exprs!6199 setElem!43758)))) b!6414888))

(assert (= (and b!6413886 ((_ is Union!16315) (h!71568 (exprs!6199 setElem!43758)))) b!6414889))

(declare-fun b!6414890 () Bool)

(declare-fun e!3892526 () Bool)

(declare-fun tp!1781885 () Bool)

(declare-fun tp!1781886 () Bool)

(assert (=> b!6414890 (= e!3892526 (and tp!1781885 tp!1781886))))

(assert (=> b!6413886 (= tp!1781786 e!3892526)))

(assert (= (and b!6413886 ((_ is Cons!65120) (t!378856 (exprs!6199 setElem!43758)))) b!6414890))

(declare-fun b!6414894 () Bool)

(declare-fun e!3892527 () Bool)

(declare-fun tp!1781889 () Bool)

(declare-fun tp!1781890 () Bool)

(assert (=> b!6414894 (= e!3892527 (and tp!1781889 tp!1781890))))

(declare-fun b!6414893 () Bool)

(declare-fun tp!1781888 () Bool)

(assert (=> b!6414893 (= e!3892527 tp!1781888)))

(declare-fun b!6414891 () Bool)

(assert (=> b!6414891 (= e!3892527 tp_is_empty!41883)))

(assert (=> b!6413880 (= tp!1781777 e!3892527)))

(declare-fun b!6414892 () Bool)

(declare-fun tp!1781887 () Bool)

(declare-fun tp!1781891 () Bool)

(assert (=> b!6414892 (= e!3892527 (and tp!1781887 tp!1781891))))

(assert (= (and b!6413880 ((_ is ElementMatch!16315) (reg!16644 (regTwo!33143 r!7292)))) b!6414891))

(assert (= (and b!6413880 ((_ is Concat!25160) (reg!16644 (regTwo!33143 r!7292)))) b!6414892))

(assert (= (and b!6413880 ((_ is Star!16315) (reg!16644 (regTwo!33143 r!7292)))) b!6414893))

(assert (= (and b!6413880 ((_ is Union!16315) (reg!16644 (regTwo!33143 r!7292)))) b!6414894))

(declare-fun b!6414898 () Bool)

(declare-fun e!3892528 () Bool)

(declare-fun tp!1781894 () Bool)

(declare-fun tp!1781895 () Bool)

(assert (=> b!6414898 (= e!3892528 (and tp!1781894 tp!1781895))))

(declare-fun b!6414897 () Bool)

(declare-fun tp!1781893 () Bool)

(assert (=> b!6414897 (= e!3892528 tp!1781893)))

(declare-fun b!6414895 () Bool)

(assert (=> b!6414895 (= e!3892528 tp_is_empty!41883)))

(assert (=> b!6413881 (= tp!1781778 e!3892528)))

(declare-fun b!6414896 () Bool)

(declare-fun tp!1781892 () Bool)

(declare-fun tp!1781896 () Bool)

(assert (=> b!6414896 (= e!3892528 (and tp!1781892 tp!1781896))))

(assert (= (and b!6413881 ((_ is ElementMatch!16315) (regOne!33143 (regTwo!33143 r!7292)))) b!6414895))

(assert (= (and b!6413881 ((_ is Concat!25160) (regOne!33143 (regTwo!33143 r!7292)))) b!6414896))

(assert (= (and b!6413881 ((_ is Star!16315) (regOne!33143 (regTwo!33143 r!7292)))) b!6414897))

(assert (= (and b!6413881 ((_ is Union!16315) (regOne!33143 (regTwo!33143 r!7292)))) b!6414898))

(declare-fun b!6414902 () Bool)

(declare-fun e!3892529 () Bool)

(declare-fun tp!1781899 () Bool)

(declare-fun tp!1781900 () Bool)

(assert (=> b!6414902 (= e!3892529 (and tp!1781899 tp!1781900))))

(declare-fun b!6414901 () Bool)

(declare-fun tp!1781898 () Bool)

(assert (=> b!6414901 (= e!3892529 tp!1781898)))

(declare-fun b!6414899 () Bool)

(assert (=> b!6414899 (= e!3892529 tp_is_empty!41883)))

(assert (=> b!6413881 (= tp!1781779 e!3892529)))

(declare-fun b!6414900 () Bool)

(declare-fun tp!1781897 () Bool)

(declare-fun tp!1781901 () Bool)

(assert (=> b!6414900 (= e!3892529 (and tp!1781897 tp!1781901))))

(assert (= (and b!6413881 ((_ is ElementMatch!16315) (regTwo!33143 (regTwo!33143 r!7292)))) b!6414899))

(assert (= (and b!6413881 ((_ is Concat!25160) (regTwo!33143 (regTwo!33143 r!7292)))) b!6414900))

(assert (= (and b!6413881 ((_ is Star!16315) (regTwo!33143 (regTwo!33143 r!7292)))) b!6414901))

(assert (= (and b!6413881 ((_ is Union!16315) (regTwo!33143 (regTwo!33143 r!7292)))) b!6414902))

(declare-fun b!6414906 () Bool)

(declare-fun e!3892530 () Bool)

(declare-fun tp!1781904 () Bool)

(declare-fun tp!1781905 () Bool)

(assert (=> b!6414906 (= e!3892530 (and tp!1781904 tp!1781905))))

(declare-fun b!6414905 () Bool)

(declare-fun tp!1781903 () Bool)

(assert (=> b!6414905 (= e!3892530 tp!1781903)))

(declare-fun b!6414903 () Bool)

(assert (=> b!6414903 (= e!3892530 tp_is_empty!41883)))

(assert (=> b!6413877 (= tp!1781773 e!3892530)))

(declare-fun b!6414904 () Bool)

(declare-fun tp!1781902 () Bool)

(declare-fun tp!1781906 () Bool)

(assert (=> b!6414904 (= e!3892530 (and tp!1781902 tp!1781906))))

(assert (= (and b!6413877 ((_ is ElementMatch!16315) (regOne!33143 (regOne!33143 r!7292)))) b!6414903))

(assert (= (and b!6413877 ((_ is Concat!25160) (regOne!33143 (regOne!33143 r!7292)))) b!6414904))

(assert (= (and b!6413877 ((_ is Star!16315) (regOne!33143 (regOne!33143 r!7292)))) b!6414905))

(assert (= (and b!6413877 ((_ is Union!16315) (regOne!33143 (regOne!33143 r!7292)))) b!6414906))

(declare-fun b!6414910 () Bool)

(declare-fun e!3892531 () Bool)

(declare-fun tp!1781909 () Bool)

(declare-fun tp!1781910 () Bool)

(assert (=> b!6414910 (= e!3892531 (and tp!1781909 tp!1781910))))

(declare-fun b!6414909 () Bool)

(declare-fun tp!1781908 () Bool)

(assert (=> b!6414909 (= e!3892531 tp!1781908)))

(declare-fun b!6414907 () Bool)

(assert (=> b!6414907 (= e!3892531 tp_is_empty!41883)))

(assert (=> b!6413877 (= tp!1781774 e!3892531)))

(declare-fun b!6414908 () Bool)

(declare-fun tp!1781907 () Bool)

(declare-fun tp!1781911 () Bool)

(assert (=> b!6414908 (= e!3892531 (and tp!1781907 tp!1781911))))

(assert (= (and b!6413877 ((_ is ElementMatch!16315) (regTwo!33143 (regOne!33143 r!7292)))) b!6414907))

(assert (= (and b!6413877 ((_ is Concat!25160) (regTwo!33143 (regOne!33143 r!7292)))) b!6414908))

(assert (= (and b!6413877 ((_ is Star!16315) (regTwo!33143 (regOne!33143 r!7292)))) b!6414909))

(assert (= (and b!6413877 ((_ is Union!16315) (regTwo!33143 (regOne!33143 r!7292)))) b!6414910))

(declare-fun b!6414914 () Bool)

(declare-fun e!3892532 () Bool)

(declare-fun tp!1781914 () Bool)

(declare-fun tp!1781915 () Bool)

(assert (=> b!6414914 (= e!3892532 (and tp!1781914 tp!1781915))))

(declare-fun b!6414913 () Bool)

(declare-fun tp!1781913 () Bool)

(assert (=> b!6414913 (= e!3892532 tp!1781913)))

(declare-fun b!6414911 () Bool)

(assert (=> b!6414911 (= e!3892532 tp_is_empty!41883)))

(assert (=> b!6413902 (= tp!1781805 e!3892532)))

(declare-fun b!6414912 () Bool)

(declare-fun tp!1781912 () Bool)

(declare-fun tp!1781916 () Bool)

(assert (=> b!6414912 (= e!3892532 (and tp!1781912 tp!1781916))))

(assert (= (and b!6413902 ((_ is ElementMatch!16315) (regOne!33142 (regTwo!33142 r!7292)))) b!6414911))

(assert (= (and b!6413902 ((_ is Concat!25160) (regOne!33142 (regTwo!33142 r!7292)))) b!6414912))

(assert (= (and b!6413902 ((_ is Star!16315) (regOne!33142 (regTwo!33142 r!7292)))) b!6414913))

(assert (= (and b!6413902 ((_ is Union!16315) (regOne!33142 (regTwo!33142 r!7292)))) b!6414914))

(declare-fun b!6414918 () Bool)

(declare-fun e!3892533 () Bool)

(declare-fun tp!1781919 () Bool)

(declare-fun tp!1781920 () Bool)

(assert (=> b!6414918 (= e!3892533 (and tp!1781919 tp!1781920))))

(declare-fun b!6414917 () Bool)

(declare-fun tp!1781918 () Bool)

(assert (=> b!6414917 (= e!3892533 tp!1781918)))

(declare-fun b!6414915 () Bool)

(assert (=> b!6414915 (= e!3892533 tp_is_empty!41883)))

(assert (=> b!6413902 (= tp!1781809 e!3892533)))

(declare-fun b!6414916 () Bool)

(declare-fun tp!1781917 () Bool)

(declare-fun tp!1781921 () Bool)

(assert (=> b!6414916 (= e!3892533 (and tp!1781917 tp!1781921))))

(assert (= (and b!6413902 ((_ is ElementMatch!16315) (regTwo!33142 (regTwo!33142 r!7292)))) b!6414915))

(assert (= (and b!6413902 ((_ is Concat!25160) (regTwo!33142 (regTwo!33142 r!7292)))) b!6414916))

(assert (= (and b!6413902 ((_ is Star!16315) (regTwo!33142 (regTwo!33142 r!7292)))) b!6414917))

(assert (= (and b!6413902 ((_ is Union!16315) (regTwo!33142 (regTwo!33142 r!7292)))) b!6414918))

(declare-fun b!6414922 () Bool)

(declare-fun e!3892534 () Bool)

(declare-fun tp!1781924 () Bool)

(declare-fun tp!1781925 () Bool)

(assert (=> b!6414922 (= e!3892534 (and tp!1781924 tp!1781925))))

(declare-fun b!6414921 () Bool)

(declare-fun tp!1781923 () Bool)

(assert (=> b!6414921 (= e!3892534 tp!1781923)))

(declare-fun b!6414919 () Bool)

(assert (=> b!6414919 (= e!3892534 tp_is_empty!41883)))

(assert (=> b!6413903 (= tp!1781806 e!3892534)))

(declare-fun b!6414920 () Bool)

(declare-fun tp!1781922 () Bool)

(declare-fun tp!1781926 () Bool)

(assert (=> b!6414920 (= e!3892534 (and tp!1781922 tp!1781926))))

(assert (= (and b!6413903 ((_ is ElementMatch!16315) (reg!16644 (regTwo!33142 r!7292)))) b!6414919))

(assert (= (and b!6413903 ((_ is Concat!25160) (reg!16644 (regTwo!33142 r!7292)))) b!6414920))

(assert (= (and b!6413903 ((_ is Star!16315) (reg!16644 (regTwo!33142 r!7292)))) b!6414921))

(assert (= (and b!6413903 ((_ is Union!16315) (reg!16644 (regTwo!33142 r!7292)))) b!6414922))

(declare-fun b!6414926 () Bool)

(declare-fun e!3892535 () Bool)

(declare-fun tp!1781929 () Bool)

(declare-fun tp!1781930 () Bool)

(assert (=> b!6414926 (= e!3892535 (and tp!1781929 tp!1781930))))

(declare-fun b!6414925 () Bool)

(declare-fun tp!1781928 () Bool)

(assert (=> b!6414925 (= e!3892535 tp!1781928)))

(declare-fun b!6414923 () Bool)

(assert (=> b!6414923 (= e!3892535 tp_is_empty!41883)))

(assert (=> b!6413888 (= tp!1781787 e!3892535)))

(declare-fun b!6414924 () Bool)

(declare-fun tp!1781927 () Bool)

(declare-fun tp!1781931 () Bool)

(assert (=> b!6414924 (= e!3892535 (and tp!1781927 tp!1781931))))

(assert (= (and b!6413888 ((_ is ElementMatch!16315) (regOne!33142 (reg!16644 r!7292)))) b!6414923))

(assert (= (and b!6413888 ((_ is Concat!25160) (regOne!33142 (reg!16644 r!7292)))) b!6414924))

(assert (= (and b!6413888 ((_ is Star!16315) (regOne!33142 (reg!16644 r!7292)))) b!6414925))

(assert (= (and b!6413888 ((_ is Union!16315) (regOne!33142 (reg!16644 r!7292)))) b!6414926))

(declare-fun b!6414930 () Bool)

(declare-fun e!3892536 () Bool)

(declare-fun tp!1781934 () Bool)

(declare-fun tp!1781935 () Bool)

(assert (=> b!6414930 (= e!3892536 (and tp!1781934 tp!1781935))))

(declare-fun b!6414929 () Bool)

(declare-fun tp!1781933 () Bool)

(assert (=> b!6414929 (= e!3892536 tp!1781933)))

(declare-fun b!6414927 () Bool)

(assert (=> b!6414927 (= e!3892536 tp_is_empty!41883)))

(assert (=> b!6413888 (= tp!1781791 e!3892536)))

(declare-fun b!6414928 () Bool)

(declare-fun tp!1781932 () Bool)

(declare-fun tp!1781936 () Bool)

(assert (=> b!6414928 (= e!3892536 (and tp!1781932 tp!1781936))))

(assert (= (and b!6413888 ((_ is ElementMatch!16315) (regTwo!33142 (reg!16644 r!7292)))) b!6414927))

(assert (= (and b!6413888 ((_ is Concat!25160) (regTwo!33142 (reg!16644 r!7292)))) b!6414928))

(assert (= (and b!6413888 ((_ is Star!16315) (regTwo!33142 (reg!16644 r!7292)))) b!6414929))

(assert (= (and b!6413888 ((_ is Union!16315) (regTwo!33142 (reg!16644 r!7292)))) b!6414930))

(declare-fun b!6414934 () Bool)

(declare-fun e!3892537 () Bool)

(declare-fun tp!1781939 () Bool)

(declare-fun tp!1781940 () Bool)

(assert (=> b!6414934 (= e!3892537 (and tp!1781939 tp!1781940))))

(declare-fun b!6414933 () Bool)

(declare-fun tp!1781938 () Bool)

(assert (=> b!6414933 (= e!3892537 tp!1781938)))

(declare-fun b!6414931 () Bool)

(assert (=> b!6414931 (= e!3892537 tp_is_empty!41883)))

(assert (=> b!6413904 (= tp!1781807 e!3892537)))

(declare-fun b!6414932 () Bool)

(declare-fun tp!1781937 () Bool)

(declare-fun tp!1781941 () Bool)

(assert (=> b!6414932 (= e!3892537 (and tp!1781937 tp!1781941))))

(assert (= (and b!6413904 ((_ is ElementMatch!16315) (regOne!33143 (regTwo!33142 r!7292)))) b!6414931))

(assert (= (and b!6413904 ((_ is Concat!25160) (regOne!33143 (regTwo!33142 r!7292)))) b!6414932))

(assert (= (and b!6413904 ((_ is Star!16315) (regOne!33143 (regTwo!33142 r!7292)))) b!6414933))

(assert (= (and b!6413904 ((_ is Union!16315) (regOne!33143 (regTwo!33142 r!7292)))) b!6414934))

(declare-fun b!6414938 () Bool)

(declare-fun e!3892538 () Bool)

(declare-fun tp!1781944 () Bool)

(declare-fun tp!1781945 () Bool)

(assert (=> b!6414938 (= e!3892538 (and tp!1781944 tp!1781945))))

(declare-fun b!6414937 () Bool)

(declare-fun tp!1781943 () Bool)

(assert (=> b!6414937 (= e!3892538 tp!1781943)))

(declare-fun b!6414935 () Bool)

(assert (=> b!6414935 (= e!3892538 tp_is_empty!41883)))

(assert (=> b!6413904 (= tp!1781808 e!3892538)))

(declare-fun b!6414936 () Bool)

(declare-fun tp!1781942 () Bool)

(declare-fun tp!1781946 () Bool)

(assert (=> b!6414936 (= e!3892538 (and tp!1781942 tp!1781946))))

(assert (= (and b!6413904 ((_ is ElementMatch!16315) (regTwo!33143 (regTwo!33142 r!7292)))) b!6414935))

(assert (= (and b!6413904 ((_ is Concat!25160) (regTwo!33143 (regTwo!33142 r!7292)))) b!6414936))

(assert (= (and b!6413904 ((_ is Star!16315) (regTwo!33143 (regTwo!33142 r!7292)))) b!6414937))

(assert (= (and b!6413904 ((_ is Union!16315) (regTwo!33143 (regTwo!33142 r!7292)))) b!6414938))

(declare-fun b!6414942 () Bool)

(declare-fun e!3892539 () Bool)

(declare-fun tp!1781949 () Bool)

(declare-fun tp!1781950 () Bool)

(assert (=> b!6414942 (= e!3892539 (and tp!1781949 tp!1781950))))

(declare-fun b!6414941 () Bool)

(declare-fun tp!1781948 () Bool)

(assert (=> b!6414941 (= e!3892539 tp!1781948)))

(declare-fun b!6414939 () Bool)

(assert (=> b!6414939 (= e!3892539 tp_is_empty!41883)))

(assert (=> b!6413889 (= tp!1781788 e!3892539)))

(declare-fun b!6414940 () Bool)

(declare-fun tp!1781947 () Bool)

(declare-fun tp!1781951 () Bool)

(assert (=> b!6414940 (= e!3892539 (and tp!1781947 tp!1781951))))

(assert (= (and b!6413889 ((_ is ElementMatch!16315) (reg!16644 (reg!16644 r!7292)))) b!6414939))

(assert (= (and b!6413889 ((_ is Concat!25160) (reg!16644 (reg!16644 r!7292)))) b!6414940))

(assert (= (and b!6413889 ((_ is Star!16315) (reg!16644 (reg!16644 r!7292)))) b!6414941))

(assert (= (and b!6413889 ((_ is Union!16315) (reg!16644 (reg!16644 r!7292)))) b!6414942))

(declare-fun b!6414946 () Bool)

(declare-fun e!3892540 () Bool)

(declare-fun tp!1781954 () Bool)

(declare-fun tp!1781955 () Bool)

(assert (=> b!6414946 (= e!3892540 (and tp!1781954 tp!1781955))))

(declare-fun b!6414945 () Bool)

(declare-fun tp!1781953 () Bool)

(assert (=> b!6414945 (= e!3892540 tp!1781953)))

(declare-fun b!6414943 () Bool)

(assert (=> b!6414943 (= e!3892540 tp_is_empty!41883)))

(assert (=> b!6413890 (= tp!1781789 e!3892540)))

(declare-fun b!6414944 () Bool)

(declare-fun tp!1781952 () Bool)

(declare-fun tp!1781956 () Bool)

(assert (=> b!6414944 (= e!3892540 (and tp!1781952 tp!1781956))))

(assert (= (and b!6413890 ((_ is ElementMatch!16315) (regOne!33143 (reg!16644 r!7292)))) b!6414943))

(assert (= (and b!6413890 ((_ is Concat!25160) (regOne!33143 (reg!16644 r!7292)))) b!6414944))

(assert (= (and b!6413890 ((_ is Star!16315) (regOne!33143 (reg!16644 r!7292)))) b!6414945))

(assert (= (and b!6413890 ((_ is Union!16315) (regOne!33143 (reg!16644 r!7292)))) b!6414946))

(declare-fun b!6414950 () Bool)

(declare-fun e!3892541 () Bool)

(declare-fun tp!1781959 () Bool)

(declare-fun tp!1781960 () Bool)

(assert (=> b!6414950 (= e!3892541 (and tp!1781959 tp!1781960))))

(declare-fun b!6414949 () Bool)

(declare-fun tp!1781958 () Bool)

(assert (=> b!6414949 (= e!3892541 tp!1781958)))

(declare-fun b!6414947 () Bool)

(assert (=> b!6414947 (= e!3892541 tp_is_empty!41883)))

(assert (=> b!6413890 (= tp!1781790 e!3892541)))

(declare-fun b!6414948 () Bool)

(declare-fun tp!1781957 () Bool)

(declare-fun tp!1781961 () Bool)

(assert (=> b!6414948 (= e!3892541 (and tp!1781957 tp!1781961))))

(assert (= (and b!6413890 ((_ is ElementMatch!16315) (regTwo!33143 (reg!16644 r!7292)))) b!6414947))

(assert (= (and b!6413890 ((_ is Concat!25160) (regTwo!33143 (reg!16644 r!7292)))) b!6414948))

(assert (= (and b!6413890 ((_ is Star!16315) (regTwo!33143 (reg!16644 r!7292)))) b!6414949))

(assert (= (and b!6413890 ((_ is Union!16315) (regTwo!33143 (reg!16644 r!7292)))) b!6414950))

(declare-fun b!6414956 () Bool)

(declare-fun e!3892544 () Bool)

(declare-fun tp!1781964 () Bool)

(declare-fun tp!1781965 () Bool)

(assert (=> b!6414956 (= e!3892544 (and tp!1781964 tp!1781965))))

(declare-fun b!6414955 () Bool)

(declare-fun tp!1781963 () Bool)

(assert (=> b!6414955 (= e!3892544 tp!1781963)))

(declare-fun b!6414953 () Bool)

(assert (=> b!6414953 (= e!3892544 tp_is_empty!41883)))

(assert (=> b!6413875 (= tp!1781771 e!3892544)))

(declare-fun b!6414954 () Bool)

(declare-fun tp!1781962 () Bool)

(declare-fun tp!1781966 () Bool)

(assert (=> b!6414954 (= e!3892544 (and tp!1781962 tp!1781966))))

(assert (= (and b!6413875 ((_ is ElementMatch!16315) (regOne!33142 (regOne!33143 r!7292)))) b!6414953))

(assert (= (and b!6413875 ((_ is Concat!25160) (regOne!33142 (regOne!33143 r!7292)))) b!6414954))

(assert (= (and b!6413875 ((_ is Star!16315) (regOne!33142 (regOne!33143 r!7292)))) b!6414955))

(assert (= (and b!6413875 ((_ is Union!16315) (regOne!33142 (regOne!33143 r!7292)))) b!6414956))

(declare-fun b!6414962 () Bool)

(declare-fun e!3892547 () Bool)

(declare-fun tp!1781969 () Bool)

(declare-fun tp!1781970 () Bool)

(assert (=> b!6414962 (= e!3892547 (and tp!1781969 tp!1781970))))

(declare-fun b!6414961 () Bool)

(declare-fun tp!1781968 () Bool)

(assert (=> b!6414961 (= e!3892547 tp!1781968)))

(declare-fun b!6414959 () Bool)

(assert (=> b!6414959 (= e!3892547 tp_is_empty!41883)))

(assert (=> b!6413875 (= tp!1781775 e!3892547)))

(declare-fun b!6414960 () Bool)

(declare-fun tp!1781967 () Bool)

(declare-fun tp!1781971 () Bool)

(assert (=> b!6414960 (= e!3892547 (and tp!1781967 tp!1781971))))

(assert (= (and b!6413875 ((_ is ElementMatch!16315) (regTwo!33142 (regOne!33143 r!7292)))) b!6414959))

(assert (= (and b!6413875 ((_ is Concat!25160) (regTwo!33142 (regOne!33143 r!7292)))) b!6414960))

(assert (= (and b!6413875 ((_ is Star!16315) (regTwo!33142 (regOne!33143 r!7292)))) b!6414961))

(assert (= (and b!6413875 ((_ is Union!16315) (regTwo!33142 (regOne!33143 r!7292)))) b!6414962))

(declare-fun b!6414970 () Bool)

(declare-fun e!3892550 () Bool)

(declare-fun tp!1781974 () Bool)

(declare-fun tp!1781975 () Bool)

(assert (=> b!6414970 (= e!3892550 (and tp!1781974 tp!1781975))))

(declare-fun b!6414969 () Bool)

(declare-fun tp!1781973 () Bool)

(assert (=> b!6414969 (= e!3892550 tp!1781973)))

(declare-fun b!6414967 () Bool)

(assert (=> b!6414967 (= e!3892550 tp_is_empty!41883)))

(assert (=> b!6413896 (= tp!1781798 e!3892550)))

(declare-fun b!6414968 () Bool)

(declare-fun tp!1781972 () Bool)

(declare-fun tp!1781976 () Bool)

(assert (=> b!6414968 (= e!3892550 (and tp!1781972 tp!1781976))))

(assert (= (and b!6413896 ((_ is ElementMatch!16315) (h!71568 (exprs!6199 (h!71570 zl!343))))) b!6414967))

(assert (= (and b!6413896 ((_ is Concat!25160) (h!71568 (exprs!6199 (h!71570 zl!343))))) b!6414968))

(assert (= (and b!6413896 ((_ is Star!16315) (h!71568 (exprs!6199 (h!71570 zl!343))))) b!6414969))

(assert (= (and b!6413896 ((_ is Union!16315) (h!71568 (exprs!6199 (h!71570 zl!343))))) b!6414970))

(declare-fun b!6414973 () Bool)

(declare-fun e!3892555 () Bool)

(declare-fun tp!1781977 () Bool)

(declare-fun tp!1781978 () Bool)

(assert (=> b!6414973 (= e!3892555 (and tp!1781977 tp!1781978))))

(assert (=> b!6413896 (= tp!1781799 e!3892555)))

(assert (= (and b!6413896 ((_ is Cons!65120) (t!378856 (exprs!6199 (h!71570 zl!343))))) b!6414973))

(declare-fun b!6414979 () Bool)

(declare-fun e!3892556 () Bool)

(declare-fun tp!1781981 () Bool)

(declare-fun tp!1781982 () Bool)

(assert (=> b!6414979 (= e!3892556 (and tp!1781981 tp!1781982))))

(declare-fun b!6414978 () Bool)

(declare-fun tp!1781980 () Bool)

(assert (=> b!6414978 (= e!3892556 tp!1781980)))

(declare-fun b!6414976 () Bool)

(assert (=> b!6414976 (= e!3892556 tp_is_empty!41883)))

(assert (=> b!6413876 (= tp!1781772 e!3892556)))

(declare-fun b!6414977 () Bool)

(declare-fun tp!1781979 () Bool)

(declare-fun tp!1781983 () Bool)

(assert (=> b!6414977 (= e!3892556 (and tp!1781979 tp!1781983))))

(assert (= (and b!6413876 ((_ is ElementMatch!16315) (reg!16644 (regOne!33143 r!7292)))) b!6414976))

(assert (= (and b!6413876 ((_ is Concat!25160) (reg!16644 (regOne!33143 r!7292)))) b!6414977))

(assert (= (and b!6413876 ((_ is Star!16315) (reg!16644 (regOne!33143 r!7292)))) b!6414978))

(assert (= (and b!6413876 ((_ is Union!16315) (reg!16644 (regOne!33143 r!7292)))) b!6414979))

(declare-fun b!6414982 () Bool)

(declare-fun e!3892559 () Bool)

(declare-fun tp!1781984 () Bool)

(assert (=> b!6414982 (= e!3892559 (and tp_is_empty!41883 tp!1781984))))

(assert (=> b!6413909 (= tp!1781812 e!3892559)))

(assert (= (and b!6413909 ((_ is Cons!65121) (t!378857 (t!378857 s!2326)))) b!6414982))

(declare-fun condSetEmpty!43775 () Bool)

(assert (=> setNonEmpty!43764 (= condSetEmpty!43775 (= setRest!43764 ((as const (Array Context!11398 Bool)) false)))))

(declare-fun setRes!43775 () Bool)

(assert (=> setNonEmpty!43764 (= tp!1781796 setRes!43775)))

(declare-fun setIsEmpty!43775 () Bool)

(assert (=> setIsEmpty!43775 setRes!43775))

(declare-fun e!3892560 () Bool)

(declare-fun setNonEmpty!43775 () Bool)

(declare-fun setElem!43775 () Context!11398)

(declare-fun tp!1781985 () Bool)

(assert (=> setNonEmpty!43775 (= setRes!43775 (and tp!1781985 (inv!84034 setElem!43775) e!3892560))))

(declare-fun setRest!43775 () (InoxSet Context!11398))

(assert (=> setNonEmpty!43775 (= setRest!43764 ((_ map or) (store ((as const (Array Context!11398 Bool)) false) setElem!43775 true) setRest!43775))))

(declare-fun b!6414983 () Bool)

(declare-fun tp!1781986 () Bool)

(assert (=> b!6414983 (= e!3892560 tp!1781986)))

(assert (= (and setNonEmpty!43764 condSetEmpty!43775) setIsEmpty!43775))

(assert (= (and setNonEmpty!43764 (not condSetEmpty!43775)) setNonEmpty!43775))

(assert (= setNonEmpty!43775 b!6414983))

(declare-fun m!7210494 () Bool)

(assert (=> setNonEmpty!43775 m!7210494))

(declare-fun b!6414985 () Bool)

(declare-fun e!3892562 () Bool)

(declare-fun tp!1781987 () Bool)

(assert (=> b!6414985 (= e!3892562 tp!1781987)))

(declare-fun e!3892561 () Bool)

(declare-fun tp!1781988 () Bool)

(declare-fun b!6414984 () Bool)

(assert (=> b!6414984 (= e!3892561 (and (inv!84034 (h!71570 (t!378858 (t!378858 zl!343)))) e!3892562 tp!1781988))))

(assert (=> b!6413916 (= tp!1781818 e!3892561)))

(assert (= b!6414984 b!6414985))

(assert (= (and b!6413916 ((_ is Cons!65122) (t!378858 (t!378858 zl!343)))) b!6414984))

(declare-fun m!7210496 () Bool)

(assert (=> b!6414984 m!7210496))

(declare-fun b!6414986 () Bool)

(declare-fun e!3892563 () Bool)

(declare-fun tp!1781989 () Bool)

(declare-fun tp!1781990 () Bool)

(assert (=> b!6414986 (= e!3892563 (and tp!1781989 tp!1781990))))

(assert (=> b!6413895 (= tp!1781797 e!3892563)))

(assert (= (and b!6413895 ((_ is Cons!65120) (exprs!6199 setElem!43764))) b!6414986))

(declare-fun b!6414987 () Bool)

(declare-fun e!3892564 () Bool)

(declare-fun tp!1781991 () Bool)

(declare-fun tp!1781992 () Bool)

(assert (=> b!6414987 (= e!3892564 (and tp!1781991 tp!1781992))))

(assert (=> b!6413917 (= tp!1781817 e!3892564)))

(assert (= (and b!6413917 ((_ is Cons!65120) (exprs!6199 (h!71570 (t!378858 zl!343))))) b!6414987))

(declare-fun b_lambda!243859 () Bool)

(assert (= b_lambda!243855 (or d!2011077 b_lambda!243859)))

(declare-fun bs!1612976 () Bool)

(declare-fun d!2011633 () Bool)

(assert (= bs!1612976 (and d!2011633 d!2011077)))

(assert (=> bs!1612976 (= (dynLambda!25863 lambda!354116 (h!71568 (unfocusZipperList!1736 zl!343))) (validRegex!8051 (h!71568 (unfocusZipperList!1736 zl!343))))))

(declare-fun m!7210498 () Bool)

(assert (=> bs!1612976 m!7210498))

(assert (=> b!6414680 d!2011633))

(declare-fun b_lambda!243861 () Bool)

(assert (= b_lambda!243829 (or b!6412770 b_lambda!243861)))

(assert (=> d!2011203 d!2011183))

(declare-fun b_lambda!243863 () Bool)

(assert (= b_lambda!243835 (or d!2011135 b_lambda!243863)))

(declare-fun bs!1612977 () Bool)

(declare-fun d!2011635 () Bool)

(assert (= bs!1612977 (and d!2011635 d!2011135)))

(assert (=> bs!1612977 (= (dynLambda!25863 lambda!354123 (h!71568 (exprs!6199 (h!71570 zl!343)))) (validRegex!8051 (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(declare-fun m!7210500 () Bool)

(assert (=> bs!1612977 m!7210500))

(assert (=> b!6413960 d!2011635))

(declare-fun b_lambda!243865 () Bool)

(assert (= b_lambda!243857 (or d!2010999 b_lambda!243865)))

(declare-fun bs!1612978 () Bool)

(declare-fun d!2011637 () Bool)

(assert (= bs!1612978 (and d!2011637 d!2010999)))

(assert (=> bs!1612978 (= (dynLambda!25863 lambda!354084 (h!71568 (exprs!6199 (h!71570 zl!343)))) (validRegex!8051 (h!71568 (exprs!6199 (h!71570 zl!343)))))))

(assert (=> bs!1612978 m!7210500))

(assert (=> b!6414780 d!2011637))

(declare-fun b_lambda!243867 () Bool)

(assert (= b_lambda!243847 (or d!2011049 b_lambda!243867)))

(declare-fun bs!1612979 () Bool)

(declare-fun d!2011639 () Bool)

(assert (= bs!1612979 (and d!2011639 d!2011049)))

(assert (=> bs!1612979 (= (dynLambda!25863 lambda!354098 (h!71568 (t!378856 (exprs!6199 (h!71570 zl!343))))) (validRegex!8051 (h!71568 (t!378856 (exprs!6199 (h!71570 zl!343))))))))

(declare-fun m!7210502 () Bool)

(assert (=> bs!1612979 m!7210502))

(assert (=> b!6414325 d!2011639))

(declare-fun b_lambda!243869 () Bool)

(assert (= b_lambda!243843 (or b!6412822 b_lambda!243869)))

(declare-fun bs!1612980 () Bool)

(declare-fun d!2011641 () Bool)

(assert (= bs!1612980 (and d!2011641 b!6412822)))

(assert (=> bs!1612980 (= (dynLambda!25865 lambda!354037 (h!71570 lt!2375193)) (>= lt!2375240 (contextDepth!272 (h!71570 lt!2375193))))))

(assert (=> bs!1612980 m!7208650))

(assert (=> b!6414251 d!2011641))

(declare-fun b_lambda!243871 () Bool)

(assert (= b_lambda!243833 (or d!2011171 b_lambda!243871)))

(declare-fun bs!1612981 () Bool)

(declare-fun d!2011643 () Bool)

(assert (= bs!1612981 (and d!2011643 d!2011171)))

(assert (=> bs!1612981 (= (dynLambda!25863 lambda!354125 (h!71568 (exprs!6199 setElem!43758))) (validRegex!8051 (h!71568 (exprs!6199 setElem!43758))))))

(declare-fun m!7210504 () Bool)

(assert (=> bs!1612981 m!7210504))

(assert (=> b!6413953 d!2011643))

(declare-fun b_lambda!243873 () Bool)

(assert (= b_lambda!243831 (or b!6412770 b_lambda!243873)))

(assert (=> d!2011213 d!2011189))

(declare-fun b_lambda!243875 () Bool)

(assert (= b_lambda!243841 (or b!6412770 b_lambda!243875)))

(assert (=> d!2011313 d!2011187))

(declare-fun b_lambda!243877 () Bool)

(assert (= b_lambda!243837 (or b!6412770 b_lambda!243877)))

(assert (=> d!2011255 d!2011181))

(declare-fun b_lambda!243879 () Bool)

(assert (= b_lambda!243853 (or b!6412815 b_lambda!243879)))

(declare-fun bs!1612982 () Bool)

(declare-fun d!2011645 () Bool)

(assert (= bs!1612982 (and d!2011645 b!6412815)))

(assert (=> bs!1612982 (= (dynLambda!25865 lambda!354033 (h!71570 (t!378858 zl!343))) (>= lt!2375237 (contextDepth!272 (h!71570 (t!378858 zl!343)))))))

(assert (=> bs!1612982 m!7210122))

(assert (=> b!6414468 d!2011645))

(declare-fun b_lambda!243881 () Bool)

(assert (= b_lambda!243849 (or b!6412817 b_lambda!243881)))

(declare-fun bs!1612983 () Bool)

(declare-fun d!2011647 () Bool)

(assert (= bs!1612983 (and d!2011647 b!6412817)))

(assert (=> bs!1612983 (= (dynLambda!25865 lambda!354034 (h!71570 zl!343)) (>= lt!2375236 (contextDepth!272 (h!71570 zl!343))))))

(assert (=> bs!1612983 m!7208638))

(assert (=> b!6414327 d!2011647))

(declare-fun b_lambda!243883 () Bool)

(assert (= b_lambda!243845 (or b!6412770 b_lambda!243883)))

(assert (=> d!2011361 d!2011185))

(declare-fun b_lambda!243885 () Bool)

(assert (= b_lambda!243851 (or b!6412820 b_lambda!243885)))

(declare-fun bs!1612984 () Bool)

(declare-fun d!2011649 () Bool)

(assert (= bs!1612984 (and d!2011649 b!6412820)))

(assert (=> bs!1612984 (= (dynLambda!25865 lambda!354036 (h!71570 (t!378858 lt!2375193))) (>= lt!2375241 (contextDepth!272 (h!71570 (t!378858 lt!2375193)))))))

(assert (=> bs!1612984 m!7210042))

(assert (=> b!6414407 d!2011649))

(declare-fun b_lambda!243887 () Bool)

(assert (= b_lambda!243839 (or d!2011089 b_lambda!243887)))

(declare-fun bs!1612985 () Bool)

(declare-fun d!2011651 () Bool)

(assert (= bs!1612985 (and d!2011651 d!2011089)))

(assert (=> bs!1612985 (= (dynLambda!25863 lambda!354119 (h!71568 lt!2375385)) (validRegex!8051 (h!71568 lt!2375385)))))

(declare-fun m!7210506 () Bool)

(assert (=> bs!1612985 m!7210506))

(assert (=> b!6414140 d!2011651))

(check-sat (not setNonEmpty!43775) (not b!6414944) (not b!6413959) (not d!2011491) (not b!6414859) (not d!2011585) (not d!2011451) (not b!6414930) (not b!6414497) (not d!2011579) (not bm!551254) (not b!6414326) (not b!6414573) (not bm!551167) (not bm!551265) (not d!2011265) (not bm!551288) (not bm!551317) (not b!6414716) (not b!6414650) (not b!6414659) (not bm!551178) (not bm!551223) (not d!2011553) (not b!6414626) (not bm!551331) (not b!6414628) (not b_lambda!243825) (not bm!551324) (not b!6414194) (not b!6413977) (not b!6414162) (not b!6414810) (not b!6414024) (not d!2011427) (not bm!551211) (not b!6414922) (not b!6414351) (not bm!551168) (not d!2011319) (not b!6414921) (not b_lambda!243881) (not b!6414267) (not bm!551311) (not bm!551245) (not bm!551226) (not bs!1612979) (not bm!551276) (not b!6414168) (not bm!551319) (not d!2011497) (not bm!551305) (not bm!551347) (not d!2011365) (not b_lambda!243823) (not bm!551204) (not bm!551253) (not b!6414883) (not bm!551208) (not d!2011511) (not bm!551237) (not b!6414829) (not bm!551308) (not bm!551239) (not b!6414394) (not bm!551209) (not b!6414818) (not bm!551284) (not bm!551243) (not b!6414383) (not d!2011439) (not bs!1612977) (not b!6414653) (not bs!1612980) (not d!2011555) (not b!6414894) (not d!2011349) (not bm!551281) (not b!6414973) (not b!6414139) (not d!2011499) (not b!6414711) (not b!6414623) (not bs!1612982) (not b!6414910) (not b!6414827) (not b!6414781) (not d!2011273) (not b!6414744) (not b!6414772) (not bm!551218) (not b!6413997) (not b!6414904) (not b!6414164) (not d!2011347) (not bm!551205) (not b!6414925) (not d!2011289) (not b!6414132) (not b!6414608) (not bm!551350) (not b!6414942) (not b!6414385) (not b!6414434) (not bs!1612985) (not bm!551217) (not b!6414017) (not b!6414888) (not b!6414987) (not b!6414856) (not b!6414938) (not d!2011543) (not b!6414173) (not b!6414577) (not b!6414864) (not b!6414176) (not b!6414916) (not b!6414488) (not b!6414489) (not b!6414219) (not d!2011371) (not bm!551326) (not d!2011269) (not bm!551291) (not bm!551289) (not bm!551338) (not b!6414186) (not b!6414475) (not bm!551376) (not b!6414647) (not b!6414741) (not bm!551220) (not b!6414877) (not d!2011445) (not d!2011241) (not bm!551202) (not b!6414001) (not bm!551354) (not d!2011361) (not b!6414672) (not b!6414897) (not b!6414286) (not b!6414374) (not bm!551309) (not d!2011489) (not d!2011619) (not b!6414950) (not bm!551294) (not bm!551271) (not bm!551227) (not b!6414246) (not b!6414193) (not b!6414816) (not b!6414887) (not d!2011257) (not b!6414590) (not b!6414924) (not b!6414336) (not b!6414317) (not d!2011409) (not b!6414605) (not b!6414314) (not b!6414654) (not b!6414021) (not b!6414091) (not d!2011209) (not bm!551378) (not d!2011455) (not d!2011317) (not d!2011517) (not b!6414552) (not b!6414225) (not b!6414142) (not d!2011239) (not b!6413961) (not d!2011545) (not b!6414088) (not b_lambda!243865) (not d!2011521) (not bm!551330) (not b!6414430) (not b!6414400) (not bm!551306) (not b!6414881) (not b!6414912) (not b!6414934) (not bs!1612984) (not b!6413979) (not bm!551373) (not b!6414718) (not bm!551269) (not b!6414054) (not bm!551366) (not d!2011467) (not b!6414150) (not b!6414742) (not bm!551360) (not bm!551232) (not b!6414968) (not b!6414890) (not b!6414683) (not b!6414355) (not bm!551297) (not b!6414491) (not bm!551307) (not b!6414902) (not b!6414946) (not b!6414720) (not b!6414391) (not bm!551236) (not bm!551275) (not bm!551300) (not b!6413992) (not b!6414862) (not b_lambda!243827) (not b!6414765) (not b!6414146) (not bm!551335) (not b!6414003) (not b!6413996) (not d!2011275) (not bm!551263) (not d!2011311) (not b!6414357) (not bm!551210) (not b!6414825) (not bm!551215) (not b!6414153) (not b!6414025) (not b!6414879) (not b!6414954) (not b!6414007) (not bm!551196) (not d!2011479) (not bs!1612976) (not b!6414333) (not b!6414940) (not b!6414423) (not b!6413930) (not d!2011287) (not bm!551280) (not bm!551175) (not b!6414914) (not b!6414604) (not b!6414872) (not d!2011375) (not b_lambda!243861) (not b!6414601) (not bm!551170) (not bm!551341) (not b!6414836) (not d!2011443) (not bm!551357) (not d!2011417) (not b!6414982) (not b_lambda!243879) (not d!2011449) (not b!6414301) (not b!6414329) (not d!2011197) (not d!2011391) (not bm!551161) (not b!6414748) (not b!6414387) (not d!2011617) (not b!6414613) (not bm!551241) (not b!6414364) (not bm!551229) (not b!6414792) (not bm!551272) (not b!6414360) (not b!6414866) (not d!2011249) (not b!6414481) (not d!2011421) (not b!6413954) (not b!6414264) (not setNonEmpty!43771) (not bm!551261) (not bm!551235) (not d!2011401) (not b!6414880) (not d!2011355) (not b!6414534) (not d!2011523) (not d!2011259) (not b!6414469) (not d!2011331) (not b!6414009) (not b!6414365) (not b!6414885) (not d!2011309) (not bm!551198) (not d!2011357) (not d!2011447) (not b!6414149) (not bm!551177) (not b!6414496) (not d!2011297) (not b!6414144) (not d!2011203) (not bm!551339) (not b!6414898) (not bm!551185) (not b!6414215) (not b!6414863) (not b!6414867) (not bm!551352) (not b!6414315) (not b!6414979) (not b!6414892) (not bm!551186) (not bm!551221) (not setNonEmpty!43769) (not bm!551216) (not b!6414167) (not b!6414337) (not b!6414252) (not b!6414889) (not d!2011325) (not b!6414909) (not bm!551359) (not b!6414177) (not b!6414969) (not d!2011263) tp_is_empty!41883 (not b!6414823) (not bs!1612983) (not d!2011393) (not b!6414302) (not b!6414937) (not b!6414470) (not b!6414414) (not b!6414948) (not b!6414408) (not b!6414936) (not b!6414983) (not b!6414906) (not d!2011599) (not b!6414681) (not b!6414597) (not b_lambda!243877) (not b!6414141) (not bm!551270) (not d!2011425) (not b!6414358) (not bm!551262) (not b!6414876) (not b!6414657) (not b!6414913) (not bm!551315) (not bm!551250) (not b!6414632) (not d!2011495) (not b!6414984) (not b!6413963) (not b!6414004) (not b!6414581) (not bm!551327) (not d!2011301) (not b!6414784) (not b!6414986) (not b!6413999) (not d!2011463) (not bm!551351) (not bm!551278) (not bm!551340) (not bm!551343) (not b!6414858) (not b!6414790) (not b!6414832) (not b!6414977) (not d!2011525) (not bm!551228) (not b!6414081) (not bm!551316) (not bm!551273) (not d!2011465) (not b!6414917) (not bm!551187) (not d!2011307) (not b!6414433) (not bm!551274) (not d!2011243) (not b!6414782) (not bm!551358) (not b!6414624) (not b!6414084) (not d!2011215) (not bm!551242) (not b!6414619) (not b!6414473) (not b!6414908) (not b_lambda!243871) (not b!6414696) (not b_lambda!243883) (not b_lambda!243819) (not b!6414445) (not bm!551183) (not b!6414985) (not b!6414298) (not b!6414786) (not b!6414599) (not b!6414087) (not b!6414842) (not d!2011387) (not bs!1612981) (not bm!551290) (not b!6414905) (not bm!551333) (not b!6414941) (not bm!551329) (not d!2011231) (not bs!1612978) (not bm!551353) (not bm!551180) (not b!6414138) (not b!6414978) (not b!6414932) (not b!6414544) (not b_lambda!243863) (not b!6414663) (not bm!551371) (not b!6413955) (not b!6414703) (not bm!551372) (not b!6414366) (not b_lambda!243875) (not b!6414500) (not b!6414006) (not b_lambda!243821) (not bm!551318) (not b!6414255) (not b!6414884) (not b!6414575) (not b!6414426) (not d!2011245) (not b!6414949) (not bm!551163) (not bm!551362) (not b_lambda!243873) (not setNonEmpty!43767) (not b!6414860) (not b!6414196) (not b!6414354) (not b!6413943) (not b_lambda!243885) (not d!2011379) (not b!6414472) (not b!6414962) (not b!6414868) (not b!6414554) (not b!6414493) (not b!6414328) (not d!2011539) (not b!6414785) (not bm!551260) (not d!2011519) (not b!6414631) (not b!6414833) (not b!6414363) (not b!6414085) (not b!6414299) (not b!6414928) (not b!6414257) (not b!6413993) (not b!6414901) (not b!6414822) (not b!6414580) (not bm!551367) (not b!6414929) (not b!6414421) (not b!6414715) (not bm!551207) (not b!6414487) (not bm!551332) (not d!2011423) (not b!6414656) (not bm!551251) (not bm!551282) (not d!2011369) (not b!6414820) (not b!6414787) (not b!6414652) (not b!6414412) (not b_lambda!243867) (not b!6414871) (not b!6414961) (not bm!551322) (not bm!551214) (not b!6414180) (not b!6414639) (not d!2011373) (not b!6414621) (not b!6413983) (not b!6414428) (not b!6414260) (not b!6414169) (not bm!551179) (not b!6414920) (not bm!551356) (not bm!551375) (not bm!551348) (not b!6414956) (not d!2011441) (not b!6414553) (not b!6414635) (not b!6414062) (not bm!551230) (not bm!551369) (not b!6414970) (not b!6414524) (not bm!551295) (not bm!551321) (not b!6414308) (not d!2011211) (not d!2011419) (not b!6414090) (not b!6414893) (not b!6414584) (not b!6414933) (not setNonEmpty!43768) (not bm!551370) (not b!6414370) (not bm!551172) (not b!6414528) (not d!2011493) (not b!6414070) (not d!2011329) (not b!6414789) (not d!2011487) (not b!6414261) (not bm!551255) (not b!6414755) (not b!6414390) (not b!6414960) (not bm!551182) (not d!2011213) (not d!2011471) (not b!6414875) (not b!6414349) (not b!6414757) (not bm!551160) (not d!2011621) (not b!6414955) (not b!6414232) (not b!6414945) (not b!6414294) (not bm!551336) (not b!6414028) (not d!2011385) (not bm!551256) (not b!6414369) (not b!6414926) (not d!2011575) (not b!6414171) (not d!2011313) (not b_lambda!243869) (not b!6414367) (not bm!551169) (not b!6414086) (not bm!551292) (not b!6414296) (not bm!551257) (not setNonEmpty!43770) (not d!2011431) (not d!2011255) (not b!6414918) (not bm!551249) (not b!6414721) (not b!6414253) (not b!6414555) (not b!6414437) (not bm!551238) (not b!6414545) (not b!6414896) (not b!6414717) (not b!6413923) (not b!6414714) (not b!6414073) (not b!6414331) (not b!6414900) (not b_lambda!243859) (not b!6414340) (not d!2011315) (not b!6414651) (not b!6414019) (not bm!551201) (not d!2011327) (not d!2011573) (not b_lambda!243887) (not b!6414195) (not d!2011261) (not b!6414873))
(check-sat)
