; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!588104 () Bool)

(assert start!588104)

(declare-fun b!5710588 () Bool)

(assert (=> b!5710588 true))

(assert (=> b!5710588 true))

(declare-fun lambda!308097 () Int)

(declare-fun lambda!308096 () Int)

(assert (=> b!5710588 (not (= lambda!308097 lambda!308096))))

(assert (=> b!5710588 true))

(assert (=> b!5710588 true))

(declare-fun b!5710581 () Bool)

(assert (=> b!5710581 true))

(declare-fun bs!1334110 () Bool)

(declare-fun b!5710601 () Bool)

(assert (= bs!1334110 (and b!5710601 b!5710588)))

(declare-datatypes ((C!31676 0))(
  ( (C!31677 (val!25540 Int)) )
))
(declare-datatypes ((Regex!15703 0))(
  ( (ElementMatch!15703 (c!1006595 C!31676)) (Concat!24548 (regOne!31918 Regex!15703) (regTwo!31918 Regex!15703)) (EmptyExpr!15703) (Star!15703 (reg!16032 Regex!15703)) (EmptyLang!15703) (Union!15703 (regOne!31919 Regex!15703) (regTwo!31919 Regex!15703)) )
))
(declare-fun r!7292 () Regex!15703)

(declare-fun lt!2275251 () Regex!15703)

(declare-fun lambda!308099 () Int)

(assert (=> bs!1334110 (= (= lt!2275251 (regOne!31918 r!7292)) (= lambda!308099 lambda!308096))))

(assert (=> bs!1334110 (not (= lambda!308099 lambda!308097))))

(assert (=> b!5710601 true))

(assert (=> b!5710601 true))

(assert (=> b!5710601 true))

(declare-fun lambda!308100 () Int)

(assert (=> bs!1334110 (not (= lambda!308100 lambda!308096))))

(assert (=> bs!1334110 (= (= lt!2275251 (regOne!31918 r!7292)) (= lambda!308100 lambda!308097))))

(assert (=> b!5710601 (not (= lambda!308100 lambda!308099))))

(assert (=> b!5710601 true))

(assert (=> b!5710601 true))

(assert (=> b!5710601 true))

(declare-fun bs!1334111 () Bool)

(declare-fun b!5710614 () Bool)

(assert (= bs!1334111 (and b!5710614 b!5710588)))

(declare-datatypes ((List!63408 0))(
  ( (Nil!63284) (Cons!63284 (h!69732 C!31676) (t!376728 List!63408)) )
))
(declare-datatypes ((tuple2!65600 0))(
  ( (tuple2!65601 (_1!36103 List!63408) (_2!36103 List!63408)) )
))
(declare-fun lt!2275258 () tuple2!65600)

(declare-fun s!2326 () List!63408)

(declare-fun lambda!308101 () Int)

(assert (=> bs!1334111 (= (and (= (_1!36103 lt!2275258) s!2326) (= (reg!16032 (regOne!31918 r!7292)) (regOne!31918 r!7292)) (= lt!2275251 (regTwo!31918 r!7292))) (= lambda!308101 lambda!308096))))

(assert (=> bs!1334111 (not (= lambda!308101 lambda!308097))))

(declare-fun bs!1334112 () Bool)

(assert (= bs!1334112 (and b!5710614 b!5710601)))

(assert (=> bs!1334112 (= (and (= (_1!36103 lt!2275258) s!2326) (= (reg!16032 (regOne!31918 r!7292)) lt!2275251) (= lt!2275251 (regTwo!31918 r!7292))) (= lambda!308101 lambda!308099))))

(assert (=> bs!1334112 (not (= lambda!308101 lambda!308100))))

(assert (=> b!5710614 true))

(assert (=> b!5710614 true))

(assert (=> b!5710614 true))

(declare-fun lambda!308102 () Int)

(assert (=> bs!1334111 (not (= lambda!308102 lambda!308096))))

(assert (=> bs!1334111 (not (= lambda!308102 lambda!308097))))

(assert (=> bs!1334112 (not (= lambda!308102 lambda!308099))))

(assert (=> bs!1334112 (not (= lambda!308102 lambda!308100))))

(assert (=> b!5710614 (not (= lambda!308102 lambda!308101))))

(assert (=> b!5710614 true))

(assert (=> b!5710614 true))

(assert (=> b!5710614 true))

(declare-fun lambda!308103 () Int)

(assert (=> bs!1334111 (not (= lambda!308103 lambda!308096))))

(assert (=> bs!1334111 (= (and (= (_1!36103 lt!2275258) s!2326) (= (reg!16032 (regOne!31918 r!7292)) (regOne!31918 r!7292)) (= lt!2275251 (regTwo!31918 r!7292))) (= lambda!308103 lambda!308097))))

(assert (=> bs!1334112 (not (= lambda!308103 lambda!308099))))

(assert (=> bs!1334112 (= (and (= (_1!36103 lt!2275258) s!2326) (= (reg!16032 (regOne!31918 r!7292)) lt!2275251) (= lt!2275251 (regTwo!31918 r!7292))) (= lambda!308103 lambda!308100))))

(assert (=> b!5710614 (not (= lambda!308103 lambda!308101))))

(assert (=> b!5710614 (not (= lambda!308103 lambda!308102))))

(assert (=> b!5710614 true))

(assert (=> b!5710614 true))

(assert (=> b!5710614 true))

(declare-fun e!3512361 () Bool)

(declare-fun e!3512368 () Bool)

(assert (=> b!5710581 (= e!3512361 e!3512368)))

(declare-fun res!2410693 () Bool)

(assert (=> b!5710581 (=> res!2410693 e!3512368)))

(get-info :version)

(assert (=> b!5710581 (= res!2410693 (or (and ((_ is ElementMatch!15703) (regOne!31918 r!7292)) (= (c!1006595 (regOne!31918 r!7292)) (h!69732 s!2326))) ((_ is Union!15703) (regOne!31918 r!7292))))))

