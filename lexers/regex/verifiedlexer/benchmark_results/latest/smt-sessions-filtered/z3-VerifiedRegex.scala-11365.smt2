; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!602668 () Bool)

(assert start!602668)

(declare-fun b!5928274 () Bool)

(assert (=> b!5928274 true))

(assert (=> b!5928274 true))

(declare-fun lambda!323347 () Int)

(declare-fun lambda!323346 () Int)

(assert (=> b!5928274 (not (= lambda!323347 lambda!323346))))

(assert (=> b!5928274 true))

(assert (=> b!5928274 true))

(declare-fun b!5928271 () Bool)

(assert (=> b!5928271 true))

(declare-fun b!5928256 () Bool)

(declare-fun e!3628545 () Bool)

(declare-fun e!3628551 () Bool)

(assert (=> b!5928256 (= e!3628545 (not e!3628551))))

(declare-fun res!2484222 () Bool)

(assert (=> b!5928256 (=> res!2484222 e!3628551)))

(declare-datatypes ((C!32224 0))(
  ( (C!32225 (val!25814 Int)) )
))
(declare-datatypes ((Regex!15977 0))(
  ( (ElementMatch!15977 (c!1053727 C!32224)) (Concat!24822 (regOne!32466 Regex!15977) (regTwo!32466 Regex!15977)) (EmptyExpr!15977) (Star!15977 (reg!16306 Regex!15977)) (EmptyLang!15977) (Union!15977 (regOne!32467 Regex!15977) (regTwo!32467 Regex!15977)) )
))
(declare-datatypes ((List!64230 0))(
  ( (Nil!64106) (Cons!64106 (h!70554 Regex!15977) (t!377627 List!64230)) )
))
(declare-datatypes ((Context!10722 0))(
  ( (Context!10723 (exprs!5861 List!64230)) )
))
(declare-datatypes ((List!64231 0))(
  ( (Nil!64107) (Cons!64107 (h!70555 Context!10722) (t!377628 List!64231)) )
))
(declare-fun zl!343 () List!64231)

(get-info :version)

(assert (=> b!5928256 (= res!2484222 (not ((_ is Cons!64107) zl!343)))))

(declare-fun lt!2310571 () Bool)

(declare-fun r!7292 () Regex!15977)

(declare-datatypes ((List!64232 0))(
  ( (Nil!64108) (Cons!64108 (h!70556 C!32224) (t!377629 List!64232)) )
))
(declare-fun s!2326 () List!64232)

(declare-fun matchRSpec!3078 (Regex!15977 List!64232) Bool)

(assert (=> b!5928256 (= lt!2310571 (matchRSpec!3078 r!7292 s!2326))))

(declare-fun matchR!8160 (Regex!15977 List!64232) Bool)

(assert (=> b!5928256 (= lt!2310571 (matchR!8160 r!7292 s!2326))))

(declare-datatypes ((Unit!157225 0))(
  ( (Unit!157226) )
))
(declare-fun lt!2310575 () Unit!157225)

(declare-fun mainMatchTheorem!3078 (Regex!15977 List!64232) Unit!157225)

(assert (=> b!5928256 (= lt!2310575 (mainMatchTheorem!3078 r!7292 s!2326))))

(declare-fun b!5928257 () Bool)

(declare-fun res!2484218 () Bool)

(assert (=> b!5928257 (=> res!2484218 e!3628551)))

(declare-fun generalisedUnion!1821 (List!64230) Regex!15977)

(declare-fun unfocusZipperList!1398 (List!64231) List!64230)

(assert (=> b!5928257 (= res!2484218 (not (= r!7292 (generalisedUnion!1821 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5928258 () Bool)

(declare-fun e!3628542 () Bool)

(declare-fun tp_is_empty!41207 () Bool)

(assert (=> b!5928258 (= e!3628542 tp_is_empty!41207)))

(declare-fun b!5928259 () Bool)

(declare-fun res!2484230 () Bool)

(assert (=> b!5928259 (=> (not res!2484230) (not e!3628545))))

(declare-fun unfocusZipper!1719 (List!64231) Regex!15977)

(assert (=> b!5928259 (= res!2484230 (= r!7292 (unfocusZipper!1719 zl!343)))))

(declare-fun b!5928260 () Bool)

(declare-fun tp!1648710 () Bool)

(declare-fun tp!1648707 () Bool)

(assert (=> b!5928260 (= e!3628542 (and tp!1648710 tp!1648707))))

(declare-fun b!5928262 () Bool)

(declare-fun e!3628550 () Bool)

(declare-fun tp!1648708 () Bool)

(assert (=> b!5928262 (= e!3628550 tp!1648708)))

(declare-fun e!3628549 () Bool)

(declare-fun e!3628546 () Bool)

(declare-fun b!5928263 () Bool)

(declare-fun tp!1648713 () Bool)

(declare-fun inv!83189 (Context!10722) Bool)

(assert (=> b!5928263 (= e!3628546 (and (inv!83189 (h!70555 zl!343)) e!3628549 tp!1648713))))

(declare-fun b!5928264 () Bool)

(declare-fun res!2484228 () Bool)

(assert (=> b!5928264 (=> res!2484228 e!3628551)))

(declare-fun generalisedConcat!1574 (List!64230) Regex!15977)

(assert (=> b!5928264 (= res!2484228 (not (= r!7292 (generalisedConcat!1574 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5928265 () Bool)

(declare-fun res!2484224 () Bool)

(assert (=> b!5928265 (=> (not res!2484224) (not e!3628545))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10722))

(declare-fun toList!9761 ((InoxSet Context!10722)) List!64231)

(assert (=> b!5928265 (= res!2484224 (= (toList!9761 z!1189) zl!343))))

(declare-fun b!5928266 () Bool)

(declare-fun tp!1648712 () Bool)

(declare-fun tp!1648714 () Bool)

(assert (=> b!5928266 (= e!3628542 (and tp!1648712 tp!1648714))))

(declare-fun b!5928267 () Bool)

(declare-fun e!3628543 () Bool)

(declare-fun tp!1648705 () Bool)

(assert (=> b!5928267 (= e!3628543 (and tp_is_empty!41207 tp!1648705))))

(declare-fun b!5928268 () Bool)

(declare-fun tp!1648706 () Bool)

(assert (=> b!5928268 (= e!3628549 tp!1648706)))

(declare-fun b!5928261 () Bool)

(declare-fun res!2484225 () Bool)

(declare-fun e!3628547 () Bool)

(assert (=> b!5928261 (=> res!2484225 e!3628547)))

(declare-fun isEmpty!35969 (List!64230) Bool)

(assert (=> b!5928261 (= res!2484225 (not (isEmpty!35969 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun res!2484221 () Bool)

(assert (=> start!602668 (=> (not res!2484221) (not e!3628545))))

(declare-fun validRegex!7713 (Regex!15977) Bool)

(assert (=> start!602668 (= res!2484221 (validRegex!7713 r!7292))))

(assert (=> start!602668 e!3628545))

(assert (=> start!602668 e!3628542))

(declare-fun condSetEmpty!40242 () Bool)

(assert (=> start!602668 (= condSetEmpty!40242 (= z!1189 ((as const (Array Context!10722 Bool)) false)))))

(declare-fun setRes!40242 () Bool)

(assert (=> start!602668 setRes!40242))

(assert (=> start!602668 e!3628546))

(assert (=> start!602668 e!3628543))

(declare-fun b!5928269 () Bool)

(declare-fun res!2484220 () Bool)

(assert (=> b!5928269 (=> res!2484220 e!3628551)))

(assert (=> b!5928269 (= res!2484220 (not ((_ is Cons!64106) (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5928270 () Bool)

(declare-fun e!3628548 () Bool)

(declare-fun lt!2310576 () Context!10722)

(assert (=> b!5928270 (= e!3628548 (inv!83189 lt!2310576))))

(declare-fun lt!2310565 () (InoxSet Context!10722))

(declare-fun lt!2310574 () List!64230)

(declare-fun derivationStepZipperUp!1153 (Context!10722 C!32224) (InoxSet Context!10722))

(assert (=> b!5928270 (= lt!2310565 (derivationStepZipperUp!1153 (Context!10723 lt!2310574) (h!70556 s!2326)))))

(declare-fun lt!2310568 () (InoxSet Context!10722))

(assert (=> b!5928270 (= lt!2310568 (derivationStepZipperUp!1153 lt!2310576 (h!70556 s!2326)))))

(assert (=> b!5928270 (= lt!2310576 (Context!10723 (Cons!64106 (regOne!32466 r!7292) lt!2310574)))))

(assert (=> b!5928270 (= lt!2310574 (Cons!64106 (regTwo!32466 r!7292) Nil!64106))))

(declare-fun e!3628544 () Bool)

(assert (=> b!5928271 (= e!3628544 e!3628548)))

(declare-fun res!2484227 () Bool)

(assert (=> b!5928271 (=> res!2484227 e!3628548)))

(declare-fun lt!2310567 () (InoxSet Context!10722))

(declare-fun derivationStepZipper!1958 ((InoxSet Context!10722) C!32224) (InoxSet Context!10722))

(assert (=> b!5928271 (= res!2484227 (not (= (derivationStepZipper!1958 z!1189 (h!70556 s!2326)) lt!2310567)))))

(declare-fun lambda!323348 () Int)

(declare-fun flatMap!1490 ((InoxSet Context!10722) Int) (InoxSet Context!10722))

(assert (=> b!5928271 (= (flatMap!1490 z!1189 lambda!323348) (derivationStepZipperUp!1153 (h!70555 zl!343) (h!70556 s!2326)))))

(declare-fun lt!2310566 () Unit!157225)

(declare-fun lemmaFlatMapOnSingletonSet!1016 ((InoxSet Context!10722) Context!10722 Int) Unit!157225)

(assert (=> b!5928271 (= lt!2310566 (lemmaFlatMapOnSingletonSet!1016 z!1189 (h!70555 zl!343) lambda!323348))))

(declare-fun b!5928272 () Bool)

(declare-fun res!2484226 () Bool)

(assert (=> b!5928272 (=> res!2484226 e!3628551)))

(declare-fun isEmpty!35970 (List!64231) Bool)

(assert (=> b!5928272 (= res!2484226 (not (isEmpty!35970 (t!377628 zl!343))))))

(declare-fun b!5928273 () Bool)

(declare-fun res!2484223 () Bool)

(assert (=> b!5928273 (=> res!2484223 e!3628551)))

(assert (=> b!5928273 (= res!2484223 (or ((_ is EmptyExpr!15977) r!7292) ((_ is EmptyLang!15977) r!7292) ((_ is ElementMatch!15977) r!7292) ((_ is Union!15977) r!7292) (not ((_ is Concat!24822) r!7292))))))

(declare-fun setIsEmpty!40242 () Bool)

(assert (=> setIsEmpty!40242 setRes!40242))

(assert (=> b!5928274 (= e!3628551 e!3628547)))

(declare-fun res!2484229 () Bool)

(assert (=> b!5928274 (=> res!2484229 e!3628547)))

(declare-fun lt!2310570 () Bool)

(assert (=> b!5928274 (= res!2484229 (or (not (= lt!2310571 lt!2310570)) ((_ is Nil!64108) s!2326)))))

(declare-fun Exists!3047 (Int) Bool)

(assert (=> b!5928274 (= (Exists!3047 lambda!323346) (Exists!3047 lambda!323347))))

(declare-fun lt!2310572 () Unit!157225)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1584 (Regex!15977 Regex!15977 List!64232) Unit!157225)

(assert (=> b!5928274 (= lt!2310572 (lemmaExistCutMatchRandMatchRSpecEquivalent!1584 (regOne!32466 r!7292) (regTwo!32466 r!7292) s!2326))))

(assert (=> b!5928274 (= lt!2310570 (Exists!3047 lambda!323346))))

(declare-datatypes ((tuple2!65912 0))(
  ( (tuple2!65913 (_1!36259 List!64232) (_2!36259 List!64232)) )
))
(declare-datatypes ((Option!15868 0))(
  ( (None!15867) (Some!15867 (v!51965 tuple2!65912)) )
))
(declare-fun isDefined!12571 (Option!15868) Bool)

(declare-fun findConcatSeparation!2282 (Regex!15977 Regex!15977 List!64232 List!64232 List!64232) Option!15868)

(assert (=> b!5928274 (= lt!2310570 (isDefined!12571 (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) Nil!64108 s!2326 s!2326)))))

(declare-fun lt!2310569 () Unit!157225)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2046 (Regex!15977 Regex!15977 List!64232) Unit!157225)

(assert (=> b!5928274 (= lt!2310569 (lemmaFindConcatSeparationEquivalentToExists!2046 (regOne!32466 r!7292) (regTwo!32466 r!7292) s!2326))))

(declare-fun b!5928275 () Bool)

(declare-fun tp!1648711 () Bool)

(assert (=> b!5928275 (= e!3628542 tp!1648711)))

(declare-fun b!5928276 () Bool)

(assert (=> b!5928276 (= e!3628547 e!3628544)))

(declare-fun res!2484219 () Bool)

(assert (=> b!5928276 (=> res!2484219 e!3628544)))

(declare-fun lt!2310573 () (InoxSet Context!10722))

(assert (=> b!5928276 (= res!2484219 (not (= lt!2310573 lt!2310567)))))

(declare-fun derivationStepZipperDown!1227 (Regex!15977 Context!10722 C!32224) (InoxSet Context!10722))

(assert (=> b!5928276 (= lt!2310567 (derivationStepZipperDown!1227 r!7292 (Context!10723 Nil!64106) (h!70556 s!2326)))))

(assert (=> b!5928276 (= lt!2310573 (derivationStepZipperUp!1153 (Context!10723 (Cons!64106 r!7292 Nil!64106)) (h!70556 s!2326)))))

(declare-fun setElem!40242 () Context!10722)

(declare-fun setNonEmpty!40242 () Bool)

(declare-fun tp!1648709 () Bool)

(assert (=> setNonEmpty!40242 (= setRes!40242 (and tp!1648709 (inv!83189 setElem!40242) e!3628550))))

(declare-fun setRest!40242 () (InoxSet Context!10722))

(assert (=> setNonEmpty!40242 (= z!1189 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) setElem!40242 true) setRest!40242))))

(assert (= (and start!602668 res!2484221) b!5928265))

(assert (= (and b!5928265 res!2484224) b!5928259))

(assert (= (and b!5928259 res!2484230) b!5928256))

(assert (= (and b!5928256 (not res!2484222)) b!5928272))

(assert (= (and b!5928272 (not res!2484226)) b!5928264))

(assert (= (and b!5928264 (not res!2484228)) b!5928269))

(assert (= (and b!5928269 (not res!2484220)) b!5928257))

(assert (= (and b!5928257 (not res!2484218)) b!5928273))

(assert (= (and b!5928273 (not res!2484223)) b!5928274))

(assert (= (and b!5928274 (not res!2484229)) b!5928261))

(assert (= (and b!5928261 (not res!2484225)) b!5928276))

(assert (= (and b!5928276 (not res!2484219)) b!5928271))

(assert (= (and b!5928271 (not res!2484227)) b!5928270))

(assert (= (and start!602668 ((_ is ElementMatch!15977) r!7292)) b!5928258))

(assert (= (and start!602668 ((_ is Concat!24822) r!7292)) b!5928266))

(assert (= (and start!602668 ((_ is Star!15977) r!7292)) b!5928275))

(assert (= (and start!602668 ((_ is Union!15977) r!7292)) b!5928260))

(assert (= (and start!602668 condSetEmpty!40242) setIsEmpty!40242))

(assert (= (and start!602668 (not condSetEmpty!40242)) setNonEmpty!40242))

(assert (= setNonEmpty!40242 b!5928262))

(assert (= b!5928263 b!5928268))

(assert (= (and start!602668 ((_ is Cons!64107) zl!343)) b!5928263))

(assert (= (and start!602668 ((_ is Cons!64108) s!2326)) b!5928267))

(declare-fun m!6821580 () Bool)

(assert (=> b!5928263 m!6821580))

(declare-fun m!6821582 () Bool)

(assert (=> b!5928256 m!6821582))

(declare-fun m!6821584 () Bool)

(assert (=> b!5928256 m!6821584))

(declare-fun m!6821586 () Bool)

(assert (=> b!5928256 m!6821586))

(declare-fun m!6821588 () Bool)

(assert (=> start!602668 m!6821588))

(declare-fun m!6821590 () Bool)

(assert (=> b!5928271 m!6821590))

(declare-fun m!6821592 () Bool)

(assert (=> b!5928271 m!6821592))

(declare-fun m!6821594 () Bool)

(assert (=> b!5928271 m!6821594))

(declare-fun m!6821596 () Bool)

(assert (=> b!5928271 m!6821596))

(declare-fun m!6821598 () Bool)

(assert (=> b!5928261 m!6821598))

(declare-fun m!6821600 () Bool)

(assert (=> b!5928272 m!6821600))

(declare-fun m!6821602 () Bool)

(assert (=> setNonEmpty!40242 m!6821602))

(declare-fun m!6821604 () Bool)

(assert (=> b!5928259 m!6821604))

(declare-fun m!6821606 () Bool)

(assert (=> b!5928276 m!6821606))

(declare-fun m!6821608 () Bool)

(assert (=> b!5928276 m!6821608))

(declare-fun m!6821610 () Bool)

(assert (=> b!5928274 m!6821610))

(declare-fun m!6821612 () Bool)

(assert (=> b!5928274 m!6821612))

(declare-fun m!6821614 () Bool)

(assert (=> b!5928274 m!6821614))

(declare-fun m!6821616 () Bool)

(assert (=> b!5928274 m!6821616))

(declare-fun m!6821618 () Bool)

(assert (=> b!5928274 m!6821618))

(assert (=> b!5928274 m!6821616))

(assert (=> b!5928274 m!6821612))

(declare-fun m!6821620 () Bool)

(assert (=> b!5928274 m!6821620))

(declare-fun m!6821622 () Bool)

(assert (=> b!5928270 m!6821622))

(declare-fun m!6821624 () Bool)

(assert (=> b!5928270 m!6821624))

(declare-fun m!6821626 () Bool)

(assert (=> b!5928270 m!6821626))

(declare-fun m!6821628 () Bool)

(assert (=> b!5928264 m!6821628))

(declare-fun m!6821630 () Bool)

(assert (=> b!5928257 m!6821630))

(assert (=> b!5928257 m!6821630))

(declare-fun m!6821632 () Bool)

(assert (=> b!5928257 m!6821632))

(declare-fun m!6821634 () Bool)

(assert (=> b!5928265 m!6821634))

(check-sat (not b!5928259) (not b!5928267) (not b!5928266) (not b!5928270) (not b!5928262) (not start!602668) (not b!5928268) (not setNonEmpty!40242) (not b!5928276) (not b!5928275) (not b!5928274) (not b!5928260) (not b!5928256) (not b!5928272) (not b!5928264) (not b!5928257) (not b!5928265) (not b!5928271) (not b!5928261) (not b!5928263) tp_is_empty!41207)
(check-sat)
(get-model)

(declare-fun bs!1402812 () Bool)

(declare-fun b!5928496 () Bool)

(assert (= bs!1402812 (and b!5928496 b!5928274)))

(declare-fun lambda!323370 () Int)

(assert (=> bs!1402812 (not (= lambda!323370 lambda!323346))))

(assert (=> bs!1402812 (not (= lambda!323370 lambda!323347))))

(assert (=> b!5928496 true))

(assert (=> b!5928496 true))

(declare-fun bs!1402816 () Bool)

(declare-fun b!5928495 () Bool)

(assert (= bs!1402816 (and b!5928495 b!5928274)))

(declare-fun lambda!323372 () Int)

(assert (=> bs!1402816 (not (= lambda!323372 lambda!323346))))

(assert (=> bs!1402816 (= lambda!323372 lambda!323347)))

(declare-fun bs!1402817 () Bool)

(assert (= bs!1402817 (and b!5928495 b!5928496)))

(assert (=> bs!1402817 (not (= lambda!323372 lambda!323370))))

(assert (=> b!5928495 true))

(assert (=> b!5928495 true))

(declare-fun b!5928487 () Bool)

(declare-fun c!1053790 () Bool)

(assert (=> b!5928487 (= c!1053790 ((_ is Union!15977) r!7292))))

(declare-fun e!3628676 () Bool)

(declare-fun e!3628673 () Bool)

(assert (=> b!5928487 (= e!3628676 e!3628673)))

(declare-fun d!1858698 () Bool)

(declare-fun c!1053789 () Bool)

(assert (=> d!1858698 (= c!1053789 ((_ is EmptyExpr!15977) r!7292))))

(declare-fun e!3628677 () Bool)

(assert (=> d!1858698 (= (matchRSpec!3078 r!7292 s!2326) e!3628677)))

(declare-fun b!5928488 () Bool)

(declare-fun c!1053788 () Bool)

(assert (=> b!5928488 (= c!1053788 ((_ is ElementMatch!15977) r!7292))))

(declare-fun e!3628678 () Bool)

(assert (=> b!5928488 (= e!3628678 e!3628676)))

(declare-fun b!5928489 () Bool)

(declare-fun call!470428 () Bool)

(assert (=> b!5928489 (= e!3628677 call!470428)))

(declare-fun b!5928490 () Bool)

(declare-fun e!3628675 () Bool)

(assert (=> b!5928490 (= e!3628675 (matchRSpec!3078 (regTwo!32467 r!7292) s!2326))))

(declare-fun b!5928491 () Bool)

(declare-fun res!2484317 () Bool)

(declare-fun e!3628674 () Bool)

(assert (=> b!5928491 (=> res!2484317 e!3628674)))

(assert (=> b!5928491 (= res!2484317 call!470428)))

(declare-fun e!3628679 () Bool)

(assert (=> b!5928491 (= e!3628679 e!3628674)))

(declare-fun b!5928492 () Bool)

(assert (=> b!5928492 (= e!3628673 e!3628679)))

(declare-fun c!1053787 () Bool)

(assert (=> b!5928492 (= c!1053787 ((_ is Star!15977) r!7292))))

(declare-fun b!5928493 () Bool)

(assert (=> b!5928493 (= e!3628677 e!3628678)))

(declare-fun res!2484319 () Bool)

(assert (=> b!5928493 (= res!2484319 (not ((_ is EmptyLang!15977) r!7292)))))

(assert (=> b!5928493 (=> (not res!2484319) (not e!3628678))))

(declare-fun b!5928494 () Bool)

(assert (=> b!5928494 (= e!3628673 e!3628675)))

(declare-fun res!2484318 () Bool)

(assert (=> b!5928494 (= res!2484318 (matchRSpec!3078 (regOne!32467 r!7292) s!2326))))

(assert (=> b!5928494 (=> res!2484318 e!3628675)))

(declare-fun bm!470422 () Bool)

(declare-fun call!470427 () Bool)

(assert (=> bm!470422 (= call!470427 (Exists!3047 (ite c!1053787 lambda!323370 lambda!323372)))))

(assert (=> b!5928495 (= e!3628679 call!470427)))

(assert (=> b!5928496 (= e!3628674 call!470427)))

(declare-fun b!5928497 () Bool)

(assert (=> b!5928497 (= e!3628676 (= s!2326 (Cons!64108 (c!1053727 r!7292) Nil!64108)))))

(declare-fun bm!470423 () Bool)

(declare-fun isEmpty!35972 (List!64232) Bool)

(assert (=> bm!470423 (= call!470428 (isEmpty!35972 s!2326))))

(assert (= (and d!1858698 c!1053789) b!5928489))

(assert (= (and d!1858698 (not c!1053789)) b!5928493))

(assert (= (and b!5928493 res!2484319) b!5928488))

(assert (= (and b!5928488 c!1053788) b!5928497))

(assert (= (and b!5928488 (not c!1053788)) b!5928487))

(assert (= (and b!5928487 c!1053790) b!5928494))

(assert (= (and b!5928487 (not c!1053790)) b!5928492))

(assert (= (and b!5928494 (not res!2484318)) b!5928490))

(assert (= (and b!5928492 c!1053787) b!5928491))

(assert (= (and b!5928492 (not c!1053787)) b!5928495))

(assert (= (and b!5928491 (not res!2484317)) b!5928496))

(assert (= (or b!5928496 b!5928495) bm!470422))

(assert (= (or b!5928489 b!5928491) bm!470423))

(declare-fun m!6821708 () Bool)

(assert (=> b!5928490 m!6821708))

(declare-fun m!6821710 () Bool)

(assert (=> b!5928494 m!6821710))

(declare-fun m!6821712 () Bool)

(assert (=> bm!470422 m!6821712))

(declare-fun m!6821714 () Bool)

(assert (=> bm!470423 m!6821714))

(assert (=> b!5928256 d!1858698))

(declare-fun b!5928590 () Bool)

(declare-fun e!3628736 () Bool)

(declare-fun head!12495 (List!64232) C!32224)

(assert (=> b!5928590 (= e!3628736 (= (head!12495 s!2326) (c!1053727 r!7292)))))

(declare-fun b!5928591 () Bool)

(declare-fun e!3628732 () Bool)

(declare-fun derivativeStep!4708 (Regex!15977 C!32224) Regex!15977)

(declare-fun tail!11580 (List!64232) List!64232)

(assert (=> b!5928591 (= e!3628732 (matchR!8160 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (tail!11580 s!2326)))))

(declare-fun b!5928592 () Bool)

(declare-fun e!3628735 () Bool)

(declare-fun lt!2310597 () Bool)

(assert (=> b!5928592 (= e!3628735 (not lt!2310597))))

(declare-fun b!5928593 () Bool)

(declare-fun e!3628731 () Bool)

(declare-fun e!3628733 () Bool)

(assert (=> b!5928593 (= e!3628731 e!3628733)))

(declare-fun res!2484344 () Bool)

(assert (=> b!5928593 (=> res!2484344 e!3628733)))

(declare-fun call!470454 () Bool)

(assert (=> b!5928593 (= res!2484344 call!470454)))

(declare-fun b!5928594 () Bool)

(declare-fun e!3628730 () Bool)

(assert (=> b!5928594 (= e!3628730 (= lt!2310597 call!470454))))

(declare-fun b!5928595 () Bool)

(declare-fun res!2484350 () Bool)

(assert (=> b!5928595 (=> (not res!2484350) (not e!3628736))))

(assert (=> b!5928595 (= res!2484350 (not call!470454))))

(declare-fun bm!470449 () Bool)

(assert (=> bm!470449 (= call!470454 (isEmpty!35972 s!2326))))

(declare-fun b!5928596 () Bool)

(assert (=> b!5928596 (= e!3628730 e!3628735)))

(declare-fun c!1053826 () Bool)

(assert (=> b!5928596 (= c!1053826 ((_ is EmptyLang!15977) r!7292))))

(declare-fun b!5928597 () Bool)

(declare-fun res!2484351 () Bool)

(assert (=> b!5928597 (=> res!2484351 e!3628733)))

(assert (=> b!5928597 (= res!2484351 (not (isEmpty!35972 (tail!11580 s!2326))))))

(declare-fun b!5928598 () Bool)

(declare-fun res!2484348 () Bool)

(assert (=> b!5928598 (=> (not res!2484348) (not e!3628736))))

(assert (=> b!5928598 (= res!2484348 (isEmpty!35972 (tail!11580 s!2326)))))

(declare-fun d!1858712 () Bool)

(assert (=> d!1858712 e!3628730))

(declare-fun c!1053827 () Bool)

(assert (=> d!1858712 (= c!1053827 ((_ is EmptyExpr!15977) r!7292))))

(assert (=> d!1858712 (= lt!2310597 e!3628732)))

(declare-fun c!1053825 () Bool)

(assert (=> d!1858712 (= c!1053825 (isEmpty!35972 s!2326))))

(assert (=> d!1858712 (validRegex!7713 r!7292)))

(assert (=> d!1858712 (= (matchR!8160 r!7292 s!2326) lt!2310597)))

(declare-fun b!5928599 () Bool)

(declare-fun res!2484345 () Bool)

(declare-fun e!3628734 () Bool)

(assert (=> b!5928599 (=> res!2484345 e!3628734)))

(assert (=> b!5928599 (= res!2484345 (not ((_ is ElementMatch!15977) r!7292)))))

(assert (=> b!5928599 (= e!3628735 e!3628734)))

(declare-fun b!5928600 () Bool)

(assert (=> b!5928600 (= e!3628733 (not (= (head!12495 s!2326) (c!1053727 r!7292))))))

(declare-fun b!5928601 () Bool)

(assert (=> b!5928601 (= e!3628734 e!3628731)))

(declare-fun res!2484347 () Bool)

(assert (=> b!5928601 (=> (not res!2484347) (not e!3628731))))

(assert (=> b!5928601 (= res!2484347 (not lt!2310597))))

(declare-fun b!5928602 () Bool)

(declare-fun nullable!5972 (Regex!15977) Bool)

(assert (=> b!5928602 (= e!3628732 (nullable!5972 r!7292))))

(declare-fun b!5928603 () Bool)

(declare-fun res!2484349 () Bool)

(assert (=> b!5928603 (=> res!2484349 e!3628734)))

(assert (=> b!5928603 (= res!2484349 e!3628736)))

(declare-fun res!2484346 () Bool)

(assert (=> b!5928603 (=> (not res!2484346) (not e!3628736))))

(assert (=> b!5928603 (= res!2484346 lt!2310597)))

(assert (= (and d!1858712 c!1053825) b!5928602))

(assert (= (and d!1858712 (not c!1053825)) b!5928591))

(assert (= (and d!1858712 c!1053827) b!5928594))

(assert (= (and d!1858712 (not c!1053827)) b!5928596))

(assert (= (and b!5928596 c!1053826) b!5928592))

(assert (= (and b!5928596 (not c!1053826)) b!5928599))

(assert (= (and b!5928599 (not res!2484345)) b!5928603))

(assert (= (and b!5928603 res!2484346) b!5928595))

(assert (= (and b!5928595 res!2484350) b!5928598))

(assert (= (and b!5928598 res!2484348) b!5928590))

(assert (= (and b!5928603 (not res!2484349)) b!5928601))

(assert (= (and b!5928601 res!2484347) b!5928593))

(assert (= (and b!5928593 (not res!2484344)) b!5928597))

(assert (= (and b!5928597 (not res!2484351)) b!5928600))

(assert (= (or b!5928594 b!5928593 b!5928595) bm!470449))

(declare-fun m!6821748 () Bool)

(assert (=> b!5928597 m!6821748))

(assert (=> b!5928597 m!6821748))

(declare-fun m!6821750 () Bool)

(assert (=> b!5928597 m!6821750))

(declare-fun m!6821752 () Bool)

(assert (=> b!5928591 m!6821752))

(assert (=> b!5928591 m!6821752))

(declare-fun m!6821754 () Bool)

(assert (=> b!5928591 m!6821754))

(assert (=> b!5928591 m!6821748))

(assert (=> b!5928591 m!6821754))

(assert (=> b!5928591 m!6821748))

(declare-fun m!6821756 () Bool)

(assert (=> b!5928591 m!6821756))

(assert (=> d!1858712 m!6821714))

(assert (=> d!1858712 m!6821588))

(assert (=> b!5928598 m!6821748))

(assert (=> b!5928598 m!6821748))

(assert (=> b!5928598 m!6821750))

(declare-fun m!6821758 () Bool)

(assert (=> b!5928602 m!6821758))

(assert (=> bm!470449 m!6821714))

(assert (=> b!5928590 m!6821752))

(assert (=> b!5928600 m!6821752))

(assert (=> b!5928256 d!1858712))

(declare-fun d!1858728 () Bool)

(assert (=> d!1858728 (= (matchR!8160 r!7292 s!2326) (matchRSpec!3078 r!7292 s!2326))))

(declare-fun lt!2310609 () Unit!157225)

(declare-fun choose!44698 (Regex!15977 List!64232) Unit!157225)

(assert (=> d!1858728 (= lt!2310609 (choose!44698 r!7292 s!2326))))

(assert (=> d!1858728 (validRegex!7713 r!7292)))

(assert (=> d!1858728 (= (mainMatchTheorem!3078 r!7292 s!2326) lt!2310609)))

(declare-fun bs!1402824 () Bool)

(assert (= bs!1402824 d!1858728))

(assert (=> bs!1402824 m!6821584))

(assert (=> bs!1402824 m!6821582))

(declare-fun m!6821786 () Bool)

(assert (=> bs!1402824 m!6821786))

(assert (=> bs!1402824 m!6821588))

(assert (=> b!5928256 d!1858728))

(declare-fun bm!470463 () Bool)

(declare-fun call!470471 () (InoxSet Context!10722))

(declare-fun call!470468 () (InoxSet Context!10722))

(assert (=> bm!470463 (= call!470471 call!470468)))

(declare-fun d!1858734 () Bool)

(declare-fun c!1053851 () Bool)

(assert (=> d!1858734 (= c!1053851 (and ((_ is ElementMatch!15977) r!7292) (= (c!1053727 r!7292) (h!70556 s!2326))))))

(declare-fun e!3628777 () (InoxSet Context!10722))

(assert (=> d!1858734 (= (derivationStepZipperDown!1227 r!7292 (Context!10723 Nil!64106) (h!70556 s!2326)) e!3628777)))

(declare-fun bm!470464 () Bool)

(declare-fun call!470470 () (InoxSet Context!10722))

(assert (=> bm!470464 (= call!470470 call!470471)))

(declare-fun b!5928672 () Bool)

(declare-fun e!3628775 () (InoxSet Context!10722))

(assert (=> b!5928672 (= e!3628775 call!470470)))

(declare-fun b!5928673 () Bool)

(declare-fun e!3628774 () (InoxSet Context!10722))

(declare-fun e!3628773 () (InoxSet Context!10722))

(assert (=> b!5928673 (= e!3628774 e!3628773)))

(declare-fun c!1053848 () Bool)

(assert (=> b!5928673 (= c!1053848 ((_ is Concat!24822) r!7292))))

(declare-fun b!5928674 () Bool)

(declare-fun e!3628778 () (InoxSet Context!10722))

(assert (=> b!5928674 (= e!3628777 e!3628778)))

(declare-fun c!1053849 () Bool)

(assert (=> b!5928674 (= c!1053849 ((_ is Union!15977) r!7292))))

(declare-fun b!5928675 () Bool)

(declare-fun e!3628776 () Bool)

(assert (=> b!5928675 (= e!3628776 (nullable!5972 (regOne!32466 r!7292)))))

(declare-fun bm!470465 () Bool)

(declare-fun call!470469 () List!64230)

(declare-fun call!470473 () List!64230)

(assert (=> bm!470465 (= call!470469 call!470473)))

(declare-fun b!5928676 () Bool)

(declare-fun call!470472 () (InoxSet Context!10722))

(assert (=> b!5928676 (= e!3628774 ((_ map or) call!470472 call!470471))))

(declare-fun bm!470466 () Bool)

(declare-fun c!1053850 () Bool)

(declare-fun $colon$colon!1864 (List!64230 Regex!15977) List!64230)

(assert (=> bm!470466 (= call!470473 ($colon$colon!1864 (exprs!5861 (Context!10723 Nil!64106)) (ite (or c!1053850 c!1053848) (regTwo!32466 r!7292) r!7292)))))

(declare-fun b!5928677 () Bool)

(assert (=> b!5928677 (= e!3628775 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5928678 () Bool)

(assert (=> b!5928678 (= e!3628773 call!470470)))

(declare-fun b!5928679 () Bool)

(assert (=> b!5928679 (= e!3628777 (store ((as const (Array Context!10722 Bool)) false) (Context!10723 Nil!64106) true))))

(declare-fun bm!470467 () Bool)

(assert (=> bm!470467 (= call!470472 (derivationStepZipperDown!1227 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)) (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (h!70556 s!2326)))))

(declare-fun bm!470468 () Bool)

(assert (=> bm!470468 (= call!470468 (derivationStepZipperDown!1227 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))) (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (h!70556 s!2326)))))

(declare-fun b!5928680 () Bool)

(assert (=> b!5928680 (= c!1053850 e!3628776)))

(declare-fun res!2484382 () Bool)

(assert (=> b!5928680 (=> (not res!2484382) (not e!3628776))))

(assert (=> b!5928680 (= res!2484382 ((_ is Concat!24822) r!7292))))

(assert (=> b!5928680 (= e!3628778 e!3628774)))

(declare-fun b!5928681 () Bool)

(assert (=> b!5928681 (= e!3628778 ((_ map or) call!470472 call!470468))))

(declare-fun b!5928682 () Bool)

(declare-fun c!1053852 () Bool)

(assert (=> b!5928682 (= c!1053852 ((_ is Star!15977) r!7292))))

(assert (=> b!5928682 (= e!3628773 e!3628775)))

(assert (= (and d!1858734 c!1053851) b!5928679))

(assert (= (and d!1858734 (not c!1053851)) b!5928674))

(assert (= (and b!5928674 c!1053849) b!5928681))

(assert (= (and b!5928674 (not c!1053849)) b!5928680))

(assert (= (and b!5928680 res!2484382) b!5928675))

(assert (= (and b!5928680 c!1053850) b!5928676))

(assert (= (and b!5928680 (not c!1053850)) b!5928673))

(assert (= (and b!5928673 c!1053848) b!5928678))

(assert (= (and b!5928673 (not c!1053848)) b!5928682))

(assert (= (and b!5928682 c!1053852) b!5928672))

(assert (= (and b!5928682 (not c!1053852)) b!5928677))

(assert (= (or b!5928678 b!5928672) bm!470465))

(assert (= (or b!5928678 b!5928672) bm!470464))

(assert (= (or b!5928676 bm!470465) bm!470466))

(assert (= (or b!5928676 bm!470464) bm!470463))

(assert (= (or b!5928681 bm!470463) bm!470468))

(assert (= (or b!5928681 b!5928676) bm!470467))

(declare-fun m!6821820 () Bool)

(assert (=> b!5928679 m!6821820))

(declare-fun m!6821822 () Bool)

(assert (=> bm!470466 m!6821822))

(declare-fun m!6821824 () Bool)

(assert (=> bm!470468 m!6821824))

(declare-fun m!6821826 () Bool)

(assert (=> bm!470467 m!6821826))

(declare-fun m!6821828 () Bool)

(assert (=> b!5928675 m!6821828))

(assert (=> b!5928276 d!1858734))

(declare-fun d!1858756 () Bool)

(declare-fun c!1053857 () Bool)

(declare-fun e!3628813 () Bool)

(assert (=> d!1858756 (= c!1053857 e!3628813)))

(declare-fun res!2484388 () Bool)

(assert (=> d!1858756 (=> (not res!2484388) (not e!3628813))))

(assert (=> d!1858756 (= res!2484388 ((_ is Cons!64106) (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))

(declare-fun e!3628812 () (InoxSet Context!10722))

(assert (=> d!1858756 (= (derivationStepZipperUp!1153 (Context!10723 (Cons!64106 r!7292 Nil!64106)) (h!70556 s!2326)) e!3628812)))

(declare-fun b!5928750 () Bool)

(assert (=> b!5928750 (= e!3628813 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))

(declare-fun b!5928751 () Bool)

(declare-fun e!3628811 () (InoxSet Context!10722))

(assert (=> b!5928751 (= e!3628812 e!3628811)))

(declare-fun c!1053858 () Bool)

(assert (=> b!5928751 (= c!1053858 ((_ is Cons!64106) (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))

(declare-fun b!5928752 () Bool)

(declare-fun call!470476 () (InoxSet Context!10722))

(assert (=> b!5928752 (= e!3628811 call!470476)))

(declare-fun bm!470471 () Bool)

(assert (=> bm!470471 (= call!470476 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (h!70556 s!2326)))))

(declare-fun b!5928753 () Bool)

(assert (=> b!5928753 (= e!3628812 ((_ map or) call!470476 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (h!70556 s!2326))))))

(declare-fun b!5928754 () Bool)

(assert (=> b!5928754 (= e!3628811 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1858756 res!2484388) b!5928750))

(assert (= (and d!1858756 c!1053857) b!5928753))

(assert (= (and d!1858756 (not c!1053857)) b!5928751))

(assert (= (and b!5928751 c!1053858) b!5928752))

(assert (= (and b!5928751 (not c!1053858)) b!5928754))

(assert (= (or b!5928753 b!5928752) bm!470471))

(declare-fun m!6821840 () Bool)

(assert (=> b!5928750 m!6821840))

(declare-fun m!6821842 () Bool)

(assert (=> bm!470471 m!6821842))

(declare-fun m!6821844 () Bool)

(assert (=> b!5928753 m!6821844))

(assert (=> b!5928276 d!1858756))

(declare-fun d!1858760 () Bool)

(declare-fun lambda!323389 () Int)

(declare-fun forall!15060 (List!64230 Int) Bool)

(assert (=> d!1858760 (= (inv!83189 setElem!40242) (forall!15060 (exprs!5861 setElem!40242) lambda!323389))))

(declare-fun bs!1402848 () Bool)

(assert (= bs!1402848 d!1858760))

(declare-fun m!6821846 () Bool)

(assert (=> bs!1402848 m!6821846))

(assert (=> setNonEmpty!40242 d!1858760))

(declare-fun d!1858762 () Bool)

(declare-fun e!3628816 () Bool)

(assert (=> d!1858762 e!3628816))

(declare-fun res!2484391 () Bool)

(assert (=> d!1858762 (=> (not res!2484391) (not e!3628816))))

(declare-fun lt!2310624 () List!64231)

(declare-fun noDuplicate!1835 (List!64231) Bool)

(assert (=> d!1858762 (= res!2484391 (noDuplicate!1835 lt!2310624))))

(declare-fun choose!44700 ((InoxSet Context!10722)) List!64231)

(assert (=> d!1858762 (= lt!2310624 (choose!44700 z!1189))))

(assert (=> d!1858762 (= (toList!9761 z!1189) lt!2310624)))

(declare-fun b!5928757 () Bool)

(declare-fun content!11812 (List!64231) (InoxSet Context!10722))

(assert (=> b!5928757 (= e!3628816 (= (content!11812 lt!2310624) z!1189))))

(assert (= (and d!1858762 res!2484391) b!5928757))

(declare-fun m!6821848 () Bool)

(assert (=> d!1858762 m!6821848))

(declare-fun m!6821850 () Bool)

(assert (=> d!1858762 m!6821850))

(declare-fun m!6821852 () Bool)

(assert (=> b!5928757 m!6821852))

(assert (=> b!5928265 d!1858762))

(declare-fun bs!1402849 () Bool)

(declare-fun d!1858764 () Bool)

(assert (= bs!1402849 (and d!1858764 d!1858760)))

(declare-fun lambda!323390 () Int)

(assert (=> bs!1402849 (= lambda!323390 lambda!323389)))

(assert (=> d!1858764 (= (inv!83189 lt!2310576) (forall!15060 (exprs!5861 lt!2310576) lambda!323390))))

(declare-fun bs!1402850 () Bool)

(assert (= bs!1402850 d!1858764))

(declare-fun m!6821854 () Bool)

(assert (=> bs!1402850 m!6821854))

(assert (=> b!5928270 d!1858764))

(declare-fun d!1858766 () Bool)

(declare-fun c!1053859 () Bool)

(declare-fun e!3628819 () Bool)

(assert (=> d!1858766 (= c!1053859 e!3628819)))

(declare-fun res!2484392 () Bool)

(assert (=> d!1858766 (=> (not res!2484392) (not e!3628819))))

(assert (=> d!1858766 (= res!2484392 ((_ is Cons!64106) (exprs!5861 (Context!10723 lt!2310574))))))

(declare-fun e!3628818 () (InoxSet Context!10722))

(assert (=> d!1858766 (= (derivationStepZipperUp!1153 (Context!10723 lt!2310574) (h!70556 s!2326)) e!3628818)))

(declare-fun b!5928758 () Bool)

(assert (=> b!5928758 (= e!3628819 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))

(declare-fun b!5928759 () Bool)

(declare-fun e!3628817 () (InoxSet Context!10722))

(assert (=> b!5928759 (= e!3628818 e!3628817)))

(declare-fun c!1053860 () Bool)

(assert (=> b!5928759 (= c!1053860 ((_ is Cons!64106) (exprs!5861 (Context!10723 lt!2310574))))))

(declare-fun b!5928760 () Bool)

(declare-fun call!470477 () (InoxSet Context!10722))

(assert (=> b!5928760 (= e!3628817 call!470477)))

(declare-fun bm!470472 () Bool)

(assert (=> bm!470472 (= call!470477 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 lt!2310574))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (h!70556 s!2326)))))

(declare-fun b!5928761 () Bool)

(assert (=> b!5928761 (= e!3628818 ((_ map or) call!470477 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (h!70556 s!2326))))))

(declare-fun b!5928762 () Bool)

(assert (=> b!5928762 (= e!3628817 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1858766 res!2484392) b!5928758))

(assert (= (and d!1858766 c!1053859) b!5928761))

(assert (= (and d!1858766 (not c!1053859)) b!5928759))

(assert (= (and b!5928759 c!1053860) b!5928760))

(assert (= (and b!5928759 (not c!1053860)) b!5928762))

(assert (= (or b!5928761 b!5928760) bm!470472))

(declare-fun m!6821856 () Bool)

(assert (=> b!5928758 m!6821856))

(declare-fun m!6821858 () Bool)

(assert (=> bm!470472 m!6821858))

(declare-fun m!6821860 () Bool)

(assert (=> b!5928761 m!6821860))

(assert (=> b!5928270 d!1858766))

(declare-fun d!1858768 () Bool)

(declare-fun c!1053861 () Bool)

(declare-fun e!3628822 () Bool)

(assert (=> d!1858768 (= c!1053861 e!3628822)))

(declare-fun res!2484393 () Bool)

(assert (=> d!1858768 (=> (not res!2484393) (not e!3628822))))

(assert (=> d!1858768 (= res!2484393 ((_ is Cons!64106) (exprs!5861 lt!2310576)))))

(declare-fun e!3628821 () (InoxSet Context!10722))

(assert (=> d!1858768 (= (derivationStepZipperUp!1153 lt!2310576 (h!70556 s!2326)) e!3628821)))

(declare-fun b!5928763 () Bool)

(assert (=> b!5928763 (= e!3628822 (nullable!5972 (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun b!5928764 () Bool)

(declare-fun e!3628820 () (InoxSet Context!10722))

(assert (=> b!5928764 (= e!3628821 e!3628820)))

(declare-fun c!1053862 () Bool)

(assert (=> b!5928764 (= c!1053862 ((_ is Cons!64106) (exprs!5861 lt!2310576)))))

(declare-fun b!5928765 () Bool)

(declare-fun call!470478 () (InoxSet Context!10722))

(assert (=> b!5928765 (= e!3628820 call!470478)))

(declare-fun bm!470473 () Bool)

(assert (=> bm!470473 (= call!470478 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 lt!2310576)) (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (h!70556 s!2326)))))

(declare-fun b!5928766 () Bool)

(assert (=> b!5928766 (= e!3628821 ((_ map or) call!470478 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (h!70556 s!2326))))))

(declare-fun b!5928767 () Bool)

(assert (=> b!5928767 (= e!3628820 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1858768 res!2484393) b!5928763))

(assert (= (and d!1858768 c!1053861) b!5928766))

(assert (= (and d!1858768 (not c!1053861)) b!5928764))

(assert (= (and b!5928764 c!1053862) b!5928765))

(assert (= (and b!5928764 (not c!1053862)) b!5928767))

(assert (= (or b!5928766 b!5928765) bm!470473))

(declare-fun m!6821862 () Bool)

(assert (=> b!5928763 m!6821862))

(declare-fun m!6821864 () Bool)

(assert (=> bm!470473 m!6821864))

(declare-fun m!6821866 () Bool)

(assert (=> b!5928766 m!6821866))

(assert (=> b!5928270 d!1858768))

(declare-fun d!1858770 () Bool)

(declare-fun lt!2310627 () Regex!15977)

(assert (=> d!1858770 (validRegex!7713 lt!2310627)))

(assert (=> d!1858770 (= lt!2310627 (generalisedUnion!1821 (unfocusZipperList!1398 zl!343)))))

(assert (=> d!1858770 (= (unfocusZipper!1719 zl!343) lt!2310627)))

(declare-fun bs!1402851 () Bool)

(assert (= bs!1402851 d!1858770))

(declare-fun m!6821868 () Bool)

(assert (=> bs!1402851 m!6821868))

(assert (=> bs!1402851 m!6821630))

(assert (=> bs!1402851 m!6821630))

(assert (=> bs!1402851 m!6821632))

(assert (=> b!5928259 d!1858770))

(declare-fun bs!1402852 () Bool)

(declare-fun d!1858772 () Bool)

(assert (= bs!1402852 (and d!1858772 d!1858760)))

(declare-fun lambda!323393 () Int)

(assert (=> bs!1402852 (= lambda!323393 lambda!323389)))

(declare-fun bs!1402853 () Bool)

(assert (= bs!1402853 (and d!1858772 d!1858764)))

(assert (=> bs!1402853 (= lambda!323393 lambda!323390)))

(declare-fun b!5928788 () Bool)

(declare-fun e!3628837 () Bool)

(declare-fun lt!2310630 () Regex!15977)

(declare-fun isUnion!844 (Regex!15977) Bool)

(assert (=> b!5928788 (= e!3628837 (isUnion!844 lt!2310630))))

(declare-fun b!5928789 () Bool)

(declare-fun e!3628840 () Regex!15977)

(assert (=> b!5928789 (= e!3628840 (Union!15977 (h!70554 (unfocusZipperList!1398 zl!343)) (generalisedUnion!1821 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5928790 () Bool)

(declare-fun e!3628839 () Bool)

(assert (=> b!5928790 (= e!3628839 e!3628837)))

(declare-fun c!1053871 () Bool)

(declare-fun tail!11581 (List!64230) List!64230)

(assert (=> b!5928790 (= c!1053871 (isEmpty!35969 (tail!11581 (unfocusZipperList!1398 zl!343))))))

(declare-fun b!5928791 () Bool)

(declare-fun head!12496 (List!64230) Regex!15977)

(assert (=> b!5928791 (= e!3628837 (= lt!2310630 (head!12496 (unfocusZipperList!1398 zl!343))))))

(declare-fun b!5928792 () Bool)

(declare-fun e!3628835 () Bool)

(assert (=> b!5928792 (= e!3628835 e!3628839)))

(declare-fun c!1053873 () Bool)

(assert (=> b!5928792 (= c!1053873 (isEmpty!35969 (unfocusZipperList!1398 zl!343)))))

(declare-fun b!5928793 () Bool)

(declare-fun e!3628836 () Regex!15977)

(assert (=> b!5928793 (= e!3628836 e!3628840)))

(declare-fun c!1053872 () Bool)

(assert (=> b!5928793 (= c!1053872 ((_ is Cons!64106) (unfocusZipperList!1398 zl!343)))))

(declare-fun b!5928794 () Bool)

(assert (=> b!5928794 (= e!3628836 (h!70554 (unfocusZipperList!1398 zl!343)))))

(declare-fun b!5928795 () Bool)

(declare-fun isEmptyLang!1414 (Regex!15977) Bool)

(assert (=> b!5928795 (= e!3628839 (isEmptyLang!1414 lt!2310630))))

(assert (=> d!1858772 e!3628835))

(declare-fun res!2484398 () Bool)

(assert (=> d!1858772 (=> (not res!2484398) (not e!3628835))))

(assert (=> d!1858772 (= res!2484398 (validRegex!7713 lt!2310630))))

(assert (=> d!1858772 (= lt!2310630 e!3628836)))

(declare-fun c!1053874 () Bool)

(declare-fun e!3628838 () Bool)

(assert (=> d!1858772 (= c!1053874 e!3628838)))

(declare-fun res!2484399 () Bool)

(assert (=> d!1858772 (=> (not res!2484399) (not e!3628838))))

(assert (=> d!1858772 (= res!2484399 ((_ is Cons!64106) (unfocusZipperList!1398 zl!343)))))

(assert (=> d!1858772 (forall!15060 (unfocusZipperList!1398 zl!343) lambda!323393)))

(assert (=> d!1858772 (= (generalisedUnion!1821 (unfocusZipperList!1398 zl!343)) lt!2310630)))

(declare-fun b!5928796 () Bool)

(assert (=> b!5928796 (= e!3628838 (isEmpty!35969 (t!377627 (unfocusZipperList!1398 zl!343))))))

(declare-fun b!5928797 () Bool)

(assert (=> b!5928797 (= e!3628840 EmptyLang!15977)))

(assert (= (and d!1858772 res!2484399) b!5928796))

(assert (= (and d!1858772 c!1053874) b!5928794))

(assert (= (and d!1858772 (not c!1053874)) b!5928793))

(assert (= (and b!5928793 c!1053872) b!5928789))

(assert (= (and b!5928793 (not c!1053872)) b!5928797))

(assert (= (and d!1858772 res!2484398) b!5928792))

(assert (= (and b!5928792 c!1053873) b!5928795))

(assert (= (and b!5928792 (not c!1053873)) b!5928790))

(assert (= (and b!5928790 c!1053871) b!5928791))

(assert (= (and b!5928790 (not c!1053871)) b!5928788))

(declare-fun m!6821870 () Bool)

(assert (=> b!5928789 m!6821870))

(assert (=> b!5928790 m!6821630))

(declare-fun m!6821872 () Bool)

(assert (=> b!5928790 m!6821872))

(assert (=> b!5928790 m!6821872))

(declare-fun m!6821874 () Bool)

(assert (=> b!5928790 m!6821874))

(declare-fun m!6821876 () Bool)

(assert (=> d!1858772 m!6821876))

(assert (=> d!1858772 m!6821630))

(declare-fun m!6821878 () Bool)

(assert (=> d!1858772 m!6821878))

(declare-fun m!6821880 () Bool)

(assert (=> b!5928795 m!6821880))

(assert (=> b!5928792 m!6821630))

(declare-fun m!6821882 () Bool)

(assert (=> b!5928792 m!6821882))

(assert (=> b!5928791 m!6821630))

(declare-fun m!6821884 () Bool)

(assert (=> b!5928791 m!6821884))

(declare-fun m!6821886 () Bool)

(assert (=> b!5928796 m!6821886))

(declare-fun m!6821888 () Bool)

(assert (=> b!5928788 m!6821888))

(assert (=> b!5928257 d!1858772))

(declare-fun bs!1402854 () Bool)

(declare-fun d!1858774 () Bool)

(assert (= bs!1402854 (and d!1858774 d!1858760)))

(declare-fun lambda!323396 () Int)

(assert (=> bs!1402854 (= lambda!323396 lambda!323389)))

(declare-fun bs!1402855 () Bool)

(assert (= bs!1402855 (and d!1858774 d!1858764)))

(assert (=> bs!1402855 (= lambda!323396 lambda!323390)))

(declare-fun bs!1402856 () Bool)

(assert (= bs!1402856 (and d!1858774 d!1858772)))

(assert (=> bs!1402856 (= lambda!323396 lambda!323393)))

(declare-fun lt!2310633 () List!64230)

(assert (=> d!1858774 (forall!15060 lt!2310633 lambda!323396)))

(declare-fun e!3628843 () List!64230)

(assert (=> d!1858774 (= lt!2310633 e!3628843)))

(declare-fun c!1053877 () Bool)

(assert (=> d!1858774 (= c!1053877 ((_ is Cons!64107) zl!343))))

(assert (=> d!1858774 (= (unfocusZipperList!1398 zl!343) lt!2310633)))

(declare-fun b!5928802 () Bool)

(assert (=> b!5928802 (= e!3628843 (Cons!64106 (generalisedConcat!1574 (exprs!5861 (h!70555 zl!343))) (unfocusZipperList!1398 (t!377628 zl!343))))))

(declare-fun b!5928803 () Bool)

(assert (=> b!5928803 (= e!3628843 Nil!64106)))

(assert (= (and d!1858774 c!1053877) b!5928802))

(assert (= (and d!1858774 (not c!1053877)) b!5928803))

(declare-fun m!6821890 () Bool)

(assert (=> d!1858774 m!6821890))

(assert (=> b!5928802 m!6821628))

(declare-fun m!6821892 () Bool)

(assert (=> b!5928802 m!6821892))

(assert (=> b!5928257 d!1858774))

(declare-fun d!1858776 () Bool)

(assert (=> d!1858776 (= (isEmpty!35970 (t!377628 zl!343)) ((_ is Nil!64107) (t!377628 zl!343)))))

(assert (=> b!5928272 d!1858776))

(declare-fun d!1858778 () Bool)

(assert (=> d!1858778 (= (isEmpty!35969 (t!377627 (exprs!5861 (h!70555 zl!343)))) ((_ is Nil!64106) (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> b!5928261 d!1858778))

(declare-fun b!5928823 () Bool)

(declare-fun e!3628858 () Bool)

(declare-fun e!3628860 () Bool)

(assert (=> b!5928823 (= e!3628858 e!3628860)))

(declare-fun res!2484413 () Bool)

(assert (=> b!5928823 (= res!2484413 (not (nullable!5972 (reg!16306 r!7292))))))

(assert (=> b!5928823 (=> (not res!2484413) (not e!3628860))))

(declare-fun b!5928824 () Bool)

(declare-fun res!2484411 () Bool)

(declare-fun e!3628859 () Bool)

(assert (=> b!5928824 (=> res!2484411 e!3628859)))

(assert (=> b!5928824 (= res!2484411 (not ((_ is Concat!24822) r!7292)))))

(declare-fun e!3628864 () Bool)

(assert (=> b!5928824 (= e!3628864 e!3628859)))

(declare-fun b!5928825 () Bool)

(declare-fun e!3628861 () Bool)

(declare-fun call!470486 () Bool)

(assert (=> b!5928825 (= e!3628861 call!470486)))

(declare-fun bm!470480 () Bool)

(declare-fun call!470485 () Bool)

(assert (=> bm!470480 (= call!470486 call!470485)))

(declare-fun b!5928826 () Bool)

(declare-fun e!3628862 () Bool)

(assert (=> b!5928826 (= e!3628862 e!3628858)))

(declare-fun c!1053883 () Bool)

(assert (=> b!5928826 (= c!1053883 ((_ is Star!15977) r!7292))))

(declare-fun b!5928827 () Bool)

(assert (=> b!5928827 (= e!3628859 e!3628861)))

(declare-fun res!2484414 () Bool)

(assert (=> b!5928827 (=> (not res!2484414) (not e!3628861))))

(declare-fun call!470487 () Bool)

(assert (=> b!5928827 (= res!2484414 call!470487)))

(declare-fun b!5928828 () Bool)

(assert (=> b!5928828 (= e!3628860 call!470485)))

(declare-fun bm!470481 () Bool)

(declare-fun c!1053882 () Bool)

(assert (=> bm!470481 (= call!470485 (validRegex!7713 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))

(declare-fun b!5928829 () Bool)

(assert (=> b!5928829 (= e!3628858 e!3628864)))

(assert (=> b!5928829 (= c!1053882 ((_ is Union!15977) r!7292))))

(declare-fun b!5928822 () Bool)

(declare-fun res!2484412 () Bool)

(declare-fun e!3628863 () Bool)

(assert (=> b!5928822 (=> (not res!2484412) (not e!3628863))))

(assert (=> b!5928822 (= res!2484412 call!470487)))

(assert (=> b!5928822 (= e!3628864 e!3628863)))

(declare-fun d!1858780 () Bool)

(declare-fun res!2484410 () Bool)

(assert (=> d!1858780 (=> res!2484410 e!3628862)))

(assert (=> d!1858780 (= res!2484410 ((_ is ElementMatch!15977) r!7292))))

(assert (=> d!1858780 (= (validRegex!7713 r!7292) e!3628862)))

(declare-fun b!5928830 () Bool)

(assert (=> b!5928830 (= e!3628863 call!470486)))

(declare-fun bm!470482 () Bool)

(assert (=> bm!470482 (= call!470487 (validRegex!7713 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))

(assert (= (and d!1858780 (not res!2484410)) b!5928826))

(assert (= (and b!5928826 c!1053883) b!5928823))

(assert (= (and b!5928826 (not c!1053883)) b!5928829))

(assert (= (and b!5928823 res!2484413) b!5928828))

(assert (= (and b!5928829 c!1053882) b!5928822))

(assert (= (and b!5928829 (not c!1053882)) b!5928824))

(assert (= (and b!5928822 res!2484412) b!5928830))

(assert (= (and b!5928824 (not res!2484411)) b!5928827))

(assert (= (and b!5928827 res!2484414) b!5928825))

(assert (= (or b!5928830 b!5928825) bm!470480))

(assert (= (or b!5928822 b!5928827) bm!470482))

(assert (= (or b!5928828 bm!470480) bm!470481))

(declare-fun m!6821894 () Bool)

(assert (=> b!5928823 m!6821894))

(declare-fun m!6821896 () Bool)

(assert (=> bm!470481 m!6821896))

(declare-fun m!6821898 () Bool)

(assert (=> bm!470482 m!6821898))

(assert (=> start!602668 d!1858780))

(declare-fun bs!1402857 () Bool)

(declare-fun d!1858782 () Bool)

(assert (= bs!1402857 (and d!1858782 b!5928271)))

(declare-fun lambda!323399 () Int)

(assert (=> bs!1402857 (= lambda!323399 lambda!323348)))

(assert (=> d!1858782 true))

(assert (=> d!1858782 (= (derivationStepZipper!1958 z!1189 (h!70556 s!2326)) (flatMap!1490 z!1189 lambda!323399))))

(declare-fun bs!1402858 () Bool)

(assert (= bs!1402858 d!1858782))

(declare-fun m!6821900 () Bool)

(assert (=> bs!1402858 m!6821900))

(assert (=> b!5928271 d!1858782))

(declare-fun d!1858784 () Bool)

(declare-fun choose!44701 ((InoxSet Context!10722) Int) (InoxSet Context!10722))

(assert (=> d!1858784 (= (flatMap!1490 z!1189 lambda!323348) (choose!44701 z!1189 lambda!323348))))

(declare-fun bs!1402859 () Bool)

(assert (= bs!1402859 d!1858784))

(declare-fun m!6821902 () Bool)

(assert (=> bs!1402859 m!6821902))

(assert (=> b!5928271 d!1858784))

(declare-fun d!1858786 () Bool)

(declare-fun c!1053886 () Bool)

(declare-fun e!3628867 () Bool)

(assert (=> d!1858786 (= c!1053886 e!3628867)))

(declare-fun res!2484415 () Bool)

(assert (=> d!1858786 (=> (not res!2484415) (not e!3628867))))

(assert (=> d!1858786 (= res!2484415 ((_ is Cons!64106) (exprs!5861 (h!70555 zl!343))))))

(declare-fun e!3628866 () (InoxSet Context!10722))

(assert (=> d!1858786 (= (derivationStepZipperUp!1153 (h!70555 zl!343) (h!70556 s!2326)) e!3628866)))

(declare-fun b!5928833 () Bool)

(assert (=> b!5928833 (= e!3628867 (nullable!5972 (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5928834 () Bool)

(declare-fun e!3628865 () (InoxSet Context!10722))

(assert (=> b!5928834 (= e!3628866 e!3628865)))

(declare-fun c!1053887 () Bool)

(assert (=> b!5928834 (= c!1053887 ((_ is Cons!64106) (exprs!5861 (h!70555 zl!343))))))

(declare-fun b!5928835 () Bool)

(declare-fun call!470488 () (InoxSet Context!10722))

(assert (=> b!5928835 (= e!3628865 call!470488)))

(declare-fun bm!470483 () Bool)

(assert (=> bm!470483 (= call!470488 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (h!70555 zl!343))) (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (h!70556 s!2326)))))

(declare-fun b!5928836 () Bool)

(assert (=> b!5928836 (= e!3628866 ((_ map or) call!470488 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (h!70556 s!2326))))))

(declare-fun b!5928837 () Bool)

(assert (=> b!5928837 (= e!3628865 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1858786 res!2484415) b!5928833))

(assert (= (and d!1858786 c!1053886) b!5928836))

(assert (= (and d!1858786 (not c!1053886)) b!5928834))

(assert (= (and b!5928834 c!1053887) b!5928835))

(assert (= (and b!5928834 (not c!1053887)) b!5928837))

(assert (= (or b!5928836 b!5928835) bm!470483))

(declare-fun m!6821904 () Bool)

(assert (=> b!5928833 m!6821904))

(declare-fun m!6821906 () Bool)

(assert (=> bm!470483 m!6821906))

(declare-fun m!6821908 () Bool)

(assert (=> b!5928836 m!6821908))

(assert (=> b!5928271 d!1858786))

(declare-fun d!1858788 () Bool)

(declare-fun dynLambda!25068 (Int Context!10722) (InoxSet Context!10722))

(assert (=> d!1858788 (= (flatMap!1490 z!1189 lambda!323348) (dynLambda!25068 lambda!323348 (h!70555 zl!343)))))

(declare-fun lt!2310636 () Unit!157225)

(declare-fun choose!44702 ((InoxSet Context!10722) Context!10722 Int) Unit!157225)

(assert (=> d!1858788 (= lt!2310636 (choose!44702 z!1189 (h!70555 zl!343) lambda!323348))))

(assert (=> d!1858788 (= z!1189 (store ((as const (Array Context!10722 Bool)) false) (h!70555 zl!343) true))))

(assert (=> d!1858788 (= (lemmaFlatMapOnSingletonSet!1016 z!1189 (h!70555 zl!343) lambda!323348) lt!2310636)))

(declare-fun b_lambda!222665 () Bool)

(assert (=> (not b_lambda!222665) (not d!1858788)))

(declare-fun bs!1402860 () Bool)

(assert (= bs!1402860 d!1858788))

(assert (=> bs!1402860 m!6821592))

(declare-fun m!6821910 () Bool)

(assert (=> bs!1402860 m!6821910))

(declare-fun m!6821912 () Bool)

(assert (=> bs!1402860 m!6821912))

(declare-fun m!6821914 () Bool)

(assert (=> bs!1402860 m!6821914))

(assert (=> b!5928271 d!1858788))

(declare-fun bs!1402861 () Bool)

(declare-fun d!1858790 () Bool)

(assert (= bs!1402861 (and d!1858790 d!1858760)))

(declare-fun lambda!323402 () Int)

(assert (=> bs!1402861 (= lambda!323402 lambda!323389)))

(declare-fun bs!1402862 () Bool)

(assert (= bs!1402862 (and d!1858790 d!1858764)))

(assert (=> bs!1402862 (= lambda!323402 lambda!323390)))

(declare-fun bs!1402863 () Bool)

(assert (= bs!1402863 (and d!1858790 d!1858772)))

(assert (=> bs!1402863 (= lambda!323402 lambda!323393)))

(declare-fun bs!1402864 () Bool)

(assert (= bs!1402864 (and d!1858790 d!1858774)))

(assert (=> bs!1402864 (= lambda!323402 lambda!323396)))

(declare-fun b!5928858 () Bool)

(declare-fun e!3628881 () Bool)

(declare-fun lt!2310639 () Regex!15977)

(declare-fun isEmptyExpr!1405 (Regex!15977) Bool)

(assert (=> b!5928858 (= e!3628881 (isEmptyExpr!1405 lt!2310639))))

(declare-fun b!5928859 () Bool)

(declare-fun e!3628882 () Bool)

(assert (=> b!5928859 (= e!3628881 e!3628882)))

(declare-fun c!1053898 () Bool)

(assert (=> b!5928859 (= c!1053898 (isEmpty!35969 (tail!11581 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5928860 () Bool)

(declare-fun e!3628885 () Regex!15977)

(assert (=> b!5928860 (= e!3628885 (h!70554 (exprs!5861 (h!70555 zl!343))))))

(declare-fun e!3628883 () Bool)

(assert (=> d!1858790 e!3628883))

(declare-fun res!2484420 () Bool)

(assert (=> d!1858790 (=> (not res!2484420) (not e!3628883))))

(assert (=> d!1858790 (= res!2484420 (validRegex!7713 lt!2310639))))

(assert (=> d!1858790 (= lt!2310639 e!3628885)))

(declare-fun c!1053896 () Bool)

(declare-fun e!3628880 () Bool)

(assert (=> d!1858790 (= c!1053896 e!3628880)))

(declare-fun res!2484421 () Bool)

(assert (=> d!1858790 (=> (not res!2484421) (not e!3628880))))

(assert (=> d!1858790 (= res!2484421 ((_ is Cons!64106) (exprs!5861 (h!70555 zl!343))))))

(assert (=> d!1858790 (forall!15060 (exprs!5861 (h!70555 zl!343)) lambda!323402)))

(assert (=> d!1858790 (= (generalisedConcat!1574 (exprs!5861 (h!70555 zl!343))) lt!2310639)))

(declare-fun b!5928861 () Bool)

(assert (=> b!5928861 (= e!3628883 e!3628881)))

(declare-fun c!1053899 () Bool)

(assert (=> b!5928861 (= c!1053899 (isEmpty!35969 (exprs!5861 (h!70555 zl!343))))))

(declare-fun b!5928862 () Bool)

(declare-fun e!3628884 () Regex!15977)

(assert (=> b!5928862 (= e!3628885 e!3628884)))

(declare-fun c!1053897 () Bool)

(assert (=> b!5928862 (= c!1053897 ((_ is Cons!64106) (exprs!5861 (h!70555 zl!343))))))

(declare-fun b!5928863 () Bool)

(assert (=> b!5928863 (= e!3628884 (Concat!24822 (h!70554 (exprs!5861 (h!70555 zl!343))) (generalisedConcat!1574 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5928864 () Bool)

(assert (=> b!5928864 (= e!3628884 EmptyExpr!15977)))

(declare-fun b!5928865 () Bool)

(declare-fun isConcat!928 (Regex!15977) Bool)

(assert (=> b!5928865 (= e!3628882 (isConcat!928 lt!2310639))))

(declare-fun b!5928866 () Bool)

(assert (=> b!5928866 (= e!3628882 (= lt!2310639 (head!12496 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5928867 () Bool)

(assert (=> b!5928867 (= e!3628880 (isEmpty!35969 (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(assert (= (and d!1858790 res!2484421) b!5928867))

(assert (= (and d!1858790 c!1053896) b!5928860))

(assert (= (and d!1858790 (not c!1053896)) b!5928862))

(assert (= (and b!5928862 c!1053897) b!5928863))

(assert (= (and b!5928862 (not c!1053897)) b!5928864))

(assert (= (and d!1858790 res!2484420) b!5928861))

(assert (= (and b!5928861 c!1053899) b!5928858))

(assert (= (and b!5928861 (not c!1053899)) b!5928859))

(assert (= (and b!5928859 c!1053898) b!5928866))

(assert (= (and b!5928859 (not c!1053898)) b!5928865))

(declare-fun m!6821916 () Bool)

(assert (=> b!5928858 m!6821916))

(declare-fun m!6821918 () Bool)

(assert (=> b!5928863 m!6821918))

(assert (=> b!5928867 m!6821598))

(declare-fun m!6821920 () Bool)

(assert (=> b!5928859 m!6821920))

(assert (=> b!5928859 m!6821920))

(declare-fun m!6821922 () Bool)

(assert (=> b!5928859 m!6821922))

(declare-fun m!6821924 () Bool)

(assert (=> b!5928861 m!6821924))

(declare-fun m!6821926 () Bool)

(assert (=> b!5928865 m!6821926))

(declare-fun m!6821928 () Bool)

(assert (=> d!1858790 m!6821928))

(declare-fun m!6821930 () Bool)

(assert (=> d!1858790 m!6821930))

(declare-fun m!6821932 () Bool)

(assert (=> b!5928866 m!6821932))

(assert (=> b!5928264 d!1858790))

(declare-fun d!1858792 () Bool)

(declare-fun e!3628898 () Bool)

(assert (=> d!1858792 e!3628898))

(declare-fun res!2484432 () Bool)

(assert (=> d!1858792 (=> res!2484432 e!3628898)))

(declare-fun e!3628899 () Bool)

(assert (=> d!1858792 (= res!2484432 e!3628899)))

(declare-fun res!2484434 () Bool)

(assert (=> d!1858792 (=> (not res!2484434) (not e!3628899))))

(declare-fun lt!2310648 () Option!15868)

(assert (=> d!1858792 (= res!2484434 (isDefined!12571 lt!2310648))))

(declare-fun e!3628897 () Option!15868)

(assert (=> d!1858792 (= lt!2310648 e!3628897)))

(declare-fun c!1053904 () Bool)

(declare-fun e!3628900 () Bool)

(assert (=> d!1858792 (= c!1053904 e!3628900)))

(declare-fun res!2484435 () Bool)

(assert (=> d!1858792 (=> (not res!2484435) (not e!3628900))))

(assert (=> d!1858792 (= res!2484435 (matchR!8160 (regOne!32466 r!7292) Nil!64108))))

(assert (=> d!1858792 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1858792 (= (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) Nil!64108 s!2326 s!2326) lt!2310648)))

(declare-fun b!5928886 () Bool)

(assert (=> b!5928886 (= e!3628898 (not (isDefined!12571 lt!2310648)))))

(declare-fun b!5928887 () Bool)

(assert (=> b!5928887 (= e!3628897 (Some!15867 (tuple2!65913 Nil!64108 s!2326)))))

(declare-fun b!5928888 () Bool)

(declare-fun e!3628896 () Option!15868)

(assert (=> b!5928888 (= e!3628897 e!3628896)))

(declare-fun c!1053905 () Bool)

(assert (=> b!5928888 (= c!1053905 ((_ is Nil!64108) s!2326))))

(declare-fun b!5928889 () Bool)

(declare-fun res!2484433 () Bool)

(assert (=> b!5928889 (=> (not res!2484433) (not e!3628899))))

(declare-fun get!22078 (Option!15868) tuple2!65912)

(assert (=> b!5928889 (= res!2484433 (matchR!8160 (regTwo!32466 r!7292) (_2!36259 (get!22078 lt!2310648))))))

(declare-fun b!5928890 () Bool)

(assert (=> b!5928890 (= e!3628896 None!15867)))

(declare-fun b!5928891 () Bool)

(declare-fun res!2484436 () Bool)

(assert (=> b!5928891 (=> (not res!2484436) (not e!3628899))))

(assert (=> b!5928891 (= res!2484436 (matchR!8160 (regOne!32466 r!7292) (_1!36259 (get!22078 lt!2310648))))))

(declare-fun b!5928892 () Bool)

(declare-fun lt!2310647 () Unit!157225)

(declare-fun lt!2310646 () Unit!157225)

(assert (=> b!5928892 (= lt!2310647 lt!2310646)))

(declare-fun ++!14074 (List!64232 List!64232) List!64232)

(assert (=> b!5928892 (= (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (t!377629 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2169 (List!64232 C!32224 List!64232 List!64232) Unit!157225)

(assert (=> b!5928892 (= lt!2310646 (lemmaMoveElementToOtherListKeepsConcatEq!2169 Nil!64108 (h!70556 s!2326) (t!377629 s!2326) s!2326))))

(assert (=> b!5928892 (= e!3628896 (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (t!377629 s!2326) s!2326))))

(declare-fun b!5928893 () Bool)

(assert (=> b!5928893 (= e!3628900 (matchR!8160 (regTwo!32466 r!7292) s!2326))))

(declare-fun b!5928894 () Bool)

(assert (=> b!5928894 (= e!3628899 (= (++!14074 (_1!36259 (get!22078 lt!2310648)) (_2!36259 (get!22078 lt!2310648))) s!2326))))

(assert (= (and d!1858792 res!2484435) b!5928893))

(assert (= (and d!1858792 c!1053904) b!5928887))

(assert (= (and d!1858792 (not c!1053904)) b!5928888))

(assert (= (and b!5928888 c!1053905) b!5928890))

(assert (= (and b!5928888 (not c!1053905)) b!5928892))

(assert (= (and d!1858792 res!2484434) b!5928891))

(assert (= (and b!5928891 res!2484436) b!5928889))

(assert (= (and b!5928889 res!2484433) b!5928894))

(assert (= (and d!1858792 (not res!2484432)) b!5928886))

(declare-fun m!6821934 () Bool)

(assert (=> b!5928892 m!6821934))

(assert (=> b!5928892 m!6821934))

(declare-fun m!6821936 () Bool)

(assert (=> b!5928892 m!6821936))

(declare-fun m!6821938 () Bool)

(assert (=> b!5928892 m!6821938))

(assert (=> b!5928892 m!6821934))

(declare-fun m!6821940 () Bool)

(assert (=> b!5928892 m!6821940))

(declare-fun m!6821942 () Bool)

(assert (=> b!5928894 m!6821942))

(declare-fun m!6821944 () Bool)

(assert (=> b!5928894 m!6821944))

(assert (=> b!5928891 m!6821942))

(declare-fun m!6821946 () Bool)

(assert (=> b!5928891 m!6821946))

(declare-fun m!6821948 () Bool)

(assert (=> d!1858792 m!6821948))

(declare-fun m!6821950 () Bool)

(assert (=> d!1858792 m!6821950))

(declare-fun m!6821952 () Bool)

(assert (=> d!1858792 m!6821952))

(assert (=> b!5928886 m!6821948))

(assert (=> b!5928889 m!6821942))

(declare-fun m!6821954 () Bool)

(assert (=> b!5928889 m!6821954))

(declare-fun m!6821956 () Bool)

(assert (=> b!5928893 m!6821956))

(assert (=> b!5928274 d!1858792))

(declare-fun d!1858794 () Bool)

(declare-fun choose!44703 (Int) Bool)

(assert (=> d!1858794 (= (Exists!3047 lambda!323347) (choose!44703 lambda!323347))))

(declare-fun bs!1402865 () Bool)

(assert (= bs!1402865 d!1858794))

(declare-fun m!6821958 () Bool)

(assert (=> bs!1402865 m!6821958))

(assert (=> b!5928274 d!1858794))

(declare-fun bs!1402866 () Bool)

(declare-fun d!1858796 () Bool)

(assert (= bs!1402866 (and d!1858796 b!5928274)))

(declare-fun lambda!323405 () Int)

(assert (=> bs!1402866 (= lambda!323405 lambda!323346)))

(assert (=> bs!1402866 (not (= lambda!323405 lambda!323347))))

(declare-fun bs!1402867 () Bool)

(assert (= bs!1402867 (and d!1858796 b!5928496)))

(assert (=> bs!1402867 (not (= lambda!323405 lambda!323370))))

(declare-fun bs!1402868 () Bool)

(assert (= bs!1402868 (and d!1858796 b!5928495)))

(assert (=> bs!1402868 (not (= lambda!323405 lambda!323372))))

(assert (=> d!1858796 true))

(assert (=> d!1858796 true))

(assert (=> d!1858796 true))

(assert (=> d!1858796 (= (isDefined!12571 (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) Nil!64108 s!2326 s!2326)) (Exists!3047 lambda!323405))))

(declare-fun lt!2310651 () Unit!157225)

(declare-fun choose!44704 (Regex!15977 Regex!15977 List!64232) Unit!157225)

(assert (=> d!1858796 (= lt!2310651 (choose!44704 (regOne!32466 r!7292) (regTwo!32466 r!7292) s!2326))))

(assert (=> d!1858796 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1858796 (= (lemmaFindConcatSeparationEquivalentToExists!2046 (regOne!32466 r!7292) (regTwo!32466 r!7292) s!2326) lt!2310651)))

(declare-fun bs!1402869 () Bool)

(assert (= bs!1402869 d!1858796))

(declare-fun m!6821960 () Bool)

(assert (=> bs!1402869 m!6821960))

(assert (=> bs!1402869 m!6821952))

(assert (=> bs!1402869 m!6821612))

(assert (=> bs!1402869 m!6821612))

(assert (=> bs!1402869 m!6821614))

(declare-fun m!6821962 () Bool)

(assert (=> bs!1402869 m!6821962))

(assert (=> b!5928274 d!1858796))

(declare-fun d!1858798 () Bool)

(assert (=> d!1858798 (= (Exists!3047 lambda!323346) (choose!44703 lambda!323346))))

(declare-fun bs!1402870 () Bool)

(assert (= bs!1402870 d!1858798))

(declare-fun m!6821964 () Bool)

(assert (=> bs!1402870 m!6821964))

(assert (=> b!5928274 d!1858798))

(declare-fun bs!1402871 () Bool)

(declare-fun d!1858800 () Bool)

(assert (= bs!1402871 (and d!1858800 d!1858796)))

(declare-fun lambda!323410 () Int)

(assert (=> bs!1402871 (= lambda!323410 lambda!323405)))

(declare-fun bs!1402872 () Bool)

(assert (= bs!1402872 (and d!1858800 b!5928495)))

(assert (=> bs!1402872 (not (= lambda!323410 lambda!323372))))

(declare-fun bs!1402873 () Bool)

(assert (= bs!1402873 (and d!1858800 b!5928274)))

(assert (=> bs!1402873 (= lambda!323410 lambda!323346)))

(declare-fun bs!1402874 () Bool)

(assert (= bs!1402874 (and d!1858800 b!5928496)))

(assert (=> bs!1402874 (not (= lambda!323410 lambda!323370))))

(assert (=> bs!1402873 (not (= lambda!323410 lambda!323347))))

(assert (=> d!1858800 true))

(assert (=> d!1858800 true))

(assert (=> d!1858800 true))

(declare-fun lambda!323411 () Int)

(assert (=> bs!1402871 (not (= lambda!323411 lambda!323405))))

(assert (=> bs!1402872 (= lambda!323411 lambda!323372)))

(assert (=> bs!1402873 (not (= lambda!323411 lambda!323346))))

(declare-fun bs!1402875 () Bool)

(assert (= bs!1402875 d!1858800))

(assert (=> bs!1402875 (not (= lambda!323411 lambda!323410))))

(assert (=> bs!1402874 (not (= lambda!323411 lambda!323370))))

(assert (=> bs!1402873 (= lambda!323411 lambda!323347)))

(assert (=> d!1858800 true))

(assert (=> d!1858800 true))

(assert (=> d!1858800 true))

(assert (=> d!1858800 (= (Exists!3047 lambda!323410) (Exists!3047 lambda!323411))))

(declare-fun lt!2310654 () Unit!157225)

(declare-fun choose!44705 (Regex!15977 Regex!15977 List!64232) Unit!157225)

(assert (=> d!1858800 (= lt!2310654 (choose!44705 (regOne!32466 r!7292) (regTwo!32466 r!7292) s!2326))))

(assert (=> d!1858800 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1858800 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1584 (regOne!32466 r!7292) (regTwo!32466 r!7292) s!2326) lt!2310654)))

(declare-fun m!6821966 () Bool)

(assert (=> bs!1402875 m!6821966))

(declare-fun m!6821968 () Bool)

(assert (=> bs!1402875 m!6821968))

(declare-fun m!6821970 () Bool)

(assert (=> bs!1402875 m!6821970))

(assert (=> bs!1402875 m!6821952))

(assert (=> b!5928274 d!1858800))

(declare-fun d!1858802 () Bool)

(declare-fun isEmpty!35974 (Option!15868) Bool)

(assert (=> d!1858802 (= (isDefined!12571 (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) Nil!64108 s!2326 s!2326)) (not (isEmpty!35974 (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) Nil!64108 s!2326 s!2326))))))

(declare-fun bs!1402876 () Bool)

(assert (= bs!1402876 d!1858802))

(assert (=> bs!1402876 m!6821612))

(declare-fun m!6821972 () Bool)

(assert (=> bs!1402876 m!6821972))

(assert (=> b!5928274 d!1858802))

(declare-fun bs!1402877 () Bool)

(declare-fun d!1858804 () Bool)

(assert (= bs!1402877 (and d!1858804 d!1858790)))

(declare-fun lambda!323412 () Int)

(assert (=> bs!1402877 (= lambda!323412 lambda!323402)))

(declare-fun bs!1402878 () Bool)

(assert (= bs!1402878 (and d!1858804 d!1858772)))

(assert (=> bs!1402878 (= lambda!323412 lambda!323393)))

(declare-fun bs!1402879 () Bool)

(assert (= bs!1402879 (and d!1858804 d!1858760)))

(assert (=> bs!1402879 (= lambda!323412 lambda!323389)))

(declare-fun bs!1402880 () Bool)

(assert (= bs!1402880 (and d!1858804 d!1858764)))

(assert (=> bs!1402880 (= lambda!323412 lambda!323390)))

(declare-fun bs!1402881 () Bool)

(assert (= bs!1402881 (and d!1858804 d!1858774)))

(assert (=> bs!1402881 (= lambda!323412 lambda!323396)))

(assert (=> d!1858804 (= (inv!83189 (h!70555 zl!343)) (forall!15060 (exprs!5861 (h!70555 zl!343)) lambda!323412))))

(declare-fun bs!1402882 () Bool)

(assert (= bs!1402882 d!1858804))

(declare-fun m!6821974 () Bool)

(assert (=> bs!1402882 m!6821974))

(assert (=> b!5928263 d!1858804))

(declare-fun condSetEmpty!40248 () Bool)

(assert (=> setNonEmpty!40242 (= condSetEmpty!40248 (= setRest!40242 ((as const (Array Context!10722 Bool)) false)))))

(declare-fun setRes!40248 () Bool)

(assert (=> setNonEmpty!40242 (= tp!1648709 setRes!40248)))

(declare-fun setIsEmpty!40248 () Bool)

(assert (=> setIsEmpty!40248 setRes!40248))

(declare-fun setElem!40248 () Context!10722)

(declare-fun setNonEmpty!40248 () Bool)

(declare-fun e!3628909 () Bool)

(declare-fun tp!1648777 () Bool)

(assert (=> setNonEmpty!40248 (= setRes!40248 (and tp!1648777 (inv!83189 setElem!40248) e!3628909))))

(declare-fun setRest!40248 () (InoxSet Context!10722))

(assert (=> setNonEmpty!40248 (= setRest!40242 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) setElem!40248 true) setRest!40248))))

(declare-fun b!5928911 () Bool)

(declare-fun tp!1648778 () Bool)

(assert (=> b!5928911 (= e!3628909 tp!1648778)))

(assert (= (and setNonEmpty!40242 condSetEmpty!40248) setIsEmpty!40248))

(assert (= (and setNonEmpty!40242 (not condSetEmpty!40248)) setNonEmpty!40248))

(assert (= setNonEmpty!40248 b!5928911))

(declare-fun m!6821976 () Bool)

(assert (=> setNonEmpty!40248 m!6821976))

(declare-fun b!5928916 () Bool)

(declare-fun e!3628912 () Bool)

(declare-fun tp!1648783 () Bool)

(declare-fun tp!1648784 () Bool)

(assert (=> b!5928916 (= e!3628912 (and tp!1648783 tp!1648784))))

(assert (=> b!5928262 (= tp!1648708 e!3628912)))

(assert (= (and b!5928262 ((_ is Cons!64106) (exprs!5861 setElem!40242))) b!5928916))

(declare-fun b!5928921 () Bool)

(declare-fun e!3628915 () Bool)

(declare-fun tp!1648787 () Bool)

(assert (=> b!5928921 (= e!3628915 (and tp_is_empty!41207 tp!1648787))))

(assert (=> b!5928267 (= tp!1648705 e!3628915)))

(assert (= (and b!5928267 ((_ is Cons!64108) (t!377629 s!2326))) b!5928921))

(declare-fun b!5928933 () Bool)

(declare-fun e!3628918 () Bool)

(declare-fun tp!1648798 () Bool)

(declare-fun tp!1648802 () Bool)

(assert (=> b!5928933 (= e!3628918 (and tp!1648798 tp!1648802))))

(declare-fun b!5928934 () Bool)

(declare-fun tp!1648799 () Bool)

(assert (=> b!5928934 (= e!3628918 tp!1648799)))

(assert (=> b!5928275 (= tp!1648711 e!3628918)))

(declare-fun b!5928932 () Bool)

(assert (=> b!5928932 (= e!3628918 tp_is_empty!41207)))

(declare-fun b!5928935 () Bool)

(declare-fun tp!1648801 () Bool)

(declare-fun tp!1648800 () Bool)

(assert (=> b!5928935 (= e!3628918 (and tp!1648801 tp!1648800))))

(assert (= (and b!5928275 ((_ is ElementMatch!15977) (reg!16306 r!7292))) b!5928932))

(assert (= (and b!5928275 ((_ is Concat!24822) (reg!16306 r!7292))) b!5928933))

(assert (= (and b!5928275 ((_ is Star!15977) (reg!16306 r!7292))) b!5928934))

(assert (= (and b!5928275 ((_ is Union!15977) (reg!16306 r!7292))) b!5928935))

(declare-fun b!5928937 () Bool)

(declare-fun e!3628919 () Bool)

(declare-fun tp!1648803 () Bool)

(declare-fun tp!1648807 () Bool)

(assert (=> b!5928937 (= e!3628919 (and tp!1648803 tp!1648807))))

(declare-fun b!5928938 () Bool)

(declare-fun tp!1648804 () Bool)

(assert (=> b!5928938 (= e!3628919 tp!1648804)))

(assert (=> b!5928260 (= tp!1648710 e!3628919)))

(declare-fun b!5928936 () Bool)

(assert (=> b!5928936 (= e!3628919 tp_is_empty!41207)))

(declare-fun b!5928939 () Bool)

(declare-fun tp!1648806 () Bool)

(declare-fun tp!1648805 () Bool)

(assert (=> b!5928939 (= e!3628919 (and tp!1648806 tp!1648805))))

(assert (= (and b!5928260 ((_ is ElementMatch!15977) (regOne!32467 r!7292))) b!5928936))

(assert (= (and b!5928260 ((_ is Concat!24822) (regOne!32467 r!7292))) b!5928937))

(assert (= (and b!5928260 ((_ is Star!15977) (regOne!32467 r!7292))) b!5928938))

(assert (= (and b!5928260 ((_ is Union!15977) (regOne!32467 r!7292))) b!5928939))

(declare-fun b!5928941 () Bool)

(declare-fun e!3628920 () Bool)

(declare-fun tp!1648808 () Bool)

(declare-fun tp!1648812 () Bool)

(assert (=> b!5928941 (= e!3628920 (and tp!1648808 tp!1648812))))

(declare-fun b!5928942 () Bool)

(declare-fun tp!1648809 () Bool)

(assert (=> b!5928942 (= e!3628920 tp!1648809)))

(assert (=> b!5928260 (= tp!1648707 e!3628920)))

(declare-fun b!5928940 () Bool)

(assert (=> b!5928940 (= e!3628920 tp_is_empty!41207)))

(declare-fun b!5928943 () Bool)

(declare-fun tp!1648811 () Bool)

(declare-fun tp!1648810 () Bool)

(assert (=> b!5928943 (= e!3628920 (and tp!1648811 tp!1648810))))

(assert (= (and b!5928260 ((_ is ElementMatch!15977) (regTwo!32467 r!7292))) b!5928940))

(assert (= (and b!5928260 ((_ is Concat!24822) (regTwo!32467 r!7292))) b!5928941))

(assert (= (and b!5928260 ((_ is Star!15977) (regTwo!32467 r!7292))) b!5928942))

(assert (= (and b!5928260 ((_ is Union!15977) (regTwo!32467 r!7292))) b!5928943))

(declare-fun b!5928945 () Bool)

(declare-fun e!3628921 () Bool)

(declare-fun tp!1648813 () Bool)

(declare-fun tp!1648817 () Bool)

(assert (=> b!5928945 (= e!3628921 (and tp!1648813 tp!1648817))))

(declare-fun b!5928946 () Bool)

(declare-fun tp!1648814 () Bool)

(assert (=> b!5928946 (= e!3628921 tp!1648814)))

(assert (=> b!5928266 (= tp!1648712 e!3628921)))

(declare-fun b!5928944 () Bool)

(assert (=> b!5928944 (= e!3628921 tp_is_empty!41207)))

(declare-fun b!5928947 () Bool)

(declare-fun tp!1648816 () Bool)

(declare-fun tp!1648815 () Bool)

(assert (=> b!5928947 (= e!3628921 (and tp!1648816 tp!1648815))))

(assert (= (and b!5928266 ((_ is ElementMatch!15977) (regOne!32466 r!7292))) b!5928944))

(assert (= (and b!5928266 ((_ is Concat!24822) (regOne!32466 r!7292))) b!5928945))

(assert (= (and b!5928266 ((_ is Star!15977) (regOne!32466 r!7292))) b!5928946))

(assert (= (and b!5928266 ((_ is Union!15977) (regOne!32466 r!7292))) b!5928947))

(declare-fun b!5928949 () Bool)

(declare-fun e!3628922 () Bool)

(declare-fun tp!1648818 () Bool)

(declare-fun tp!1648822 () Bool)

(assert (=> b!5928949 (= e!3628922 (and tp!1648818 tp!1648822))))

(declare-fun b!5928950 () Bool)

(declare-fun tp!1648819 () Bool)

(assert (=> b!5928950 (= e!3628922 tp!1648819)))

(assert (=> b!5928266 (= tp!1648714 e!3628922)))

(declare-fun b!5928948 () Bool)

(assert (=> b!5928948 (= e!3628922 tp_is_empty!41207)))

(declare-fun b!5928951 () Bool)

(declare-fun tp!1648821 () Bool)

(declare-fun tp!1648820 () Bool)

(assert (=> b!5928951 (= e!3628922 (and tp!1648821 tp!1648820))))

(assert (= (and b!5928266 ((_ is ElementMatch!15977) (regTwo!32466 r!7292))) b!5928948))

(assert (= (and b!5928266 ((_ is Concat!24822) (regTwo!32466 r!7292))) b!5928949))

(assert (= (and b!5928266 ((_ is Star!15977) (regTwo!32466 r!7292))) b!5928950))

(assert (= (and b!5928266 ((_ is Union!15977) (regTwo!32466 r!7292))) b!5928951))

(declare-fun b!5928952 () Bool)

(declare-fun e!3628923 () Bool)

(declare-fun tp!1648823 () Bool)

(declare-fun tp!1648824 () Bool)

(assert (=> b!5928952 (= e!3628923 (and tp!1648823 tp!1648824))))

(assert (=> b!5928268 (= tp!1648706 e!3628923)))

(assert (= (and b!5928268 ((_ is Cons!64106) (exprs!5861 (h!70555 zl!343)))) b!5928952))

(declare-fun b!5928960 () Bool)

(declare-fun e!3628929 () Bool)

(declare-fun tp!1648829 () Bool)

(assert (=> b!5928960 (= e!3628929 tp!1648829)))

(declare-fun e!3628928 () Bool)

(declare-fun tp!1648830 () Bool)

(declare-fun b!5928959 () Bool)

(assert (=> b!5928959 (= e!3628928 (and (inv!83189 (h!70555 (t!377628 zl!343))) e!3628929 tp!1648830))))

(assert (=> b!5928263 (= tp!1648713 e!3628928)))

(assert (= b!5928959 b!5928960))

(assert (= (and b!5928263 ((_ is Cons!64107) (t!377628 zl!343))) b!5928959))

(declare-fun m!6821978 () Bool)

(assert (=> b!5928959 m!6821978))

(declare-fun b_lambda!222667 () Bool)

(assert (= b_lambda!222665 (or b!5928271 b_lambda!222667)))

(declare-fun bs!1402883 () Bool)

(declare-fun d!1858806 () Bool)

(assert (= bs!1402883 (and d!1858806 b!5928271)))

(assert (=> bs!1402883 (= (dynLambda!25068 lambda!323348 (h!70555 zl!343)) (derivationStepZipperUp!1153 (h!70555 zl!343) (h!70556 s!2326)))))

(assert (=> bs!1402883 m!6821594))

(assert (=> d!1858788 d!1858806))

(check-sat (not b!5928788) (not d!1858800) (not d!1858774) (not b!5928766) (not b!5928935) (not bm!470423) (not b!5928763) (not b!5928951) (not d!1858798) (not b!5928494) (not setNonEmpty!40248) (not d!1858760) (not b!5928761) (not bm!470483) (not b!5928945) (not b!5928792) (not b!5928943) (not bm!470471) (not d!1858770) (not b!5928790) (not d!1858762) (not b!5928675) (not b!5928490) (not bm!470468) (not d!1858796) (not b!5928941) (not b!5928836) (not b!5928597) (not b_lambda!222667) (not b!5928892) (not d!1858790) (not b!5928600) (not b!5928867) (not d!1858792) (not b!5928933) (not b!5928893) (not b!5928833) (not b!5928789) (not b!5928598) (not bm!470467) (not b!5928753) (not b!5928934) (not b!5928858) (not b!5928591) (not d!1858712) (not bm!470482) (not b!5928758) (not b!5928949) (not b!5928916) (not bm!470473) (not d!1858802) (not d!1858772) (not b!5928791) (not d!1858764) (not b!5928865) (not b!5928891) (not d!1858728) (not b!5928795) (not b!5928911) (not b!5928947) (not b!5928939) (not b!5928823) (not b!5928942) (not b!5928590) (not d!1858788) (not b!5928796) (not d!1858794) (not b!5928859) (not b!5928937) (not b!5928938) (not bm!470449) (not d!1858782) (not d!1858804) (not b!5928750) (not b!5928889) (not bm!470472) (not bs!1402883) (not b!5928602) (not b!5928802) (not b!5928894) (not b!5928866) (not b!5928952) tp_is_empty!41207 (not d!1858784) (not b!5928946) (not bm!470422) (not b!5928757) (not b!5928886) (not b!5928921) (not bm!470466) (not b!5928950) (not b!5928960) (not bm!470481) (not b!5928863) (not b!5928861) (not b!5928959))
(check-sat)
(get-model)

(declare-fun d!1858826 () Bool)

(declare-fun c!1053923 () Bool)

(declare-fun e!3628967 () Bool)

(assert (=> d!1858826 (= c!1053923 e!3628967)))

(declare-fun res!2484474 () Bool)

(assert (=> d!1858826 (=> (not res!2484474) (not e!3628967))))

(assert (=> d!1858826 (= res!2484474 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))))

(declare-fun e!3628966 () (InoxSet Context!10722))

(assert (=> d!1858826 (= (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (h!70556 s!2326)) e!3628966)))

(declare-fun b!5929020 () Bool)

(assert (=> b!5929020 (= e!3628967 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))))))

(declare-fun b!5929021 () Bool)

(declare-fun e!3628965 () (InoxSet Context!10722))

(assert (=> b!5929021 (= e!3628966 e!3628965)))

(declare-fun c!1053924 () Bool)

(assert (=> b!5929021 (= c!1053924 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))))

(declare-fun b!5929022 () Bool)

(declare-fun call!470501 () (InoxSet Context!10722))

(assert (=> b!5929022 (= e!3628965 call!470501)))

(declare-fun bm!470496 () Bool)

(assert (=> bm!470496 (= call!470501 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (h!70556 s!2326)))))

(declare-fun b!5929023 () Bool)

(assert (=> b!5929023 (= e!3628966 ((_ map or) call!470501 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (h!70556 s!2326))))))

(declare-fun b!5929024 () Bool)

(assert (=> b!5929024 (= e!3628965 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1858826 res!2484474) b!5929020))

(assert (= (and d!1858826 c!1053923) b!5929023))

(assert (= (and d!1858826 (not c!1053923)) b!5929021))

(assert (= (and b!5929021 c!1053924) b!5929022))

(assert (= (and b!5929021 (not c!1053924)) b!5929024))

(assert (= (or b!5929023 b!5929022) bm!470496))

(declare-fun m!6822036 () Bool)

(assert (=> b!5929020 m!6822036))

(declare-fun m!6822040 () Bool)

(assert (=> bm!470496 m!6822040))

(declare-fun m!6822044 () Bool)

(assert (=> b!5929023 m!6822044))

(assert (=> b!5928761 d!1858826))

(declare-fun d!1858830 () Bool)

(declare-fun c!1053925 () Bool)

(declare-fun e!3628970 () Bool)

(assert (=> d!1858830 (= c!1053925 e!3628970)))

(declare-fun res!2484475 () Bool)

(assert (=> d!1858830 (=> (not res!2484475) (not e!3628970))))

(assert (=> d!1858830 (= res!2484475 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))))

(declare-fun e!3628969 () (InoxSet Context!10722))

(assert (=> d!1858830 (= (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (h!70556 s!2326)) e!3628969)))

(declare-fun b!5929025 () Bool)

(assert (=> b!5929025 (= e!3628970 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))))))

(declare-fun b!5929026 () Bool)

(declare-fun e!3628968 () (InoxSet Context!10722))

(assert (=> b!5929026 (= e!3628969 e!3628968)))

(declare-fun c!1053926 () Bool)

(assert (=> b!5929026 (= c!1053926 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))))

(declare-fun b!5929027 () Bool)

(declare-fun call!470502 () (InoxSet Context!10722))

(assert (=> b!5929027 (= e!3628968 call!470502)))

(declare-fun bm!470497 () Bool)

(assert (=> bm!470497 (= call!470502 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (h!70556 s!2326)))))

(declare-fun b!5929028 () Bool)

(assert (=> b!5929028 (= e!3628969 ((_ map or) call!470502 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (h!70556 s!2326))))))

(declare-fun b!5929029 () Bool)

(assert (=> b!5929029 (= e!3628968 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1858830 res!2484475) b!5929025))

(assert (= (and d!1858830 c!1053925) b!5929028))

(assert (= (and d!1858830 (not c!1053925)) b!5929026))

(assert (= (and b!5929026 c!1053926) b!5929027))

(assert (= (and b!5929026 (not c!1053926)) b!5929029))

(assert (= (or b!5929028 b!5929027) bm!470497))

(declare-fun m!6822050 () Bool)

(assert (=> b!5929025 m!6822050))

(declare-fun m!6822052 () Bool)

(assert (=> bm!470497 m!6822052))

(declare-fun m!6822054 () Bool)

(assert (=> b!5929028 m!6822054))

(assert (=> b!5928766 d!1858830))

(declare-fun d!1858834 () Bool)

(assert (=> d!1858834 (= (Exists!3047 (ite c!1053787 lambda!323370 lambda!323372)) (choose!44703 (ite c!1053787 lambda!323370 lambda!323372)))))

(declare-fun bs!1402886 () Bool)

(assert (= bs!1402886 d!1858834))

(declare-fun m!6822056 () Bool)

(assert (=> bs!1402886 m!6822056))

(assert (=> bm!470422 d!1858834))

(declare-fun d!1858836 () Bool)

(assert (=> d!1858836 (= (isEmpty!35972 s!2326) ((_ is Nil!64108) s!2326))))

(assert (=> bm!470423 d!1858836))

(declare-fun d!1858842 () Bool)

(declare-fun res!2484493 () Bool)

(declare-fun e!3628989 () Bool)

(assert (=> d!1858842 (=> res!2484493 e!3628989)))

(assert (=> d!1858842 (= res!2484493 ((_ is Nil!64107) lt!2310624))))

(assert (=> d!1858842 (= (noDuplicate!1835 lt!2310624) e!3628989)))

(declare-fun b!5929057 () Bool)

(declare-fun e!3628990 () Bool)

(assert (=> b!5929057 (= e!3628989 e!3628990)))

(declare-fun res!2484494 () Bool)

(assert (=> b!5929057 (=> (not res!2484494) (not e!3628990))))

(declare-fun contains!19962 (List!64231 Context!10722) Bool)

(assert (=> b!5929057 (= res!2484494 (not (contains!19962 (t!377628 lt!2310624) (h!70555 lt!2310624))))))

(declare-fun b!5929058 () Bool)

(assert (=> b!5929058 (= e!3628990 (noDuplicate!1835 (t!377628 lt!2310624)))))

(assert (= (and d!1858842 (not res!2484493)) b!5929057))

(assert (= (and b!5929057 res!2484494) b!5929058))

(declare-fun m!6822072 () Bool)

(assert (=> b!5929057 m!6822072))

(declare-fun m!6822074 () Bool)

(assert (=> b!5929058 m!6822074))

(assert (=> d!1858762 d!1858842))

(declare-fun d!1858846 () Bool)

(declare-fun e!3628998 () Bool)

(assert (=> d!1858846 e!3628998))

(declare-fun res!2484499 () Bool)

(assert (=> d!1858846 (=> (not res!2484499) (not e!3628998))))

(declare-fun res!2484500 () List!64231)

(assert (=> d!1858846 (= res!2484499 (noDuplicate!1835 res!2484500))))

(declare-fun e!3628997 () Bool)

(assert (=> d!1858846 e!3628997))

(assert (=> d!1858846 (= (choose!44700 z!1189) res!2484500)))

(declare-fun b!5929066 () Bool)

(declare-fun e!3628999 () Bool)

(declare-fun tp!1648842 () Bool)

(assert (=> b!5929066 (= e!3628999 tp!1648842)))

(declare-fun b!5929065 () Bool)

(declare-fun tp!1648841 () Bool)

(assert (=> b!5929065 (= e!3628997 (and (inv!83189 (h!70555 res!2484500)) e!3628999 tp!1648841))))

(declare-fun b!5929067 () Bool)

(assert (=> b!5929067 (= e!3628998 (= (content!11812 res!2484500) z!1189))))

(assert (= b!5929065 b!5929066))

(assert (= (and d!1858846 ((_ is Cons!64107) res!2484500)) b!5929065))

(assert (= (and d!1858846 res!2484499) b!5929067))

(declare-fun m!6822082 () Bool)

(assert (=> d!1858846 m!6822082))

(declare-fun m!6822084 () Bool)

(assert (=> b!5929065 m!6822084))

(declare-fun m!6822086 () Bool)

(assert (=> b!5929067 m!6822086))

(assert (=> d!1858762 d!1858846))

(declare-fun d!1858856 () Bool)

(assert (=> d!1858856 (= (Exists!3047 lambda!323410) (choose!44703 lambda!323410))))

(declare-fun bs!1402895 () Bool)

(assert (= bs!1402895 d!1858856))

(declare-fun m!6822090 () Bool)

(assert (=> bs!1402895 m!6822090))

(assert (=> d!1858800 d!1858856))

(declare-fun d!1858858 () Bool)

(assert (=> d!1858858 (= (Exists!3047 lambda!323411) (choose!44703 lambda!323411))))

(declare-fun bs!1402896 () Bool)

(assert (= bs!1402896 d!1858858))

(declare-fun m!6822092 () Bool)

(assert (=> bs!1402896 m!6822092))

(assert (=> d!1858800 d!1858858))

(declare-fun bs!1402898 () Bool)

(declare-fun d!1858862 () Bool)

(assert (= bs!1402898 (and d!1858862 d!1858796)))

(declare-fun lambda!323418 () Int)

(assert (=> bs!1402898 (= lambda!323418 lambda!323405)))

(declare-fun bs!1402899 () Bool)

(assert (= bs!1402899 (and d!1858862 b!5928495)))

(assert (=> bs!1402899 (not (= lambda!323418 lambda!323372))))

(declare-fun bs!1402900 () Bool)

(assert (= bs!1402900 (and d!1858862 d!1858800)))

(assert (=> bs!1402900 (not (= lambda!323418 lambda!323411))))

(declare-fun bs!1402901 () Bool)

(assert (= bs!1402901 (and d!1858862 b!5928274)))

(assert (=> bs!1402901 (= lambda!323418 lambda!323346)))

(assert (=> bs!1402900 (= lambda!323418 lambda!323410)))

(declare-fun bs!1402903 () Bool)

(assert (= bs!1402903 (and d!1858862 b!5928496)))

(assert (=> bs!1402903 (not (= lambda!323418 lambda!323370))))

(assert (=> bs!1402901 (not (= lambda!323418 lambda!323347))))

(assert (=> d!1858862 true))

(assert (=> d!1858862 true))

(assert (=> d!1858862 true))

(declare-fun lambda!323419 () Int)

(assert (=> bs!1402898 (not (= lambda!323419 lambda!323405))))

(assert (=> bs!1402899 (= lambda!323419 lambda!323372)))

(assert (=> bs!1402900 (= lambda!323419 lambda!323411)))

(assert (=> bs!1402901 (not (= lambda!323419 lambda!323346))))

(assert (=> bs!1402903 (not (= lambda!323419 lambda!323370))))

(assert (=> bs!1402901 (= lambda!323419 lambda!323347)))

(assert (=> bs!1402900 (not (= lambda!323419 lambda!323410))))

(declare-fun bs!1402904 () Bool)

(assert (= bs!1402904 d!1858862))

(assert (=> bs!1402904 (not (= lambda!323419 lambda!323418))))

(assert (=> d!1858862 true))

(assert (=> d!1858862 true))

(assert (=> d!1858862 true))

(assert (=> d!1858862 (= (Exists!3047 lambda!323418) (Exists!3047 lambda!323419))))

(assert (=> d!1858862 true))

(declare-fun _$90!1605 () Unit!157225)

(assert (=> d!1858862 (= (choose!44705 (regOne!32466 r!7292) (regTwo!32466 r!7292) s!2326) _$90!1605)))

(declare-fun m!6822094 () Bool)

(assert (=> bs!1402904 m!6822094))

(declare-fun m!6822096 () Bool)

(assert (=> bs!1402904 m!6822096))

(assert (=> d!1858800 d!1858862))

(declare-fun b!5929081 () Bool)

(declare-fun e!3629008 () Bool)

(declare-fun e!3629010 () Bool)

(assert (=> b!5929081 (= e!3629008 e!3629010)))

(declare-fun res!2484519 () Bool)

(assert (=> b!5929081 (= res!2484519 (not (nullable!5972 (reg!16306 (regOne!32466 r!7292)))))))

(assert (=> b!5929081 (=> (not res!2484519) (not e!3629010))))

(declare-fun b!5929082 () Bool)

(declare-fun res!2484517 () Bool)

(declare-fun e!3629009 () Bool)

(assert (=> b!5929082 (=> res!2484517 e!3629009)))

(assert (=> b!5929082 (= res!2484517 (not ((_ is Concat!24822) (regOne!32466 r!7292))))))

(declare-fun e!3629014 () Bool)

(assert (=> b!5929082 (= e!3629014 e!3629009)))

(declare-fun b!5929083 () Bool)

(declare-fun e!3629011 () Bool)

(declare-fun call!470508 () Bool)

(assert (=> b!5929083 (= e!3629011 call!470508)))

(declare-fun bm!470502 () Bool)

(declare-fun call!470507 () Bool)

(assert (=> bm!470502 (= call!470508 call!470507)))

(declare-fun b!5929084 () Bool)

(declare-fun e!3629012 () Bool)

(assert (=> b!5929084 (= e!3629012 e!3629008)))

(declare-fun c!1053933 () Bool)

(assert (=> b!5929084 (= c!1053933 ((_ is Star!15977) (regOne!32466 r!7292)))))

(declare-fun b!5929085 () Bool)

(assert (=> b!5929085 (= e!3629009 e!3629011)))

(declare-fun res!2484520 () Bool)

(assert (=> b!5929085 (=> (not res!2484520) (not e!3629011))))

(declare-fun call!470509 () Bool)

(assert (=> b!5929085 (= res!2484520 call!470509)))

(declare-fun b!5929086 () Bool)

(assert (=> b!5929086 (= e!3629010 call!470507)))

(declare-fun c!1053932 () Bool)

(declare-fun bm!470503 () Bool)

(assert (=> bm!470503 (= call!470507 (validRegex!7713 (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))))))

(declare-fun b!5929087 () Bool)

(assert (=> b!5929087 (= e!3629008 e!3629014)))

(assert (=> b!5929087 (= c!1053932 ((_ is Union!15977) (regOne!32466 r!7292)))))

(declare-fun b!5929080 () Bool)

(declare-fun res!2484518 () Bool)

(declare-fun e!3629013 () Bool)

(assert (=> b!5929080 (=> (not res!2484518) (not e!3629013))))

(assert (=> b!5929080 (= res!2484518 call!470509)))

(assert (=> b!5929080 (= e!3629014 e!3629013)))

(declare-fun d!1858872 () Bool)

(declare-fun res!2484516 () Bool)

(assert (=> d!1858872 (=> res!2484516 e!3629012)))

(assert (=> d!1858872 (= res!2484516 ((_ is ElementMatch!15977) (regOne!32466 r!7292)))))

(assert (=> d!1858872 (= (validRegex!7713 (regOne!32466 r!7292)) e!3629012)))

(declare-fun b!5929088 () Bool)

(assert (=> b!5929088 (= e!3629013 call!470508)))

(declare-fun bm!470504 () Bool)

(assert (=> bm!470504 (= call!470509 (validRegex!7713 (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))))))

(assert (= (and d!1858872 (not res!2484516)) b!5929084))

(assert (= (and b!5929084 c!1053933) b!5929081))

(assert (= (and b!5929084 (not c!1053933)) b!5929087))

(assert (= (and b!5929081 res!2484519) b!5929086))

(assert (= (and b!5929087 c!1053932) b!5929080))

(assert (= (and b!5929087 (not c!1053932)) b!5929082))

(assert (= (and b!5929080 res!2484518) b!5929088))

(assert (= (and b!5929082 (not res!2484517)) b!5929085))

(assert (= (and b!5929085 res!2484520) b!5929083))

(assert (= (or b!5929088 b!5929083) bm!470502))

(assert (= (or b!5929080 b!5929085) bm!470504))

(assert (= (or b!5929086 bm!470502) bm!470503))

(declare-fun m!6822098 () Bool)

(assert (=> b!5929081 m!6822098))

(declare-fun m!6822102 () Bool)

(assert (=> bm!470503 m!6822102))

(declare-fun m!6822104 () Bool)

(assert (=> bm!470504 m!6822104))

(assert (=> d!1858800 d!1858872))

(declare-fun b!5929092 () Bool)

(declare-fun e!3629017 () Bool)

(declare-fun e!3629019 () Bool)

(assert (=> b!5929092 (= e!3629017 e!3629019)))

(declare-fun res!2484526 () Bool)

(assert (=> b!5929092 (= res!2484526 (not (nullable!5972 (reg!16306 lt!2310639))))))

(assert (=> b!5929092 (=> (not res!2484526) (not e!3629019))))

(declare-fun b!5929093 () Bool)

(declare-fun res!2484524 () Bool)

(declare-fun e!3629018 () Bool)

(assert (=> b!5929093 (=> res!2484524 e!3629018)))

(assert (=> b!5929093 (= res!2484524 (not ((_ is Concat!24822) lt!2310639)))))

(declare-fun e!3629023 () Bool)

(assert (=> b!5929093 (= e!3629023 e!3629018)))

(declare-fun b!5929094 () Bool)

(declare-fun e!3629020 () Bool)

(declare-fun call!470511 () Bool)

(assert (=> b!5929094 (= e!3629020 call!470511)))

(declare-fun bm!470505 () Bool)

(declare-fun call!470510 () Bool)

(assert (=> bm!470505 (= call!470511 call!470510)))

(declare-fun b!5929095 () Bool)

(declare-fun e!3629021 () Bool)

(assert (=> b!5929095 (= e!3629021 e!3629017)))

(declare-fun c!1053935 () Bool)

(assert (=> b!5929095 (= c!1053935 ((_ is Star!15977) lt!2310639))))

(declare-fun b!5929096 () Bool)

(assert (=> b!5929096 (= e!3629018 e!3629020)))

(declare-fun res!2484527 () Bool)

(assert (=> b!5929096 (=> (not res!2484527) (not e!3629020))))

(declare-fun call!470512 () Bool)

(assert (=> b!5929096 (= res!2484527 call!470512)))

(declare-fun b!5929097 () Bool)

(assert (=> b!5929097 (= e!3629019 call!470510)))

(declare-fun c!1053934 () Bool)

(declare-fun bm!470506 () Bool)

(assert (=> bm!470506 (= call!470510 (validRegex!7713 (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))))))

(declare-fun b!5929098 () Bool)

(assert (=> b!5929098 (= e!3629017 e!3629023)))

(assert (=> b!5929098 (= c!1053934 ((_ is Union!15977) lt!2310639))))

(declare-fun b!5929091 () Bool)

(declare-fun res!2484525 () Bool)

(declare-fun e!3629022 () Bool)

(assert (=> b!5929091 (=> (not res!2484525) (not e!3629022))))

(assert (=> b!5929091 (= res!2484525 call!470512)))

(assert (=> b!5929091 (= e!3629023 e!3629022)))

(declare-fun d!1858874 () Bool)

(declare-fun res!2484523 () Bool)

(assert (=> d!1858874 (=> res!2484523 e!3629021)))

(assert (=> d!1858874 (= res!2484523 ((_ is ElementMatch!15977) lt!2310639))))

(assert (=> d!1858874 (= (validRegex!7713 lt!2310639) e!3629021)))

(declare-fun b!5929099 () Bool)

(assert (=> b!5929099 (= e!3629022 call!470511)))

(declare-fun bm!470507 () Bool)

(assert (=> bm!470507 (= call!470512 (validRegex!7713 (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))))))

(assert (= (and d!1858874 (not res!2484523)) b!5929095))

(assert (= (and b!5929095 c!1053935) b!5929092))

(assert (= (and b!5929095 (not c!1053935)) b!5929098))

(assert (= (and b!5929092 res!2484526) b!5929097))

(assert (= (and b!5929098 c!1053934) b!5929091))

(assert (= (and b!5929098 (not c!1053934)) b!5929093))

(assert (= (and b!5929091 res!2484525) b!5929099))

(assert (= (and b!5929093 (not res!2484524)) b!5929096))

(assert (= (and b!5929096 res!2484527) b!5929094))

(assert (= (or b!5929099 b!5929094) bm!470505))

(assert (= (or b!5929091 b!5929096) bm!470507))

(assert (= (or b!5929097 bm!470505) bm!470506))

(declare-fun m!6822108 () Bool)

(assert (=> b!5929092 m!6822108))

(declare-fun m!6822110 () Bool)

(assert (=> bm!470506 m!6822110))

(declare-fun m!6822112 () Bool)

(assert (=> bm!470507 m!6822112))

(assert (=> d!1858790 d!1858874))

(declare-fun d!1858882 () Bool)

(declare-fun res!2484535 () Bool)

(declare-fun e!3629035 () Bool)

(assert (=> d!1858882 (=> res!2484535 e!3629035)))

(assert (=> d!1858882 (= res!2484535 ((_ is Nil!64106) (exprs!5861 (h!70555 zl!343))))))

(assert (=> d!1858882 (= (forall!15060 (exprs!5861 (h!70555 zl!343)) lambda!323402) e!3629035)))

(declare-fun b!5929115 () Bool)

(declare-fun e!3629036 () Bool)

(assert (=> b!5929115 (= e!3629035 e!3629036)))

(declare-fun res!2484536 () Bool)

(assert (=> b!5929115 (=> (not res!2484536) (not e!3629036))))

(declare-fun dynLambda!25069 (Int Regex!15977) Bool)

(assert (=> b!5929115 (= res!2484536 (dynLambda!25069 lambda!323402 (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5929116 () Bool)

(assert (=> b!5929116 (= e!3629036 (forall!15060 (t!377627 (exprs!5861 (h!70555 zl!343))) lambda!323402))))

(assert (= (and d!1858882 (not res!2484535)) b!5929115))

(assert (= (and b!5929115 res!2484536) b!5929116))

(declare-fun b_lambda!222673 () Bool)

(assert (=> (not b_lambda!222673) (not b!5929115)))

(declare-fun m!6822114 () Bool)

(assert (=> b!5929115 m!6822114))

(declare-fun m!6822116 () Bool)

(assert (=> b!5929116 m!6822116))

(assert (=> d!1858790 d!1858882))

(declare-fun d!1858886 () Bool)

(declare-fun res!2484537 () Bool)

(declare-fun e!3629037 () Bool)

(assert (=> d!1858886 (=> res!2484537 e!3629037)))

(assert (=> d!1858886 (= res!2484537 ((_ is Nil!64106) (exprs!5861 lt!2310576)))))

(assert (=> d!1858886 (= (forall!15060 (exprs!5861 lt!2310576) lambda!323390) e!3629037)))

(declare-fun b!5929117 () Bool)

(declare-fun e!3629038 () Bool)

(assert (=> b!5929117 (= e!3629037 e!3629038)))

(declare-fun res!2484538 () Bool)

(assert (=> b!5929117 (=> (not res!2484538) (not e!3629038))))

(assert (=> b!5929117 (= res!2484538 (dynLambda!25069 lambda!323390 (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun b!5929118 () Bool)

(assert (=> b!5929118 (= e!3629038 (forall!15060 (t!377627 (exprs!5861 lt!2310576)) lambda!323390))))

(assert (= (and d!1858886 (not res!2484537)) b!5929117))

(assert (= (and b!5929117 res!2484538) b!5929118))

(declare-fun b_lambda!222675 () Bool)

(assert (=> (not b_lambda!222675) (not b!5929117)))

(declare-fun m!6822118 () Bool)

(assert (=> b!5929117 m!6822118))

(declare-fun m!6822120 () Bool)

(assert (=> b!5929118 m!6822120))

(assert (=> d!1858764 d!1858886))

(declare-fun d!1858888 () Bool)

(assert (=> d!1858888 (= ($colon$colon!1864 (exprs!5861 (Context!10723 Nil!64106)) (ite (or c!1053850 c!1053848) (regTwo!32466 r!7292) r!7292)) (Cons!64106 (ite (or c!1053850 c!1053848) (regTwo!32466 r!7292) r!7292) (exprs!5861 (Context!10723 Nil!64106))))))

(assert (=> bm!470466 d!1858888))

(declare-fun d!1858890 () Bool)

(assert (=> d!1858890 (= (head!12495 s!2326) (h!70556 s!2326))))

(assert (=> b!5928590 d!1858890))

(declare-fun b!5929120 () Bool)

(declare-fun e!3629039 () Bool)

(declare-fun e!3629041 () Bool)

(assert (=> b!5929120 (= e!3629039 e!3629041)))

(declare-fun res!2484542 () Bool)

(assert (=> b!5929120 (= res!2484542 (not (nullable!5972 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))))

(assert (=> b!5929120 (=> (not res!2484542) (not e!3629041))))

(declare-fun b!5929121 () Bool)

(declare-fun res!2484540 () Bool)

(declare-fun e!3629040 () Bool)

(assert (=> b!5929121 (=> res!2484540 e!3629040)))

(assert (=> b!5929121 (= res!2484540 (not ((_ is Concat!24822) (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))

(declare-fun e!3629045 () Bool)

(assert (=> b!5929121 (= e!3629045 e!3629040)))

(declare-fun b!5929122 () Bool)

(declare-fun e!3629042 () Bool)

(declare-fun call!470516 () Bool)

(assert (=> b!5929122 (= e!3629042 call!470516)))

(declare-fun bm!470510 () Bool)

(declare-fun call!470515 () Bool)

(assert (=> bm!470510 (= call!470516 call!470515)))

(declare-fun b!5929123 () Bool)

(declare-fun e!3629043 () Bool)

(assert (=> b!5929123 (= e!3629043 e!3629039)))

(declare-fun c!1053941 () Bool)

(assert (=> b!5929123 (= c!1053941 ((_ is Star!15977) (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))

(declare-fun b!5929124 () Bool)

(assert (=> b!5929124 (= e!3629040 e!3629042)))

(declare-fun res!2484543 () Bool)

(assert (=> b!5929124 (=> (not res!2484543) (not e!3629042))))

(declare-fun call!470517 () Bool)

(assert (=> b!5929124 (= res!2484543 call!470517)))

(declare-fun b!5929125 () Bool)

(assert (=> b!5929125 (= e!3629041 call!470515)))

(declare-fun c!1053940 () Bool)

(declare-fun bm!470511 () Bool)

(assert (=> bm!470511 (= call!470515 (validRegex!7713 (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))))

(declare-fun b!5929126 () Bool)

(assert (=> b!5929126 (= e!3629039 e!3629045)))

(assert (=> b!5929126 (= c!1053940 ((_ is Union!15977) (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))

(declare-fun b!5929119 () Bool)

(declare-fun res!2484541 () Bool)

(declare-fun e!3629044 () Bool)

(assert (=> b!5929119 (=> (not res!2484541) (not e!3629044))))

(assert (=> b!5929119 (= res!2484541 call!470517)))

(assert (=> b!5929119 (= e!3629045 e!3629044)))

(declare-fun d!1858892 () Bool)

(declare-fun res!2484539 () Bool)

(assert (=> d!1858892 (=> res!2484539 e!3629043)))

(assert (=> d!1858892 (= res!2484539 ((_ is ElementMatch!15977) (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))

(assert (=> d!1858892 (= (validRegex!7713 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) e!3629043)))

(declare-fun b!5929127 () Bool)

(assert (=> b!5929127 (= e!3629044 call!470516)))

(declare-fun bm!470512 () Bool)

(assert (=> bm!470512 (= call!470517 (validRegex!7713 (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))))

(assert (= (and d!1858892 (not res!2484539)) b!5929123))

(assert (= (and b!5929123 c!1053941) b!5929120))

(assert (= (and b!5929123 (not c!1053941)) b!5929126))

(assert (= (and b!5929120 res!2484542) b!5929125))

(assert (= (and b!5929126 c!1053940) b!5929119))

(assert (= (and b!5929126 (not c!1053940)) b!5929121))

(assert (= (and b!5929119 res!2484541) b!5929127))

(assert (= (and b!5929121 (not res!2484540)) b!5929124))

(assert (= (and b!5929124 res!2484543) b!5929122))

(assert (= (or b!5929127 b!5929122) bm!470510))

(assert (= (or b!5929119 b!5929124) bm!470512))

(assert (= (or b!5929125 bm!470510) bm!470511))

(declare-fun m!6822122 () Bool)

(assert (=> b!5929120 m!6822122))

(declare-fun m!6822124 () Bool)

(assert (=> bm!470511 m!6822124))

(declare-fun m!6822126 () Bool)

(assert (=> bm!470512 m!6822126))

(assert (=> bm!470481 d!1858892))

(declare-fun d!1858894 () Bool)

(assert (=> d!1858894 (= (isEmptyExpr!1405 lt!2310639) ((_ is EmptyExpr!15977) lt!2310639))))

(assert (=> b!5928858 d!1858894))

(declare-fun d!1858896 () Bool)

(declare-fun res!2484544 () Bool)

(declare-fun e!3629046 () Bool)

(assert (=> d!1858896 (=> res!2484544 e!3629046)))

(assert (=> d!1858896 (= res!2484544 ((_ is Nil!64106) (exprs!5861 (h!70555 zl!343))))))

(assert (=> d!1858896 (= (forall!15060 (exprs!5861 (h!70555 zl!343)) lambda!323412) e!3629046)))

(declare-fun b!5929128 () Bool)

(declare-fun e!3629047 () Bool)

(assert (=> b!5929128 (= e!3629046 e!3629047)))

(declare-fun res!2484545 () Bool)

(assert (=> b!5929128 (=> (not res!2484545) (not e!3629047))))

(assert (=> b!5929128 (= res!2484545 (dynLambda!25069 lambda!323412 (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5929129 () Bool)

(assert (=> b!5929129 (= e!3629047 (forall!15060 (t!377627 (exprs!5861 (h!70555 zl!343))) lambda!323412))))

(assert (= (and d!1858896 (not res!2484544)) b!5929128))

(assert (= (and b!5929128 res!2484545) b!5929129))

(declare-fun b_lambda!222677 () Bool)

(assert (=> (not b_lambda!222677) (not b!5929128)))

(declare-fun m!6822128 () Bool)

(assert (=> b!5929128 m!6822128))

(declare-fun m!6822130 () Bool)

(assert (=> b!5929129 m!6822130))

(assert (=> d!1858804 d!1858896))

(assert (=> d!1858788 d!1858784))

(declare-fun d!1858898 () Bool)

(assert (=> d!1858898 (= (flatMap!1490 z!1189 lambda!323348) (dynLambda!25068 lambda!323348 (h!70555 zl!343)))))

(assert (=> d!1858898 true))

(declare-fun _$13!2693 () Unit!157225)

(assert (=> d!1858898 (= (choose!44702 z!1189 (h!70555 zl!343) lambda!323348) _$13!2693)))

(declare-fun b_lambda!222679 () Bool)

(assert (=> (not b_lambda!222679) (not d!1858898)))

(declare-fun bs!1402916 () Bool)

(assert (= bs!1402916 d!1858898))

(assert (=> bs!1402916 m!6821592))

(assert (=> bs!1402916 m!6821910))

(assert (=> d!1858788 d!1858898))

(declare-fun bs!1402917 () Bool)

(declare-fun d!1858900 () Bool)

(assert (= bs!1402917 (and d!1858900 d!1858790)))

(declare-fun lambda!323422 () Int)

(assert (=> bs!1402917 (= lambda!323422 lambda!323402)))

(declare-fun bs!1402918 () Bool)

(assert (= bs!1402918 (and d!1858900 d!1858772)))

(assert (=> bs!1402918 (= lambda!323422 lambda!323393)))

(declare-fun bs!1402919 () Bool)

(assert (= bs!1402919 (and d!1858900 d!1858760)))

(assert (=> bs!1402919 (= lambda!323422 lambda!323389)))

(declare-fun bs!1402920 () Bool)

(assert (= bs!1402920 (and d!1858900 d!1858764)))

(assert (=> bs!1402920 (= lambda!323422 lambda!323390)))

(declare-fun bs!1402921 () Bool)

(assert (= bs!1402921 (and d!1858900 d!1858804)))

(assert (=> bs!1402921 (= lambda!323422 lambda!323412)))

(declare-fun bs!1402922 () Bool)

(assert (= bs!1402922 (and d!1858900 d!1858774)))

(assert (=> bs!1402922 (= lambda!323422 lambda!323396)))

(declare-fun b!5929130 () Bool)

(declare-fun e!3629050 () Bool)

(declare-fun lt!2310660 () Regex!15977)

(assert (=> b!5929130 (= e!3629050 (isUnion!844 lt!2310660))))

(declare-fun b!5929131 () Bool)

(declare-fun e!3629053 () Regex!15977)

(assert (=> b!5929131 (= e!3629053 (Union!15977 (h!70554 (t!377627 (unfocusZipperList!1398 zl!343))) (generalisedUnion!1821 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343))))))))

(declare-fun b!5929132 () Bool)

(declare-fun e!3629052 () Bool)

(assert (=> b!5929132 (= e!3629052 e!3629050)))

(declare-fun c!1053942 () Bool)

(assert (=> b!5929132 (= c!1053942 (isEmpty!35969 (tail!11581 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5929133 () Bool)

(assert (=> b!5929133 (= e!3629050 (= lt!2310660 (head!12496 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5929134 () Bool)

(declare-fun e!3629048 () Bool)

(assert (=> b!5929134 (= e!3629048 e!3629052)))

(declare-fun c!1053944 () Bool)

(assert (=> b!5929134 (= c!1053944 (isEmpty!35969 (t!377627 (unfocusZipperList!1398 zl!343))))))

(declare-fun b!5929135 () Bool)

(declare-fun e!3629049 () Regex!15977)

(assert (=> b!5929135 (= e!3629049 e!3629053)))

(declare-fun c!1053943 () Bool)

(assert (=> b!5929135 (= c!1053943 ((_ is Cons!64106) (t!377627 (unfocusZipperList!1398 zl!343))))))

(declare-fun b!5929136 () Bool)

(assert (=> b!5929136 (= e!3629049 (h!70554 (t!377627 (unfocusZipperList!1398 zl!343))))))

(declare-fun b!5929137 () Bool)

(assert (=> b!5929137 (= e!3629052 (isEmptyLang!1414 lt!2310660))))

(assert (=> d!1858900 e!3629048))

(declare-fun res!2484546 () Bool)

(assert (=> d!1858900 (=> (not res!2484546) (not e!3629048))))

(assert (=> d!1858900 (= res!2484546 (validRegex!7713 lt!2310660))))

(assert (=> d!1858900 (= lt!2310660 e!3629049)))

(declare-fun c!1053945 () Bool)

(declare-fun e!3629051 () Bool)

(assert (=> d!1858900 (= c!1053945 e!3629051)))

(declare-fun res!2484547 () Bool)

(assert (=> d!1858900 (=> (not res!2484547) (not e!3629051))))

(assert (=> d!1858900 (= res!2484547 ((_ is Cons!64106) (t!377627 (unfocusZipperList!1398 zl!343))))))

(assert (=> d!1858900 (forall!15060 (t!377627 (unfocusZipperList!1398 zl!343)) lambda!323422)))

(assert (=> d!1858900 (= (generalisedUnion!1821 (t!377627 (unfocusZipperList!1398 zl!343))) lt!2310660)))

(declare-fun b!5929138 () Bool)

(assert (=> b!5929138 (= e!3629051 (isEmpty!35969 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5929139 () Bool)

(assert (=> b!5929139 (= e!3629053 EmptyLang!15977)))

(assert (= (and d!1858900 res!2484547) b!5929138))

(assert (= (and d!1858900 c!1053945) b!5929136))

(assert (= (and d!1858900 (not c!1053945)) b!5929135))

(assert (= (and b!5929135 c!1053943) b!5929131))

(assert (= (and b!5929135 (not c!1053943)) b!5929139))

(assert (= (and d!1858900 res!2484546) b!5929134))

(assert (= (and b!5929134 c!1053944) b!5929137))

(assert (= (and b!5929134 (not c!1053944)) b!5929132))

(assert (= (and b!5929132 c!1053942) b!5929133))

(assert (= (and b!5929132 (not c!1053942)) b!5929130))

(declare-fun m!6822138 () Bool)

(assert (=> b!5929131 m!6822138))

(declare-fun m!6822140 () Bool)

(assert (=> b!5929132 m!6822140))

(assert (=> b!5929132 m!6822140))

(declare-fun m!6822142 () Bool)

(assert (=> b!5929132 m!6822142))

(declare-fun m!6822144 () Bool)

(assert (=> d!1858900 m!6822144))

(declare-fun m!6822146 () Bool)

(assert (=> d!1858900 m!6822146))

(declare-fun m!6822148 () Bool)

(assert (=> b!5929137 m!6822148))

(assert (=> b!5929134 m!6821886))

(declare-fun m!6822150 () Bool)

(assert (=> b!5929133 m!6822150))

(declare-fun m!6822152 () Bool)

(assert (=> b!5929138 m!6822152))

(declare-fun m!6822154 () Bool)

(assert (=> b!5929130 m!6822154))

(assert (=> b!5928789 d!1858900))

(declare-fun b!5929140 () Bool)

(declare-fun e!3629060 () Bool)

(assert (=> b!5929140 (= e!3629060 (= (head!12495 (_2!36259 (get!22078 lt!2310648))) (c!1053727 (regTwo!32466 r!7292))))))

(declare-fun b!5929141 () Bool)

(declare-fun e!3629056 () Bool)

(assert (=> b!5929141 (= e!3629056 (matchR!8160 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648)))) (tail!11580 (_2!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5929142 () Bool)

(declare-fun e!3629059 () Bool)

(declare-fun lt!2310661 () Bool)

(assert (=> b!5929142 (= e!3629059 (not lt!2310661))))

(declare-fun b!5929143 () Bool)

(declare-fun e!3629055 () Bool)

(declare-fun e!3629057 () Bool)

(assert (=> b!5929143 (= e!3629055 e!3629057)))

(declare-fun res!2484548 () Bool)

(assert (=> b!5929143 (=> res!2484548 e!3629057)))

(declare-fun call!470518 () Bool)

(assert (=> b!5929143 (= res!2484548 call!470518)))

(declare-fun b!5929144 () Bool)

(declare-fun e!3629054 () Bool)

(assert (=> b!5929144 (= e!3629054 (= lt!2310661 call!470518))))

(declare-fun b!5929145 () Bool)

(declare-fun res!2484554 () Bool)

(assert (=> b!5929145 (=> (not res!2484554) (not e!3629060))))

(assert (=> b!5929145 (= res!2484554 (not call!470518))))

(declare-fun bm!470513 () Bool)

(assert (=> bm!470513 (= call!470518 (isEmpty!35972 (_2!36259 (get!22078 lt!2310648))))))

(declare-fun b!5929146 () Bool)

(assert (=> b!5929146 (= e!3629054 e!3629059)))

(declare-fun c!1053947 () Bool)

(assert (=> b!5929146 (= c!1053947 ((_ is EmptyLang!15977) (regTwo!32466 r!7292)))))

(declare-fun b!5929147 () Bool)

(declare-fun res!2484555 () Bool)

(assert (=> b!5929147 (=> res!2484555 e!3629057)))

(assert (=> b!5929147 (= res!2484555 (not (isEmpty!35972 (tail!11580 (_2!36259 (get!22078 lt!2310648))))))))

(declare-fun b!5929148 () Bool)

(declare-fun res!2484552 () Bool)

(assert (=> b!5929148 (=> (not res!2484552) (not e!3629060))))

(assert (=> b!5929148 (= res!2484552 (isEmpty!35972 (tail!11580 (_2!36259 (get!22078 lt!2310648)))))))

(declare-fun d!1858906 () Bool)

(assert (=> d!1858906 e!3629054))

(declare-fun c!1053948 () Bool)

(assert (=> d!1858906 (= c!1053948 ((_ is EmptyExpr!15977) (regTwo!32466 r!7292)))))

(assert (=> d!1858906 (= lt!2310661 e!3629056)))

(declare-fun c!1053946 () Bool)

(assert (=> d!1858906 (= c!1053946 (isEmpty!35972 (_2!36259 (get!22078 lt!2310648))))))

(assert (=> d!1858906 (validRegex!7713 (regTwo!32466 r!7292))))

(assert (=> d!1858906 (= (matchR!8160 (regTwo!32466 r!7292) (_2!36259 (get!22078 lt!2310648))) lt!2310661)))

(declare-fun b!5929149 () Bool)

(declare-fun res!2484549 () Bool)

(declare-fun e!3629058 () Bool)

(assert (=> b!5929149 (=> res!2484549 e!3629058)))

(assert (=> b!5929149 (= res!2484549 (not ((_ is ElementMatch!15977) (regTwo!32466 r!7292))))))

(assert (=> b!5929149 (= e!3629059 e!3629058)))

(declare-fun b!5929150 () Bool)

(assert (=> b!5929150 (= e!3629057 (not (= (head!12495 (_2!36259 (get!22078 lt!2310648))) (c!1053727 (regTwo!32466 r!7292)))))))

(declare-fun b!5929151 () Bool)

(assert (=> b!5929151 (= e!3629058 e!3629055)))

(declare-fun res!2484551 () Bool)

(assert (=> b!5929151 (=> (not res!2484551) (not e!3629055))))

(assert (=> b!5929151 (= res!2484551 (not lt!2310661))))

(declare-fun b!5929152 () Bool)

(assert (=> b!5929152 (= e!3629056 (nullable!5972 (regTwo!32466 r!7292)))))

(declare-fun b!5929153 () Bool)

(declare-fun res!2484553 () Bool)

(assert (=> b!5929153 (=> res!2484553 e!3629058)))

(assert (=> b!5929153 (= res!2484553 e!3629060)))

(declare-fun res!2484550 () Bool)

(assert (=> b!5929153 (=> (not res!2484550) (not e!3629060))))

(assert (=> b!5929153 (= res!2484550 lt!2310661)))

(assert (= (and d!1858906 c!1053946) b!5929152))

(assert (= (and d!1858906 (not c!1053946)) b!5929141))

(assert (= (and d!1858906 c!1053948) b!5929144))

(assert (= (and d!1858906 (not c!1053948)) b!5929146))

(assert (= (and b!5929146 c!1053947) b!5929142))

(assert (= (and b!5929146 (not c!1053947)) b!5929149))

(assert (= (and b!5929149 (not res!2484549)) b!5929153))

(assert (= (and b!5929153 res!2484550) b!5929145))

(assert (= (and b!5929145 res!2484554) b!5929148))

(assert (= (and b!5929148 res!2484552) b!5929140))

(assert (= (and b!5929153 (not res!2484553)) b!5929151))

(assert (= (and b!5929151 res!2484551) b!5929143))

(assert (= (and b!5929143 (not res!2484548)) b!5929147))

(assert (= (and b!5929147 (not res!2484555)) b!5929150))

(assert (= (or b!5929144 b!5929143 b!5929145) bm!470513))

(declare-fun m!6822156 () Bool)

(assert (=> b!5929147 m!6822156))

(assert (=> b!5929147 m!6822156))

(declare-fun m!6822158 () Bool)

(assert (=> b!5929147 m!6822158))

(declare-fun m!6822160 () Bool)

(assert (=> b!5929141 m!6822160))

(assert (=> b!5929141 m!6822160))

(declare-fun m!6822162 () Bool)

(assert (=> b!5929141 m!6822162))

(assert (=> b!5929141 m!6822156))

(assert (=> b!5929141 m!6822162))

(assert (=> b!5929141 m!6822156))

(declare-fun m!6822164 () Bool)

(assert (=> b!5929141 m!6822164))

(declare-fun m!6822166 () Bool)

(assert (=> d!1858906 m!6822166))

(declare-fun m!6822168 () Bool)

(assert (=> d!1858906 m!6822168))

(assert (=> b!5929148 m!6822156))

(assert (=> b!5929148 m!6822156))

(assert (=> b!5929148 m!6822158))

(declare-fun m!6822170 () Bool)

(assert (=> b!5929152 m!6822170))

(assert (=> bm!470513 m!6822166))

(assert (=> b!5929140 m!6822160))

(assert (=> b!5929150 m!6822160))

(assert (=> b!5928889 d!1858906))

(declare-fun d!1858908 () Bool)

(assert (=> d!1858908 (= (get!22078 lt!2310648) (v!51965 lt!2310648))))

(assert (=> b!5928889 d!1858908))

(declare-fun bm!470514 () Bool)

(declare-fun call!470522 () (InoxSet Context!10722))

(declare-fun call!470519 () (InoxSet Context!10722))

(assert (=> bm!470514 (= call!470522 call!470519)))

(declare-fun d!1858910 () Bool)

(declare-fun c!1053952 () Bool)

(assert (=> d!1858910 (= c!1053952 (and ((_ is ElementMatch!15977) (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (= (c!1053727 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (h!70556 s!2326))))))

(declare-fun e!3629065 () (InoxSet Context!10722))

(assert (=> d!1858910 (= (derivationStepZipperDown!1227 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)) (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (h!70556 s!2326)) e!3629065)))

(declare-fun bm!470515 () Bool)

(declare-fun call!470521 () (InoxSet Context!10722))

(assert (=> bm!470515 (= call!470521 call!470522)))

(declare-fun b!5929154 () Bool)

(declare-fun e!3629063 () (InoxSet Context!10722))

(assert (=> b!5929154 (= e!3629063 call!470521)))

(declare-fun b!5929155 () Bool)

(declare-fun e!3629062 () (InoxSet Context!10722))

(declare-fun e!3629061 () (InoxSet Context!10722))

(assert (=> b!5929155 (= e!3629062 e!3629061)))

(declare-fun c!1053949 () Bool)

(assert (=> b!5929155 (= c!1053949 ((_ is Concat!24822) (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))

(declare-fun b!5929156 () Bool)

(declare-fun e!3629066 () (InoxSet Context!10722))

(assert (=> b!5929156 (= e!3629065 e!3629066)))

(declare-fun c!1053950 () Bool)

(assert (=> b!5929156 (= c!1053950 ((_ is Union!15977) (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))

(declare-fun b!5929157 () Bool)

(declare-fun e!3629064 () Bool)

(assert (=> b!5929157 (= e!3629064 (nullable!5972 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))

(declare-fun bm!470516 () Bool)

(declare-fun call!470520 () List!64230)

(declare-fun call!470524 () List!64230)

(assert (=> bm!470516 (= call!470520 call!470524)))

(declare-fun b!5929158 () Bool)

(declare-fun call!470523 () (InoxSet Context!10722))

(assert (=> b!5929158 (= e!3629062 ((_ map or) call!470523 call!470522))))

(declare-fun bm!470517 () Bool)

(declare-fun c!1053951 () Bool)

(assert (=> bm!470517 (= call!470524 ($colon$colon!1864 (exprs!5861 (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473))) (ite (or c!1053951 c!1053949) (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))

(declare-fun b!5929159 () Bool)

(assert (=> b!5929159 (= e!3629063 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929160 () Bool)

(assert (=> b!5929160 (= e!3629061 call!470521)))

(declare-fun b!5929161 () Bool)

(assert (=> b!5929161 (= e!3629065 (store ((as const (Array Context!10722 Bool)) false) (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) true))))

(declare-fun bm!470518 () Bool)

(assert (=> bm!470518 (= call!470523 (derivationStepZipperDown!1227 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))) (ite c!1053950 (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470524)) (h!70556 s!2326)))))

(declare-fun bm!470519 () Bool)

(assert (=> bm!470519 (= call!470519 (derivationStepZipperDown!1227 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))) (ite (or c!1053950 c!1053951) (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470520)) (h!70556 s!2326)))))

(declare-fun b!5929162 () Bool)

(assert (=> b!5929162 (= c!1053951 e!3629064)))

(declare-fun res!2484556 () Bool)

(assert (=> b!5929162 (=> (not res!2484556) (not e!3629064))))

(assert (=> b!5929162 (= res!2484556 ((_ is Concat!24822) (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))

(assert (=> b!5929162 (= e!3629066 e!3629062)))

(declare-fun b!5929163 () Bool)

(assert (=> b!5929163 (= e!3629066 ((_ map or) call!470523 call!470519))))

(declare-fun b!5929164 () Bool)

(declare-fun c!1053953 () Bool)

(assert (=> b!5929164 (= c!1053953 ((_ is Star!15977) (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))

(assert (=> b!5929164 (= e!3629061 e!3629063)))

(assert (= (and d!1858910 c!1053952) b!5929161))

(assert (= (and d!1858910 (not c!1053952)) b!5929156))

(assert (= (and b!5929156 c!1053950) b!5929163))

(assert (= (and b!5929156 (not c!1053950)) b!5929162))

(assert (= (and b!5929162 res!2484556) b!5929157))

(assert (= (and b!5929162 c!1053951) b!5929158))

(assert (= (and b!5929162 (not c!1053951)) b!5929155))

(assert (= (and b!5929155 c!1053949) b!5929160))

(assert (= (and b!5929155 (not c!1053949)) b!5929164))

(assert (= (and b!5929164 c!1053953) b!5929154))

(assert (= (and b!5929164 (not c!1053953)) b!5929159))

(assert (= (or b!5929160 b!5929154) bm!470516))

(assert (= (or b!5929160 b!5929154) bm!470515))

(assert (= (or b!5929158 bm!470516) bm!470517))

(assert (= (or b!5929158 bm!470515) bm!470514))

(assert (= (or b!5929163 bm!470514) bm!470519))

(assert (= (or b!5929163 b!5929158) bm!470518))

(declare-fun m!6822172 () Bool)

(assert (=> b!5929161 m!6822172))

(declare-fun m!6822174 () Bool)

(assert (=> bm!470517 m!6822174))

(declare-fun m!6822176 () Bool)

(assert (=> bm!470519 m!6822176))

(declare-fun m!6822178 () Bool)

(assert (=> bm!470518 m!6822178))

(declare-fun m!6822180 () Bool)

(assert (=> b!5929157 m!6822180))

(assert (=> bm!470467 d!1858910))

(declare-fun d!1858912 () Bool)

(assert (=> d!1858912 (= (isEmpty!35969 (unfocusZipperList!1398 zl!343)) ((_ is Nil!64106) (unfocusZipperList!1398 zl!343)))))

(assert (=> b!5928792 d!1858912))

(declare-fun bm!470520 () Bool)

(declare-fun call!470528 () (InoxSet Context!10722))

(declare-fun call!470525 () (InoxSet Context!10722))

(assert (=> bm!470520 (= call!470528 call!470525)))

(declare-fun c!1053957 () Bool)

(declare-fun d!1858914 () Bool)

(assert (=> d!1858914 (= c!1053957 (and ((_ is ElementMatch!15977) (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (= (c!1053727 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (h!70556 s!2326))))))

(declare-fun e!3629071 () (InoxSet Context!10722))

(assert (=> d!1858914 (= (derivationStepZipperDown!1227 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))) (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (h!70556 s!2326)) e!3629071)))

(declare-fun bm!470521 () Bool)

(declare-fun call!470527 () (InoxSet Context!10722))

(assert (=> bm!470521 (= call!470527 call!470528)))

(declare-fun b!5929165 () Bool)

(declare-fun e!3629069 () (InoxSet Context!10722))

(assert (=> b!5929165 (= e!3629069 call!470527)))

(declare-fun b!5929166 () Bool)

(declare-fun e!3629068 () (InoxSet Context!10722))

(declare-fun e!3629067 () (InoxSet Context!10722))

(assert (=> b!5929166 (= e!3629068 e!3629067)))

(declare-fun c!1053954 () Bool)

(assert (=> b!5929166 (= c!1053954 ((_ is Concat!24822) (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))

(declare-fun b!5929167 () Bool)

(declare-fun e!3629072 () (InoxSet Context!10722))

(assert (=> b!5929167 (= e!3629071 e!3629072)))

(declare-fun c!1053955 () Bool)

(assert (=> b!5929167 (= c!1053955 ((_ is Union!15977) (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))

(declare-fun b!5929168 () Bool)

(declare-fun e!3629070 () Bool)

(assert (=> b!5929168 (= e!3629070 (nullable!5972 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))

(declare-fun bm!470522 () Bool)

(declare-fun call!470526 () List!64230)

(declare-fun call!470530 () List!64230)

(assert (=> bm!470522 (= call!470526 call!470530)))

(declare-fun b!5929169 () Bool)

(declare-fun call!470529 () (InoxSet Context!10722))

(assert (=> b!5929169 (= e!3629068 ((_ map or) call!470529 call!470528))))

(declare-fun bm!470523 () Bool)

(declare-fun c!1053956 () Bool)

(assert (=> bm!470523 (= call!470530 ($colon$colon!1864 (exprs!5861 (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469))) (ite (or c!1053956 c!1053954) (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))

(declare-fun b!5929170 () Bool)

(assert (=> b!5929170 (= e!3629069 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929171 () Bool)

(assert (=> b!5929171 (= e!3629067 call!470527)))

(declare-fun b!5929172 () Bool)

(assert (=> b!5929172 (= e!3629071 (store ((as const (Array Context!10722 Bool)) false) (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) true))))

(declare-fun bm!470524 () Bool)

(assert (=> bm!470524 (= call!470529 (derivationStepZipperDown!1227 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))) (ite c!1053955 (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470530)) (h!70556 s!2326)))))

(declare-fun bm!470525 () Bool)

(assert (=> bm!470525 (= call!470525 (derivationStepZipperDown!1227 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))) (ite (or c!1053955 c!1053956) (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470526)) (h!70556 s!2326)))))

(declare-fun b!5929173 () Bool)

(assert (=> b!5929173 (= c!1053956 e!3629070)))

(declare-fun res!2484557 () Bool)

(assert (=> b!5929173 (=> (not res!2484557) (not e!3629070))))

(assert (=> b!5929173 (= res!2484557 ((_ is Concat!24822) (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))

(assert (=> b!5929173 (= e!3629072 e!3629068)))

(declare-fun b!5929174 () Bool)

(assert (=> b!5929174 (= e!3629072 ((_ map or) call!470529 call!470525))))

(declare-fun b!5929175 () Bool)

(declare-fun c!1053958 () Bool)

(assert (=> b!5929175 (= c!1053958 ((_ is Star!15977) (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))

(assert (=> b!5929175 (= e!3629067 e!3629069)))

(assert (= (and d!1858914 c!1053957) b!5929172))

(assert (= (and d!1858914 (not c!1053957)) b!5929167))

(assert (= (and b!5929167 c!1053955) b!5929174))

(assert (= (and b!5929167 (not c!1053955)) b!5929173))

(assert (= (and b!5929173 res!2484557) b!5929168))

(assert (= (and b!5929173 c!1053956) b!5929169))

(assert (= (and b!5929173 (not c!1053956)) b!5929166))

(assert (= (and b!5929166 c!1053954) b!5929171))

(assert (= (and b!5929166 (not c!1053954)) b!5929175))

(assert (= (and b!5929175 c!1053958) b!5929165))

(assert (= (and b!5929175 (not c!1053958)) b!5929170))

(assert (= (or b!5929171 b!5929165) bm!470522))

(assert (= (or b!5929171 b!5929165) bm!470521))

(assert (= (or b!5929169 bm!470522) bm!470523))

(assert (= (or b!5929169 bm!470521) bm!470520))

(assert (= (or b!5929174 bm!470520) bm!470525))

(assert (= (or b!5929174 b!5929169) bm!470524))

(declare-fun m!6822182 () Bool)

(assert (=> b!5929172 m!6822182))

(declare-fun m!6822184 () Bool)

(assert (=> bm!470523 m!6822184))

(declare-fun m!6822186 () Bool)

(assert (=> bm!470525 m!6822186))

(declare-fun m!6822188 () Bool)

(assert (=> bm!470524 m!6822188))

(declare-fun m!6822190 () Bool)

(assert (=> b!5929168 m!6822190))

(assert (=> bm!470468 d!1858914))

(declare-fun b!5929181 () Bool)

(declare-fun e!3629075 () Bool)

(declare-fun e!3629077 () Bool)

(assert (=> b!5929181 (= e!3629075 e!3629077)))

(declare-fun res!2484565 () Bool)

(assert (=> b!5929181 (= res!2484565 (not (nullable!5972 (reg!16306 lt!2310627))))))

(assert (=> b!5929181 (=> (not res!2484565) (not e!3629077))))

(declare-fun b!5929182 () Bool)

(declare-fun res!2484563 () Bool)

(declare-fun e!3629076 () Bool)

(assert (=> b!5929182 (=> res!2484563 e!3629076)))

(assert (=> b!5929182 (= res!2484563 (not ((_ is Concat!24822) lt!2310627)))))

(declare-fun e!3629081 () Bool)

(assert (=> b!5929182 (= e!3629081 e!3629076)))

(declare-fun b!5929183 () Bool)

(declare-fun e!3629078 () Bool)

(declare-fun call!470532 () Bool)

(assert (=> b!5929183 (= e!3629078 call!470532)))

(declare-fun bm!470526 () Bool)

(declare-fun call!470531 () Bool)

(assert (=> bm!470526 (= call!470532 call!470531)))

(declare-fun b!5929184 () Bool)

(declare-fun e!3629079 () Bool)

(assert (=> b!5929184 (= e!3629079 e!3629075)))

(declare-fun c!1053960 () Bool)

(assert (=> b!5929184 (= c!1053960 ((_ is Star!15977) lt!2310627))))

(declare-fun b!5929185 () Bool)

(assert (=> b!5929185 (= e!3629076 e!3629078)))

(declare-fun res!2484566 () Bool)

(assert (=> b!5929185 (=> (not res!2484566) (not e!3629078))))

(declare-fun call!470533 () Bool)

(assert (=> b!5929185 (= res!2484566 call!470533)))

(declare-fun b!5929186 () Bool)

(assert (=> b!5929186 (= e!3629077 call!470531)))

(declare-fun c!1053959 () Bool)

(declare-fun bm!470527 () Bool)

(assert (=> bm!470527 (= call!470531 (validRegex!7713 (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))))))

(declare-fun b!5929187 () Bool)

(assert (=> b!5929187 (= e!3629075 e!3629081)))

(assert (=> b!5929187 (= c!1053959 ((_ is Union!15977) lt!2310627))))

(declare-fun b!5929180 () Bool)

(declare-fun res!2484564 () Bool)

(declare-fun e!3629080 () Bool)

(assert (=> b!5929180 (=> (not res!2484564) (not e!3629080))))

(assert (=> b!5929180 (= res!2484564 call!470533)))

(assert (=> b!5929180 (= e!3629081 e!3629080)))

(declare-fun d!1858916 () Bool)

(declare-fun res!2484562 () Bool)

(assert (=> d!1858916 (=> res!2484562 e!3629079)))

(assert (=> d!1858916 (= res!2484562 ((_ is ElementMatch!15977) lt!2310627))))

(assert (=> d!1858916 (= (validRegex!7713 lt!2310627) e!3629079)))

(declare-fun b!5929188 () Bool)

(assert (=> b!5929188 (= e!3629080 call!470532)))

(declare-fun bm!470528 () Bool)

(assert (=> bm!470528 (= call!470533 (validRegex!7713 (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))))))

(assert (= (and d!1858916 (not res!2484562)) b!5929184))

(assert (= (and b!5929184 c!1053960) b!5929181))

(assert (= (and b!5929184 (not c!1053960)) b!5929187))

(assert (= (and b!5929181 res!2484565) b!5929186))

(assert (= (and b!5929187 c!1053959) b!5929180))

(assert (= (and b!5929187 (not c!1053959)) b!5929182))

(assert (= (and b!5929180 res!2484564) b!5929188))

(assert (= (and b!5929182 (not res!2484563)) b!5929185))

(assert (= (and b!5929185 res!2484566) b!5929183))

(assert (= (or b!5929188 b!5929183) bm!470526))

(assert (= (or b!5929180 b!5929185) bm!470528))

(assert (= (or b!5929186 bm!470526) bm!470527))

(declare-fun m!6822192 () Bool)

(assert (=> b!5929181 m!6822192))

(declare-fun m!6822194 () Bool)

(assert (=> bm!470527 m!6822194))

(declare-fun m!6822196 () Bool)

(assert (=> bm!470528 m!6822196))

(assert (=> d!1858770 d!1858916))

(assert (=> d!1858770 d!1858772))

(assert (=> d!1858770 d!1858774))

(declare-fun d!1858918 () Bool)

(assert (=> d!1858918 (= (isEmpty!35969 (exprs!5861 (h!70555 zl!343))) ((_ is Nil!64106) (exprs!5861 (h!70555 zl!343))))))

(assert (=> b!5928861 d!1858918))

(declare-fun bs!1402923 () Bool)

(declare-fun d!1858920 () Bool)

(assert (= bs!1402923 (and d!1858920 d!1858790)))

(declare-fun lambda!323425 () Int)

(assert (=> bs!1402923 (= lambda!323425 lambda!323402)))

(declare-fun bs!1402924 () Bool)

(assert (= bs!1402924 (and d!1858920 d!1858772)))

(assert (=> bs!1402924 (= lambda!323425 lambda!323393)))

(declare-fun bs!1402925 () Bool)

(assert (= bs!1402925 (and d!1858920 d!1858760)))

(assert (=> bs!1402925 (= lambda!323425 lambda!323389)))

(declare-fun bs!1402926 () Bool)

(assert (= bs!1402926 (and d!1858920 d!1858764)))

(assert (=> bs!1402926 (= lambda!323425 lambda!323390)))

(declare-fun bs!1402927 () Bool)

(assert (= bs!1402927 (and d!1858920 d!1858900)))

(assert (=> bs!1402927 (= lambda!323425 lambda!323422)))

(declare-fun bs!1402928 () Bool)

(assert (= bs!1402928 (and d!1858920 d!1858804)))

(assert (=> bs!1402928 (= lambda!323425 lambda!323412)))

(declare-fun bs!1402929 () Bool)

(assert (= bs!1402929 (and d!1858920 d!1858774)))

(assert (=> bs!1402929 (= lambda!323425 lambda!323396)))

(declare-fun b!5929189 () Bool)

(declare-fun e!3629083 () Bool)

(declare-fun lt!2310662 () Regex!15977)

(assert (=> b!5929189 (= e!3629083 (isEmptyExpr!1405 lt!2310662))))

(declare-fun b!5929190 () Bool)

(declare-fun e!3629084 () Bool)

(assert (=> b!5929190 (= e!3629083 e!3629084)))

(declare-fun c!1053963 () Bool)

(assert (=> b!5929190 (= c!1053963 (isEmpty!35969 (tail!11581 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5929191 () Bool)

(declare-fun e!3629087 () Regex!15977)

(assert (=> b!5929191 (= e!3629087 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun e!3629085 () Bool)

(assert (=> d!1858920 e!3629085))

(declare-fun res!2484567 () Bool)

(assert (=> d!1858920 (=> (not res!2484567) (not e!3629085))))

(assert (=> d!1858920 (= res!2484567 (validRegex!7713 lt!2310662))))

(assert (=> d!1858920 (= lt!2310662 e!3629087)))

(declare-fun c!1053961 () Bool)

(declare-fun e!3629082 () Bool)

(assert (=> d!1858920 (= c!1053961 e!3629082)))

(declare-fun res!2484568 () Bool)

(assert (=> d!1858920 (=> (not res!2484568) (not e!3629082))))

(assert (=> d!1858920 (= res!2484568 ((_ is Cons!64106) (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> d!1858920 (forall!15060 (t!377627 (exprs!5861 (h!70555 zl!343))) lambda!323425)))

(assert (=> d!1858920 (= (generalisedConcat!1574 (t!377627 (exprs!5861 (h!70555 zl!343)))) lt!2310662)))

(declare-fun b!5929192 () Bool)

(assert (=> b!5929192 (= e!3629085 e!3629083)))

(declare-fun c!1053964 () Bool)

(assert (=> b!5929192 (= c!1053964 (isEmpty!35969 (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5929193 () Bool)

(declare-fun e!3629086 () Regex!15977)

(assert (=> b!5929193 (= e!3629087 e!3629086)))

(declare-fun c!1053962 () Bool)

(assert (=> b!5929193 (= c!1053962 ((_ is Cons!64106) (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5929194 () Bool)

(assert (=> b!5929194 (= e!3629086 (Concat!24822 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343)))) (generalisedConcat!1574 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))

(declare-fun b!5929195 () Bool)

(assert (=> b!5929195 (= e!3629086 EmptyExpr!15977)))

(declare-fun b!5929196 () Bool)

(assert (=> b!5929196 (= e!3629084 (isConcat!928 lt!2310662))))

(declare-fun b!5929197 () Bool)

(assert (=> b!5929197 (= e!3629084 (= lt!2310662 (head!12496 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5929198 () Bool)

(assert (=> b!5929198 (= e!3629082 (isEmpty!35969 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(assert (= (and d!1858920 res!2484568) b!5929198))

(assert (= (and d!1858920 c!1053961) b!5929191))

(assert (= (and d!1858920 (not c!1053961)) b!5929193))

(assert (= (and b!5929193 c!1053962) b!5929194))

(assert (= (and b!5929193 (not c!1053962)) b!5929195))

(assert (= (and d!1858920 res!2484567) b!5929192))

(assert (= (and b!5929192 c!1053964) b!5929189))

(assert (= (and b!5929192 (not c!1053964)) b!5929190))

(assert (= (and b!5929190 c!1053963) b!5929197))

(assert (= (and b!5929190 (not c!1053963)) b!5929196))

(declare-fun m!6822198 () Bool)

(assert (=> b!5929189 m!6822198))

(declare-fun m!6822200 () Bool)

(assert (=> b!5929194 m!6822200))

(declare-fun m!6822202 () Bool)

(assert (=> b!5929198 m!6822202))

(declare-fun m!6822204 () Bool)

(assert (=> b!5929190 m!6822204))

(assert (=> b!5929190 m!6822204))

(declare-fun m!6822206 () Bool)

(assert (=> b!5929190 m!6822206))

(assert (=> b!5929192 m!6821598))

(declare-fun m!6822208 () Bool)

(assert (=> b!5929196 m!6822208))

(declare-fun m!6822210 () Bool)

(assert (=> d!1858920 m!6822210))

(declare-fun m!6822212 () Bool)

(assert (=> d!1858920 m!6822212))

(declare-fun m!6822214 () Bool)

(assert (=> b!5929197 m!6822214))

(assert (=> b!5928863 d!1858920))

(declare-fun b!5929235 () Bool)

(declare-fun e!3629111 () List!64232)

(assert (=> b!5929235 (= e!3629111 (Cons!64108 (h!70556 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (++!14074 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (t!377629 s!2326))))))

(declare-fun b!5929234 () Bool)

(assert (=> b!5929234 (= e!3629111 (t!377629 s!2326))))

(declare-fun d!1858922 () Bool)

(declare-fun e!3629110 () Bool)

(assert (=> d!1858922 e!3629110))

(declare-fun res!2484592 () Bool)

(assert (=> d!1858922 (=> (not res!2484592) (not e!3629110))))

(declare-fun lt!2310666 () List!64232)

(declare-fun content!11814 (List!64232) (InoxSet C!32224))

(assert (=> d!1858922 (= res!2484592 (= (content!11814 lt!2310666) ((_ map or) (content!11814 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (content!11814 (t!377629 s!2326)))))))

(assert (=> d!1858922 (= lt!2310666 e!3629111)))

(declare-fun c!1053972 () Bool)

(assert (=> d!1858922 (= c!1053972 ((_ is Nil!64108) (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))

(assert (=> d!1858922 (= (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (t!377629 s!2326)) lt!2310666)))

(declare-fun b!5929237 () Bool)

(assert (=> b!5929237 (= e!3629110 (or (not (= (t!377629 s!2326) Nil!64108)) (= lt!2310666 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))))))

(declare-fun b!5929236 () Bool)

(declare-fun res!2484591 () Bool)

(assert (=> b!5929236 (=> (not res!2484591) (not e!3629110))))

(declare-fun size!40144 (List!64232) Int)

(assert (=> b!5929236 (= res!2484591 (= (size!40144 lt!2310666) (+ (size!40144 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (size!40144 (t!377629 s!2326)))))))

(assert (= (and d!1858922 c!1053972) b!5929234))

(assert (= (and d!1858922 (not c!1053972)) b!5929235))

(assert (= (and d!1858922 res!2484592) b!5929236))

(assert (= (and b!5929236 res!2484591) b!5929237))

(declare-fun m!6822250 () Bool)

(assert (=> b!5929235 m!6822250))

(declare-fun m!6822252 () Bool)

(assert (=> d!1858922 m!6822252))

(assert (=> d!1858922 m!6821934))

(declare-fun m!6822254 () Bool)

(assert (=> d!1858922 m!6822254))

(declare-fun m!6822256 () Bool)

(assert (=> d!1858922 m!6822256))

(declare-fun m!6822258 () Bool)

(assert (=> b!5929236 m!6822258))

(assert (=> b!5929236 m!6821934))

(declare-fun m!6822260 () Bool)

(assert (=> b!5929236 m!6822260))

(declare-fun m!6822262 () Bool)

(assert (=> b!5929236 m!6822262))

(assert (=> b!5928892 d!1858922))

(declare-fun b!5929244 () Bool)

(declare-fun e!3629116 () List!64232)

(assert (=> b!5929244 (= e!3629116 (Cons!64108 (h!70556 Nil!64108) (++!14074 (t!377629 Nil!64108) (Cons!64108 (h!70556 s!2326) Nil!64108))))))

(declare-fun b!5929243 () Bool)

(assert (=> b!5929243 (= e!3629116 (Cons!64108 (h!70556 s!2326) Nil!64108))))

(declare-fun d!1858948 () Bool)

(declare-fun e!3629115 () Bool)

(assert (=> d!1858948 e!3629115))

(declare-fun res!2484595 () Bool)

(assert (=> d!1858948 (=> (not res!2484595) (not e!3629115))))

(declare-fun lt!2310667 () List!64232)

(assert (=> d!1858948 (= res!2484595 (= (content!11814 lt!2310667) ((_ map or) (content!11814 Nil!64108) (content!11814 (Cons!64108 (h!70556 s!2326) Nil!64108)))))))

(assert (=> d!1858948 (= lt!2310667 e!3629116)))

(declare-fun c!1053975 () Bool)

(assert (=> d!1858948 (= c!1053975 ((_ is Nil!64108) Nil!64108))))

(assert (=> d!1858948 (= (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) lt!2310667)))

(declare-fun b!5929246 () Bool)

(assert (=> b!5929246 (= e!3629115 (or (not (= (Cons!64108 (h!70556 s!2326) Nil!64108) Nil!64108)) (= lt!2310667 Nil!64108)))))

(declare-fun b!5929245 () Bool)

(declare-fun res!2484594 () Bool)

(assert (=> b!5929245 (=> (not res!2484594) (not e!3629115))))

(assert (=> b!5929245 (= res!2484594 (= (size!40144 lt!2310667) (+ (size!40144 Nil!64108) (size!40144 (Cons!64108 (h!70556 s!2326) Nil!64108)))))))

(assert (= (and d!1858948 c!1053975) b!5929243))

(assert (= (and d!1858948 (not c!1053975)) b!5929244))

(assert (= (and d!1858948 res!2484595) b!5929245))

(assert (= (and b!5929245 res!2484594) b!5929246))

(declare-fun m!6822270 () Bool)

(assert (=> b!5929244 m!6822270))

(declare-fun m!6822272 () Bool)

(assert (=> d!1858948 m!6822272))

(declare-fun m!6822274 () Bool)

(assert (=> d!1858948 m!6822274))

(declare-fun m!6822276 () Bool)

(assert (=> d!1858948 m!6822276))

(declare-fun m!6822278 () Bool)

(assert (=> b!5929245 m!6822278))

(declare-fun m!6822280 () Bool)

(assert (=> b!5929245 m!6822280))

(declare-fun m!6822282 () Bool)

(assert (=> b!5929245 m!6822282))

(assert (=> b!5928892 d!1858948))

(declare-fun d!1858954 () Bool)

(assert (=> d!1858954 (= (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (t!377629 s!2326)) s!2326)))

(declare-fun lt!2310671 () Unit!157225)

(declare-fun choose!44706 (List!64232 C!32224 List!64232 List!64232) Unit!157225)

(assert (=> d!1858954 (= lt!2310671 (choose!44706 Nil!64108 (h!70556 s!2326) (t!377629 s!2326) s!2326))))

(assert (=> d!1858954 (= (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) (t!377629 s!2326))) s!2326)))

(assert (=> d!1858954 (= (lemmaMoveElementToOtherListKeepsConcatEq!2169 Nil!64108 (h!70556 s!2326) (t!377629 s!2326) s!2326) lt!2310671)))

(declare-fun bs!1402944 () Bool)

(assert (= bs!1402944 d!1858954))

(assert (=> bs!1402944 m!6821934))

(assert (=> bs!1402944 m!6821934))

(assert (=> bs!1402944 m!6821936))

(declare-fun m!6822306 () Bool)

(assert (=> bs!1402944 m!6822306))

(declare-fun m!6822308 () Bool)

(assert (=> bs!1402944 m!6822308))

(assert (=> b!5928892 d!1858954))

(declare-fun d!1858968 () Bool)

(declare-fun e!3629138 () Bool)

(assert (=> d!1858968 e!3629138))

(declare-fun res!2484610 () Bool)

(assert (=> d!1858968 (=> res!2484610 e!3629138)))

(declare-fun e!3629139 () Bool)

(assert (=> d!1858968 (= res!2484610 e!3629139)))

(declare-fun res!2484612 () Bool)

(assert (=> d!1858968 (=> (not res!2484612) (not e!3629139))))

(declare-fun lt!2310674 () Option!15868)

(assert (=> d!1858968 (= res!2484612 (isDefined!12571 lt!2310674))))

(declare-fun e!3629137 () Option!15868)

(assert (=> d!1858968 (= lt!2310674 e!3629137)))

(declare-fun c!1053985 () Bool)

(declare-fun e!3629140 () Bool)

(assert (=> d!1858968 (= c!1053985 e!3629140)))

(declare-fun res!2484613 () Bool)

(assert (=> d!1858968 (=> (not res!2484613) (not e!3629140))))

(assert (=> d!1858968 (= res!2484613 (matchR!8160 (regOne!32466 r!7292) (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))

(assert (=> d!1858968 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1858968 (= (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (t!377629 s!2326) s!2326) lt!2310674)))

(declare-fun b!5929279 () Bool)

(assert (=> b!5929279 (= e!3629138 (not (isDefined!12571 lt!2310674)))))

(declare-fun b!5929280 () Bool)

(assert (=> b!5929280 (= e!3629137 (Some!15867 (tuple2!65913 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (t!377629 s!2326))))))

(declare-fun b!5929281 () Bool)

(declare-fun e!3629136 () Option!15868)

(assert (=> b!5929281 (= e!3629137 e!3629136)))

(declare-fun c!1053986 () Bool)

(assert (=> b!5929281 (= c!1053986 ((_ is Nil!64108) (t!377629 s!2326)))))

(declare-fun b!5929282 () Bool)

(declare-fun res!2484611 () Bool)

(assert (=> b!5929282 (=> (not res!2484611) (not e!3629139))))

(assert (=> b!5929282 (= res!2484611 (matchR!8160 (regTwo!32466 r!7292) (_2!36259 (get!22078 lt!2310674))))))

(declare-fun b!5929283 () Bool)

(assert (=> b!5929283 (= e!3629136 None!15867)))

(declare-fun b!5929284 () Bool)

(declare-fun res!2484614 () Bool)

(assert (=> b!5929284 (=> (not res!2484614) (not e!3629139))))

(assert (=> b!5929284 (= res!2484614 (matchR!8160 (regOne!32466 r!7292) (_1!36259 (get!22078 lt!2310674))))))

(declare-fun b!5929285 () Bool)

(declare-fun lt!2310673 () Unit!157225)

(declare-fun lt!2310672 () Unit!157225)

(assert (=> b!5929285 (= lt!2310673 lt!2310672)))

(assert (=> b!5929285 (= (++!14074 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) (t!377629 (t!377629 s!2326))) s!2326)))

(assert (=> b!5929285 (= lt!2310672 (lemmaMoveElementToOtherListKeepsConcatEq!2169 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (h!70556 (t!377629 s!2326)) (t!377629 (t!377629 s!2326)) s!2326))))

(assert (=> b!5929285 (= e!3629136 (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) (t!377629 (t!377629 s!2326)) s!2326))))

(declare-fun b!5929286 () Bool)

(assert (=> b!5929286 (= e!3629140 (matchR!8160 (regTwo!32466 r!7292) (t!377629 s!2326)))))

(declare-fun b!5929287 () Bool)

(assert (=> b!5929287 (= e!3629139 (= (++!14074 (_1!36259 (get!22078 lt!2310674)) (_2!36259 (get!22078 lt!2310674))) s!2326))))

(assert (= (and d!1858968 res!2484613) b!5929286))

(assert (= (and d!1858968 c!1053985) b!5929280))

(assert (= (and d!1858968 (not c!1053985)) b!5929281))

(assert (= (and b!5929281 c!1053986) b!5929283))

(assert (= (and b!5929281 (not c!1053986)) b!5929285))

(assert (= (and d!1858968 res!2484612) b!5929284))

(assert (= (and b!5929284 res!2484614) b!5929282))

(assert (= (and b!5929282 res!2484611) b!5929287))

(assert (= (and d!1858968 (not res!2484610)) b!5929279))

(assert (=> b!5929285 m!6821934))

(declare-fun m!6822314 () Bool)

(assert (=> b!5929285 m!6822314))

(assert (=> b!5929285 m!6822314))

(declare-fun m!6822316 () Bool)

(assert (=> b!5929285 m!6822316))

(assert (=> b!5929285 m!6821934))

(declare-fun m!6822318 () Bool)

(assert (=> b!5929285 m!6822318))

(assert (=> b!5929285 m!6822314))

(declare-fun m!6822320 () Bool)

(assert (=> b!5929285 m!6822320))

(declare-fun m!6822322 () Bool)

(assert (=> b!5929287 m!6822322))

(declare-fun m!6822324 () Bool)

(assert (=> b!5929287 m!6822324))

(assert (=> b!5929284 m!6822322))

(declare-fun m!6822326 () Bool)

(assert (=> b!5929284 m!6822326))

(declare-fun m!6822328 () Bool)

(assert (=> d!1858968 m!6822328))

(assert (=> d!1858968 m!6821934))

(declare-fun m!6822332 () Bool)

(assert (=> d!1858968 m!6822332))

(assert (=> d!1858968 m!6821952))

(assert (=> b!5929279 m!6822328))

(assert (=> b!5929282 m!6822322))

(declare-fun m!6822334 () Bool)

(assert (=> b!5929282 m!6822334))

(declare-fun m!6822336 () Bool)

(assert (=> b!5929286 m!6822336))

(assert (=> b!5928892 d!1858968))

(declare-fun d!1858976 () Bool)

(assert (=> d!1858976 (= (isEmpty!35972 (tail!11580 s!2326)) ((_ is Nil!64108) (tail!11580 s!2326)))))

(assert (=> b!5928598 d!1858976))

(declare-fun d!1858978 () Bool)

(assert (=> d!1858978 (= (tail!11580 s!2326) (t!377629 s!2326))))

(assert (=> b!5928598 d!1858978))

(assert (=> d!1858728 d!1858712))

(assert (=> d!1858728 d!1858698))

(declare-fun d!1858980 () Bool)

(assert (=> d!1858980 (= (matchR!8160 r!7292 s!2326) (matchRSpec!3078 r!7292 s!2326))))

(assert (=> d!1858980 true))

(declare-fun _$88!4422 () Unit!157225)

(assert (=> d!1858980 (= (choose!44698 r!7292 s!2326) _$88!4422)))

(declare-fun bs!1402954 () Bool)

(assert (= bs!1402954 d!1858980))

(assert (=> bs!1402954 m!6821584))

(assert (=> bs!1402954 m!6821582))

(assert (=> d!1858728 d!1858980))

(assert (=> d!1858728 d!1858780))

(declare-fun d!1858988 () Bool)

(assert (=> d!1858988 (= (isEmpty!35969 (t!377627 (unfocusZipperList!1398 zl!343))) ((_ is Nil!64106) (t!377627 (unfocusZipperList!1398 zl!343))))))

(assert (=> b!5928796 d!1858988))

(declare-fun d!1858990 () Bool)

(assert (=> d!1858990 (= (isConcat!928 lt!2310639) ((_ is Concat!24822) lt!2310639))))

(assert (=> b!5928865 d!1858990))

(declare-fun d!1858994 () Bool)

(declare-fun nullableFct!1944 (Regex!15977) Bool)

(assert (=> d!1858994 (= (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (nullableFct!1944 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))

(declare-fun bs!1402955 () Bool)

(assert (= bs!1402955 d!1858994))

(declare-fun m!6822368 () Bool)

(assert (=> bs!1402955 m!6822368))

(assert (=> b!5928750 d!1858994))

(declare-fun b!5929314 () Bool)

(declare-fun e!3629156 () List!64232)

(assert (=> b!5929314 (= e!3629156 (Cons!64108 (h!70556 (_1!36259 (get!22078 lt!2310648))) (++!14074 (t!377629 (_1!36259 (get!22078 lt!2310648))) (_2!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5929313 () Bool)

(assert (=> b!5929313 (= e!3629156 (_2!36259 (get!22078 lt!2310648)))))

(declare-fun d!1858998 () Bool)

(declare-fun e!3629155 () Bool)

(assert (=> d!1858998 e!3629155))

(declare-fun res!2484619 () Bool)

(assert (=> d!1858998 (=> (not res!2484619) (not e!3629155))))

(declare-fun lt!2310677 () List!64232)

(assert (=> d!1858998 (= res!2484619 (= (content!11814 lt!2310677) ((_ map or) (content!11814 (_1!36259 (get!22078 lt!2310648))) (content!11814 (_2!36259 (get!22078 lt!2310648))))))))

(assert (=> d!1858998 (= lt!2310677 e!3629156)))

(declare-fun c!1053998 () Bool)

(assert (=> d!1858998 (= c!1053998 ((_ is Nil!64108) (_1!36259 (get!22078 lt!2310648))))))

(assert (=> d!1858998 (= (++!14074 (_1!36259 (get!22078 lt!2310648)) (_2!36259 (get!22078 lt!2310648))) lt!2310677)))

(declare-fun b!5929316 () Bool)

(assert (=> b!5929316 (= e!3629155 (or (not (= (_2!36259 (get!22078 lt!2310648)) Nil!64108)) (= lt!2310677 (_1!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5929315 () Bool)

(declare-fun res!2484618 () Bool)

(assert (=> b!5929315 (=> (not res!2484618) (not e!3629155))))

(assert (=> b!5929315 (= res!2484618 (= (size!40144 lt!2310677) (+ (size!40144 (_1!36259 (get!22078 lt!2310648))) (size!40144 (_2!36259 (get!22078 lt!2310648))))))))

(assert (= (and d!1858998 c!1053998) b!5929313))

(assert (= (and d!1858998 (not c!1053998)) b!5929314))

(assert (= (and d!1858998 res!2484619) b!5929315))

(assert (= (and b!5929315 res!2484618) b!5929316))

(declare-fun m!6822370 () Bool)

(assert (=> b!5929314 m!6822370))

(declare-fun m!6822372 () Bool)

(assert (=> d!1858998 m!6822372))

(declare-fun m!6822374 () Bool)

(assert (=> d!1858998 m!6822374))

(declare-fun m!6822376 () Bool)

(assert (=> d!1858998 m!6822376))

(declare-fun m!6822378 () Bool)

(assert (=> b!5929315 m!6822378))

(declare-fun m!6822380 () Bool)

(assert (=> b!5929315 m!6822380))

(declare-fun m!6822382 () Bool)

(assert (=> b!5929315 m!6822382))

(assert (=> b!5928894 d!1858998))

(assert (=> b!5928894 d!1858908))

(assert (=> b!5928600 d!1858890))

(assert (=> b!5928867 d!1858778))

(declare-fun bm!470545 () Bool)

(declare-fun call!470553 () (InoxSet Context!10722))

(declare-fun call!470550 () (InoxSet Context!10722))

(assert (=> bm!470545 (= call!470553 call!470550)))

(declare-fun d!1859000 () Bool)

(declare-fun c!1054002 () Bool)

(assert (=> d!1859000 (= c!1054002 (and ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))) (= (c!1053727 (h!70554 (exprs!5861 (h!70555 zl!343)))) (h!70556 s!2326))))))

(declare-fun e!3629161 () (InoxSet Context!10722))

(assert (=> d!1859000 (= (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (h!70555 zl!343))) (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (h!70556 s!2326)) e!3629161)))

(declare-fun bm!470546 () Bool)

(declare-fun call!470552 () (InoxSet Context!10722))

(assert (=> bm!470546 (= call!470552 call!470553)))

(declare-fun b!5929317 () Bool)

(declare-fun e!3629159 () (InoxSet Context!10722))

(assert (=> b!5929317 (= e!3629159 call!470552)))

(declare-fun b!5929318 () Bool)

(declare-fun e!3629158 () (InoxSet Context!10722))

(declare-fun e!3629157 () (InoxSet Context!10722))

(assert (=> b!5929318 (= e!3629158 e!3629157)))

(declare-fun c!1053999 () Bool)

(assert (=> b!5929318 (= c!1053999 ((_ is Concat!24822) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5929319 () Bool)

(declare-fun e!3629162 () (InoxSet Context!10722))

(assert (=> b!5929319 (= e!3629161 e!3629162)))

(declare-fun c!1054000 () Bool)

(assert (=> b!5929319 (= c!1054000 ((_ is Union!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5929320 () Bool)

(declare-fun e!3629160 () Bool)

(assert (=> b!5929320 (= e!3629160 (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun bm!470547 () Bool)

(declare-fun call!470551 () List!64230)

(declare-fun call!470555 () List!64230)

(assert (=> bm!470547 (= call!470551 call!470555)))

(declare-fun b!5929321 () Bool)

(declare-fun call!470554 () (InoxSet Context!10722))

(assert (=> b!5929321 (= e!3629158 ((_ map or) call!470554 call!470553))))

(declare-fun c!1054001 () Bool)

(declare-fun bm!470548 () Bool)

(assert (=> bm!470548 (= call!470555 ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))) (ite (or c!1054001 c!1053999) (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (h!70554 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5929322 () Bool)

(assert (=> b!5929322 (= e!3629159 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929323 () Bool)

(assert (=> b!5929323 (= e!3629157 call!470552)))

(declare-fun b!5929324 () Bool)

(assert (=> b!5929324 (= e!3629161 (store ((as const (Array Context!10722 Bool)) false) (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) true))))

(declare-fun bm!470549 () Bool)

(assert (=> bm!470549 (= call!470554 (derivationStepZipperDown!1227 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))) (ite c!1054000 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470555)) (h!70556 s!2326)))))

(declare-fun bm!470550 () Bool)

(assert (=> bm!470550 (= call!470550 (derivationStepZipperDown!1227 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343))))))) (ite (or c!1054000 c!1054001) (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470551)) (h!70556 s!2326)))))

(declare-fun b!5929325 () Bool)

(assert (=> b!5929325 (= c!1054001 e!3629160)))

(declare-fun res!2484620 () Bool)

(assert (=> b!5929325 (=> (not res!2484620) (not e!3629160))))

(assert (=> b!5929325 (= res!2484620 ((_ is Concat!24822) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> b!5929325 (= e!3629162 e!3629158)))

(declare-fun b!5929326 () Bool)

(assert (=> b!5929326 (= e!3629162 ((_ map or) call!470554 call!470550))))

(declare-fun b!5929327 () Bool)

(declare-fun c!1054003 () Bool)

(assert (=> b!5929327 (= c!1054003 ((_ is Star!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> b!5929327 (= e!3629157 e!3629159)))

(assert (= (and d!1859000 c!1054002) b!5929324))

(assert (= (and d!1859000 (not c!1054002)) b!5929319))

(assert (= (and b!5929319 c!1054000) b!5929326))

(assert (= (and b!5929319 (not c!1054000)) b!5929325))

(assert (= (and b!5929325 res!2484620) b!5929320))

(assert (= (and b!5929325 c!1054001) b!5929321))

(assert (= (and b!5929325 (not c!1054001)) b!5929318))

(assert (= (and b!5929318 c!1053999) b!5929323))

(assert (= (and b!5929318 (not c!1053999)) b!5929327))

(assert (= (and b!5929327 c!1054003) b!5929317))

(assert (= (and b!5929327 (not c!1054003)) b!5929322))

(assert (= (or b!5929323 b!5929317) bm!470547))

(assert (= (or b!5929323 b!5929317) bm!470546))

(assert (= (or b!5929321 bm!470547) bm!470548))

(assert (= (or b!5929321 bm!470546) bm!470545))

(assert (= (or b!5929326 bm!470545) bm!470550))

(assert (= (or b!5929326 b!5929321) bm!470549))

(declare-fun m!6822390 () Bool)

(assert (=> b!5929324 m!6822390))

(declare-fun m!6822392 () Bool)

(assert (=> bm!470548 m!6822392))

(declare-fun m!6822396 () Bool)

(assert (=> bm!470550 m!6822396))

(declare-fun m!6822400 () Bool)

(assert (=> bm!470549 m!6822400))

(declare-fun m!6822404 () Bool)

(assert (=> b!5929320 m!6822404))

(assert (=> bm!470483 d!1859000))

(declare-fun d!1859004 () Bool)

(declare-fun c!1054009 () Bool)

(assert (=> d!1859004 (= c!1054009 ((_ is Nil!64107) lt!2310624))))

(declare-fun e!3629172 () (InoxSet Context!10722))

(assert (=> d!1859004 (= (content!11812 lt!2310624) e!3629172)))

(declare-fun b!5929346 () Bool)

(assert (=> b!5929346 (= e!3629172 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929347 () Bool)

(assert (=> b!5929347 (= e!3629172 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) (h!70555 lt!2310624) true) (content!11812 (t!377628 lt!2310624))))))

(assert (= (and d!1859004 c!1054009) b!5929346))

(assert (= (and d!1859004 (not c!1054009)) b!5929347))

(declare-fun m!6822414 () Bool)

(assert (=> b!5929347 m!6822414))

(declare-fun m!6822416 () Bool)

(assert (=> b!5929347 m!6822416))

(assert (=> b!5928757 d!1859004))

(declare-fun d!1859008 () Bool)

(assert (=> d!1859008 (= (nullable!5972 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (nullableFct!1944 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))

(declare-fun bs!1402964 () Bool)

(assert (= bs!1402964 d!1859008))

(declare-fun m!6822418 () Bool)

(assert (=> bs!1402964 m!6822418))

(assert (=> b!5928758 d!1859008))

(declare-fun d!1859010 () Bool)

(assert (=> d!1859010 (= (nullable!5972 (h!70554 (exprs!5861 lt!2310576))) (nullableFct!1944 (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun bs!1402965 () Bool)

(assert (= bs!1402965 d!1859010))

(declare-fun m!6822420 () Bool)

(assert (=> bs!1402965 m!6822420))

(assert (=> b!5928763 d!1859010))

(declare-fun d!1859012 () Bool)

(assert (=> d!1859012 true))

(declare-fun setRes!40254 () Bool)

(assert (=> d!1859012 setRes!40254))

(declare-fun condSetEmpty!40254 () Bool)

(declare-fun res!2484631 () (InoxSet Context!10722))

(assert (=> d!1859012 (= condSetEmpty!40254 (= res!2484631 ((as const (Array Context!10722 Bool)) false)))))

(assert (=> d!1859012 (= (choose!44701 z!1189 lambda!323348) res!2484631)))

(declare-fun setIsEmpty!40254 () Bool)

(assert (=> setIsEmpty!40254 setRes!40254))

(declare-fun tp!1648847 () Bool)

(declare-fun setNonEmpty!40254 () Bool)

(declare-fun e!3629175 () Bool)

(declare-fun setElem!40254 () Context!10722)

(assert (=> setNonEmpty!40254 (= setRes!40254 (and tp!1648847 (inv!83189 setElem!40254) e!3629175))))

(declare-fun setRest!40254 () (InoxSet Context!10722))

(assert (=> setNonEmpty!40254 (= res!2484631 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) setElem!40254 true) setRest!40254))))

(declare-fun b!5929350 () Bool)

(declare-fun tp!1648848 () Bool)

(assert (=> b!5929350 (= e!3629175 tp!1648848)))

(assert (= (and d!1859012 condSetEmpty!40254) setIsEmpty!40254))

(assert (= (and d!1859012 (not condSetEmpty!40254)) setNonEmpty!40254))

(assert (= setNonEmpty!40254 b!5929350))

(declare-fun m!6822422 () Bool)

(assert (=> setNonEmpty!40254 m!6822422))

(assert (=> d!1858784 d!1859012))

(declare-fun d!1859014 () Bool)

(declare-fun c!1054010 () Bool)

(declare-fun e!3629178 () Bool)

(assert (=> d!1859014 (= c!1054010 e!3629178)))

(declare-fun res!2484632 () Bool)

(assert (=> d!1859014 (=> (not res!2484632) (not e!3629178))))

(assert (=> d!1859014 (= res!2484632 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(declare-fun e!3629177 () (InoxSet Context!10722))

(assert (=> d!1859014 (= (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (h!70556 s!2326)) e!3629177)))

(declare-fun b!5929351 () Bool)

(assert (=> b!5929351 (= e!3629178 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))

(declare-fun b!5929352 () Bool)

(declare-fun e!3629176 () (InoxSet Context!10722))

(assert (=> b!5929352 (= e!3629177 e!3629176)))

(declare-fun c!1054011 () Bool)

(assert (=> b!5929352 (= c!1054011 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(declare-fun b!5929353 () Bool)

(declare-fun call!470557 () (InoxSet Context!10722))

(assert (=> b!5929353 (= e!3629176 call!470557)))

(declare-fun bm!470552 () Bool)

(assert (=> bm!470552 (= call!470557 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (h!70556 s!2326)))))

(declare-fun b!5929354 () Bool)

(assert (=> b!5929354 (= e!3629177 ((_ map or) call!470557 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (h!70556 s!2326))))))

(declare-fun b!5929355 () Bool)

(assert (=> b!5929355 (= e!3629176 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1859014 res!2484632) b!5929351))

(assert (= (and d!1859014 c!1054010) b!5929354))

(assert (= (and d!1859014 (not c!1054010)) b!5929352))

(assert (= (and b!5929352 c!1054011) b!5929353))

(assert (= (and b!5929352 (not c!1054011)) b!5929355))

(assert (= (or b!5929354 b!5929353) bm!470552))

(declare-fun m!6822424 () Bool)

(assert (=> b!5929351 m!6822424))

(declare-fun m!6822426 () Bool)

(assert (=> bm!470552 m!6822426))

(declare-fun m!6822428 () Bool)

(assert (=> b!5929354 m!6822428))

(assert (=> b!5928753 d!1859014))

(assert (=> b!5928802 d!1858790))

(declare-fun bs!1402966 () Bool)

(declare-fun d!1859016 () Bool)

(assert (= bs!1402966 (and d!1859016 d!1858790)))

(declare-fun lambda!323429 () Int)

(assert (=> bs!1402966 (= lambda!323429 lambda!323402)))

(declare-fun bs!1402967 () Bool)

(assert (= bs!1402967 (and d!1859016 d!1858772)))

(assert (=> bs!1402967 (= lambda!323429 lambda!323393)))

(declare-fun bs!1402968 () Bool)

(assert (= bs!1402968 (and d!1859016 d!1858760)))

(assert (=> bs!1402968 (= lambda!323429 lambda!323389)))

(declare-fun bs!1402969 () Bool)

(assert (= bs!1402969 (and d!1859016 d!1858764)))

(assert (=> bs!1402969 (= lambda!323429 lambda!323390)))

(declare-fun bs!1402970 () Bool)

(assert (= bs!1402970 (and d!1859016 d!1858804)))

(assert (=> bs!1402970 (= lambda!323429 lambda!323412)))

(declare-fun bs!1402971 () Bool)

(assert (= bs!1402971 (and d!1859016 d!1858774)))

(assert (=> bs!1402971 (= lambda!323429 lambda!323396)))

(declare-fun bs!1402972 () Bool)

(assert (= bs!1402972 (and d!1859016 d!1858900)))

(assert (=> bs!1402972 (= lambda!323429 lambda!323422)))

(declare-fun bs!1402973 () Bool)

(assert (= bs!1402973 (and d!1859016 d!1858920)))

(assert (=> bs!1402973 (= lambda!323429 lambda!323425)))

(declare-fun lt!2310681 () List!64230)

(assert (=> d!1859016 (forall!15060 lt!2310681 lambda!323429)))

(declare-fun e!3629179 () List!64230)

(assert (=> d!1859016 (= lt!2310681 e!3629179)))

(declare-fun c!1054012 () Bool)

(assert (=> d!1859016 (= c!1054012 ((_ is Cons!64107) (t!377628 zl!343)))))

(assert (=> d!1859016 (= (unfocusZipperList!1398 (t!377628 zl!343)) lt!2310681)))

(declare-fun b!5929358 () Bool)

(assert (=> b!5929358 (= e!3629179 (Cons!64106 (generalisedConcat!1574 (exprs!5861 (h!70555 (t!377628 zl!343)))) (unfocusZipperList!1398 (t!377628 (t!377628 zl!343)))))))

(declare-fun b!5929359 () Bool)

(assert (=> b!5929359 (= e!3629179 Nil!64106)))

(assert (= (and d!1859016 c!1054012) b!5929358))

(assert (= (and d!1859016 (not c!1054012)) b!5929359))

(declare-fun m!6822430 () Bool)

(assert (=> d!1859016 m!6822430))

(declare-fun m!6822432 () Bool)

(assert (=> b!5929358 m!6822432))

(declare-fun m!6822434 () Bool)

(assert (=> b!5929358 m!6822434))

(assert (=> b!5928802 d!1859016))

(declare-fun d!1859018 () Bool)

(assert (=> d!1859018 (= (isEmpty!35974 (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) Nil!64108 s!2326 s!2326)) (not ((_ is Some!15867) (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) Nil!64108 s!2326 s!2326))))))

(assert (=> d!1858802 d!1859018))

(declare-fun d!1859020 () Bool)

(assert (=> d!1859020 (= (nullable!5972 r!7292) (nullableFct!1944 r!7292))))

(declare-fun bs!1402974 () Bool)

(assert (= bs!1402974 d!1859020))

(declare-fun m!6822436 () Bool)

(assert (=> bs!1402974 m!6822436))

(assert (=> b!5928602 d!1859020))

(declare-fun d!1859022 () Bool)

(assert (=> d!1859022 (= (isDefined!12571 lt!2310648) (not (isEmpty!35974 lt!2310648)))))

(declare-fun bs!1402975 () Bool)

(assert (= bs!1402975 d!1859022))

(declare-fun m!6822438 () Bool)

(assert (=> bs!1402975 m!6822438))

(assert (=> d!1858792 d!1859022))

(declare-fun b!5929378 () Bool)

(declare-fun e!3629196 () Bool)

(assert (=> b!5929378 (= e!3629196 (= (head!12495 Nil!64108) (c!1053727 (regOne!32466 r!7292))))))

(declare-fun b!5929379 () Bool)

(declare-fun e!3629192 () Bool)

(assert (=> b!5929379 (= e!3629192 (matchR!8160 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 Nil!64108)) (tail!11580 Nil!64108)))))

(declare-fun b!5929380 () Bool)

(declare-fun e!3629195 () Bool)

(declare-fun lt!2310682 () Bool)

(assert (=> b!5929380 (= e!3629195 (not lt!2310682))))

(declare-fun b!5929381 () Bool)

(declare-fun e!3629191 () Bool)

(declare-fun e!3629193 () Bool)

(assert (=> b!5929381 (= e!3629191 e!3629193)))

(declare-fun res!2484633 () Bool)

(assert (=> b!5929381 (=> res!2484633 e!3629193)))

(declare-fun call!470566 () Bool)

(assert (=> b!5929381 (= res!2484633 call!470566)))

(declare-fun b!5929382 () Bool)

(declare-fun e!3629190 () Bool)

(assert (=> b!5929382 (= e!3629190 (= lt!2310682 call!470566))))

(declare-fun b!5929383 () Bool)

(declare-fun res!2484639 () Bool)

(assert (=> b!5929383 (=> (not res!2484639) (not e!3629196))))

(assert (=> b!5929383 (= res!2484639 (not call!470566))))

(declare-fun bm!470561 () Bool)

(assert (=> bm!470561 (= call!470566 (isEmpty!35972 Nil!64108))))

(declare-fun b!5929384 () Bool)

(assert (=> b!5929384 (= e!3629190 e!3629195)))

(declare-fun c!1054024 () Bool)

(assert (=> b!5929384 (= c!1054024 ((_ is EmptyLang!15977) (regOne!32466 r!7292)))))

(declare-fun b!5929385 () Bool)

(declare-fun res!2484640 () Bool)

(assert (=> b!5929385 (=> res!2484640 e!3629193)))

(assert (=> b!5929385 (= res!2484640 (not (isEmpty!35972 (tail!11580 Nil!64108))))))

(declare-fun b!5929386 () Bool)

(declare-fun res!2484637 () Bool)

(assert (=> b!5929386 (=> (not res!2484637) (not e!3629196))))

(assert (=> b!5929386 (= res!2484637 (isEmpty!35972 (tail!11580 Nil!64108)))))

(declare-fun d!1859024 () Bool)

(assert (=> d!1859024 e!3629190))

(declare-fun c!1054025 () Bool)

(assert (=> d!1859024 (= c!1054025 ((_ is EmptyExpr!15977) (regOne!32466 r!7292)))))

(assert (=> d!1859024 (= lt!2310682 e!3629192)))

(declare-fun c!1054023 () Bool)

(assert (=> d!1859024 (= c!1054023 (isEmpty!35972 Nil!64108))))

(assert (=> d!1859024 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1859024 (= (matchR!8160 (regOne!32466 r!7292) Nil!64108) lt!2310682)))

(declare-fun b!5929387 () Bool)

(declare-fun res!2484634 () Bool)

(declare-fun e!3629194 () Bool)

(assert (=> b!5929387 (=> res!2484634 e!3629194)))

(assert (=> b!5929387 (= res!2484634 (not ((_ is ElementMatch!15977) (regOne!32466 r!7292))))))

(assert (=> b!5929387 (= e!3629195 e!3629194)))

(declare-fun b!5929388 () Bool)

(assert (=> b!5929388 (= e!3629193 (not (= (head!12495 Nil!64108) (c!1053727 (regOne!32466 r!7292)))))))

(declare-fun b!5929389 () Bool)

(assert (=> b!5929389 (= e!3629194 e!3629191)))

(declare-fun res!2484636 () Bool)

(assert (=> b!5929389 (=> (not res!2484636) (not e!3629191))))

(assert (=> b!5929389 (= res!2484636 (not lt!2310682))))

(declare-fun b!5929390 () Bool)

(assert (=> b!5929390 (= e!3629192 (nullable!5972 (regOne!32466 r!7292)))))

(declare-fun b!5929391 () Bool)

(declare-fun res!2484638 () Bool)

(assert (=> b!5929391 (=> res!2484638 e!3629194)))

(assert (=> b!5929391 (= res!2484638 e!3629196)))

(declare-fun res!2484635 () Bool)

(assert (=> b!5929391 (=> (not res!2484635) (not e!3629196))))

(assert (=> b!5929391 (= res!2484635 lt!2310682)))

(assert (= (and d!1859024 c!1054023) b!5929390))

(assert (= (and d!1859024 (not c!1054023)) b!5929379))

(assert (= (and d!1859024 c!1054025) b!5929382))

(assert (= (and d!1859024 (not c!1054025)) b!5929384))

(assert (= (and b!5929384 c!1054024) b!5929380))

(assert (= (and b!5929384 (not c!1054024)) b!5929387))

(assert (= (and b!5929387 (not res!2484634)) b!5929391))

(assert (= (and b!5929391 res!2484635) b!5929383))

(assert (= (and b!5929383 res!2484639) b!5929386))

(assert (= (and b!5929386 res!2484637) b!5929378))

(assert (= (and b!5929391 (not res!2484638)) b!5929389))

(assert (= (and b!5929389 res!2484636) b!5929381))

(assert (= (and b!5929381 (not res!2484633)) b!5929385))

(assert (= (and b!5929385 (not res!2484640)) b!5929388))

(assert (= (or b!5929382 b!5929381 b!5929383) bm!470561))

(declare-fun m!6822440 () Bool)

(assert (=> b!5929385 m!6822440))

(assert (=> b!5929385 m!6822440))

(declare-fun m!6822442 () Bool)

(assert (=> b!5929385 m!6822442))

(declare-fun m!6822444 () Bool)

(assert (=> b!5929379 m!6822444))

(assert (=> b!5929379 m!6822444))

(declare-fun m!6822446 () Bool)

(assert (=> b!5929379 m!6822446))

(assert (=> b!5929379 m!6822440))

(assert (=> b!5929379 m!6822446))

(assert (=> b!5929379 m!6822440))

(declare-fun m!6822448 () Bool)

(assert (=> b!5929379 m!6822448))

(declare-fun m!6822450 () Bool)

(assert (=> d!1859024 m!6822450))

(assert (=> d!1859024 m!6821952))

(assert (=> b!5929386 m!6822440))

(assert (=> b!5929386 m!6822440))

(assert (=> b!5929386 m!6822442))

(assert (=> b!5929390 m!6821828))

(assert (=> bm!470561 m!6822450))

(assert (=> b!5929378 m!6822444))

(assert (=> b!5929388 m!6822444))

(assert (=> d!1858792 d!1859024))

(assert (=> d!1858792 d!1858872))

(declare-fun d!1859026 () Bool)

(assert (=> d!1859026 (= (nullable!5972 (regOne!32466 r!7292)) (nullableFct!1944 (regOne!32466 r!7292)))))

(declare-fun bs!1402976 () Bool)

(assert (= bs!1402976 d!1859026))

(declare-fun m!6822452 () Bool)

(assert (=> bs!1402976 m!6822452))

(assert (=> b!5928675 d!1859026))

(declare-fun bm!470562 () Bool)

(declare-fun call!470570 () (InoxSet Context!10722))

(declare-fun call!470567 () (InoxSet Context!10722))

(assert (=> bm!470562 (= call!470570 call!470567)))

(declare-fun d!1859028 () Bool)

(declare-fun c!1054029 () Bool)

(assert (=> d!1859028 (= c!1054029 (and ((_ is ElementMatch!15977) (h!70554 (exprs!5861 lt!2310576))) (= (c!1053727 (h!70554 (exprs!5861 lt!2310576))) (h!70556 s!2326))))))

(declare-fun e!3629201 () (InoxSet Context!10722))

(assert (=> d!1859028 (= (derivationStepZipperDown!1227 (h!70554 (exprs!5861 lt!2310576)) (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (h!70556 s!2326)) e!3629201)))

(declare-fun bm!470563 () Bool)

(declare-fun call!470569 () (InoxSet Context!10722))

(assert (=> bm!470563 (= call!470569 call!470570)))

(declare-fun b!5929392 () Bool)

(declare-fun e!3629199 () (InoxSet Context!10722))

(assert (=> b!5929392 (= e!3629199 call!470569)))

(declare-fun b!5929393 () Bool)

(declare-fun e!3629198 () (InoxSet Context!10722))

(declare-fun e!3629197 () (InoxSet Context!10722))

(assert (=> b!5929393 (= e!3629198 e!3629197)))

(declare-fun c!1054026 () Bool)

(assert (=> b!5929393 (= c!1054026 ((_ is Concat!24822) (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun b!5929394 () Bool)

(declare-fun e!3629202 () (InoxSet Context!10722))

(assert (=> b!5929394 (= e!3629201 e!3629202)))

(declare-fun c!1054027 () Bool)

(assert (=> b!5929394 (= c!1054027 ((_ is Union!15977) (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun b!5929395 () Bool)

(declare-fun e!3629200 () Bool)

(assert (=> b!5929395 (= e!3629200 (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 lt!2310576)))))))

(declare-fun bm!470564 () Bool)

(declare-fun call!470568 () List!64230)

(declare-fun call!470572 () List!64230)

(assert (=> bm!470564 (= call!470568 call!470572)))

(declare-fun b!5929396 () Bool)

(declare-fun call!470571 () (InoxSet Context!10722))

(assert (=> b!5929396 (= e!3629198 ((_ map or) call!470571 call!470570))))

(declare-fun bm!470565 () Bool)

(declare-fun c!1054028 () Bool)

(assert (=> bm!470565 (= call!470572 ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))) (ite (or c!1054028 c!1054026) (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (h!70554 (exprs!5861 lt!2310576)))))))

(declare-fun b!5929397 () Bool)

(assert (=> b!5929397 (= e!3629199 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929398 () Bool)

(assert (=> b!5929398 (= e!3629197 call!470569)))

(declare-fun b!5929399 () Bool)

(assert (=> b!5929399 (= e!3629201 (store ((as const (Array Context!10722 Bool)) false) (Context!10723 (t!377627 (exprs!5861 lt!2310576))) true))))

(declare-fun bm!470566 () Bool)

(assert (=> bm!470566 (= call!470571 (derivationStepZipperDown!1227 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576)))) (ite c!1054027 (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470572)) (h!70556 s!2326)))))

(declare-fun bm!470567 () Bool)

(assert (=> bm!470567 (= call!470567 (derivationStepZipperDown!1227 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576)))))) (ite (or c!1054027 c!1054028) (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470568)) (h!70556 s!2326)))))

(declare-fun b!5929400 () Bool)

(assert (=> b!5929400 (= c!1054028 e!3629200)))

(declare-fun res!2484641 () Bool)

(assert (=> b!5929400 (=> (not res!2484641) (not e!3629200))))

(assert (=> b!5929400 (= res!2484641 ((_ is Concat!24822) (h!70554 (exprs!5861 lt!2310576))))))

(assert (=> b!5929400 (= e!3629202 e!3629198)))

(declare-fun b!5929401 () Bool)

(assert (=> b!5929401 (= e!3629202 ((_ map or) call!470571 call!470567))))

(declare-fun b!5929402 () Bool)

(declare-fun c!1054030 () Bool)

(assert (=> b!5929402 (= c!1054030 ((_ is Star!15977) (h!70554 (exprs!5861 lt!2310576))))))

(assert (=> b!5929402 (= e!3629197 e!3629199)))

(assert (= (and d!1859028 c!1054029) b!5929399))

(assert (= (and d!1859028 (not c!1054029)) b!5929394))

(assert (= (and b!5929394 c!1054027) b!5929401))

(assert (= (and b!5929394 (not c!1054027)) b!5929400))

(assert (= (and b!5929400 res!2484641) b!5929395))

(assert (= (and b!5929400 c!1054028) b!5929396))

(assert (= (and b!5929400 (not c!1054028)) b!5929393))

(assert (= (and b!5929393 c!1054026) b!5929398))

(assert (= (and b!5929393 (not c!1054026)) b!5929402))

(assert (= (and b!5929402 c!1054030) b!5929392))

(assert (= (and b!5929402 (not c!1054030)) b!5929397))

(assert (= (or b!5929398 b!5929392) bm!470564))

(assert (= (or b!5929398 b!5929392) bm!470563))

(assert (= (or b!5929396 bm!470564) bm!470565))

(assert (= (or b!5929396 bm!470563) bm!470562))

(assert (= (or b!5929401 bm!470562) bm!470567))

(assert (= (or b!5929401 b!5929396) bm!470566))

(declare-fun m!6822454 () Bool)

(assert (=> b!5929399 m!6822454))

(declare-fun m!6822456 () Bool)

(assert (=> bm!470565 m!6822456))

(declare-fun m!6822458 () Bool)

(assert (=> bm!470567 m!6822458))

(declare-fun m!6822460 () Bool)

(assert (=> bm!470566 m!6822460))

(declare-fun m!6822462 () Bool)

(assert (=> b!5929395 m!6822462))

(assert (=> bm!470473 d!1859028))

(declare-fun b!5929404 () Bool)

(declare-fun e!3629203 () Bool)

(declare-fun e!3629205 () Bool)

(assert (=> b!5929404 (= e!3629203 e!3629205)))

(declare-fun res!2484645 () Bool)

(assert (=> b!5929404 (= res!2484645 (not (nullable!5972 (reg!16306 lt!2310630))))))

(assert (=> b!5929404 (=> (not res!2484645) (not e!3629205))))

(declare-fun b!5929405 () Bool)

(declare-fun res!2484643 () Bool)

(declare-fun e!3629204 () Bool)

(assert (=> b!5929405 (=> res!2484643 e!3629204)))

(assert (=> b!5929405 (= res!2484643 (not ((_ is Concat!24822) lt!2310630)))))

(declare-fun e!3629209 () Bool)

(assert (=> b!5929405 (= e!3629209 e!3629204)))

(declare-fun b!5929406 () Bool)

(declare-fun e!3629206 () Bool)

(declare-fun call!470574 () Bool)

(assert (=> b!5929406 (= e!3629206 call!470574)))

(declare-fun bm!470568 () Bool)

(declare-fun call!470573 () Bool)

(assert (=> bm!470568 (= call!470574 call!470573)))

(declare-fun b!5929407 () Bool)

(declare-fun e!3629207 () Bool)

(assert (=> b!5929407 (= e!3629207 e!3629203)))

(declare-fun c!1054032 () Bool)

(assert (=> b!5929407 (= c!1054032 ((_ is Star!15977) lt!2310630))))

(declare-fun b!5929408 () Bool)

(assert (=> b!5929408 (= e!3629204 e!3629206)))

(declare-fun res!2484646 () Bool)

(assert (=> b!5929408 (=> (not res!2484646) (not e!3629206))))

(declare-fun call!470575 () Bool)

(assert (=> b!5929408 (= res!2484646 call!470575)))

(declare-fun b!5929409 () Bool)

(assert (=> b!5929409 (= e!3629205 call!470573)))

(declare-fun bm!470569 () Bool)

(declare-fun c!1054031 () Bool)

(assert (=> bm!470569 (= call!470573 (validRegex!7713 (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))))))

(declare-fun b!5929410 () Bool)

(assert (=> b!5929410 (= e!3629203 e!3629209)))

(assert (=> b!5929410 (= c!1054031 ((_ is Union!15977) lt!2310630))))

(declare-fun b!5929403 () Bool)

(declare-fun res!2484644 () Bool)

(declare-fun e!3629208 () Bool)

(assert (=> b!5929403 (=> (not res!2484644) (not e!3629208))))

(assert (=> b!5929403 (= res!2484644 call!470575)))

(assert (=> b!5929403 (= e!3629209 e!3629208)))

(declare-fun d!1859030 () Bool)

(declare-fun res!2484642 () Bool)

(assert (=> d!1859030 (=> res!2484642 e!3629207)))

(assert (=> d!1859030 (= res!2484642 ((_ is ElementMatch!15977) lt!2310630))))

(assert (=> d!1859030 (= (validRegex!7713 lt!2310630) e!3629207)))

(declare-fun b!5929411 () Bool)

(assert (=> b!5929411 (= e!3629208 call!470574)))

(declare-fun bm!470570 () Bool)

(assert (=> bm!470570 (= call!470575 (validRegex!7713 (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))))))

(assert (= (and d!1859030 (not res!2484642)) b!5929407))

(assert (= (and b!5929407 c!1054032) b!5929404))

(assert (= (and b!5929407 (not c!1054032)) b!5929410))

(assert (= (and b!5929404 res!2484645) b!5929409))

(assert (= (and b!5929410 c!1054031) b!5929403))

(assert (= (and b!5929410 (not c!1054031)) b!5929405))

(assert (= (and b!5929403 res!2484644) b!5929411))

(assert (= (and b!5929405 (not res!2484643)) b!5929408))

(assert (= (and b!5929408 res!2484646) b!5929406))

(assert (= (or b!5929411 b!5929406) bm!470568))

(assert (= (or b!5929403 b!5929408) bm!470570))

(assert (= (or b!5929409 bm!470568) bm!470569))

(declare-fun m!6822464 () Bool)

(assert (=> b!5929404 m!6822464))

(declare-fun m!6822466 () Bool)

(assert (=> bm!470569 m!6822466))

(declare-fun m!6822468 () Bool)

(assert (=> bm!470570 m!6822468))

(assert (=> d!1858772 d!1859030))

(declare-fun d!1859032 () Bool)

(declare-fun res!2484647 () Bool)

(declare-fun e!3629210 () Bool)

(assert (=> d!1859032 (=> res!2484647 e!3629210)))

(assert (=> d!1859032 (= res!2484647 ((_ is Nil!64106) (unfocusZipperList!1398 zl!343)))))

(assert (=> d!1859032 (= (forall!15060 (unfocusZipperList!1398 zl!343) lambda!323393) e!3629210)))

(declare-fun b!5929412 () Bool)

(declare-fun e!3629211 () Bool)

(assert (=> b!5929412 (= e!3629210 e!3629211)))

(declare-fun res!2484648 () Bool)

(assert (=> b!5929412 (=> (not res!2484648) (not e!3629211))))

(assert (=> b!5929412 (= res!2484648 (dynLambda!25069 lambda!323393 (h!70554 (unfocusZipperList!1398 zl!343))))))

(declare-fun b!5929413 () Bool)

(assert (=> b!5929413 (= e!3629211 (forall!15060 (t!377627 (unfocusZipperList!1398 zl!343)) lambda!323393))))

(assert (= (and d!1859032 (not res!2484647)) b!5929412))

(assert (= (and b!5929412 res!2484648) b!5929413))

(declare-fun b_lambda!222685 () Bool)

(assert (=> (not b_lambda!222685) (not b!5929412)))

(declare-fun m!6822470 () Bool)

(assert (=> b!5929412 m!6822470))

(declare-fun m!6822472 () Bool)

(assert (=> b!5929413 m!6822472))

(assert (=> d!1858772 d!1859032))

(declare-fun bm!470575 () Bool)

(declare-fun call!470583 () (InoxSet Context!10722))

(declare-fun call!470580 () (InoxSet Context!10722))

(assert (=> bm!470575 (= call!470583 call!470580)))

(declare-fun d!1859034 () Bool)

(declare-fun c!1054041 () Bool)

(assert (=> d!1859034 (= c!1054041 (and ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (= (c!1053727 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (h!70556 s!2326))))))

(declare-fun e!3629221 () (InoxSet Context!10722))

(assert (=> d!1859034 (= (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 lt!2310574))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (h!70556 s!2326)) e!3629221)))

(declare-fun bm!470576 () Bool)

(declare-fun call!470582 () (InoxSet Context!10722))

(assert (=> bm!470576 (= call!470582 call!470583)))

(declare-fun b!5929424 () Bool)

(declare-fun e!3629219 () (InoxSet Context!10722))

(assert (=> b!5929424 (= e!3629219 call!470582)))

(declare-fun b!5929425 () Bool)

(declare-fun e!3629218 () (InoxSet Context!10722))

(declare-fun e!3629217 () (InoxSet Context!10722))

(assert (=> b!5929425 (= e!3629218 e!3629217)))

(declare-fun c!1054038 () Bool)

(assert (=> b!5929425 (= c!1054038 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))

(declare-fun b!5929426 () Bool)

(declare-fun e!3629222 () (InoxSet Context!10722))

(assert (=> b!5929426 (= e!3629221 e!3629222)))

(declare-fun c!1054039 () Bool)

(assert (=> b!5929426 (= c!1054039 ((_ is Union!15977) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))

(declare-fun b!5929427 () Bool)

(declare-fun e!3629220 () Bool)

(assert (=> b!5929427 (= e!3629220 (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))

(declare-fun bm!470577 () Bool)

(declare-fun call!470581 () List!64230)

(declare-fun call!470585 () List!64230)

(assert (=> bm!470577 (= call!470581 call!470585)))

(declare-fun b!5929428 () Bool)

(declare-fun call!470584 () (InoxSet Context!10722))

(assert (=> b!5929428 (= e!3629218 ((_ map or) call!470584 call!470583))))

(declare-fun bm!470578 () Bool)

(declare-fun c!1054040 () Bool)

(assert (=> bm!470578 (= call!470585 ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))) (ite (or c!1054040 c!1054038) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))

(declare-fun b!5929429 () Bool)

(assert (=> b!5929429 (= e!3629219 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929430 () Bool)

(assert (=> b!5929430 (= e!3629217 call!470582)))

(declare-fun b!5929431 () Bool)

(assert (=> b!5929431 (= e!3629221 (store ((as const (Array Context!10722 Bool)) false) (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) true))))

(declare-fun bm!470579 () Bool)

(assert (=> bm!470579 (= call!470584 (derivationStepZipperDown!1227 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))) (ite c!1054039 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470585)) (h!70556 s!2326)))))

(declare-fun bm!470580 () Bool)

(assert (=> bm!470580 (= call!470580 (derivationStepZipperDown!1227 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))) (ite (or c!1054039 c!1054040) (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470581)) (h!70556 s!2326)))))

(declare-fun b!5929432 () Bool)

(assert (=> b!5929432 (= c!1054040 e!3629220)))

(declare-fun res!2484649 () Bool)

(assert (=> b!5929432 (=> (not res!2484649) (not e!3629220))))

(assert (=> b!5929432 (= res!2484649 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))

(assert (=> b!5929432 (= e!3629222 e!3629218)))

(declare-fun b!5929433 () Bool)

(assert (=> b!5929433 (= e!3629222 ((_ map or) call!470584 call!470580))))

(declare-fun b!5929434 () Bool)

(declare-fun c!1054042 () Bool)

(assert (=> b!5929434 (= c!1054042 ((_ is Star!15977) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))

(assert (=> b!5929434 (= e!3629217 e!3629219)))

(assert (= (and d!1859034 c!1054041) b!5929431))

(assert (= (and d!1859034 (not c!1054041)) b!5929426))

(assert (= (and b!5929426 c!1054039) b!5929433))

(assert (= (and b!5929426 (not c!1054039)) b!5929432))

(assert (= (and b!5929432 res!2484649) b!5929427))

(assert (= (and b!5929432 c!1054040) b!5929428))

(assert (= (and b!5929432 (not c!1054040)) b!5929425))

(assert (= (and b!5929425 c!1054038) b!5929430))

(assert (= (and b!5929425 (not c!1054038)) b!5929434))

(assert (= (and b!5929434 c!1054042) b!5929424))

(assert (= (and b!5929434 (not c!1054042)) b!5929429))

(assert (= (or b!5929430 b!5929424) bm!470577))

(assert (= (or b!5929430 b!5929424) bm!470576))

(assert (= (or b!5929428 bm!470577) bm!470578))

(assert (= (or b!5929428 bm!470576) bm!470575))

(assert (= (or b!5929433 bm!470575) bm!470580))

(assert (= (or b!5929433 b!5929428) bm!470579))

(declare-fun m!6822480 () Bool)

(assert (=> b!5929431 m!6822480))

(declare-fun m!6822482 () Bool)

(assert (=> bm!470578 m!6822482))

(declare-fun m!6822484 () Bool)

(assert (=> bm!470580 m!6822484))

(declare-fun m!6822486 () Bool)

(assert (=> bm!470579 m!6822486))

(declare-fun m!6822488 () Bool)

(assert (=> b!5929427 m!6822488))

(assert (=> bm!470472 d!1859034))

(declare-fun d!1859038 () Bool)

(declare-fun res!2484652 () Bool)

(declare-fun e!3629225 () Bool)

(assert (=> d!1859038 (=> res!2484652 e!3629225)))

(assert (=> d!1859038 (= res!2484652 ((_ is Nil!64106) (exprs!5861 setElem!40242)))))

(assert (=> d!1859038 (= (forall!15060 (exprs!5861 setElem!40242) lambda!323389) e!3629225)))

(declare-fun b!5929439 () Bool)

(declare-fun e!3629226 () Bool)

(assert (=> b!5929439 (= e!3629225 e!3629226)))

(declare-fun res!2484653 () Bool)

(assert (=> b!5929439 (=> (not res!2484653) (not e!3629226))))

(assert (=> b!5929439 (= res!2484653 (dynLambda!25069 lambda!323389 (h!70554 (exprs!5861 setElem!40242))))))

(declare-fun b!5929440 () Bool)

(assert (=> b!5929440 (= e!3629226 (forall!15060 (t!377627 (exprs!5861 setElem!40242)) lambda!323389))))

(assert (= (and d!1859038 (not res!2484652)) b!5929439))

(assert (= (and b!5929439 res!2484653) b!5929440))

(declare-fun b_lambda!222687 () Bool)

(assert (=> (not b_lambda!222687) (not b!5929439)))

(declare-fun m!6822494 () Bool)

(assert (=> b!5929439 m!6822494))

(declare-fun m!6822498 () Bool)

(assert (=> b!5929440 m!6822498))

(assert (=> d!1858760 d!1859038))

(assert (=> d!1858796 d!1858872))

(assert (=> d!1858796 d!1858802))

(declare-fun bs!1402978 () Bool)

(declare-fun d!1859040 () Bool)

(assert (= bs!1402978 (and d!1859040 d!1858796)))

(declare-fun lambda!323432 () Int)

(assert (=> bs!1402978 (= lambda!323432 lambda!323405)))

(declare-fun bs!1402979 () Bool)

(assert (= bs!1402979 (and d!1859040 b!5928495)))

(assert (=> bs!1402979 (not (= lambda!323432 lambda!323372))))

(declare-fun bs!1402980 () Bool)

(assert (= bs!1402980 (and d!1859040 d!1858800)))

(assert (=> bs!1402980 (not (= lambda!323432 lambda!323411))))

(declare-fun bs!1402981 () Bool)

(assert (= bs!1402981 (and d!1859040 b!5928274)))

(assert (=> bs!1402981 (= lambda!323432 lambda!323346)))

(declare-fun bs!1402983 () Bool)

(assert (= bs!1402983 (and d!1859040 b!5928496)))

(assert (=> bs!1402983 (not (= lambda!323432 lambda!323370))))

(assert (=> bs!1402981 (not (= lambda!323432 lambda!323347))))

(declare-fun bs!1402985 () Bool)

(assert (= bs!1402985 (and d!1859040 d!1858862)))

(assert (=> bs!1402985 (not (= lambda!323432 lambda!323419))))

(assert (=> bs!1402980 (= lambda!323432 lambda!323410)))

(assert (=> bs!1402985 (= lambda!323432 lambda!323418)))

(assert (=> d!1859040 true))

(assert (=> d!1859040 true))

(assert (=> d!1859040 true))

(assert (=> d!1859040 (= (isDefined!12571 (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) Nil!64108 s!2326 s!2326)) (Exists!3047 lambda!323432))))

(assert (=> d!1859040 true))

(declare-fun _$89!1984 () Unit!157225)

(assert (=> d!1859040 (= (choose!44704 (regOne!32466 r!7292) (regTwo!32466 r!7292) s!2326) _$89!1984)))

(declare-fun bs!1402986 () Bool)

(assert (= bs!1402986 d!1859040))

(assert (=> bs!1402986 m!6821612))

(assert (=> bs!1402986 m!6821612))

(assert (=> bs!1402986 m!6821614))

(declare-fun m!6822556 () Bool)

(assert (=> bs!1402986 m!6822556))

(assert (=> d!1858796 d!1859040))

(declare-fun d!1859058 () Bool)

(assert (=> d!1859058 (= (Exists!3047 lambda!323405) (choose!44703 lambda!323405))))

(declare-fun bs!1402987 () Bool)

(assert (= bs!1402987 d!1859058))

(declare-fun m!6822558 () Bool)

(assert (=> bs!1402987 m!6822558))

(assert (=> d!1858796 d!1859058))

(assert (=> d!1858796 d!1858792))

(declare-fun b!5929460 () Bool)

(declare-fun e!3629244 () Bool)

(assert (=> b!5929460 (= e!3629244 (= (head!12495 (tail!11580 s!2326)) (c!1053727 (derivativeStep!4708 r!7292 (head!12495 s!2326)))))))

(declare-fun b!5929461 () Bool)

(declare-fun e!3629240 () Bool)

(assert (=> b!5929461 (= e!3629240 (matchR!8160 (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326))) (tail!11580 (tail!11580 s!2326))))))

(declare-fun b!5929462 () Bool)

(declare-fun e!3629243 () Bool)

(declare-fun lt!2310692 () Bool)

(assert (=> b!5929462 (= e!3629243 (not lt!2310692))))

(declare-fun b!5929463 () Bool)

(declare-fun e!3629239 () Bool)

(declare-fun e!3629241 () Bool)

(assert (=> b!5929463 (= e!3629239 e!3629241)))

(declare-fun res!2484667 () Bool)

(assert (=> b!5929463 (=> res!2484667 e!3629241)))

(declare-fun call!470586 () Bool)

(assert (=> b!5929463 (= res!2484667 call!470586)))

(declare-fun b!5929464 () Bool)

(declare-fun e!3629238 () Bool)

(assert (=> b!5929464 (= e!3629238 (= lt!2310692 call!470586))))

(declare-fun b!5929465 () Bool)

(declare-fun res!2484673 () Bool)

(assert (=> b!5929465 (=> (not res!2484673) (not e!3629244))))

(assert (=> b!5929465 (= res!2484673 (not call!470586))))

(declare-fun bm!470581 () Bool)

(assert (=> bm!470581 (= call!470586 (isEmpty!35972 (tail!11580 s!2326)))))

(declare-fun b!5929466 () Bool)

(assert (=> b!5929466 (= e!3629238 e!3629243)))

(declare-fun c!1054048 () Bool)

(assert (=> b!5929466 (= c!1054048 ((_ is EmptyLang!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(declare-fun b!5929467 () Bool)

(declare-fun res!2484674 () Bool)

(assert (=> b!5929467 (=> res!2484674 e!3629241)))

(assert (=> b!5929467 (= res!2484674 (not (isEmpty!35972 (tail!11580 (tail!11580 s!2326)))))))

(declare-fun b!5929468 () Bool)

(declare-fun res!2484671 () Bool)

(assert (=> b!5929468 (=> (not res!2484671) (not e!3629244))))

(assert (=> b!5929468 (= res!2484671 (isEmpty!35972 (tail!11580 (tail!11580 s!2326))))))

(declare-fun d!1859060 () Bool)

(assert (=> d!1859060 e!3629238))

(declare-fun c!1054049 () Bool)

(assert (=> d!1859060 (= c!1054049 ((_ is EmptyExpr!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(assert (=> d!1859060 (= lt!2310692 e!3629240)))

(declare-fun c!1054047 () Bool)

(assert (=> d!1859060 (= c!1054047 (isEmpty!35972 (tail!11580 s!2326)))))

(assert (=> d!1859060 (validRegex!7713 (derivativeStep!4708 r!7292 (head!12495 s!2326)))))

(assert (=> d!1859060 (= (matchR!8160 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (tail!11580 s!2326)) lt!2310692)))

(declare-fun b!5929469 () Bool)

(declare-fun res!2484668 () Bool)

(declare-fun e!3629242 () Bool)

(assert (=> b!5929469 (=> res!2484668 e!3629242)))

(assert (=> b!5929469 (= res!2484668 (not ((_ is ElementMatch!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326)))))))

(assert (=> b!5929469 (= e!3629243 e!3629242)))

(declare-fun b!5929470 () Bool)

(assert (=> b!5929470 (= e!3629241 (not (= (head!12495 (tail!11580 s!2326)) (c!1053727 (derivativeStep!4708 r!7292 (head!12495 s!2326))))))))

(declare-fun b!5929471 () Bool)

(assert (=> b!5929471 (= e!3629242 e!3629239)))

(declare-fun res!2484670 () Bool)

(assert (=> b!5929471 (=> (not res!2484670) (not e!3629239))))

(assert (=> b!5929471 (= res!2484670 (not lt!2310692))))

(declare-fun b!5929472 () Bool)

(assert (=> b!5929472 (= e!3629240 (nullable!5972 (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(declare-fun b!5929473 () Bool)

(declare-fun res!2484672 () Bool)

(assert (=> b!5929473 (=> res!2484672 e!3629242)))

(assert (=> b!5929473 (= res!2484672 e!3629244)))

(declare-fun res!2484669 () Bool)

(assert (=> b!5929473 (=> (not res!2484669) (not e!3629244))))

(assert (=> b!5929473 (= res!2484669 lt!2310692)))

(assert (= (and d!1859060 c!1054047) b!5929472))

(assert (= (and d!1859060 (not c!1054047)) b!5929461))

(assert (= (and d!1859060 c!1054049) b!5929464))

(assert (= (and d!1859060 (not c!1054049)) b!5929466))

(assert (= (and b!5929466 c!1054048) b!5929462))

(assert (= (and b!5929466 (not c!1054048)) b!5929469))

(assert (= (and b!5929469 (not res!2484668)) b!5929473))

(assert (= (and b!5929473 res!2484669) b!5929465))

(assert (= (and b!5929465 res!2484673) b!5929468))

(assert (= (and b!5929468 res!2484671) b!5929460))

(assert (= (and b!5929473 (not res!2484672)) b!5929471))

(assert (= (and b!5929471 res!2484670) b!5929463))

(assert (= (and b!5929463 (not res!2484667)) b!5929467))

(assert (= (and b!5929467 (not res!2484674)) b!5929470))

(assert (= (or b!5929464 b!5929463 b!5929465) bm!470581))

(assert (=> b!5929467 m!6821748))

(declare-fun m!6822560 () Bool)

(assert (=> b!5929467 m!6822560))

(assert (=> b!5929467 m!6822560))

(declare-fun m!6822562 () Bool)

(assert (=> b!5929467 m!6822562))

(assert (=> b!5929461 m!6821748))

(declare-fun m!6822564 () Bool)

(assert (=> b!5929461 m!6822564))

(assert (=> b!5929461 m!6821754))

(assert (=> b!5929461 m!6822564))

(declare-fun m!6822566 () Bool)

(assert (=> b!5929461 m!6822566))

(assert (=> b!5929461 m!6821748))

(assert (=> b!5929461 m!6822560))

(assert (=> b!5929461 m!6822566))

(assert (=> b!5929461 m!6822560))

(declare-fun m!6822568 () Bool)

(assert (=> b!5929461 m!6822568))

(assert (=> d!1859060 m!6821748))

(assert (=> d!1859060 m!6821750))

(assert (=> d!1859060 m!6821754))

(declare-fun m!6822570 () Bool)

(assert (=> d!1859060 m!6822570))

(assert (=> b!5929468 m!6821748))

(assert (=> b!5929468 m!6822560))

(assert (=> b!5929468 m!6822560))

(assert (=> b!5929468 m!6822562))

(assert (=> b!5929472 m!6821754))

(declare-fun m!6822572 () Bool)

(assert (=> b!5929472 m!6822572))

(assert (=> bm!470581 m!6821748))

(assert (=> bm!470581 m!6821750))

(assert (=> b!5929460 m!6821748))

(assert (=> b!5929460 m!6822564))

(assert (=> b!5929470 m!6821748))

(assert (=> b!5929470 m!6822564))

(assert (=> b!5928591 d!1859060))

(declare-fun b!5929513 () Bool)

(declare-fun c!1054068 () Bool)

(assert (=> b!5929513 (= c!1054068 (nullable!5972 (regOne!32466 r!7292)))))

(declare-fun e!3629269 () Regex!15977)

(declare-fun e!3629267 () Regex!15977)

(assert (=> b!5929513 (= e!3629269 e!3629267)))

(declare-fun d!1859062 () Bool)

(declare-fun lt!2310695 () Regex!15977)

(assert (=> d!1859062 (validRegex!7713 lt!2310695)))

(declare-fun e!3629270 () Regex!15977)

(assert (=> d!1859062 (= lt!2310695 e!3629270)))

(declare-fun c!1054066 () Bool)

(assert (=> d!1859062 (= c!1054066 (or ((_ is EmptyExpr!15977) r!7292) ((_ is EmptyLang!15977) r!7292)))))

(assert (=> d!1859062 (validRegex!7713 r!7292)))

(assert (=> d!1859062 (= (derivativeStep!4708 r!7292 (head!12495 s!2326)) lt!2310695)))

(declare-fun b!5929514 () Bool)

(declare-fun e!3629266 () Regex!15977)

(assert (=> b!5929514 (= e!3629270 e!3629266)))

(declare-fun c!1054065 () Bool)

(assert (=> b!5929514 (= c!1054065 ((_ is ElementMatch!15977) r!7292))))

(declare-fun call!470598 () Regex!15977)

(declare-fun b!5929515 () Bool)

(declare-fun call!470600 () Regex!15977)

(assert (=> b!5929515 (= e!3629267 (Union!15977 (Concat!24822 call!470598 (regTwo!32466 r!7292)) call!470600))))

(declare-fun b!5929516 () Bool)

(declare-fun e!3629268 () Regex!15977)

(assert (=> b!5929516 (= e!3629268 e!3629269)))

(declare-fun c!1054064 () Bool)

(assert (=> b!5929516 (= c!1054064 ((_ is Star!15977) r!7292))))

(declare-fun b!5929517 () Bool)

(declare-fun c!1054067 () Bool)

(assert (=> b!5929517 (= c!1054067 ((_ is Union!15977) r!7292))))

(assert (=> b!5929517 (= e!3629266 e!3629268)))

(declare-fun b!5929518 () Bool)

(declare-fun call!470599 () Regex!15977)

(assert (=> b!5929518 (= e!3629269 (Concat!24822 call!470599 r!7292))))

(declare-fun b!5929519 () Bool)

(declare-fun call!470597 () Regex!15977)

(assert (=> b!5929519 (= e!3629268 (Union!15977 call!470597 call!470598))))

(declare-fun bm!470592 () Bool)

(assert (=> bm!470592 (= call!470597 (derivativeStep!4708 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))) (head!12495 s!2326)))))

(declare-fun b!5929520 () Bool)

(assert (=> b!5929520 (= e!3629267 (Union!15977 (Concat!24822 call!470600 (regTwo!32466 r!7292)) EmptyLang!15977))))

(declare-fun b!5929521 () Bool)

(assert (=> b!5929521 (= e!3629266 (ite (= (head!12495 s!2326) (c!1053727 r!7292)) EmptyExpr!15977 EmptyLang!15977))))

(declare-fun bm!470593 () Bool)

(assert (=> bm!470593 (= call!470599 call!470597)))

(declare-fun bm!470594 () Bool)

(assert (=> bm!470594 (= call!470600 call!470599)))

(declare-fun bm!470595 () Bool)

(assert (=> bm!470595 (= call!470598 (derivativeStep!4708 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)) (head!12495 s!2326)))))

(declare-fun b!5929522 () Bool)

(assert (=> b!5929522 (= e!3629270 EmptyLang!15977)))

(assert (= (and d!1859062 c!1054066) b!5929522))

(assert (= (and d!1859062 (not c!1054066)) b!5929514))

(assert (= (and b!5929514 c!1054065) b!5929521))

(assert (= (and b!5929514 (not c!1054065)) b!5929517))

(assert (= (and b!5929517 c!1054067) b!5929519))

(assert (= (and b!5929517 (not c!1054067)) b!5929516))

(assert (= (and b!5929516 c!1054064) b!5929518))

(assert (= (and b!5929516 (not c!1054064)) b!5929513))

(assert (= (and b!5929513 c!1054068) b!5929515))

(assert (= (and b!5929513 (not c!1054068)) b!5929520))

(assert (= (or b!5929515 b!5929520) bm!470594))

(assert (= (or b!5929518 bm!470594) bm!470593))

(assert (= (or b!5929519 b!5929515) bm!470595))

(assert (= (or b!5929519 bm!470593) bm!470592))

(assert (=> b!5929513 m!6821828))

(declare-fun m!6822578 () Bool)

(assert (=> d!1859062 m!6822578))

(assert (=> d!1859062 m!6821588))

(assert (=> bm!470592 m!6821752))

(declare-fun m!6822580 () Bool)

(assert (=> bm!470592 m!6822580))

(assert (=> bm!470595 m!6821752))

(declare-fun m!6822582 () Bool)

(assert (=> bm!470595 m!6822582))

(assert (=> b!5928591 d!1859062))

(assert (=> b!5928591 d!1858890))

(assert (=> b!5928591 d!1858978))

(declare-fun d!1859066 () Bool)

(assert (=> d!1859066 (= (isUnion!844 lt!2310630) ((_ is Union!15977) lt!2310630))))

(assert (=> b!5928788 d!1859066))

(assert (=> bs!1402883 d!1858786))

(assert (=> b!5928886 d!1859022))

(declare-fun b!5929524 () Bool)

(declare-fun e!3629271 () Bool)

(declare-fun e!3629273 () Bool)

(assert (=> b!5929524 (= e!3629271 e!3629273)))

(declare-fun res!2484689 () Bool)

(assert (=> b!5929524 (= res!2484689 (not (nullable!5972 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))

(assert (=> b!5929524 (=> (not res!2484689) (not e!3629273))))

(declare-fun b!5929525 () Bool)

(declare-fun res!2484687 () Bool)

(declare-fun e!3629272 () Bool)

(assert (=> b!5929525 (=> res!2484687 e!3629272)))

(assert (=> b!5929525 (= res!2484687 (not ((_ is Concat!24822) (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))

(declare-fun e!3629277 () Bool)

(assert (=> b!5929525 (= e!3629277 e!3629272)))

(declare-fun b!5929526 () Bool)

(declare-fun e!3629274 () Bool)

(declare-fun call!470602 () Bool)

(assert (=> b!5929526 (= e!3629274 call!470602)))

(declare-fun bm!470596 () Bool)

(declare-fun call!470601 () Bool)

(assert (=> bm!470596 (= call!470602 call!470601)))

(declare-fun b!5929527 () Bool)

(declare-fun e!3629275 () Bool)

(assert (=> b!5929527 (= e!3629275 e!3629271)))

(declare-fun c!1054070 () Bool)

(assert (=> b!5929527 (= c!1054070 ((_ is Star!15977) (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))

(declare-fun b!5929528 () Bool)

(assert (=> b!5929528 (= e!3629272 e!3629274)))

(declare-fun res!2484690 () Bool)

(assert (=> b!5929528 (=> (not res!2484690) (not e!3629274))))

(declare-fun call!470603 () Bool)

(assert (=> b!5929528 (= res!2484690 call!470603)))

(declare-fun b!5929529 () Bool)

(assert (=> b!5929529 (= e!3629273 call!470601)))

(declare-fun c!1054069 () Bool)

(declare-fun bm!470597 () Bool)

(assert (=> bm!470597 (= call!470601 (validRegex!7713 (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))

(declare-fun b!5929530 () Bool)

(assert (=> b!5929530 (= e!3629271 e!3629277)))

(assert (=> b!5929530 (= c!1054069 ((_ is Union!15977) (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))

(declare-fun b!5929523 () Bool)

(declare-fun res!2484688 () Bool)

(declare-fun e!3629276 () Bool)

(assert (=> b!5929523 (=> (not res!2484688) (not e!3629276))))

(assert (=> b!5929523 (= res!2484688 call!470603)))

(assert (=> b!5929523 (= e!3629277 e!3629276)))

(declare-fun d!1859068 () Bool)

(declare-fun res!2484686 () Bool)

(assert (=> d!1859068 (=> res!2484686 e!3629275)))

(assert (=> d!1859068 (= res!2484686 ((_ is ElementMatch!15977) (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))

(assert (=> d!1859068 (= (validRegex!7713 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) e!3629275)))

(declare-fun b!5929531 () Bool)

(assert (=> b!5929531 (= e!3629276 call!470602)))

(declare-fun bm!470598 () Bool)

(assert (=> bm!470598 (= call!470603 (validRegex!7713 (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))

(assert (= (and d!1859068 (not res!2484686)) b!5929527))

(assert (= (and b!5929527 c!1054070) b!5929524))

(assert (= (and b!5929527 (not c!1054070)) b!5929530))

(assert (= (and b!5929524 res!2484689) b!5929529))

(assert (= (and b!5929530 c!1054069) b!5929523))

(assert (= (and b!5929530 (not c!1054069)) b!5929525))

(assert (= (and b!5929523 res!2484688) b!5929531))

(assert (= (and b!5929525 (not res!2484687)) b!5929528))

(assert (= (and b!5929528 res!2484690) b!5929526))

(assert (= (or b!5929531 b!5929526) bm!470596))

(assert (= (or b!5929523 b!5929528) bm!470598))

(assert (= (or b!5929529 bm!470596) bm!470597))

(declare-fun m!6822584 () Bool)

(assert (=> b!5929524 m!6822584))

(declare-fun m!6822586 () Bool)

(assert (=> bm!470597 m!6822586))

(declare-fun m!6822588 () Bool)

(assert (=> bm!470598 m!6822588))

(assert (=> bm!470482 d!1859068))

(declare-fun d!1859070 () Bool)

(assert (=> d!1859070 (= (isEmpty!35969 (tail!11581 (exprs!5861 (h!70555 zl!343)))) ((_ is Nil!64106) (tail!11581 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> b!5928859 d!1859070))

(declare-fun d!1859072 () Bool)

(assert (=> d!1859072 (= (tail!11581 (exprs!5861 (h!70555 zl!343))) (t!377627 (exprs!5861 (h!70555 zl!343))))))

(assert (=> b!5928859 d!1859072))

(declare-fun bs!1403016 () Bool)

(declare-fun d!1859074 () Bool)

(assert (= bs!1403016 (and d!1859074 d!1859016)))

(declare-fun lambda!323441 () Int)

(assert (=> bs!1403016 (= lambda!323441 lambda!323429)))

(declare-fun bs!1403017 () Bool)

(assert (= bs!1403017 (and d!1859074 d!1858790)))

(assert (=> bs!1403017 (= lambda!323441 lambda!323402)))

(declare-fun bs!1403018 () Bool)

(assert (= bs!1403018 (and d!1859074 d!1858772)))

(assert (=> bs!1403018 (= lambda!323441 lambda!323393)))

(declare-fun bs!1403019 () Bool)

(assert (= bs!1403019 (and d!1859074 d!1858760)))

(assert (=> bs!1403019 (= lambda!323441 lambda!323389)))

(declare-fun bs!1403020 () Bool)

(assert (= bs!1403020 (and d!1859074 d!1858764)))

(assert (=> bs!1403020 (= lambda!323441 lambda!323390)))

(declare-fun bs!1403021 () Bool)

(assert (= bs!1403021 (and d!1859074 d!1858804)))

(assert (=> bs!1403021 (= lambda!323441 lambda!323412)))

(declare-fun bs!1403022 () Bool)

(assert (= bs!1403022 (and d!1859074 d!1858774)))

(assert (=> bs!1403022 (= lambda!323441 lambda!323396)))

(declare-fun bs!1403023 () Bool)

(assert (= bs!1403023 (and d!1859074 d!1858900)))

(assert (=> bs!1403023 (= lambda!323441 lambda!323422)))

(declare-fun bs!1403024 () Bool)

(assert (= bs!1403024 (and d!1859074 d!1858920)))

(assert (=> bs!1403024 (= lambda!323441 lambda!323425)))

(assert (=> d!1859074 (= (inv!83189 setElem!40248) (forall!15060 (exprs!5861 setElem!40248) lambda!323441))))

(declare-fun bs!1403025 () Bool)

(assert (= bs!1403025 d!1859074))

(declare-fun m!6822596 () Bool)

(assert (=> bs!1403025 m!6822596))

(assert (=> setNonEmpty!40248 d!1859074))

(declare-fun d!1859078 () Bool)

(assert (=> d!1859078 (= (isEmpty!35969 (tail!11581 (unfocusZipperList!1398 zl!343))) ((_ is Nil!64106) (tail!11581 (unfocusZipperList!1398 zl!343))))))

(assert (=> b!5928790 d!1859078))

(declare-fun d!1859080 () Bool)

(assert (=> d!1859080 (= (tail!11581 (unfocusZipperList!1398 zl!343)) (t!377627 (unfocusZipperList!1398 zl!343)))))

(assert (=> b!5928790 d!1859080))

(assert (=> d!1858712 d!1858836))

(assert (=> d!1858712 d!1858780))

(assert (=> bm!470449 d!1858836))

(declare-fun d!1859082 () Bool)

(assert (=> d!1859082 (= (head!12496 (unfocusZipperList!1398 zl!343)) (h!70554 (unfocusZipperList!1398 zl!343)))))

(assert (=> b!5928791 d!1859082))

(declare-fun b!5929542 () Bool)

(declare-fun e!3629290 () Bool)

(assert (=> b!5929542 (= e!3629290 (= (head!12495 (_1!36259 (get!22078 lt!2310648))) (c!1053727 (regOne!32466 r!7292))))))

(declare-fun b!5929543 () Bool)

(declare-fun e!3629286 () Bool)

(assert (=> b!5929543 (= e!3629286 (matchR!8160 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648)))) (tail!11580 (_1!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5929544 () Bool)

(declare-fun e!3629289 () Bool)

(declare-fun lt!2310697 () Bool)

(assert (=> b!5929544 (= e!3629289 (not lt!2310697))))

(declare-fun b!5929545 () Bool)

(declare-fun e!3629285 () Bool)

(declare-fun e!3629287 () Bool)

(assert (=> b!5929545 (= e!3629285 e!3629287)))

(declare-fun res!2484693 () Bool)

(assert (=> b!5929545 (=> res!2484693 e!3629287)))

(declare-fun call!470604 () Bool)

(assert (=> b!5929545 (= res!2484693 call!470604)))

(declare-fun b!5929546 () Bool)

(declare-fun e!3629284 () Bool)

(assert (=> b!5929546 (= e!3629284 (= lt!2310697 call!470604))))

(declare-fun b!5929547 () Bool)

(declare-fun res!2484699 () Bool)

(assert (=> b!5929547 (=> (not res!2484699) (not e!3629290))))

(assert (=> b!5929547 (= res!2484699 (not call!470604))))

(declare-fun bm!470599 () Bool)

(assert (=> bm!470599 (= call!470604 (isEmpty!35972 (_1!36259 (get!22078 lt!2310648))))))

(declare-fun b!5929548 () Bool)

(assert (=> b!5929548 (= e!3629284 e!3629289)))

(declare-fun c!1054076 () Bool)

(assert (=> b!5929548 (= c!1054076 ((_ is EmptyLang!15977) (regOne!32466 r!7292)))))

(declare-fun b!5929549 () Bool)

(declare-fun res!2484700 () Bool)

(assert (=> b!5929549 (=> res!2484700 e!3629287)))

(assert (=> b!5929549 (= res!2484700 (not (isEmpty!35972 (tail!11580 (_1!36259 (get!22078 lt!2310648))))))))

(declare-fun b!5929550 () Bool)

(declare-fun res!2484697 () Bool)

(assert (=> b!5929550 (=> (not res!2484697) (not e!3629290))))

(assert (=> b!5929550 (= res!2484697 (isEmpty!35972 (tail!11580 (_1!36259 (get!22078 lt!2310648)))))))

(declare-fun d!1859084 () Bool)

(assert (=> d!1859084 e!3629284))

(declare-fun c!1054077 () Bool)

(assert (=> d!1859084 (= c!1054077 ((_ is EmptyExpr!15977) (regOne!32466 r!7292)))))

(assert (=> d!1859084 (= lt!2310697 e!3629286)))

(declare-fun c!1054075 () Bool)

(assert (=> d!1859084 (= c!1054075 (isEmpty!35972 (_1!36259 (get!22078 lt!2310648))))))

(assert (=> d!1859084 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1859084 (= (matchR!8160 (regOne!32466 r!7292) (_1!36259 (get!22078 lt!2310648))) lt!2310697)))

(declare-fun b!5929551 () Bool)

(declare-fun res!2484694 () Bool)

(declare-fun e!3629288 () Bool)

(assert (=> b!5929551 (=> res!2484694 e!3629288)))

(assert (=> b!5929551 (= res!2484694 (not ((_ is ElementMatch!15977) (regOne!32466 r!7292))))))

(assert (=> b!5929551 (= e!3629289 e!3629288)))

(declare-fun b!5929552 () Bool)

(assert (=> b!5929552 (= e!3629287 (not (= (head!12495 (_1!36259 (get!22078 lt!2310648))) (c!1053727 (regOne!32466 r!7292)))))))

(declare-fun b!5929553 () Bool)

(assert (=> b!5929553 (= e!3629288 e!3629285)))

(declare-fun res!2484696 () Bool)

(assert (=> b!5929553 (=> (not res!2484696) (not e!3629285))))

(assert (=> b!5929553 (= res!2484696 (not lt!2310697))))

(declare-fun b!5929554 () Bool)

(assert (=> b!5929554 (= e!3629286 (nullable!5972 (regOne!32466 r!7292)))))

(declare-fun b!5929555 () Bool)

(declare-fun res!2484698 () Bool)

(assert (=> b!5929555 (=> res!2484698 e!3629288)))

(assert (=> b!5929555 (= res!2484698 e!3629290)))

(declare-fun res!2484695 () Bool)

(assert (=> b!5929555 (=> (not res!2484695) (not e!3629290))))

(assert (=> b!5929555 (= res!2484695 lt!2310697)))

(assert (= (and d!1859084 c!1054075) b!5929554))

(assert (= (and d!1859084 (not c!1054075)) b!5929543))

(assert (= (and d!1859084 c!1054077) b!5929546))

(assert (= (and d!1859084 (not c!1054077)) b!5929548))

(assert (= (and b!5929548 c!1054076) b!5929544))

(assert (= (and b!5929548 (not c!1054076)) b!5929551))

(assert (= (and b!5929551 (not res!2484694)) b!5929555))

(assert (= (and b!5929555 res!2484695) b!5929547))

(assert (= (and b!5929547 res!2484699) b!5929550))

(assert (= (and b!5929550 res!2484697) b!5929542))

(assert (= (and b!5929555 (not res!2484698)) b!5929553))

(assert (= (and b!5929553 res!2484696) b!5929545))

(assert (= (and b!5929545 (not res!2484693)) b!5929549))

(assert (= (and b!5929549 (not res!2484700)) b!5929552))

(assert (= (or b!5929546 b!5929545 b!5929547) bm!470599))

(declare-fun m!6822608 () Bool)

(assert (=> b!5929549 m!6822608))

(assert (=> b!5929549 m!6822608))

(declare-fun m!6822616 () Bool)

(assert (=> b!5929549 m!6822616))

(declare-fun m!6822620 () Bool)

(assert (=> b!5929543 m!6822620))

(assert (=> b!5929543 m!6822620))

(declare-fun m!6822622 () Bool)

(assert (=> b!5929543 m!6822622))

(assert (=> b!5929543 m!6822608))

(assert (=> b!5929543 m!6822622))

(assert (=> b!5929543 m!6822608))

(declare-fun m!6822624 () Bool)

(assert (=> b!5929543 m!6822624))

(declare-fun m!6822626 () Bool)

(assert (=> d!1859084 m!6822626))

(assert (=> d!1859084 m!6821952))

(assert (=> b!5929550 m!6822608))

(assert (=> b!5929550 m!6822608))

(assert (=> b!5929550 m!6822616))

(assert (=> b!5929554 m!6821828))

(assert (=> bm!470599 m!6822626))

(assert (=> b!5929542 m!6822620))

(assert (=> b!5929552 m!6822620))

(assert (=> b!5928891 d!1859084))

(assert (=> b!5928891 d!1858908))

(assert (=> b!5928597 d!1858976))

(assert (=> b!5928597 d!1858978))

(declare-fun b!5929556 () Bool)

(declare-fun e!3629297 () Bool)

(assert (=> b!5929556 (= e!3629297 (= (head!12495 s!2326) (c!1053727 (regTwo!32466 r!7292))))))

(declare-fun b!5929557 () Bool)

(declare-fun e!3629293 () Bool)

(assert (=> b!5929557 (= e!3629293 (matchR!8160 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326)) (tail!11580 s!2326)))))

(declare-fun b!5929558 () Bool)

(declare-fun e!3629296 () Bool)

(declare-fun lt!2310698 () Bool)

(assert (=> b!5929558 (= e!3629296 (not lt!2310698))))

(declare-fun b!5929559 () Bool)

(declare-fun e!3629292 () Bool)

(declare-fun e!3629294 () Bool)

(assert (=> b!5929559 (= e!3629292 e!3629294)))

(declare-fun res!2484701 () Bool)

(assert (=> b!5929559 (=> res!2484701 e!3629294)))

(declare-fun call!470605 () Bool)

(assert (=> b!5929559 (= res!2484701 call!470605)))

(declare-fun b!5929560 () Bool)

(declare-fun e!3629291 () Bool)

(assert (=> b!5929560 (= e!3629291 (= lt!2310698 call!470605))))

(declare-fun b!5929561 () Bool)

(declare-fun res!2484707 () Bool)

(assert (=> b!5929561 (=> (not res!2484707) (not e!3629297))))

(assert (=> b!5929561 (= res!2484707 (not call!470605))))

(declare-fun bm!470600 () Bool)

(assert (=> bm!470600 (= call!470605 (isEmpty!35972 s!2326))))

(declare-fun b!5929562 () Bool)

(assert (=> b!5929562 (= e!3629291 e!3629296)))

(declare-fun c!1054079 () Bool)

(assert (=> b!5929562 (= c!1054079 ((_ is EmptyLang!15977) (regTwo!32466 r!7292)))))

(declare-fun b!5929563 () Bool)

(declare-fun res!2484708 () Bool)

(assert (=> b!5929563 (=> res!2484708 e!3629294)))

(assert (=> b!5929563 (= res!2484708 (not (isEmpty!35972 (tail!11580 s!2326))))))

(declare-fun b!5929564 () Bool)

(declare-fun res!2484705 () Bool)

(assert (=> b!5929564 (=> (not res!2484705) (not e!3629297))))

(assert (=> b!5929564 (= res!2484705 (isEmpty!35972 (tail!11580 s!2326)))))

(declare-fun d!1859088 () Bool)

(assert (=> d!1859088 e!3629291))

(declare-fun c!1054080 () Bool)

(assert (=> d!1859088 (= c!1054080 ((_ is EmptyExpr!15977) (regTwo!32466 r!7292)))))

(assert (=> d!1859088 (= lt!2310698 e!3629293)))

(declare-fun c!1054078 () Bool)

(assert (=> d!1859088 (= c!1054078 (isEmpty!35972 s!2326))))

(assert (=> d!1859088 (validRegex!7713 (regTwo!32466 r!7292))))

(assert (=> d!1859088 (= (matchR!8160 (regTwo!32466 r!7292) s!2326) lt!2310698)))

(declare-fun b!5929565 () Bool)

(declare-fun res!2484702 () Bool)

(declare-fun e!3629295 () Bool)

(assert (=> b!5929565 (=> res!2484702 e!3629295)))

(assert (=> b!5929565 (= res!2484702 (not ((_ is ElementMatch!15977) (regTwo!32466 r!7292))))))

(assert (=> b!5929565 (= e!3629296 e!3629295)))

(declare-fun b!5929566 () Bool)

(assert (=> b!5929566 (= e!3629294 (not (= (head!12495 s!2326) (c!1053727 (regTwo!32466 r!7292)))))))

(declare-fun b!5929567 () Bool)

(assert (=> b!5929567 (= e!3629295 e!3629292)))

(declare-fun res!2484704 () Bool)

(assert (=> b!5929567 (=> (not res!2484704) (not e!3629292))))

(assert (=> b!5929567 (= res!2484704 (not lt!2310698))))

(declare-fun b!5929568 () Bool)

(assert (=> b!5929568 (= e!3629293 (nullable!5972 (regTwo!32466 r!7292)))))

(declare-fun b!5929569 () Bool)

(declare-fun res!2484706 () Bool)

(assert (=> b!5929569 (=> res!2484706 e!3629295)))

(assert (=> b!5929569 (= res!2484706 e!3629297)))

(declare-fun res!2484703 () Bool)

(assert (=> b!5929569 (=> (not res!2484703) (not e!3629297))))

(assert (=> b!5929569 (= res!2484703 lt!2310698)))

(assert (= (and d!1859088 c!1054078) b!5929568))

(assert (= (and d!1859088 (not c!1054078)) b!5929557))

(assert (= (and d!1859088 c!1054080) b!5929560))

(assert (= (and d!1859088 (not c!1054080)) b!5929562))

(assert (= (and b!5929562 c!1054079) b!5929558))

(assert (= (and b!5929562 (not c!1054079)) b!5929565))

(assert (= (and b!5929565 (not res!2484702)) b!5929569))

(assert (= (and b!5929569 res!2484703) b!5929561))

(assert (= (and b!5929561 res!2484707) b!5929564))

(assert (= (and b!5929564 res!2484705) b!5929556))

(assert (= (and b!5929569 (not res!2484706)) b!5929567))

(assert (= (and b!5929567 res!2484704) b!5929559))

(assert (= (and b!5929559 (not res!2484701)) b!5929563))

(assert (= (and b!5929563 (not res!2484708)) b!5929566))

(assert (= (or b!5929560 b!5929559 b!5929561) bm!470600))

(assert (=> b!5929563 m!6821748))

(assert (=> b!5929563 m!6821748))

(assert (=> b!5929563 m!6821750))

(assert (=> b!5929557 m!6821752))

(assert (=> b!5929557 m!6821752))

(declare-fun m!6822628 () Bool)

(assert (=> b!5929557 m!6822628))

(assert (=> b!5929557 m!6821748))

(assert (=> b!5929557 m!6822628))

(assert (=> b!5929557 m!6821748))

(declare-fun m!6822630 () Bool)

(assert (=> b!5929557 m!6822630))

(assert (=> d!1859088 m!6821714))

(assert (=> d!1859088 m!6822168))

(assert (=> b!5929564 m!6821748))

(assert (=> b!5929564 m!6821748))

(assert (=> b!5929564 m!6821750))

(assert (=> b!5929568 m!6822170))

(assert (=> bm!470600 m!6821714))

(assert (=> b!5929556 m!6821752))

(assert (=> b!5929566 m!6821752))

(assert (=> b!5928893 d!1859088))

(declare-fun d!1859094 () Bool)

(assert (=> d!1859094 (= (head!12496 (exprs!5861 (h!70555 zl!343))) (h!70554 (exprs!5861 (h!70555 zl!343))))))

(assert (=> b!5928866 d!1859094))

(declare-fun d!1859096 () Bool)

(assert (=> d!1859096 (= (nullable!5972 (h!70554 (exprs!5861 (h!70555 zl!343)))) (nullableFct!1944 (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun bs!1403035 () Bool)

(assert (= bs!1403035 d!1859096))

(declare-fun m!6822634 () Bool)

(assert (=> bs!1403035 m!6822634))

(assert (=> b!5928833 d!1859096))

(declare-fun d!1859098 () Bool)

(assert (=> d!1859098 (= (isEmptyLang!1414 lt!2310630) ((_ is EmptyLang!15977) lt!2310630))))

(assert (=> b!5928795 d!1859098))

(declare-fun d!1859104 () Bool)

(assert (=> d!1859104 (= (flatMap!1490 z!1189 lambda!323399) (choose!44701 z!1189 lambda!323399))))

(declare-fun bs!1403036 () Bool)

(assert (= bs!1403036 d!1859104))

(declare-fun m!6822644 () Bool)

(assert (=> bs!1403036 m!6822644))

(assert (=> d!1858782 d!1859104))

(declare-fun bm!470610 () Bool)

(declare-fun call!470618 () (InoxSet Context!10722))

(declare-fun call!470615 () (InoxSet Context!10722))

(assert (=> bm!470610 (= call!470618 call!470615)))

(declare-fun d!1859106 () Bool)

(declare-fun c!1054091 () Bool)

(assert (=> d!1859106 (= c!1054091 (and ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (= (c!1053727 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (h!70556 s!2326))))))

(declare-fun e!3629317 () (InoxSet Context!10722))

(assert (=> d!1859106 (= (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (h!70556 s!2326)) e!3629317)))

(declare-fun bm!470611 () Bool)

(declare-fun call!470617 () (InoxSet Context!10722))

(assert (=> bm!470611 (= call!470617 call!470618)))

(declare-fun b!5929592 () Bool)

(declare-fun e!3629315 () (InoxSet Context!10722))

(assert (=> b!5929592 (= e!3629315 call!470617)))

(declare-fun b!5929593 () Bool)

(declare-fun e!3629314 () (InoxSet Context!10722))

(declare-fun e!3629313 () (InoxSet Context!10722))

(assert (=> b!5929593 (= e!3629314 e!3629313)))

(declare-fun c!1054088 () Bool)

(assert (=> b!5929593 (= c!1054088 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))

(declare-fun b!5929594 () Bool)

(declare-fun e!3629318 () (InoxSet Context!10722))

(assert (=> b!5929594 (= e!3629317 e!3629318)))

(declare-fun c!1054089 () Bool)

(assert (=> b!5929594 (= c!1054089 ((_ is Union!15977) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))

(declare-fun b!5929595 () Bool)

(declare-fun e!3629316 () Bool)

(assert (=> b!5929595 (= e!3629316 (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))

(declare-fun bm!470612 () Bool)

(declare-fun call!470616 () List!64230)

(declare-fun call!470620 () List!64230)

(assert (=> bm!470612 (= call!470616 call!470620)))

(declare-fun b!5929596 () Bool)

(declare-fun call!470619 () (InoxSet Context!10722))

(assert (=> b!5929596 (= e!3629314 ((_ map or) call!470619 call!470618))))

(declare-fun bm!470613 () Bool)

(declare-fun c!1054090 () Bool)

(assert (=> bm!470613 (= call!470620 ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))) (ite (or c!1054090 c!1054088) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))

(declare-fun b!5929597 () Bool)

(assert (=> b!5929597 (= e!3629315 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929598 () Bool)

(assert (=> b!5929598 (= e!3629313 call!470617)))

(declare-fun b!5929599 () Bool)

(assert (=> b!5929599 (= e!3629317 (store ((as const (Array Context!10722 Bool)) false) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) true))))

(declare-fun bm!470614 () Bool)

(assert (=> bm!470614 (= call!470619 (derivationStepZipperDown!1227 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))) (ite c!1054089 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470620)) (h!70556 s!2326)))))

(declare-fun bm!470615 () Bool)

(assert (=> bm!470615 (= call!470615 (derivationStepZipperDown!1227 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (ite (or c!1054089 c!1054090) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470616)) (h!70556 s!2326)))))

(declare-fun b!5929600 () Bool)

(assert (=> b!5929600 (= c!1054090 e!3629316)))

(declare-fun res!2484717 () Bool)

(assert (=> b!5929600 (=> (not res!2484717) (not e!3629316))))

(assert (=> b!5929600 (= res!2484717 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))

(assert (=> b!5929600 (= e!3629318 e!3629314)))

(declare-fun b!5929601 () Bool)

(assert (=> b!5929601 (= e!3629318 ((_ map or) call!470619 call!470615))))

(declare-fun b!5929602 () Bool)

(declare-fun c!1054092 () Bool)

(assert (=> b!5929602 (= c!1054092 ((_ is Star!15977) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))

(assert (=> b!5929602 (= e!3629313 e!3629315)))

(assert (= (and d!1859106 c!1054091) b!5929599))

(assert (= (and d!1859106 (not c!1054091)) b!5929594))

(assert (= (and b!5929594 c!1054089) b!5929601))

(assert (= (and b!5929594 (not c!1054089)) b!5929600))

(assert (= (and b!5929600 res!2484717) b!5929595))

(assert (= (and b!5929600 c!1054090) b!5929596))

(assert (= (and b!5929600 (not c!1054090)) b!5929593))

(assert (= (and b!5929593 c!1054088) b!5929598))

(assert (= (and b!5929593 (not c!1054088)) b!5929602))

(assert (= (and b!5929602 c!1054092) b!5929592))

(assert (= (and b!5929602 (not c!1054092)) b!5929597))

(assert (= (or b!5929598 b!5929592) bm!470612))

(assert (= (or b!5929598 b!5929592) bm!470611))

(assert (= (or b!5929596 bm!470612) bm!470613))

(assert (= (or b!5929596 bm!470611) bm!470610))

(assert (= (or b!5929601 bm!470610) bm!470615))

(assert (= (or b!5929601 b!5929596) bm!470614))

(declare-fun m!6822656 () Bool)

(assert (=> b!5929599 m!6822656))

(declare-fun m!6822658 () Bool)

(assert (=> bm!470613 m!6822658))

(declare-fun m!6822660 () Bool)

(assert (=> bm!470615 m!6822660))

(declare-fun m!6822662 () Bool)

(assert (=> bm!470614 m!6822662))

(declare-fun m!6822664 () Bool)

(assert (=> b!5929595 m!6822664))

(assert (=> bm!470471 d!1859106))

(declare-fun bs!1403042 () Bool)

(declare-fun b!5929621 () Bool)

(assert (= bs!1403042 (and b!5929621 d!1858796)))

(declare-fun lambda!323444 () Int)

(assert (=> bs!1403042 (not (= lambda!323444 lambda!323405))))

(declare-fun bs!1403045 () Bool)

(assert (= bs!1403045 (and b!5929621 b!5928495)))

(assert (=> bs!1403045 (not (= lambda!323444 lambda!323372))))

(declare-fun bs!1403048 () Bool)

(assert (= bs!1403048 (and b!5929621 d!1858800)))

(assert (=> bs!1403048 (not (= lambda!323444 lambda!323411))))

(declare-fun bs!1403050 () Bool)

(assert (= bs!1403050 (and b!5929621 b!5928274)))

(assert (=> bs!1403050 (not (= lambda!323444 lambda!323346))))

(declare-fun bs!1403052 () Bool)

(assert (= bs!1403052 (and b!5929621 b!5928496)))

(assert (=> bs!1403052 (= (and (= (reg!16306 (regTwo!32467 r!7292)) (reg!16306 r!7292)) (= (regTwo!32467 r!7292) r!7292)) (= lambda!323444 lambda!323370))))

(assert (=> bs!1403050 (not (= lambda!323444 lambda!323347))))

(assert (=> bs!1403048 (not (= lambda!323444 lambda!323410))))

(declare-fun bs!1403053 () Bool)

(assert (= bs!1403053 (and b!5929621 d!1858862)))

(assert (=> bs!1403053 (not (= lambda!323444 lambda!323418))))

(declare-fun bs!1403054 () Bool)

(assert (= bs!1403054 (and b!5929621 d!1859040)))

(assert (=> bs!1403054 (not (= lambda!323444 lambda!323432))))

(assert (=> bs!1403053 (not (= lambda!323444 lambda!323419))))

(assert (=> b!5929621 true))

(assert (=> b!5929621 true))

(declare-fun bs!1403055 () Bool)

(declare-fun b!5929620 () Bool)

(assert (= bs!1403055 (and b!5929620 d!1858796)))

(declare-fun lambda!323445 () Int)

(assert (=> bs!1403055 (not (= lambda!323445 lambda!323405))))

(declare-fun bs!1403056 () Bool)

(assert (= bs!1403056 (and b!5929620 d!1858800)))

(assert (=> bs!1403056 (= (and (= (regOne!32466 (regTwo!32467 r!7292)) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 r!7292)) (regTwo!32466 r!7292))) (= lambda!323445 lambda!323411))))

(declare-fun bs!1403057 () Bool)

(assert (= bs!1403057 (and b!5929620 b!5928274)))

(assert (=> bs!1403057 (not (= lambda!323445 lambda!323346))))

(declare-fun bs!1403058 () Bool)

(assert (= bs!1403058 (and b!5929620 b!5928496)))

(assert (=> bs!1403058 (not (= lambda!323445 lambda!323370))))

(assert (=> bs!1403057 (= (and (= (regOne!32466 (regTwo!32467 r!7292)) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 r!7292)) (regTwo!32466 r!7292))) (= lambda!323445 lambda!323347))))

(declare-fun bs!1403059 () Bool)

(assert (= bs!1403059 (and b!5929620 b!5929621)))

(assert (=> bs!1403059 (not (= lambda!323445 lambda!323444))))

(declare-fun bs!1403060 () Bool)

(assert (= bs!1403060 (and b!5929620 b!5928495)))

(assert (=> bs!1403060 (= (and (= (regOne!32466 (regTwo!32467 r!7292)) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 r!7292)) (regTwo!32466 r!7292))) (= lambda!323445 lambda!323372))))

(assert (=> bs!1403056 (not (= lambda!323445 lambda!323410))))

(declare-fun bs!1403061 () Bool)

(assert (= bs!1403061 (and b!5929620 d!1858862)))

(assert (=> bs!1403061 (not (= lambda!323445 lambda!323418))))

(declare-fun bs!1403062 () Bool)

(assert (= bs!1403062 (and b!5929620 d!1859040)))

(assert (=> bs!1403062 (not (= lambda!323445 lambda!323432))))

(assert (=> bs!1403061 (= (and (= (regOne!32466 (regTwo!32467 r!7292)) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 r!7292)) (regTwo!32466 r!7292))) (= lambda!323445 lambda!323419))))

(assert (=> b!5929620 true))

(assert (=> b!5929620 true))

(declare-fun b!5929612 () Bool)

(declare-fun c!1054098 () Bool)

(assert (=> b!5929612 (= c!1054098 ((_ is Union!15977) (regTwo!32467 r!7292)))))

(declare-fun e!3629329 () Bool)

(declare-fun e!3629326 () Bool)

(assert (=> b!5929612 (= e!3629329 e!3629326)))

(declare-fun d!1859110 () Bool)

(declare-fun c!1054097 () Bool)

(assert (=> d!1859110 (= c!1054097 ((_ is EmptyExpr!15977) (regTwo!32467 r!7292)))))

(declare-fun e!3629330 () Bool)

(assert (=> d!1859110 (= (matchRSpec!3078 (regTwo!32467 r!7292) s!2326) e!3629330)))

(declare-fun b!5929613 () Bool)

(declare-fun c!1054096 () Bool)

(assert (=> b!5929613 (= c!1054096 ((_ is ElementMatch!15977) (regTwo!32467 r!7292)))))

(declare-fun e!3629331 () Bool)

(assert (=> b!5929613 (= e!3629331 e!3629329)))

(declare-fun b!5929614 () Bool)

(declare-fun call!470625 () Bool)

(assert (=> b!5929614 (= e!3629330 call!470625)))

(declare-fun b!5929615 () Bool)

(declare-fun e!3629328 () Bool)

(assert (=> b!5929615 (= e!3629328 (matchRSpec!3078 (regTwo!32467 (regTwo!32467 r!7292)) s!2326))))

(declare-fun b!5929616 () Bool)

(declare-fun res!2484723 () Bool)

(declare-fun e!3629327 () Bool)

(assert (=> b!5929616 (=> res!2484723 e!3629327)))

(assert (=> b!5929616 (= res!2484723 call!470625)))

(declare-fun e!3629332 () Bool)

(assert (=> b!5929616 (= e!3629332 e!3629327)))

(declare-fun b!5929617 () Bool)

(assert (=> b!5929617 (= e!3629326 e!3629332)))

(declare-fun c!1054095 () Bool)

(assert (=> b!5929617 (= c!1054095 ((_ is Star!15977) (regTwo!32467 r!7292)))))

(declare-fun b!5929618 () Bool)

(assert (=> b!5929618 (= e!3629330 e!3629331)))

(declare-fun res!2484725 () Bool)

(assert (=> b!5929618 (= res!2484725 (not ((_ is EmptyLang!15977) (regTwo!32467 r!7292))))))

(assert (=> b!5929618 (=> (not res!2484725) (not e!3629331))))

(declare-fun b!5929619 () Bool)

(assert (=> b!5929619 (= e!3629326 e!3629328)))

(declare-fun res!2484724 () Bool)

(assert (=> b!5929619 (= res!2484724 (matchRSpec!3078 (regOne!32467 (regTwo!32467 r!7292)) s!2326))))

(assert (=> b!5929619 (=> res!2484724 e!3629328)))

(declare-fun bm!470619 () Bool)

(declare-fun call!470624 () Bool)

(assert (=> bm!470619 (= call!470624 (Exists!3047 (ite c!1054095 lambda!323444 lambda!323445)))))

(assert (=> b!5929620 (= e!3629332 call!470624)))

(assert (=> b!5929621 (= e!3629327 call!470624)))

(declare-fun b!5929622 () Bool)

(assert (=> b!5929622 (= e!3629329 (= s!2326 (Cons!64108 (c!1053727 (regTwo!32467 r!7292)) Nil!64108)))))

(declare-fun bm!470620 () Bool)

(assert (=> bm!470620 (= call!470625 (isEmpty!35972 s!2326))))

(assert (= (and d!1859110 c!1054097) b!5929614))

(assert (= (and d!1859110 (not c!1054097)) b!5929618))

(assert (= (and b!5929618 res!2484725) b!5929613))

(assert (= (and b!5929613 c!1054096) b!5929622))

(assert (= (and b!5929613 (not c!1054096)) b!5929612))

(assert (= (and b!5929612 c!1054098) b!5929619))

(assert (= (and b!5929612 (not c!1054098)) b!5929617))

(assert (= (and b!5929619 (not res!2484724)) b!5929615))

(assert (= (and b!5929617 c!1054095) b!5929616))

(assert (= (and b!5929617 (not c!1054095)) b!5929620))

(assert (= (and b!5929616 (not res!2484723)) b!5929621))

(assert (= (or b!5929621 b!5929620) bm!470619))

(assert (= (or b!5929614 b!5929616) bm!470620))

(declare-fun m!6822678 () Bool)

(assert (=> b!5929615 m!6822678))

(declare-fun m!6822680 () Bool)

(assert (=> b!5929619 m!6822680))

(declare-fun m!6822682 () Bool)

(assert (=> bm!470619 m!6822682))

(assert (=> bm!470620 m!6821714))

(assert (=> b!5928490 d!1859110))

(declare-fun d!1859118 () Bool)

(declare-fun c!1054099 () Bool)

(declare-fun e!3629347 () Bool)

(assert (=> d!1859118 (= c!1054099 e!3629347)))

(declare-fun res!2484736 () Bool)

(assert (=> d!1859118 (=> (not res!2484736) (not e!3629347))))

(assert (=> d!1859118 (= res!2484736 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))

(declare-fun e!3629346 () (InoxSet Context!10722))

(assert (=> d!1859118 (= (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (h!70556 s!2326)) e!3629346)))

(declare-fun b!5929635 () Bool)

(assert (=> b!5929635 (= e!3629347 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))))))

(declare-fun b!5929636 () Bool)

(declare-fun e!3629345 () (InoxSet Context!10722))

(assert (=> b!5929636 (= e!3629346 e!3629345)))

(declare-fun c!1054100 () Bool)

(assert (=> b!5929636 (= c!1054100 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))

(declare-fun b!5929637 () Bool)

(declare-fun call!470626 () (InoxSet Context!10722))

(assert (=> b!5929637 (= e!3629345 call!470626)))

(declare-fun bm!470621 () Bool)

(assert (=> bm!470621 (= call!470626 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (h!70556 s!2326)))))

(declare-fun b!5929638 () Bool)

(assert (=> b!5929638 (= e!3629346 ((_ map or) call!470626 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (h!70556 s!2326))))))

(declare-fun b!5929639 () Bool)

(assert (=> b!5929639 (= e!3629345 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1859118 res!2484736) b!5929635))

(assert (= (and d!1859118 c!1054099) b!5929638))

(assert (= (and d!1859118 (not c!1054099)) b!5929636))

(assert (= (and b!5929636 c!1054100) b!5929637))

(assert (= (and b!5929636 (not c!1054100)) b!5929639))

(assert (= (or b!5929638 b!5929637) bm!470621))

(declare-fun m!6822684 () Bool)

(assert (=> b!5929635 m!6822684))

(declare-fun m!6822686 () Bool)

(assert (=> bm!470621 m!6822686))

(declare-fun m!6822688 () Bool)

(assert (=> b!5929638 m!6822688))

(assert (=> b!5928836 d!1859118))

(declare-fun d!1859120 () Bool)

(assert (=> d!1859120 true))

(assert (=> d!1859120 true))

(declare-fun res!2484742 () Bool)

(assert (=> d!1859120 (= (choose!44703 lambda!323347) res!2484742)))

(assert (=> d!1858794 d!1859120))

(declare-fun bs!1403063 () Bool)

(declare-fun b!5929663 () Bool)

(assert (= bs!1403063 (and b!5929663 d!1858796)))

(declare-fun lambda!323446 () Int)

(assert (=> bs!1403063 (not (= lambda!323446 lambda!323405))))

(declare-fun bs!1403064 () Bool)

(assert (= bs!1403064 (and b!5929663 d!1858800)))

(assert (=> bs!1403064 (not (= lambda!323446 lambda!323411))))

(declare-fun bs!1403065 () Bool)

(assert (= bs!1403065 (and b!5929663 b!5928496)))

(assert (=> bs!1403065 (= (and (= (reg!16306 (regOne!32467 r!7292)) (reg!16306 r!7292)) (= (regOne!32467 r!7292) r!7292)) (= lambda!323446 lambda!323370))))

(declare-fun bs!1403066 () Bool)

(assert (= bs!1403066 (and b!5929663 b!5928274)))

(assert (=> bs!1403066 (not (= lambda!323446 lambda!323347))))

(declare-fun bs!1403067 () Bool)

(assert (= bs!1403067 (and b!5929663 b!5929621)))

(assert (=> bs!1403067 (= (and (= (reg!16306 (regOne!32467 r!7292)) (reg!16306 (regTwo!32467 r!7292))) (= (regOne!32467 r!7292) (regTwo!32467 r!7292))) (= lambda!323446 lambda!323444))))

(declare-fun bs!1403068 () Bool)

(assert (= bs!1403068 (and b!5929663 b!5928495)))

(assert (=> bs!1403068 (not (= lambda!323446 lambda!323372))))

(declare-fun bs!1403069 () Bool)

(assert (= bs!1403069 (and b!5929663 b!5929620)))

(assert (=> bs!1403069 (not (= lambda!323446 lambda!323445))))

(assert (=> bs!1403066 (not (= lambda!323446 lambda!323346))))

(assert (=> bs!1403064 (not (= lambda!323446 lambda!323410))))

(declare-fun bs!1403070 () Bool)

(assert (= bs!1403070 (and b!5929663 d!1858862)))

(assert (=> bs!1403070 (not (= lambda!323446 lambda!323418))))

(declare-fun bs!1403071 () Bool)

(assert (= bs!1403071 (and b!5929663 d!1859040)))

(assert (=> bs!1403071 (not (= lambda!323446 lambda!323432))))

(assert (=> bs!1403070 (not (= lambda!323446 lambda!323419))))

(assert (=> b!5929663 true))

(assert (=> b!5929663 true))

(declare-fun bs!1403072 () Bool)

(declare-fun b!5929662 () Bool)

(assert (= bs!1403072 (and b!5929662 d!1858796)))

(declare-fun lambda!323447 () Int)

(assert (=> bs!1403072 (not (= lambda!323447 lambda!323405))))

(declare-fun bs!1403073 () Bool)

(assert (= bs!1403073 (and b!5929662 d!1858800)))

(assert (=> bs!1403073 (= (and (= (regOne!32466 (regOne!32467 r!7292)) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 r!7292)) (regTwo!32466 r!7292))) (= lambda!323447 lambda!323411))))

(declare-fun bs!1403074 () Bool)

(assert (= bs!1403074 (and b!5929662 b!5928496)))

(assert (=> bs!1403074 (not (= lambda!323447 lambda!323370))))

(declare-fun bs!1403075 () Bool)

(assert (= bs!1403075 (and b!5929662 b!5928274)))

(assert (=> bs!1403075 (= (and (= (regOne!32466 (regOne!32467 r!7292)) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 r!7292)) (regTwo!32466 r!7292))) (= lambda!323447 lambda!323347))))

(declare-fun bs!1403076 () Bool)

(assert (= bs!1403076 (and b!5929662 b!5929663)))

(assert (=> bs!1403076 (not (= lambda!323447 lambda!323446))))

(declare-fun bs!1403077 () Bool)

(assert (= bs!1403077 (and b!5929662 b!5929621)))

(assert (=> bs!1403077 (not (= lambda!323447 lambda!323444))))

(declare-fun bs!1403078 () Bool)

(assert (= bs!1403078 (and b!5929662 b!5928495)))

(assert (=> bs!1403078 (= (and (= (regOne!32466 (regOne!32467 r!7292)) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 r!7292)) (regTwo!32466 r!7292))) (= lambda!323447 lambda!323372))))

(declare-fun bs!1403079 () Bool)

(assert (= bs!1403079 (and b!5929662 b!5929620)))

(assert (=> bs!1403079 (= (and (= (regOne!32466 (regOne!32467 r!7292)) (regOne!32466 (regTwo!32467 r!7292))) (= (regTwo!32466 (regOne!32467 r!7292)) (regTwo!32466 (regTwo!32467 r!7292)))) (= lambda!323447 lambda!323445))))

(assert (=> bs!1403075 (not (= lambda!323447 lambda!323346))))

(assert (=> bs!1403073 (not (= lambda!323447 lambda!323410))))

(declare-fun bs!1403080 () Bool)

(assert (= bs!1403080 (and b!5929662 d!1858862)))

(assert (=> bs!1403080 (not (= lambda!323447 lambda!323418))))

(declare-fun bs!1403081 () Bool)

(assert (= bs!1403081 (and b!5929662 d!1859040)))

(assert (=> bs!1403081 (not (= lambda!323447 lambda!323432))))

(assert (=> bs!1403080 (= (and (= (regOne!32466 (regOne!32467 r!7292)) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 r!7292)) (regTwo!32466 r!7292))) (= lambda!323447 lambda!323419))))

(assert (=> b!5929662 true))

(assert (=> b!5929662 true))

(declare-fun b!5929654 () Bool)

(declare-fun c!1054109 () Bool)

(assert (=> b!5929654 (= c!1054109 ((_ is Union!15977) (regOne!32467 r!7292)))))

(declare-fun e!3629360 () Bool)

(declare-fun e!3629357 () Bool)

(assert (=> b!5929654 (= e!3629360 e!3629357)))

(declare-fun d!1859124 () Bool)

(declare-fun c!1054108 () Bool)

(assert (=> d!1859124 (= c!1054108 ((_ is EmptyExpr!15977) (regOne!32467 r!7292)))))

(declare-fun e!3629361 () Bool)

(assert (=> d!1859124 (= (matchRSpec!3078 (regOne!32467 r!7292) s!2326) e!3629361)))

(declare-fun b!5929655 () Bool)

(declare-fun c!1054107 () Bool)

(assert (=> b!5929655 (= c!1054107 ((_ is ElementMatch!15977) (regOne!32467 r!7292)))))

(declare-fun e!3629362 () Bool)

(assert (=> b!5929655 (= e!3629362 e!3629360)))

(declare-fun b!5929656 () Bool)

(declare-fun call!470634 () Bool)

(assert (=> b!5929656 (= e!3629361 call!470634)))

(declare-fun b!5929657 () Bool)

(declare-fun e!3629359 () Bool)

(assert (=> b!5929657 (= e!3629359 (matchRSpec!3078 (regTwo!32467 (regOne!32467 r!7292)) s!2326))))

(declare-fun b!5929658 () Bool)

(declare-fun res!2484743 () Bool)

(declare-fun e!3629358 () Bool)

(assert (=> b!5929658 (=> res!2484743 e!3629358)))

(assert (=> b!5929658 (= res!2484743 call!470634)))

(declare-fun e!3629363 () Bool)

(assert (=> b!5929658 (= e!3629363 e!3629358)))

(declare-fun b!5929659 () Bool)

(assert (=> b!5929659 (= e!3629357 e!3629363)))

(declare-fun c!1054106 () Bool)

(assert (=> b!5929659 (= c!1054106 ((_ is Star!15977) (regOne!32467 r!7292)))))

(declare-fun b!5929660 () Bool)

(assert (=> b!5929660 (= e!3629361 e!3629362)))

(declare-fun res!2484745 () Bool)

(assert (=> b!5929660 (= res!2484745 (not ((_ is EmptyLang!15977) (regOne!32467 r!7292))))))

(assert (=> b!5929660 (=> (not res!2484745) (not e!3629362))))

(declare-fun b!5929661 () Bool)

(assert (=> b!5929661 (= e!3629357 e!3629359)))

(declare-fun res!2484744 () Bool)

(assert (=> b!5929661 (= res!2484744 (matchRSpec!3078 (regOne!32467 (regOne!32467 r!7292)) s!2326))))

(assert (=> b!5929661 (=> res!2484744 e!3629359)))

(declare-fun bm!470628 () Bool)

(declare-fun call!470633 () Bool)

(assert (=> bm!470628 (= call!470633 (Exists!3047 (ite c!1054106 lambda!323446 lambda!323447)))))

(assert (=> b!5929662 (= e!3629363 call!470633)))

(assert (=> b!5929663 (= e!3629358 call!470633)))

(declare-fun b!5929664 () Bool)

(assert (=> b!5929664 (= e!3629360 (= s!2326 (Cons!64108 (c!1053727 (regOne!32467 r!7292)) Nil!64108)))))

(declare-fun bm!470629 () Bool)

(assert (=> bm!470629 (= call!470634 (isEmpty!35972 s!2326))))

(assert (= (and d!1859124 c!1054108) b!5929656))

(assert (= (and d!1859124 (not c!1054108)) b!5929660))

(assert (= (and b!5929660 res!2484745) b!5929655))

(assert (= (and b!5929655 c!1054107) b!5929664))

(assert (= (and b!5929655 (not c!1054107)) b!5929654))

(assert (= (and b!5929654 c!1054109) b!5929661))

(assert (= (and b!5929654 (not c!1054109)) b!5929659))

(assert (= (and b!5929661 (not res!2484744)) b!5929657))

(assert (= (and b!5929659 c!1054106) b!5929658))

(assert (= (and b!5929659 (not c!1054106)) b!5929662))

(assert (= (and b!5929658 (not res!2484743)) b!5929663))

(assert (= (or b!5929663 b!5929662) bm!470628))

(assert (= (or b!5929656 b!5929658) bm!470629))

(declare-fun m!6822730 () Bool)

(assert (=> b!5929657 m!6822730))

(declare-fun m!6822732 () Bool)

(assert (=> b!5929661 m!6822732))

(declare-fun m!6822734 () Bool)

(assert (=> bm!470628 m!6822734))

(assert (=> bm!470629 m!6821714))

(assert (=> b!5928494 d!1859124))

(declare-fun bs!1403082 () Bool)

(declare-fun d!1859132 () Bool)

(assert (= bs!1403082 (and d!1859132 d!1859074)))

(declare-fun lambda!323448 () Int)

(assert (=> bs!1403082 (= lambda!323448 lambda!323441)))

(declare-fun bs!1403083 () Bool)

(assert (= bs!1403083 (and d!1859132 d!1859016)))

(assert (=> bs!1403083 (= lambda!323448 lambda!323429)))

(declare-fun bs!1403084 () Bool)

(assert (= bs!1403084 (and d!1859132 d!1858790)))

(assert (=> bs!1403084 (= lambda!323448 lambda!323402)))

(declare-fun bs!1403085 () Bool)

(assert (= bs!1403085 (and d!1859132 d!1858772)))

(assert (=> bs!1403085 (= lambda!323448 lambda!323393)))

(declare-fun bs!1403086 () Bool)

(assert (= bs!1403086 (and d!1859132 d!1858760)))

(assert (=> bs!1403086 (= lambda!323448 lambda!323389)))

(declare-fun bs!1403087 () Bool)

(assert (= bs!1403087 (and d!1859132 d!1858764)))

(assert (=> bs!1403087 (= lambda!323448 lambda!323390)))

(declare-fun bs!1403088 () Bool)

(assert (= bs!1403088 (and d!1859132 d!1858804)))

(assert (=> bs!1403088 (= lambda!323448 lambda!323412)))

(declare-fun bs!1403089 () Bool)

(assert (= bs!1403089 (and d!1859132 d!1858774)))

(assert (=> bs!1403089 (= lambda!323448 lambda!323396)))

(declare-fun bs!1403090 () Bool)

(assert (= bs!1403090 (and d!1859132 d!1858900)))

(assert (=> bs!1403090 (= lambda!323448 lambda!323422)))

(declare-fun bs!1403091 () Bool)

(assert (= bs!1403091 (and d!1859132 d!1858920)))

(assert (=> bs!1403091 (= lambda!323448 lambda!323425)))

(assert (=> d!1859132 (= (inv!83189 (h!70555 (t!377628 zl!343))) (forall!15060 (exprs!5861 (h!70555 (t!377628 zl!343))) lambda!323448))))

(declare-fun bs!1403092 () Bool)

(assert (= bs!1403092 d!1859132))

(declare-fun m!6822736 () Bool)

(assert (=> bs!1403092 m!6822736))

(assert (=> b!5928959 d!1859132))

(declare-fun d!1859134 () Bool)

(assert (=> d!1859134 true))

(assert (=> d!1859134 true))

(declare-fun res!2484750 () Bool)

(assert (=> d!1859134 (= (choose!44703 lambda!323346) res!2484750)))

(assert (=> d!1858798 d!1859134))

(declare-fun d!1859136 () Bool)

(assert (=> d!1859136 (= (nullable!5972 (reg!16306 r!7292)) (nullableFct!1944 (reg!16306 r!7292)))))

(declare-fun bs!1403093 () Bool)

(assert (= bs!1403093 d!1859136))

(declare-fun m!6822738 () Bool)

(assert (=> bs!1403093 m!6822738))

(assert (=> b!5928823 d!1859136))

(declare-fun d!1859138 () Bool)

(declare-fun res!2484751 () Bool)

(declare-fun e!3629389 () Bool)

(assert (=> d!1859138 (=> res!2484751 e!3629389)))

(assert (=> d!1859138 (= res!2484751 ((_ is Nil!64106) lt!2310633))))

(assert (=> d!1859138 (= (forall!15060 lt!2310633 lambda!323396) e!3629389)))

(declare-fun b!5929727 () Bool)

(declare-fun e!3629390 () Bool)

(assert (=> b!5929727 (= e!3629389 e!3629390)))

(declare-fun res!2484752 () Bool)

(assert (=> b!5929727 (=> (not res!2484752) (not e!3629390))))

(assert (=> b!5929727 (= res!2484752 (dynLambda!25069 lambda!323396 (h!70554 lt!2310633)))))

(declare-fun b!5929728 () Bool)

(assert (=> b!5929728 (= e!3629390 (forall!15060 (t!377627 lt!2310633) lambda!323396))))

(assert (= (and d!1859138 (not res!2484751)) b!5929727))

(assert (= (and b!5929727 res!2484752) b!5929728))

(declare-fun b_lambda!222695 () Bool)

(assert (=> (not b_lambda!222695) (not b!5929727)))

(declare-fun m!6822742 () Bool)

(assert (=> b!5929727 m!6822742))

(declare-fun m!6822744 () Bool)

(assert (=> b!5929728 m!6822744))

(assert (=> d!1858774 d!1859138))

(declare-fun b!5929738 () Bool)

(declare-fun e!3629394 () Bool)

(declare-fun tp!1648916 () Bool)

(declare-fun tp!1648917 () Bool)

(assert (=> b!5929738 (= e!3629394 (and tp!1648916 tp!1648917))))

(assert (=> b!5928960 (= tp!1648829 e!3629394)))

(assert (= (and b!5928960 ((_ is Cons!64106) (exprs!5861 (h!70555 (t!377628 zl!343))))) b!5929738))

(declare-fun b!5929744 () Bool)

(declare-fun e!3629396 () Bool)

(declare-fun tp!1648923 () Bool)

(declare-fun tp!1648927 () Bool)

(assert (=> b!5929744 (= e!3629396 (and tp!1648923 tp!1648927))))

(declare-fun b!5929745 () Bool)

(declare-fun tp!1648924 () Bool)

(assert (=> b!5929745 (= e!3629396 tp!1648924)))

(assert (=> b!5928945 (= tp!1648813 e!3629396)))

(declare-fun b!5929743 () Bool)

(assert (=> b!5929743 (= e!3629396 tp_is_empty!41207)))

(declare-fun b!5929746 () Bool)

(declare-fun tp!1648926 () Bool)

(declare-fun tp!1648925 () Bool)

(assert (=> b!5929746 (= e!3629396 (and tp!1648926 tp!1648925))))

(assert (= (and b!5928945 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32466 r!7292)))) b!5929743))

(assert (= (and b!5928945 ((_ is Concat!24822) (regOne!32466 (regOne!32466 r!7292)))) b!5929744))

(assert (= (and b!5928945 ((_ is Star!15977) (regOne!32466 (regOne!32466 r!7292)))) b!5929745))

(assert (= (and b!5928945 ((_ is Union!15977) (regOne!32466 (regOne!32466 r!7292)))) b!5929746))

(declare-fun b!5929752 () Bool)

(declare-fun e!3629398 () Bool)

(declare-fun tp!1648933 () Bool)

(declare-fun tp!1648937 () Bool)

(assert (=> b!5929752 (= e!3629398 (and tp!1648933 tp!1648937))))

(declare-fun b!5929753 () Bool)

(declare-fun tp!1648934 () Bool)

(assert (=> b!5929753 (= e!3629398 tp!1648934)))

(assert (=> b!5928945 (= tp!1648817 e!3629398)))

(declare-fun b!5929751 () Bool)

(assert (=> b!5929751 (= e!3629398 tp_is_empty!41207)))

(declare-fun b!5929754 () Bool)

(declare-fun tp!1648936 () Bool)

(declare-fun tp!1648935 () Bool)

(assert (=> b!5929754 (= e!3629398 (and tp!1648936 tp!1648935))))

(assert (= (and b!5928945 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32466 r!7292)))) b!5929751))

(assert (= (and b!5928945 ((_ is Concat!24822) (regTwo!32466 (regOne!32466 r!7292)))) b!5929752))

(assert (= (and b!5928945 ((_ is Star!15977) (regTwo!32466 (regOne!32466 r!7292)))) b!5929753))

(assert (= (and b!5928945 ((_ is Union!15977) (regTwo!32466 (regOne!32466 r!7292)))) b!5929754))

(declare-fun b!5929759 () Bool)

(declare-fun e!3629400 () Bool)

(declare-fun tp!1648943 () Bool)

(assert (=> b!5929759 (= e!3629400 (and tp_is_empty!41207 tp!1648943))))

(assert (=> b!5928921 (= tp!1648787 e!3629400)))

(assert (= (and b!5928921 ((_ is Cons!64108) (t!377629 (t!377629 s!2326)))) b!5929759))

(declare-fun b!5929766 () Bool)

(declare-fun e!3629403 () Bool)

(declare-fun tp!1648950 () Bool)

(declare-fun tp!1648954 () Bool)

(assert (=> b!5929766 (= e!3629403 (and tp!1648950 tp!1648954))))

(declare-fun b!5929767 () Bool)

(declare-fun tp!1648951 () Bool)

(assert (=> b!5929767 (= e!3629403 tp!1648951)))

(assert (=> b!5928937 (= tp!1648803 e!3629403)))

(declare-fun b!5929765 () Bool)

(assert (=> b!5929765 (= e!3629403 tp_is_empty!41207)))

(declare-fun b!5929768 () Bool)

(declare-fun tp!1648953 () Bool)

(declare-fun tp!1648952 () Bool)

(assert (=> b!5929768 (= e!3629403 (and tp!1648953 tp!1648952))))

(assert (= (and b!5928937 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32467 r!7292)))) b!5929765))

(assert (= (and b!5928937 ((_ is Concat!24822) (regOne!32466 (regOne!32467 r!7292)))) b!5929766))

(assert (= (and b!5928937 ((_ is Star!15977) (regOne!32466 (regOne!32467 r!7292)))) b!5929767))

(assert (= (and b!5928937 ((_ is Union!15977) (regOne!32466 (regOne!32467 r!7292)))) b!5929768))

(declare-fun b!5929774 () Bool)

(declare-fun e!3629405 () Bool)

(declare-fun tp!1648960 () Bool)

(declare-fun tp!1648964 () Bool)

(assert (=> b!5929774 (= e!3629405 (and tp!1648960 tp!1648964))))

(declare-fun b!5929775 () Bool)

(declare-fun tp!1648961 () Bool)

(assert (=> b!5929775 (= e!3629405 tp!1648961)))

(assert (=> b!5928937 (= tp!1648807 e!3629405)))

(declare-fun b!5929773 () Bool)

(assert (=> b!5929773 (= e!3629405 tp_is_empty!41207)))

(declare-fun b!5929776 () Bool)

(declare-fun tp!1648963 () Bool)

(declare-fun tp!1648962 () Bool)

(assert (=> b!5929776 (= e!3629405 (and tp!1648963 tp!1648962))))

(assert (= (and b!5928937 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32467 r!7292)))) b!5929773))

(assert (= (and b!5928937 ((_ is Concat!24822) (regTwo!32466 (regOne!32467 r!7292)))) b!5929774))

(assert (= (and b!5928937 ((_ is Star!15977) (regTwo!32466 (regOne!32467 r!7292)))) b!5929775))

(assert (= (and b!5928937 ((_ is Union!15977) (regTwo!32466 (regOne!32467 r!7292)))) b!5929776))

(declare-fun b!5929782 () Bool)

(declare-fun e!3629407 () Bool)

(declare-fun tp!1648970 () Bool)

(declare-fun tp!1648974 () Bool)

(assert (=> b!5929782 (= e!3629407 (and tp!1648970 tp!1648974))))

(declare-fun b!5929783 () Bool)

(declare-fun tp!1648971 () Bool)

(assert (=> b!5929783 (= e!3629407 tp!1648971)))

(assert (=> b!5928946 (= tp!1648814 e!3629407)))

(declare-fun b!5929781 () Bool)

(assert (=> b!5929781 (= e!3629407 tp_is_empty!41207)))

(declare-fun b!5929784 () Bool)

(declare-fun tp!1648973 () Bool)

(declare-fun tp!1648972 () Bool)

(assert (=> b!5929784 (= e!3629407 (and tp!1648973 tp!1648972))))

(assert (= (and b!5928946 ((_ is ElementMatch!15977) (reg!16306 (regOne!32466 r!7292)))) b!5929781))

(assert (= (and b!5928946 ((_ is Concat!24822) (reg!16306 (regOne!32466 r!7292)))) b!5929782))

(assert (= (and b!5928946 ((_ is Star!15977) (reg!16306 (regOne!32466 r!7292)))) b!5929783))

(assert (= (and b!5928946 ((_ is Union!15977) (reg!16306 (regOne!32466 r!7292)))) b!5929784))

(declare-fun b!5929786 () Bool)

(declare-fun e!3629408 () Bool)

(declare-fun tp!1648975 () Bool)

(declare-fun tp!1648979 () Bool)

(assert (=> b!5929786 (= e!3629408 (and tp!1648975 tp!1648979))))

(declare-fun b!5929787 () Bool)

(declare-fun tp!1648976 () Bool)

(assert (=> b!5929787 (= e!3629408 tp!1648976)))

(assert (=> b!5928947 (= tp!1648816 e!3629408)))

(declare-fun b!5929785 () Bool)

(assert (=> b!5929785 (= e!3629408 tp_is_empty!41207)))

(declare-fun b!5929788 () Bool)

(declare-fun tp!1648978 () Bool)

(declare-fun tp!1648977 () Bool)

(assert (=> b!5929788 (= e!3629408 (and tp!1648978 tp!1648977))))

(assert (= (and b!5928947 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32466 r!7292)))) b!5929785))

(assert (= (and b!5928947 ((_ is Concat!24822) (regOne!32467 (regOne!32466 r!7292)))) b!5929786))

(assert (= (and b!5928947 ((_ is Star!15977) (regOne!32467 (regOne!32466 r!7292)))) b!5929787))

(assert (= (and b!5928947 ((_ is Union!15977) (regOne!32467 (regOne!32466 r!7292)))) b!5929788))

(declare-fun b!5929794 () Bool)

(declare-fun e!3629410 () Bool)

(declare-fun tp!1648985 () Bool)

(declare-fun tp!1648989 () Bool)

(assert (=> b!5929794 (= e!3629410 (and tp!1648985 tp!1648989))))

(declare-fun b!5929795 () Bool)

(declare-fun tp!1648986 () Bool)

(assert (=> b!5929795 (= e!3629410 tp!1648986)))

(assert (=> b!5928947 (= tp!1648815 e!3629410)))

(declare-fun b!5929793 () Bool)

(assert (=> b!5929793 (= e!3629410 tp_is_empty!41207)))

(declare-fun b!5929796 () Bool)

(declare-fun tp!1648988 () Bool)

(declare-fun tp!1648987 () Bool)

(assert (=> b!5929796 (= e!3629410 (and tp!1648988 tp!1648987))))

(assert (= (and b!5928947 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32466 r!7292)))) b!5929793))

(assert (= (and b!5928947 ((_ is Concat!24822) (regTwo!32467 (regOne!32466 r!7292)))) b!5929794))

(assert (= (and b!5928947 ((_ is Star!15977) (regTwo!32467 (regOne!32466 r!7292)))) b!5929795))

(assert (= (and b!5928947 ((_ is Union!15977) (regTwo!32467 (regOne!32466 r!7292)))) b!5929796))

(declare-fun b!5929802 () Bool)

(declare-fun e!3629412 () Bool)

(declare-fun tp!1648995 () Bool)

(declare-fun tp!1648999 () Bool)

(assert (=> b!5929802 (= e!3629412 (and tp!1648995 tp!1648999))))

(declare-fun b!5929803 () Bool)

(declare-fun tp!1648996 () Bool)

(assert (=> b!5929803 (= e!3629412 tp!1648996)))

(assert (=> b!5928938 (= tp!1648804 e!3629412)))

(declare-fun b!5929801 () Bool)

(assert (=> b!5929801 (= e!3629412 tp_is_empty!41207)))

(declare-fun b!5929804 () Bool)

(declare-fun tp!1648998 () Bool)

(declare-fun tp!1648997 () Bool)

(assert (=> b!5929804 (= e!3629412 (and tp!1648998 tp!1648997))))

(assert (= (and b!5928938 ((_ is ElementMatch!15977) (reg!16306 (regOne!32467 r!7292)))) b!5929801))

(assert (= (and b!5928938 ((_ is Concat!24822) (reg!16306 (regOne!32467 r!7292)))) b!5929802))

(assert (= (and b!5928938 ((_ is Star!15977) (reg!16306 (regOne!32467 r!7292)))) b!5929803))

(assert (= (and b!5928938 ((_ is Union!15977) (reg!16306 (regOne!32467 r!7292)))) b!5929804))

(declare-fun b!5929809 () Bool)

(declare-fun e!3629416 () Bool)

(declare-fun tp!1649004 () Bool)

(declare-fun tp!1649008 () Bool)

(assert (=> b!5929809 (= e!3629416 (and tp!1649004 tp!1649008))))

(declare-fun b!5929810 () Bool)

(declare-fun tp!1649005 () Bool)

(assert (=> b!5929810 (= e!3629416 tp!1649005)))

(assert (=> b!5928939 (= tp!1648806 e!3629416)))

(declare-fun b!5929808 () Bool)

(assert (=> b!5929808 (= e!3629416 tp_is_empty!41207)))

(declare-fun b!5929811 () Bool)

(declare-fun tp!1649007 () Bool)

(declare-fun tp!1649006 () Bool)

(assert (=> b!5929811 (= e!3629416 (and tp!1649007 tp!1649006))))

(assert (= (and b!5928939 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32467 r!7292)))) b!5929808))

(assert (= (and b!5928939 ((_ is Concat!24822) (regOne!32467 (regOne!32467 r!7292)))) b!5929809))

(assert (= (and b!5928939 ((_ is Star!15977) (regOne!32467 (regOne!32467 r!7292)))) b!5929810))

(assert (= (and b!5928939 ((_ is Union!15977) (regOne!32467 (regOne!32467 r!7292)))) b!5929811))

(declare-fun b!5929817 () Bool)

(declare-fun e!3629418 () Bool)

(declare-fun tp!1649014 () Bool)

(declare-fun tp!1649018 () Bool)

(assert (=> b!5929817 (= e!3629418 (and tp!1649014 tp!1649018))))

(declare-fun b!5929818 () Bool)

(declare-fun tp!1649015 () Bool)

(assert (=> b!5929818 (= e!3629418 tp!1649015)))

(assert (=> b!5928939 (= tp!1648805 e!3629418)))

(declare-fun b!5929816 () Bool)

(assert (=> b!5929816 (= e!3629418 tp_is_empty!41207)))

(declare-fun b!5929819 () Bool)

(declare-fun tp!1649017 () Bool)

(declare-fun tp!1649016 () Bool)

(assert (=> b!5929819 (= e!3629418 (and tp!1649017 tp!1649016))))

(assert (= (and b!5928939 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32467 r!7292)))) b!5929816))

(assert (= (and b!5928939 ((_ is Concat!24822) (regTwo!32467 (regOne!32467 r!7292)))) b!5929817))

(assert (= (and b!5928939 ((_ is Star!15977) (regTwo!32467 (regOne!32467 r!7292)))) b!5929818))

(assert (= (and b!5928939 ((_ is Union!15977) (regTwo!32467 (regOne!32467 r!7292)))) b!5929819))

(declare-fun condSetEmpty!40256 () Bool)

(assert (=> setNonEmpty!40248 (= condSetEmpty!40256 (= setRest!40248 ((as const (Array Context!10722 Bool)) false)))))

(declare-fun setRes!40256 () Bool)

(assert (=> setNonEmpty!40248 (= tp!1648777 setRes!40256)))

(declare-fun setIsEmpty!40256 () Bool)

(assert (=> setIsEmpty!40256 setRes!40256))

(declare-fun tp!1649024 () Bool)

(declare-fun setElem!40256 () Context!10722)

(declare-fun setNonEmpty!40256 () Bool)

(declare-fun e!3629420 () Bool)

(assert (=> setNonEmpty!40256 (= setRes!40256 (and tp!1649024 (inv!83189 setElem!40256) e!3629420))))

(declare-fun setRest!40256 () (InoxSet Context!10722))

(assert (=> setNonEmpty!40256 (= setRest!40248 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) setElem!40256 true) setRest!40256))))

(declare-fun b!5929824 () Bool)

(declare-fun tp!1649025 () Bool)

(assert (=> b!5929824 (= e!3629420 tp!1649025)))

(assert (= (and setNonEmpty!40248 condSetEmpty!40256) setIsEmpty!40256))

(assert (= (and setNonEmpty!40248 (not condSetEmpty!40256)) setNonEmpty!40256))

(assert (= setNonEmpty!40256 b!5929824))

(declare-fun m!6822748 () Bool)

(assert (=> setNonEmpty!40256 m!6822748))

(declare-fun b!5929830 () Bool)

(declare-fun e!3629422 () Bool)

(declare-fun tp!1649031 () Bool)

(declare-fun tp!1649035 () Bool)

(assert (=> b!5929830 (= e!3629422 (and tp!1649031 tp!1649035))))

(declare-fun b!5929831 () Bool)

(declare-fun tp!1649032 () Bool)

(assert (=> b!5929831 (= e!3629422 tp!1649032)))

(assert (=> b!5928916 (= tp!1648783 e!3629422)))

(declare-fun b!5929829 () Bool)

(assert (=> b!5929829 (= e!3629422 tp_is_empty!41207)))

(declare-fun b!5929832 () Bool)

(declare-fun tp!1649034 () Bool)

(declare-fun tp!1649033 () Bool)

(assert (=> b!5929832 (= e!3629422 (and tp!1649034 tp!1649033))))

(assert (= (and b!5928916 ((_ is ElementMatch!15977) (h!70554 (exprs!5861 setElem!40242)))) b!5929829))

(assert (= (and b!5928916 ((_ is Concat!24822) (h!70554 (exprs!5861 setElem!40242)))) b!5929830))

(assert (= (and b!5928916 ((_ is Star!15977) (h!70554 (exprs!5861 setElem!40242)))) b!5929831))

(assert (= (and b!5928916 ((_ is Union!15977) (h!70554 (exprs!5861 setElem!40242)))) b!5929832))

(declare-fun b!5929838 () Bool)

(declare-fun e!3629425 () Bool)

(declare-fun tp!1649043 () Bool)

(declare-fun tp!1649044 () Bool)

(assert (=> b!5929838 (= e!3629425 (and tp!1649043 tp!1649044))))

(assert (=> b!5928916 (= tp!1648784 e!3629425)))

(assert (= (and b!5928916 ((_ is Cons!64106) (t!377627 (exprs!5861 setElem!40242)))) b!5929838))

(declare-fun b!5929839 () Bool)

(declare-fun e!3629426 () Bool)

(declare-fun tp!1649045 () Bool)

(declare-fun tp!1649046 () Bool)

(assert (=> b!5929839 (= e!3629426 (and tp!1649045 tp!1649046))))

(assert (=> b!5928911 (= tp!1648778 e!3629426)))

(assert (= (and b!5928911 ((_ is Cons!64106) (exprs!5861 setElem!40248))) b!5929839))

(declare-fun b!5929845 () Bool)

(declare-fun e!3629428 () Bool)

(declare-fun tp!1649052 () Bool)

(declare-fun tp!1649056 () Bool)

(assert (=> b!5929845 (= e!3629428 (and tp!1649052 tp!1649056))))

(declare-fun b!5929846 () Bool)

(declare-fun tp!1649053 () Bool)

(assert (=> b!5929846 (= e!3629428 tp!1649053)))

(assert (=> b!5928950 (= tp!1648819 e!3629428)))

(declare-fun b!5929844 () Bool)

(assert (=> b!5929844 (= e!3629428 tp_is_empty!41207)))

(declare-fun b!5929847 () Bool)

(declare-fun tp!1649055 () Bool)

(declare-fun tp!1649054 () Bool)

(assert (=> b!5929847 (= e!3629428 (and tp!1649055 tp!1649054))))

(assert (= (and b!5928950 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32466 r!7292)))) b!5929844))

(assert (= (and b!5928950 ((_ is Concat!24822) (reg!16306 (regTwo!32466 r!7292)))) b!5929845))

(assert (= (and b!5928950 ((_ is Star!15977) (reg!16306 (regTwo!32466 r!7292)))) b!5929846))

(assert (= (and b!5928950 ((_ is Union!15977) (reg!16306 (regTwo!32466 r!7292)))) b!5929847))

(declare-fun b!5929853 () Bool)

(declare-fun e!3629430 () Bool)

(declare-fun tp!1649062 () Bool)

(declare-fun tp!1649066 () Bool)

(assert (=> b!5929853 (= e!3629430 (and tp!1649062 tp!1649066))))

(declare-fun b!5929854 () Bool)

(declare-fun tp!1649063 () Bool)

(assert (=> b!5929854 (= e!3629430 tp!1649063)))

(assert (=> b!5928949 (= tp!1648818 e!3629430)))

(declare-fun b!5929852 () Bool)

(assert (=> b!5929852 (= e!3629430 tp_is_empty!41207)))

(declare-fun b!5929855 () Bool)

(declare-fun tp!1649065 () Bool)

(declare-fun tp!1649064 () Bool)

(assert (=> b!5929855 (= e!3629430 (and tp!1649065 tp!1649064))))

(assert (= (and b!5928949 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32466 r!7292)))) b!5929852))

(assert (= (and b!5928949 ((_ is Concat!24822) (regOne!32466 (regTwo!32466 r!7292)))) b!5929853))

(assert (= (and b!5928949 ((_ is Star!15977) (regOne!32466 (regTwo!32466 r!7292)))) b!5929854))

(assert (= (and b!5928949 ((_ is Union!15977) (regOne!32466 (regTwo!32466 r!7292)))) b!5929855))

(declare-fun b!5929861 () Bool)

(declare-fun e!3629432 () Bool)

(declare-fun tp!1649072 () Bool)

(declare-fun tp!1649076 () Bool)

(assert (=> b!5929861 (= e!3629432 (and tp!1649072 tp!1649076))))

(declare-fun b!5929862 () Bool)

(declare-fun tp!1649073 () Bool)

(assert (=> b!5929862 (= e!3629432 tp!1649073)))

(assert (=> b!5928949 (= tp!1648822 e!3629432)))

(declare-fun b!5929860 () Bool)

(assert (=> b!5929860 (= e!3629432 tp_is_empty!41207)))

(declare-fun b!5929863 () Bool)

(declare-fun tp!1649075 () Bool)

(declare-fun tp!1649074 () Bool)

(assert (=> b!5929863 (= e!3629432 (and tp!1649075 tp!1649074))))

(assert (= (and b!5928949 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32466 r!7292)))) b!5929860))

(assert (= (and b!5928949 ((_ is Concat!24822) (regTwo!32466 (regTwo!32466 r!7292)))) b!5929861))

(assert (= (and b!5928949 ((_ is Star!15977) (regTwo!32466 (regTwo!32466 r!7292)))) b!5929862))

(assert (= (and b!5928949 ((_ is Union!15977) (regTwo!32466 (regTwo!32466 r!7292)))) b!5929863))

(declare-fun b!5929869 () Bool)

(declare-fun e!3629434 () Bool)

(declare-fun tp!1649082 () Bool)

(declare-fun tp!1649086 () Bool)

(assert (=> b!5929869 (= e!3629434 (and tp!1649082 tp!1649086))))

(declare-fun b!5929870 () Bool)

(declare-fun tp!1649083 () Bool)

(assert (=> b!5929870 (= e!3629434 tp!1649083)))

(assert (=> b!5928951 (= tp!1648821 e!3629434)))

(declare-fun b!5929868 () Bool)

(assert (=> b!5929868 (= e!3629434 tp_is_empty!41207)))

(declare-fun b!5929871 () Bool)

(declare-fun tp!1649085 () Bool)

(declare-fun tp!1649084 () Bool)

(assert (=> b!5929871 (= e!3629434 (and tp!1649085 tp!1649084))))

(assert (= (and b!5928951 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32466 r!7292)))) b!5929868))

(assert (= (and b!5928951 ((_ is Concat!24822) (regOne!32467 (regTwo!32466 r!7292)))) b!5929869))

(assert (= (and b!5928951 ((_ is Star!15977) (regOne!32467 (regTwo!32466 r!7292)))) b!5929870))

(assert (= (and b!5928951 ((_ is Union!15977) (regOne!32467 (regTwo!32466 r!7292)))) b!5929871))

(declare-fun b!5929873 () Bool)

(declare-fun e!3629435 () Bool)

(declare-fun tp!1649087 () Bool)

(declare-fun tp!1649091 () Bool)

(assert (=> b!5929873 (= e!3629435 (and tp!1649087 tp!1649091))))

(declare-fun b!5929874 () Bool)

(declare-fun tp!1649088 () Bool)

(assert (=> b!5929874 (= e!3629435 tp!1649088)))

(assert (=> b!5928951 (= tp!1648820 e!3629435)))

(declare-fun b!5929872 () Bool)

(assert (=> b!5929872 (= e!3629435 tp_is_empty!41207)))

(declare-fun b!5929875 () Bool)

(declare-fun tp!1649090 () Bool)

(declare-fun tp!1649089 () Bool)

(assert (=> b!5929875 (= e!3629435 (and tp!1649090 tp!1649089))))

(assert (= (and b!5928951 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32466 r!7292)))) b!5929872))

(assert (= (and b!5928951 ((_ is Concat!24822) (regTwo!32467 (regTwo!32466 r!7292)))) b!5929873))

(assert (= (and b!5928951 ((_ is Star!15977) (regTwo!32467 (regTwo!32466 r!7292)))) b!5929874))

(assert (= (and b!5928951 ((_ is Union!15977) (regTwo!32467 (regTwo!32466 r!7292)))) b!5929875))

(declare-fun b!5929877 () Bool)

(declare-fun e!3629436 () Bool)

(declare-fun tp!1649092 () Bool)

(declare-fun tp!1649096 () Bool)

(assert (=> b!5929877 (= e!3629436 (and tp!1649092 tp!1649096))))

(declare-fun b!5929878 () Bool)

(declare-fun tp!1649093 () Bool)

(assert (=> b!5929878 (= e!3629436 tp!1649093)))

(assert (=> b!5928942 (= tp!1648809 e!3629436)))

(declare-fun b!5929876 () Bool)

(assert (=> b!5929876 (= e!3629436 tp_is_empty!41207)))

(declare-fun b!5929879 () Bool)

(declare-fun tp!1649095 () Bool)

(declare-fun tp!1649094 () Bool)

(assert (=> b!5929879 (= e!3629436 (and tp!1649095 tp!1649094))))

(assert (= (and b!5928942 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32467 r!7292)))) b!5929876))

(assert (= (and b!5928942 ((_ is Concat!24822) (reg!16306 (regTwo!32467 r!7292)))) b!5929877))

(assert (= (and b!5928942 ((_ is Star!15977) (reg!16306 (regTwo!32467 r!7292)))) b!5929878))

(assert (= (and b!5928942 ((_ is Union!15977) (reg!16306 (regTwo!32467 r!7292)))) b!5929879))

(declare-fun b!5929881 () Bool)

(declare-fun e!3629437 () Bool)

(declare-fun tp!1649097 () Bool)

(declare-fun tp!1649101 () Bool)

(assert (=> b!5929881 (= e!3629437 (and tp!1649097 tp!1649101))))

(declare-fun b!5929882 () Bool)

(declare-fun tp!1649098 () Bool)

(assert (=> b!5929882 (= e!3629437 tp!1649098)))

(assert (=> b!5928941 (= tp!1648808 e!3629437)))

(declare-fun b!5929880 () Bool)

(assert (=> b!5929880 (= e!3629437 tp_is_empty!41207)))

(declare-fun b!5929883 () Bool)

(declare-fun tp!1649100 () Bool)

(declare-fun tp!1649099 () Bool)

(assert (=> b!5929883 (= e!3629437 (and tp!1649100 tp!1649099))))

(assert (= (and b!5928941 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32467 r!7292)))) b!5929880))

(assert (= (and b!5928941 ((_ is Concat!24822) (regOne!32466 (regTwo!32467 r!7292)))) b!5929881))

(assert (= (and b!5928941 ((_ is Star!15977) (regOne!32466 (regTwo!32467 r!7292)))) b!5929882))

(assert (= (and b!5928941 ((_ is Union!15977) (regOne!32466 (regTwo!32467 r!7292)))) b!5929883))

(declare-fun b!5929885 () Bool)

(declare-fun e!3629438 () Bool)

(declare-fun tp!1649102 () Bool)

(declare-fun tp!1649106 () Bool)

(assert (=> b!5929885 (= e!3629438 (and tp!1649102 tp!1649106))))

(declare-fun b!5929886 () Bool)

(declare-fun tp!1649103 () Bool)

(assert (=> b!5929886 (= e!3629438 tp!1649103)))

(assert (=> b!5928941 (= tp!1648812 e!3629438)))

(declare-fun b!5929884 () Bool)

(assert (=> b!5929884 (= e!3629438 tp_is_empty!41207)))

(declare-fun b!5929887 () Bool)

(declare-fun tp!1649105 () Bool)

(declare-fun tp!1649104 () Bool)

(assert (=> b!5929887 (= e!3629438 (and tp!1649105 tp!1649104))))

(assert (= (and b!5928941 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32467 r!7292)))) b!5929884))

(assert (= (and b!5928941 ((_ is Concat!24822) (regTwo!32466 (regTwo!32467 r!7292)))) b!5929885))

(assert (= (and b!5928941 ((_ is Star!15977) (regTwo!32466 (regTwo!32467 r!7292)))) b!5929886))

(assert (= (and b!5928941 ((_ is Union!15977) (regTwo!32466 (regTwo!32467 r!7292)))) b!5929887))

(declare-fun b!5929889 () Bool)

(declare-fun e!3629439 () Bool)

(declare-fun tp!1649107 () Bool)

(declare-fun tp!1649111 () Bool)

(assert (=> b!5929889 (= e!3629439 (and tp!1649107 tp!1649111))))

(declare-fun b!5929890 () Bool)

(declare-fun tp!1649108 () Bool)

(assert (=> b!5929890 (= e!3629439 tp!1649108)))

(assert (=> b!5928943 (= tp!1648811 e!3629439)))

(declare-fun b!5929888 () Bool)

(assert (=> b!5929888 (= e!3629439 tp_is_empty!41207)))

(declare-fun b!5929891 () Bool)

(declare-fun tp!1649110 () Bool)

(declare-fun tp!1649109 () Bool)

(assert (=> b!5929891 (= e!3629439 (and tp!1649110 tp!1649109))))

(assert (= (and b!5928943 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32467 r!7292)))) b!5929888))

(assert (= (and b!5928943 ((_ is Concat!24822) (regOne!32467 (regTwo!32467 r!7292)))) b!5929889))

(assert (= (and b!5928943 ((_ is Star!15977) (regOne!32467 (regTwo!32467 r!7292)))) b!5929890))

(assert (= (and b!5928943 ((_ is Union!15977) (regOne!32467 (regTwo!32467 r!7292)))) b!5929891))

(declare-fun b!5929893 () Bool)

(declare-fun e!3629440 () Bool)

(declare-fun tp!1649112 () Bool)

(declare-fun tp!1649116 () Bool)

(assert (=> b!5929893 (= e!3629440 (and tp!1649112 tp!1649116))))

(declare-fun b!5929894 () Bool)

(declare-fun tp!1649113 () Bool)

(assert (=> b!5929894 (= e!3629440 tp!1649113)))

(assert (=> b!5928943 (= tp!1648810 e!3629440)))

(declare-fun b!5929892 () Bool)

(assert (=> b!5929892 (= e!3629440 tp_is_empty!41207)))

(declare-fun b!5929895 () Bool)

(declare-fun tp!1649115 () Bool)

(declare-fun tp!1649114 () Bool)

(assert (=> b!5929895 (= e!3629440 (and tp!1649115 tp!1649114))))

(assert (= (and b!5928943 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32467 r!7292)))) b!5929892))

(assert (= (and b!5928943 ((_ is Concat!24822) (regTwo!32467 (regTwo!32467 r!7292)))) b!5929893))

(assert (= (and b!5928943 ((_ is Star!15977) (regTwo!32467 (regTwo!32467 r!7292)))) b!5929894))

(assert (= (and b!5928943 ((_ is Union!15977) (regTwo!32467 (regTwo!32467 r!7292)))) b!5929895))

(declare-fun b!5929897 () Bool)

(declare-fun e!3629441 () Bool)

(declare-fun tp!1649117 () Bool)

(declare-fun tp!1649121 () Bool)

(assert (=> b!5929897 (= e!3629441 (and tp!1649117 tp!1649121))))

(declare-fun b!5929898 () Bool)

(declare-fun tp!1649118 () Bool)

(assert (=> b!5929898 (= e!3629441 tp!1649118)))

(assert (=> b!5928934 (= tp!1648799 e!3629441)))

(declare-fun b!5929896 () Bool)

(assert (=> b!5929896 (= e!3629441 tp_is_empty!41207)))

(declare-fun b!5929899 () Bool)

(declare-fun tp!1649120 () Bool)

(declare-fun tp!1649119 () Bool)

(assert (=> b!5929899 (= e!3629441 (and tp!1649120 tp!1649119))))

(assert (= (and b!5928934 ((_ is ElementMatch!15977) (reg!16306 (reg!16306 r!7292)))) b!5929896))

(assert (= (and b!5928934 ((_ is Concat!24822) (reg!16306 (reg!16306 r!7292)))) b!5929897))

(assert (= (and b!5928934 ((_ is Star!15977) (reg!16306 (reg!16306 r!7292)))) b!5929898))

(assert (= (and b!5928934 ((_ is Union!15977) (reg!16306 (reg!16306 r!7292)))) b!5929899))

(declare-fun b!5929901 () Bool)

(declare-fun e!3629442 () Bool)

(declare-fun tp!1649122 () Bool)

(declare-fun tp!1649126 () Bool)

(assert (=> b!5929901 (= e!3629442 (and tp!1649122 tp!1649126))))

(declare-fun b!5929902 () Bool)

(declare-fun tp!1649123 () Bool)

(assert (=> b!5929902 (= e!3629442 tp!1649123)))

(assert (=> b!5928933 (= tp!1648798 e!3629442)))

(declare-fun b!5929900 () Bool)

(assert (=> b!5929900 (= e!3629442 tp_is_empty!41207)))

(declare-fun b!5929903 () Bool)

(declare-fun tp!1649125 () Bool)

(declare-fun tp!1649124 () Bool)

(assert (=> b!5929903 (= e!3629442 (and tp!1649125 tp!1649124))))

(assert (= (and b!5928933 ((_ is ElementMatch!15977) (regOne!32466 (reg!16306 r!7292)))) b!5929900))

(assert (= (and b!5928933 ((_ is Concat!24822) (regOne!32466 (reg!16306 r!7292)))) b!5929901))

(assert (= (and b!5928933 ((_ is Star!15977) (regOne!32466 (reg!16306 r!7292)))) b!5929902))

(assert (= (and b!5928933 ((_ is Union!15977) (regOne!32466 (reg!16306 r!7292)))) b!5929903))

(declare-fun b!5929905 () Bool)

(declare-fun e!3629443 () Bool)

(declare-fun tp!1649127 () Bool)

(declare-fun tp!1649131 () Bool)

(assert (=> b!5929905 (= e!3629443 (and tp!1649127 tp!1649131))))

(declare-fun b!5929906 () Bool)

(declare-fun tp!1649128 () Bool)

(assert (=> b!5929906 (= e!3629443 tp!1649128)))

(assert (=> b!5928933 (= tp!1648802 e!3629443)))

(declare-fun b!5929904 () Bool)

(assert (=> b!5929904 (= e!3629443 tp_is_empty!41207)))

(declare-fun b!5929907 () Bool)

(declare-fun tp!1649130 () Bool)

(declare-fun tp!1649129 () Bool)

(assert (=> b!5929907 (= e!3629443 (and tp!1649130 tp!1649129))))

(assert (= (and b!5928933 ((_ is ElementMatch!15977) (regTwo!32466 (reg!16306 r!7292)))) b!5929904))

(assert (= (and b!5928933 ((_ is Concat!24822) (regTwo!32466 (reg!16306 r!7292)))) b!5929905))

(assert (= (and b!5928933 ((_ is Star!15977) (regTwo!32466 (reg!16306 r!7292)))) b!5929906))

(assert (= (and b!5928933 ((_ is Union!15977) (regTwo!32466 (reg!16306 r!7292)))) b!5929907))

(declare-fun b!5929909 () Bool)

(declare-fun e!3629444 () Bool)

(declare-fun tp!1649132 () Bool)

(declare-fun tp!1649136 () Bool)

(assert (=> b!5929909 (= e!3629444 (and tp!1649132 tp!1649136))))

(declare-fun b!5929910 () Bool)

(declare-fun tp!1649133 () Bool)

(assert (=> b!5929910 (= e!3629444 tp!1649133)))

(assert (=> b!5928935 (= tp!1648801 e!3629444)))

(declare-fun b!5929908 () Bool)

(assert (=> b!5929908 (= e!3629444 tp_is_empty!41207)))

(declare-fun b!5929911 () Bool)

(declare-fun tp!1649135 () Bool)

(declare-fun tp!1649134 () Bool)

(assert (=> b!5929911 (= e!3629444 (and tp!1649135 tp!1649134))))

(assert (= (and b!5928935 ((_ is ElementMatch!15977) (regOne!32467 (reg!16306 r!7292)))) b!5929908))

(assert (= (and b!5928935 ((_ is Concat!24822) (regOne!32467 (reg!16306 r!7292)))) b!5929909))

(assert (= (and b!5928935 ((_ is Star!15977) (regOne!32467 (reg!16306 r!7292)))) b!5929910))

(assert (= (and b!5928935 ((_ is Union!15977) (regOne!32467 (reg!16306 r!7292)))) b!5929911))

(declare-fun b!5929913 () Bool)

(declare-fun e!3629445 () Bool)

(declare-fun tp!1649137 () Bool)

(declare-fun tp!1649141 () Bool)

(assert (=> b!5929913 (= e!3629445 (and tp!1649137 tp!1649141))))

(declare-fun b!5929914 () Bool)

(declare-fun tp!1649138 () Bool)

(assert (=> b!5929914 (= e!3629445 tp!1649138)))

(assert (=> b!5928935 (= tp!1648800 e!3629445)))

(declare-fun b!5929912 () Bool)

(assert (=> b!5929912 (= e!3629445 tp_is_empty!41207)))

(declare-fun b!5929915 () Bool)

(declare-fun tp!1649140 () Bool)

(declare-fun tp!1649139 () Bool)

(assert (=> b!5929915 (= e!3629445 (and tp!1649140 tp!1649139))))

(assert (= (and b!5928935 ((_ is ElementMatch!15977) (regTwo!32467 (reg!16306 r!7292)))) b!5929912))

(assert (= (and b!5928935 ((_ is Concat!24822) (regTwo!32467 (reg!16306 r!7292)))) b!5929913))

(assert (= (and b!5928935 ((_ is Star!15977) (regTwo!32467 (reg!16306 r!7292)))) b!5929914))

(assert (= (and b!5928935 ((_ is Union!15977) (regTwo!32467 (reg!16306 r!7292)))) b!5929915))

(declare-fun b!5929917 () Bool)

(declare-fun e!3629446 () Bool)

(declare-fun tp!1649142 () Bool)

(declare-fun tp!1649146 () Bool)

(assert (=> b!5929917 (= e!3629446 (and tp!1649142 tp!1649146))))

(declare-fun b!5929918 () Bool)

(declare-fun tp!1649143 () Bool)

(assert (=> b!5929918 (= e!3629446 tp!1649143)))

(assert (=> b!5928952 (= tp!1648823 e!3629446)))

(declare-fun b!5929916 () Bool)

(assert (=> b!5929916 (= e!3629446 tp_is_empty!41207)))

(declare-fun b!5929919 () Bool)

(declare-fun tp!1649145 () Bool)

(declare-fun tp!1649144 () Bool)

(assert (=> b!5929919 (= e!3629446 (and tp!1649145 tp!1649144))))

(assert (= (and b!5928952 ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (h!70555 zl!343))))) b!5929916))

(assert (= (and b!5928952 ((_ is Concat!24822) (h!70554 (exprs!5861 (h!70555 zl!343))))) b!5929917))

(assert (= (and b!5928952 ((_ is Star!15977) (h!70554 (exprs!5861 (h!70555 zl!343))))) b!5929918))

(assert (= (and b!5928952 ((_ is Union!15977) (h!70554 (exprs!5861 (h!70555 zl!343))))) b!5929919))

(declare-fun b!5929920 () Bool)

(declare-fun e!3629447 () Bool)

(declare-fun tp!1649147 () Bool)

(declare-fun tp!1649148 () Bool)

(assert (=> b!5929920 (= e!3629447 (and tp!1649147 tp!1649148))))

(assert (=> b!5928952 (= tp!1648824 e!3629447)))

(assert (= (and b!5928952 ((_ is Cons!64106) (t!377627 (exprs!5861 (h!70555 zl!343))))) b!5929920))

(declare-fun b!5929922 () Bool)

(declare-fun e!3629449 () Bool)

(declare-fun tp!1649149 () Bool)

(assert (=> b!5929922 (= e!3629449 tp!1649149)))

(declare-fun e!3629448 () Bool)

(declare-fun b!5929921 () Bool)

(declare-fun tp!1649150 () Bool)

(assert (=> b!5929921 (= e!3629448 (and (inv!83189 (h!70555 (t!377628 (t!377628 zl!343)))) e!3629449 tp!1649150))))

(assert (=> b!5928959 (= tp!1648830 e!3629448)))

(assert (= b!5929921 b!5929922))

(assert (= (and b!5928959 ((_ is Cons!64107) (t!377628 (t!377628 zl!343)))) b!5929921))

(declare-fun m!6822760 () Bool)

(assert (=> b!5929921 m!6822760))

(declare-fun b_lambda!222711 () Bool)

(assert (= b_lambda!222695 (or d!1858774 b_lambda!222711)))

(declare-fun bs!1403100 () Bool)

(declare-fun d!1859152 () Bool)

(assert (= bs!1403100 (and d!1859152 d!1858774)))

(assert (=> bs!1403100 (= (dynLambda!25069 lambda!323396 (h!70554 lt!2310633)) (validRegex!7713 (h!70554 lt!2310633)))))

(declare-fun m!6822762 () Bool)

(assert (=> bs!1403100 m!6822762))

(assert (=> b!5929727 d!1859152))

(declare-fun b_lambda!222713 () Bool)

(assert (= b_lambda!222673 (or d!1858790 b_lambda!222713)))

(declare-fun bs!1403101 () Bool)

(declare-fun d!1859154 () Bool)

(assert (= bs!1403101 (and d!1859154 d!1858790)))

(assert (=> bs!1403101 (= (dynLambda!25069 lambda!323402 (h!70554 (exprs!5861 (h!70555 zl!343)))) (validRegex!7713 (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun m!6822764 () Bool)

(assert (=> bs!1403101 m!6822764))

(assert (=> b!5929115 d!1859154))

(declare-fun b_lambda!222715 () Bool)

(assert (= b_lambda!222677 (or d!1858804 b_lambda!222715)))

(declare-fun bs!1403102 () Bool)

(declare-fun d!1859156 () Bool)

(assert (= bs!1403102 (and d!1859156 d!1858804)))

(assert (=> bs!1403102 (= (dynLambda!25069 lambda!323412 (h!70554 (exprs!5861 (h!70555 zl!343)))) (validRegex!7713 (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> bs!1403102 m!6822764))

(assert (=> b!5929128 d!1859156))

(declare-fun b_lambda!222717 () Bool)

(assert (= b_lambda!222675 (or d!1858764 b_lambda!222717)))

(declare-fun bs!1403103 () Bool)

(declare-fun d!1859158 () Bool)

(assert (= bs!1403103 (and d!1859158 d!1858764)))

(assert (=> bs!1403103 (= (dynLambda!25069 lambda!323390 (h!70554 (exprs!5861 lt!2310576))) (validRegex!7713 (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun m!6822766 () Bool)

(assert (=> bs!1403103 m!6822766))

(assert (=> b!5929117 d!1859158))

(declare-fun b_lambda!222719 () Bool)

(assert (= b_lambda!222685 (or d!1858772 b_lambda!222719)))

(declare-fun bs!1403104 () Bool)

(declare-fun d!1859160 () Bool)

(assert (= bs!1403104 (and d!1859160 d!1858772)))

(assert (=> bs!1403104 (= (dynLambda!25069 lambda!323393 (h!70554 (unfocusZipperList!1398 zl!343))) (validRegex!7713 (h!70554 (unfocusZipperList!1398 zl!343))))))

(declare-fun m!6822768 () Bool)

(assert (=> bs!1403104 m!6822768))

(assert (=> b!5929412 d!1859160))

(declare-fun b_lambda!222721 () Bool)

(assert (= b_lambda!222687 (or d!1858760 b_lambda!222721)))

(declare-fun bs!1403105 () Bool)

(declare-fun d!1859162 () Bool)

(assert (= bs!1403105 (and d!1859162 d!1858760)))

(assert (=> bs!1403105 (= (dynLambda!25069 lambda!323389 (h!70554 (exprs!5861 setElem!40242))) (validRegex!7713 (h!70554 (exprs!5861 setElem!40242))))))

(declare-fun m!6822770 () Bool)

(assert (=> bs!1403105 m!6822770))

(assert (=> b!5929439 d!1859162))

(declare-fun b_lambda!222723 () Bool)

(assert (= b_lambda!222679 (or b!5928271 b_lambda!222723)))

(assert (=> d!1858898 d!1858806))

(check-sat (not b!5929910) (not b!5929795) (not b!5929081) (not b!5929287) (not d!1859022) (not b!5929788) (not b!5929066) (not b!5929067) (not b!5929440) (not bm!470548) (not b!5929862) (not bm!470506) (not bm!470620) (not b!5929845) (not b!5929150) (not b!5929898) (not b_lambda!222721) (not b!5929116) (not bm!470497) (not b!5929875) (not b!5929661) (not b!5929197) (not d!1859104) (not b!5929921) (not bm!470549) (not b!5929920) (not bm!470519) (not b_lambda!222717) (not b!5929543) (not b!5929878) (not bm!470561) (not b!5929887) (not b!5929404) (not b!5929879) (not b!5929286) (not b!5929347) (not d!1859060) (not b!5929615) (not d!1859136) (not b!5929914) (not b!5929065) (not b!5929853) (not b!5929129) (not b!5929657) (not bm!470595) (not b!5929854) (not b!5929385) (not b!5929427) (not b!5929023) (not d!1858948) (not b!5929811) (not b!5929025) (not b!5929786) (not b!5929549) (not d!1859058) (not b!5929138) (not b!5929787) (not bm!470597) (not bm!470527) (not bm!470621) (not b!5929901) (not bm!470504) (not b!5929192) (not d!1859016) (not b!5929513) (not b!5929244) (not b!5929564) (not bm!470581) (not b!5929831) (not b!5929838) (not b_lambda!222667) (not bs!1403105) (not b!5929913) (not b!5929861) (not b!5929141) (not b!5929189) (not b!5929147) (not b!5929915) (not d!1859008) (not b!5929863) (not b!5929839) (not b!5929882) (not b!5929784) (not d!1859024) (not d!1859088) (not b_lambda!222715) (not b!5929759) (not b!5929140) (not b!5929282) (not b_lambda!222713) (not b!5929832) (not b!5929550) (not d!1858862) (not b!5929472) (not d!1859062) (not bm!470613) (not b!5929774) (not d!1858968) (not b!5929922) (not d!1859026) (not b!5929746) (not b!5929130) (not b!5929563) (not b!5929635) (not bm!470598) (not d!1859084) (not b!5929194) (not b!5929830) (not b!5929891) (not b!5929470) (not bm!470579) (not bm!470619) (not b!5929783) (not b!5929350) (not bm!470615) (not b!5929133) (not b!5929919) (not b!5929744) (not bs!1403102) (not bm!470513) (not b!5929279) (not b!5929131) (not b!5929638) (not b!5929917) (not bm!470580) (not b!5929874) (not b!5929895) (not setNonEmpty!40256) (not b!5929134) (not bm!470518) (not b!5929810) (not bm!470525) (not d!1858980) (not b!5929245) (not bm!470507) (not bm!470565) (not b_lambda!222723) (not b!5929132) (not b!5929092) (not d!1858898) (not b!5929738) (not d!1859010) (not b!5929235) (not bm!470503) (not b!5929752) (not b!5929554) (not d!1858998) (not b!5929354) (not b!5929883) (not d!1858834) (not d!1858846) (not b!5929285) (not b!5929020) (not bs!1403104) (not bm!470570) (not b!5929782) (not b!5929148) (not b!5929873) (not b!5929847) (not d!1859040) (not b!5929137) (not d!1858994) (not b!5929902) (not b!5929818) (not d!1858906) (not b!5929315) (not b!5929542) (not b!5929803) (not b!5929314) (not b!5929467) (not bm!470629) (not bs!1403101) (not bm!470569) (not b!5929395) (not b!5929775) (not b!5929870) (not b!5929824) (not b!5929390) (not b!5929460) (not d!1858922) (not bm!470566) (not b!5929320) (not b!5929753) (not b!5929198) (not b!5929386) (not b!5929890) (not b!5929566) (not b!5929894) (not b!5929871) (not b!5929619) (not b!5929358) (not d!1858920) (not b!5929804) (not bm!470614) (not b!5929196) (not bm!470496) (not b!5929907) (not b!5929556) (not b!5929809) (not b!5929796) (not bm!470512) (not b!5929468) (not d!1858858) (not b!5929893) (not b!5929413) (not b!5929889) (not b!5929846) (not b!5929152) (not b!5929284) (not b!5929905) (not bm!470550) (not d!1859020) (not b!5929461) (not d!1858900) (not b!5929120) (not bm!470567) (not b!5929855) (not b!5929552) (not bm!470524) (not b!5929236) (not bm!470578) (not b!5929754) (not b!5929802) (not b!5929794) (not b!5929351) (not d!1858856) (not bm!470592) (not b!5929869) (not bs!1403100) (not b!5929906) tp_is_empty!41207 (not b!5929903) (not b!5929767) (not bm!470528) (not b!5929918) (not b!5929768) (not b!5929118) (not b!5929595) (not b!5929057) (not b!5929819) (not b!5929388) (not bm!470600) (not b!5929557) (not b!5929379) (not bm!470628) (not b_lambda!222711) (not b!5929881) (not b_lambda!222719) (not bs!1403103) (not b!5929378) (not b!5929028) (not b!5929568) (not b!5929168) (not b!5929909) (not b!5929766) (not b!5929886) (not b!5929897) (not b!5929058) (not b!5929911) (not bm!470523) (not d!1859096) (not b!5929524) (not b!5929745) (not bm!470599) (not setNonEmpty!40254) (not b!5929157) (not bm!470511) (not b!5929190) (not b!5929817) (not b!5929776) (not d!1859132) (not b!5929899) (not b!5929877) (not bm!470552) (not b!5929885) (not b!5929728) (not b!5929181) (not bm!470517) (not d!1859074) (not d!1858954))
(check-sat)
(get-model)

(declare-fun d!1859164 () Bool)

(assert (=> d!1859164 (= (nullable!5972 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))) (nullableFct!1944 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))

(declare-fun bs!1403106 () Bool)

(assert (= bs!1403106 d!1859164))

(declare-fun m!6822772 () Bool)

(assert (=> bs!1403106 m!6822772))

(assert (=> b!5929168 d!1859164))

(declare-fun d!1859166 () Bool)

(assert (=> d!1859166 (= (Exists!3047 (ite c!1054106 lambda!323446 lambda!323447)) (choose!44703 (ite c!1054106 lambda!323446 lambda!323447)))))

(declare-fun bs!1403107 () Bool)

(assert (= bs!1403107 d!1859166))

(declare-fun m!6822774 () Bool)

(assert (=> bs!1403107 m!6822774))

(assert (=> bm!470628 d!1859166))

(declare-fun b!5929923 () Bool)

(declare-fun c!1054124 () Bool)

(assert (=> b!5929923 (= c!1054124 (nullable!5972 (regOne!32466 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)))))))

(declare-fun e!3629453 () Regex!15977)

(declare-fun e!3629451 () Regex!15977)

(assert (=> b!5929923 (= e!3629453 e!3629451)))

(declare-fun d!1859168 () Bool)

(declare-fun lt!2310699 () Regex!15977)

(assert (=> d!1859168 (validRegex!7713 lt!2310699)))

(declare-fun e!3629454 () Regex!15977)

(assert (=> d!1859168 (= lt!2310699 e!3629454)))

(declare-fun c!1054122 () Bool)

(assert (=> d!1859168 (= c!1054122 (or ((_ is EmptyExpr!15977) (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292))) ((_ is EmptyLang!15977) (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)))))))

(assert (=> d!1859168 (validRegex!7713 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)))))

(assert (=> d!1859168 (= (derivativeStep!4708 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)) (head!12495 s!2326)) lt!2310699)))

(declare-fun b!5929924 () Bool)

(declare-fun e!3629450 () Regex!15977)

(assert (=> b!5929924 (= e!3629454 e!3629450)))

(declare-fun c!1054121 () Bool)

(assert (=> b!5929924 (= c!1054121 ((_ is ElementMatch!15977) (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292))))))

(declare-fun call!470650 () Regex!15977)

(declare-fun b!5929925 () Bool)

(declare-fun call!470648 () Regex!15977)

(assert (=> b!5929925 (= e!3629451 (Union!15977 (Concat!24822 call!470648 (regTwo!32466 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)))) call!470650))))

(declare-fun b!5929926 () Bool)

(declare-fun e!3629452 () Regex!15977)

(assert (=> b!5929926 (= e!3629452 e!3629453)))

(declare-fun c!1054120 () Bool)

(assert (=> b!5929926 (= c!1054120 ((_ is Star!15977) (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292))))))

(declare-fun b!5929927 () Bool)

(declare-fun c!1054123 () Bool)

(assert (=> b!5929927 (= c!1054123 ((_ is Union!15977) (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292))))))

(assert (=> b!5929927 (= e!3629450 e!3629452)))

(declare-fun b!5929928 () Bool)

(declare-fun call!470649 () Regex!15977)

(assert (=> b!5929928 (= e!3629453 (Concat!24822 call!470649 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292))))))

(declare-fun b!5929929 () Bool)

(declare-fun call!470647 () Regex!15977)

(assert (=> b!5929929 (= e!3629452 (Union!15977 call!470647 call!470648))))

(declare-fun bm!470642 () Bool)

(assert (=> bm!470642 (= call!470647 (derivativeStep!4708 (ite c!1054123 (regOne!32467 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054120 (reg!16306 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054124 (regTwo!32466 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)))))) (head!12495 s!2326)))))

(declare-fun b!5929930 () Bool)

(assert (=> b!5929930 (= e!3629451 (Union!15977 (Concat!24822 call!470650 (regTwo!32466 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)))) EmptyLang!15977))))

(declare-fun b!5929931 () Bool)

(assert (=> b!5929931 (= e!3629450 (ite (= (head!12495 s!2326) (c!1053727 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)))) EmptyExpr!15977 EmptyLang!15977))))

(declare-fun bm!470643 () Bool)

(assert (=> bm!470643 (= call!470649 call!470647)))

(declare-fun bm!470644 () Bool)

(assert (=> bm!470644 (= call!470650 call!470649)))

(declare-fun bm!470645 () Bool)

(assert (=> bm!470645 (= call!470648 (derivativeStep!4708 (ite c!1054123 (regTwo!32467 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1054067 (regTwo!32467 r!7292) (regOne!32466 r!7292)))) (head!12495 s!2326)))))

(declare-fun b!5929932 () Bool)

(assert (=> b!5929932 (= e!3629454 EmptyLang!15977)))

(assert (= (and d!1859168 c!1054122) b!5929932))

(assert (= (and d!1859168 (not c!1054122)) b!5929924))

(assert (= (and b!5929924 c!1054121) b!5929931))

(assert (= (and b!5929924 (not c!1054121)) b!5929927))

(assert (= (and b!5929927 c!1054123) b!5929929))

(assert (= (and b!5929927 (not c!1054123)) b!5929926))

(assert (= (and b!5929926 c!1054120) b!5929928))

(assert (= (and b!5929926 (not c!1054120)) b!5929923))

(assert (= (and b!5929923 c!1054124) b!5929925))

(assert (= (and b!5929923 (not c!1054124)) b!5929930))

(assert (= (or b!5929925 b!5929930) bm!470644))

(assert (= (or b!5929928 bm!470644) bm!470643))

(assert (= (or b!5929929 b!5929925) bm!470645))

(assert (= (or b!5929929 bm!470643) bm!470642))

(declare-fun m!6822776 () Bool)

(assert (=> b!5929923 m!6822776))

(declare-fun m!6822778 () Bool)

(assert (=> d!1859168 m!6822778))

(declare-fun m!6822780 () Bool)

(assert (=> d!1859168 m!6822780))

(assert (=> bm!470642 m!6821752))

(declare-fun m!6822782 () Bool)

(assert (=> bm!470642 m!6822782))

(assert (=> bm!470645 m!6821752))

(declare-fun m!6822784 () Bool)

(assert (=> bm!470645 m!6822784))

(assert (=> bm!470595 d!1859168))

(declare-fun b!5929934 () Bool)

(declare-fun e!3629455 () Bool)

(declare-fun e!3629457 () Bool)

(assert (=> b!5929934 (= e!3629455 e!3629457)))

(declare-fun res!2484756 () Bool)

(assert (=> b!5929934 (= res!2484756 (not (nullable!5972 (reg!16306 (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))))))))

(assert (=> b!5929934 (=> (not res!2484756) (not e!3629457))))

(declare-fun b!5929935 () Bool)

(declare-fun res!2484754 () Bool)

(declare-fun e!3629456 () Bool)

(assert (=> b!5929935 (=> res!2484754 e!3629456)))

(assert (=> b!5929935 (= res!2484754 (not ((_ is Concat!24822) (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627)))))))

(declare-fun e!3629461 () Bool)

(assert (=> b!5929935 (= e!3629461 e!3629456)))

(declare-fun b!5929936 () Bool)

(declare-fun e!3629458 () Bool)

(declare-fun call!470652 () Bool)

(assert (=> b!5929936 (= e!3629458 call!470652)))

(declare-fun bm!470646 () Bool)

(declare-fun call!470651 () Bool)

(assert (=> bm!470646 (= call!470652 call!470651)))

(declare-fun b!5929937 () Bool)

(declare-fun e!3629459 () Bool)

(assert (=> b!5929937 (= e!3629459 e!3629455)))

(declare-fun c!1054126 () Bool)

(assert (=> b!5929937 (= c!1054126 ((_ is Star!15977) (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))))))

(declare-fun b!5929938 () Bool)

(assert (=> b!5929938 (= e!3629456 e!3629458)))

(declare-fun res!2484757 () Bool)

(assert (=> b!5929938 (=> (not res!2484757) (not e!3629458))))

(declare-fun call!470653 () Bool)

(assert (=> b!5929938 (= res!2484757 call!470653)))

(declare-fun b!5929939 () Bool)

(assert (=> b!5929939 (= e!3629457 call!470651)))

(declare-fun c!1054125 () Bool)

(declare-fun bm!470647 () Bool)

(assert (=> bm!470647 (= call!470651 (validRegex!7713 (ite c!1054126 (reg!16306 (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))) (ite c!1054125 (regTwo!32467 (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))) (regTwo!32466 (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627)))))))))

(declare-fun b!5929940 () Bool)

(assert (=> b!5929940 (= e!3629455 e!3629461)))

(assert (=> b!5929940 (= c!1054125 ((_ is Union!15977) (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))))))

(declare-fun b!5929933 () Bool)

(declare-fun res!2484755 () Bool)

(declare-fun e!3629460 () Bool)

(assert (=> b!5929933 (=> (not res!2484755) (not e!3629460))))

(assert (=> b!5929933 (= res!2484755 call!470653)))

(assert (=> b!5929933 (= e!3629461 e!3629460)))

(declare-fun d!1859170 () Bool)

(declare-fun res!2484753 () Bool)

(assert (=> d!1859170 (=> res!2484753 e!3629459)))

(assert (=> d!1859170 (= res!2484753 ((_ is ElementMatch!15977) (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))))))

(assert (=> d!1859170 (= (validRegex!7713 (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))) e!3629459)))

(declare-fun b!5929941 () Bool)

(assert (=> b!5929941 (= e!3629460 call!470652)))

(declare-fun bm!470648 () Bool)

(assert (=> bm!470648 (= call!470653 (validRegex!7713 (ite c!1054125 (regOne!32467 (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))) (regOne!32466 (ite c!1053959 (regOne!32467 lt!2310627) (regOne!32466 lt!2310627))))))))

(assert (= (and d!1859170 (not res!2484753)) b!5929937))

(assert (= (and b!5929937 c!1054126) b!5929934))

(assert (= (and b!5929937 (not c!1054126)) b!5929940))

(assert (= (and b!5929934 res!2484756) b!5929939))

(assert (= (and b!5929940 c!1054125) b!5929933))

(assert (= (and b!5929940 (not c!1054125)) b!5929935))

(assert (= (and b!5929933 res!2484755) b!5929941))

(assert (= (and b!5929935 (not res!2484754)) b!5929938))

(assert (= (and b!5929938 res!2484757) b!5929936))

(assert (= (or b!5929941 b!5929936) bm!470646))

(assert (= (or b!5929933 b!5929938) bm!470648))

(assert (= (or b!5929939 bm!470646) bm!470647))

(declare-fun m!6822786 () Bool)

(assert (=> b!5929934 m!6822786))

(declare-fun m!6822788 () Bool)

(assert (=> bm!470647 m!6822788))

(declare-fun m!6822790 () Bool)

(assert (=> bm!470648 m!6822790))

(assert (=> bm!470528 d!1859170))

(declare-fun bm!470649 () Bool)

(declare-fun call!470657 () (InoxSet Context!10722))

(declare-fun call!470654 () (InoxSet Context!10722))

(assert (=> bm!470649 (= call!470657 call!470654)))

(declare-fun d!1859172 () Bool)

(declare-fun c!1054130 () Bool)

(assert (=> d!1859172 (= c!1054130 (and ((_ is ElementMatch!15977) (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))) (= (c!1053727 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))) (h!70556 s!2326))))))

(declare-fun e!3629466 () (InoxSet Context!10722))

(assert (=> d!1859172 (= (derivationStepZipperDown!1227 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343))))))) (ite (or c!1054000 c!1054001) (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470551)) (h!70556 s!2326)) e!3629466)))

(declare-fun bm!470650 () Bool)

(declare-fun call!470656 () (InoxSet Context!10722))

(assert (=> bm!470650 (= call!470656 call!470657)))

(declare-fun b!5929942 () Bool)

(declare-fun e!3629464 () (InoxSet Context!10722))

(assert (=> b!5929942 (= e!3629464 call!470656)))

(declare-fun b!5929943 () Bool)

(declare-fun e!3629463 () (InoxSet Context!10722))

(declare-fun e!3629462 () (InoxSet Context!10722))

(assert (=> b!5929943 (= e!3629463 e!3629462)))

(declare-fun c!1054127 () Bool)

(assert (=> b!5929943 (= c!1054127 ((_ is Concat!24822) (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))))

(declare-fun b!5929944 () Bool)

(declare-fun e!3629467 () (InoxSet Context!10722))

(assert (=> b!5929944 (= e!3629466 e!3629467)))

(declare-fun c!1054128 () Bool)

(assert (=> b!5929944 (= c!1054128 ((_ is Union!15977) (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))))

(declare-fun e!3629465 () Bool)

(declare-fun b!5929945 () Bool)

(assert (=> b!5929945 (= e!3629465 (nullable!5972 (regOne!32466 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343))))))))))))

(declare-fun bm!470651 () Bool)

(declare-fun call!470655 () List!64230)

(declare-fun call!470659 () List!64230)

(assert (=> bm!470651 (= call!470655 call!470659)))

(declare-fun b!5929946 () Bool)

(declare-fun call!470658 () (InoxSet Context!10722))

(assert (=> b!5929946 (= e!3629463 ((_ map or) call!470658 call!470657))))

(declare-fun c!1054129 () Bool)

(declare-fun bm!470652 () Bool)

(assert (=> bm!470652 (= call!470659 ($colon$colon!1864 (exprs!5861 (ite (or c!1054000 c!1054001) (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470551))) (ite (or c!1054129 c!1054127) (regTwo!32466 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))) (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343))))))))))))

(declare-fun b!5929947 () Bool)

(assert (=> b!5929947 (= e!3629464 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929948 () Bool)

(assert (=> b!5929948 (= e!3629462 call!470656)))

(declare-fun b!5929949 () Bool)

(assert (=> b!5929949 (= e!3629466 (store ((as const (Array Context!10722 Bool)) false) (ite (or c!1054000 c!1054001) (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470551)) true))))

(declare-fun bm!470653 () Bool)

(assert (=> bm!470653 (= call!470658 (derivationStepZipperDown!1227 (ite c!1054128 (regOne!32467 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))) (regOne!32466 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343))))))))) (ite c!1054128 (ite (or c!1054000 c!1054001) (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470551)) (Context!10723 call!470659)) (h!70556 s!2326)))))

(declare-fun bm!470654 () Bool)

(assert (=> bm!470654 (= call!470654 (derivationStepZipperDown!1227 (ite c!1054128 (regTwo!32467 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))) (ite c!1054129 (regTwo!32466 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))) (ite c!1054127 (regOne!32466 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))) (reg!16306 (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343))))))))))) (ite (or c!1054128 c!1054129) (ite (or c!1054000 c!1054001) (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470551)) (Context!10723 call!470655)) (h!70556 s!2326)))))

(declare-fun b!5929950 () Bool)

(assert (=> b!5929950 (= c!1054129 e!3629465)))

(declare-fun res!2484758 () Bool)

(assert (=> b!5929950 (=> (not res!2484758) (not e!3629465))))

(assert (=> b!5929950 (= res!2484758 ((_ is Concat!24822) (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))))

(assert (=> b!5929950 (= e!3629467 e!3629463)))

(declare-fun b!5929951 () Bool)

(assert (=> b!5929951 (= e!3629467 ((_ map or) call!470658 call!470654))))

(declare-fun c!1054131 () Bool)

(declare-fun b!5929952 () Bool)

(assert (=> b!5929952 (= c!1054131 ((_ is Star!15977) (ite c!1054000 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054001 (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1053999 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))))

(assert (=> b!5929952 (= e!3629462 e!3629464)))

(assert (= (and d!1859172 c!1054130) b!5929949))

(assert (= (and d!1859172 (not c!1054130)) b!5929944))

(assert (= (and b!5929944 c!1054128) b!5929951))

(assert (= (and b!5929944 (not c!1054128)) b!5929950))

(assert (= (and b!5929950 res!2484758) b!5929945))

(assert (= (and b!5929950 c!1054129) b!5929946))

(assert (= (and b!5929950 (not c!1054129)) b!5929943))

(assert (= (and b!5929943 c!1054127) b!5929948))

(assert (= (and b!5929943 (not c!1054127)) b!5929952))

(assert (= (and b!5929952 c!1054131) b!5929942))

(assert (= (and b!5929952 (not c!1054131)) b!5929947))

(assert (= (or b!5929948 b!5929942) bm!470651))

(assert (= (or b!5929948 b!5929942) bm!470650))

(assert (= (or b!5929946 bm!470651) bm!470652))

(assert (= (or b!5929946 bm!470650) bm!470649))

(assert (= (or b!5929951 bm!470649) bm!470654))

(assert (= (or b!5929951 b!5929946) bm!470653))

(declare-fun m!6822792 () Bool)

(assert (=> b!5929949 m!6822792))

(declare-fun m!6822794 () Bool)

(assert (=> bm!470652 m!6822794))

(declare-fun m!6822796 () Bool)

(assert (=> bm!470654 m!6822796))

(declare-fun m!6822798 () Bool)

(assert (=> bm!470653 m!6822798))

(declare-fun m!6822800 () Bool)

(assert (=> b!5929945 m!6822800))

(assert (=> bm!470550 d!1859172))

(declare-fun d!1859174 () Bool)

(declare-fun res!2484759 () Bool)

(declare-fun e!3629468 () Bool)

(assert (=> d!1859174 (=> res!2484759 e!3629468)))

(assert (=> d!1859174 (= res!2484759 ((_ is Nil!64106) (t!377627 (exprs!5861 setElem!40242))))))

(assert (=> d!1859174 (= (forall!15060 (t!377627 (exprs!5861 setElem!40242)) lambda!323389) e!3629468)))

(declare-fun b!5929953 () Bool)

(declare-fun e!3629469 () Bool)

(assert (=> b!5929953 (= e!3629468 e!3629469)))

(declare-fun res!2484760 () Bool)

(assert (=> b!5929953 (=> (not res!2484760) (not e!3629469))))

(assert (=> b!5929953 (= res!2484760 (dynLambda!25069 lambda!323389 (h!70554 (t!377627 (exprs!5861 setElem!40242)))))))

(declare-fun b!5929954 () Bool)

(assert (=> b!5929954 (= e!3629469 (forall!15060 (t!377627 (t!377627 (exprs!5861 setElem!40242))) lambda!323389))))

(assert (= (and d!1859174 (not res!2484759)) b!5929953))

(assert (= (and b!5929953 res!2484760) b!5929954))

(declare-fun b_lambda!222725 () Bool)

(assert (=> (not b_lambda!222725) (not b!5929953)))

(declare-fun m!6822802 () Bool)

(assert (=> b!5929953 m!6822802))

(declare-fun m!6822804 () Bool)

(assert (=> b!5929954 m!6822804))

(assert (=> b!5929440 d!1859174))

(declare-fun bm!470655 () Bool)

(declare-fun call!470663 () (InoxSet Context!10722))

(declare-fun call!470660 () (InoxSet Context!10722))

(assert (=> bm!470655 (= call!470663 call!470660)))

(declare-fun d!1859176 () Bool)

(declare-fun c!1054135 () Bool)

(assert (=> d!1859176 (= c!1054135 (and ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (= (c!1053727 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (h!70556 s!2326))))))

(declare-fun e!3629474 () (InoxSet Context!10722))

(assert (=> d!1859176 (= (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (h!70556 s!2326)) e!3629474)))

(declare-fun bm!470656 () Bool)

(declare-fun call!470662 () (InoxSet Context!10722))

(assert (=> bm!470656 (= call!470662 call!470663)))

(declare-fun b!5929955 () Bool)

(declare-fun e!3629472 () (InoxSet Context!10722))

(assert (=> b!5929955 (= e!3629472 call!470662)))

(declare-fun b!5929956 () Bool)

(declare-fun e!3629471 () (InoxSet Context!10722))

(declare-fun e!3629470 () (InoxSet Context!10722))

(assert (=> b!5929956 (= e!3629471 e!3629470)))

(declare-fun c!1054132 () Bool)

(assert (=> b!5929956 (= c!1054132 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))))))

(declare-fun b!5929957 () Bool)

(declare-fun e!3629475 () (InoxSet Context!10722))

(assert (=> b!5929957 (= e!3629474 e!3629475)))

(declare-fun c!1054133 () Bool)

(assert (=> b!5929957 (= c!1054133 ((_ is Union!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))))))

(declare-fun b!5929958 () Bool)

(declare-fun e!3629473 () Bool)

(assert (=> b!5929958 (= e!3629473 (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))))))

(declare-fun bm!470657 () Bool)

(declare-fun call!470661 () List!64230)

(declare-fun call!470665 () List!64230)

(assert (=> bm!470657 (= call!470661 call!470665)))

(declare-fun b!5929959 () Bool)

(declare-fun call!470664 () (InoxSet Context!10722))

(assert (=> b!5929959 (= e!3629471 ((_ map or) call!470664 call!470663))))

(declare-fun c!1054134 () Bool)

(declare-fun bm!470658 () Bool)

(assert (=> bm!470658 (= call!470665 ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))) (ite (or c!1054134 c!1054132) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))))))

(declare-fun b!5929960 () Bool)

(assert (=> b!5929960 (= e!3629472 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929961 () Bool)

(assert (=> b!5929961 (= e!3629470 call!470662)))

(declare-fun b!5929962 () Bool)

(assert (=> b!5929962 (= e!3629474 (store ((as const (Array Context!10722 Bool)) false) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) true))))

(declare-fun bm!470659 () Bool)

(assert (=> bm!470659 (= call!470664 (derivationStepZipperDown!1227 (ite c!1054133 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))) (ite c!1054133 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (Context!10723 call!470665)) (h!70556 s!2326)))))

(declare-fun bm!470660 () Bool)

(assert (=> bm!470660 (= call!470660 (derivationStepZipperDown!1227 (ite c!1054133 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (ite c!1054134 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (ite c!1054132 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))))) (ite (or c!1054133 c!1054134) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (Context!10723 call!470661)) (h!70556 s!2326)))))

(declare-fun b!5929963 () Bool)

(assert (=> b!5929963 (= c!1054134 e!3629473)))

(declare-fun res!2484761 () Bool)

(assert (=> b!5929963 (=> (not res!2484761) (not e!3629473))))

(assert (=> b!5929963 (= res!2484761 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))))))

(assert (=> b!5929963 (= e!3629475 e!3629471)))

(declare-fun b!5929964 () Bool)

(assert (=> b!5929964 (= e!3629475 ((_ map or) call!470664 call!470660))))

(declare-fun b!5929965 () Bool)

(declare-fun c!1054136 () Bool)

(assert (=> b!5929965 (= c!1054136 ((_ is Star!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))))))

(assert (=> b!5929965 (= e!3629470 e!3629472)))

(assert (= (and d!1859176 c!1054135) b!5929962))

(assert (= (and d!1859176 (not c!1054135)) b!5929957))

(assert (= (and b!5929957 c!1054133) b!5929964))

(assert (= (and b!5929957 (not c!1054133)) b!5929963))

(assert (= (and b!5929963 res!2484761) b!5929958))

(assert (= (and b!5929963 c!1054134) b!5929959))

(assert (= (and b!5929963 (not c!1054134)) b!5929956))

(assert (= (and b!5929956 c!1054132) b!5929961))

(assert (= (and b!5929956 (not c!1054132)) b!5929965))

(assert (= (and b!5929965 c!1054136) b!5929955))

(assert (= (and b!5929965 (not c!1054136)) b!5929960))

(assert (= (or b!5929961 b!5929955) bm!470657))

(assert (= (or b!5929961 b!5929955) bm!470656))

(assert (= (or b!5929959 bm!470657) bm!470658))

(assert (= (or b!5929959 bm!470656) bm!470655))

(assert (= (or b!5929964 bm!470655) bm!470660))

(assert (= (or b!5929964 b!5929959) bm!470659))

(declare-fun m!6822806 () Bool)

(assert (=> b!5929962 m!6822806))

(declare-fun m!6822808 () Bool)

(assert (=> bm!470658 m!6822808))

(declare-fun m!6822810 () Bool)

(assert (=> bm!470660 m!6822810))

(declare-fun m!6822812 () Bool)

(assert (=> bm!470659 m!6822812))

(declare-fun m!6822814 () Bool)

(assert (=> b!5929958 m!6822814))

(assert (=> bm!470496 d!1859176))

(declare-fun b!5929967 () Bool)

(declare-fun e!3629477 () List!64232)

(assert (=> b!5929967 (= e!3629477 (Cons!64108 (h!70556 (t!377629 (_1!36259 (get!22078 lt!2310648)))) (++!14074 (t!377629 (t!377629 (_1!36259 (get!22078 lt!2310648)))) (_2!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5929966 () Bool)

(assert (=> b!5929966 (= e!3629477 (_2!36259 (get!22078 lt!2310648)))))

(declare-fun d!1859178 () Bool)

(declare-fun e!3629476 () Bool)

(assert (=> d!1859178 e!3629476))

(declare-fun res!2484763 () Bool)

(assert (=> d!1859178 (=> (not res!2484763) (not e!3629476))))

(declare-fun lt!2310700 () List!64232)

(assert (=> d!1859178 (= res!2484763 (= (content!11814 lt!2310700) ((_ map or) (content!11814 (t!377629 (_1!36259 (get!22078 lt!2310648)))) (content!11814 (_2!36259 (get!22078 lt!2310648))))))))

(assert (=> d!1859178 (= lt!2310700 e!3629477)))

(declare-fun c!1054137 () Bool)

(assert (=> d!1859178 (= c!1054137 ((_ is Nil!64108) (t!377629 (_1!36259 (get!22078 lt!2310648)))))))

(assert (=> d!1859178 (= (++!14074 (t!377629 (_1!36259 (get!22078 lt!2310648))) (_2!36259 (get!22078 lt!2310648))) lt!2310700)))

(declare-fun b!5929969 () Bool)

(assert (=> b!5929969 (= e!3629476 (or (not (= (_2!36259 (get!22078 lt!2310648)) Nil!64108)) (= lt!2310700 (t!377629 (_1!36259 (get!22078 lt!2310648))))))))

(declare-fun b!5929968 () Bool)

(declare-fun res!2484762 () Bool)

(assert (=> b!5929968 (=> (not res!2484762) (not e!3629476))))

(assert (=> b!5929968 (= res!2484762 (= (size!40144 lt!2310700) (+ (size!40144 (t!377629 (_1!36259 (get!22078 lt!2310648)))) (size!40144 (_2!36259 (get!22078 lt!2310648))))))))

(assert (= (and d!1859178 c!1054137) b!5929966))

(assert (= (and d!1859178 (not c!1054137)) b!5929967))

(assert (= (and d!1859178 res!2484763) b!5929968))

(assert (= (and b!5929968 res!2484762) b!5929969))

(declare-fun m!6822816 () Bool)

(assert (=> b!5929967 m!6822816))

(declare-fun m!6822818 () Bool)

(assert (=> d!1859178 m!6822818))

(declare-fun m!6822820 () Bool)

(assert (=> d!1859178 m!6822820))

(assert (=> d!1859178 m!6822376))

(declare-fun m!6822822 () Bool)

(assert (=> b!5929968 m!6822822))

(declare-fun m!6822824 () Bool)

(assert (=> b!5929968 m!6822824))

(assert (=> b!5929968 m!6822382))

(assert (=> b!5929314 d!1859178))

(assert (=> b!5929556 d!1858890))

(declare-fun bm!470661 () Bool)

(declare-fun call!470669 () (InoxSet Context!10722))

(declare-fun call!470666 () (InoxSet Context!10722))

(assert (=> bm!470661 (= call!470669 call!470666)))

(declare-fun d!1859180 () Bool)

(declare-fun c!1054141 () Bool)

(assert (=> d!1859180 (= c!1054141 (and ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (= (c!1053727 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (h!70556 s!2326))))))

(declare-fun e!3629482 () (InoxSet Context!10722))

(assert (=> d!1859180 (= (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (h!70556 s!2326)) e!3629482)))

(declare-fun bm!470662 () Bool)

(declare-fun call!470668 () (InoxSet Context!10722))

(assert (=> bm!470662 (= call!470668 call!470669)))

(declare-fun b!5929970 () Bool)

(declare-fun e!3629480 () (InoxSet Context!10722))

(assert (=> b!5929970 (= e!3629480 call!470668)))

(declare-fun b!5929971 () Bool)

(declare-fun e!3629479 () (InoxSet Context!10722))

(declare-fun e!3629478 () (InoxSet Context!10722))

(assert (=> b!5929971 (= e!3629479 e!3629478)))

(declare-fun c!1054138 () Bool)

(assert (=> b!5929971 (= c!1054138 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))

(declare-fun b!5929972 () Bool)

(declare-fun e!3629483 () (InoxSet Context!10722))

(assert (=> b!5929972 (= e!3629482 e!3629483)))

(declare-fun c!1054139 () Bool)

(assert (=> b!5929972 (= c!1054139 ((_ is Union!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))

(declare-fun b!5929973 () Bool)

(declare-fun e!3629481 () Bool)

(assert (=> b!5929973 (= e!3629481 (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))))

(declare-fun bm!470663 () Bool)

(declare-fun call!470667 () List!64230)

(declare-fun call!470671 () List!64230)

(assert (=> bm!470663 (= call!470667 call!470671)))

(declare-fun b!5929974 () Bool)

(declare-fun call!470670 () (InoxSet Context!10722))

(assert (=> b!5929974 (= e!3629479 ((_ map or) call!470670 call!470669))))

(declare-fun c!1054140 () Bool)

(declare-fun bm!470664 () Bool)

(assert (=> bm!470664 (= call!470671 ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))) (ite (or c!1054140 c!1054138) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))))

(declare-fun b!5929975 () Bool)

(assert (=> b!5929975 (= e!3629480 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929976 () Bool)

(assert (=> b!5929976 (= e!3629478 call!470668)))

(declare-fun b!5929977 () Bool)

(assert (=> b!5929977 (= e!3629482 (store ((as const (Array Context!10722 Bool)) false) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) true))))

(declare-fun bm!470665 () Bool)

(assert (=> bm!470665 (= call!470670 (derivationStepZipperDown!1227 (ite c!1054139 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))) (ite c!1054139 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (Context!10723 call!470671)) (h!70556 s!2326)))))

(declare-fun bm!470666 () Bool)

(assert (=> bm!470666 (= call!470666 (derivationStepZipperDown!1227 (ite c!1054139 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (ite c!1054140 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (ite c!1054138 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))) (ite (or c!1054139 c!1054140) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (Context!10723 call!470667)) (h!70556 s!2326)))))

(declare-fun b!5929978 () Bool)

(assert (=> b!5929978 (= c!1054140 e!3629481)))

(declare-fun res!2484764 () Bool)

(assert (=> b!5929978 (=> (not res!2484764) (not e!3629481))))

(assert (=> b!5929978 (= res!2484764 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))

(assert (=> b!5929978 (= e!3629483 e!3629479)))

(declare-fun b!5929979 () Bool)

(assert (=> b!5929979 (= e!3629483 ((_ map or) call!470670 call!470666))))

(declare-fun b!5929980 () Bool)

(declare-fun c!1054142 () Bool)

(assert (=> b!5929980 (= c!1054142 ((_ is Star!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))

(assert (=> b!5929980 (= e!3629478 e!3629480)))

(assert (= (and d!1859180 c!1054141) b!5929977))

(assert (= (and d!1859180 (not c!1054141)) b!5929972))

(assert (= (and b!5929972 c!1054139) b!5929979))

(assert (= (and b!5929972 (not c!1054139)) b!5929978))

(assert (= (and b!5929978 res!2484764) b!5929973))

(assert (= (and b!5929978 c!1054140) b!5929974))

(assert (= (and b!5929978 (not c!1054140)) b!5929971))

(assert (= (and b!5929971 c!1054138) b!5929976))

(assert (= (and b!5929971 (not c!1054138)) b!5929980))

(assert (= (and b!5929980 c!1054142) b!5929970))

(assert (= (and b!5929980 (not c!1054142)) b!5929975))

(assert (= (or b!5929976 b!5929970) bm!470663))

(assert (= (or b!5929976 b!5929970) bm!470662))

(assert (= (or b!5929974 bm!470663) bm!470664))

(assert (= (or b!5929974 bm!470662) bm!470661))

(assert (= (or b!5929979 bm!470661) bm!470666))

(assert (= (or b!5929979 b!5929974) bm!470665))

(declare-fun m!6822826 () Bool)

(assert (=> b!5929977 m!6822826))

(declare-fun m!6822828 () Bool)

(assert (=> bm!470664 m!6822828))

(declare-fun m!6822830 () Bool)

(assert (=> bm!470666 m!6822830))

(declare-fun m!6822832 () Bool)

(assert (=> bm!470665 m!6822832))

(declare-fun m!6822834 () Bool)

(assert (=> b!5929973 m!6822834))

(assert (=> bm!470552 d!1859180))

(declare-fun d!1859182 () Bool)

(assert (=> d!1859182 (= (isEmpty!35969 (tail!11581 (t!377627 (exprs!5861 (h!70555 zl!343))))) ((_ is Nil!64106) (tail!11581 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(assert (=> b!5929190 d!1859182))

(declare-fun d!1859184 () Bool)

(assert (=> d!1859184 (= (tail!11581 (t!377627 (exprs!5861 (h!70555 zl!343)))) (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> b!5929190 d!1859184))

(declare-fun d!1859186 () Bool)

(assert (not d!1859186))

(assert (=> b!5929378 d!1859186))

(declare-fun bs!1403108 () Bool)

(declare-fun d!1859188 () Bool)

(assert (= bs!1403108 (and d!1859188 d!1859074)))

(declare-fun lambda!323449 () Int)

(assert (=> bs!1403108 (= lambda!323449 lambda!323441)))

(declare-fun bs!1403109 () Bool)

(assert (= bs!1403109 (and d!1859188 d!1859016)))

(assert (=> bs!1403109 (= lambda!323449 lambda!323429)))

(declare-fun bs!1403110 () Bool)

(assert (= bs!1403110 (and d!1859188 d!1858790)))

(assert (=> bs!1403110 (= lambda!323449 lambda!323402)))

(declare-fun bs!1403111 () Bool)

(assert (= bs!1403111 (and d!1859188 d!1858772)))

(assert (=> bs!1403111 (= lambda!323449 lambda!323393)))

(declare-fun bs!1403112 () Bool)

(assert (= bs!1403112 (and d!1859188 d!1858760)))

(assert (=> bs!1403112 (= lambda!323449 lambda!323389)))

(declare-fun bs!1403113 () Bool)

(assert (= bs!1403113 (and d!1859188 d!1858764)))

(assert (=> bs!1403113 (= lambda!323449 lambda!323390)))

(declare-fun bs!1403114 () Bool)

(assert (= bs!1403114 (and d!1859188 d!1858804)))

(assert (=> bs!1403114 (= lambda!323449 lambda!323412)))

(declare-fun bs!1403115 () Bool)

(assert (= bs!1403115 (and d!1859188 d!1858774)))

(assert (=> bs!1403115 (= lambda!323449 lambda!323396)))

(declare-fun bs!1403116 () Bool)

(assert (= bs!1403116 (and d!1859188 d!1859132)))

(assert (=> bs!1403116 (= lambda!323449 lambda!323448)))

(declare-fun bs!1403117 () Bool)

(assert (= bs!1403117 (and d!1859188 d!1858900)))

(assert (=> bs!1403117 (= lambda!323449 lambda!323422)))

(declare-fun bs!1403118 () Bool)

(assert (= bs!1403118 (and d!1859188 d!1858920)))

(assert (=> bs!1403118 (= lambda!323449 lambda!323425)))

(declare-fun b!5929981 () Bool)

(declare-fun e!3629486 () Bool)

(declare-fun lt!2310701 () Regex!15977)

(assert (=> b!5929981 (= e!3629486 (isUnion!844 lt!2310701))))

(declare-fun b!5929982 () Bool)

(declare-fun e!3629489 () Regex!15977)

(assert (=> b!5929982 (= e!3629489 (Union!15977 (h!70554 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))) (generalisedUnion!1821 (t!377627 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))))))))

(declare-fun b!5929983 () Bool)

(declare-fun e!3629488 () Bool)

(assert (=> b!5929983 (= e!3629488 e!3629486)))

(declare-fun c!1054143 () Bool)

(assert (=> b!5929983 (= c!1054143 (isEmpty!35969 (tail!11581 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343))))))))

(declare-fun b!5929984 () Bool)

(assert (=> b!5929984 (= e!3629486 (= lt!2310701 (head!12496 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343))))))))

(declare-fun b!5929985 () Bool)

(declare-fun e!3629484 () Bool)

(assert (=> b!5929985 (= e!3629484 e!3629488)))

(declare-fun c!1054145 () Bool)

(assert (=> b!5929985 (= c!1054145 (isEmpty!35969 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5929986 () Bool)

(declare-fun e!3629485 () Regex!15977)

(assert (=> b!5929986 (= e!3629485 e!3629489)))

(declare-fun c!1054144 () Bool)

(assert (=> b!5929986 (= c!1054144 ((_ is Cons!64106) (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5929987 () Bool)

(assert (=> b!5929987 (= e!3629485 (h!70554 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5929988 () Bool)

(assert (=> b!5929988 (= e!3629488 (isEmptyLang!1414 lt!2310701))))

(assert (=> d!1859188 e!3629484))

(declare-fun res!2484765 () Bool)

(assert (=> d!1859188 (=> (not res!2484765) (not e!3629484))))

(assert (=> d!1859188 (= res!2484765 (validRegex!7713 lt!2310701))))

(assert (=> d!1859188 (= lt!2310701 e!3629485)))

(declare-fun c!1054146 () Bool)

(declare-fun e!3629487 () Bool)

(assert (=> d!1859188 (= c!1054146 e!3629487)))

(declare-fun res!2484766 () Bool)

(assert (=> d!1859188 (=> (not res!2484766) (not e!3629487))))

(assert (=> d!1859188 (= res!2484766 ((_ is Cons!64106) (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(assert (=> d!1859188 (forall!15060 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343))) lambda!323449)))

(assert (=> d!1859188 (= (generalisedUnion!1821 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))) lt!2310701)))

(declare-fun b!5929989 () Bool)

(assert (=> b!5929989 (= e!3629487 (isEmpty!35969 (t!377627 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343))))))))

(declare-fun b!5929990 () Bool)

(assert (=> b!5929990 (= e!3629489 EmptyLang!15977)))

(assert (= (and d!1859188 res!2484766) b!5929989))

(assert (= (and d!1859188 c!1054146) b!5929987))

(assert (= (and d!1859188 (not c!1054146)) b!5929986))

(assert (= (and b!5929986 c!1054144) b!5929982))

(assert (= (and b!5929986 (not c!1054144)) b!5929990))

(assert (= (and d!1859188 res!2484765) b!5929985))

(assert (= (and b!5929985 c!1054145) b!5929988))

(assert (= (and b!5929985 (not c!1054145)) b!5929983))

(assert (= (and b!5929983 c!1054143) b!5929984))

(assert (= (and b!5929983 (not c!1054143)) b!5929981))

(declare-fun m!6822836 () Bool)

(assert (=> b!5929982 m!6822836))

(declare-fun m!6822838 () Bool)

(assert (=> b!5929983 m!6822838))

(assert (=> b!5929983 m!6822838))

(declare-fun m!6822840 () Bool)

(assert (=> b!5929983 m!6822840))

(declare-fun m!6822842 () Bool)

(assert (=> d!1859188 m!6822842))

(declare-fun m!6822844 () Bool)

(assert (=> d!1859188 m!6822844))

(declare-fun m!6822846 () Bool)

(assert (=> b!5929988 m!6822846))

(assert (=> b!5929985 m!6822152))

(declare-fun m!6822848 () Bool)

(assert (=> b!5929984 m!6822848))

(declare-fun m!6822850 () Bool)

(assert (=> b!5929989 m!6822850))

(declare-fun m!6822852 () Bool)

(assert (=> b!5929981 m!6822852))

(assert (=> b!5929131 d!1859188))

(declare-fun d!1859190 () Bool)

(assert (=> d!1859190 (= (isEmpty!35972 Nil!64108) true)))

(assert (=> d!1859024 d!1859190))

(assert (=> d!1859024 d!1858872))

(declare-fun bm!470667 () Bool)

(declare-fun call!470675 () (InoxSet Context!10722))

(declare-fun call!470672 () (InoxSet Context!10722))

(assert (=> bm!470667 (= call!470675 call!470672)))

(declare-fun c!1054150 () Bool)

(declare-fun d!1859192 () Bool)

(assert (=> d!1859192 (= c!1054150 (and ((_ is ElementMatch!15977) (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))) (= (c!1053727 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))) (h!70556 s!2326))))))

(declare-fun e!3629494 () (InoxSet Context!10722))

(assert (=> d!1859192 (= (derivationStepZipperDown!1227 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))) (ite (or c!1053955 c!1053956) (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470526)) (h!70556 s!2326)) e!3629494)))

(declare-fun bm!470668 () Bool)

(declare-fun call!470674 () (InoxSet Context!10722))

(assert (=> bm!470668 (= call!470674 call!470675)))

(declare-fun b!5929991 () Bool)

(declare-fun e!3629492 () (InoxSet Context!10722))

(assert (=> b!5929991 (= e!3629492 call!470674)))

(declare-fun b!5929992 () Bool)

(declare-fun e!3629491 () (InoxSet Context!10722))

(declare-fun e!3629490 () (InoxSet Context!10722))

(assert (=> b!5929992 (= e!3629491 e!3629490)))

(declare-fun c!1054147 () Bool)

(assert (=> b!5929992 (= c!1054147 ((_ is Concat!24822) (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))))))

(declare-fun b!5929993 () Bool)

(declare-fun e!3629495 () (InoxSet Context!10722))

(assert (=> b!5929993 (= e!3629494 e!3629495)))

(declare-fun c!1054148 () Bool)

(assert (=> b!5929993 (= c!1054148 ((_ is Union!15977) (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))))))

(declare-fun e!3629493 () Bool)

(declare-fun b!5929994 () Bool)

(assert (=> b!5929994 (= e!3629493 (nullable!5972 (regOne!32466 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))))))

(declare-fun bm!470669 () Bool)

(declare-fun call!470673 () List!64230)

(declare-fun call!470677 () List!64230)

(assert (=> bm!470669 (= call!470673 call!470677)))

(declare-fun b!5929995 () Bool)

(declare-fun call!470676 () (InoxSet Context!10722))

(assert (=> b!5929995 (= e!3629491 ((_ map or) call!470676 call!470675))))

(declare-fun c!1054149 () Bool)

(declare-fun bm!470670 () Bool)

(assert (=> bm!470670 (= call!470677 ($colon$colon!1864 (exprs!5861 (ite (or c!1053955 c!1053956) (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470526))) (ite (or c!1054149 c!1054147) (regTwo!32466 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))) (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))))))

(declare-fun b!5929996 () Bool)

(assert (=> b!5929996 (= e!3629492 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5929997 () Bool)

(assert (=> b!5929997 (= e!3629490 call!470674)))

(declare-fun b!5929998 () Bool)

(assert (=> b!5929998 (= e!3629494 (store ((as const (Array Context!10722 Bool)) false) (ite (or c!1053955 c!1053956) (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470526)) true))))

(declare-fun bm!470671 () Bool)

(assert (=> bm!470671 (= call!470676 (derivationStepZipperDown!1227 (ite c!1054148 (regOne!32467 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))) (regOne!32466 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))) (ite c!1054148 (ite (or c!1053955 c!1053956) (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470526)) (Context!10723 call!470677)) (h!70556 s!2326)))))

(declare-fun bm!470672 () Bool)

(assert (=> bm!470672 (= call!470672 (derivationStepZipperDown!1227 (ite c!1054148 (regTwo!32467 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))) (ite c!1054149 (regTwo!32466 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))) (ite c!1054147 (regOne!32466 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))) (reg!16306 (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))))) (ite (or c!1054148 c!1054149) (ite (or c!1053955 c!1053956) (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470526)) (Context!10723 call!470673)) (h!70556 s!2326)))))

(declare-fun b!5929999 () Bool)

(assert (=> b!5929999 (= c!1054149 e!3629493)))

(declare-fun res!2484767 () Bool)

(assert (=> b!5929999 (=> (not res!2484767) (not e!3629493))))

(assert (=> b!5929999 (= res!2484767 ((_ is Concat!24822) (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))))))

(assert (=> b!5929999 (= e!3629495 e!3629491)))

(declare-fun b!5930000 () Bool)

(assert (=> b!5930000 (= e!3629495 ((_ map or) call!470676 call!470672))))

(declare-fun b!5930001 () Bool)

(declare-fun c!1054151 () Bool)

(assert (=> b!5930001 (= c!1054151 ((_ is Star!15977) (ite c!1053955 (regTwo!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053956 (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053954 (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (reg!16306 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))))))

(assert (=> b!5930001 (= e!3629490 e!3629492)))

(assert (= (and d!1859192 c!1054150) b!5929998))

(assert (= (and d!1859192 (not c!1054150)) b!5929993))

(assert (= (and b!5929993 c!1054148) b!5930000))

(assert (= (and b!5929993 (not c!1054148)) b!5929999))

(assert (= (and b!5929999 res!2484767) b!5929994))

(assert (= (and b!5929999 c!1054149) b!5929995))

(assert (= (and b!5929999 (not c!1054149)) b!5929992))

(assert (= (and b!5929992 c!1054147) b!5929997))

(assert (= (and b!5929992 (not c!1054147)) b!5930001))

(assert (= (and b!5930001 c!1054151) b!5929991))

(assert (= (and b!5930001 (not c!1054151)) b!5929996))

(assert (= (or b!5929997 b!5929991) bm!470669))

(assert (= (or b!5929997 b!5929991) bm!470668))

(assert (= (or b!5929995 bm!470669) bm!470670))

(assert (= (or b!5929995 bm!470668) bm!470667))

(assert (= (or b!5930000 bm!470667) bm!470672))

(assert (= (or b!5930000 b!5929995) bm!470671))

(declare-fun m!6822854 () Bool)

(assert (=> b!5929998 m!6822854))

(declare-fun m!6822856 () Bool)

(assert (=> bm!470670 m!6822856))

(declare-fun m!6822858 () Bool)

(assert (=> bm!470672 m!6822858))

(declare-fun m!6822860 () Bool)

(assert (=> bm!470671 m!6822860))

(declare-fun m!6822862 () Bool)

(assert (=> b!5929994 m!6822862))

(assert (=> bm!470525 d!1859192))

(declare-fun d!1859194 () Bool)

(assert (=> d!1859194 (= (isEmpty!35972 (_1!36259 (get!22078 lt!2310648))) ((_ is Nil!64108) (_1!36259 (get!22078 lt!2310648))))))

(assert (=> bm!470599 d!1859194))

(declare-fun b!5930003 () Bool)

(declare-fun e!3629496 () Bool)

(declare-fun e!3629498 () Bool)

(assert (=> b!5930003 (= e!3629496 e!3629498)))

(declare-fun res!2484771 () Bool)

(assert (=> b!5930003 (= res!2484771 (not (nullable!5972 (reg!16306 (h!70554 lt!2310633)))))))

(assert (=> b!5930003 (=> (not res!2484771) (not e!3629498))))

(declare-fun b!5930004 () Bool)

(declare-fun res!2484769 () Bool)

(declare-fun e!3629497 () Bool)

(assert (=> b!5930004 (=> res!2484769 e!3629497)))

(assert (=> b!5930004 (= res!2484769 (not ((_ is Concat!24822) (h!70554 lt!2310633))))))

(declare-fun e!3629502 () Bool)

(assert (=> b!5930004 (= e!3629502 e!3629497)))

(declare-fun b!5930005 () Bool)

(declare-fun e!3629499 () Bool)

(declare-fun call!470679 () Bool)

(assert (=> b!5930005 (= e!3629499 call!470679)))

(declare-fun bm!470673 () Bool)

(declare-fun call!470678 () Bool)

(assert (=> bm!470673 (= call!470679 call!470678)))

(declare-fun b!5930006 () Bool)

(declare-fun e!3629500 () Bool)

(assert (=> b!5930006 (= e!3629500 e!3629496)))

(declare-fun c!1054153 () Bool)

(assert (=> b!5930006 (= c!1054153 ((_ is Star!15977) (h!70554 lt!2310633)))))

(declare-fun b!5930007 () Bool)

(assert (=> b!5930007 (= e!3629497 e!3629499)))

(declare-fun res!2484772 () Bool)

(assert (=> b!5930007 (=> (not res!2484772) (not e!3629499))))

(declare-fun call!470680 () Bool)

(assert (=> b!5930007 (= res!2484772 call!470680)))

(declare-fun b!5930008 () Bool)

(assert (=> b!5930008 (= e!3629498 call!470678)))

(declare-fun bm!470674 () Bool)

(declare-fun c!1054152 () Bool)

(assert (=> bm!470674 (= call!470678 (validRegex!7713 (ite c!1054153 (reg!16306 (h!70554 lt!2310633)) (ite c!1054152 (regTwo!32467 (h!70554 lt!2310633)) (regTwo!32466 (h!70554 lt!2310633))))))))

(declare-fun b!5930009 () Bool)

(assert (=> b!5930009 (= e!3629496 e!3629502)))

(assert (=> b!5930009 (= c!1054152 ((_ is Union!15977) (h!70554 lt!2310633)))))

(declare-fun b!5930002 () Bool)

(declare-fun res!2484770 () Bool)

(declare-fun e!3629501 () Bool)

(assert (=> b!5930002 (=> (not res!2484770) (not e!3629501))))

(assert (=> b!5930002 (= res!2484770 call!470680)))

(assert (=> b!5930002 (= e!3629502 e!3629501)))

(declare-fun d!1859196 () Bool)

(declare-fun res!2484768 () Bool)

(assert (=> d!1859196 (=> res!2484768 e!3629500)))

(assert (=> d!1859196 (= res!2484768 ((_ is ElementMatch!15977) (h!70554 lt!2310633)))))

(assert (=> d!1859196 (= (validRegex!7713 (h!70554 lt!2310633)) e!3629500)))

(declare-fun b!5930010 () Bool)

(assert (=> b!5930010 (= e!3629501 call!470679)))

(declare-fun bm!470675 () Bool)

(assert (=> bm!470675 (= call!470680 (validRegex!7713 (ite c!1054152 (regOne!32467 (h!70554 lt!2310633)) (regOne!32466 (h!70554 lt!2310633)))))))

(assert (= (and d!1859196 (not res!2484768)) b!5930006))

(assert (= (and b!5930006 c!1054153) b!5930003))

(assert (= (and b!5930006 (not c!1054153)) b!5930009))

(assert (= (and b!5930003 res!2484771) b!5930008))

(assert (= (and b!5930009 c!1054152) b!5930002))

(assert (= (and b!5930009 (not c!1054152)) b!5930004))

(assert (= (and b!5930002 res!2484770) b!5930010))

(assert (= (and b!5930004 (not res!2484769)) b!5930007))

(assert (= (and b!5930007 res!2484772) b!5930005))

(assert (= (or b!5930010 b!5930005) bm!470673))

(assert (= (or b!5930002 b!5930007) bm!470675))

(assert (= (or b!5930008 bm!470673) bm!470674))

(declare-fun m!6822864 () Bool)

(assert (=> b!5930003 m!6822864))

(declare-fun m!6822866 () Bool)

(assert (=> bm!470674 m!6822866))

(declare-fun m!6822868 () Bool)

(assert (=> bm!470675 m!6822868))

(assert (=> bs!1403100 d!1859196))

(declare-fun d!1859198 () Bool)

(assert (=> d!1859198 (= ($colon$colon!1864 (exprs!5861 (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473))) (ite (or c!1053951 c!1053949) (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))) (Cons!64106 (ite (or c!1053951 c!1053949) (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (exprs!5861 (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)))))))

(assert (=> bm!470517 d!1859198))

(declare-fun b!5930012 () Bool)

(declare-fun e!3629503 () Bool)

(declare-fun e!3629505 () Bool)

(assert (=> b!5930012 (= e!3629503 e!3629505)))

(declare-fun res!2484776 () Bool)

(assert (=> b!5930012 (= res!2484776 (not (nullable!5972 (reg!16306 (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))))))))

(assert (=> b!5930012 (=> (not res!2484776) (not e!3629505))))

(declare-fun b!5930013 () Bool)

(declare-fun res!2484774 () Bool)

(declare-fun e!3629504 () Bool)

(assert (=> b!5930013 (=> res!2484774 e!3629504)))

(assert (=> b!5930013 (= res!2484774 (not ((_ is Concat!24822) (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630)))))))

(declare-fun e!3629509 () Bool)

(assert (=> b!5930013 (= e!3629509 e!3629504)))

(declare-fun b!5930014 () Bool)

(declare-fun e!3629506 () Bool)

(declare-fun call!470682 () Bool)

(assert (=> b!5930014 (= e!3629506 call!470682)))

(declare-fun bm!470676 () Bool)

(declare-fun call!470681 () Bool)

(assert (=> bm!470676 (= call!470682 call!470681)))

(declare-fun b!5930015 () Bool)

(declare-fun e!3629507 () Bool)

(assert (=> b!5930015 (= e!3629507 e!3629503)))

(declare-fun c!1054155 () Bool)

(assert (=> b!5930015 (= c!1054155 ((_ is Star!15977) (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))))))

(declare-fun b!5930016 () Bool)

(assert (=> b!5930016 (= e!3629504 e!3629506)))

(declare-fun res!2484777 () Bool)

(assert (=> b!5930016 (=> (not res!2484777) (not e!3629506))))

(declare-fun call!470683 () Bool)

(assert (=> b!5930016 (= res!2484777 call!470683)))

(declare-fun b!5930017 () Bool)

(assert (=> b!5930017 (= e!3629505 call!470681)))

(declare-fun bm!470677 () Bool)

(declare-fun c!1054154 () Bool)

(assert (=> bm!470677 (= call!470681 (validRegex!7713 (ite c!1054155 (reg!16306 (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))) (ite c!1054154 (regTwo!32467 (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))) (regTwo!32466 (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630)))))))))

(declare-fun b!5930018 () Bool)

(assert (=> b!5930018 (= e!3629503 e!3629509)))

(assert (=> b!5930018 (= c!1054154 ((_ is Union!15977) (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))))))

(declare-fun b!5930011 () Bool)

(declare-fun res!2484775 () Bool)

(declare-fun e!3629508 () Bool)

(assert (=> b!5930011 (=> (not res!2484775) (not e!3629508))))

(assert (=> b!5930011 (= res!2484775 call!470683)))

(assert (=> b!5930011 (= e!3629509 e!3629508)))

(declare-fun d!1859200 () Bool)

(declare-fun res!2484773 () Bool)

(assert (=> d!1859200 (=> res!2484773 e!3629507)))

(assert (=> d!1859200 (= res!2484773 ((_ is ElementMatch!15977) (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))))))

(assert (=> d!1859200 (= (validRegex!7713 (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))) e!3629507)))

(declare-fun b!5930019 () Bool)

(assert (=> b!5930019 (= e!3629508 call!470682)))

(declare-fun bm!470678 () Bool)

(assert (=> bm!470678 (= call!470683 (validRegex!7713 (ite c!1054154 (regOne!32467 (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))) (regOne!32466 (ite c!1054031 (regOne!32467 lt!2310630) (regOne!32466 lt!2310630))))))))

(assert (= (and d!1859200 (not res!2484773)) b!5930015))

(assert (= (and b!5930015 c!1054155) b!5930012))

(assert (= (and b!5930015 (not c!1054155)) b!5930018))

(assert (= (and b!5930012 res!2484776) b!5930017))

(assert (= (and b!5930018 c!1054154) b!5930011))

(assert (= (and b!5930018 (not c!1054154)) b!5930013))

(assert (= (and b!5930011 res!2484775) b!5930019))

(assert (= (and b!5930013 (not res!2484774)) b!5930016))

(assert (= (and b!5930016 res!2484777) b!5930014))

(assert (= (or b!5930019 b!5930014) bm!470676))

(assert (= (or b!5930011 b!5930016) bm!470678))

(assert (= (or b!5930017 bm!470676) bm!470677))

(declare-fun m!6822870 () Bool)

(assert (=> b!5930012 m!6822870))

(declare-fun m!6822872 () Bool)

(assert (=> bm!470677 m!6822872))

(declare-fun m!6822874 () Bool)

(assert (=> bm!470678 m!6822874))

(assert (=> bm!470570 d!1859200))

(declare-fun d!1859202 () Bool)

(assert (=> d!1859202 (= (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (nullableFct!1944 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))))))

(declare-fun bs!1403119 () Bool)

(assert (= bs!1403119 d!1859202))

(declare-fun m!6822876 () Bool)

(assert (=> bs!1403119 m!6822876))

(assert (=> b!5929025 d!1859202))

(declare-fun bs!1403120 () Bool)

(declare-fun d!1859204 () Bool)

(assert (= bs!1403120 (and d!1859204 d!1859074)))

(declare-fun lambda!323450 () Int)

(assert (=> bs!1403120 (= lambda!323450 lambda!323441)))

(declare-fun bs!1403121 () Bool)

(assert (= bs!1403121 (and d!1859204 d!1859016)))

(assert (=> bs!1403121 (= lambda!323450 lambda!323429)))

(declare-fun bs!1403122 () Bool)

(assert (= bs!1403122 (and d!1859204 d!1858790)))

(assert (=> bs!1403122 (= lambda!323450 lambda!323402)))

(declare-fun bs!1403123 () Bool)

(assert (= bs!1403123 (and d!1859204 d!1858772)))

(assert (=> bs!1403123 (= lambda!323450 lambda!323393)))

(declare-fun bs!1403124 () Bool)

(assert (= bs!1403124 (and d!1859204 d!1858760)))

(assert (=> bs!1403124 (= lambda!323450 lambda!323389)))

(declare-fun bs!1403125 () Bool)

(assert (= bs!1403125 (and d!1859204 d!1858764)))

(assert (=> bs!1403125 (= lambda!323450 lambda!323390)))

(declare-fun bs!1403126 () Bool)

(assert (= bs!1403126 (and d!1859204 d!1859188)))

(assert (=> bs!1403126 (= lambda!323450 lambda!323449)))

(declare-fun bs!1403127 () Bool)

(assert (= bs!1403127 (and d!1859204 d!1858804)))

(assert (=> bs!1403127 (= lambda!323450 lambda!323412)))

(declare-fun bs!1403128 () Bool)

(assert (= bs!1403128 (and d!1859204 d!1858774)))

(assert (=> bs!1403128 (= lambda!323450 lambda!323396)))

(declare-fun bs!1403129 () Bool)

(assert (= bs!1403129 (and d!1859204 d!1859132)))

(assert (=> bs!1403129 (= lambda!323450 lambda!323448)))

(declare-fun bs!1403130 () Bool)

(assert (= bs!1403130 (and d!1859204 d!1858900)))

(assert (=> bs!1403130 (= lambda!323450 lambda!323422)))

(declare-fun bs!1403131 () Bool)

(assert (= bs!1403131 (and d!1859204 d!1858920)))

(assert (=> bs!1403131 (= lambda!323450 lambda!323425)))

(assert (=> d!1859204 (= (inv!83189 setElem!40254) (forall!15060 (exprs!5861 setElem!40254) lambda!323450))))

(declare-fun bs!1403132 () Bool)

(assert (= bs!1403132 d!1859204))

(declare-fun m!6822878 () Bool)

(assert (=> bs!1403132 m!6822878))

(assert (=> setNonEmpty!40254 d!1859204))

(declare-fun b!5930034 () Bool)

(declare-fun e!3629525 () Bool)

(declare-fun e!3629523 () Bool)

(assert (=> b!5930034 (= e!3629525 e!3629523)))

(declare-fun res!2484789 () Bool)

(assert (=> b!5930034 (=> res!2484789 e!3629523)))

(assert (=> b!5930034 (= res!2484789 ((_ is Star!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5930035 () Bool)

(declare-fun e!3629527 () Bool)

(assert (=> b!5930035 (= e!3629523 e!3629527)))

(declare-fun c!1054158 () Bool)

(assert (=> b!5930035 (= c!1054158 ((_ is Union!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5930036 () Bool)

(declare-fun e!3629526 () Bool)

(assert (=> b!5930036 (= e!3629526 e!3629525)))

(declare-fun res!2484792 () Bool)

(assert (=> b!5930036 (=> (not res!2484792) (not e!3629525))))

(assert (=> b!5930036 (= res!2484792 (and (not ((_ is EmptyLang!15977) (h!70554 (exprs!5861 (h!70555 zl!343))))) (not ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))))))))

(declare-fun d!1859206 () Bool)

(declare-fun res!2484788 () Bool)

(assert (=> d!1859206 (=> res!2484788 e!3629526)))

(assert (=> d!1859206 (= res!2484788 ((_ is EmptyExpr!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> d!1859206 (= (nullableFct!1944 (h!70554 (exprs!5861 (h!70555 zl!343)))) e!3629526)))

(declare-fun b!5930037 () Bool)

(declare-fun e!3629522 () Bool)

(declare-fun call!470688 () Bool)

(assert (=> b!5930037 (= e!3629522 call!470688)))

(declare-fun b!5930038 () Bool)

(declare-fun e!3629524 () Bool)

(assert (=> b!5930038 (= e!3629527 e!3629524)))

(declare-fun res!2484791 () Bool)

(declare-fun call!470689 () Bool)

(assert (=> b!5930038 (= res!2484791 call!470689)))

(assert (=> b!5930038 (=> res!2484791 e!3629524)))

(declare-fun bm!470683 () Bool)

(assert (=> bm!470683 (= call!470689 (nullable!5972 (ite c!1054158 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))

(declare-fun b!5930039 () Bool)

(assert (=> b!5930039 (= e!3629527 e!3629522)))

(declare-fun res!2484790 () Bool)

(assert (=> b!5930039 (= res!2484790 call!470689)))

(assert (=> b!5930039 (=> (not res!2484790) (not e!3629522))))

(declare-fun b!5930040 () Bool)

(assert (=> b!5930040 (= e!3629524 call!470688)))

(declare-fun bm!470684 () Bool)

(assert (=> bm!470684 (= call!470688 (nullable!5972 (ite c!1054158 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))

(assert (= (and d!1859206 (not res!2484788)) b!5930036))

(assert (= (and b!5930036 res!2484792) b!5930034))

(assert (= (and b!5930034 (not res!2484789)) b!5930035))

(assert (= (and b!5930035 c!1054158) b!5930038))

(assert (= (and b!5930035 (not c!1054158)) b!5930039))

(assert (= (and b!5930038 (not res!2484791)) b!5930040))

(assert (= (and b!5930039 res!2484790) b!5930037))

(assert (= (or b!5930040 b!5930037) bm!470684))

(assert (= (or b!5930038 b!5930039) bm!470683))

(declare-fun m!6822880 () Bool)

(assert (=> bm!470683 m!6822880))

(declare-fun m!6822882 () Bool)

(assert (=> bm!470684 m!6822882))

(assert (=> d!1859096 d!1859206))

(declare-fun b!5930041 () Bool)

(declare-fun e!3629534 () Bool)

(assert (=> b!5930041 (= e!3629534 (= (head!12495 (tail!11580 (_1!36259 (get!22078 lt!2310648)))) (c!1053727 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648)))))))))

(declare-fun b!5930042 () Bool)

(declare-fun e!3629530 () Bool)

(assert (=> b!5930042 (= e!3629530 (matchR!8160 (derivativeStep!4708 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648)))) (head!12495 (tail!11580 (_1!36259 (get!22078 lt!2310648))))) (tail!11580 (tail!11580 (_1!36259 (get!22078 lt!2310648))))))))

(declare-fun b!5930043 () Bool)

(declare-fun e!3629533 () Bool)

(declare-fun lt!2310702 () Bool)

(assert (=> b!5930043 (= e!3629533 (not lt!2310702))))

(declare-fun b!5930044 () Bool)

(declare-fun e!3629529 () Bool)

(declare-fun e!3629531 () Bool)

(assert (=> b!5930044 (= e!3629529 e!3629531)))

(declare-fun res!2484793 () Bool)

(assert (=> b!5930044 (=> res!2484793 e!3629531)))

(declare-fun call!470690 () Bool)

(assert (=> b!5930044 (= res!2484793 call!470690)))

(declare-fun b!5930045 () Bool)

(declare-fun e!3629528 () Bool)

(assert (=> b!5930045 (= e!3629528 (= lt!2310702 call!470690))))

(declare-fun b!5930046 () Bool)

(declare-fun res!2484799 () Bool)

(assert (=> b!5930046 (=> (not res!2484799) (not e!3629534))))

(assert (=> b!5930046 (= res!2484799 (not call!470690))))

(declare-fun bm!470685 () Bool)

(assert (=> bm!470685 (= call!470690 (isEmpty!35972 (tail!11580 (_1!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5930047 () Bool)

(assert (=> b!5930047 (= e!3629528 e!3629533)))

(declare-fun c!1054160 () Bool)

(assert (=> b!5930047 (= c!1054160 ((_ is EmptyLang!15977) (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648))))))))

(declare-fun b!5930048 () Bool)

(declare-fun res!2484800 () Bool)

(assert (=> b!5930048 (=> res!2484800 e!3629531)))

(assert (=> b!5930048 (= res!2484800 (not (isEmpty!35972 (tail!11580 (tail!11580 (_1!36259 (get!22078 lt!2310648)))))))))

(declare-fun b!5930049 () Bool)

(declare-fun res!2484797 () Bool)

(assert (=> b!5930049 (=> (not res!2484797) (not e!3629534))))

(assert (=> b!5930049 (= res!2484797 (isEmpty!35972 (tail!11580 (tail!11580 (_1!36259 (get!22078 lt!2310648))))))))

(declare-fun d!1859208 () Bool)

(assert (=> d!1859208 e!3629528))

(declare-fun c!1054161 () Bool)

(assert (=> d!1859208 (= c!1054161 ((_ is EmptyExpr!15977) (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648))))))))

(assert (=> d!1859208 (= lt!2310702 e!3629530)))

(declare-fun c!1054159 () Bool)

(assert (=> d!1859208 (= c!1054159 (isEmpty!35972 (tail!11580 (_1!36259 (get!22078 lt!2310648)))))))

(assert (=> d!1859208 (validRegex!7713 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648)))))))

(assert (=> d!1859208 (= (matchR!8160 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648)))) (tail!11580 (_1!36259 (get!22078 lt!2310648)))) lt!2310702)))

(declare-fun b!5930050 () Bool)

(declare-fun res!2484794 () Bool)

(declare-fun e!3629532 () Bool)

(assert (=> b!5930050 (=> res!2484794 e!3629532)))

(assert (=> b!5930050 (= res!2484794 (not ((_ is ElementMatch!15977) (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648)))))))))

(assert (=> b!5930050 (= e!3629533 e!3629532)))

(declare-fun b!5930051 () Bool)

(assert (=> b!5930051 (= e!3629531 (not (= (head!12495 (tail!11580 (_1!36259 (get!22078 lt!2310648)))) (c!1053727 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648))))))))))

(declare-fun b!5930052 () Bool)

(assert (=> b!5930052 (= e!3629532 e!3629529)))

(declare-fun res!2484796 () Bool)

(assert (=> b!5930052 (=> (not res!2484796) (not e!3629529))))

(assert (=> b!5930052 (= res!2484796 (not lt!2310702))))

(declare-fun b!5930053 () Bool)

(assert (=> b!5930053 (= e!3629530 (nullable!5972 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648))))))))

(declare-fun b!5930054 () Bool)

(declare-fun res!2484798 () Bool)

(assert (=> b!5930054 (=> res!2484798 e!3629532)))

(assert (=> b!5930054 (= res!2484798 e!3629534)))

(declare-fun res!2484795 () Bool)

(assert (=> b!5930054 (=> (not res!2484795) (not e!3629534))))

(assert (=> b!5930054 (= res!2484795 lt!2310702)))

(assert (= (and d!1859208 c!1054159) b!5930053))

(assert (= (and d!1859208 (not c!1054159)) b!5930042))

(assert (= (and d!1859208 c!1054161) b!5930045))

(assert (= (and d!1859208 (not c!1054161)) b!5930047))

(assert (= (and b!5930047 c!1054160) b!5930043))

(assert (= (and b!5930047 (not c!1054160)) b!5930050))

(assert (= (and b!5930050 (not res!2484794)) b!5930054))

(assert (= (and b!5930054 res!2484795) b!5930046))

(assert (= (and b!5930046 res!2484799) b!5930049))

(assert (= (and b!5930049 res!2484797) b!5930041))

(assert (= (and b!5930054 (not res!2484798)) b!5930052))

(assert (= (and b!5930052 res!2484796) b!5930044))

(assert (= (and b!5930044 (not res!2484793)) b!5930048))

(assert (= (and b!5930048 (not res!2484800)) b!5930051))

(assert (= (or b!5930045 b!5930044 b!5930046) bm!470685))

(assert (=> b!5930048 m!6822608))

(declare-fun m!6822884 () Bool)

(assert (=> b!5930048 m!6822884))

(assert (=> b!5930048 m!6822884))

(declare-fun m!6822886 () Bool)

(assert (=> b!5930048 m!6822886))

(assert (=> b!5930042 m!6822608))

(declare-fun m!6822888 () Bool)

(assert (=> b!5930042 m!6822888))

(assert (=> b!5930042 m!6822622))

(assert (=> b!5930042 m!6822888))

(declare-fun m!6822890 () Bool)

(assert (=> b!5930042 m!6822890))

(assert (=> b!5930042 m!6822608))

(assert (=> b!5930042 m!6822884))

(assert (=> b!5930042 m!6822890))

(assert (=> b!5930042 m!6822884))

(declare-fun m!6822892 () Bool)

(assert (=> b!5930042 m!6822892))

(assert (=> d!1859208 m!6822608))

(assert (=> d!1859208 m!6822616))

(assert (=> d!1859208 m!6822622))

(declare-fun m!6822894 () Bool)

(assert (=> d!1859208 m!6822894))

(assert (=> b!5930049 m!6822608))

(assert (=> b!5930049 m!6822884))

(assert (=> b!5930049 m!6822884))

(assert (=> b!5930049 m!6822886))

(assert (=> b!5930053 m!6822622))

(declare-fun m!6822896 () Bool)

(assert (=> b!5930053 m!6822896))

(assert (=> bm!470685 m!6822608))

(assert (=> bm!470685 m!6822616))

(assert (=> b!5930041 m!6822608))

(assert (=> b!5930041 m!6822888))

(assert (=> b!5930051 m!6822608))

(assert (=> b!5930051 m!6822888))

(assert (=> b!5929543 d!1859208))

(declare-fun b!5930055 () Bool)

(declare-fun c!1054166 () Bool)

(assert (=> b!5930055 (= c!1054166 (nullable!5972 (regOne!32466 (regOne!32466 r!7292))))))

(declare-fun e!3629538 () Regex!15977)

(declare-fun e!3629536 () Regex!15977)

(assert (=> b!5930055 (= e!3629538 e!3629536)))

(declare-fun d!1859210 () Bool)

(declare-fun lt!2310703 () Regex!15977)

(assert (=> d!1859210 (validRegex!7713 lt!2310703)))

(declare-fun e!3629539 () Regex!15977)

(assert (=> d!1859210 (= lt!2310703 e!3629539)))

(declare-fun c!1054164 () Bool)

(assert (=> d!1859210 (= c!1054164 (or ((_ is EmptyExpr!15977) (regOne!32466 r!7292)) ((_ is EmptyLang!15977) (regOne!32466 r!7292))))))

(assert (=> d!1859210 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1859210 (= (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310648)))) lt!2310703)))

(declare-fun b!5930056 () Bool)

(declare-fun e!3629535 () Regex!15977)

(assert (=> b!5930056 (= e!3629539 e!3629535)))

(declare-fun c!1054163 () Bool)

(assert (=> b!5930056 (= c!1054163 ((_ is ElementMatch!15977) (regOne!32466 r!7292)))))

(declare-fun b!5930057 () Bool)

(declare-fun call!470694 () Regex!15977)

(declare-fun call!470692 () Regex!15977)

(assert (=> b!5930057 (= e!3629536 (Union!15977 (Concat!24822 call!470692 (regTwo!32466 (regOne!32466 r!7292))) call!470694))))

(declare-fun b!5930058 () Bool)

(declare-fun e!3629537 () Regex!15977)

(assert (=> b!5930058 (= e!3629537 e!3629538)))

(declare-fun c!1054162 () Bool)

(assert (=> b!5930058 (= c!1054162 ((_ is Star!15977) (regOne!32466 r!7292)))))

(declare-fun b!5930059 () Bool)

(declare-fun c!1054165 () Bool)

(assert (=> b!5930059 (= c!1054165 ((_ is Union!15977) (regOne!32466 r!7292)))))

(assert (=> b!5930059 (= e!3629535 e!3629537)))

(declare-fun b!5930060 () Bool)

(declare-fun call!470693 () Regex!15977)

(assert (=> b!5930060 (= e!3629538 (Concat!24822 call!470693 (regOne!32466 r!7292)))))

(declare-fun b!5930061 () Bool)

(declare-fun call!470691 () Regex!15977)

(assert (=> b!5930061 (= e!3629537 (Union!15977 call!470691 call!470692))))

(declare-fun bm!470686 () Bool)

(assert (=> bm!470686 (= call!470691 (derivativeStep!4708 (ite c!1054165 (regOne!32467 (regOne!32466 r!7292)) (ite c!1054162 (reg!16306 (regOne!32466 r!7292)) (ite c!1054166 (regTwo!32466 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292))))) (head!12495 (_1!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5930062 () Bool)

(assert (=> b!5930062 (= e!3629536 (Union!15977 (Concat!24822 call!470694 (regTwo!32466 (regOne!32466 r!7292))) EmptyLang!15977))))

(declare-fun b!5930063 () Bool)

(assert (=> b!5930063 (= e!3629535 (ite (= (head!12495 (_1!36259 (get!22078 lt!2310648))) (c!1053727 (regOne!32466 r!7292))) EmptyExpr!15977 EmptyLang!15977))))

(declare-fun bm!470687 () Bool)

(assert (=> bm!470687 (= call!470693 call!470691)))

(declare-fun bm!470688 () Bool)

(assert (=> bm!470688 (= call!470694 call!470693)))

(declare-fun bm!470689 () Bool)

(assert (=> bm!470689 (= call!470692 (derivativeStep!4708 (ite c!1054165 (regTwo!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292))) (head!12495 (_1!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5930064 () Bool)

(assert (=> b!5930064 (= e!3629539 EmptyLang!15977)))

(assert (= (and d!1859210 c!1054164) b!5930064))

(assert (= (and d!1859210 (not c!1054164)) b!5930056))

(assert (= (and b!5930056 c!1054163) b!5930063))

(assert (= (and b!5930056 (not c!1054163)) b!5930059))

(assert (= (and b!5930059 c!1054165) b!5930061))

(assert (= (and b!5930059 (not c!1054165)) b!5930058))

(assert (= (and b!5930058 c!1054162) b!5930060))

(assert (= (and b!5930058 (not c!1054162)) b!5930055))

(assert (= (and b!5930055 c!1054166) b!5930057))

(assert (= (and b!5930055 (not c!1054166)) b!5930062))

(assert (= (or b!5930057 b!5930062) bm!470688))

(assert (= (or b!5930060 bm!470688) bm!470687))

(assert (= (or b!5930061 b!5930057) bm!470689))

(assert (= (or b!5930061 bm!470687) bm!470686))

(declare-fun m!6822898 () Bool)

(assert (=> b!5930055 m!6822898))

(declare-fun m!6822900 () Bool)

(assert (=> d!1859210 m!6822900))

(assert (=> d!1859210 m!6821952))

(assert (=> bm!470686 m!6822620))

(declare-fun m!6822902 () Bool)

(assert (=> bm!470686 m!6822902))

(assert (=> bm!470689 m!6822620))

(declare-fun m!6822904 () Bool)

(assert (=> bm!470689 m!6822904))

(assert (=> b!5929543 d!1859210))

(declare-fun d!1859212 () Bool)

(assert (=> d!1859212 (= (head!12495 (_1!36259 (get!22078 lt!2310648))) (h!70556 (_1!36259 (get!22078 lt!2310648))))))

(assert (=> b!5929543 d!1859212))

(declare-fun d!1859214 () Bool)

(assert (=> d!1859214 (= (tail!11580 (_1!36259 (get!22078 lt!2310648))) (t!377629 (_1!36259 (get!22078 lt!2310648))))))

(assert (=> b!5929543 d!1859214))

(declare-fun d!1859216 () Bool)

(declare-fun res!2484801 () Bool)

(declare-fun e!3629540 () Bool)

(assert (=> d!1859216 (=> res!2484801 e!3629540)))

(assert (=> d!1859216 (= res!2484801 ((_ is Nil!64106) (t!377627 lt!2310633)))))

(assert (=> d!1859216 (= (forall!15060 (t!377627 lt!2310633) lambda!323396) e!3629540)))

(declare-fun b!5930065 () Bool)

(declare-fun e!3629541 () Bool)

(assert (=> b!5930065 (= e!3629540 e!3629541)))

(declare-fun res!2484802 () Bool)

(assert (=> b!5930065 (=> (not res!2484802) (not e!3629541))))

(assert (=> b!5930065 (= res!2484802 (dynLambda!25069 lambda!323396 (h!70554 (t!377627 lt!2310633))))))

(declare-fun b!5930066 () Bool)

(assert (=> b!5930066 (= e!3629541 (forall!15060 (t!377627 (t!377627 lt!2310633)) lambda!323396))))

(assert (= (and d!1859216 (not res!2484801)) b!5930065))

(assert (= (and b!5930065 res!2484802) b!5930066))

(declare-fun b_lambda!222727 () Bool)

(assert (=> (not b_lambda!222727) (not b!5930065)))

(declare-fun m!6822906 () Bool)

(assert (=> b!5930065 m!6822906))

(declare-fun m!6822908 () Bool)

(assert (=> b!5930066 m!6822908))

(assert (=> b!5929728 d!1859216))

(declare-fun b!5930067 () Bool)

(declare-fun e!3629545 () Bool)

(declare-fun e!3629543 () Bool)

(assert (=> b!5930067 (= e!3629545 e!3629543)))

(declare-fun res!2484804 () Bool)

(assert (=> b!5930067 (=> res!2484804 e!3629543)))

(assert (=> b!5930067 (= res!2484804 ((_ is Star!15977) (reg!16306 r!7292)))))

(declare-fun b!5930068 () Bool)

(declare-fun e!3629547 () Bool)

(assert (=> b!5930068 (= e!3629543 e!3629547)))

(declare-fun c!1054167 () Bool)

(assert (=> b!5930068 (= c!1054167 ((_ is Union!15977) (reg!16306 r!7292)))))

(declare-fun b!5930069 () Bool)

(declare-fun e!3629546 () Bool)

(assert (=> b!5930069 (= e!3629546 e!3629545)))

(declare-fun res!2484807 () Bool)

(assert (=> b!5930069 (=> (not res!2484807) (not e!3629545))))

(assert (=> b!5930069 (= res!2484807 (and (not ((_ is EmptyLang!15977) (reg!16306 r!7292))) (not ((_ is ElementMatch!15977) (reg!16306 r!7292)))))))

(declare-fun d!1859218 () Bool)

(declare-fun res!2484803 () Bool)

(assert (=> d!1859218 (=> res!2484803 e!3629546)))

(assert (=> d!1859218 (= res!2484803 ((_ is EmptyExpr!15977) (reg!16306 r!7292)))))

(assert (=> d!1859218 (= (nullableFct!1944 (reg!16306 r!7292)) e!3629546)))

(declare-fun b!5930070 () Bool)

(declare-fun e!3629542 () Bool)

(declare-fun call!470695 () Bool)

(assert (=> b!5930070 (= e!3629542 call!470695)))

(declare-fun b!5930071 () Bool)

(declare-fun e!3629544 () Bool)

(assert (=> b!5930071 (= e!3629547 e!3629544)))

(declare-fun res!2484806 () Bool)

(declare-fun call!470696 () Bool)

(assert (=> b!5930071 (= res!2484806 call!470696)))

(assert (=> b!5930071 (=> res!2484806 e!3629544)))

(declare-fun bm!470690 () Bool)

(assert (=> bm!470690 (= call!470696 (nullable!5972 (ite c!1054167 (regOne!32467 (reg!16306 r!7292)) (regOne!32466 (reg!16306 r!7292)))))))

(declare-fun b!5930072 () Bool)

(assert (=> b!5930072 (= e!3629547 e!3629542)))

(declare-fun res!2484805 () Bool)

(assert (=> b!5930072 (= res!2484805 call!470696)))

(assert (=> b!5930072 (=> (not res!2484805) (not e!3629542))))

(declare-fun b!5930073 () Bool)

(assert (=> b!5930073 (= e!3629544 call!470695)))

(declare-fun bm!470691 () Bool)

(assert (=> bm!470691 (= call!470695 (nullable!5972 (ite c!1054167 (regTwo!32467 (reg!16306 r!7292)) (regTwo!32466 (reg!16306 r!7292)))))))

(assert (= (and d!1859218 (not res!2484803)) b!5930069))

(assert (= (and b!5930069 res!2484807) b!5930067))

(assert (= (and b!5930067 (not res!2484804)) b!5930068))

(assert (= (and b!5930068 c!1054167) b!5930071))

(assert (= (and b!5930068 (not c!1054167)) b!5930072))

(assert (= (and b!5930071 (not res!2484806)) b!5930073))

(assert (= (and b!5930072 res!2484805) b!5930070))

(assert (= (or b!5930073 b!5930070) bm!470691))

(assert (= (or b!5930071 b!5930072) bm!470690))

(declare-fun m!6822910 () Bool)

(assert (=> bm!470690 m!6822910))

(declare-fun m!6822912 () Bool)

(assert (=> bm!470691 m!6822912))

(assert (=> d!1859136 d!1859218))

(declare-fun bm!470692 () Bool)

(declare-fun call!470700 () (InoxSet Context!10722))

(declare-fun call!470697 () (InoxSet Context!10722))

(assert (=> bm!470692 (= call!470700 call!470697)))

(declare-fun c!1054171 () Bool)

(declare-fun d!1859220 () Bool)

(assert (=> d!1859220 (= c!1054171 (and ((_ is ElementMatch!15977) (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))) (= (c!1053727 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))) (h!70556 s!2326))))))

(declare-fun e!3629552 () (InoxSet Context!10722))

(assert (=> d!1859220 (= (derivationStepZipperDown!1227 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))) (ite (or c!1053950 c!1053951) (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470520)) (h!70556 s!2326)) e!3629552)))

(declare-fun bm!470693 () Bool)

(declare-fun call!470699 () (InoxSet Context!10722))

(assert (=> bm!470693 (= call!470699 call!470700)))

(declare-fun b!5930074 () Bool)

(declare-fun e!3629550 () (InoxSet Context!10722))

(assert (=> b!5930074 (= e!3629550 call!470699)))

(declare-fun b!5930075 () Bool)

(declare-fun e!3629549 () (InoxSet Context!10722))

(declare-fun e!3629548 () (InoxSet Context!10722))

(assert (=> b!5930075 (= e!3629549 e!3629548)))

(declare-fun c!1054168 () Bool)

(assert (=> b!5930075 (= c!1054168 ((_ is Concat!24822) (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))))

(declare-fun b!5930076 () Bool)

(declare-fun e!3629553 () (InoxSet Context!10722))

(assert (=> b!5930076 (= e!3629552 e!3629553)))

(declare-fun c!1054169 () Bool)

(assert (=> b!5930076 (= c!1054169 ((_ is Union!15977) (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))))

(declare-fun e!3629551 () Bool)

(declare-fun b!5930077 () Bool)

(assert (=> b!5930077 (= e!3629551 (nullable!5972 (regOne!32466 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))))

(declare-fun bm!470694 () Bool)

(declare-fun call!470698 () List!64230)

(declare-fun call!470702 () List!64230)

(assert (=> bm!470694 (= call!470698 call!470702)))

(declare-fun b!5930078 () Bool)

(declare-fun call!470701 () (InoxSet Context!10722))

(assert (=> b!5930078 (= e!3629549 ((_ map or) call!470701 call!470700))))

(declare-fun bm!470695 () Bool)

(declare-fun c!1054170 () Bool)

(assert (=> bm!470695 (= call!470702 ($colon$colon!1864 (exprs!5861 (ite (or c!1053950 c!1053951) (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470520))) (ite (or c!1054170 c!1054168) (regTwo!32466 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))) (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))))

(declare-fun b!5930079 () Bool)

(assert (=> b!5930079 (= e!3629550 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930080 () Bool)

(assert (=> b!5930080 (= e!3629548 call!470699)))

(declare-fun b!5930081 () Bool)

(assert (=> b!5930081 (= e!3629552 (store ((as const (Array Context!10722 Bool)) false) (ite (or c!1053950 c!1053951) (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470520)) true))))

(declare-fun bm!470696 () Bool)

(assert (=> bm!470696 (= call!470701 (derivationStepZipperDown!1227 (ite c!1054169 (regOne!32467 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))) (regOne!32466 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))) (ite c!1054169 (ite (or c!1053950 c!1053951) (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470520)) (Context!10723 call!470702)) (h!70556 s!2326)))))

(declare-fun bm!470697 () Bool)

(assert (=> bm!470697 (= call!470697 (derivationStepZipperDown!1227 (ite c!1054169 (regTwo!32467 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))) (ite c!1054170 (regTwo!32466 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))) (ite c!1054168 (regOne!32466 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))) (reg!16306 (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))) (ite (or c!1054169 c!1054170) (ite (or c!1053950 c!1053951) (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470520)) (Context!10723 call!470698)) (h!70556 s!2326)))))

(declare-fun b!5930082 () Bool)

(assert (=> b!5930082 (= c!1054170 e!3629551)))

(declare-fun res!2484808 () Bool)

(assert (=> b!5930082 (=> (not res!2484808) (not e!3629551))))

(assert (=> b!5930082 (= res!2484808 ((_ is Concat!24822) (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))))

(assert (=> b!5930082 (= e!3629553 e!3629549)))

(declare-fun b!5930083 () Bool)

(assert (=> b!5930083 (= e!3629553 ((_ map or) call!470701 call!470697))))

(declare-fun c!1054172 () Bool)

(declare-fun b!5930084 () Bool)

(assert (=> b!5930084 (= c!1054172 ((_ is Star!15977) (ite c!1053950 (regTwo!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053951 (regTwo!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1053949 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (reg!16306 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))))

(assert (=> b!5930084 (= e!3629548 e!3629550)))

(assert (= (and d!1859220 c!1054171) b!5930081))

(assert (= (and d!1859220 (not c!1054171)) b!5930076))

(assert (= (and b!5930076 c!1054169) b!5930083))

(assert (= (and b!5930076 (not c!1054169)) b!5930082))

(assert (= (and b!5930082 res!2484808) b!5930077))

(assert (= (and b!5930082 c!1054170) b!5930078))

(assert (= (and b!5930082 (not c!1054170)) b!5930075))

(assert (= (and b!5930075 c!1054168) b!5930080))

(assert (= (and b!5930075 (not c!1054168)) b!5930084))

(assert (= (and b!5930084 c!1054172) b!5930074))

(assert (= (and b!5930084 (not c!1054172)) b!5930079))

(assert (= (or b!5930080 b!5930074) bm!470694))

(assert (= (or b!5930080 b!5930074) bm!470693))

(assert (= (or b!5930078 bm!470694) bm!470695))

(assert (= (or b!5930078 bm!470693) bm!470692))

(assert (= (or b!5930083 bm!470692) bm!470697))

(assert (= (or b!5930083 b!5930078) bm!470696))

(declare-fun m!6822914 () Bool)

(assert (=> b!5930081 m!6822914))

(declare-fun m!6822916 () Bool)

(assert (=> bm!470695 m!6822916))

(declare-fun m!6822918 () Bool)

(assert (=> bm!470697 m!6822918))

(declare-fun m!6822920 () Bool)

(assert (=> bm!470696 m!6822920))

(declare-fun m!6822922 () Bool)

(assert (=> b!5930077 m!6822922))

(assert (=> bm!470519 d!1859220))

(assert (=> bm!470620 d!1858836))

(assert (=> b!5929513 d!1859026))

(declare-fun d!1859222 () Bool)

(declare-fun c!1054173 () Bool)

(declare-fun e!3629556 () Bool)

(assert (=> d!1859222 (= c!1054173 e!3629556)))

(declare-fun res!2484809 () Bool)

(assert (=> d!1859222 (=> (not res!2484809) (not e!3629556))))

(assert (=> d!1859222 (= res!2484809 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))))))))

(declare-fun e!3629555 () (InoxSet Context!10722))

(assert (=> d!1859222 (= (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (h!70556 s!2326)) e!3629555)))

(declare-fun b!5930085 () Bool)

(assert (=> b!5930085 (= e!3629556 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))))))))

(declare-fun b!5930086 () Bool)

(declare-fun e!3629554 () (InoxSet Context!10722))

(assert (=> b!5930086 (= e!3629555 e!3629554)))

(declare-fun c!1054174 () Bool)

(assert (=> b!5930086 (= c!1054174 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))))))))

(declare-fun b!5930087 () Bool)

(declare-fun call!470703 () (InoxSet Context!10722))

(assert (=> b!5930087 (= e!3629554 call!470703)))

(declare-fun bm!470698 () Bool)

(assert (=> bm!470698 (= call!470703 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))))) (h!70556 s!2326)))))

(declare-fun b!5930088 () Bool)

(assert (=> b!5930088 (= e!3629555 ((_ map or) call!470703 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))))) (h!70556 s!2326))))))

(declare-fun b!5930089 () Bool)

(assert (=> b!5930089 (= e!3629554 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1859222 res!2484809) b!5930085))

(assert (= (and d!1859222 c!1054173) b!5930088))

(assert (= (and d!1859222 (not c!1054173)) b!5930086))

(assert (= (and b!5930086 c!1054174) b!5930087))

(assert (= (and b!5930086 (not c!1054174)) b!5930089))

(assert (= (or b!5930088 b!5930087) bm!470698))

(declare-fun m!6822924 () Bool)

(assert (=> b!5930085 m!6822924))

(declare-fun m!6822926 () Bool)

(assert (=> bm!470698 m!6822926))

(declare-fun m!6822928 () Bool)

(assert (=> b!5930088 m!6822928))

(assert (=> b!5929028 d!1859222))

(declare-fun b!5930091 () Bool)

(declare-fun e!3629557 () Bool)

(declare-fun e!3629559 () Bool)

(assert (=> b!5930091 (= e!3629557 e!3629559)))

(declare-fun res!2484813 () Bool)

(assert (=> b!5930091 (= res!2484813 (not (nullable!5972 (reg!16306 (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))))

(assert (=> b!5930091 (=> (not res!2484813) (not e!3629559))))

(declare-fun b!5930092 () Bool)

(declare-fun res!2484811 () Bool)

(declare-fun e!3629558 () Bool)

(assert (=> b!5930092 (=> res!2484811 e!3629558)))

(assert (=> b!5930092 (= res!2484811 (not ((_ is Concat!24822) (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))

(declare-fun e!3629563 () Bool)

(assert (=> b!5930092 (= e!3629563 e!3629558)))

(declare-fun b!5930093 () Bool)

(declare-fun e!3629560 () Bool)

(declare-fun call!470705 () Bool)

(assert (=> b!5930093 (= e!3629560 call!470705)))

(declare-fun bm!470699 () Bool)

(declare-fun call!470704 () Bool)

(assert (=> bm!470699 (= call!470705 call!470704)))

(declare-fun b!5930094 () Bool)

(declare-fun e!3629561 () Bool)

(assert (=> b!5930094 (= e!3629561 e!3629557)))

(declare-fun c!1054176 () Bool)

(assert (=> b!5930094 (= c!1054176 ((_ is Star!15977) (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))

(declare-fun b!5930095 () Bool)

(assert (=> b!5930095 (= e!3629558 e!3629560)))

(declare-fun res!2484814 () Bool)

(assert (=> b!5930095 (=> (not res!2484814) (not e!3629560))))

(declare-fun call!470706 () Bool)

(assert (=> b!5930095 (= res!2484814 call!470706)))

(declare-fun b!5930096 () Bool)

(assert (=> b!5930096 (= e!3629559 call!470704)))

(declare-fun bm!470700 () Bool)

(declare-fun c!1054175 () Bool)

(assert (=> bm!470700 (= call!470704 (validRegex!7713 (ite c!1054176 (reg!16306 (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (ite c!1054175 (regTwo!32467 (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (regTwo!32466 (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))))

(declare-fun b!5930097 () Bool)

(assert (=> b!5930097 (= e!3629557 e!3629563)))

(assert (=> b!5930097 (= c!1054175 ((_ is Union!15977) (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))

(declare-fun b!5930090 () Bool)

(declare-fun res!2484812 () Bool)

(declare-fun e!3629562 () Bool)

(assert (=> b!5930090 (=> (not res!2484812) (not e!3629562))))

(assert (=> b!5930090 (= res!2484812 call!470706)))

(assert (=> b!5930090 (= e!3629563 e!3629562)))

(declare-fun d!1859224 () Bool)

(declare-fun res!2484810 () Bool)

(assert (=> d!1859224 (=> res!2484810 e!3629561)))

(assert (=> d!1859224 (= res!2484810 ((_ is ElementMatch!15977) (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))

(assert (=> d!1859224 (= (validRegex!7713 (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))) e!3629561)))

(declare-fun b!5930098 () Bool)

(assert (=> b!5930098 (= e!3629562 call!470705)))

(declare-fun bm!470701 () Bool)

(assert (=> bm!470701 (= call!470706 (validRegex!7713 (ite c!1054175 (regOne!32467 (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (regOne!32466 (ite c!1054069 (regOne!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))))

(assert (= (and d!1859224 (not res!2484810)) b!5930094))

(assert (= (and b!5930094 c!1054176) b!5930091))

(assert (= (and b!5930094 (not c!1054176)) b!5930097))

(assert (= (and b!5930091 res!2484813) b!5930096))

(assert (= (and b!5930097 c!1054175) b!5930090))

(assert (= (and b!5930097 (not c!1054175)) b!5930092))

(assert (= (and b!5930090 res!2484812) b!5930098))

(assert (= (and b!5930092 (not res!2484811)) b!5930095))

(assert (= (and b!5930095 res!2484814) b!5930093))

(assert (= (or b!5930098 b!5930093) bm!470699))

(assert (= (or b!5930090 b!5930095) bm!470701))

(assert (= (or b!5930096 bm!470699) bm!470700))

(declare-fun m!6822930 () Bool)

(assert (=> b!5930091 m!6822930))

(declare-fun m!6822932 () Bool)

(assert (=> bm!470700 m!6822932))

(declare-fun m!6822934 () Bool)

(assert (=> bm!470701 m!6822934))

(assert (=> bm!470598 d!1859224))

(declare-fun d!1859226 () Bool)

(assert (=> d!1859226 (= (isEmpty!35972 (tail!11580 (tail!11580 s!2326))) ((_ is Nil!64108) (tail!11580 (tail!11580 s!2326))))))

(assert (=> b!5929467 d!1859226))

(declare-fun d!1859228 () Bool)

(assert (=> d!1859228 (= (tail!11580 (tail!11580 s!2326)) (t!377629 (tail!11580 s!2326)))))

(assert (=> b!5929467 d!1859228))

(declare-fun d!1859230 () Bool)

(assert (=> d!1859230 (= (isEmpty!35972 (_2!36259 (get!22078 lt!2310648))) ((_ is Nil!64108) (_2!36259 (get!22078 lt!2310648))))))

(assert (=> bm!470513 d!1859230))

(declare-fun d!1859232 () Bool)

(assert (=> d!1859232 (= (isEmpty!35969 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))) ((_ is Nil!64106) (t!377627 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(assert (=> b!5929138 d!1859232))

(declare-fun d!1859234 () Bool)

(assert (not d!1859234))

(assert (=> b!5929244 d!1859234))

(declare-fun d!1859236 () Bool)

(assert (not d!1859236))

(assert (=> b!5929386 d!1859236))

(declare-fun d!1859238 () Bool)

(assert (not d!1859238))

(assert (=> b!5929386 d!1859238))

(declare-fun b!5930100 () Bool)

(declare-fun e!3629565 () List!64232)

(assert (=> b!5930100 (= e!3629565 (Cons!64108 (h!70556 (_1!36259 (get!22078 lt!2310674))) (++!14074 (t!377629 (_1!36259 (get!22078 lt!2310674))) (_2!36259 (get!22078 lt!2310674)))))))

(declare-fun b!5930099 () Bool)

(assert (=> b!5930099 (= e!3629565 (_2!36259 (get!22078 lt!2310674)))))

(declare-fun d!1859240 () Bool)

(declare-fun e!3629564 () Bool)

(assert (=> d!1859240 e!3629564))

(declare-fun res!2484816 () Bool)

(assert (=> d!1859240 (=> (not res!2484816) (not e!3629564))))

(declare-fun lt!2310704 () List!64232)

(assert (=> d!1859240 (= res!2484816 (= (content!11814 lt!2310704) ((_ map or) (content!11814 (_1!36259 (get!22078 lt!2310674))) (content!11814 (_2!36259 (get!22078 lt!2310674))))))))

(assert (=> d!1859240 (= lt!2310704 e!3629565)))

(declare-fun c!1054177 () Bool)

(assert (=> d!1859240 (= c!1054177 ((_ is Nil!64108) (_1!36259 (get!22078 lt!2310674))))))

(assert (=> d!1859240 (= (++!14074 (_1!36259 (get!22078 lt!2310674)) (_2!36259 (get!22078 lt!2310674))) lt!2310704)))

(declare-fun b!5930102 () Bool)

(assert (=> b!5930102 (= e!3629564 (or (not (= (_2!36259 (get!22078 lt!2310674)) Nil!64108)) (= lt!2310704 (_1!36259 (get!22078 lt!2310674)))))))

(declare-fun b!5930101 () Bool)

(declare-fun res!2484815 () Bool)

(assert (=> b!5930101 (=> (not res!2484815) (not e!3629564))))

(assert (=> b!5930101 (= res!2484815 (= (size!40144 lt!2310704) (+ (size!40144 (_1!36259 (get!22078 lt!2310674))) (size!40144 (_2!36259 (get!22078 lt!2310674))))))))

(assert (= (and d!1859240 c!1054177) b!5930099))

(assert (= (and d!1859240 (not c!1054177)) b!5930100))

(assert (= (and d!1859240 res!2484816) b!5930101))

(assert (= (and b!5930101 res!2484815) b!5930102))

(declare-fun m!6822936 () Bool)

(assert (=> b!5930100 m!6822936))

(declare-fun m!6822938 () Bool)

(assert (=> d!1859240 m!6822938))

(declare-fun m!6822940 () Bool)

(assert (=> d!1859240 m!6822940))

(declare-fun m!6822942 () Bool)

(assert (=> d!1859240 m!6822942))

(declare-fun m!6822944 () Bool)

(assert (=> b!5930101 m!6822944))

(declare-fun m!6822946 () Bool)

(assert (=> b!5930101 m!6822946))

(declare-fun m!6822948 () Bool)

(assert (=> b!5930101 m!6822948))

(assert (=> b!5929287 d!1859240))

(declare-fun d!1859242 () Bool)

(assert (=> d!1859242 (= (get!22078 lt!2310674) (v!51965 lt!2310674))))

(assert (=> b!5929287 d!1859242))

(assert (=> bm!470629 d!1858836))

(declare-fun d!1859244 () Bool)

(assert (=> d!1859244 (= (head!12495 (tail!11580 s!2326)) (h!70556 (tail!11580 s!2326)))))

(assert (=> b!5929460 d!1859244))

(declare-fun d!1859246 () Bool)

(declare-fun res!2484817 () Bool)

(declare-fun e!3629566 () Bool)

(assert (=> d!1859246 (=> res!2484817 e!3629566)))

(assert (=> d!1859246 (= res!2484817 ((_ is Nil!64106) (t!377627 (exprs!5861 lt!2310576))))))

(assert (=> d!1859246 (= (forall!15060 (t!377627 (exprs!5861 lt!2310576)) lambda!323390) e!3629566)))

(declare-fun b!5930103 () Bool)

(declare-fun e!3629567 () Bool)

(assert (=> b!5930103 (= e!3629566 e!3629567)))

(declare-fun res!2484818 () Bool)

(assert (=> b!5930103 (=> (not res!2484818) (not e!3629567))))

(assert (=> b!5930103 (= res!2484818 (dynLambda!25069 lambda!323390 (h!70554 (t!377627 (exprs!5861 lt!2310576)))))))

(declare-fun b!5930104 () Bool)

(assert (=> b!5930104 (= e!3629567 (forall!15060 (t!377627 (t!377627 (exprs!5861 lt!2310576))) lambda!323390))))

(assert (= (and d!1859246 (not res!2484817)) b!5930103))

(assert (= (and b!5930103 res!2484818) b!5930104))

(declare-fun b_lambda!222729 () Bool)

(assert (=> (not b_lambda!222729) (not b!5930103)))

(declare-fun m!6822950 () Bool)

(assert (=> b!5930103 m!6822950))

(declare-fun m!6822952 () Bool)

(assert (=> b!5930104 m!6822952))

(assert (=> b!5929118 d!1859246))

(assert (=> d!1859060 d!1858976))

(declare-fun b!5930106 () Bool)

(declare-fun e!3629568 () Bool)

(declare-fun e!3629570 () Bool)

(assert (=> b!5930106 (= e!3629568 e!3629570)))

(declare-fun res!2484822 () Bool)

(assert (=> b!5930106 (= res!2484822 (not (nullable!5972 (reg!16306 (derivativeStep!4708 r!7292 (head!12495 s!2326))))))))

(assert (=> b!5930106 (=> (not res!2484822) (not e!3629570))))

(declare-fun b!5930107 () Bool)

(declare-fun res!2484820 () Bool)

(declare-fun e!3629569 () Bool)

(assert (=> b!5930107 (=> res!2484820 e!3629569)))

(assert (=> b!5930107 (= res!2484820 (not ((_ is Concat!24822) (derivativeStep!4708 r!7292 (head!12495 s!2326)))))))

(declare-fun e!3629574 () Bool)

(assert (=> b!5930107 (= e!3629574 e!3629569)))

(declare-fun b!5930108 () Bool)

(declare-fun e!3629571 () Bool)

(declare-fun call!470708 () Bool)

(assert (=> b!5930108 (= e!3629571 call!470708)))

(declare-fun bm!470702 () Bool)

(declare-fun call!470707 () Bool)

(assert (=> bm!470702 (= call!470708 call!470707)))

(declare-fun b!5930109 () Bool)

(declare-fun e!3629572 () Bool)

(assert (=> b!5930109 (= e!3629572 e!3629568)))

(declare-fun c!1054179 () Bool)

(assert (=> b!5930109 (= c!1054179 ((_ is Star!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(declare-fun b!5930110 () Bool)

(assert (=> b!5930110 (= e!3629569 e!3629571)))

(declare-fun res!2484823 () Bool)

(assert (=> b!5930110 (=> (not res!2484823) (not e!3629571))))

(declare-fun call!470709 () Bool)

(assert (=> b!5930110 (= res!2484823 call!470709)))

(declare-fun b!5930111 () Bool)

(assert (=> b!5930111 (= e!3629570 call!470707)))

(declare-fun c!1054178 () Bool)

(declare-fun bm!470703 () Bool)

(assert (=> bm!470703 (= call!470707 (validRegex!7713 (ite c!1054179 (reg!16306 (derivativeStep!4708 r!7292 (head!12495 s!2326))) (ite c!1054178 (regTwo!32467 (derivativeStep!4708 r!7292 (head!12495 s!2326))) (regTwo!32466 (derivativeStep!4708 r!7292 (head!12495 s!2326)))))))))

(declare-fun b!5930112 () Bool)

(assert (=> b!5930112 (= e!3629568 e!3629574)))

(assert (=> b!5930112 (= c!1054178 ((_ is Union!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(declare-fun b!5930105 () Bool)

(declare-fun res!2484821 () Bool)

(declare-fun e!3629573 () Bool)

(assert (=> b!5930105 (=> (not res!2484821) (not e!3629573))))

(assert (=> b!5930105 (= res!2484821 call!470709)))

(assert (=> b!5930105 (= e!3629574 e!3629573)))

(declare-fun d!1859248 () Bool)

(declare-fun res!2484819 () Bool)

(assert (=> d!1859248 (=> res!2484819 e!3629572)))

(assert (=> d!1859248 (= res!2484819 ((_ is ElementMatch!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(assert (=> d!1859248 (= (validRegex!7713 (derivativeStep!4708 r!7292 (head!12495 s!2326))) e!3629572)))

(declare-fun b!5930113 () Bool)

(assert (=> b!5930113 (= e!3629573 call!470708)))

(declare-fun bm!470704 () Bool)

(assert (=> bm!470704 (= call!470709 (validRegex!7713 (ite c!1054178 (regOne!32467 (derivativeStep!4708 r!7292 (head!12495 s!2326))) (regOne!32466 (derivativeStep!4708 r!7292 (head!12495 s!2326))))))))

(assert (= (and d!1859248 (not res!2484819)) b!5930109))

(assert (= (and b!5930109 c!1054179) b!5930106))

(assert (= (and b!5930109 (not c!1054179)) b!5930112))

(assert (= (and b!5930106 res!2484822) b!5930111))

(assert (= (and b!5930112 c!1054178) b!5930105))

(assert (= (and b!5930112 (not c!1054178)) b!5930107))

(assert (= (and b!5930105 res!2484821) b!5930113))

(assert (= (and b!5930107 (not res!2484820)) b!5930110))

(assert (= (and b!5930110 res!2484823) b!5930108))

(assert (= (or b!5930113 b!5930108) bm!470702))

(assert (= (or b!5930105 b!5930110) bm!470704))

(assert (= (or b!5930111 bm!470702) bm!470703))

(declare-fun m!6822954 () Bool)

(assert (=> b!5930106 m!6822954))

(declare-fun m!6822956 () Bool)

(assert (=> bm!470703 m!6822956))

(declare-fun m!6822958 () Bool)

(assert (=> bm!470704 m!6822958))

(assert (=> d!1859060 d!1859248))

(declare-fun d!1859250 () Bool)

(assert (=> d!1859250 (= (Exists!3047 (ite c!1054095 lambda!323444 lambda!323445)) (choose!44703 (ite c!1054095 lambda!323444 lambda!323445)))))

(declare-fun bs!1403133 () Bool)

(assert (= bs!1403133 d!1859250))

(declare-fun m!6822960 () Bool)

(assert (=> bs!1403133 m!6822960))

(assert (=> bm!470619 d!1859250))

(assert (=> b!5929563 d!1858976))

(assert (=> b!5929563 d!1858978))

(declare-fun b!5930115 () Bool)

(declare-fun e!3629575 () Bool)

(declare-fun e!3629577 () Bool)

(assert (=> b!5930115 (= e!3629575 e!3629577)))

(declare-fun res!2484827 () Bool)

(assert (=> b!5930115 (= res!2484827 (not (nullable!5972 (reg!16306 (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))))))))

(assert (=> b!5930115 (=> (not res!2484827) (not e!3629577))))

(declare-fun b!5930116 () Bool)

(declare-fun res!2484825 () Bool)

(declare-fun e!3629576 () Bool)

(assert (=> b!5930116 (=> res!2484825 e!3629576)))

(assert (=> b!5930116 (= res!2484825 (not ((_ is Concat!24822) (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639)))))))

(declare-fun e!3629581 () Bool)

(assert (=> b!5930116 (= e!3629581 e!3629576)))

(declare-fun b!5930117 () Bool)

(declare-fun e!3629578 () Bool)

(declare-fun call!470711 () Bool)

(assert (=> b!5930117 (= e!3629578 call!470711)))

(declare-fun bm!470705 () Bool)

(declare-fun call!470710 () Bool)

(assert (=> bm!470705 (= call!470711 call!470710)))

(declare-fun b!5930118 () Bool)

(declare-fun e!3629579 () Bool)

(assert (=> b!5930118 (= e!3629579 e!3629575)))

(declare-fun c!1054181 () Bool)

(assert (=> b!5930118 (= c!1054181 ((_ is Star!15977) (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))))))

(declare-fun b!5930119 () Bool)

(assert (=> b!5930119 (= e!3629576 e!3629578)))

(declare-fun res!2484828 () Bool)

(assert (=> b!5930119 (=> (not res!2484828) (not e!3629578))))

(declare-fun call!470712 () Bool)

(assert (=> b!5930119 (= res!2484828 call!470712)))

(declare-fun b!5930120 () Bool)

(assert (=> b!5930120 (= e!3629577 call!470710)))

(declare-fun bm!470706 () Bool)

(declare-fun c!1054180 () Bool)

(assert (=> bm!470706 (= call!470710 (validRegex!7713 (ite c!1054181 (reg!16306 (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))) (ite c!1054180 (regTwo!32467 (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))) (regTwo!32466 (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639)))))))))

(declare-fun b!5930121 () Bool)

(assert (=> b!5930121 (= e!3629575 e!3629581)))

(assert (=> b!5930121 (= c!1054180 ((_ is Union!15977) (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))))))

(declare-fun b!5930114 () Bool)

(declare-fun res!2484826 () Bool)

(declare-fun e!3629580 () Bool)

(assert (=> b!5930114 (=> (not res!2484826) (not e!3629580))))

(assert (=> b!5930114 (= res!2484826 call!470712)))

(assert (=> b!5930114 (= e!3629581 e!3629580)))

(declare-fun d!1859252 () Bool)

(declare-fun res!2484824 () Bool)

(assert (=> d!1859252 (=> res!2484824 e!3629579)))

(assert (=> d!1859252 (= res!2484824 ((_ is ElementMatch!15977) (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))))))

(assert (=> d!1859252 (= (validRegex!7713 (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))) e!3629579)))

(declare-fun b!5930122 () Bool)

(assert (=> b!5930122 (= e!3629580 call!470711)))

(declare-fun bm!470707 () Bool)

(assert (=> bm!470707 (= call!470712 (validRegex!7713 (ite c!1054180 (regOne!32467 (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))) (regOne!32466 (ite c!1053934 (regOne!32467 lt!2310639) (regOne!32466 lt!2310639))))))))

(assert (= (and d!1859252 (not res!2484824)) b!5930118))

(assert (= (and b!5930118 c!1054181) b!5930115))

(assert (= (and b!5930118 (not c!1054181)) b!5930121))

(assert (= (and b!5930115 res!2484827) b!5930120))

(assert (= (and b!5930121 c!1054180) b!5930114))

(assert (= (and b!5930121 (not c!1054180)) b!5930116))

(assert (= (and b!5930114 res!2484826) b!5930122))

(assert (= (and b!5930116 (not res!2484825)) b!5930119))

(assert (= (and b!5930119 res!2484828) b!5930117))

(assert (= (or b!5930122 b!5930117) bm!470705))

(assert (= (or b!5930114 b!5930119) bm!470707))

(assert (= (or b!5930120 bm!470705) bm!470706))

(declare-fun m!6822962 () Bool)

(assert (=> b!5930115 m!6822962))

(declare-fun m!6822964 () Bool)

(assert (=> bm!470706 m!6822964))

(declare-fun m!6822966 () Bool)

(assert (=> bm!470707 m!6822966))

(assert (=> bm!470507 d!1859252))

(declare-fun b!5930124 () Bool)

(declare-fun e!3629582 () Bool)

(declare-fun e!3629584 () Bool)

(assert (=> b!5930124 (= e!3629582 e!3629584)))

(declare-fun res!2484832 () Bool)

(assert (=> b!5930124 (= res!2484832 (not (nullable!5972 (reg!16306 (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))))

(assert (=> b!5930124 (=> (not res!2484832) (not e!3629584))))

(declare-fun b!5930125 () Bool)

(declare-fun res!2484830 () Bool)

(declare-fun e!3629583 () Bool)

(assert (=> b!5930125 (=> res!2484830 e!3629583)))

(assert (=> b!5930125 (= res!2484830 (not ((_ is Concat!24822) (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))))

(declare-fun e!3629588 () Bool)

(assert (=> b!5930125 (= e!3629588 e!3629583)))

(declare-fun b!5930126 () Bool)

(declare-fun e!3629585 () Bool)

(declare-fun call!470714 () Bool)

(assert (=> b!5930126 (= e!3629585 call!470714)))

(declare-fun bm!470708 () Bool)

(declare-fun call!470713 () Bool)

(assert (=> bm!470708 (= call!470714 call!470713)))

(declare-fun b!5930127 () Bool)

(declare-fun e!3629586 () Bool)

(assert (=> b!5930127 (= e!3629586 e!3629582)))

(declare-fun c!1054183 () Bool)

(assert (=> b!5930127 (= c!1054183 ((_ is Star!15977) (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))

(declare-fun b!5930128 () Bool)

(assert (=> b!5930128 (= e!3629583 e!3629585)))

(declare-fun res!2484833 () Bool)

(assert (=> b!5930128 (=> (not res!2484833) (not e!3629585))))

(declare-fun call!470715 () Bool)

(assert (=> b!5930128 (= res!2484833 call!470715)))

(declare-fun b!5930129 () Bool)

(assert (=> b!5930129 (= e!3629584 call!470713)))

(declare-fun c!1054182 () Bool)

(declare-fun bm!470709 () Bool)

(assert (=> bm!470709 (= call!470713 (validRegex!7713 (ite c!1054183 (reg!16306 (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))) (ite c!1054182 (regTwo!32467 (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))) (regTwo!32466 (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))))))

(declare-fun b!5930130 () Bool)

(assert (=> b!5930130 (= e!3629582 e!3629588)))

(assert (=> b!5930130 (= c!1054182 ((_ is Union!15977) (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))

(declare-fun b!5930123 () Bool)

(declare-fun res!2484831 () Bool)

(declare-fun e!3629587 () Bool)

(assert (=> b!5930123 (=> (not res!2484831) (not e!3629587))))

(assert (=> b!5930123 (= res!2484831 call!470715)))

(assert (=> b!5930123 (= e!3629588 e!3629587)))

(declare-fun d!1859254 () Bool)

(declare-fun res!2484829 () Bool)

(assert (=> d!1859254 (=> res!2484829 e!3629586)))

(assert (=> d!1859254 (= res!2484829 ((_ is ElementMatch!15977) (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))

(assert (=> d!1859254 (= (validRegex!7713 (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))) e!3629586)))

(declare-fun b!5930131 () Bool)

(assert (=> b!5930131 (= e!3629587 call!470714)))

(declare-fun bm!470710 () Bool)

(assert (=> bm!470710 (= call!470715 (validRegex!7713 (ite c!1054182 (regOne!32467 (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))) (regOne!32466 (ite c!1054070 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (ite c!1054069 (regTwo!32467 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regTwo!32466 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))))

(assert (= (and d!1859254 (not res!2484829)) b!5930127))

(assert (= (and b!5930127 c!1054183) b!5930124))

(assert (= (and b!5930127 (not c!1054183)) b!5930130))

(assert (= (and b!5930124 res!2484832) b!5930129))

(assert (= (and b!5930130 c!1054182) b!5930123))

(assert (= (and b!5930130 (not c!1054182)) b!5930125))

(assert (= (and b!5930123 res!2484831) b!5930131))

(assert (= (and b!5930125 (not res!2484830)) b!5930128))

(assert (= (and b!5930128 res!2484833) b!5930126))

(assert (= (or b!5930131 b!5930126) bm!470708))

(assert (= (or b!5930123 b!5930128) bm!470710))

(assert (= (or b!5930129 bm!470708) bm!470709))

(declare-fun m!6822968 () Bool)

(assert (=> b!5930124 m!6822968))

(declare-fun m!6822970 () Bool)

(assert (=> bm!470709 m!6822970))

(declare-fun m!6822972 () Bool)

(assert (=> bm!470710 m!6822972))

(assert (=> bm!470597 d!1859254))

(assert (=> b!5929390 d!1859026))

(declare-fun b!5930133 () Bool)

(declare-fun e!3629589 () Bool)

(declare-fun e!3629591 () Bool)

(assert (=> b!5930133 (= e!3629589 e!3629591)))

(declare-fun res!2484837 () Bool)

(assert (=> b!5930133 (= res!2484837 (not (nullable!5972 (reg!16306 (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))))))))

(assert (=> b!5930133 (=> (not res!2484837) (not e!3629591))))

(declare-fun b!5930134 () Bool)

(declare-fun res!2484835 () Bool)

(declare-fun e!3629590 () Bool)

(assert (=> b!5930134 (=> res!2484835 e!3629590)))

(assert (=> b!5930134 (= res!2484835 (not ((_ is Concat!24822) (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627))))))))

(declare-fun e!3629595 () Bool)

(assert (=> b!5930134 (= e!3629595 e!3629590)))

(declare-fun b!5930135 () Bool)

(declare-fun e!3629592 () Bool)

(declare-fun call!470717 () Bool)

(assert (=> b!5930135 (= e!3629592 call!470717)))

(declare-fun bm!470711 () Bool)

(declare-fun call!470716 () Bool)

(assert (=> bm!470711 (= call!470717 call!470716)))

(declare-fun b!5930136 () Bool)

(declare-fun e!3629593 () Bool)

(assert (=> b!5930136 (= e!3629593 e!3629589)))

(declare-fun c!1054185 () Bool)

(assert (=> b!5930136 (= c!1054185 ((_ is Star!15977) (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))))))

(declare-fun b!5930137 () Bool)

(assert (=> b!5930137 (= e!3629590 e!3629592)))

(declare-fun res!2484838 () Bool)

(assert (=> b!5930137 (=> (not res!2484838) (not e!3629592))))

(declare-fun call!470718 () Bool)

(assert (=> b!5930137 (= res!2484838 call!470718)))

(declare-fun b!5930138 () Bool)

(assert (=> b!5930138 (= e!3629591 call!470716)))

(declare-fun bm!470712 () Bool)

(declare-fun c!1054184 () Bool)

(assert (=> bm!470712 (= call!470716 (validRegex!7713 (ite c!1054185 (reg!16306 (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))) (ite c!1054184 (regTwo!32467 (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))) (regTwo!32466 (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627))))))))))

(declare-fun b!5930139 () Bool)

(assert (=> b!5930139 (= e!3629589 e!3629595)))

(assert (=> b!5930139 (= c!1054184 ((_ is Union!15977) (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))))))

(declare-fun b!5930132 () Bool)

(declare-fun res!2484836 () Bool)

(declare-fun e!3629594 () Bool)

(assert (=> b!5930132 (=> (not res!2484836) (not e!3629594))))

(assert (=> b!5930132 (= res!2484836 call!470718)))

(assert (=> b!5930132 (= e!3629595 e!3629594)))

(declare-fun d!1859256 () Bool)

(declare-fun res!2484834 () Bool)

(assert (=> d!1859256 (=> res!2484834 e!3629593)))

(assert (=> d!1859256 (= res!2484834 ((_ is ElementMatch!15977) (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))))))

(assert (=> d!1859256 (= (validRegex!7713 (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))) e!3629593)))

(declare-fun b!5930140 () Bool)

(assert (=> b!5930140 (= e!3629594 call!470717)))

(declare-fun bm!470713 () Bool)

(assert (=> bm!470713 (= call!470718 (validRegex!7713 (ite c!1054184 (regOne!32467 (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))) (regOne!32466 (ite c!1053960 (reg!16306 lt!2310627) (ite c!1053959 (regTwo!32467 lt!2310627) (regTwo!32466 lt!2310627)))))))))

(assert (= (and d!1859256 (not res!2484834)) b!5930136))

(assert (= (and b!5930136 c!1054185) b!5930133))

(assert (= (and b!5930136 (not c!1054185)) b!5930139))

(assert (= (and b!5930133 res!2484837) b!5930138))

(assert (= (and b!5930139 c!1054184) b!5930132))

(assert (= (and b!5930139 (not c!1054184)) b!5930134))

(assert (= (and b!5930132 res!2484836) b!5930140))

(assert (= (and b!5930134 (not res!2484835)) b!5930137))

(assert (= (and b!5930137 res!2484838) b!5930135))

(assert (= (or b!5930140 b!5930135) bm!470711))

(assert (= (or b!5930132 b!5930137) bm!470713))

(assert (= (or b!5930138 bm!470711) bm!470712))

(declare-fun m!6822974 () Bool)

(assert (=> b!5930133 m!6822974))

(declare-fun m!6822976 () Bool)

(assert (=> bm!470712 m!6822976))

(declare-fun m!6822978 () Bool)

(assert (=> bm!470713 m!6822978))

(assert (=> bm!470527 d!1859256))

(assert (=> d!1859040 d!1858802))

(assert (=> d!1859040 d!1858792))

(declare-fun d!1859258 () Bool)

(assert (=> d!1859258 (= (Exists!3047 lambda!323432) (choose!44703 lambda!323432))))

(declare-fun bs!1403134 () Bool)

(assert (= bs!1403134 d!1859258))

(declare-fun m!6822980 () Bool)

(assert (=> bs!1403134 m!6822980))

(assert (=> d!1859040 d!1859258))

(declare-fun d!1859260 () Bool)

(assert (=> d!1859260 (= (isEmpty!35974 lt!2310648) (not ((_ is Some!15867) lt!2310648)))))

(assert (=> d!1859022 d!1859260))

(assert (=> d!1858898 d!1858784))

(declare-fun d!1859262 () Bool)

(declare-fun res!2484839 () Bool)

(declare-fun e!3629596 () Bool)

(assert (=> d!1859262 (=> res!2484839 e!3629596)))

(assert (=> d!1859262 (= res!2484839 ((_ is Nil!64106) lt!2310681))))

(assert (=> d!1859262 (= (forall!15060 lt!2310681 lambda!323429) e!3629596)))

(declare-fun b!5930141 () Bool)

(declare-fun e!3629597 () Bool)

(assert (=> b!5930141 (= e!3629596 e!3629597)))

(declare-fun res!2484840 () Bool)

(assert (=> b!5930141 (=> (not res!2484840) (not e!3629597))))

(assert (=> b!5930141 (= res!2484840 (dynLambda!25069 lambda!323429 (h!70554 lt!2310681)))))

(declare-fun b!5930142 () Bool)

(assert (=> b!5930142 (= e!3629597 (forall!15060 (t!377627 lt!2310681) lambda!323429))))

(assert (= (and d!1859262 (not res!2484839)) b!5930141))

(assert (= (and b!5930141 res!2484840) b!5930142))

(declare-fun b_lambda!222731 () Bool)

(assert (=> (not b_lambda!222731) (not b!5930141)))

(declare-fun m!6822982 () Bool)

(assert (=> b!5930141 m!6822982))

(declare-fun m!6822984 () Bool)

(assert (=> b!5930142 m!6822984))

(assert (=> d!1859016 d!1859262))

(declare-fun d!1859264 () Bool)

(assert (=> d!1859264 (= (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (nullableFct!1944 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))

(declare-fun bs!1403135 () Bool)

(assert (= bs!1403135 d!1859264))

(declare-fun m!6822986 () Bool)

(assert (=> bs!1403135 m!6822986))

(assert (=> b!5929351 d!1859264))

(declare-fun d!1859266 () Bool)

(declare-fun res!2484841 () Bool)

(declare-fun e!3629598 () Bool)

(assert (=> d!1859266 (=> res!2484841 e!3629598)))

(assert (=> d!1859266 (= res!2484841 ((_ is Nil!64106) (t!377627 (unfocusZipperList!1398 zl!343))))))

(assert (=> d!1859266 (= (forall!15060 (t!377627 (unfocusZipperList!1398 zl!343)) lambda!323393) e!3629598)))

(declare-fun b!5930143 () Bool)

(declare-fun e!3629599 () Bool)

(assert (=> b!5930143 (= e!3629598 e!3629599)))

(declare-fun res!2484842 () Bool)

(assert (=> b!5930143 (=> (not res!2484842) (not e!3629599))))

(assert (=> b!5930143 (= res!2484842 (dynLambda!25069 lambda!323393 (h!70554 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5930144 () Bool)

(assert (=> b!5930144 (= e!3629599 (forall!15060 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343))) lambda!323393))))

(assert (= (and d!1859266 (not res!2484841)) b!5930143))

(assert (= (and b!5930143 res!2484842) b!5930144))

(declare-fun b_lambda!222733 () Bool)

(assert (=> (not b_lambda!222733) (not b!5930143)))

(declare-fun m!6822988 () Bool)

(assert (=> b!5930143 m!6822988))

(declare-fun m!6822990 () Bool)

(assert (=> b!5930144 m!6822990))

(assert (=> b!5929413 d!1859266))

(declare-fun d!1859268 () Bool)

(assert (=> d!1859268 (= (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (nullableFct!1944 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))))))

(declare-fun bs!1403136 () Bool)

(assert (= bs!1403136 d!1859268))

(declare-fun m!6822992 () Bool)

(assert (=> bs!1403136 m!6822992))

(assert (=> b!5929020 d!1859268))

(assert (=> b!5929552 d!1859212))

(declare-fun d!1859270 () Bool)

(assert (=> d!1859270 (= ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))) (ite (or c!1054028 c!1054026) (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (h!70554 (exprs!5861 lt!2310576)))) (Cons!64106 (ite (or c!1054028 c!1054026) (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (h!70554 (exprs!5861 lt!2310576))) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))))

(assert (=> bm!470565 d!1859270))

(declare-fun b!5930145 () Bool)

(declare-fun e!3629606 () Bool)

(assert (=> b!5930145 (= e!3629606 (= (head!12495 (tail!11580 s!2326)) (c!1053727 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326)))))))

(declare-fun b!5930146 () Bool)

(declare-fun e!3629602 () Bool)

(assert (=> b!5930146 (= e!3629602 (matchR!8160 (derivativeStep!4708 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326)) (head!12495 (tail!11580 s!2326))) (tail!11580 (tail!11580 s!2326))))))

(declare-fun b!5930147 () Bool)

(declare-fun e!3629605 () Bool)

(declare-fun lt!2310705 () Bool)

(assert (=> b!5930147 (= e!3629605 (not lt!2310705))))

(declare-fun b!5930148 () Bool)

(declare-fun e!3629601 () Bool)

(declare-fun e!3629603 () Bool)

(assert (=> b!5930148 (= e!3629601 e!3629603)))

(declare-fun res!2484843 () Bool)

(assert (=> b!5930148 (=> res!2484843 e!3629603)))

(declare-fun call!470719 () Bool)

(assert (=> b!5930148 (= res!2484843 call!470719)))

(declare-fun b!5930149 () Bool)

(declare-fun e!3629600 () Bool)

(assert (=> b!5930149 (= e!3629600 (= lt!2310705 call!470719))))

(declare-fun b!5930150 () Bool)

(declare-fun res!2484849 () Bool)

(assert (=> b!5930150 (=> (not res!2484849) (not e!3629606))))

(assert (=> b!5930150 (= res!2484849 (not call!470719))))

(declare-fun bm!470714 () Bool)

(assert (=> bm!470714 (= call!470719 (isEmpty!35972 (tail!11580 s!2326)))))

(declare-fun b!5930151 () Bool)

(assert (=> b!5930151 (= e!3629600 e!3629605)))

(declare-fun c!1054187 () Bool)

(assert (=> b!5930151 (= c!1054187 ((_ is EmptyLang!15977) (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326))))))

(declare-fun b!5930152 () Bool)

(declare-fun res!2484850 () Bool)

(assert (=> b!5930152 (=> res!2484850 e!3629603)))

(assert (=> b!5930152 (= res!2484850 (not (isEmpty!35972 (tail!11580 (tail!11580 s!2326)))))))

(declare-fun b!5930153 () Bool)

(declare-fun res!2484847 () Bool)

(assert (=> b!5930153 (=> (not res!2484847) (not e!3629606))))

(assert (=> b!5930153 (= res!2484847 (isEmpty!35972 (tail!11580 (tail!11580 s!2326))))))

(declare-fun d!1859272 () Bool)

(assert (=> d!1859272 e!3629600))

(declare-fun c!1054188 () Bool)

(assert (=> d!1859272 (= c!1054188 ((_ is EmptyExpr!15977) (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326))))))

(assert (=> d!1859272 (= lt!2310705 e!3629602)))

(declare-fun c!1054186 () Bool)

(assert (=> d!1859272 (= c!1054186 (isEmpty!35972 (tail!11580 s!2326)))))

(assert (=> d!1859272 (validRegex!7713 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326)))))

(assert (=> d!1859272 (= (matchR!8160 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326)) (tail!11580 s!2326)) lt!2310705)))

(declare-fun b!5930154 () Bool)

(declare-fun res!2484844 () Bool)

(declare-fun e!3629604 () Bool)

(assert (=> b!5930154 (=> res!2484844 e!3629604)))

(assert (=> b!5930154 (= res!2484844 (not ((_ is ElementMatch!15977) (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326)))))))

(assert (=> b!5930154 (= e!3629605 e!3629604)))

(declare-fun b!5930155 () Bool)

(assert (=> b!5930155 (= e!3629603 (not (= (head!12495 (tail!11580 s!2326)) (c!1053727 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326))))))))

(declare-fun b!5930156 () Bool)

(assert (=> b!5930156 (= e!3629604 e!3629601)))

(declare-fun res!2484846 () Bool)

(assert (=> b!5930156 (=> (not res!2484846) (not e!3629601))))

(assert (=> b!5930156 (= res!2484846 (not lt!2310705))))

(declare-fun b!5930157 () Bool)

(assert (=> b!5930157 (= e!3629602 (nullable!5972 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326))))))

(declare-fun b!5930158 () Bool)

(declare-fun res!2484848 () Bool)

(assert (=> b!5930158 (=> res!2484848 e!3629604)))

(assert (=> b!5930158 (= res!2484848 e!3629606)))

(declare-fun res!2484845 () Bool)

(assert (=> b!5930158 (=> (not res!2484845) (not e!3629606))))

(assert (=> b!5930158 (= res!2484845 lt!2310705)))

(assert (= (and d!1859272 c!1054186) b!5930157))

(assert (= (and d!1859272 (not c!1054186)) b!5930146))

(assert (= (and d!1859272 c!1054188) b!5930149))

(assert (= (and d!1859272 (not c!1054188)) b!5930151))

(assert (= (and b!5930151 c!1054187) b!5930147))

(assert (= (and b!5930151 (not c!1054187)) b!5930154))

(assert (= (and b!5930154 (not res!2484844)) b!5930158))

(assert (= (and b!5930158 res!2484845) b!5930150))

(assert (= (and b!5930150 res!2484849) b!5930153))

(assert (= (and b!5930153 res!2484847) b!5930145))

(assert (= (and b!5930158 (not res!2484848)) b!5930156))

(assert (= (and b!5930156 res!2484846) b!5930148))

(assert (= (and b!5930148 (not res!2484843)) b!5930152))

(assert (= (and b!5930152 (not res!2484850)) b!5930155))

(assert (= (or b!5930149 b!5930148 b!5930150) bm!470714))

(assert (=> b!5930152 m!6821748))

(assert (=> b!5930152 m!6822560))

(assert (=> b!5930152 m!6822560))

(assert (=> b!5930152 m!6822562))

(assert (=> b!5930146 m!6821748))

(assert (=> b!5930146 m!6822564))

(assert (=> b!5930146 m!6822628))

(assert (=> b!5930146 m!6822564))

(declare-fun m!6822994 () Bool)

(assert (=> b!5930146 m!6822994))

(assert (=> b!5930146 m!6821748))

(assert (=> b!5930146 m!6822560))

(assert (=> b!5930146 m!6822994))

(assert (=> b!5930146 m!6822560))

(declare-fun m!6822996 () Bool)

(assert (=> b!5930146 m!6822996))

(assert (=> d!1859272 m!6821748))

(assert (=> d!1859272 m!6821750))

(assert (=> d!1859272 m!6822628))

(declare-fun m!6822998 () Bool)

(assert (=> d!1859272 m!6822998))

(assert (=> b!5930153 m!6821748))

(assert (=> b!5930153 m!6822560))

(assert (=> b!5930153 m!6822560))

(assert (=> b!5930153 m!6822562))

(assert (=> b!5930157 m!6822628))

(declare-fun m!6823000 () Bool)

(assert (=> b!5930157 m!6823000))

(assert (=> bm!470714 m!6821748))

(assert (=> bm!470714 m!6821750))

(assert (=> b!5930145 m!6821748))

(assert (=> b!5930145 m!6822564))

(assert (=> b!5930155 m!6821748))

(assert (=> b!5930155 m!6822564))

(assert (=> b!5929557 d!1859272))

(declare-fun b!5930159 () Bool)

(declare-fun c!1054193 () Bool)

(assert (=> b!5930159 (= c!1054193 (nullable!5972 (regOne!32466 (regTwo!32466 r!7292))))))

(declare-fun e!3629610 () Regex!15977)

(declare-fun e!3629608 () Regex!15977)

(assert (=> b!5930159 (= e!3629610 e!3629608)))

(declare-fun d!1859274 () Bool)

(declare-fun lt!2310706 () Regex!15977)

(assert (=> d!1859274 (validRegex!7713 lt!2310706)))

(declare-fun e!3629611 () Regex!15977)

(assert (=> d!1859274 (= lt!2310706 e!3629611)))

(declare-fun c!1054191 () Bool)

(assert (=> d!1859274 (= c!1054191 (or ((_ is EmptyExpr!15977) (regTwo!32466 r!7292)) ((_ is EmptyLang!15977) (regTwo!32466 r!7292))))))

(assert (=> d!1859274 (validRegex!7713 (regTwo!32466 r!7292))))

(assert (=> d!1859274 (= (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 s!2326)) lt!2310706)))

(declare-fun b!5930160 () Bool)

(declare-fun e!3629607 () Regex!15977)

(assert (=> b!5930160 (= e!3629611 e!3629607)))

(declare-fun c!1054190 () Bool)

(assert (=> b!5930160 (= c!1054190 ((_ is ElementMatch!15977) (regTwo!32466 r!7292)))))

(declare-fun call!470721 () Regex!15977)

(declare-fun call!470723 () Regex!15977)

(declare-fun b!5930161 () Bool)

(assert (=> b!5930161 (= e!3629608 (Union!15977 (Concat!24822 call!470721 (regTwo!32466 (regTwo!32466 r!7292))) call!470723))))

(declare-fun b!5930162 () Bool)

(declare-fun e!3629609 () Regex!15977)

(assert (=> b!5930162 (= e!3629609 e!3629610)))

(declare-fun c!1054189 () Bool)

(assert (=> b!5930162 (= c!1054189 ((_ is Star!15977) (regTwo!32466 r!7292)))))

(declare-fun b!5930163 () Bool)

(declare-fun c!1054192 () Bool)

(assert (=> b!5930163 (= c!1054192 ((_ is Union!15977) (regTwo!32466 r!7292)))))

(assert (=> b!5930163 (= e!3629607 e!3629609)))

(declare-fun b!5930164 () Bool)

(declare-fun call!470722 () Regex!15977)

(assert (=> b!5930164 (= e!3629610 (Concat!24822 call!470722 (regTwo!32466 r!7292)))))

(declare-fun b!5930165 () Bool)

(declare-fun call!470720 () Regex!15977)

(assert (=> b!5930165 (= e!3629609 (Union!15977 call!470720 call!470721))))

(declare-fun bm!470715 () Bool)

(assert (=> bm!470715 (= call!470720 (derivativeStep!4708 (ite c!1054192 (regOne!32467 (regTwo!32466 r!7292)) (ite c!1054189 (reg!16306 (regTwo!32466 r!7292)) (ite c!1054193 (regTwo!32466 (regTwo!32466 r!7292)) (regOne!32466 (regTwo!32466 r!7292))))) (head!12495 s!2326)))))

(declare-fun b!5930166 () Bool)

(assert (=> b!5930166 (= e!3629608 (Union!15977 (Concat!24822 call!470723 (regTwo!32466 (regTwo!32466 r!7292))) EmptyLang!15977))))

(declare-fun b!5930167 () Bool)

(assert (=> b!5930167 (= e!3629607 (ite (= (head!12495 s!2326) (c!1053727 (regTwo!32466 r!7292))) EmptyExpr!15977 EmptyLang!15977))))

(declare-fun bm!470716 () Bool)

(assert (=> bm!470716 (= call!470722 call!470720)))

(declare-fun bm!470717 () Bool)

(assert (=> bm!470717 (= call!470723 call!470722)))

(declare-fun bm!470718 () Bool)

(assert (=> bm!470718 (= call!470721 (derivativeStep!4708 (ite c!1054192 (regTwo!32467 (regTwo!32466 r!7292)) (regOne!32466 (regTwo!32466 r!7292))) (head!12495 s!2326)))))

(declare-fun b!5930168 () Bool)

(assert (=> b!5930168 (= e!3629611 EmptyLang!15977)))

(assert (= (and d!1859274 c!1054191) b!5930168))

(assert (= (and d!1859274 (not c!1054191)) b!5930160))

(assert (= (and b!5930160 c!1054190) b!5930167))

(assert (= (and b!5930160 (not c!1054190)) b!5930163))

(assert (= (and b!5930163 c!1054192) b!5930165))

(assert (= (and b!5930163 (not c!1054192)) b!5930162))

(assert (= (and b!5930162 c!1054189) b!5930164))

(assert (= (and b!5930162 (not c!1054189)) b!5930159))

(assert (= (and b!5930159 c!1054193) b!5930161))

(assert (= (and b!5930159 (not c!1054193)) b!5930166))

(assert (= (or b!5930161 b!5930166) bm!470717))

(assert (= (or b!5930164 bm!470717) bm!470716))

(assert (= (or b!5930165 b!5930161) bm!470718))

(assert (= (or b!5930165 bm!470716) bm!470715))

(declare-fun m!6823002 () Bool)

(assert (=> b!5930159 m!6823002))

(declare-fun m!6823004 () Bool)

(assert (=> d!1859274 m!6823004))

(assert (=> d!1859274 m!6822168))

(assert (=> bm!470715 m!6821752))

(declare-fun m!6823006 () Bool)

(assert (=> bm!470715 m!6823006))

(assert (=> bm!470718 m!6821752))

(declare-fun m!6823008 () Bool)

(assert (=> bm!470718 m!6823008))

(assert (=> b!5929557 d!1859274))

(assert (=> b!5929557 d!1858890))

(assert (=> b!5929557 d!1858978))

(declare-fun d!1859276 () Bool)

(declare-fun res!2484851 () Bool)

(declare-fun e!3629612 () Bool)

(assert (=> d!1859276 (=> res!2484851 e!3629612)))

(assert (=> d!1859276 (= res!2484851 ((_ is Nil!64107) res!2484500))))

(assert (=> d!1859276 (= (noDuplicate!1835 res!2484500) e!3629612)))

(declare-fun b!5930169 () Bool)

(declare-fun e!3629613 () Bool)

(assert (=> b!5930169 (= e!3629612 e!3629613)))

(declare-fun res!2484852 () Bool)

(assert (=> b!5930169 (=> (not res!2484852) (not e!3629613))))

(assert (=> b!5930169 (= res!2484852 (not (contains!19962 (t!377628 res!2484500) (h!70555 res!2484500))))))

(declare-fun b!5930170 () Bool)

(assert (=> b!5930170 (= e!3629613 (noDuplicate!1835 (t!377628 res!2484500)))))

(assert (= (and d!1859276 (not res!2484851)) b!5930169))

(assert (= (and b!5930169 res!2484852) b!5930170))

(declare-fun m!6823010 () Bool)

(assert (=> b!5930169 m!6823010))

(declare-fun m!6823012 () Bool)

(assert (=> b!5930170 m!6823012))

(assert (=> d!1858846 d!1859276))

(declare-fun d!1859278 () Bool)

(assert (=> d!1859278 (= (nullable!5972 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))) (nullableFct!1944 (reg!16306 (ite c!1053882 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))

(declare-fun bs!1403137 () Bool)

(assert (= bs!1403137 d!1859278))

(declare-fun m!6823014 () Bool)

(assert (=> bs!1403137 m!6823014))

(assert (=> b!5929524 d!1859278))

(declare-fun b!5930172 () Bool)

(declare-fun e!3629614 () Bool)

(declare-fun e!3629616 () Bool)

(assert (=> b!5930172 (= e!3629614 e!3629616)))

(declare-fun res!2484856 () Bool)

(assert (=> b!5930172 (= res!2484856 (not (nullable!5972 (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))

(assert (=> b!5930172 (=> (not res!2484856) (not e!3629616))))

(declare-fun b!5930173 () Bool)

(declare-fun res!2484854 () Bool)

(declare-fun e!3629615 () Bool)

(assert (=> b!5930173 (=> res!2484854 e!3629615)))

(assert (=> b!5930173 (= res!2484854 (not ((_ is Concat!24822) (h!70554 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun e!3629620 () Bool)

(assert (=> b!5930173 (= e!3629620 e!3629615)))

(declare-fun b!5930174 () Bool)

(declare-fun e!3629617 () Bool)

(declare-fun call!470725 () Bool)

(assert (=> b!5930174 (= e!3629617 call!470725)))

(declare-fun bm!470719 () Bool)

(declare-fun call!470724 () Bool)

(assert (=> bm!470719 (= call!470725 call!470724)))

(declare-fun b!5930175 () Bool)

(declare-fun e!3629618 () Bool)

(assert (=> b!5930175 (= e!3629618 e!3629614)))

(declare-fun c!1054195 () Bool)

(assert (=> b!5930175 (= c!1054195 ((_ is Star!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5930176 () Bool)

(assert (=> b!5930176 (= e!3629615 e!3629617)))

(declare-fun res!2484857 () Bool)

(assert (=> b!5930176 (=> (not res!2484857) (not e!3629617))))

(declare-fun call!470726 () Bool)

(assert (=> b!5930176 (= res!2484857 call!470726)))

(declare-fun b!5930177 () Bool)

(assert (=> b!5930177 (= e!3629616 call!470724)))

(declare-fun c!1054194 () Bool)

(declare-fun bm!470720 () Bool)

(assert (=> bm!470720 (= call!470724 (validRegex!7713 (ite c!1054195 (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))) (ite c!1054194 (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))))))))

(declare-fun b!5930178 () Bool)

(assert (=> b!5930178 (= e!3629614 e!3629620)))

(assert (=> b!5930178 (= c!1054194 ((_ is Union!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(declare-fun b!5930171 () Bool)

(declare-fun res!2484855 () Bool)

(declare-fun e!3629619 () Bool)

(assert (=> b!5930171 (=> (not res!2484855) (not e!3629619))))

(assert (=> b!5930171 (= res!2484855 call!470726)))

(assert (=> b!5930171 (= e!3629620 e!3629619)))

(declare-fun d!1859280 () Bool)

(declare-fun res!2484853 () Bool)

(assert (=> d!1859280 (=> res!2484853 e!3629618)))

(assert (=> d!1859280 (= res!2484853 ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> d!1859280 (= (validRegex!7713 (h!70554 (exprs!5861 (h!70555 zl!343)))) e!3629618)))

(declare-fun b!5930179 () Bool)

(assert (=> b!5930179 (= e!3629619 call!470725)))

(declare-fun bm!470721 () Bool)

(assert (=> bm!470721 (= call!470726 (validRegex!7713 (ite c!1054194 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))

(assert (= (and d!1859280 (not res!2484853)) b!5930175))

(assert (= (and b!5930175 c!1054195) b!5930172))

(assert (= (and b!5930175 (not c!1054195)) b!5930178))

(assert (= (and b!5930172 res!2484856) b!5930177))

(assert (= (and b!5930178 c!1054194) b!5930171))

(assert (= (and b!5930178 (not c!1054194)) b!5930173))

(assert (= (and b!5930171 res!2484855) b!5930179))

(assert (= (and b!5930173 (not res!2484854)) b!5930176))

(assert (= (and b!5930176 res!2484857) b!5930174))

(assert (= (or b!5930179 b!5930174) bm!470719))

(assert (= (or b!5930171 b!5930176) bm!470721))

(assert (= (or b!5930177 bm!470719) bm!470720))

(declare-fun m!6823016 () Bool)

(assert (=> b!5930172 m!6823016))

(declare-fun m!6823018 () Bool)

(assert (=> bm!470720 m!6823018))

(declare-fun m!6823020 () Bool)

(assert (=> bm!470721 m!6823020))

(assert (=> bs!1403101 d!1859280))

(declare-fun d!1859282 () Bool)

(declare-fun lt!2310709 () Int)

(assert (=> d!1859282 (>= lt!2310709 0)))

(declare-fun e!3629623 () Int)

(assert (=> d!1859282 (= lt!2310709 e!3629623)))

(declare-fun c!1054198 () Bool)

(assert (=> d!1859282 (= c!1054198 ((_ is Nil!64108) lt!2310677))))

(assert (=> d!1859282 (= (size!40144 lt!2310677) lt!2310709)))

(declare-fun b!5930184 () Bool)

(assert (=> b!5930184 (= e!3629623 0)))

(declare-fun b!5930185 () Bool)

(assert (=> b!5930185 (= e!3629623 (+ 1 (size!40144 (t!377629 lt!2310677))))))

(assert (= (and d!1859282 c!1054198) b!5930184))

(assert (= (and d!1859282 (not c!1054198)) b!5930185))

(declare-fun m!6823022 () Bool)

(assert (=> b!5930185 m!6823022))

(assert (=> b!5929315 d!1859282))

(declare-fun d!1859284 () Bool)

(declare-fun lt!2310710 () Int)

(assert (=> d!1859284 (>= lt!2310710 0)))

(declare-fun e!3629624 () Int)

(assert (=> d!1859284 (= lt!2310710 e!3629624)))

(declare-fun c!1054199 () Bool)

(assert (=> d!1859284 (= c!1054199 ((_ is Nil!64108) (_1!36259 (get!22078 lt!2310648))))))

(assert (=> d!1859284 (= (size!40144 (_1!36259 (get!22078 lt!2310648))) lt!2310710)))

(declare-fun b!5930186 () Bool)

(assert (=> b!5930186 (= e!3629624 0)))

(declare-fun b!5930187 () Bool)

(assert (=> b!5930187 (= e!3629624 (+ 1 (size!40144 (t!377629 (_1!36259 (get!22078 lt!2310648))))))))

(assert (= (and d!1859284 c!1054199) b!5930186))

(assert (= (and d!1859284 (not c!1054199)) b!5930187))

(assert (=> b!5930187 m!6822824))

(assert (=> b!5929315 d!1859284))

(declare-fun d!1859286 () Bool)

(declare-fun lt!2310711 () Int)

(assert (=> d!1859286 (>= lt!2310711 0)))

(declare-fun e!3629625 () Int)

(assert (=> d!1859286 (= lt!2310711 e!3629625)))

(declare-fun c!1054200 () Bool)

(assert (=> d!1859286 (= c!1054200 ((_ is Nil!64108) (_2!36259 (get!22078 lt!2310648))))))

(assert (=> d!1859286 (= (size!40144 (_2!36259 (get!22078 lt!2310648))) lt!2310711)))

(declare-fun b!5930188 () Bool)

(assert (=> b!5930188 (= e!3629625 0)))

(declare-fun b!5930189 () Bool)

(assert (=> b!5930189 (= e!3629625 (+ 1 (size!40144 (t!377629 (_2!36259 (get!22078 lt!2310648))))))))

(assert (= (and d!1859286 c!1054200) b!5930188))

(assert (= (and d!1859286 (not c!1054200)) b!5930189))

(declare-fun m!6823024 () Bool)

(assert (=> b!5930189 m!6823024))

(assert (=> b!5929315 d!1859286))

(declare-fun d!1859288 () Bool)

(assert (=> d!1859288 (= (nullable!5972 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))) (nullableFct!1944 (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))

(declare-fun bs!1403138 () Bool)

(assert (= bs!1403138 d!1859288))

(declare-fun m!6823026 () Bool)

(assert (=> bs!1403138 m!6823026))

(assert (=> b!5929157 d!1859288))

(declare-fun bs!1403139 () Bool)

(declare-fun d!1859290 () Bool)

(assert (= bs!1403139 (and d!1859290 d!1859074)))

(declare-fun lambda!323451 () Int)

(assert (=> bs!1403139 (= lambda!323451 lambda!323441)))

(declare-fun bs!1403140 () Bool)

(assert (= bs!1403140 (and d!1859290 d!1859016)))

(assert (=> bs!1403140 (= lambda!323451 lambda!323429)))

(declare-fun bs!1403141 () Bool)

(assert (= bs!1403141 (and d!1859290 d!1858790)))

(assert (=> bs!1403141 (= lambda!323451 lambda!323402)))

(declare-fun bs!1403142 () Bool)

(assert (= bs!1403142 (and d!1859290 d!1858772)))

(assert (=> bs!1403142 (= lambda!323451 lambda!323393)))

(declare-fun bs!1403143 () Bool)

(assert (= bs!1403143 (and d!1859290 d!1858760)))

(assert (=> bs!1403143 (= lambda!323451 lambda!323389)))

(declare-fun bs!1403144 () Bool)

(assert (= bs!1403144 (and d!1859290 d!1858764)))

(assert (=> bs!1403144 (= lambda!323451 lambda!323390)))

(declare-fun bs!1403145 () Bool)

(assert (= bs!1403145 (and d!1859290 d!1859188)))

(assert (=> bs!1403145 (= lambda!323451 lambda!323449)))

(declare-fun bs!1403146 () Bool)

(assert (= bs!1403146 (and d!1859290 d!1858804)))

(assert (=> bs!1403146 (= lambda!323451 lambda!323412)))

(declare-fun bs!1403147 () Bool)

(assert (= bs!1403147 (and d!1859290 d!1858774)))

(assert (=> bs!1403147 (= lambda!323451 lambda!323396)))

(declare-fun bs!1403148 () Bool)

(assert (= bs!1403148 (and d!1859290 d!1859132)))

(assert (=> bs!1403148 (= lambda!323451 lambda!323448)))

(declare-fun bs!1403149 () Bool)

(assert (= bs!1403149 (and d!1859290 d!1859204)))

(assert (=> bs!1403149 (= lambda!323451 lambda!323450)))

(declare-fun bs!1403150 () Bool)

(assert (= bs!1403150 (and d!1859290 d!1858900)))

(assert (=> bs!1403150 (= lambda!323451 lambda!323422)))

(declare-fun bs!1403151 () Bool)

(assert (= bs!1403151 (and d!1859290 d!1858920)))

(assert (=> bs!1403151 (= lambda!323451 lambda!323425)))

(declare-fun b!5930190 () Bool)

(declare-fun e!3629627 () Bool)

(declare-fun lt!2310712 () Regex!15977)

(assert (=> b!5930190 (= e!3629627 (isEmptyExpr!1405 lt!2310712))))

(declare-fun b!5930191 () Bool)

(declare-fun e!3629628 () Bool)

(assert (=> b!5930191 (= e!3629627 e!3629628)))

(declare-fun c!1054203 () Bool)

(assert (=> b!5930191 (= c!1054203 (isEmpty!35969 (tail!11581 (exprs!5861 (h!70555 (t!377628 zl!343))))))))

(declare-fun b!5930192 () Bool)

(declare-fun e!3629631 () Regex!15977)

(assert (=> b!5930192 (= e!3629631 (h!70554 (exprs!5861 (h!70555 (t!377628 zl!343)))))))

(declare-fun e!3629629 () Bool)

(assert (=> d!1859290 e!3629629))

(declare-fun res!2484858 () Bool)

(assert (=> d!1859290 (=> (not res!2484858) (not e!3629629))))

(assert (=> d!1859290 (= res!2484858 (validRegex!7713 lt!2310712))))

(assert (=> d!1859290 (= lt!2310712 e!3629631)))

(declare-fun c!1054201 () Bool)

(declare-fun e!3629626 () Bool)

(assert (=> d!1859290 (= c!1054201 e!3629626)))

(declare-fun res!2484859 () Bool)

(assert (=> d!1859290 (=> (not res!2484859) (not e!3629626))))

(assert (=> d!1859290 (= res!2484859 ((_ is Cons!64106) (exprs!5861 (h!70555 (t!377628 zl!343)))))))

(assert (=> d!1859290 (forall!15060 (exprs!5861 (h!70555 (t!377628 zl!343))) lambda!323451)))

(assert (=> d!1859290 (= (generalisedConcat!1574 (exprs!5861 (h!70555 (t!377628 zl!343)))) lt!2310712)))

(declare-fun b!5930193 () Bool)

(assert (=> b!5930193 (= e!3629629 e!3629627)))

(declare-fun c!1054204 () Bool)

(assert (=> b!5930193 (= c!1054204 (isEmpty!35969 (exprs!5861 (h!70555 (t!377628 zl!343)))))))

(declare-fun b!5930194 () Bool)

(declare-fun e!3629630 () Regex!15977)

(assert (=> b!5930194 (= e!3629631 e!3629630)))

(declare-fun c!1054202 () Bool)

(assert (=> b!5930194 (= c!1054202 ((_ is Cons!64106) (exprs!5861 (h!70555 (t!377628 zl!343)))))))

(declare-fun b!5930195 () Bool)

(assert (=> b!5930195 (= e!3629630 (Concat!24822 (h!70554 (exprs!5861 (h!70555 (t!377628 zl!343)))) (generalisedConcat!1574 (t!377627 (exprs!5861 (h!70555 (t!377628 zl!343)))))))))

(declare-fun b!5930196 () Bool)

(assert (=> b!5930196 (= e!3629630 EmptyExpr!15977)))

(declare-fun b!5930197 () Bool)

(assert (=> b!5930197 (= e!3629628 (isConcat!928 lt!2310712))))

(declare-fun b!5930198 () Bool)

(assert (=> b!5930198 (= e!3629628 (= lt!2310712 (head!12496 (exprs!5861 (h!70555 (t!377628 zl!343))))))))

(declare-fun b!5930199 () Bool)

(assert (=> b!5930199 (= e!3629626 (isEmpty!35969 (t!377627 (exprs!5861 (h!70555 (t!377628 zl!343))))))))

(assert (= (and d!1859290 res!2484859) b!5930199))

(assert (= (and d!1859290 c!1054201) b!5930192))

(assert (= (and d!1859290 (not c!1054201)) b!5930194))

(assert (= (and b!5930194 c!1054202) b!5930195))

(assert (= (and b!5930194 (not c!1054202)) b!5930196))

(assert (= (and d!1859290 res!2484858) b!5930193))

(assert (= (and b!5930193 c!1054204) b!5930190))

(assert (= (and b!5930193 (not c!1054204)) b!5930191))

(assert (= (and b!5930191 c!1054203) b!5930198))

(assert (= (and b!5930191 (not c!1054203)) b!5930197))

(declare-fun m!6823028 () Bool)

(assert (=> b!5930190 m!6823028))

(declare-fun m!6823030 () Bool)

(assert (=> b!5930195 m!6823030))

(declare-fun m!6823032 () Bool)

(assert (=> b!5930199 m!6823032))

(declare-fun m!6823034 () Bool)

(assert (=> b!5930191 m!6823034))

(assert (=> b!5930191 m!6823034))

(declare-fun m!6823036 () Bool)

(assert (=> b!5930191 m!6823036))

(declare-fun m!6823038 () Bool)

(assert (=> b!5930193 m!6823038))

(declare-fun m!6823040 () Bool)

(assert (=> b!5930197 m!6823040))

(declare-fun m!6823042 () Bool)

(assert (=> d!1859290 m!6823042))

(declare-fun m!6823044 () Bool)

(assert (=> d!1859290 m!6823044))

(declare-fun m!6823046 () Bool)

(assert (=> b!5930198 m!6823046))

(assert (=> b!5929358 d!1859290))

(declare-fun bs!1403152 () Bool)

(declare-fun d!1859292 () Bool)

(assert (= bs!1403152 (and d!1859292 d!1859074)))

(declare-fun lambda!323452 () Int)

(assert (=> bs!1403152 (= lambda!323452 lambda!323441)))

(declare-fun bs!1403153 () Bool)

(assert (= bs!1403153 (and d!1859292 d!1859016)))

(assert (=> bs!1403153 (= lambda!323452 lambda!323429)))

(declare-fun bs!1403154 () Bool)

(assert (= bs!1403154 (and d!1859292 d!1858790)))

(assert (=> bs!1403154 (= lambda!323452 lambda!323402)))

(declare-fun bs!1403155 () Bool)

(assert (= bs!1403155 (and d!1859292 d!1858760)))

(assert (=> bs!1403155 (= lambda!323452 lambda!323389)))

(declare-fun bs!1403156 () Bool)

(assert (= bs!1403156 (and d!1859292 d!1858764)))

(assert (=> bs!1403156 (= lambda!323452 lambda!323390)))

(declare-fun bs!1403157 () Bool)

(assert (= bs!1403157 (and d!1859292 d!1859188)))

(assert (=> bs!1403157 (= lambda!323452 lambda!323449)))

(declare-fun bs!1403158 () Bool)

(assert (= bs!1403158 (and d!1859292 d!1858804)))

(assert (=> bs!1403158 (= lambda!323452 lambda!323412)))

(declare-fun bs!1403159 () Bool)

(assert (= bs!1403159 (and d!1859292 d!1858774)))

(assert (=> bs!1403159 (= lambda!323452 lambda!323396)))

(declare-fun bs!1403160 () Bool)

(assert (= bs!1403160 (and d!1859292 d!1859132)))

(assert (=> bs!1403160 (= lambda!323452 lambda!323448)))

(declare-fun bs!1403161 () Bool)

(assert (= bs!1403161 (and d!1859292 d!1859204)))

(assert (=> bs!1403161 (= lambda!323452 lambda!323450)))

(declare-fun bs!1403162 () Bool)

(assert (= bs!1403162 (and d!1859292 d!1858772)))

(assert (=> bs!1403162 (= lambda!323452 lambda!323393)))

(declare-fun bs!1403163 () Bool)

(assert (= bs!1403163 (and d!1859292 d!1859290)))

(assert (=> bs!1403163 (= lambda!323452 lambda!323451)))

(declare-fun bs!1403164 () Bool)

(assert (= bs!1403164 (and d!1859292 d!1858900)))

(assert (=> bs!1403164 (= lambda!323452 lambda!323422)))

(declare-fun bs!1403165 () Bool)

(assert (= bs!1403165 (and d!1859292 d!1858920)))

(assert (=> bs!1403165 (= lambda!323452 lambda!323425)))

(declare-fun lt!2310713 () List!64230)

(assert (=> d!1859292 (forall!15060 lt!2310713 lambda!323452)))

(declare-fun e!3629632 () List!64230)

(assert (=> d!1859292 (= lt!2310713 e!3629632)))

(declare-fun c!1054205 () Bool)

(assert (=> d!1859292 (= c!1054205 ((_ is Cons!64107) (t!377628 (t!377628 zl!343))))))

(assert (=> d!1859292 (= (unfocusZipperList!1398 (t!377628 (t!377628 zl!343))) lt!2310713)))

(declare-fun b!5930200 () Bool)

(assert (=> b!5930200 (= e!3629632 (Cons!64106 (generalisedConcat!1574 (exprs!5861 (h!70555 (t!377628 (t!377628 zl!343))))) (unfocusZipperList!1398 (t!377628 (t!377628 (t!377628 zl!343))))))))

(declare-fun b!5930201 () Bool)

(assert (=> b!5930201 (= e!3629632 Nil!64106)))

(assert (= (and d!1859292 c!1054205) b!5930200))

(assert (= (and d!1859292 (not c!1054205)) b!5930201))

(declare-fun m!6823048 () Bool)

(assert (=> d!1859292 m!6823048))

(declare-fun m!6823050 () Bool)

(assert (=> b!5930200 m!6823050))

(declare-fun m!6823052 () Bool)

(assert (=> b!5930200 m!6823052))

(assert (=> b!5929358 d!1859292))

(declare-fun d!1859294 () Bool)

(declare-fun c!1054206 () Bool)

(declare-fun e!3629635 () Bool)

(assert (=> d!1859294 (= c!1054206 e!3629635)))

(declare-fun res!2484860 () Bool)

(assert (=> d!1859294 (=> (not res!2484860) (not e!3629635))))

(assert (=> d!1859294 (= res!2484860 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))))

(declare-fun e!3629634 () (InoxSet Context!10722))

(assert (=> d!1859294 (= (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (h!70556 s!2326)) e!3629634)))

(declare-fun b!5930202 () Bool)

(assert (=> b!5930202 (= e!3629635 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))))))

(declare-fun b!5930203 () Bool)

(declare-fun e!3629633 () (InoxSet Context!10722))

(assert (=> b!5930203 (= e!3629634 e!3629633)))

(declare-fun c!1054207 () Bool)

(assert (=> b!5930203 (= c!1054207 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))))

(declare-fun b!5930204 () Bool)

(declare-fun call!470727 () (InoxSet Context!10722))

(assert (=> b!5930204 (= e!3629633 call!470727)))

(declare-fun bm!470722 () Bool)

(assert (=> bm!470722 (= call!470727 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))) (h!70556 s!2326)))))

(declare-fun b!5930205 () Bool)

(assert (=> b!5930205 (= e!3629634 ((_ map or) call!470727 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))) (h!70556 s!2326))))))

(declare-fun b!5930206 () Bool)

(assert (=> b!5930206 (= e!3629633 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1859294 res!2484860) b!5930202))

(assert (= (and d!1859294 c!1054206) b!5930205))

(assert (= (and d!1859294 (not c!1054206)) b!5930203))

(assert (= (and b!5930203 c!1054207) b!5930204))

(assert (= (and b!5930203 (not c!1054207)) b!5930206))

(assert (= (or b!5930205 b!5930204) bm!470722))

(declare-fun m!6823054 () Bool)

(assert (=> b!5930202 m!6823054))

(declare-fun m!6823056 () Bool)

(assert (=> bm!470722 m!6823056))

(declare-fun m!6823058 () Bool)

(assert (=> b!5930205 m!6823058))

(assert (=> b!5929354 d!1859294))

(declare-fun b!5930208 () Bool)

(declare-fun e!3629636 () Bool)

(declare-fun e!3629638 () Bool)

(assert (=> b!5930208 (= e!3629636 e!3629638)))

(declare-fun res!2484864 () Bool)

(assert (=> b!5930208 (= res!2484864 (not (nullable!5972 (reg!16306 (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))))))))

(assert (=> b!5930208 (=> (not res!2484864) (not e!3629638))))

(declare-fun b!5930209 () Bool)

(declare-fun res!2484862 () Bool)

(declare-fun e!3629637 () Bool)

(assert (=> b!5930209 (=> res!2484862 e!3629637)))

(assert (=> b!5930209 (= res!2484862 (not ((_ is Concat!24822) (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630))))))))

(declare-fun e!3629642 () Bool)

(assert (=> b!5930209 (= e!3629642 e!3629637)))

(declare-fun b!5930210 () Bool)

(declare-fun e!3629639 () Bool)

(declare-fun call!470729 () Bool)

(assert (=> b!5930210 (= e!3629639 call!470729)))

(declare-fun bm!470723 () Bool)

(declare-fun call!470728 () Bool)

(assert (=> bm!470723 (= call!470729 call!470728)))

(declare-fun b!5930211 () Bool)

(declare-fun e!3629640 () Bool)

(assert (=> b!5930211 (= e!3629640 e!3629636)))

(declare-fun c!1054209 () Bool)

(assert (=> b!5930211 (= c!1054209 ((_ is Star!15977) (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))))))

(declare-fun b!5930212 () Bool)

(assert (=> b!5930212 (= e!3629637 e!3629639)))

(declare-fun res!2484865 () Bool)

(assert (=> b!5930212 (=> (not res!2484865) (not e!3629639))))

(declare-fun call!470730 () Bool)

(assert (=> b!5930212 (= res!2484865 call!470730)))

(declare-fun b!5930213 () Bool)

(assert (=> b!5930213 (= e!3629638 call!470728)))

(declare-fun c!1054208 () Bool)

(declare-fun bm!470724 () Bool)

(assert (=> bm!470724 (= call!470728 (validRegex!7713 (ite c!1054209 (reg!16306 (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))) (ite c!1054208 (regTwo!32467 (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))) (regTwo!32466 (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630))))))))))

(declare-fun b!5930214 () Bool)

(assert (=> b!5930214 (= e!3629636 e!3629642)))

(assert (=> b!5930214 (= c!1054208 ((_ is Union!15977) (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))))))

(declare-fun b!5930207 () Bool)

(declare-fun res!2484863 () Bool)

(declare-fun e!3629641 () Bool)

(assert (=> b!5930207 (=> (not res!2484863) (not e!3629641))))

(assert (=> b!5930207 (= res!2484863 call!470730)))

(assert (=> b!5930207 (= e!3629642 e!3629641)))

(declare-fun d!1859296 () Bool)

(declare-fun res!2484861 () Bool)

(assert (=> d!1859296 (=> res!2484861 e!3629640)))

(assert (=> d!1859296 (= res!2484861 ((_ is ElementMatch!15977) (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))))))

(assert (=> d!1859296 (= (validRegex!7713 (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))) e!3629640)))

(declare-fun b!5930215 () Bool)

(assert (=> b!5930215 (= e!3629641 call!470729)))

(declare-fun bm!470725 () Bool)

(assert (=> bm!470725 (= call!470730 (validRegex!7713 (ite c!1054208 (regOne!32467 (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))) (regOne!32466 (ite c!1054032 (reg!16306 lt!2310630) (ite c!1054031 (regTwo!32467 lt!2310630) (regTwo!32466 lt!2310630)))))))))

(assert (= (and d!1859296 (not res!2484861)) b!5930211))

(assert (= (and b!5930211 c!1054209) b!5930208))

(assert (= (and b!5930211 (not c!1054209)) b!5930214))

(assert (= (and b!5930208 res!2484864) b!5930213))

(assert (= (and b!5930214 c!1054208) b!5930207))

(assert (= (and b!5930214 (not c!1054208)) b!5930209))

(assert (= (and b!5930207 res!2484863) b!5930215))

(assert (= (and b!5930209 (not res!2484862)) b!5930212))

(assert (= (and b!5930212 res!2484865) b!5930210))

(assert (= (or b!5930215 b!5930210) bm!470723))

(assert (= (or b!5930207 b!5930212) bm!470725))

(assert (= (or b!5930213 bm!470723) bm!470724))

(declare-fun m!6823060 () Bool)

(assert (=> b!5930208 m!6823060))

(declare-fun m!6823062 () Bool)

(assert (=> bm!470724 m!6823062))

(declare-fun m!6823064 () Bool)

(assert (=> bm!470725 m!6823064))

(assert (=> bm!470569 d!1859296))

(declare-fun d!1859300 () Bool)

(declare-fun c!1054210 () Bool)

(declare-fun e!3629645 () Bool)

(assert (=> d!1859300 (= c!1054210 e!3629645)))

(declare-fun res!2484866 () Bool)

(assert (=> d!1859300 (=> (not res!2484866) (not e!3629645))))

(assert (=> d!1859300 (= res!2484866 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))))))))

(declare-fun e!3629644 () (InoxSet Context!10722))

(assert (=> d!1859300 (= (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))) (h!70556 s!2326)) e!3629644)))

(declare-fun b!5930216 () Bool)

(assert (=> b!5930216 (= e!3629645 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))))))))

(declare-fun b!5930217 () Bool)

(declare-fun e!3629643 () (InoxSet Context!10722))

(assert (=> b!5930217 (= e!3629644 e!3629643)))

(declare-fun c!1054211 () Bool)

(assert (=> b!5930217 (= c!1054211 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))))))))

(declare-fun b!5930218 () Bool)

(declare-fun call!470731 () (InoxSet Context!10722))

(assert (=> b!5930218 (= e!3629643 call!470731)))

(declare-fun bm!470726 () Bool)

(assert (=> bm!470726 (= call!470731 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))))) (h!70556 s!2326)))))

(declare-fun b!5930219 () Bool)

(assert (=> b!5930219 (= e!3629644 ((_ map or) call!470731 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))))) (h!70556 s!2326))))))

(declare-fun b!5930220 () Bool)

(assert (=> b!5930220 (= e!3629643 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1859300 res!2484866) b!5930216))

(assert (= (and d!1859300 c!1054210) b!5930219))

(assert (= (and d!1859300 (not c!1054210)) b!5930217))

(assert (= (and b!5930217 c!1054211) b!5930218))

(assert (= (and b!5930217 (not c!1054211)) b!5930220))

(assert (= (or b!5930219 b!5930218) bm!470726))

(declare-fun m!6823066 () Bool)

(assert (=> b!5930216 m!6823066))

(declare-fun m!6823068 () Bool)

(assert (=> bm!470726 m!6823068))

(declare-fun m!6823070 () Bool)

(assert (=> b!5930219 m!6823070))

(assert (=> b!5929023 d!1859300))

(declare-fun b!5930221 () Bool)

(declare-fun e!3629649 () Bool)

(declare-fun e!3629647 () Bool)

(assert (=> b!5930221 (= e!3629649 e!3629647)))

(declare-fun res!2484868 () Bool)

(assert (=> b!5930221 (=> res!2484868 e!3629647)))

(assert (=> b!5930221 (= res!2484868 ((_ is Star!15977) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))

(declare-fun b!5930222 () Bool)

(declare-fun e!3629651 () Bool)

(assert (=> b!5930222 (= e!3629647 e!3629651)))

(declare-fun c!1054212 () Bool)

(assert (=> b!5930222 (= c!1054212 ((_ is Union!15977) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))

(declare-fun b!5930223 () Bool)

(declare-fun e!3629650 () Bool)

(assert (=> b!5930223 (= e!3629650 e!3629649)))

(declare-fun res!2484871 () Bool)

(assert (=> b!5930223 (=> (not res!2484871) (not e!3629649))))

(assert (=> b!5930223 (= res!2484871 (and (not ((_ is EmptyLang!15977) (h!70554 (exprs!5861 (Context!10723 lt!2310574))))) (not ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))

(declare-fun d!1859302 () Bool)

(declare-fun res!2484867 () Bool)

(assert (=> d!1859302 (=> res!2484867 e!3629650)))

(assert (=> d!1859302 (= res!2484867 ((_ is EmptyExpr!15977) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))

(assert (=> d!1859302 (= (nullableFct!1944 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) e!3629650)))

(declare-fun b!5930224 () Bool)

(declare-fun e!3629646 () Bool)

(declare-fun call!470732 () Bool)

(assert (=> b!5930224 (= e!3629646 call!470732)))

(declare-fun b!5930225 () Bool)

(declare-fun e!3629648 () Bool)

(assert (=> b!5930225 (= e!3629651 e!3629648)))

(declare-fun res!2484870 () Bool)

(declare-fun call!470733 () Bool)

(assert (=> b!5930225 (= res!2484870 call!470733)))

(assert (=> b!5930225 (=> res!2484870 e!3629648)))

(declare-fun bm!470727 () Bool)

(assert (=> bm!470727 (= call!470733 (nullable!5972 (ite c!1054212 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))

(declare-fun b!5930226 () Bool)

(assert (=> b!5930226 (= e!3629651 e!3629646)))

(declare-fun res!2484869 () Bool)

(assert (=> b!5930226 (= res!2484869 call!470733)))

(assert (=> b!5930226 (=> (not res!2484869) (not e!3629646))))

(declare-fun b!5930227 () Bool)

(assert (=> b!5930227 (= e!3629648 call!470732)))

(declare-fun bm!470728 () Bool)

(assert (=> bm!470728 (= call!470732 (nullable!5972 (ite c!1054212 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))

(assert (= (and d!1859302 (not res!2484867)) b!5930223))

(assert (= (and b!5930223 res!2484871) b!5930221))

(assert (= (and b!5930221 (not res!2484868)) b!5930222))

(assert (= (and b!5930222 c!1054212) b!5930225))

(assert (= (and b!5930222 (not c!1054212)) b!5930226))

(assert (= (and b!5930225 (not res!2484870)) b!5930227))

(assert (= (and b!5930226 res!2484869) b!5930224))

(assert (= (or b!5930227 b!5930224) bm!470728))

(assert (= (or b!5930225 b!5930226) bm!470727))

(declare-fun m!6823072 () Bool)

(assert (=> bm!470727 m!6823072))

(declare-fun m!6823074 () Bool)

(assert (=> bm!470728 m!6823074))

(assert (=> d!1859008 d!1859302))

(declare-fun bm!470729 () Bool)

(declare-fun call!470737 () (InoxSet Context!10722))

(declare-fun call!470734 () (InoxSet Context!10722))

(assert (=> bm!470729 (= call!470737 call!470734)))

(declare-fun d!1859304 () Bool)

(declare-fun c!1054216 () Bool)

(assert (=> d!1859304 (= c!1054216 (and ((_ is ElementMatch!15977) (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))) (= (c!1053727 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))) (h!70556 s!2326))))))

(declare-fun e!3629656 () (InoxSet Context!10722))

(assert (=> d!1859304 (= (derivationStepZipperDown!1227 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576)))) (ite c!1054027 (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470572)) (h!70556 s!2326)) e!3629656)))

(declare-fun bm!470730 () Bool)

(declare-fun call!470736 () (InoxSet Context!10722))

(assert (=> bm!470730 (= call!470736 call!470737)))

(declare-fun b!5930228 () Bool)

(declare-fun e!3629654 () (InoxSet Context!10722))

(assert (=> b!5930228 (= e!3629654 call!470736)))

(declare-fun b!5930229 () Bool)

(declare-fun e!3629653 () (InoxSet Context!10722))

(declare-fun e!3629652 () (InoxSet Context!10722))

(assert (=> b!5930229 (= e!3629653 e!3629652)))

(declare-fun c!1054213 () Bool)

(assert (=> b!5930229 (= c!1054213 ((_ is Concat!24822) (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))))))

(declare-fun b!5930230 () Bool)

(declare-fun e!3629657 () (InoxSet Context!10722))

(assert (=> b!5930230 (= e!3629656 e!3629657)))

(declare-fun c!1054214 () Bool)

(assert (=> b!5930230 (= c!1054214 ((_ is Union!15977) (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))))))

(declare-fun b!5930231 () Bool)

(declare-fun e!3629655 () Bool)

(assert (=> b!5930231 (= e!3629655 (nullable!5972 (regOne!32466 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576)))))))))

(declare-fun bm!470731 () Bool)

(declare-fun call!470735 () List!64230)

(declare-fun call!470739 () List!64230)

(assert (=> bm!470731 (= call!470735 call!470739)))

(declare-fun b!5930232 () Bool)

(declare-fun call!470738 () (InoxSet Context!10722))

(assert (=> b!5930232 (= e!3629653 ((_ map or) call!470738 call!470737))))

(declare-fun bm!470732 () Bool)

(declare-fun c!1054215 () Bool)

(assert (=> bm!470732 (= call!470739 ($colon$colon!1864 (exprs!5861 (ite c!1054027 (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470572))) (ite (or c!1054215 c!1054213) (regTwo!32466 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))) (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576)))))))))

(declare-fun b!5930233 () Bool)

(assert (=> b!5930233 (= e!3629654 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930234 () Bool)

(assert (=> b!5930234 (= e!3629652 call!470736)))

(declare-fun b!5930235 () Bool)

(assert (=> b!5930235 (= e!3629656 (store ((as const (Array Context!10722 Bool)) false) (ite c!1054027 (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470572)) true))))

(declare-fun bm!470733 () Bool)

(assert (=> bm!470733 (= call!470738 (derivationStepZipperDown!1227 (ite c!1054214 (regOne!32467 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))) (regOne!32466 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576)))))) (ite c!1054214 (ite c!1054027 (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470572)) (Context!10723 call!470739)) (h!70556 s!2326)))))

(declare-fun bm!470734 () Bool)

(assert (=> bm!470734 (= call!470734 (derivationStepZipperDown!1227 (ite c!1054214 (regTwo!32467 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))) (ite c!1054215 (regTwo!32466 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))) (ite c!1054213 (regOne!32466 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))) (reg!16306 (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576)))))))) (ite (or c!1054214 c!1054215) (ite c!1054027 (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470572)) (Context!10723 call!470735)) (h!70556 s!2326)))))

(declare-fun b!5930236 () Bool)

(assert (=> b!5930236 (= c!1054215 e!3629655)))

(declare-fun res!2484872 () Bool)

(assert (=> b!5930236 (=> (not res!2484872) (not e!3629655))))

(assert (=> b!5930236 (= res!2484872 ((_ is Concat!24822) (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))))))

(assert (=> b!5930236 (= e!3629657 e!3629653)))

(declare-fun b!5930237 () Bool)

(assert (=> b!5930237 (= e!3629657 ((_ map or) call!470738 call!470734))))

(declare-fun b!5930238 () Bool)

(declare-fun c!1054217 () Bool)

(assert (=> b!5930238 (= c!1054217 ((_ is Star!15977) (ite c!1054027 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))))))

(assert (=> b!5930238 (= e!3629652 e!3629654)))

(assert (= (and d!1859304 c!1054216) b!5930235))

(assert (= (and d!1859304 (not c!1054216)) b!5930230))

(assert (= (and b!5930230 c!1054214) b!5930237))

(assert (= (and b!5930230 (not c!1054214)) b!5930236))

(assert (= (and b!5930236 res!2484872) b!5930231))

(assert (= (and b!5930236 c!1054215) b!5930232))

(assert (= (and b!5930236 (not c!1054215)) b!5930229))

(assert (= (and b!5930229 c!1054213) b!5930234))

(assert (= (and b!5930229 (not c!1054213)) b!5930238))

(assert (= (and b!5930238 c!1054217) b!5930228))

(assert (= (and b!5930238 (not c!1054217)) b!5930233))

(assert (= (or b!5930234 b!5930228) bm!470731))

(assert (= (or b!5930234 b!5930228) bm!470730))

(assert (= (or b!5930232 bm!470731) bm!470732))

(assert (= (or b!5930232 bm!470730) bm!470729))

(assert (= (or b!5930237 bm!470729) bm!470734))

(assert (= (or b!5930237 b!5930232) bm!470733))

(declare-fun m!6823080 () Bool)

(assert (=> b!5930235 m!6823080))

(declare-fun m!6823082 () Bool)

(assert (=> bm!470732 m!6823082))

(declare-fun m!6823086 () Bool)

(assert (=> bm!470734 m!6823086))

(declare-fun m!6823088 () Bool)

(assert (=> bm!470733 m!6823088))

(declare-fun m!6823090 () Bool)

(assert (=> b!5930231 m!6823090))

(assert (=> bm!470566 d!1859304))

(assert (=> d!1859088 d!1858836))

(declare-fun b!5930242 () Bool)

(declare-fun e!3629659 () Bool)

(declare-fun e!3629661 () Bool)

(assert (=> b!5930242 (= e!3629659 e!3629661)))

(declare-fun res!2484877 () Bool)

(assert (=> b!5930242 (= res!2484877 (not (nullable!5972 (reg!16306 (regTwo!32466 r!7292)))))))

(assert (=> b!5930242 (=> (not res!2484877) (not e!3629661))))

(declare-fun b!5930243 () Bool)

(declare-fun res!2484874 () Bool)

(declare-fun e!3629660 () Bool)

(assert (=> b!5930243 (=> res!2484874 e!3629660)))

(assert (=> b!5930243 (= res!2484874 (not ((_ is Concat!24822) (regTwo!32466 r!7292))))))

(declare-fun e!3629668 () Bool)

(assert (=> b!5930243 (= e!3629668 e!3629660)))

(declare-fun b!5930244 () Bool)

(declare-fun e!3629662 () Bool)

(declare-fun call!470741 () Bool)

(assert (=> b!5930244 (= e!3629662 call!470741)))

(declare-fun bm!470735 () Bool)

(declare-fun call!470740 () Bool)

(assert (=> bm!470735 (= call!470741 call!470740)))

(declare-fun b!5930245 () Bool)

(declare-fun e!3629664 () Bool)

(assert (=> b!5930245 (= e!3629664 e!3629659)))

(declare-fun c!1054221 () Bool)

(assert (=> b!5930245 (= c!1054221 ((_ is Star!15977) (regTwo!32466 r!7292)))))

(declare-fun b!5930246 () Bool)

(assert (=> b!5930246 (= e!3629660 e!3629662)))

(declare-fun res!2484879 () Bool)

(assert (=> b!5930246 (=> (not res!2484879) (not e!3629662))))

(declare-fun call!470743 () Bool)

(assert (=> b!5930246 (= res!2484879 call!470743)))

(declare-fun b!5930247 () Bool)

(assert (=> b!5930247 (= e!3629661 call!470740)))

(declare-fun bm!470736 () Bool)

(declare-fun c!1054219 () Bool)

(assert (=> bm!470736 (= call!470740 (validRegex!7713 (ite c!1054221 (reg!16306 (regTwo!32466 r!7292)) (ite c!1054219 (regTwo!32467 (regTwo!32466 r!7292)) (regTwo!32466 (regTwo!32466 r!7292))))))))

(declare-fun b!5930248 () Bool)

(assert (=> b!5930248 (= e!3629659 e!3629668)))

(assert (=> b!5930248 (= c!1054219 ((_ is Union!15977) (regTwo!32466 r!7292)))))

(declare-fun b!5930241 () Bool)

(declare-fun res!2484875 () Bool)

(declare-fun e!3629666 () Bool)

(assert (=> b!5930241 (=> (not res!2484875) (not e!3629666))))

(assert (=> b!5930241 (= res!2484875 call!470743)))

(assert (=> b!5930241 (= e!3629668 e!3629666)))

(declare-fun d!1859312 () Bool)

(declare-fun res!2484873 () Bool)

(assert (=> d!1859312 (=> res!2484873 e!3629664)))

(assert (=> d!1859312 (= res!2484873 ((_ is ElementMatch!15977) (regTwo!32466 r!7292)))))

(assert (=> d!1859312 (= (validRegex!7713 (regTwo!32466 r!7292)) e!3629664)))

(declare-fun b!5930250 () Bool)

(assert (=> b!5930250 (= e!3629666 call!470741)))

(declare-fun bm!470737 () Bool)

(assert (=> bm!470737 (= call!470743 (validRegex!7713 (ite c!1054219 (regOne!32467 (regTwo!32466 r!7292)) (regOne!32466 (regTwo!32466 r!7292)))))))

(assert (= (and d!1859312 (not res!2484873)) b!5930245))

(assert (= (and b!5930245 c!1054221) b!5930242))

(assert (= (and b!5930245 (not c!1054221)) b!5930248))

(assert (= (and b!5930242 res!2484877) b!5930247))

(assert (= (and b!5930248 c!1054219) b!5930241))

(assert (= (and b!5930248 (not c!1054219)) b!5930243))

(assert (= (and b!5930241 res!2484875) b!5930250))

(assert (= (and b!5930243 (not res!2484874)) b!5930246))

(assert (= (and b!5930246 res!2484879) b!5930244))

(assert (= (or b!5930250 b!5930244) bm!470735))

(assert (= (or b!5930241 b!5930246) bm!470737))

(assert (= (or b!5930247 bm!470735) bm!470736))

(declare-fun m!6823092 () Bool)

(assert (=> b!5930242 m!6823092))

(declare-fun m!6823094 () Bool)

(assert (=> bm!470736 m!6823094))

(declare-fun m!6823096 () Bool)

(assert (=> bm!470737 m!6823096))

(assert (=> d!1859088 d!1859312))

(declare-fun d!1859314 () Bool)

(assert (=> d!1859314 (= (isEmpty!35969 (tail!11581 (t!377627 (unfocusZipperList!1398 zl!343)))) ((_ is Nil!64106) (tail!11581 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(assert (=> b!5929132 d!1859314))

(declare-fun d!1859316 () Bool)

(assert (=> d!1859316 (= (tail!11581 (t!377627 (unfocusZipperList!1398 zl!343))) (t!377627 (t!377627 (unfocusZipperList!1398 zl!343))))))

(assert (=> b!5929132 d!1859316))

(declare-fun b!5930260 () Bool)

(declare-fun e!3629673 () Bool)

(declare-fun e!3629675 () Bool)

(assert (=> b!5930260 (= e!3629673 e!3629675)))

(declare-fun res!2484886 () Bool)

(assert (=> b!5930260 (= res!2484886 (not (nullable!5972 (reg!16306 (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))))))))

(assert (=> b!5930260 (=> (not res!2484886) (not e!3629675))))

(declare-fun b!5930261 () Bool)

(declare-fun res!2484884 () Bool)

(declare-fun e!3629674 () Bool)

(assert (=> b!5930261 (=> res!2484884 e!3629674)))

(assert (=> b!5930261 (= res!2484884 (not ((_ is Concat!24822) (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292)))))))))

(declare-fun e!3629679 () Bool)

(assert (=> b!5930261 (= e!3629679 e!3629674)))

(declare-fun b!5930262 () Bool)

(declare-fun e!3629676 () Bool)

(declare-fun call!470747 () Bool)

(assert (=> b!5930262 (= e!3629676 call!470747)))

(declare-fun bm!470741 () Bool)

(declare-fun call!470746 () Bool)

(assert (=> bm!470741 (= call!470747 call!470746)))

(declare-fun b!5930263 () Bool)

(declare-fun e!3629677 () Bool)

(assert (=> b!5930263 (= e!3629677 e!3629673)))

(declare-fun c!1054224 () Bool)

(assert (=> b!5930263 (= c!1054224 ((_ is Star!15977) (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))))))

(declare-fun b!5930264 () Bool)

(assert (=> b!5930264 (= e!3629674 e!3629676)))

(declare-fun res!2484887 () Bool)

(assert (=> b!5930264 (=> (not res!2484887) (not e!3629676))))

(declare-fun call!470748 () Bool)

(assert (=> b!5930264 (= res!2484887 call!470748)))

(declare-fun b!5930265 () Bool)

(assert (=> b!5930265 (= e!3629675 call!470746)))

(declare-fun bm!470742 () Bool)

(declare-fun c!1054223 () Bool)

(assert (=> bm!470742 (= call!470746 (validRegex!7713 (ite c!1054224 (reg!16306 (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))) (ite c!1054223 (regTwo!32467 (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))) (regTwo!32466 (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292)))))))))))

(declare-fun b!5930266 () Bool)

(assert (=> b!5930266 (= e!3629673 e!3629679)))

(assert (=> b!5930266 (= c!1054223 ((_ is Union!15977) (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))))))

(declare-fun b!5930259 () Bool)

(declare-fun res!2484885 () Bool)

(declare-fun e!3629678 () Bool)

(assert (=> b!5930259 (=> (not res!2484885) (not e!3629678))))

(assert (=> b!5930259 (= res!2484885 call!470748)))

(assert (=> b!5930259 (= e!3629679 e!3629678)))

(declare-fun d!1859318 () Bool)

(declare-fun res!2484883 () Bool)

(assert (=> d!1859318 (=> res!2484883 e!3629677)))

(assert (=> d!1859318 (= res!2484883 ((_ is ElementMatch!15977) (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))))))

(assert (=> d!1859318 (= (validRegex!7713 (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))) e!3629677)))

(declare-fun b!5930267 () Bool)

(assert (=> b!5930267 (= e!3629678 call!470747)))

(declare-fun bm!470743 () Bool)

(assert (=> bm!470743 (= call!470748 (validRegex!7713 (ite c!1054223 (regOne!32467 (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))) (regOne!32466 (ite c!1053933 (reg!16306 (regOne!32466 r!7292)) (ite c!1053932 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292))))))))))

(assert (= (and d!1859318 (not res!2484883)) b!5930263))

(assert (= (and b!5930263 c!1054224) b!5930260))

(assert (= (and b!5930263 (not c!1054224)) b!5930266))

(assert (= (and b!5930260 res!2484886) b!5930265))

(assert (= (and b!5930266 c!1054223) b!5930259))

(assert (= (and b!5930266 (not c!1054223)) b!5930261))

(assert (= (and b!5930259 res!2484885) b!5930267))

(assert (= (and b!5930261 (not res!2484884)) b!5930264))

(assert (= (and b!5930264 res!2484887) b!5930262))

(assert (= (or b!5930267 b!5930262) bm!470741))

(assert (= (or b!5930259 b!5930264) bm!470743))

(assert (= (or b!5930265 bm!470741) bm!470742))

(declare-fun m!6823104 () Bool)

(assert (=> b!5930260 m!6823104))

(declare-fun m!6823106 () Bool)

(assert (=> bm!470742 m!6823106))

(declare-fun m!6823108 () Bool)

(assert (=> bm!470743 m!6823108))

(assert (=> bm!470503 d!1859318))

(declare-fun bs!1403167 () Bool)

(declare-fun d!1859322 () Bool)

(assert (= bs!1403167 (and d!1859322 d!1859074)))

(declare-fun lambda!323453 () Int)

(assert (=> bs!1403167 (= lambda!323453 lambda!323441)))

(declare-fun bs!1403168 () Bool)

(assert (= bs!1403168 (and d!1859322 d!1859016)))

(assert (=> bs!1403168 (= lambda!323453 lambda!323429)))

(declare-fun bs!1403169 () Bool)

(assert (= bs!1403169 (and d!1859322 d!1858790)))

(assert (=> bs!1403169 (= lambda!323453 lambda!323402)))

(declare-fun bs!1403170 () Bool)

(assert (= bs!1403170 (and d!1859322 d!1859292)))

(assert (=> bs!1403170 (= lambda!323453 lambda!323452)))

(declare-fun bs!1403171 () Bool)

(assert (= bs!1403171 (and d!1859322 d!1858760)))

(assert (=> bs!1403171 (= lambda!323453 lambda!323389)))

(declare-fun bs!1403172 () Bool)

(assert (= bs!1403172 (and d!1859322 d!1858764)))

(assert (=> bs!1403172 (= lambda!323453 lambda!323390)))

(declare-fun bs!1403173 () Bool)

(assert (= bs!1403173 (and d!1859322 d!1859188)))

(assert (=> bs!1403173 (= lambda!323453 lambda!323449)))

(declare-fun bs!1403174 () Bool)

(assert (= bs!1403174 (and d!1859322 d!1858804)))

(assert (=> bs!1403174 (= lambda!323453 lambda!323412)))

(declare-fun bs!1403175 () Bool)

(assert (= bs!1403175 (and d!1859322 d!1858774)))

(assert (=> bs!1403175 (= lambda!323453 lambda!323396)))

(declare-fun bs!1403176 () Bool)

(assert (= bs!1403176 (and d!1859322 d!1859132)))

(assert (=> bs!1403176 (= lambda!323453 lambda!323448)))

(declare-fun bs!1403177 () Bool)

(assert (= bs!1403177 (and d!1859322 d!1859204)))

(assert (=> bs!1403177 (= lambda!323453 lambda!323450)))

(declare-fun bs!1403178 () Bool)

(assert (= bs!1403178 (and d!1859322 d!1858772)))

(assert (=> bs!1403178 (= lambda!323453 lambda!323393)))

(declare-fun bs!1403179 () Bool)

(assert (= bs!1403179 (and d!1859322 d!1859290)))

(assert (=> bs!1403179 (= lambda!323453 lambda!323451)))

(declare-fun bs!1403180 () Bool)

(assert (= bs!1403180 (and d!1859322 d!1858900)))

(assert (=> bs!1403180 (= lambda!323453 lambda!323422)))

(declare-fun bs!1403181 () Bool)

(assert (= bs!1403181 (and d!1859322 d!1858920)))

(assert (=> bs!1403181 (= lambda!323453 lambda!323425)))

(assert (=> d!1859322 (= (inv!83189 (h!70555 (t!377628 (t!377628 zl!343)))) (forall!15060 (exprs!5861 (h!70555 (t!377628 (t!377628 zl!343)))) lambda!323453))))

(declare-fun bs!1403182 () Bool)

(assert (= bs!1403182 d!1859322))

(declare-fun m!6823116 () Bool)

(assert (=> bs!1403182 m!6823116))

(assert (=> b!5929921 d!1859322))

(declare-fun d!1859328 () Bool)

(declare-fun c!1054233 () Bool)

(assert (=> d!1859328 (= c!1054233 ((_ is Nil!64108) lt!2310667))))

(declare-fun e!3629695 () (InoxSet C!32224))

(assert (=> d!1859328 (= (content!11814 lt!2310667) e!3629695)))

(declare-fun b!5930291 () Bool)

(assert (=> b!5930291 (= e!3629695 ((as const (Array C!32224 Bool)) false))))

(declare-fun b!5930292 () Bool)

(assert (=> b!5930292 (= e!3629695 ((_ map or) (store ((as const (Array C!32224 Bool)) false) (h!70556 lt!2310667) true) (content!11814 (t!377629 lt!2310667))))))

(assert (= (and d!1859328 c!1054233) b!5930291))

(assert (= (and d!1859328 (not c!1054233)) b!5930292))

(declare-fun m!6823118 () Bool)

(assert (=> b!5930292 m!6823118))

(declare-fun m!6823120 () Bool)

(assert (=> b!5930292 m!6823120))

(assert (=> d!1858948 d!1859328))

(declare-fun d!1859330 () Bool)

(assert (=> d!1859330 (= (content!11814 Nil!64108) ((as const (Array C!32224 Bool)) false))))

(assert (=> d!1858948 d!1859330))

(declare-fun d!1859332 () Bool)

(declare-fun c!1054234 () Bool)

(assert (=> d!1859332 (= c!1054234 ((_ is Nil!64108) (Cons!64108 (h!70556 s!2326) Nil!64108)))))

(declare-fun e!3629696 () (InoxSet C!32224))

(assert (=> d!1859332 (= (content!11814 (Cons!64108 (h!70556 s!2326) Nil!64108)) e!3629696)))

(declare-fun b!5930293 () Bool)

(assert (=> b!5930293 (= e!3629696 ((as const (Array C!32224 Bool)) false))))

(declare-fun b!5930294 () Bool)

(assert (=> b!5930294 (= e!3629696 ((_ map or) (store ((as const (Array C!32224 Bool)) false) (h!70556 (Cons!64108 (h!70556 s!2326) Nil!64108)) true) (content!11814 (t!377629 (Cons!64108 (h!70556 s!2326) Nil!64108)))))))

(assert (= (and d!1859332 c!1054234) b!5930293))

(assert (= (and d!1859332 (not c!1054234)) b!5930294))

(declare-fun m!6823122 () Bool)

(assert (=> b!5930294 m!6823122))

(declare-fun m!6823124 () Bool)

(assert (=> b!5930294 m!6823124))

(assert (=> d!1858948 d!1859332))

(declare-fun d!1859334 () Bool)

(assert (not d!1859334))

(assert (=> b!5929379 d!1859334))

(declare-fun d!1859336 () Bool)

(assert (not d!1859336))

(assert (=> b!5929379 d!1859336))

(assert (=> b!5929379 d!1859186))

(assert (=> b!5929379 d!1859238))

(declare-fun d!1859338 () Bool)

(assert (=> d!1859338 true))

(assert (=> d!1859338 true))

(declare-fun res!2484895 () Bool)

(assert (=> d!1859338 (= (choose!44703 (ite c!1053787 lambda!323370 lambda!323372)) res!2484895)))

(assert (=> d!1858834 d!1859338))

(declare-fun d!1859340 () Bool)

(assert (=> d!1859340 (= (isDefined!12571 lt!2310674) (not (isEmpty!35974 lt!2310674)))))

(declare-fun bs!1403194 () Bool)

(assert (= bs!1403194 d!1859340))

(declare-fun m!6823126 () Bool)

(assert (=> bs!1403194 m!6823126))

(assert (=> b!5929279 d!1859340))

(declare-fun b!5930296 () Bool)

(declare-fun e!3629697 () Bool)

(declare-fun e!3629699 () Bool)

(assert (=> b!5930296 (= e!3629697 e!3629699)))

(declare-fun res!2484899 () Bool)

(assert (=> b!5930296 (= res!2484899 (not (nullable!5972 (reg!16306 (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))))))

(assert (=> b!5930296 (=> (not res!2484899) (not e!3629699))))

(declare-fun b!5930297 () Bool)

(declare-fun res!2484897 () Bool)

(declare-fun e!3629698 () Bool)

(assert (=> b!5930297 (=> res!2484897 e!3629698)))

(assert (=> b!5930297 (= res!2484897 (not ((_ is Concat!24822) (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))))

(declare-fun e!3629703 () Bool)

(assert (=> b!5930297 (= e!3629703 e!3629698)))

(declare-fun b!5930298 () Bool)

(declare-fun e!3629700 () Bool)

(declare-fun call!470753 () Bool)

(assert (=> b!5930298 (= e!3629700 call!470753)))

(declare-fun bm!470747 () Bool)

(declare-fun call!470752 () Bool)

(assert (=> bm!470747 (= call!470753 call!470752)))

(declare-fun b!5930299 () Bool)

(declare-fun e!3629701 () Bool)

(assert (=> b!5930299 (= e!3629701 e!3629697)))

(declare-fun c!1054236 () Bool)

(assert (=> b!5930299 (= c!1054236 ((_ is Star!15977) (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))))

(declare-fun b!5930300 () Bool)

(assert (=> b!5930300 (= e!3629698 e!3629700)))

(declare-fun res!2484900 () Bool)

(assert (=> b!5930300 (=> (not res!2484900) (not e!3629700))))

(declare-fun call!470754 () Bool)

(assert (=> b!5930300 (= res!2484900 call!470754)))

(declare-fun b!5930301 () Bool)

(assert (=> b!5930301 (= e!3629699 call!470752)))

(declare-fun bm!470748 () Bool)

(declare-fun c!1054235 () Bool)

(assert (=> bm!470748 (= call!470752 (validRegex!7713 (ite c!1054236 (reg!16306 (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))) (ite c!1054235 (regTwo!32467 (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))) (regTwo!32466 (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))))))

(declare-fun b!5930302 () Bool)

(assert (=> b!5930302 (= e!3629697 e!3629703)))

(assert (=> b!5930302 (= c!1054235 ((_ is Union!15977) (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))))

(declare-fun b!5930295 () Bool)

(declare-fun res!2484898 () Bool)

(declare-fun e!3629702 () Bool)

(assert (=> b!5930295 (=> (not res!2484898) (not e!3629702))))

(assert (=> b!5930295 (= res!2484898 call!470754)))

(assert (=> b!5930295 (= e!3629703 e!3629702)))

(declare-fun d!1859342 () Bool)

(declare-fun res!2484896 () Bool)

(assert (=> d!1859342 (=> res!2484896 e!3629701)))

(assert (=> d!1859342 (= res!2484896 ((_ is ElementMatch!15977) (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))))

(assert (=> d!1859342 (= (validRegex!7713 (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))) e!3629701)))

(declare-fun b!5930303 () Bool)

(assert (=> b!5930303 (= e!3629702 call!470753)))

(declare-fun bm!470749 () Bool)

(assert (=> bm!470749 (= call!470754 (validRegex!7713 (ite c!1054235 (regOne!32467 (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))) (regOne!32466 (ite c!1053940 (regOne!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regOne!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))))))

(assert (= (and d!1859342 (not res!2484896)) b!5930299))

(assert (= (and b!5930299 c!1054236) b!5930296))

(assert (= (and b!5930299 (not c!1054236)) b!5930302))

(assert (= (and b!5930296 res!2484899) b!5930301))

(assert (= (and b!5930302 c!1054235) b!5930295))

(assert (= (and b!5930302 (not c!1054235)) b!5930297))

(assert (= (and b!5930295 res!2484898) b!5930303))

(assert (= (and b!5930297 (not res!2484897)) b!5930300))

(assert (= (and b!5930300 res!2484900) b!5930298))

(assert (= (or b!5930303 b!5930298) bm!470747))

(assert (= (or b!5930295 b!5930300) bm!470749))

(assert (= (or b!5930301 bm!470747) bm!470748))

(declare-fun m!6823148 () Bool)

(assert (=> b!5930296 m!6823148))

(declare-fun m!6823150 () Bool)

(assert (=> bm!470748 m!6823150))

(declare-fun m!6823152 () Bool)

(assert (=> bm!470749 m!6823152))

(assert (=> bm!470512 d!1859342))

(declare-fun d!1859346 () Bool)

(declare-fun c!1054238 () Bool)

(declare-fun e!3629707 () Bool)

(assert (=> d!1859346 (= c!1054238 e!3629707)))

(declare-fun res!2484901 () Bool)

(assert (=> d!1859346 (=> (not res!2484901) (not e!3629707))))

(assert (=> d!1859346 (= res!2484901 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))))))))

(declare-fun e!3629706 () (InoxSet Context!10722))

(assert (=> d!1859346 (= (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (h!70556 s!2326)) e!3629706)))

(declare-fun b!5930306 () Bool)

(assert (=> b!5930306 (= e!3629707 (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))))))

(declare-fun b!5930307 () Bool)

(declare-fun e!3629705 () (InoxSet Context!10722))

(assert (=> b!5930307 (= e!3629706 e!3629705)))

(declare-fun c!1054239 () Bool)

(assert (=> b!5930307 (= c!1054239 ((_ is Cons!64106) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))))))))

(declare-fun b!5930308 () Bool)

(declare-fun call!470755 () (InoxSet Context!10722))

(assert (=> b!5930308 (= e!3629705 call!470755)))

(declare-fun bm!470750 () Bool)

(assert (=> bm!470750 (= call!470755 (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))) (h!70556 s!2326)))))

(declare-fun b!5930309 () Bool)

(assert (=> b!5930309 (= e!3629706 ((_ map or) call!470755 (derivationStepZipperUp!1153 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))) (h!70556 s!2326))))))

(declare-fun b!5930310 () Bool)

(assert (=> b!5930310 (= e!3629705 ((as const (Array Context!10722 Bool)) false))))

(assert (= (and d!1859346 res!2484901) b!5930306))

(assert (= (and d!1859346 c!1054238) b!5930309))

(assert (= (and d!1859346 (not c!1054238)) b!5930307))

(assert (= (and b!5930307 c!1054239) b!5930308))

(assert (= (and b!5930307 (not c!1054239)) b!5930310))

(assert (= (or b!5930309 b!5930308) bm!470750))

(declare-fun m!6823154 () Bool)

(assert (=> b!5930306 m!6823154))

(declare-fun m!6823156 () Bool)

(assert (=> bm!470750 m!6823156))

(declare-fun m!6823158 () Bool)

(assert (=> b!5930309 m!6823158))

(assert (=> b!5929638 d!1859346))

(declare-fun d!1859348 () Bool)

(assert (=> d!1859348 (= (nullable!5972 (derivativeStep!4708 r!7292 (head!12495 s!2326))) (nullableFct!1944 (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(declare-fun bs!1403202 () Bool)

(assert (= bs!1403202 d!1859348))

(assert (=> bs!1403202 m!6821754))

(declare-fun m!6823160 () Bool)

(assert (=> bs!1403202 m!6823160))

(assert (=> b!5929472 d!1859348))

(declare-fun bm!470751 () Bool)

(declare-fun call!470759 () (InoxSet Context!10722))

(declare-fun call!470756 () (InoxSet Context!10722))

(assert (=> bm!470751 (= call!470759 call!470756)))

(declare-fun d!1859350 () Bool)

(declare-fun c!1054243 () Bool)

(assert (=> d!1859350 (= c!1054243 (and ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (= (c!1053727 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (h!70556 s!2326))))))

(declare-fun e!3629712 () (InoxSet Context!10722))

(assert (=> d!1859350 (= (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (h!70556 s!2326)) e!3629712)))

(declare-fun bm!470752 () Bool)

(declare-fun call!470758 () (InoxSet Context!10722))

(assert (=> bm!470752 (= call!470758 call!470759)))

(declare-fun b!5930311 () Bool)

(declare-fun e!3629710 () (InoxSet Context!10722))

(assert (=> b!5930311 (= e!3629710 call!470758)))

(declare-fun b!5930312 () Bool)

(declare-fun e!3629709 () (InoxSet Context!10722))

(declare-fun e!3629708 () (InoxSet Context!10722))

(assert (=> b!5930312 (= e!3629709 e!3629708)))

(declare-fun c!1054240 () Bool)

(assert (=> b!5930312 (= c!1054240 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))))))

(declare-fun b!5930313 () Bool)

(declare-fun e!3629713 () (InoxSet Context!10722))

(assert (=> b!5930313 (= e!3629712 e!3629713)))

(declare-fun c!1054241 () Bool)

(assert (=> b!5930313 (= c!1054241 ((_ is Union!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))))))

(declare-fun b!5930314 () Bool)

(declare-fun e!3629711 () Bool)

(assert (=> b!5930314 (= e!3629711 (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))))

(declare-fun bm!470753 () Bool)

(declare-fun call!470757 () List!64230)

(declare-fun call!470761 () List!64230)

(assert (=> bm!470753 (= call!470757 call!470761)))

(declare-fun b!5930315 () Bool)

(declare-fun call!470760 () (InoxSet Context!10722))

(assert (=> b!5930315 (= e!3629709 ((_ map or) call!470760 call!470759))))

(declare-fun bm!470754 () Bool)

(declare-fun c!1054242 () Bool)

(assert (=> bm!470754 (= call!470761 ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))) (ite (or c!1054242 c!1054240) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))))

(declare-fun b!5930316 () Bool)

(assert (=> b!5930316 (= e!3629710 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930317 () Bool)

(assert (=> b!5930317 (= e!3629708 call!470758)))

(declare-fun b!5930318 () Bool)

(assert (=> b!5930318 (= e!3629712 (store ((as const (Array Context!10722 Bool)) false) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) true))))

(declare-fun bm!470755 () Bool)

(assert (=> bm!470755 (= call!470760 (derivationStepZipperDown!1227 (ite c!1054241 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))) (ite c!1054241 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (Context!10723 call!470761)) (h!70556 s!2326)))))

(declare-fun bm!470756 () Bool)

(assert (=> bm!470756 (= call!470756 (derivationStepZipperDown!1227 (ite c!1054241 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (ite c!1054242 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (ite c!1054240 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))) (ite (or c!1054241 c!1054242) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (Context!10723 call!470757)) (h!70556 s!2326)))))

(declare-fun b!5930319 () Bool)

(assert (=> b!5930319 (= c!1054242 e!3629711)))

(declare-fun res!2484902 () Bool)

(assert (=> b!5930319 (=> (not res!2484902) (not e!3629711))))

(assert (=> b!5930319 (= res!2484902 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))))))

(assert (=> b!5930319 (= e!3629713 e!3629709)))

(declare-fun b!5930320 () Bool)

(assert (=> b!5930320 (= e!3629713 ((_ map or) call!470760 call!470756))))

(declare-fun b!5930321 () Bool)

(declare-fun c!1054244 () Bool)

(assert (=> b!5930321 (= c!1054244 ((_ is Star!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))))))

(assert (=> b!5930321 (= e!3629708 e!3629710)))

(assert (= (and d!1859350 c!1054243) b!5930318))

(assert (= (and d!1859350 (not c!1054243)) b!5930313))

(assert (= (and b!5930313 c!1054241) b!5930320))

(assert (= (and b!5930313 (not c!1054241)) b!5930319))

(assert (= (and b!5930319 res!2484902) b!5930314))

(assert (= (and b!5930319 c!1054242) b!5930315))

(assert (= (and b!5930319 (not c!1054242)) b!5930312))

(assert (= (and b!5930312 c!1054240) b!5930317))

(assert (= (and b!5930312 (not c!1054240)) b!5930321))

(assert (= (and b!5930321 c!1054244) b!5930311))

(assert (= (and b!5930321 (not c!1054244)) b!5930316))

(assert (= (or b!5930317 b!5930311) bm!470753))

(assert (= (or b!5930317 b!5930311) bm!470752))

(assert (= (or b!5930315 bm!470753) bm!470754))

(assert (= (or b!5930315 bm!470752) bm!470751))

(assert (= (or b!5930320 bm!470751) bm!470756))

(assert (= (or b!5930320 b!5930315) bm!470755))

(declare-fun m!6823166 () Bool)

(assert (=> b!5930318 m!6823166))

(declare-fun m!6823170 () Bool)

(assert (=> bm!470754 m!6823170))

(declare-fun m!6823172 () Bool)

(assert (=> bm!470756 m!6823172))

(declare-fun m!6823174 () Bool)

(assert (=> bm!470755 m!6823174))

(declare-fun m!6823176 () Bool)

(assert (=> b!5930314 m!6823176))

(assert (=> bm!470621 d!1859350))

(declare-fun b!5930332 () Bool)

(declare-fun e!3629723 () Bool)

(declare-fun e!3629721 () Bool)

(assert (=> b!5930332 (= e!3629723 e!3629721)))

(declare-fun res!2484906 () Bool)

(assert (=> b!5930332 (=> res!2484906 e!3629721)))

(assert (=> b!5930332 (= res!2484906 ((_ is Star!15977) (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun b!5930333 () Bool)

(declare-fun e!3629725 () Bool)

(assert (=> b!5930333 (= e!3629721 e!3629725)))

(declare-fun c!1054249 () Bool)

(assert (=> b!5930333 (= c!1054249 ((_ is Union!15977) (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun b!5930334 () Bool)

(declare-fun e!3629724 () Bool)

(assert (=> b!5930334 (= e!3629724 e!3629723)))

(declare-fun res!2484909 () Bool)

(assert (=> b!5930334 (=> (not res!2484909) (not e!3629723))))

(assert (=> b!5930334 (= res!2484909 (and (not ((_ is EmptyLang!15977) (h!70554 (exprs!5861 lt!2310576)))) (not ((_ is ElementMatch!15977) (h!70554 (exprs!5861 lt!2310576))))))))

(declare-fun d!1859354 () Bool)

(declare-fun res!2484905 () Bool)

(assert (=> d!1859354 (=> res!2484905 e!3629724)))

(assert (=> d!1859354 (= res!2484905 ((_ is EmptyExpr!15977) (h!70554 (exprs!5861 lt!2310576))))))

(assert (=> d!1859354 (= (nullableFct!1944 (h!70554 (exprs!5861 lt!2310576))) e!3629724)))

(declare-fun b!5930335 () Bool)

(declare-fun e!3629720 () Bool)

(declare-fun call!470762 () Bool)

(assert (=> b!5930335 (= e!3629720 call!470762)))

(declare-fun b!5930336 () Bool)

(declare-fun e!3629722 () Bool)

(assert (=> b!5930336 (= e!3629725 e!3629722)))

(declare-fun res!2484908 () Bool)

(declare-fun call!470763 () Bool)

(assert (=> b!5930336 (= res!2484908 call!470763)))

(assert (=> b!5930336 (=> res!2484908 e!3629722)))

(declare-fun bm!470757 () Bool)

(assert (=> bm!470757 (= call!470763 (nullable!5972 (ite c!1054249 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))))))

(declare-fun b!5930337 () Bool)

(assert (=> b!5930337 (= e!3629725 e!3629720)))

(declare-fun res!2484907 () Bool)

(assert (=> b!5930337 (= res!2484907 call!470763)))

(assert (=> b!5930337 (=> (not res!2484907) (not e!3629720))))

(declare-fun b!5930338 () Bool)

(assert (=> b!5930338 (= e!3629722 call!470762)))

(declare-fun bm!470758 () Bool)

(assert (=> bm!470758 (= call!470762 (nullable!5972 (ite c!1054249 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))))))))

(assert (= (and d!1859354 (not res!2484905)) b!5930334))

(assert (= (and b!5930334 res!2484909) b!5930332))

(assert (= (and b!5930332 (not res!2484906)) b!5930333))

(assert (= (and b!5930333 c!1054249) b!5930336))

(assert (= (and b!5930333 (not c!1054249)) b!5930337))

(assert (= (and b!5930336 (not res!2484908)) b!5930338))

(assert (= (and b!5930337 res!2484907) b!5930335))

(assert (= (or b!5930338 b!5930335) bm!470758))

(assert (= (or b!5930336 b!5930337) bm!470757))

(declare-fun m!6823178 () Bool)

(assert (=> bm!470757 m!6823178))

(declare-fun m!6823180 () Bool)

(assert (=> bm!470758 m!6823180))

(assert (=> d!1859010 d!1859354))

(declare-fun d!1859356 () Bool)

(assert (=> d!1859356 (= (isConcat!928 lt!2310662) ((_ is Concat!24822) lt!2310662))))

(assert (=> b!5929196 d!1859356))

(declare-fun b!5930340 () Bool)

(declare-fun e!3629726 () Bool)

(declare-fun e!3629728 () Bool)

(assert (=> b!5930340 (= e!3629726 e!3629728)))

(declare-fun res!2484913 () Bool)

(assert (=> b!5930340 (= res!2484913 (not (nullable!5972 (reg!16306 lt!2310660))))))

(assert (=> b!5930340 (=> (not res!2484913) (not e!3629728))))

(declare-fun b!5930341 () Bool)

(declare-fun res!2484911 () Bool)

(declare-fun e!3629727 () Bool)

(assert (=> b!5930341 (=> res!2484911 e!3629727)))

(assert (=> b!5930341 (= res!2484911 (not ((_ is Concat!24822) lt!2310660)))))

(declare-fun e!3629732 () Bool)

(assert (=> b!5930341 (= e!3629732 e!3629727)))

(declare-fun b!5930342 () Bool)

(declare-fun e!3629729 () Bool)

(declare-fun call!470765 () Bool)

(assert (=> b!5930342 (= e!3629729 call!470765)))

(declare-fun bm!470759 () Bool)

(declare-fun call!470764 () Bool)

(assert (=> bm!470759 (= call!470765 call!470764)))

(declare-fun b!5930343 () Bool)

(declare-fun e!3629730 () Bool)

(assert (=> b!5930343 (= e!3629730 e!3629726)))

(declare-fun c!1054251 () Bool)

(assert (=> b!5930343 (= c!1054251 ((_ is Star!15977) lt!2310660))))

(declare-fun b!5930344 () Bool)

(assert (=> b!5930344 (= e!3629727 e!3629729)))

(declare-fun res!2484914 () Bool)

(assert (=> b!5930344 (=> (not res!2484914) (not e!3629729))))

(declare-fun call!470766 () Bool)

(assert (=> b!5930344 (= res!2484914 call!470766)))

(declare-fun b!5930345 () Bool)

(assert (=> b!5930345 (= e!3629728 call!470764)))

(declare-fun c!1054250 () Bool)

(declare-fun bm!470760 () Bool)

(assert (=> bm!470760 (= call!470764 (validRegex!7713 (ite c!1054251 (reg!16306 lt!2310660) (ite c!1054250 (regTwo!32467 lt!2310660) (regTwo!32466 lt!2310660)))))))

(declare-fun b!5930346 () Bool)

(assert (=> b!5930346 (= e!3629726 e!3629732)))

(assert (=> b!5930346 (= c!1054250 ((_ is Union!15977) lt!2310660))))

(declare-fun b!5930339 () Bool)

(declare-fun res!2484912 () Bool)

(declare-fun e!3629731 () Bool)

(assert (=> b!5930339 (=> (not res!2484912) (not e!3629731))))

(assert (=> b!5930339 (= res!2484912 call!470766)))

(assert (=> b!5930339 (= e!3629732 e!3629731)))

(declare-fun d!1859358 () Bool)

(declare-fun res!2484910 () Bool)

(assert (=> d!1859358 (=> res!2484910 e!3629730)))

(assert (=> d!1859358 (= res!2484910 ((_ is ElementMatch!15977) lt!2310660))))

(assert (=> d!1859358 (= (validRegex!7713 lt!2310660) e!3629730)))

(declare-fun b!5930347 () Bool)

(assert (=> b!5930347 (= e!3629731 call!470765)))

(declare-fun bm!470761 () Bool)

(assert (=> bm!470761 (= call!470766 (validRegex!7713 (ite c!1054250 (regOne!32467 lt!2310660) (regOne!32466 lt!2310660))))))

(assert (= (and d!1859358 (not res!2484910)) b!5930343))

(assert (= (and b!5930343 c!1054251) b!5930340))

(assert (= (and b!5930343 (not c!1054251)) b!5930346))

(assert (= (and b!5930340 res!2484913) b!5930345))

(assert (= (and b!5930346 c!1054250) b!5930339))

(assert (= (and b!5930346 (not c!1054250)) b!5930341))

(assert (= (and b!5930339 res!2484912) b!5930347))

(assert (= (and b!5930341 (not res!2484911)) b!5930344))

(assert (= (and b!5930344 res!2484914) b!5930342))

(assert (= (or b!5930347 b!5930342) bm!470759))

(assert (= (or b!5930339 b!5930344) bm!470761))

(assert (= (or b!5930345 bm!470759) bm!470760))

(declare-fun m!6823182 () Bool)

(assert (=> b!5930340 m!6823182))

(declare-fun m!6823184 () Bool)

(assert (=> bm!470760 m!6823184))

(declare-fun m!6823186 () Bool)

(assert (=> bm!470761 m!6823186))

(assert (=> d!1858900 d!1859358))

(declare-fun d!1859360 () Bool)

(declare-fun res!2484915 () Bool)

(declare-fun e!3629733 () Bool)

(assert (=> d!1859360 (=> res!2484915 e!3629733)))

(assert (=> d!1859360 (= res!2484915 ((_ is Nil!64106) (t!377627 (unfocusZipperList!1398 zl!343))))))

(assert (=> d!1859360 (= (forall!15060 (t!377627 (unfocusZipperList!1398 zl!343)) lambda!323422) e!3629733)))

(declare-fun b!5930348 () Bool)

(declare-fun e!3629734 () Bool)

(assert (=> b!5930348 (= e!3629733 e!3629734)))

(declare-fun res!2484916 () Bool)

(assert (=> b!5930348 (=> (not res!2484916) (not e!3629734))))

(assert (=> b!5930348 (= res!2484916 (dynLambda!25069 lambda!323422 (h!70554 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun b!5930349 () Bool)

(assert (=> b!5930349 (= e!3629734 (forall!15060 (t!377627 (t!377627 (unfocusZipperList!1398 zl!343))) lambda!323422))))

(assert (= (and d!1859360 (not res!2484915)) b!5930348))

(assert (= (and b!5930348 res!2484916) b!5930349))

(declare-fun b_lambda!222735 () Bool)

(assert (=> (not b_lambda!222735) (not b!5930348)))

(declare-fun m!6823188 () Bool)

(assert (=> b!5930348 m!6823188))

(declare-fun m!6823190 () Bool)

(assert (=> b!5930349 m!6823190))

(assert (=> d!1858900 d!1859360))

(declare-fun b!5930351 () Bool)

(declare-fun e!3629736 () List!64232)

(assert (=> b!5930351 (= e!3629736 (Cons!64108 (h!70556 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))) (++!14074 (t!377629 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))) (t!377629 s!2326))))))

(declare-fun b!5930350 () Bool)

(assert (=> b!5930350 (= e!3629736 (t!377629 s!2326))))

(declare-fun d!1859362 () Bool)

(declare-fun e!3629735 () Bool)

(assert (=> d!1859362 e!3629735))

(declare-fun res!2484918 () Bool)

(assert (=> d!1859362 (=> (not res!2484918) (not e!3629735))))

(declare-fun lt!2310717 () List!64232)

(assert (=> d!1859362 (= res!2484918 (= (content!11814 lt!2310717) ((_ map or) (content!11814 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))) (content!11814 (t!377629 s!2326)))))))

(assert (=> d!1859362 (= lt!2310717 e!3629736)))

(declare-fun c!1054252 () Bool)

(assert (=> d!1859362 (= c!1054252 ((_ is Nil!64108) (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))))))

(assert (=> d!1859362 (= (++!14074 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (t!377629 s!2326)) lt!2310717)))

(declare-fun b!5930353 () Bool)

(assert (=> b!5930353 (= e!3629735 (or (not (= (t!377629 s!2326) Nil!64108)) (= lt!2310717 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))))

(declare-fun b!5930352 () Bool)

(declare-fun res!2484917 () Bool)

(assert (=> b!5930352 (=> (not res!2484917) (not e!3629735))))

(assert (=> b!5930352 (= res!2484917 (= (size!40144 lt!2310717) (+ (size!40144 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))) (size!40144 (t!377629 s!2326)))))))

(assert (= (and d!1859362 c!1054252) b!5930350))

(assert (= (and d!1859362 (not c!1054252)) b!5930351))

(assert (= (and d!1859362 res!2484918) b!5930352))

(assert (= (and b!5930352 res!2484917) b!5930353))

(declare-fun m!6823192 () Bool)

(assert (=> b!5930351 m!6823192))

(declare-fun m!6823194 () Bool)

(assert (=> d!1859362 m!6823194))

(declare-fun m!6823196 () Bool)

(assert (=> d!1859362 m!6823196))

(assert (=> d!1859362 m!6822256))

(declare-fun m!6823198 () Bool)

(assert (=> b!5930352 m!6823198))

(declare-fun m!6823200 () Bool)

(assert (=> b!5930352 m!6823200))

(assert (=> b!5930352 m!6822262))

(assert (=> b!5929235 d!1859362))

(assert (=> bm!470561 d!1859190))

(declare-fun d!1859364 () Bool)

(assert (=> d!1859364 (= (nullable!5972 (regTwo!32466 r!7292)) (nullableFct!1944 (regTwo!32466 r!7292)))))

(declare-fun bs!1403221 () Bool)

(assert (= bs!1403221 d!1859364))

(declare-fun m!6823202 () Bool)

(assert (=> bs!1403221 m!6823202))

(assert (=> b!5929568 d!1859364))

(declare-fun b!5930355 () Bool)

(declare-fun e!3629737 () Bool)

(declare-fun e!3629739 () Bool)

(assert (=> b!5930355 (= e!3629737 e!3629739)))

(declare-fun res!2484922 () Bool)

(assert (=> b!5930355 (= res!2484922 (not (nullable!5972 (reg!16306 lt!2310662))))))

(assert (=> b!5930355 (=> (not res!2484922) (not e!3629739))))

(declare-fun b!5930356 () Bool)

(declare-fun res!2484920 () Bool)

(declare-fun e!3629738 () Bool)

(assert (=> b!5930356 (=> res!2484920 e!3629738)))

(assert (=> b!5930356 (= res!2484920 (not ((_ is Concat!24822) lt!2310662)))))

(declare-fun e!3629743 () Bool)

(assert (=> b!5930356 (= e!3629743 e!3629738)))

(declare-fun b!5930357 () Bool)

(declare-fun e!3629740 () Bool)

(declare-fun call!470768 () Bool)

(assert (=> b!5930357 (= e!3629740 call!470768)))

(declare-fun bm!470762 () Bool)

(declare-fun call!470767 () Bool)

(assert (=> bm!470762 (= call!470768 call!470767)))

(declare-fun b!5930358 () Bool)

(declare-fun e!3629741 () Bool)

(assert (=> b!5930358 (= e!3629741 e!3629737)))

(declare-fun c!1054254 () Bool)

(assert (=> b!5930358 (= c!1054254 ((_ is Star!15977) lt!2310662))))

(declare-fun b!5930359 () Bool)

(assert (=> b!5930359 (= e!3629738 e!3629740)))

(declare-fun res!2484923 () Bool)

(assert (=> b!5930359 (=> (not res!2484923) (not e!3629740))))

(declare-fun call!470769 () Bool)

(assert (=> b!5930359 (= res!2484923 call!470769)))

(declare-fun b!5930360 () Bool)

(assert (=> b!5930360 (= e!3629739 call!470767)))

(declare-fun bm!470763 () Bool)

(declare-fun c!1054253 () Bool)

(assert (=> bm!470763 (= call!470767 (validRegex!7713 (ite c!1054254 (reg!16306 lt!2310662) (ite c!1054253 (regTwo!32467 lt!2310662) (regTwo!32466 lt!2310662)))))))

(declare-fun b!5930361 () Bool)

(assert (=> b!5930361 (= e!3629737 e!3629743)))

(assert (=> b!5930361 (= c!1054253 ((_ is Union!15977) lt!2310662))))

(declare-fun b!5930354 () Bool)

(declare-fun res!2484921 () Bool)

(declare-fun e!3629742 () Bool)

(assert (=> b!5930354 (=> (not res!2484921) (not e!3629742))))

(assert (=> b!5930354 (= res!2484921 call!470769)))

(assert (=> b!5930354 (= e!3629743 e!3629742)))

(declare-fun d!1859366 () Bool)

(declare-fun res!2484919 () Bool)

(assert (=> d!1859366 (=> res!2484919 e!3629741)))

(assert (=> d!1859366 (= res!2484919 ((_ is ElementMatch!15977) lt!2310662))))

(assert (=> d!1859366 (= (validRegex!7713 lt!2310662) e!3629741)))

(declare-fun b!5930362 () Bool)

(assert (=> b!5930362 (= e!3629742 call!470768)))

(declare-fun bm!470764 () Bool)

(assert (=> bm!470764 (= call!470769 (validRegex!7713 (ite c!1054253 (regOne!32467 lt!2310662) (regOne!32466 lt!2310662))))))

(assert (= (and d!1859366 (not res!2484919)) b!5930358))

(assert (= (and b!5930358 c!1054254) b!5930355))

(assert (= (and b!5930358 (not c!1054254)) b!5930361))

(assert (= (and b!5930355 res!2484922) b!5930360))

(assert (= (and b!5930361 c!1054253) b!5930354))

(assert (= (and b!5930361 (not c!1054253)) b!5930356))

(assert (= (and b!5930354 res!2484921) b!5930362))

(assert (= (and b!5930356 (not res!2484920)) b!5930359))

(assert (= (and b!5930359 res!2484923) b!5930357))

(assert (= (or b!5930362 b!5930357) bm!470762))

(assert (= (or b!5930354 b!5930359) bm!470764))

(assert (= (or b!5930360 bm!470762) bm!470763))

(declare-fun m!6823212 () Bool)

(assert (=> b!5930355 m!6823212))

(declare-fun m!6823218 () Bool)

(assert (=> bm!470763 m!6823218))

(declare-fun m!6823222 () Bool)

(assert (=> bm!470764 m!6823222))

(assert (=> d!1858920 d!1859366))

(declare-fun d!1859368 () Bool)

(declare-fun res!2484924 () Bool)

(declare-fun e!3629744 () Bool)

(assert (=> d!1859368 (=> res!2484924 e!3629744)))

(assert (=> d!1859368 (= res!2484924 ((_ is Nil!64106) (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> d!1859368 (= (forall!15060 (t!377627 (exprs!5861 (h!70555 zl!343))) lambda!323425) e!3629744)))

(declare-fun b!5930363 () Bool)

(declare-fun e!3629745 () Bool)

(assert (=> b!5930363 (= e!3629744 e!3629745)))

(declare-fun res!2484925 () Bool)

(assert (=> b!5930363 (=> (not res!2484925) (not e!3629745))))

(assert (=> b!5930363 (= res!2484925 (dynLambda!25069 lambda!323425 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5930364 () Bool)

(assert (=> b!5930364 (= e!3629745 (forall!15060 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))) lambda!323425))))

(assert (= (and d!1859368 (not res!2484924)) b!5930363))

(assert (= (and b!5930363 res!2484925) b!5930364))

(declare-fun b_lambda!222737 () Bool)

(assert (=> (not b_lambda!222737) (not b!5930363)))

(declare-fun m!6823228 () Bool)

(assert (=> b!5930363 m!6823228))

(declare-fun m!6823230 () Bool)

(assert (=> b!5930364 m!6823230))

(assert (=> d!1858920 d!1859368))

(declare-fun b!5930367 () Bool)

(declare-fun e!3629754 () Bool)

(assert (=> b!5930367 (= e!3629754 (= (head!12495 (_1!36259 (get!22078 lt!2310674))) (c!1053727 (regOne!32466 r!7292))))))

(declare-fun b!5930368 () Bool)

(declare-fun e!3629750 () Bool)

(assert (=> b!5930368 (= e!3629750 (matchR!8160 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (_1!36259 (get!22078 lt!2310674)))) (tail!11580 (_1!36259 (get!22078 lt!2310674)))))))

(declare-fun b!5930369 () Bool)

(declare-fun e!3629753 () Bool)

(declare-fun lt!2310718 () Bool)

(assert (=> b!5930369 (= e!3629753 (not lt!2310718))))

(declare-fun b!5930370 () Bool)

(declare-fun e!3629749 () Bool)

(declare-fun e!3629751 () Bool)

(assert (=> b!5930370 (= e!3629749 e!3629751)))

(declare-fun res!2484928 () Bool)

(assert (=> b!5930370 (=> res!2484928 e!3629751)))

(declare-fun call!470770 () Bool)

(assert (=> b!5930370 (= res!2484928 call!470770)))

(declare-fun b!5930371 () Bool)

(declare-fun e!3629748 () Bool)

(assert (=> b!5930371 (= e!3629748 (= lt!2310718 call!470770))))

(declare-fun b!5930372 () Bool)

(declare-fun res!2484934 () Bool)

(assert (=> b!5930372 (=> (not res!2484934) (not e!3629754))))

(assert (=> b!5930372 (= res!2484934 (not call!470770))))

(declare-fun bm!470765 () Bool)

(assert (=> bm!470765 (= call!470770 (isEmpty!35972 (_1!36259 (get!22078 lt!2310674))))))

(declare-fun b!5930373 () Bool)

(assert (=> b!5930373 (= e!3629748 e!3629753)))

(declare-fun c!1054256 () Bool)

(assert (=> b!5930373 (= c!1054256 ((_ is EmptyLang!15977) (regOne!32466 r!7292)))))

(declare-fun b!5930374 () Bool)

(declare-fun res!2484935 () Bool)

(assert (=> b!5930374 (=> res!2484935 e!3629751)))

(assert (=> b!5930374 (= res!2484935 (not (isEmpty!35972 (tail!11580 (_1!36259 (get!22078 lt!2310674))))))))

(declare-fun b!5930375 () Bool)

(declare-fun res!2484932 () Bool)

(assert (=> b!5930375 (=> (not res!2484932) (not e!3629754))))

(assert (=> b!5930375 (= res!2484932 (isEmpty!35972 (tail!11580 (_1!36259 (get!22078 lt!2310674)))))))

(declare-fun d!1859372 () Bool)

(assert (=> d!1859372 e!3629748))

(declare-fun c!1054257 () Bool)

(assert (=> d!1859372 (= c!1054257 ((_ is EmptyExpr!15977) (regOne!32466 r!7292)))))

(assert (=> d!1859372 (= lt!2310718 e!3629750)))

(declare-fun c!1054255 () Bool)

(assert (=> d!1859372 (= c!1054255 (isEmpty!35972 (_1!36259 (get!22078 lt!2310674))))))

(assert (=> d!1859372 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1859372 (= (matchR!8160 (regOne!32466 r!7292) (_1!36259 (get!22078 lt!2310674))) lt!2310718)))

(declare-fun b!5930376 () Bool)

(declare-fun res!2484929 () Bool)

(declare-fun e!3629752 () Bool)

(assert (=> b!5930376 (=> res!2484929 e!3629752)))

(assert (=> b!5930376 (= res!2484929 (not ((_ is ElementMatch!15977) (regOne!32466 r!7292))))))

(assert (=> b!5930376 (= e!3629753 e!3629752)))

(declare-fun b!5930377 () Bool)

(assert (=> b!5930377 (= e!3629751 (not (= (head!12495 (_1!36259 (get!22078 lt!2310674))) (c!1053727 (regOne!32466 r!7292)))))))

(declare-fun b!5930378 () Bool)

(assert (=> b!5930378 (= e!3629752 e!3629749)))

(declare-fun res!2484931 () Bool)

(assert (=> b!5930378 (=> (not res!2484931) (not e!3629749))))

(assert (=> b!5930378 (= res!2484931 (not lt!2310718))))

(declare-fun b!5930379 () Bool)

(assert (=> b!5930379 (= e!3629750 (nullable!5972 (regOne!32466 r!7292)))))

(declare-fun b!5930380 () Bool)

(declare-fun res!2484933 () Bool)

(assert (=> b!5930380 (=> res!2484933 e!3629752)))

(assert (=> b!5930380 (= res!2484933 e!3629754)))

(declare-fun res!2484930 () Bool)

(assert (=> b!5930380 (=> (not res!2484930) (not e!3629754))))

(assert (=> b!5930380 (= res!2484930 lt!2310718)))

(assert (= (and d!1859372 c!1054255) b!5930379))

(assert (= (and d!1859372 (not c!1054255)) b!5930368))

(assert (= (and d!1859372 c!1054257) b!5930371))

(assert (= (and d!1859372 (not c!1054257)) b!5930373))

(assert (= (and b!5930373 c!1054256) b!5930369))

(assert (= (and b!5930373 (not c!1054256)) b!5930376))

(assert (= (and b!5930376 (not res!2484929)) b!5930380))

(assert (= (and b!5930380 res!2484930) b!5930372))

(assert (= (and b!5930372 res!2484934) b!5930375))

(assert (= (and b!5930375 res!2484932) b!5930367))

(assert (= (and b!5930380 (not res!2484933)) b!5930378))

(assert (= (and b!5930378 res!2484931) b!5930370))

(assert (= (and b!5930370 (not res!2484928)) b!5930374))

(assert (= (and b!5930374 (not res!2484935)) b!5930377))

(assert (= (or b!5930371 b!5930370 b!5930372) bm!470765))

(declare-fun m!6823236 () Bool)

(assert (=> b!5930374 m!6823236))

(assert (=> b!5930374 m!6823236))

(declare-fun m!6823238 () Bool)

(assert (=> b!5930374 m!6823238))

(declare-fun m!6823240 () Bool)

(assert (=> b!5930368 m!6823240))

(assert (=> b!5930368 m!6823240))

(declare-fun m!6823242 () Bool)

(assert (=> b!5930368 m!6823242))

(assert (=> b!5930368 m!6823236))

(assert (=> b!5930368 m!6823242))

(assert (=> b!5930368 m!6823236))

(declare-fun m!6823244 () Bool)

(assert (=> b!5930368 m!6823244))

(declare-fun m!6823246 () Bool)

(assert (=> d!1859372 m!6823246))

(assert (=> d!1859372 m!6821952))

(assert (=> b!5930375 m!6823236))

(assert (=> b!5930375 m!6823236))

(assert (=> b!5930375 m!6823238))

(assert (=> b!5930379 m!6821828))

(assert (=> bm!470765 m!6823246))

(assert (=> b!5930367 m!6823240))

(assert (=> b!5930377 m!6823240))

(assert (=> b!5929284 d!1859372))

(assert (=> b!5929284 d!1859242))

(assert (=> b!5929468 d!1859226))

(assert (=> b!5929468 d!1859228))

(declare-fun b!5930387 () Bool)

(declare-fun e!3629758 () Bool)

(declare-fun e!3629760 () Bool)

(assert (=> b!5930387 (= e!3629758 e!3629760)))

(declare-fun res!2484940 () Bool)

(assert (=> b!5930387 (= res!2484940 (not (nullable!5972 (reg!16306 lt!2310695))))))

(assert (=> b!5930387 (=> (not res!2484940) (not e!3629760))))

(declare-fun b!5930388 () Bool)

(declare-fun res!2484938 () Bool)

(declare-fun e!3629759 () Bool)

(assert (=> b!5930388 (=> res!2484938 e!3629759)))

(assert (=> b!5930388 (= res!2484938 (not ((_ is Concat!24822) lt!2310695)))))

(declare-fun e!3629764 () Bool)

(assert (=> b!5930388 (= e!3629764 e!3629759)))

(declare-fun b!5930389 () Bool)

(declare-fun e!3629761 () Bool)

(declare-fun call!470773 () Bool)

(assert (=> b!5930389 (= e!3629761 call!470773)))

(declare-fun bm!470767 () Bool)

(declare-fun call!470772 () Bool)

(assert (=> bm!470767 (= call!470773 call!470772)))

(declare-fun b!5930390 () Bool)

(declare-fun e!3629762 () Bool)

(assert (=> b!5930390 (= e!3629762 e!3629758)))

(declare-fun c!1054261 () Bool)

(assert (=> b!5930390 (= c!1054261 ((_ is Star!15977) lt!2310695))))

(declare-fun b!5930391 () Bool)

(assert (=> b!5930391 (= e!3629759 e!3629761)))

(declare-fun res!2484941 () Bool)

(assert (=> b!5930391 (=> (not res!2484941) (not e!3629761))))

(declare-fun call!470774 () Bool)

(assert (=> b!5930391 (= res!2484941 call!470774)))

(declare-fun b!5930392 () Bool)

(assert (=> b!5930392 (= e!3629760 call!470772)))

(declare-fun c!1054260 () Bool)

(declare-fun bm!470768 () Bool)

(assert (=> bm!470768 (= call!470772 (validRegex!7713 (ite c!1054261 (reg!16306 lt!2310695) (ite c!1054260 (regTwo!32467 lt!2310695) (regTwo!32466 lt!2310695)))))))

(declare-fun b!5930393 () Bool)

(assert (=> b!5930393 (= e!3629758 e!3629764)))

(assert (=> b!5930393 (= c!1054260 ((_ is Union!15977) lt!2310695))))

(declare-fun b!5930386 () Bool)

(declare-fun res!2484939 () Bool)

(declare-fun e!3629763 () Bool)

(assert (=> b!5930386 (=> (not res!2484939) (not e!3629763))))

(assert (=> b!5930386 (= res!2484939 call!470774)))

(assert (=> b!5930386 (= e!3629764 e!3629763)))

(declare-fun d!1859376 () Bool)

(declare-fun res!2484937 () Bool)

(assert (=> d!1859376 (=> res!2484937 e!3629762)))

(assert (=> d!1859376 (= res!2484937 ((_ is ElementMatch!15977) lt!2310695))))

(assert (=> d!1859376 (= (validRegex!7713 lt!2310695) e!3629762)))

(declare-fun b!5930394 () Bool)

(assert (=> b!5930394 (= e!3629763 call!470773)))

(declare-fun bm!470769 () Bool)

(assert (=> bm!470769 (= call!470774 (validRegex!7713 (ite c!1054260 (regOne!32467 lt!2310695) (regOne!32466 lt!2310695))))))

(assert (= (and d!1859376 (not res!2484937)) b!5930390))

(assert (= (and b!5930390 c!1054261) b!5930387))

(assert (= (and b!5930390 (not c!1054261)) b!5930393))

(assert (= (and b!5930387 res!2484940) b!5930392))

(assert (= (and b!5930393 c!1054260) b!5930386))

(assert (= (and b!5930393 (not c!1054260)) b!5930388))

(assert (= (and b!5930386 res!2484939) b!5930394))

(assert (= (and b!5930388 (not res!2484938)) b!5930391))

(assert (= (and b!5930391 res!2484941) b!5930389))

(assert (= (or b!5930394 b!5930389) bm!470767))

(assert (= (or b!5930386 b!5930391) bm!470769))

(assert (= (or b!5930392 bm!470767) bm!470768))

(declare-fun m!6823258 () Bool)

(assert (=> b!5930387 m!6823258))

(declare-fun m!6823260 () Bool)

(assert (=> bm!470768 m!6823260))

(declare-fun m!6823262 () Bool)

(assert (=> bm!470769 m!6823262))

(assert (=> d!1859062 d!1859376))

(assert (=> d!1859062 d!1858780))

(assert (=> d!1859084 d!1859194))

(assert (=> d!1859084 d!1858872))

(declare-fun d!1859382 () Bool)

(declare-fun c!1054263 () Bool)

(assert (=> d!1859382 (= c!1054263 ((_ is Nil!64107) res!2484500))))

(declare-fun e!3629766 () (InoxSet Context!10722))

(assert (=> d!1859382 (= (content!11812 res!2484500) e!3629766)))

(declare-fun b!5930397 () Bool)

(assert (=> b!5930397 (= e!3629766 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930398 () Bool)

(assert (=> b!5930398 (= e!3629766 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) (h!70555 res!2484500) true) (content!11812 (t!377628 res!2484500))))))

(assert (= (and d!1859382 c!1054263) b!5930397))

(assert (= (and d!1859382 (not c!1054263)) b!5930398))

(declare-fun m!6823264 () Bool)

(assert (=> b!5930398 m!6823264))

(declare-fun m!6823266 () Bool)

(assert (=> b!5930398 m!6823266))

(assert (=> b!5929067 d!1859382))

(declare-fun d!1859386 () Bool)

(declare-fun lt!2310719 () Int)

(assert (=> d!1859386 (>= lt!2310719 0)))

(declare-fun e!3629774 () Int)

(assert (=> d!1859386 (= lt!2310719 e!3629774)))

(declare-fun c!1054266 () Bool)

(assert (=> d!1859386 (= c!1054266 ((_ is Nil!64108) lt!2310667))))

(assert (=> d!1859386 (= (size!40144 lt!2310667) lt!2310719)))

(declare-fun b!5930408 () Bool)

(assert (=> b!5930408 (= e!3629774 0)))

(declare-fun b!5930409 () Bool)

(assert (=> b!5930409 (= e!3629774 (+ 1 (size!40144 (t!377629 lt!2310667))))))

(assert (= (and d!1859386 c!1054266) b!5930408))

(assert (= (and d!1859386 (not c!1054266)) b!5930409))

(declare-fun m!6823268 () Bool)

(assert (=> b!5930409 m!6823268))

(assert (=> b!5929245 d!1859386))

(declare-fun d!1859388 () Bool)

(declare-fun lt!2310720 () Int)

(assert (=> d!1859388 (>= lt!2310720 0)))

(declare-fun e!3629775 () Int)

(assert (=> d!1859388 (= lt!2310720 e!3629775)))

(declare-fun c!1054267 () Bool)

(assert (=> d!1859388 (= c!1054267 ((_ is Nil!64108) Nil!64108))))

(assert (=> d!1859388 (= (size!40144 Nil!64108) lt!2310720)))

(declare-fun b!5930410 () Bool)

(assert (=> b!5930410 (= e!3629775 0)))

(declare-fun b!5930411 () Bool)

(assert (=> b!5930411 (= e!3629775 (+ 1 (size!40144 (t!377629 Nil!64108))))))

(assert (= (and d!1859388 c!1054267) b!5930410))

(assert (= (and d!1859388 (not c!1054267)) b!5930411))

(declare-fun m!6823270 () Bool)

(assert (=> b!5930411 m!6823270))

(assert (=> b!5929245 d!1859388))

(declare-fun d!1859390 () Bool)

(declare-fun lt!2310721 () Int)

(assert (=> d!1859390 (>= lt!2310721 0)))

(declare-fun e!3629776 () Int)

(assert (=> d!1859390 (= lt!2310721 e!3629776)))

(declare-fun c!1054268 () Bool)

(assert (=> d!1859390 (= c!1054268 ((_ is Nil!64108) (Cons!64108 (h!70556 s!2326) Nil!64108)))))

(assert (=> d!1859390 (= (size!40144 (Cons!64108 (h!70556 s!2326) Nil!64108)) lt!2310721)))

(declare-fun b!5930412 () Bool)

(assert (=> b!5930412 (= e!3629776 0)))

(declare-fun b!5930413 () Bool)

(assert (=> b!5930413 (= e!3629776 (+ 1 (size!40144 (t!377629 (Cons!64108 (h!70556 s!2326) Nil!64108)))))))

(assert (= (and d!1859390 c!1054268) b!5930412))

(assert (= (and d!1859390 (not c!1054268)) b!5930413))

(declare-fun m!6823272 () Bool)

(assert (=> b!5930413 m!6823272))

(assert (=> b!5929245 d!1859390))

(declare-fun b!5930415 () Bool)

(declare-fun e!3629777 () Bool)

(declare-fun e!3629779 () Bool)

(assert (=> b!5930415 (= e!3629777 e!3629779)))

(declare-fun res!2484950 () Bool)

(assert (=> b!5930415 (= res!2484950 (not (nullable!5972 (reg!16306 (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))))))))

(assert (=> b!5930415 (=> (not res!2484950) (not e!3629779))))

(declare-fun b!5930416 () Bool)

(declare-fun res!2484948 () Bool)

(declare-fun e!3629778 () Bool)

(assert (=> b!5930416 (=> res!2484948 e!3629778)))

(assert (=> b!5930416 (= res!2484948 (not ((_ is Concat!24822) (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639))))))))

(declare-fun e!3629783 () Bool)

(assert (=> b!5930416 (= e!3629783 e!3629778)))

(declare-fun b!5930417 () Bool)

(declare-fun e!3629780 () Bool)

(declare-fun call!470779 () Bool)

(assert (=> b!5930417 (= e!3629780 call!470779)))

(declare-fun bm!470773 () Bool)

(declare-fun call!470778 () Bool)

(assert (=> bm!470773 (= call!470779 call!470778)))

(declare-fun b!5930418 () Bool)

(declare-fun e!3629781 () Bool)

(assert (=> b!5930418 (= e!3629781 e!3629777)))

(declare-fun c!1054270 () Bool)

(assert (=> b!5930418 (= c!1054270 ((_ is Star!15977) (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))))))

(declare-fun b!5930419 () Bool)

(assert (=> b!5930419 (= e!3629778 e!3629780)))

(declare-fun res!2484951 () Bool)

(assert (=> b!5930419 (=> (not res!2484951) (not e!3629780))))

(declare-fun call!470780 () Bool)

(assert (=> b!5930419 (= res!2484951 call!470780)))

(declare-fun b!5930420 () Bool)

(assert (=> b!5930420 (= e!3629779 call!470778)))

(declare-fun bm!470774 () Bool)

(declare-fun c!1054269 () Bool)

(assert (=> bm!470774 (= call!470778 (validRegex!7713 (ite c!1054270 (reg!16306 (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))) (ite c!1054269 (regTwo!32467 (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))) (regTwo!32466 (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639))))))))))

(declare-fun b!5930421 () Bool)

(assert (=> b!5930421 (= e!3629777 e!3629783)))

(assert (=> b!5930421 (= c!1054269 ((_ is Union!15977) (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))))))

(declare-fun b!5930414 () Bool)

(declare-fun res!2484949 () Bool)

(declare-fun e!3629782 () Bool)

(assert (=> b!5930414 (=> (not res!2484949) (not e!3629782))))

(assert (=> b!5930414 (= res!2484949 call!470780)))

(assert (=> b!5930414 (= e!3629783 e!3629782)))

(declare-fun d!1859392 () Bool)

(declare-fun res!2484947 () Bool)

(assert (=> d!1859392 (=> res!2484947 e!3629781)))

(assert (=> d!1859392 (= res!2484947 ((_ is ElementMatch!15977) (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))))))

(assert (=> d!1859392 (= (validRegex!7713 (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))) e!3629781)))

(declare-fun b!5930422 () Bool)

(assert (=> b!5930422 (= e!3629782 call!470779)))

(declare-fun bm!470775 () Bool)

(assert (=> bm!470775 (= call!470780 (validRegex!7713 (ite c!1054269 (regOne!32467 (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))) (regOne!32466 (ite c!1053935 (reg!16306 lt!2310639) (ite c!1053934 (regTwo!32467 lt!2310639) (regTwo!32466 lt!2310639)))))))))

(assert (= (and d!1859392 (not res!2484947)) b!5930418))

(assert (= (and b!5930418 c!1054270) b!5930415))

(assert (= (and b!5930418 (not c!1054270)) b!5930421))

(assert (= (and b!5930415 res!2484950) b!5930420))

(assert (= (and b!5930421 c!1054269) b!5930414))

(assert (= (and b!5930421 (not c!1054269)) b!5930416))

(assert (= (and b!5930414 res!2484949) b!5930422))

(assert (= (and b!5930416 (not res!2484948)) b!5930419))

(assert (= (and b!5930419 res!2484951) b!5930417))

(assert (= (or b!5930422 b!5930417) bm!470773))

(assert (= (or b!5930414 b!5930419) bm!470775))

(assert (= (or b!5930420 bm!470773) bm!470774))

(declare-fun m!6823280 () Bool)

(assert (=> b!5930415 m!6823280))

(declare-fun m!6823282 () Bool)

(assert (=> bm!470774 m!6823282))

(declare-fun m!6823284 () Bool)

(assert (=> bm!470775 m!6823284))

(assert (=> bm!470506 d!1859392))

(assert (=> b!5929564 d!1858976))

(assert (=> b!5929564 d!1858978))

(declare-fun d!1859398 () Bool)

(assert (=> d!1859398 (= ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))) (ite (or c!1054001 c!1053999) (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (h!70554 (exprs!5861 (h!70555 zl!343))))) (Cons!64106 (ite (or c!1054001 c!1053999) (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))) (h!70554 (exprs!5861 (h!70555 zl!343)))) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))

(assert (=> bm!470548 d!1859398))

(declare-fun b!5930433 () Bool)

(declare-fun e!3629791 () Bool)

(declare-fun e!3629793 () Bool)

(assert (=> b!5930433 (= e!3629791 e!3629793)))

(declare-fun res!2484960 () Bool)

(assert (=> b!5930433 (= res!2484960 (not (nullable!5972 (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))))

(assert (=> b!5930433 (=> (not res!2484960) (not e!3629793))))

(declare-fun b!5930434 () Bool)

(declare-fun res!2484958 () Bool)

(declare-fun e!3629792 () Bool)

(assert (=> b!5930434 (=> res!2484958 e!3629792)))

(assert (=> b!5930434 (= res!2484958 (not ((_ is Concat!24822) (h!70554 (exprs!5861 lt!2310576)))))))

(declare-fun e!3629797 () Bool)

(assert (=> b!5930434 (= e!3629797 e!3629792)))

(declare-fun b!5930435 () Bool)

(declare-fun e!3629794 () Bool)

(declare-fun call!470785 () Bool)

(assert (=> b!5930435 (= e!3629794 call!470785)))

(declare-fun bm!470779 () Bool)

(declare-fun call!470784 () Bool)

(assert (=> bm!470779 (= call!470785 call!470784)))

(declare-fun b!5930436 () Bool)

(declare-fun e!3629795 () Bool)

(assert (=> b!5930436 (= e!3629795 e!3629791)))

(declare-fun c!1054274 () Bool)

(assert (=> b!5930436 (= c!1054274 ((_ is Star!15977) (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun b!5930437 () Bool)

(assert (=> b!5930437 (= e!3629792 e!3629794)))

(declare-fun res!2484961 () Bool)

(assert (=> b!5930437 (=> (not res!2484961) (not e!3629794))))

(declare-fun call!470786 () Bool)

(assert (=> b!5930437 (= res!2484961 call!470786)))

(declare-fun b!5930438 () Bool)

(assert (=> b!5930438 (= e!3629793 call!470784)))

(declare-fun c!1054273 () Bool)

(declare-fun bm!470780 () Bool)

(assert (=> bm!470780 (= call!470784 (validRegex!7713 (ite c!1054274 (reg!16306 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054273 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (regTwo!32466 (h!70554 (exprs!5861 lt!2310576)))))))))

(declare-fun b!5930439 () Bool)

(assert (=> b!5930439 (= e!3629791 e!3629797)))

(assert (=> b!5930439 (= c!1054273 ((_ is Union!15977) (h!70554 (exprs!5861 lt!2310576))))))

(declare-fun b!5930432 () Bool)

(declare-fun res!2484959 () Bool)

(declare-fun e!3629796 () Bool)

(assert (=> b!5930432 (=> (not res!2484959) (not e!3629796))))

(assert (=> b!5930432 (= res!2484959 call!470786)))

(assert (=> b!5930432 (= e!3629797 e!3629796)))

(declare-fun d!1859400 () Bool)

(declare-fun res!2484957 () Bool)

(assert (=> d!1859400 (=> res!2484957 e!3629795)))

(assert (=> d!1859400 (= res!2484957 ((_ is ElementMatch!15977) (h!70554 (exprs!5861 lt!2310576))))))

(assert (=> d!1859400 (= (validRegex!7713 (h!70554 (exprs!5861 lt!2310576))) e!3629795)))

(declare-fun b!5930440 () Bool)

(assert (=> b!5930440 (= e!3629796 call!470785)))

(declare-fun bm!470781 () Bool)

(assert (=> bm!470781 (= call!470786 (validRegex!7713 (ite c!1054273 (regOne!32467 (h!70554 (exprs!5861 lt!2310576))) (regOne!32466 (h!70554 (exprs!5861 lt!2310576))))))))

(assert (= (and d!1859400 (not res!2484957)) b!5930436))

(assert (= (and b!5930436 c!1054274) b!5930433))

(assert (= (and b!5930436 (not c!1054274)) b!5930439))

(assert (= (and b!5930433 res!2484960) b!5930438))

(assert (= (and b!5930439 c!1054273) b!5930432))

(assert (= (and b!5930439 (not c!1054273)) b!5930434))

(assert (= (and b!5930432 res!2484959) b!5930440))

(assert (= (and b!5930434 (not res!2484958)) b!5930437))

(assert (= (and b!5930437 res!2484961) b!5930435))

(assert (= (or b!5930440 b!5930435) bm!470779))

(assert (= (or b!5930432 b!5930437) bm!470781))

(assert (= (or b!5930438 bm!470779) bm!470780))

(declare-fun m!6823286 () Bool)

(assert (=> b!5930433 m!6823286))

(declare-fun m!6823288 () Bool)

(assert (=> bm!470780 m!6823288))

(declare-fun m!6823290 () Bool)

(assert (=> bm!470781 m!6823290))

(assert (=> bs!1403103 d!1859400))

(declare-fun b!5930441 () Bool)

(declare-fun e!3629804 () Bool)

(assert (=> b!5930441 (= e!3629804 (= (head!12495 (tail!11580 (tail!11580 s!2326))) (c!1053727 (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326))))))))

(declare-fun b!5930442 () Bool)

(declare-fun e!3629800 () Bool)

(assert (=> b!5930442 (= e!3629800 (matchR!8160 (derivativeStep!4708 (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326))) (head!12495 (tail!11580 (tail!11580 s!2326)))) (tail!11580 (tail!11580 (tail!11580 s!2326)))))))

(declare-fun b!5930443 () Bool)

(declare-fun e!3629803 () Bool)

(declare-fun lt!2310722 () Bool)

(assert (=> b!5930443 (= e!3629803 (not lt!2310722))))

(declare-fun b!5930444 () Bool)

(declare-fun e!3629799 () Bool)

(declare-fun e!3629801 () Bool)

(assert (=> b!5930444 (= e!3629799 e!3629801)))

(declare-fun res!2484962 () Bool)

(assert (=> b!5930444 (=> res!2484962 e!3629801)))

(declare-fun call!470787 () Bool)

(assert (=> b!5930444 (= res!2484962 call!470787)))

(declare-fun b!5930445 () Bool)

(declare-fun e!3629798 () Bool)

(assert (=> b!5930445 (= e!3629798 (= lt!2310722 call!470787))))

(declare-fun b!5930446 () Bool)

(declare-fun res!2484968 () Bool)

(assert (=> b!5930446 (=> (not res!2484968) (not e!3629804))))

(assert (=> b!5930446 (= res!2484968 (not call!470787))))

(declare-fun bm!470782 () Bool)

(assert (=> bm!470782 (= call!470787 (isEmpty!35972 (tail!11580 (tail!11580 s!2326))))))

(declare-fun b!5930447 () Bool)

(assert (=> b!5930447 (= e!3629798 e!3629803)))

(declare-fun c!1054276 () Bool)

(assert (=> b!5930447 (= c!1054276 ((_ is EmptyLang!15977) (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326)))))))

(declare-fun b!5930448 () Bool)

(declare-fun res!2484969 () Bool)

(assert (=> b!5930448 (=> res!2484969 e!3629801)))

(assert (=> b!5930448 (= res!2484969 (not (isEmpty!35972 (tail!11580 (tail!11580 (tail!11580 s!2326))))))))

(declare-fun b!5930449 () Bool)

(declare-fun res!2484966 () Bool)

(assert (=> b!5930449 (=> (not res!2484966) (not e!3629804))))

(assert (=> b!5930449 (= res!2484966 (isEmpty!35972 (tail!11580 (tail!11580 (tail!11580 s!2326)))))))

(declare-fun d!1859402 () Bool)

(assert (=> d!1859402 e!3629798))

(declare-fun c!1054277 () Bool)

(assert (=> d!1859402 (= c!1054277 ((_ is EmptyExpr!15977) (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326)))))))

(assert (=> d!1859402 (= lt!2310722 e!3629800)))

(declare-fun c!1054275 () Bool)

(assert (=> d!1859402 (= c!1054275 (isEmpty!35972 (tail!11580 (tail!11580 s!2326))))))

(assert (=> d!1859402 (validRegex!7713 (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326))))))

(assert (=> d!1859402 (= (matchR!8160 (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326))) (tail!11580 (tail!11580 s!2326))) lt!2310722)))

(declare-fun b!5930450 () Bool)

(declare-fun res!2484963 () Bool)

(declare-fun e!3629802 () Bool)

(assert (=> b!5930450 (=> res!2484963 e!3629802)))

(assert (=> b!5930450 (= res!2484963 (not ((_ is ElementMatch!15977) (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326))))))))

(assert (=> b!5930450 (= e!3629803 e!3629802)))

(declare-fun b!5930451 () Bool)

(assert (=> b!5930451 (= e!3629801 (not (= (head!12495 (tail!11580 (tail!11580 s!2326))) (c!1053727 (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326)))))))))

(declare-fun b!5930452 () Bool)

(assert (=> b!5930452 (= e!3629802 e!3629799)))

(declare-fun res!2484965 () Bool)

(assert (=> b!5930452 (=> (not res!2484965) (not e!3629799))))

(assert (=> b!5930452 (= res!2484965 (not lt!2310722))))

(declare-fun b!5930453 () Bool)

(assert (=> b!5930453 (= e!3629800 (nullable!5972 (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326)))))))

(declare-fun b!5930454 () Bool)

(declare-fun res!2484967 () Bool)

(assert (=> b!5930454 (=> res!2484967 e!3629802)))

(assert (=> b!5930454 (= res!2484967 e!3629804)))

(declare-fun res!2484964 () Bool)

(assert (=> b!5930454 (=> (not res!2484964) (not e!3629804))))

(assert (=> b!5930454 (= res!2484964 lt!2310722)))

(assert (= (and d!1859402 c!1054275) b!5930453))

(assert (= (and d!1859402 (not c!1054275)) b!5930442))

(assert (= (and d!1859402 c!1054277) b!5930445))

(assert (= (and d!1859402 (not c!1054277)) b!5930447))

(assert (= (and b!5930447 c!1054276) b!5930443))

(assert (= (and b!5930447 (not c!1054276)) b!5930450))

(assert (= (and b!5930450 (not res!2484963)) b!5930454))

(assert (= (and b!5930454 res!2484964) b!5930446))

(assert (= (and b!5930446 res!2484968) b!5930449))

(assert (= (and b!5930449 res!2484966) b!5930441))

(assert (= (and b!5930454 (not res!2484967)) b!5930452))

(assert (= (and b!5930452 res!2484965) b!5930444))

(assert (= (and b!5930444 (not res!2484962)) b!5930448))

(assert (= (and b!5930448 (not res!2484969)) b!5930451))

(assert (= (or b!5930445 b!5930444 b!5930446) bm!470782))

(assert (=> b!5930448 m!6822560))

(declare-fun m!6823302 () Bool)

(assert (=> b!5930448 m!6823302))

(assert (=> b!5930448 m!6823302))

(declare-fun m!6823304 () Bool)

(assert (=> b!5930448 m!6823304))

(assert (=> b!5930442 m!6822560))

(declare-fun m!6823306 () Bool)

(assert (=> b!5930442 m!6823306))

(assert (=> b!5930442 m!6822566))

(assert (=> b!5930442 m!6823306))

(declare-fun m!6823308 () Bool)

(assert (=> b!5930442 m!6823308))

(assert (=> b!5930442 m!6822560))

(assert (=> b!5930442 m!6823302))

(assert (=> b!5930442 m!6823308))

(assert (=> b!5930442 m!6823302))

(declare-fun m!6823310 () Bool)

(assert (=> b!5930442 m!6823310))

(assert (=> d!1859402 m!6822560))

(assert (=> d!1859402 m!6822562))

(assert (=> d!1859402 m!6822566))

(declare-fun m!6823312 () Bool)

(assert (=> d!1859402 m!6823312))

(assert (=> b!5930449 m!6822560))

(assert (=> b!5930449 m!6823302))

(assert (=> b!5930449 m!6823302))

(assert (=> b!5930449 m!6823304))

(assert (=> b!5930453 m!6822566))

(declare-fun m!6823314 () Bool)

(assert (=> b!5930453 m!6823314))

(assert (=> bm!470782 m!6822560))

(assert (=> bm!470782 m!6822562))

(assert (=> b!5930441 m!6822560))

(assert (=> b!5930441 m!6823306))

(assert (=> b!5930451 m!6822560))

(assert (=> b!5930451 m!6823306))

(assert (=> b!5929461 d!1859402))

(declare-fun b!5930461 () Bool)

(declare-fun c!1054283 () Bool)

(assert (=> b!5930461 (= c!1054283 (nullable!5972 (regOne!32466 (derivativeStep!4708 r!7292 (head!12495 s!2326)))))))

(declare-fun e!3629812 () Regex!15977)

(declare-fun e!3629810 () Regex!15977)

(assert (=> b!5930461 (= e!3629812 e!3629810)))

(declare-fun d!1859408 () Bool)

(declare-fun lt!2310724 () Regex!15977)

(assert (=> d!1859408 (validRegex!7713 lt!2310724)))

(declare-fun e!3629813 () Regex!15977)

(assert (=> d!1859408 (= lt!2310724 e!3629813)))

(declare-fun c!1054281 () Bool)

(assert (=> d!1859408 (= c!1054281 (or ((_ is EmptyExpr!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326))) ((_ is EmptyLang!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326)))))))

(assert (=> d!1859408 (validRegex!7713 (derivativeStep!4708 r!7292 (head!12495 s!2326)))))

(assert (=> d!1859408 (= (derivativeStep!4708 (derivativeStep!4708 r!7292 (head!12495 s!2326)) (head!12495 (tail!11580 s!2326))) lt!2310724)))

(declare-fun b!5930462 () Bool)

(declare-fun e!3629809 () Regex!15977)

(assert (=> b!5930462 (= e!3629813 e!3629809)))

(declare-fun c!1054280 () Bool)

(assert (=> b!5930462 (= c!1054280 ((_ is ElementMatch!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(declare-fun b!5930463 () Bool)

(declare-fun call!470791 () Regex!15977)

(declare-fun call!470789 () Regex!15977)

(assert (=> b!5930463 (= e!3629810 (Union!15977 (Concat!24822 call!470789 (regTwo!32466 (derivativeStep!4708 r!7292 (head!12495 s!2326)))) call!470791))))

(declare-fun b!5930464 () Bool)

(declare-fun e!3629811 () Regex!15977)

(assert (=> b!5930464 (= e!3629811 e!3629812)))

(declare-fun c!1054279 () Bool)

(assert (=> b!5930464 (= c!1054279 ((_ is Star!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(declare-fun b!5930465 () Bool)

(declare-fun c!1054282 () Bool)

(assert (=> b!5930465 (= c!1054282 ((_ is Union!15977) (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(assert (=> b!5930465 (= e!3629809 e!3629811)))

(declare-fun b!5930466 () Bool)

(declare-fun call!470790 () Regex!15977)

(assert (=> b!5930466 (= e!3629812 (Concat!24822 call!470790 (derivativeStep!4708 r!7292 (head!12495 s!2326))))))

(declare-fun b!5930467 () Bool)

(declare-fun call!470788 () Regex!15977)

(assert (=> b!5930467 (= e!3629811 (Union!15977 call!470788 call!470789))))

(declare-fun bm!470783 () Bool)

(assert (=> bm!470783 (= call!470788 (derivativeStep!4708 (ite c!1054282 (regOne!32467 (derivativeStep!4708 r!7292 (head!12495 s!2326))) (ite c!1054279 (reg!16306 (derivativeStep!4708 r!7292 (head!12495 s!2326))) (ite c!1054283 (regTwo!32466 (derivativeStep!4708 r!7292 (head!12495 s!2326))) (regOne!32466 (derivativeStep!4708 r!7292 (head!12495 s!2326)))))) (head!12495 (tail!11580 s!2326))))))

(declare-fun b!5930468 () Bool)

(assert (=> b!5930468 (= e!3629810 (Union!15977 (Concat!24822 call!470791 (regTwo!32466 (derivativeStep!4708 r!7292 (head!12495 s!2326)))) EmptyLang!15977))))

(declare-fun b!5930469 () Bool)

(assert (=> b!5930469 (= e!3629809 (ite (= (head!12495 (tail!11580 s!2326)) (c!1053727 (derivativeStep!4708 r!7292 (head!12495 s!2326)))) EmptyExpr!15977 EmptyLang!15977))))

(declare-fun bm!470784 () Bool)

(assert (=> bm!470784 (= call!470790 call!470788)))

(declare-fun bm!470785 () Bool)

(assert (=> bm!470785 (= call!470791 call!470790)))

(declare-fun bm!470786 () Bool)

(assert (=> bm!470786 (= call!470789 (derivativeStep!4708 (ite c!1054282 (regTwo!32467 (derivativeStep!4708 r!7292 (head!12495 s!2326))) (regOne!32466 (derivativeStep!4708 r!7292 (head!12495 s!2326)))) (head!12495 (tail!11580 s!2326))))))

(declare-fun b!5930470 () Bool)

(assert (=> b!5930470 (= e!3629813 EmptyLang!15977)))

(assert (= (and d!1859408 c!1054281) b!5930470))

(assert (= (and d!1859408 (not c!1054281)) b!5930462))

(assert (= (and b!5930462 c!1054280) b!5930469))

(assert (= (and b!5930462 (not c!1054280)) b!5930465))

(assert (= (and b!5930465 c!1054282) b!5930467))

(assert (= (and b!5930465 (not c!1054282)) b!5930464))

(assert (= (and b!5930464 c!1054279) b!5930466))

(assert (= (and b!5930464 (not c!1054279)) b!5930461))

(assert (= (and b!5930461 c!1054283) b!5930463))

(assert (= (and b!5930461 (not c!1054283)) b!5930468))

(assert (= (or b!5930463 b!5930468) bm!470785))

(assert (= (or b!5930466 bm!470785) bm!470784))

(assert (= (or b!5930467 b!5930463) bm!470786))

(assert (= (or b!5930467 bm!470784) bm!470783))

(declare-fun m!6823330 () Bool)

(assert (=> b!5930461 m!6823330))

(declare-fun m!6823332 () Bool)

(assert (=> d!1859408 m!6823332))

(assert (=> d!1859408 m!6821754))

(assert (=> d!1859408 m!6822570))

(assert (=> bm!470783 m!6822564))

(declare-fun m!6823334 () Bool)

(assert (=> bm!470783 m!6823334))

(assert (=> bm!470786 m!6822564))

(declare-fun m!6823336 () Bool)

(assert (=> bm!470786 m!6823336))

(assert (=> b!5929461 d!1859408))

(assert (=> b!5929461 d!1859244))

(assert (=> b!5929461 d!1859228))

(declare-fun d!1859414 () Bool)

(assert (=> d!1859414 (= (Exists!3047 lambda!323418) (choose!44703 lambda!323418))))

(declare-fun bs!1403222 () Bool)

(assert (= bs!1403222 d!1859414))

(declare-fun m!6823338 () Bool)

(assert (=> bs!1403222 m!6823338))

(assert (=> d!1858862 d!1859414))

(declare-fun d!1859416 () Bool)

(assert (=> d!1859416 (= (Exists!3047 lambda!323419) (choose!44703 lambda!323419))))

(declare-fun bs!1403223 () Bool)

(assert (= bs!1403223 d!1859416))

(declare-fun m!6823340 () Bool)

(assert (=> bs!1403223 m!6823340))

(assert (=> d!1858862 d!1859416))

(declare-fun b!5930482 () Bool)

(declare-fun e!3629823 () Bool)

(declare-fun e!3629821 () Bool)

(assert (=> b!5930482 (= e!3629823 e!3629821)))

(declare-fun res!2484976 () Bool)

(assert (=> b!5930482 (=> res!2484976 e!3629821)))

(assert (=> b!5930482 (= res!2484976 ((_ is Star!15977) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))

(declare-fun b!5930483 () Bool)

(declare-fun e!3629825 () Bool)

(assert (=> b!5930483 (= e!3629821 e!3629825)))

(declare-fun c!1054289 () Bool)

(assert (=> b!5930483 (= c!1054289 ((_ is Union!15977) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))

(declare-fun b!5930484 () Bool)

(declare-fun e!3629824 () Bool)

(assert (=> b!5930484 (= e!3629824 e!3629823)))

(declare-fun res!2484979 () Bool)

(assert (=> b!5930484 (=> (not res!2484979) (not e!3629823))))

(assert (=> b!5930484 (= res!2484979 (and (not ((_ is EmptyLang!15977) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))) (not ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(declare-fun d!1859418 () Bool)

(declare-fun res!2484975 () Bool)

(assert (=> d!1859418 (=> res!2484975 e!3629824)))

(assert (=> d!1859418 (= res!2484975 ((_ is EmptyExpr!15977) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))

(assert (=> d!1859418 (= (nullableFct!1944 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) e!3629824)))

(declare-fun b!5930485 () Bool)

(declare-fun e!3629820 () Bool)

(declare-fun call!470798 () Bool)

(assert (=> b!5930485 (= e!3629820 call!470798)))

(declare-fun b!5930486 () Bool)

(declare-fun e!3629822 () Bool)

(assert (=> b!5930486 (= e!3629825 e!3629822)))

(declare-fun res!2484978 () Bool)

(declare-fun call!470799 () Bool)

(assert (=> b!5930486 (= res!2484978 call!470799)))

(assert (=> b!5930486 (=> res!2484978 e!3629822)))

(declare-fun bm!470793 () Bool)

(assert (=> bm!470793 (= call!470799 (nullable!5972 (ite c!1054289 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(declare-fun b!5930487 () Bool)

(assert (=> b!5930487 (= e!3629825 e!3629820)))

(declare-fun res!2484977 () Bool)

(assert (=> b!5930487 (= res!2484977 call!470799)))

(assert (=> b!5930487 (=> (not res!2484977) (not e!3629820))))

(declare-fun b!5930488 () Bool)

(assert (=> b!5930488 (= e!3629822 call!470798)))

(declare-fun bm!470794 () Bool)

(assert (=> bm!470794 (= call!470798 (nullable!5972 (ite c!1054289 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(assert (= (and d!1859418 (not res!2484975)) b!5930484))

(assert (= (and b!5930484 res!2484979) b!5930482))

(assert (= (and b!5930482 (not res!2484976)) b!5930483))

(assert (= (and b!5930483 c!1054289) b!5930486))

(assert (= (and b!5930483 (not c!1054289)) b!5930487))

(assert (= (and b!5930486 (not res!2484978)) b!5930488))

(assert (= (and b!5930487 res!2484977) b!5930485))

(assert (= (or b!5930488 b!5930485) bm!470794))

(assert (= (or b!5930486 b!5930487) bm!470793))

(declare-fun m!6823342 () Bool)

(assert (=> bm!470793 m!6823342))

(declare-fun m!6823344 () Bool)

(assert (=> bm!470794 m!6823344))

(assert (=> d!1858994 d!1859418))

(declare-fun d!1859420 () Bool)

(assert (=> d!1859420 (= (head!12495 (_2!36259 (get!22078 lt!2310648))) (h!70556 (_2!36259 (get!22078 lt!2310648))))))

(assert (=> b!5929150 d!1859420))

(assert (=> bs!1403102 d!1859280))

(declare-fun d!1859422 () Bool)

(assert (=> d!1859422 (= (nullable!5972 (reg!16306 lt!2310630)) (nullableFct!1944 (reg!16306 lt!2310630)))))

(declare-fun bs!1403224 () Bool)

(assert (= bs!1403224 d!1859422))

(declare-fun m!6823346 () Bool)

(assert (=> bs!1403224 m!6823346))

(assert (=> b!5929404 d!1859422))

(declare-fun d!1859424 () Bool)

(assert (=> d!1859424 (= (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 lt!2310576)))) (nullableFct!1944 (regOne!32466 (h!70554 (exprs!5861 lt!2310576)))))))

(declare-fun bs!1403225 () Bool)

(assert (= bs!1403225 d!1859424))

(declare-fun m!6823348 () Bool)

(assert (=> bs!1403225 m!6823348))

(assert (=> b!5929395 d!1859424))

(declare-fun d!1859426 () Bool)

(assert (=> d!1859426 true))

(declare-fun setRes!40257 () Bool)

(assert (=> d!1859426 setRes!40257))

(declare-fun condSetEmpty!40257 () Bool)

(declare-fun res!2484980 () (InoxSet Context!10722))

(assert (=> d!1859426 (= condSetEmpty!40257 (= res!2484980 ((as const (Array Context!10722 Bool)) false)))))

(assert (=> d!1859426 (= (choose!44701 z!1189 lambda!323399) res!2484980)))

(declare-fun setIsEmpty!40257 () Bool)

(assert (=> setIsEmpty!40257 setRes!40257))

(declare-fun tp!1649151 () Bool)

(declare-fun setElem!40257 () Context!10722)

(declare-fun setNonEmpty!40257 () Bool)

(declare-fun e!3629826 () Bool)

(assert (=> setNonEmpty!40257 (= setRes!40257 (and tp!1649151 (inv!83189 setElem!40257) e!3629826))))

(declare-fun setRest!40257 () (InoxSet Context!10722))

(assert (=> setNonEmpty!40257 (= res!2484980 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) setElem!40257 true) setRest!40257))))

(declare-fun b!5930489 () Bool)

(declare-fun tp!1649152 () Bool)

(assert (=> b!5930489 (= e!3629826 tp!1649152)))

(assert (= (and d!1859426 condSetEmpty!40257) setIsEmpty!40257))

(assert (= (and d!1859426 (not condSetEmpty!40257)) setNonEmpty!40257))

(assert (= setNonEmpty!40257 b!5930489))

(declare-fun m!6823350 () Bool)

(assert (=> setNonEmpty!40257 m!6823350))

(assert (=> d!1859104 d!1859426))

(declare-fun d!1859428 () Bool)

(assert (=> d!1859428 (= (nullable!5972 (reg!16306 (regOne!32466 r!7292))) (nullableFct!1944 (reg!16306 (regOne!32466 r!7292))))))

(declare-fun bs!1403226 () Bool)

(assert (= bs!1403226 d!1859428))

(declare-fun m!6823352 () Bool)

(assert (=> bs!1403226 m!6823352))

(assert (=> b!5929081 d!1859428))

(assert (=> bm!470581 d!1858976))

(declare-fun d!1859430 () Bool)

(assert (=> d!1859430 (= ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574))))) (ite (or c!1054040 c!1054038) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (h!70554 (exprs!5861 (Context!10723 lt!2310574))))) (Cons!64106 (ite (or c!1054040 c!1054038) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))))))))

(assert (=> bm!470578 d!1859430))

(declare-fun d!1859432 () Bool)

(declare-fun res!2484981 () Bool)

(declare-fun e!3629827 () Bool)

(assert (=> d!1859432 (=> res!2484981 e!3629827)))

(assert (=> d!1859432 (= res!2484981 ((_ is Nil!64106) (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> d!1859432 (= (forall!15060 (t!377627 (exprs!5861 (h!70555 zl!343))) lambda!323402) e!3629827)))

(declare-fun b!5930490 () Bool)

(declare-fun e!3629828 () Bool)

(assert (=> b!5930490 (= e!3629827 e!3629828)))

(declare-fun res!2484982 () Bool)

(assert (=> b!5930490 (=> (not res!2484982) (not e!3629828))))

(assert (=> b!5930490 (= res!2484982 (dynLambda!25069 lambda!323402 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5930491 () Bool)

(assert (=> b!5930491 (= e!3629828 (forall!15060 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))) lambda!323402))))

(assert (= (and d!1859432 (not res!2484981)) b!5930490))

(assert (= (and b!5930490 res!2484982) b!5930491))

(declare-fun b_lambda!222741 () Bool)

(assert (=> (not b_lambda!222741) (not b!5930490)))

(declare-fun m!6823354 () Bool)

(assert (=> b!5930490 m!6823354))

(declare-fun m!6823356 () Bool)

(assert (=> b!5930491 m!6823356))

(assert (=> b!5929116 d!1859432))

(declare-fun b!5930493 () Bool)

(declare-fun e!3629829 () Bool)

(declare-fun e!3629831 () Bool)

(assert (=> b!5930493 (= e!3629829 e!3629831)))

(declare-fun res!2484986 () Bool)

(assert (=> b!5930493 (= res!2484986 (not (nullable!5972 (reg!16306 (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))))))

(assert (=> b!5930493 (=> (not res!2484986) (not e!3629831))))

(declare-fun b!5930494 () Bool)

(declare-fun res!2484984 () Bool)

(declare-fun e!3629830 () Bool)

(assert (=> b!5930494 (=> res!2484984 e!3629830)))

(assert (=> b!5930494 (= res!2484984 (not ((_ is Concat!24822) (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))))))

(declare-fun e!3629835 () Bool)

(assert (=> b!5930494 (= e!3629835 e!3629830)))

(declare-fun b!5930495 () Bool)

(declare-fun e!3629832 () Bool)

(declare-fun call!470801 () Bool)

(assert (=> b!5930495 (= e!3629832 call!470801)))

(declare-fun bm!470795 () Bool)

(declare-fun call!470800 () Bool)

(assert (=> bm!470795 (= call!470801 call!470800)))

(declare-fun b!5930496 () Bool)

(declare-fun e!3629833 () Bool)

(assert (=> b!5930496 (= e!3629833 e!3629829)))

(declare-fun c!1054291 () Bool)

(assert (=> b!5930496 (= c!1054291 ((_ is Star!15977) (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))))

(declare-fun b!5930497 () Bool)

(assert (=> b!5930497 (= e!3629830 e!3629832)))

(declare-fun res!2484987 () Bool)

(assert (=> b!5930497 (=> (not res!2484987) (not e!3629832))))

(declare-fun call!470802 () Bool)

(assert (=> b!5930497 (= res!2484987 call!470802)))

(declare-fun b!5930498 () Bool)

(assert (=> b!5930498 (= e!3629831 call!470800)))

(declare-fun c!1054290 () Bool)

(declare-fun bm!470796 () Bool)

(assert (=> bm!470796 (= call!470800 (validRegex!7713 (ite c!1054291 (reg!16306 (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))) (ite c!1054290 (regTwo!32467 (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))) (regTwo!32466 (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))))))))))))

(declare-fun b!5930499 () Bool)

(assert (=> b!5930499 (= e!3629829 e!3629835)))

(assert (=> b!5930499 (= c!1054290 ((_ is Union!15977) (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))))

(declare-fun b!5930492 () Bool)

(declare-fun res!2484985 () Bool)

(declare-fun e!3629834 () Bool)

(assert (=> b!5930492 (=> (not res!2484985) (not e!3629834))))

(assert (=> b!5930492 (= res!2484985 call!470802)))

(assert (=> b!5930492 (= e!3629835 e!3629834)))

(declare-fun d!1859434 () Bool)

(declare-fun res!2484983 () Bool)

(assert (=> d!1859434 (=> res!2484983 e!3629833)))

(assert (=> d!1859434 (= res!2484983 ((_ is ElementMatch!15977) (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))))

(assert (=> d!1859434 (= (validRegex!7713 (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))) e!3629833)))

(declare-fun b!5930500 () Bool)

(assert (=> b!5930500 (= e!3629834 call!470801)))

(declare-fun bm!470797 () Bool)

(assert (=> bm!470797 (= call!470802 (validRegex!7713 (ite c!1054290 (regOne!32467 (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))) (regOne!32466 (ite c!1053941 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (ite c!1053940 (regTwo!32467 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292)))) (regTwo!32466 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))))))

(assert (= (and d!1859434 (not res!2484983)) b!5930496))

(assert (= (and b!5930496 c!1054291) b!5930493))

(assert (= (and b!5930496 (not c!1054291)) b!5930499))

(assert (= (and b!5930493 res!2484986) b!5930498))

(assert (= (and b!5930499 c!1054290) b!5930492))

(assert (= (and b!5930499 (not c!1054290)) b!5930494))

(assert (= (and b!5930492 res!2484985) b!5930500))

(assert (= (and b!5930494 (not res!2484984)) b!5930497))

(assert (= (and b!5930497 res!2484987) b!5930495))

(assert (= (or b!5930500 b!5930495) bm!470795))

(assert (= (or b!5930492 b!5930497) bm!470797))

(assert (= (or b!5930498 bm!470795) bm!470796))

(declare-fun m!6823366 () Bool)

(assert (=> b!5930493 m!6823366))

(declare-fun m!6823368 () Bool)

(assert (=> bm!470796 m!6823368))

(declare-fun m!6823372 () Bool)

(assert (=> bm!470797 m!6823372))

(assert (=> bm!470511 d!1859434))

(declare-fun d!1859438 () Bool)

(assert (=> d!1859438 (= (isEmpty!35972 (tail!11580 (_1!36259 (get!22078 lt!2310648)))) ((_ is Nil!64108) (tail!11580 (_1!36259 (get!22078 lt!2310648)))))))

(assert (=> b!5929549 d!1859438))

(assert (=> b!5929549 d!1859214))

(declare-fun bm!470798 () Bool)

(declare-fun call!470806 () (InoxSet Context!10722))

(declare-fun call!470803 () (InoxSet Context!10722))

(assert (=> bm!470798 (= call!470806 call!470803)))

(declare-fun c!1054299 () Bool)

(declare-fun d!1859440 () Bool)

(assert (=> d!1859440 (= c!1054299 (and ((_ is ElementMatch!15977) (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))) (= (c!1053727 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))) (h!70556 s!2326))))))

(declare-fun e!3629846 () (InoxSet Context!10722))

(assert (=> d!1859440 (= (derivationStepZipperDown!1227 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))) (ite c!1054039 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470585)) (h!70556 s!2326)) e!3629846)))

(declare-fun bm!470799 () Bool)

(declare-fun call!470805 () (InoxSet Context!10722))

(assert (=> bm!470799 (= call!470805 call!470806)))

(declare-fun b!5930511 () Bool)

(declare-fun e!3629844 () (InoxSet Context!10722))

(assert (=> b!5930511 (= e!3629844 call!470805)))

(declare-fun b!5930512 () Bool)

(declare-fun e!3629843 () (InoxSet Context!10722))

(declare-fun e!3629842 () (InoxSet Context!10722))

(assert (=> b!5930512 (= e!3629843 e!3629842)))

(declare-fun c!1054296 () Bool)

(assert (=> b!5930512 (= c!1054296 ((_ is Concat!24822) (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))

(declare-fun b!5930513 () Bool)

(declare-fun e!3629847 () (InoxSet Context!10722))

(assert (=> b!5930513 (= e!3629846 e!3629847)))

(declare-fun c!1054297 () Bool)

(assert (=> b!5930513 (= c!1054297 ((_ is Union!15977) (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))

(declare-fun b!5930514 () Bool)

(declare-fun e!3629845 () Bool)

(assert (=> b!5930514 (= e!3629845 (nullable!5972 (regOne!32466 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))))

(declare-fun bm!470800 () Bool)

(declare-fun call!470804 () List!64230)

(declare-fun call!470808 () List!64230)

(assert (=> bm!470800 (= call!470804 call!470808)))

(declare-fun b!5930515 () Bool)

(declare-fun call!470807 () (InoxSet Context!10722))

(assert (=> b!5930515 (= e!3629843 ((_ map or) call!470807 call!470806))))

(declare-fun c!1054298 () Bool)

(declare-fun bm!470801 () Bool)

(assert (=> bm!470801 (= call!470808 ($colon$colon!1864 (exprs!5861 (ite c!1054039 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470585))) (ite (or c!1054298 c!1054296) (regTwo!32466 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))) (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))))

(declare-fun b!5930516 () Bool)

(assert (=> b!5930516 (= e!3629844 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930517 () Bool)

(assert (=> b!5930517 (= e!3629842 call!470805)))

(declare-fun b!5930518 () Bool)

(assert (=> b!5930518 (= e!3629846 (store ((as const (Array Context!10722 Bool)) false) (ite c!1054039 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470585)) true))))

(declare-fun bm!470802 () Bool)

(assert (=> bm!470802 (= call!470807 (derivationStepZipperDown!1227 (ite c!1054297 (regOne!32467 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))) (regOne!32466 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))) (ite c!1054297 (ite c!1054039 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470585)) (Context!10723 call!470808)) (h!70556 s!2326)))))

(declare-fun bm!470803 () Bool)

(assert (=> bm!470803 (= call!470803 (derivationStepZipperDown!1227 (ite c!1054297 (regTwo!32467 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))) (ite c!1054298 (regTwo!32466 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))) (ite c!1054296 (regOne!32466 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))) (reg!16306 (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))) (ite (or c!1054297 c!1054298) (ite c!1054039 (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470585)) (Context!10723 call!470804)) (h!70556 s!2326)))))

(declare-fun b!5930519 () Bool)

(assert (=> b!5930519 (= c!1054298 e!3629845)))

(declare-fun res!2484990 () Bool)

(assert (=> b!5930519 (=> (not res!2484990) (not e!3629845))))

(assert (=> b!5930519 (= res!2484990 ((_ is Concat!24822) (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))

(assert (=> b!5930519 (= e!3629847 e!3629843)))

(declare-fun b!5930520 () Bool)

(assert (=> b!5930520 (= e!3629847 ((_ map or) call!470807 call!470803))))

(declare-fun b!5930521 () Bool)

(declare-fun c!1054300 () Bool)

(assert (=> b!5930521 (= c!1054300 ((_ is Star!15977) (ite c!1054039 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))

(assert (=> b!5930521 (= e!3629842 e!3629844)))

(assert (= (and d!1859440 c!1054299) b!5930518))

(assert (= (and d!1859440 (not c!1054299)) b!5930513))

(assert (= (and b!5930513 c!1054297) b!5930520))

(assert (= (and b!5930513 (not c!1054297)) b!5930519))

(assert (= (and b!5930519 res!2484990) b!5930514))

(assert (= (and b!5930519 c!1054298) b!5930515))

(assert (= (and b!5930519 (not c!1054298)) b!5930512))

(assert (= (and b!5930512 c!1054296) b!5930517))

(assert (= (and b!5930512 (not c!1054296)) b!5930521))

(assert (= (and b!5930521 c!1054300) b!5930511))

(assert (= (and b!5930521 (not c!1054300)) b!5930516))

(assert (= (or b!5930517 b!5930511) bm!470800))

(assert (= (or b!5930517 b!5930511) bm!470799))

(assert (= (or b!5930515 bm!470800) bm!470801))

(assert (= (or b!5930515 bm!470799) bm!470798))

(assert (= (or b!5930520 bm!470798) bm!470803))

(assert (= (or b!5930520 b!5930515) bm!470802))

(declare-fun m!6823374 () Bool)

(assert (=> b!5930518 m!6823374))

(declare-fun m!6823376 () Bool)

(assert (=> bm!470801 m!6823376))

(declare-fun m!6823378 () Bool)

(assert (=> bm!470803 m!6823378))

(declare-fun m!6823380 () Bool)

(assert (=> bm!470802 m!6823380))

(declare-fun m!6823382 () Bool)

(assert (=> b!5930514 m!6823382))

(assert (=> bm!470579 d!1859440))

(declare-fun bs!1403234 () Bool)

(declare-fun d!1859442 () Bool)

(assert (= bs!1403234 (and d!1859442 d!1859074)))

(declare-fun lambda!323458 () Int)

(assert (=> bs!1403234 (= lambda!323458 lambda!323441)))

(declare-fun bs!1403237 () Bool)

(assert (= bs!1403237 (and d!1859442 d!1859016)))

(assert (=> bs!1403237 (= lambda!323458 lambda!323429)))

(declare-fun bs!1403238 () Bool)

(assert (= bs!1403238 (and d!1859442 d!1858790)))

(assert (=> bs!1403238 (= lambda!323458 lambda!323402)))

(declare-fun bs!1403240 () Bool)

(assert (= bs!1403240 (and d!1859442 d!1859292)))

(assert (=> bs!1403240 (= lambda!323458 lambda!323452)))

(declare-fun bs!1403241 () Bool)

(assert (= bs!1403241 (and d!1859442 d!1858760)))

(assert (=> bs!1403241 (= lambda!323458 lambda!323389)))

(declare-fun bs!1403243 () Bool)

(assert (= bs!1403243 (and d!1859442 d!1858764)))

(assert (=> bs!1403243 (= lambda!323458 lambda!323390)))

(declare-fun bs!1403244 () Bool)

(assert (= bs!1403244 (and d!1859442 d!1859188)))

(assert (=> bs!1403244 (= lambda!323458 lambda!323449)))

(declare-fun bs!1403246 () Bool)

(assert (= bs!1403246 (and d!1859442 d!1858804)))

(assert (=> bs!1403246 (= lambda!323458 lambda!323412)))

(declare-fun bs!1403247 () Bool)

(assert (= bs!1403247 (and d!1859442 d!1858774)))

(assert (=> bs!1403247 (= lambda!323458 lambda!323396)))

(declare-fun bs!1403249 () Bool)

(assert (= bs!1403249 (and d!1859442 d!1859132)))

(assert (=> bs!1403249 (= lambda!323458 lambda!323448)))

(declare-fun bs!1403251 () Bool)

(assert (= bs!1403251 (and d!1859442 d!1859204)))

(assert (=> bs!1403251 (= lambda!323458 lambda!323450)))

(declare-fun bs!1403252 () Bool)

(assert (= bs!1403252 (and d!1859442 d!1858772)))

(assert (=> bs!1403252 (= lambda!323458 lambda!323393)))

(declare-fun bs!1403253 () Bool)

(assert (= bs!1403253 (and d!1859442 d!1859290)))

(assert (=> bs!1403253 (= lambda!323458 lambda!323451)))

(declare-fun bs!1403254 () Bool)

(assert (= bs!1403254 (and d!1859442 d!1858900)))

(assert (=> bs!1403254 (= lambda!323458 lambda!323422)))

(declare-fun bs!1403255 () Bool)

(assert (= bs!1403255 (and d!1859442 d!1858920)))

(assert (=> bs!1403255 (= lambda!323458 lambda!323425)))

(declare-fun bs!1403256 () Bool)

(assert (= bs!1403256 (and d!1859442 d!1859322)))

(assert (=> bs!1403256 (= lambda!323458 lambda!323453)))

(assert (=> d!1859442 (= (inv!83189 setElem!40256) (forall!15060 (exprs!5861 setElem!40256) lambda!323458))))

(declare-fun bs!1403257 () Bool)

(assert (= bs!1403257 d!1859442))

(declare-fun m!6823384 () Bool)

(assert (=> bs!1403257 m!6823384))

(assert (=> setNonEmpty!40256 d!1859442))

(declare-fun c!1054305 () Bool)

(declare-fun b!5930522 () Bool)

(assert (=> b!5930522 (= c!1054305 (nullable!5972 (regOne!32466 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))))))))

(declare-fun e!3629851 () Regex!15977)

(declare-fun e!3629849 () Regex!15977)

(assert (=> b!5930522 (= e!3629851 e!3629849)))

(declare-fun d!1859444 () Bool)

(declare-fun lt!2310726 () Regex!15977)

(assert (=> d!1859444 (validRegex!7713 lt!2310726)))

(declare-fun e!3629852 () Regex!15977)

(assert (=> d!1859444 (= lt!2310726 e!3629852)))

(declare-fun c!1054303 () Bool)

(assert (=> d!1859444 (= c!1054303 (or ((_ is EmptyExpr!15977) (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292))))) ((_ is EmptyLang!15977) (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))))))))

(assert (=> d!1859444 (validRegex!7713 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))))))

(assert (=> d!1859444 (= (derivativeStep!4708 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))) (head!12495 s!2326)) lt!2310726)))

(declare-fun b!5930523 () Bool)

(declare-fun e!3629848 () Regex!15977)

(assert (=> b!5930523 (= e!3629852 e!3629848)))

(declare-fun c!1054302 () Bool)

(assert (=> b!5930523 (= c!1054302 ((_ is ElementMatch!15977) (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292))))))))

(declare-fun call!470812 () Regex!15977)

(declare-fun b!5930524 () Bool)

(declare-fun call!470810 () Regex!15977)

(assert (=> b!5930524 (= e!3629849 (Union!15977 (Concat!24822 call!470810 (regTwo!32466 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))))) call!470812))))

(declare-fun b!5930525 () Bool)

(declare-fun e!3629850 () Regex!15977)

(assert (=> b!5930525 (= e!3629850 e!3629851)))

(declare-fun c!1054301 () Bool)

(assert (=> b!5930525 (= c!1054301 ((_ is Star!15977) (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292))))))))

(declare-fun c!1054304 () Bool)

(declare-fun b!5930526 () Bool)

(assert (=> b!5930526 (= c!1054304 ((_ is Union!15977) (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292))))))))

(assert (=> b!5930526 (= e!3629848 e!3629850)))

(declare-fun b!5930527 () Bool)

(declare-fun call!470811 () Regex!15977)

(assert (=> b!5930527 (= e!3629851 (Concat!24822 call!470811 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292))))))))

(declare-fun b!5930528 () Bool)

(declare-fun call!470809 () Regex!15977)

(assert (=> b!5930528 (= e!3629850 (Union!15977 call!470809 call!470810))))

(declare-fun bm!470804 () Bool)

(assert (=> bm!470804 (= call!470809 (derivativeStep!4708 (ite c!1054304 (regOne!32467 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292))))) (ite c!1054301 (reg!16306 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292))))) (ite c!1054305 (regTwo!32466 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292))))) (regOne!32466 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))))))) (head!12495 s!2326)))))

(declare-fun b!5930529 () Bool)

(assert (=> b!5930529 (= e!3629849 (Union!15977 (Concat!24822 call!470812 (regTwo!32466 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))))) EmptyLang!15977))))

(declare-fun b!5930530 () Bool)

(assert (=> b!5930530 (= e!3629848 (ite (= (head!12495 s!2326) (c!1053727 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))))) EmptyExpr!15977 EmptyLang!15977))))

(declare-fun bm!470805 () Bool)

(assert (=> bm!470805 (= call!470811 call!470809)))

(declare-fun bm!470806 () Bool)

(assert (=> bm!470806 (= call!470812 call!470811)))

(declare-fun bm!470807 () Bool)

(assert (=> bm!470807 (= call!470810 (derivativeStep!4708 (ite c!1054304 (regTwo!32467 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292))))) (regOne!32466 (ite c!1054067 (regOne!32467 r!7292) (ite c!1054064 (reg!16306 r!7292) (ite c!1054068 (regTwo!32466 r!7292) (regOne!32466 r!7292)))))) (head!12495 s!2326)))))

(declare-fun b!5930531 () Bool)

(assert (=> b!5930531 (= e!3629852 EmptyLang!15977)))

(assert (= (and d!1859444 c!1054303) b!5930531))

(assert (= (and d!1859444 (not c!1054303)) b!5930523))

(assert (= (and b!5930523 c!1054302) b!5930530))

(assert (= (and b!5930523 (not c!1054302)) b!5930526))

(assert (= (and b!5930526 c!1054304) b!5930528))

(assert (= (and b!5930526 (not c!1054304)) b!5930525))

(assert (= (and b!5930525 c!1054301) b!5930527))

(assert (= (and b!5930525 (not c!1054301)) b!5930522))

(assert (= (and b!5930522 c!1054305) b!5930524))

(assert (= (and b!5930522 (not c!1054305)) b!5930529))

(assert (= (or b!5930524 b!5930529) bm!470806))

(assert (= (or b!5930527 bm!470806) bm!470805))

(assert (= (or b!5930528 b!5930524) bm!470807))

(assert (= (or b!5930528 bm!470805) bm!470804))

(declare-fun m!6823398 () Bool)

(assert (=> b!5930522 m!6823398))

(declare-fun m!6823402 () Bool)

(assert (=> d!1859444 m!6823402))

(declare-fun m!6823404 () Bool)

(assert (=> d!1859444 m!6823404))

(assert (=> bm!470804 m!6821752))

(declare-fun m!6823410 () Bool)

(assert (=> bm!470804 m!6823410))

(assert (=> bm!470807 m!6821752))

(declare-fun m!6823412 () Bool)

(assert (=> bm!470807 m!6823412))

(assert (=> bm!470592 d!1859444))

(declare-fun bm!470808 () Bool)

(declare-fun call!470816 () (InoxSet Context!10722))

(declare-fun call!470813 () (InoxSet Context!10722))

(assert (=> bm!470808 (= call!470816 call!470813)))

(declare-fun c!1054309 () Bool)

(declare-fun d!1859448 () Bool)

(assert (=> d!1859448 (= c!1054309 (and ((_ is ElementMatch!15977) (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))) (= (c!1053727 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))) (h!70556 s!2326))))))

(declare-fun e!3629857 () (InoxSet Context!10722))

(assert (=> d!1859448 (= (derivationStepZipperDown!1227 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576)))))) (ite (or c!1054027 c!1054028) (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470568)) (h!70556 s!2326)) e!3629857)))

(declare-fun bm!470809 () Bool)

(declare-fun call!470815 () (InoxSet Context!10722))

(assert (=> bm!470809 (= call!470815 call!470816)))

(declare-fun b!5930532 () Bool)

(declare-fun e!3629855 () (InoxSet Context!10722))

(assert (=> b!5930532 (= e!3629855 call!470815)))

(declare-fun b!5930533 () Bool)

(declare-fun e!3629854 () (InoxSet Context!10722))

(declare-fun e!3629853 () (InoxSet Context!10722))

(assert (=> b!5930533 (= e!3629854 e!3629853)))

(declare-fun c!1054306 () Bool)

(assert (=> b!5930533 (= c!1054306 ((_ is Concat!24822) (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))))))

(declare-fun b!5930534 () Bool)

(declare-fun e!3629858 () (InoxSet Context!10722))

(assert (=> b!5930534 (= e!3629857 e!3629858)))

(declare-fun c!1054307 () Bool)

(assert (=> b!5930534 (= c!1054307 ((_ is Union!15977) (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))))))

(declare-fun b!5930535 () Bool)

(declare-fun e!3629856 () Bool)

(assert (=> b!5930535 (= e!3629856 (nullable!5972 (regOne!32466 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576)))))))))))

(declare-fun bm!470810 () Bool)

(declare-fun call!470814 () List!64230)

(declare-fun call!470818 () List!64230)

(assert (=> bm!470810 (= call!470814 call!470818)))

(declare-fun b!5930536 () Bool)

(declare-fun call!470817 () (InoxSet Context!10722))

(assert (=> b!5930536 (= e!3629854 ((_ map or) call!470817 call!470816))))

(declare-fun bm!470811 () Bool)

(declare-fun c!1054308 () Bool)

(assert (=> bm!470811 (= call!470818 ($colon$colon!1864 (exprs!5861 (ite (or c!1054027 c!1054028) (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470568))) (ite (or c!1054308 c!1054306) (regTwo!32466 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))) (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576)))))))))))

(declare-fun b!5930537 () Bool)

(assert (=> b!5930537 (= e!3629855 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930538 () Bool)

(assert (=> b!5930538 (= e!3629853 call!470815)))

(declare-fun b!5930539 () Bool)

(assert (=> b!5930539 (= e!3629857 (store ((as const (Array Context!10722 Bool)) false) (ite (or c!1054027 c!1054028) (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470568)) true))))

(declare-fun bm!470812 () Bool)

(assert (=> bm!470812 (= call!470817 (derivationStepZipperDown!1227 (ite c!1054307 (regOne!32467 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))) (regOne!32466 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576)))))))) (ite c!1054307 (ite (or c!1054027 c!1054028) (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470568)) (Context!10723 call!470818)) (h!70556 s!2326)))))

(declare-fun bm!470813 () Bool)

(assert (=> bm!470813 (= call!470813 (derivationStepZipperDown!1227 (ite c!1054307 (regTwo!32467 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))) (ite c!1054308 (regTwo!32466 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))) (ite c!1054306 (regOne!32466 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))) (reg!16306 (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576)))))))))) (ite (or c!1054307 c!1054308) (ite (or c!1054027 c!1054028) (Context!10723 (t!377627 (exprs!5861 lt!2310576))) (Context!10723 call!470568)) (Context!10723 call!470814)) (h!70556 s!2326)))))

(declare-fun b!5930540 () Bool)

(assert (=> b!5930540 (= c!1054308 e!3629856)))

(declare-fun res!2484991 () Bool)

(assert (=> b!5930540 (=> (not res!2484991) (not e!3629856))))

(assert (=> b!5930540 (= res!2484991 ((_ is Concat!24822) (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))))))

(assert (=> b!5930540 (= e!3629858 e!3629854)))

(declare-fun b!5930541 () Bool)

(assert (=> b!5930541 (= e!3629858 ((_ map or) call!470817 call!470813))))

(declare-fun b!5930542 () Bool)

(declare-fun c!1054310 () Bool)

(assert (=> b!5930542 (= c!1054310 ((_ is Star!15977) (ite c!1054027 (regTwo!32467 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054028 (regTwo!32466 (h!70554 (exprs!5861 lt!2310576))) (ite c!1054026 (regOne!32466 (h!70554 (exprs!5861 lt!2310576))) (reg!16306 (h!70554 (exprs!5861 lt!2310576))))))))))

(assert (=> b!5930542 (= e!3629853 e!3629855)))

(assert (= (and d!1859448 c!1054309) b!5930539))

(assert (= (and d!1859448 (not c!1054309)) b!5930534))

(assert (= (and b!5930534 c!1054307) b!5930541))

(assert (= (and b!5930534 (not c!1054307)) b!5930540))

(assert (= (and b!5930540 res!2484991) b!5930535))

(assert (= (and b!5930540 c!1054308) b!5930536))

(assert (= (and b!5930540 (not c!1054308)) b!5930533))

(assert (= (and b!5930533 c!1054306) b!5930538))

(assert (= (and b!5930533 (not c!1054306)) b!5930542))

(assert (= (and b!5930542 c!1054310) b!5930532))

(assert (= (and b!5930542 (not c!1054310)) b!5930537))

(assert (= (or b!5930538 b!5930532) bm!470810))

(assert (= (or b!5930538 b!5930532) bm!470809))

(assert (= (or b!5930536 bm!470810) bm!470811))

(assert (= (or b!5930536 bm!470809) bm!470808))

(assert (= (or b!5930541 bm!470808) bm!470813))

(assert (= (or b!5930541 b!5930536) bm!470812))

(declare-fun m!6823414 () Bool)

(assert (=> b!5930539 m!6823414))

(declare-fun m!6823416 () Bool)

(assert (=> bm!470811 m!6823416))

(declare-fun m!6823424 () Bool)

(assert (=> bm!470813 m!6823424))

(declare-fun m!6823426 () Bool)

(assert (=> bm!470812 m!6823426))

(declare-fun m!6823428 () Bool)

(assert (=> b!5930535 m!6823428))

(assert (=> bm!470567 d!1859448))

(declare-fun b!5930562 () Bool)

(declare-fun e!3629873 () Bool)

(declare-fun e!3629875 () Bool)

(assert (=> b!5930562 (= e!3629873 e!3629875)))

(declare-fun res!2485005 () Bool)

(assert (=> b!5930562 (= res!2485005 (not (nullable!5972 (reg!16306 (h!70554 (exprs!5861 setElem!40242))))))))

(assert (=> b!5930562 (=> (not res!2485005) (not e!3629875))))

(declare-fun b!5930563 () Bool)

(declare-fun res!2485003 () Bool)

(declare-fun e!3629874 () Bool)

(assert (=> b!5930563 (=> res!2485003 e!3629874)))

(assert (=> b!5930563 (= res!2485003 (not ((_ is Concat!24822) (h!70554 (exprs!5861 setElem!40242)))))))

(declare-fun e!3629879 () Bool)

(assert (=> b!5930563 (= e!3629879 e!3629874)))

(declare-fun b!5930564 () Bool)

(declare-fun e!3629876 () Bool)

(declare-fun call!470826 () Bool)

(assert (=> b!5930564 (= e!3629876 call!470826)))

(declare-fun bm!470820 () Bool)

(declare-fun call!470825 () Bool)

(assert (=> bm!470820 (= call!470826 call!470825)))

(declare-fun b!5930565 () Bool)

(declare-fun e!3629877 () Bool)

(assert (=> b!5930565 (= e!3629877 e!3629873)))

(declare-fun c!1054316 () Bool)

(assert (=> b!5930565 (= c!1054316 ((_ is Star!15977) (h!70554 (exprs!5861 setElem!40242))))))

(declare-fun b!5930566 () Bool)

(assert (=> b!5930566 (= e!3629874 e!3629876)))

(declare-fun res!2485006 () Bool)

(assert (=> b!5930566 (=> (not res!2485006) (not e!3629876))))

(declare-fun call!470827 () Bool)

(assert (=> b!5930566 (= res!2485006 call!470827)))

(declare-fun b!5930567 () Bool)

(assert (=> b!5930567 (= e!3629875 call!470825)))

(declare-fun c!1054315 () Bool)

(declare-fun bm!470821 () Bool)

(assert (=> bm!470821 (= call!470825 (validRegex!7713 (ite c!1054316 (reg!16306 (h!70554 (exprs!5861 setElem!40242))) (ite c!1054315 (regTwo!32467 (h!70554 (exprs!5861 setElem!40242))) (regTwo!32466 (h!70554 (exprs!5861 setElem!40242)))))))))

(declare-fun b!5930568 () Bool)

(assert (=> b!5930568 (= e!3629873 e!3629879)))

(assert (=> b!5930568 (= c!1054315 ((_ is Union!15977) (h!70554 (exprs!5861 setElem!40242))))))

(declare-fun b!5930561 () Bool)

(declare-fun res!2485004 () Bool)

(declare-fun e!3629878 () Bool)

(assert (=> b!5930561 (=> (not res!2485004) (not e!3629878))))

(assert (=> b!5930561 (= res!2485004 call!470827)))

(assert (=> b!5930561 (= e!3629879 e!3629878)))

(declare-fun d!1859456 () Bool)

(declare-fun res!2485002 () Bool)

(assert (=> d!1859456 (=> res!2485002 e!3629877)))

(assert (=> d!1859456 (= res!2485002 ((_ is ElementMatch!15977) (h!70554 (exprs!5861 setElem!40242))))))

(assert (=> d!1859456 (= (validRegex!7713 (h!70554 (exprs!5861 setElem!40242))) e!3629877)))

(declare-fun b!5930569 () Bool)

(assert (=> b!5930569 (= e!3629878 call!470826)))

(declare-fun bm!470822 () Bool)

(assert (=> bm!470822 (= call!470827 (validRegex!7713 (ite c!1054315 (regOne!32467 (h!70554 (exprs!5861 setElem!40242))) (regOne!32466 (h!70554 (exprs!5861 setElem!40242))))))))

(assert (= (and d!1859456 (not res!2485002)) b!5930565))

(assert (= (and b!5930565 c!1054316) b!5930562))

(assert (= (and b!5930565 (not c!1054316)) b!5930568))

(assert (= (and b!5930562 res!2485005) b!5930567))

(assert (= (and b!5930568 c!1054315) b!5930561))

(assert (= (and b!5930568 (not c!1054315)) b!5930563))

(assert (= (and b!5930561 res!2485004) b!5930569))

(assert (= (and b!5930563 (not res!2485003)) b!5930566))

(assert (= (and b!5930566 res!2485006) b!5930564))

(assert (= (or b!5930569 b!5930564) bm!470820))

(assert (= (or b!5930561 b!5930566) bm!470822))

(assert (= (or b!5930567 bm!470820) bm!470821))

(declare-fun m!6823430 () Bool)

(assert (=> b!5930562 m!6823430))

(declare-fun m!6823432 () Bool)

(assert (=> bm!470821 m!6823432))

(declare-fun m!6823434 () Bool)

(assert (=> bm!470822 m!6823434))

(assert (=> bs!1403105 d!1859456))

(assert (=> b!5929192 d!1858778))

(declare-fun d!1859458 () Bool)

(assert (=> d!1859458 (= (head!12496 (t!377627 (unfocusZipperList!1398 zl!343))) (h!70554 (t!377627 (unfocusZipperList!1398 zl!343))))))

(assert (=> b!5929133 d!1859458))

(assert (=> b!5929134 d!1858988))

(declare-fun b!5930571 () Bool)

(declare-fun e!3629880 () Bool)

(declare-fun e!3629882 () Bool)

(assert (=> b!5930571 (= e!3629880 e!3629882)))

(declare-fun res!2485010 () Bool)

(assert (=> b!5930571 (= res!2485010 (not (nullable!5972 (reg!16306 (h!70554 (unfocusZipperList!1398 zl!343))))))))

(assert (=> b!5930571 (=> (not res!2485010) (not e!3629882))))

(declare-fun b!5930572 () Bool)

(declare-fun res!2485008 () Bool)

(declare-fun e!3629881 () Bool)

(assert (=> b!5930572 (=> res!2485008 e!3629881)))

(assert (=> b!5930572 (= res!2485008 (not ((_ is Concat!24822) (h!70554 (unfocusZipperList!1398 zl!343)))))))

(declare-fun e!3629886 () Bool)

(assert (=> b!5930572 (= e!3629886 e!3629881)))

(declare-fun b!5930573 () Bool)

(declare-fun e!3629883 () Bool)

(declare-fun call!470829 () Bool)

(assert (=> b!5930573 (= e!3629883 call!470829)))

(declare-fun bm!470823 () Bool)

(declare-fun call!470828 () Bool)

(assert (=> bm!470823 (= call!470829 call!470828)))

(declare-fun b!5930574 () Bool)

(declare-fun e!3629884 () Bool)

(assert (=> b!5930574 (= e!3629884 e!3629880)))

(declare-fun c!1054318 () Bool)

(assert (=> b!5930574 (= c!1054318 ((_ is Star!15977) (h!70554 (unfocusZipperList!1398 zl!343))))))

(declare-fun b!5930575 () Bool)

(assert (=> b!5930575 (= e!3629881 e!3629883)))

(declare-fun res!2485011 () Bool)

(assert (=> b!5930575 (=> (not res!2485011) (not e!3629883))))

(declare-fun call!470830 () Bool)

(assert (=> b!5930575 (= res!2485011 call!470830)))

(declare-fun b!5930576 () Bool)

(assert (=> b!5930576 (= e!3629882 call!470828)))

(declare-fun c!1054317 () Bool)

(declare-fun bm!470824 () Bool)

(assert (=> bm!470824 (= call!470828 (validRegex!7713 (ite c!1054318 (reg!16306 (h!70554 (unfocusZipperList!1398 zl!343))) (ite c!1054317 (regTwo!32467 (h!70554 (unfocusZipperList!1398 zl!343))) (regTwo!32466 (h!70554 (unfocusZipperList!1398 zl!343)))))))))

(declare-fun b!5930577 () Bool)

(assert (=> b!5930577 (= e!3629880 e!3629886)))

(assert (=> b!5930577 (= c!1054317 ((_ is Union!15977) (h!70554 (unfocusZipperList!1398 zl!343))))))

(declare-fun b!5930570 () Bool)

(declare-fun res!2485009 () Bool)

(declare-fun e!3629885 () Bool)

(assert (=> b!5930570 (=> (not res!2485009) (not e!3629885))))

(assert (=> b!5930570 (= res!2485009 call!470830)))

(assert (=> b!5930570 (= e!3629886 e!3629885)))

(declare-fun d!1859460 () Bool)

(declare-fun res!2485007 () Bool)

(assert (=> d!1859460 (=> res!2485007 e!3629884)))

(assert (=> d!1859460 (= res!2485007 ((_ is ElementMatch!15977) (h!70554 (unfocusZipperList!1398 zl!343))))))

(assert (=> d!1859460 (= (validRegex!7713 (h!70554 (unfocusZipperList!1398 zl!343))) e!3629884)))

(declare-fun b!5930578 () Bool)

(assert (=> b!5930578 (= e!3629885 call!470829)))

(declare-fun bm!470825 () Bool)

(assert (=> bm!470825 (= call!470830 (validRegex!7713 (ite c!1054317 (regOne!32467 (h!70554 (unfocusZipperList!1398 zl!343))) (regOne!32466 (h!70554 (unfocusZipperList!1398 zl!343))))))))

(assert (= (and d!1859460 (not res!2485007)) b!5930574))

(assert (= (and b!5930574 c!1054318) b!5930571))

(assert (= (and b!5930574 (not c!1054318)) b!5930577))

(assert (= (and b!5930571 res!2485010) b!5930576))

(assert (= (and b!5930577 c!1054317) b!5930570))

(assert (= (and b!5930577 (not c!1054317)) b!5930572))

(assert (= (and b!5930570 res!2485009) b!5930578))

(assert (= (and b!5930572 (not res!2485008)) b!5930575))

(assert (= (and b!5930575 res!2485011) b!5930573))

(assert (= (or b!5930578 b!5930573) bm!470823))

(assert (= (or b!5930570 b!5930575) bm!470825))

(assert (= (or b!5930576 bm!470823) bm!470824))

(declare-fun m!6823442 () Bool)

(assert (=> b!5930571 m!6823442))

(declare-fun m!6823444 () Bool)

(assert (=> bm!470824 m!6823444))

(declare-fun m!6823446 () Bool)

(assert (=> bm!470825 m!6823446))

(assert (=> bs!1403104 d!1859460))

(declare-fun d!1859464 () Bool)

(assert (=> d!1859464 true))

(assert (=> d!1859464 true))

(declare-fun res!2485012 () Bool)

(assert (=> d!1859464 (= (choose!44703 lambda!323411) res!2485012)))

(assert (=> d!1858858 d!1859464))

(declare-fun d!1859466 () Bool)

(declare-fun res!2485013 () Bool)

(declare-fun e!3629887 () Bool)

(assert (=> d!1859466 (=> res!2485013 e!3629887)))

(assert (=> d!1859466 (= res!2485013 ((_ is Nil!64106) (exprs!5861 setElem!40248)))))

(assert (=> d!1859466 (= (forall!15060 (exprs!5861 setElem!40248) lambda!323441) e!3629887)))

(declare-fun b!5930579 () Bool)

(declare-fun e!3629888 () Bool)

(assert (=> b!5930579 (= e!3629887 e!3629888)))

(declare-fun res!2485014 () Bool)

(assert (=> b!5930579 (=> (not res!2485014) (not e!3629888))))

(assert (=> b!5930579 (= res!2485014 (dynLambda!25069 lambda!323441 (h!70554 (exprs!5861 setElem!40248))))))

(declare-fun b!5930580 () Bool)

(assert (=> b!5930580 (= e!3629888 (forall!15060 (t!377627 (exprs!5861 setElem!40248)) lambda!323441))))

(assert (= (and d!1859466 (not res!2485013)) b!5930579))

(assert (= (and b!5930579 res!2485014) b!5930580))

(declare-fun b_lambda!222743 () Bool)

(assert (=> (not b_lambda!222743) (not b!5930579)))

(declare-fun m!6823448 () Bool)

(assert (=> b!5930579 m!6823448))

(declare-fun m!6823450 () Bool)

(assert (=> b!5930580 m!6823450))

(assert (=> d!1859074 d!1859466))

(declare-fun d!1859468 () Bool)

(assert (=> d!1859468 (= (nullable!5972 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))) (nullableFct!1944 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343))))))))))

(declare-fun bs!1403258 () Bool)

(assert (= bs!1403258 d!1859468))

(declare-fun m!6823452 () Bool)

(assert (=> bs!1403258 m!6823452))

(assert (=> b!5929635 d!1859468))

(declare-fun b!5930591 () Bool)

(declare-fun e!3629899 () Bool)

(declare-fun e!3629897 () Bool)

(assert (=> b!5930591 (= e!3629899 e!3629897)))

(declare-fun res!2485019 () Bool)

(assert (=> b!5930591 (=> res!2485019 e!3629897)))

(assert (=> b!5930591 (= res!2485019 ((_ is Star!15977) (regOne!32466 r!7292)))))

(declare-fun b!5930593 () Bool)

(declare-fun e!3629901 () Bool)

(assert (=> b!5930593 (= e!3629897 e!3629901)))

(declare-fun c!1054323 () Bool)

(assert (=> b!5930593 (= c!1054323 ((_ is Union!15977) (regOne!32466 r!7292)))))

(declare-fun b!5930594 () Bool)

(declare-fun e!3629900 () Bool)

(assert (=> b!5930594 (= e!3629900 e!3629899)))

(declare-fun res!2485022 () Bool)

(assert (=> b!5930594 (=> (not res!2485022) (not e!3629899))))

(assert (=> b!5930594 (= res!2485022 (and (not ((_ is EmptyLang!15977) (regOne!32466 r!7292))) (not ((_ is ElementMatch!15977) (regOne!32466 r!7292)))))))

(declare-fun d!1859472 () Bool)

(declare-fun res!2485018 () Bool)

(assert (=> d!1859472 (=> res!2485018 e!3629900)))

(assert (=> d!1859472 (= res!2485018 ((_ is EmptyExpr!15977) (regOne!32466 r!7292)))))

(assert (=> d!1859472 (= (nullableFct!1944 (regOne!32466 r!7292)) e!3629900)))

(declare-fun b!5930595 () Bool)

(declare-fun e!3629896 () Bool)

(declare-fun call!470833 () Bool)

(assert (=> b!5930595 (= e!3629896 call!470833)))

(declare-fun b!5930596 () Bool)

(declare-fun e!3629898 () Bool)

(assert (=> b!5930596 (= e!3629901 e!3629898)))

(declare-fun res!2485021 () Bool)

(declare-fun call!470834 () Bool)

(assert (=> b!5930596 (= res!2485021 call!470834)))

(assert (=> b!5930596 (=> res!2485021 e!3629898)))

(declare-fun bm!470828 () Bool)

(assert (=> bm!470828 (= call!470834 (nullable!5972 (ite c!1054323 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))))))

(declare-fun b!5930597 () Bool)

(assert (=> b!5930597 (= e!3629901 e!3629896)))

(declare-fun res!2485020 () Bool)

(assert (=> b!5930597 (= res!2485020 call!470834)))

(assert (=> b!5930597 (=> (not res!2485020) (not e!3629896))))

(declare-fun b!5930598 () Bool)

(assert (=> b!5930598 (= e!3629898 call!470833)))

(declare-fun bm!470829 () Bool)

(assert (=> bm!470829 (= call!470833 (nullable!5972 (ite c!1054323 (regTwo!32467 (regOne!32466 r!7292)) (regTwo!32466 (regOne!32466 r!7292)))))))

(assert (= (and d!1859472 (not res!2485018)) b!5930594))

(assert (= (and b!5930594 res!2485022) b!5930591))

(assert (= (and b!5930591 (not res!2485019)) b!5930593))

(assert (= (and b!5930593 c!1054323) b!5930596))

(assert (= (and b!5930593 (not c!1054323)) b!5930597))

(assert (= (and b!5930596 (not res!2485021)) b!5930598))

(assert (= (and b!5930597 res!2485020) b!5930595))

(assert (= (or b!5930598 b!5930595) bm!470829))

(assert (= (or b!5930596 b!5930597) bm!470828))

(declare-fun m!6823454 () Bool)

(assert (=> bm!470828 m!6823454))

(declare-fun m!6823456 () Bool)

(assert (=> bm!470829 m!6823456))

(assert (=> d!1859026 d!1859472))

(declare-fun d!1859474 () Bool)

(assert (=> d!1859474 (= (head!12496 (t!377627 (exprs!5861 (h!70555 zl!343)))) (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> b!5929197 d!1859474))

(declare-fun bm!470830 () Bool)

(declare-fun call!470838 () (InoxSet Context!10722))

(declare-fun call!470835 () (InoxSet Context!10722))

(assert (=> bm!470830 (= call!470838 call!470835)))

(declare-fun c!1054327 () Bool)

(declare-fun d!1859476 () Bool)

(assert (=> d!1859476 (= c!1054327 (and ((_ is ElementMatch!15977) (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))) (= (c!1053727 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))) (h!70556 s!2326))))))

(declare-fun e!3629906 () (InoxSet Context!10722))

(assert (=> d!1859476 (= (derivationStepZipperDown!1227 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))) (ite c!1054089 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470620)) (h!70556 s!2326)) e!3629906)))

(declare-fun bm!470831 () Bool)

(declare-fun call!470837 () (InoxSet Context!10722))

(assert (=> bm!470831 (= call!470837 call!470838)))

(declare-fun b!5930599 () Bool)

(declare-fun e!3629904 () (InoxSet Context!10722))

(assert (=> b!5930599 (= e!3629904 call!470837)))

(declare-fun b!5930600 () Bool)

(declare-fun e!3629903 () (InoxSet Context!10722))

(declare-fun e!3629902 () (InoxSet Context!10722))

(assert (=> b!5930600 (= e!3629903 e!3629902)))

(declare-fun c!1054324 () Bool)

(assert (=> b!5930600 (= c!1054324 ((_ is Concat!24822) (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(declare-fun b!5930601 () Bool)

(declare-fun e!3629907 () (InoxSet Context!10722))

(assert (=> b!5930601 (= e!3629906 e!3629907)))

(declare-fun c!1054325 () Bool)

(assert (=> b!5930601 (= c!1054325 ((_ is Union!15977) (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(declare-fun b!5930602 () Bool)

(declare-fun e!3629905 () Bool)

(assert (=> b!5930602 (= e!3629905 (nullable!5972 (regOne!32466 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))

(declare-fun bm!470832 () Bool)

(declare-fun call!470836 () List!64230)

(declare-fun call!470840 () List!64230)

(assert (=> bm!470832 (= call!470836 call!470840)))

(declare-fun b!5930603 () Bool)

(declare-fun call!470839 () (InoxSet Context!10722))

(assert (=> b!5930603 (= e!3629903 ((_ map or) call!470839 call!470838))))

(declare-fun bm!470833 () Bool)

(declare-fun c!1054326 () Bool)

(assert (=> bm!470833 (= call!470840 ($colon$colon!1864 (exprs!5861 (ite c!1054089 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470620))) (ite (or c!1054326 c!1054324) (regTwo!32466 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))) (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))

(declare-fun b!5930604 () Bool)

(assert (=> b!5930604 (= e!3629904 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930605 () Bool)

(assert (=> b!5930605 (= e!3629902 call!470837)))

(declare-fun b!5930606 () Bool)

(assert (=> b!5930606 (= e!3629906 (store ((as const (Array Context!10722 Bool)) false) (ite c!1054089 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470620)) true))))

(declare-fun bm!470834 () Bool)

(assert (=> bm!470834 (= call!470839 (derivationStepZipperDown!1227 (ite c!1054325 (regOne!32467 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))) (regOne!32466 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (ite c!1054325 (ite c!1054089 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470620)) (Context!10723 call!470840)) (h!70556 s!2326)))))

(declare-fun bm!470835 () Bool)

(assert (=> bm!470835 (= call!470835 (derivationStepZipperDown!1227 (ite c!1054325 (regTwo!32467 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))) (ite c!1054326 (regTwo!32466 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))) (ite c!1054324 (regOne!32466 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))) (reg!16306 (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))) (ite (or c!1054325 c!1054326) (ite c!1054089 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470620)) (Context!10723 call!470836)) (h!70556 s!2326)))))

(declare-fun b!5930607 () Bool)

(assert (=> b!5930607 (= c!1054326 e!3629905)))

(declare-fun res!2485023 () Bool)

(assert (=> b!5930607 (=> (not res!2485023) (not e!3629905))))

(assert (=> b!5930607 (= res!2485023 ((_ is Concat!24822) (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(assert (=> b!5930607 (= e!3629907 e!3629903)))

(declare-fun b!5930608 () Bool)

(assert (=> b!5930608 (= e!3629907 ((_ map or) call!470839 call!470835))))

(declare-fun b!5930609 () Bool)

(declare-fun c!1054328 () Bool)

(assert (=> b!5930609 (= c!1054328 ((_ is Star!15977) (ite c!1054089 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(assert (=> b!5930609 (= e!3629902 e!3629904)))

(assert (= (and d!1859476 c!1054327) b!5930606))

(assert (= (and d!1859476 (not c!1054327)) b!5930601))

(assert (= (and b!5930601 c!1054325) b!5930608))

(assert (= (and b!5930601 (not c!1054325)) b!5930607))

(assert (= (and b!5930607 res!2485023) b!5930602))

(assert (= (and b!5930607 c!1054326) b!5930603))

(assert (= (and b!5930607 (not c!1054326)) b!5930600))

(assert (= (and b!5930600 c!1054324) b!5930605))

(assert (= (and b!5930600 (not c!1054324)) b!5930609))

(assert (= (and b!5930609 c!1054328) b!5930599))

(assert (= (and b!5930609 (not c!1054328)) b!5930604))

(assert (= (or b!5930605 b!5930599) bm!470832))

(assert (= (or b!5930605 b!5930599) bm!470831))

(assert (= (or b!5930603 bm!470832) bm!470833))

(assert (= (or b!5930603 bm!470831) bm!470830))

(assert (= (or b!5930608 bm!470830) bm!470835))

(assert (= (or b!5930608 b!5930603) bm!470834))

(declare-fun m!6823458 () Bool)

(assert (=> b!5930606 m!6823458))

(declare-fun m!6823460 () Bool)

(assert (=> bm!470833 m!6823460))

(declare-fun m!6823462 () Bool)

(assert (=> bm!470835 m!6823462))

(declare-fun m!6823464 () Bool)

(assert (=> bm!470834 m!6823464))

(declare-fun m!6823466 () Bool)

(assert (=> b!5930602 m!6823466))

(assert (=> bm!470614 d!1859476))

(declare-fun d!1859478 () Bool)

(declare-fun lt!2310727 () Int)

(assert (=> d!1859478 (>= lt!2310727 0)))

(declare-fun e!3629908 () Int)

(assert (=> d!1859478 (= lt!2310727 e!3629908)))

(declare-fun c!1054329 () Bool)

(assert (=> d!1859478 (= c!1054329 ((_ is Nil!64108) lt!2310666))))

(assert (=> d!1859478 (= (size!40144 lt!2310666) lt!2310727)))

(declare-fun b!5930610 () Bool)

(assert (=> b!5930610 (= e!3629908 0)))

(declare-fun b!5930611 () Bool)

(assert (=> b!5930611 (= e!3629908 (+ 1 (size!40144 (t!377629 lt!2310666))))))

(assert (= (and d!1859478 c!1054329) b!5930610))

(assert (= (and d!1859478 (not c!1054329)) b!5930611))

(declare-fun m!6823468 () Bool)

(assert (=> b!5930611 m!6823468))

(assert (=> b!5929236 d!1859478))

(declare-fun d!1859480 () Bool)

(declare-fun lt!2310728 () Int)

(assert (=> d!1859480 (>= lt!2310728 0)))

(declare-fun e!3629909 () Int)

(assert (=> d!1859480 (= lt!2310728 e!3629909)))

(declare-fun c!1054330 () Bool)

(assert (=> d!1859480 (= c!1054330 ((_ is Nil!64108) (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))

(assert (=> d!1859480 (= (size!40144 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) lt!2310728)))

(declare-fun b!5930612 () Bool)

(assert (=> b!5930612 (= e!3629909 0)))

(declare-fun b!5930613 () Bool)

(assert (=> b!5930613 (= e!3629909 (+ 1 (size!40144 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))))

(assert (= (and d!1859480 c!1054330) b!5930612))

(assert (= (and d!1859480 (not c!1054330)) b!5930613))

(assert (=> b!5930613 m!6823200))

(assert (=> b!5929236 d!1859480))

(declare-fun d!1859482 () Bool)

(declare-fun lt!2310729 () Int)

(assert (=> d!1859482 (>= lt!2310729 0)))

(declare-fun e!3629910 () Int)

(assert (=> d!1859482 (= lt!2310729 e!3629910)))

(declare-fun c!1054331 () Bool)

(assert (=> d!1859482 (= c!1054331 ((_ is Nil!64108) (t!377629 s!2326)))))

(assert (=> d!1859482 (= (size!40144 (t!377629 s!2326)) lt!2310729)))

(declare-fun b!5930614 () Bool)

(assert (=> b!5930614 (= e!3629910 0)))

(declare-fun b!5930615 () Bool)

(assert (=> b!5930615 (= e!3629910 (+ 1 (size!40144 (t!377629 (t!377629 s!2326)))))))

(assert (= (and d!1859482 c!1054331) b!5930614))

(assert (= (and d!1859482 (not c!1054331)) b!5930615))

(declare-fun m!6823470 () Bool)

(assert (=> b!5930615 m!6823470))

(assert (=> b!5929236 d!1859482))

(declare-fun d!1859484 () Bool)

(assert (=> d!1859484 (= (nullable!5972 (reg!16306 lt!2310627)) (nullableFct!1944 (reg!16306 lt!2310627)))))

(declare-fun bs!1403266 () Bool)

(assert (= bs!1403266 d!1859484))

(declare-fun m!6823472 () Bool)

(assert (=> bs!1403266 m!6823472))

(assert (=> b!5929181 d!1859484))

(declare-fun d!1859486 () Bool)

(assert (=> d!1859486 (= (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))) (nullableFct!1944 (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun bs!1403267 () Bool)

(assert (= bs!1403267 d!1859486))

(declare-fun m!6823474 () Bool)

(assert (=> bs!1403267 m!6823474))

(assert (=> b!5929320 d!1859486))

(declare-fun b!5930617 () Bool)

(declare-fun e!3629912 () List!64232)

(assert (=> b!5930617 (= e!3629912 (Cons!64108 (h!70556 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108))) (++!14074 (t!377629 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108))) (t!377629 (t!377629 s!2326)))))))

(declare-fun b!5930616 () Bool)

(assert (=> b!5930616 (= e!3629912 (t!377629 (t!377629 s!2326)))))

(declare-fun d!1859488 () Bool)

(declare-fun e!3629911 () Bool)

(assert (=> d!1859488 e!3629911))

(declare-fun res!2485025 () Bool)

(assert (=> d!1859488 (=> (not res!2485025) (not e!3629911))))

(declare-fun lt!2310730 () List!64232)

(assert (=> d!1859488 (= res!2485025 (= (content!11814 lt!2310730) ((_ map or) (content!11814 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108))) (content!11814 (t!377629 (t!377629 s!2326))))))))

(assert (=> d!1859488 (= lt!2310730 e!3629912)))

(declare-fun c!1054332 () Bool)

(assert (=> d!1859488 (= c!1054332 ((_ is Nil!64108) (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108))))))

(assert (=> d!1859488 (= (++!14074 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) (t!377629 (t!377629 s!2326))) lt!2310730)))

(declare-fun b!5930619 () Bool)

(assert (=> b!5930619 (= e!3629911 (or (not (= (t!377629 (t!377629 s!2326)) Nil!64108)) (= lt!2310730 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)))))))

(declare-fun b!5930618 () Bool)

(declare-fun res!2485024 () Bool)

(assert (=> b!5930618 (=> (not res!2485024) (not e!3629911))))

(assert (=> b!5930618 (= res!2485024 (= (size!40144 lt!2310730) (+ (size!40144 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108))) (size!40144 (t!377629 (t!377629 s!2326))))))))

(assert (= (and d!1859488 c!1054332) b!5930616))

(assert (= (and d!1859488 (not c!1054332)) b!5930617))

(assert (= (and d!1859488 res!2485025) b!5930618))

(assert (= (and b!5930618 res!2485024) b!5930619))

(declare-fun m!6823476 () Bool)

(assert (=> b!5930617 m!6823476))

(declare-fun m!6823478 () Bool)

(assert (=> d!1859488 m!6823478))

(assert (=> d!1859488 m!6822314))

(declare-fun m!6823480 () Bool)

(assert (=> d!1859488 m!6823480))

(declare-fun m!6823482 () Bool)

(assert (=> d!1859488 m!6823482))

(declare-fun m!6823484 () Bool)

(assert (=> b!5930618 m!6823484))

(assert (=> b!5930618 m!6822314))

(declare-fun m!6823486 () Bool)

(assert (=> b!5930618 m!6823486))

(assert (=> b!5930618 m!6823470))

(assert (=> b!5929285 d!1859488))

(declare-fun b!5930621 () Bool)

(declare-fun e!3629914 () List!64232)

(assert (=> b!5930621 (= e!3629914 (Cons!64108 (h!70556 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (++!14074 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108))))))

(declare-fun b!5930620 () Bool)

(assert (=> b!5930620 (= e!3629914 (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108))))

(declare-fun d!1859490 () Bool)

(declare-fun e!3629913 () Bool)

(assert (=> d!1859490 e!3629913))

(declare-fun res!2485027 () Bool)

(assert (=> d!1859490 (=> (not res!2485027) (not e!3629913))))

(declare-fun lt!2310731 () List!64232)

(assert (=> d!1859490 (= res!2485027 (= (content!11814 lt!2310731) ((_ map or) (content!11814 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (content!11814 (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)))))))

(assert (=> d!1859490 (= lt!2310731 e!3629914)))

(declare-fun c!1054333 () Bool)

(assert (=> d!1859490 (= c!1054333 ((_ is Nil!64108) (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))

(assert (=> d!1859490 (= (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) lt!2310731)))

(declare-fun b!5930623 () Bool)

(assert (=> b!5930623 (= e!3629913 (or (not (= (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108) Nil!64108)) (= lt!2310731 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))))))

(declare-fun b!5930622 () Bool)

(declare-fun res!2485026 () Bool)

(assert (=> b!5930622 (=> (not res!2485026) (not e!3629913))))

(assert (=> b!5930622 (= res!2485026 (= (size!40144 lt!2310731) (+ (size!40144 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (size!40144 (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)))))))

(assert (= (and d!1859490 c!1054333) b!5930620))

(assert (= (and d!1859490 (not c!1054333)) b!5930621))

(assert (= (and d!1859490 res!2485027) b!5930622))

(assert (= (and b!5930622 res!2485026) b!5930623))

(declare-fun m!6823488 () Bool)

(assert (=> b!5930621 m!6823488))

(declare-fun m!6823490 () Bool)

(assert (=> d!1859490 m!6823490))

(assert (=> d!1859490 m!6821934))

(assert (=> d!1859490 m!6822254))

(declare-fun m!6823492 () Bool)

(assert (=> d!1859490 m!6823492))

(declare-fun m!6823494 () Bool)

(assert (=> b!5930622 m!6823494))

(assert (=> b!5930622 m!6821934))

(assert (=> b!5930622 m!6822260))

(declare-fun m!6823496 () Bool)

(assert (=> b!5930622 m!6823496))

(assert (=> b!5929285 d!1859490))

(declare-fun d!1859492 () Bool)

(assert (=> d!1859492 (= (++!14074 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) (t!377629 (t!377629 s!2326))) s!2326)))

(declare-fun lt!2310732 () Unit!157225)

(assert (=> d!1859492 (= lt!2310732 (choose!44706 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (h!70556 (t!377629 s!2326)) (t!377629 (t!377629 s!2326)) s!2326))))

(assert (=> d!1859492 (= (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) (t!377629 (t!377629 s!2326)))) s!2326)))

(assert (=> d!1859492 (= (lemmaMoveElementToOtherListKeepsConcatEq!2169 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (h!70556 (t!377629 s!2326)) (t!377629 (t!377629 s!2326)) s!2326) lt!2310732)))

(declare-fun bs!1403272 () Bool)

(assert (= bs!1403272 d!1859492))

(assert (=> bs!1403272 m!6821934))

(assert (=> bs!1403272 m!6822314))

(assert (=> bs!1403272 m!6822314))

(assert (=> bs!1403272 m!6822316))

(assert (=> bs!1403272 m!6821934))

(declare-fun m!6823498 () Bool)

(assert (=> bs!1403272 m!6823498))

(assert (=> bs!1403272 m!6821934))

(declare-fun m!6823500 () Bool)

(assert (=> bs!1403272 m!6823500))

(assert (=> b!5929285 d!1859492))

(declare-fun d!1859494 () Bool)

(declare-fun e!3629917 () Bool)

(assert (=> d!1859494 e!3629917))

(declare-fun res!2485028 () Bool)

(assert (=> d!1859494 (=> res!2485028 e!3629917)))

(declare-fun e!3629918 () Bool)

(assert (=> d!1859494 (= res!2485028 e!3629918)))

(declare-fun res!2485030 () Bool)

(assert (=> d!1859494 (=> (not res!2485030) (not e!3629918))))

(declare-fun lt!2310735 () Option!15868)

(assert (=> d!1859494 (= res!2485030 (isDefined!12571 lt!2310735))))

(declare-fun e!3629916 () Option!15868)

(assert (=> d!1859494 (= lt!2310735 e!3629916)))

(declare-fun c!1054334 () Bool)

(declare-fun e!3629919 () Bool)

(assert (=> d!1859494 (= c!1054334 e!3629919)))

(declare-fun res!2485031 () Bool)

(assert (=> d!1859494 (=> (not res!2485031) (not e!3629919))))

(assert (=> d!1859494 (= res!2485031 (matchR!8160 (regOne!32466 r!7292) (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108))))))

(assert (=> d!1859494 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1859494 (= (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) (t!377629 (t!377629 s!2326)) s!2326) lt!2310735)))

(declare-fun b!5930624 () Bool)

(assert (=> b!5930624 (= e!3629917 (not (isDefined!12571 lt!2310735)))))

(declare-fun b!5930625 () Bool)

(assert (=> b!5930625 (= e!3629916 (Some!15867 (tuple2!65913 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) (t!377629 (t!377629 s!2326)))))))

(declare-fun b!5930626 () Bool)

(declare-fun e!3629915 () Option!15868)

(assert (=> b!5930626 (= e!3629916 e!3629915)))

(declare-fun c!1054335 () Bool)

(assert (=> b!5930626 (= c!1054335 ((_ is Nil!64108) (t!377629 (t!377629 s!2326))))))

(declare-fun b!5930627 () Bool)

(declare-fun res!2485029 () Bool)

(assert (=> b!5930627 (=> (not res!2485029) (not e!3629918))))

(assert (=> b!5930627 (= res!2485029 (matchR!8160 (regTwo!32466 r!7292) (_2!36259 (get!22078 lt!2310735))))))

(declare-fun b!5930628 () Bool)

(assert (=> b!5930628 (= e!3629915 None!15867)))

(declare-fun b!5930629 () Bool)

(declare-fun res!2485032 () Bool)

(assert (=> b!5930629 (=> (not res!2485032) (not e!3629918))))

(assert (=> b!5930629 (= res!2485032 (matchR!8160 (regOne!32466 r!7292) (_1!36259 (get!22078 lt!2310735))))))

(declare-fun b!5930630 () Bool)

(declare-fun lt!2310734 () Unit!157225)

(declare-fun lt!2310733 () Unit!157225)

(assert (=> b!5930630 (= lt!2310734 lt!2310733)))

(assert (=> b!5930630 (= (++!14074 (++!14074 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) (Cons!64108 (h!70556 (t!377629 (t!377629 s!2326))) Nil!64108)) (t!377629 (t!377629 (t!377629 s!2326)))) s!2326)))

(assert (=> b!5930630 (= lt!2310733 (lemmaMoveElementToOtherListKeepsConcatEq!2169 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) (h!70556 (t!377629 (t!377629 s!2326))) (t!377629 (t!377629 (t!377629 s!2326))) s!2326))))

(assert (=> b!5930630 (= e!3629915 (findConcatSeparation!2282 (regOne!32466 r!7292) (regTwo!32466 r!7292) (++!14074 (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (Cons!64108 (h!70556 (t!377629 s!2326)) Nil!64108)) (Cons!64108 (h!70556 (t!377629 (t!377629 s!2326))) Nil!64108)) (t!377629 (t!377629 (t!377629 s!2326))) s!2326))))

(declare-fun b!5930631 () Bool)

(assert (=> b!5930631 (= e!3629919 (matchR!8160 (regTwo!32466 r!7292) (t!377629 (t!377629 s!2326))))))

(declare-fun b!5930632 () Bool)

(assert (=> b!5930632 (= e!3629918 (= (++!14074 (_1!36259 (get!22078 lt!2310735)) (_2!36259 (get!22078 lt!2310735))) s!2326))))

(assert (= (and d!1859494 res!2485031) b!5930631))

(assert (= (and d!1859494 c!1054334) b!5930625))

(assert (= (and d!1859494 (not c!1054334)) b!5930626))

(assert (= (and b!5930626 c!1054335) b!5930628))

(assert (= (and b!5930626 (not c!1054335)) b!5930630))

(assert (= (and d!1859494 res!2485030) b!5930629))

(assert (= (and b!5930629 res!2485032) b!5930627))

(assert (= (and b!5930627 res!2485029) b!5930632))

(assert (= (and d!1859494 (not res!2485028)) b!5930624))

(assert (=> b!5930630 m!6822314))

(declare-fun m!6823502 () Bool)

(assert (=> b!5930630 m!6823502))

(assert (=> b!5930630 m!6823502))

(declare-fun m!6823504 () Bool)

(assert (=> b!5930630 m!6823504))

(assert (=> b!5930630 m!6822314))

(declare-fun m!6823506 () Bool)

(assert (=> b!5930630 m!6823506))

(assert (=> b!5930630 m!6823502))

(declare-fun m!6823508 () Bool)

(assert (=> b!5930630 m!6823508))

(declare-fun m!6823510 () Bool)

(assert (=> b!5930632 m!6823510))

(declare-fun m!6823512 () Bool)

(assert (=> b!5930632 m!6823512))

(assert (=> b!5930629 m!6823510))

(declare-fun m!6823514 () Bool)

(assert (=> b!5930629 m!6823514))

(declare-fun m!6823516 () Bool)

(assert (=> d!1859494 m!6823516))

(assert (=> d!1859494 m!6822314))

(declare-fun m!6823518 () Bool)

(assert (=> d!1859494 m!6823518))

(assert (=> d!1859494 m!6821952))

(assert (=> b!5930624 m!6823516))

(assert (=> b!5930627 m!6823510))

(declare-fun m!6823520 () Bool)

(assert (=> b!5930627 m!6823520))

(declare-fun m!6823522 () Bool)

(assert (=> b!5930631 m!6823522))

(assert (=> b!5929285 d!1859494))

(declare-fun b!5930633 () Bool)

(declare-fun e!3629923 () Bool)

(declare-fun e!3629921 () Bool)

(assert (=> b!5930633 (= e!3629923 e!3629921)))

(declare-fun res!2485034 () Bool)

(assert (=> b!5930633 (=> res!2485034 e!3629921)))

(assert (=> b!5930633 (= res!2485034 ((_ is Star!15977) r!7292))))

(declare-fun b!5930634 () Bool)

(declare-fun e!3629925 () Bool)

(assert (=> b!5930634 (= e!3629921 e!3629925)))

(declare-fun c!1054336 () Bool)

(assert (=> b!5930634 (= c!1054336 ((_ is Union!15977) r!7292))))

(declare-fun b!5930635 () Bool)

(declare-fun e!3629924 () Bool)

(assert (=> b!5930635 (= e!3629924 e!3629923)))

(declare-fun res!2485037 () Bool)

(assert (=> b!5930635 (=> (not res!2485037) (not e!3629923))))

(assert (=> b!5930635 (= res!2485037 (and (not ((_ is EmptyLang!15977) r!7292)) (not ((_ is ElementMatch!15977) r!7292))))))

(declare-fun d!1859496 () Bool)

(declare-fun res!2485033 () Bool)

(assert (=> d!1859496 (=> res!2485033 e!3629924)))

(assert (=> d!1859496 (= res!2485033 ((_ is EmptyExpr!15977) r!7292))))

(assert (=> d!1859496 (= (nullableFct!1944 r!7292) e!3629924)))

(declare-fun b!5930636 () Bool)

(declare-fun e!3629920 () Bool)

(declare-fun call!470841 () Bool)

(assert (=> b!5930636 (= e!3629920 call!470841)))

(declare-fun b!5930637 () Bool)

(declare-fun e!3629922 () Bool)

(assert (=> b!5930637 (= e!3629925 e!3629922)))

(declare-fun res!2485036 () Bool)

(declare-fun call!470842 () Bool)

(assert (=> b!5930637 (= res!2485036 call!470842)))

(assert (=> b!5930637 (=> res!2485036 e!3629922)))

(declare-fun bm!470836 () Bool)

(assert (=> bm!470836 (= call!470842 (nullable!5972 (ite c!1054336 (regOne!32467 r!7292) (regOne!32466 r!7292))))))

(declare-fun b!5930638 () Bool)

(assert (=> b!5930638 (= e!3629925 e!3629920)))

(declare-fun res!2485035 () Bool)

(assert (=> b!5930638 (= res!2485035 call!470842)))

(assert (=> b!5930638 (=> (not res!2485035) (not e!3629920))))

(declare-fun b!5930639 () Bool)

(assert (=> b!5930639 (= e!3629922 call!470841)))

(declare-fun bm!470837 () Bool)

(assert (=> bm!470837 (= call!470841 (nullable!5972 (ite c!1054336 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))

(assert (= (and d!1859496 (not res!2485033)) b!5930635))

(assert (= (and b!5930635 res!2485037) b!5930633))

(assert (= (and b!5930633 (not res!2485034)) b!5930634))

(assert (= (and b!5930634 c!1054336) b!5930637))

(assert (= (and b!5930634 (not c!1054336)) b!5930638))

(assert (= (and b!5930637 (not res!2485036)) b!5930639))

(assert (= (and b!5930638 res!2485035) b!5930636))

(assert (= (or b!5930639 b!5930636) bm!470837))

(assert (= (or b!5930637 b!5930638) bm!470836))

(declare-fun m!6823524 () Bool)

(assert (=> bm!470836 m!6823524))

(declare-fun m!6823526 () Bool)

(assert (=> bm!470837 m!6823526))

(assert (=> d!1859020 d!1859496))

(declare-fun d!1859498 () Bool)

(assert (=> d!1859498 (= (isEmpty!35972 (tail!11580 (_2!36259 (get!22078 lt!2310648)))) ((_ is Nil!64108) (tail!11580 (_2!36259 (get!22078 lt!2310648)))))))

(assert (=> b!5929147 d!1859498))

(declare-fun d!1859500 () Bool)

(assert (=> d!1859500 (= (tail!11580 (_2!36259 (get!22078 lt!2310648))) (t!377629 (_2!36259 (get!22078 lt!2310648))))))

(assert (=> b!5929147 d!1859500))

(assert (=> d!1858980 d!1858712))

(assert (=> d!1858980 d!1858698))

(assert (=> b!5929388 d!1859186))

(declare-fun d!1859502 () Bool)

(declare-fun lt!2310738 () Bool)

(assert (=> d!1859502 (= lt!2310738 (select (content!11812 (t!377628 lt!2310624)) (h!70555 lt!2310624)))))

(declare-fun e!3629931 () Bool)

(assert (=> d!1859502 (= lt!2310738 e!3629931)))

(declare-fun res!2485043 () Bool)

(assert (=> d!1859502 (=> (not res!2485043) (not e!3629931))))

(assert (=> d!1859502 (= res!2485043 ((_ is Cons!64107) (t!377628 lt!2310624)))))

(assert (=> d!1859502 (= (contains!19962 (t!377628 lt!2310624) (h!70555 lt!2310624)) lt!2310738)))

(declare-fun b!5930644 () Bool)

(declare-fun e!3629930 () Bool)

(assert (=> b!5930644 (= e!3629931 e!3629930)))

(declare-fun res!2485042 () Bool)

(assert (=> b!5930644 (=> res!2485042 e!3629930)))

(assert (=> b!5930644 (= res!2485042 (= (h!70555 (t!377628 lt!2310624)) (h!70555 lt!2310624)))))

(declare-fun b!5930645 () Bool)

(assert (=> b!5930645 (= e!3629930 (contains!19962 (t!377628 (t!377628 lt!2310624)) (h!70555 lt!2310624)))))

(assert (= (and d!1859502 res!2485043) b!5930644))

(assert (= (and b!5930644 (not res!2485042)) b!5930645))

(assert (=> d!1859502 m!6822416))

(declare-fun m!6823534 () Bool)

(assert (=> d!1859502 m!6823534))

(declare-fun m!6823536 () Bool)

(assert (=> b!5930645 m!6823536))

(assert (=> b!5929057 d!1859502))

(declare-fun d!1859506 () Bool)

(assert (=> d!1859506 (= ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))) (ite (or c!1054090 c!1054088) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))) (Cons!64106 (ite (or c!1054090 c!1054088) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))

(assert (=> bm!470613 d!1859506))

(assert (=> bm!470600 d!1858836))

(declare-fun d!1859508 () Bool)

(assert (=> d!1859508 (= (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))) (nullableFct!1944 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))

(declare-fun bs!1403285 () Bool)

(assert (= bs!1403285 d!1859508))

(declare-fun m!6823538 () Bool)

(assert (=> bs!1403285 m!6823538))

(assert (=> b!5929427 d!1859508))

(declare-fun d!1859510 () Bool)

(assert (=> d!1859510 (= (nullable!5972 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))) (nullableFct!1944 (reg!16306 (ite c!1053883 (reg!16306 r!7292) (ite c!1053882 (regTwo!32467 r!7292) (regTwo!32466 r!7292))))))))

(declare-fun bs!1403286 () Bool)

(assert (= bs!1403286 d!1859510))

(declare-fun m!6823540 () Bool)

(assert (=> bs!1403286 m!6823540))

(assert (=> b!5929120 d!1859510))

(declare-fun d!1859512 () Bool)

(assert (=> d!1859512 (= (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))) (nullableFct!1944 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))

(declare-fun bs!1403287 () Bool)

(assert (= bs!1403287 d!1859512))

(declare-fun m!6823542 () Bool)

(assert (=> bs!1403287 m!6823542))

(assert (=> b!5929595 d!1859512))

(assert (=> b!5929152 d!1859364))

(assert (=> b!5929554 d!1859026))

(declare-fun bs!1403291 () Bool)

(declare-fun b!5930666 () Bool)

(assert (= bs!1403291 (and b!5930666 d!1858796)))

(declare-fun lambda!323462 () Int)

(assert (=> bs!1403291 (not (= lambda!323462 lambda!323405))))

(declare-fun bs!1403293 () Bool)

(assert (= bs!1403293 (and b!5930666 d!1858800)))

(assert (=> bs!1403293 (not (= lambda!323462 lambda!323411))))

(declare-fun bs!1403295 () Bool)

(assert (= bs!1403295 (and b!5930666 b!5928496)))

(assert (=> bs!1403295 (= (and (= (reg!16306 (regOne!32467 (regOne!32467 r!7292))) (reg!16306 r!7292)) (= (regOne!32467 (regOne!32467 r!7292)) r!7292)) (= lambda!323462 lambda!323370))))

(declare-fun bs!1403296 () Bool)

(assert (= bs!1403296 (and b!5930666 b!5928274)))

(assert (=> bs!1403296 (not (= lambda!323462 lambda!323347))))

(declare-fun bs!1403298 () Bool)

(assert (= bs!1403298 (and b!5930666 b!5929663)))

(assert (=> bs!1403298 (= (and (= (reg!16306 (regOne!32467 (regOne!32467 r!7292))) (reg!16306 (regOne!32467 r!7292))) (= (regOne!32467 (regOne!32467 r!7292)) (regOne!32467 r!7292))) (= lambda!323462 lambda!323446))))

(declare-fun bs!1403300 () Bool)

(assert (= bs!1403300 (and b!5930666 b!5929662)))

(assert (=> bs!1403300 (not (= lambda!323462 lambda!323447))))

(declare-fun bs!1403301 () Bool)

(assert (= bs!1403301 (and b!5930666 b!5929621)))

(assert (=> bs!1403301 (= (and (= (reg!16306 (regOne!32467 (regOne!32467 r!7292))) (reg!16306 (regTwo!32467 r!7292))) (= (regOne!32467 (regOne!32467 r!7292)) (regTwo!32467 r!7292))) (= lambda!323462 lambda!323444))))

(declare-fun bs!1403303 () Bool)

(assert (= bs!1403303 (and b!5930666 b!5928495)))

(assert (=> bs!1403303 (not (= lambda!323462 lambda!323372))))

(declare-fun bs!1403304 () Bool)

(assert (= bs!1403304 (and b!5930666 b!5929620)))

(assert (=> bs!1403304 (not (= lambda!323462 lambda!323445))))

(assert (=> bs!1403296 (not (= lambda!323462 lambda!323346))))

(assert (=> bs!1403293 (not (= lambda!323462 lambda!323410))))

(declare-fun bs!1403307 () Bool)

(assert (= bs!1403307 (and b!5930666 d!1858862)))

(assert (=> bs!1403307 (not (= lambda!323462 lambda!323418))))

(declare-fun bs!1403308 () Bool)

(assert (= bs!1403308 (and b!5930666 d!1859040)))

(assert (=> bs!1403308 (not (= lambda!323462 lambda!323432))))

(assert (=> bs!1403307 (not (= lambda!323462 lambda!323419))))

(assert (=> b!5930666 true))

(assert (=> b!5930666 true))

(declare-fun bs!1403312 () Bool)

(declare-fun b!5930665 () Bool)

(assert (= bs!1403312 (and b!5930665 d!1858796)))

(declare-fun lambda!323463 () Int)

(assert (=> bs!1403312 (not (= lambda!323463 lambda!323405))))

(declare-fun bs!1403313 () Bool)

(assert (= bs!1403313 (and b!5930665 b!5930666)))

(assert (=> bs!1403313 (not (= lambda!323463 lambda!323462))))

(declare-fun bs!1403314 () Bool)

(assert (= bs!1403314 (and b!5930665 d!1858800)))

(assert (=> bs!1403314 (= (and (= (regOne!32466 (regOne!32467 (regOne!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323463 lambda!323411))))

(declare-fun bs!1403315 () Bool)

(assert (= bs!1403315 (and b!5930665 b!5928496)))

(assert (=> bs!1403315 (not (= lambda!323463 lambda!323370))))

(declare-fun bs!1403316 () Bool)

(assert (= bs!1403316 (and b!5930665 b!5928274)))

(assert (=> bs!1403316 (= (and (= (regOne!32466 (regOne!32467 (regOne!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323463 lambda!323347))))

(declare-fun bs!1403317 () Bool)

(assert (= bs!1403317 (and b!5930665 b!5929663)))

(assert (=> bs!1403317 (not (= lambda!323463 lambda!323446))))

(declare-fun bs!1403318 () Bool)

(assert (= bs!1403318 (and b!5930665 b!5929662)))

(assert (=> bs!1403318 (= (and (= (regOne!32466 (regOne!32467 (regOne!32467 r!7292))) (regOne!32466 (regOne!32467 r!7292))) (= (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))) (regTwo!32466 (regOne!32467 r!7292)))) (= lambda!323463 lambda!323447))))

(declare-fun bs!1403319 () Bool)

(assert (= bs!1403319 (and b!5930665 b!5929621)))

(assert (=> bs!1403319 (not (= lambda!323463 lambda!323444))))

(declare-fun bs!1403320 () Bool)

(assert (= bs!1403320 (and b!5930665 b!5928495)))

(assert (=> bs!1403320 (= (and (= (regOne!32466 (regOne!32467 (regOne!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323463 lambda!323372))))

(declare-fun bs!1403321 () Bool)

(assert (= bs!1403321 (and b!5930665 b!5929620)))

(assert (=> bs!1403321 (= (and (= (regOne!32466 (regOne!32467 (regOne!32467 r!7292))) (regOne!32466 (regTwo!32467 r!7292))) (= (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))) (regTwo!32466 (regTwo!32467 r!7292)))) (= lambda!323463 lambda!323445))))

(assert (=> bs!1403316 (not (= lambda!323463 lambda!323346))))

(assert (=> bs!1403314 (not (= lambda!323463 lambda!323410))))

(declare-fun bs!1403322 () Bool)

(assert (= bs!1403322 (and b!5930665 d!1858862)))

(assert (=> bs!1403322 (not (= lambda!323463 lambda!323418))))

(declare-fun bs!1403323 () Bool)

(assert (= bs!1403323 (and b!5930665 d!1859040)))

(assert (=> bs!1403323 (not (= lambda!323463 lambda!323432))))

(assert (=> bs!1403322 (= (and (= (regOne!32466 (regOne!32467 (regOne!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323463 lambda!323419))))

(assert (=> b!5930665 true))

(assert (=> b!5930665 true))

(declare-fun b!5930657 () Bool)

(declare-fun c!1054344 () Bool)

(assert (=> b!5930657 (= c!1054344 ((_ is Union!15977) (regOne!32467 (regOne!32467 r!7292))))))

(declare-fun e!3629942 () Bool)

(declare-fun e!3629939 () Bool)

(assert (=> b!5930657 (= e!3629942 e!3629939)))

(declare-fun d!1859514 () Bool)

(declare-fun c!1054343 () Bool)

(assert (=> d!1859514 (= c!1054343 ((_ is EmptyExpr!15977) (regOne!32467 (regOne!32467 r!7292))))))

(declare-fun e!3629943 () Bool)

(assert (=> d!1859514 (= (matchRSpec!3078 (regOne!32467 (regOne!32467 r!7292)) s!2326) e!3629943)))

(declare-fun b!5930658 () Bool)

(declare-fun c!1054342 () Bool)

(assert (=> b!5930658 (= c!1054342 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32467 r!7292))))))

(declare-fun e!3629944 () Bool)

(assert (=> b!5930658 (= e!3629944 e!3629942)))

(declare-fun b!5930659 () Bool)

(declare-fun call!470846 () Bool)

(assert (=> b!5930659 (= e!3629943 call!470846)))

(declare-fun b!5930660 () Bool)

(declare-fun e!3629941 () Bool)

(assert (=> b!5930660 (= e!3629941 (matchRSpec!3078 (regTwo!32467 (regOne!32467 (regOne!32467 r!7292))) s!2326))))

(declare-fun b!5930661 () Bool)

(declare-fun res!2485047 () Bool)

(declare-fun e!3629940 () Bool)

(assert (=> b!5930661 (=> res!2485047 e!3629940)))

(assert (=> b!5930661 (= res!2485047 call!470846)))

(declare-fun e!3629945 () Bool)

(assert (=> b!5930661 (= e!3629945 e!3629940)))

(declare-fun b!5930662 () Bool)

(assert (=> b!5930662 (= e!3629939 e!3629945)))

(declare-fun c!1054341 () Bool)

(assert (=> b!5930662 (= c!1054341 ((_ is Star!15977) (regOne!32467 (regOne!32467 r!7292))))))

(declare-fun b!5930663 () Bool)

(assert (=> b!5930663 (= e!3629943 e!3629944)))

(declare-fun res!2485049 () Bool)

(assert (=> b!5930663 (= res!2485049 (not ((_ is EmptyLang!15977) (regOne!32467 (regOne!32467 r!7292)))))))

(assert (=> b!5930663 (=> (not res!2485049) (not e!3629944))))

(declare-fun b!5930664 () Bool)

(assert (=> b!5930664 (= e!3629939 e!3629941)))

(declare-fun res!2485048 () Bool)

(assert (=> b!5930664 (= res!2485048 (matchRSpec!3078 (regOne!32467 (regOne!32467 (regOne!32467 r!7292))) s!2326))))

(assert (=> b!5930664 (=> res!2485048 e!3629941)))

(declare-fun call!470845 () Bool)

(declare-fun bm!470840 () Bool)

(assert (=> bm!470840 (= call!470845 (Exists!3047 (ite c!1054341 lambda!323462 lambda!323463)))))

(assert (=> b!5930665 (= e!3629945 call!470845)))

(assert (=> b!5930666 (= e!3629940 call!470845)))

(declare-fun b!5930667 () Bool)

(assert (=> b!5930667 (= e!3629942 (= s!2326 (Cons!64108 (c!1053727 (regOne!32467 (regOne!32467 r!7292))) Nil!64108)))))

(declare-fun bm!470841 () Bool)

(assert (=> bm!470841 (= call!470846 (isEmpty!35972 s!2326))))

(assert (= (and d!1859514 c!1054343) b!5930659))

(assert (= (and d!1859514 (not c!1054343)) b!5930663))

(assert (= (and b!5930663 res!2485049) b!5930658))

(assert (= (and b!5930658 c!1054342) b!5930667))

(assert (= (and b!5930658 (not c!1054342)) b!5930657))

(assert (= (and b!5930657 c!1054344) b!5930664))

(assert (= (and b!5930657 (not c!1054344)) b!5930662))

(assert (= (and b!5930664 (not res!2485048)) b!5930660))

(assert (= (and b!5930662 c!1054341) b!5930661))

(assert (= (and b!5930662 (not c!1054341)) b!5930665))

(assert (= (and b!5930661 (not res!2485047)) b!5930666))

(assert (= (or b!5930666 b!5930665) bm!470840))

(assert (= (or b!5930659 b!5930661) bm!470841))

(declare-fun m!6823544 () Bool)

(assert (=> b!5930660 m!6823544))

(declare-fun m!6823546 () Bool)

(assert (=> b!5930664 m!6823546))

(declare-fun m!6823548 () Bool)

(assert (=> bm!470840 m!6823548))

(assert (=> bm!470841 m!6821714))

(assert (=> b!5929661 d!1859514))

(declare-fun d!1859516 () Bool)

(declare-fun c!1054345 () Bool)

(assert (=> d!1859516 (= c!1054345 ((_ is Nil!64107) (t!377628 lt!2310624)))))

(declare-fun e!3629946 () (InoxSet Context!10722))

(assert (=> d!1859516 (= (content!11812 (t!377628 lt!2310624)) e!3629946)))

(declare-fun b!5930668 () Bool)

(assert (=> b!5930668 (= e!3629946 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930669 () Bool)

(assert (=> b!5930669 (= e!3629946 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) (h!70555 (t!377628 lt!2310624)) true) (content!11812 (t!377628 (t!377628 lt!2310624)))))))

(assert (= (and d!1859516 c!1054345) b!5930668))

(assert (= (and d!1859516 (not c!1054345)) b!5930669))

(declare-fun m!6823550 () Bool)

(assert (=> b!5930669 m!6823550))

(declare-fun m!6823552 () Bool)

(assert (=> b!5930669 m!6823552))

(assert (=> b!5929347 d!1859516))

(declare-fun bs!1403334 () Bool)

(declare-fun b!5930679 () Bool)

(assert (= bs!1403334 (and b!5930679 d!1858796)))

(declare-fun lambda!323465 () Int)

(assert (=> bs!1403334 (not (= lambda!323465 lambda!323405))))

(declare-fun bs!1403335 () Bool)

(assert (= bs!1403335 (and b!5930679 b!5930666)))

(assert (=> bs!1403335 (= (and (= (reg!16306 (regTwo!32467 (regTwo!32467 r!7292))) (reg!16306 (regOne!32467 (regOne!32467 r!7292)))) (= (regTwo!32467 (regTwo!32467 r!7292)) (regOne!32467 (regOne!32467 r!7292)))) (= lambda!323465 lambda!323462))))

(declare-fun bs!1403337 () Bool)

(assert (= bs!1403337 (and b!5930679 b!5930665)))

(assert (=> bs!1403337 (not (= lambda!323465 lambda!323463))))

(declare-fun bs!1403339 () Bool)

(assert (= bs!1403339 (and b!5930679 d!1858800)))

(assert (=> bs!1403339 (not (= lambda!323465 lambda!323411))))

(declare-fun bs!1403340 () Bool)

(assert (= bs!1403340 (and b!5930679 b!5928496)))

(assert (=> bs!1403340 (= (and (= (reg!16306 (regTwo!32467 (regTwo!32467 r!7292))) (reg!16306 r!7292)) (= (regTwo!32467 (regTwo!32467 r!7292)) r!7292)) (= lambda!323465 lambda!323370))))

(declare-fun bs!1403342 () Bool)

(assert (= bs!1403342 (and b!5930679 b!5928274)))

(assert (=> bs!1403342 (not (= lambda!323465 lambda!323347))))

(declare-fun bs!1403343 () Bool)

(assert (= bs!1403343 (and b!5930679 b!5929663)))

(assert (=> bs!1403343 (= (and (= (reg!16306 (regTwo!32467 (regTwo!32467 r!7292))) (reg!16306 (regOne!32467 r!7292))) (= (regTwo!32467 (regTwo!32467 r!7292)) (regOne!32467 r!7292))) (= lambda!323465 lambda!323446))))

(declare-fun bs!1403344 () Bool)

(assert (= bs!1403344 (and b!5930679 b!5929662)))

(assert (=> bs!1403344 (not (= lambda!323465 lambda!323447))))

(declare-fun bs!1403345 () Bool)

(assert (= bs!1403345 (and b!5930679 b!5929621)))

(assert (=> bs!1403345 (= (and (= (reg!16306 (regTwo!32467 (regTwo!32467 r!7292))) (reg!16306 (regTwo!32467 r!7292))) (= (regTwo!32467 (regTwo!32467 r!7292)) (regTwo!32467 r!7292))) (= lambda!323465 lambda!323444))))

(declare-fun bs!1403347 () Bool)

(assert (= bs!1403347 (and b!5930679 b!5928495)))

(assert (=> bs!1403347 (not (= lambda!323465 lambda!323372))))

(declare-fun bs!1403348 () Bool)

(assert (= bs!1403348 (and b!5930679 b!5929620)))

(assert (=> bs!1403348 (not (= lambda!323465 lambda!323445))))

(assert (=> bs!1403342 (not (= lambda!323465 lambda!323346))))

(assert (=> bs!1403339 (not (= lambda!323465 lambda!323410))))

(declare-fun bs!1403349 () Bool)

(assert (= bs!1403349 (and b!5930679 d!1858862)))

(assert (=> bs!1403349 (not (= lambda!323465 lambda!323418))))

(declare-fun bs!1403350 () Bool)

(assert (= bs!1403350 (and b!5930679 d!1859040)))

(assert (=> bs!1403350 (not (= lambda!323465 lambda!323432))))

(assert (=> bs!1403349 (not (= lambda!323465 lambda!323419))))

(assert (=> b!5930679 true))

(assert (=> b!5930679 true))

(declare-fun bs!1403351 () Bool)

(declare-fun b!5930678 () Bool)

(assert (= bs!1403351 (and b!5930678 d!1858796)))

(declare-fun lambda!323466 () Int)

(assert (=> bs!1403351 (not (= lambda!323466 lambda!323405))))

(declare-fun bs!1403352 () Bool)

(assert (= bs!1403352 (and b!5930678 b!5930666)))

(assert (=> bs!1403352 (not (= lambda!323466 lambda!323462))))

(declare-fun bs!1403353 () Bool)

(assert (= bs!1403353 (and b!5930678 b!5930665)))

(assert (=> bs!1403353 (= (and (= (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regOne!32466 (regOne!32467 (regOne!32467 r!7292)))) (= (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))))) (= lambda!323466 lambda!323463))))

(declare-fun bs!1403354 () Bool)

(assert (= bs!1403354 (and b!5930678 b!5928496)))

(assert (=> bs!1403354 (not (= lambda!323466 lambda!323370))))

(declare-fun bs!1403355 () Bool)

(assert (= bs!1403355 (and b!5930678 b!5928274)))

(assert (=> bs!1403355 (= (and (= (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323466 lambda!323347))))

(declare-fun bs!1403357 () Bool)

(assert (= bs!1403357 (and b!5930678 b!5929663)))

(assert (=> bs!1403357 (not (= lambda!323466 lambda!323446))))

(declare-fun bs!1403358 () Bool)

(assert (= bs!1403358 (and b!5930678 b!5929662)))

(assert (=> bs!1403358 (= (and (= (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regOne!32466 (regOne!32467 r!7292))) (= (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regTwo!32466 (regOne!32467 r!7292)))) (= lambda!323466 lambda!323447))))

(declare-fun bs!1403359 () Bool)

(assert (= bs!1403359 (and b!5930678 b!5929621)))

(assert (=> bs!1403359 (not (= lambda!323466 lambda!323444))))

(declare-fun bs!1403360 () Bool)

(assert (= bs!1403360 (and b!5930678 b!5928495)))

(assert (=> bs!1403360 (= (and (= (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323466 lambda!323372))))

(declare-fun bs!1403361 () Bool)

(assert (= bs!1403361 (and b!5930678 d!1858800)))

(assert (=> bs!1403361 (= (and (= (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323466 lambda!323411))))

(declare-fun bs!1403362 () Bool)

(assert (= bs!1403362 (and b!5930678 b!5930679)))

(assert (=> bs!1403362 (not (= lambda!323466 lambda!323465))))

(declare-fun bs!1403363 () Bool)

(assert (= bs!1403363 (and b!5930678 b!5929620)))

(assert (=> bs!1403363 (= (and (= (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regOne!32466 (regTwo!32467 r!7292))) (= (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regTwo!32466 (regTwo!32467 r!7292)))) (= lambda!323466 lambda!323445))))

(assert (=> bs!1403355 (not (= lambda!323466 lambda!323346))))

(assert (=> bs!1403361 (not (= lambda!323466 lambda!323410))))

(declare-fun bs!1403364 () Bool)

(assert (= bs!1403364 (and b!5930678 d!1858862)))

(assert (=> bs!1403364 (not (= lambda!323466 lambda!323418))))

(declare-fun bs!1403365 () Bool)

(assert (= bs!1403365 (and b!5930678 d!1859040)))

(assert (=> bs!1403365 (not (= lambda!323466 lambda!323432))))

(assert (=> bs!1403364 (= (and (= (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323466 lambda!323419))))

(assert (=> b!5930678 true))

(assert (=> b!5930678 true))

(declare-fun b!5930670 () Bool)

(declare-fun c!1054349 () Bool)

(assert (=> b!5930670 (= c!1054349 ((_ is Union!15977) (regTwo!32467 (regTwo!32467 r!7292))))))

(declare-fun e!3629950 () Bool)

(declare-fun e!3629947 () Bool)

(assert (=> b!5930670 (= e!3629950 e!3629947)))

(declare-fun d!1859518 () Bool)

(declare-fun c!1054348 () Bool)

(assert (=> d!1859518 (= c!1054348 ((_ is EmptyExpr!15977) (regTwo!32467 (regTwo!32467 r!7292))))))

(declare-fun e!3629951 () Bool)

(assert (=> d!1859518 (= (matchRSpec!3078 (regTwo!32467 (regTwo!32467 r!7292)) s!2326) e!3629951)))

(declare-fun b!5930671 () Bool)

(declare-fun c!1054347 () Bool)

(assert (=> b!5930671 (= c!1054347 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32467 r!7292))))))

(declare-fun e!3629952 () Bool)

(assert (=> b!5930671 (= e!3629952 e!3629950)))

(declare-fun b!5930672 () Bool)

(declare-fun call!470848 () Bool)

(assert (=> b!5930672 (= e!3629951 call!470848)))

(declare-fun b!5930673 () Bool)

(declare-fun e!3629949 () Bool)

(assert (=> b!5930673 (= e!3629949 (matchRSpec!3078 (regTwo!32467 (regTwo!32467 (regTwo!32467 r!7292))) s!2326))))

(declare-fun b!5930674 () Bool)

(declare-fun res!2485050 () Bool)

(declare-fun e!3629948 () Bool)

(assert (=> b!5930674 (=> res!2485050 e!3629948)))

(assert (=> b!5930674 (= res!2485050 call!470848)))

(declare-fun e!3629953 () Bool)

(assert (=> b!5930674 (= e!3629953 e!3629948)))

(declare-fun b!5930675 () Bool)

(assert (=> b!5930675 (= e!3629947 e!3629953)))

(declare-fun c!1054346 () Bool)

(assert (=> b!5930675 (= c!1054346 ((_ is Star!15977) (regTwo!32467 (regTwo!32467 r!7292))))))

(declare-fun b!5930676 () Bool)

(assert (=> b!5930676 (= e!3629951 e!3629952)))

(declare-fun res!2485052 () Bool)

(assert (=> b!5930676 (= res!2485052 (not ((_ is EmptyLang!15977) (regTwo!32467 (regTwo!32467 r!7292)))))))

(assert (=> b!5930676 (=> (not res!2485052) (not e!3629952))))

(declare-fun b!5930677 () Bool)

(assert (=> b!5930677 (= e!3629947 e!3629949)))

(declare-fun res!2485051 () Bool)

(assert (=> b!5930677 (= res!2485051 (matchRSpec!3078 (regOne!32467 (regTwo!32467 (regTwo!32467 r!7292))) s!2326))))

(assert (=> b!5930677 (=> res!2485051 e!3629949)))

(declare-fun bm!470842 () Bool)

(declare-fun call!470847 () Bool)

(assert (=> bm!470842 (= call!470847 (Exists!3047 (ite c!1054346 lambda!323465 lambda!323466)))))

(assert (=> b!5930678 (= e!3629953 call!470847)))

(assert (=> b!5930679 (= e!3629948 call!470847)))

(declare-fun b!5930680 () Bool)

(assert (=> b!5930680 (= e!3629950 (= s!2326 (Cons!64108 (c!1053727 (regTwo!32467 (regTwo!32467 r!7292))) Nil!64108)))))

(declare-fun bm!470843 () Bool)

(assert (=> bm!470843 (= call!470848 (isEmpty!35972 s!2326))))

(assert (= (and d!1859518 c!1054348) b!5930672))

(assert (= (and d!1859518 (not c!1054348)) b!5930676))

(assert (= (and b!5930676 res!2485052) b!5930671))

(assert (= (and b!5930671 c!1054347) b!5930680))

(assert (= (and b!5930671 (not c!1054347)) b!5930670))

(assert (= (and b!5930670 c!1054349) b!5930677))

(assert (= (and b!5930670 (not c!1054349)) b!5930675))

(assert (= (and b!5930677 (not res!2485051)) b!5930673))

(assert (= (and b!5930675 c!1054346) b!5930674))

(assert (= (and b!5930675 (not c!1054346)) b!5930678))

(assert (= (and b!5930674 (not res!2485050)) b!5930679))

(assert (= (or b!5930679 b!5930678) bm!470842))

(assert (= (or b!5930672 b!5930674) bm!470843))

(declare-fun m!6823562 () Bool)

(assert (=> b!5930673 m!6823562))

(declare-fun m!6823564 () Bool)

(assert (=> b!5930677 m!6823564))

(declare-fun m!6823568 () Bool)

(assert (=> bm!470842 m!6823568))

(assert (=> bm!470843 m!6821714))

(assert (=> b!5929615 d!1859518))

(declare-fun bm!470845 () Bool)

(declare-fun call!470853 () (InoxSet Context!10722))

(declare-fun call!470850 () (InoxSet Context!10722))

(assert (=> bm!470845 (= call!470853 call!470850)))

(declare-fun c!1054356 () Bool)

(declare-fun d!1859524 () Bool)

(assert (=> d!1859524 (= c!1054356 (and ((_ is ElementMatch!15977) (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) (= (c!1053727 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) (h!70556 s!2326))))))

(declare-fun e!3629965 () (InoxSet Context!10722))

(assert (=> d!1859524 (= (derivationStepZipperDown!1227 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))) (ite c!1054000 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470555)) (h!70556 s!2326)) e!3629965)))

(declare-fun bm!470846 () Bool)

(declare-fun call!470852 () (InoxSet Context!10722))

(assert (=> bm!470846 (= call!470852 call!470853)))

(declare-fun b!5930695 () Bool)

(declare-fun e!3629963 () (InoxSet Context!10722))

(assert (=> b!5930695 (= e!3629963 call!470852)))

(declare-fun b!5930696 () Bool)

(declare-fun e!3629962 () (InoxSet Context!10722))

(declare-fun e!3629961 () (InoxSet Context!10722))

(assert (=> b!5930696 (= e!3629962 e!3629961)))

(declare-fun c!1054353 () Bool)

(assert (=> b!5930696 (= c!1054353 ((_ is Concat!24822) (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))

(declare-fun b!5930697 () Bool)

(declare-fun e!3629966 () (InoxSet Context!10722))

(assert (=> b!5930697 (= e!3629965 e!3629966)))

(declare-fun c!1054354 () Bool)

(assert (=> b!5930697 (= c!1054354 ((_ is Union!15977) (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))

(declare-fun b!5930698 () Bool)

(declare-fun e!3629964 () Bool)

(assert (=> b!5930698 (= e!3629964 (nullable!5972 (regOne!32466 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))))))))

(declare-fun bm!470847 () Bool)

(declare-fun call!470851 () List!64230)

(declare-fun call!470855 () List!64230)

(assert (=> bm!470847 (= call!470851 call!470855)))

(declare-fun b!5930699 () Bool)

(declare-fun call!470854 () (InoxSet Context!10722))

(assert (=> b!5930699 (= e!3629962 ((_ map or) call!470854 call!470853))))

(declare-fun c!1054355 () Bool)

(declare-fun bm!470848 () Bool)

(assert (=> bm!470848 (= call!470855 ($colon$colon!1864 (exprs!5861 (ite c!1054000 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470555))) (ite (or c!1054355 c!1054353) (regTwo!32466 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))))))))

(declare-fun b!5930700 () Bool)

(assert (=> b!5930700 (= e!3629963 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930701 () Bool)

(assert (=> b!5930701 (= e!3629961 call!470852)))

(declare-fun b!5930702 () Bool)

(assert (=> b!5930702 (= e!3629965 (store ((as const (Array Context!10722 Bool)) false) (ite c!1054000 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470555)) true))))

(declare-fun bm!470849 () Bool)

(assert (=> bm!470849 (= call!470854 (derivationStepZipperDown!1227 (ite c!1054354 (regOne!32467 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) (regOne!32466 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))))) (ite c!1054354 (ite c!1054000 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470555)) (Context!10723 call!470855)) (h!70556 s!2326)))))

(declare-fun bm!470850 () Bool)

(assert (=> bm!470850 (= call!470850 (derivationStepZipperDown!1227 (ite c!1054354 (regTwo!32467 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) (ite c!1054355 (regTwo!32466 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) (ite c!1054353 (regOne!32466 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) (reg!16306 (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343))))))))) (ite (or c!1054354 c!1054355) (ite c!1054000 (Context!10723 (t!377627 (exprs!5861 (h!70555 zl!343)))) (Context!10723 call!470555)) (Context!10723 call!470851)) (h!70556 s!2326)))))

(declare-fun b!5930703 () Bool)

(assert (=> b!5930703 (= c!1054355 e!3629964)))

(declare-fun res!2485061 () Bool)

(assert (=> b!5930703 (=> (not res!2485061) (not e!3629964))))

(assert (=> b!5930703 (= res!2485061 ((_ is Concat!24822) (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))

(assert (=> b!5930703 (= e!3629966 e!3629962)))

(declare-fun b!5930704 () Bool)

(assert (=> b!5930704 (= e!3629966 ((_ map or) call!470854 call!470850))))

(declare-fun b!5930705 () Bool)

(declare-fun c!1054357 () Bool)

(assert (=> b!5930705 (= c!1054357 ((_ is Star!15977) (ite c!1054000 (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))))))

(assert (=> b!5930705 (= e!3629961 e!3629963)))

(assert (= (and d!1859524 c!1054356) b!5930702))

(assert (= (and d!1859524 (not c!1054356)) b!5930697))

(assert (= (and b!5930697 c!1054354) b!5930704))

(assert (= (and b!5930697 (not c!1054354)) b!5930703))

(assert (= (and b!5930703 res!2485061) b!5930698))

(assert (= (and b!5930703 c!1054355) b!5930699))

(assert (= (and b!5930703 (not c!1054355)) b!5930696))

(assert (= (and b!5930696 c!1054353) b!5930701))

(assert (= (and b!5930696 (not c!1054353)) b!5930705))

(assert (= (and b!5930705 c!1054357) b!5930695))

(assert (= (and b!5930705 (not c!1054357)) b!5930700))

(assert (= (or b!5930701 b!5930695) bm!470847))

(assert (= (or b!5930701 b!5930695) bm!470846))

(assert (= (or b!5930699 bm!470847) bm!470848))

(assert (= (or b!5930699 bm!470846) bm!470845))

(assert (= (or b!5930704 bm!470845) bm!470850))

(assert (= (or b!5930704 b!5930699) bm!470849))

(declare-fun m!6823582 () Bool)

(assert (=> b!5930702 m!6823582))

(declare-fun m!6823584 () Bool)

(assert (=> bm!470848 m!6823584))

(declare-fun m!6823586 () Bool)

(assert (=> bm!470850 m!6823586))

(declare-fun m!6823588 () Bool)

(assert (=> bm!470849 m!6823588))

(declare-fun m!6823590 () Bool)

(assert (=> b!5930698 m!6823590))

(assert (=> bm!470549 d!1859524))

(assert (=> d!1858968 d!1859340))

(declare-fun b!5930717 () Bool)

(declare-fun e!3629979 () Bool)

(assert (=> b!5930717 (= e!3629979 (= (head!12495 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (c!1053727 (regOne!32466 r!7292))))))

(declare-fun b!5930718 () Bool)

(declare-fun e!3629975 () Bool)

(assert (=> b!5930718 (= e!3629975 (matchR!8160 (derivativeStep!4708 (regOne!32466 r!7292) (head!12495 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))) (tail!11580 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))))))

(declare-fun b!5930719 () Bool)

(declare-fun e!3629978 () Bool)

(declare-fun lt!2310740 () Bool)

(assert (=> b!5930719 (= e!3629978 (not lt!2310740))))

(declare-fun b!5930720 () Bool)

(declare-fun e!3629974 () Bool)

(declare-fun e!3629976 () Bool)

(assert (=> b!5930720 (= e!3629974 e!3629976)))

(declare-fun res!2485063 () Bool)

(assert (=> b!5930720 (=> res!2485063 e!3629976)))

(declare-fun call!470862 () Bool)

(assert (=> b!5930720 (= res!2485063 call!470862)))

(declare-fun b!5930721 () Bool)

(declare-fun e!3629973 () Bool)

(assert (=> b!5930721 (= e!3629973 (= lt!2310740 call!470862))))

(declare-fun b!5930722 () Bool)

(declare-fun res!2485069 () Bool)

(assert (=> b!5930722 (=> (not res!2485069) (not e!3629979))))

(assert (=> b!5930722 (= res!2485069 (not call!470862))))

(declare-fun bm!470857 () Bool)

(assert (=> bm!470857 (= call!470862 (isEmpty!35972 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))

(declare-fun b!5930723 () Bool)

(assert (=> b!5930723 (= e!3629973 e!3629978)))

(declare-fun c!1054364 () Bool)

(assert (=> b!5930723 (= c!1054364 ((_ is EmptyLang!15977) (regOne!32466 r!7292)))))

(declare-fun b!5930724 () Bool)

(declare-fun res!2485070 () Bool)

(assert (=> b!5930724 (=> res!2485070 e!3629976)))

(assert (=> b!5930724 (= res!2485070 (not (isEmpty!35972 (tail!11580 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))))

(declare-fun b!5930725 () Bool)

(declare-fun res!2485067 () Bool)

(assert (=> b!5930725 (=> (not res!2485067) (not e!3629979))))

(assert (=> b!5930725 (= res!2485067 (isEmpty!35972 (tail!11580 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)))))))

(declare-fun d!1859534 () Bool)

(assert (=> d!1859534 e!3629973))

(declare-fun c!1054365 () Bool)

(assert (=> d!1859534 (= c!1054365 ((_ is EmptyExpr!15977) (regOne!32466 r!7292)))))

(assert (=> d!1859534 (= lt!2310740 e!3629975)))

(declare-fun c!1054363 () Bool)

(assert (=> d!1859534 (= c!1054363 (isEmpty!35972 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))

(assert (=> d!1859534 (validRegex!7713 (regOne!32466 r!7292))))

(assert (=> d!1859534 (= (matchR!8160 (regOne!32466 r!7292) (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) lt!2310740)))

(declare-fun b!5930726 () Bool)

(declare-fun res!2485064 () Bool)

(declare-fun e!3629977 () Bool)

(assert (=> b!5930726 (=> res!2485064 e!3629977)))

(assert (=> b!5930726 (= res!2485064 (not ((_ is ElementMatch!15977) (regOne!32466 r!7292))))))

(assert (=> b!5930726 (= e!3629978 e!3629977)))

(declare-fun b!5930727 () Bool)

(assert (=> b!5930727 (= e!3629976 (not (= (head!12495 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) (c!1053727 (regOne!32466 r!7292)))))))

(declare-fun b!5930728 () Bool)

(assert (=> b!5930728 (= e!3629977 e!3629974)))

(declare-fun res!2485066 () Bool)

(assert (=> b!5930728 (=> (not res!2485066) (not e!3629974))))

(assert (=> b!5930728 (= res!2485066 (not lt!2310740))))

(declare-fun b!5930729 () Bool)

(assert (=> b!5930729 (= e!3629975 (nullable!5972 (regOne!32466 r!7292)))))

(declare-fun b!5930730 () Bool)

(declare-fun res!2485068 () Bool)

(assert (=> b!5930730 (=> res!2485068 e!3629977)))

(assert (=> b!5930730 (= res!2485068 e!3629979)))

(declare-fun res!2485065 () Bool)

(assert (=> b!5930730 (=> (not res!2485065) (not e!3629979))))

(assert (=> b!5930730 (= res!2485065 lt!2310740)))

(assert (= (and d!1859534 c!1054363) b!5930729))

(assert (= (and d!1859534 (not c!1054363)) b!5930718))

(assert (= (and d!1859534 c!1054365) b!5930721))

(assert (= (and d!1859534 (not c!1054365)) b!5930723))

(assert (= (and b!5930723 c!1054364) b!5930719))

(assert (= (and b!5930723 (not c!1054364)) b!5930726))

(assert (= (and b!5930726 (not res!2485064)) b!5930730))

(assert (= (and b!5930730 res!2485065) b!5930722))

(assert (= (and b!5930722 res!2485069) b!5930725))

(assert (= (and b!5930725 res!2485067) b!5930717))

(assert (= (and b!5930730 (not res!2485068)) b!5930728))

(assert (= (and b!5930728 res!2485066) b!5930720))

(assert (= (and b!5930720 (not res!2485063)) b!5930724))

(assert (= (and b!5930724 (not res!2485070)) b!5930727))

(assert (= (or b!5930721 b!5930720 b!5930722) bm!470857))

(assert (=> b!5930724 m!6821934))

(declare-fun m!6823592 () Bool)

(assert (=> b!5930724 m!6823592))

(assert (=> b!5930724 m!6823592))

(declare-fun m!6823594 () Bool)

(assert (=> b!5930724 m!6823594))

(assert (=> b!5930718 m!6821934))

(declare-fun m!6823596 () Bool)

(assert (=> b!5930718 m!6823596))

(assert (=> b!5930718 m!6823596))

(declare-fun m!6823598 () Bool)

(assert (=> b!5930718 m!6823598))

(assert (=> b!5930718 m!6821934))

(assert (=> b!5930718 m!6823592))

(assert (=> b!5930718 m!6823598))

(assert (=> b!5930718 m!6823592))

(declare-fun m!6823600 () Bool)

(assert (=> b!5930718 m!6823600))

(assert (=> d!1859534 m!6821934))

(declare-fun m!6823602 () Bool)

(assert (=> d!1859534 m!6823602))

(assert (=> d!1859534 m!6821952))

(assert (=> b!5930725 m!6821934))

(assert (=> b!5930725 m!6823592))

(assert (=> b!5930725 m!6823592))

(assert (=> b!5930725 m!6823594))

(assert (=> b!5930729 m!6821828))

(assert (=> bm!470857 m!6821934))

(assert (=> bm!470857 m!6823602))

(assert (=> b!5930717 m!6821934))

(assert (=> b!5930717 m!6823596))

(assert (=> b!5930727 m!6821934))

(assert (=> b!5930727 m!6823596))

(assert (=> d!1858968 d!1859534))

(assert (=> d!1858968 d!1858872))

(declare-fun d!1859536 () Bool)

(assert (=> d!1859536 (= ($colon$colon!1864 (exprs!5861 (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469))) (ite (or c!1053956 c!1053954) (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))) (Cons!64106 (ite (or c!1053956 c!1053954) (regTwo!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (exprs!5861 (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)))))))

(assert (=> bm!470523 d!1859536))

(declare-fun d!1859538 () Bool)

(declare-fun res!2485071 () Bool)

(declare-fun e!3629980 () Bool)

(assert (=> d!1859538 (=> res!2485071 e!3629980)))

(assert (=> d!1859538 (= res!2485071 ((_ is Nil!64106) (exprs!5861 (h!70555 (t!377628 zl!343)))))))

(assert (=> d!1859538 (= (forall!15060 (exprs!5861 (h!70555 (t!377628 zl!343))) lambda!323448) e!3629980)))

(declare-fun b!5930731 () Bool)

(declare-fun e!3629981 () Bool)

(assert (=> b!5930731 (= e!3629980 e!3629981)))

(declare-fun res!2485072 () Bool)

(assert (=> b!5930731 (=> (not res!2485072) (not e!3629981))))

(assert (=> b!5930731 (= res!2485072 (dynLambda!25069 lambda!323448 (h!70554 (exprs!5861 (h!70555 (t!377628 zl!343))))))))

(declare-fun b!5930732 () Bool)

(assert (=> b!5930732 (= e!3629981 (forall!15060 (t!377627 (exprs!5861 (h!70555 (t!377628 zl!343)))) lambda!323448))))

(assert (= (and d!1859538 (not res!2485071)) b!5930731))

(assert (= (and b!5930731 res!2485072) b!5930732))

(declare-fun b_lambda!222745 () Bool)

(assert (=> (not b_lambda!222745) (not b!5930731)))

(declare-fun m!6823606 () Bool)

(assert (=> b!5930731 m!6823606))

(declare-fun m!6823608 () Bool)

(assert (=> b!5930732 m!6823608))

(assert (=> d!1859132 d!1859538))

(declare-fun d!1859540 () Bool)

(assert (=> d!1859540 true))

(assert (=> d!1859540 true))

(declare-fun res!2485073 () Bool)

(assert (=> d!1859540 (= (choose!44703 lambda!323410) res!2485073)))

(assert (=> d!1858856 d!1859540))

(assert (=> b!5929550 d!1859438))

(assert (=> b!5929550 d!1859214))

(declare-fun bs!1403367 () Bool)

(declare-fun b!5930742 () Bool)

(assert (= bs!1403367 (and b!5930742 d!1858796)))

(declare-fun lambda!323467 () Int)

(assert (=> bs!1403367 (not (= lambda!323467 lambda!323405))))

(declare-fun bs!1403368 () Bool)

(assert (= bs!1403368 (and b!5930742 b!5930666)))

(assert (=> bs!1403368 (= (and (= (reg!16306 (regTwo!32467 (regOne!32467 r!7292))) (reg!16306 (regOne!32467 (regOne!32467 r!7292)))) (= (regTwo!32467 (regOne!32467 r!7292)) (regOne!32467 (regOne!32467 r!7292)))) (= lambda!323467 lambda!323462))))

(declare-fun bs!1403369 () Bool)

(assert (= bs!1403369 (and b!5930742 b!5930665)))

(assert (=> bs!1403369 (not (= lambda!323467 lambda!323463))))

(declare-fun bs!1403370 () Bool)

(assert (= bs!1403370 (and b!5930742 b!5930678)))

(assert (=> bs!1403370 (not (= lambda!323467 lambda!323466))))

(declare-fun bs!1403371 () Bool)

(assert (= bs!1403371 (and b!5930742 b!5928496)))

(assert (=> bs!1403371 (= (and (= (reg!16306 (regTwo!32467 (regOne!32467 r!7292))) (reg!16306 r!7292)) (= (regTwo!32467 (regOne!32467 r!7292)) r!7292)) (= lambda!323467 lambda!323370))))

(declare-fun bs!1403372 () Bool)

(assert (= bs!1403372 (and b!5930742 b!5928274)))

(assert (=> bs!1403372 (not (= lambda!323467 lambda!323347))))

(declare-fun bs!1403373 () Bool)

(assert (= bs!1403373 (and b!5930742 b!5929663)))

(assert (=> bs!1403373 (= (and (= (reg!16306 (regTwo!32467 (regOne!32467 r!7292))) (reg!16306 (regOne!32467 r!7292))) (= (regTwo!32467 (regOne!32467 r!7292)) (regOne!32467 r!7292))) (= lambda!323467 lambda!323446))))

(declare-fun bs!1403374 () Bool)

(assert (= bs!1403374 (and b!5930742 b!5929662)))

(assert (=> bs!1403374 (not (= lambda!323467 lambda!323447))))

(declare-fun bs!1403375 () Bool)

(assert (= bs!1403375 (and b!5930742 b!5929621)))

(assert (=> bs!1403375 (= (and (= (reg!16306 (regTwo!32467 (regOne!32467 r!7292))) (reg!16306 (regTwo!32467 r!7292))) (= (regTwo!32467 (regOne!32467 r!7292)) (regTwo!32467 r!7292))) (= lambda!323467 lambda!323444))))

(declare-fun bs!1403376 () Bool)

(assert (= bs!1403376 (and b!5930742 b!5928495)))

(assert (=> bs!1403376 (not (= lambda!323467 lambda!323372))))

(declare-fun bs!1403377 () Bool)

(assert (= bs!1403377 (and b!5930742 d!1858800)))

(assert (=> bs!1403377 (not (= lambda!323467 lambda!323411))))

(declare-fun bs!1403378 () Bool)

(assert (= bs!1403378 (and b!5930742 b!5930679)))

(assert (=> bs!1403378 (= (and (= (reg!16306 (regTwo!32467 (regOne!32467 r!7292))) (reg!16306 (regTwo!32467 (regTwo!32467 r!7292)))) (= (regTwo!32467 (regOne!32467 r!7292)) (regTwo!32467 (regTwo!32467 r!7292)))) (= lambda!323467 lambda!323465))))

(declare-fun bs!1403379 () Bool)

(assert (= bs!1403379 (and b!5930742 b!5929620)))

(assert (=> bs!1403379 (not (= lambda!323467 lambda!323445))))

(assert (=> bs!1403372 (not (= lambda!323467 lambda!323346))))

(assert (=> bs!1403377 (not (= lambda!323467 lambda!323410))))

(declare-fun bs!1403380 () Bool)

(assert (= bs!1403380 (and b!5930742 d!1858862)))

(assert (=> bs!1403380 (not (= lambda!323467 lambda!323418))))

(declare-fun bs!1403381 () Bool)

(assert (= bs!1403381 (and b!5930742 d!1859040)))

(assert (=> bs!1403381 (not (= lambda!323467 lambda!323432))))

(assert (=> bs!1403380 (not (= lambda!323467 lambda!323419))))

(assert (=> b!5930742 true))

(assert (=> b!5930742 true))

(declare-fun bs!1403382 () Bool)

(declare-fun b!5930741 () Bool)

(assert (= bs!1403382 (and b!5930741 d!1858796)))

(declare-fun lambda!323468 () Int)

(assert (=> bs!1403382 (not (= lambda!323468 lambda!323405))))

(declare-fun bs!1403383 () Bool)

(assert (= bs!1403383 (and b!5930741 b!5930666)))

(assert (=> bs!1403383 (not (= lambda!323468 lambda!323462))))

(declare-fun bs!1403384 () Bool)

(assert (= bs!1403384 (and b!5930741 b!5930665)))

(assert (=> bs!1403384 (= (and (= (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))) (regOne!32466 (regOne!32467 (regOne!32467 r!7292)))) (= (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))) (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))))) (= lambda!323468 lambda!323463))))

(declare-fun bs!1403385 () Bool)

(assert (= bs!1403385 (and b!5930741 b!5930742)))

(assert (=> bs!1403385 (not (= lambda!323468 lambda!323467))))

(declare-fun bs!1403386 () Bool)

(assert (= bs!1403386 (and b!5930741 b!5930678)))

(assert (=> bs!1403386 (= (and (= (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))) (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292)))) (= (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))) (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))))) (= lambda!323468 lambda!323466))))

(declare-fun bs!1403387 () Bool)

(assert (= bs!1403387 (and b!5930741 b!5928496)))

(assert (=> bs!1403387 (not (= lambda!323468 lambda!323370))))

(declare-fun bs!1403388 () Bool)

(assert (= bs!1403388 (and b!5930741 b!5928274)))

(assert (=> bs!1403388 (= (and (= (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323468 lambda!323347))))

(declare-fun bs!1403389 () Bool)

(assert (= bs!1403389 (and b!5930741 b!5929663)))

(assert (=> bs!1403389 (not (= lambda!323468 lambda!323446))))

(declare-fun bs!1403390 () Bool)

(assert (= bs!1403390 (and b!5930741 b!5929662)))

(assert (=> bs!1403390 (= (and (= (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))) (regOne!32466 (regOne!32467 r!7292))) (= (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))) (regTwo!32466 (regOne!32467 r!7292)))) (= lambda!323468 lambda!323447))))

(declare-fun bs!1403391 () Bool)

(assert (= bs!1403391 (and b!5930741 b!5929621)))

(assert (=> bs!1403391 (not (= lambda!323468 lambda!323444))))

(declare-fun bs!1403392 () Bool)

(assert (= bs!1403392 (and b!5930741 b!5928495)))

(assert (=> bs!1403392 (= (and (= (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323468 lambda!323372))))

(declare-fun bs!1403393 () Bool)

(assert (= bs!1403393 (and b!5930741 d!1858800)))

(assert (=> bs!1403393 (= (and (= (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323468 lambda!323411))))

(declare-fun bs!1403394 () Bool)

(assert (= bs!1403394 (and b!5930741 b!5930679)))

(assert (=> bs!1403394 (not (= lambda!323468 lambda!323465))))

(declare-fun bs!1403395 () Bool)

(assert (= bs!1403395 (and b!5930741 b!5929620)))

(assert (=> bs!1403395 (= (and (= (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))) (regOne!32466 (regTwo!32467 r!7292))) (= (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))) (regTwo!32466 (regTwo!32467 r!7292)))) (= lambda!323468 lambda!323445))))

(assert (=> bs!1403388 (not (= lambda!323468 lambda!323346))))

(assert (=> bs!1403393 (not (= lambda!323468 lambda!323410))))

(declare-fun bs!1403396 () Bool)

(assert (= bs!1403396 (and b!5930741 d!1858862)))

(assert (=> bs!1403396 (not (= lambda!323468 lambda!323418))))

(declare-fun bs!1403397 () Bool)

(assert (= bs!1403397 (and b!5930741 d!1859040)))

(assert (=> bs!1403397 (not (= lambda!323468 lambda!323432))))

(assert (=> bs!1403396 (= (and (= (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323468 lambda!323419))))

(assert (=> b!5930741 true))

(assert (=> b!5930741 true))

(declare-fun b!5930733 () Bool)

(declare-fun c!1054369 () Bool)

(assert (=> b!5930733 (= c!1054369 ((_ is Union!15977) (regTwo!32467 (regOne!32467 r!7292))))))

(declare-fun e!3629985 () Bool)

(declare-fun e!3629982 () Bool)

(assert (=> b!5930733 (= e!3629985 e!3629982)))

(declare-fun d!1859542 () Bool)

(declare-fun c!1054368 () Bool)

(assert (=> d!1859542 (= c!1054368 ((_ is EmptyExpr!15977) (regTwo!32467 (regOne!32467 r!7292))))))

(declare-fun e!3629986 () Bool)

(assert (=> d!1859542 (= (matchRSpec!3078 (regTwo!32467 (regOne!32467 r!7292)) s!2326) e!3629986)))

(declare-fun b!5930734 () Bool)

(declare-fun c!1054367 () Bool)

(assert (=> b!5930734 (= c!1054367 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32467 r!7292))))))

(declare-fun e!3629987 () Bool)

(assert (=> b!5930734 (= e!3629987 e!3629985)))

(declare-fun b!5930735 () Bool)

(declare-fun call!470864 () Bool)

(assert (=> b!5930735 (= e!3629986 call!470864)))

(declare-fun b!5930736 () Bool)

(declare-fun e!3629984 () Bool)

(assert (=> b!5930736 (= e!3629984 (matchRSpec!3078 (regTwo!32467 (regTwo!32467 (regOne!32467 r!7292))) s!2326))))

(declare-fun b!5930737 () Bool)

(declare-fun res!2485074 () Bool)

(declare-fun e!3629983 () Bool)

(assert (=> b!5930737 (=> res!2485074 e!3629983)))

(assert (=> b!5930737 (= res!2485074 call!470864)))

(declare-fun e!3629988 () Bool)

(assert (=> b!5930737 (= e!3629988 e!3629983)))

(declare-fun b!5930738 () Bool)

(assert (=> b!5930738 (= e!3629982 e!3629988)))

(declare-fun c!1054366 () Bool)

(assert (=> b!5930738 (= c!1054366 ((_ is Star!15977) (regTwo!32467 (regOne!32467 r!7292))))))

(declare-fun b!5930739 () Bool)

(assert (=> b!5930739 (= e!3629986 e!3629987)))

(declare-fun res!2485076 () Bool)

(assert (=> b!5930739 (= res!2485076 (not ((_ is EmptyLang!15977) (regTwo!32467 (regOne!32467 r!7292)))))))

(assert (=> b!5930739 (=> (not res!2485076) (not e!3629987))))

(declare-fun b!5930740 () Bool)

(assert (=> b!5930740 (= e!3629982 e!3629984)))

(declare-fun res!2485075 () Bool)

(assert (=> b!5930740 (= res!2485075 (matchRSpec!3078 (regOne!32467 (regTwo!32467 (regOne!32467 r!7292))) s!2326))))

(assert (=> b!5930740 (=> res!2485075 e!3629984)))

(declare-fun call!470863 () Bool)

(declare-fun bm!470858 () Bool)

(assert (=> bm!470858 (= call!470863 (Exists!3047 (ite c!1054366 lambda!323467 lambda!323468)))))

(assert (=> b!5930741 (= e!3629988 call!470863)))

(assert (=> b!5930742 (= e!3629983 call!470863)))

(declare-fun b!5930743 () Bool)

(assert (=> b!5930743 (= e!3629985 (= s!2326 (Cons!64108 (c!1053727 (regTwo!32467 (regOne!32467 r!7292))) Nil!64108)))))

(declare-fun bm!470859 () Bool)

(assert (=> bm!470859 (= call!470864 (isEmpty!35972 s!2326))))

(assert (= (and d!1859542 c!1054368) b!5930735))

(assert (= (and d!1859542 (not c!1054368)) b!5930739))

(assert (= (and b!5930739 res!2485076) b!5930734))

(assert (= (and b!5930734 c!1054367) b!5930743))

(assert (= (and b!5930734 (not c!1054367)) b!5930733))

(assert (= (and b!5930733 c!1054369) b!5930740))

(assert (= (and b!5930733 (not c!1054369)) b!5930738))

(assert (= (and b!5930740 (not res!2485075)) b!5930736))

(assert (= (and b!5930738 c!1054366) b!5930737))

(assert (= (and b!5930738 (not c!1054366)) b!5930741))

(assert (= (and b!5930737 (not res!2485074)) b!5930742))

(assert (= (or b!5930742 b!5930741) bm!470858))

(assert (= (or b!5930735 b!5930737) bm!470859))

(declare-fun m!6823636 () Bool)

(assert (=> b!5930736 m!6823636))

(declare-fun m!6823638 () Bool)

(assert (=> b!5930740 m!6823638))

(declare-fun m!6823640 () Bool)

(assert (=> bm!470858 m!6823640))

(assert (=> bm!470859 m!6821714))

(assert (=> b!5929657 d!1859542))

(declare-fun d!1859560 () Bool)

(assert (=> d!1859560 (= (isUnion!844 lt!2310660) ((_ is Union!15977) lt!2310660))))

(assert (=> b!5929130 d!1859560))

(declare-fun d!1859562 () Bool)

(assert (=> d!1859562 (= (isEmptyExpr!1405 lt!2310662) ((_ is EmptyExpr!15977) lt!2310662))))

(assert (=> b!5929189 d!1859562))

(declare-fun bm!470874 () Bool)

(declare-fun call!470883 () (InoxSet Context!10722))

(declare-fun call!470878 () (InoxSet Context!10722))

(assert (=> bm!470874 (= call!470883 call!470878)))

(declare-fun c!1054385 () Bool)

(declare-fun d!1859564 () Bool)

(assert (=> d!1859564 (= c!1054385 (and ((_ is ElementMatch!15977) (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))) (= (c!1053727 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))) (h!70556 s!2326))))))

(declare-fun e!3630012 () (InoxSet Context!10722))

(assert (=> d!1859564 (= (derivationStepZipperDown!1227 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))) (ite (or c!1054039 c!1054040) (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470581)) (h!70556 s!2326)) e!3630012)))

(declare-fun bm!470875 () Bool)

(declare-fun call!470882 () (InoxSet Context!10722))

(assert (=> bm!470875 (= call!470882 call!470883)))

(declare-fun b!5930774 () Bool)

(declare-fun e!3630010 () (InoxSet Context!10722))

(assert (=> b!5930774 (= e!3630010 call!470882)))

(declare-fun b!5930776 () Bool)

(declare-fun e!3630009 () (InoxSet Context!10722))

(declare-fun e!3630008 () (InoxSet Context!10722))

(assert (=> b!5930776 (= e!3630009 e!3630008)))

(declare-fun c!1054382 () Bool)

(assert (=> b!5930776 (= c!1054382 ((_ is Concat!24822) (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))))

(declare-fun b!5930777 () Bool)

(declare-fun e!3630013 () (InoxSet Context!10722))

(assert (=> b!5930777 (= e!3630012 e!3630013)))

(declare-fun c!1054383 () Bool)

(assert (=> b!5930777 (= c!1054383 ((_ is Union!15977) (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))))

(declare-fun b!5930778 () Bool)

(declare-fun e!3630011 () Bool)

(assert (=> b!5930778 (= e!3630011 (nullable!5972 (regOne!32466 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))))))

(declare-fun bm!470877 () Bool)

(declare-fun call!470880 () List!64230)

(declare-fun call!470885 () List!64230)

(assert (=> bm!470877 (= call!470880 call!470885)))

(declare-fun b!5930779 () Bool)

(declare-fun call!470884 () (InoxSet Context!10722))

(assert (=> b!5930779 (= e!3630009 ((_ map or) call!470884 call!470883))))

(declare-fun c!1054384 () Bool)

(declare-fun bm!470878 () Bool)

(assert (=> bm!470878 (= call!470885 ($colon$colon!1864 (exprs!5861 (ite (or c!1054039 c!1054040) (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470581))) (ite (or c!1054384 c!1054382) (regTwo!32466 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))) (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))))))

(declare-fun b!5930780 () Bool)

(assert (=> b!5930780 (= e!3630010 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930781 () Bool)

(assert (=> b!5930781 (= e!3630008 call!470882)))

(declare-fun b!5930782 () Bool)

(assert (=> b!5930782 (= e!3630012 (store ((as const (Array Context!10722 Bool)) false) (ite (or c!1054039 c!1054040) (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470581)) true))))

(declare-fun bm!470879 () Bool)

(assert (=> bm!470879 (= call!470884 (derivationStepZipperDown!1227 (ite c!1054383 (regOne!32467 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))) (regOne!32466 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))) (ite c!1054383 (ite (or c!1054039 c!1054040) (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470581)) (Context!10723 call!470885)) (h!70556 s!2326)))))

(declare-fun bm!470880 () Bool)

(assert (=> bm!470880 (= call!470878 (derivationStepZipperDown!1227 (ite c!1054383 (regTwo!32467 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))) (ite c!1054384 (regTwo!32466 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))) (ite c!1054382 (regOne!32466 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))) (reg!16306 (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574))))))))))) (ite (or c!1054383 c!1054384) (ite (or c!1054039 c!1054040) (Context!10723 (t!377627 (exprs!5861 (Context!10723 lt!2310574)))) (Context!10723 call!470581)) (Context!10723 call!470880)) (h!70556 s!2326)))))

(declare-fun b!5930783 () Bool)

(assert (=> b!5930783 (= c!1054384 e!3630011)))

(declare-fun res!2485085 () Bool)

(assert (=> b!5930783 (=> (not res!2485085) (not e!3630011))))

(assert (=> b!5930783 (= res!2485085 ((_ is Concat!24822) (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))))

(assert (=> b!5930783 (= e!3630013 e!3630009)))

(declare-fun b!5930784 () Bool)

(assert (=> b!5930784 (= e!3630013 ((_ map or) call!470884 call!470878))))

(declare-fun b!5930785 () Bool)

(declare-fun c!1054386 () Bool)

(assert (=> b!5930785 (= c!1054386 ((_ is Star!15977) (ite c!1054039 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054040 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (ite c!1054038 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 lt!2310574)))))))))))

(assert (=> b!5930785 (= e!3630008 e!3630010)))

(assert (= (and d!1859564 c!1054385) b!5930782))

(assert (= (and d!1859564 (not c!1054385)) b!5930777))

(assert (= (and b!5930777 c!1054383) b!5930784))

(assert (= (and b!5930777 (not c!1054383)) b!5930783))

(assert (= (and b!5930783 res!2485085) b!5930778))

(assert (= (and b!5930783 c!1054384) b!5930779))

(assert (= (and b!5930783 (not c!1054384)) b!5930776))

(assert (= (and b!5930776 c!1054382) b!5930781))

(assert (= (and b!5930776 (not c!1054382)) b!5930785))

(assert (= (and b!5930785 c!1054386) b!5930774))

(assert (= (and b!5930785 (not c!1054386)) b!5930780))

(assert (= (or b!5930781 b!5930774) bm!470877))

(assert (= (or b!5930781 b!5930774) bm!470875))

(assert (= (or b!5930779 bm!470877) bm!470878))

(assert (= (or b!5930779 bm!470875) bm!470874))

(assert (= (or b!5930784 bm!470874) bm!470880))

(assert (= (or b!5930784 b!5930779) bm!470879))

(declare-fun m!6823642 () Bool)

(assert (=> b!5930782 m!6823642))

(declare-fun m!6823644 () Bool)

(assert (=> bm!470878 m!6823644))

(declare-fun m!6823646 () Bool)

(assert (=> bm!470880 m!6823646))

(declare-fun m!6823648 () Bool)

(assert (=> bm!470879 m!6823648))

(declare-fun m!6823650 () Bool)

(assert (=> b!5930778 m!6823650))

(assert (=> bm!470580 d!1859564))

(declare-fun bm!470881 () Bool)

(declare-fun call!470889 () (InoxSet Context!10722))

(declare-fun call!470886 () (InoxSet Context!10722))

(assert (=> bm!470881 (= call!470889 call!470886)))

(declare-fun d!1859566 () Bool)

(declare-fun c!1054390 () Bool)

(assert (=> d!1859566 (= c!1054390 (and ((_ is ElementMatch!15977) (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))) (= (c!1053727 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))) (h!70556 s!2326))))))

(declare-fun e!3630018 () (InoxSet Context!10722))

(assert (=> d!1859566 (= (derivationStepZipperDown!1227 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))) (ite c!1053955 (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470530)) (h!70556 s!2326)) e!3630018)))

(declare-fun bm!470882 () Bool)

(declare-fun call!470888 () (InoxSet Context!10722))

(assert (=> bm!470882 (= call!470888 call!470889)))

(declare-fun b!5930786 () Bool)

(declare-fun e!3630016 () (InoxSet Context!10722))

(assert (=> b!5930786 (= e!3630016 call!470888)))

(declare-fun b!5930787 () Bool)

(declare-fun e!3630015 () (InoxSet Context!10722))

(declare-fun e!3630014 () (InoxSet Context!10722))

(assert (=> b!5930787 (= e!3630015 e!3630014)))

(declare-fun c!1054387 () Bool)

(assert (=> b!5930787 (= c!1054387 ((_ is Concat!24822) (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))))

(declare-fun b!5930788 () Bool)

(declare-fun e!3630019 () (InoxSet Context!10722))

(assert (=> b!5930788 (= e!3630018 e!3630019)))

(declare-fun c!1054388 () Bool)

(assert (=> b!5930788 (= c!1054388 ((_ is Union!15977) (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))))

(declare-fun e!3630017 () Bool)

(declare-fun b!5930789 () Bool)

(assert (=> b!5930789 (= e!3630017 (nullable!5972 (regOne!32466 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))))

(declare-fun bm!470883 () Bool)

(declare-fun call!470887 () List!64230)

(declare-fun call!470891 () List!64230)

(assert (=> bm!470883 (= call!470887 call!470891)))

(declare-fun b!5930790 () Bool)

(declare-fun call!470890 () (InoxSet Context!10722))

(assert (=> b!5930790 (= e!3630015 ((_ map or) call!470890 call!470889))))

(declare-fun bm!470884 () Bool)

(declare-fun c!1054389 () Bool)

(assert (=> bm!470884 (= call!470891 ($colon$colon!1864 (exprs!5861 (ite c!1053955 (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470530))) (ite (or c!1054389 c!1054387) (regTwo!32466 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))) (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))))

(declare-fun b!5930791 () Bool)

(assert (=> b!5930791 (= e!3630016 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930792 () Bool)

(assert (=> b!5930792 (= e!3630014 call!470888)))

(declare-fun b!5930793 () Bool)

(assert (=> b!5930793 (= e!3630018 (store ((as const (Array Context!10722 Bool)) false) (ite c!1053955 (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470530)) true))))

(declare-fun bm!470885 () Bool)

(assert (=> bm!470885 (= call!470890 (derivationStepZipperDown!1227 (ite c!1054388 (regOne!32467 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))) (regOne!32466 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))) (ite c!1054388 (ite c!1053955 (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470530)) (Context!10723 call!470891)) (h!70556 s!2326)))))

(declare-fun bm!470886 () Bool)

(assert (=> bm!470886 (= call!470886 (derivationStepZipperDown!1227 (ite c!1054388 (regTwo!32467 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))) (ite c!1054389 (regTwo!32466 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))) (ite c!1054387 (regOne!32466 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))) (reg!16306 (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292)))))))))) (ite (or c!1054388 c!1054389) (ite c!1053955 (ite (or c!1053849 c!1053850) (Context!10723 Nil!64106) (Context!10723 call!470469)) (Context!10723 call!470530)) (Context!10723 call!470887)) (h!70556 s!2326)))))

(declare-fun b!5930794 () Bool)

(assert (=> b!5930794 (= c!1054389 e!3630017)))

(declare-fun res!2485086 () Bool)

(assert (=> b!5930794 (=> (not res!2485086) (not e!3630017))))

(assert (=> b!5930794 (= res!2485086 ((_ is Concat!24822) (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))))

(assert (=> b!5930794 (= e!3630019 e!3630015)))

(declare-fun b!5930795 () Bool)

(assert (=> b!5930795 (= e!3630019 ((_ map or) call!470890 call!470886))))

(declare-fun b!5930796 () Bool)

(declare-fun c!1054391 () Bool)

(assert (=> b!5930796 (= c!1054391 ((_ is Star!15977) (ite c!1053955 (regOne!32467 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))) (regOne!32466 (ite c!1053849 (regTwo!32467 r!7292) (ite c!1053850 (regTwo!32466 r!7292) (ite c!1053848 (regOne!32466 r!7292) (reg!16306 r!7292))))))))))

(assert (=> b!5930796 (= e!3630014 e!3630016)))

(assert (= (and d!1859566 c!1054390) b!5930793))

(assert (= (and d!1859566 (not c!1054390)) b!5930788))

(assert (= (and b!5930788 c!1054388) b!5930795))

(assert (= (and b!5930788 (not c!1054388)) b!5930794))

(assert (= (and b!5930794 res!2485086) b!5930789))

(assert (= (and b!5930794 c!1054389) b!5930790))

(assert (= (and b!5930794 (not c!1054389)) b!5930787))

(assert (= (and b!5930787 c!1054387) b!5930792))

(assert (= (and b!5930787 (not c!1054387)) b!5930796))

(assert (= (and b!5930796 c!1054391) b!5930786))

(assert (= (and b!5930796 (not c!1054391)) b!5930791))

(assert (= (or b!5930792 b!5930786) bm!470883))

(assert (= (or b!5930792 b!5930786) bm!470882))

(assert (= (or b!5930790 bm!470883) bm!470884))

(assert (= (or b!5930790 bm!470882) bm!470881))

(assert (= (or b!5930795 bm!470881) bm!470886))

(assert (= (or b!5930795 b!5930790) bm!470885))

(declare-fun m!6823654 () Bool)

(assert (=> b!5930793 m!6823654))

(declare-fun m!6823656 () Bool)

(assert (=> bm!470884 m!6823656))

(declare-fun m!6823660 () Bool)

(assert (=> bm!470886 m!6823660))

(declare-fun m!6823664 () Bool)

(assert (=> bm!470885 m!6823664))

(declare-fun m!6823666 () Bool)

(assert (=> b!5930789 m!6823666))

(assert (=> bm!470524 d!1859566))

(assert (=> d!1858906 d!1859230))

(assert (=> d!1858906 d!1859312))

(declare-fun d!1859568 () Bool)

(assert (=> d!1859568 (= (nullable!5972 (reg!16306 lt!2310639)) (nullableFct!1944 (reg!16306 lt!2310639)))))

(declare-fun bs!1403399 () Bool)

(assert (= bs!1403399 d!1859568))

(declare-fun m!6823668 () Bool)

(assert (=> bs!1403399 m!6823668))

(assert (=> b!5929092 d!1859568))

(assert (=> b!5929140 d!1859420))

(declare-fun d!1859570 () Bool)

(declare-fun c!1054392 () Bool)

(assert (=> d!1859570 (= c!1054392 ((_ is Nil!64108) lt!2310666))))

(declare-fun e!3630020 () (InoxSet C!32224))

(assert (=> d!1859570 (= (content!11814 lt!2310666) e!3630020)))

(declare-fun b!5930797 () Bool)

(assert (=> b!5930797 (= e!3630020 ((as const (Array C!32224 Bool)) false))))

(declare-fun b!5930798 () Bool)

(assert (=> b!5930798 (= e!3630020 ((_ map or) (store ((as const (Array C!32224 Bool)) false) (h!70556 lt!2310666) true) (content!11814 (t!377629 lt!2310666))))))

(assert (= (and d!1859570 c!1054392) b!5930797))

(assert (= (and d!1859570 (not c!1054392)) b!5930798))

(declare-fun m!6823672 () Bool)

(assert (=> b!5930798 m!6823672))

(declare-fun m!6823674 () Bool)

(assert (=> b!5930798 m!6823674))

(assert (=> d!1858922 d!1859570))

(declare-fun d!1859572 () Bool)

(declare-fun c!1054393 () Bool)

(assert (=> d!1859572 (= c!1054393 ((_ is Nil!64108) (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))

(declare-fun e!3630021 () (InoxSet C!32224))

(assert (=> d!1859572 (= (content!11814 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) e!3630021)))

(declare-fun b!5930799 () Bool)

(assert (=> b!5930799 (= e!3630021 ((as const (Array C!32224 Bool)) false))))

(declare-fun b!5930800 () Bool)

(assert (=> b!5930800 (= e!3630021 ((_ map or) (store ((as const (Array C!32224 Bool)) false) (h!70556 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))) true) (content!11814 (t!377629 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108))))))))

(assert (= (and d!1859572 c!1054393) b!5930799))

(assert (= (and d!1859572 (not c!1054393)) b!5930800))

(declare-fun m!6823678 () Bool)

(assert (=> b!5930800 m!6823678))

(assert (=> b!5930800 m!6823196))

(assert (=> d!1858922 d!1859572))

(declare-fun d!1859576 () Bool)

(declare-fun c!1054394 () Bool)

(assert (=> d!1859576 (= c!1054394 ((_ is Nil!64108) (t!377629 s!2326)))))

(declare-fun e!3630022 () (InoxSet C!32224))

(assert (=> d!1859576 (= (content!11814 (t!377629 s!2326)) e!3630022)))

(declare-fun b!5930801 () Bool)

(assert (=> b!5930801 (= e!3630022 ((as const (Array C!32224 Bool)) false))))

(declare-fun b!5930802 () Bool)

(assert (=> b!5930802 (= e!3630022 ((_ map or) (store ((as const (Array C!32224 Bool)) false) (h!70556 (t!377629 s!2326)) true) (content!11814 (t!377629 (t!377629 s!2326)))))))

(assert (= (and d!1859576 c!1054394) b!5930801))

(assert (= (and d!1859576 (not c!1054394)) b!5930802))

(declare-fun m!6823680 () Bool)

(assert (=> b!5930802 m!6823680))

(assert (=> b!5930802 m!6823482))

(assert (=> d!1858922 d!1859576))

(declare-fun b!5930803 () Bool)

(declare-fun e!3630029 () Bool)

(assert (=> b!5930803 (= e!3630029 (= (head!12495 (tail!11580 (_2!36259 (get!22078 lt!2310648)))) (c!1053727 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648)))))))))

(declare-fun b!5930804 () Bool)

(declare-fun e!3630025 () Bool)

(assert (=> b!5930804 (= e!3630025 (matchR!8160 (derivativeStep!4708 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648)))) (head!12495 (tail!11580 (_2!36259 (get!22078 lt!2310648))))) (tail!11580 (tail!11580 (_2!36259 (get!22078 lt!2310648))))))))

(declare-fun b!5930805 () Bool)

(declare-fun e!3630028 () Bool)

(declare-fun lt!2310741 () Bool)

(assert (=> b!5930805 (= e!3630028 (not lt!2310741))))

(declare-fun b!5930806 () Bool)

(declare-fun e!3630024 () Bool)

(declare-fun e!3630026 () Bool)

(assert (=> b!5930806 (= e!3630024 e!3630026)))

(declare-fun res!2485087 () Bool)

(assert (=> b!5930806 (=> res!2485087 e!3630026)))

(declare-fun call!470892 () Bool)

(assert (=> b!5930806 (= res!2485087 call!470892)))

(declare-fun b!5930807 () Bool)

(declare-fun e!3630023 () Bool)

(assert (=> b!5930807 (= e!3630023 (= lt!2310741 call!470892))))

(declare-fun b!5930808 () Bool)

(declare-fun res!2485093 () Bool)

(assert (=> b!5930808 (=> (not res!2485093) (not e!3630029))))

(assert (=> b!5930808 (= res!2485093 (not call!470892))))

(declare-fun bm!470887 () Bool)

(assert (=> bm!470887 (= call!470892 (isEmpty!35972 (tail!11580 (_2!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5930809 () Bool)

(assert (=> b!5930809 (= e!3630023 e!3630028)))

(declare-fun c!1054396 () Bool)

(assert (=> b!5930809 (= c!1054396 ((_ is EmptyLang!15977) (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648))))))))

(declare-fun b!5930810 () Bool)

(declare-fun res!2485094 () Bool)

(assert (=> b!5930810 (=> res!2485094 e!3630026)))

(assert (=> b!5930810 (= res!2485094 (not (isEmpty!35972 (tail!11580 (tail!11580 (_2!36259 (get!22078 lt!2310648)))))))))

(declare-fun b!5930811 () Bool)

(declare-fun res!2485091 () Bool)

(assert (=> b!5930811 (=> (not res!2485091) (not e!3630029))))

(assert (=> b!5930811 (= res!2485091 (isEmpty!35972 (tail!11580 (tail!11580 (_2!36259 (get!22078 lt!2310648))))))))

(declare-fun d!1859580 () Bool)

(assert (=> d!1859580 e!3630023))

(declare-fun c!1054397 () Bool)

(assert (=> d!1859580 (= c!1054397 ((_ is EmptyExpr!15977) (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648))))))))

(assert (=> d!1859580 (= lt!2310741 e!3630025)))

(declare-fun c!1054395 () Bool)

(assert (=> d!1859580 (= c!1054395 (isEmpty!35972 (tail!11580 (_2!36259 (get!22078 lt!2310648)))))))

(assert (=> d!1859580 (validRegex!7713 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648)))))))

(assert (=> d!1859580 (= (matchR!8160 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648)))) (tail!11580 (_2!36259 (get!22078 lt!2310648)))) lt!2310741)))

(declare-fun b!5930812 () Bool)

(declare-fun res!2485088 () Bool)

(declare-fun e!3630027 () Bool)

(assert (=> b!5930812 (=> res!2485088 e!3630027)))

(assert (=> b!5930812 (= res!2485088 (not ((_ is ElementMatch!15977) (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648)))))))))

(assert (=> b!5930812 (= e!3630028 e!3630027)))

(declare-fun b!5930813 () Bool)

(assert (=> b!5930813 (= e!3630026 (not (= (head!12495 (tail!11580 (_2!36259 (get!22078 lt!2310648)))) (c!1053727 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648))))))))))

(declare-fun b!5930814 () Bool)

(assert (=> b!5930814 (= e!3630027 e!3630024)))

(declare-fun res!2485090 () Bool)

(assert (=> b!5930814 (=> (not res!2485090) (not e!3630024))))

(assert (=> b!5930814 (= res!2485090 (not lt!2310741))))

(declare-fun b!5930815 () Bool)

(assert (=> b!5930815 (= e!3630025 (nullable!5972 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648))))))))

(declare-fun b!5930816 () Bool)

(declare-fun res!2485092 () Bool)

(assert (=> b!5930816 (=> res!2485092 e!3630027)))

(assert (=> b!5930816 (= res!2485092 e!3630029)))

(declare-fun res!2485089 () Bool)

(assert (=> b!5930816 (=> (not res!2485089) (not e!3630029))))

(assert (=> b!5930816 (= res!2485089 lt!2310741)))

(assert (= (and d!1859580 c!1054395) b!5930815))

(assert (= (and d!1859580 (not c!1054395)) b!5930804))

(assert (= (and d!1859580 c!1054397) b!5930807))

(assert (= (and d!1859580 (not c!1054397)) b!5930809))

(assert (= (and b!5930809 c!1054396) b!5930805))

(assert (= (and b!5930809 (not c!1054396)) b!5930812))

(assert (= (and b!5930812 (not res!2485088)) b!5930816))

(assert (= (and b!5930816 res!2485089) b!5930808))

(assert (= (and b!5930808 res!2485093) b!5930811))

(assert (= (and b!5930811 res!2485091) b!5930803))

(assert (= (and b!5930816 (not res!2485092)) b!5930814))

(assert (= (and b!5930814 res!2485090) b!5930806))

(assert (= (and b!5930806 (not res!2485087)) b!5930810))

(assert (= (and b!5930810 (not res!2485094)) b!5930813))

(assert (= (or b!5930807 b!5930806 b!5930808) bm!470887))

(assert (=> b!5930810 m!6822156))

(declare-fun m!6823682 () Bool)

(assert (=> b!5930810 m!6823682))

(assert (=> b!5930810 m!6823682))

(declare-fun m!6823684 () Bool)

(assert (=> b!5930810 m!6823684))

(assert (=> b!5930804 m!6822156))

(declare-fun m!6823686 () Bool)

(assert (=> b!5930804 m!6823686))

(assert (=> b!5930804 m!6822162))

(assert (=> b!5930804 m!6823686))

(declare-fun m!6823688 () Bool)

(assert (=> b!5930804 m!6823688))

(assert (=> b!5930804 m!6822156))

(assert (=> b!5930804 m!6823682))

(assert (=> b!5930804 m!6823688))

(assert (=> b!5930804 m!6823682))

(declare-fun m!6823690 () Bool)

(assert (=> b!5930804 m!6823690))

(assert (=> d!1859580 m!6822156))

(assert (=> d!1859580 m!6822158))

(assert (=> d!1859580 m!6822162))

(declare-fun m!6823692 () Bool)

(assert (=> d!1859580 m!6823692))

(assert (=> b!5930811 m!6822156))

(assert (=> b!5930811 m!6823682))

(assert (=> b!5930811 m!6823682))

(assert (=> b!5930811 m!6823684))

(assert (=> b!5930815 m!6822162))

(declare-fun m!6823694 () Bool)

(assert (=> b!5930815 m!6823694))

(assert (=> bm!470887 m!6822156))

(assert (=> bm!470887 m!6822158))

(assert (=> b!5930803 m!6822156))

(assert (=> b!5930803 m!6823686))

(assert (=> b!5930813 m!6822156))

(assert (=> b!5930813 m!6823686))

(assert (=> b!5929141 d!1859580))

(declare-fun b!5930826 () Bool)

(declare-fun c!1054404 () Bool)

(assert (=> b!5930826 (= c!1054404 (nullable!5972 (regOne!32466 (regTwo!32466 r!7292))))))

(declare-fun e!3630040 () Regex!15977)

(declare-fun e!3630038 () Regex!15977)

(assert (=> b!5930826 (= e!3630040 e!3630038)))

(declare-fun d!1859588 () Bool)

(declare-fun lt!2310742 () Regex!15977)

(assert (=> d!1859588 (validRegex!7713 lt!2310742)))

(declare-fun e!3630041 () Regex!15977)

(assert (=> d!1859588 (= lt!2310742 e!3630041)))

(declare-fun c!1054402 () Bool)

(assert (=> d!1859588 (= c!1054402 (or ((_ is EmptyExpr!15977) (regTwo!32466 r!7292)) ((_ is EmptyLang!15977) (regTwo!32466 r!7292))))))

(assert (=> d!1859588 (validRegex!7713 (regTwo!32466 r!7292))))

(assert (=> d!1859588 (= (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310648)))) lt!2310742)))

(declare-fun b!5930827 () Bool)

(declare-fun e!3630037 () Regex!15977)

(assert (=> b!5930827 (= e!3630041 e!3630037)))

(declare-fun c!1054401 () Bool)

(assert (=> b!5930827 (= c!1054401 ((_ is ElementMatch!15977) (regTwo!32466 r!7292)))))

(declare-fun b!5930828 () Bool)

(declare-fun call!470897 () Regex!15977)

(declare-fun call!470899 () Regex!15977)

(assert (=> b!5930828 (= e!3630038 (Union!15977 (Concat!24822 call!470897 (regTwo!32466 (regTwo!32466 r!7292))) call!470899))))

(declare-fun b!5930829 () Bool)

(declare-fun e!3630039 () Regex!15977)

(assert (=> b!5930829 (= e!3630039 e!3630040)))

(declare-fun c!1054400 () Bool)

(assert (=> b!5930829 (= c!1054400 ((_ is Star!15977) (regTwo!32466 r!7292)))))

(declare-fun b!5930830 () Bool)

(declare-fun c!1054403 () Bool)

(assert (=> b!5930830 (= c!1054403 ((_ is Union!15977) (regTwo!32466 r!7292)))))

(assert (=> b!5930830 (= e!3630037 e!3630039)))

(declare-fun b!5930831 () Bool)

(declare-fun call!470898 () Regex!15977)

(assert (=> b!5930831 (= e!3630040 (Concat!24822 call!470898 (regTwo!32466 r!7292)))))

(declare-fun b!5930832 () Bool)

(declare-fun call!470896 () Regex!15977)

(assert (=> b!5930832 (= e!3630039 (Union!15977 call!470896 call!470897))))

(declare-fun bm!470891 () Bool)

(assert (=> bm!470891 (= call!470896 (derivativeStep!4708 (ite c!1054403 (regOne!32467 (regTwo!32466 r!7292)) (ite c!1054400 (reg!16306 (regTwo!32466 r!7292)) (ite c!1054404 (regTwo!32466 (regTwo!32466 r!7292)) (regOne!32466 (regTwo!32466 r!7292))))) (head!12495 (_2!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5930833 () Bool)

(assert (=> b!5930833 (= e!3630038 (Union!15977 (Concat!24822 call!470899 (regTwo!32466 (regTwo!32466 r!7292))) EmptyLang!15977))))

(declare-fun b!5930834 () Bool)

(assert (=> b!5930834 (= e!3630037 (ite (= (head!12495 (_2!36259 (get!22078 lt!2310648))) (c!1053727 (regTwo!32466 r!7292))) EmptyExpr!15977 EmptyLang!15977))))

(declare-fun bm!470892 () Bool)

(assert (=> bm!470892 (= call!470898 call!470896)))

(declare-fun bm!470893 () Bool)

(assert (=> bm!470893 (= call!470899 call!470898)))

(declare-fun bm!470894 () Bool)

(assert (=> bm!470894 (= call!470897 (derivativeStep!4708 (ite c!1054403 (regTwo!32467 (regTwo!32466 r!7292)) (regOne!32466 (regTwo!32466 r!7292))) (head!12495 (_2!36259 (get!22078 lt!2310648)))))))

(declare-fun b!5930835 () Bool)

(assert (=> b!5930835 (= e!3630041 EmptyLang!15977)))

(assert (= (and d!1859588 c!1054402) b!5930835))

(assert (= (and d!1859588 (not c!1054402)) b!5930827))

(assert (= (and b!5930827 c!1054401) b!5930834))

(assert (= (and b!5930827 (not c!1054401)) b!5930830))

(assert (= (and b!5930830 c!1054403) b!5930832))

(assert (= (and b!5930830 (not c!1054403)) b!5930829))

(assert (= (and b!5930829 c!1054400) b!5930831))

(assert (= (and b!5930829 (not c!1054400)) b!5930826))

(assert (= (and b!5930826 c!1054404) b!5930828))

(assert (= (and b!5930826 (not c!1054404)) b!5930833))

(assert (= (or b!5930828 b!5930833) bm!470893))

(assert (= (or b!5930831 bm!470893) bm!470892))

(assert (= (or b!5930832 b!5930828) bm!470894))

(assert (= (or b!5930832 bm!470892) bm!470891))

(assert (=> b!5930826 m!6823002))

(declare-fun m!6823698 () Bool)

(assert (=> d!1859588 m!6823698))

(assert (=> d!1859588 m!6822168))

(assert (=> bm!470891 m!6822160))

(declare-fun m!6823704 () Bool)

(assert (=> bm!470891 m!6823704))

(assert (=> bm!470894 m!6822160))

(declare-fun m!6823706 () Bool)

(assert (=> bm!470894 m!6823706))

(assert (=> b!5929141 d!1859588))

(assert (=> b!5929141 d!1859420))

(assert (=> b!5929141 d!1859500))

(declare-fun bs!1403400 () Bool)

(declare-fun d!1859592 () Bool)

(assert (= bs!1403400 (and d!1859592 d!1859074)))

(declare-fun lambda!323469 () Int)

(assert (=> bs!1403400 (= lambda!323469 lambda!323441)))

(declare-fun bs!1403401 () Bool)

(assert (= bs!1403401 (and d!1859592 d!1859016)))

(assert (=> bs!1403401 (= lambda!323469 lambda!323429)))

(declare-fun bs!1403402 () Bool)

(assert (= bs!1403402 (and d!1859592 d!1858790)))

(assert (=> bs!1403402 (= lambda!323469 lambda!323402)))

(declare-fun bs!1403403 () Bool)

(assert (= bs!1403403 (and d!1859592 d!1859292)))

(assert (=> bs!1403403 (= lambda!323469 lambda!323452)))

(declare-fun bs!1403404 () Bool)

(assert (= bs!1403404 (and d!1859592 d!1858760)))

(assert (=> bs!1403404 (= lambda!323469 lambda!323389)))

(declare-fun bs!1403405 () Bool)

(assert (= bs!1403405 (and d!1859592 d!1858764)))

(assert (=> bs!1403405 (= lambda!323469 lambda!323390)))

(declare-fun bs!1403406 () Bool)

(assert (= bs!1403406 (and d!1859592 d!1859188)))

(assert (=> bs!1403406 (= lambda!323469 lambda!323449)))

(declare-fun bs!1403407 () Bool)

(assert (= bs!1403407 (and d!1859592 d!1858804)))

(assert (=> bs!1403407 (= lambda!323469 lambda!323412)))

(declare-fun bs!1403408 () Bool)

(assert (= bs!1403408 (and d!1859592 d!1858774)))

(assert (=> bs!1403408 (= lambda!323469 lambda!323396)))

(declare-fun bs!1403409 () Bool)

(assert (= bs!1403409 (and d!1859592 d!1859132)))

(assert (=> bs!1403409 (= lambda!323469 lambda!323448)))

(declare-fun bs!1403410 () Bool)

(assert (= bs!1403410 (and d!1859592 d!1859204)))

(assert (=> bs!1403410 (= lambda!323469 lambda!323450)))

(declare-fun bs!1403411 () Bool)

(assert (= bs!1403411 (and d!1859592 d!1859442)))

(assert (=> bs!1403411 (= lambda!323469 lambda!323458)))

(declare-fun bs!1403412 () Bool)

(assert (= bs!1403412 (and d!1859592 d!1858772)))

(assert (=> bs!1403412 (= lambda!323469 lambda!323393)))

(declare-fun bs!1403413 () Bool)

(assert (= bs!1403413 (and d!1859592 d!1859290)))

(assert (=> bs!1403413 (= lambda!323469 lambda!323451)))

(declare-fun bs!1403414 () Bool)

(assert (= bs!1403414 (and d!1859592 d!1858900)))

(assert (=> bs!1403414 (= lambda!323469 lambda!323422)))

(declare-fun bs!1403415 () Bool)

(assert (= bs!1403415 (and d!1859592 d!1858920)))

(assert (=> bs!1403415 (= lambda!323469 lambda!323425)))

(declare-fun bs!1403416 () Bool)

(assert (= bs!1403416 (and d!1859592 d!1859322)))

(assert (=> bs!1403416 (= lambda!323469 lambda!323453)))

(declare-fun b!5930838 () Bool)

(declare-fun e!3630045 () Bool)

(declare-fun lt!2310743 () Regex!15977)

(assert (=> b!5930838 (= e!3630045 (isEmptyExpr!1405 lt!2310743))))

(declare-fun b!5930839 () Bool)

(declare-fun e!3630046 () Bool)

(assert (=> b!5930839 (= e!3630045 e!3630046)))

(declare-fun c!1054407 () Bool)

(assert (=> b!5930839 (= c!1054407 (isEmpty!35969 (tail!11581 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))

(declare-fun b!5930840 () Bool)

(declare-fun e!3630049 () Regex!15977)

(assert (=> b!5930840 (= e!3630049 (h!70554 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun e!3630047 () Bool)

(assert (=> d!1859592 e!3630047))

(declare-fun res!2485102 () Bool)

(assert (=> d!1859592 (=> (not res!2485102) (not e!3630047))))

(assert (=> d!1859592 (= res!2485102 (validRegex!7713 lt!2310743))))

(assert (=> d!1859592 (= lt!2310743 e!3630049)))

(declare-fun c!1054405 () Bool)

(declare-fun e!3630044 () Bool)

(assert (=> d!1859592 (= c!1054405 e!3630044)))

(declare-fun res!2485103 () Bool)

(assert (=> d!1859592 (=> (not res!2485103) (not e!3630044))))

(assert (=> d!1859592 (= res!2485103 ((_ is Cons!64106) (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(assert (=> d!1859592 (forall!15060 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))) lambda!323469)))

(assert (=> d!1859592 (= (generalisedConcat!1574 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))) lt!2310743)))

(declare-fun b!5930841 () Bool)

(assert (=> b!5930841 (= e!3630047 e!3630045)))

(declare-fun c!1054408 () Bool)

(assert (=> b!5930841 (= c!1054408 (isEmpty!35969 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5930842 () Bool)

(declare-fun e!3630048 () Regex!15977)

(assert (=> b!5930842 (= e!3630049 e!3630048)))

(declare-fun c!1054406 () Bool)

(assert (=> b!5930842 (= c!1054406 ((_ is Cons!64106) (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5930843 () Bool)

(assert (=> b!5930843 (= e!3630048 (Concat!24822 (h!70554 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))) (generalisedConcat!1574 (t!377627 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))))))))

(declare-fun b!5930844 () Bool)

(assert (=> b!5930844 (= e!3630048 EmptyExpr!15977)))

(declare-fun b!5930845 () Bool)

(assert (=> b!5930845 (= e!3630046 (isConcat!928 lt!2310743))))

(declare-fun b!5930846 () Bool)

(assert (=> b!5930846 (= e!3630046 (= lt!2310743 (head!12496 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))

(declare-fun b!5930847 () Bool)

(assert (=> b!5930847 (= e!3630044 (isEmpty!35969 (t!377627 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))))))))

(assert (= (and d!1859592 res!2485103) b!5930847))

(assert (= (and d!1859592 c!1054405) b!5930840))

(assert (= (and d!1859592 (not c!1054405)) b!5930842))

(assert (= (and b!5930842 c!1054406) b!5930843))

(assert (= (and b!5930842 (not c!1054406)) b!5930844))

(assert (= (and d!1859592 res!2485102) b!5930841))

(assert (= (and b!5930841 c!1054408) b!5930838))

(assert (= (and b!5930841 (not c!1054408)) b!5930839))

(assert (= (and b!5930839 c!1054407) b!5930846))

(assert (= (and b!5930839 (not c!1054407)) b!5930845))

(declare-fun m!6823712 () Bool)

(assert (=> b!5930838 m!6823712))

(declare-fun m!6823714 () Bool)

(assert (=> b!5930843 m!6823714))

(declare-fun m!6823716 () Bool)

(assert (=> b!5930847 m!6823716))

(declare-fun m!6823718 () Bool)

(assert (=> b!5930839 m!6823718))

(assert (=> b!5930839 m!6823718))

(declare-fun m!6823720 () Bool)

(assert (=> b!5930839 m!6823720))

(assert (=> b!5930841 m!6822202))

(declare-fun m!6823722 () Bool)

(assert (=> b!5930845 m!6823722))

(declare-fun m!6823724 () Bool)

(assert (=> d!1859592 m!6823724))

(declare-fun m!6823726 () Bool)

(assert (=> d!1859592 m!6823726))

(declare-fun m!6823728 () Bool)

(assert (=> b!5930846 m!6823728))

(assert (=> b!5929194 d!1859592))

(declare-fun b!5930860 () Bool)

(declare-fun e!3630056 () Bool)

(declare-fun e!3630058 () Bool)

(assert (=> b!5930860 (= e!3630056 e!3630058)))

(declare-fun res!2485108 () Bool)

(assert (=> b!5930860 (= res!2485108 (not (nullable!5972 (reg!16306 (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))))))))

(assert (=> b!5930860 (=> (not res!2485108) (not e!3630058))))

(declare-fun b!5930861 () Bool)

(declare-fun res!2485106 () Bool)

(declare-fun e!3630057 () Bool)

(assert (=> b!5930861 (=> res!2485106 e!3630057)))

(assert (=> b!5930861 (= res!2485106 (not ((_ is Concat!24822) (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292))))))))

(declare-fun e!3630062 () Bool)

(assert (=> b!5930861 (= e!3630062 e!3630057)))

(declare-fun b!5930862 () Bool)

(declare-fun e!3630059 () Bool)

(declare-fun call!470907 () Bool)

(assert (=> b!5930862 (= e!3630059 call!470907)))

(declare-fun bm!470901 () Bool)

(declare-fun call!470906 () Bool)

(assert (=> bm!470901 (= call!470907 call!470906)))

(declare-fun b!5930863 () Bool)

(declare-fun e!3630060 () Bool)

(assert (=> b!5930863 (= e!3630060 e!3630056)))

(declare-fun c!1054415 () Bool)

(assert (=> b!5930863 (= c!1054415 ((_ is Star!15977) (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))))))

(declare-fun b!5930864 () Bool)

(assert (=> b!5930864 (= e!3630057 e!3630059)))

(declare-fun res!2485109 () Bool)

(assert (=> b!5930864 (=> (not res!2485109) (not e!3630059))))

(declare-fun call!470908 () Bool)

(assert (=> b!5930864 (= res!2485109 call!470908)))

(declare-fun b!5930865 () Bool)

(assert (=> b!5930865 (= e!3630058 call!470906)))

(declare-fun c!1054414 () Bool)

(declare-fun bm!470902 () Bool)

(assert (=> bm!470902 (= call!470906 (validRegex!7713 (ite c!1054415 (reg!16306 (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))) (ite c!1054414 (regTwo!32467 (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))) (regTwo!32466 (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292))))))))))

(declare-fun b!5930866 () Bool)

(assert (=> b!5930866 (= e!3630056 e!3630062)))

(assert (=> b!5930866 (= c!1054414 ((_ is Union!15977) (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))))))

(declare-fun b!5930859 () Bool)

(declare-fun res!2485107 () Bool)

(declare-fun e!3630061 () Bool)

(assert (=> b!5930859 (=> (not res!2485107) (not e!3630061))))

(assert (=> b!5930859 (= res!2485107 call!470908)))

(assert (=> b!5930859 (= e!3630062 e!3630061)))

(declare-fun d!1859596 () Bool)

(declare-fun res!2485105 () Bool)

(assert (=> d!1859596 (=> res!2485105 e!3630060)))

(assert (=> d!1859596 (= res!2485105 ((_ is ElementMatch!15977) (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))))))

(assert (=> d!1859596 (= (validRegex!7713 (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))) e!3630060)))

(declare-fun b!5930867 () Bool)

(assert (=> b!5930867 (= e!3630061 call!470907)))

(declare-fun bm!470903 () Bool)

(assert (=> bm!470903 (= call!470908 (validRegex!7713 (ite c!1054414 (regOne!32467 (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))) (regOne!32466 (ite c!1053932 (regOne!32467 (regOne!32466 r!7292)) (regOne!32466 (regOne!32466 r!7292)))))))))

(assert (= (and d!1859596 (not res!2485105)) b!5930863))

(assert (= (and b!5930863 c!1054415) b!5930860))

(assert (= (and b!5930863 (not c!1054415)) b!5930866))

(assert (= (and b!5930860 res!2485108) b!5930865))

(assert (= (and b!5930866 c!1054414) b!5930859))

(assert (= (and b!5930866 (not c!1054414)) b!5930861))

(assert (= (and b!5930859 res!2485107) b!5930867))

(assert (= (and b!5930861 (not res!2485106)) b!5930864))

(assert (= (and b!5930864 res!2485109) b!5930862))

(assert (= (or b!5930867 b!5930862) bm!470901))

(assert (= (or b!5930859 b!5930864) bm!470903))

(assert (= (or b!5930865 bm!470901) bm!470902))

(declare-fun m!6823732 () Bool)

(assert (=> b!5930860 m!6823732))

(declare-fun m!6823736 () Bool)

(assert (=> bm!470902 m!6823736))

(declare-fun m!6823738 () Bool)

(assert (=> bm!470903 m!6823738))

(assert (=> bm!470504 d!1859596))

(declare-fun b!5930868 () Bool)

(declare-fun e!3630069 () Bool)

(assert (=> b!5930868 (= e!3630069 (= (head!12495 (_2!36259 (get!22078 lt!2310674))) (c!1053727 (regTwo!32466 r!7292))))))

(declare-fun b!5930869 () Bool)

(declare-fun e!3630065 () Bool)

(assert (=> b!5930869 (= e!3630065 (matchR!8160 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (_2!36259 (get!22078 lt!2310674)))) (tail!11580 (_2!36259 (get!22078 lt!2310674)))))))

(declare-fun b!5930870 () Bool)

(declare-fun e!3630068 () Bool)

(declare-fun lt!2310744 () Bool)

(assert (=> b!5930870 (= e!3630068 (not lt!2310744))))

(declare-fun b!5930871 () Bool)

(declare-fun e!3630064 () Bool)

(declare-fun e!3630066 () Bool)

(assert (=> b!5930871 (= e!3630064 e!3630066)))

(declare-fun res!2485110 () Bool)

(assert (=> b!5930871 (=> res!2485110 e!3630066)))

(declare-fun call!470909 () Bool)

(assert (=> b!5930871 (= res!2485110 call!470909)))

(declare-fun b!5930872 () Bool)

(declare-fun e!3630063 () Bool)

(assert (=> b!5930872 (= e!3630063 (= lt!2310744 call!470909))))

(declare-fun b!5930873 () Bool)

(declare-fun res!2485116 () Bool)

(assert (=> b!5930873 (=> (not res!2485116) (not e!3630069))))

(assert (=> b!5930873 (= res!2485116 (not call!470909))))

(declare-fun bm!470904 () Bool)

(assert (=> bm!470904 (= call!470909 (isEmpty!35972 (_2!36259 (get!22078 lt!2310674))))))

(declare-fun b!5930874 () Bool)

(assert (=> b!5930874 (= e!3630063 e!3630068)))

(declare-fun c!1054417 () Bool)

(assert (=> b!5930874 (= c!1054417 ((_ is EmptyLang!15977) (regTwo!32466 r!7292)))))

(declare-fun b!5930875 () Bool)

(declare-fun res!2485117 () Bool)

(assert (=> b!5930875 (=> res!2485117 e!3630066)))

(assert (=> b!5930875 (= res!2485117 (not (isEmpty!35972 (tail!11580 (_2!36259 (get!22078 lt!2310674))))))))

(declare-fun b!5930876 () Bool)

(declare-fun res!2485114 () Bool)

(assert (=> b!5930876 (=> (not res!2485114) (not e!3630069))))

(assert (=> b!5930876 (= res!2485114 (isEmpty!35972 (tail!11580 (_2!36259 (get!22078 lt!2310674)))))))

(declare-fun d!1859598 () Bool)

(assert (=> d!1859598 e!3630063))

(declare-fun c!1054418 () Bool)

(assert (=> d!1859598 (= c!1054418 ((_ is EmptyExpr!15977) (regTwo!32466 r!7292)))))

(assert (=> d!1859598 (= lt!2310744 e!3630065)))

(declare-fun c!1054416 () Bool)

(assert (=> d!1859598 (= c!1054416 (isEmpty!35972 (_2!36259 (get!22078 lt!2310674))))))

(assert (=> d!1859598 (validRegex!7713 (regTwo!32466 r!7292))))

(assert (=> d!1859598 (= (matchR!8160 (regTwo!32466 r!7292) (_2!36259 (get!22078 lt!2310674))) lt!2310744)))

(declare-fun b!5930877 () Bool)

(declare-fun res!2485111 () Bool)

(declare-fun e!3630067 () Bool)

(assert (=> b!5930877 (=> res!2485111 e!3630067)))

(assert (=> b!5930877 (= res!2485111 (not ((_ is ElementMatch!15977) (regTwo!32466 r!7292))))))

(assert (=> b!5930877 (= e!3630068 e!3630067)))

(declare-fun b!5930878 () Bool)

(assert (=> b!5930878 (= e!3630066 (not (= (head!12495 (_2!36259 (get!22078 lt!2310674))) (c!1053727 (regTwo!32466 r!7292)))))))

(declare-fun b!5930879 () Bool)

(assert (=> b!5930879 (= e!3630067 e!3630064)))

(declare-fun res!2485113 () Bool)

(assert (=> b!5930879 (=> (not res!2485113) (not e!3630064))))

(assert (=> b!5930879 (= res!2485113 (not lt!2310744))))

(declare-fun b!5930880 () Bool)

(assert (=> b!5930880 (= e!3630065 (nullable!5972 (regTwo!32466 r!7292)))))

(declare-fun b!5930881 () Bool)

(declare-fun res!2485115 () Bool)

(assert (=> b!5930881 (=> res!2485115 e!3630067)))

(assert (=> b!5930881 (= res!2485115 e!3630069)))

(declare-fun res!2485112 () Bool)

(assert (=> b!5930881 (=> (not res!2485112) (not e!3630069))))

(assert (=> b!5930881 (= res!2485112 lt!2310744)))

(assert (= (and d!1859598 c!1054416) b!5930880))

(assert (= (and d!1859598 (not c!1054416)) b!5930869))

(assert (= (and d!1859598 c!1054418) b!5930872))

(assert (= (and d!1859598 (not c!1054418)) b!5930874))

(assert (= (and b!5930874 c!1054417) b!5930870))

(assert (= (and b!5930874 (not c!1054417)) b!5930877))

(assert (= (and b!5930877 (not res!2485111)) b!5930881))

(assert (= (and b!5930881 res!2485112) b!5930873))

(assert (= (and b!5930873 res!2485116) b!5930876))

(assert (= (and b!5930876 res!2485114) b!5930868))

(assert (= (and b!5930881 (not res!2485115)) b!5930879))

(assert (= (and b!5930879 res!2485113) b!5930871))

(assert (= (and b!5930871 (not res!2485110)) b!5930875))

(assert (= (and b!5930875 (not res!2485117)) b!5930878))

(assert (= (or b!5930872 b!5930871 b!5930873) bm!470904))

(declare-fun m!6823746 () Bool)

(assert (=> b!5930875 m!6823746))

(assert (=> b!5930875 m!6823746))

(declare-fun m!6823748 () Bool)

(assert (=> b!5930875 m!6823748))

(declare-fun m!6823750 () Bool)

(assert (=> b!5930869 m!6823750))

(assert (=> b!5930869 m!6823750))

(declare-fun m!6823752 () Bool)

(assert (=> b!5930869 m!6823752))

(assert (=> b!5930869 m!6823746))

(assert (=> b!5930869 m!6823752))

(assert (=> b!5930869 m!6823746))

(declare-fun m!6823754 () Bool)

(assert (=> b!5930869 m!6823754))

(declare-fun m!6823756 () Bool)

(assert (=> d!1859598 m!6823756))

(assert (=> d!1859598 m!6822168))

(assert (=> b!5930876 m!6823746))

(assert (=> b!5930876 m!6823746))

(assert (=> b!5930876 m!6823748))

(assert (=> b!5930880 m!6822170))

(assert (=> bm!470904 m!6823756))

(assert (=> b!5930868 m!6823750))

(assert (=> b!5930878 m!6823750))

(assert (=> b!5929282 d!1859598))

(assert (=> b!5929282 d!1859242))

(declare-fun d!1859602 () Bool)

(declare-fun res!2485119 () Bool)

(declare-fun e!3630076 () Bool)

(assert (=> d!1859602 (=> res!2485119 e!3630076)))

(assert (=> d!1859602 (= res!2485119 ((_ is Nil!64106) (t!377627 (exprs!5861 (h!70555 zl!343)))))))

(assert (=> d!1859602 (= (forall!15060 (t!377627 (exprs!5861 (h!70555 zl!343))) lambda!323412) e!3630076)))

(declare-fun b!5930893 () Bool)

(declare-fun e!3630077 () Bool)

(assert (=> b!5930893 (= e!3630076 e!3630077)))

(declare-fun res!2485120 () Bool)

(assert (=> b!5930893 (=> (not res!2485120) (not e!3630077))))

(assert (=> b!5930893 (= res!2485120 (dynLambda!25069 lambda!323412 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun b!5930894 () Bool)

(assert (=> b!5930894 (= e!3630077 (forall!15060 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))) lambda!323412))))

(assert (= (and d!1859602 (not res!2485119)) b!5930893))

(assert (= (and b!5930893 res!2485120) b!5930894))

(declare-fun b_lambda!222749 () Bool)

(assert (=> (not b_lambda!222749) (not b!5930893)))

(declare-fun m!6823758 () Bool)

(assert (=> b!5930893 m!6823758))

(declare-fun m!6823760 () Bool)

(assert (=> b!5930894 m!6823760))

(assert (=> b!5929129 d!1859602))

(assert (=> b!5929470 d!1859244))

(declare-fun d!1859604 () Bool)

(assert (=> d!1859604 true))

(assert (=> d!1859604 true))

(declare-fun res!2485121 () Bool)

(assert (=> d!1859604 (= (choose!44703 lambda!323405) res!2485121)))

(assert (=> d!1859058 d!1859604))

(declare-fun bm!470911 () Bool)

(declare-fun call!470919 () (InoxSet Context!10722))

(declare-fun call!470916 () (InoxSet Context!10722))

(assert (=> bm!470911 (= call!470919 call!470916)))

(declare-fun d!1859606 () Bool)

(declare-fun c!1054427 () Bool)

(assert (=> d!1859606 (= c!1054427 (and ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (= (c!1053727 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (h!70556 s!2326))))))

(declare-fun e!3630082 () (InoxSet Context!10722))

(assert (=> d!1859606 (= (derivationStepZipperDown!1227 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (h!70556 s!2326)) e!3630082)))

(declare-fun bm!470912 () Bool)

(declare-fun call!470918 () (InoxSet Context!10722))

(assert (=> bm!470912 (= call!470918 call!470919)))

(declare-fun b!5930895 () Bool)

(declare-fun e!3630080 () (InoxSet Context!10722))

(assert (=> b!5930895 (= e!3630080 call!470918)))

(declare-fun b!5930896 () Bool)

(declare-fun e!3630079 () (InoxSet Context!10722))

(declare-fun e!3630078 () (InoxSet Context!10722))

(assert (=> b!5930896 (= e!3630079 e!3630078)))

(declare-fun c!1054424 () Bool)

(assert (=> b!5930896 (= c!1054424 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))))))

(declare-fun b!5930897 () Bool)

(declare-fun e!3630083 () (InoxSet Context!10722))

(assert (=> b!5930897 (= e!3630082 e!3630083)))

(declare-fun c!1054425 () Bool)

(assert (=> b!5930897 (= c!1054425 ((_ is Union!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))))))

(declare-fun b!5930898 () Bool)

(declare-fun e!3630081 () Bool)

(assert (=> b!5930898 (= e!3630081 (nullable!5972 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))))))

(declare-fun bm!470913 () Bool)

(declare-fun call!470917 () List!64230)

(declare-fun call!470921 () List!64230)

(assert (=> bm!470913 (= call!470917 call!470921)))

(declare-fun b!5930899 () Bool)

(declare-fun call!470920 () (InoxSet Context!10722))

(assert (=> b!5930899 (= e!3630079 ((_ map or) call!470920 call!470919))))

(declare-fun c!1054426 () Bool)

(declare-fun bm!470914 () Bool)

(assert (=> bm!470914 (= call!470921 ($colon$colon!1864 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))) (ite (or c!1054426 c!1054424) (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))))))

(declare-fun b!5930900 () Bool)

(assert (=> b!5930900 (= e!3630080 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930901 () Bool)

(assert (=> b!5930901 (= e!3630078 call!470918)))

(declare-fun b!5930902 () Bool)

(assert (=> b!5930902 (= e!3630082 (store ((as const (Array Context!10722 Bool)) false) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) true))))

(declare-fun bm!470915 () Bool)

(assert (=> bm!470915 (= call!470920 (derivationStepZipperDown!1227 (ite c!1054425 (regOne!32467 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))) (ite c!1054425 (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (Context!10723 call!470921)) (h!70556 s!2326)))))

(declare-fun bm!470916 () Bool)

(assert (=> bm!470916 (= call!470916 (derivationStepZipperDown!1227 (ite c!1054425 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (ite c!1054426 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (ite c!1054424 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576))))))))) (ite (or c!1054425 c!1054426) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))) (Context!10723 call!470917)) (h!70556 s!2326)))))

(declare-fun b!5930903 () Bool)

(assert (=> b!5930903 (= c!1054426 e!3630081)))

(declare-fun res!2485122 () Bool)

(assert (=> b!5930903 (=> (not res!2485122) (not e!3630081))))

(assert (=> b!5930903 (= res!2485122 ((_ is Concat!24822) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))))))

(assert (=> b!5930903 (= e!3630083 e!3630079)))

(declare-fun b!5930904 () Bool)

(assert (=> b!5930904 (= e!3630083 ((_ map or) call!470920 call!470916))))

(declare-fun b!5930905 () Bool)

(declare-fun c!1054428 () Bool)

(assert (=> b!5930905 (= c!1054428 ((_ is Star!15977) (h!70554 (exprs!5861 (Context!10723 (t!377627 (exprs!5861 lt!2310576)))))))))

(assert (=> b!5930905 (= e!3630078 e!3630080)))

(assert (= (and d!1859606 c!1054427) b!5930902))

(assert (= (and d!1859606 (not c!1054427)) b!5930897))

(assert (= (and b!5930897 c!1054425) b!5930904))

(assert (= (and b!5930897 (not c!1054425)) b!5930903))

(assert (= (and b!5930903 res!2485122) b!5930898))

(assert (= (and b!5930903 c!1054426) b!5930899))

(assert (= (and b!5930903 (not c!1054426)) b!5930896))

(assert (= (and b!5930896 c!1054424) b!5930901))

(assert (= (and b!5930896 (not c!1054424)) b!5930905))

(assert (= (and b!5930905 c!1054428) b!5930895))

(assert (= (and b!5930905 (not c!1054428)) b!5930900))

(assert (= (or b!5930901 b!5930895) bm!470913))

(assert (= (or b!5930901 b!5930895) bm!470912))

(assert (= (or b!5930899 bm!470913) bm!470914))

(assert (= (or b!5930899 bm!470912) bm!470911))

(assert (= (or b!5930904 bm!470911) bm!470916))

(assert (= (or b!5930904 b!5930899) bm!470915))

(declare-fun m!6823768 () Bool)

(assert (=> b!5930902 m!6823768))

(declare-fun m!6823772 () Bool)

(assert (=> bm!470914 m!6823772))

(declare-fun m!6823774 () Bool)

(assert (=> bm!470916 m!6823774))

(declare-fun m!6823778 () Bool)

(assert (=> bm!470915 m!6823778))

(declare-fun m!6823780 () Bool)

(assert (=> b!5930898 m!6823780))

(assert (=> bm!470497 d!1859606))

(declare-fun bm!470920 () Bool)

(declare-fun call!470928 () (InoxSet Context!10722))

(declare-fun call!470925 () (InoxSet Context!10722))

(assert (=> bm!470920 (= call!470928 call!470925)))

(declare-fun d!1859610 () Bool)

(declare-fun c!1054434 () Bool)

(assert (=> d!1859610 (= c!1054434 (and ((_ is ElementMatch!15977) (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (= (c!1053727 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (h!70556 s!2326))))))

(declare-fun e!3630095 () (InoxSet Context!10722))

(assert (=> d!1859610 (= (derivationStepZipperDown!1227 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))) (ite c!1053950 (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470524)) (h!70556 s!2326)) e!3630095)))

(declare-fun bm!470921 () Bool)

(declare-fun call!470927 () (InoxSet Context!10722))

(assert (=> bm!470921 (= call!470927 call!470928)))

(declare-fun b!5930915 () Bool)

(declare-fun e!3630093 () (InoxSet Context!10722))

(assert (=> b!5930915 (= e!3630093 call!470927)))

(declare-fun b!5930916 () Bool)

(declare-fun e!3630092 () (InoxSet Context!10722))

(declare-fun e!3630091 () (InoxSet Context!10722))

(assert (=> b!5930916 (= e!3630092 e!3630091)))

(declare-fun c!1054431 () Bool)

(assert (=> b!5930916 (= c!1054431 ((_ is Concat!24822) (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))

(declare-fun b!5930917 () Bool)

(declare-fun e!3630096 () (InoxSet Context!10722))

(assert (=> b!5930917 (= e!3630095 e!3630096)))

(declare-fun c!1054432 () Bool)

(assert (=> b!5930917 (= c!1054432 ((_ is Union!15977) (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))

(declare-fun b!5930918 () Bool)

(declare-fun e!3630094 () Bool)

(assert (=> b!5930918 (= e!3630094 (nullable!5972 (regOne!32466 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))

(declare-fun bm!470922 () Bool)

(declare-fun call!470926 () List!64230)

(declare-fun call!470930 () List!64230)

(assert (=> bm!470922 (= call!470926 call!470930)))

(declare-fun b!5930919 () Bool)

(declare-fun call!470929 () (InoxSet Context!10722))

(assert (=> b!5930919 (= e!3630092 ((_ map or) call!470929 call!470928))))

(declare-fun bm!470923 () Bool)

(declare-fun c!1054433 () Bool)

(assert (=> bm!470923 (= call!470930 ($colon$colon!1864 (exprs!5861 (ite c!1053950 (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470524))) (ite (or c!1054433 c!1054431) (regTwo!32466 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))))

(declare-fun b!5930920 () Bool)

(assert (=> b!5930920 (= e!3630093 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930921 () Bool)

(assert (=> b!5930921 (= e!3630091 call!470927)))

(declare-fun b!5930922 () Bool)

(assert (=> b!5930922 (= e!3630095 (store ((as const (Array Context!10722 Bool)) false) (ite c!1053950 (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470524)) true))))

(declare-fun bm!470924 () Bool)

(assert (=> bm!470924 (= call!470929 (derivationStepZipperDown!1227 (ite c!1054432 (regOne!32467 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (regOne!32466 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))) (ite c!1054432 (ite c!1053950 (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470524)) (Context!10723 call!470930)) (h!70556 s!2326)))))

(declare-fun bm!470925 () Bool)

(assert (=> bm!470925 (= call!470925 (derivationStepZipperDown!1227 (ite c!1054432 (regTwo!32467 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (ite c!1054433 (regTwo!32466 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (ite c!1054431 (regOne!32466 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))) (reg!16306 (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292)))))))) (ite (or c!1054432 c!1054433) (ite c!1053950 (ite c!1053849 (Context!10723 Nil!64106) (Context!10723 call!470473)) (Context!10723 call!470524)) (Context!10723 call!470926)) (h!70556 s!2326)))))

(declare-fun b!5930923 () Bool)

(assert (=> b!5930923 (= c!1054433 e!3630094)))

(declare-fun res!2485128 () Bool)

(assert (=> b!5930923 (=> (not res!2485128) (not e!3630094))))

(assert (=> b!5930923 (= res!2485128 ((_ is Concat!24822) (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))

(assert (=> b!5930923 (= e!3630096 e!3630092)))

(declare-fun b!5930924 () Bool)

(assert (=> b!5930924 (= e!3630096 ((_ map or) call!470929 call!470925))))

(declare-fun b!5930925 () Bool)

(declare-fun c!1054435 () Bool)

(assert (=> b!5930925 (= c!1054435 ((_ is Star!15977) (ite c!1053950 (regOne!32467 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))) (regOne!32466 (ite c!1053849 (regOne!32467 r!7292) (regOne!32466 r!7292))))))))

(assert (=> b!5930925 (= e!3630091 e!3630093)))

(assert (= (and d!1859610 c!1054434) b!5930922))

(assert (= (and d!1859610 (not c!1054434)) b!5930917))

(assert (= (and b!5930917 c!1054432) b!5930924))

(assert (= (and b!5930917 (not c!1054432)) b!5930923))

(assert (= (and b!5930923 res!2485128) b!5930918))

(assert (= (and b!5930923 c!1054433) b!5930919))

(assert (= (and b!5930923 (not c!1054433)) b!5930916))

(assert (= (and b!5930916 c!1054431) b!5930921))

(assert (= (and b!5930916 (not c!1054431)) b!5930925))

(assert (= (and b!5930925 c!1054435) b!5930915))

(assert (= (and b!5930925 (not c!1054435)) b!5930920))

(assert (= (or b!5930921 b!5930915) bm!470922))

(assert (= (or b!5930921 b!5930915) bm!470921))

(assert (= (or b!5930919 bm!470922) bm!470923))

(assert (= (or b!5930919 bm!470921) bm!470920))

(assert (= (or b!5930924 bm!470920) bm!470925))

(assert (= (or b!5930924 b!5930919) bm!470924))

(declare-fun m!6823786 () Bool)

(assert (=> b!5930922 m!6823786))

(declare-fun m!6823790 () Bool)

(assert (=> bm!470923 m!6823790))

(declare-fun m!6823792 () Bool)

(assert (=> bm!470925 m!6823792))

(declare-fun m!6823794 () Bool)

(assert (=> bm!470924 m!6823794))

(declare-fun m!6823796 () Bool)

(assert (=> b!5930918 m!6823796))

(assert (=> bm!470518 d!1859610))

(declare-fun bm!470926 () Bool)

(declare-fun call!470934 () (InoxSet Context!10722))

(declare-fun call!470931 () (InoxSet Context!10722))

(assert (=> bm!470926 (= call!470934 call!470931)))

(declare-fun c!1054439 () Bool)

(declare-fun d!1859614 () Bool)

(assert (=> d!1859614 (= c!1054439 (and ((_ is ElementMatch!15977) (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))) (= (c!1053727 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))) (h!70556 s!2326))))))

(declare-fun e!3630101 () (InoxSet Context!10722))

(assert (=> d!1859614 (= (derivationStepZipperDown!1227 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))) (ite (or c!1054089 c!1054090) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470616)) (h!70556 s!2326)) e!3630101)))

(declare-fun bm!470927 () Bool)

(declare-fun call!470933 () (InoxSet Context!10722))

(assert (=> bm!470927 (= call!470933 call!470934)))

(declare-fun b!5930926 () Bool)

(declare-fun e!3630099 () (InoxSet Context!10722))

(assert (=> b!5930926 (= e!3630099 call!470933)))

(declare-fun b!5930927 () Bool)

(declare-fun e!3630098 () (InoxSet Context!10722))

(declare-fun e!3630097 () (InoxSet Context!10722))

(assert (=> b!5930927 (= e!3630098 e!3630097)))

(declare-fun c!1054436 () Bool)

(assert (=> b!5930927 (= c!1054436 ((_ is Concat!24822) (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))))

(declare-fun b!5930928 () Bool)

(declare-fun e!3630102 () (InoxSet Context!10722))

(assert (=> b!5930928 (= e!3630101 e!3630102)))

(declare-fun c!1054437 () Bool)

(assert (=> b!5930928 (= c!1054437 ((_ is Union!15977) (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))))

(declare-fun b!5930929 () Bool)

(declare-fun e!3630100 () Bool)

(assert (=> b!5930929 (= e!3630100 (nullable!5972 (regOne!32466 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))))

(declare-fun bm!470928 () Bool)

(declare-fun call!470932 () List!64230)

(declare-fun call!470936 () List!64230)

(assert (=> bm!470928 (= call!470932 call!470936)))

(declare-fun b!5930930 () Bool)

(declare-fun call!470935 () (InoxSet Context!10722))

(assert (=> b!5930930 (= e!3630098 ((_ map or) call!470935 call!470934))))

(declare-fun c!1054438 () Bool)

(declare-fun bm!470929 () Bool)

(assert (=> bm!470929 (= call!470936 ($colon$colon!1864 (exprs!5861 (ite (or c!1054089 c!1054090) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470616))) (ite (or c!1054438 c!1054436) (regTwo!32466 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))) (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))))

(declare-fun b!5930931 () Bool)

(assert (=> b!5930931 (= e!3630099 ((as const (Array Context!10722 Bool)) false))))

(declare-fun b!5930932 () Bool)

(assert (=> b!5930932 (= e!3630097 call!470933)))

(declare-fun b!5930933 () Bool)

(assert (=> b!5930933 (= e!3630101 (store ((as const (Array Context!10722 Bool)) false) (ite (or c!1054089 c!1054090) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470616)) true))))

(declare-fun bm!470930 () Bool)

(assert (=> bm!470930 (= call!470935 (derivationStepZipperDown!1227 (ite c!1054437 (regOne!32467 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))) (regOne!32466 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))) (ite c!1054437 (ite (or c!1054089 c!1054090) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470616)) (Context!10723 call!470936)) (h!70556 s!2326)))))

(declare-fun bm!470931 () Bool)

(assert (=> bm!470931 (= call!470931 (derivationStepZipperDown!1227 (ite c!1054437 (regTwo!32467 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))) (ite c!1054438 (regTwo!32466 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))) (ite c!1054436 (regOne!32466 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))) (reg!16306 (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106)))))))))))) (ite (or c!1054437 c!1054438) (ite (or c!1054089 c!1054090) (Context!10723 (t!377627 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (Context!10723 call!470616)) (Context!10723 call!470932)) (h!70556 s!2326)))))

(declare-fun b!5930934 () Bool)

(assert (=> b!5930934 (= c!1054438 e!3630100)))

(declare-fun res!2485129 () Bool)

(assert (=> b!5930934 (=> (not res!2485129) (not e!3630100))))

(assert (=> b!5930934 (= res!2485129 ((_ is Concat!24822) (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))))

(assert (=> b!5930934 (= e!3630102 e!3630098)))

(declare-fun b!5930935 () Bool)

(assert (=> b!5930935 (= e!3630102 ((_ map or) call!470935 call!470931))))

(declare-fun b!5930936 () Bool)

(declare-fun c!1054440 () Bool)

(assert (=> b!5930936 (= c!1054440 ((_ is Star!15977) (ite c!1054089 (regTwo!32467 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054090 (regTwo!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (ite c!1054088 (regOne!32466 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))) (reg!16306 (h!70554 (exprs!5861 (Context!10723 (Cons!64106 r!7292 Nil!64106))))))))))))

(assert (=> b!5930936 (= e!3630097 e!3630099)))

(assert (= (and d!1859614 c!1054439) b!5930933))

(assert (= (and d!1859614 (not c!1054439)) b!5930928))

(assert (= (and b!5930928 c!1054437) b!5930935))

(assert (= (and b!5930928 (not c!1054437)) b!5930934))

(assert (= (and b!5930934 res!2485129) b!5930929))

(assert (= (and b!5930934 c!1054438) b!5930930))

(assert (= (and b!5930934 (not c!1054438)) b!5930927))

(assert (= (and b!5930927 c!1054436) b!5930932))

(assert (= (and b!5930927 (not c!1054436)) b!5930936))

(assert (= (and b!5930936 c!1054440) b!5930926))

(assert (= (and b!5930936 (not c!1054440)) b!5930931))

(assert (= (or b!5930932 b!5930926) bm!470928))

(assert (= (or b!5930932 b!5930926) bm!470927))

(assert (= (or b!5930930 bm!470928) bm!470929))

(assert (= (or b!5930930 bm!470927) bm!470926))

(assert (= (or b!5930935 bm!470926) bm!470931))

(assert (= (or b!5930935 b!5930930) bm!470930))

(declare-fun m!6823798 () Bool)

(assert (=> b!5930933 m!6823798))

(declare-fun m!6823800 () Bool)

(assert (=> bm!470929 m!6823800))

(declare-fun m!6823804 () Bool)

(assert (=> bm!470931 m!6823804))

(declare-fun m!6823806 () Bool)

(assert (=> bm!470930 m!6823806))

(declare-fun m!6823808 () Bool)

(assert (=> b!5930929 m!6823808))

(assert (=> bm!470615 d!1859614))

(assert (=> d!1858954 d!1858922))

(assert (=> d!1858954 d!1858948))

(declare-fun d!1859618 () Bool)

(assert (=> d!1859618 (= (++!14074 (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) Nil!64108)) (t!377629 s!2326)) s!2326)))

(assert (=> d!1859618 true))

(declare-fun _$68!1003 () Unit!157225)

(assert (=> d!1859618 (= (choose!44706 Nil!64108 (h!70556 s!2326) (t!377629 s!2326) s!2326) _$68!1003)))

(declare-fun bs!1403433 () Bool)

(assert (= bs!1403433 d!1859618))

(assert (=> bs!1403433 m!6821934))

(assert (=> bs!1403433 m!6821934))

(assert (=> bs!1403433 m!6821936))

(assert (=> d!1858954 d!1859618))

(declare-fun b!5930956 () Bool)

(declare-fun e!3630118 () List!64232)

(assert (=> b!5930956 (= e!3630118 (Cons!64108 (h!70556 Nil!64108) (++!14074 (t!377629 Nil!64108) (Cons!64108 (h!70556 s!2326) (t!377629 s!2326)))))))

(declare-fun b!5930955 () Bool)

(assert (=> b!5930955 (= e!3630118 (Cons!64108 (h!70556 s!2326) (t!377629 s!2326)))))

(declare-fun d!1859624 () Bool)

(declare-fun e!3630117 () Bool)

(assert (=> d!1859624 e!3630117))

(declare-fun res!2485141 () Bool)

(assert (=> d!1859624 (=> (not res!2485141) (not e!3630117))))

(declare-fun lt!2310745 () List!64232)

(assert (=> d!1859624 (= res!2485141 (= (content!11814 lt!2310745) ((_ map or) (content!11814 Nil!64108) (content!11814 (Cons!64108 (h!70556 s!2326) (t!377629 s!2326))))))))

(assert (=> d!1859624 (= lt!2310745 e!3630118)))

(declare-fun c!1054445 () Bool)

(assert (=> d!1859624 (= c!1054445 ((_ is Nil!64108) Nil!64108))))

(assert (=> d!1859624 (= (++!14074 Nil!64108 (Cons!64108 (h!70556 s!2326) (t!377629 s!2326))) lt!2310745)))

(declare-fun b!5930958 () Bool)

(assert (=> b!5930958 (= e!3630117 (or (not (= (Cons!64108 (h!70556 s!2326) (t!377629 s!2326)) Nil!64108)) (= lt!2310745 Nil!64108)))))

(declare-fun b!5930957 () Bool)

(declare-fun res!2485140 () Bool)

(assert (=> b!5930957 (=> (not res!2485140) (not e!3630117))))

(assert (=> b!5930957 (= res!2485140 (= (size!40144 lt!2310745) (+ (size!40144 Nil!64108) (size!40144 (Cons!64108 (h!70556 s!2326) (t!377629 s!2326))))))))

(assert (= (and d!1859624 c!1054445) b!5930955))

(assert (= (and d!1859624 (not c!1054445)) b!5930956))

(assert (= (and d!1859624 res!2485141) b!5930957))

(assert (= (and b!5930957 res!2485140) b!5930958))

(declare-fun m!6823822 () Bool)

(assert (=> b!5930956 m!6823822))

(declare-fun m!6823824 () Bool)

(assert (=> d!1859624 m!6823824))

(assert (=> d!1859624 m!6822274))

(declare-fun m!6823826 () Bool)

(assert (=> d!1859624 m!6823826))

(declare-fun m!6823828 () Bool)

(assert (=> b!5930957 m!6823828))

(assert (=> b!5930957 m!6822280))

(declare-fun m!6823830 () Bool)

(assert (=> b!5930957 m!6823830))

(assert (=> d!1858954 d!1859624))

(assert (=> b!5929542 d!1859212))

(declare-fun bs!1403434 () Bool)

(declare-fun d!1859628 () Bool)

(assert (= bs!1403434 (and d!1859628 d!1859074)))

(declare-fun lambda!323471 () Int)

(assert (=> bs!1403434 (= lambda!323471 lambda!323441)))

(declare-fun bs!1403435 () Bool)

(assert (= bs!1403435 (and d!1859628 d!1859016)))

(assert (=> bs!1403435 (= lambda!323471 lambda!323429)))

(declare-fun bs!1403436 () Bool)

(assert (= bs!1403436 (and d!1859628 d!1858790)))

(assert (=> bs!1403436 (= lambda!323471 lambda!323402)))

(declare-fun bs!1403437 () Bool)

(assert (= bs!1403437 (and d!1859628 d!1859292)))

(assert (=> bs!1403437 (= lambda!323471 lambda!323452)))

(declare-fun bs!1403438 () Bool)

(assert (= bs!1403438 (and d!1859628 d!1859592)))

(assert (=> bs!1403438 (= lambda!323471 lambda!323469)))

(declare-fun bs!1403439 () Bool)

(assert (= bs!1403439 (and d!1859628 d!1858760)))

(assert (=> bs!1403439 (= lambda!323471 lambda!323389)))

(declare-fun bs!1403440 () Bool)

(assert (= bs!1403440 (and d!1859628 d!1858764)))

(assert (=> bs!1403440 (= lambda!323471 lambda!323390)))

(declare-fun bs!1403441 () Bool)

(assert (= bs!1403441 (and d!1859628 d!1859188)))

(assert (=> bs!1403441 (= lambda!323471 lambda!323449)))

(declare-fun bs!1403442 () Bool)

(assert (= bs!1403442 (and d!1859628 d!1858804)))

(assert (=> bs!1403442 (= lambda!323471 lambda!323412)))

(declare-fun bs!1403443 () Bool)

(assert (= bs!1403443 (and d!1859628 d!1858774)))

(assert (=> bs!1403443 (= lambda!323471 lambda!323396)))

(declare-fun bs!1403444 () Bool)

(assert (= bs!1403444 (and d!1859628 d!1859132)))

(assert (=> bs!1403444 (= lambda!323471 lambda!323448)))

(declare-fun bs!1403445 () Bool)

(assert (= bs!1403445 (and d!1859628 d!1859204)))

(assert (=> bs!1403445 (= lambda!323471 lambda!323450)))

(declare-fun bs!1403446 () Bool)

(assert (= bs!1403446 (and d!1859628 d!1859442)))

(assert (=> bs!1403446 (= lambda!323471 lambda!323458)))

(declare-fun bs!1403447 () Bool)

(assert (= bs!1403447 (and d!1859628 d!1858772)))

(assert (=> bs!1403447 (= lambda!323471 lambda!323393)))

(declare-fun bs!1403448 () Bool)

(assert (= bs!1403448 (and d!1859628 d!1859290)))

(assert (=> bs!1403448 (= lambda!323471 lambda!323451)))

(declare-fun bs!1403449 () Bool)

(assert (= bs!1403449 (and d!1859628 d!1858900)))

(assert (=> bs!1403449 (= lambda!323471 lambda!323422)))

(declare-fun bs!1403450 () Bool)

(assert (= bs!1403450 (and d!1859628 d!1858920)))

(assert (=> bs!1403450 (= lambda!323471 lambda!323425)))

(declare-fun bs!1403451 () Bool)

(assert (= bs!1403451 (and d!1859628 d!1859322)))

(assert (=> bs!1403451 (= lambda!323471 lambda!323453)))

(assert (=> d!1859628 (= (inv!83189 (h!70555 res!2484500)) (forall!15060 (exprs!5861 (h!70555 res!2484500)) lambda!323471))))

(declare-fun bs!1403452 () Bool)

(assert (= bs!1403452 d!1859628))

(declare-fun m!6823842 () Bool)

(assert (=> bs!1403452 m!6823842))

(assert (=> b!5929065 d!1859628))

(declare-fun d!1859634 () Bool)

(assert (=> d!1859634 (= (isEmpty!35969 (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))) ((_ is Nil!64106) (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(assert (=> b!5929198 d!1859634))

(assert (=> b!5929385 d!1859236))

(assert (=> b!5929385 d!1859238))

(assert (=> b!5929566 d!1858890))

(declare-fun d!1859636 () Bool)

(assert (=> d!1859636 (= (isEmptyLang!1414 lt!2310660) ((_ is EmptyLang!15977) lt!2310660))))

(assert (=> b!5929137 d!1859636))

(declare-fun b!5930963 () Bool)

(declare-fun e!3630127 () Bool)

(assert (=> b!5930963 (= e!3630127 (= (head!12495 (t!377629 s!2326)) (c!1053727 (regTwo!32466 r!7292))))))

(declare-fun b!5930964 () Bool)

(declare-fun e!3630123 () Bool)

(assert (=> b!5930964 (= e!3630123 (matchR!8160 (derivativeStep!4708 (regTwo!32466 r!7292) (head!12495 (t!377629 s!2326))) (tail!11580 (t!377629 s!2326))))))

(declare-fun b!5930965 () Bool)

(declare-fun e!3630126 () Bool)

(declare-fun lt!2310747 () Bool)

(assert (=> b!5930965 (= e!3630126 (not lt!2310747))))

(declare-fun b!5930966 () Bool)

(declare-fun e!3630122 () Bool)

(declare-fun e!3630124 () Bool)

(assert (=> b!5930966 (= e!3630122 e!3630124)))

(declare-fun res!2485144 () Bool)

(assert (=> b!5930966 (=> res!2485144 e!3630124)))

(declare-fun call!470943 () Bool)

(assert (=> b!5930966 (= res!2485144 call!470943)))

(declare-fun b!5930967 () Bool)

(declare-fun e!3630121 () Bool)

(assert (=> b!5930967 (= e!3630121 (= lt!2310747 call!470943))))

(declare-fun b!5930968 () Bool)

(declare-fun res!2485150 () Bool)

(assert (=> b!5930968 (=> (not res!2485150) (not e!3630127))))

(assert (=> b!5930968 (= res!2485150 (not call!470943))))

(declare-fun bm!470938 () Bool)

(assert (=> bm!470938 (= call!470943 (isEmpty!35972 (t!377629 s!2326)))))

(declare-fun b!5930969 () Bool)

(assert (=> b!5930969 (= e!3630121 e!3630126)))

(declare-fun c!1054448 () Bool)

(assert (=> b!5930969 (= c!1054448 ((_ is EmptyLang!15977) (regTwo!32466 r!7292)))))

(declare-fun b!5930970 () Bool)

(declare-fun res!2485151 () Bool)

(assert (=> b!5930970 (=> res!2485151 e!3630124)))

(assert (=> b!5930970 (= res!2485151 (not (isEmpty!35972 (tail!11580 (t!377629 s!2326)))))))

(declare-fun b!5930971 () Bool)

(declare-fun res!2485148 () Bool)

(assert (=> b!5930971 (=> (not res!2485148) (not e!3630127))))

(assert (=> b!5930971 (= res!2485148 (isEmpty!35972 (tail!11580 (t!377629 s!2326))))))

(declare-fun d!1859638 () Bool)

(assert (=> d!1859638 e!3630121))

(declare-fun c!1054449 () Bool)

(assert (=> d!1859638 (= c!1054449 ((_ is EmptyExpr!15977) (regTwo!32466 r!7292)))))

(assert (=> d!1859638 (= lt!2310747 e!3630123)))

(declare-fun c!1054447 () Bool)

(assert (=> d!1859638 (= c!1054447 (isEmpty!35972 (t!377629 s!2326)))))

(assert (=> d!1859638 (validRegex!7713 (regTwo!32466 r!7292))))

(assert (=> d!1859638 (= (matchR!8160 (regTwo!32466 r!7292) (t!377629 s!2326)) lt!2310747)))

(declare-fun b!5930972 () Bool)

(declare-fun res!2485145 () Bool)

(declare-fun e!3630125 () Bool)

(assert (=> b!5930972 (=> res!2485145 e!3630125)))

(assert (=> b!5930972 (= res!2485145 (not ((_ is ElementMatch!15977) (regTwo!32466 r!7292))))))

(assert (=> b!5930972 (= e!3630126 e!3630125)))

(declare-fun b!5930973 () Bool)

(assert (=> b!5930973 (= e!3630124 (not (= (head!12495 (t!377629 s!2326)) (c!1053727 (regTwo!32466 r!7292)))))))

(declare-fun b!5930974 () Bool)

(assert (=> b!5930974 (= e!3630125 e!3630122)))

(declare-fun res!2485147 () Bool)

(assert (=> b!5930974 (=> (not res!2485147) (not e!3630122))))

(assert (=> b!5930974 (= res!2485147 (not lt!2310747))))

(declare-fun b!5930975 () Bool)

(assert (=> b!5930975 (= e!3630123 (nullable!5972 (regTwo!32466 r!7292)))))

(declare-fun b!5930976 () Bool)

(declare-fun res!2485149 () Bool)

(assert (=> b!5930976 (=> res!2485149 e!3630125)))

(assert (=> b!5930976 (= res!2485149 e!3630127)))

(declare-fun res!2485146 () Bool)

(assert (=> b!5930976 (=> (not res!2485146) (not e!3630127))))

(assert (=> b!5930976 (= res!2485146 lt!2310747)))

(assert (= (and d!1859638 c!1054447) b!5930975))

(assert (= (and d!1859638 (not c!1054447)) b!5930964))

(assert (= (and d!1859638 c!1054449) b!5930967))

(assert (= (and d!1859638 (not c!1054449)) b!5930969))

(assert (= (and b!5930969 c!1054448) b!5930965))

(assert (= (and b!5930969 (not c!1054448)) b!5930972))

(assert (= (and b!5930972 (not res!2485145)) b!5930976))

(assert (= (and b!5930976 res!2485146) b!5930968))

(assert (= (and b!5930968 res!2485150) b!5930971))

(assert (= (and b!5930971 res!2485148) b!5930963))

(assert (= (and b!5930976 (not res!2485149)) b!5930974))

(assert (= (and b!5930974 res!2485147) b!5930966))

(assert (= (and b!5930966 (not res!2485144)) b!5930970))

(assert (= (and b!5930970 (not res!2485151)) b!5930973))

(assert (= (or b!5930967 b!5930966 b!5930968) bm!470938))

(declare-fun m!6823844 () Bool)

(assert (=> b!5930970 m!6823844))

(assert (=> b!5930970 m!6823844))

(declare-fun m!6823846 () Bool)

(assert (=> b!5930970 m!6823846))

(declare-fun m!6823848 () Bool)

(assert (=> b!5930964 m!6823848))

(assert (=> b!5930964 m!6823848))

(declare-fun m!6823850 () Bool)

(assert (=> b!5930964 m!6823850))

(assert (=> b!5930964 m!6823844))

(assert (=> b!5930964 m!6823850))

(assert (=> b!5930964 m!6823844))

(declare-fun m!6823852 () Bool)

(assert (=> b!5930964 m!6823852))

(declare-fun m!6823854 () Bool)

(assert (=> d!1859638 m!6823854))

(assert (=> d!1859638 m!6822168))

(assert (=> b!5930971 m!6823844))

(assert (=> b!5930971 m!6823844))

(assert (=> b!5930971 m!6823846))

(assert (=> b!5930975 m!6822170))

(assert (=> bm!470938 m!6823854))

(assert (=> b!5930963 m!6823848))

(assert (=> b!5930973 m!6823848))

(assert (=> b!5929286 d!1859638))

(declare-fun d!1859640 () Bool)

(declare-fun c!1054450 () Bool)

(assert (=> d!1859640 (= c!1054450 ((_ is Nil!64108) lt!2310677))))

(declare-fun e!3630128 () (InoxSet C!32224))

(assert (=> d!1859640 (= (content!11814 lt!2310677) e!3630128)))

(declare-fun b!5930979 () Bool)

(assert (=> b!5930979 (= e!3630128 ((as const (Array C!32224 Bool)) false))))

(declare-fun b!5930980 () Bool)

(assert (=> b!5930980 (= e!3630128 ((_ map or) (store ((as const (Array C!32224 Bool)) false) (h!70556 lt!2310677) true) (content!11814 (t!377629 lt!2310677))))))

(assert (= (and d!1859640 c!1054450) b!5930979))

(assert (= (and d!1859640 (not c!1054450)) b!5930980))

(declare-fun m!6823856 () Bool)

(assert (=> b!5930980 m!6823856))

(declare-fun m!6823858 () Bool)

(assert (=> b!5930980 m!6823858))

(assert (=> d!1858998 d!1859640))

(declare-fun d!1859642 () Bool)

(declare-fun c!1054453 () Bool)

(assert (=> d!1859642 (= c!1054453 ((_ is Nil!64108) (_1!36259 (get!22078 lt!2310648))))))

(declare-fun e!3630131 () (InoxSet C!32224))

(assert (=> d!1859642 (= (content!11814 (_1!36259 (get!22078 lt!2310648))) e!3630131)))

(declare-fun b!5930983 () Bool)

(assert (=> b!5930983 (= e!3630131 ((as const (Array C!32224 Bool)) false))))

(declare-fun b!5930984 () Bool)

(assert (=> b!5930984 (= e!3630131 ((_ map or) (store ((as const (Array C!32224 Bool)) false) (h!70556 (_1!36259 (get!22078 lt!2310648))) true) (content!11814 (t!377629 (_1!36259 (get!22078 lt!2310648))))))))

(assert (= (and d!1859642 c!1054453) b!5930983))

(assert (= (and d!1859642 (not c!1054453)) b!5930984))

(declare-fun m!6823860 () Bool)

(assert (=> b!5930984 m!6823860))

(assert (=> b!5930984 m!6822820))

(assert (=> d!1858998 d!1859642))

(declare-fun d!1859644 () Bool)

(declare-fun c!1054454 () Bool)

(assert (=> d!1859644 (= c!1054454 ((_ is Nil!64108) (_2!36259 (get!22078 lt!2310648))))))

(declare-fun e!3630132 () (InoxSet C!32224))

(assert (=> d!1859644 (= (content!11814 (_2!36259 (get!22078 lt!2310648))) e!3630132)))

(declare-fun b!5930985 () Bool)

(assert (=> b!5930985 (= e!3630132 ((as const (Array C!32224 Bool)) false))))

(declare-fun b!5930986 () Bool)

(assert (=> b!5930986 (= e!3630132 ((_ map or) (store ((as const (Array C!32224 Bool)) false) (h!70556 (_2!36259 (get!22078 lt!2310648))) true) (content!11814 (t!377629 (_2!36259 (get!22078 lt!2310648))))))))

(assert (= (and d!1859644 c!1054454) b!5930985))

(assert (= (and d!1859644 (not c!1054454)) b!5930986))

(declare-fun m!6823862 () Bool)

(assert (=> b!5930986 m!6823862))

(declare-fun m!6823864 () Bool)

(assert (=> b!5930986 m!6823864))

(assert (=> d!1858998 d!1859644))

(assert (=> b!5929148 d!1859498))

(assert (=> b!5929148 d!1859500))

(declare-fun d!1859646 () Bool)

(declare-fun res!2485152 () Bool)

(declare-fun e!3630133 () Bool)

(assert (=> d!1859646 (=> res!2485152 e!3630133)))

(assert (=> d!1859646 (= res!2485152 ((_ is Nil!64107) (t!377628 lt!2310624)))))

(assert (=> d!1859646 (= (noDuplicate!1835 (t!377628 lt!2310624)) e!3630133)))

(declare-fun b!5930987 () Bool)

(declare-fun e!3630134 () Bool)

(assert (=> b!5930987 (= e!3630133 e!3630134)))

(declare-fun res!2485153 () Bool)

(assert (=> b!5930987 (=> (not res!2485153) (not e!3630134))))

(assert (=> b!5930987 (= res!2485153 (not (contains!19962 (t!377628 (t!377628 lt!2310624)) (h!70555 (t!377628 lt!2310624)))))))

(declare-fun b!5930988 () Bool)

(assert (=> b!5930988 (= e!3630134 (noDuplicate!1835 (t!377628 (t!377628 lt!2310624))))))

(assert (= (and d!1859646 (not res!2485152)) b!5930987))

(assert (= (and b!5930987 res!2485153) b!5930988))

(declare-fun m!6823866 () Bool)

(assert (=> b!5930987 m!6823866))

(declare-fun m!6823868 () Bool)

(assert (=> b!5930988 m!6823868))

(assert (=> b!5929058 d!1859646))

(declare-fun bs!1403454 () Bool)

(declare-fun b!5931000 () Bool)

(assert (= bs!1403454 (and b!5931000 d!1858796)))

(declare-fun lambda!323472 () Int)

(assert (=> bs!1403454 (not (= lambda!323472 lambda!323405))))

(declare-fun bs!1403456 () Bool)

(assert (= bs!1403456 (and b!5931000 b!5930666)))

(assert (=> bs!1403456 (= (and (= (reg!16306 (regOne!32467 (regTwo!32467 r!7292))) (reg!16306 (regOne!32467 (regOne!32467 r!7292)))) (= (regOne!32467 (regTwo!32467 r!7292)) (regOne!32467 (regOne!32467 r!7292)))) (= lambda!323472 lambda!323462))))

(declare-fun bs!1403457 () Bool)

(assert (= bs!1403457 (and b!5931000 b!5930665)))

(assert (=> bs!1403457 (not (= lambda!323472 lambda!323463))))

(declare-fun bs!1403458 () Bool)

(assert (= bs!1403458 (and b!5931000 b!5930742)))

(assert (=> bs!1403458 (= (and (= (reg!16306 (regOne!32467 (regTwo!32467 r!7292))) (reg!16306 (regTwo!32467 (regOne!32467 r!7292)))) (= (regOne!32467 (regTwo!32467 r!7292)) (regTwo!32467 (regOne!32467 r!7292)))) (= lambda!323472 lambda!323467))))

(declare-fun bs!1403459 () Bool)

(assert (= bs!1403459 (and b!5931000 b!5930678)))

(assert (=> bs!1403459 (not (= lambda!323472 lambda!323466))))

(declare-fun bs!1403460 () Bool)

(assert (= bs!1403460 (and b!5931000 b!5930741)))

(assert (=> bs!1403460 (not (= lambda!323472 lambda!323468))))

(declare-fun bs!1403461 () Bool)

(assert (= bs!1403461 (and b!5931000 b!5928496)))

(assert (=> bs!1403461 (= (and (= (reg!16306 (regOne!32467 (regTwo!32467 r!7292))) (reg!16306 r!7292)) (= (regOne!32467 (regTwo!32467 r!7292)) r!7292)) (= lambda!323472 lambda!323370))))

(declare-fun bs!1403462 () Bool)

(assert (= bs!1403462 (and b!5931000 b!5928274)))

(assert (=> bs!1403462 (not (= lambda!323472 lambda!323347))))

(declare-fun bs!1403463 () Bool)

(assert (= bs!1403463 (and b!5931000 b!5929663)))

(assert (=> bs!1403463 (= (and (= (reg!16306 (regOne!32467 (regTwo!32467 r!7292))) (reg!16306 (regOne!32467 r!7292))) (= (regOne!32467 (regTwo!32467 r!7292)) (regOne!32467 r!7292))) (= lambda!323472 lambda!323446))))

(declare-fun bs!1403464 () Bool)

(assert (= bs!1403464 (and b!5931000 b!5929662)))

(assert (=> bs!1403464 (not (= lambda!323472 lambda!323447))))

(declare-fun bs!1403465 () Bool)

(assert (= bs!1403465 (and b!5931000 b!5929621)))

(assert (=> bs!1403465 (= (and (= (reg!16306 (regOne!32467 (regTwo!32467 r!7292))) (reg!16306 (regTwo!32467 r!7292))) (= (regOne!32467 (regTwo!32467 r!7292)) (regTwo!32467 r!7292))) (= lambda!323472 lambda!323444))))

(declare-fun bs!1403466 () Bool)

(assert (= bs!1403466 (and b!5931000 b!5928495)))

(assert (=> bs!1403466 (not (= lambda!323472 lambda!323372))))

(declare-fun bs!1403467 () Bool)

(assert (= bs!1403467 (and b!5931000 d!1858800)))

(assert (=> bs!1403467 (not (= lambda!323472 lambda!323411))))

(declare-fun bs!1403468 () Bool)

(assert (= bs!1403468 (and b!5931000 b!5930679)))

(assert (=> bs!1403468 (= (and (= (reg!16306 (regOne!32467 (regTwo!32467 r!7292))) (reg!16306 (regTwo!32467 (regTwo!32467 r!7292)))) (= (regOne!32467 (regTwo!32467 r!7292)) (regTwo!32467 (regTwo!32467 r!7292)))) (= lambda!323472 lambda!323465))))

(declare-fun bs!1403469 () Bool)

(assert (= bs!1403469 (and b!5931000 b!5929620)))

(assert (=> bs!1403469 (not (= lambda!323472 lambda!323445))))

(assert (=> bs!1403462 (not (= lambda!323472 lambda!323346))))

(assert (=> bs!1403467 (not (= lambda!323472 lambda!323410))))

(declare-fun bs!1403471 () Bool)

(assert (= bs!1403471 (and b!5931000 d!1858862)))

(assert (=> bs!1403471 (not (= lambda!323472 lambda!323418))))

(declare-fun bs!1403472 () Bool)

(assert (= bs!1403472 (and b!5931000 d!1859040)))

(assert (=> bs!1403472 (not (= lambda!323472 lambda!323432))))

(assert (=> bs!1403471 (not (= lambda!323472 lambda!323419))))

(assert (=> b!5931000 true))

(assert (=> b!5931000 true))

(declare-fun bs!1403473 () Bool)

(declare-fun b!5930999 () Bool)

(assert (= bs!1403473 (and b!5930999 d!1858796)))

(declare-fun lambda!323473 () Int)

(assert (=> bs!1403473 (not (= lambda!323473 lambda!323405))))

(declare-fun bs!1403474 () Bool)

(assert (= bs!1403474 (and b!5930999 b!5931000)))

(assert (=> bs!1403474 (not (= lambda!323473 lambda!323472))))

(declare-fun bs!1403475 () Bool)

(assert (= bs!1403475 (and b!5930999 b!5930666)))

(assert (=> bs!1403475 (not (= lambda!323473 lambda!323462))))

(declare-fun bs!1403476 () Bool)

(assert (= bs!1403476 (and b!5930999 b!5930665)))

(assert (=> bs!1403476 (= (and (= (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))) (regOne!32466 (regOne!32467 (regOne!32467 r!7292)))) (= (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))) (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))))) (= lambda!323473 lambda!323463))))

(declare-fun bs!1403477 () Bool)

(assert (= bs!1403477 (and b!5930999 b!5930742)))

(assert (=> bs!1403477 (not (= lambda!323473 lambda!323467))))

(declare-fun bs!1403478 () Bool)

(assert (= bs!1403478 (and b!5930999 b!5930678)))

(assert (=> bs!1403478 (= (and (= (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))) (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292)))) (= (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))) (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))))) (= lambda!323473 lambda!323466))))

(declare-fun bs!1403480 () Bool)

(assert (= bs!1403480 (and b!5930999 b!5930741)))

(assert (=> bs!1403480 (= (and (= (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))) (regOne!32466 (regTwo!32467 (regOne!32467 r!7292)))) (= (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))) (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))))) (= lambda!323473 lambda!323468))))

(declare-fun bs!1403481 () Bool)

(assert (= bs!1403481 (and b!5930999 b!5928496)))

(assert (=> bs!1403481 (not (= lambda!323473 lambda!323370))))

(declare-fun bs!1403482 () Bool)

(assert (= bs!1403482 (and b!5930999 b!5928274)))

(assert (=> bs!1403482 (= (and (= (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323473 lambda!323347))))

(declare-fun bs!1403483 () Bool)

(assert (= bs!1403483 (and b!5930999 b!5929663)))

(assert (=> bs!1403483 (not (= lambda!323473 lambda!323446))))

(declare-fun bs!1403484 () Bool)

(assert (= bs!1403484 (and b!5930999 b!5929662)))

(assert (=> bs!1403484 (= (and (= (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))) (regOne!32466 (regOne!32467 r!7292))) (= (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))) (regTwo!32466 (regOne!32467 r!7292)))) (= lambda!323473 lambda!323447))))

(declare-fun bs!1403485 () Bool)

(assert (= bs!1403485 (and b!5930999 b!5929621)))

(assert (=> bs!1403485 (not (= lambda!323473 lambda!323444))))

(declare-fun bs!1403486 () Bool)

(assert (= bs!1403486 (and b!5930999 b!5928495)))

(assert (=> bs!1403486 (= (and (= (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323473 lambda!323372))))

(declare-fun bs!1403487 () Bool)

(assert (= bs!1403487 (and b!5930999 d!1858800)))

(assert (=> bs!1403487 (= (and (= (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323473 lambda!323411))))

(declare-fun bs!1403488 () Bool)

(assert (= bs!1403488 (and b!5930999 b!5930679)))

(assert (=> bs!1403488 (not (= lambda!323473 lambda!323465))))

(declare-fun bs!1403489 () Bool)

(assert (= bs!1403489 (and b!5930999 b!5929620)))

(assert (=> bs!1403489 (= (and (= (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))) (regOne!32466 (regTwo!32467 r!7292))) (= (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))) (regTwo!32466 (regTwo!32467 r!7292)))) (= lambda!323473 lambda!323445))))

(assert (=> bs!1403482 (not (= lambda!323473 lambda!323346))))

(assert (=> bs!1403487 (not (= lambda!323473 lambda!323410))))

(declare-fun bs!1403490 () Bool)

(assert (= bs!1403490 (and b!5930999 d!1858862)))

(assert (=> bs!1403490 (not (= lambda!323473 lambda!323418))))

(declare-fun bs!1403491 () Bool)

(assert (= bs!1403491 (and b!5930999 d!1859040)))

(assert (=> bs!1403491 (not (= lambda!323473 lambda!323432))))

(assert (=> bs!1403490 (= (and (= (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))) (regOne!32466 r!7292)) (= (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))) (regTwo!32466 r!7292))) (= lambda!323473 lambda!323419))))

(assert (=> b!5930999 true))

(assert (=> b!5930999 true))

(declare-fun b!5930991 () Bool)

(declare-fun c!1054459 () Bool)

(assert (=> b!5930991 (= c!1054459 ((_ is Union!15977) (regOne!32467 (regTwo!32467 r!7292))))))

(declare-fun e!3630139 () Bool)

(declare-fun e!3630136 () Bool)

(assert (=> b!5930991 (= e!3630139 e!3630136)))

(declare-fun d!1859648 () Bool)

(declare-fun c!1054458 () Bool)

(assert (=> d!1859648 (= c!1054458 ((_ is EmptyExpr!15977) (regOne!32467 (regTwo!32467 r!7292))))))

(declare-fun e!3630140 () Bool)

(assert (=> d!1859648 (= (matchRSpec!3078 (regOne!32467 (regTwo!32467 r!7292)) s!2326) e!3630140)))

(declare-fun b!5930992 () Bool)

(declare-fun c!1054457 () Bool)

(assert (=> b!5930992 (= c!1054457 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32467 r!7292))))))

(declare-fun e!3630141 () Bool)

(assert (=> b!5930992 (= e!3630141 e!3630139)))

(declare-fun b!5930993 () Bool)

(declare-fun call!470945 () Bool)

(assert (=> b!5930993 (= e!3630140 call!470945)))

(declare-fun b!5930994 () Bool)

(declare-fun e!3630138 () Bool)

(assert (=> b!5930994 (= e!3630138 (matchRSpec!3078 (regTwo!32467 (regOne!32467 (regTwo!32467 r!7292))) s!2326))))

(declare-fun b!5930995 () Bool)

(declare-fun res!2485154 () Bool)

(declare-fun e!3630137 () Bool)

(assert (=> b!5930995 (=> res!2485154 e!3630137)))

(assert (=> b!5930995 (= res!2485154 call!470945)))

(declare-fun e!3630142 () Bool)

(assert (=> b!5930995 (= e!3630142 e!3630137)))

(declare-fun b!5930996 () Bool)

(assert (=> b!5930996 (= e!3630136 e!3630142)))

(declare-fun c!1054456 () Bool)

(assert (=> b!5930996 (= c!1054456 ((_ is Star!15977) (regOne!32467 (regTwo!32467 r!7292))))))

(declare-fun b!5930997 () Bool)

(assert (=> b!5930997 (= e!3630140 e!3630141)))

(declare-fun res!2485156 () Bool)

(assert (=> b!5930997 (= res!2485156 (not ((_ is EmptyLang!15977) (regOne!32467 (regTwo!32467 r!7292)))))))

(assert (=> b!5930997 (=> (not res!2485156) (not e!3630141))))

(declare-fun b!5930998 () Bool)

(assert (=> b!5930998 (= e!3630136 e!3630138)))

(declare-fun res!2485155 () Bool)

(assert (=> b!5930998 (= res!2485155 (matchRSpec!3078 (regOne!32467 (regOne!32467 (regTwo!32467 r!7292))) s!2326))))

(assert (=> b!5930998 (=> res!2485155 e!3630138)))

(declare-fun call!470944 () Bool)

(declare-fun bm!470939 () Bool)

(assert (=> bm!470939 (= call!470944 (Exists!3047 (ite c!1054456 lambda!323472 lambda!323473)))))

(assert (=> b!5930999 (= e!3630142 call!470944)))

(assert (=> b!5931000 (= e!3630137 call!470944)))

(declare-fun b!5931001 () Bool)

(assert (=> b!5931001 (= e!3630139 (= s!2326 (Cons!64108 (c!1053727 (regOne!32467 (regTwo!32467 r!7292))) Nil!64108)))))

(declare-fun bm!470940 () Bool)

(assert (=> bm!470940 (= call!470945 (isEmpty!35972 s!2326))))

(assert (= (and d!1859648 c!1054458) b!5930993))

(assert (= (and d!1859648 (not c!1054458)) b!5930997))

(assert (= (and b!5930997 res!2485156) b!5930992))

(assert (= (and b!5930992 c!1054457) b!5931001))

(assert (= (and b!5930992 (not c!1054457)) b!5930991))

(assert (= (and b!5930991 c!1054459) b!5930998))

(assert (= (and b!5930991 (not c!1054459)) b!5930996))

(assert (= (and b!5930998 (not res!2485155)) b!5930994))

(assert (= (and b!5930996 c!1054456) b!5930995))

(assert (= (and b!5930996 (not c!1054456)) b!5930999))

(assert (= (and b!5930995 (not res!2485154)) b!5931000))

(assert (= (or b!5931000 b!5930999) bm!470939))

(assert (= (or b!5930993 b!5930995) bm!470940))

(declare-fun m!6823914 () Bool)

(assert (=> b!5930994 m!6823914))

(declare-fun m!6823916 () Bool)

(assert (=> b!5930998 m!6823916))

(declare-fun m!6823918 () Bool)

(assert (=> bm!470939 m!6823918))

(assert (=> bm!470940 m!6821714))

(assert (=> b!5929619 d!1859648))

(declare-fun b!5931070 () Bool)

(declare-fun e!3630185 () Bool)

(declare-fun tp!1649153 () Bool)

(declare-fun tp!1649157 () Bool)

(assert (=> b!5931070 (= e!3630185 (and tp!1649153 tp!1649157))))

(declare-fun b!5931071 () Bool)

(declare-fun tp!1649154 () Bool)

(assert (=> b!5931071 (= e!3630185 tp!1649154)))

(assert (=> b!5929754 (= tp!1648936 e!3630185)))

(declare-fun b!5931069 () Bool)

(assert (=> b!5931069 (= e!3630185 tp_is_empty!41207)))

(declare-fun b!5931072 () Bool)

(declare-fun tp!1649156 () Bool)

(declare-fun tp!1649155 () Bool)

(assert (=> b!5931072 (= e!3630185 (and tp!1649156 tp!1649155))))

(assert (= (and b!5929754 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32466 (regOne!32466 r!7292))))) b!5931069))

(assert (= (and b!5929754 ((_ is Concat!24822) (regOne!32467 (regTwo!32466 (regOne!32466 r!7292))))) b!5931070))

(assert (= (and b!5929754 ((_ is Star!15977) (regOne!32467 (regTwo!32466 (regOne!32466 r!7292))))) b!5931071))

(assert (= (and b!5929754 ((_ is Union!15977) (regOne!32467 (regTwo!32466 (regOne!32466 r!7292))))) b!5931072))

(declare-fun b!5931074 () Bool)

(declare-fun e!3630186 () Bool)

(declare-fun tp!1649158 () Bool)

(declare-fun tp!1649162 () Bool)

(assert (=> b!5931074 (= e!3630186 (and tp!1649158 tp!1649162))))

(declare-fun b!5931075 () Bool)

(declare-fun tp!1649159 () Bool)

(assert (=> b!5931075 (= e!3630186 tp!1649159)))

(assert (=> b!5929754 (= tp!1648935 e!3630186)))

(declare-fun b!5931073 () Bool)

(assert (=> b!5931073 (= e!3630186 tp_is_empty!41207)))

(declare-fun b!5931076 () Bool)

(declare-fun tp!1649161 () Bool)

(declare-fun tp!1649160 () Bool)

(assert (=> b!5931076 (= e!3630186 (and tp!1649161 tp!1649160))))

(assert (= (and b!5929754 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32466 (regOne!32466 r!7292))))) b!5931073))

(assert (= (and b!5929754 ((_ is Concat!24822) (regTwo!32467 (regTwo!32466 (regOne!32466 r!7292))))) b!5931074))

(assert (= (and b!5929754 ((_ is Star!15977) (regTwo!32467 (regTwo!32466 (regOne!32466 r!7292))))) b!5931075))

(assert (= (and b!5929754 ((_ is Union!15977) (regTwo!32467 (regTwo!32466 (regOne!32466 r!7292))))) b!5931076))

(declare-fun b!5931078 () Bool)

(declare-fun e!3630187 () Bool)

(declare-fun tp!1649163 () Bool)

(declare-fun tp!1649167 () Bool)

(assert (=> b!5931078 (= e!3630187 (and tp!1649163 tp!1649167))))

(declare-fun b!5931079 () Bool)

(declare-fun tp!1649164 () Bool)

(assert (=> b!5931079 (= e!3630187 tp!1649164)))

(assert (=> b!5929745 (= tp!1648924 e!3630187)))

(declare-fun b!5931077 () Bool)

(assert (=> b!5931077 (= e!3630187 tp_is_empty!41207)))

(declare-fun b!5931080 () Bool)

(declare-fun tp!1649166 () Bool)

(declare-fun tp!1649165 () Bool)

(assert (=> b!5931080 (= e!3630187 (and tp!1649166 tp!1649165))))

(assert (= (and b!5929745 ((_ is ElementMatch!15977) (reg!16306 (regOne!32466 (regOne!32466 r!7292))))) b!5931077))

(assert (= (and b!5929745 ((_ is Concat!24822) (reg!16306 (regOne!32466 (regOne!32466 r!7292))))) b!5931078))

(assert (= (and b!5929745 ((_ is Star!15977) (reg!16306 (regOne!32466 (regOne!32466 r!7292))))) b!5931079))

(assert (= (and b!5929745 ((_ is Union!15977) (reg!16306 (regOne!32466 (regOne!32466 r!7292))))) b!5931080))

(declare-fun b!5931082 () Bool)

(declare-fun e!3630188 () Bool)

(declare-fun tp!1649168 () Bool)

(declare-fun tp!1649172 () Bool)

(assert (=> b!5931082 (= e!3630188 (and tp!1649168 tp!1649172))))

(declare-fun b!5931083 () Bool)

(declare-fun tp!1649169 () Bool)

(assert (=> b!5931083 (= e!3630188 tp!1649169)))

(assert (=> b!5929786 (= tp!1648975 e!3630188)))

(declare-fun b!5931081 () Bool)

(assert (=> b!5931081 (= e!3630188 tp_is_empty!41207)))

(declare-fun b!5931084 () Bool)

(declare-fun tp!1649171 () Bool)

(declare-fun tp!1649170 () Bool)

(assert (=> b!5931084 (= e!3630188 (and tp!1649171 tp!1649170))))

(assert (= (and b!5929786 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32467 (regOne!32466 r!7292))))) b!5931081))

(assert (= (and b!5929786 ((_ is Concat!24822) (regOne!32466 (regOne!32467 (regOne!32466 r!7292))))) b!5931082))

(assert (= (and b!5929786 ((_ is Star!15977) (regOne!32466 (regOne!32467 (regOne!32466 r!7292))))) b!5931083))

(assert (= (and b!5929786 ((_ is Union!15977) (regOne!32466 (regOne!32467 (regOne!32466 r!7292))))) b!5931084))

(declare-fun b!5931086 () Bool)

(declare-fun e!3630189 () Bool)

(declare-fun tp!1649173 () Bool)

(declare-fun tp!1649177 () Bool)

(assert (=> b!5931086 (= e!3630189 (and tp!1649173 tp!1649177))))

(declare-fun b!5931087 () Bool)

(declare-fun tp!1649174 () Bool)

(assert (=> b!5931087 (= e!3630189 tp!1649174)))

(assert (=> b!5929786 (= tp!1648979 e!3630189)))

(declare-fun b!5931085 () Bool)

(assert (=> b!5931085 (= e!3630189 tp_is_empty!41207)))

(declare-fun b!5931088 () Bool)

(declare-fun tp!1649176 () Bool)

(declare-fun tp!1649175 () Bool)

(assert (=> b!5931088 (= e!3630189 (and tp!1649176 tp!1649175))))

(assert (= (and b!5929786 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32467 (regOne!32466 r!7292))))) b!5931085))

(assert (= (and b!5929786 ((_ is Concat!24822) (regTwo!32466 (regOne!32467 (regOne!32466 r!7292))))) b!5931086))

(assert (= (and b!5929786 ((_ is Star!15977) (regTwo!32466 (regOne!32467 (regOne!32466 r!7292))))) b!5931087))

(assert (= (and b!5929786 ((_ is Union!15977) (regTwo!32466 (regOne!32467 (regOne!32466 r!7292))))) b!5931088))

(declare-fun b!5931090 () Bool)

(declare-fun e!3630190 () Bool)

(declare-fun tp!1649178 () Bool)

(declare-fun tp!1649182 () Bool)

(assert (=> b!5931090 (= e!3630190 (and tp!1649178 tp!1649182))))

(declare-fun b!5931091 () Bool)

(declare-fun tp!1649179 () Bool)

(assert (=> b!5931091 (= e!3630190 tp!1649179)))

(assert (=> b!5929804 (= tp!1648998 e!3630190)))

(declare-fun b!5931089 () Bool)

(assert (=> b!5931089 (= e!3630190 tp_is_empty!41207)))

(declare-fun b!5931092 () Bool)

(declare-fun tp!1649181 () Bool)

(declare-fun tp!1649180 () Bool)

(assert (=> b!5931092 (= e!3630190 (and tp!1649181 tp!1649180))))

(assert (= (and b!5929804 ((_ is ElementMatch!15977) (regOne!32467 (reg!16306 (regOne!32467 r!7292))))) b!5931089))

(assert (= (and b!5929804 ((_ is Concat!24822) (regOne!32467 (reg!16306 (regOne!32467 r!7292))))) b!5931090))

(assert (= (and b!5929804 ((_ is Star!15977) (regOne!32467 (reg!16306 (regOne!32467 r!7292))))) b!5931091))

(assert (= (and b!5929804 ((_ is Union!15977) (regOne!32467 (reg!16306 (regOne!32467 r!7292))))) b!5931092))

(declare-fun b!5931094 () Bool)

(declare-fun e!3630191 () Bool)

(declare-fun tp!1649183 () Bool)

(declare-fun tp!1649187 () Bool)

(assert (=> b!5931094 (= e!3630191 (and tp!1649183 tp!1649187))))

(declare-fun b!5931095 () Bool)

(declare-fun tp!1649184 () Bool)

(assert (=> b!5931095 (= e!3630191 tp!1649184)))

(assert (=> b!5929804 (= tp!1648997 e!3630191)))

(declare-fun b!5931093 () Bool)

(assert (=> b!5931093 (= e!3630191 tp_is_empty!41207)))

(declare-fun b!5931096 () Bool)

(declare-fun tp!1649186 () Bool)

(declare-fun tp!1649185 () Bool)

(assert (=> b!5931096 (= e!3630191 (and tp!1649186 tp!1649185))))

(assert (= (and b!5929804 ((_ is ElementMatch!15977) (regTwo!32467 (reg!16306 (regOne!32467 r!7292))))) b!5931093))

(assert (= (and b!5929804 ((_ is Concat!24822) (regTwo!32467 (reg!16306 (regOne!32467 r!7292))))) b!5931094))

(assert (= (and b!5929804 ((_ is Star!15977) (regTwo!32467 (reg!16306 (regOne!32467 r!7292))))) b!5931095))

(assert (= (and b!5929804 ((_ is Union!15977) (regTwo!32467 (reg!16306 (regOne!32467 r!7292))))) b!5931096))

(declare-fun b!5931098 () Bool)

(declare-fun e!3630192 () Bool)

(declare-fun tp!1649188 () Bool)

(declare-fun tp!1649192 () Bool)

(assert (=> b!5931098 (= e!3630192 (and tp!1649188 tp!1649192))))

(declare-fun b!5931099 () Bool)

(declare-fun tp!1649189 () Bool)

(assert (=> b!5931099 (= e!3630192 tp!1649189)))

(assert (=> b!5929795 (= tp!1648986 e!3630192)))

(declare-fun b!5931097 () Bool)

(assert (=> b!5931097 (= e!3630192 tp_is_empty!41207)))

(declare-fun b!5931100 () Bool)

(declare-fun tp!1649191 () Bool)

(declare-fun tp!1649190 () Bool)

(assert (=> b!5931100 (= e!3630192 (and tp!1649191 tp!1649190))))

(assert (= (and b!5929795 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32467 (regOne!32466 r!7292))))) b!5931097))

(assert (= (and b!5929795 ((_ is Concat!24822) (reg!16306 (regTwo!32467 (regOne!32466 r!7292))))) b!5931098))

(assert (= (and b!5929795 ((_ is Star!15977) (reg!16306 (regTwo!32467 (regOne!32466 r!7292))))) b!5931099))

(assert (= (and b!5929795 ((_ is Union!15977) (reg!16306 (regTwo!32467 (regOne!32466 r!7292))))) b!5931100))

(declare-fun b!5931102 () Bool)

(declare-fun e!3630193 () Bool)

(declare-fun tp!1649193 () Bool)

(declare-fun tp!1649197 () Bool)

(assert (=> b!5931102 (= e!3630193 (and tp!1649193 tp!1649197))))

(declare-fun b!5931103 () Bool)

(declare-fun tp!1649194 () Bool)

(assert (=> b!5931103 (= e!3630193 tp!1649194)))

(assert (=> b!5929883 (= tp!1649100 e!3630193)))

(declare-fun b!5931101 () Bool)

(assert (=> b!5931101 (= e!3630193 tp_is_empty!41207)))

(declare-fun b!5931104 () Bool)

(declare-fun tp!1649196 () Bool)

(declare-fun tp!1649195 () Bool)

(assert (=> b!5931104 (= e!3630193 (and tp!1649196 tp!1649195))))

(assert (= (and b!5929883 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32466 (regTwo!32467 r!7292))))) b!5931101))

(assert (= (and b!5929883 ((_ is Concat!24822) (regOne!32467 (regOne!32466 (regTwo!32467 r!7292))))) b!5931102))

(assert (= (and b!5929883 ((_ is Star!15977) (regOne!32467 (regOne!32466 (regTwo!32467 r!7292))))) b!5931103))

(assert (= (and b!5929883 ((_ is Union!15977) (regOne!32467 (regOne!32466 (regTwo!32467 r!7292))))) b!5931104))

(declare-fun b!5931106 () Bool)

(declare-fun e!3630194 () Bool)

(declare-fun tp!1649198 () Bool)

(declare-fun tp!1649202 () Bool)

(assert (=> b!5931106 (= e!3630194 (and tp!1649198 tp!1649202))))

(declare-fun b!5931107 () Bool)

(declare-fun tp!1649199 () Bool)

(assert (=> b!5931107 (= e!3630194 tp!1649199)))

(assert (=> b!5929883 (= tp!1649099 e!3630194)))

(declare-fun b!5931105 () Bool)

(assert (=> b!5931105 (= e!3630194 tp_is_empty!41207)))

(declare-fun b!5931108 () Bool)

(declare-fun tp!1649201 () Bool)

(declare-fun tp!1649200 () Bool)

(assert (=> b!5931108 (= e!3630194 (and tp!1649201 tp!1649200))))

(assert (= (and b!5929883 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32466 (regTwo!32467 r!7292))))) b!5931105))

(assert (= (and b!5929883 ((_ is Concat!24822) (regTwo!32467 (regOne!32466 (regTwo!32467 r!7292))))) b!5931106))

(assert (= (and b!5929883 ((_ is Star!15977) (regTwo!32467 (regOne!32466 (regTwo!32467 r!7292))))) b!5931107))

(assert (= (and b!5929883 ((_ is Union!15977) (regTwo!32467 (regOne!32466 (regTwo!32467 r!7292))))) b!5931108))

(declare-fun b!5931110 () Bool)

(declare-fun e!3630195 () Bool)

(declare-fun tp!1649203 () Bool)

(declare-fun tp!1649207 () Bool)

(assert (=> b!5931110 (= e!3630195 (and tp!1649203 tp!1649207))))

(declare-fun b!5931111 () Bool)

(declare-fun tp!1649204 () Bool)

(assert (=> b!5931111 (= e!3630195 tp!1649204)))

(assert (=> b!5929819 (= tp!1649017 e!3630195)))

(declare-fun b!5931109 () Bool)

(assert (=> b!5931109 (= e!3630195 tp_is_empty!41207)))

(declare-fun b!5931112 () Bool)

(declare-fun tp!1649206 () Bool)

(declare-fun tp!1649205 () Bool)

(assert (=> b!5931112 (= e!3630195 (and tp!1649206 tp!1649205))))

(assert (= (and b!5929819 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32467 (regOne!32467 r!7292))))) b!5931109))

(assert (= (and b!5929819 ((_ is Concat!24822) (regOne!32467 (regTwo!32467 (regOne!32467 r!7292))))) b!5931110))

(assert (= (and b!5929819 ((_ is Star!15977) (regOne!32467 (regTwo!32467 (regOne!32467 r!7292))))) b!5931111))

(assert (= (and b!5929819 ((_ is Union!15977) (regOne!32467 (regTwo!32467 (regOne!32467 r!7292))))) b!5931112))

(declare-fun b!5931116 () Bool)

(declare-fun e!3630198 () Bool)

(declare-fun tp!1649208 () Bool)

(declare-fun tp!1649212 () Bool)

(assert (=> b!5931116 (= e!3630198 (and tp!1649208 tp!1649212))))

(declare-fun b!5931117 () Bool)

(declare-fun tp!1649209 () Bool)

(assert (=> b!5931117 (= e!3630198 tp!1649209)))

(assert (=> b!5929819 (= tp!1649016 e!3630198)))

(declare-fun b!5931115 () Bool)

(assert (=> b!5931115 (= e!3630198 tp_is_empty!41207)))

(declare-fun b!5931118 () Bool)

(declare-fun tp!1649211 () Bool)

(declare-fun tp!1649210 () Bool)

(assert (=> b!5931118 (= e!3630198 (and tp!1649211 tp!1649210))))

(assert (= (and b!5929819 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32467 (regOne!32467 r!7292))))) b!5931115))

(assert (= (and b!5929819 ((_ is Concat!24822) (regTwo!32467 (regTwo!32467 (regOne!32467 r!7292))))) b!5931116))

(assert (= (and b!5929819 ((_ is Star!15977) (regTwo!32467 (regTwo!32467 (regOne!32467 r!7292))))) b!5931117))

(assert (= (and b!5929819 ((_ is Union!15977) (regTwo!32467 (regTwo!32467 (regOne!32467 r!7292))))) b!5931118))

(declare-fun b!5931120 () Bool)

(declare-fun e!3630199 () Bool)

(declare-fun tp!1649213 () Bool)

(declare-fun tp!1649217 () Bool)

(assert (=> b!5931120 (= e!3630199 (and tp!1649213 tp!1649217))))

(declare-fun b!5931121 () Bool)

(declare-fun tp!1649214 () Bool)

(assert (=> b!5931121 (= e!3630199 tp!1649214)))

(assert (=> b!5929899 (= tp!1649120 e!3630199)))

(declare-fun b!5931119 () Bool)

(assert (=> b!5931119 (= e!3630199 tp_is_empty!41207)))

(declare-fun b!5931122 () Bool)

(declare-fun tp!1649216 () Bool)

(declare-fun tp!1649215 () Bool)

(assert (=> b!5931122 (= e!3630199 (and tp!1649216 tp!1649215))))

(assert (= (and b!5929899 ((_ is ElementMatch!15977) (regOne!32467 (reg!16306 (reg!16306 r!7292))))) b!5931119))

(assert (= (and b!5929899 ((_ is Concat!24822) (regOne!32467 (reg!16306 (reg!16306 r!7292))))) b!5931120))

(assert (= (and b!5929899 ((_ is Star!15977) (regOne!32467 (reg!16306 (reg!16306 r!7292))))) b!5931121))

(assert (= (and b!5929899 ((_ is Union!15977) (regOne!32467 (reg!16306 (reg!16306 r!7292))))) b!5931122))

(declare-fun b!5931135 () Bool)

(declare-fun e!3630207 () Bool)

(declare-fun tp!1649218 () Bool)

(declare-fun tp!1649222 () Bool)

(assert (=> b!5931135 (= e!3630207 (and tp!1649218 tp!1649222))))

(declare-fun b!5931136 () Bool)

(declare-fun tp!1649219 () Bool)

(assert (=> b!5931136 (= e!3630207 tp!1649219)))

(assert (=> b!5929899 (= tp!1649119 e!3630207)))

(declare-fun b!5931134 () Bool)

(assert (=> b!5931134 (= e!3630207 tp_is_empty!41207)))

(declare-fun b!5931137 () Bool)

(declare-fun tp!1649221 () Bool)

(declare-fun tp!1649220 () Bool)

(assert (=> b!5931137 (= e!3630207 (and tp!1649221 tp!1649220))))

(assert (= (and b!5929899 ((_ is ElementMatch!15977) (regTwo!32467 (reg!16306 (reg!16306 r!7292))))) b!5931134))

(assert (= (and b!5929899 ((_ is Concat!24822) (regTwo!32467 (reg!16306 (reg!16306 r!7292))))) b!5931135))

(assert (= (and b!5929899 ((_ is Star!15977) (regTwo!32467 (reg!16306 (reg!16306 r!7292))))) b!5931136))

(assert (= (and b!5929899 ((_ is Union!15977) (regTwo!32467 (reg!16306 (reg!16306 r!7292))))) b!5931137))

(declare-fun b!5931139 () Bool)

(declare-fun e!3630208 () Bool)

(declare-fun tp!1649223 () Bool)

(declare-fun tp!1649227 () Bool)

(assert (=> b!5931139 (= e!3630208 (and tp!1649223 tp!1649227))))

(declare-fun b!5931140 () Bool)

(declare-fun tp!1649224 () Bool)

(assert (=> b!5931140 (= e!3630208 tp!1649224)))

(assert (=> b!5929890 (= tp!1649108 e!3630208)))

(declare-fun b!5931138 () Bool)

(assert (=> b!5931138 (= e!3630208 tp_is_empty!41207)))

(declare-fun b!5931141 () Bool)

(declare-fun tp!1649226 () Bool)

(declare-fun tp!1649225 () Bool)

(assert (=> b!5931141 (= e!3630208 (and tp!1649226 tp!1649225))))

(assert (= (and b!5929890 ((_ is ElementMatch!15977) (reg!16306 (regOne!32467 (regTwo!32467 r!7292))))) b!5931138))

(assert (= (and b!5929890 ((_ is Concat!24822) (reg!16306 (regOne!32467 (regTwo!32467 r!7292))))) b!5931139))

(assert (= (and b!5929890 ((_ is Star!15977) (reg!16306 (regOne!32467 (regTwo!32467 r!7292))))) b!5931140))

(assert (= (and b!5929890 ((_ is Union!15977) (reg!16306 (regOne!32467 (regTwo!32467 r!7292))))) b!5931141))

(declare-fun b!5931143 () Bool)

(declare-fun e!3630209 () Bool)

(declare-fun tp!1649228 () Bool)

(declare-fun tp!1649232 () Bool)

(assert (=> b!5931143 (= e!3630209 (and tp!1649228 tp!1649232))))

(declare-fun b!5931144 () Bool)

(declare-fun tp!1649229 () Bool)

(assert (=> b!5931144 (= e!3630209 tp!1649229)))

(assert (=> b!5929832 (= tp!1649034 e!3630209)))

(declare-fun b!5931142 () Bool)

(assert (=> b!5931142 (= e!3630209 tp_is_empty!41207)))

(declare-fun b!5931145 () Bool)

(declare-fun tp!1649231 () Bool)

(declare-fun tp!1649230 () Bool)

(assert (=> b!5931145 (= e!3630209 (and tp!1649231 tp!1649230))))

(assert (= (and b!5929832 ((_ is ElementMatch!15977) (regOne!32467 (h!70554 (exprs!5861 setElem!40242))))) b!5931142))

(assert (= (and b!5929832 ((_ is Concat!24822) (regOne!32467 (h!70554 (exprs!5861 setElem!40242))))) b!5931143))

(assert (= (and b!5929832 ((_ is Star!15977) (regOne!32467 (h!70554 (exprs!5861 setElem!40242))))) b!5931144))

(assert (= (and b!5929832 ((_ is Union!15977) (regOne!32467 (h!70554 (exprs!5861 setElem!40242))))) b!5931145))

(declare-fun b!5931147 () Bool)

(declare-fun e!3630210 () Bool)

(declare-fun tp!1649233 () Bool)

(declare-fun tp!1649237 () Bool)

(assert (=> b!5931147 (= e!3630210 (and tp!1649233 tp!1649237))))

(declare-fun b!5931148 () Bool)

(declare-fun tp!1649234 () Bool)

(assert (=> b!5931148 (= e!3630210 tp!1649234)))

(assert (=> b!5929832 (= tp!1649033 e!3630210)))

(declare-fun b!5931146 () Bool)

(assert (=> b!5931146 (= e!3630210 tp_is_empty!41207)))

(declare-fun b!5931149 () Bool)

(declare-fun tp!1649236 () Bool)

(declare-fun tp!1649235 () Bool)

(assert (=> b!5931149 (= e!3630210 (and tp!1649236 tp!1649235))))

(assert (= (and b!5929832 ((_ is ElementMatch!15977) (regTwo!32467 (h!70554 (exprs!5861 setElem!40242))))) b!5931146))

(assert (= (and b!5929832 ((_ is Concat!24822) (regTwo!32467 (h!70554 (exprs!5861 setElem!40242))))) b!5931147))

(assert (= (and b!5929832 ((_ is Star!15977) (regTwo!32467 (h!70554 (exprs!5861 setElem!40242))))) b!5931148))

(assert (= (and b!5929832 ((_ is Union!15977) (regTwo!32467 (h!70554 (exprs!5861 setElem!40242))))) b!5931149))

(declare-fun b!5931151 () Bool)

(declare-fun e!3630211 () Bool)

(declare-fun tp!1649238 () Bool)

(declare-fun tp!1649242 () Bool)

(assert (=> b!5931151 (= e!3630211 (and tp!1649238 tp!1649242))))

(declare-fun b!5931152 () Bool)

(declare-fun tp!1649239 () Bool)

(assert (=> b!5931152 (= e!3630211 tp!1649239)))

(assert (=> b!5929847 (= tp!1649055 e!3630211)))

(declare-fun b!5931150 () Bool)

(assert (=> b!5931150 (= e!3630211 tp_is_empty!41207)))

(declare-fun b!5931153 () Bool)

(declare-fun tp!1649241 () Bool)

(declare-fun tp!1649240 () Bool)

(assert (=> b!5931153 (= e!3630211 (and tp!1649241 tp!1649240))))

(assert (= (and b!5929847 ((_ is ElementMatch!15977) (regOne!32467 (reg!16306 (regTwo!32466 r!7292))))) b!5931150))

(assert (= (and b!5929847 ((_ is Concat!24822) (regOne!32467 (reg!16306 (regTwo!32466 r!7292))))) b!5931151))

(assert (= (and b!5929847 ((_ is Star!15977) (regOne!32467 (reg!16306 (regTwo!32466 r!7292))))) b!5931152))

(assert (= (and b!5929847 ((_ is Union!15977) (regOne!32467 (reg!16306 (regTwo!32466 r!7292))))) b!5931153))

(declare-fun b!5931155 () Bool)

(declare-fun e!3630212 () Bool)

(declare-fun tp!1649243 () Bool)

(declare-fun tp!1649247 () Bool)

(assert (=> b!5931155 (= e!3630212 (and tp!1649243 tp!1649247))))

(declare-fun b!5931156 () Bool)

(declare-fun tp!1649244 () Bool)

(assert (=> b!5931156 (= e!3630212 tp!1649244)))

(assert (=> b!5929847 (= tp!1649054 e!3630212)))

(declare-fun b!5931154 () Bool)

(assert (=> b!5931154 (= e!3630212 tp_is_empty!41207)))

(declare-fun b!5931157 () Bool)

(declare-fun tp!1649246 () Bool)

(declare-fun tp!1649245 () Bool)

(assert (=> b!5931157 (= e!3630212 (and tp!1649246 tp!1649245))))

(assert (= (and b!5929847 ((_ is ElementMatch!15977) (regTwo!32467 (reg!16306 (regTwo!32466 r!7292))))) b!5931154))

(assert (= (and b!5929847 ((_ is Concat!24822) (regTwo!32467 (reg!16306 (regTwo!32466 r!7292))))) b!5931155))

(assert (= (and b!5929847 ((_ is Star!15977) (regTwo!32467 (reg!16306 (regTwo!32466 r!7292))))) b!5931156))

(assert (= (and b!5929847 ((_ is Union!15977) (regTwo!32467 (reg!16306 (regTwo!32466 r!7292))))) b!5931157))

(declare-fun b!5931159 () Bool)

(declare-fun e!3630213 () Bool)

(declare-fun tp!1649248 () Bool)

(declare-fun tp!1649252 () Bool)

(assert (=> b!5931159 (= e!3630213 (and tp!1649248 tp!1649252))))

(declare-fun b!5931160 () Bool)

(declare-fun tp!1649249 () Bool)

(assert (=> b!5931160 (= e!3630213 tp!1649249)))

(assert (=> b!5929913 (= tp!1649137 e!3630213)))

(declare-fun b!5931158 () Bool)

(assert (=> b!5931158 (= e!3630213 tp_is_empty!41207)))

(declare-fun b!5931161 () Bool)

(declare-fun tp!1649251 () Bool)

(declare-fun tp!1649250 () Bool)

(assert (=> b!5931161 (= e!3630213 (and tp!1649251 tp!1649250))))

(assert (= (and b!5929913 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32467 (reg!16306 r!7292))))) b!5931158))

(assert (= (and b!5929913 ((_ is Concat!24822) (regOne!32466 (regTwo!32467 (reg!16306 r!7292))))) b!5931159))

(assert (= (and b!5929913 ((_ is Star!15977) (regOne!32466 (regTwo!32467 (reg!16306 r!7292))))) b!5931160))

(assert (= (and b!5929913 ((_ is Union!15977) (regOne!32466 (regTwo!32467 (reg!16306 r!7292))))) b!5931161))

(declare-fun b!5931163 () Bool)

(declare-fun e!3630214 () Bool)

(declare-fun tp!1649253 () Bool)

(declare-fun tp!1649257 () Bool)

(assert (=> b!5931163 (= e!3630214 (and tp!1649253 tp!1649257))))

(declare-fun b!5931164 () Bool)

(declare-fun tp!1649254 () Bool)

(assert (=> b!5931164 (= e!3630214 tp!1649254)))

(assert (=> b!5929913 (= tp!1649141 e!3630214)))

(declare-fun b!5931162 () Bool)

(assert (=> b!5931162 (= e!3630214 tp_is_empty!41207)))

(declare-fun b!5931165 () Bool)

(declare-fun tp!1649256 () Bool)

(declare-fun tp!1649255 () Bool)

(assert (=> b!5931165 (= e!3630214 (and tp!1649256 tp!1649255))))

(assert (= (and b!5929913 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32467 (reg!16306 r!7292))))) b!5931162))

(assert (= (and b!5929913 ((_ is Concat!24822) (regTwo!32466 (regTwo!32467 (reg!16306 r!7292))))) b!5931163))

(assert (= (and b!5929913 ((_ is Star!15977) (regTwo!32466 (regTwo!32467 (reg!16306 r!7292))))) b!5931164))

(assert (= (and b!5929913 ((_ is Union!15977) (regTwo!32466 (regTwo!32467 (reg!16306 r!7292))))) b!5931165))

(declare-fun condSetEmpty!40258 () Bool)

(assert (=> setNonEmpty!40254 (= condSetEmpty!40258 (= setRest!40254 ((as const (Array Context!10722 Bool)) false)))))

(declare-fun setRes!40258 () Bool)

(assert (=> setNonEmpty!40254 (= tp!1648847 setRes!40258)))

(declare-fun setIsEmpty!40258 () Bool)

(assert (=> setIsEmpty!40258 setRes!40258))

(declare-fun e!3630215 () Bool)

(declare-fun setNonEmpty!40258 () Bool)

(declare-fun tp!1649258 () Bool)

(declare-fun setElem!40258 () Context!10722)

(assert (=> setNonEmpty!40258 (= setRes!40258 (and tp!1649258 (inv!83189 setElem!40258) e!3630215))))

(declare-fun setRest!40258 () (InoxSet Context!10722))

(assert (=> setNonEmpty!40258 (= setRest!40254 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) setElem!40258 true) setRest!40258))))

(declare-fun b!5931166 () Bool)

(declare-fun tp!1649259 () Bool)

(assert (=> b!5931166 (= e!3630215 tp!1649259)))

(assert (= (and setNonEmpty!40254 condSetEmpty!40258) setIsEmpty!40258))

(assert (= (and setNonEmpty!40254 (not condSetEmpty!40258)) setNonEmpty!40258))

(assert (= setNonEmpty!40258 b!5931166))

(declare-fun m!6823944 () Bool)

(assert (=> setNonEmpty!40258 m!6823944))

(declare-fun b!5931168 () Bool)

(declare-fun e!3630216 () Bool)

(declare-fun tp!1649260 () Bool)

(declare-fun tp!1649264 () Bool)

(assert (=> b!5931168 (= e!3630216 (and tp!1649260 tp!1649264))))

(declare-fun b!5931169 () Bool)

(declare-fun tp!1649261 () Bool)

(assert (=> b!5931169 (= e!3630216 tp!1649261)))

(assert (=> b!5929869 (= tp!1649082 e!3630216)))

(declare-fun b!5931167 () Bool)

(assert (=> b!5931167 (= e!3630216 tp_is_empty!41207)))

(declare-fun b!5931170 () Bool)

(declare-fun tp!1649263 () Bool)

(declare-fun tp!1649262 () Bool)

(assert (=> b!5931170 (= e!3630216 (and tp!1649263 tp!1649262))))

(assert (= (and b!5929869 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32467 (regTwo!32466 r!7292))))) b!5931167))

(assert (= (and b!5929869 ((_ is Concat!24822) (regOne!32466 (regOne!32467 (regTwo!32466 r!7292))))) b!5931168))

(assert (= (and b!5929869 ((_ is Star!15977) (regOne!32466 (regOne!32467 (regTwo!32466 r!7292))))) b!5931169))

(assert (= (and b!5929869 ((_ is Union!15977) (regOne!32466 (regOne!32467 (regTwo!32466 r!7292))))) b!5931170))

(declare-fun b!5931172 () Bool)

(declare-fun e!3630217 () Bool)

(declare-fun tp!1649265 () Bool)

(declare-fun tp!1649269 () Bool)

(assert (=> b!5931172 (= e!3630217 (and tp!1649265 tp!1649269))))

(declare-fun b!5931173 () Bool)

(declare-fun tp!1649266 () Bool)

(assert (=> b!5931173 (= e!3630217 tp!1649266)))

(assert (=> b!5929869 (= tp!1649086 e!3630217)))

(declare-fun b!5931171 () Bool)

(assert (=> b!5931171 (= e!3630217 tp_is_empty!41207)))

(declare-fun b!5931174 () Bool)

(declare-fun tp!1649268 () Bool)

(declare-fun tp!1649267 () Bool)

(assert (=> b!5931174 (= e!3630217 (and tp!1649268 tp!1649267))))

(assert (= (and b!5929869 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32467 (regTwo!32466 r!7292))))) b!5931171))

(assert (= (and b!5929869 ((_ is Concat!24822) (regTwo!32466 (regOne!32467 (regTwo!32466 r!7292))))) b!5931172))

(assert (= (and b!5929869 ((_ is Star!15977) (regTwo!32466 (regOne!32467 (regTwo!32466 r!7292))))) b!5931173))

(assert (= (and b!5929869 ((_ is Union!15977) (regTwo!32466 (regOne!32467 (regTwo!32466 r!7292))))) b!5931174))

(declare-fun b!5931176 () Bool)

(declare-fun e!3630218 () Bool)

(declare-fun tp!1649270 () Bool)

(declare-fun tp!1649274 () Bool)

(assert (=> b!5931176 (= e!3630218 (and tp!1649270 tp!1649274))))

(declare-fun b!5931177 () Bool)

(declare-fun tp!1649271 () Bool)

(assert (=> b!5931177 (= e!3630218 tp!1649271)))

(assert (=> b!5929774 (= tp!1648960 e!3630218)))

(declare-fun b!5931175 () Bool)

(assert (=> b!5931175 (= e!3630218 tp_is_empty!41207)))

(declare-fun b!5931178 () Bool)

(declare-fun tp!1649273 () Bool)

(declare-fun tp!1649272 () Bool)

(assert (=> b!5931178 (= e!3630218 (and tp!1649273 tp!1649272))))

(assert (= (and b!5929774 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32466 (regOne!32467 r!7292))))) b!5931175))

(assert (= (and b!5929774 ((_ is Concat!24822) (regOne!32466 (regTwo!32466 (regOne!32467 r!7292))))) b!5931176))

(assert (= (and b!5929774 ((_ is Star!15977) (regOne!32466 (regTwo!32466 (regOne!32467 r!7292))))) b!5931177))

(assert (= (and b!5929774 ((_ is Union!15977) (regOne!32466 (regTwo!32466 (regOne!32467 r!7292))))) b!5931178))

(declare-fun b!5931180 () Bool)

(declare-fun e!3630219 () Bool)

(declare-fun tp!1649275 () Bool)

(declare-fun tp!1649279 () Bool)

(assert (=> b!5931180 (= e!3630219 (and tp!1649275 tp!1649279))))

(declare-fun b!5931181 () Bool)

(declare-fun tp!1649276 () Bool)

(assert (=> b!5931181 (= e!3630219 tp!1649276)))

(assert (=> b!5929774 (= tp!1648964 e!3630219)))

(declare-fun b!5931179 () Bool)

(assert (=> b!5931179 (= e!3630219 tp_is_empty!41207)))

(declare-fun b!5931182 () Bool)

(declare-fun tp!1649278 () Bool)

(declare-fun tp!1649277 () Bool)

(assert (=> b!5931182 (= e!3630219 (and tp!1649278 tp!1649277))))

(assert (= (and b!5929774 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32466 (regOne!32467 r!7292))))) b!5931179))

(assert (= (and b!5929774 ((_ is Concat!24822) (regTwo!32466 (regTwo!32466 (regOne!32467 r!7292))))) b!5931180))

(assert (= (and b!5929774 ((_ is Star!15977) (regTwo!32466 (regTwo!32466 (regOne!32467 r!7292))))) b!5931181))

(assert (= (and b!5929774 ((_ is Union!15977) (regTwo!32466 (regTwo!32466 (regOne!32467 r!7292))))) b!5931182))

(declare-fun b!5931184 () Bool)

(declare-fun e!3630220 () Bool)

(declare-fun tp!1649280 () Bool)

(declare-fun tp!1649284 () Bool)

(assert (=> b!5931184 (= e!3630220 (and tp!1649280 tp!1649284))))

(declare-fun b!5931185 () Bool)

(declare-fun tp!1649281 () Bool)

(assert (=> b!5931185 (= e!3630220 tp!1649281)))

(assert (=> b!5929783 (= tp!1648971 e!3630220)))

(declare-fun b!5931183 () Bool)

(assert (=> b!5931183 (= e!3630220 tp_is_empty!41207)))

(declare-fun b!5931186 () Bool)

(declare-fun tp!1649283 () Bool)

(declare-fun tp!1649282 () Bool)

(assert (=> b!5931186 (= e!3630220 (and tp!1649283 tp!1649282))))

(assert (= (and b!5929783 ((_ is ElementMatch!15977) (reg!16306 (reg!16306 (regOne!32466 r!7292))))) b!5931183))

(assert (= (and b!5929783 ((_ is Concat!24822) (reg!16306 (reg!16306 (regOne!32466 r!7292))))) b!5931184))

(assert (= (and b!5929783 ((_ is Star!15977) (reg!16306 (reg!16306 (regOne!32466 r!7292))))) b!5931185))

(assert (= (and b!5929783 ((_ is Union!15977) (reg!16306 (reg!16306 (regOne!32466 r!7292))))) b!5931186))

(declare-fun b!5931187 () Bool)

(declare-fun e!3630221 () Bool)

(declare-fun tp!1649285 () Bool)

(declare-fun tp!1649286 () Bool)

(assert (=> b!5931187 (= e!3630221 (and tp!1649285 tp!1649286))))

(assert (=> b!5929066 (= tp!1648842 e!3630221)))

(assert (= (and b!5929066 ((_ is Cons!64106) (exprs!5861 (h!70555 res!2484500)))) b!5931187))

(declare-fun b!5931189 () Bool)

(declare-fun e!3630222 () Bool)

(declare-fun tp!1649287 () Bool)

(declare-fun tp!1649291 () Bool)

(assert (=> b!5931189 (= e!3630222 (and tp!1649287 tp!1649291))))

(declare-fun b!5931190 () Bool)

(declare-fun tp!1649288 () Bool)

(assert (=> b!5931190 (= e!3630222 tp!1649288)))

(assert (=> b!5929901 (= tp!1649122 e!3630222)))

(declare-fun b!5931188 () Bool)

(assert (=> b!5931188 (= e!3630222 tp_is_empty!41207)))

(declare-fun b!5931191 () Bool)

(declare-fun tp!1649290 () Bool)

(declare-fun tp!1649289 () Bool)

(assert (=> b!5931191 (= e!3630222 (and tp!1649290 tp!1649289))))

(assert (= (and b!5929901 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32466 (reg!16306 r!7292))))) b!5931188))

(assert (= (and b!5929901 ((_ is Concat!24822) (regOne!32466 (regOne!32466 (reg!16306 r!7292))))) b!5931189))

(assert (= (and b!5929901 ((_ is Star!15977) (regOne!32466 (regOne!32466 (reg!16306 r!7292))))) b!5931190))

(assert (= (and b!5929901 ((_ is Union!15977) (regOne!32466 (regOne!32466 (reg!16306 r!7292))))) b!5931191))

(declare-fun b!5931193 () Bool)

(declare-fun e!3630223 () Bool)

(declare-fun tp!1649292 () Bool)

(declare-fun tp!1649296 () Bool)

(assert (=> b!5931193 (= e!3630223 (and tp!1649292 tp!1649296))))

(declare-fun b!5931194 () Bool)

(declare-fun tp!1649293 () Bool)

(assert (=> b!5931194 (= e!3630223 tp!1649293)))

(assert (=> b!5929901 (= tp!1649126 e!3630223)))

(declare-fun b!5931192 () Bool)

(assert (=> b!5931192 (= e!3630223 tp_is_empty!41207)))

(declare-fun b!5931195 () Bool)

(declare-fun tp!1649295 () Bool)

(declare-fun tp!1649294 () Bool)

(assert (=> b!5931195 (= e!3630223 (and tp!1649295 tp!1649294))))

(assert (= (and b!5929901 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32466 (reg!16306 r!7292))))) b!5931192))

(assert (= (and b!5929901 ((_ is Concat!24822) (regTwo!32466 (regOne!32466 (reg!16306 r!7292))))) b!5931193))

(assert (= (and b!5929901 ((_ is Star!15977) (regTwo!32466 (regOne!32466 (reg!16306 r!7292))))) b!5931194))

(assert (= (and b!5929901 ((_ is Union!15977) (regTwo!32466 (regOne!32466 (reg!16306 r!7292))))) b!5931195))

(declare-fun b!5931197 () Bool)

(declare-fun e!3630224 () Bool)

(declare-fun tp!1649297 () Bool)

(declare-fun tp!1649301 () Bool)

(assert (=> b!5931197 (= e!3630224 (and tp!1649297 tp!1649301))))

(declare-fun b!5931198 () Bool)

(declare-fun tp!1649298 () Bool)

(assert (=> b!5931198 (= e!3630224 tp!1649298)))

(assert (=> b!5929919 (= tp!1649145 e!3630224)))

(declare-fun b!5931196 () Bool)

(assert (=> b!5931196 (= e!3630224 tp_is_empty!41207)))

(declare-fun b!5931199 () Bool)

(declare-fun tp!1649300 () Bool)

(declare-fun tp!1649299 () Bool)

(assert (=> b!5931199 (= e!3630224 (and tp!1649300 tp!1649299))))

(assert (= (and b!5929919 ((_ is ElementMatch!15977) (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931196))

(assert (= (and b!5929919 ((_ is Concat!24822) (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931197))

(assert (= (and b!5929919 ((_ is Star!15977) (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931198))

(assert (= (and b!5929919 ((_ is Union!15977) (regOne!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931199))

(declare-fun b!5931201 () Bool)

(declare-fun e!3630225 () Bool)

(declare-fun tp!1649302 () Bool)

(declare-fun tp!1649306 () Bool)

(assert (=> b!5931201 (= e!3630225 (and tp!1649302 tp!1649306))))

(declare-fun b!5931202 () Bool)

(declare-fun tp!1649303 () Bool)

(assert (=> b!5931202 (= e!3630225 tp!1649303)))

(assert (=> b!5929919 (= tp!1649144 e!3630225)))

(declare-fun b!5931200 () Bool)

(assert (=> b!5931200 (= e!3630225 tp_is_empty!41207)))

(declare-fun b!5931203 () Bool)

(declare-fun tp!1649305 () Bool)

(declare-fun tp!1649304 () Bool)

(assert (=> b!5931203 (= e!3630225 (and tp!1649305 tp!1649304))))

(assert (= (and b!5929919 ((_ is ElementMatch!15977) (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931200))

(assert (= (and b!5929919 ((_ is Concat!24822) (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931201))

(assert (= (and b!5929919 ((_ is Star!15977) (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931202))

(assert (= (and b!5929919 ((_ is Union!15977) (regTwo!32467 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931203))

(declare-fun b!5931205 () Bool)

(declare-fun e!3630226 () Bool)

(declare-fun tp!1649307 () Bool)

(declare-fun tp!1649311 () Bool)

(assert (=> b!5931205 (= e!3630226 (and tp!1649307 tp!1649311))))

(declare-fun b!5931206 () Bool)

(declare-fun tp!1649308 () Bool)

(assert (=> b!5931206 (= e!3630226 tp!1649308)))

(assert (=> b!5929910 (= tp!1649133 e!3630226)))

(declare-fun b!5931204 () Bool)

(assert (=> b!5931204 (= e!3630226 tp_is_empty!41207)))

(declare-fun b!5931207 () Bool)

(declare-fun tp!1649310 () Bool)

(declare-fun tp!1649309 () Bool)

(assert (=> b!5931207 (= e!3630226 (and tp!1649310 tp!1649309))))

(assert (= (and b!5929910 ((_ is ElementMatch!15977) (reg!16306 (regOne!32467 (reg!16306 r!7292))))) b!5931204))

(assert (= (and b!5929910 ((_ is Concat!24822) (reg!16306 (regOne!32467 (reg!16306 r!7292))))) b!5931205))

(assert (= (and b!5929910 ((_ is Star!15977) (reg!16306 (regOne!32467 (reg!16306 r!7292))))) b!5931206))

(assert (= (and b!5929910 ((_ is Union!15977) (reg!16306 (regOne!32467 (reg!16306 r!7292))))) b!5931207))

(declare-fun b!5931209 () Bool)

(declare-fun e!3630227 () Bool)

(declare-fun tp!1649312 () Bool)

(declare-fun tp!1649316 () Bool)

(assert (=> b!5931209 (= e!3630227 (and tp!1649312 tp!1649316))))

(declare-fun b!5931210 () Bool)

(declare-fun tp!1649313 () Bool)

(assert (=> b!5931210 (= e!3630227 tp!1649313)))

(assert (=> b!5929877 (= tp!1649092 e!3630227)))

(declare-fun b!5931208 () Bool)

(assert (=> b!5931208 (= e!3630227 tp_is_empty!41207)))

(declare-fun b!5931211 () Bool)

(declare-fun tp!1649315 () Bool)

(declare-fun tp!1649314 () Bool)

(assert (=> b!5931211 (= e!3630227 (and tp!1649315 tp!1649314))))

(assert (= (and b!5929877 ((_ is ElementMatch!15977) (regOne!32466 (reg!16306 (regTwo!32467 r!7292))))) b!5931208))

(assert (= (and b!5929877 ((_ is Concat!24822) (regOne!32466 (reg!16306 (regTwo!32467 r!7292))))) b!5931209))

(assert (= (and b!5929877 ((_ is Star!15977) (regOne!32466 (reg!16306 (regTwo!32467 r!7292))))) b!5931210))

(assert (= (and b!5929877 ((_ is Union!15977) (regOne!32466 (reg!16306 (regTwo!32467 r!7292))))) b!5931211))

(declare-fun b!5931213 () Bool)

(declare-fun e!3630228 () Bool)

(declare-fun tp!1649317 () Bool)

(declare-fun tp!1649321 () Bool)

(assert (=> b!5931213 (= e!3630228 (and tp!1649317 tp!1649321))))

(declare-fun b!5931214 () Bool)

(declare-fun tp!1649318 () Bool)

(assert (=> b!5931214 (= e!3630228 tp!1649318)))

(assert (=> b!5929877 (= tp!1649096 e!3630228)))

(declare-fun b!5931212 () Bool)

(assert (=> b!5931212 (= e!3630228 tp_is_empty!41207)))

(declare-fun b!5931215 () Bool)

(declare-fun tp!1649320 () Bool)

(declare-fun tp!1649319 () Bool)

(assert (=> b!5931215 (= e!3630228 (and tp!1649320 tp!1649319))))

(assert (= (and b!5929877 ((_ is ElementMatch!15977) (regTwo!32466 (reg!16306 (regTwo!32467 r!7292))))) b!5931212))

(assert (= (and b!5929877 ((_ is Concat!24822) (regTwo!32466 (reg!16306 (regTwo!32467 r!7292))))) b!5931213))

(assert (= (and b!5929877 ((_ is Star!15977) (regTwo!32466 (reg!16306 (regTwo!32467 r!7292))))) b!5931214))

(assert (= (and b!5929877 ((_ is Union!15977) (regTwo!32466 (reg!16306 (regTwo!32467 r!7292))))) b!5931215))

(declare-fun b!5931217 () Bool)

(declare-fun e!3630229 () Bool)

(declare-fun tp!1649322 () Bool)

(declare-fun tp!1649326 () Bool)

(assert (=> b!5931217 (= e!3630229 (and tp!1649322 tp!1649326))))

(declare-fun b!5931218 () Bool)

(declare-fun tp!1649323 () Bool)

(assert (=> b!5931218 (= e!3630229 tp!1649323)))

(assert (=> b!5929746 (= tp!1648926 e!3630229)))

(declare-fun b!5931216 () Bool)

(assert (=> b!5931216 (= e!3630229 tp_is_empty!41207)))

(declare-fun b!5931219 () Bool)

(declare-fun tp!1649325 () Bool)

(declare-fun tp!1649324 () Bool)

(assert (=> b!5931219 (= e!3630229 (and tp!1649325 tp!1649324))))

(assert (= (and b!5929746 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32466 (regOne!32466 r!7292))))) b!5931216))

(assert (= (and b!5929746 ((_ is Concat!24822) (regOne!32467 (regOne!32466 (regOne!32466 r!7292))))) b!5931217))

(assert (= (and b!5929746 ((_ is Star!15977) (regOne!32467 (regOne!32466 (regOne!32466 r!7292))))) b!5931218))

(assert (= (and b!5929746 ((_ is Union!15977) (regOne!32467 (regOne!32466 (regOne!32466 r!7292))))) b!5931219))

(declare-fun b!5931221 () Bool)

(declare-fun e!3630230 () Bool)

(declare-fun tp!1649327 () Bool)

(declare-fun tp!1649331 () Bool)

(assert (=> b!5931221 (= e!3630230 (and tp!1649327 tp!1649331))))

(declare-fun b!5931222 () Bool)

(declare-fun tp!1649328 () Bool)

(assert (=> b!5931222 (= e!3630230 tp!1649328)))

(assert (=> b!5929746 (= tp!1648925 e!3630230)))

(declare-fun b!5931220 () Bool)

(assert (=> b!5931220 (= e!3630230 tp_is_empty!41207)))

(declare-fun b!5931223 () Bool)

(declare-fun tp!1649330 () Bool)

(declare-fun tp!1649329 () Bool)

(assert (=> b!5931223 (= e!3630230 (and tp!1649330 tp!1649329))))

(assert (= (and b!5929746 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32466 (regOne!32466 r!7292))))) b!5931220))

(assert (= (and b!5929746 ((_ is Concat!24822) (regTwo!32467 (regOne!32466 (regOne!32466 r!7292))))) b!5931221))

(assert (= (and b!5929746 ((_ is Star!15977) (regTwo!32467 (regOne!32466 (regOne!32466 r!7292))))) b!5931222))

(assert (= (and b!5929746 ((_ is Union!15977) (regTwo!32467 (regOne!32466 (regOne!32466 r!7292))))) b!5931223))

(declare-fun b!5931225 () Bool)

(declare-fun e!3630231 () Bool)

(declare-fun tp!1649332 () Bool)

(declare-fun tp!1649336 () Bool)

(assert (=> b!5931225 (= e!3630231 (and tp!1649332 tp!1649336))))

(declare-fun b!5931226 () Bool)

(declare-fun tp!1649333 () Bool)

(assert (=> b!5931226 (= e!3630231 tp!1649333)))

(assert (=> b!5929873 (= tp!1649087 e!3630231)))

(declare-fun b!5931224 () Bool)

(assert (=> b!5931224 (= e!3630231 tp_is_empty!41207)))

(declare-fun b!5931227 () Bool)

(declare-fun tp!1649335 () Bool)

(declare-fun tp!1649334 () Bool)

(assert (=> b!5931227 (= e!3630231 (and tp!1649335 tp!1649334))))

(assert (= (and b!5929873 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931224))

(assert (= (and b!5929873 ((_ is Concat!24822) (regOne!32466 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931225))

(assert (= (and b!5929873 ((_ is Star!15977) (regOne!32466 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931226))

(assert (= (and b!5929873 ((_ is Union!15977) (regOne!32466 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931227))

(declare-fun b!5931229 () Bool)

(declare-fun e!3630232 () Bool)

(declare-fun tp!1649337 () Bool)

(declare-fun tp!1649341 () Bool)

(assert (=> b!5931229 (= e!3630232 (and tp!1649337 tp!1649341))))

(declare-fun b!5931230 () Bool)

(declare-fun tp!1649338 () Bool)

(assert (=> b!5931230 (= e!3630232 tp!1649338)))

(assert (=> b!5929873 (= tp!1649091 e!3630232)))

(declare-fun b!5931228 () Bool)

(assert (=> b!5931228 (= e!3630232 tp_is_empty!41207)))

(declare-fun b!5931231 () Bool)

(declare-fun tp!1649340 () Bool)

(declare-fun tp!1649339 () Bool)

(assert (=> b!5931231 (= e!3630232 (and tp!1649340 tp!1649339))))

(assert (= (and b!5929873 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931228))

(assert (= (and b!5929873 ((_ is Concat!24822) (regTwo!32466 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931229))

(assert (= (and b!5929873 ((_ is Star!15977) (regTwo!32466 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931230))

(assert (= (and b!5929873 ((_ is Union!15977) (regTwo!32466 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931231))

(declare-fun b!5931233 () Bool)

(declare-fun e!3630233 () Bool)

(declare-fun tp!1649342 () Bool)

(declare-fun tp!1649346 () Bool)

(assert (=> b!5931233 (= e!3630233 (and tp!1649342 tp!1649346))))

(declare-fun b!5931234 () Bool)

(declare-fun tp!1649343 () Bool)

(assert (=> b!5931234 (= e!3630233 tp!1649343)))

(assert (=> b!5929796 (= tp!1648988 e!3630233)))

(declare-fun b!5931232 () Bool)

(assert (=> b!5931232 (= e!3630233 tp_is_empty!41207)))

(declare-fun b!5931235 () Bool)

(declare-fun tp!1649345 () Bool)

(declare-fun tp!1649344 () Bool)

(assert (=> b!5931235 (= e!3630233 (and tp!1649345 tp!1649344))))

(assert (= (and b!5929796 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32467 (regOne!32466 r!7292))))) b!5931232))

(assert (= (and b!5929796 ((_ is Concat!24822) (regOne!32467 (regTwo!32467 (regOne!32466 r!7292))))) b!5931233))

(assert (= (and b!5929796 ((_ is Star!15977) (regOne!32467 (regTwo!32467 (regOne!32466 r!7292))))) b!5931234))

(assert (= (and b!5929796 ((_ is Union!15977) (regOne!32467 (regTwo!32467 (regOne!32466 r!7292))))) b!5931235))

(declare-fun b!5931237 () Bool)

(declare-fun e!3630234 () Bool)

(declare-fun tp!1649347 () Bool)

(declare-fun tp!1649351 () Bool)

(assert (=> b!5931237 (= e!3630234 (and tp!1649347 tp!1649351))))

(declare-fun b!5931238 () Bool)

(declare-fun tp!1649348 () Bool)

(assert (=> b!5931238 (= e!3630234 tp!1649348)))

(assert (=> b!5929796 (= tp!1648987 e!3630234)))

(declare-fun b!5931236 () Bool)

(assert (=> b!5931236 (= e!3630234 tp_is_empty!41207)))

(declare-fun b!5931239 () Bool)

(declare-fun tp!1649350 () Bool)

(declare-fun tp!1649349 () Bool)

(assert (=> b!5931239 (= e!3630234 (and tp!1649350 tp!1649349))))

(assert (= (and b!5929796 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32467 (regOne!32466 r!7292))))) b!5931236))

(assert (= (and b!5929796 ((_ is Concat!24822) (regTwo!32467 (regTwo!32467 (regOne!32466 r!7292))))) b!5931237))

(assert (= (and b!5929796 ((_ is Star!15977) (regTwo!32467 (regTwo!32467 (regOne!32466 r!7292))))) b!5931238))

(assert (= (and b!5929796 ((_ is Union!15977) (regTwo!32467 (regTwo!32467 (regOne!32466 r!7292))))) b!5931239))

(declare-fun b!5931241 () Bool)

(declare-fun e!3630235 () Bool)

(declare-fun tp!1649352 () Bool)

(declare-fun tp!1649356 () Bool)

(assert (=> b!5931241 (= e!3630235 (and tp!1649352 tp!1649356))))

(declare-fun b!5931242 () Bool)

(declare-fun tp!1649353 () Bool)

(assert (=> b!5931242 (= e!3630235 tp!1649353)))

(assert (=> b!5929787 (= tp!1648976 e!3630235)))

(declare-fun b!5931240 () Bool)

(assert (=> b!5931240 (= e!3630235 tp_is_empty!41207)))

(declare-fun b!5931243 () Bool)

(declare-fun tp!1649355 () Bool)

(declare-fun tp!1649354 () Bool)

(assert (=> b!5931243 (= e!3630235 (and tp!1649355 tp!1649354))))

(assert (= (and b!5929787 ((_ is ElementMatch!15977) (reg!16306 (regOne!32467 (regOne!32466 r!7292))))) b!5931240))

(assert (= (and b!5929787 ((_ is Concat!24822) (reg!16306 (regOne!32467 (regOne!32466 r!7292))))) b!5931241))

(assert (= (and b!5929787 ((_ is Star!15977) (reg!16306 (regOne!32467 (regOne!32466 r!7292))))) b!5931242))

(assert (= (and b!5929787 ((_ is Union!15977) (reg!16306 (regOne!32467 (regOne!32466 r!7292))))) b!5931243))

(declare-fun b!5931245 () Bool)

(declare-fun e!3630236 () Bool)

(declare-fun tp!1649357 () Bool)

(declare-fun tp!1649361 () Bool)

(assert (=> b!5931245 (= e!3630236 (and tp!1649357 tp!1649361))))

(declare-fun b!5931246 () Bool)

(declare-fun tp!1649358 () Bool)

(assert (=> b!5931246 (= e!3630236 tp!1649358)))

(assert (=> b!5929891 (= tp!1649110 e!3630236)))

(declare-fun b!5931244 () Bool)

(assert (=> b!5931244 (= e!3630236 tp_is_empty!41207)))

(declare-fun b!5931247 () Bool)

(declare-fun tp!1649360 () Bool)

(declare-fun tp!1649359 () Bool)

(assert (=> b!5931247 (= e!3630236 (and tp!1649360 tp!1649359))))

(assert (= (and b!5929891 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32467 (regTwo!32467 r!7292))))) b!5931244))

(assert (= (and b!5929891 ((_ is Concat!24822) (regOne!32467 (regOne!32467 (regTwo!32467 r!7292))))) b!5931245))

(assert (= (and b!5929891 ((_ is Star!15977) (regOne!32467 (regOne!32467 (regTwo!32467 r!7292))))) b!5931246))

(assert (= (and b!5929891 ((_ is Union!15977) (regOne!32467 (regOne!32467 (regTwo!32467 r!7292))))) b!5931247))

(declare-fun b!5931249 () Bool)

(declare-fun e!3630237 () Bool)

(declare-fun tp!1649362 () Bool)

(declare-fun tp!1649366 () Bool)

(assert (=> b!5931249 (= e!3630237 (and tp!1649362 tp!1649366))))

(declare-fun b!5931250 () Bool)

(declare-fun tp!1649363 () Bool)

(assert (=> b!5931250 (= e!3630237 tp!1649363)))

(assert (=> b!5929891 (= tp!1649109 e!3630237)))

(declare-fun b!5931248 () Bool)

(assert (=> b!5931248 (= e!3630237 tp_is_empty!41207)))

(declare-fun b!5931251 () Bool)

(declare-fun tp!1649365 () Bool)

(declare-fun tp!1649364 () Bool)

(assert (=> b!5931251 (= e!3630237 (and tp!1649365 tp!1649364))))

(assert (= (and b!5929891 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32467 (regTwo!32467 r!7292))))) b!5931248))

(assert (= (and b!5929891 ((_ is Concat!24822) (regTwo!32467 (regOne!32467 (regTwo!32467 r!7292))))) b!5931249))

(assert (= (and b!5929891 ((_ is Star!15977) (regTwo!32467 (regOne!32467 (regTwo!32467 r!7292))))) b!5931250))

(assert (= (and b!5929891 ((_ is Union!15977) (regTwo!32467 (regOne!32467 (regTwo!32467 r!7292))))) b!5931251))

(declare-fun b!5931253 () Bool)

(declare-fun e!3630238 () Bool)

(declare-fun tp!1649367 () Bool)

(declare-fun tp!1649371 () Bool)

(assert (=> b!5931253 (= e!3630238 (and tp!1649367 tp!1649371))))

(declare-fun b!5931254 () Bool)

(declare-fun tp!1649368 () Bool)

(assert (=> b!5931254 (= e!3630238 tp!1649368)))

(assert (=> b!5929839 (= tp!1649045 e!3630238)))

(declare-fun b!5931252 () Bool)

(assert (=> b!5931252 (= e!3630238 tp_is_empty!41207)))

(declare-fun b!5931255 () Bool)

(declare-fun tp!1649370 () Bool)

(declare-fun tp!1649369 () Bool)

(assert (=> b!5931255 (= e!3630238 (and tp!1649370 tp!1649369))))

(assert (= (and b!5929839 ((_ is ElementMatch!15977) (h!70554 (exprs!5861 setElem!40248)))) b!5931252))

(assert (= (and b!5929839 ((_ is Concat!24822) (h!70554 (exprs!5861 setElem!40248)))) b!5931253))

(assert (= (and b!5929839 ((_ is Star!15977) (h!70554 (exprs!5861 setElem!40248)))) b!5931254))

(assert (= (and b!5929839 ((_ is Union!15977) (h!70554 (exprs!5861 setElem!40248)))) b!5931255))

(declare-fun b!5931256 () Bool)

(declare-fun e!3630239 () Bool)

(declare-fun tp!1649372 () Bool)

(declare-fun tp!1649373 () Bool)

(assert (=> b!5931256 (= e!3630239 (and tp!1649372 tp!1649373))))

(assert (=> b!5929839 (= tp!1649046 e!3630239)))

(assert (= (and b!5929839 ((_ is Cons!64106) (t!377627 (exprs!5861 setElem!40248)))) b!5931256))

(declare-fun b!5931258 () Bool)

(declare-fun e!3630240 () Bool)

(declare-fun tp!1649374 () Bool)

(declare-fun tp!1649378 () Bool)

(assert (=> b!5931258 (= e!3630240 (and tp!1649374 tp!1649378))))

(declare-fun b!5931259 () Bool)

(declare-fun tp!1649375 () Bool)

(assert (=> b!5931259 (= e!3630240 tp!1649375)))

(assert (=> b!5929809 (= tp!1649004 e!3630240)))

(declare-fun b!5931257 () Bool)

(assert (=> b!5931257 (= e!3630240 tp_is_empty!41207)))

(declare-fun b!5931260 () Bool)

(declare-fun tp!1649377 () Bool)

(declare-fun tp!1649376 () Bool)

(assert (=> b!5931260 (= e!3630240 (and tp!1649377 tp!1649376))))

(assert (= (and b!5929809 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32467 (regOne!32467 r!7292))))) b!5931257))

(assert (= (and b!5929809 ((_ is Concat!24822) (regOne!32466 (regOne!32467 (regOne!32467 r!7292))))) b!5931258))

(assert (= (and b!5929809 ((_ is Star!15977) (regOne!32466 (regOne!32467 (regOne!32467 r!7292))))) b!5931259))

(assert (= (and b!5929809 ((_ is Union!15977) (regOne!32466 (regOne!32467 (regOne!32467 r!7292))))) b!5931260))

(declare-fun b!5931262 () Bool)

(declare-fun e!3630241 () Bool)

(declare-fun tp!1649379 () Bool)

(declare-fun tp!1649383 () Bool)

(assert (=> b!5931262 (= e!3630241 (and tp!1649379 tp!1649383))))

(declare-fun b!5931263 () Bool)

(declare-fun tp!1649380 () Bool)

(assert (=> b!5931263 (= e!3630241 tp!1649380)))

(assert (=> b!5929809 (= tp!1649008 e!3630241)))

(declare-fun b!5931261 () Bool)

(assert (=> b!5931261 (= e!3630241 tp_is_empty!41207)))

(declare-fun b!5931264 () Bool)

(declare-fun tp!1649382 () Bool)

(declare-fun tp!1649381 () Bool)

(assert (=> b!5931264 (= e!3630241 (and tp!1649382 tp!1649381))))

(assert (= (and b!5929809 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))))) b!5931261))

(assert (= (and b!5929809 ((_ is Concat!24822) (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))))) b!5931262))

(assert (= (and b!5929809 ((_ is Star!15977) (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))))) b!5931263))

(assert (= (and b!5929809 ((_ is Union!15977) (regTwo!32466 (regOne!32467 (regOne!32467 r!7292))))) b!5931264))

(declare-fun b!5931266 () Bool)

(declare-fun e!3630242 () Bool)

(declare-fun tp!1649384 () Bool)

(declare-fun tp!1649388 () Bool)

(assert (=> b!5931266 (= e!3630242 (and tp!1649384 tp!1649388))))

(declare-fun b!5931267 () Bool)

(declare-fun tp!1649385 () Bool)

(assert (=> b!5931267 (= e!3630242 tp!1649385)))

(assert (=> b!5929885 (= tp!1649102 e!3630242)))

(declare-fun b!5931265 () Bool)

(assert (=> b!5931265 (= e!3630242 tp_is_empty!41207)))

(declare-fun b!5931268 () Bool)

(declare-fun tp!1649387 () Bool)

(declare-fun tp!1649386 () Bool)

(assert (=> b!5931268 (= e!3630242 (and tp!1649387 tp!1649386))))

(assert (= (and b!5929885 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931265))

(assert (= (and b!5929885 ((_ is Concat!24822) (regOne!32466 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931266))

(assert (= (and b!5929885 ((_ is Star!15977) (regOne!32466 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931267))

(assert (= (and b!5929885 ((_ is Union!15977) (regOne!32466 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931268))

(declare-fun b!5931270 () Bool)

(declare-fun e!3630243 () Bool)

(declare-fun tp!1649389 () Bool)

(declare-fun tp!1649393 () Bool)

(assert (=> b!5931270 (= e!3630243 (and tp!1649389 tp!1649393))))

(declare-fun b!5931271 () Bool)

(declare-fun tp!1649390 () Bool)

(assert (=> b!5931271 (= e!3630243 tp!1649390)))

(assert (=> b!5929885 (= tp!1649106 e!3630243)))

(declare-fun b!5931269 () Bool)

(assert (=> b!5931269 (= e!3630243 tp_is_empty!41207)))

(declare-fun b!5931272 () Bool)

(declare-fun tp!1649392 () Bool)

(declare-fun tp!1649391 () Bool)

(assert (=> b!5931272 (= e!3630243 (and tp!1649392 tp!1649391))))

(assert (= (and b!5929885 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931269))

(assert (= (and b!5929885 ((_ is Concat!24822) (regTwo!32466 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931270))

(assert (= (and b!5929885 ((_ is Star!15977) (regTwo!32466 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931271))

(assert (= (and b!5929885 ((_ is Union!15977) (regTwo!32466 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931272))

(declare-fun b!5931274 () Bool)

(declare-fun e!3630244 () Bool)

(declare-fun tp!1649394 () Bool)

(declare-fun tp!1649398 () Bool)

(assert (=> b!5931274 (= e!3630244 (and tp!1649394 tp!1649398))))

(declare-fun b!5931275 () Bool)

(declare-fun tp!1649395 () Bool)

(assert (=> b!5931275 (= e!3630244 tp!1649395)))

(assert (=> b!5929905 (= tp!1649127 e!3630244)))

(declare-fun b!5931273 () Bool)

(assert (=> b!5931273 (= e!3630244 tp_is_empty!41207)))

(declare-fun b!5931276 () Bool)

(declare-fun tp!1649397 () Bool)

(declare-fun tp!1649396 () Bool)

(assert (=> b!5931276 (= e!3630244 (and tp!1649397 tp!1649396))))

(assert (= (and b!5929905 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32466 (reg!16306 r!7292))))) b!5931273))

(assert (= (and b!5929905 ((_ is Concat!24822) (regOne!32466 (regTwo!32466 (reg!16306 r!7292))))) b!5931274))

(assert (= (and b!5929905 ((_ is Star!15977) (regOne!32466 (regTwo!32466 (reg!16306 r!7292))))) b!5931275))

(assert (= (and b!5929905 ((_ is Union!15977) (regOne!32466 (regTwo!32466 (reg!16306 r!7292))))) b!5931276))

(declare-fun b!5931280 () Bool)

(declare-fun e!3630247 () Bool)

(declare-fun tp!1649399 () Bool)

(declare-fun tp!1649403 () Bool)

(assert (=> b!5931280 (= e!3630247 (and tp!1649399 tp!1649403))))

(declare-fun b!5931281 () Bool)

(declare-fun tp!1649400 () Bool)

(assert (=> b!5931281 (= e!3630247 tp!1649400)))

(assert (=> b!5929905 (= tp!1649131 e!3630247)))

(declare-fun b!5931279 () Bool)

(assert (=> b!5931279 (= e!3630247 tp_is_empty!41207)))

(declare-fun b!5931282 () Bool)

(declare-fun tp!1649402 () Bool)

(declare-fun tp!1649401 () Bool)

(assert (=> b!5931282 (= e!3630247 (and tp!1649402 tp!1649401))))

(assert (= (and b!5929905 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32466 (reg!16306 r!7292))))) b!5931279))

(assert (= (and b!5929905 ((_ is Concat!24822) (regTwo!32466 (regTwo!32466 (reg!16306 r!7292))))) b!5931280))

(assert (= (and b!5929905 ((_ is Star!15977) (regTwo!32466 (regTwo!32466 (reg!16306 r!7292))))) b!5931281))

(assert (= (and b!5929905 ((_ is Union!15977) (regTwo!32466 (regTwo!32466 (reg!16306 r!7292))))) b!5931282))

(declare-fun b!5931284 () Bool)

(declare-fun e!3630248 () Bool)

(declare-fun tp!1649404 () Bool)

(declare-fun tp!1649408 () Bool)

(assert (=> b!5931284 (= e!3630248 (and tp!1649404 tp!1649408))))

(declare-fun b!5931285 () Bool)

(declare-fun tp!1649405 () Bool)

(assert (=> b!5931285 (= e!3630248 tp!1649405)))

(assert (=> b!5929838 (= tp!1649043 e!3630248)))

(declare-fun b!5931283 () Bool)

(assert (=> b!5931283 (= e!3630248 tp_is_empty!41207)))

(declare-fun b!5931286 () Bool)

(declare-fun tp!1649407 () Bool)

(declare-fun tp!1649406 () Bool)

(assert (=> b!5931286 (= e!3630248 (and tp!1649407 tp!1649406))))

(assert (= (and b!5929838 ((_ is ElementMatch!15977) (h!70554 (t!377627 (exprs!5861 setElem!40242))))) b!5931283))

(assert (= (and b!5929838 ((_ is Concat!24822) (h!70554 (t!377627 (exprs!5861 setElem!40242))))) b!5931284))

(assert (= (and b!5929838 ((_ is Star!15977) (h!70554 (t!377627 (exprs!5861 setElem!40242))))) b!5931285))

(assert (= (and b!5929838 ((_ is Union!15977) (h!70554 (t!377627 (exprs!5861 setElem!40242))))) b!5931286))

(declare-fun b!5931287 () Bool)

(declare-fun e!3630249 () Bool)

(declare-fun tp!1649409 () Bool)

(declare-fun tp!1649410 () Bool)

(assert (=> b!5931287 (= e!3630249 (and tp!1649409 tp!1649410))))

(assert (=> b!5929838 (= tp!1649044 e!3630249)))

(assert (= (and b!5929838 ((_ is Cons!64106) (t!377627 (t!377627 (exprs!5861 setElem!40242))))) b!5931287))

(declare-fun b!5931291 () Bool)

(declare-fun e!3630253 () Bool)

(declare-fun tp!1649411 () Bool)

(assert (=> b!5931291 (= e!3630253 tp!1649411)))

(declare-fun tp!1649412 () Bool)

(declare-fun e!3630252 () Bool)

(declare-fun b!5931290 () Bool)

(assert (=> b!5931290 (= e!3630252 (and (inv!83189 (h!70555 (t!377628 (t!377628 (t!377628 zl!343))))) e!3630253 tp!1649412))))

(assert (=> b!5929921 (= tp!1649150 e!3630252)))

(assert (= b!5931290 b!5931291))

(assert (= (and b!5929921 ((_ is Cons!64107) (t!377628 (t!377628 (t!377628 zl!343))))) b!5931290))

(declare-fun m!6823960 () Bool)

(assert (=> b!5931290 m!6823960))

(declare-fun b!5931293 () Bool)

(declare-fun e!3630254 () Bool)

(declare-fun tp!1649413 () Bool)

(declare-fun tp!1649417 () Bool)

(assert (=> b!5931293 (= e!3630254 (and tp!1649413 tp!1649417))))

(declare-fun b!5931294 () Bool)

(declare-fun tp!1649414 () Bool)

(assert (=> b!5931294 (= e!3630254 tp!1649414)))

(assert (=> b!5929914 (= tp!1649138 e!3630254)))

(declare-fun b!5931292 () Bool)

(assert (=> b!5931292 (= e!3630254 tp_is_empty!41207)))

(declare-fun b!5931295 () Bool)

(declare-fun tp!1649416 () Bool)

(declare-fun tp!1649415 () Bool)

(assert (=> b!5931295 (= e!3630254 (and tp!1649416 tp!1649415))))

(assert (= (and b!5929914 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32467 (reg!16306 r!7292))))) b!5931292))

(assert (= (and b!5929914 ((_ is Concat!24822) (reg!16306 (regTwo!32467 (reg!16306 r!7292))))) b!5931293))

(assert (= (and b!5929914 ((_ is Star!15977) (reg!16306 (regTwo!32467 (reg!16306 r!7292))))) b!5931294))

(assert (= (and b!5929914 ((_ is Union!15977) (reg!16306 (regTwo!32467 (reg!16306 r!7292))))) b!5931295))

(declare-fun b!5931299 () Bool)

(declare-fun e!3630257 () Bool)

(declare-fun tp!1649418 () Bool)

(declare-fun tp!1649422 () Bool)

(assert (=> b!5931299 (= e!3630257 (and tp!1649418 tp!1649422))))

(declare-fun b!5931300 () Bool)

(declare-fun tp!1649419 () Bool)

(assert (=> b!5931300 (= e!3630257 tp!1649419)))

(assert (=> b!5929853 (= tp!1649062 e!3630257)))

(declare-fun b!5931298 () Bool)

(assert (=> b!5931298 (= e!3630257 tp_is_empty!41207)))

(declare-fun b!5931301 () Bool)

(declare-fun tp!1649421 () Bool)

(declare-fun tp!1649420 () Bool)

(assert (=> b!5931301 (= e!3630257 (and tp!1649421 tp!1649420))))

(assert (= (and b!5929853 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32466 (regTwo!32466 r!7292))))) b!5931298))

(assert (= (and b!5929853 ((_ is Concat!24822) (regOne!32466 (regOne!32466 (regTwo!32466 r!7292))))) b!5931299))

(assert (= (and b!5929853 ((_ is Star!15977) (regOne!32466 (regOne!32466 (regTwo!32466 r!7292))))) b!5931300))

(assert (= (and b!5929853 ((_ is Union!15977) (regOne!32466 (regOne!32466 (regTwo!32466 r!7292))))) b!5931301))

(declare-fun b!5931303 () Bool)

(declare-fun e!3630258 () Bool)

(declare-fun tp!1649423 () Bool)

(declare-fun tp!1649427 () Bool)

(assert (=> b!5931303 (= e!3630258 (and tp!1649423 tp!1649427))))

(declare-fun b!5931304 () Bool)

(declare-fun tp!1649424 () Bool)

(assert (=> b!5931304 (= e!3630258 tp!1649424)))

(assert (=> b!5929853 (= tp!1649066 e!3630258)))

(declare-fun b!5931302 () Bool)

(assert (=> b!5931302 (= e!3630258 tp_is_empty!41207)))

(declare-fun b!5931305 () Bool)

(declare-fun tp!1649426 () Bool)

(declare-fun tp!1649425 () Bool)

(assert (=> b!5931305 (= e!3630258 (and tp!1649426 tp!1649425))))

(assert (= (and b!5929853 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32466 (regTwo!32466 r!7292))))) b!5931302))

(assert (= (and b!5929853 ((_ is Concat!24822) (regTwo!32466 (regOne!32466 (regTwo!32466 r!7292))))) b!5931303))

(assert (= (and b!5929853 ((_ is Star!15977) (regTwo!32466 (regOne!32466 (regTwo!32466 r!7292))))) b!5931304))

(assert (= (and b!5929853 ((_ is Union!15977) (regTwo!32466 (regOne!32466 (regTwo!32466 r!7292))))) b!5931305))

(declare-fun b!5931307 () Bool)

(declare-fun e!3630259 () Bool)

(declare-fun tp!1649428 () Bool)

(declare-fun tp!1649432 () Bool)

(assert (=> b!5931307 (= e!3630259 (and tp!1649428 tp!1649432))))

(declare-fun b!5931308 () Bool)

(declare-fun tp!1649429 () Bool)

(assert (=> b!5931308 (= e!3630259 tp!1649429)))

(assert (=> b!5929871 (= tp!1649085 e!3630259)))

(declare-fun b!5931306 () Bool)

(assert (=> b!5931306 (= e!3630259 tp_is_empty!41207)))

(declare-fun b!5931309 () Bool)

(declare-fun tp!1649431 () Bool)

(declare-fun tp!1649430 () Bool)

(assert (=> b!5931309 (= e!3630259 (and tp!1649431 tp!1649430))))

(assert (= (and b!5929871 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32467 (regTwo!32466 r!7292))))) b!5931306))

(assert (= (and b!5929871 ((_ is Concat!24822) (regOne!32467 (regOne!32467 (regTwo!32466 r!7292))))) b!5931307))

(assert (= (and b!5929871 ((_ is Star!15977) (regOne!32467 (regOne!32467 (regTwo!32466 r!7292))))) b!5931308))

(assert (= (and b!5929871 ((_ is Union!15977) (regOne!32467 (regOne!32467 (regTwo!32466 r!7292))))) b!5931309))

(declare-fun b!5931311 () Bool)

(declare-fun e!3630260 () Bool)

(declare-fun tp!1649433 () Bool)

(declare-fun tp!1649437 () Bool)

(assert (=> b!5931311 (= e!3630260 (and tp!1649433 tp!1649437))))

(declare-fun b!5931312 () Bool)

(declare-fun tp!1649434 () Bool)

(assert (=> b!5931312 (= e!3630260 tp!1649434)))

(assert (=> b!5929871 (= tp!1649084 e!3630260)))

(declare-fun b!5931310 () Bool)

(assert (=> b!5931310 (= e!3630260 tp_is_empty!41207)))

(declare-fun b!5931313 () Bool)

(declare-fun tp!1649436 () Bool)

(declare-fun tp!1649435 () Bool)

(assert (=> b!5931313 (= e!3630260 (and tp!1649436 tp!1649435))))

(assert (= (and b!5929871 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32467 (regTwo!32466 r!7292))))) b!5931310))

(assert (= (and b!5929871 ((_ is Concat!24822) (regTwo!32467 (regOne!32467 (regTwo!32466 r!7292))))) b!5931311))

(assert (= (and b!5929871 ((_ is Star!15977) (regTwo!32467 (regOne!32467 (regTwo!32466 r!7292))))) b!5931312))

(assert (= (and b!5929871 ((_ is Union!15977) (regTwo!32467 (regOne!32467 (regTwo!32466 r!7292))))) b!5931313))

(declare-fun b!5931319 () Bool)

(declare-fun e!3630263 () Bool)

(declare-fun tp!1649438 () Bool)

(declare-fun tp!1649442 () Bool)

(assert (=> b!5931319 (= e!3630263 (and tp!1649438 tp!1649442))))

(declare-fun b!5931320 () Bool)

(declare-fun tp!1649439 () Bool)

(assert (=> b!5931320 (= e!3630263 tp!1649439)))

(assert (=> b!5929776 (= tp!1648963 e!3630263)))

(declare-fun b!5931318 () Bool)

(assert (=> b!5931318 (= e!3630263 tp_is_empty!41207)))

(declare-fun b!5931321 () Bool)

(declare-fun tp!1649441 () Bool)

(declare-fun tp!1649440 () Bool)

(assert (=> b!5931321 (= e!3630263 (and tp!1649441 tp!1649440))))

(assert (= (and b!5929776 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32466 (regOne!32467 r!7292))))) b!5931318))

(assert (= (and b!5929776 ((_ is Concat!24822) (regOne!32467 (regTwo!32466 (regOne!32467 r!7292))))) b!5931319))

(assert (= (and b!5929776 ((_ is Star!15977) (regOne!32467 (regTwo!32466 (regOne!32467 r!7292))))) b!5931320))

(assert (= (and b!5929776 ((_ is Union!15977) (regOne!32467 (regTwo!32466 (regOne!32467 r!7292))))) b!5931321))

(declare-fun b!5931323 () Bool)

(declare-fun e!3630264 () Bool)

(declare-fun tp!1649443 () Bool)

(declare-fun tp!1649447 () Bool)

(assert (=> b!5931323 (= e!3630264 (and tp!1649443 tp!1649447))))

(declare-fun b!5931324 () Bool)

(declare-fun tp!1649444 () Bool)

(assert (=> b!5931324 (= e!3630264 tp!1649444)))

(assert (=> b!5929776 (= tp!1648962 e!3630264)))

(declare-fun b!5931322 () Bool)

(assert (=> b!5931322 (= e!3630264 tp_is_empty!41207)))

(declare-fun b!5931325 () Bool)

(declare-fun tp!1649446 () Bool)

(declare-fun tp!1649445 () Bool)

(assert (=> b!5931325 (= e!3630264 (and tp!1649446 tp!1649445))))

(assert (= (and b!5929776 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32466 (regOne!32467 r!7292))))) b!5931322))

(assert (= (and b!5929776 ((_ is Concat!24822) (regTwo!32467 (regTwo!32466 (regOne!32467 r!7292))))) b!5931323))

(assert (= (and b!5929776 ((_ is Star!15977) (regTwo!32467 (regTwo!32466 (regOne!32467 r!7292))))) b!5931324))

(assert (= (and b!5929776 ((_ is Union!15977) (regTwo!32467 (regTwo!32466 (regOne!32467 r!7292))))) b!5931325))

(declare-fun b!5931327 () Bool)

(declare-fun e!3630265 () Bool)

(declare-fun tp!1649448 () Bool)

(declare-fun tp!1649452 () Bool)

(assert (=> b!5931327 (= e!3630265 (and tp!1649448 tp!1649452))))

(declare-fun b!5931328 () Bool)

(declare-fun tp!1649449 () Bool)

(assert (=> b!5931328 (= e!3630265 tp!1649449)))

(assert (=> b!5929862 (= tp!1649073 e!3630265)))

(declare-fun b!5931326 () Bool)

(assert (=> b!5931326 (= e!3630265 tp_is_empty!41207)))

(declare-fun b!5931329 () Bool)

(declare-fun tp!1649451 () Bool)

(declare-fun tp!1649450 () Bool)

(assert (=> b!5931329 (= e!3630265 (and tp!1649451 tp!1649450))))

(assert (= (and b!5929862 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931326))

(assert (= (and b!5929862 ((_ is Concat!24822) (reg!16306 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931327))

(assert (= (and b!5929862 ((_ is Star!15977) (reg!16306 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931328))

(assert (= (and b!5929862 ((_ is Union!15977) (reg!16306 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931329))

(declare-fun b!5931342 () Bool)

(declare-fun e!3630273 () Bool)

(declare-fun tp!1649453 () Bool)

(declare-fun tp!1649457 () Bool)

(assert (=> b!5931342 (= e!3630273 (and tp!1649453 tp!1649457))))

(declare-fun b!5931343 () Bool)

(declare-fun tp!1649454 () Bool)

(assert (=> b!5931343 (= e!3630273 tp!1649454)))

(assert (=> b!5929767 (= tp!1648951 e!3630273)))

(declare-fun b!5931341 () Bool)

(assert (=> b!5931341 (= e!3630273 tp_is_empty!41207)))

(declare-fun b!5931344 () Bool)

(declare-fun tp!1649456 () Bool)

(declare-fun tp!1649455 () Bool)

(assert (=> b!5931344 (= e!3630273 (and tp!1649456 tp!1649455))))

(assert (= (and b!5929767 ((_ is ElementMatch!15977) (reg!16306 (regOne!32466 (regOne!32467 r!7292))))) b!5931341))

(assert (= (and b!5929767 ((_ is Concat!24822) (reg!16306 (regOne!32466 (regOne!32467 r!7292))))) b!5931342))

(assert (= (and b!5929767 ((_ is Star!15977) (reg!16306 (regOne!32466 (regOne!32467 r!7292))))) b!5931343))

(assert (= (and b!5929767 ((_ is Union!15977) (reg!16306 (regOne!32466 (regOne!32467 r!7292))))) b!5931344))

(declare-fun b!5931346 () Bool)

(declare-fun e!3630274 () Bool)

(declare-fun tp!1649458 () Bool)

(declare-fun tp!1649462 () Bool)

(assert (=> b!5931346 (= e!3630274 (and tp!1649458 tp!1649462))))

(declare-fun b!5931347 () Bool)

(declare-fun tp!1649459 () Bool)

(assert (=> b!5931347 (= e!3630274 tp!1649459)))

(assert (=> b!5929861 (= tp!1649072 e!3630274)))

(declare-fun b!5931345 () Bool)

(assert (=> b!5931345 (= e!3630274 tp_is_empty!41207)))

(declare-fun b!5931348 () Bool)

(declare-fun tp!1649461 () Bool)

(declare-fun tp!1649460 () Bool)

(assert (=> b!5931348 (= e!3630274 (and tp!1649461 tp!1649460))))

(assert (= (and b!5929861 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931345))

(assert (= (and b!5929861 ((_ is Concat!24822) (regOne!32466 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931346))

(assert (= (and b!5929861 ((_ is Star!15977) (regOne!32466 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931347))

(assert (= (and b!5929861 ((_ is Union!15977) (regOne!32466 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931348))

(declare-fun b!5931350 () Bool)

(declare-fun e!3630275 () Bool)

(declare-fun tp!1649463 () Bool)

(declare-fun tp!1649467 () Bool)

(assert (=> b!5931350 (= e!3630275 (and tp!1649463 tp!1649467))))

(declare-fun b!5931351 () Bool)

(declare-fun tp!1649464 () Bool)

(assert (=> b!5931351 (= e!3630275 tp!1649464)))

(assert (=> b!5929861 (= tp!1649076 e!3630275)))

(declare-fun b!5931349 () Bool)

(assert (=> b!5931349 (= e!3630275 tp_is_empty!41207)))

(declare-fun b!5931352 () Bool)

(declare-fun tp!1649466 () Bool)

(declare-fun tp!1649465 () Bool)

(assert (=> b!5931352 (= e!3630275 (and tp!1649466 tp!1649465))))

(assert (= (and b!5929861 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931349))

(assert (= (and b!5929861 ((_ is Concat!24822) (regTwo!32466 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931350))

(assert (= (and b!5929861 ((_ is Star!15977) (regTwo!32466 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931351))

(assert (= (and b!5929861 ((_ is Union!15977) (regTwo!32466 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931352))

(declare-fun b!5931354 () Bool)

(declare-fun e!3630276 () Bool)

(declare-fun tp!1649468 () Bool)

(declare-fun tp!1649472 () Bool)

(assert (=> b!5931354 (= e!3630276 (and tp!1649468 tp!1649472))))

(declare-fun b!5931355 () Bool)

(declare-fun tp!1649469 () Bool)

(assert (=> b!5931355 (= e!3630276 tp!1649469)))

(assert (=> b!5929766 (= tp!1648950 e!3630276)))

(declare-fun b!5931353 () Bool)

(assert (=> b!5931353 (= e!3630276 tp_is_empty!41207)))

(declare-fun b!5931356 () Bool)

(declare-fun tp!1649471 () Bool)

(declare-fun tp!1649470 () Bool)

(assert (=> b!5931356 (= e!3630276 (and tp!1649471 tp!1649470))))

(assert (= (and b!5929766 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32466 (regOne!32467 r!7292))))) b!5931353))

(assert (= (and b!5929766 ((_ is Concat!24822) (regOne!32466 (regOne!32466 (regOne!32467 r!7292))))) b!5931354))

(assert (= (and b!5929766 ((_ is Star!15977) (regOne!32466 (regOne!32466 (regOne!32467 r!7292))))) b!5931355))

(assert (= (and b!5929766 ((_ is Union!15977) (regOne!32466 (regOne!32466 (regOne!32467 r!7292))))) b!5931356))

(declare-fun b!5931358 () Bool)

(declare-fun e!3630277 () Bool)

(declare-fun tp!1649473 () Bool)

(declare-fun tp!1649477 () Bool)

(assert (=> b!5931358 (= e!3630277 (and tp!1649473 tp!1649477))))

(declare-fun b!5931359 () Bool)

(declare-fun tp!1649474 () Bool)

(assert (=> b!5931359 (= e!3630277 tp!1649474)))

(assert (=> b!5929766 (= tp!1648954 e!3630277)))

(declare-fun b!5931357 () Bool)

(assert (=> b!5931357 (= e!3630277 tp_is_empty!41207)))

(declare-fun b!5931360 () Bool)

(declare-fun tp!1649476 () Bool)

(declare-fun tp!1649475 () Bool)

(assert (=> b!5931360 (= e!3630277 (and tp!1649476 tp!1649475))))

(assert (= (and b!5929766 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32466 (regOne!32467 r!7292))))) b!5931357))

(assert (= (and b!5929766 ((_ is Concat!24822) (regTwo!32466 (regOne!32466 (regOne!32467 r!7292))))) b!5931358))

(assert (= (and b!5929766 ((_ is Star!15977) (regTwo!32466 (regOne!32466 (regOne!32467 r!7292))))) b!5931359))

(assert (= (and b!5929766 ((_ is Union!15977) (regTwo!32466 (regOne!32466 (regOne!32467 r!7292))))) b!5931360))

(declare-fun b!5931362 () Bool)

(declare-fun e!3630278 () Bool)

(declare-fun tp!1649478 () Bool)

(declare-fun tp!1649482 () Bool)

(assert (=> b!5931362 (= e!3630278 (and tp!1649478 tp!1649482))))

(declare-fun b!5931363 () Bool)

(declare-fun tp!1649479 () Bool)

(assert (=> b!5931363 (= e!3630278 tp!1649479)))

(assert (=> b!5929784 (= tp!1648973 e!3630278)))

(declare-fun b!5931361 () Bool)

(assert (=> b!5931361 (= e!3630278 tp_is_empty!41207)))

(declare-fun b!5931364 () Bool)

(declare-fun tp!1649481 () Bool)

(declare-fun tp!1649480 () Bool)

(assert (=> b!5931364 (= e!3630278 (and tp!1649481 tp!1649480))))

(assert (= (and b!5929784 ((_ is ElementMatch!15977) (regOne!32467 (reg!16306 (regOne!32466 r!7292))))) b!5931361))

(assert (= (and b!5929784 ((_ is Concat!24822) (regOne!32467 (reg!16306 (regOne!32466 r!7292))))) b!5931362))

(assert (= (and b!5929784 ((_ is Star!15977) (regOne!32467 (reg!16306 (regOne!32466 r!7292))))) b!5931363))

(assert (= (and b!5929784 ((_ is Union!15977) (regOne!32467 (reg!16306 (regOne!32466 r!7292))))) b!5931364))

(declare-fun b!5931366 () Bool)

(declare-fun e!3630279 () Bool)

(declare-fun tp!1649483 () Bool)

(declare-fun tp!1649487 () Bool)

(assert (=> b!5931366 (= e!3630279 (and tp!1649483 tp!1649487))))

(declare-fun b!5931367 () Bool)

(declare-fun tp!1649484 () Bool)

(assert (=> b!5931367 (= e!3630279 tp!1649484)))

(assert (=> b!5929784 (= tp!1648972 e!3630279)))

(declare-fun b!5931365 () Bool)

(assert (=> b!5931365 (= e!3630279 tp_is_empty!41207)))

(declare-fun b!5931368 () Bool)

(declare-fun tp!1649486 () Bool)

(declare-fun tp!1649485 () Bool)

(assert (=> b!5931368 (= e!3630279 (and tp!1649486 tp!1649485))))

(assert (= (and b!5929784 ((_ is ElementMatch!15977) (regTwo!32467 (reg!16306 (regOne!32466 r!7292))))) b!5931365))

(assert (= (and b!5929784 ((_ is Concat!24822) (regTwo!32467 (reg!16306 (regOne!32466 r!7292))))) b!5931366))

(assert (= (and b!5929784 ((_ is Star!15977) (regTwo!32467 (reg!16306 (regOne!32466 r!7292))))) b!5931367))

(assert (= (and b!5929784 ((_ is Union!15977) (regTwo!32467 (reg!16306 (regOne!32466 r!7292))))) b!5931368))

(declare-fun b!5931370 () Bool)

(declare-fun e!3630280 () Bool)

(declare-fun tp!1649488 () Bool)

(declare-fun tp!1649492 () Bool)

(assert (=> b!5931370 (= e!3630280 (and tp!1649488 tp!1649492))))

(declare-fun b!5931371 () Bool)

(declare-fun tp!1649489 () Bool)

(assert (=> b!5931371 (= e!3630280 tp!1649489)))

(assert (=> b!5929870 (= tp!1649083 e!3630280)))

(declare-fun b!5931369 () Bool)

(assert (=> b!5931369 (= e!3630280 tp_is_empty!41207)))

(declare-fun b!5931372 () Bool)

(declare-fun tp!1649491 () Bool)

(declare-fun tp!1649490 () Bool)

(assert (=> b!5931372 (= e!3630280 (and tp!1649491 tp!1649490))))

(assert (= (and b!5929870 ((_ is ElementMatch!15977) (reg!16306 (regOne!32467 (regTwo!32466 r!7292))))) b!5931369))

(assert (= (and b!5929870 ((_ is Concat!24822) (reg!16306 (regOne!32467 (regTwo!32466 r!7292))))) b!5931370))

(assert (= (and b!5929870 ((_ is Star!15977) (reg!16306 (regOne!32467 (regTwo!32466 r!7292))))) b!5931371))

(assert (= (and b!5929870 ((_ is Union!15977) (reg!16306 (regOne!32467 (regTwo!32466 r!7292))))) b!5931372))

(declare-fun b!5931374 () Bool)

(declare-fun e!3630281 () Bool)

(declare-fun tp!1649493 () Bool)

(declare-fun tp!1649497 () Bool)

(assert (=> b!5931374 (= e!3630281 (and tp!1649493 tp!1649497))))

(declare-fun b!5931375 () Bool)

(declare-fun tp!1649494 () Bool)

(assert (=> b!5931375 (= e!3630281 tp!1649494)))

(assert (=> b!5929775 (= tp!1648961 e!3630281)))

(declare-fun b!5931373 () Bool)

(assert (=> b!5931373 (= e!3630281 tp_is_empty!41207)))

(declare-fun b!5931376 () Bool)

(declare-fun tp!1649496 () Bool)

(declare-fun tp!1649495 () Bool)

(assert (=> b!5931376 (= e!3630281 (and tp!1649496 tp!1649495))))

(assert (= (and b!5929775 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32466 (regOne!32467 r!7292))))) b!5931373))

(assert (= (and b!5929775 ((_ is Concat!24822) (reg!16306 (regTwo!32466 (regOne!32467 r!7292))))) b!5931374))

(assert (= (and b!5929775 ((_ is Star!15977) (reg!16306 (regTwo!32466 (regOne!32467 r!7292))))) b!5931375))

(assert (= (and b!5929775 ((_ is Union!15977) (reg!16306 (regTwo!32466 (regOne!32467 r!7292))))) b!5931376))

(declare-fun b!5931377 () Bool)

(declare-fun e!3630282 () Bool)

(declare-fun tp!1649498 () Bool)

(declare-fun tp!1649499 () Bool)

(assert (=> b!5931377 (= e!3630282 (and tp!1649498 tp!1649499))))

(assert (=> b!5929350 (= tp!1648848 e!3630282)))

(assert (= (and b!5929350 ((_ is Cons!64106) (exprs!5861 setElem!40254))) b!5931377))

(declare-fun b!5931379 () Bool)

(declare-fun e!3630283 () Bool)

(declare-fun tp!1649500 () Bool)

(declare-fun tp!1649504 () Bool)

(assert (=> b!5931379 (= e!3630283 (and tp!1649500 tp!1649504))))

(declare-fun b!5931380 () Bool)

(declare-fun tp!1649501 () Bool)

(assert (=> b!5931380 (= e!3630283 tp!1649501)))

(assert (=> b!5929920 (= tp!1649147 e!3630283)))

(declare-fun b!5931378 () Bool)

(assert (=> b!5931378 (= e!3630283 tp_is_empty!41207)))

(declare-fun b!5931381 () Bool)

(declare-fun tp!1649503 () Bool)

(declare-fun tp!1649502 () Bool)

(assert (=> b!5931381 (= e!3630283 (and tp!1649503 tp!1649502))))

(assert (= (and b!5929920 ((_ is ElementMatch!15977) (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343)))))) b!5931378))

(assert (= (and b!5929920 ((_ is Concat!24822) (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343)))))) b!5931379))

(assert (= (and b!5929920 ((_ is Star!15977) (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343)))))) b!5931380))

(assert (= (and b!5929920 ((_ is Union!15977) (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343)))))) b!5931381))

(declare-fun b!5931382 () Bool)

(declare-fun e!3630284 () Bool)

(declare-fun tp!1649505 () Bool)

(declare-fun tp!1649506 () Bool)

(assert (=> b!5931382 (= e!3630284 (and tp!1649505 tp!1649506))))

(assert (=> b!5929920 (= tp!1649148 e!3630284)))

(assert (= (and b!5929920 ((_ is Cons!64106) (t!377627 (t!377627 (exprs!5861 (h!70555 zl!343)))))) b!5931382))

(declare-fun b!5931384 () Bool)

(declare-fun e!3630285 () Bool)

(declare-fun tp!1649507 () Bool)

(declare-fun tp!1649511 () Bool)

(assert (=> b!5931384 (= e!3630285 (and tp!1649507 tp!1649511))))

(declare-fun b!5931385 () Bool)

(declare-fun tp!1649508 () Bool)

(assert (=> b!5931385 (= e!3630285 tp!1649508)))

(assert (=> b!5929893 (= tp!1649112 e!3630285)))

(declare-fun b!5931383 () Bool)

(assert (=> b!5931383 (= e!3630285 tp_is_empty!41207)))

(declare-fun b!5931386 () Bool)

(declare-fun tp!1649510 () Bool)

(declare-fun tp!1649509 () Bool)

(assert (=> b!5931386 (= e!3630285 (and tp!1649510 tp!1649509))))

(assert (= (and b!5929893 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931383))

(assert (= (and b!5929893 ((_ is Concat!24822) (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931384))

(assert (= (and b!5929893 ((_ is Star!15977) (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931385))

(assert (= (and b!5929893 ((_ is Union!15977) (regOne!32466 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931386))

(declare-fun b!5931388 () Bool)

(declare-fun e!3630286 () Bool)

(declare-fun tp!1649512 () Bool)

(declare-fun tp!1649516 () Bool)

(assert (=> b!5931388 (= e!3630286 (and tp!1649512 tp!1649516))))

(declare-fun b!5931389 () Bool)

(declare-fun tp!1649513 () Bool)

(assert (=> b!5931389 (= e!3630286 tp!1649513)))

(assert (=> b!5929893 (= tp!1649116 e!3630286)))

(declare-fun b!5931387 () Bool)

(assert (=> b!5931387 (= e!3630286 tp_is_empty!41207)))

(declare-fun b!5931390 () Bool)

(declare-fun tp!1649515 () Bool)

(declare-fun tp!1649514 () Bool)

(assert (=> b!5931390 (= e!3630286 (and tp!1649515 tp!1649514))))

(assert (= (and b!5929893 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931387))

(assert (= (and b!5929893 ((_ is Concat!24822) (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931388))

(assert (= (and b!5929893 ((_ is Star!15977) (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931389))

(assert (= (and b!5929893 ((_ is Union!15977) (regTwo!32466 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931390))

(declare-fun b!5931392 () Bool)

(declare-fun e!3630287 () Bool)

(declare-fun tp!1649517 () Bool)

(declare-fun tp!1649521 () Bool)

(assert (=> b!5931392 (= e!3630287 (and tp!1649517 tp!1649521))))

(declare-fun b!5931393 () Bool)

(declare-fun tp!1649518 () Bool)

(assert (=> b!5931393 (= e!3630287 tp!1649518)))

(assert (=> b!5929911 (= tp!1649135 e!3630287)))

(declare-fun b!5931391 () Bool)

(assert (=> b!5931391 (= e!3630287 tp_is_empty!41207)))

(declare-fun b!5931394 () Bool)

(declare-fun tp!1649520 () Bool)

(declare-fun tp!1649519 () Bool)

(assert (=> b!5931394 (= e!3630287 (and tp!1649520 tp!1649519))))

(assert (= (and b!5929911 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32467 (reg!16306 r!7292))))) b!5931391))

(assert (= (and b!5929911 ((_ is Concat!24822) (regOne!32467 (regOne!32467 (reg!16306 r!7292))))) b!5931392))

(assert (= (and b!5929911 ((_ is Star!15977) (regOne!32467 (regOne!32467 (reg!16306 r!7292))))) b!5931393))

(assert (= (and b!5929911 ((_ is Union!15977) (regOne!32467 (regOne!32467 (reg!16306 r!7292))))) b!5931394))

(declare-fun b!5931396 () Bool)

(declare-fun e!3630288 () Bool)

(declare-fun tp!1649522 () Bool)

(declare-fun tp!1649526 () Bool)

(assert (=> b!5931396 (= e!3630288 (and tp!1649522 tp!1649526))))

(declare-fun b!5931397 () Bool)

(declare-fun tp!1649523 () Bool)

(assert (=> b!5931397 (= e!3630288 tp!1649523)))

(assert (=> b!5929911 (= tp!1649134 e!3630288)))

(declare-fun b!5931395 () Bool)

(assert (=> b!5931395 (= e!3630288 tp_is_empty!41207)))

(declare-fun b!5931398 () Bool)

(declare-fun tp!1649525 () Bool)

(declare-fun tp!1649524 () Bool)

(assert (=> b!5931398 (= e!3630288 (and tp!1649525 tp!1649524))))

(assert (= (and b!5929911 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32467 (reg!16306 r!7292))))) b!5931395))

(assert (= (and b!5929911 ((_ is Concat!24822) (regTwo!32467 (regOne!32467 (reg!16306 r!7292))))) b!5931396))

(assert (= (and b!5929911 ((_ is Star!15977) (regTwo!32467 (regOne!32467 (reg!16306 r!7292))))) b!5931397))

(assert (= (and b!5929911 ((_ is Union!15977) (regTwo!32467 (regOne!32467 (reg!16306 r!7292))))) b!5931398))

(declare-fun b!5931400 () Bool)

(declare-fun e!3630289 () Bool)

(declare-fun tp!1649527 () Bool)

(declare-fun tp!1649531 () Bool)

(assert (=> b!5931400 (= e!3630289 (and tp!1649527 tp!1649531))))

(declare-fun b!5931401 () Bool)

(declare-fun tp!1649528 () Bool)

(assert (=> b!5931401 (= e!3630289 tp!1649528)))

(assert (=> b!5929902 (= tp!1649123 e!3630289)))

(declare-fun b!5931399 () Bool)

(assert (=> b!5931399 (= e!3630289 tp_is_empty!41207)))

(declare-fun b!5931402 () Bool)

(declare-fun tp!1649530 () Bool)

(declare-fun tp!1649529 () Bool)

(assert (=> b!5931402 (= e!3630289 (and tp!1649530 tp!1649529))))

(assert (= (and b!5929902 ((_ is ElementMatch!15977) (reg!16306 (regOne!32466 (reg!16306 r!7292))))) b!5931399))

(assert (= (and b!5929902 ((_ is Concat!24822) (reg!16306 (regOne!32466 (reg!16306 r!7292))))) b!5931400))

(assert (= (and b!5929902 ((_ is Star!15977) (reg!16306 (regOne!32466 (reg!16306 r!7292))))) b!5931401))

(assert (= (and b!5929902 ((_ is Union!15977) (reg!16306 (regOne!32466 (reg!16306 r!7292))))) b!5931402))

(declare-fun b!5931404 () Bool)

(declare-fun e!3630290 () Bool)

(declare-fun tp!1649532 () Bool)

(declare-fun tp!1649536 () Bool)

(assert (=> b!5931404 (= e!3630290 (and tp!1649532 tp!1649536))))

(declare-fun b!5931405 () Bool)

(declare-fun tp!1649533 () Bool)

(assert (=> b!5931405 (= e!3630290 tp!1649533)))

(assert (=> b!5929878 (= tp!1649093 e!3630290)))

(declare-fun b!5931403 () Bool)

(assert (=> b!5931403 (= e!3630290 tp_is_empty!41207)))

(declare-fun b!5931406 () Bool)

(declare-fun tp!1649535 () Bool)

(declare-fun tp!1649534 () Bool)

(assert (=> b!5931406 (= e!3630290 (and tp!1649535 tp!1649534))))

(assert (= (and b!5929878 ((_ is ElementMatch!15977) (reg!16306 (reg!16306 (regTwo!32467 r!7292))))) b!5931403))

(assert (= (and b!5929878 ((_ is Concat!24822) (reg!16306 (reg!16306 (regTwo!32467 r!7292))))) b!5931404))

(assert (= (and b!5929878 ((_ is Star!15977) (reg!16306 (reg!16306 (regTwo!32467 r!7292))))) b!5931405))

(assert (= (and b!5929878 ((_ is Union!15977) (reg!16306 (reg!16306 (regTwo!32467 r!7292))))) b!5931406))

(declare-fun b!5931408 () Bool)

(declare-fun e!3630291 () Bool)

(declare-fun tp!1649537 () Bool)

(declare-fun tp!1649541 () Bool)

(assert (=> b!5931408 (= e!3630291 (and tp!1649537 tp!1649541))))

(declare-fun b!5931409 () Bool)

(declare-fun tp!1649538 () Bool)

(assert (=> b!5931409 (= e!3630291 tp!1649538)))

(assert (=> b!5929788 (= tp!1648978 e!3630291)))

(declare-fun b!5931407 () Bool)

(assert (=> b!5931407 (= e!3630291 tp_is_empty!41207)))

(declare-fun b!5931410 () Bool)

(declare-fun tp!1649540 () Bool)

(declare-fun tp!1649539 () Bool)

(assert (=> b!5931410 (= e!3630291 (and tp!1649540 tp!1649539))))

(assert (= (and b!5929788 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32467 (regOne!32466 r!7292))))) b!5931407))

(assert (= (and b!5929788 ((_ is Concat!24822) (regOne!32467 (regOne!32467 (regOne!32466 r!7292))))) b!5931408))

(assert (= (and b!5929788 ((_ is Star!15977) (regOne!32467 (regOne!32467 (regOne!32466 r!7292))))) b!5931409))

(assert (= (and b!5929788 ((_ is Union!15977) (regOne!32467 (regOne!32467 (regOne!32466 r!7292))))) b!5931410))

(declare-fun b!5931412 () Bool)

(declare-fun e!3630292 () Bool)

(declare-fun tp!1649542 () Bool)

(declare-fun tp!1649546 () Bool)

(assert (=> b!5931412 (= e!3630292 (and tp!1649542 tp!1649546))))

(declare-fun b!5931413 () Bool)

(declare-fun tp!1649543 () Bool)

(assert (=> b!5931413 (= e!3630292 tp!1649543)))

(assert (=> b!5929788 (= tp!1648977 e!3630292)))

(declare-fun b!5931411 () Bool)

(assert (=> b!5931411 (= e!3630292 tp_is_empty!41207)))

(declare-fun b!5931414 () Bool)

(declare-fun tp!1649545 () Bool)

(declare-fun tp!1649544 () Bool)

(assert (=> b!5931414 (= e!3630292 (and tp!1649545 tp!1649544))))

(assert (= (and b!5929788 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32467 (regOne!32466 r!7292))))) b!5931411))

(assert (= (and b!5929788 ((_ is Concat!24822) (regTwo!32467 (regOne!32467 (regOne!32466 r!7292))))) b!5931412))

(assert (= (and b!5929788 ((_ is Star!15977) (regTwo!32467 (regOne!32467 (regOne!32466 r!7292))))) b!5931413))

(assert (= (and b!5929788 ((_ is Union!15977) (regTwo!32467 (regOne!32467 (regOne!32466 r!7292))))) b!5931414))

(declare-fun b!5931416 () Bool)

(declare-fun e!3630293 () Bool)

(declare-fun tp!1649547 () Bool)

(declare-fun tp!1649551 () Bool)

(assert (=> b!5931416 (= e!3630293 (and tp!1649547 tp!1649551))))

(declare-fun b!5931417 () Bool)

(declare-fun tp!1649548 () Bool)

(assert (=> b!5931417 (= e!3630293 tp!1649548)))

(assert (=> b!5929874 (= tp!1649088 e!3630293)))

(declare-fun b!5931415 () Bool)

(assert (=> b!5931415 (= e!3630293 tp_is_empty!41207)))

(declare-fun b!5931418 () Bool)

(declare-fun tp!1649550 () Bool)

(declare-fun tp!1649549 () Bool)

(assert (=> b!5931418 (= e!3630293 (and tp!1649550 tp!1649549))))

(assert (= (and b!5929874 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931415))

(assert (= (and b!5929874 ((_ is Concat!24822) (reg!16306 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931416))

(assert (= (and b!5929874 ((_ is Star!15977) (reg!16306 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931417))

(assert (= (and b!5929874 ((_ is Union!15977) (reg!16306 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931418))

(declare-fun b!5931420 () Bool)

(declare-fun e!3630294 () Bool)

(declare-fun tp!1649552 () Bool)

(declare-fun tp!1649556 () Bool)

(assert (=> b!5931420 (= e!3630294 (and tp!1649552 tp!1649556))))

(declare-fun b!5931421 () Bool)

(declare-fun tp!1649553 () Bool)

(assert (=> b!5931421 (= e!3630294 tp!1649553)))

(assert (=> b!5929752 (= tp!1648933 e!3630294)))

(declare-fun b!5931419 () Bool)

(assert (=> b!5931419 (= e!3630294 tp_is_empty!41207)))

(declare-fun b!5931422 () Bool)

(declare-fun tp!1649555 () Bool)

(declare-fun tp!1649554 () Bool)

(assert (=> b!5931422 (= e!3630294 (and tp!1649555 tp!1649554))))

(assert (= (and b!5929752 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32466 (regOne!32466 r!7292))))) b!5931419))

(assert (= (and b!5929752 ((_ is Concat!24822) (regOne!32466 (regTwo!32466 (regOne!32466 r!7292))))) b!5931420))

(assert (= (and b!5929752 ((_ is Star!15977) (regOne!32466 (regTwo!32466 (regOne!32466 r!7292))))) b!5931421))

(assert (= (and b!5929752 ((_ is Union!15977) (regOne!32466 (regTwo!32466 (regOne!32466 r!7292))))) b!5931422))

(declare-fun b!5931424 () Bool)

(declare-fun e!3630295 () Bool)

(declare-fun tp!1649557 () Bool)

(declare-fun tp!1649561 () Bool)

(assert (=> b!5931424 (= e!3630295 (and tp!1649557 tp!1649561))))

(declare-fun b!5931425 () Bool)

(declare-fun tp!1649558 () Bool)

(assert (=> b!5931425 (= e!3630295 tp!1649558)))

(assert (=> b!5929752 (= tp!1648937 e!3630295)))

(declare-fun b!5931423 () Bool)

(assert (=> b!5931423 (= e!3630295 tp_is_empty!41207)))

(declare-fun b!5931426 () Bool)

(declare-fun tp!1649560 () Bool)

(declare-fun tp!1649559 () Bool)

(assert (=> b!5931426 (= e!3630295 (and tp!1649560 tp!1649559))))

(assert (= (and b!5929752 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32466 (regOne!32466 r!7292))))) b!5931423))

(assert (= (and b!5929752 ((_ is Concat!24822) (regTwo!32466 (regTwo!32466 (regOne!32466 r!7292))))) b!5931424))

(assert (= (and b!5929752 ((_ is Star!15977) (regTwo!32466 (regTwo!32466 (regOne!32466 r!7292))))) b!5931425))

(assert (= (and b!5929752 ((_ is Union!15977) (regTwo!32466 (regTwo!32466 (regOne!32466 r!7292))))) b!5931426))

(declare-fun b!5931428 () Bool)

(declare-fun e!3630296 () Bool)

(declare-fun tp!1649562 () Bool)

(declare-fun tp!1649566 () Bool)

(assert (=> b!5931428 (= e!3630296 (and tp!1649562 tp!1649566))))

(declare-fun b!5931429 () Bool)

(declare-fun tp!1649563 () Bool)

(assert (=> b!5931429 (= e!3630296 tp!1649563)))

(assert (=> b!5929802 (= tp!1648995 e!3630296)))

(declare-fun b!5931427 () Bool)

(assert (=> b!5931427 (= e!3630296 tp_is_empty!41207)))

(declare-fun b!5931430 () Bool)

(declare-fun tp!1649565 () Bool)

(declare-fun tp!1649564 () Bool)

(assert (=> b!5931430 (= e!3630296 (and tp!1649565 tp!1649564))))

(assert (= (and b!5929802 ((_ is ElementMatch!15977) (regOne!32466 (reg!16306 (regOne!32467 r!7292))))) b!5931427))

(assert (= (and b!5929802 ((_ is Concat!24822) (regOne!32466 (reg!16306 (regOne!32467 r!7292))))) b!5931428))

(assert (= (and b!5929802 ((_ is Star!15977) (regOne!32466 (reg!16306 (regOne!32467 r!7292))))) b!5931429))

(assert (= (and b!5929802 ((_ is Union!15977) (regOne!32466 (reg!16306 (regOne!32467 r!7292))))) b!5931430))

(declare-fun b!5931432 () Bool)

(declare-fun e!3630297 () Bool)

(declare-fun tp!1649567 () Bool)

(declare-fun tp!1649571 () Bool)

(assert (=> b!5931432 (= e!3630297 (and tp!1649567 tp!1649571))))

(declare-fun b!5931433 () Bool)

(declare-fun tp!1649568 () Bool)

(assert (=> b!5931433 (= e!3630297 tp!1649568)))

(assert (=> b!5929802 (= tp!1648999 e!3630297)))

(declare-fun b!5931431 () Bool)

(assert (=> b!5931431 (= e!3630297 tp_is_empty!41207)))

(declare-fun b!5931434 () Bool)

(declare-fun tp!1649570 () Bool)

(declare-fun tp!1649569 () Bool)

(assert (=> b!5931434 (= e!3630297 (and tp!1649570 tp!1649569))))

(assert (= (and b!5929802 ((_ is ElementMatch!15977) (regTwo!32466 (reg!16306 (regOne!32467 r!7292))))) b!5931431))

(assert (= (and b!5929802 ((_ is Concat!24822) (regTwo!32466 (reg!16306 (regOne!32467 r!7292))))) b!5931432))

(assert (= (and b!5929802 ((_ is Star!15977) (regTwo!32466 (reg!16306 (regOne!32467 r!7292))))) b!5931433))

(assert (= (and b!5929802 ((_ is Union!15977) (regTwo!32466 (reg!16306 (regOne!32467 r!7292))))) b!5931434))

(declare-fun b!5931436 () Bool)

(declare-fun e!3630298 () Bool)

(declare-fun tp!1649572 () Bool)

(declare-fun tp!1649576 () Bool)

(assert (=> b!5931436 (= e!3630298 (and tp!1649572 tp!1649576))))

(declare-fun b!5931437 () Bool)

(declare-fun tp!1649573 () Bool)

(assert (=> b!5931437 (= e!3630298 tp!1649573)))

(assert (=> b!5929886 (= tp!1649103 e!3630298)))

(declare-fun b!5931435 () Bool)

(assert (=> b!5931435 (= e!3630298 tp_is_empty!41207)))

(declare-fun b!5931438 () Bool)

(declare-fun tp!1649575 () Bool)

(declare-fun tp!1649574 () Bool)

(assert (=> b!5931438 (= e!3630298 (and tp!1649575 tp!1649574))))

(assert (= (and b!5929886 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931435))

(assert (= (and b!5929886 ((_ is Concat!24822) (reg!16306 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931436))

(assert (= (and b!5929886 ((_ is Star!15977) (reg!16306 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931437))

(assert (= (and b!5929886 ((_ is Union!15977) (reg!16306 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931438))

(declare-fun b!5931440 () Bool)

(declare-fun e!3630299 () Bool)

(declare-fun tp!1649577 () Bool)

(declare-fun tp!1649581 () Bool)

(assert (=> b!5931440 (= e!3630299 (and tp!1649577 tp!1649581))))

(declare-fun b!5931441 () Bool)

(declare-fun tp!1649578 () Bool)

(assert (=> b!5931441 (= e!3630299 tp!1649578)))

(assert (=> b!5929881 (= tp!1649097 e!3630299)))

(declare-fun b!5931439 () Bool)

(assert (=> b!5931439 (= e!3630299 tp_is_empty!41207)))

(declare-fun b!5931442 () Bool)

(declare-fun tp!1649580 () Bool)

(declare-fun tp!1649579 () Bool)

(assert (=> b!5931442 (= e!3630299 (and tp!1649580 tp!1649579))))

(assert (= (and b!5929881 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32466 (regTwo!32467 r!7292))))) b!5931439))

(assert (= (and b!5929881 ((_ is Concat!24822) (regOne!32466 (regOne!32466 (regTwo!32467 r!7292))))) b!5931440))

(assert (= (and b!5929881 ((_ is Star!15977) (regOne!32466 (regOne!32466 (regTwo!32467 r!7292))))) b!5931441))

(assert (= (and b!5929881 ((_ is Union!15977) (regOne!32466 (regOne!32466 (regTwo!32467 r!7292))))) b!5931442))

(declare-fun b!5931444 () Bool)

(declare-fun e!3630300 () Bool)

(declare-fun tp!1649582 () Bool)

(declare-fun tp!1649586 () Bool)

(assert (=> b!5931444 (= e!3630300 (and tp!1649582 tp!1649586))))

(declare-fun b!5931445 () Bool)

(declare-fun tp!1649583 () Bool)

(assert (=> b!5931445 (= e!3630300 tp!1649583)))

(assert (=> b!5929881 (= tp!1649101 e!3630300)))

(declare-fun b!5931443 () Bool)

(assert (=> b!5931443 (= e!3630300 tp_is_empty!41207)))

(declare-fun b!5931446 () Bool)

(declare-fun tp!1649585 () Bool)

(declare-fun tp!1649584 () Bool)

(assert (=> b!5931446 (= e!3630300 (and tp!1649585 tp!1649584))))

(assert (= (and b!5929881 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32466 (regTwo!32467 r!7292))))) b!5931443))

(assert (= (and b!5929881 ((_ is Concat!24822) (regTwo!32466 (regOne!32466 (regTwo!32467 r!7292))))) b!5931444))

(assert (= (and b!5929881 ((_ is Star!15977) (regTwo!32466 (regOne!32466 (regTwo!32467 r!7292))))) b!5931445))

(assert (= (and b!5929881 ((_ is Union!15977) (regTwo!32466 (regOne!32466 (regTwo!32467 r!7292))))) b!5931446))

(declare-fun b!5931448 () Bool)

(declare-fun e!3630301 () Bool)

(declare-fun tp!1649587 () Bool)

(declare-fun tp!1649591 () Bool)

(assert (=> b!5931448 (= e!3630301 (and tp!1649587 tp!1649591))))

(declare-fun b!5931449 () Bool)

(declare-fun tp!1649588 () Bool)

(assert (=> b!5931449 (= e!3630301 tp!1649588)))

(assert (=> b!5929817 (= tp!1649014 e!3630301)))

(declare-fun b!5931447 () Bool)

(assert (=> b!5931447 (= e!3630301 tp_is_empty!41207)))

(declare-fun b!5931450 () Bool)

(declare-fun tp!1649590 () Bool)

(declare-fun tp!1649589 () Bool)

(assert (=> b!5931450 (= e!3630301 (and tp!1649590 tp!1649589))))

(assert (= (and b!5929817 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))))) b!5931447))

(assert (= (and b!5929817 ((_ is Concat!24822) (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))))) b!5931448))

(assert (= (and b!5929817 ((_ is Star!15977) (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))))) b!5931449))

(assert (= (and b!5929817 ((_ is Union!15977) (regOne!32466 (regTwo!32467 (regOne!32467 r!7292))))) b!5931450))

(declare-fun b!5931452 () Bool)

(declare-fun e!3630302 () Bool)

(declare-fun tp!1649592 () Bool)

(declare-fun tp!1649596 () Bool)

(assert (=> b!5931452 (= e!3630302 (and tp!1649592 tp!1649596))))

(declare-fun b!5931453 () Bool)

(declare-fun tp!1649593 () Bool)

(assert (=> b!5931453 (= e!3630302 tp!1649593)))

(assert (=> b!5929817 (= tp!1649018 e!3630302)))

(declare-fun b!5931451 () Bool)

(assert (=> b!5931451 (= e!3630302 tp_is_empty!41207)))

(declare-fun b!5931454 () Bool)

(declare-fun tp!1649595 () Bool)

(declare-fun tp!1649594 () Bool)

(assert (=> b!5931454 (= e!3630302 (and tp!1649595 tp!1649594))))

(assert (= (and b!5929817 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))))) b!5931451))

(assert (= (and b!5929817 ((_ is Concat!24822) (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))))) b!5931452))

(assert (= (and b!5929817 ((_ is Star!15977) (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))))) b!5931453))

(assert (= (and b!5929817 ((_ is Union!15977) (regTwo!32466 (regTwo!32467 (regOne!32467 r!7292))))) b!5931454))

(declare-fun b!5931456 () Bool)

(declare-fun e!3630303 () Bool)

(declare-fun tp!1649597 () Bool)

(declare-fun tp!1649601 () Bool)

(assert (=> b!5931456 (= e!3630303 (and tp!1649597 tp!1649601))))

(declare-fun b!5931457 () Bool)

(declare-fun tp!1649598 () Bool)

(assert (=> b!5931457 (= e!3630303 tp!1649598)))

(assert (=> b!5929897 (= tp!1649117 e!3630303)))

(declare-fun b!5931455 () Bool)

(assert (=> b!5931455 (= e!3630303 tp_is_empty!41207)))

(declare-fun b!5931458 () Bool)

(declare-fun tp!1649600 () Bool)

(declare-fun tp!1649599 () Bool)

(assert (=> b!5931458 (= e!3630303 (and tp!1649600 tp!1649599))))

(assert (= (and b!5929897 ((_ is ElementMatch!15977) (regOne!32466 (reg!16306 (reg!16306 r!7292))))) b!5931455))

(assert (= (and b!5929897 ((_ is Concat!24822) (regOne!32466 (reg!16306 (reg!16306 r!7292))))) b!5931456))

(assert (= (and b!5929897 ((_ is Star!15977) (regOne!32466 (reg!16306 (reg!16306 r!7292))))) b!5931457))

(assert (= (and b!5929897 ((_ is Union!15977) (regOne!32466 (reg!16306 (reg!16306 r!7292))))) b!5931458))

(declare-fun b!5931460 () Bool)

(declare-fun e!3630304 () Bool)

(declare-fun tp!1649602 () Bool)

(declare-fun tp!1649606 () Bool)

(assert (=> b!5931460 (= e!3630304 (and tp!1649602 tp!1649606))))

(declare-fun b!5931461 () Bool)

(declare-fun tp!1649603 () Bool)

(assert (=> b!5931461 (= e!3630304 tp!1649603)))

(assert (=> b!5929897 (= tp!1649121 e!3630304)))

(declare-fun b!5931459 () Bool)

(assert (=> b!5931459 (= e!3630304 tp_is_empty!41207)))

(declare-fun b!5931462 () Bool)

(declare-fun tp!1649605 () Bool)

(declare-fun tp!1649604 () Bool)

(assert (=> b!5931462 (= e!3630304 (and tp!1649605 tp!1649604))))

(assert (= (and b!5929897 ((_ is ElementMatch!15977) (regTwo!32466 (reg!16306 (reg!16306 r!7292))))) b!5931459))

(assert (= (and b!5929897 ((_ is Concat!24822) (regTwo!32466 (reg!16306 (reg!16306 r!7292))))) b!5931460))

(assert (= (and b!5929897 ((_ is Star!15977) (regTwo!32466 (reg!16306 (reg!16306 r!7292))))) b!5931461))

(assert (= (and b!5929897 ((_ is Union!15977) (regTwo!32466 (reg!16306 (reg!16306 r!7292))))) b!5931462))

(declare-fun b!5931464 () Bool)

(declare-fun e!3630305 () Bool)

(declare-fun tp!1649607 () Bool)

(declare-fun tp!1649611 () Bool)

(assert (=> b!5931464 (= e!3630305 (and tp!1649607 tp!1649611))))

(declare-fun b!5931465 () Bool)

(declare-fun tp!1649608 () Bool)

(assert (=> b!5931465 (= e!3630305 tp!1649608)))

(assert (=> b!5929810 (= tp!1649005 e!3630305)))

(declare-fun b!5931463 () Bool)

(assert (=> b!5931463 (= e!3630305 tp_is_empty!41207)))

(declare-fun b!5931466 () Bool)

(declare-fun tp!1649610 () Bool)

(declare-fun tp!1649609 () Bool)

(assert (=> b!5931466 (= e!3630305 (and tp!1649610 tp!1649609))))

(assert (= (and b!5929810 ((_ is ElementMatch!15977) (reg!16306 (regOne!32467 (regOne!32467 r!7292))))) b!5931463))

(assert (= (and b!5929810 ((_ is Concat!24822) (reg!16306 (regOne!32467 (regOne!32467 r!7292))))) b!5931464))

(assert (= (and b!5929810 ((_ is Star!15977) (reg!16306 (regOne!32467 (regOne!32467 r!7292))))) b!5931465))

(assert (= (and b!5929810 ((_ is Union!15977) (reg!16306 (regOne!32467 (regOne!32467 r!7292))))) b!5931466))

(declare-fun b!5931468 () Bool)

(declare-fun e!3630306 () Bool)

(declare-fun tp!1649612 () Bool)

(declare-fun tp!1649616 () Bool)

(assert (=> b!5931468 (= e!3630306 (and tp!1649612 tp!1649616))))

(declare-fun b!5931469 () Bool)

(declare-fun tp!1649613 () Bool)

(assert (=> b!5931469 (= e!3630306 tp!1649613)))

(assert (=> b!5929830 (= tp!1649031 e!3630306)))

(declare-fun b!5931467 () Bool)

(assert (=> b!5931467 (= e!3630306 tp_is_empty!41207)))

(declare-fun b!5931470 () Bool)

(declare-fun tp!1649615 () Bool)

(declare-fun tp!1649614 () Bool)

(assert (=> b!5931470 (= e!3630306 (and tp!1649615 tp!1649614))))

(assert (= (and b!5929830 ((_ is ElementMatch!15977) (regOne!32466 (h!70554 (exprs!5861 setElem!40242))))) b!5931467))

(assert (= (and b!5929830 ((_ is Concat!24822) (regOne!32466 (h!70554 (exprs!5861 setElem!40242))))) b!5931468))

(assert (= (and b!5929830 ((_ is Star!15977) (regOne!32466 (h!70554 (exprs!5861 setElem!40242))))) b!5931469))

(assert (= (and b!5929830 ((_ is Union!15977) (regOne!32466 (h!70554 (exprs!5861 setElem!40242))))) b!5931470))

(declare-fun b!5931472 () Bool)

(declare-fun e!3630307 () Bool)

(declare-fun tp!1649617 () Bool)

(declare-fun tp!1649621 () Bool)

(assert (=> b!5931472 (= e!3630307 (and tp!1649617 tp!1649621))))

(declare-fun b!5931473 () Bool)

(declare-fun tp!1649618 () Bool)

(assert (=> b!5931473 (= e!3630307 tp!1649618)))

(assert (=> b!5929830 (= tp!1649035 e!3630307)))

(declare-fun b!5931471 () Bool)

(assert (=> b!5931471 (= e!3630307 tp_is_empty!41207)))

(declare-fun b!5931474 () Bool)

(declare-fun tp!1649620 () Bool)

(declare-fun tp!1649619 () Bool)

(assert (=> b!5931474 (= e!3630307 (and tp!1649620 tp!1649619))))

(assert (= (and b!5929830 ((_ is ElementMatch!15977) (regTwo!32466 (h!70554 (exprs!5861 setElem!40242))))) b!5931471))

(assert (= (and b!5929830 ((_ is Concat!24822) (regTwo!32466 (h!70554 (exprs!5861 setElem!40242))))) b!5931472))

(assert (= (and b!5929830 ((_ is Star!15977) (regTwo!32466 (h!70554 (exprs!5861 setElem!40242))))) b!5931473))

(assert (= (and b!5929830 ((_ is Union!15977) (regTwo!32466 (h!70554 (exprs!5861 setElem!40242))))) b!5931474))

(declare-fun b!5931476 () Bool)

(declare-fun e!3630308 () Bool)

(declare-fun tp!1649622 () Bool)

(declare-fun tp!1649626 () Bool)

(assert (=> b!5931476 (= e!3630308 (and tp!1649622 tp!1649626))))

(declare-fun b!5931477 () Bool)

(declare-fun tp!1649623 () Bool)

(assert (=> b!5931477 (= e!3630308 tp!1649623)))

(assert (=> b!5929915 (= tp!1649140 e!3630308)))

(declare-fun b!5931475 () Bool)

(assert (=> b!5931475 (= e!3630308 tp_is_empty!41207)))

(declare-fun b!5931478 () Bool)

(declare-fun tp!1649625 () Bool)

(declare-fun tp!1649624 () Bool)

(assert (=> b!5931478 (= e!3630308 (and tp!1649625 tp!1649624))))

(assert (= (and b!5929915 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32467 (reg!16306 r!7292))))) b!5931475))

(assert (= (and b!5929915 ((_ is Concat!24822) (regOne!32467 (regTwo!32467 (reg!16306 r!7292))))) b!5931476))

(assert (= (and b!5929915 ((_ is Star!15977) (regOne!32467 (regTwo!32467 (reg!16306 r!7292))))) b!5931477))

(assert (= (and b!5929915 ((_ is Union!15977) (regOne!32467 (regTwo!32467 (reg!16306 r!7292))))) b!5931478))

(declare-fun b!5931480 () Bool)

(declare-fun e!3630309 () Bool)

(declare-fun tp!1649627 () Bool)

(declare-fun tp!1649631 () Bool)

(assert (=> b!5931480 (= e!3630309 (and tp!1649627 tp!1649631))))

(declare-fun b!5931481 () Bool)

(declare-fun tp!1649628 () Bool)

(assert (=> b!5931481 (= e!3630309 tp!1649628)))

(assert (=> b!5929915 (= tp!1649139 e!3630309)))

(declare-fun b!5931479 () Bool)

(assert (=> b!5931479 (= e!3630309 tp_is_empty!41207)))

(declare-fun b!5931482 () Bool)

(declare-fun tp!1649630 () Bool)

(declare-fun tp!1649629 () Bool)

(assert (=> b!5931482 (= e!3630309 (and tp!1649630 tp!1649629))))

(assert (= (and b!5929915 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32467 (reg!16306 r!7292))))) b!5931479))

(assert (= (and b!5929915 ((_ is Concat!24822) (regTwo!32467 (regTwo!32467 (reg!16306 r!7292))))) b!5931480))

(assert (= (and b!5929915 ((_ is Star!15977) (regTwo!32467 (regTwo!32467 (reg!16306 r!7292))))) b!5931481))

(assert (= (and b!5929915 ((_ is Union!15977) (regTwo!32467 (regTwo!32467 (reg!16306 r!7292))))) b!5931482))

(declare-fun condSetEmpty!40259 () Bool)

(assert (=> setNonEmpty!40256 (= condSetEmpty!40259 (= setRest!40256 ((as const (Array Context!10722 Bool)) false)))))

(declare-fun setRes!40259 () Bool)

(assert (=> setNonEmpty!40256 (= tp!1649024 setRes!40259)))

(declare-fun setIsEmpty!40259 () Bool)

(assert (=> setIsEmpty!40259 setRes!40259))

(declare-fun e!3630310 () Bool)

(declare-fun setElem!40259 () Context!10722)

(declare-fun setNonEmpty!40259 () Bool)

(declare-fun tp!1649632 () Bool)

(assert (=> setNonEmpty!40259 (= setRes!40259 (and tp!1649632 (inv!83189 setElem!40259) e!3630310))))

(declare-fun setRest!40259 () (InoxSet Context!10722))

(assert (=> setNonEmpty!40259 (= setRest!40256 ((_ map or) (store ((as const (Array Context!10722 Bool)) false) setElem!40259 true) setRest!40259))))

(declare-fun b!5931483 () Bool)

(declare-fun tp!1649633 () Bool)

(assert (=> b!5931483 (= e!3630310 tp!1649633)))

(assert (= (and setNonEmpty!40256 condSetEmpty!40259) setIsEmpty!40259))

(assert (= (and setNonEmpty!40256 (not condSetEmpty!40259)) setNonEmpty!40259))

(assert (= setNonEmpty!40259 b!5931483))

(declare-fun m!6823982 () Bool)

(assert (=> setNonEmpty!40259 m!6823982))

(declare-fun b!5931485 () Bool)

(declare-fun e!3630311 () Bool)

(declare-fun tp!1649634 () Bool)

(declare-fun tp!1649638 () Bool)

(assert (=> b!5931485 (= e!3630311 (and tp!1649634 tp!1649638))))

(declare-fun b!5931486 () Bool)

(declare-fun tp!1649635 () Bool)

(assert (=> b!5931486 (= e!3630311 tp!1649635)))

(assert (=> b!5929906 (= tp!1649128 e!3630311)))

(declare-fun b!5931484 () Bool)

(assert (=> b!5931484 (= e!3630311 tp_is_empty!41207)))

(declare-fun b!5931487 () Bool)

(declare-fun tp!1649637 () Bool)

(declare-fun tp!1649636 () Bool)

(assert (=> b!5931487 (= e!3630311 (and tp!1649637 tp!1649636))))

(assert (= (and b!5929906 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32466 (reg!16306 r!7292))))) b!5931484))

(assert (= (and b!5929906 ((_ is Concat!24822) (reg!16306 (regTwo!32466 (reg!16306 r!7292))))) b!5931485))

(assert (= (and b!5929906 ((_ is Star!15977) (reg!16306 (regTwo!32466 (reg!16306 r!7292))))) b!5931486))

(assert (= (and b!5929906 ((_ is Union!15977) (reg!16306 (regTwo!32466 (reg!16306 r!7292))))) b!5931487))

(declare-fun b!5931489 () Bool)

(declare-fun e!3630312 () Bool)

(declare-fun tp!1649639 () Bool)

(declare-fun tp!1649643 () Bool)

(assert (=> b!5931489 (= e!3630312 (and tp!1649639 tp!1649643))))

(declare-fun b!5931490 () Bool)

(declare-fun tp!1649640 () Bool)

(assert (=> b!5931490 (= e!3630312 tp!1649640)))

(assert (=> b!5929845 (= tp!1649052 e!3630312)))

(declare-fun b!5931488 () Bool)

(assert (=> b!5931488 (= e!3630312 tp_is_empty!41207)))

(declare-fun b!5931491 () Bool)

(declare-fun tp!1649642 () Bool)

(declare-fun tp!1649641 () Bool)

(assert (=> b!5931491 (= e!3630312 (and tp!1649642 tp!1649641))))

(assert (= (and b!5929845 ((_ is ElementMatch!15977) (regOne!32466 (reg!16306 (regTwo!32466 r!7292))))) b!5931488))

(assert (= (and b!5929845 ((_ is Concat!24822) (regOne!32466 (reg!16306 (regTwo!32466 r!7292))))) b!5931489))

(assert (= (and b!5929845 ((_ is Star!15977) (regOne!32466 (reg!16306 (regTwo!32466 r!7292))))) b!5931490))

(assert (= (and b!5929845 ((_ is Union!15977) (regOne!32466 (reg!16306 (regTwo!32466 r!7292))))) b!5931491))

(declare-fun b!5931493 () Bool)

(declare-fun e!3630313 () Bool)

(declare-fun tp!1649644 () Bool)

(declare-fun tp!1649648 () Bool)

(assert (=> b!5931493 (= e!3630313 (and tp!1649644 tp!1649648))))

(declare-fun b!5931494 () Bool)

(declare-fun tp!1649645 () Bool)

(assert (=> b!5931494 (= e!3630313 tp!1649645)))

(assert (=> b!5929845 (= tp!1649056 e!3630313)))

(declare-fun b!5931492 () Bool)

(assert (=> b!5931492 (= e!3630313 tp_is_empty!41207)))

(declare-fun b!5931495 () Bool)

(declare-fun tp!1649647 () Bool)

(declare-fun tp!1649646 () Bool)

(assert (=> b!5931495 (= e!3630313 (and tp!1649647 tp!1649646))))

(assert (= (and b!5929845 ((_ is ElementMatch!15977) (regTwo!32466 (reg!16306 (regTwo!32466 r!7292))))) b!5931492))

(assert (= (and b!5929845 ((_ is Concat!24822) (regTwo!32466 (reg!16306 (regTwo!32466 r!7292))))) b!5931493))

(assert (= (and b!5929845 ((_ is Star!15977) (regTwo!32466 (reg!16306 (regTwo!32466 r!7292))))) b!5931494))

(assert (= (and b!5929845 ((_ is Union!15977) (regTwo!32466 (reg!16306 (regTwo!32466 r!7292))))) b!5931495))

(declare-fun b!5931500 () Bool)

(declare-fun e!3630316 () Bool)

(declare-fun tp!1649649 () Bool)

(declare-fun tp!1649650 () Bool)

(assert (=> b!5931500 (= e!3630316 (and tp!1649649 tp!1649650))))

(assert (=> b!5929922 (= tp!1649149 e!3630316)))

(assert (= (and b!5929922 ((_ is Cons!64106) (exprs!5861 (h!70555 (t!377628 (t!377628 zl!343)))))) b!5931500))

(declare-fun b!5931502 () Bool)

(declare-fun e!3630317 () Bool)

(declare-fun tp!1649651 () Bool)

(declare-fun tp!1649655 () Bool)

(assert (=> b!5931502 (= e!3630317 (and tp!1649651 tp!1649655))))

(declare-fun b!5931503 () Bool)

(declare-fun tp!1649652 () Bool)

(assert (=> b!5931503 (= e!3630317 tp!1649652)))

(assert (=> b!5929863 (= tp!1649075 e!3630317)))

(declare-fun b!5931501 () Bool)

(assert (=> b!5931501 (= e!3630317 tp_is_empty!41207)))

(declare-fun b!5931504 () Bool)

(declare-fun tp!1649654 () Bool)

(declare-fun tp!1649653 () Bool)

(assert (=> b!5931504 (= e!3630317 (and tp!1649654 tp!1649653))))

(assert (= (and b!5929863 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931501))

(assert (= (and b!5929863 ((_ is Concat!24822) (regOne!32467 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931502))

(assert (= (and b!5929863 ((_ is Star!15977) (regOne!32467 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931503))

(assert (= (and b!5929863 ((_ is Union!15977) (regOne!32467 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931504))

(declare-fun b!5931506 () Bool)

(declare-fun e!3630318 () Bool)

(declare-fun tp!1649656 () Bool)

(declare-fun tp!1649660 () Bool)

(assert (=> b!5931506 (= e!3630318 (and tp!1649656 tp!1649660))))

(declare-fun b!5931507 () Bool)

(declare-fun tp!1649657 () Bool)

(assert (=> b!5931507 (= e!3630318 tp!1649657)))

(assert (=> b!5929863 (= tp!1649074 e!3630318)))

(declare-fun b!5931505 () Bool)

(assert (=> b!5931505 (= e!3630318 tp_is_empty!41207)))

(declare-fun b!5931508 () Bool)

(declare-fun tp!1649659 () Bool)

(declare-fun tp!1649658 () Bool)

(assert (=> b!5931508 (= e!3630318 (and tp!1649659 tp!1649658))))

(assert (= (and b!5929863 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931505))

(assert (= (and b!5929863 ((_ is Concat!24822) (regTwo!32467 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931506))

(assert (= (and b!5929863 ((_ is Star!15977) (regTwo!32467 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931507))

(assert (= (and b!5929863 ((_ is Union!15977) (regTwo!32467 (regTwo!32466 (regTwo!32466 r!7292))))) b!5931508))

(declare-fun b!5931510 () Bool)

(declare-fun e!3630319 () Bool)

(declare-fun tp!1649661 () Bool)

(declare-fun tp!1649665 () Bool)

(assert (=> b!5931510 (= e!3630319 (and tp!1649661 tp!1649665))))

(declare-fun b!5931511 () Bool)

(declare-fun tp!1649662 () Bool)

(assert (=> b!5931511 (= e!3630319 tp!1649662)))

(assert (=> b!5929768 (= tp!1648953 e!3630319)))

(declare-fun b!5931509 () Bool)

(assert (=> b!5931509 (= e!3630319 tp_is_empty!41207)))

(declare-fun b!5931512 () Bool)

(declare-fun tp!1649664 () Bool)

(declare-fun tp!1649663 () Bool)

(assert (=> b!5931512 (= e!3630319 (and tp!1649664 tp!1649663))))

(assert (= (and b!5929768 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32466 (regOne!32467 r!7292))))) b!5931509))

(assert (= (and b!5929768 ((_ is Concat!24822) (regOne!32467 (regOne!32466 (regOne!32467 r!7292))))) b!5931510))

(assert (= (and b!5929768 ((_ is Star!15977) (regOne!32467 (regOne!32466 (regOne!32467 r!7292))))) b!5931511))

(assert (= (and b!5929768 ((_ is Union!15977) (regOne!32467 (regOne!32466 (regOne!32467 r!7292))))) b!5931512))

(declare-fun b!5931514 () Bool)

(declare-fun e!3630320 () Bool)

(declare-fun tp!1649666 () Bool)

(declare-fun tp!1649670 () Bool)

(assert (=> b!5931514 (= e!3630320 (and tp!1649666 tp!1649670))))

(declare-fun b!5931515 () Bool)

(declare-fun tp!1649667 () Bool)

(assert (=> b!5931515 (= e!3630320 tp!1649667)))

(assert (=> b!5929768 (= tp!1648952 e!3630320)))

(declare-fun b!5931513 () Bool)

(assert (=> b!5931513 (= e!3630320 tp_is_empty!41207)))

(declare-fun b!5931516 () Bool)

(declare-fun tp!1649669 () Bool)

(declare-fun tp!1649668 () Bool)

(assert (=> b!5931516 (= e!3630320 (and tp!1649669 tp!1649668))))

(assert (= (and b!5929768 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32466 (regOne!32467 r!7292))))) b!5931513))

(assert (= (and b!5929768 ((_ is Concat!24822) (regTwo!32467 (regOne!32466 (regOne!32467 r!7292))))) b!5931514))

(assert (= (and b!5929768 ((_ is Star!15977) (regTwo!32467 (regOne!32466 (regOne!32467 r!7292))))) b!5931515))

(assert (= (and b!5929768 ((_ is Union!15977) (regTwo!32467 (regOne!32466 (regOne!32467 r!7292))))) b!5931516))

(declare-fun b!5931522 () Bool)

(declare-fun e!3630323 () Bool)

(declare-fun tp!1649671 () Bool)

(declare-fun tp!1649675 () Bool)

(assert (=> b!5931522 (= e!3630323 (and tp!1649671 tp!1649675))))

(declare-fun b!5931523 () Bool)

(declare-fun tp!1649672 () Bool)

(assert (=> b!5931523 (= e!3630323 tp!1649672)))

(assert (=> b!5929854 (= tp!1649063 e!3630323)))

(declare-fun b!5931521 () Bool)

(assert (=> b!5931521 (= e!3630323 tp_is_empty!41207)))

(declare-fun b!5931524 () Bool)

(declare-fun tp!1649674 () Bool)

(declare-fun tp!1649673 () Bool)

(assert (=> b!5931524 (= e!3630323 (and tp!1649674 tp!1649673))))

(assert (= (and b!5929854 ((_ is ElementMatch!15977) (reg!16306 (regOne!32466 (regTwo!32466 r!7292))))) b!5931521))

(assert (= (and b!5929854 ((_ is Concat!24822) (reg!16306 (regOne!32466 (regTwo!32466 r!7292))))) b!5931522))

(assert (= (and b!5929854 ((_ is Star!15977) (reg!16306 (regOne!32466 (regTwo!32466 r!7292))))) b!5931523))

(assert (= (and b!5929854 ((_ is Union!15977) (reg!16306 (regOne!32466 (regTwo!32466 r!7292))))) b!5931524))

(declare-fun b!5931525 () Bool)

(declare-fun e!3630324 () Bool)

(declare-fun tp!1649676 () Bool)

(assert (=> b!5931525 (= e!3630324 (and tp_is_empty!41207 tp!1649676))))

(assert (=> b!5929759 (= tp!1648943 e!3630324)))

(assert (= (and b!5929759 ((_ is Cons!64108) (t!377629 (t!377629 (t!377629 s!2326))))) b!5931525))

(declare-fun b!5931527 () Bool)

(declare-fun e!3630325 () Bool)

(declare-fun tp!1649677 () Bool)

(declare-fun tp!1649681 () Bool)

(assert (=> b!5931527 (= e!3630325 (and tp!1649677 tp!1649681))))

(declare-fun b!5931528 () Bool)

(declare-fun tp!1649678 () Bool)

(assert (=> b!5931528 (= e!3630325 tp!1649678)))

(assert (=> b!5929903 (= tp!1649125 e!3630325)))

(declare-fun b!5931526 () Bool)

(assert (=> b!5931526 (= e!3630325 tp_is_empty!41207)))

(declare-fun b!5931529 () Bool)

(declare-fun tp!1649680 () Bool)

(declare-fun tp!1649679 () Bool)

(assert (=> b!5931529 (= e!3630325 (and tp!1649680 tp!1649679))))

(assert (= (and b!5929903 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32466 (reg!16306 r!7292))))) b!5931526))

(assert (= (and b!5929903 ((_ is Concat!24822) (regOne!32467 (regOne!32466 (reg!16306 r!7292))))) b!5931527))

(assert (= (and b!5929903 ((_ is Star!15977) (regOne!32467 (regOne!32466 (reg!16306 r!7292))))) b!5931528))

(assert (= (and b!5929903 ((_ is Union!15977) (regOne!32467 (regOne!32466 (reg!16306 r!7292))))) b!5931529))

(declare-fun b!5931531 () Bool)

(declare-fun e!3630326 () Bool)

(declare-fun tp!1649682 () Bool)

(declare-fun tp!1649686 () Bool)

(assert (=> b!5931531 (= e!3630326 (and tp!1649682 tp!1649686))))

(declare-fun b!5931532 () Bool)

(declare-fun tp!1649683 () Bool)

(assert (=> b!5931532 (= e!3630326 tp!1649683)))

(assert (=> b!5929903 (= tp!1649124 e!3630326)))

(declare-fun b!5931530 () Bool)

(assert (=> b!5931530 (= e!3630326 tp_is_empty!41207)))

(declare-fun b!5931533 () Bool)

(declare-fun tp!1649685 () Bool)

(declare-fun tp!1649684 () Bool)

(assert (=> b!5931533 (= e!3630326 (and tp!1649685 tp!1649684))))

(assert (= (and b!5929903 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32466 (reg!16306 r!7292))))) b!5931530))

(assert (= (and b!5929903 ((_ is Concat!24822) (regTwo!32467 (regOne!32466 (reg!16306 r!7292))))) b!5931531))

(assert (= (and b!5929903 ((_ is Star!15977) (regTwo!32467 (regOne!32466 (reg!16306 r!7292))))) b!5931532))

(assert (= (and b!5929903 ((_ is Union!15977) (regTwo!32467 (regOne!32466 (reg!16306 r!7292))))) b!5931533))

(declare-fun b!5931535 () Bool)

(declare-fun e!3630327 () Bool)

(declare-fun tp!1649687 () Bool)

(declare-fun tp!1649691 () Bool)

(assert (=> b!5931535 (= e!3630327 (and tp!1649687 tp!1649691))))

(declare-fun b!5931536 () Bool)

(declare-fun tp!1649688 () Bool)

(assert (=> b!5931536 (= e!3630327 tp!1649688)))

(assert (=> b!5929894 (= tp!1649113 e!3630327)))

(declare-fun b!5931534 () Bool)

(assert (=> b!5931534 (= e!3630327 tp_is_empty!41207)))

(declare-fun b!5931537 () Bool)

(declare-fun tp!1649690 () Bool)

(declare-fun tp!1649689 () Bool)

(assert (=> b!5931537 (= e!3630327 (and tp!1649690 tp!1649689))))

(assert (= (and b!5929894 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931534))

(assert (= (and b!5929894 ((_ is Concat!24822) (reg!16306 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931535))

(assert (= (and b!5929894 ((_ is Star!15977) (reg!16306 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931536))

(assert (= (and b!5929894 ((_ is Union!15977) (reg!16306 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931537))

(declare-fun b!5931539 () Bool)

(declare-fun e!3630328 () Bool)

(declare-fun tp!1649692 () Bool)

(declare-fun tp!1649696 () Bool)

(assert (=> b!5931539 (= e!3630328 (and tp!1649692 tp!1649696))))

(declare-fun b!5931540 () Bool)

(declare-fun tp!1649693 () Bool)

(assert (=> b!5931540 (= e!3630328 tp!1649693)))

(assert (=> b!5929879 (= tp!1649095 e!3630328)))

(declare-fun b!5931538 () Bool)

(assert (=> b!5931538 (= e!3630328 tp_is_empty!41207)))

(declare-fun b!5931541 () Bool)

(declare-fun tp!1649695 () Bool)

(declare-fun tp!1649694 () Bool)

(assert (=> b!5931541 (= e!3630328 (and tp!1649695 tp!1649694))))

(assert (= (and b!5929879 ((_ is ElementMatch!15977) (regOne!32467 (reg!16306 (regTwo!32467 r!7292))))) b!5931538))

(assert (= (and b!5929879 ((_ is Concat!24822) (regOne!32467 (reg!16306 (regTwo!32467 r!7292))))) b!5931539))

(assert (= (and b!5929879 ((_ is Star!15977) (regOne!32467 (reg!16306 (regTwo!32467 r!7292))))) b!5931540))

(assert (= (and b!5929879 ((_ is Union!15977) (regOne!32467 (reg!16306 (regTwo!32467 r!7292))))) b!5931541))

(declare-fun b!5931543 () Bool)

(declare-fun e!3630329 () Bool)

(declare-fun tp!1649697 () Bool)

(declare-fun tp!1649701 () Bool)

(assert (=> b!5931543 (= e!3630329 (and tp!1649697 tp!1649701))))

(declare-fun b!5931544 () Bool)

(declare-fun tp!1649698 () Bool)

(assert (=> b!5931544 (= e!3630329 tp!1649698)))

(assert (=> b!5929879 (= tp!1649094 e!3630329)))

(declare-fun b!5931542 () Bool)

(assert (=> b!5931542 (= e!3630329 tp_is_empty!41207)))

(declare-fun b!5931545 () Bool)

(declare-fun tp!1649700 () Bool)

(declare-fun tp!1649699 () Bool)

(assert (=> b!5931545 (= e!3630329 (and tp!1649700 tp!1649699))))

(assert (= (and b!5929879 ((_ is ElementMatch!15977) (regTwo!32467 (reg!16306 (regTwo!32467 r!7292))))) b!5931542))

(assert (= (and b!5929879 ((_ is Concat!24822) (regTwo!32467 (reg!16306 (regTwo!32467 r!7292))))) b!5931543))

(assert (= (and b!5929879 ((_ is Star!15977) (regTwo!32467 (reg!16306 (regTwo!32467 r!7292))))) b!5931544))

(assert (= (and b!5929879 ((_ is Union!15977) (regTwo!32467 (reg!16306 (regTwo!32467 r!7292))))) b!5931545))

(declare-fun b!5931556 () Bool)

(declare-fun e!3630335 () Bool)

(declare-fun tp!1649702 () Bool)

(declare-fun tp!1649706 () Bool)

(assert (=> b!5931556 (= e!3630335 (and tp!1649702 tp!1649706))))

(declare-fun b!5931557 () Bool)

(declare-fun tp!1649703 () Bool)

(assert (=> b!5931557 (= e!3630335 tp!1649703)))

(assert (=> b!5929738 (= tp!1648916 e!3630335)))

(declare-fun b!5931555 () Bool)

(assert (=> b!5931555 (= e!3630335 tp_is_empty!41207)))

(declare-fun b!5931558 () Bool)

(declare-fun tp!1649705 () Bool)

(declare-fun tp!1649704 () Bool)

(assert (=> b!5931558 (= e!3630335 (and tp!1649705 tp!1649704))))

(assert (= (and b!5929738 ((_ is ElementMatch!15977) (h!70554 (exprs!5861 (h!70555 (t!377628 zl!343)))))) b!5931555))

(assert (= (and b!5929738 ((_ is Concat!24822) (h!70554 (exprs!5861 (h!70555 (t!377628 zl!343)))))) b!5931556))

(assert (= (and b!5929738 ((_ is Star!15977) (h!70554 (exprs!5861 (h!70555 (t!377628 zl!343)))))) b!5931557))

(assert (= (and b!5929738 ((_ is Union!15977) (h!70554 (exprs!5861 (h!70555 (t!377628 zl!343)))))) b!5931558))

(declare-fun b!5931559 () Bool)

(declare-fun e!3630336 () Bool)

(declare-fun tp!1649707 () Bool)

(declare-fun tp!1649708 () Bool)

(assert (=> b!5931559 (= e!3630336 (and tp!1649707 tp!1649708))))

(assert (=> b!5929738 (= tp!1648917 e!3630336)))

(assert (= (and b!5929738 ((_ is Cons!64106) (t!377627 (exprs!5861 (h!70555 (t!377628 zl!343)))))) b!5931559))

(declare-fun b!5931561 () Bool)

(declare-fun e!3630337 () Bool)

(declare-fun tp!1649709 () Bool)

(declare-fun tp!1649713 () Bool)

(assert (=> b!5931561 (= e!3630337 (and tp!1649709 tp!1649713))))

(declare-fun b!5931562 () Bool)

(declare-fun tp!1649710 () Bool)

(assert (=> b!5931562 (= e!3630337 tp!1649710)))

(assert (=> b!5929917 (= tp!1649142 e!3630337)))

(declare-fun b!5931560 () Bool)

(assert (=> b!5931560 (= e!3630337 tp_is_empty!41207)))

(declare-fun b!5931563 () Bool)

(declare-fun tp!1649712 () Bool)

(declare-fun tp!1649711 () Bool)

(assert (=> b!5931563 (= e!3630337 (and tp!1649712 tp!1649711))))

(assert (= (and b!5929917 ((_ is ElementMatch!15977) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931560))

(assert (= (and b!5929917 ((_ is Concat!24822) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931561))

(assert (= (and b!5929917 ((_ is Star!15977) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931562))

(assert (= (and b!5929917 ((_ is Union!15977) (regOne!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931563))

(declare-fun b!5931565 () Bool)

(declare-fun e!3630338 () Bool)

(declare-fun tp!1649714 () Bool)

(declare-fun tp!1649718 () Bool)

(assert (=> b!5931565 (= e!3630338 (and tp!1649714 tp!1649718))))

(declare-fun b!5931566 () Bool)

(declare-fun tp!1649715 () Bool)

(assert (=> b!5931566 (= e!3630338 tp!1649715)))

(assert (=> b!5929917 (= tp!1649146 e!3630338)))

(declare-fun b!5931564 () Bool)

(assert (=> b!5931564 (= e!3630338 tp_is_empty!41207)))

(declare-fun b!5931567 () Bool)

(declare-fun tp!1649717 () Bool)

(declare-fun tp!1649716 () Bool)

(assert (=> b!5931567 (= e!3630338 (and tp!1649717 tp!1649716))))

(assert (= (and b!5929917 ((_ is ElementMatch!15977) (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931564))

(assert (= (and b!5929917 ((_ is Concat!24822) (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931565))

(assert (= (and b!5929917 ((_ is Star!15977) (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931566))

(assert (= (and b!5929917 ((_ is Union!15977) (regTwo!32466 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931567))

(declare-fun b!5931569 () Bool)

(declare-fun e!3630339 () Bool)

(declare-fun tp!1649719 () Bool)

(declare-fun tp!1649723 () Bool)

(assert (=> b!5931569 (= e!3630339 (and tp!1649719 tp!1649723))))

(declare-fun b!5931570 () Bool)

(declare-fun tp!1649720 () Bool)

(assert (=> b!5931570 (= e!3630339 tp!1649720)))

(assert (=> b!5929875 (= tp!1649090 e!3630339)))

(declare-fun b!5931568 () Bool)

(assert (=> b!5931568 (= e!3630339 tp_is_empty!41207)))

(declare-fun b!5931571 () Bool)

(declare-fun tp!1649722 () Bool)

(declare-fun tp!1649721 () Bool)

(assert (=> b!5931571 (= e!3630339 (and tp!1649722 tp!1649721))))

(assert (= (and b!5929875 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931568))

(assert (= (and b!5929875 ((_ is Concat!24822) (regOne!32467 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931569))

(assert (= (and b!5929875 ((_ is Star!15977) (regOne!32467 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931570))

(assert (= (and b!5929875 ((_ is Union!15977) (regOne!32467 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931571))

(declare-fun b!5931573 () Bool)

(declare-fun e!3630340 () Bool)

(declare-fun tp!1649724 () Bool)

(declare-fun tp!1649728 () Bool)

(assert (=> b!5931573 (= e!3630340 (and tp!1649724 tp!1649728))))

(declare-fun b!5931574 () Bool)

(declare-fun tp!1649725 () Bool)

(assert (=> b!5931574 (= e!3630340 tp!1649725)))

(assert (=> b!5929875 (= tp!1649089 e!3630340)))

(declare-fun b!5931572 () Bool)

(assert (=> b!5931572 (= e!3630340 tp_is_empty!41207)))

(declare-fun b!5931575 () Bool)

(declare-fun tp!1649727 () Bool)

(declare-fun tp!1649726 () Bool)

(assert (=> b!5931575 (= e!3630340 (and tp!1649727 tp!1649726))))

(assert (= (and b!5929875 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931572))

(assert (= (and b!5929875 ((_ is Concat!24822) (regTwo!32467 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931573))

(assert (= (and b!5929875 ((_ is Star!15977) (regTwo!32467 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931574))

(assert (= (and b!5929875 ((_ is Union!15977) (regTwo!32467 (regTwo!32467 (regTwo!32466 r!7292))))) b!5931575))

(declare-fun b!5931577 () Bool)

(declare-fun e!3630341 () Bool)

(declare-fun tp!1649729 () Bool)

(declare-fun tp!1649733 () Bool)

(assert (=> b!5931577 (= e!3630341 (and tp!1649729 tp!1649733))))

(declare-fun b!5931578 () Bool)

(declare-fun tp!1649730 () Bool)

(assert (=> b!5931578 (= e!3630341 tp!1649730)))

(assert (=> b!5929744 (= tp!1648923 e!3630341)))

(declare-fun b!5931576 () Bool)

(assert (=> b!5931576 (= e!3630341 tp_is_empty!41207)))

(declare-fun b!5931579 () Bool)

(declare-fun tp!1649732 () Bool)

(declare-fun tp!1649731 () Bool)

(assert (=> b!5931579 (= e!3630341 (and tp!1649732 tp!1649731))))

(assert (= (and b!5929744 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32466 (regOne!32466 r!7292))))) b!5931576))

(assert (= (and b!5929744 ((_ is Concat!24822) (regOne!32466 (regOne!32466 (regOne!32466 r!7292))))) b!5931577))

(assert (= (and b!5929744 ((_ is Star!15977) (regOne!32466 (regOne!32466 (regOne!32466 r!7292))))) b!5931578))

(assert (= (and b!5929744 ((_ is Union!15977) (regOne!32466 (regOne!32466 (regOne!32466 r!7292))))) b!5931579))

(declare-fun b!5931581 () Bool)

(declare-fun e!3630342 () Bool)

(declare-fun tp!1649734 () Bool)

(declare-fun tp!1649738 () Bool)

(assert (=> b!5931581 (= e!3630342 (and tp!1649734 tp!1649738))))

(declare-fun b!5931582 () Bool)

(declare-fun tp!1649735 () Bool)

(assert (=> b!5931582 (= e!3630342 tp!1649735)))

(assert (=> b!5929744 (= tp!1648927 e!3630342)))

(declare-fun b!5931580 () Bool)

(assert (=> b!5931580 (= e!3630342 tp_is_empty!41207)))

(declare-fun b!5931583 () Bool)

(declare-fun tp!1649737 () Bool)

(declare-fun tp!1649736 () Bool)

(assert (=> b!5931583 (= e!3630342 (and tp!1649737 tp!1649736))))

(assert (= (and b!5929744 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32466 (regOne!32466 r!7292))))) b!5931580))

(assert (= (and b!5929744 ((_ is Concat!24822) (regTwo!32466 (regOne!32466 (regOne!32466 r!7292))))) b!5931581))

(assert (= (and b!5929744 ((_ is Star!15977) (regTwo!32466 (regOne!32466 (regOne!32466 r!7292))))) b!5931582))

(assert (= (and b!5929744 ((_ is Union!15977) (regTwo!32466 (regOne!32466 (regOne!32466 r!7292))))) b!5931583))

(declare-fun b!5931585 () Bool)

(declare-fun e!3630343 () Bool)

(declare-fun tp!1649739 () Bool)

(declare-fun tp!1649743 () Bool)

(assert (=> b!5931585 (= e!3630343 (and tp!1649739 tp!1649743))))

(declare-fun b!5931586 () Bool)

(declare-fun tp!1649740 () Bool)

(assert (=> b!5931586 (= e!3630343 tp!1649740)))

(assert (=> b!5929753 (= tp!1648934 e!3630343)))

(declare-fun b!5931584 () Bool)

(assert (=> b!5931584 (= e!3630343 tp_is_empty!41207)))

(declare-fun b!5931587 () Bool)

(declare-fun tp!1649742 () Bool)

(declare-fun tp!1649741 () Bool)

(assert (=> b!5931587 (= e!3630343 (and tp!1649742 tp!1649741))))

(assert (= (and b!5929753 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32466 (regOne!32466 r!7292))))) b!5931584))

(assert (= (and b!5929753 ((_ is Concat!24822) (reg!16306 (regTwo!32466 (regOne!32466 r!7292))))) b!5931585))

(assert (= (and b!5929753 ((_ is Star!15977) (reg!16306 (regTwo!32466 (regOne!32466 r!7292))))) b!5931586))

(assert (= (and b!5929753 ((_ is Union!15977) (reg!16306 (regTwo!32466 (regOne!32466 r!7292))))) b!5931587))

(declare-fun b!5931589 () Bool)

(declare-fun e!3630344 () Bool)

(declare-fun tp!1649744 () Bool)

(declare-fun tp!1649748 () Bool)

(assert (=> b!5931589 (= e!3630344 (and tp!1649744 tp!1649748))))

(declare-fun b!5931590 () Bool)

(declare-fun tp!1649745 () Bool)

(assert (=> b!5931590 (= e!3630344 tp!1649745)))

(assert (=> b!5929882 (= tp!1649098 e!3630344)))

(declare-fun b!5931588 () Bool)

(assert (=> b!5931588 (= e!3630344 tp_is_empty!41207)))

(declare-fun b!5931591 () Bool)

(declare-fun tp!1649747 () Bool)

(declare-fun tp!1649746 () Bool)

(assert (=> b!5931591 (= e!3630344 (and tp!1649747 tp!1649746))))

(assert (= (and b!5929882 ((_ is ElementMatch!15977) (reg!16306 (regOne!32466 (regTwo!32467 r!7292))))) b!5931588))

(assert (= (and b!5929882 ((_ is Concat!24822) (reg!16306 (regOne!32466 (regTwo!32467 r!7292))))) b!5931589))

(assert (= (and b!5929882 ((_ is Star!15977) (reg!16306 (regOne!32466 (regTwo!32467 r!7292))))) b!5931590))

(assert (= (and b!5929882 ((_ is Union!15977) (reg!16306 (regOne!32466 (regTwo!32467 r!7292))))) b!5931591))

(declare-fun b!5931593 () Bool)

(declare-fun e!3630345 () Bool)

(declare-fun tp!1649749 () Bool)

(declare-fun tp!1649753 () Bool)

(assert (=> b!5931593 (= e!3630345 (and tp!1649749 tp!1649753))))

(declare-fun b!5931594 () Bool)

(declare-fun tp!1649750 () Bool)

(assert (=> b!5931594 (= e!3630345 tp!1649750)))

(assert (=> b!5929794 (= tp!1648985 e!3630345)))

(declare-fun b!5931592 () Bool)

(assert (=> b!5931592 (= e!3630345 tp_is_empty!41207)))

(declare-fun b!5931595 () Bool)

(declare-fun tp!1649752 () Bool)

(declare-fun tp!1649751 () Bool)

(assert (=> b!5931595 (= e!3630345 (and tp!1649752 tp!1649751))))

(assert (= (and b!5929794 ((_ is ElementMatch!15977) (regOne!32466 (regTwo!32467 (regOne!32466 r!7292))))) b!5931592))

(assert (= (and b!5929794 ((_ is Concat!24822) (regOne!32466 (regTwo!32467 (regOne!32466 r!7292))))) b!5931593))

(assert (= (and b!5929794 ((_ is Star!15977) (regOne!32466 (regTwo!32467 (regOne!32466 r!7292))))) b!5931594))

(assert (= (and b!5929794 ((_ is Union!15977) (regOne!32466 (regTwo!32467 (regOne!32466 r!7292))))) b!5931595))

(declare-fun b!5931597 () Bool)

(declare-fun e!3630346 () Bool)

(declare-fun tp!1649754 () Bool)

(declare-fun tp!1649758 () Bool)

(assert (=> b!5931597 (= e!3630346 (and tp!1649754 tp!1649758))))

(declare-fun b!5931598 () Bool)

(declare-fun tp!1649755 () Bool)

(assert (=> b!5931598 (= e!3630346 tp!1649755)))

(assert (=> b!5929794 (= tp!1648989 e!3630346)))

(declare-fun b!5931596 () Bool)

(assert (=> b!5931596 (= e!3630346 tp_is_empty!41207)))

(declare-fun b!5931599 () Bool)

(declare-fun tp!1649757 () Bool)

(declare-fun tp!1649756 () Bool)

(assert (=> b!5931599 (= e!3630346 (and tp!1649757 tp!1649756))))

(assert (= (and b!5929794 ((_ is ElementMatch!15977) (regTwo!32466 (regTwo!32467 (regOne!32466 r!7292))))) b!5931596))

(assert (= (and b!5929794 ((_ is Concat!24822) (regTwo!32466 (regTwo!32467 (regOne!32466 r!7292))))) b!5931597))

(assert (= (and b!5929794 ((_ is Star!15977) (regTwo!32466 (regTwo!32467 (regOne!32466 r!7292))))) b!5931598))

(assert (= (and b!5929794 ((_ is Union!15977) (regTwo!32466 (regTwo!32467 (regOne!32466 r!7292))))) b!5931599))

(declare-fun b!5931601 () Bool)

(declare-fun e!3630347 () Bool)

(declare-fun tp!1649759 () Bool)

(declare-fun tp!1649763 () Bool)

(assert (=> b!5931601 (= e!3630347 (and tp!1649759 tp!1649763))))

(declare-fun b!5931602 () Bool)

(declare-fun tp!1649760 () Bool)

(assert (=> b!5931602 (= e!3630347 tp!1649760)))

(assert (=> b!5929811 (= tp!1649007 e!3630347)))

(declare-fun b!5931600 () Bool)

(assert (=> b!5931600 (= e!3630347 tp_is_empty!41207)))

(declare-fun b!5931603 () Bool)

(declare-fun tp!1649762 () Bool)

(declare-fun tp!1649761 () Bool)

(assert (=> b!5931603 (= e!3630347 (and tp!1649762 tp!1649761))))

(assert (= (and b!5929811 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32467 (regOne!32467 r!7292))))) b!5931600))

(assert (= (and b!5929811 ((_ is Concat!24822) (regOne!32467 (regOne!32467 (regOne!32467 r!7292))))) b!5931601))

(assert (= (and b!5929811 ((_ is Star!15977) (regOne!32467 (regOne!32467 (regOne!32467 r!7292))))) b!5931602))

(assert (= (and b!5929811 ((_ is Union!15977) (regOne!32467 (regOne!32467 (regOne!32467 r!7292))))) b!5931603))

(declare-fun b!5931607 () Bool)

(declare-fun e!3630350 () Bool)

(declare-fun tp!1649764 () Bool)

(declare-fun tp!1649768 () Bool)

(assert (=> b!5931607 (= e!3630350 (and tp!1649764 tp!1649768))))

(declare-fun b!5931608 () Bool)

(declare-fun tp!1649765 () Bool)

(assert (=> b!5931608 (= e!3630350 tp!1649765)))

(assert (=> b!5929811 (= tp!1649006 e!3630350)))

(declare-fun b!5931606 () Bool)

(assert (=> b!5931606 (= e!3630350 tp_is_empty!41207)))

(declare-fun b!5931609 () Bool)

(declare-fun tp!1649767 () Bool)

(declare-fun tp!1649766 () Bool)

(assert (=> b!5931609 (= e!3630350 (and tp!1649767 tp!1649766))))

(assert (= (and b!5929811 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32467 (regOne!32467 r!7292))))) b!5931606))

(assert (= (and b!5929811 ((_ is Concat!24822) (regTwo!32467 (regOne!32467 (regOne!32467 r!7292))))) b!5931607))

(assert (= (and b!5929811 ((_ is Star!15977) (regTwo!32467 (regOne!32467 (regOne!32467 r!7292))))) b!5931608))

(assert (= (and b!5929811 ((_ is Union!15977) (regTwo!32467 (regOne!32467 (regOne!32467 r!7292))))) b!5931609))

(declare-fun b!5931611 () Bool)

(declare-fun e!3630351 () Bool)

(declare-fun tp!1649769 () Bool)

(declare-fun tp!1649773 () Bool)

(assert (=> b!5931611 (= e!3630351 (and tp!1649769 tp!1649773))))

(declare-fun b!5931612 () Bool)

(declare-fun tp!1649770 () Bool)

(assert (=> b!5931612 (= e!3630351 tp!1649770)))

(assert (=> b!5929889 (= tp!1649107 e!3630351)))

(declare-fun b!5931610 () Bool)

(assert (=> b!5931610 (= e!3630351 tp_is_empty!41207)))

(declare-fun b!5931613 () Bool)

(declare-fun tp!1649772 () Bool)

(declare-fun tp!1649771 () Bool)

(assert (=> b!5931613 (= e!3630351 (and tp!1649772 tp!1649771))))

(assert (= (and b!5929889 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))))) b!5931610))

(assert (= (and b!5929889 ((_ is Concat!24822) (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))))) b!5931611))

(assert (= (and b!5929889 ((_ is Star!15977) (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))))) b!5931612))

(assert (= (and b!5929889 ((_ is Union!15977) (regOne!32466 (regOne!32467 (regTwo!32467 r!7292))))) b!5931613))

(declare-fun b!5931615 () Bool)

(declare-fun e!3630352 () Bool)

(declare-fun tp!1649774 () Bool)

(declare-fun tp!1649778 () Bool)

(assert (=> b!5931615 (= e!3630352 (and tp!1649774 tp!1649778))))

(declare-fun b!5931616 () Bool)

(declare-fun tp!1649775 () Bool)

(assert (=> b!5931616 (= e!3630352 tp!1649775)))

(assert (=> b!5929889 (= tp!1649111 e!3630352)))

(declare-fun b!5931614 () Bool)

(assert (=> b!5931614 (= e!3630352 tp_is_empty!41207)))

(declare-fun b!5931617 () Bool)

(declare-fun tp!1649777 () Bool)

(declare-fun tp!1649776 () Bool)

(assert (=> b!5931617 (= e!3630352 (and tp!1649777 tp!1649776))))

(assert (= (and b!5929889 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))))) b!5931614))

(assert (= (and b!5929889 ((_ is Concat!24822) (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))))) b!5931615))

(assert (= (and b!5929889 ((_ is Star!15977) (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))))) b!5931616))

(assert (= (and b!5929889 ((_ is Union!15977) (regTwo!32466 (regOne!32467 (regTwo!32467 r!7292))))) b!5931617))

(declare-fun b!5931619 () Bool)

(declare-fun e!3630353 () Bool)

(declare-fun tp!1649779 () Bool)

(declare-fun tp!1649783 () Bool)

(assert (=> b!5931619 (= e!3630353 (and tp!1649779 tp!1649783))))

(declare-fun b!5931620 () Bool)

(declare-fun tp!1649780 () Bool)

(assert (=> b!5931620 (= e!3630353 tp!1649780)))

(assert (=> b!5929803 (= tp!1648996 e!3630353)))

(declare-fun b!5931618 () Bool)

(assert (=> b!5931618 (= e!3630353 tp_is_empty!41207)))

(declare-fun b!5931621 () Bool)

(declare-fun tp!1649782 () Bool)

(declare-fun tp!1649781 () Bool)

(assert (=> b!5931621 (= e!3630353 (and tp!1649782 tp!1649781))))

(assert (= (and b!5929803 ((_ is ElementMatch!15977) (reg!16306 (reg!16306 (regOne!32467 r!7292))))) b!5931618))

(assert (= (and b!5929803 ((_ is Concat!24822) (reg!16306 (reg!16306 (regOne!32467 r!7292))))) b!5931619))

(assert (= (and b!5929803 ((_ is Star!15977) (reg!16306 (reg!16306 (regOne!32467 r!7292))))) b!5931620))

(assert (= (and b!5929803 ((_ is Union!15977) (reg!16306 (reg!16306 (regOne!32467 r!7292))))) b!5931621))

(declare-fun b!5931623 () Bool)

(declare-fun e!3630354 () Bool)

(declare-fun tp!1649784 () Bool)

(declare-fun tp!1649788 () Bool)

(assert (=> b!5931623 (= e!3630354 (and tp!1649784 tp!1649788))))

(declare-fun b!5931624 () Bool)

(declare-fun tp!1649785 () Bool)

(assert (=> b!5931624 (= e!3630354 tp!1649785)))

(assert (=> b!5929887 (= tp!1649105 e!3630354)))

(declare-fun b!5931622 () Bool)

(assert (=> b!5931622 (= e!3630354 tp_is_empty!41207)))

(declare-fun b!5931625 () Bool)

(declare-fun tp!1649787 () Bool)

(declare-fun tp!1649786 () Bool)

(assert (=> b!5931625 (= e!3630354 (and tp!1649787 tp!1649786))))

(assert (= (and b!5929887 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931622))

(assert (= (and b!5929887 ((_ is Concat!24822) (regOne!32467 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931623))

(assert (= (and b!5929887 ((_ is Star!15977) (regOne!32467 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931624))

(assert (= (and b!5929887 ((_ is Union!15977) (regOne!32467 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931625))

(declare-fun b!5931627 () Bool)

(declare-fun e!3630355 () Bool)

(declare-fun tp!1649789 () Bool)

(declare-fun tp!1649793 () Bool)

(assert (=> b!5931627 (= e!3630355 (and tp!1649789 tp!1649793))))

(declare-fun b!5931628 () Bool)

(declare-fun tp!1649790 () Bool)

(assert (=> b!5931628 (= e!3630355 tp!1649790)))

(assert (=> b!5929887 (= tp!1649104 e!3630355)))

(declare-fun b!5931626 () Bool)

(assert (=> b!5931626 (= e!3630355 tp_is_empty!41207)))

(declare-fun b!5931629 () Bool)

(declare-fun tp!1649792 () Bool)

(declare-fun tp!1649791 () Bool)

(assert (=> b!5931629 (= e!3630355 (and tp!1649792 tp!1649791))))

(assert (= (and b!5929887 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931626))

(assert (= (and b!5929887 ((_ is Concat!24822) (regTwo!32467 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931627))

(assert (= (and b!5929887 ((_ is Star!15977) (regTwo!32467 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931628))

(assert (= (and b!5929887 ((_ is Union!15977) (regTwo!32467 (regTwo!32466 (regTwo!32467 r!7292))))) b!5931629))

(declare-fun b!5931630 () Bool)

(declare-fun e!3630356 () Bool)

(declare-fun tp!1649794 () Bool)

(declare-fun tp!1649795 () Bool)

(assert (=> b!5931630 (= e!3630356 (and tp!1649794 tp!1649795))))

(assert (=> b!5929824 (= tp!1649025 e!3630356)))

(assert (= (and b!5929824 ((_ is Cons!64106) (exprs!5861 setElem!40256))) b!5931630))

(declare-fun b!5931632 () Bool)

(declare-fun e!3630357 () Bool)

(declare-fun tp!1649796 () Bool)

(declare-fun tp!1649800 () Bool)

(assert (=> b!5931632 (= e!3630357 (and tp!1649796 tp!1649800))))

(declare-fun b!5931633 () Bool)

(declare-fun tp!1649797 () Bool)

(assert (=> b!5931633 (= e!3630357 tp!1649797)))

(assert (=> b!5929907 (= tp!1649130 e!3630357)))

(declare-fun b!5931631 () Bool)

(assert (=> b!5931631 (= e!3630357 tp_is_empty!41207)))

(declare-fun b!5931634 () Bool)

(declare-fun tp!1649799 () Bool)

(declare-fun tp!1649798 () Bool)

(assert (=> b!5931634 (= e!3630357 (and tp!1649799 tp!1649798))))

(assert (= (and b!5929907 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32466 (reg!16306 r!7292))))) b!5931631))

(assert (= (and b!5929907 ((_ is Concat!24822) (regOne!32467 (regTwo!32466 (reg!16306 r!7292))))) b!5931632))

(assert (= (and b!5929907 ((_ is Star!15977) (regOne!32467 (regTwo!32466 (reg!16306 r!7292))))) b!5931633))

(assert (= (and b!5929907 ((_ is Union!15977) (regOne!32467 (regTwo!32466 (reg!16306 r!7292))))) b!5931634))

(declare-fun b!5931636 () Bool)

(declare-fun e!3630358 () Bool)

(declare-fun tp!1649801 () Bool)

(declare-fun tp!1649805 () Bool)

(assert (=> b!5931636 (= e!3630358 (and tp!1649801 tp!1649805))))

(declare-fun b!5931637 () Bool)

(declare-fun tp!1649802 () Bool)

(assert (=> b!5931637 (= e!3630358 tp!1649802)))

(assert (=> b!5929907 (= tp!1649129 e!3630358)))

(declare-fun b!5931635 () Bool)

(assert (=> b!5931635 (= e!3630358 tp_is_empty!41207)))

(declare-fun b!5931638 () Bool)

(declare-fun tp!1649804 () Bool)

(declare-fun tp!1649803 () Bool)

(assert (=> b!5931638 (= e!3630358 (and tp!1649804 tp!1649803))))

(assert (= (and b!5929907 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32466 (reg!16306 r!7292))))) b!5931635))

(assert (= (and b!5929907 ((_ is Concat!24822) (regTwo!32467 (regTwo!32466 (reg!16306 r!7292))))) b!5931636))

(assert (= (and b!5929907 ((_ is Star!15977) (regTwo!32467 (regTwo!32466 (reg!16306 r!7292))))) b!5931637))

(assert (= (and b!5929907 ((_ is Union!15977) (regTwo!32467 (regTwo!32466 (reg!16306 r!7292))))) b!5931638))

(declare-fun b!5931640 () Bool)

(declare-fun e!3630359 () Bool)

(declare-fun tp!1649806 () Bool)

(declare-fun tp!1649810 () Bool)

(assert (=> b!5931640 (= e!3630359 (and tp!1649806 tp!1649810))))

(declare-fun b!5931641 () Bool)

(declare-fun tp!1649807 () Bool)

(assert (=> b!5931641 (= e!3630359 tp!1649807)))

(assert (=> b!5929818 (= tp!1649015 e!3630359)))

(declare-fun b!5931639 () Bool)

(assert (=> b!5931639 (= e!3630359 tp_is_empty!41207)))

(declare-fun b!5931642 () Bool)

(declare-fun tp!1649809 () Bool)

(declare-fun tp!1649808 () Bool)

(assert (=> b!5931642 (= e!3630359 (and tp!1649809 tp!1649808))))

(assert (= (and b!5929818 ((_ is ElementMatch!15977) (reg!16306 (regTwo!32467 (regOne!32467 r!7292))))) b!5931639))

(assert (= (and b!5929818 ((_ is Concat!24822) (reg!16306 (regTwo!32467 (regOne!32467 r!7292))))) b!5931640))

(assert (= (and b!5929818 ((_ is Star!15977) (reg!16306 (regTwo!32467 (regOne!32467 r!7292))))) b!5931641))

(assert (= (and b!5929818 ((_ is Union!15977) (reg!16306 (regTwo!32467 (regOne!32467 r!7292))))) b!5931642))

(declare-fun b!5931644 () Bool)

(declare-fun e!3630360 () Bool)

(declare-fun tp!1649811 () Bool)

(declare-fun tp!1649815 () Bool)

(assert (=> b!5931644 (= e!3630360 (and tp!1649811 tp!1649815))))

(declare-fun b!5931645 () Bool)

(declare-fun tp!1649812 () Bool)

(assert (=> b!5931645 (= e!3630360 tp!1649812)))

(assert (=> b!5929898 (= tp!1649118 e!3630360)))

(declare-fun b!5931643 () Bool)

(assert (=> b!5931643 (= e!3630360 tp_is_empty!41207)))

(declare-fun b!5931646 () Bool)

(declare-fun tp!1649814 () Bool)

(declare-fun tp!1649813 () Bool)

(assert (=> b!5931646 (= e!3630360 (and tp!1649814 tp!1649813))))

(assert (= (and b!5929898 ((_ is ElementMatch!15977) (reg!16306 (reg!16306 (reg!16306 r!7292))))) b!5931643))

(assert (= (and b!5929898 ((_ is Concat!24822) (reg!16306 (reg!16306 (reg!16306 r!7292))))) b!5931644))

(assert (= (and b!5929898 ((_ is Star!15977) (reg!16306 (reg!16306 (reg!16306 r!7292))))) b!5931645))

(assert (= (and b!5929898 ((_ is Union!15977) (reg!16306 (reg!16306 (reg!16306 r!7292))))) b!5931646))

(declare-fun b!5931650 () Bool)

(declare-fun e!3630361 () Bool)

(declare-fun tp!1649816 () Bool)

(declare-fun tp!1649820 () Bool)

(assert (=> b!5931650 (= e!3630361 (and tp!1649816 tp!1649820))))

(declare-fun b!5931651 () Bool)

(declare-fun tp!1649817 () Bool)

(assert (=> b!5931651 (= e!3630361 tp!1649817)))

(assert (=> b!5929831 (= tp!1649032 e!3630361)))

(declare-fun b!5931649 () Bool)

(assert (=> b!5931649 (= e!3630361 tp_is_empty!41207)))

(declare-fun b!5931652 () Bool)

(declare-fun tp!1649819 () Bool)

(declare-fun tp!1649818 () Bool)

(assert (=> b!5931652 (= e!3630361 (and tp!1649819 tp!1649818))))

(assert (= (and b!5929831 ((_ is ElementMatch!15977) (reg!16306 (h!70554 (exprs!5861 setElem!40242))))) b!5931649))

(assert (= (and b!5929831 ((_ is Concat!24822) (reg!16306 (h!70554 (exprs!5861 setElem!40242))))) b!5931650))

(assert (= (and b!5929831 ((_ is Star!15977) (reg!16306 (h!70554 (exprs!5861 setElem!40242))))) b!5931651))

(assert (= (and b!5929831 ((_ is Union!15977) (reg!16306 (h!70554 (exprs!5861 setElem!40242))))) b!5931652))

(declare-fun b!5931658 () Bool)

(declare-fun e!3630368 () Bool)

(declare-fun tp!1649821 () Bool)

(declare-fun tp!1649825 () Bool)

(assert (=> b!5931658 (= e!3630368 (and tp!1649821 tp!1649825))))

(declare-fun b!5931659 () Bool)

(declare-fun tp!1649822 () Bool)

(assert (=> b!5931659 (= e!3630368 tp!1649822)))

(assert (=> b!5929855 (= tp!1649065 e!3630368)))

(declare-fun b!5931657 () Bool)

(assert (=> b!5931657 (= e!3630368 tp_is_empty!41207)))

(declare-fun b!5931660 () Bool)

(declare-fun tp!1649824 () Bool)

(declare-fun tp!1649823 () Bool)

(assert (=> b!5931660 (= e!3630368 (and tp!1649824 tp!1649823))))

(assert (= (and b!5929855 ((_ is ElementMatch!15977) (regOne!32467 (regOne!32466 (regTwo!32466 r!7292))))) b!5931657))

(assert (= (and b!5929855 ((_ is Concat!24822) (regOne!32467 (regOne!32466 (regTwo!32466 r!7292))))) b!5931658))

(assert (= (and b!5929855 ((_ is Star!15977) (regOne!32467 (regOne!32466 (regTwo!32466 r!7292))))) b!5931659))

(assert (= (and b!5929855 ((_ is Union!15977) (regOne!32467 (regOne!32466 (regTwo!32466 r!7292))))) b!5931660))

(declare-fun b!5931668 () Bool)

(declare-fun e!3630373 () Bool)

(declare-fun tp!1649826 () Bool)

(declare-fun tp!1649830 () Bool)

(assert (=> b!5931668 (= e!3630373 (and tp!1649826 tp!1649830))))

(declare-fun b!5931669 () Bool)

(declare-fun tp!1649827 () Bool)

(assert (=> b!5931669 (= e!3630373 tp!1649827)))

(assert (=> b!5929855 (= tp!1649064 e!3630373)))

(declare-fun b!5931667 () Bool)

(assert (=> b!5931667 (= e!3630373 tp_is_empty!41207)))

(declare-fun b!5931670 () Bool)

(declare-fun tp!1649829 () Bool)

(declare-fun tp!1649828 () Bool)

(assert (=> b!5931670 (= e!3630373 (and tp!1649829 tp!1649828))))

(assert (= (and b!5929855 ((_ is ElementMatch!15977) (regTwo!32467 (regOne!32466 (regTwo!32466 r!7292))))) b!5931667))

(assert (= (and b!5929855 ((_ is Concat!24822) (regTwo!32467 (regOne!32466 (regTwo!32466 r!7292))))) b!5931668))

(assert (= (and b!5929855 ((_ is Star!15977) (regTwo!32467 (regOne!32466 (regTwo!32466 r!7292))))) b!5931669))

(assert (= (and b!5929855 ((_ is Union!15977) (regTwo!32467 (regOne!32466 (regTwo!32466 r!7292))))) b!5931670))

(declare-fun b!5931674 () Bool)

(declare-fun e!3630376 () Bool)

(declare-fun tp!1649831 () Bool)

(declare-fun tp!1649835 () Bool)

(assert (=> b!5931674 (= e!3630376 (and tp!1649831 tp!1649835))))

(declare-fun b!5931675 () Bool)

(declare-fun tp!1649832 () Bool)

(assert (=> b!5931675 (= e!3630376 tp!1649832)))

(assert (=> b!5929846 (= tp!1649053 e!3630376)))

(declare-fun b!5931673 () Bool)

(assert (=> b!5931673 (= e!3630376 tp_is_empty!41207)))

(declare-fun b!5931676 () Bool)

(declare-fun tp!1649834 () Bool)

(declare-fun tp!1649833 () Bool)

(assert (=> b!5931676 (= e!3630376 (and tp!1649834 tp!1649833))))

(assert (= (and b!5929846 ((_ is ElementMatch!15977) (reg!16306 (reg!16306 (regTwo!32466 r!7292))))) b!5931673))

(assert (= (and b!5929846 ((_ is Concat!24822) (reg!16306 (reg!16306 (regTwo!32466 r!7292))))) b!5931674))

(assert (= (and b!5929846 ((_ is Star!15977) (reg!16306 (reg!16306 (regTwo!32466 r!7292))))) b!5931675))

(assert (= (and b!5929846 ((_ is Union!15977) (reg!16306 (reg!16306 (regTwo!32466 r!7292))))) b!5931676))

(declare-fun b!5931678 () Bool)

(declare-fun e!3630377 () Bool)

(declare-fun tp!1649836 () Bool)

(declare-fun tp!1649840 () Bool)

(assert (=> b!5931678 (= e!3630377 (and tp!1649836 tp!1649840))))

(declare-fun b!5931679 () Bool)

(declare-fun tp!1649837 () Bool)

(assert (=> b!5931679 (= e!3630377 tp!1649837)))

(assert (=> b!5929782 (= tp!1648970 e!3630377)))

(declare-fun b!5931677 () Bool)

(assert (=> b!5931677 (= e!3630377 tp_is_empty!41207)))

(declare-fun b!5931680 () Bool)

(declare-fun tp!1649839 () Bool)

(declare-fun tp!1649838 () Bool)

(assert (=> b!5931680 (= e!3630377 (and tp!1649839 tp!1649838))))

(assert (= (and b!5929782 ((_ is ElementMatch!15977) (regOne!32466 (reg!16306 (regOne!32466 r!7292))))) b!5931677))

(assert (= (and b!5929782 ((_ is Concat!24822) (regOne!32466 (reg!16306 (regOne!32466 r!7292))))) b!5931678))

(assert (= (and b!5929782 ((_ is Star!15977) (regOne!32466 (reg!16306 (regOne!32466 r!7292))))) b!5931679))

(assert (= (and b!5929782 ((_ is Union!15977) (regOne!32466 (reg!16306 (regOne!32466 r!7292))))) b!5931680))

(declare-fun b!5931682 () Bool)

(declare-fun e!3630378 () Bool)

(declare-fun tp!1649841 () Bool)

(declare-fun tp!1649845 () Bool)

(assert (=> b!5931682 (= e!3630378 (and tp!1649841 tp!1649845))))

(declare-fun b!5931683 () Bool)

(declare-fun tp!1649842 () Bool)

(assert (=> b!5931683 (= e!3630378 tp!1649842)))

(assert (=> b!5929782 (= tp!1648974 e!3630378)))

(declare-fun b!5931681 () Bool)

(assert (=> b!5931681 (= e!3630378 tp_is_empty!41207)))

(declare-fun b!5931684 () Bool)

(declare-fun tp!1649844 () Bool)

(declare-fun tp!1649843 () Bool)

(assert (=> b!5931684 (= e!3630378 (and tp!1649844 tp!1649843))))

(assert (= (and b!5929782 ((_ is ElementMatch!15977) (regTwo!32466 (reg!16306 (regOne!32466 r!7292))))) b!5931681))

(assert (= (and b!5929782 ((_ is Concat!24822) (regTwo!32466 (reg!16306 (regOne!32466 r!7292))))) b!5931682))

(assert (= (and b!5929782 ((_ is Star!15977) (regTwo!32466 (reg!16306 (regOne!32466 r!7292))))) b!5931683))

(assert (= (and b!5929782 ((_ is Union!15977) (regTwo!32466 (reg!16306 (regOne!32466 r!7292))))) b!5931684))

(declare-fun b!5931686 () Bool)

(declare-fun e!3630379 () Bool)

(declare-fun tp!1649846 () Bool)

(declare-fun tp!1649850 () Bool)

(assert (=> b!5931686 (= e!3630379 (and tp!1649846 tp!1649850))))

(declare-fun b!5931687 () Bool)

(declare-fun tp!1649847 () Bool)

(assert (=> b!5931687 (= e!3630379 tp!1649847)))

(assert (=> b!5929895 (= tp!1649115 e!3630379)))

(declare-fun b!5931685 () Bool)

(assert (=> b!5931685 (= e!3630379 tp_is_empty!41207)))

(declare-fun b!5931688 () Bool)

(declare-fun tp!1649849 () Bool)

(declare-fun tp!1649848 () Bool)

(assert (=> b!5931688 (= e!3630379 (and tp!1649849 tp!1649848))))

(assert (= (and b!5929895 ((_ is ElementMatch!15977) (regOne!32467 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931685))

(assert (= (and b!5929895 ((_ is Concat!24822) (regOne!32467 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931686))

(assert (= (and b!5929895 ((_ is Star!15977) (regOne!32467 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931687))

(assert (= (and b!5929895 ((_ is Union!15977) (regOne!32467 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931688))

(declare-fun b!5931690 () Bool)

(declare-fun e!3630380 () Bool)

(declare-fun tp!1649851 () Bool)

(declare-fun tp!1649855 () Bool)

(assert (=> b!5931690 (= e!3630380 (and tp!1649851 tp!1649855))))

(declare-fun b!5931691 () Bool)

(declare-fun tp!1649852 () Bool)

(assert (=> b!5931691 (= e!3630380 tp!1649852)))

(assert (=> b!5929895 (= tp!1649114 e!3630380)))

(declare-fun b!5931689 () Bool)

(assert (=> b!5931689 (= e!3630380 tp_is_empty!41207)))

(declare-fun b!5931692 () Bool)

(declare-fun tp!1649854 () Bool)

(declare-fun tp!1649853 () Bool)

(assert (=> b!5931692 (= e!3630380 (and tp!1649854 tp!1649853))))

(assert (= (and b!5929895 ((_ is ElementMatch!15977) (regTwo!32467 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931689))

(assert (= (and b!5929895 ((_ is Concat!24822) (regTwo!32467 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931690))

(assert (= (and b!5929895 ((_ is Star!15977) (regTwo!32467 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931691))

(assert (= (and b!5929895 ((_ is Union!15977) (regTwo!32467 (regTwo!32467 (regTwo!32467 r!7292))))) b!5931692))

(declare-fun b!5931694 () Bool)

(declare-fun e!3630382 () Bool)

(declare-fun tp!1649856 () Bool)

(assert (=> b!5931694 (= e!3630382 tp!1649856)))

(declare-fun e!3630381 () Bool)

(declare-fun b!5931693 () Bool)

(declare-fun tp!1649857 () Bool)

(assert (=> b!5931693 (= e!3630381 (and (inv!83189 (h!70555 (t!377628 res!2484500))) e!3630382 tp!1649857))))

(assert (=> b!5929065 (= tp!1648841 e!3630381)))

(assert (= b!5931693 b!5931694))

(assert (= (and b!5929065 ((_ is Cons!64107) (t!377628 res!2484500))) b!5931693))

(declare-fun m!6824044 () Bool)

(assert (=> b!5931693 m!6824044))

(declare-fun b!5931696 () Bool)

(declare-fun e!3630383 () Bool)

(declare-fun tp!1649858 () Bool)

(declare-fun tp!1649862 () Bool)

(assert (=> b!5931696 (= e!3630383 (and tp!1649858 tp!1649862))))

(declare-fun b!5931697 () Bool)

(declare-fun tp!1649859 () Bool)

(assert (=> b!5931697 (= e!3630383 tp!1649859)))

(assert (=> b!5929909 (= tp!1649132 e!3630383)))

(declare-fun b!5931695 () Bool)

(assert (=> b!5931695 (= e!3630383 tp_is_empty!41207)))

(declare-fun b!5931698 () Bool)

(declare-fun tp!1649861 () Bool)

(declare-fun tp!1649860 () Bool)

(assert (=> b!5931698 (= e!3630383 (and tp!1649861 tp!1649860))))

(assert (= (and b!5929909 ((_ is ElementMatch!15977) (regOne!32466 (regOne!32467 (reg!16306 r!7292))))) b!5931695))

(assert (= (and b!5929909 ((_ is Concat!24822) (regOne!32466 (regOne!32467 (reg!16306 r!7292))))) b!5931696))

(assert (= (and b!5929909 ((_ is Star!15977) (regOne!32466 (regOne!32467 (reg!16306 r!7292))))) b!5931697))

(assert (= (and b!5929909 ((_ is Union!15977) (regOne!32466 (regOne!32467 (reg!16306 r!7292))))) b!5931698))

(declare-fun b!5931700 () Bool)

(declare-fun e!3630384 () Bool)

(declare-fun tp!1649863 () Bool)

(declare-fun tp!1649867 () Bool)

(assert (=> b!5931700 (= e!3630384 (and tp!1649863 tp!1649867))))

(declare-fun b!5931701 () Bool)

(declare-fun tp!1649864 () Bool)

(assert (=> b!5931701 (= e!3630384 tp!1649864)))

(assert (=> b!5929909 (= tp!1649136 e!3630384)))

(declare-fun b!5931699 () Bool)

(assert (=> b!5931699 (= e!3630384 tp_is_empty!41207)))

(declare-fun b!5931702 () Bool)

(declare-fun tp!1649866 () Bool)

(declare-fun tp!1649865 () Bool)

(assert (=> b!5931702 (= e!3630384 (and tp!1649866 tp!1649865))))

(assert (= (and b!5929909 ((_ is ElementMatch!15977) (regTwo!32466 (regOne!32467 (reg!16306 r!7292))))) b!5931699))

(assert (= (and b!5929909 ((_ is Concat!24822) (regTwo!32466 (regOne!32467 (reg!16306 r!7292))))) b!5931700))

(assert (= (and b!5929909 ((_ is Star!15977) (regTwo!32466 (regOne!32467 (reg!16306 r!7292))))) b!5931701))

(assert (= (and b!5929909 ((_ is Union!15977) (regTwo!32466 (regOne!32467 (reg!16306 r!7292))))) b!5931702))

(declare-fun b!5931704 () Bool)

(declare-fun e!3630385 () Bool)

(declare-fun tp!1649868 () Bool)

(declare-fun tp!1649872 () Bool)

(assert (=> b!5931704 (= e!3630385 (and tp!1649868 tp!1649872))))

(declare-fun b!5931705 () Bool)

(declare-fun tp!1649869 () Bool)

(assert (=> b!5931705 (= e!3630385 tp!1649869)))

(assert (=> b!5929918 (= tp!1649143 e!3630385)))

(declare-fun b!5931703 () Bool)

(assert (=> b!5931703 (= e!3630385 tp_is_empty!41207)))

(declare-fun b!5931706 () Bool)

(declare-fun tp!1649871 () Bool)

(declare-fun tp!1649870 () Bool)

(assert (=> b!5931706 (= e!3630385 (and tp!1649871 tp!1649870))))

(assert (= (and b!5929918 ((_ is ElementMatch!15977) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931703))

(assert (= (and b!5929918 ((_ is Concat!24822) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931704))

(assert (= (and b!5929918 ((_ is Star!15977) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931705))

(assert (= (and b!5929918 ((_ is Union!15977) (reg!16306 (h!70554 (exprs!5861 (h!70555 zl!343)))))) b!5931706))

(declare-fun b_lambda!222759 () Bool)

(assert (= b_lambda!222741 (or d!1858790 b_lambda!222759)))

(declare-fun bs!1403580 () Bool)

(declare-fun d!1859714 () Bool)

(assert (= bs!1403580 (and d!1859714 d!1858790)))

(assert (=> bs!1403580 (= (dynLambda!25069 lambda!323402 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343))))) (validRegex!7713 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(declare-fun m!6824046 () Bool)

(assert (=> bs!1403580 m!6824046))

(assert (=> b!5930490 d!1859714))

(declare-fun b_lambda!222761 () Bool)

(assert (= b_lambda!222725 (or d!1858760 b_lambda!222761)))

(declare-fun bs!1403581 () Bool)

(declare-fun d!1859716 () Bool)

(assert (= bs!1403581 (and d!1859716 d!1858760)))

(assert (=> bs!1403581 (= (dynLambda!25069 lambda!323389 (h!70554 (t!377627 (exprs!5861 setElem!40242)))) (validRegex!7713 (h!70554 (t!377627 (exprs!5861 setElem!40242)))))))

(declare-fun m!6824048 () Bool)

(assert (=> bs!1403581 m!6824048))

(assert (=> b!5929953 d!1859716))

(declare-fun b_lambda!222763 () Bool)

(assert (= b_lambda!222731 (or d!1859016 b_lambda!222763)))

(declare-fun bs!1403582 () Bool)

(declare-fun d!1859718 () Bool)

(assert (= bs!1403582 (and d!1859718 d!1859016)))

(assert (=> bs!1403582 (= (dynLambda!25069 lambda!323429 (h!70554 lt!2310681)) (validRegex!7713 (h!70554 lt!2310681)))))

(declare-fun m!6824050 () Bool)

(assert (=> bs!1403582 m!6824050))

(assert (=> b!5930141 d!1859718))

(declare-fun b_lambda!222765 () Bool)

(assert (= b_lambda!222735 (or d!1858900 b_lambda!222765)))

(declare-fun bs!1403583 () Bool)

(declare-fun d!1859720 () Bool)

(assert (= bs!1403583 (and d!1859720 d!1858900)))

(assert (=> bs!1403583 (= (dynLambda!25069 lambda!323422 (h!70554 (t!377627 (unfocusZipperList!1398 zl!343)))) (validRegex!7713 (h!70554 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(declare-fun m!6824052 () Bool)

(assert (=> bs!1403583 m!6824052))

(assert (=> b!5930348 d!1859720))

(declare-fun b_lambda!222767 () Bool)

(assert (= b_lambda!222745 (or d!1859132 b_lambda!222767)))

(declare-fun bs!1403584 () Bool)

(declare-fun d!1859722 () Bool)

(assert (= bs!1403584 (and d!1859722 d!1859132)))

(assert (=> bs!1403584 (= (dynLambda!25069 lambda!323448 (h!70554 (exprs!5861 (h!70555 (t!377628 zl!343))))) (validRegex!7713 (h!70554 (exprs!5861 (h!70555 (t!377628 zl!343))))))))

(declare-fun m!6824054 () Bool)

(assert (=> bs!1403584 m!6824054))

(assert (=> b!5930731 d!1859722))

(declare-fun b_lambda!222769 () Bool)

(assert (= b_lambda!222737 (or d!1858920 b_lambda!222769)))

(declare-fun bs!1403585 () Bool)

(declare-fun d!1859724 () Bool)

(assert (= bs!1403585 (and d!1859724 d!1858920)))

(assert (=> bs!1403585 (= (dynLambda!25069 lambda!323425 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343))))) (validRegex!7713 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(assert (=> bs!1403585 m!6824046))

(assert (=> b!5930363 d!1859724))

(declare-fun b_lambda!222771 () Bool)

(assert (= b_lambda!222729 (or d!1858764 b_lambda!222771)))

(declare-fun bs!1403586 () Bool)

(declare-fun d!1859726 () Bool)

(assert (= bs!1403586 (and d!1859726 d!1858764)))

(assert (=> bs!1403586 (= (dynLambda!25069 lambda!323390 (h!70554 (t!377627 (exprs!5861 lt!2310576)))) (validRegex!7713 (h!70554 (t!377627 (exprs!5861 lt!2310576)))))))

(declare-fun m!6824058 () Bool)

(assert (=> bs!1403586 m!6824058))

(assert (=> b!5930103 d!1859726))

(declare-fun b_lambda!222773 () Bool)

(assert (= b_lambda!222743 (or d!1859074 b_lambda!222773)))

(declare-fun bs!1403587 () Bool)

(declare-fun d!1859728 () Bool)

(assert (= bs!1403587 (and d!1859728 d!1859074)))

(assert (=> bs!1403587 (= (dynLambda!25069 lambda!323441 (h!70554 (exprs!5861 setElem!40248))) (validRegex!7713 (h!70554 (exprs!5861 setElem!40248))))))

(declare-fun m!6824062 () Bool)

(assert (=> bs!1403587 m!6824062))

(assert (=> b!5930579 d!1859728))

(declare-fun b_lambda!222775 () Bool)

(assert (= b_lambda!222733 (or d!1858772 b_lambda!222775)))

(declare-fun bs!1403588 () Bool)

(declare-fun d!1859732 () Bool)

(assert (= bs!1403588 (and d!1859732 d!1858772)))

(assert (=> bs!1403588 (= (dynLambda!25069 lambda!323393 (h!70554 (t!377627 (unfocusZipperList!1398 zl!343)))) (validRegex!7713 (h!70554 (t!377627 (unfocusZipperList!1398 zl!343)))))))

(assert (=> bs!1403588 m!6824052))

(assert (=> b!5930143 d!1859732))

(declare-fun b_lambda!222777 () Bool)

(assert (= b_lambda!222727 (or d!1858774 b_lambda!222777)))

(declare-fun bs!1403589 () Bool)

(declare-fun d!1859734 () Bool)

(assert (= bs!1403589 (and d!1859734 d!1858774)))

(assert (=> bs!1403589 (= (dynLambda!25069 lambda!323396 (h!70554 (t!377627 lt!2310633))) (validRegex!7713 (h!70554 (t!377627 lt!2310633))))))

(declare-fun m!6824064 () Bool)

(assert (=> bs!1403589 m!6824064))

(assert (=> b!5930065 d!1859734))

(declare-fun b_lambda!222779 () Bool)

(assert (= b_lambda!222749 (or d!1858804 b_lambda!222779)))

(declare-fun bs!1403590 () Bool)

(declare-fun d!1859736 () Bool)

(assert (= bs!1403590 (and d!1859736 d!1858804)))

(assert (=> bs!1403590 (= (dynLambda!25069 lambda!323412 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343))))) (validRegex!7713 (h!70554 (t!377627 (exprs!5861 (h!70555 zl!343))))))))

(assert (=> bs!1403590 m!6824046))

(assert (=> b!5930893 d!1859736))

(check-sat (not b!5930085) (not bm!470659) (not b_lambda!222763) (not b!5930622) (not b!5931087) (not b!5931668) (not b!5931461) (not b!5931586) (not b!5931147) (not b!5931256) (not b!5931397) (not b!5930231) (not b!5931507) (not bm!470786) (not bm!470706) (not b!5931094) (not b!5930732) (not bm!470710) (not b!5931364) (not bm!470660) (not b!5931090) (not bm!470704) (not b!5930413) (not b!5930789) (not b!5931583) (not b!5931152) (not b!5931485) (not b!5931621) (not b!5931493) (not bm!470724) (not b!5931374) (not b_lambda!222721) (not d!1859468) (not b!5931448) (not b!5931203) (not d!1859638) (not b!5931211) (not d!1859598) (not b!5931084) (not bm!470859) (not d!1859592) (not b!5930988) (not b!5931205) (not b!5931682) (not b!5931311) (not bm!470793) (not b!5931611) (not b!5931215) (not b!5930627) (not b!5930987) (not b!5930190) (not bm!470894) (not bm!470645) (not b!5930562) (not b!5931381) (not bm!470925) (not b!5931652) (not b!5930810) (not b!5930535) (not bm!470807) (not b!5931074) (not bm!470903) (not bs!1403586) (not b!5930049) (not bm!470775) (not b!5929982) (not b!5931691) (not b!5931601) (not b!5931469) (not b!5931207) (not bm!470725) (not b!5931514) (not b!5931148) (not bm!470848) (not b!5930664) (not b!5930624) (not b!5931660) (not b_lambda!222717) (not d!1859490) (not b!5931112) (not bm!470652) (not b!5930199) (not b!5931260) (not b!5931352) (not b!5931589) (not b!5930053) (not d!1859292) (not bm!470697) (not b!5930986) (not b!5930411) (not b!5930618) (not b!5930100) (not b!5931307) (not b!5931172) (not b!5931191) (not b!5931072) (not b!5931368) (not b!5931483) (not b!5931510) (not b!5931578) (not b!5931429) (not b!5931376) (not bm!470703) (not d!1859188) (not b!5931561) (not bs!1403589) (not b!5931301) (not b!5930195) (not b!5931441) (not b!5930727) (not b!5931388) (not bm!470714) (not bm!470812) (not b!5931344) (not d!1859372) (not b!5931095) (not b!5930984) (not b!5931615) (not b!5931574) (not bm!470733) (not b!5931646) (not b!5931213) (not b_lambda!222771) (not b!5931680) (not b!5931100) (not b_lambda!222775) (not b!5931527) (not b!5929967) (not b!5931367) (not d!1859250) (not b!5931678) (not bm!470765) (not b!5931291) (not b!5930142) (not b!5930453) (not d!1859274) (not b!5931262) (not b!5931219) (not b!5930152) (not b!5931170) (not b!5931234) (not b!5931355) (not b!5931155) (not b!5931264) (not b!5930133) (not b!5931619) (not b!5930115) (not bm!470761) (not b!5931434) (not b!5931082) (not d!1859510) (not b!5931422) (not b!5930878) (not b!5931185) (not b!5931078) (not b!5931410) (not d!1859210) (not b!5931270) (not b!5930296) (not b!5930580) (not bm!470835) (not b!5931634) (not b!5931187) (not b!5930355) (not b!5930725) (not b!5930522) (not b!5931453) (not b!5931243) (not b!5930846) (not bm!470803) (not b!5931698) (not b!5931637) (not b!5931287) (not b!5931532) (not b!5931437) (not b!5931607) (not bm!470763) (not b_lambda!222779) (not b!5931418) (not b!5931099) (not bm!470666) (not bm!470734) (not b!5931137) (not b!5931700) (not b!5930170) (not b!5931263) (not b!5931286) (not bm!470822) (not b!5931386) (not b!5931692) (not b!5930860) (not b!5931636) (not bm!470904) (not b!5931465) (not b!5931319) (not b!5931558) (not b!5931454) (not b!5931280) (not b!5930800) (not b!5931210) (not b!5931541) (not b!5930379) (not bm!470755) (not b!5931305) (not b!5931566) (not b!5931645) (not d!1859484) (not bm!470691) (not b!5930615) (not b!5930208) (not b!5931392) (not bm!470824) (not d!1859290) (not b!5930571) (not b!5930613) (not bm!470801) (not b!5931571) (not b!5930973) (not b!5931623) (not b!5931182) (not bm!470842) (not b!5931143) (not b!5931565) (not b!5931628) (not b!5931545) (not b!5931227) (not b!5931254) (not b!5931199) (not b!5931106) (not bm!470878) (not b!5931697) (not b!5930798) (not b!5931222) (not b!5931300) (not b_lambda!222667) (not bm!470722) (not d!1859492) (not b!5930368) (not b!5931477) (not b!5930216) (not b!5931620) (not b!5930632) (not b!5931701) (not b!5931229) (not b!5931139) (not b!5931156) (not b!5931202) (not b!5931393) (not b!5930101) (not d!1859208) (not b!5931079) (not b!5931495) (not bm!470670) (not b!5931627) (not bm!470884) (not b!5931190) (not b!5931181) (not b!5931299) (not b!5931651) (not b!5931293) (not b!5931466) (not b!5931669) (not b!5931440) (not b!5931385) (not b!5931239) (not b_lambda!222715) (not b!5931641) (not bm!470843) (not b!5931372) (not bm!470885) (not b!5930929) (not b!5931693) (not b_lambda!222765) (not b!5931377) (not b!5930630) (not b!5930964) (not bm!470713) (not b!5931135) (not bm!470887) (not b_lambda!222713) (not b!5930491) (not b!5931559) (not d!1859534) (not b!5931491) (not b!5930621) (not b!5930998) (not b!5931494) (not b!5930185) (not b!5931325) (not d!1859508) (not b!5931242) (not bm!470940) (not b!5931136) (not b!5930055) (not b!5930198) (not setNonEmpty!40259) (not b!5931503) (not b!5931080) (not b!5931562) (not d!1859362) (not b!5930673) (not bm!470748) (not b!5930375) (not b!5930845) (not b!5931194) (not b!5931408) (not bm!470833) (not b!5931428) (not b!5931359) (not b!5930367) (not b!5931515) (not b!5930219) (not b!5931630) (not b!5930153) (not b!5931413) (not b!5931474) (not b!5931209) (not b!5930868) (not b!5931370) (not b!5931432) (not b!5931246) (not b!5931267) (not d!1859580) (not b!5931266) (not b!5931489) (not b!5931281) (not bm!470696) (not b!5931160) (not bm!470902) (not bs!1403584) (not b!5931684) (not b!5931404) (not b!5931249) (not b!5931186) (not b!5931362) (not b!5930514) (not b!5931096) (not b!5931382) (not b!5929981) (not b!5930449) (not b!5931253) (not b!5931582) (not b!5931436) (not bm!470728) (not b!5931237) (not b_lambda!222769) (not b!5930104) (not b!5930838) (not b!5931070) (not b!5931358) (not b!5930611) (not b!5931633) (not b!5931481) (not b!5931169) (not b!5931107) (not b!5931579) (not b!5931487) (not bm!470686) (not d!1859618) (not b!5931076) (not d!1859272) (not bm!470718) (not bm!470857) (not b!5931421) (not bm!470802) (not b!5930242) (not b!5931445) (not b!5930956) (not b!5930409) (not b!5931163) (not b_lambda!222767) (not bm!470780) (not b!5930660) (not b!5931121) (not bm!470715) (not b!5930815) (not b!5931276) (not bm!470742) (not b!5930309) (not b!5929994) (not b!5931313) (not b!5931384) (not b!5931482) (not b!5931268) (not b!5931650) (not b!5931450) (not b!5930894) (not b!5930876) (not d!1859494) (not bm!470695) (not b!5931111) (not b!5930048) (not b!5931235) (not b!5931468) (not bm!470794) (not b!5931088) (not bs!1403580) (not b!5931506) (not b!5931351) (not d!1859258) (not b!5929985) (not b!5931271) (not d!1859364) (not b!5931118) (not bm!470648) (not bm!470764) (not b!5931379) (not b!5931670) (not b!5931544) (not b!5930042) (not bm!470675) (not bm!470690) (not d!1859408) (not d!1859422) (not bm!470701) (not bm!470924) (not b!5931638) (not b!5931456) (not b!5930802) (not b!5929968) (not b!5931442) (not d!1859288) (not b!5931452) (not b_lambda!222723) (not d!1859442) (not b!5930157) (not b!5931354) (not b!5929923) (not d!1859204) (not b!5931593) (not b!5930041) (not bs!1403585) (not b!5931705) (not b!5931523) (not b!5931508) (not b!5931176) (not b!5931161) (not b!5931597) (not b!5931587) (not b!5930292) (not b!5929973) (not b!5931676) (not d!1859416) (not bm!470930) (not bm!470654) (not b!5931217) (not b!5930441) (not b!5931225) (not b!5931366) (not b!5931086) (not b!5931091) (not bs!1403581) (not b!5931168) (not bm!470923) (not b!5931164) (not d!1859502) (not bm!470891) (not b!5930645) (not bm!470727) (not b!5930677) (not b!5930187) (not b!5930804) (not b!5931400) (not b!5931490) (not b!5930003) (not b!5931567) (not b!5931122) (not b!5931616) (not b!5930377) (not b!5931658) (not b!5931309) (not b!5931174) (not bm!470721) (not b!5931206) (not b!5930698) (not b!5931247) (not bm!470684) (not b!5931245) (not b!5930843) (not b!5930145) (not b!5930205) (not d!1859322) (not b!5930200) (not b!5930918) (not b!5931433) (not bm!470665) (not b!5931613) (not bm!470760) (not b!5930387) (not b!5931159) (not bm!470879) (not d!1859264) (not b!5931594) (not d!1859414) (not d!1859240) (not b!5931071) (not b!5931223) (not b!5931528) (not b!5930260) (not bm!470664) (not bs!1403588) (not b!5930847) (not b!5931511) (not d!1859178) (not b!5931356) (not b!5931473) (not b!5931617) (not b!5931214) (not b!5930374) (not b!5931327) (not bs!1403590) (not b_lambda!222761) (not b!5931557) (not bm!470840) (not b!5929983) (not b_lambda!222777) (not b!5930169) (not b!5931438) (not b!5931470) (not b!5931602) (not b!5931683) (not b!5931464) (not b!5931591) (not b!5930314) (not b!5930193) (not b!5931250) (not d!1859202) (not b!5930617) (not b!5931342) (not b!5931294) (not b_lambda!222759) (not bm!470813) (not bm!470797) (not b!5929989) (not b!5931193) (not b!5931537) (not b!5931255) (not b!5930066) (not b!5930189) (not b!5931405) (not bm!470916) (not b!5931328) (not b!5931556) (not b!5930146) (not bm!470834) (not b!5930191) (not d!1859512) (not b!5930975) (not b!5931241) (not b!5931401) (not bm!470736) (not b!5931098) (not b!5931570) (not b!5931540) (not b!5931321) (not b!5931444) (not b!5931110) (not b!5931329) (not b!5931525) (not b!5931390) (not b!5931274) (not b!5930994) (not d!1859488) (not b!5931426) (not b!5931165) (not b!5931694) (not b!5931350) (not b!5930433) (not b!5930778) (not d!1859340) (not b!5931177) (not b!5931702) (not bm!470683) (not b!5931625) (not bm!470685) (not b!5931460) (not bm!470672) (not b!5931116) (not b!5930349) (not b!5931500) (not b!5931347) (not bm!470750) (not b!5931414) (not d!1859568) (not b!5931343) (not b!5929958) (not b!5931102) (not b!5931543) (not b!5931516) (not b!5930364) (not b!5931417) (not b!5931704) (not b!5931282) (not b!5930718) (not d!1859628) (not bm!470707) (not b!5930415) (not b!5929954) (not b!5930306) (not b!5931218) (not b!5930352) (not b!5931371) (not b!5931688) (not b!5929945) (not b!5931406) (not b!5930172) (not b!5931531) (not b!5930826) (not b!5931679) (not bm!470931) (not b!5931536) (not b!5931632) (not b!5931462) (not bm!470671) (not b!5930629) (not b!5930736) (not b!5931706) (not b!5931198) (not b!5931308) (not bm!470774) (not b!5931612) (not b!5931585) (not b!5931522) (not b!5931674) (not b!5931480) (not b!5931233) (not b!5931141) (not b!5931304) (not b!5931502) (not b!5930155) (not bm!470837) (not b!5931577) (not b!5931189) (not bm!470849) (not b!5931259) (not bm!470674) (not b!5931324) (not d!1859402) (not b!5931120) (not b!5930398) (not b!5930740) (not b!5931231) (not b!5931394) (not b!5930957) (not b!5930841) (not d!1859164) (not b!5931312) (not b_lambda!222773) (not b!5931075) (not b!5931303) (not b!5930811) (not b!5931398) (not b!5931251) (not b!5931290) (not b!5931226) (not b!5931412) (not b!5931166) (not bm!470732) (not bm!470811) (not b!5931396) (not d!1859428) (not b!5931221) (not b!5931603) (not b!5931472) (not b!5930340) (not b!5931430) (not b!5931230) (not bm!470754) (not b!5930875) (not b!5931598) (not b!5931690) (not b!5930963) (not bm!470825) (not bm!470915) (not b!5931363) (not b!5930869) (not b!5930729) (not b!5931420) (not b!5931609) (not bm!470653) (not b!5930813) (not b!5931360) (not b!5931375) (not b!5931173) (not b!5929988) (not b!5931640) (not bm!470929) (not d!1859486) (not b!5930631) (not b!5930971) (not setNonEmpty!40257) (not bm!470821) (not d!1859166) (not b!5930839) (not b!5931446) (not b!5931402) (not d!1859588) (not b!5931389) tp_is_empty!41207 (not bm!470758) (not b!5931144) (not bs!1403582) (not b!5931686) (not bm!470647) (not b!5931573) (not b!5931178) (not b!5931320) (not b!5931512) (not b!5930051) (not b!5931644) (not b!5931108) (not b!5931563) (not bm!470880) (not b!5931569) (not d!1859624) (not b!5930803) (not b!5931272) (not b!5931687) (not b!5931524) (not b!5931449) (not b!5931675) (not bm!470829) (not b!5931458) (not b!5931285) (not d!1859424) (not b!5931149) (not b!5931184) (not b!5930980) (not b!5931180) (not bm!470841) (not b!5931608) (not b_lambda!222719) (not bm!470939) (not b!5931258) (not b!5931380) (not setNonEmpty!40258) (not d!1859348) (not bm!470828) (not b!5931590) (not b!5930106) (not b!5930091) (not bs!1403583) (not bm!470689) (not b!5931504) (not b_lambda!222711) (not b!5930898) (not b!5931486) (not bm!470782) (not bm!470737) (not bm!470678) (not b!5930669) (not b!5930602) (not d!1859444) (not b!5931197) (not b!5931476) (not b!5930144) (not bm!470850) (not b!5930880) (not bm!470858) (not b!5931599) (not b!5931348) (not b!5931295) (not b!5930202) (not bm!470756) (not b!5930012) (not b!5931103) (not b!5931416) (not b!5931104) (not bm!470749) (not bm!470757) (not d!1859268) (not b!5931533) (not b!5931629) (not b!5931195) (not bm!470712) (not b!5931157) (not bm!470720) (not b!5931529) (not b!5930077) (not b!5931696) (not bm!470769) (not b!5930451) (not b!5931117) (not b!5931575) (not bm!470658) (not bm!470914) (not b!5930724) (not b!5931140) (not b!5931083) (not d!1859168) (not b!5929984) (not bm!470726) (not bm!470709) (not b!5931659) (not b!5930088) (not b!5931201) (not b!5931284) (not b!5931457) (not bm!470642) (not bm!470743) (not b!5931478) (not bm!470796) (not bm!470886) (not b!5930970) (not d!1859278) (not b!5930124) (not b!5930294) (not b!5931409) (not b!5931323) (not b!5931151) (not bm!470836) (not b!5930159) (not b!5931425) (not bm!470804) (not bs!1403587) (not b!5931595) (not b!5930717) (not b!5931092) (not b!5931424) (not bm!470938) (not b!5931153) (not b!5931642) (not b!5931275) (not bm!470783) (not bm!470700) (not bm!470768) (not b!5930489) (not bm!470677) (not b!5931539) (not bm!470698) (not b!5931624) (not b!5929934) (not b!5930461) (not b!5931145) (not bm!470781) (not b!5931346) (not b!5930493) (not b!5931238) (not b!5930197) (not b!5931535) (not b!5931581) (not b!5930442) (not b!5930351) (not b!5930448))
(check-sat)