(declare-datatypes ((Unit!156344 0))(
  ( (Unit!156345) )
))
(declare-fun lt!2275240 () Unit!156344)

(declare-fun e!3512374 () Unit!156344)

(assert (=> b!5710581 (= lt!2275240 e!3512374)))

(declare-fun c!1006594 () Bool)

(declare-datatypes ((List!63409 0))(
  ( (Nil!63285) (Cons!63285 (h!69733 Regex!15703) (t!376729 List!63409)) )
))
(declare-datatypes ((Context!10174 0))(
  ( (Context!10175 (exprs!5587 List!63409)) )
))
(declare-datatypes ((List!63410 0))(
  ( (Nil!63286) (Cons!63286 (h!69734 Context!10174) (t!376730 List!63410)) )
))
(declare-fun zl!343 () List!63410)

(declare-fun nullable!5735 (Regex!15703) Bool)

(assert (=> b!5710581 (= c!1006594 (nullable!5735 (h!69733 (exprs!5587 (h!69734 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10174))

(declare-fun lambda!308098 () Int)

(declare-fun flatMap!1316 ((InoxSet Context!10174) Int) (InoxSet Context!10174))

(declare-fun derivationStepZipperUp!971 (Context!10174 C!31676) (InoxSet Context!10174))

(assert (=> b!5710581 (= (flatMap!1316 z!1189 lambda!308098) (derivationStepZipperUp!971 (h!69734 zl!343) (h!69732 s!2326)))))

(declare-fun lt!2275278 () Unit!156344)

(declare-fun lemmaFlatMapOnSingletonSet!848 ((InoxSet Context!10174) Context!10174 Int) Unit!156344)

(assert (=> b!5710581 (= lt!2275278 (lemmaFlatMapOnSingletonSet!848 z!1189 (h!69734 zl!343) lambda!308098))))

(declare-fun lt!2275249 () (InoxSet Context!10174))

(declare-fun lt!2275259 () Context!10174)

(assert (=> b!5710581 (= lt!2275249 (derivationStepZipperUp!971 lt!2275259 (h!69732 s!2326)))))

(declare-fun lt!2275275 () (InoxSet Context!10174))

(declare-fun derivationStepZipperDown!1045 (Regex!15703 Context!10174 C!31676) (InoxSet Context!10174))

(assert (=> b!5710581 (= lt!2275275 (derivationStepZipperDown!1045 (h!69733 (exprs!5587 (h!69734 zl!343))) lt!2275259 (h!69732 s!2326)))))

(assert (=> b!5710581 (= lt!2275259 (Context!10175 (t!376729 (exprs!5587 (h!69734 zl!343)))))))

(declare-fun lt!2275260 () (InoxSet Context!10174))

(assert (=> b!5710581 (= lt!2275260 (derivationStepZipperUp!971 (Context!10175 (Cons!63285 (h!69733 (exprs!5587 (h!69734 zl!343))) (t!376729 (exprs!5587 (h!69734 zl!343))))) (h!69732 s!2326)))))

(declare-fun b!5710582 () Bool)

(declare-fun e!3512356 () Bool)

(declare-fun matchZipper!1841 ((InoxSet Context!10174) List!63408) Bool)

(assert (=> b!5710582 (= e!3512356 (matchZipper!1841 lt!2275249 (t!376728 s!2326)))))

(declare-fun b!5710583 () Bool)

(declare-fun e!3512366 () Bool)

(declare-fun e!3512370 () Bool)

(assert (=> b!5710583 (= e!3512366 (not e!3512370))))

(declare-fun res!2410689 () Bool)

(assert (=> b!5710583 (=> res!2410689 e!3512370)))

(assert (=> b!5710583 (= res!2410689 (not ((_ is Cons!63286) zl!343)))))

(declare-fun lt!2275233 () Bool)

(declare-fun lt!2275247 () Bool)

(assert (=> b!5710583 (= lt!2275233 lt!2275247)))

(declare-fun matchRSpec!2806 (Regex!15703 List!63408) Bool)

(assert (=> b!5710583 (= lt!2275247 (matchRSpec!2806 r!7292 s!2326))))

(declare-fun matchR!7888 (Regex!15703 List!63408) Bool)

(assert (=> b!5710583 (= lt!2275233 (matchR!7888 r!7292 s!2326))))

(declare-fun lt!2275253 () Unit!156344)

(declare-fun mainMatchTheorem!2806 (Regex!15703 List!63408) Unit!156344)

(assert (=> b!5710583 (= lt!2275253 (mainMatchTheorem!2806 r!7292 s!2326))))

(declare-fun b!5710584 () Bool)

(declare-fun e!3512358 () Bool)

(declare-fun tp!1582879 () Bool)

(assert (=> b!5710584 (= e!3512358 tp!1582879)))

(declare-fun b!5710585 () Bool)

(declare-fun res!2410711 () Bool)

(declare-fun e!3512363 () Bool)

(assert (=> b!5710585 (=> res!2410711 e!3512363)))

(declare-fun lt!2275237 () Regex!15703)

(assert (=> b!5710585 (= res!2410711 (not (= lt!2275237 r!7292)))))

(declare-fun b!5710587 () Bool)

(declare-fun e!3512372 () Bool)

(assert (=> b!5710587 (= e!3512368 e!3512372)))

(declare-fun res!2410692 () Bool)

(assert (=> b!5710587 (=> res!2410692 e!3512372)))

(declare-fun lt!2275235 () (InoxSet Context!10174))

(assert (=> b!5710587 (= res!2410692 (not (= lt!2275275 lt!2275235)))))

(declare-fun lt!2275232 () Context!10174)

(assert (=> b!5710587 (= lt!2275235 (derivationStepZipperDown!1045 (reg!16032 (regOne!31918 r!7292)) lt!2275232 (h!69732 s!2326)))))

(declare-fun lt!2275248 () List!63409)

(assert (=> b!5710587 (= lt!2275232 (Context!10175 lt!2275248))))

(assert (=> b!5710587 (= lt!2275248 (Cons!63285 lt!2275251 (t!376729 (exprs!5587 (h!69734 zl!343)))))))

(assert (=> b!5710587 (= lt!2275251 (Star!15703 (reg!16032 (regOne!31918 r!7292))))))

(assert (=> b!5710588 (= e!3512370 e!3512361)))

(declare-fun res!2410700 () Bool)

(assert (=> b!5710588 (=> res!2410700 e!3512361)))

(declare-fun lt!2275254 () Bool)

(assert (=> b!5710588 (= res!2410700 (or (not (= lt!2275233 lt!2275254)) ((_ is Nil!63284) s!2326)))))

(declare-fun Exists!2803 (Int) Bool)

(assert (=> b!5710588 (= (Exists!2803 lambda!308096) (Exists!2803 lambda!308097))))

(declare-fun lt!2275243 () Unit!156344)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1432 (Regex!15703 Regex!15703 List!63408) Unit!156344)

(assert (=> b!5710588 (= lt!2275243 (lemmaExistCutMatchRandMatchRSpecEquivalent!1432 (regOne!31918 r!7292) (regTwo!31918 r!7292) s!2326))))

(assert (=> b!5710588 (= lt!2275254 (Exists!2803 lambda!308096))))

(declare-datatypes ((Option!15712 0))(
  ( (None!15711) (Some!15711 (v!51766 tuple2!65600)) )
))
(declare-fun isDefined!12415 (Option!15712) Bool)

(declare-fun findConcatSeparation!2126 (Regex!15703 Regex!15703 List!63408 List!63408 List!63408) Option!15712)

(assert (=> b!5710588 (= lt!2275254 (isDefined!12415 (findConcatSeparation!2126 (regOne!31918 r!7292) (regTwo!31918 r!7292) Nil!63284 s!2326 s!2326)))))

(declare-fun lt!2275239 () Unit!156344)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1890 (Regex!15703 Regex!15703 List!63408) Unit!156344)

(assert (=> b!5710588 (= lt!2275239 (lemmaFindConcatSeparationEquivalentToExists!1890 (regOne!31918 r!7292) (regTwo!31918 r!7292) s!2326))))

(declare-fun b!5710589 () Bool)

(declare-fun res!2410688 () Bool)

(assert (=> b!5710589 (=> res!2410688 e!3512370)))

(assert (=> b!5710589 (= res!2410688 (not ((_ is Cons!63285) (exprs!5587 (h!69734 zl!343)))))))

(declare-fun setIsEmpty!38237 () Bool)

(declare-fun setRes!38237 () Bool)

(assert (=> setIsEmpty!38237 setRes!38237))

(declare-fun b!5710590 () Bool)

(declare-fun e!3512364 () Bool)

(declare-fun e!3512359 () Bool)

(assert (=> b!5710590 (= e!3512364 e!3512359)))

(declare-fun res!2410715 () Bool)

(assert (=> b!5710590 (=> res!2410715 e!3512359)))

(declare-fun lt!2275271 () Context!10174)

(declare-fun lt!2275277 () Regex!15703)

(declare-fun unfocusZipper!1445 (List!63410) Regex!15703)

(assert (=> b!5710590 (= res!2410715 (not (= (unfocusZipper!1445 (Cons!63286 lt!2275271 Nil!63286)) lt!2275277)))))

(declare-fun lt!2275273 () Regex!15703)

(assert (=> b!5710590 (= lt!2275277 (Concat!24548 (reg!16032 (regOne!31918 r!7292)) lt!2275273))))

(declare-fun b!5710591 () Bool)

(declare-fun e!3512354 () Bool)

(declare-fun tp!1582875 () Bool)

(declare-fun tp!1582874 () Bool)

(assert (=> b!5710591 (= e!3512354 (and tp!1582875 tp!1582874))))

(declare-fun b!5710592 () Bool)

(declare-fun e!3512365 () Bool)

(assert (=> b!5710592 (= e!3512365 (or (not lt!2275233) lt!2275247))))

(declare-fun b!5710593 () Bool)

(declare-fun res!2410702 () Bool)

(declare-fun e!3512353 () Bool)

(assert (=> b!5710593 (=> res!2410702 e!3512353)))

(declare-fun isEmpty!35152 (List!63408) Bool)

(assert (=> b!5710593 (= res!2410702 (isEmpty!35152 (_1!36103 lt!2275258)))))

(declare-fun b!5710594 () Bool)

(assert (=> b!5710594 (= e!3512372 e!3512363)))

(declare-fun res!2410687 () Bool)

(assert (=> b!5710594 (=> res!2410687 e!3512363)))

(declare-fun lt!2275265 () (InoxSet Context!10174))

(assert (=> b!5710594 (= res!2410687 (not (= lt!2275265 lt!2275235)))))

(declare-fun lt!2275238 () (InoxSet Context!10174))

(assert (=> b!5710594 (= (flatMap!1316 lt!2275238 lambda!308098) (derivationStepZipperUp!971 lt!2275271 (h!69732 s!2326)))))

(declare-fun lt!2275236 () Unit!156344)

(assert (=> b!5710594 (= lt!2275236 (lemmaFlatMapOnSingletonSet!848 lt!2275238 lt!2275271 lambda!308098))))

(declare-fun lt!2275250 () (InoxSet Context!10174))

(assert (=> b!5710594 (= lt!2275250 (derivationStepZipperUp!971 lt!2275271 (h!69732 s!2326)))))

(declare-fun derivationStepZipper!1786 ((InoxSet Context!10174) C!31676) (InoxSet Context!10174))

(assert (=> b!5710594 (= lt!2275265 (derivationStepZipper!1786 lt!2275238 (h!69732 s!2326)))))

(assert (=> b!5710594 (= lt!2275238 (store ((as const (Array Context!10174 Bool)) false) lt!2275271 true))))

(assert (=> b!5710594 (= lt!2275271 (Context!10175 (Cons!63285 (reg!16032 (regOne!31918 r!7292)) lt!2275248)))))

(declare-fun b!5710595 () Bool)

(declare-fun res!2410701 () Bool)

(assert (=> b!5710595 (=> res!2410701 e!3512353)))

(assert (=> b!5710595 (= res!2410701 (not (matchR!7888 lt!2275251 (_1!36103 lt!2275258))))))

(declare-fun b!5710596 () Bool)

(declare-fun res!2410686 () Bool)

(assert (=> b!5710596 (=> res!2410686 e!3512370)))

(declare-fun generalisedUnion!1566 (List!63409) Regex!15703)

(declare-fun unfocusZipperList!1131 (List!63410) List!63409)

(assert (=> b!5710596 (= res!2410686 (not (= r!7292 (generalisedUnion!1566 (unfocusZipperList!1131 zl!343)))))))

(declare-fun b!5710597 () Bool)

(declare-fun res!2410705 () Bool)

(declare-fun e!3512362 () Bool)

(assert (=> b!5710597 (=> (not res!2410705) (not e!3512362))))

(declare-fun toList!9487 ((InoxSet Context!10174)) List!63410)

(assert (=> b!5710597 (= res!2410705 (= (toList!9487 z!1189) zl!343))))

(declare-fun b!5710598 () Bool)

(declare-fun res!2410699 () Bool)

(assert (=> b!5710598 (=> res!2410699 e!3512368)))

(declare-fun e!3512360 () Bool)

(assert (=> b!5710598 (= res!2410699 e!3512360)))

(declare-fun res!2410713 () Bool)

(assert (=> b!5710598 (=> (not res!2410713) (not e!3512360))))

(assert (=> b!5710598 (= res!2410713 ((_ is Concat!24548) (regOne!31918 r!7292)))))

(declare-fun b!5710599 () Bool)

(declare-fun Unit!156346 () Unit!156344)

(assert (=> b!5710599 (= e!3512374 Unit!156346)))

(declare-fun b!5710586 () Bool)

(declare-fun e!3512369 () Bool)

(declare-fun e!3512357 () Bool)

(assert (=> b!5710586 (= e!3512369 e!3512357)))

(declare-fun res!2410710 () Bool)

(assert (=> b!5710586 (=> res!2410710 e!3512357)))

(assert (=> b!5710586 (= res!2410710 (not lt!2275233))))

(assert (=> b!5710586 e!3512365))

(declare-fun res!2410707 () Bool)

(assert (=> b!5710586 (=> (not res!2410707) (not e!3512365))))

(assert (=> b!5710586 (= res!2410707 (= (matchR!7888 lt!2275277 s!2326) (matchRSpec!2806 lt!2275277 s!2326)))))

(declare-fun lt!2275245 () Unit!156344)

(assert (=> b!5710586 (= lt!2275245 (mainMatchTheorem!2806 lt!2275277 s!2326))))

(declare-fun res!2410708 () Bool)

(assert (=> start!588104 (=> (not res!2410708) (not e!3512362))))

(declare-fun validRegex!7439 (Regex!15703) Bool)

(assert (=> start!588104 (= res!2410708 (validRegex!7439 r!7292))))

(assert (=> start!588104 e!3512362))

(assert (=> start!588104 e!3512354))

(declare-fun condSetEmpty!38237 () Bool)

(assert (=> start!588104 (= condSetEmpty!38237 (= z!1189 ((as const (Array Context!10174 Bool)) false)))))

(assert (=> start!588104 setRes!38237))

(declare-fun e!3512371 () Bool)

(assert (=> start!588104 e!3512371))

(declare-fun e!3512367 () Bool)

(assert (=> start!588104 e!3512367))

(declare-fun b!5710600 () Bool)

(declare-fun res!2410698 () Bool)

(assert (=> b!5710600 (=> res!2410698 e!3512368)))

(assert (=> b!5710600 (= res!2410698 (or ((_ is Concat!24548) (regOne!31918 r!7292)) (not ((_ is Star!15703) (regOne!31918 r!7292)))))))

(assert (=> b!5710601 (= e!3512357 e!3512353)))

(declare-fun res!2410714 () Bool)

(assert (=> b!5710601 (=> res!2410714 e!3512353)))

(declare-fun ++!13895 (List!63408 List!63408) List!63408)

(assert (=> b!5710601 (= res!2410714 (not (= (++!13895 (_1!36103 lt!2275258) (_2!36103 lt!2275258)) s!2326)))))

(declare-fun lt!2275246 () Option!15712)

(declare-fun get!21814 (Option!15712) tuple2!65600)

(assert (=> b!5710601 (= lt!2275258 (get!21814 lt!2275246))))

(assert (=> b!5710601 (= (Exists!2803 lambda!308099) (Exists!2803 lambda!308100))))

(declare-fun lt!2275234 () Unit!156344)

(assert (=> b!5710601 (= lt!2275234 (lemmaExistCutMatchRandMatchRSpecEquivalent!1432 lt!2275251 (regTwo!31918 r!7292) s!2326))))

(assert (=> b!5710601 (= (isDefined!12415 lt!2275246) (Exists!2803 lambda!308099))))

(assert (=> b!5710601 (= lt!2275246 (findConcatSeparation!2126 lt!2275251 (regTwo!31918 r!7292) Nil!63284 s!2326 s!2326))))

(declare-fun lt!2275267 () Unit!156344)

(assert (=> b!5710601 (= lt!2275267 (lemmaFindConcatSeparationEquivalentToExists!1890 lt!2275251 (regTwo!31918 r!7292) s!2326))))

(declare-fun b!5710602 () Bool)

(declare-fun res!2410690 () Bool)

(assert (=> b!5710602 (=> res!2410690 e!3512369)))

(assert (=> b!5710602 (= res!2410690 (not (= (unfocusZipper!1445 (Cons!63286 lt!2275232 Nil!63286)) lt!2275273)))))

(declare-fun b!5710603 () Bool)

(declare-fun res!2410706 () Bool)

(assert (=> b!5710603 (=> res!2410706 e!3512353)))

(assert (=> b!5710603 (= res!2410706 (not (matchR!7888 (regTwo!31918 r!7292) (_2!36103 lt!2275258))))))

(declare-fun b!5710604 () Bool)

(declare-fun tp!1582876 () Bool)

(assert (=> b!5710604 (= e!3512354 tp!1582876)))

(declare-fun e!3512373 () Bool)

(declare-fun tp!1582878 () Bool)

(declare-fun b!5710605 () Bool)

(declare-fun inv!82504 (Context!10174) Bool)

(assert (=> b!5710605 (= e!3512371 (and (inv!82504 (h!69734 zl!343)) e!3512373 tp!1582878))))

(declare-fun setElem!38237 () Context!10174)

(declare-fun setNonEmpty!38237 () Bool)

(declare-fun tp!1582882 () Bool)

(assert (=> setNonEmpty!38237 (= setRes!38237 (and tp!1582882 (inv!82504 setElem!38237) e!3512358))))

(declare-fun setRest!38237 () (InoxSet Context!10174))

(assert (=> setNonEmpty!38237 (= z!1189 ((_ map or) (store ((as const (Array Context!10174 Bool)) false) setElem!38237 true) setRest!38237))))

(declare-fun b!5710606 () Bool)

(declare-fun res!2410709 () Bool)

(assert (=> b!5710606 (=> res!2410709 e!3512370)))

(declare-fun generalisedConcat!1318 (List!63409) Regex!15703)

(assert (=> b!5710606 (= res!2410709 (not (= r!7292 (generalisedConcat!1318 (exprs!5587 (h!69734 zl!343))))))))

(declare-fun b!5710607 () Bool)

(assert (=> b!5710607 (= e!3512360 (nullable!5735 (regOne!31918 (regOne!31918 r!7292))))))

(declare-fun b!5710608 () Bool)

(declare-fun e!3512355 () Bool)

(declare-fun lt!2275263 () List!63408)

(assert (=> b!5710608 (= e!3512355 (= lt!2275263 s!2326))))

(declare-fun lt!2275276 () tuple2!65600)

(declare-fun lt!2275255 () List!63408)

(assert (=> b!5710608 (= lt!2275263 (++!13895 (_1!36103 lt!2275276) lt!2275255))))

(declare-fun lt!2275252 () List!63408)

(assert (=> b!5710608 (= lt!2275263 (++!13895 lt!2275252 (_2!36103 lt!2275258)))))

(assert (=> b!5710608 (= lt!2275255 (++!13895 (_2!36103 lt!2275276) (_2!36103 lt!2275258)))))

(declare-fun lt!2275244 () Unit!156344)

(declare-fun lemmaConcatAssociativity!2870 (List!63408 List!63408 List!63408) Unit!156344)

(assert (=> b!5710608 (= lt!2275244 (lemmaConcatAssociativity!2870 (_1!36103 lt!2275276) (_2!36103 lt!2275276) (_2!36103 lt!2275258)))))

(declare-fun b!5710609 () Bool)

(declare-fun tp_is_empty!40659 () Bool)

(assert (=> b!5710609 (= e!3512354 tp_is_empty!40659)))

(declare-fun b!5710610 () Bool)

(declare-fun tp!1582881 () Bool)

(declare-fun tp!1582877 () Bool)

(assert (=> b!5710610 (= e!3512354 (and tp!1582881 tp!1582877))))

(declare-fun b!5710611 () Bool)

(declare-fun res!2410704 () Bool)

(assert (=> b!5710611 (=> res!2410704 e!3512370)))

(declare-fun isEmpty!35153 (List!63410) Bool)

(assert (=> b!5710611 (= res!2410704 (not (isEmpty!35153 (t!376730 zl!343))))))

(declare-fun b!5710612 () Bool)

(declare-fun res!2410696 () Bool)

(assert (=> b!5710612 (=> res!2410696 e!3512363)))

(assert (=> b!5710612 (= res!2410696 (not (= (matchZipper!1841 lt!2275238 s!2326) (matchZipper!1841 lt!2275265 (t!376728 s!2326)))))))

(declare-fun b!5710613 () Bool)

(declare-fun res!2410697 () Bool)

(assert (=> b!5710613 (=> res!2410697 e!3512370)))

(assert (=> b!5710613 (= res!2410697 (or ((_ is EmptyExpr!15703) r!7292) ((_ is EmptyLang!15703) r!7292) ((_ is ElementMatch!15703) r!7292) ((_ is Union!15703) r!7292) (not ((_ is Concat!24548) r!7292))))))

(assert (=> b!5710614 (= e!3512353 e!3512355)))

(declare-fun res!2410691 () Bool)

(assert (=> b!5710614 (=> res!2410691 e!3512355)))

(assert (=> b!5710614 (= res!2410691 (not (= (_1!36103 lt!2275258) lt!2275252)))))

(assert (=> b!5710614 (= lt!2275252 (++!13895 (_1!36103 lt!2275276) (_2!36103 lt!2275276)))))

(declare-fun lt!2275268 () Option!15712)

(assert (=> b!5710614 (= lt!2275276 (get!21814 lt!2275268))))

(assert (=> b!5710614 (= (Exists!2803 lambda!308101) (Exists!2803 lambda!308103))))

(declare-fun lt!2275261 () Unit!156344)

(assert (=> b!5710614 (= lt!2275261 (lemmaExistCutMatchRandMatchRSpecEquivalent!1432 (reg!16032 (regOne!31918 r!7292)) lt!2275251 (_1!36103 lt!2275258)))))

(assert (=> b!5710614 (= (Exists!2803 lambda!308101) (Exists!2803 lambda!308102))))

(declare-fun lt!2275270 () Unit!156344)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!540 (Regex!15703 List!63408) Unit!156344)

(assert (=> b!5710614 (= lt!2275270 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!540 (reg!16032 (regOne!31918 r!7292)) (_1!36103 lt!2275258)))))

(assert (=> b!5710614 (= (isDefined!12415 lt!2275268) (Exists!2803 lambda!308101))))

(assert (=> b!5710614 (= lt!2275268 (findConcatSeparation!2126 (reg!16032 (regOne!31918 r!7292)) lt!2275251 Nil!63284 (_1!36103 lt!2275258) (_1!36103 lt!2275258)))))

(declare-fun lt!2275262 () Unit!156344)

(assert (=> b!5710614 (= lt!2275262 (lemmaFindConcatSeparationEquivalentToExists!1890 (reg!16032 (regOne!31918 r!7292)) lt!2275251 (_1!36103 lt!2275258)))))

(assert (=> b!5710614 (matchRSpec!2806 lt!2275251 (_1!36103 lt!2275258))))

(declare-fun lt!2275274 () Unit!156344)

(assert (=> b!5710614 (= lt!2275274 (mainMatchTheorem!2806 lt!2275251 (_1!36103 lt!2275258)))))

(declare-fun b!5710615 () Bool)

(assert (=> b!5710615 (= e!3512363 e!3512364)))

(declare-fun res!2410685 () Bool)

(assert (=> b!5710615 (=> res!2410685 e!3512364)))

(assert (=> b!5710615 (= res!2410685 (not (= r!7292 lt!2275273)))))

(assert (=> b!5710615 (= lt!2275273 (Concat!24548 lt!2275251 (regTwo!31918 r!7292)))))

(declare-fun b!5710616 () Bool)

(declare-fun tp!1582880 () Bool)

(assert (=> b!5710616 (= e!3512373 tp!1582880)))

(declare-fun b!5710617 () Bool)

(declare-fun tp!1582873 () Bool)

(assert (=> b!5710617 (= e!3512367 (and tp_is_empty!40659 tp!1582873))))

(declare-fun b!5710618 () Bool)

(assert (=> b!5710618 (= e!3512362 e!3512366)))

(declare-fun res!2410694 () Bool)

(assert (=> b!5710618 (=> (not res!2410694) (not e!3512366))))

(assert (=> b!5710618 (= res!2410694 (= r!7292 lt!2275237))))

(assert (=> b!5710618 (= lt!2275237 (unfocusZipper!1445 zl!343))))

(declare-fun b!5710619 () Bool)

(declare-fun Unit!156347 () Unit!156344)

(assert (=> b!5710619 (= e!3512374 Unit!156347)))

(declare-fun lt!2275272 () Unit!156344)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!728 ((InoxSet Context!10174) (InoxSet Context!10174) List!63408) Unit!156344)

(assert (=> b!5710619 (= lt!2275272 (lemmaZipperConcatMatchesSameAsBothZippers!728 lt!2275275 lt!2275249 (t!376728 s!2326)))))

(declare-fun res!2410712 () Bool)

(assert (=> b!5710619 (= res!2410712 (matchZipper!1841 lt!2275275 (t!376728 s!2326)))))

(assert (=> b!5710619 (=> res!2410712 e!3512356)))

(assert (=> b!5710619 (= (matchZipper!1841 ((_ map or) lt!2275275 lt!2275249) (t!376728 s!2326)) e!3512356)))

(declare-fun b!5710620 () Bool)

(declare-fun res!2410695 () Bool)

(assert (=> b!5710620 (=> res!2410695 e!3512361)))

(declare-fun isEmpty!35154 (List!63409) Bool)

(assert (=> b!5710620 (= res!2410695 (isEmpty!35154 (t!376729 (exprs!5587 (h!69734 zl!343)))))))

(declare-fun b!5710621 () Bool)

(assert (=> b!5710621 (= e!3512359 e!3512369)))

(declare-fun res!2410703 () Bool)

(assert (=> b!5710621 (=> res!2410703 e!3512369)))

(declare-fun lt!2275241 () Context!10174)

(assert (=> b!5710621 (= res!2410703 (not (= (unfocusZipper!1445 (Cons!63286 lt!2275241 Nil!63286)) (reg!16032 (regOne!31918 r!7292)))))))

(declare-fun lt!2275242 () (InoxSet Context!10174))

(assert (=> b!5710621 (= (flatMap!1316 lt!2275242 lambda!308098) (derivationStepZipperUp!971 lt!2275232 (h!69732 s!2326)))))

(declare-fun lt!2275256 () Unit!156344)

(assert (=> b!5710621 (= lt!2275256 (lemmaFlatMapOnSingletonSet!848 lt!2275242 lt!2275232 lambda!308098))))

(declare-fun lt!2275266 () (InoxSet Context!10174))

(assert (=> b!5710621 (= (flatMap!1316 lt!2275266 lambda!308098) (derivationStepZipperUp!971 lt!2275241 (h!69732 s!2326)))))

(declare-fun lt!2275264 () Unit!156344)

(assert (=> b!5710621 (= lt!2275264 (lemmaFlatMapOnSingletonSet!848 lt!2275266 lt!2275241 lambda!308098))))

(declare-fun lt!2275269 () (InoxSet Context!10174))

(assert (=> b!5710621 (= lt!2275269 (derivationStepZipperUp!971 lt!2275232 (h!69732 s!2326)))))

(declare-fun lt!2275257 () (InoxSet Context!10174))

(assert (=> b!5710621 (= lt!2275257 (derivationStepZipperUp!971 lt!2275241 (h!69732 s!2326)))))

(assert (=> b!5710621 (= lt!2275242 (store ((as const (Array Context!10174 Bool)) false) lt!2275232 true))))

(assert (=> b!5710621 (= lt!2275266 (store ((as const (Array Context!10174 Bool)) false) lt!2275241 true))))

(assert (=> b!5710621 (= lt!2275241 (Context!10175 (Cons!63285 (reg!16032 (regOne!31918 r!7292)) Nil!63285)))))

(assert (= (and start!588104 res!2410708) b!5710597))

(assert (= (and b!5710597 res!2410705) b!5710618))

(assert (= (and b!5710618 res!2410694) b!5710583))

(assert (= (and b!5710583 (not res!2410689)) b!5710611))

(assert (= (and b!5710611 (not res!2410704)) b!5710606))

(assert (= (and b!5710606 (not res!2410709)) b!5710589))

(assert (= (and b!5710589 (not res!2410688)) b!5710596))

(assert (= (and b!5710596 (not res!2410686)) b!5710613))

(assert (= (and b!5710613 (not res!2410697)) b!5710588))

(assert (= (and b!5710588 (not res!2410700)) b!5710620))

(assert (= (and b!5710620 (not res!2410695)) b!5710581))

(assert (= (and b!5710581 c!1006594) b!5710619))

(assert (= (and b!5710581 (not c!1006594)) b!5710599))

(assert (= (and b!5710619 (not res!2410712)) b!5710582))

(assert (= (and b!5710581 (not res!2410693)) b!5710598))

(assert (= (and b!5710598 res!2410713) b!5710607))

(assert (= (and b!5710598 (not res!2410699)) b!5710600))

(assert (= (and b!5710600 (not res!2410698)) b!5710587))

(assert (= (and b!5710587 (not res!2410692)) b!5710594))

(assert (= (and b!5710594 (not res!2410687)) b!5710612))

(assert (= (and b!5710612 (not res!2410696)) b!5710585))

(assert (= (and b!5710585 (not res!2410711)) b!5710615))

(assert (= (and b!5710615 (not res!2410685)) b!5710590))

(assert (= (and b!5710590 (not res!2410715)) b!5710621))

(assert (= (and b!5710621 (not res!2410703)) b!5710602))

(assert (= (and b!5710602 (not res!2410690)) b!5710586))

(assert (= (and b!5710586 res!2410707) b!5710592))

(assert (= (and b!5710586 (not res!2410710)) b!5710601))

(assert (= (and b!5710601 (not res!2410714)) b!5710595))

(assert (= (and b!5710595 (not res!2410701)) b!5710603))

(assert (= (and b!5710603 (not res!2410706)) b!5710593))

(assert (= (and b!5710593 (not res!2410702)) b!5710614))

(assert (= (and b!5710614 (not res!2410691)) b!5710608))

(assert (= (and start!588104 ((_ is ElementMatch!15703) r!7292)) b!5710609))

(assert (= (and start!588104 ((_ is Concat!24548) r!7292)) b!5710591))

(assert (= (and start!588104 ((_ is Star!15703) r!7292)) b!5710604))

(assert (= (and start!588104 ((_ is Union!15703) r!7292)) b!5710610))

(assert (= (and start!588104 condSetEmpty!38237) setIsEmpty!38237))

(assert (= (and start!588104 (not condSetEmpty!38237)) setNonEmpty!38237))

(assert (= setNonEmpty!38237 b!5710584))

(assert (= b!5710605 b!5710616))

(assert (= (and start!588104 ((_ is Cons!63286) zl!343)) b!5710605))

(assert (= (and start!588104 ((_ is Cons!63284) s!2326)) b!5710617))

(declare-fun m!6664222 () Bool)

(assert (=> b!5710621 m!6664222))

(declare-fun m!6664224 () Bool)

(assert (=> b!5710621 m!6664224))

(declare-fun m!6664226 () Bool)

(assert (=> b!5710621 m!6664226))

(declare-fun m!6664228 () Bool)

(assert (=> b!5710621 m!6664228))

(declare-fun m!6664230 () Bool)

(assert (=> b!5710621 m!6664230))

(declare-fun m!6664232 () Bool)

(assert (=> b!5710621 m!6664232))

(declare-fun m!6664234 () Bool)

(assert (=> b!5710621 m!6664234))

(declare-fun m!6664236 () Bool)

(assert (=> b!5710621 m!6664236))

(declare-fun m!6664238 () Bool)

(assert (=> b!5710621 m!6664238))

(declare-fun m!6664240 () Bool)

(assert (=> b!5710588 m!6664240))

(declare-fun m!6664242 () Bool)

(assert (=> b!5710588 m!6664242))

(declare-fun m!6664244 () Bool)

(assert (=> b!5710588 m!6664244))

(declare-fun m!6664246 () Bool)

(assert (=> b!5710588 m!6664246))

(assert (=> b!5710588 m!6664246))

(declare-fun m!6664248 () Bool)

(assert (=> b!5710588 m!6664248))

(assert (=> b!5710588 m!6664240))

(declare-fun m!6664250 () Bool)

(assert (=> b!5710588 m!6664250))

(declare-fun m!6664252 () Bool)

(assert (=> b!5710605 m!6664252))

(declare-fun m!6664254 () Bool)

(assert (=> setNonEmpty!38237 m!6664254))

(declare-fun m!6664256 () Bool)

(assert (=> b!5710583 m!6664256))

(declare-fun m!6664258 () Bool)

(assert (=> b!5710583 m!6664258))

(declare-fun m!6664260 () Bool)

(assert (=> b!5710583 m!6664260))

(declare-fun m!6664262 () Bool)

(assert (=> b!5710587 m!6664262))

(declare-fun m!6664264 () Bool)

(assert (=> b!5710586 m!6664264))

(declare-fun m!6664266 () Bool)

(assert (=> b!5710586 m!6664266))

(declare-fun m!6664268 () Bool)

(assert (=> b!5710586 m!6664268))

(declare-fun m!6664270 () Bool)

(assert (=> b!5710608 m!6664270))

(declare-fun m!6664272 () Bool)

(assert (=> b!5710608 m!6664272))

(declare-fun m!6664274 () Bool)

(assert (=> b!5710608 m!6664274))

(declare-fun m!6664276 () Bool)

(assert (=> b!5710608 m!6664276))

(declare-fun m!6664278 () Bool)

(assert (=> start!588104 m!6664278))

(declare-fun m!6664280 () Bool)

(assert (=> b!5710620 m!6664280))

(declare-fun m!6664282 () Bool)

(assert (=> b!5710606 m!6664282))

(declare-fun m!6664284 () Bool)

(assert (=> b!5710614 m!6664284))

(declare-fun m!6664286 () Bool)

(assert (=> b!5710614 m!6664286))

(declare-fun m!6664288 () Bool)

(assert (=> b!5710614 m!6664288))

(assert (=> b!5710614 m!6664286))

(declare-fun m!6664290 () Bool)

(assert (=> b!5710614 m!6664290))

(declare-fun m!6664292 () Bool)

(assert (=> b!5710614 m!6664292))

(declare-fun m!6664294 () Bool)

(assert (=> b!5710614 m!6664294))

(assert (=> b!5710614 m!6664286))

(declare-fun m!6664296 () Bool)

(assert (=> b!5710614 m!6664296))

(declare-fun m!6664298 () Bool)

(assert (=> b!5710614 m!6664298))

(declare-fun m!6664300 () Bool)

(assert (=> b!5710614 m!6664300))

(declare-fun m!6664302 () Bool)

(assert (=> b!5710614 m!6664302))

(declare-fun m!6664304 () Bool)

(assert (=> b!5710614 m!6664304))

(declare-fun m!6664306 () Bool)

(assert (=> b!5710614 m!6664306))

(declare-fun m!6664308 () Bool)

(assert (=> b!5710619 m!6664308))

(declare-fun m!6664310 () Bool)

(assert (=> b!5710619 m!6664310))

(declare-fun m!6664312 () Bool)

(assert (=> b!5710619 m!6664312))

(declare-fun m!6664314 () Bool)

(assert (=> b!5710594 m!6664314))

(declare-fun m!6664316 () Bool)

(assert (=> b!5710594 m!6664316))

(declare-fun m!6664318 () Bool)

(assert (=> b!5710594 m!6664318))

(declare-fun m!6664320 () Bool)

(assert (=> b!5710594 m!6664320))

(declare-fun m!6664322 () Bool)

(assert (=> b!5710594 m!6664322))

(declare-fun m!6664324 () Bool)

(assert (=> b!5710581 m!6664324))

(declare-fun m!6664326 () Bool)

(assert (=> b!5710581 m!6664326))

(declare-fun m!6664328 () Bool)

(assert (=> b!5710581 m!6664328))

(declare-fun m!6664330 () Bool)

(assert (=> b!5710581 m!6664330))

(declare-fun m!6664332 () Bool)

(assert (=> b!5710581 m!6664332))

(declare-fun m!6664334 () Bool)

(assert (=> b!5710581 m!6664334))

(declare-fun m!6664336 () Bool)

(assert (=> b!5710581 m!6664336))

(declare-fun m!6664338 () Bool)

(assert (=> b!5710596 m!6664338))

(assert (=> b!5710596 m!6664338))

(declare-fun m!6664340 () Bool)

(assert (=> b!5710596 m!6664340))

(declare-fun m!6664342 () Bool)

(assert (=> b!5710607 m!6664342))

(declare-fun m!6664344 () Bool)

(assert (=> b!5710602 m!6664344))

(declare-fun m!6664346 () Bool)

(assert (=> b!5710611 m!6664346))

(declare-fun m!6664348 () Bool)

(assert (=> b!5710603 m!6664348))

(declare-fun m!6664350 () Bool)

(assert (=> b!5710612 m!6664350))

(declare-fun m!6664352 () Bool)

(assert (=> b!5710612 m!6664352))

(declare-fun m!6664354 () Bool)

(assert (=> b!5710601 m!6664354))

(declare-fun m!6664356 () Bool)

(assert (=> b!5710601 m!6664356))

(declare-fun m!6664358 () Bool)

(assert (=> b!5710601 m!6664358))

(declare-fun m!6664360 () Bool)

(assert (=> b!5710601 m!6664360))

(declare-fun m!6664362 () Bool)

(assert (=> b!5710601 m!6664362))

(declare-fun m!6664364 () Bool)

(assert (=> b!5710601 m!6664364))

(declare-fun m!6664366 () Bool)

(assert (=> b!5710601 m!6664366))

(declare-fun m!6664368 () Bool)

(assert (=> b!5710601 m!6664368))

(assert (=> b!5710601 m!6664354))

(declare-fun m!6664370 () Bool)

(assert (=> b!5710582 m!6664370))

(declare-fun m!6664372 () Bool)

(assert (=> b!5710597 m!6664372))

(declare-fun m!6664374 () Bool)

(assert (=> b!5710590 m!6664374))

(declare-fun m!6664376 () Bool)

(assert (=> b!5710595 m!6664376))

(declare-fun m!6664378 () Bool)

(assert (=> b!5710618 m!6664378))

(declare-fun m!6664380 () Bool)

(assert (=> b!5710593 m!6664380))

(check-sat (not b!5710606) (not b!5710607) (not b!5710594) (not b!5710608) (not b!5710582) (not b!5710591) (not b!5710611) (not b!5710593) (not b!5710605) (not b!5710584) (not setNonEmpty!38237) (not b!5710581) (not b!5710604) (not b!5710596) (not b!5710602) (not b!5710583) (not b!5710587) (not b!5710603) (not b!5710620) (not b!5710617) (not b!5710586) (not b!5710588) (not b!5710621) (not b!5710595) (not b!5710601) (not b!5710590) (not b!5710614) tp_is_empty!40659 (not b!5710616) (not b!5710619) (not b!5710612) (not start!588104) (not b!5710618) (not b!5710597) (not b!5710610))
(check-sat)
