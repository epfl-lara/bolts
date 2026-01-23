; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584890 () Bool)

(assert start!584890)

(declare-fun b!5656308 () Bool)

(assert (=> b!5656308 true))

(assert (=> b!5656308 true))

(declare-fun lambda!304448 () Int)

(declare-fun lambda!304447 () Int)

(assert (=> b!5656308 (not (= lambda!304448 lambda!304447))))

(assert (=> b!5656308 true))

(assert (=> b!5656308 true))

(declare-fun b!5656316 () Bool)

(assert (=> b!5656316 true))

(declare-fun b!5656293 () Bool)

(declare-fun res!2392701 () Bool)

(declare-fun e!3483740 () Bool)

(assert (=> b!5656293 (=> res!2392701 e!3483740)))

(declare-datatypes ((C!31572 0))(
  ( (C!31573 (val!25488 Int)) )
))
(declare-datatypes ((Regex!15651 0))(
  ( (ElementMatch!15651 (c!994391 C!31572)) (Concat!24496 (regOne!31814 Regex!15651) (regTwo!31814 Regex!15651)) (EmptyExpr!15651) (Star!15651 (reg!15980 Regex!15651)) (EmptyLang!15651) (Union!15651 (regOne!31815 Regex!15651) (regTwo!31815 Regex!15651)) )
))
(declare-datatypes ((List!63252 0))(
  ( (Nil!63128) (Cons!63128 (h!69576 Regex!15651) (t!376554 List!63252)) )
))
(declare-datatypes ((Context!10070 0))(
  ( (Context!10071 (exprs!5535 List!63252)) )
))
(declare-datatypes ((List!63253 0))(
  ( (Nil!63129) (Cons!63129 (h!69577 Context!10070) (t!376555 List!63253)) )
))
(declare-fun zl!343 () List!63253)

(get-info :version)

(assert (=> b!5656293 (= res!2392701 (not ((_ is Cons!63128) (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5656294 () Bool)

(declare-fun e!3483748 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2266834 () (InoxSet Context!10070))

(declare-datatypes ((List!63254 0))(
  ( (Nil!63130) (Cons!63130 (h!69578 C!31572) (t!376556 List!63254)) )
))
(declare-fun s!2326 () List!63254)

(declare-fun matchZipper!1789 ((InoxSet Context!10070) List!63254) Bool)

(assert (=> b!5656294 (= e!3483748 (matchZipper!1789 lt!2266834 (t!376556 s!2326)))))

(declare-fun b!5656295 () Bool)

(declare-fun res!2392704 () Bool)

(assert (=> b!5656295 (=> res!2392704 e!3483740)))

(declare-fun r!7292 () Regex!15651)

(declare-fun generalisedConcat!1266 (List!63252) Regex!15651)

(assert (=> b!5656295 (= res!2392704 (not (= r!7292 (generalisedConcat!1266 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun setNonEmpty!37822 () Bool)

(declare-fun tp!1566871 () Bool)

(declare-fun setElem!37822 () Context!10070)

(declare-fun setRes!37822 () Bool)

(declare-fun e!3483745 () Bool)

(declare-fun inv!82374 (Context!10070) Bool)

(assert (=> setNonEmpty!37822 (= setRes!37822 (and tp!1566871 (inv!82374 setElem!37822) e!3483745))))

(declare-fun z!1189 () (InoxSet Context!10070))

(declare-fun setRest!37822 () (InoxSet Context!10070))

(assert (=> setNonEmpty!37822 (= z!1189 ((_ map or) (store ((as const (Array Context!10070 Bool)) false) setElem!37822 true) setRest!37822))))

(declare-fun tp!1566876 () Bool)

(declare-fun b!5656296 () Bool)

(declare-fun e!3483750 () Bool)

(declare-fun e!3483743 () Bool)

(assert (=> b!5656296 (= e!3483743 (and (inv!82374 (h!69577 zl!343)) e!3483750 tp!1566876))))

(declare-fun b!5656297 () Bool)

(declare-datatypes ((Unit!156136 0))(
  ( (Unit!156137) )
))
(declare-fun e!3483749 () Unit!156136)

(declare-fun Unit!156138 () Unit!156136)

(assert (=> b!5656297 (= e!3483749 Unit!156138)))

(declare-fun lt!2266831 () Unit!156136)

(declare-fun lt!2266828 () (InoxSet Context!10070))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!676 ((InoxSet Context!10070) (InoxSet Context!10070) List!63254) Unit!156136)

(assert (=> b!5656297 (= lt!2266831 (lemmaZipperConcatMatchesSameAsBothZippers!676 lt!2266828 lt!2266834 (t!376556 s!2326)))))

(declare-fun res!2392693 () Bool)

(assert (=> b!5656297 (= res!2392693 (matchZipper!1789 lt!2266828 (t!376556 s!2326)))))

(assert (=> b!5656297 (=> res!2392693 e!3483748)))

(assert (=> b!5656297 (= (matchZipper!1789 ((_ map or) lt!2266828 lt!2266834) (t!376556 s!2326)) e!3483748)))

(declare-fun b!5656298 () Bool)

(declare-fun res!2392702 () Bool)

(assert (=> b!5656298 (=> res!2392702 e!3483740)))

(assert (=> b!5656298 (= res!2392702 (or ((_ is EmptyExpr!15651) r!7292) ((_ is EmptyLang!15651) r!7292) ((_ is ElementMatch!15651) r!7292) ((_ is Union!15651) r!7292) (not ((_ is Concat!24496) r!7292))))))

(declare-fun b!5656299 () Bool)

(declare-fun res!2392697 () Bool)

(declare-fun e!3483744 () Bool)

(assert (=> b!5656299 (=> res!2392697 e!3483744)))

(assert (=> b!5656299 (= res!2392697 (not ((_ is Concat!24496) (regOne!31814 r!7292))))))

(declare-fun b!5656300 () Bool)

(declare-fun e!3483751 () Bool)

(declare-fun tp_is_empty!40555 () Bool)

(assert (=> b!5656300 (= e!3483751 tp_is_empty!40555)))

(declare-fun b!5656301 () Bool)

(declare-fun res!2392703 () Bool)

(assert (=> b!5656301 (=> res!2392703 e!3483744)))

(declare-fun e!3483747 () Bool)

(assert (=> b!5656301 (= res!2392703 e!3483747)))

(declare-fun res!2392706 () Bool)

(assert (=> b!5656301 (=> (not res!2392706) (not e!3483747))))

(assert (=> b!5656301 (= res!2392706 ((_ is Concat!24496) (regOne!31814 r!7292)))))

(declare-fun b!5656302 () Bool)

(declare-fun nullable!5683 (Regex!15651) Bool)

(assert (=> b!5656302 (= e!3483747 (nullable!5683 (regOne!31814 (regOne!31814 r!7292))))))

(declare-fun setIsEmpty!37822 () Bool)

(assert (=> setIsEmpty!37822 setRes!37822))

(declare-fun b!5656303 () Bool)

(declare-fun e!3483746 () Bool)

(assert (=> b!5656303 (= e!3483746 (not e!3483740))))

(declare-fun res!2392695 () Bool)

(assert (=> b!5656303 (=> res!2392695 e!3483740)))

(assert (=> b!5656303 (= res!2392695 (not ((_ is Cons!63129) zl!343)))))

(declare-fun lt!2266823 () Bool)

(declare-fun matchRSpec!2754 (Regex!15651 List!63254) Bool)

(assert (=> b!5656303 (= lt!2266823 (matchRSpec!2754 r!7292 s!2326))))

(declare-fun matchR!7836 (Regex!15651 List!63254) Bool)

(assert (=> b!5656303 (= lt!2266823 (matchR!7836 r!7292 s!2326))))

(declare-fun lt!2266832 () Unit!156136)

(declare-fun mainMatchTheorem!2754 (Regex!15651 List!63254) Unit!156136)

(assert (=> b!5656303 (= lt!2266832 (mainMatchTheorem!2754 r!7292 s!2326))))

(declare-fun b!5656304 () Bool)

(declare-fun res!2392705 () Bool)

(declare-fun e!3483753 () Bool)

(assert (=> b!5656304 (=> res!2392705 e!3483753)))

(declare-fun lt!2266837 () (InoxSet Context!10070))

(declare-fun lt!2266824 () Bool)

(assert (=> b!5656304 (= res!2392705 (not (= lt!2266824 (matchZipper!1789 lt!2266837 (t!376556 s!2326)))))))

(declare-fun b!5656305 () Bool)

(declare-fun e!3483752 () Bool)

(declare-fun tp!1566873 () Bool)

(assert (=> b!5656305 (= e!3483752 (and tp_is_empty!40555 tp!1566873))))

(declare-fun b!5656306 () Bool)

(declare-fun res!2392709 () Bool)

(assert (=> b!5656306 (=> (not res!2392709) (not e!3483746))))

(declare-fun unfocusZipper!1393 (List!63253) Regex!15651)

(assert (=> b!5656306 (= res!2392709 (= r!7292 (unfocusZipper!1393 zl!343)))))

(declare-fun b!5656307 () Bool)

(declare-fun tp!1566870 () Bool)

(assert (=> b!5656307 (= e!3483745 tp!1566870)))

(declare-fun e!3483742 () Bool)

(assert (=> b!5656308 (= e!3483740 e!3483742)))

(declare-fun res!2392708 () Bool)

(assert (=> b!5656308 (=> res!2392708 e!3483742)))

(declare-fun lt!2266830 () Bool)

(assert (=> b!5656308 (= res!2392708 (or (not (= lt!2266823 lt!2266830)) ((_ is Nil!63130) s!2326)))))

(declare-fun Exists!2751 (Int) Bool)

(assert (=> b!5656308 (= (Exists!2751 lambda!304447) (Exists!2751 lambda!304448))))

(declare-fun lt!2266841 () Unit!156136)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1380 (Regex!15651 Regex!15651 List!63254) Unit!156136)

(assert (=> b!5656308 (= lt!2266841 (lemmaExistCutMatchRandMatchRSpecEquivalent!1380 (regOne!31814 r!7292) (regTwo!31814 r!7292) s!2326))))

(assert (=> b!5656308 (= lt!2266830 (Exists!2751 lambda!304447))))

(declare-datatypes ((tuple2!65496 0))(
  ( (tuple2!65497 (_1!36051 List!63254) (_2!36051 List!63254)) )
))
(declare-datatypes ((Option!15660 0))(
  ( (None!15659) (Some!15659 (v!51706 tuple2!65496)) )
))
(declare-fun isDefined!12363 (Option!15660) Bool)

(declare-fun findConcatSeparation!2074 (Regex!15651 Regex!15651 List!63254 List!63254 List!63254) Option!15660)

(assert (=> b!5656308 (= lt!2266830 (isDefined!12363 (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) Nil!63130 s!2326 s!2326)))))

(declare-fun lt!2266825 () Unit!156136)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1838 (Regex!15651 Regex!15651 List!63254) Unit!156136)

(assert (=> b!5656308 (= lt!2266825 (lemmaFindConcatSeparationEquivalentToExists!1838 (regOne!31814 r!7292) (regTwo!31814 r!7292) s!2326))))

(declare-fun b!5656309 () Bool)

(declare-fun tp!1566877 () Bool)

(declare-fun tp!1566875 () Bool)

(assert (=> b!5656309 (= e!3483751 (and tp!1566877 tp!1566875))))

(declare-fun b!5656310 () Bool)

(declare-fun tp!1566868 () Bool)

(declare-fun tp!1566872 () Bool)

(assert (=> b!5656310 (= e!3483751 (and tp!1566868 tp!1566872))))

(declare-fun res!2392712 () Bool)

(assert (=> start!584890 (=> (not res!2392712) (not e!3483746))))

(declare-fun validRegex!7387 (Regex!15651) Bool)

(assert (=> start!584890 (= res!2392712 (validRegex!7387 r!7292))))

(assert (=> start!584890 e!3483746))

(assert (=> start!584890 e!3483751))

(declare-fun condSetEmpty!37822 () Bool)

(assert (=> start!584890 (= condSetEmpty!37822 (= z!1189 ((as const (Array Context!10070 Bool)) false)))))

(assert (=> start!584890 setRes!37822))

(assert (=> start!584890 e!3483743))

(assert (=> start!584890 e!3483752))

(declare-fun b!5656311 () Bool)

(declare-fun res!2392710 () Bool)

(assert (=> b!5656311 (=> res!2392710 e!3483740)))

(declare-fun generalisedUnion!1514 (List!63252) Regex!15651)

(declare-fun unfocusZipperList!1079 (List!63253) List!63252)

(assert (=> b!5656311 (= res!2392710 (not (= r!7292 (generalisedUnion!1514 (unfocusZipperList!1079 zl!343)))))))

(declare-fun b!5656312 () Bool)

(declare-fun res!2392698 () Bool)

(assert (=> b!5656312 (=> (not res!2392698) (not e!3483746))))

(declare-fun toList!9435 ((InoxSet Context!10070)) List!63253)

(assert (=> b!5656312 (= res!2392698 (= (toList!9435 z!1189) zl!343))))

(declare-fun b!5656313 () Bool)

(declare-fun Unit!156139 () Unit!156136)

(assert (=> b!5656313 (= e!3483749 Unit!156139)))

(declare-fun b!5656314 () Bool)

(declare-fun tp!1566869 () Bool)

(assert (=> b!5656314 (= e!3483751 tp!1566869)))

(declare-fun b!5656315 () Bool)

(declare-fun e!3483754 () Bool)

(declare-fun e!3483741 () Bool)

(assert (=> b!5656315 (= e!3483754 e!3483741)))

(declare-fun res!2392711 () Bool)

(assert (=> b!5656315 (=> res!2392711 e!3483741)))

(declare-fun lt!2266827 () (InoxSet Context!10070))

(assert (=> b!5656315 (= res!2392711 (not (= lt!2266824 (matchZipper!1789 lt!2266827 (t!376556 s!2326)))))))

(assert (=> b!5656315 (= lt!2266824 (matchZipper!1789 lt!2266828 (t!376556 s!2326)))))

(assert (=> b!5656316 (= e!3483742 e!3483744)))

(declare-fun res!2392692 () Bool)

(assert (=> b!5656316 (=> res!2392692 e!3483744)))

(assert (=> b!5656316 (= res!2392692 (or (and ((_ is ElementMatch!15651) (regOne!31814 r!7292)) (= (c!994391 (regOne!31814 r!7292)) (h!69578 s!2326))) ((_ is Union!15651) (regOne!31814 r!7292))))))

(declare-fun lt!2266836 () Unit!156136)

(assert (=> b!5656316 (= lt!2266836 e!3483749)))

(declare-fun c!994390 () Bool)

(assert (=> b!5656316 (= c!994390 (nullable!5683 (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun lambda!304449 () Int)

(declare-fun flatMap!1264 ((InoxSet Context!10070) Int) (InoxSet Context!10070))

(declare-fun derivationStepZipperUp!919 (Context!10070 C!31572) (InoxSet Context!10070))

(assert (=> b!5656316 (= (flatMap!1264 z!1189 lambda!304449) (derivationStepZipperUp!919 (h!69577 zl!343) (h!69578 s!2326)))))

(declare-fun lt!2266826 () Unit!156136)

(declare-fun lemmaFlatMapOnSingletonSet!796 ((InoxSet Context!10070) Context!10070 Int) Unit!156136)

(assert (=> b!5656316 (= lt!2266826 (lemmaFlatMapOnSingletonSet!796 z!1189 (h!69577 zl!343) lambda!304449))))

(declare-fun lt!2266833 () Context!10070)

(assert (=> b!5656316 (= lt!2266834 (derivationStepZipperUp!919 lt!2266833 (h!69578 s!2326)))))

(declare-fun derivationStepZipperDown!993 (Regex!15651 Context!10070 C!31572) (InoxSet Context!10070))

(assert (=> b!5656316 (= lt!2266828 (derivationStepZipperDown!993 (h!69576 (exprs!5535 (h!69577 zl!343))) lt!2266833 (h!69578 s!2326)))))

(assert (=> b!5656316 (= lt!2266833 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun lt!2266839 () (InoxSet Context!10070))

(assert (=> b!5656316 (= lt!2266839 (derivationStepZipperUp!919 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))) (h!69578 s!2326)))))

(declare-fun b!5656317 () Bool)

(declare-fun res!2392696 () Bool)

(assert (=> b!5656317 (=> res!2392696 e!3483742)))

(declare-fun isEmpty!34973 (List!63252) Bool)

(assert (=> b!5656317 (= res!2392696 (isEmpty!34973 (t!376554 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5656318 () Bool)

(assert (=> b!5656318 (= e!3483741 e!3483753)))

(declare-fun res!2392694 () Bool)

(assert (=> b!5656318 (=> res!2392694 e!3483753)))

(assert (=> b!5656318 (= res!2392694 (not (= lt!2266837 lt!2266827)))))

(declare-fun lt!2266829 () (InoxSet Context!10070))

(declare-fun lt!2266840 () Context!10070)

(assert (=> b!5656318 (= (flatMap!1264 lt!2266829 lambda!304449) (derivationStepZipperUp!919 lt!2266840 (h!69578 s!2326)))))

(declare-fun lt!2266842 () Unit!156136)

(assert (=> b!5656318 (= lt!2266842 (lemmaFlatMapOnSingletonSet!796 lt!2266829 lt!2266840 lambda!304449))))

(declare-fun lt!2266838 () (InoxSet Context!10070))

(assert (=> b!5656318 (= lt!2266838 (derivationStepZipperUp!919 lt!2266840 (h!69578 s!2326)))))

(declare-fun derivationStepZipper!1736 ((InoxSet Context!10070) C!31572) (InoxSet Context!10070))

(assert (=> b!5656318 (= lt!2266837 (derivationStepZipper!1736 lt!2266829 (h!69578 s!2326)))))

(assert (=> b!5656318 (= lt!2266829 (store ((as const (Array Context!10070 Bool)) false) lt!2266840 true))))

(declare-fun lt!2266835 () List!63252)

(assert (=> b!5656318 (= lt!2266840 (Context!10071 (Cons!63128 (regOne!31814 (regOne!31814 r!7292)) lt!2266835)))))

(declare-fun b!5656319 () Bool)

(declare-fun contextDepthTotal!226 (Context!10070) Int)

(assert (=> b!5656319 (= e!3483753 (< (contextDepthTotal!226 lt!2266840) (contextDepthTotal!226 (h!69577 zl!343))))))

(declare-fun b!5656320 () Bool)

(declare-fun res!2392700 () Bool)

(assert (=> b!5656320 (=> res!2392700 e!3483740)))

(declare-fun isEmpty!34974 (List!63253) Bool)

(assert (=> b!5656320 (= res!2392700 (not (isEmpty!34974 (t!376555 zl!343))))))

(declare-fun b!5656321 () Bool)

(declare-fun tp!1566874 () Bool)

(assert (=> b!5656321 (= e!3483750 tp!1566874)))

(declare-fun b!5656322 () Bool)

(assert (=> b!5656322 (= e!3483744 e!3483754)))

(declare-fun res!2392707 () Bool)

(assert (=> b!5656322 (=> res!2392707 e!3483754)))

(assert (=> b!5656322 (= res!2392707 (not (= lt!2266828 lt!2266827)))))

(assert (=> b!5656322 (= lt!2266827 (derivationStepZipperDown!993 (regOne!31814 (regOne!31814 r!7292)) (Context!10071 lt!2266835) (h!69578 s!2326)))))

(assert (=> b!5656322 (= lt!2266835 (Cons!63128 (regTwo!31814 (regOne!31814 r!7292)) (t!376554 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5656323 () Bool)

(declare-fun res!2392699 () Bool)

(assert (=> b!5656323 (=> res!2392699 e!3483753)))

(assert (=> b!5656323 (= res!2392699 (not (= (exprs!5535 (h!69577 zl!343)) (Cons!63128 (Concat!24496 (regOne!31814 (regOne!31814 r!7292)) (regTwo!31814 (regOne!31814 r!7292))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))

(assert (= (and start!584890 res!2392712) b!5656312))

(assert (= (and b!5656312 res!2392698) b!5656306))

(assert (= (and b!5656306 res!2392709) b!5656303))

(assert (= (and b!5656303 (not res!2392695)) b!5656320))

(assert (= (and b!5656320 (not res!2392700)) b!5656295))

(assert (= (and b!5656295 (not res!2392704)) b!5656293))

(assert (= (and b!5656293 (not res!2392701)) b!5656311))

(assert (= (and b!5656311 (not res!2392710)) b!5656298))

(assert (= (and b!5656298 (not res!2392702)) b!5656308))

(assert (= (and b!5656308 (not res!2392708)) b!5656317))

(assert (= (and b!5656317 (not res!2392696)) b!5656316))

(assert (= (and b!5656316 c!994390) b!5656297))

(assert (= (and b!5656316 (not c!994390)) b!5656313))

(assert (= (and b!5656297 (not res!2392693)) b!5656294))

(assert (= (and b!5656316 (not res!2392692)) b!5656301))

(assert (= (and b!5656301 res!2392706) b!5656302))

(assert (= (and b!5656301 (not res!2392703)) b!5656299))

(assert (= (and b!5656299 (not res!2392697)) b!5656322))

(assert (= (and b!5656322 (not res!2392707)) b!5656315))

(assert (= (and b!5656315 (not res!2392711)) b!5656318))

(assert (= (and b!5656318 (not res!2392694)) b!5656304))

(assert (= (and b!5656304 (not res!2392705)) b!5656323))

(assert (= (and b!5656323 (not res!2392699)) b!5656319))

(assert (= (and start!584890 ((_ is ElementMatch!15651) r!7292)) b!5656300))

(assert (= (and start!584890 ((_ is Concat!24496) r!7292)) b!5656309))

(assert (= (and start!584890 ((_ is Star!15651) r!7292)) b!5656314))

(assert (= (and start!584890 ((_ is Union!15651) r!7292)) b!5656310))

(assert (= (and start!584890 condSetEmpty!37822) setIsEmpty!37822))

(assert (= (and start!584890 (not condSetEmpty!37822)) setNonEmpty!37822))

(assert (= setNonEmpty!37822 b!5656307))

(assert (= b!5656296 b!5656321))

(assert (= (and start!584890 ((_ is Cons!63129) zl!343)) b!5656296))

(assert (= (and start!584890 ((_ is Cons!63130) s!2326)) b!5656305))

(declare-fun m!6622230 () Bool)

(assert (=> b!5656316 m!6622230))

(declare-fun m!6622232 () Bool)

(assert (=> b!5656316 m!6622232))

(declare-fun m!6622234 () Bool)

(assert (=> b!5656316 m!6622234))

(declare-fun m!6622236 () Bool)

(assert (=> b!5656316 m!6622236))

(declare-fun m!6622238 () Bool)

(assert (=> b!5656316 m!6622238))

(declare-fun m!6622240 () Bool)

(assert (=> b!5656316 m!6622240))

(declare-fun m!6622242 () Bool)

(assert (=> b!5656316 m!6622242))

(declare-fun m!6622244 () Bool)

(assert (=> b!5656315 m!6622244))

(declare-fun m!6622246 () Bool)

(assert (=> b!5656315 m!6622246))

(declare-fun m!6622248 () Bool)

(assert (=> b!5656317 m!6622248))

(declare-fun m!6622250 () Bool)

(assert (=> b!5656320 m!6622250))

(declare-fun m!6622252 () Bool)

(assert (=> b!5656319 m!6622252))

(declare-fun m!6622254 () Bool)

(assert (=> b!5656319 m!6622254))

(declare-fun m!6622256 () Bool)

(assert (=> b!5656295 m!6622256))

(declare-fun m!6622258 () Bool)

(assert (=> b!5656303 m!6622258))

(declare-fun m!6622260 () Bool)

(assert (=> b!5656303 m!6622260))

(declare-fun m!6622262 () Bool)

(assert (=> b!5656303 m!6622262))

(declare-fun m!6622264 () Bool)

(assert (=> b!5656312 m!6622264))

(declare-fun m!6622266 () Bool)

(assert (=> b!5656322 m!6622266))

(declare-fun m!6622268 () Bool)

(assert (=> b!5656306 m!6622268))

(declare-fun m!6622270 () Bool)

(assert (=> b!5656304 m!6622270))

(declare-fun m!6622272 () Bool)

(assert (=> b!5656308 m!6622272))

(declare-fun m!6622274 () Bool)

(assert (=> b!5656308 m!6622274))

(declare-fun m!6622276 () Bool)

(assert (=> b!5656308 m!6622276))

(declare-fun m!6622278 () Bool)

(assert (=> b!5656308 m!6622278))

(declare-fun m!6622280 () Bool)

(assert (=> b!5656308 m!6622280))

(assert (=> b!5656308 m!6622272))

(assert (=> b!5656308 m!6622274))

(declare-fun m!6622282 () Bool)

(assert (=> b!5656308 m!6622282))

(declare-fun m!6622284 () Bool)

(assert (=> b!5656296 m!6622284))

(declare-fun m!6622286 () Bool)

(assert (=> b!5656318 m!6622286))

(declare-fun m!6622288 () Bool)

(assert (=> b!5656318 m!6622288))

(declare-fun m!6622290 () Bool)

(assert (=> b!5656318 m!6622290))

(declare-fun m!6622292 () Bool)

(assert (=> b!5656318 m!6622292))

(declare-fun m!6622294 () Bool)

(assert (=> b!5656318 m!6622294))

(declare-fun m!6622296 () Bool)

(assert (=> b!5656294 m!6622296))

(declare-fun m!6622298 () Bool)

(assert (=> b!5656297 m!6622298))

(assert (=> b!5656297 m!6622246))

(declare-fun m!6622300 () Bool)

(assert (=> b!5656297 m!6622300))

(declare-fun m!6622302 () Bool)

(assert (=> setNonEmpty!37822 m!6622302))

(declare-fun m!6622304 () Bool)

(assert (=> start!584890 m!6622304))

(declare-fun m!6622306 () Bool)

(assert (=> b!5656302 m!6622306))

(declare-fun m!6622308 () Bool)

(assert (=> b!5656311 m!6622308))

(assert (=> b!5656311 m!6622308))

(declare-fun m!6622310 () Bool)

(assert (=> b!5656311 m!6622310))

(check-sat (not b!5656320) (not b!5656314) (not b!5656303) (not b!5656311) tp_is_empty!40555 (not b!5656307) (not b!5656296) (not b!5656295) (not b!5656308) (not b!5656316) (not b!5656310) (not b!5656294) (not b!5656309) (not b!5656321) (not b!5656306) (not b!5656319) (not b!5656305) (not b!5656302) (not b!5656318) (not b!5656312) (not b!5656297) (not b!5656304) (not b!5656322) (not b!5656317) (not setNonEmpty!37822) (not b!5656315) (not start!584890))
(check-sat)
(get-model)

(declare-fun b!5656487 () Bool)

(declare-fun e!3483841 () (InoxSet Context!10070))

(declare-fun e!3483842 () (InoxSet Context!10070))

(assert (=> b!5656487 (= e!3483841 e!3483842)))

(declare-fun c!994449 () Bool)

(assert (=> b!5656487 (= c!994449 ((_ is Union!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun bm!428002 () Bool)

(declare-fun call!428008 () (InoxSet Context!10070))

(declare-fun call!428009 () List!63252)

(assert (=> bm!428002 (= call!428008 (derivationStepZipperDown!993 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))) (ite c!994449 lt!2266833 (Context!10071 call!428009)) (h!69578 s!2326)))))

(declare-fun b!5656488 () Bool)

(declare-fun e!3483844 () (InoxSet Context!10070))

(declare-fun call!428011 () (InoxSet Context!10070))

(assert (=> b!5656488 (= e!3483844 ((_ map or) call!428008 call!428011))))

(declare-fun bm!428003 () Bool)

(declare-fun call!428012 () (InoxSet Context!10070))

(assert (=> bm!428003 (= call!428011 call!428012)))

(declare-fun b!5656490 () Bool)

(declare-fun c!994447 () Bool)

(declare-fun e!3483843 () Bool)

(assert (=> b!5656490 (= c!994447 e!3483843)))

(declare-fun res!2392764 () Bool)

(assert (=> b!5656490 (=> (not res!2392764) (not e!3483843))))

(assert (=> b!5656490 (= res!2392764 ((_ is Concat!24496) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> b!5656490 (= e!3483842 e!3483844)))

(declare-fun b!5656491 () Bool)

(declare-fun e!3483846 () (InoxSet Context!10070))

(declare-fun call!428007 () (InoxSet Context!10070))

(assert (=> b!5656491 (= e!3483846 call!428007)))

(declare-fun b!5656492 () Bool)

(assert (=> b!5656492 (= e!3483841 (store ((as const (Array Context!10070 Bool)) false) lt!2266833 true))))

(declare-fun b!5656493 () Bool)

(assert (=> b!5656493 (= e!3483844 e!3483846)))

(declare-fun c!994446 () Bool)

(assert (=> b!5656493 (= c!994446 ((_ is Concat!24496) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun bm!428004 () Bool)

(declare-fun call!428010 () List!63252)

(assert (=> bm!428004 (= call!428010 call!428009)))

(declare-fun b!5656494 () Bool)

(assert (=> b!5656494 (= e!3483843 (nullable!5683 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun b!5656495 () Bool)

(declare-fun e!3483845 () (InoxSet Context!10070))

(assert (=> b!5656495 (= e!3483845 call!428007)))

(declare-fun bm!428005 () Bool)

(assert (=> bm!428005 (= call!428007 call!428011)))

(declare-fun b!5656489 () Bool)

(assert (=> b!5656489 (= e!3483845 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786075 () Bool)

(declare-fun c!994448 () Bool)

(assert (=> d!1786075 (= c!994448 (and ((_ is ElementMatch!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))) (= (c!994391 (h!69576 (exprs!5535 (h!69577 zl!343)))) (h!69578 s!2326))))))

(assert (=> d!1786075 (= (derivationStepZipperDown!993 (h!69576 (exprs!5535 (h!69577 zl!343))) lt!2266833 (h!69578 s!2326)) e!3483841)))

(declare-fun b!5656496 () Bool)

(assert (=> b!5656496 (= e!3483842 ((_ map or) call!428008 call!428012))))

(declare-fun bm!428006 () Bool)

(assert (=> bm!428006 (= call!428012 (derivationStepZipperDown!993 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343))))))) (ite (or c!994449 c!994447) lt!2266833 (Context!10071 call!428010)) (h!69578 s!2326)))))

(declare-fun bm!428007 () Bool)

(declare-fun $colon$colon!1690 (List!63252 Regex!15651) List!63252)

(assert (=> bm!428007 (= call!428009 ($colon$colon!1690 (exprs!5535 lt!2266833) (ite (or c!994447 c!994446) (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (h!69576 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun b!5656497 () Bool)

(declare-fun c!994450 () Bool)

(assert (=> b!5656497 (= c!994450 ((_ is Star!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> b!5656497 (= e!3483846 e!3483845)))

(assert (= (and d!1786075 c!994448) b!5656492))

(assert (= (and d!1786075 (not c!994448)) b!5656487))

(assert (= (and b!5656487 c!994449) b!5656496))

(assert (= (and b!5656487 (not c!994449)) b!5656490))

(assert (= (and b!5656490 res!2392764) b!5656494))

(assert (= (and b!5656490 c!994447) b!5656488))

(assert (= (and b!5656490 (not c!994447)) b!5656493))

(assert (= (and b!5656493 c!994446) b!5656491))

(assert (= (and b!5656493 (not c!994446)) b!5656497))

(assert (= (and b!5656497 c!994450) b!5656495))

(assert (= (and b!5656497 (not c!994450)) b!5656489))

(assert (= (or b!5656491 b!5656495) bm!428004))

(assert (= (or b!5656491 b!5656495) bm!428005))

(assert (= (or b!5656488 bm!428004) bm!428007))

(assert (= (or b!5656488 bm!428005) bm!428003))

(assert (= (or b!5656496 bm!428003) bm!428006))

(assert (= (or b!5656496 b!5656488) bm!428002))

(declare-fun m!6622398 () Bool)

(assert (=> b!5656494 m!6622398))

(declare-fun m!6622400 () Bool)

(assert (=> bm!428002 m!6622400))

(declare-fun m!6622402 () Bool)

(assert (=> bm!428006 m!6622402))

(declare-fun m!6622404 () Bool)

(assert (=> bm!428007 m!6622404))

(declare-fun m!6622406 () Bool)

(assert (=> b!5656492 m!6622406))

(assert (=> b!5656316 d!1786075))

(declare-fun d!1786095 () Bool)

(declare-fun choose!42838 ((InoxSet Context!10070) Int) (InoxSet Context!10070))

(assert (=> d!1786095 (= (flatMap!1264 z!1189 lambda!304449) (choose!42838 z!1189 lambda!304449))))

(declare-fun bs!1315235 () Bool)

(assert (= bs!1315235 d!1786095))

(declare-fun m!6622408 () Bool)

(assert (=> bs!1315235 m!6622408))

(assert (=> b!5656316 d!1786095))

(declare-fun d!1786097 () Bool)

(declare-fun nullableFct!1769 (Regex!15651) Bool)

(assert (=> d!1786097 (= (nullable!5683 (h!69576 (exprs!5535 (h!69577 zl!343)))) (nullableFct!1769 (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun bs!1315236 () Bool)

(assert (= bs!1315236 d!1786097))

(declare-fun m!6622416 () Bool)

(assert (=> bs!1315236 m!6622416))

(assert (=> b!5656316 d!1786097))

(declare-fun b!5656532 () Bool)

(declare-fun e!3483868 () (InoxSet Context!10070))

(declare-fun call!428018 () (InoxSet Context!10070))

(assert (=> b!5656532 (= e!3483868 call!428018)))

(declare-fun b!5656533 () Bool)

(assert (=> b!5656533 (= e!3483868 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786101 () Bool)

(declare-fun c!994465 () Bool)

(declare-fun e!3483870 () Bool)

(assert (=> d!1786101 (= c!994465 e!3483870)))

(declare-fun res!2392775 () Bool)

(assert (=> d!1786101 (=> (not res!2392775) (not e!3483870))))

(assert (=> d!1786101 (= res!2392775 ((_ is Cons!63128) (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))))

(declare-fun e!3483869 () (InoxSet Context!10070))

(assert (=> d!1786101 (= (derivationStepZipperUp!919 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))) (h!69578 s!2326)) e!3483869)))

(declare-fun b!5656534 () Bool)

(assert (=> b!5656534 (= e!3483869 ((_ map or) call!428018 (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (h!69578 s!2326))))))

(declare-fun b!5656535 () Bool)

(assert (=> b!5656535 (= e!3483869 e!3483868)))

(declare-fun c!994464 () Bool)

(assert (=> b!5656535 (= c!994464 ((_ is Cons!63128) (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))))

(declare-fun b!5656536 () Bool)

(assert (=> b!5656536 (= e!3483870 (nullable!5683 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))))

(declare-fun bm!428013 () Bool)

(assert (=> bm!428013 (= call!428018 (derivationStepZipperDown!993 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))) (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (h!69578 s!2326)))))

(assert (= (and d!1786101 res!2392775) b!5656536))

(assert (= (and d!1786101 c!994465) b!5656534))

(assert (= (and d!1786101 (not c!994465)) b!5656535))

(assert (= (and b!5656535 c!994464) b!5656532))

(assert (= (and b!5656535 (not c!994464)) b!5656533))

(assert (= (or b!5656534 b!5656532) bm!428013))

(declare-fun m!6622438 () Bool)

(assert (=> b!5656534 m!6622438))

(declare-fun m!6622440 () Bool)

(assert (=> b!5656536 m!6622440))

(declare-fun m!6622444 () Bool)

(assert (=> bm!428013 m!6622444))

(assert (=> b!5656316 d!1786101))

(declare-fun d!1786117 () Bool)

(declare-fun dynLambda!24694 (Int Context!10070) (InoxSet Context!10070))

(assert (=> d!1786117 (= (flatMap!1264 z!1189 lambda!304449) (dynLambda!24694 lambda!304449 (h!69577 zl!343)))))

(declare-fun lt!2266870 () Unit!156136)

(declare-fun choose!42839 ((InoxSet Context!10070) Context!10070 Int) Unit!156136)

(assert (=> d!1786117 (= lt!2266870 (choose!42839 z!1189 (h!69577 zl!343) lambda!304449))))

(assert (=> d!1786117 (= z!1189 (store ((as const (Array Context!10070 Bool)) false) (h!69577 zl!343) true))))

(assert (=> d!1786117 (= (lemmaFlatMapOnSingletonSet!796 z!1189 (h!69577 zl!343) lambda!304449) lt!2266870)))

(declare-fun b_lambda!213885 () Bool)

(assert (=> (not b_lambda!213885) (not d!1786117)))

(declare-fun bs!1315242 () Bool)

(assert (= bs!1315242 d!1786117))

(assert (=> bs!1315242 m!6622238))

(declare-fun m!6622454 () Bool)

(assert (=> bs!1315242 m!6622454))

(declare-fun m!6622456 () Bool)

(assert (=> bs!1315242 m!6622456))

(declare-fun m!6622458 () Bool)

(assert (=> bs!1315242 m!6622458))

(assert (=> b!5656316 d!1786117))

(declare-fun b!5656565 () Bool)

(declare-fun e!3483887 () (InoxSet Context!10070))

(declare-fun call!428026 () (InoxSet Context!10070))

(assert (=> b!5656565 (= e!3483887 call!428026)))

(declare-fun b!5656566 () Bool)

(assert (=> b!5656566 (= e!3483887 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786123 () Bool)

(declare-fun c!994479 () Bool)

(declare-fun e!3483889 () Bool)

(assert (=> d!1786123 (= c!994479 e!3483889)))

(declare-fun res!2392780 () Bool)

(assert (=> d!1786123 (=> (not res!2392780) (not e!3483889))))

(assert (=> d!1786123 (= res!2392780 ((_ is Cons!63128) (exprs!5535 (h!69577 zl!343))))))

(declare-fun e!3483888 () (InoxSet Context!10070))

(assert (=> d!1786123 (= (derivationStepZipperUp!919 (h!69577 zl!343) (h!69578 s!2326)) e!3483888)))

(declare-fun b!5656567 () Bool)

(assert (=> b!5656567 (= e!3483888 ((_ map or) call!428026 (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))) (h!69578 s!2326))))))

(declare-fun b!5656568 () Bool)

(assert (=> b!5656568 (= e!3483888 e!3483887)))

(declare-fun c!994478 () Bool)

(assert (=> b!5656568 (= c!994478 ((_ is Cons!63128) (exprs!5535 (h!69577 zl!343))))))

(declare-fun b!5656569 () Bool)

(assert (=> b!5656569 (= e!3483889 (nullable!5683 (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun bm!428021 () Bool)

(assert (=> bm!428021 (= call!428026 (derivationStepZipperDown!993 (h!69576 (exprs!5535 (h!69577 zl!343))) (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))) (h!69578 s!2326)))))

(assert (= (and d!1786123 res!2392780) b!5656569))

(assert (= (and d!1786123 c!994479) b!5656567))

(assert (= (and d!1786123 (not c!994479)) b!5656568))

(assert (= (and b!5656568 c!994478) b!5656565))

(assert (= (and b!5656568 (not c!994478)) b!5656566))

(assert (= (or b!5656567 b!5656565) bm!428021))

(declare-fun m!6622460 () Bool)

(assert (=> b!5656567 m!6622460))

(assert (=> b!5656569 m!6622240))

(declare-fun m!6622462 () Bool)

(assert (=> bm!428021 m!6622462))

(assert (=> b!5656316 d!1786123))

(declare-fun b!5656570 () Bool)

(declare-fun e!3483890 () (InoxSet Context!10070))

(declare-fun call!428031 () (InoxSet Context!10070))

(assert (=> b!5656570 (= e!3483890 call!428031)))

(declare-fun b!5656571 () Bool)

(assert (=> b!5656571 (= e!3483890 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786125 () Bool)

(declare-fun c!994481 () Bool)

(declare-fun e!3483892 () Bool)

(assert (=> d!1786125 (= c!994481 e!3483892)))

(declare-fun res!2392781 () Bool)

(assert (=> d!1786125 (=> (not res!2392781) (not e!3483892))))

(assert (=> d!1786125 (= res!2392781 ((_ is Cons!63128) (exprs!5535 lt!2266833)))))

(declare-fun e!3483891 () (InoxSet Context!10070))

(assert (=> d!1786125 (= (derivationStepZipperUp!919 lt!2266833 (h!69578 s!2326)) e!3483891)))

(declare-fun b!5656572 () Bool)

(assert (=> b!5656572 (= e!3483891 ((_ map or) call!428031 (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 lt!2266833))) (h!69578 s!2326))))))

(declare-fun b!5656573 () Bool)

(assert (=> b!5656573 (= e!3483891 e!3483890)))

(declare-fun c!994480 () Bool)

(assert (=> b!5656573 (= c!994480 ((_ is Cons!63128) (exprs!5535 lt!2266833)))))

(declare-fun b!5656574 () Bool)

(assert (=> b!5656574 (= e!3483892 (nullable!5683 (h!69576 (exprs!5535 lt!2266833))))))

(declare-fun bm!428026 () Bool)

(assert (=> bm!428026 (= call!428031 (derivationStepZipperDown!993 (h!69576 (exprs!5535 lt!2266833)) (Context!10071 (t!376554 (exprs!5535 lt!2266833))) (h!69578 s!2326)))))

(assert (= (and d!1786125 res!2392781) b!5656574))

(assert (= (and d!1786125 c!994481) b!5656572))

(assert (= (and d!1786125 (not c!994481)) b!5656573))

(assert (= (and b!5656573 c!994480) b!5656570))

(assert (= (and b!5656573 (not c!994480)) b!5656571))

(assert (= (or b!5656572 b!5656570) bm!428026))

(declare-fun m!6622464 () Bool)

(assert (=> b!5656572 m!6622464))

(declare-fun m!6622466 () Bool)

(assert (=> b!5656574 m!6622466))

(declare-fun m!6622468 () Bool)

(assert (=> bm!428026 m!6622468))

(assert (=> b!5656316 d!1786125))

(declare-fun d!1786127 () Bool)

(declare-fun lt!2266873 () Regex!15651)

(assert (=> d!1786127 (validRegex!7387 lt!2266873)))

(assert (=> d!1786127 (= lt!2266873 (generalisedUnion!1514 (unfocusZipperList!1079 zl!343)))))

(assert (=> d!1786127 (= (unfocusZipper!1393 zl!343) lt!2266873)))

(declare-fun bs!1315243 () Bool)

(assert (= bs!1315243 d!1786127))

(declare-fun m!6622480 () Bool)

(assert (=> bs!1315243 m!6622480))

(assert (=> bs!1315243 m!6622308))

(assert (=> bs!1315243 m!6622308))

(assert (=> bs!1315243 m!6622310))

(assert (=> b!5656306 d!1786127))

(declare-fun d!1786131 () Bool)

(declare-fun lambda!304468 () Int)

(declare-fun forall!14800 (List!63252 Int) Bool)

(assert (=> d!1786131 (= (inv!82374 (h!69577 zl!343)) (forall!14800 (exprs!5535 (h!69577 zl!343)) lambda!304468))))

(declare-fun bs!1315245 () Bool)

(assert (= bs!1315245 d!1786131))

(declare-fun m!6622498 () Bool)

(assert (=> bs!1315245 m!6622498))

(assert (=> b!5656296 d!1786131))

(declare-fun d!1786139 () Bool)

(declare-fun c!994505 () Bool)

(declare-fun isEmpty!34976 (List!63254) Bool)

(assert (=> d!1786139 (= c!994505 (isEmpty!34976 (t!376556 s!2326)))))

(declare-fun e!3483925 () Bool)

(assert (=> d!1786139 (= (matchZipper!1789 lt!2266837 (t!376556 s!2326)) e!3483925)))

(declare-fun b!5656630 () Bool)

(declare-fun nullableZipper!1623 ((InoxSet Context!10070)) Bool)

(assert (=> b!5656630 (= e!3483925 (nullableZipper!1623 lt!2266837))))

(declare-fun b!5656631 () Bool)

(declare-fun head!12026 (List!63254) C!31572)

(declare-fun tail!11121 (List!63254) List!63254)

(assert (=> b!5656631 (= e!3483925 (matchZipper!1789 (derivationStepZipper!1736 lt!2266837 (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))))))

(assert (= (and d!1786139 c!994505) b!5656630))

(assert (= (and d!1786139 (not c!994505)) b!5656631))

(declare-fun m!6622520 () Bool)

(assert (=> d!1786139 m!6622520))

(declare-fun m!6622522 () Bool)

(assert (=> b!5656630 m!6622522))

(declare-fun m!6622524 () Bool)

(assert (=> b!5656631 m!6622524))

(assert (=> b!5656631 m!6622524))

(declare-fun m!6622526 () Bool)

(assert (=> b!5656631 m!6622526))

(declare-fun m!6622528 () Bool)

(assert (=> b!5656631 m!6622528))

(assert (=> b!5656631 m!6622526))

(assert (=> b!5656631 m!6622528))

(declare-fun m!6622530 () Bool)

(assert (=> b!5656631 m!6622530))

(assert (=> b!5656304 d!1786139))

(declare-fun bs!1315254 () Bool)

(declare-fun d!1786143 () Bool)

(assert (= bs!1315254 (and d!1786143 d!1786131)))

(declare-fun lambda!304477 () Int)

(assert (=> bs!1315254 (= lambda!304477 lambda!304468)))

(declare-fun b!5656696 () Bool)

(declare-fun e!3483971 () Regex!15651)

(declare-fun e!3483970 () Regex!15651)

(assert (=> b!5656696 (= e!3483971 e!3483970)))

(declare-fun c!994528 () Bool)

(assert (=> b!5656696 (= c!994528 ((_ is Cons!63128) (exprs!5535 (h!69577 zl!343))))))

(declare-fun b!5656697 () Bool)

(assert (=> b!5656697 (= e!3483970 (Concat!24496 (h!69576 (exprs!5535 (h!69577 zl!343))) (generalisedConcat!1266 (t!376554 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun b!5656698 () Bool)

(declare-fun e!3483972 () Bool)

(declare-fun lt!2266883 () Regex!15651)

(declare-fun isConcat!704 (Regex!15651) Bool)

(assert (=> b!5656698 (= e!3483972 (isConcat!704 lt!2266883))))

(declare-fun b!5656699 () Bool)

(declare-fun e!3483968 () Bool)

(declare-fun e!3483969 () Bool)

(assert (=> b!5656699 (= e!3483968 e!3483969)))

(declare-fun c!994531 () Bool)

(assert (=> b!5656699 (= c!994531 (isEmpty!34973 (exprs!5535 (h!69577 zl!343))))))

(declare-fun b!5656700 () Bool)

(declare-fun head!12027 (List!63252) Regex!15651)

(assert (=> b!5656700 (= e!3483972 (= lt!2266883 (head!12027 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5656701 () Bool)

(declare-fun e!3483973 () Bool)

(assert (=> b!5656701 (= e!3483973 (isEmpty!34973 (t!376554 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5656702 () Bool)

(assert (=> b!5656702 (= e!3483969 e!3483972)))

(declare-fun c!994530 () Bool)

(declare-fun tail!11122 (List!63252) List!63252)

(assert (=> b!5656702 (= c!994530 (isEmpty!34973 (tail!11122 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5656703 () Bool)

(declare-fun isEmptyExpr!1181 (Regex!15651) Bool)

(assert (=> b!5656703 (= e!3483969 (isEmptyExpr!1181 lt!2266883))))

(assert (=> d!1786143 e!3483968))

(declare-fun res!2392811 () Bool)

(assert (=> d!1786143 (=> (not res!2392811) (not e!3483968))))

(assert (=> d!1786143 (= res!2392811 (validRegex!7387 lt!2266883))))

(assert (=> d!1786143 (= lt!2266883 e!3483971)))

(declare-fun c!994529 () Bool)

(assert (=> d!1786143 (= c!994529 e!3483973)))

(declare-fun res!2392812 () Bool)

(assert (=> d!1786143 (=> (not res!2392812) (not e!3483973))))

(assert (=> d!1786143 (= res!2392812 ((_ is Cons!63128) (exprs!5535 (h!69577 zl!343))))))

(assert (=> d!1786143 (forall!14800 (exprs!5535 (h!69577 zl!343)) lambda!304477)))

(assert (=> d!1786143 (= (generalisedConcat!1266 (exprs!5535 (h!69577 zl!343))) lt!2266883)))

(declare-fun b!5656704 () Bool)

(assert (=> b!5656704 (= e!3483970 EmptyExpr!15651)))

(declare-fun b!5656705 () Bool)

(assert (=> b!5656705 (= e!3483971 (h!69576 (exprs!5535 (h!69577 zl!343))))))

(assert (= (and d!1786143 res!2392812) b!5656701))

(assert (= (and d!1786143 c!994529) b!5656705))

(assert (= (and d!1786143 (not c!994529)) b!5656696))

(assert (= (and b!5656696 c!994528) b!5656697))

(assert (= (and b!5656696 (not c!994528)) b!5656704))

(assert (= (and d!1786143 res!2392811) b!5656699))

(assert (= (and b!5656699 c!994531) b!5656703))

(assert (= (and b!5656699 (not c!994531)) b!5656702))

(assert (= (and b!5656702 c!994530) b!5656700))

(assert (= (and b!5656702 (not c!994530)) b!5656698))

(declare-fun m!6622554 () Bool)

(assert (=> b!5656702 m!6622554))

(assert (=> b!5656702 m!6622554))

(declare-fun m!6622556 () Bool)

(assert (=> b!5656702 m!6622556))

(assert (=> b!5656701 m!6622248))

(declare-fun m!6622558 () Bool)

(assert (=> b!5656699 m!6622558))

(declare-fun m!6622560 () Bool)

(assert (=> b!5656703 m!6622560))

(declare-fun m!6622562 () Bool)

(assert (=> b!5656698 m!6622562))

(declare-fun m!6622564 () Bool)

(assert (=> b!5656697 m!6622564))

(declare-fun m!6622566 () Bool)

(assert (=> d!1786143 m!6622566))

(declare-fun m!6622568 () Bool)

(assert (=> d!1786143 m!6622568))

(declare-fun m!6622570 () Bool)

(assert (=> b!5656700 m!6622570))

(assert (=> b!5656295 d!1786143))

(declare-fun bs!1315255 () Bool)

(declare-fun d!1786153 () Bool)

(assert (= bs!1315255 (and d!1786153 d!1786131)))

(declare-fun lambda!304478 () Int)

(assert (=> bs!1315255 (= lambda!304478 lambda!304468)))

(declare-fun bs!1315256 () Bool)

(assert (= bs!1315256 (and d!1786153 d!1786143)))

(assert (=> bs!1315256 (= lambda!304478 lambda!304477)))

(assert (=> d!1786153 (= (inv!82374 setElem!37822) (forall!14800 (exprs!5535 setElem!37822) lambda!304478))))

(declare-fun bs!1315257 () Bool)

(assert (= bs!1315257 d!1786153))

(declare-fun m!6622572 () Bool)

(assert (=> bs!1315257 m!6622572))

(assert (=> setNonEmpty!37822 d!1786153))

(declare-fun d!1786155 () Bool)

(declare-fun c!994536 () Bool)

(assert (=> d!1786155 (= c!994536 (isEmpty!34976 (t!376556 s!2326)))))

(declare-fun e!3483984 () Bool)

(assert (=> d!1786155 (= (matchZipper!1789 lt!2266827 (t!376556 s!2326)) e!3483984)))

(declare-fun b!5656724 () Bool)

(assert (=> b!5656724 (= e!3483984 (nullableZipper!1623 lt!2266827))))

(declare-fun b!5656725 () Bool)

(assert (=> b!5656725 (= e!3483984 (matchZipper!1789 (derivationStepZipper!1736 lt!2266827 (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))))))

(assert (= (and d!1786155 c!994536) b!5656724))

(assert (= (and d!1786155 (not c!994536)) b!5656725))

(assert (=> d!1786155 m!6622520))

(declare-fun m!6622574 () Bool)

(assert (=> b!5656724 m!6622574))

(assert (=> b!5656725 m!6622524))

(assert (=> b!5656725 m!6622524))

(declare-fun m!6622576 () Bool)

(assert (=> b!5656725 m!6622576))

(assert (=> b!5656725 m!6622528))

(assert (=> b!5656725 m!6622576))

(assert (=> b!5656725 m!6622528))

(declare-fun m!6622578 () Bool)

(assert (=> b!5656725 m!6622578))

(assert (=> b!5656315 d!1786155))

(declare-fun d!1786157 () Bool)

(declare-fun c!994537 () Bool)

(assert (=> d!1786157 (= c!994537 (isEmpty!34976 (t!376556 s!2326)))))

(declare-fun e!3483985 () Bool)

(assert (=> d!1786157 (= (matchZipper!1789 lt!2266828 (t!376556 s!2326)) e!3483985)))

(declare-fun b!5656726 () Bool)

(assert (=> b!5656726 (= e!3483985 (nullableZipper!1623 lt!2266828))))

(declare-fun b!5656727 () Bool)

(assert (=> b!5656727 (= e!3483985 (matchZipper!1789 (derivationStepZipper!1736 lt!2266828 (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))))))

(assert (= (and d!1786157 c!994537) b!5656726))

(assert (= (and d!1786157 (not c!994537)) b!5656727))

(assert (=> d!1786157 m!6622520))

(declare-fun m!6622580 () Bool)

(assert (=> b!5656726 m!6622580))

(assert (=> b!5656727 m!6622524))

(assert (=> b!5656727 m!6622524))

(declare-fun m!6622582 () Bool)

(assert (=> b!5656727 m!6622582))

(assert (=> b!5656727 m!6622528))

(assert (=> b!5656727 m!6622582))

(assert (=> b!5656727 m!6622528))

(declare-fun m!6622584 () Bool)

(assert (=> b!5656727 m!6622584))

(assert (=> b!5656315 d!1786157))

(declare-fun b!5656821 () Bool)

(declare-fun e!3484034 () Option!15660)

(declare-fun e!3484030 () Option!15660)

(assert (=> b!5656821 (= e!3484034 e!3484030)))

(declare-fun c!994545 () Bool)

(assert (=> b!5656821 (= c!994545 ((_ is Nil!63130) s!2326))))

(declare-fun b!5656822 () Bool)

(assert (=> b!5656822 (= e!3484034 (Some!15659 (tuple2!65497 Nil!63130 s!2326)))))

(declare-fun b!5656823 () Bool)

(declare-fun e!3484031 () Bool)

(declare-fun lt!2266905 () Option!15660)

(assert (=> b!5656823 (= e!3484031 (not (isDefined!12363 lt!2266905)))))

(declare-fun b!5656824 () Bool)

(assert (=> b!5656824 (= e!3484030 None!15659)))

(declare-fun d!1786159 () Bool)

(assert (=> d!1786159 e!3484031))

(declare-fun res!2392850 () Bool)

(assert (=> d!1786159 (=> res!2392850 e!3484031)))

(declare-fun e!3484032 () Bool)

(assert (=> d!1786159 (= res!2392850 e!3484032)))

(declare-fun res!2392853 () Bool)

(assert (=> d!1786159 (=> (not res!2392853) (not e!3484032))))

(assert (=> d!1786159 (= res!2392853 (isDefined!12363 lt!2266905))))

(assert (=> d!1786159 (= lt!2266905 e!3484034)))

(declare-fun c!994544 () Bool)

(declare-fun e!3484033 () Bool)

(assert (=> d!1786159 (= c!994544 e!3484033)))

(declare-fun res!2392854 () Bool)

(assert (=> d!1786159 (=> (not res!2392854) (not e!3484033))))

(assert (=> d!1786159 (= res!2392854 (matchR!7836 (regOne!31814 r!7292) Nil!63130))))

(assert (=> d!1786159 (validRegex!7387 (regOne!31814 r!7292))))

(assert (=> d!1786159 (= (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) Nil!63130 s!2326 s!2326) lt!2266905)))

(declare-fun b!5656825 () Bool)

(declare-fun lt!2266907 () Unit!156136)

(declare-fun lt!2266906 () Unit!156136)

(assert (=> b!5656825 (= lt!2266907 lt!2266906)))

(declare-fun ++!13857 (List!63254 List!63254) List!63254)

(assert (=> b!5656825 (= (++!13857 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) (t!376556 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2026 (List!63254 C!31572 List!63254 List!63254) Unit!156136)

(assert (=> b!5656825 (= lt!2266906 (lemmaMoveElementToOtherListKeepsConcatEq!2026 Nil!63130 (h!69578 s!2326) (t!376556 s!2326) s!2326))))

(assert (=> b!5656825 (= e!3484030 (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) (t!376556 s!2326) s!2326))))

(declare-fun b!5656826 () Bool)

(declare-fun res!2392851 () Bool)

(assert (=> b!5656826 (=> (not res!2392851) (not e!3484032))))

(declare-fun get!21750 (Option!15660) tuple2!65496)

(assert (=> b!5656826 (= res!2392851 (matchR!7836 (regTwo!31814 r!7292) (_2!36051 (get!21750 lt!2266905))))))

(declare-fun b!5656827 () Bool)

(assert (=> b!5656827 (= e!3484032 (= (++!13857 (_1!36051 (get!21750 lt!2266905)) (_2!36051 (get!21750 lt!2266905))) s!2326))))

(declare-fun b!5656828 () Bool)

(declare-fun res!2392852 () Bool)

(assert (=> b!5656828 (=> (not res!2392852) (not e!3484032))))

(assert (=> b!5656828 (= res!2392852 (matchR!7836 (regOne!31814 r!7292) (_1!36051 (get!21750 lt!2266905))))))

(declare-fun b!5656829 () Bool)

(assert (=> b!5656829 (= e!3484033 (matchR!7836 (regTwo!31814 r!7292) s!2326))))

(assert (= (and d!1786159 res!2392854) b!5656829))

(assert (= (and d!1786159 c!994544) b!5656822))

(assert (= (and d!1786159 (not c!994544)) b!5656821))

(assert (= (and b!5656821 c!994545) b!5656824))

(assert (= (and b!5656821 (not c!994545)) b!5656825))

(assert (= (and d!1786159 res!2392853) b!5656828))

(assert (= (and b!5656828 res!2392852) b!5656826))

(assert (= (and b!5656826 res!2392851) b!5656827))

(assert (= (and d!1786159 (not res!2392850)) b!5656823))

(declare-fun m!6622630 () Bool)

(assert (=> b!5656826 m!6622630))

(declare-fun m!6622632 () Bool)

(assert (=> b!5656826 m!6622632))

(declare-fun m!6622634 () Bool)

(assert (=> d!1786159 m!6622634))

(declare-fun m!6622636 () Bool)

(assert (=> d!1786159 m!6622636))

(declare-fun m!6622638 () Bool)

(assert (=> d!1786159 m!6622638))

(assert (=> b!5656823 m!6622634))

(declare-fun m!6622640 () Bool)

(assert (=> b!5656825 m!6622640))

(assert (=> b!5656825 m!6622640))

(declare-fun m!6622642 () Bool)

(assert (=> b!5656825 m!6622642))

(declare-fun m!6622644 () Bool)

(assert (=> b!5656825 m!6622644))

(assert (=> b!5656825 m!6622640))

(declare-fun m!6622646 () Bool)

(assert (=> b!5656825 m!6622646))

(assert (=> b!5656828 m!6622630))

(declare-fun m!6622648 () Bool)

(assert (=> b!5656828 m!6622648))

(assert (=> b!5656827 m!6622630))

(declare-fun m!6622650 () Bool)

(assert (=> b!5656827 m!6622650))

(declare-fun m!6622652 () Bool)

(assert (=> b!5656829 m!6622652))

(assert (=> b!5656308 d!1786159))

(declare-fun d!1786177 () Bool)

(declare-fun choose!42843 (Int) Bool)

(assert (=> d!1786177 (= (Exists!2751 lambda!304447) (choose!42843 lambda!304447))))

(declare-fun bs!1315272 () Bool)

(assert (= bs!1315272 d!1786177))

(declare-fun m!6622654 () Bool)

(assert (=> bs!1315272 m!6622654))

(assert (=> b!5656308 d!1786177))

(declare-fun d!1786179 () Bool)

(assert (=> d!1786179 (= (Exists!2751 lambda!304448) (choose!42843 lambda!304448))))

(declare-fun bs!1315273 () Bool)

(assert (= bs!1315273 d!1786179))

(declare-fun m!6622656 () Bool)

(assert (=> bs!1315273 m!6622656))

(assert (=> b!5656308 d!1786179))

(declare-fun bs!1315274 () Bool)

(declare-fun d!1786181 () Bool)

(assert (= bs!1315274 (and d!1786181 b!5656308)))

(declare-fun lambda!304490 () Int)

(assert (=> bs!1315274 (= lambda!304490 lambda!304447)))

(assert (=> bs!1315274 (not (= lambda!304490 lambda!304448))))

(assert (=> d!1786181 true))

(assert (=> d!1786181 true))

(assert (=> d!1786181 true))

(assert (=> d!1786181 (= (isDefined!12363 (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) Nil!63130 s!2326 s!2326)) (Exists!2751 lambda!304490))))

(declare-fun lt!2266910 () Unit!156136)

(declare-fun choose!42844 (Regex!15651 Regex!15651 List!63254) Unit!156136)

(assert (=> d!1786181 (= lt!2266910 (choose!42844 (regOne!31814 r!7292) (regTwo!31814 r!7292) s!2326))))

(assert (=> d!1786181 (validRegex!7387 (regOne!31814 r!7292))))

(assert (=> d!1786181 (= (lemmaFindConcatSeparationEquivalentToExists!1838 (regOne!31814 r!7292) (regTwo!31814 r!7292) s!2326) lt!2266910)))

(declare-fun bs!1315275 () Bool)

(assert (= bs!1315275 d!1786181))

(assert (=> bs!1315275 m!6622638))

(assert (=> bs!1315275 m!6622274))

(assert (=> bs!1315275 m!6622276))

(assert (=> bs!1315275 m!6622274))

(declare-fun m!6622658 () Bool)

(assert (=> bs!1315275 m!6622658))

(declare-fun m!6622660 () Bool)

(assert (=> bs!1315275 m!6622660))

(assert (=> b!5656308 d!1786181))

(declare-fun bs!1315276 () Bool)

(declare-fun d!1786183 () Bool)

(assert (= bs!1315276 (and d!1786183 b!5656308)))

(declare-fun lambda!304495 () Int)

(assert (=> bs!1315276 (= lambda!304495 lambda!304447)))

(assert (=> bs!1315276 (not (= lambda!304495 lambda!304448))))

(declare-fun bs!1315277 () Bool)

(assert (= bs!1315277 (and d!1786183 d!1786181)))

(assert (=> bs!1315277 (= lambda!304495 lambda!304490)))

(assert (=> d!1786183 true))

(assert (=> d!1786183 true))

(assert (=> d!1786183 true))

(declare-fun lambda!304496 () Int)

(assert (=> bs!1315276 (not (= lambda!304496 lambda!304447))))

(assert (=> bs!1315276 (= lambda!304496 lambda!304448)))

(assert (=> bs!1315277 (not (= lambda!304496 lambda!304490))))

(declare-fun bs!1315278 () Bool)

(assert (= bs!1315278 d!1786183))

(assert (=> bs!1315278 (not (= lambda!304496 lambda!304495))))

(assert (=> d!1786183 true))

(assert (=> d!1786183 true))

(assert (=> d!1786183 true))

(assert (=> d!1786183 (= (Exists!2751 lambda!304495) (Exists!2751 lambda!304496))))

(declare-fun lt!2266913 () Unit!156136)

(declare-fun choose!42845 (Regex!15651 Regex!15651 List!63254) Unit!156136)

(assert (=> d!1786183 (= lt!2266913 (choose!42845 (regOne!31814 r!7292) (regTwo!31814 r!7292) s!2326))))

(assert (=> d!1786183 (validRegex!7387 (regOne!31814 r!7292))))

(assert (=> d!1786183 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1380 (regOne!31814 r!7292) (regTwo!31814 r!7292) s!2326) lt!2266913)))

(declare-fun m!6622662 () Bool)

(assert (=> bs!1315278 m!6622662))

(declare-fun m!6622664 () Bool)

(assert (=> bs!1315278 m!6622664))

(declare-fun m!6622666 () Bool)

(assert (=> bs!1315278 m!6622666))

(assert (=> bs!1315278 m!6622638))

(assert (=> b!5656308 d!1786183))

(declare-fun d!1786185 () Bool)

(declare-fun isEmpty!34978 (Option!15660) Bool)

(assert (=> d!1786185 (= (isDefined!12363 (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) Nil!63130 s!2326 s!2326)) (not (isEmpty!34978 (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) Nil!63130 s!2326 s!2326))))))

(declare-fun bs!1315279 () Bool)

(assert (= bs!1315279 d!1786185))

(assert (=> bs!1315279 m!6622274))

(declare-fun m!6622668 () Bool)

(assert (=> bs!1315279 m!6622668))

(assert (=> b!5656308 d!1786185))

(declare-fun d!1786187 () Bool)

(declare-fun lt!2266916 () Int)

(assert (=> d!1786187 (>= lt!2266916 0)))

(declare-fun e!3484043 () Int)

(assert (=> d!1786187 (= lt!2266916 e!3484043)))

(declare-fun c!994549 () Bool)

(assert (=> d!1786187 (= c!994549 ((_ is Cons!63128) (exprs!5535 lt!2266840)))))

(assert (=> d!1786187 (= (contextDepthTotal!226 lt!2266840) lt!2266916)))

(declare-fun b!5656846 () Bool)

(declare-fun regexDepthTotal!99 (Regex!15651) Int)

(assert (=> b!5656846 (= e!3484043 (+ (regexDepthTotal!99 (h!69576 (exprs!5535 lt!2266840))) (contextDepthTotal!226 (Context!10071 (t!376554 (exprs!5535 lt!2266840))))))))

(declare-fun b!5656847 () Bool)

(assert (=> b!5656847 (= e!3484043 1)))

(assert (= (and d!1786187 c!994549) b!5656846))

(assert (= (and d!1786187 (not c!994549)) b!5656847))

(declare-fun m!6622670 () Bool)

(assert (=> b!5656846 m!6622670))

(declare-fun m!6622672 () Bool)

(assert (=> b!5656846 m!6622672))

(assert (=> b!5656319 d!1786187))

(declare-fun d!1786189 () Bool)

(declare-fun lt!2266917 () Int)

(assert (=> d!1786189 (>= lt!2266917 0)))

(declare-fun e!3484044 () Int)

(assert (=> d!1786189 (= lt!2266917 e!3484044)))

(declare-fun c!994550 () Bool)

(assert (=> d!1786189 (= c!994550 ((_ is Cons!63128) (exprs!5535 (h!69577 zl!343))))))

(assert (=> d!1786189 (= (contextDepthTotal!226 (h!69577 zl!343)) lt!2266917)))

(declare-fun b!5656848 () Bool)

(assert (=> b!5656848 (= e!3484044 (+ (regexDepthTotal!99 (h!69576 (exprs!5535 (h!69577 zl!343)))) (contextDepthTotal!226 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun b!5656849 () Bool)

(assert (=> b!5656849 (= e!3484044 1)))

(assert (= (and d!1786189 c!994550) b!5656848))

(assert (= (and d!1786189 (not c!994550)) b!5656849))

(declare-fun m!6622674 () Bool)

(assert (=> b!5656848 m!6622674))

(declare-fun m!6622676 () Bool)

(assert (=> b!5656848 m!6622676))

(assert (=> b!5656319 d!1786189))

(declare-fun e!3484047 () Bool)

(declare-fun d!1786191 () Bool)

(assert (=> d!1786191 (= (matchZipper!1789 ((_ map or) lt!2266828 lt!2266834) (t!376556 s!2326)) e!3484047)))

(declare-fun res!2392869 () Bool)

(assert (=> d!1786191 (=> res!2392869 e!3484047)))

(assert (=> d!1786191 (= res!2392869 (matchZipper!1789 lt!2266828 (t!376556 s!2326)))))

(declare-fun lt!2266920 () Unit!156136)

(declare-fun choose!42846 ((InoxSet Context!10070) (InoxSet Context!10070) List!63254) Unit!156136)

(assert (=> d!1786191 (= lt!2266920 (choose!42846 lt!2266828 lt!2266834 (t!376556 s!2326)))))

(assert (=> d!1786191 (= (lemmaZipperConcatMatchesSameAsBothZippers!676 lt!2266828 lt!2266834 (t!376556 s!2326)) lt!2266920)))

(declare-fun b!5656852 () Bool)

(assert (=> b!5656852 (= e!3484047 (matchZipper!1789 lt!2266834 (t!376556 s!2326)))))

(assert (= (and d!1786191 (not res!2392869)) b!5656852))

(assert (=> d!1786191 m!6622300))

(assert (=> d!1786191 m!6622246))

(declare-fun m!6622678 () Bool)

(assert (=> d!1786191 m!6622678))

(assert (=> b!5656852 m!6622296))

(assert (=> b!5656297 d!1786191))

(assert (=> b!5656297 d!1786157))

(declare-fun d!1786193 () Bool)

(declare-fun c!994551 () Bool)

(assert (=> d!1786193 (= c!994551 (isEmpty!34976 (t!376556 s!2326)))))

(declare-fun e!3484048 () Bool)

(assert (=> d!1786193 (= (matchZipper!1789 ((_ map or) lt!2266828 lt!2266834) (t!376556 s!2326)) e!3484048)))

(declare-fun b!5656853 () Bool)

(assert (=> b!5656853 (= e!3484048 (nullableZipper!1623 ((_ map or) lt!2266828 lt!2266834)))))

(declare-fun b!5656854 () Bool)

(assert (=> b!5656854 (= e!3484048 (matchZipper!1789 (derivationStepZipper!1736 ((_ map or) lt!2266828 lt!2266834) (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))))))

(assert (= (and d!1786193 c!994551) b!5656853))

(assert (= (and d!1786193 (not c!994551)) b!5656854))

(assert (=> d!1786193 m!6622520))

(declare-fun m!6622680 () Bool)

(assert (=> b!5656853 m!6622680))

(assert (=> b!5656854 m!6622524))

(assert (=> b!5656854 m!6622524))

(declare-fun m!6622682 () Bool)

(assert (=> b!5656854 m!6622682))

(assert (=> b!5656854 m!6622528))

(assert (=> b!5656854 m!6622682))

(assert (=> b!5656854 m!6622528))

(declare-fun m!6622684 () Bool)

(assert (=> b!5656854 m!6622684))

(assert (=> b!5656297 d!1786193))

(declare-fun d!1786195 () Bool)

(assert (=> d!1786195 (= (isEmpty!34973 (t!376554 (exprs!5535 (h!69577 zl!343)))) ((_ is Nil!63128) (t!376554 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> b!5656317 d!1786195))

(declare-fun d!1786197 () Bool)

(assert (=> d!1786197 (= (flatMap!1264 lt!2266829 lambda!304449) (choose!42838 lt!2266829 lambda!304449))))

(declare-fun bs!1315280 () Bool)

(assert (= bs!1315280 d!1786197))

(declare-fun m!6622686 () Bool)

(assert (=> bs!1315280 m!6622686))

(assert (=> b!5656318 d!1786197))

(declare-fun b!5656855 () Bool)

(declare-fun e!3484049 () (InoxSet Context!10070))

(declare-fun call!428057 () (InoxSet Context!10070))

(assert (=> b!5656855 (= e!3484049 call!428057)))

(declare-fun b!5656856 () Bool)

(assert (=> b!5656856 (= e!3484049 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786199 () Bool)

(declare-fun c!994553 () Bool)

(declare-fun e!3484051 () Bool)

(assert (=> d!1786199 (= c!994553 e!3484051)))

(declare-fun res!2392870 () Bool)

(assert (=> d!1786199 (=> (not res!2392870) (not e!3484051))))

(assert (=> d!1786199 (= res!2392870 ((_ is Cons!63128) (exprs!5535 lt!2266840)))))

(declare-fun e!3484050 () (InoxSet Context!10070))

(assert (=> d!1786199 (= (derivationStepZipperUp!919 lt!2266840 (h!69578 s!2326)) e!3484050)))

(declare-fun b!5656857 () Bool)

(assert (=> b!5656857 (= e!3484050 ((_ map or) call!428057 (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 lt!2266840))) (h!69578 s!2326))))))

(declare-fun b!5656858 () Bool)

(assert (=> b!5656858 (= e!3484050 e!3484049)))

(declare-fun c!994552 () Bool)

(assert (=> b!5656858 (= c!994552 ((_ is Cons!63128) (exprs!5535 lt!2266840)))))

(declare-fun b!5656859 () Bool)

(assert (=> b!5656859 (= e!3484051 (nullable!5683 (h!69576 (exprs!5535 lt!2266840))))))

(declare-fun bm!428052 () Bool)

(assert (=> bm!428052 (= call!428057 (derivationStepZipperDown!993 (h!69576 (exprs!5535 lt!2266840)) (Context!10071 (t!376554 (exprs!5535 lt!2266840))) (h!69578 s!2326)))))

(assert (= (and d!1786199 res!2392870) b!5656859))

(assert (= (and d!1786199 c!994553) b!5656857))

(assert (= (and d!1786199 (not c!994553)) b!5656858))

(assert (= (and b!5656858 c!994552) b!5656855))

(assert (= (and b!5656858 (not c!994552)) b!5656856))

(assert (= (or b!5656857 b!5656855) bm!428052))

(declare-fun m!6622688 () Bool)

(assert (=> b!5656857 m!6622688))

(declare-fun m!6622690 () Bool)

(assert (=> b!5656859 m!6622690))

(declare-fun m!6622692 () Bool)

(assert (=> bm!428052 m!6622692))

(assert (=> b!5656318 d!1786199))

(declare-fun d!1786201 () Bool)

(assert (=> d!1786201 (= (flatMap!1264 lt!2266829 lambda!304449) (dynLambda!24694 lambda!304449 lt!2266840))))

(declare-fun lt!2266921 () Unit!156136)

(assert (=> d!1786201 (= lt!2266921 (choose!42839 lt!2266829 lt!2266840 lambda!304449))))

(assert (=> d!1786201 (= lt!2266829 (store ((as const (Array Context!10070 Bool)) false) lt!2266840 true))))

(assert (=> d!1786201 (= (lemmaFlatMapOnSingletonSet!796 lt!2266829 lt!2266840 lambda!304449) lt!2266921)))

(declare-fun b_lambda!213893 () Bool)

(assert (=> (not b_lambda!213893) (not d!1786201)))

(declare-fun bs!1315281 () Bool)

(assert (= bs!1315281 d!1786201))

(assert (=> bs!1315281 m!6622286))

(declare-fun m!6622694 () Bool)

(assert (=> bs!1315281 m!6622694))

(declare-fun m!6622696 () Bool)

(assert (=> bs!1315281 m!6622696))

(assert (=> bs!1315281 m!6622290))

(assert (=> b!5656318 d!1786201))

(declare-fun bs!1315282 () Bool)

(declare-fun d!1786203 () Bool)

(assert (= bs!1315282 (and d!1786203 b!5656316)))

(declare-fun lambda!304499 () Int)

(assert (=> bs!1315282 (= lambda!304499 lambda!304449)))

(assert (=> d!1786203 true))

(assert (=> d!1786203 (= (derivationStepZipper!1736 lt!2266829 (h!69578 s!2326)) (flatMap!1264 lt!2266829 lambda!304499))))

(declare-fun bs!1315283 () Bool)

(assert (= bs!1315283 d!1786203))

(declare-fun m!6622698 () Bool)

(assert (=> bs!1315283 m!6622698))

(assert (=> b!5656318 d!1786203))

(declare-fun b!5656862 () Bool)

(declare-fun e!3484052 () (InoxSet Context!10070))

(declare-fun e!3484053 () (InoxSet Context!10070))

(assert (=> b!5656862 (= e!3484052 e!3484053)))

(declare-fun c!994559 () Bool)

(assert (=> b!5656862 (= c!994559 ((_ is Union!15651) (regOne!31814 (regOne!31814 r!7292))))))

(declare-fun call!428060 () List!63252)

(declare-fun call!428059 () (InoxSet Context!10070))

(declare-fun bm!428053 () Bool)

(assert (=> bm!428053 (= call!428059 (derivationStepZipperDown!993 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292)))) (ite c!994559 (Context!10071 lt!2266835) (Context!10071 call!428060)) (h!69578 s!2326)))))

(declare-fun b!5656863 () Bool)

(declare-fun e!3484055 () (InoxSet Context!10070))

(declare-fun call!428062 () (InoxSet Context!10070))

(assert (=> b!5656863 (= e!3484055 ((_ map or) call!428059 call!428062))))

(declare-fun bm!428054 () Bool)

(declare-fun call!428063 () (InoxSet Context!10070))

(assert (=> bm!428054 (= call!428062 call!428063)))

(declare-fun b!5656865 () Bool)

(declare-fun c!994557 () Bool)

(declare-fun e!3484054 () Bool)

(assert (=> b!5656865 (= c!994557 e!3484054)))

(declare-fun res!2392871 () Bool)

(assert (=> b!5656865 (=> (not res!2392871) (not e!3484054))))

(assert (=> b!5656865 (= res!2392871 ((_ is Concat!24496) (regOne!31814 (regOne!31814 r!7292))))))

(assert (=> b!5656865 (= e!3484053 e!3484055)))

(declare-fun b!5656866 () Bool)

(declare-fun e!3484057 () (InoxSet Context!10070))

(declare-fun call!428058 () (InoxSet Context!10070))

(assert (=> b!5656866 (= e!3484057 call!428058)))

(declare-fun b!5656867 () Bool)

(assert (=> b!5656867 (= e!3484052 (store ((as const (Array Context!10070 Bool)) false) (Context!10071 lt!2266835) true))))

(declare-fun b!5656868 () Bool)

(assert (=> b!5656868 (= e!3484055 e!3484057)))

(declare-fun c!994556 () Bool)

(assert (=> b!5656868 (= c!994556 ((_ is Concat!24496) (regOne!31814 (regOne!31814 r!7292))))))

(declare-fun bm!428055 () Bool)

(declare-fun call!428061 () List!63252)

(assert (=> bm!428055 (= call!428061 call!428060)))

(declare-fun b!5656869 () Bool)

(assert (=> b!5656869 (= e!3484054 (nullable!5683 (regOne!31814 (regOne!31814 (regOne!31814 r!7292)))))))

(declare-fun b!5656870 () Bool)

(declare-fun e!3484056 () (InoxSet Context!10070))

(assert (=> b!5656870 (= e!3484056 call!428058)))

(declare-fun bm!428056 () Bool)

(assert (=> bm!428056 (= call!428058 call!428062)))

(declare-fun b!5656864 () Bool)

(assert (=> b!5656864 (= e!3484056 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786205 () Bool)

(declare-fun c!994558 () Bool)

(assert (=> d!1786205 (= c!994558 (and ((_ is ElementMatch!15651) (regOne!31814 (regOne!31814 r!7292))) (= (c!994391 (regOne!31814 (regOne!31814 r!7292))) (h!69578 s!2326))))))

(assert (=> d!1786205 (= (derivationStepZipperDown!993 (regOne!31814 (regOne!31814 r!7292)) (Context!10071 lt!2266835) (h!69578 s!2326)) e!3484052)))

(declare-fun b!5656871 () Bool)

(assert (=> b!5656871 (= e!3484053 ((_ map or) call!428059 call!428063))))

(declare-fun bm!428057 () Bool)

(assert (=> bm!428057 (= call!428063 (derivationStepZipperDown!993 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292)))))) (ite (or c!994559 c!994557) (Context!10071 lt!2266835) (Context!10071 call!428061)) (h!69578 s!2326)))))

(declare-fun bm!428058 () Bool)

(assert (=> bm!428058 (= call!428060 ($colon$colon!1690 (exprs!5535 (Context!10071 lt!2266835)) (ite (or c!994557 c!994556) (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 r!7292)))))))

(declare-fun b!5656872 () Bool)

(declare-fun c!994560 () Bool)

(assert (=> b!5656872 (= c!994560 ((_ is Star!15651) (regOne!31814 (regOne!31814 r!7292))))))

(assert (=> b!5656872 (= e!3484057 e!3484056)))

(assert (= (and d!1786205 c!994558) b!5656867))

(assert (= (and d!1786205 (not c!994558)) b!5656862))

(assert (= (and b!5656862 c!994559) b!5656871))

(assert (= (and b!5656862 (not c!994559)) b!5656865))

(assert (= (and b!5656865 res!2392871) b!5656869))

(assert (= (and b!5656865 c!994557) b!5656863))

(assert (= (and b!5656865 (not c!994557)) b!5656868))

(assert (= (and b!5656868 c!994556) b!5656866))

(assert (= (and b!5656868 (not c!994556)) b!5656872))

(assert (= (and b!5656872 c!994560) b!5656870))

(assert (= (and b!5656872 (not c!994560)) b!5656864))

(assert (= (or b!5656866 b!5656870) bm!428055))

(assert (= (or b!5656866 b!5656870) bm!428056))

(assert (= (or b!5656863 bm!428055) bm!428058))

(assert (= (or b!5656863 bm!428056) bm!428054))

(assert (= (or b!5656871 bm!428054) bm!428057))

(assert (= (or b!5656871 b!5656863) bm!428053))

(declare-fun m!6622700 () Bool)

(assert (=> b!5656869 m!6622700))

(declare-fun m!6622702 () Bool)

(assert (=> bm!428053 m!6622702))

(declare-fun m!6622704 () Bool)

(assert (=> bm!428057 m!6622704))

(declare-fun m!6622706 () Bool)

(assert (=> bm!428058 m!6622706))

(declare-fun m!6622708 () Bool)

(assert (=> b!5656867 m!6622708))

(assert (=> b!5656322 d!1786205))

(declare-fun bs!1315284 () Bool)

(declare-fun d!1786207 () Bool)

(assert (= bs!1315284 (and d!1786207 d!1786131)))

(declare-fun lambda!304502 () Int)

(assert (=> bs!1315284 (= lambda!304502 lambda!304468)))

(declare-fun bs!1315285 () Bool)

(assert (= bs!1315285 (and d!1786207 d!1786143)))

(assert (=> bs!1315285 (= lambda!304502 lambda!304477)))

(declare-fun bs!1315286 () Bool)

(assert (= bs!1315286 (and d!1786207 d!1786153)))

(assert (=> bs!1315286 (= lambda!304502 lambda!304478)))

(declare-fun b!5656893 () Bool)

(declare-fun e!3484071 () Regex!15651)

(assert (=> b!5656893 (= e!3484071 (Union!15651 (h!69576 (unfocusZipperList!1079 zl!343)) (generalisedUnion!1514 (t!376554 (unfocusZipperList!1079 zl!343)))))))

(declare-fun b!5656894 () Bool)

(declare-fun e!3484075 () Regex!15651)

(assert (=> b!5656894 (= e!3484075 e!3484071)))

(declare-fun c!994569 () Bool)

(assert (=> b!5656894 (= c!994569 ((_ is Cons!63128) (unfocusZipperList!1079 zl!343)))))

(declare-fun b!5656895 () Bool)

(assert (=> b!5656895 (= e!3484075 (h!69576 (unfocusZipperList!1079 zl!343)))))

(declare-fun b!5656896 () Bool)

(declare-fun e!3484074 () Bool)

(declare-fun e!3484072 () Bool)

(assert (=> b!5656896 (= e!3484074 e!3484072)))

(declare-fun c!994572 () Bool)

(assert (=> b!5656896 (= c!994572 (isEmpty!34973 (tail!11122 (unfocusZipperList!1079 zl!343))))))

(declare-fun b!5656897 () Bool)

(declare-fun e!3484070 () Bool)

(assert (=> b!5656897 (= e!3484070 e!3484074)))

(declare-fun c!994571 () Bool)

(assert (=> b!5656897 (= c!994571 (isEmpty!34973 (unfocusZipperList!1079 zl!343)))))

(declare-fun b!5656898 () Bool)

(declare-fun lt!2266924 () Regex!15651)

(declare-fun isEmptyLang!1192 (Regex!15651) Bool)

(assert (=> b!5656898 (= e!3484074 (isEmptyLang!1192 lt!2266924))))

(declare-fun b!5656899 () Bool)

(declare-fun isUnion!622 (Regex!15651) Bool)

(assert (=> b!5656899 (= e!3484072 (isUnion!622 lt!2266924))))

(declare-fun b!5656900 () Bool)

(declare-fun e!3484073 () Bool)

(assert (=> b!5656900 (= e!3484073 (isEmpty!34973 (t!376554 (unfocusZipperList!1079 zl!343))))))

(assert (=> d!1786207 e!3484070))

(declare-fun res!2392877 () Bool)

(assert (=> d!1786207 (=> (not res!2392877) (not e!3484070))))

(assert (=> d!1786207 (= res!2392877 (validRegex!7387 lt!2266924))))

(assert (=> d!1786207 (= lt!2266924 e!3484075)))

(declare-fun c!994570 () Bool)

(assert (=> d!1786207 (= c!994570 e!3484073)))

(declare-fun res!2392876 () Bool)

(assert (=> d!1786207 (=> (not res!2392876) (not e!3484073))))

(assert (=> d!1786207 (= res!2392876 ((_ is Cons!63128) (unfocusZipperList!1079 zl!343)))))

(assert (=> d!1786207 (forall!14800 (unfocusZipperList!1079 zl!343) lambda!304502)))

(assert (=> d!1786207 (= (generalisedUnion!1514 (unfocusZipperList!1079 zl!343)) lt!2266924)))

(declare-fun b!5656901 () Bool)

(assert (=> b!5656901 (= e!3484071 EmptyLang!15651)))

(declare-fun b!5656902 () Bool)

(assert (=> b!5656902 (= e!3484072 (= lt!2266924 (head!12027 (unfocusZipperList!1079 zl!343))))))

(assert (= (and d!1786207 res!2392876) b!5656900))

(assert (= (and d!1786207 c!994570) b!5656895))

(assert (= (and d!1786207 (not c!994570)) b!5656894))

(assert (= (and b!5656894 c!994569) b!5656893))

(assert (= (and b!5656894 (not c!994569)) b!5656901))

(assert (= (and d!1786207 res!2392877) b!5656897))

(assert (= (and b!5656897 c!994571) b!5656898))

(assert (= (and b!5656897 (not c!994571)) b!5656896))

(assert (= (and b!5656896 c!994572) b!5656902))

(assert (= (and b!5656896 (not c!994572)) b!5656899))

(assert (=> b!5656902 m!6622308))

(declare-fun m!6622710 () Bool)

(assert (=> b!5656902 m!6622710))

(declare-fun m!6622712 () Bool)

(assert (=> b!5656900 m!6622712))

(declare-fun m!6622714 () Bool)

(assert (=> b!5656893 m!6622714))

(declare-fun m!6622716 () Bool)

(assert (=> b!5656899 m!6622716))

(declare-fun m!6622718 () Bool)

(assert (=> b!5656898 m!6622718))

(assert (=> b!5656897 m!6622308))

(declare-fun m!6622720 () Bool)

(assert (=> b!5656897 m!6622720))

(declare-fun m!6622722 () Bool)

(assert (=> d!1786207 m!6622722))

(assert (=> d!1786207 m!6622308))

(declare-fun m!6622724 () Bool)

(assert (=> d!1786207 m!6622724))

(assert (=> b!5656896 m!6622308))

(declare-fun m!6622726 () Bool)

(assert (=> b!5656896 m!6622726))

(assert (=> b!5656896 m!6622726))

(declare-fun m!6622728 () Bool)

(assert (=> b!5656896 m!6622728))

(assert (=> b!5656311 d!1786207))

(declare-fun bs!1315287 () Bool)

(declare-fun d!1786209 () Bool)

(assert (= bs!1315287 (and d!1786209 d!1786131)))

(declare-fun lambda!304505 () Int)

(assert (=> bs!1315287 (= lambda!304505 lambda!304468)))

(declare-fun bs!1315288 () Bool)

(assert (= bs!1315288 (and d!1786209 d!1786143)))

(assert (=> bs!1315288 (= lambda!304505 lambda!304477)))

(declare-fun bs!1315289 () Bool)

(assert (= bs!1315289 (and d!1786209 d!1786153)))

(assert (=> bs!1315289 (= lambda!304505 lambda!304478)))

(declare-fun bs!1315290 () Bool)

(assert (= bs!1315290 (and d!1786209 d!1786207)))

(assert (=> bs!1315290 (= lambda!304505 lambda!304502)))

(declare-fun lt!2266927 () List!63252)

(assert (=> d!1786209 (forall!14800 lt!2266927 lambda!304505)))

(declare-fun e!3484078 () List!63252)

(assert (=> d!1786209 (= lt!2266927 e!3484078)))

(declare-fun c!994575 () Bool)

(assert (=> d!1786209 (= c!994575 ((_ is Cons!63129) zl!343))))

(assert (=> d!1786209 (= (unfocusZipperList!1079 zl!343) lt!2266927)))

(declare-fun b!5656907 () Bool)

(assert (=> b!5656907 (= e!3484078 (Cons!63128 (generalisedConcat!1266 (exprs!5535 (h!69577 zl!343))) (unfocusZipperList!1079 (t!376555 zl!343))))))

(declare-fun b!5656908 () Bool)

(assert (=> b!5656908 (= e!3484078 Nil!63128)))

(assert (= (and d!1786209 c!994575) b!5656907))

(assert (= (and d!1786209 (not c!994575)) b!5656908))

(declare-fun m!6622730 () Bool)

(assert (=> d!1786209 m!6622730))

(assert (=> b!5656907 m!6622256))

(declare-fun m!6622732 () Bool)

(assert (=> b!5656907 m!6622732))

(assert (=> b!5656311 d!1786209))

(declare-fun d!1786211 () Bool)

(assert (=> d!1786211 (= (isEmpty!34974 (t!376555 zl!343)) ((_ is Nil!63129) (t!376555 zl!343)))))

(assert (=> b!5656320 d!1786211))

(declare-fun d!1786213 () Bool)

(declare-fun c!994576 () Bool)

(assert (=> d!1786213 (= c!994576 (isEmpty!34976 (t!376556 s!2326)))))

(declare-fun e!3484079 () Bool)

(assert (=> d!1786213 (= (matchZipper!1789 lt!2266834 (t!376556 s!2326)) e!3484079)))

(declare-fun b!5656909 () Bool)

(assert (=> b!5656909 (= e!3484079 (nullableZipper!1623 lt!2266834))))

(declare-fun b!5656910 () Bool)

(assert (=> b!5656910 (= e!3484079 (matchZipper!1789 (derivationStepZipper!1736 lt!2266834 (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))))))

(assert (= (and d!1786213 c!994576) b!5656909))

(assert (= (and d!1786213 (not c!994576)) b!5656910))

(assert (=> d!1786213 m!6622520))

(declare-fun m!6622734 () Bool)

(assert (=> b!5656909 m!6622734))

(assert (=> b!5656910 m!6622524))

(assert (=> b!5656910 m!6622524))

(declare-fun m!6622736 () Bool)

(assert (=> b!5656910 m!6622736))

(assert (=> b!5656910 m!6622528))

(assert (=> b!5656910 m!6622736))

(assert (=> b!5656910 m!6622528))

(declare-fun m!6622738 () Bool)

(assert (=> b!5656910 m!6622738))

(assert (=> b!5656294 d!1786213))

(declare-fun bs!1315291 () Bool)

(declare-fun b!5656950 () Bool)

(assert (= bs!1315291 (and b!5656950 d!1786183)))

(declare-fun lambda!304510 () Int)

(assert (=> bs!1315291 (not (= lambda!304510 lambda!304496))))

(declare-fun bs!1315292 () Bool)

(assert (= bs!1315292 (and b!5656950 b!5656308)))

(assert (=> bs!1315292 (not (= lambda!304510 lambda!304448))))

(declare-fun bs!1315293 () Bool)

(assert (= bs!1315293 (and b!5656950 d!1786181)))

(assert (=> bs!1315293 (not (= lambda!304510 lambda!304490))))

(assert (=> bs!1315292 (not (= lambda!304510 lambda!304447))))

(assert (=> bs!1315291 (not (= lambda!304510 lambda!304495))))

(assert (=> b!5656950 true))

(assert (=> b!5656950 true))

(declare-fun bs!1315294 () Bool)

(declare-fun b!5656951 () Bool)

(assert (= bs!1315294 (and b!5656951 d!1786183)))

(declare-fun lambda!304511 () Int)

(assert (=> bs!1315294 (= lambda!304511 lambda!304496)))

(declare-fun bs!1315295 () Bool)

(assert (= bs!1315295 (and b!5656951 b!5656950)))

(assert (=> bs!1315295 (not (= lambda!304511 lambda!304510))))

(declare-fun bs!1315296 () Bool)

(assert (= bs!1315296 (and b!5656951 b!5656308)))

(assert (=> bs!1315296 (= lambda!304511 lambda!304448)))

(declare-fun bs!1315297 () Bool)

(assert (= bs!1315297 (and b!5656951 d!1786181)))

(assert (=> bs!1315297 (not (= lambda!304511 lambda!304490))))

(assert (=> bs!1315296 (not (= lambda!304511 lambda!304447))))

(assert (=> bs!1315294 (not (= lambda!304511 lambda!304495))))

(assert (=> b!5656951 true))

(assert (=> b!5656951 true))

(declare-fun b!5656943 () Bool)

(declare-fun e!3484098 () Bool)

(declare-fun e!3484099 () Bool)

(assert (=> b!5656943 (= e!3484098 e!3484099)))

(declare-fun res!2392895 () Bool)

(assert (=> b!5656943 (= res!2392895 (matchRSpec!2754 (regOne!31815 r!7292) s!2326))))

(assert (=> b!5656943 (=> res!2392895 e!3484099)))

(declare-fun b!5656944 () Bool)

(declare-fun e!3484102 () Bool)

(assert (=> b!5656944 (= e!3484098 e!3484102)))

(declare-fun c!994587 () Bool)

(assert (=> b!5656944 (= c!994587 ((_ is Star!15651) r!7292))))

(declare-fun bm!428063 () Bool)

(declare-fun call!428069 () Bool)

(assert (=> bm!428063 (= call!428069 (isEmpty!34976 s!2326))))

(declare-fun b!5656945 () Bool)

(declare-fun c!994586 () Bool)

(assert (=> b!5656945 (= c!994586 ((_ is Union!15651) r!7292))))

(declare-fun e!3484101 () Bool)

(assert (=> b!5656945 (= e!3484101 e!3484098)))

(declare-fun b!5656946 () Bool)

(assert (=> b!5656946 (= e!3484099 (matchRSpec!2754 (regTwo!31815 r!7292) s!2326))))

(declare-fun call!428068 () Bool)

(declare-fun bm!428064 () Bool)

(assert (=> bm!428064 (= call!428068 (Exists!2751 (ite c!994587 lambda!304510 lambda!304511)))))

(declare-fun b!5656948 () Bool)

(declare-fun res!2392896 () Bool)

(declare-fun e!3484104 () Bool)

(assert (=> b!5656948 (=> res!2392896 e!3484104)))

(assert (=> b!5656948 (= res!2392896 call!428069)))

(assert (=> b!5656948 (= e!3484102 e!3484104)))

(declare-fun b!5656949 () Bool)

(declare-fun c!994588 () Bool)

(assert (=> b!5656949 (= c!994588 ((_ is ElementMatch!15651) r!7292))))

(declare-fun e!3484100 () Bool)

(assert (=> b!5656949 (= e!3484100 e!3484101)))

(assert (=> b!5656950 (= e!3484104 call!428068)))

(assert (=> b!5656951 (= e!3484102 call!428068)))

(declare-fun b!5656947 () Bool)

(declare-fun e!3484103 () Bool)

(assert (=> b!5656947 (= e!3484103 e!3484100)))

(declare-fun res!2392894 () Bool)

(assert (=> b!5656947 (= res!2392894 (not ((_ is EmptyLang!15651) r!7292)))))

(assert (=> b!5656947 (=> (not res!2392894) (not e!3484100))))

(declare-fun d!1786215 () Bool)

(declare-fun c!994585 () Bool)

(assert (=> d!1786215 (= c!994585 ((_ is EmptyExpr!15651) r!7292))))

(assert (=> d!1786215 (= (matchRSpec!2754 r!7292 s!2326) e!3484103)))

(declare-fun b!5656952 () Bool)

(assert (=> b!5656952 (= e!3484101 (= s!2326 (Cons!63130 (c!994391 r!7292) Nil!63130)))))

(declare-fun b!5656953 () Bool)

(assert (=> b!5656953 (= e!3484103 call!428069)))

(assert (= (and d!1786215 c!994585) b!5656953))

(assert (= (and d!1786215 (not c!994585)) b!5656947))

(assert (= (and b!5656947 res!2392894) b!5656949))

(assert (= (and b!5656949 c!994588) b!5656952))

(assert (= (and b!5656949 (not c!994588)) b!5656945))

(assert (= (and b!5656945 c!994586) b!5656943))

(assert (= (and b!5656945 (not c!994586)) b!5656944))

(assert (= (and b!5656943 (not res!2392895)) b!5656946))

(assert (= (and b!5656944 c!994587) b!5656948))

(assert (= (and b!5656944 (not c!994587)) b!5656951))

(assert (= (and b!5656948 (not res!2392896)) b!5656950))

(assert (= (or b!5656950 b!5656951) bm!428064))

(assert (= (or b!5656953 b!5656948) bm!428063))

(declare-fun m!6622740 () Bool)

(assert (=> b!5656943 m!6622740))

(declare-fun m!6622742 () Bool)

(assert (=> bm!428063 m!6622742))

(declare-fun m!6622744 () Bool)

(assert (=> b!5656946 m!6622744))

(declare-fun m!6622746 () Bool)

(assert (=> bm!428064 m!6622746))

(assert (=> b!5656303 d!1786215))

(declare-fun b!5656982 () Bool)

(declare-fun e!3484123 () Bool)

(declare-fun derivativeStep!4476 (Regex!15651 C!31572) Regex!15651)

(assert (=> b!5656982 (= e!3484123 (matchR!7836 (derivativeStep!4476 r!7292 (head!12026 s!2326)) (tail!11121 s!2326)))))

(declare-fun b!5656983 () Bool)

(declare-fun e!3484120 () Bool)

(declare-fun e!3484122 () Bool)

(assert (=> b!5656983 (= e!3484120 e!3484122)))

(declare-fun res!2392915 () Bool)

(assert (=> b!5656983 (=> (not res!2392915) (not e!3484122))))

(declare-fun lt!2266930 () Bool)

(assert (=> b!5656983 (= res!2392915 (not lt!2266930))))

(declare-fun b!5656984 () Bool)

(declare-fun e!3484121 () Bool)

(declare-fun call!428072 () Bool)

(assert (=> b!5656984 (= e!3484121 (= lt!2266930 call!428072))))

(declare-fun b!5656985 () Bool)

(declare-fun e!3484125 () Bool)

(assert (=> b!5656985 (= e!3484125 (not (= (head!12026 s!2326) (c!994391 r!7292))))))

(declare-fun b!5656986 () Bool)

(declare-fun e!3484124 () Bool)

(assert (=> b!5656986 (= e!3484124 (= (head!12026 s!2326) (c!994391 r!7292)))))

(declare-fun b!5656987 () Bool)

(declare-fun e!3484119 () Bool)

(assert (=> b!5656987 (= e!3484121 e!3484119)))

(declare-fun c!994596 () Bool)

(assert (=> b!5656987 (= c!994596 ((_ is EmptyLang!15651) r!7292))))

(declare-fun b!5656988 () Bool)

(declare-fun res!2392914 () Bool)

(assert (=> b!5656988 (=> res!2392914 e!3484120)))

(assert (=> b!5656988 (= res!2392914 e!3484124)))

(declare-fun res!2392919 () Bool)

(assert (=> b!5656988 (=> (not res!2392919) (not e!3484124))))

(assert (=> b!5656988 (= res!2392919 lt!2266930)))

(declare-fun bm!428067 () Bool)

(assert (=> bm!428067 (= call!428072 (isEmpty!34976 s!2326))))

(declare-fun b!5656989 () Bool)

(assert (=> b!5656989 (= e!3484122 e!3484125)))

(declare-fun res!2392920 () Bool)

(assert (=> b!5656989 (=> res!2392920 e!3484125)))

(assert (=> b!5656989 (= res!2392920 call!428072)))

(declare-fun b!5656990 () Bool)

(declare-fun res!2392918 () Bool)

(assert (=> b!5656990 (=> (not res!2392918) (not e!3484124))))

(assert (=> b!5656990 (= res!2392918 (not call!428072))))

(declare-fun b!5656991 () Bool)

(declare-fun res!2392913 () Bool)

(assert (=> b!5656991 (=> res!2392913 e!3484125)))

(assert (=> b!5656991 (= res!2392913 (not (isEmpty!34976 (tail!11121 s!2326))))))

(declare-fun d!1786217 () Bool)

(assert (=> d!1786217 e!3484121))

(declare-fun c!994597 () Bool)

(assert (=> d!1786217 (= c!994597 ((_ is EmptyExpr!15651) r!7292))))

(assert (=> d!1786217 (= lt!2266930 e!3484123)))

(declare-fun c!994595 () Bool)

(assert (=> d!1786217 (= c!994595 (isEmpty!34976 s!2326))))

(assert (=> d!1786217 (validRegex!7387 r!7292)))

(assert (=> d!1786217 (= (matchR!7836 r!7292 s!2326) lt!2266930)))

(declare-fun b!5656992 () Bool)

(assert (=> b!5656992 (= e!3484123 (nullable!5683 r!7292))))

(declare-fun b!5656993 () Bool)

(declare-fun res!2392916 () Bool)

(assert (=> b!5656993 (=> (not res!2392916) (not e!3484124))))

(assert (=> b!5656993 (= res!2392916 (isEmpty!34976 (tail!11121 s!2326)))))

(declare-fun b!5656994 () Bool)

(declare-fun res!2392917 () Bool)

(assert (=> b!5656994 (=> res!2392917 e!3484120)))

(assert (=> b!5656994 (= res!2392917 (not ((_ is ElementMatch!15651) r!7292)))))

(assert (=> b!5656994 (= e!3484119 e!3484120)))

(declare-fun b!5656995 () Bool)

(assert (=> b!5656995 (= e!3484119 (not lt!2266930))))

(assert (= (and d!1786217 c!994595) b!5656992))

(assert (= (and d!1786217 (not c!994595)) b!5656982))

(assert (= (and d!1786217 c!994597) b!5656984))

(assert (= (and d!1786217 (not c!994597)) b!5656987))

(assert (= (and b!5656987 c!994596) b!5656995))

(assert (= (and b!5656987 (not c!994596)) b!5656994))

(assert (= (and b!5656994 (not res!2392917)) b!5656988))

(assert (= (and b!5656988 res!2392919) b!5656990))

(assert (= (and b!5656990 res!2392918) b!5656993))

(assert (= (and b!5656993 res!2392916) b!5656986))

(assert (= (and b!5656988 (not res!2392914)) b!5656983))

(assert (= (and b!5656983 res!2392915) b!5656989))

(assert (= (and b!5656989 (not res!2392920)) b!5656991))

(assert (= (and b!5656991 (not res!2392913)) b!5656985))

(assert (= (or b!5656984 b!5656989 b!5656990) bm!428067))

(declare-fun m!6622748 () Bool)

(assert (=> b!5656991 m!6622748))

(assert (=> b!5656991 m!6622748))

(declare-fun m!6622750 () Bool)

(assert (=> b!5656991 m!6622750))

(declare-fun m!6622752 () Bool)

(assert (=> b!5656986 m!6622752))

(assert (=> d!1786217 m!6622742))

(assert (=> d!1786217 m!6622304))

(assert (=> b!5656985 m!6622752))

(declare-fun m!6622754 () Bool)

(assert (=> b!5656992 m!6622754))

(assert (=> b!5656982 m!6622752))

(assert (=> b!5656982 m!6622752))

(declare-fun m!6622756 () Bool)

(assert (=> b!5656982 m!6622756))

(assert (=> b!5656982 m!6622748))

(assert (=> b!5656982 m!6622756))

(assert (=> b!5656982 m!6622748))

(declare-fun m!6622758 () Bool)

(assert (=> b!5656982 m!6622758))

(assert (=> bm!428067 m!6622742))

(assert (=> b!5656993 m!6622748))

(assert (=> b!5656993 m!6622748))

(assert (=> b!5656993 m!6622750))

(assert (=> b!5656303 d!1786217))

(declare-fun d!1786219 () Bool)

(assert (=> d!1786219 (= (matchR!7836 r!7292 s!2326) (matchRSpec!2754 r!7292 s!2326))))

(declare-fun lt!2266933 () Unit!156136)

(declare-fun choose!42847 (Regex!15651 List!63254) Unit!156136)

(assert (=> d!1786219 (= lt!2266933 (choose!42847 r!7292 s!2326))))

(assert (=> d!1786219 (validRegex!7387 r!7292)))

(assert (=> d!1786219 (= (mainMatchTheorem!2754 r!7292 s!2326) lt!2266933)))

(declare-fun bs!1315298 () Bool)

(assert (= bs!1315298 d!1786219))

(assert (=> bs!1315298 m!6622260))

(assert (=> bs!1315298 m!6622258))

(declare-fun m!6622760 () Bool)

(assert (=> bs!1315298 m!6622760))

(assert (=> bs!1315298 m!6622304))

(assert (=> b!5656303 d!1786219))

(declare-fun c!994603 () Bool)

(declare-fun bm!428074 () Bool)

(declare-fun c!994602 () Bool)

(declare-fun call!428080 () Bool)

(assert (=> bm!428074 (= call!428080 (validRegex!7387 (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))))))

(declare-fun b!5657014 () Bool)

(declare-fun e!3484142 () Bool)

(declare-fun e!3484141 () Bool)

(assert (=> b!5657014 (= e!3484142 e!3484141)))

(assert (=> b!5657014 (= c!994602 ((_ is Union!15651) r!7292))))

(declare-fun b!5657015 () Bool)

(declare-fun e!3484143 () Bool)

(assert (=> b!5657015 (= e!3484142 e!3484143)))

(declare-fun res!2392935 () Bool)

(assert (=> b!5657015 (= res!2392935 (not (nullable!5683 (reg!15980 r!7292))))))

(assert (=> b!5657015 (=> (not res!2392935) (not e!3484143))))

(declare-fun b!5657016 () Bool)

(assert (=> b!5657016 (= e!3484143 call!428080)))

(declare-fun b!5657017 () Bool)

(declare-fun e!3484146 () Bool)

(assert (=> b!5657017 (= e!3484146 e!3484142)))

(assert (=> b!5657017 (= c!994603 ((_ is Star!15651) r!7292))))

(declare-fun d!1786221 () Bool)

(declare-fun res!2392933 () Bool)

(assert (=> d!1786221 (=> res!2392933 e!3484146)))

(assert (=> d!1786221 (= res!2392933 ((_ is ElementMatch!15651) r!7292))))

(assert (=> d!1786221 (= (validRegex!7387 r!7292) e!3484146)))

(declare-fun bm!428075 () Bool)

(declare-fun call!428081 () Bool)

(assert (=> bm!428075 (= call!428081 call!428080)))

(declare-fun b!5657018 () Bool)

(declare-fun e!3484140 () Bool)

(declare-fun e!3484145 () Bool)

(assert (=> b!5657018 (= e!3484140 e!3484145)))

(declare-fun res!2392932 () Bool)

(assert (=> b!5657018 (=> (not res!2392932) (not e!3484145))))

(declare-fun call!428079 () Bool)

(assert (=> b!5657018 (= res!2392932 call!428079)))

(declare-fun b!5657019 () Bool)

(declare-fun res!2392934 () Bool)

(assert (=> b!5657019 (=> res!2392934 e!3484140)))

(assert (=> b!5657019 (= res!2392934 (not ((_ is Concat!24496) r!7292)))))

(assert (=> b!5657019 (= e!3484141 e!3484140)))

(declare-fun b!5657020 () Bool)

(assert (=> b!5657020 (= e!3484145 call!428081)))

(declare-fun b!5657021 () Bool)

(declare-fun res!2392931 () Bool)

(declare-fun e!3484144 () Bool)

(assert (=> b!5657021 (=> (not res!2392931) (not e!3484144))))

(assert (=> b!5657021 (= res!2392931 call!428079)))

(assert (=> b!5657021 (= e!3484141 e!3484144)))

(declare-fun bm!428076 () Bool)

(assert (=> bm!428076 (= call!428079 (validRegex!7387 (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))))))

(declare-fun b!5657022 () Bool)

(assert (=> b!5657022 (= e!3484144 call!428081)))

(assert (= (and d!1786221 (not res!2392933)) b!5657017))

(assert (= (and b!5657017 c!994603) b!5657015))

(assert (= (and b!5657017 (not c!994603)) b!5657014))

(assert (= (and b!5657015 res!2392935) b!5657016))

(assert (= (and b!5657014 c!994602) b!5657021))

(assert (= (and b!5657014 (not c!994602)) b!5657019))

(assert (= (and b!5657021 res!2392931) b!5657022))

(assert (= (and b!5657019 (not res!2392934)) b!5657018))

(assert (= (and b!5657018 res!2392932) b!5657020))

(assert (= (or b!5657022 b!5657020) bm!428075))

(assert (= (or b!5657021 b!5657018) bm!428076))

(assert (= (or b!5657016 bm!428075) bm!428074))

(declare-fun m!6622762 () Bool)

(assert (=> bm!428074 m!6622762))

(declare-fun m!6622764 () Bool)

(assert (=> b!5657015 m!6622764))

(declare-fun m!6622766 () Bool)

(assert (=> bm!428076 m!6622766))

(assert (=> start!584890 d!1786221))

(declare-fun d!1786223 () Bool)

(declare-fun e!3484149 () Bool)

(assert (=> d!1786223 e!3484149))

(declare-fun res!2392938 () Bool)

(assert (=> d!1786223 (=> (not res!2392938) (not e!3484149))))

(declare-fun lt!2266936 () List!63253)

(declare-fun noDuplicate!1603 (List!63253) Bool)

(assert (=> d!1786223 (= res!2392938 (noDuplicate!1603 lt!2266936))))

(declare-fun choose!42848 ((InoxSet Context!10070)) List!63253)

(assert (=> d!1786223 (= lt!2266936 (choose!42848 z!1189))))

(assert (=> d!1786223 (= (toList!9435 z!1189) lt!2266936)))

(declare-fun b!5657025 () Bool)

(declare-fun content!11424 (List!63253) (InoxSet Context!10070))

(assert (=> b!5657025 (= e!3484149 (= (content!11424 lt!2266936) z!1189))))

(assert (= (and d!1786223 res!2392938) b!5657025))

(declare-fun m!6622768 () Bool)

(assert (=> d!1786223 m!6622768))

(declare-fun m!6622770 () Bool)

(assert (=> d!1786223 m!6622770))

(declare-fun m!6622772 () Bool)

(assert (=> b!5657025 m!6622772))

(assert (=> b!5656312 d!1786223))

(declare-fun d!1786225 () Bool)

(assert (=> d!1786225 (= (nullable!5683 (regOne!31814 (regOne!31814 r!7292))) (nullableFct!1769 (regOne!31814 (regOne!31814 r!7292))))))

(declare-fun bs!1315299 () Bool)

(assert (= bs!1315299 d!1786225))

(declare-fun m!6622774 () Bool)

(assert (=> bs!1315299 m!6622774))

(assert (=> b!5656302 d!1786225))

(declare-fun b!5657030 () Bool)

(declare-fun e!3484152 () Bool)

(declare-fun tp!1566940 () Bool)

(declare-fun tp!1566941 () Bool)

(assert (=> b!5657030 (= e!3484152 (and tp!1566940 tp!1566941))))

(assert (=> b!5656321 (= tp!1566874 e!3484152)))

(assert (= (and b!5656321 ((_ is Cons!63128) (exprs!5535 (h!69577 zl!343)))) b!5657030))

(declare-fun b!5657035 () Bool)

(declare-fun e!3484155 () Bool)

(declare-fun tp!1566944 () Bool)

(assert (=> b!5657035 (= e!3484155 (and tp_is_empty!40555 tp!1566944))))

(assert (=> b!5656305 (= tp!1566873 e!3484155)))

(assert (= (and b!5656305 ((_ is Cons!63130) (t!376556 s!2326))) b!5657035))

(declare-fun b!5657043 () Bool)

(declare-fun e!3484161 () Bool)

(declare-fun tp!1566949 () Bool)

(assert (=> b!5657043 (= e!3484161 tp!1566949)))

(declare-fun e!3484160 () Bool)

(declare-fun tp!1566950 () Bool)

(declare-fun b!5657042 () Bool)

(assert (=> b!5657042 (= e!3484160 (and (inv!82374 (h!69577 (t!376555 zl!343))) e!3484161 tp!1566950))))

(assert (=> b!5656296 (= tp!1566876 e!3484160)))

(assert (= b!5657042 b!5657043))

(assert (= (and b!5656296 ((_ is Cons!63129) (t!376555 zl!343))) b!5657042))

(declare-fun m!6622776 () Bool)

(assert (=> b!5657042 m!6622776))

(declare-fun b!5657057 () Bool)

(declare-fun e!3484164 () Bool)

(declare-fun tp!1566961 () Bool)

(declare-fun tp!1566965 () Bool)

(assert (=> b!5657057 (= e!3484164 (and tp!1566961 tp!1566965))))

(declare-fun b!5657056 () Bool)

(declare-fun tp!1566963 () Bool)

(assert (=> b!5657056 (= e!3484164 tp!1566963)))

(declare-fun b!5657054 () Bool)

(assert (=> b!5657054 (= e!3484164 tp_is_empty!40555)))

(assert (=> b!5656309 (= tp!1566877 e!3484164)))

(declare-fun b!5657055 () Bool)

(declare-fun tp!1566964 () Bool)

(declare-fun tp!1566962 () Bool)

(assert (=> b!5657055 (= e!3484164 (and tp!1566964 tp!1566962))))

(assert (= (and b!5656309 ((_ is ElementMatch!15651) (regOne!31814 r!7292))) b!5657054))

(assert (= (and b!5656309 ((_ is Concat!24496) (regOne!31814 r!7292))) b!5657055))

(assert (= (and b!5656309 ((_ is Star!15651) (regOne!31814 r!7292))) b!5657056))

(assert (= (and b!5656309 ((_ is Union!15651) (regOne!31814 r!7292))) b!5657057))

(declare-fun b!5657061 () Bool)

(declare-fun e!3484165 () Bool)

(declare-fun tp!1566966 () Bool)

(declare-fun tp!1566970 () Bool)

(assert (=> b!5657061 (= e!3484165 (and tp!1566966 tp!1566970))))

(declare-fun b!5657060 () Bool)

(declare-fun tp!1566968 () Bool)

(assert (=> b!5657060 (= e!3484165 tp!1566968)))

(declare-fun b!5657058 () Bool)

(assert (=> b!5657058 (= e!3484165 tp_is_empty!40555)))

(assert (=> b!5656309 (= tp!1566875 e!3484165)))

(declare-fun b!5657059 () Bool)

(declare-fun tp!1566969 () Bool)

(declare-fun tp!1566967 () Bool)

(assert (=> b!5657059 (= e!3484165 (and tp!1566969 tp!1566967))))

(assert (= (and b!5656309 ((_ is ElementMatch!15651) (regTwo!31814 r!7292))) b!5657058))

(assert (= (and b!5656309 ((_ is Concat!24496) (regTwo!31814 r!7292))) b!5657059))

(assert (= (and b!5656309 ((_ is Star!15651) (regTwo!31814 r!7292))) b!5657060))

(assert (= (and b!5656309 ((_ is Union!15651) (regTwo!31814 r!7292))) b!5657061))

(declare-fun b!5657065 () Bool)

(declare-fun e!3484166 () Bool)

(declare-fun tp!1566971 () Bool)

(declare-fun tp!1566975 () Bool)

(assert (=> b!5657065 (= e!3484166 (and tp!1566971 tp!1566975))))

(declare-fun b!5657064 () Bool)

(declare-fun tp!1566973 () Bool)

(assert (=> b!5657064 (= e!3484166 tp!1566973)))

(declare-fun b!5657062 () Bool)

(assert (=> b!5657062 (= e!3484166 tp_is_empty!40555)))

(assert (=> b!5656310 (= tp!1566868 e!3484166)))

(declare-fun b!5657063 () Bool)

(declare-fun tp!1566974 () Bool)

(declare-fun tp!1566972 () Bool)

(assert (=> b!5657063 (= e!3484166 (and tp!1566974 tp!1566972))))

(assert (= (and b!5656310 ((_ is ElementMatch!15651) (regOne!31815 r!7292))) b!5657062))

(assert (= (and b!5656310 ((_ is Concat!24496) (regOne!31815 r!7292))) b!5657063))

(assert (= (and b!5656310 ((_ is Star!15651) (regOne!31815 r!7292))) b!5657064))

(assert (= (and b!5656310 ((_ is Union!15651) (regOne!31815 r!7292))) b!5657065))

(declare-fun b!5657069 () Bool)

(declare-fun e!3484167 () Bool)

(declare-fun tp!1566976 () Bool)

(declare-fun tp!1566980 () Bool)

(assert (=> b!5657069 (= e!3484167 (and tp!1566976 tp!1566980))))

(declare-fun b!5657068 () Bool)

(declare-fun tp!1566978 () Bool)

(assert (=> b!5657068 (= e!3484167 tp!1566978)))

(declare-fun b!5657066 () Bool)

(assert (=> b!5657066 (= e!3484167 tp_is_empty!40555)))

(assert (=> b!5656310 (= tp!1566872 e!3484167)))

(declare-fun b!5657067 () Bool)

(declare-fun tp!1566979 () Bool)

(declare-fun tp!1566977 () Bool)

(assert (=> b!5657067 (= e!3484167 (and tp!1566979 tp!1566977))))

(assert (= (and b!5656310 ((_ is ElementMatch!15651) (regTwo!31815 r!7292))) b!5657066))

(assert (= (and b!5656310 ((_ is Concat!24496) (regTwo!31815 r!7292))) b!5657067))

(assert (= (and b!5656310 ((_ is Star!15651) (regTwo!31815 r!7292))) b!5657068))

(assert (= (and b!5656310 ((_ is Union!15651) (regTwo!31815 r!7292))) b!5657069))

(declare-fun condSetEmpty!37828 () Bool)

(assert (=> setNonEmpty!37822 (= condSetEmpty!37828 (= setRest!37822 ((as const (Array Context!10070 Bool)) false)))))

(declare-fun setRes!37828 () Bool)

(assert (=> setNonEmpty!37822 (= tp!1566871 setRes!37828)))

(declare-fun setIsEmpty!37828 () Bool)

(assert (=> setIsEmpty!37828 setRes!37828))

(declare-fun setNonEmpty!37828 () Bool)

(declare-fun tp!1566985 () Bool)

(declare-fun setElem!37828 () Context!10070)

(declare-fun e!3484170 () Bool)

(assert (=> setNonEmpty!37828 (= setRes!37828 (and tp!1566985 (inv!82374 setElem!37828) e!3484170))))

(declare-fun setRest!37828 () (InoxSet Context!10070))

(assert (=> setNonEmpty!37828 (= setRest!37822 ((_ map or) (store ((as const (Array Context!10070 Bool)) false) setElem!37828 true) setRest!37828))))

(declare-fun b!5657074 () Bool)

(declare-fun tp!1566986 () Bool)

(assert (=> b!5657074 (= e!3484170 tp!1566986)))

(assert (= (and setNonEmpty!37822 condSetEmpty!37828) setIsEmpty!37828))

(assert (= (and setNonEmpty!37822 (not condSetEmpty!37828)) setNonEmpty!37828))

(assert (= setNonEmpty!37828 b!5657074))

(declare-fun m!6622778 () Bool)

(assert (=> setNonEmpty!37828 m!6622778))

(declare-fun b!5657078 () Bool)

(declare-fun e!3484171 () Bool)

(declare-fun tp!1566987 () Bool)

(declare-fun tp!1566991 () Bool)

(assert (=> b!5657078 (= e!3484171 (and tp!1566987 tp!1566991))))

(declare-fun b!5657077 () Bool)

(declare-fun tp!1566989 () Bool)

(assert (=> b!5657077 (= e!3484171 tp!1566989)))

(declare-fun b!5657075 () Bool)

(assert (=> b!5657075 (= e!3484171 tp_is_empty!40555)))

(assert (=> b!5656314 (= tp!1566869 e!3484171)))

(declare-fun b!5657076 () Bool)

(declare-fun tp!1566990 () Bool)

(declare-fun tp!1566988 () Bool)

(assert (=> b!5657076 (= e!3484171 (and tp!1566990 tp!1566988))))

(assert (= (and b!5656314 ((_ is ElementMatch!15651) (reg!15980 r!7292))) b!5657075))

(assert (= (and b!5656314 ((_ is Concat!24496) (reg!15980 r!7292))) b!5657076))

(assert (= (and b!5656314 ((_ is Star!15651) (reg!15980 r!7292))) b!5657077))

(assert (= (and b!5656314 ((_ is Union!15651) (reg!15980 r!7292))) b!5657078))

(declare-fun b!5657079 () Bool)

(declare-fun e!3484172 () Bool)

(declare-fun tp!1566992 () Bool)

(declare-fun tp!1566993 () Bool)

(assert (=> b!5657079 (= e!3484172 (and tp!1566992 tp!1566993))))

(assert (=> b!5656307 (= tp!1566870 e!3484172)))

(assert (= (and b!5656307 ((_ is Cons!63128) (exprs!5535 setElem!37822))) b!5657079))

(declare-fun b_lambda!213895 () Bool)

(assert (= b_lambda!213885 (or b!5656316 b_lambda!213895)))

(declare-fun bs!1315300 () Bool)

(declare-fun d!1786227 () Bool)

(assert (= bs!1315300 (and d!1786227 b!5656316)))

(assert (=> bs!1315300 (= (dynLambda!24694 lambda!304449 (h!69577 zl!343)) (derivationStepZipperUp!919 (h!69577 zl!343) (h!69578 s!2326)))))

(assert (=> bs!1315300 m!6622232))

(assert (=> d!1786117 d!1786227))

(declare-fun b_lambda!213897 () Bool)

(assert (= b_lambda!213893 (or b!5656316 b_lambda!213897)))

(declare-fun bs!1315301 () Bool)

(declare-fun d!1786229 () Bool)

(assert (= bs!1315301 (and d!1786229 b!5656316)))

(assert (=> bs!1315301 (= (dynLambda!24694 lambda!304449 lt!2266840) (derivationStepZipperUp!919 lt!2266840 (h!69578 s!2326)))))

(assert (=> bs!1315301 m!6622292))

(assert (=> d!1786201 d!1786229))

(check-sat (not b!5656631) (not b!5656991) (not b!5656857) (not b!5656699) (not b!5656848) (not b!5657074) (not bm!428074) (not b_lambda!213897) (not bm!428007) (not d!1786213) (not bm!428013) (not b!5656986) (not b!5656897) (not b!5656703) (not b!5656829) (not d!1786179) (not b!5656702) (not d!1786177) (not b!5656825) (not b!5657079) (not b!5657025) (not d!1786209) (not b!5656982) (not b!5656827) (not d!1786159) (not d!1786225) (not d!1786127) (not b!5657065) (not b!5657059) (not b!5656946) (not b!5657060) (not b!5657077) (not b!5656700) (not b!5656724) tp_is_empty!40555 (not bs!1315300) (not bm!428021) (not b!5657068) (not b!5656701) (not d!1786219) (not b!5657069) (not d!1786183) (not b!5656846) (not d!1786207) (not b!5656898) (not d!1786157) (not b!5656698) (not d!1786217) (not b!5657042) (not d!1786131) (not b!5656899) (not d!1786201) (not b!5656854) (not b!5656943) (not b!5656630) (not b!5656574) (not b!5657055) (not bm!428002) (not b!5657078) (not d!1786139) (not b!5656828) (not b!5657067) (not b!5656727) (not bm!428076) (not d!1786097) (not b!5657056) (not b!5656852) (not b!5656572) (not b!5656909) (not b!5656536) (not b!5657057) (not b!5656893) (not d!1786197) (not b!5656494) (not b!5656859) (not b!5657035) (not d!1786155) (not b!5656910) (not b!5656993) (not b!5656725) (not b!5656985) (not b_lambda!213895) (not b!5657061) (not bm!428067) (not bm!428058) (not b!5657015) (not b!5656896) (not b!5656534) (not b!5656726) (not d!1786203) (not bm!428057) (not d!1786191) (not b!5656907) (not bm!428063) (not b!5656823) (not b!5656853) (not bm!428026) (not bm!428064) (not d!1786143) (not setNonEmpty!37828) (not b!5657043) (not b!5656567) (not b!5656697) (not b!5657063) (not b!5656992) (not d!1786185) (not d!1786193) (not d!1786181) (not d!1786117) (not bm!428006) (not b!5657030) (not b!5656902) (not b!5657064) (not b!5656900) (not d!1786153) (not d!1786223) (not b!5656869) (not bm!428053) (not b!5657076) (not d!1786095) (not b!5656826) (not bs!1315301) (not bm!428052) (not b!5656569))
(check-sat)
(get-model)

(declare-fun d!1786299 () Bool)

(assert (=> d!1786299 (= (isEmpty!34973 (t!376554 (unfocusZipperList!1079 zl!343))) ((_ is Nil!63128) (t!376554 (unfocusZipperList!1079 zl!343))))))

(assert (=> b!5656900 d!1786299))

(declare-fun b!5657301 () Bool)

(declare-fun e!3484317 () Bool)

(declare-fun e!3484314 () Bool)

(assert (=> b!5657301 (= e!3484317 e!3484314)))

(declare-fun res!2393026 () Bool)

(declare-fun call!428140 () Bool)

(assert (=> b!5657301 (= res!2393026 call!428140)))

(assert (=> b!5657301 (=> (not res!2393026) (not e!3484314))))

(declare-fun b!5657302 () Bool)

(declare-fun e!3484315 () Bool)

(declare-fun call!428139 () Bool)

(assert (=> b!5657302 (= e!3484315 call!428139)))

(declare-fun bm!428134 () Bool)

(declare-fun c!994675 () Bool)

(assert (=> bm!428134 (= call!428140 (nullable!5683 (ite c!994675 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun b!5657303 () Bool)

(declare-fun e!3484319 () Bool)

(declare-fun e!3484318 () Bool)

(assert (=> b!5657303 (= e!3484319 e!3484318)))

(declare-fun res!2393025 () Bool)

(assert (=> b!5657303 (=> (not res!2393025) (not e!3484318))))

(assert (=> b!5657303 (= res!2393025 (and (not ((_ is EmptyLang!15651) (h!69576 (exprs!5535 (h!69577 zl!343))))) (not ((_ is ElementMatch!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun d!1786301 () Bool)

(declare-fun res!2393028 () Bool)

(assert (=> d!1786301 (=> res!2393028 e!3484319)))

(assert (=> d!1786301 (= res!2393028 ((_ is EmptyExpr!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> d!1786301 (= (nullableFct!1769 (h!69576 (exprs!5535 (h!69577 zl!343)))) e!3484319)))

(declare-fun b!5657304 () Bool)

(declare-fun e!3484316 () Bool)

(assert (=> b!5657304 (= e!3484318 e!3484316)))

(declare-fun res!2393027 () Bool)

(assert (=> b!5657304 (=> res!2393027 e!3484316)))

(assert (=> b!5657304 (= res!2393027 ((_ is Star!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5657305 () Bool)

(assert (=> b!5657305 (= e!3484317 e!3484315)))

(declare-fun res!2393029 () Bool)

(assert (=> b!5657305 (= res!2393029 call!428140)))

(assert (=> b!5657305 (=> res!2393029 e!3484315)))

(declare-fun bm!428135 () Bool)

(assert (=> bm!428135 (= call!428139 (nullable!5683 (ite c!994675 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun b!5657306 () Bool)

(assert (=> b!5657306 (= e!3484316 e!3484317)))

(assert (=> b!5657306 (= c!994675 ((_ is Union!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5657307 () Bool)

(assert (=> b!5657307 (= e!3484314 call!428139)))

(assert (= (and d!1786301 (not res!2393028)) b!5657303))

(assert (= (and b!5657303 res!2393025) b!5657304))

(assert (= (and b!5657304 (not res!2393027)) b!5657306))

(assert (= (and b!5657306 c!994675) b!5657305))

(assert (= (and b!5657306 (not c!994675)) b!5657301))

(assert (= (and b!5657305 (not res!2393029)) b!5657302))

(assert (= (and b!5657301 res!2393026) b!5657307))

(assert (= (or b!5657302 b!5657307) bm!428135))

(assert (= (or b!5657305 b!5657301) bm!428134))

(declare-fun m!6622948 () Bool)

(assert (=> bm!428134 m!6622948))

(declare-fun m!6622950 () Bool)

(assert (=> bm!428135 m!6622950))

(assert (=> d!1786097 d!1786301))

(declare-fun d!1786317 () Bool)

(declare-fun c!994683 () Bool)

(assert (=> d!1786317 (= c!994683 (isEmpty!34976 (tail!11121 (t!376556 s!2326))))))

(declare-fun e!3484329 () Bool)

(assert (=> d!1786317 (= (matchZipper!1789 (derivationStepZipper!1736 lt!2266837 (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))) e!3484329)))

(declare-fun b!5657324 () Bool)

(assert (=> b!5657324 (= e!3484329 (nullableZipper!1623 (derivationStepZipper!1736 lt!2266837 (head!12026 (t!376556 s!2326)))))))

(declare-fun b!5657325 () Bool)

(assert (=> b!5657325 (= e!3484329 (matchZipper!1789 (derivationStepZipper!1736 (derivationStepZipper!1736 lt!2266837 (head!12026 (t!376556 s!2326))) (head!12026 (tail!11121 (t!376556 s!2326)))) (tail!11121 (tail!11121 (t!376556 s!2326)))))))

(assert (= (and d!1786317 c!994683) b!5657324))

(assert (= (and d!1786317 (not c!994683)) b!5657325))

(assert (=> d!1786317 m!6622528))

(declare-fun m!6622952 () Bool)

(assert (=> d!1786317 m!6622952))

(assert (=> b!5657324 m!6622526))

(declare-fun m!6622954 () Bool)

(assert (=> b!5657324 m!6622954))

(assert (=> b!5657325 m!6622528))

(declare-fun m!6622956 () Bool)

(assert (=> b!5657325 m!6622956))

(assert (=> b!5657325 m!6622526))

(assert (=> b!5657325 m!6622956))

(declare-fun m!6622958 () Bool)

(assert (=> b!5657325 m!6622958))

(assert (=> b!5657325 m!6622528))

(declare-fun m!6622960 () Bool)

(assert (=> b!5657325 m!6622960))

(assert (=> b!5657325 m!6622958))

(assert (=> b!5657325 m!6622960))

(declare-fun m!6622964 () Bool)

(assert (=> b!5657325 m!6622964))

(assert (=> b!5656631 d!1786317))

(declare-fun bs!1315315 () Bool)

(declare-fun d!1786319 () Bool)

(assert (= bs!1315315 (and d!1786319 b!5656316)))

(declare-fun lambda!304517 () Int)

(assert (=> bs!1315315 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304517 lambda!304449))))

(declare-fun bs!1315316 () Bool)

(assert (= bs!1315316 (and d!1786319 d!1786203)))

(assert (=> bs!1315316 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304517 lambda!304499))))

(assert (=> d!1786319 true))

(assert (=> d!1786319 (= (derivationStepZipper!1736 lt!2266837 (head!12026 (t!376556 s!2326))) (flatMap!1264 lt!2266837 lambda!304517))))

(declare-fun bs!1315317 () Bool)

(assert (= bs!1315317 d!1786319))

(declare-fun m!6622978 () Bool)

(assert (=> bs!1315317 m!6622978))

(assert (=> b!5656631 d!1786319))

(declare-fun d!1786325 () Bool)

(assert (=> d!1786325 (= (head!12026 (t!376556 s!2326)) (h!69578 (t!376556 s!2326)))))

(assert (=> b!5656631 d!1786325))

(declare-fun d!1786327 () Bool)

(assert (=> d!1786327 (= (tail!11121 (t!376556 s!2326)) (t!376556 (t!376556 s!2326)))))

(assert (=> b!5656631 d!1786327))

(assert (=> d!1786181 d!1786159))

(declare-fun c!994691 () Bool)

(declare-fun call!428158 () Bool)

(declare-fun c!994692 () Bool)

(declare-fun bm!428152 () Bool)

(assert (=> bm!428152 (= call!428158 (validRegex!7387 (ite c!994692 (reg!15980 (regOne!31814 r!7292)) (ite c!994691 (regTwo!31815 (regOne!31814 r!7292)) (regTwo!31814 (regOne!31814 r!7292))))))))

(declare-fun b!5657346 () Bool)

(declare-fun e!3484345 () Bool)

(declare-fun e!3484344 () Bool)

(assert (=> b!5657346 (= e!3484345 e!3484344)))

(assert (=> b!5657346 (= c!994691 ((_ is Union!15651) (regOne!31814 r!7292)))))

(declare-fun b!5657347 () Bool)

(declare-fun e!3484346 () Bool)

(assert (=> b!5657347 (= e!3484345 e!3484346)))

(declare-fun res!2393042 () Bool)

(assert (=> b!5657347 (= res!2393042 (not (nullable!5683 (reg!15980 (regOne!31814 r!7292)))))))

(assert (=> b!5657347 (=> (not res!2393042) (not e!3484346))))

(declare-fun b!5657348 () Bool)

(assert (=> b!5657348 (= e!3484346 call!428158)))

(declare-fun b!5657349 () Bool)

(declare-fun e!3484349 () Bool)

(assert (=> b!5657349 (= e!3484349 e!3484345)))

(assert (=> b!5657349 (= c!994692 ((_ is Star!15651) (regOne!31814 r!7292)))))

(declare-fun d!1786335 () Bool)

(declare-fun res!2393040 () Bool)

(assert (=> d!1786335 (=> res!2393040 e!3484349)))

(assert (=> d!1786335 (= res!2393040 ((_ is ElementMatch!15651) (regOne!31814 r!7292)))))

(assert (=> d!1786335 (= (validRegex!7387 (regOne!31814 r!7292)) e!3484349)))

(declare-fun bm!428153 () Bool)

(declare-fun call!428159 () Bool)

(assert (=> bm!428153 (= call!428159 call!428158)))

(declare-fun b!5657350 () Bool)

(declare-fun e!3484343 () Bool)

(declare-fun e!3484348 () Bool)

(assert (=> b!5657350 (= e!3484343 e!3484348)))

(declare-fun res!2393039 () Bool)

(assert (=> b!5657350 (=> (not res!2393039) (not e!3484348))))

(declare-fun call!428157 () Bool)

(assert (=> b!5657350 (= res!2393039 call!428157)))

(declare-fun b!5657351 () Bool)

(declare-fun res!2393041 () Bool)

(assert (=> b!5657351 (=> res!2393041 e!3484343)))

(assert (=> b!5657351 (= res!2393041 (not ((_ is Concat!24496) (regOne!31814 r!7292))))))

(assert (=> b!5657351 (= e!3484344 e!3484343)))

(declare-fun b!5657352 () Bool)

(assert (=> b!5657352 (= e!3484348 call!428159)))

(declare-fun b!5657353 () Bool)

(declare-fun res!2393038 () Bool)

(declare-fun e!3484347 () Bool)

(assert (=> b!5657353 (=> (not res!2393038) (not e!3484347))))

(assert (=> b!5657353 (= res!2393038 call!428157)))

(assert (=> b!5657353 (= e!3484344 e!3484347)))

(declare-fun bm!428154 () Bool)

(assert (=> bm!428154 (= call!428157 (validRegex!7387 (ite c!994691 (regOne!31815 (regOne!31814 r!7292)) (regOne!31814 (regOne!31814 r!7292)))))))

(declare-fun b!5657354 () Bool)

(assert (=> b!5657354 (= e!3484347 call!428159)))

(assert (= (and d!1786335 (not res!2393040)) b!5657349))

(assert (= (and b!5657349 c!994692) b!5657347))

(assert (= (and b!5657349 (not c!994692)) b!5657346))

(assert (= (and b!5657347 res!2393042) b!5657348))

(assert (= (and b!5657346 c!994691) b!5657353))

(assert (= (and b!5657346 (not c!994691)) b!5657351))

(assert (= (and b!5657353 res!2393038) b!5657354))

(assert (= (and b!5657351 (not res!2393041)) b!5657350))

(assert (= (and b!5657350 res!2393039) b!5657352))

(assert (= (or b!5657354 b!5657352) bm!428153))

(assert (= (or b!5657353 b!5657350) bm!428154))

(assert (= (or b!5657348 bm!428153) bm!428152))

(declare-fun m!6622996 () Bool)

(assert (=> bm!428152 m!6622996))

(declare-fun m!6622998 () Bool)

(assert (=> b!5657347 m!6622998))

(declare-fun m!6623000 () Bool)

(assert (=> bm!428154 m!6623000))

(assert (=> d!1786181 d!1786335))

(assert (=> d!1786181 d!1786185))

(declare-fun d!1786339 () Bool)

(assert (=> d!1786339 (= (Exists!2751 lambda!304490) (choose!42843 lambda!304490))))

(declare-fun bs!1315321 () Bool)

(assert (= bs!1315321 d!1786339))

(declare-fun m!6623002 () Bool)

(assert (=> bs!1315321 m!6623002))

(assert (=> d!1786181 d!1786339))

(declare-fun bs!1315329 () Bool)

(declare-fun d!1786341 () Bool)

(assert (= bs!1315329 (and d!1786341 b!5656951)))

(declare-fun lambda!304526 () Int)

(assert (=> bs!1315329 (not (= lambda!304526 lambda!304511))))

(declare-fun bs!1315335 () Bool)

(assert (= bs!1315335 (and d!1786341 d!1786183)))

(assert (=> bs!1315335 (not (= lambda!304526 lambda!304496))))

(declare-fun bs!1315336 () Bool)

(assert (= bs!1315336 (and d!1786341 b!5656950)))

(assert (=> bs!1315336 (not (= lambda!304526 lambda!304510))))

(declare-fun bs!1315337 () Bool)

(assert (= bs!1315337 (and d!1786341 b!5656308)))

(assert (=> bs!1315337 (not (= lambda!304526 lambda!304448))))

(declare-fun bs!1315338 () Bool)

(assert (= bs!1315338 (and d!1786341 d!1786181)))

(assert (=> bs!1315338 (= lambda!304526 lambda!304490)))

(assert (=> bs!1315337 (= lambda!304526 lambda!304447)))

(assert (=> bs!1315335 (= lambda!304526 lambda!304495)))

(assert (=> d!1786341 true))

(assert (=> d!1786341 true))

(assert (=> d!1786341 true))

(assert (=> d!1786341 (= (isDefined!12363 (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) Nil!63130 s!2326 s!2326)) (Exists!2751 lambda!304526))))

(assert (=> d!1786341 true))

(declare-fun _$89!1774 () Unit!156136)

(assert (=> d!1786341 (= (choose!42844 (regOne!31814 r!7292) (regTwo!31814 r!7292) s!2326) _$89!1774)))

(declare-fun bs!1315339 () Bool)

(assert (= bs!1315339 d!1786341))

(assert (=> bs!1315339 m!6622274))

(assert (=> bs!1315339 m!6622274))

(assert (=> bs!1315339 m!6622276))

(declare-fun m!6623042 () Bool)

(assert (=> bs!1315339 m!6623042))

(assert (=> d!1786181 d!1786341))

(declare-fun b!5657408 () Bool)

(declare-fun e!3484386 () Bool)

(assert (=> b!5657408 (= e!3484386 (matchR!7836 (derivativeStep!4476 (regTwo!31814 r!7292) (head!12026 (_2!36051 (get!21750 lt!2266905)))) (tail!11121 (_2!36051 (get!21750 lt!2266905)))))))

(declare-fun b!5657409 () Bool)

(declare-fun e!3484383 () Bool)

(declare-fun e!3484385 () Bool)

(assert (=> b!5657409 (= e!3484383 e!3484385)))

(declare-fun res!2393068 () Bool)

(assert (=> b!5657409 (=> (not res!2393068) (not e!3484385))))

(declare-fun lt!2266951 () Bool)

(assert (=> b!5657409 (= res!2393068 (not lt!2266951))))

(declare-fun b!5657410 () Bool)

(declare-fun e!3484384 () Bool)

(declare-fun call!428171 () Bool)

(assert (=> b!5657410 (= e!3484384 (= lt!2266951 call!428171))))

(declare-fun b!5657411 () Bool)

(declare-fun e!3484388 () Bool)

(assert (=> b!5657411 (= e!3484388 (not (= (head!12026 (_2!36051 (get!21750 lt!2266905))) (c!994391 (regTwo!31814 r!7292)))))))

(declare-fun b!5657412 () Bool)

(declare-fun e!3484387 () Bool)

(assert (=> b!5657412 (= e!3484387 (= (head!12026 (_2!36051 (get!21750 lt!2266905))) (c!994391 (regTwo!31814 r!7292))))))

(declare-fun b!5657413 () Bool)

(declare-fun e!3484382 () Bool)

(assert (=> b!5657413 (= e!3484384 e!3484382)))

(declare-fun c!994709 () Bool)

(assert (=> b!5657413 (= c!994709 ((_ is EmptyLang!15651) (regTwo!31814 r!7292)))))

(declare-fun b!5657414 () Bool)

(declare-fun res!2393067 () Bool)

(assert (=> b!5657414 (=> res!2393067 e!3484383)))

(assert (=> b!5657414 (= res!2393067 e!3484387)))

(declare-fun res!2393072 () Bool)

(assert (=> b!5657414 (=> (not res!2393072) (not e!3484387))))

(assert (=> b!5657414 (= res!2393072 lt!2266951)))

(declare-fun bm!428166 () Bool)

(assert (=> bm!428166 (= call!428171 (isEmpty!34976 (_2!36051 (get!21750 lt!2266905))))))

(declare-fun b!5657415 () Bool)

(assert (=> b!5657415 (= e!3484385 e!3484388)))

(declare-fun res!2393073 () Bool)

(assert (=> b!5657415 (=> res!2393073 e!3484388)))

(assert (=> b!5657415 (= res!2393073 call!428171)))

(declare-fun b!5657416 () Bool)

(declare-fun res!2393071 () Bool)

(assert (=> b!5657416 (=> (not res!2393071) (not e!3484387))))

(assert (=> b!5657416 (= res!2393071 (not call!428171))))

(declare-fun b!5657417 () Bool)

(declare-fun res!2393066 () Bool)

(assert (=> b!5657417 (=> res!2393066 e!3484388)))

(assert (=> b!5657417 (= res!2393066 (not (isEmpty!34976 (tail!11121 (_2!36051 (get!21750 lt!2266905))))))))

(declare-fun d!1786355 () Bool)

(assert (=> d!1786355 e!3484384))

(declare-fun c!994710 () Bool)

(assert (=> d!1786355 (= c!994710 ((_ is EmptyExpr!15651) (regTwo!31814 r!7292)))))

(assert (=> d!1786355 (= lt!2266951 e!3484386)))

(declare-fun c!994708 () Bool)

(assert (=> d!1786355 (= c!994708 (isEmpty!34976 (_2!36051 (get!21750 lt!2266905))))))

(assert (=> d!1786355 (validRegex!7387 (regTwo!31814 r!7292))))

(assert (=> d!1786355 (= (matchR!7836 (regTwo!31814 r!7292) (_2!36051 (get!21750 lt!2266905))) lt!2266951)))

(declare-fun b!5657418 () Bool)

(assert (=> b!5657418 (= e!3484386 (nullable!5683 (regTwo!31814 r!7292)))))

(declare-fun b!5657419 () Bool)

(declare-fun res!2393069 () Bool)

(assert (=> b!5657419 (=> (not res!2393069) (not e!3484387))))

(assert (=> b!5657419 (= res!2393069 (isEmpty!34976 (tail!11121 (_2!36051 (get!21750 lt!2266905)))))))

(declare-fun b!5657420 () Bool)

(declare-fun res!2393070 () Bool)

(assert (=> b!5657420 (=> res!2393070 e!3484383)))

(assert (=> b!5657420 (= res!2393070 (not ((_ is ElementMatch!15651) (regTwo!31814 r!7292))))))

(assert (=> b!5657420 (= e!3484382 e!3484383)))

(declare-fun b!5657421 () Bool)

(assert (=> b!5657421 (= e!3484382 (not lt!2266951))))

(assert (= (and d!1786355 c!994708) b!5657418))

(assert (= (and d!1786355 (not c!994708)) b!5657408))

(assert (= (and d!1786355 c!994710) b!5657410))

(assert (= (and d!1786355 (not c!994710)) b!5657413))

(assert (= (and b!5657413 c!994709) b!5657421))

(assert (= (and b!5657413 (not c!994709)) b!5657420))

(assert (= (and b!5657420 (not res!2393070)) b!5657414))

(assert (= (and b!5657414 res!2393072) b!5657416))

(assert (= (and b!5657416 res!2393071) b!5657419))

(assert (= (and b!5657419 res!2393069) b!5657412))

(assert (= (and b!5657414 (not res!2393067)) b!5657409))

(assert (= (and b!5657409 res!2393068) b!5657415))

(assert (= (and b!5657415 (not res!2393073)) b!5657417))

(assert (= (and b!5657417 (not res!2393066)) b!5657411))

(assert (= (or b!5657410 b!5657415 b!5657416) bm!428166))

(declare-fun m!6623044 () Bool)

(assert (=> b!5657417 m!6623044))

(assert (=> b!5657417 m!6623044))

(declare-fun m!6623046 () Bool)

(assert (=> b!5657417 m!6623046))

(declare-fun m!6623048 () Bool)

(assert (=> b!5657412 m!6623048))

(declare-fun m!6623050 () Bool)

(assert (=> d!1786355 m!6623050))

(declare-fun m!6623052 () Bool)

(assert (=> d!1786355 m!6623052))

(assert (=> b!5657411 m!6623048))

(declare-fun m!6623054 () Bool)

(assert (=> b!5657418 m!6623054))

(assert (=> b!5657408 m!6623048))

(assert (=> b!5657408 m!6623048))

(declare-fun m!6623056 () Bool)

(assert (=> b!5657408 m!6623056))

(assert (=> b!5657408 m!6623044))

(assert (=> b!5657408 m!6623056))

(assert (=> b!5657408 m!6623044))

(declare-fun m!6623058 () Bool)

(assert (=> b!5657408 m!6623058))

(assert (=> bm!428166 m!6623050))

(assert (=> b!5657419 m!6623044))

(assert (=> b!5657419 m!6623044))

(assert (=> b!5657419 m!6623046))

(assert (=> b!5656826 d!1786355))

(declare-fun d!1786357 () Bool)

(assert (=> d!1786357 (= (get!21750 lt!2266905) (v!51706 lt!2266905))))

(assert (=> b!5656826 d!1786357))

(declare-fun d!1786359 () Bool)

(declare-fun res!2393078 () Bool)

(declare-fun e!3484393 () Bool)

(assert (=> d!1786359 (=> res!2393078 e!3484393)))

(assert (=> d!1786359 (= res!2393078 ((_ is Nil!63128) lt!2266927))))

(assert (=> d!1786359 (= (forall!14800 lt!2266927 lambda!304505) e!3484393)))

(declare-fun b!5657426 () Bool)

(declare-fun e!3484394 () Bool)

(assert (=> b!5657426 (= e!3484393 e!3484394)))

(declare-fun res!2393079 () Bool)

(assert (=> b!5657426 (=> (not res!2393079) (not e!3484394))))

(declare-fun dynLambda!24696 (Int Regex!15651) Bool)

(assert (=> b!5657426 (= res!2393079 (dynLambda!24696 lambda!304505 (h!69576 lt!2266927)))))

(declare-fun b!5657427 () Bool)

(assert (=> b!5657427 (= e!3484394 (forall!14800 (t!376554 lt!2266927) lambda!304505))))

(assert (= (and d!1786359 (not res!2393078)) b!5657426))

(assert (= (and b!5657426 res!2393079) b!5657427))

(declare-fun b_lambda!213905 () Bool)

(assert (=> (not b_lambda!213905) (not b!5657426)))

(declare-fun m!6623066 () Bool)

(assert (=> b!5657426 m!6623066))

(declare-fun m!6623068 () Bool)

(assert (=> b!5657427 m!6623068))

(assert (=> d!1786209 d!1786359))

(declare-fun d!1786365 () Bool)

(assert (=> d!1786365 (= (head!12027 (exprs!5535 (h!69577 zl!343))) (h!69576 (exprs!5535 (h!69577 zl!343))))))

(assert (=> b!5656700 d!1786365))

(declare-fun d!1786367 () Bool)

(declare-fun lambda!304534 () Int)

(declare-fun exists!2197 ((InoxSet Context!10070) Int) Bool)

(assert (=> d!1786367 (= (nullableZipper!1623 lt!2266828) (exists!2197 lt!2266828 lambda!304534))))

(declare-fun bs!1315363 () Bool)

(assert (= bs!1315363 d!1786367))

(declare-fun m!6623074 () Bool)

(assert (=> bs!1315363 m!6623074))

(assert (=> b!5656726 d!1786367))

(declare-fun call!428173 () Bool)

(declare-fun c!994713 () Bool)

(declare-fun bm!428167 () Bool)

(declare-fun c!994714 () Bool)

(assert (=> bm!428167 (= call!428173 (validRegex!7387 (ite c!994714 (reg!15980 lt!2266924) (ite c!994713 (regTwo!31815 lt!2266924) (regTwo!31814 lt!2266924)))))))

(declare-fun b!5657428 () Bool)

(declare-fun e!3484397 () Bool)

(declare-fun e!3484396 () Bool)

(assert (=> b!5657428 (= e!3484397 e!3484396)))

(assert (=> b!5657428 (= c!994713 ((_ is Union!15651) lt!2266924))))

(declare-fun b!5657429 () Bool)

(declare-fun e!3484398 () Bool)

(assert (=> b!5657429 (= e!3484397 e!3484398)))

(declare-fun res!2393084 () Bool)

(assert (=> b!5657429 (= res!2393084 (not (nullable!5683 (reg!15980 lt!2266924))))))

(assert (=> b!5657429 (=> (not res!2393084) (not e!3484398))))

(declare-fun b!5657430 () Bool)

(assert (=> b!5657430 (= e!3484398 call!428173)))

(declare-fun b!5657431 () Bool)

(declare-fun e!3484401 () Bool)

(assert (=> b!5657431 (= e!3484401 e!3484397)))

(assert (=> b!5657431 (= c!994714 ((_ is Star!15651) lt!2266924))))

(declare-fun d!1786373 () Bool)

(declare-fun res!2393082 () Bool)

(assert (=> d!1786373 (=> res!2393082 e!3484401)))

(assert (=> d!1786373 (= res!2393082 ((_ is ElementMatch!15651) lt!2266924))))

(assert (=> d!1786373 (= (validRegex!7387 lt!2266924) e!3484401)))

(declare-fun bm!428168 () Bool)

(declare-fun call!428174 () Bool)

(assert (=> bm!428168 (= call!428174 call!428173)))

(declare-fun b!5657432 () Bool)

(declare-fun e!3484395 () Bool)

(declare-fun e!3484400 () Bool)

(assert (=> b!5657432 (= e!3484395 e!3484400)))

(declare-fun res!2393081 () Bool)

(assert (=> b!5657432 (=> (not res!2393081) (not e!3484400))))

(declare-fun call!428172 () Bool)

(assert (=> b!5657432 (= res!2393081 call!428172)))

(declare-fun b!5657433 () Bool)

(declare-fun res!2393083 () Bool)

(assert (=> b!5657433 (=> res!2393083 e!3484395)))

(assert (=> b!5657433 (= res!2393083 (not ((_ is Concat!24496) lt!2266924)))))

(assert (=> b!5657433 (= e!3484396 e!3484395)))

(declare-fun b!5657434 () Bool)

(assert (=> b!5657434 (= e!3484400 call!428174)))

(declare-fun b!5657435 () Bool)

(declare-fun res!2393080 () Bool)

(declare-fun e!3484399 () Bool)

(assert (=> b!5657435 (=> (not res!2393080) (not e!3484399))))

(assert (=> b!5657435 (= res!2393080 call!428172)))

(assert (=> b!5657435 (= e!3484396 e!3484399)))

(declare-fun bm!428169 () Bool)

(assert (=> bm!428169 (= call!428172 (validRegex!7387 (ite c!994713 (regOne!31815 lt!2266924) (regOne!31814 lt!2266924))))))

(declare-fun b!5657436 () Bool)

(assert (=> b!5657436 (= e!3484399 call!428174)))

(assert (= (and d!1786373 (not res!2393082)) b!5657431))

(assert (= (and b!5657431 c!994714) b!5657429))

(assert (= (and b!5657431 (not c!994714)) b!5657428))

(assert (= (and b!5657429 res!2393084) b!5657430))

(assert (= (and b!5657428 c!994713) b!5657435))

(assert (= (and b!5657428 (not c!994713)) b!5657433))

(assert (= (and b!5657435 res!2393080) b!5657436))

(assert (= (and b!5657433 (not res!2393083)) b!5657432))

(assert (= (and b!5657432 res!2393081) b!5657434))

(assert (= (or b!5657436 b!5657434) bm!428168))

(assert (= (or b!5657435 b!5657432) bm!428169))

(assert (= (or b!5657430 bm!428168) bm!428167))

(declare-fun m!6623076 () Bool)

(assert (=> bm!428167 m!6623076))

(declare-fun m!6623078 () Bool)

(assert (=> b!5657429 m!6623078))

(declare-fun m!6623080 () Bool)

(assert (=> bm!428169 m!6623080))

(assert (=> d!1786207 d!1786373))

(declare-fun d!1786377 () Bool)

(declare-fun res!2393087 () Bool)

(declare-fun e!3484404 () Bool)

(assert (=> d!1786377 (=> res!2393087 e!3484404)))

(assert (=> d!1786377 (= res!2393087 ((_ is Nil!63128) (unfocusZipperList!1079 zl!343)))))

(assert (=> d!1786377 (= (forall!14800 (unfocusZipperList!1079 zl!343) lambda!304502) e!3484404)))

(declare-fun b!5657439 () Bool)

(declare-fun e!3484405 () Bool)

(assert (=> b!5657439 (= e!3484404 e!3484405)))

(declare-fun res!2393088 () Bool)

(assert (=> b!5657439 (=> (not res!2393088) (not e!3484405))))

(assert (=> b!5657439 (= res!2393088 (dynLambda!24696 lambda!304502 (h!69576 (unfocusZipperList!1079 zl!343))))))

(declare-fun b!5657440 () Bool)

(assert (=> b!5657440 (= e!3484405 (forall!14800 (t!376554 (unfocusZipperList!1079 zl!343)) lambda!304502))))

(assert (= (and d!1786377 (not res!2393087)) b!5657439))

(assert (= (and b!5657439 res!2393088) b!5657440))

(declare-fun b_lambda!213909 () Bool)

(assert (=> (not b_lambda!213909) (not b!5657439)))

(declare-fun m!6623088 () Bool)

(assert (=> b!5657439 m!6623088))

(declare-fun m!6623090 () Bool)

(assert (=> b!5657440 m!6623090))

(assert (=> d!1786207 d!1786377))

(declare-fun c!994717 () Bool)

(declare-fun call!428176 () Bool)

(declare-fun c!994716 () Bool)

(declare-fun bm!428170 () Bool)

(assert (=> bm!428170 (= call!428176 (validRegex!7387 (ite c!994717 (reg!15980 (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))) (ite c!994716 (regTwo!31815 (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))) (regTwo!31814 (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292)))))))))

(declare-fun b!5657443 () Bool)

(declare-fun e!3484409 () Bool)

(declare-fun e!3484408 () Bool)

(assert (=> b!5657443 (= e!3484409 e!3484408)))

(assert (=> b!5657443 (= c!994716 ((_ is Union!15651) (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))))))

(declare-fun b!5657444 () Bool)

(declare-fun e!3484410 () Bool)

(assert (=> b!5657444 (= e!3484409 e!3484410)))

(declare-fun res!2393093 () Bool)

(assert (=> b!5657444 (= res!2393093 (not (nullable!5683 (reg!15980 (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))))))))

(assert (=> b!5657444 (=> (not res!2393093) (not e!3484410))))

(declare-fun b!5657445 () Bool)

(assert (=> b!5657445 (= e!3484410 call!428176)))

(declare-fun b!5657446 () Bool)

(declare-fun e!3484413 () Bool)

(assert (=> b!5657446 (= e!3484413 e!3484409)))

(assert (=> b!5657446 (= c!994717 ((_ is Star!15651) (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))))))

(declare-fun d!1786383 () Bool)

(declare-fun res!2393091 () Bool)

(assert (=> d!1786383 (=> res!2393091 e!3484413)))

(assert (=> d!1786383 (= res!2393091 ((_ is ElementMatch!15651) (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))))))

(assert (=> d!1786383 (= (validRegex!7387 (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))) e!3484413)))

(declare-fun bm!428171 () Bool)

(declare-fun call!428177 () Bool)

(assert (=> bm!428171 (= call!428177 call!428176)))

(declare-fun b!5657447 () Bool)

(declare-fun e!3484407 () Bool)

(declare-fun e!3484412 () Bool)

(assert (=> b!5657447 (= e!3484407 e!3484412)))

(declare-fun res!2393090 () Bool)

(assert (=> b!5657447 (=> (not res!2393090) (not e!3484412))))

(declare-fun call!428175 () Bool)

(assert (=> b!5657447 (= res!2393090 call!428175)))

(declare-fun b!5657448 () Bool)

(declare-fun res!2393092 () Bool)

(assert (=> b!5657448 (=> res!2393092 e!3484407)))

(assert (=> b!5657448 (= res!2393092 (not ((_ is Concat!24496) (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292)))))))

(assert (=> b!5657448 (= e!3484408 e!3484407)))

(declare-fun b!5657449 () Bool)

(assert (=> b!5657449 (= e!3484412 call!428177)))

(declare-fun b!5657450 () Bool)

(declare-fun res!2393089 () Bool)

(declare-fun e!3484411 () Bool)

(assert (=> b!5657450 (=> (not res!2393089) (not e!3484411))))

(assert (=> b!5657450 (= res!2393089 call!428175)))

(assert (=> b!5657450 (= e!3484408 e!3484411)))

(declare-fun bm!428172 () Bool)

(assert (=> bm!428172 (= call!428175 (validRegex!7387 (ite c!994716 (regOne!31815 (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))) (regOne!31814 (ite c!994602 (regOne!31815 r!7292) (regOne!31814 r!7292))))))))

(declare-fun b!5657451 () Bool)

(assert (=> b!5657451 (= e!3484411 call!428177)))

(assert (= (and d!1786383 (not res!2393091)) b!5657446))

(assert (= (and b!5657446 c!994717) b!5657444))

(assert (= (and b!5657446 (not c!994717)) b!5657443))

(assert (= (and b!5657444 res!2393093) b!5657445))

(assert (= (and b!5657443 c!994716) b!5657450))

(assert (= (and b!5657443 (not c!994716)) b!5657448))

(assert (= (and b!5657450 res!2393089) b!5657451))

(assert (= (and b!5657448 (not res!2393092)) b!5657447))

(assert (= (and b!5657447 res!2393090) b!5657449))

(assert (= (or b!5657451 b!5657449) bm!428171))

(assert (= (or b!5657450 b!5657447) bm!428172))

(assert (= (or b!5657445 bm!428171) bm!428170))

(declare-fun m!6623098 () Bool)

(assert (=> bm!428170 m!6623098))

(declare-fun m!6623100 () Bool)

(assert (=> b!5657444 m!6623100))

(declare-fun m!6623102 () Bool)

(assert (=> bm!428172 m!6623102))

(assert (=> bm!428076 d!1786383))

(declare-fun bs!1315370 () Bool)

(declare-fun b!5657459 () Bool)

(assert (= bs!1315370 (and b!5657459 b!5656951)))

(declare-fun lambda!304536 () Int)

(assert (=> bs!1315370 (not (= lambda!304536 lambda!304511))))

(declare-fun bs!1315371 () Bool)

(assert (= bs!1315371 (and b!5657459 d!1786183)))

(assert (=> bs!1315371 (not (= lambda!304536 lambda!304496))))

(declare-fun bs!1315372 () Bool)

(assert (= bs!1315372 (and b!5657459 b!5656950)))

(assert (=> bs!1315372 (= (and (= (reg!15980 (regOne!31815 r!7292)) (reg!15980 r!7292)) (= (regOne!31815 r!7292) r!7292)) (= lambda!304536 lambda!304510))))

(declare-fun bs!1315373 () Bool)

(assert (= bs!1315373 (and b!5657459 d!1786341)))

(assert (=> bs!1315373 (not (= lambda!304536 lambda!304526))))

(declare-fun bs!1315374 () Bool)

(assert (= bs!1315374 (and b!5657459 b!5656308)))

(assert (=> bs!1315374 (not (= lambda!304536 lambda!304448))))

(declare-fun bs!1315375 () Bool)

(assert (= bs!1315375 (and b!5657459 d!1786181)))

(assert (=> bs!1315375 (not (= lambda!304536 lambda!304490))))

(assert (=> bs!1315374 (not (= lambda!304536 lambda!304447))))

(assert (=> bs!1315371 (not (= lambda!304536 lambda!304495))))

(assert (=> b!5657459 true))

(assert (=> b!5657459 true))

(declare-fun bs!1315378 () Bool)

(declare-fun b!5657460 () Bool)

(assert (= bs!1315378 (and b!5657460 b!5656951)))

(declare-fun lambda!304538 () Int)

(assert (=> bs!1315378 (= (and (= (regOne!31814 (regOne!31815 r!7292)) (regOne!31814 r!7292)) (= (regTwo!31814 (regOne!31815 r!7292)) (regTwo!31814 r!7292))) (= lambda!304538 lambda!304511))))

(declare-fun bs!1315381 () Bool)

(assert (= bs!1315381 (and b!5657460 d!1786183)))

(assert (=> bs!1315381 (= (and (= (regOne!31814 (regOne!31815 r!7292)) (regOne!31814 r!7292)) (= (regTwo!31814 (regOne!31815 r!7292)) (regTwo!31814 r!7292))) (= lambda!304538 lambda!304496))))

(declare-fun bs!1315382 () Bool)

(assert (= bs!1315382 (and b!5657460 b!5656950)))

(assert (=> bs!1315382 (not (= lambda!304538 lambda!304510))))

(declare-fun bs!1315384 () Bool)

(assert (= bs!1315384 (and b!5657460 d!1786341)))

(assert (=> bs!1315384 (not (= lambda!304538 lambda!304526))))

(declare-fun bs!1315385 () Bool)

(assert (= bs!1315385 (and b!5657460 d!1786181)))

(assert (=> bs!1315385 (not (= lambda!304538 lambda!304490))))

(declare-fun bs!1315386 () Bool)

(assert (= bs!1315386 (and b!5657460 b!5656308)))

(assert (=> bs!1315386 (not (= lambda!304538 lambda!304447))))

(assert (=> bs!1315381 (not (= lambda!304538 lambda!304495))))

(declare-fun bs!1315387 () Bool)

(assert (= bs!1315387 (and b!5657460 b!5657459)))

(assert (=> bs!1315387 (not (= lambda!304538 lambda!304536))))

(assert (=> bs!1315386 (= (and (= (regOne!31814 (regOne!31815 r!7292)) (regOne!31814 r!7292)) (= (regTwo!31814 (regOne!31815 r!7292)) (regTwo!31814 r!7292))) (= lambda!304538 lambda!304448))))

(assert (=> b!5657460 true))

(assert (=> b!5657460 true))

(declare-fun b!5657452 () Bool)

(declare-fun e!3484414 () Bool)

(declare-fun e!3484415 () Bool)

(assert (=> b!5657452 (= e!3484414 e!3484415)))

(declare-fun res!2393095 () Bool)

(assert (=> b!5657452 (= res!2393095 (matchRSpec!2754 (regOne!31815 (regOne!31815 r!7292)) s!2326))))

(assert (=> b!5657452 (=> res!2393095 e!3484415)))

(declare-fun b!5657453 () Bool)

(declare-fun e!3484418 () Bool)

(assert (=> b!5657453 (= e!3484414 e!3484418)))

(declare-fun c!994720 () Bool)

(assert (=> b!5657453 (= c!994720 ((_ is Star!15651) (regOne!31815 r!7292)))))

(declare-fun bm!428173 () Bool)

(declare-fun call!428179 () Bool)

(assert (=> bm!428173 (= call!428179 (isEmpty!34976 s!2326))))

(declare-fun b!5657454 () Bool)

(declare-fun c!994719 () Bool)

(assert (=> b!5657454 (= c!994719 ((_ is Union!15651) (regOne!31815 r!7292)))))

(declare-fun e!3484417 () Bool)

(assert (=> b!5657454 (= e!3484417 e!3484414)))

(declare-fun b!5657455 () Bool)

(assert (=> b!5657455 (= e!3484415 (matchRSpec!2754 (regTwo!31815 (regOne!31815 r!7292)) s!2326))))

(declare-fun bm!428174 () Bool)

(declare-fun call!428178 () Bool)

(assert (=> bm!428174 (= call!428178 (Exists!2751 (ite c!994720 lambda!304536 lambda!304538)))))

(declare-fun b!5657457 () Bool)

(declare-fun res!2393096 () Bool)

(declare-fun e!3484420 () Bool)

(assert (=> b!5657457 (=> res!2393096 e!3484420)))

(assert (=> b!5657457 (= res!2393096 call!428179)))

(assert (=> b!5657457 (= e!3484418 e!3484420)))

(declare-fun b!5657458 () Bool)

(declare-fun c!994721 () Bool)

(assert (=> b!5657458 (= c!994721 ((_ is ElementMatch!15651) (regOne!31815 r!7292)))))

(declare-fun e!3484416 () Bool)

(assert (=> b!5657458 (= e!3484416 e!3484417)))

(assert (=> b!5657459 (= e!3484420 call!428178)))

(assert (=> b!5657460 (= e!3484418 call!428178)))

(declare-fun b!5657456 () Bool)

(declare-fun e!3484419 () Bool)

(assert (=> b!5657456 (= e!3484419 e!3484416)))

(declare-fun res!2393094 () Bool)

(assert (=> b!5657456 (= res!2393094 (not ((_ is EmptyLang!15651) (regOne!31815 r!7292))))))

(assert (=> b!5657456 (=> (not res!2393094) (not e!3484416))))

(declare-fun d!1786387 () Bool)

(declare-fun c!994718 () Bool)

(assert (=> d!1786387 (= c!994718 ((_ is EmptyExpr!15651) (regOne!31815 r!7292)))))

(assert (=> d!1786387 (= (matchRSpec!2754 (regOne!31815 r!7292) s!2326) e!3484419)))

(declare-fun b!5657461 () Bool)

(assert (=> b!5657461 (= e!3484417 (= s!2326 (Cons!63130 (c!994391 (regOne!31815 r!7292)) Nil!63130)))))

(declare-fun b!5657462 () Bool)

(assert (=> b!5657462 (= e!3484419 call!428179)))

(assert (= (and d!1786387 c!994718) b!5657462))

(assert (= (and d!1786387 (not c!994718)) b!5657456))

(assert (= (and b!5657456 res!2393094) b!5657458))

(assert (= (and b!5657458 c!994721) b!5657461))

(assert (= (and b!5657458 (not c!994721)) b!5657454))

(assert (= (and b!5657454 c!994719) b!5657452))

(assert (= (and b!5657454 (not c!994719)) b!5657453))

(assert (= (and b!5657452 (not res!2393095)) b!5657455))

(assert (= (and b!5657453 c!994720) b!5657457))

(assert (= (and b!5657453 (not c!994720)) b!5657460))

(assert (= (and b!5657457 (not res!2393096)) b!5657459))

(assert (= (or b!5657459 b!5657460) bm!428174))

(assert (= (or b!5657462 b!5657457) bm!428173))

(declare-fun m!6623122 () Bool)

(assert (=> b!5657452 m!6623122))

(assert (=> bm!428173 m!6622742))

(declare-fun m!6623124 () Bool)

(assert (=> b!5657455 m!6623124))

(declare-fun m!6623128 () Bool)

(assert (=> bm!428174 m!6623128))

(assert (=> b!5656943 d!1786387))

(declare-fun d!1786399 () Bool)

(assert (=> d!1786399 (= (isEmpty!34976 (t!376556 s!2326)) ((_ is Nil!63130) (t!376556 s!2326)))))

(assert (=> d!1786139 d!1786399))

(assert (=> b!5656852 d!1786213))

(declare-fun d!1786403 () Bool)

(assert (=> d!1786403 (= (head!12026 s!2326) (h!69578 s!2326))))

(assert (=> b!5656985 d!1786403))

(declare-fun d!1786405 () Bool)

(assert (=> d!1786405 true))

(declare-fun setRes!37834 () Bool)

(assert (=> d!1786405 setRes!37834))

(declare-fun condSetEmpty!37834 () Bool)

(declare-fun res!2393101 () (InoxSet Context!10070))

(assert (=> d!1786405 (= condSetEmpty!37834 (= res!2393101 ((as const (Array Context!10070 Bool)) false)))))

(assert (=> d!1786405 (= (choose!42838 lt!2266829 lambda!304449) res!2393101)))

(declare-fun setIsEmpty!37834 () Bool)

(assert (=> setIsEmpty!37834 setRes!37834))

(declare-fun setElem!37834 () Context!10070)

(declare-fun tp!1567005 () Bool)

(declare-fun setNonEmpty!37834 () Bool)

(declare-fun e!3484438 () Bool)

(assert (=> setNonEmpty!37834 (= setRes!37834 (and tp!1567005 (inv!82374 setElem!37834) e!3484438))))

(declare-fun setRest!37834 () (InoxSet Context!10070))

(assert (=> setNonEmpty!37834 (= res!2393101 ((_ map or) (store ((as const (Array Context!10070 Bool)) false) setElem!37834 true) setRest!37834))))

(declare-fun b!5657493 () Bool)

(declare-fun tp!1567004 () Bool)

(assert (=> b!5657493 (= e!3484438 tp!1567004)))

(assert (= (and d!1786405 condSetEmpty!37834) setIsEmpty!37834))

(assert (= (and d!1786405 (not condSetEmpty!37834)) setNonEmpty!37834))

(assert (= setNonEmpty!37834 b!5657493))

(declare-fun m!6623146 () Bool)

(assert (=> setNonEmpty!37834 m!6623146))

(assert (=> d!1786197 d!1786405))

(declare-fun b!5657505 () Bool)

(declare-fun e!3484445 () (InoxSet Context!10070))

(declare-fun e!3484446 () (InoxSet Context!10070))

(assert (=> b!5657505 (= e!3484445 e!3484446)))

(declare-fun c!994743 () Bool)

(assert (=> b!5657505 (= c!994743 ((_ is Union!15651) (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun call!428198 () List!63252)

(declare-fun call!428197 () (InoxSet Context!10070))

(declare-fun bm!428191 () Bool)

(assert (=> bm!428191 (= call!428197 (derivationStepZipperDown!993 (ite c!994743 (regOne!31815 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))) (regOne!31814 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))))) (ite c!994743 (ite c!994449 lt!2266833 (Context!10071 call!428009)) (Context!10071 call!428198)) (h!69578 s!2326)))))

(declare-fun b!5657506 () Bool)

(declare-fun e!3484448 () (InoxSet Context!10070))

(declare-fun call!428200 () (InoxSet Context!10070))

(assert (=> b!5657506 (= e!3484448 ((_ map or) call!428197 call!428200))))

(declare-fun bm!428192 () Bool)

(declare-fun call!428201 () (InoxSet Context!10070))

(assert (=> bm!428192 (= call!428200 call!428201)))

(declare-fun b!5657508 () Bool)

(declare-fun c!994741 () Bool)

(declare-fun e!3484447 () Bool)

(assert (=> b!5657508 (= c!994741 e!3484447)))

(declare-fun res!2393103 () Bool)

(assert (=> b!5657508 (=> (not res!2393103) (not e!3484447))))

(assert (=> b!5657508 (= res!2393103 ((_ is Concat!24496) (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))

(assert (=> b!5657508 (= e!3484446 e!3484448)))

(declare-fun b!5657509 () Bool)

(declare-fun e!3484450 () (InoxSet Context!10070))

(declare-fun call!428196 () (InoxSet Context!10070))

(assert (=> b!5657509 (= e!3484450 call!428196)))

(declare-fun b!5657510 () Bool)

(assert (=> b!5657510 (= e!3484445 (store ((as const (Array Context!10070 Bool)) false) (ite c!994449 lt!2266833 (Context!10071 call!428009)) true))))

(declare-fun b!5657511 () Bool)

(assert (=> b!5657511 (= e!3484448 e!3484450)))

(declare-fun c!994740 () Bool)

(assert (=> b!5657511 (= c!994740 ((_ is Concat!24496) (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun bm!428193 () Bool)

(declare-fun call!428199 () List!63252)

(assert (=> bm!428193 (= call!428199 call!428198)))

(declare-fun b!5657512 () Bool)

(assert (=> b!5657512 (= e!3484447 (nullable!5683 (regOne!31814 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))))))))

(declare-fun b!5657513 () Bool)

(declare-fun e!3484449 () (InoxSet Context!10070))

(assert (=> b!5657513 (= e!3484449 call!428196)))

(declare-fun bm!428194 () Bool)

(assert (=> bm!428194 (= call!428196 call!428200)))

(declare-fun b!5657507 () Bool)

(assert (=> b!5657507 (= e!3484449 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786415 () Bool)

(declare-fun c!994742 () Bool)

(assert (=> d!1786415 (= c!994742 (and ((_ is ElementMatch!15651) (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))) (= (c!994391 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))) (h!69578 s!2326))))))

(assert (=> d!1786415 (= (derivationStepZipperDown!993 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))) (ite c!994449 lt!2266833 (Context!10071 call!428009)) (h!69578 s!2326)) e!3484445)))

(declare-fun b!5657514 () Bool)

(assert (=> b!5657514 (= e!3484446 ((_ map or) call!428197 call!428201))))

(declare-fun bm!428195 () Bool)

(assert (=> bm!428195 (= call!428201 (derivationStepZipperDown!993 (ite c!994743 (regTwo!31815 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))) (ite c!994741 (regTwo!31814 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))) (ite c!994740 (regOne!31814 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))) (reg!15980 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))))))) (ite (or c!994743 c!994741) (ite c!994449 lt!2266833 (Context!10071 call!428009)) (Context!10071 call!428199)) (h!69578 s!2326)))))

(declare-fun bm!428196 () Bool)

(assert (=> bm!428196 (= call!428198 ($colon$colon!1690 (exprs!5535 (ite c!994449 lt!2266833 (Context!10071 call!428009))) (ite (or c!994741 c!994740) (regTwo!31814 (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))) (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))))))))

(declare-fun b!5657515 () Bool)

(declare-fun c!994744 () Bool)

(assert (=> b!5657515 (= c!994744 ((_ is Star!15651) (ite c!994449 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))

(assert (=> b!5657515 (= e!3484450 e!3484449)))

(assert (= (and d!1786415 c!994742) b!5657510))

(assert (= (and d!1786415 (not c!994742)) b!5657505))

(assert (= (and b!5657505 c!994743) b!5657514))

(assert (= (and b!5657505 (not c!994743)) b!5657508))

(assert (= (and b!5657508 res!2393103) b!5657512))

(assert (= (and b!5657508 c!994741) b!5657506))

(assert (= (and b!5657508 (not c!994741)) b!5657511))

(assert (= (and b!5657511 c!994740) b!5657509))

(assert (= (and b!5657511 (not c!994740)) b!5657515))

(assert (= (and b!5657515 c!994744) b!5657513))

(assert (= (and b!5657515 (not c!994744)) b!5657507))

(assert (= (or b!5657509 b!5657513) bm!428193))

(assert (= (or b!5657509 b!5657513) bm!428194))

(assert (= (or b!5657506 bm!428193) bm!428196))

(assert (= (or b!5657506 bm!428194) bm!428192))

(assert (= (or b!5657514 bm!428192) bm!428195))

(assert (= (or b!5657514 b!5657506) bm!428191))

(declare-fun m!6623160 () Bool)

(assert (=> b!5657512 m!6623160))

(declare-fun m!6623164 () Bool)

(assert (=> bm!428191 m!6623164))

(declare-fun m!6623168 () Bool)

(assert (=> bm!428195 m!6623168))

(declare-fun m!6623170 () Bool)

(assert (=> bm!428196 m!6623170))

(declare-fun m!6623172 () Bool)

(assert (=> b!5657510 m!6623172))

(assert (=> bm!428002 d!1786415))

(declare-fun b!5657518 () Bool)

(declare-fun e!3484452 () (InoxSet Context!10070))

(declare-fun e!3484453 () (InoxSet Context!10070))

(assert (=> b!5657518 (= e!3484452 e!3484453)))

(declare-fun c!994749 () Bool)

(assert (=> b!5657518 (= c!994749 ((_ is Union!15651) (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))))

(declare-fun call!428203 () (InoxSet Context!10070))

(declare-fun call!428204 () List!63252)

(declare-fun bm!428197 () Bool)

(assert (=> bm!428197 (= call!428203 (derivationStepZipperDown!993 (ite c!994749 (regOne!31815 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (regOne!31814 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))) (ite c!994749 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (Context!10071 call!428204)) (h!69578 s!2326)))))

(declare-fun b!5657519 () Bool)

(declare-fun e!3484455 () (InoxSet Context!10070))

(declare-fun call!428206 () (InoxSet Context!10070))

(assert (=> b!5657519 (= e!3484455 ((_ map or) call!428203 call!428206))))

(declare-fun bm!428198 () Bool)

(declare-fun call!428207 () (InoxSet Context!10070))

(assert (=> bm!428198 (= call!428206 call!428207)))

(declare-fun b!5657521 () Bool)

(declare-fun c!994747 () Bool)

(declare-fun e!3484454 () Bool)

(assert (=> b!5657521 (= c!994747 e!3484454)))

(declare-fun res!2393104 () Bool)

(assert (=> b!5657521 (=> (not res!2393104) (not e!3484454))))

(assert (=> b!5657521 (= res!2393104 ((_ is Concat!24496) (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))))

(assert (=> b!5657521 (= e!3484453 e!3484455)))

(declare-fun b!5657522 () Bool)

(declare-fun e!3484457 () (InoxSet Context!10070))

(declare-fun call!428202 () (InoxSet Context!10070))

(assert (=> b!5657522 (= e!3484457 call!428202)))

(declare-fun b!5657523 () Bool)

(assert (=> b!5657523 (= e!3484452 (store ((as const (Array Context!10070 Bool)) false) (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) true))))

(declare-fun b!5657524 () Bool)

(assert (=> b!5657524 (= e!3484455 e!3484457)))

(declare-fun c!994746 () Bool)

(assert (=> b!5657524 (= c!994746 ((_ is Concat!24496) (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))))

(declare-fun bm!428199 () Bool)

(declare-fun call!428205 () List!63252)

(assert (=> bm!428199 (= call!428205 call!428204)))

(declare-fun b!5657525 () Bool)

(assert (=> b!5657525 (= e!3484454 (nullable!5683 (regOne!31814 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))))))

(declare-fun b!5657526 () Bool)

(declare-fun e!3484456 () (InoxSet Context!10070))

(assert (=> b!5657526 (= e!3484456 call!428202)))

(declare-fun bm!428200 () Bool)

(assert (=> bm!428200 (= call!428202 call!428206)))

(declare-fun b!5657520 () Bool)

(assert (=> b!5657520 (= e!3484456 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786421 () Bool)

(declare-fun c!994748 () Bool)

(assert (=> d!1786421 (= c!994748 (and ((_ is ElementMatch!15651) (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (= (c!994391 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (h!69578 s!2326))))))

(assert (=> d!1786421 (= (derivationStepZipperDown!993 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))) (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (h!69578 s!2326)) e!3484452)))

(declare-fun b!5657527 () Bool)

(assert (=> b!5657527 (= e!3484453 ((_ map or) call!428203 call!428207))))

(declare-fun bm!428201 () Bool)

(assert (=> bm!428201 (= call!428207 (derivationStepZipperDown!993 (ite c!994749 (regTwo!31815 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (ite c!994747 (regTwo!31814 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (ite c!994746 (regOne!31814 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (reg!15980 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))))) (ite (or c!994749 c!994747) (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (Context!10071 call!428205)) (h!69578 s!2326)))))

(declare-fun bm!428202 () Bool)

(assert (=> bm!428202 (= call!428204 ($colon$colon!1690 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))) (ite (or c!994747 c!994746) (regTwo!31814 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))))))

(declare-fun b!5657528 () Bool)

(declare-fun c!994750 () Bool)

(assert (=> b!5657528 (= c!994750 ((_ is Star!15651) (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))))

(assert (=> b!5657528 (= e!3484457 e!3484456)))

(assert (= (and d!1786421 c!994748) b!5657523))

(assert (= (and d!1786421 (not c!994748)) b!5657518))

(assert (= (and b!5657518 c!994749) b!5657527))

(assert (= (and b!5657518 (not c!994749)) b!5657521))

(assert (= (and b!5657521 res!2393104) b!5657525))

(assert (= (and b!5657521 c!994747) b!5657519))

(assert (= (and b!5657521 (not c!994747)) b!5657524))

(assert (= (and b!5657524 c!994746) b!5657522))

(assert (= (and b!5657524 (not c!994746)) b!5657528))

(assert (= (and b!5657528 c!994750) b!5657526))

(assert (= (and b!5657528 (not c!994750)) b!5657520))

(assert (= (or b!5657522 b!5657526) bm!428199))

(assert (= (or b!5657522 b!5657526) bm!428200))

(assert (= (or b!5657519 bm!428199) bm!428202))

(assert (= (or b!5657519 bm!428200) bm!428198))

(assert (= (or b!5657527 bm!428198) bm!428201))

(assert (= (or b!5657527 b!5657519) bm!428197))

(declare-fun m!6623176 () Bool)

(assert (=> b!5657525 m!6623176))

(declare-fun m!6623178 () Bool)

(assert (=> bm!428197 m!6623178))

(declare-fun m!6623180 () Bool)

(assert (=> bm!428201 m!6623180))

(declare-fun m!6623182 () Bool)

(assert (=> bm!428202 m!6623182))

(declare-fun m!6623184 () Bool)

(assert (=> b!5657523 m!6623184))

(assert (=> bm!428013 d!1786421))

(declare-fun bs!1315412 () Bool)

(declare-fun b!5657538 () Bool)

(assert (= bs!1315412 (and b!5657538 b!5656951)))

(declare-fun lambda!304542 () Int)

(assert (=> bs!1315412 (not (= lambda!304542 lambda!304511))))

(declare-fun bs!1315413 () Bool)

(assert (= bs!1315413 (and b!5657538 d!1786183)))

(assert (=> bs!1315413 (not (= lambda!304542 lambda!304496))))

(declare-fun bs!1315414 () Bool)

(assert (= bs!1315414 (and b!5657538 b!5656950)))

(assert (=> bs!1315414 (= (and (= (reg!15980 (regTwo!31815 r!7292)) (reg!15980 r!7292)) (= (regTwo!31815 r!7292) r!7292)) (= lambda!304542 lambda!304510))))

(declare-fun bs!1315415 () Bool)

(assert (= bs!1315415 (and b!5657538 d!1786181)))

(assert (=> bs!1315415 (not (= lambda!304542 lambda!304490))))

(declare-fun bs!1315416 () Bool)

(assert (= bs!1315416 (and b!5657538 b!5656308)))

(assert (=> bs!1315416 (not (= lambda!304542 lambda!304447))))

(assert (=> bs!1315413 (not (= lambda!304542 lambda!304495))))

(declare-fun bs!1315417 () Bool)

(assert (= bs!1315417 (and b!5657538 d!1786341)))

(assert (=> bs!1315417 (not (= lambda!304542 lambda!304526))))

(declare-fun bs!1315418 () Bool)

(assert (= bs!1315418 (and b!5657538 b!5657460)))

(assert (=> bs!1315418 (not (= lambda!304542 lambda!304538))))

(declare-fun bs!1315419 () Bool)

(assert (= bs!1315419 (and b!5657538 b!5657459)))

(assert (=> bs!1315419 (= (and (= (reg!15980 (regTwo!31815 r!7292)) (reg!15980 (regOne!31815 r!7292))) (= (regTwo!31815 r!7292) (regOne!31815 r!7292))) (= lambda!304542 lambda!304536))))

(assert (=> bs!1315416 (not (= lambda!304542 lambda!304448))))

(assert (=> b!5657538 true))

(assert (=> b!5657538 true))

(declare-fun bs!1315420 () Bool)

(declare-fun b!5657539 () Bool)

(assert (= bs!1315420 (and b!5657539 b!5656951)))

(declare-fun lambda!304543 () Int)

(assert (=> bs!1315420 (= (and (= (regOne!31814 (regTwo!31815 r!7292)) (regOne!31814 r!7292)) (= (regTwo!31814 (regTwo!31815 r!7292)) (regTwo!31814 r!7292))) (= lambda!304543 lambda!304511))))

(declare-fun bs!1315421 () Bool)

(assert (= bs!1315421 (and b!5657539 d!1786183)))

(assert (=> bs!1315421 (= (and (= (regOne!31814 (regTwo!31815 r!7292)) (regOne!31814 r!7292)) (= (regTwo!31814 (regTwo!31815 r!7292)) (regTwo!31814 r!7292))) (= lambda!304543 lambda!304496))))

(declare-fun bs!1315422 () Bool)

(assert (= bs!1315422 (and b!5657539 b!5656950)))

(assert (=> bs!1315422 (not (= lambda!304543 lambda!304510))))

(declare-fun bs!1315423 () Bool)

(assert (= bs!1315423 (and b!5657539 d!1786181)))

(assert (=> bs!1315423 (not (= lambda!304543 lambda!304490))))

(declare-fun bs!1315424 () Bool)

(assert (= bs!1315424 (and b!5657539 b!5657538)))

(assert (=> bs!1315424 (not (= lambda!304543 lambda!304542))))

(declare-fun bs!1315425 () Bool)

(assert (= bs!1315425 (and b!5657539 b!5656308)))

(assert (=> bs!1315425 (not (= lambda!304543 lambda!304447))))

(assert (=> bs!1315421 (not (= lambda!304543 lambda!304495))))

(declare-fun bs!1315426 () Bool)

(assert (= bs!1315426 (and b!5657539 d!1786341)))

(assert (=> bs!1315426 (not (= lambda!304543 lambda!304526))))

(declare-fun bs!1315427 () Bool)

(assert (= bs!1315427 (and b!5657539 b!5657460)))

(assert (=> bs!1315427 (= (and (= (regOne!31814 (regTwo!31815 r!7292)) (regOne!31814 (regOne!31815 r!7292))) (= (regTwo!31814 (regTwo!31815 r!7292)) (regTwo!31814 (regOne!31815 r!7292)))) (= lambda!304543 lambda!304538))))

(declare-fun bs!1315428 () Bool)

(assert (= bs!1315428 (and b!5657539 b!5657459)))

(assert (=> bs!1315428 (not (= lambda!304543 lambda!304536))))

(assert (=> bs!1315425 (= (and (= (regOne!31814 (regTwo!31815 r!7292)) (regOne!31814 r!7292)) (= (regTwo!31814 (regTwo!31815 r!7292)) (regTwo!31814 r!7292))) (= lambda!304543 lambda!304448))))

(assert (=> b!5657539 true))

(assert (=> b!5657539 true))

(declare-fun b!5657531 () Bool)

(declare-fun e!3484459 () Bool)

(declare-fun e!3484460 () Bool)

(assert (=> b!5657531 (= e!3484459 e!3484460)))

(declare-fun res!2393106 () Bool)

(assert (=> b!5657531 (= res!2393106 (matchRSpec!2754 (regOne!31815 (regTwo!31815 r!7292)) s!2326))))

(assert (=> b!5657531 (=> res!2393106 e!3484460)))

(declare-fun b!5657532 () Bool)

(declare-fun e!3484463 () Bool)

(assert (=> b!5657532 (= e!3484459 e!3484463)))

(declare-fun c!994754 () Bool)

(assert (=> b!5657532 (= c!994754 ((_ is Star!15651) (regTwo!31815 r!7292)))))

(declare-fun bm!428203 () Bool)

(declare-fun call!428209 () Bool)

(assert (=> bm!428203 (= call!428209 (isEmpty!34976 s!2326))))

(declare-fun b!5657533 () Bool)

(declare-fun c!994753 () Bool)

(assert (=> b!5657533 (= c!994753 ((_ is Union!15651) (regTwo!31815 r!7292)))))

(declare-fun e!3484462 () Bool)

(assert (=> b!5657533 (= e!3484462 e!3484459)))

(declare-fun b!5657534 () Bool)

(assert (=> b!5657534 (= e!3484460 (matchRSpec!2754 (regTwo!31815 (regTwo!31815 r!7292)) s!2326))))

(declare-fun bm!428204 () Bool)

(declare-fun call!428208 () Bool)

(assert (=> bm!428204 (= call!428208 (Exists!2751 (ite c!994754 lambda!304542 lambda!304543)))))

(declare-fun b!5657536 () Bool)

(declare-fun res!2393107 () Bool)

(declare-fun e!3484465 () Bool)

(assert (=> b!5657536 (=> res!2393107 e!3484465)))

(assert (=> b!5657536 (= res!2393107 call!428209)))

(assert (=> b!5657536 (= e!3484463 e!3484465)))

(declare-fun b!5657537 () Bool)

(declare-fun c!994755 () Bool)

(assert (=> b!5657537 (= c!994755 ((_ is ElementMatch!15651) (regTwo!31815 r!7292)))))

(declare-fun e!3484461 () Bool)

(assert (=> b!5657537 (= e!3484461 e!3484462)))

(assert (=> b!5657538 (= e!3484465 call!428208)))

(assert (=> b!5657539 (= e!3484463 call!428208)))

(declare-fun b!5657535 () Bool)

(declare-fun e!3484464 () Bool)

(assert (=> b!5657535 (= e!3484464 e!3484461)))

(declare-fun res!2393105 () Bool)

(assert (=> b!5657535 (= res!2393105 (not ((_ is EmptyLang!15651) (regTwo!31815 r!7292))))))

(assert (=> b!5657535 (=> (not res!2393105) (not e!3484461))))

(declare-fun d!1786425 () Bool)

(declare-fun c!994752 () Bool)

(assert (=> d!1786425 (= c!994752 ((_ is EmptyExpr!15651) (regTwo!31815 r!7292)))))

(assert (=> d!1786425 (= (matchRSpec!2754 (regTwo!31815 r!7292) s!2326) e!3484464)))

(declare-fun b!5657540 () Bool)

(assert (=> b!5657540 (= e!3484462 (= s!2326 (Cons!63130 (c!994391 (regTwo!31815 r!7292)) Nil!63130)))))

(declare-fun b!5657541 () Bool)

(assert (=> b!5657541 (= e!3484464 call!428209)))

(assert (= (and d!1786425 c!994752) b!5657541))

(assert (= (and d!1786425 (not c!994752)) b!5657535))

(assert (= (and b!5657535 res!2393105) b!5657537))

(assert (= (and b!5657537 c!994755) b!5657540))

(assert (= (and b!5657537 (not c!994755)) b!5657533))

(assert (= (and b!5657533 c!994753) b!5657531))

(assert (= (and b!5657533 (not c!994753)) b!5657532))

(assert (= (and b!5657531 (not res!2393106)) b!5657534))

(assert (= (and b!5657532 c!994754) b!5657536))

(assert (= (and b!5657532 (not c!994754)) b!5657539))

(assert (= (and b!5657536 (not res!2393107)) b!5657538))

(assert (= (or b!5657538 b!5657539) bm!428204))

(assert (= (or b!5657541 b!5657536) bm!428203))

(declare-fun m!6623238 () Bool)

(assert (=> b!5657531 m!6623238))

(assert (=> bm!428203 m!6622742))

(declare-fun m!6623246 () Bool)

(assert (=> b!5657534 m!6623246))

(declare-fun m!6623250 () Bool)

(assert (=> bm!428204 m!6623250))

(assert (=> b!5656946 d!1786425))

(assert (=> d!1786193 d!1786399))

(declare-fun d!1786441 () Bool)

(assert (=> d!1786441 (= (isEmpty!34976 s!2326) ((_ is Nil!63130) s!2326))))

(assert (=> bm!428067 d!1786441))

(assert (=> d!1786219 d!1786217))

(assert (=> d!1786219 d!1786215))

(declare-fun d!1786443 () Bool)

(assert (=> d!1786443 (= (matchR!7836 r!7292 s!2326) (matchRSpec!2754 r!7292 s!2326))))

(assert (=> d!1786443 true))

(declare-fun _$88!3947 () Unit!156136)

(assert (=> d!1786443 (= (choose!42847 r!7292 s!2326) _$88!3947)))

(declare-fun bs!1315429 () Bool)

(assert (= bs!1315429 d!1786443))

(assert (=> bs!1315429 m!6622260))

(assert (=> bs!1315429 m!6622258))

(assert (=> d!1786219 d!1786443))

(assert (=> d!1786219 d!1786221))

(declare-fun d!1786445 () Bool)

(assert (=> d!1786445 (= (isEmpty!34973 (tail!11122 (unfocusZipperList!1079 zl!343))) ((_ is Nil!63128) (tail!11122 (unfocusZipperList!1079 zl!343))))))

(assert (=> b!5656896 d!1786445))

(declare-fun d!1786447 () Bool)

(assert (=> d!1786447 (= (tail!11122 (unfocusZipperList!1079 zl!343)) (t!376554 (unfocusZipperList!1079 zl!343)))))

(assert (=> b!5656896 d!1786447))

(assert (=> bs!1315301 d!1786199))

(declare-fun d!1786449 () Bool)

(assert (=> d!1786449 (= ($colon$colon!1690 (exprs!5535 (Context!10071 lt!2266835)) (ite (or c!994557 c!994556) (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 r!7292)))) (Cons!63128 (ite (or c!994557 c!994556) (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 r!7292))) (exprs!5535 (Context!10071 lt!2266835))))))

(assert (=> bm!428058 d!1786449))

(declare-fun b!5657584 () Bool)

(declare-fun e!3484490 () (InoxSet Context!10070))

(declare-fun e!3484492 () (InoxSet Context!10070))

(assert (=> b!5657584 (= e!3484490 e!3484492)))

(declare-fun c!994768 () Bool)

(assert (=> b!5657584 (= c!994768 ((_ is Union!15651) (h!69576 (exprs!5535 lt!2266833))))))

(declare-fun bm!428209 () Bool)

(declare-fun call!428215 () (InoxSet Context!10070))

(declare-fun call!428216 () List!63252)

(assert (=> bm!428209 (= call!428215 (derivationStepZipperDown!993 (ite c!994768 (regOne!31815 (h!69576 (exprs!5535 lt!2266833))) (regOne!31814 (h!69576 (exprs!5535 lt!2266833)))) (ite c!994768 (Context!10071 (t!376554 (exprs!5535 lt!2266833))) (Context!10071 call!428216)) (h!69578 s!2326)))))

(declare-fun b!5657585 () Bool)

(declare-fun e!3484494 () (InoxSet Context!10070))

(declare-fun call!428218 () (InoxSet Context!10070))

(assert (=> b!5657585 (= e!3484494 ((_ map or) call!428215 call!428218))))

(declare-fun bm!428210 () Bool)

(declare-fun call!428219 () (InoxSet Context!10070))

(assert (=> bm!428210 (= call!428218 call!428219)))

(declare-fun b!5657587 () Bool)

(declare-fun c!994766 () Bool)

(declare-fun e!3484493 () Bool)

(assert (=> b!5657587 (= c!994766 e!3484493)))

(declare-fun res!2393132 () Bool)

(assert (=> b!5657587 (=> (not res!2393132) (not e!3484493))))

(assert (=> b!5657587 (= res!2393132 ((_ is Concat!24496) (h!69576 (exprs!5535 lt!2266833))))))

(assert (=> b!5657587 (= e!3484492 e!3484494)))

(declare-fun b!5657588 () Bool)

(declare-fun e!3484496 () (InoxSet Context!10070))

(declare-fun call!428214 () (InoxSet Context!10070))

(assert (=> b!5657588 (= e!3484496 call!428214)))

(declare-fun b!5657589 () Bool)

(assert (=> b!5657589 (= e!3484490 (store ((as const (Array Context!10070 Bool)) false) (Context!10071 (t!376554 (exprs!5535 lt!2266833))) true))))

(declare-fun b!5657590 () Bool)

(assert (=> b!5657590 (= e!3484494 e!3484496)))

(declare-fun c!994765 () Bool)

(assert (=> b!5657590 (= c!994765 ((_ is Concat!24496) (h!69576 (exprs!5535 lt!2266833))))))

(declare-fun bm!428211 () Bool)

(declare-fun call!428217 () List!63252)

(assert (=> bm!428211 (= call!428217 call!428216)))

(declare-fun b!5657591 () Bool)

(assert (=> b!5657591 (= e!3484493 (nullable!5683 (regOne!31814 (h!69576 (exprs!5535 lt!2266833)))))))

(declare-fun b!5657592 () Bool)

(declare-fun e!3484495 () (InoxSet Context!10070))

(assert (=> b!5657592 (= e!3484495 call!428214)))

(declare-fun bm!428212 () Bool)

(assert (=> bm!428212 (= call!428214 call!428218)))

(declare-fun b!5657586 () Bool)

(assert (=> b!5657586 (= e!3484495 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786453 () Bool)

(declare-fun c!994767 () Bool)

(assert (=> d!1786453 (= c!994767 (and ((_ is ElementMatch!15651) (h!69576 (exprs!5535 lt!2266833))) (= (c!994391 (h!69576 (exprs!5535 lt!2266833))) (h!69578 s!2326))))))

(assert (=> d!1786453 (= (derivationStepZipperDown!993 (h!69576 (exprs!5535 lt!2266833)) (Context!10071 (t!376554 (exprs!5535 lt!2266833))) (h!69578 s!2326)) e!3484490)))

(declare-fun b!5657593 () Bool)

(assert (=> b!5657593 (= e!3484492 ((_ map or) call!428215 call!428219))))

(declare-fun bm!428213 () Bool)

(assert (=> bm!428213 (= call!428219 (derivationStepZipperDown!993 (ite c!994768 (regTwo!31815 (h!69576 (exprs!5535 lt!2266833))) (ite c!994766 (regTwo!31814 (h!69576 (exprs!5535 lt!2266833))) (ite c!994765 (regOne!31814 (h!69576 (exprs!5535 lt!2266833))) (reg!15980 (h!69576 (exprs!5535 lt!2266833)))))) (ite (or c!994768 c!994766) (Context!10071 (t!376554 (exprs!5535 lt!2266833))) (Context!10071 call!428217)) (h!69578 s!2326)))))

(declare-fun bm!428214 () Bool)

(assert (=> bm!428214 (= call!428216 ($colon$colon!1690 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266833)))) (ite (or c!994766 c!994765) (regTwo!31814 (h!69576 (exprs!5535 lt!2266833))) (h!69576 (exprs!5535 lt!2266833)))))))

(declare-fun b!5657594 () Bool)

(declare-fun c!994769 () Bool)

(assert (=> b!5657594 (= c!994769 ((_ is Star!15651) (h!69576 (exprs!5535 lt!2266833))))))

(assert (=> b!5657594 (= e!3484496 e!3484495)))

(assert (= (and d!1786453 c!994767) b!5657589))

(assert (= (and d!1786453 (not c!994767)) b!5657584))

(assert (= (and b!5657584 c!994768) b!5657593))

(assert (= (and b!5657584 (not c!994768)) b!5657587))

(assert (= (and b!5657587 res!2393132) b!5657591))

(assert (= (and b!5657587 c!994766) b!5657585))

(assert (= (and b!5657587 (not c!994766)) b!5657590))

(assert (= (and b!5657590 c!994765) b!5657588))

(assert (= (and b!5657590 (not c!994765)) b!5657594))

(assert (= (and b!5657594 c!994769) b!5657592))

(assert (= (and b!5657594 (not c!994769)) b!5657586))

(assert (= (or b!5657588 b!5657592) bm!428211))

(assert (= (or b!5657588 b!5657592) bm!428212))

(assert (= (or b!5657585 bm!428211) bm!428214))

(assert (= (or b!5657585 bm!428212) bm!428210))

(assert (= (or b!5657593 bm!428210) bm!428213))

(assert (= (or b!5657593 b!5657585) bm!428209))

(declare-fun m!6623256 () Bool)

(assert (=> b!5657591 m!6623256))

(declare-fun m!6623258 () Bool)

(assert (=> bm!428209 m!6623258))

(declare-fun m!6623260 () Bool)

(assert (=> bm!428213 m!6623260))

(declare-fun m!6623262 () Bool)

(assert (=> bm!428214 m!6623262))

(declare-fun m!6623264 () Bool)

(assert (=> b!5657589 m!6623264))

(assert (=> bm!428026 d!1786453))

(declare-fun d!1786455 () Bool)

(declare-fun c!994770 () Bool)

(assert (=> d!1786455 (= c!994770 (isEmpty!34976 (tail!11121 (t!376556 s!2326))))))

(declare-fun e!3484497 () Bool)

(assert (=> d!1786455 (= (matchZipper!1789 (derivationStepZipper!1736 ((_ map or) lt!2266828 lt!2266834) (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))) e!3484497)))

(declare-fun b!5657595 () Bool)

(assert (=> b!5657595 (= e!3484497 (nullableZipper!1623 (derivationStepZipper!1736 ((_ map or) lt!2266828 lt!2266834) (head!12026 (t!376556 s!2326)))))))

(declare-fun b!5657596 () Bool)

(assert (=> b!5657596 (= e!3484497 (matchZipper!1789 (derivationStepZipper!1736 (derivationStepZipper!1736 ((_ map or) lt!2266828 lt!2266834) (head!12026 (t!376556 s!2326))) (head!12026 (tail!11121 (t!376556 s!2326)))) (tail!11121 (tail!11121 (t!376556 s!2326)))))))

(assert (= (and d!1786455 c!994770) b!5657595))

(assert (= (and d!1786455 (not c!994770)) b!5657596))

(assert (=> d!1786455 m!6622528))

(assert (=> d!1786455 m!6622952))

(assert (=> b!5657595 m!6622682))

(declare-fun m!6623280 () Bool)

(assert (=> b!5657595 m!6623280))

(assert (=> b!5657596 m!6622528))

(assert (=> b!5657596 m!6622956))

(assert (=> b!5657596 m!6622682))

(assert (=> b!5657596 m!6622956))

(declare-fun m!6623286 () Bool)

(assert (=> b!5657596 m!6623286))

(assert (=> b!5657596 m!6622528))

(assert (=> b!5657596 m!6622960))

(assert (=> b!5657596 m!6623286))

(assert (=> b!5657596 m!6622960))

(declare-fun m!6623292 () Bool)

(assert (=> b!5657596 m!6623292))

(assert (=> b!5656854 d!1786455))

(declare-fun bs!1315431 () Bool)

(declare-fun d!1786459 () Bool)

(assert (= bs!1315431 (and d!1786459 b!5656316)))

(declare-fun lambda!304544 () Int)

(assert (=> bs!1315431 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304544 lambda!304449))))

(declare-fun bs!1315432 () Bool)

(assert (= bs!1315432 (and d!1786459 d!1786203)))

(assert (=> bs!1315432 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304544 lambda!304499))))

(declare-fun bs!1315433 () Bool)

(assert (= bs!1315433 (and d!1786459 d!1786319)))

(assert (=> bs!1315433 (= lambda!304544 lambda!304517)))

(assert (=> d!1786459 true))

(assert (=> d!1786459 (= (derivationStepZipper!1736 ((_ map or) lt!2266828 lt!2266834) (head!12026 (t!376556 s!2326))) (flatMap!1264 ((_ map or) lt!2266828 lt!2266834) lambda!304544))))

(declare-fun bs!1315434 () Bool)

(assert (= bs!1315434 d!1786459))

(declare-fun m!6623300 () Bool)

(assert (=> bs!1315434 m!6623300))

(assert (=> b!5656854 d!1786459))

(assert (=> b!5656854 d!1786325))

(assert (=> b!5656854 d!1786327))

(declare-fun d!1786463 () Bool)

(assert (=> d!1786463 (= (nullable!5683 r!7292) (nullableFct!1769 r!7292))))

(declare-fun bs!1315435 () Bool)

(assert (= bs!1315435 d!1786463))

(declare-fun m!6623302 () Bool)

(assert (=> bs!1315435 m!6623302))

(assert (=> b!5656992 d!1786463))

(declare-fun bm!428215 () Bool)

(declare-fun call!428221 () Bool)

(declare-fun c!994773 () Bool)

(declare-fun c!994772 () Bool)

(assert (=> bm!428215 (= call!428221 (validRegex!7387 (ite c!994773 (reg!15980 (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))) (ite c!994772 (regTwo!31815 (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))) (regTwo!31814 (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292))))))))))

(declare-fun b!5657599 () Bool)

(declare-fun e!3484501 () Bool)

(declare-fun e!3484500 () Bool)

(assert (=> b!5657599 (= e!3484501 e!3484500)))

(assert (=> b!5657599 (= c!994772 ((_ is Union!15651) (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))))))

(declare-fun b!5657600 () Bool)

(declare-fun e!3484502 () Bool)

(assert (=> b!5657600 (= e!3484501 e!3484502)))

(declare-fun res!2393137 () Bool)

(assert (=> b!5657600 (= res!2393137 (not (nullable!5683 (reg!15980 (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))))))))

(assert (=> b!5657600 (=> (not res!2393137) (not e!3484502))))

(declare-fun b!5657601 () Bool)

(assert (=> b!5657601 (= e!3484502 call!428221)))

(declare-fun b!5657602 () Bool)

(declare-fun e!3484505 () Bool)

(assert (=> b!5657602 (= e!3484505 e!3484501)))

(assert (=> b!5657602 (= c!994773 ((_ is Star!15651) (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))))))

(declare-fun d!1786465 () Bool)

(declare-fun res!2393135 () Bool)

(assert (=> d!1786465 (=> res!2393135 e!3484505)))

(assert (=> d!1786465 (= res!2393135 ((_ is ElementMatch!15651) (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))))))

(assert (=> d!1786465 (= (validRegex!7387 (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))) e!3484505)))

(declare-fun bm!428216 () Bool)

(declare-fun call!428222 () Bool)

(assert (=> bm!428216 (= call!428222 call!428221)))

(declare-fun b!5657603 () Bool)

(declare-fun e!3484499 () Bool)

(declare-fun e!3484504 () Bool)

(assert (=> b!5657603 (= e!3484499 e!3484504)))

(declare-fun res!2393134 () Bool)

(assert (=> b!5657603 (=> (not res!2393134) (not e!3484504))))

(declare-fun call!428220 () Bool)

(assert (=> b!5657603 (= res!2393134 call!428220)))

(declare-fun b!5657604 () Bool)

(declare-fun res!2393136 () Bool)

(assert (=> b!5657604 (=> res!2393136 e!3484499)))

(assert (=> b!5657604 (= res!2393136 (not ((_ is Concat!24496) (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292))))))))

(assert (=> b!5657604 (= e!3484500 e!3484499)))

(declare-fun b!5657605 () Bool)

(assert (=> b!5657605 (= e!3484504 call!428222)))

(declare-fun b!5657606 () Bool)

(declare-fun res!2393133 () Bool)

(declare-fun e!3484503 () Bool)

(assert (=> b!5657606 (=> (not res!2393133) (not e!3484503))))

(assert (=> b!5657606 (= res!2393133 call!428220)))

(assert (=> b!5657606 (= e!3484500 e!3484503)))

(declare-fun bm!428217 () Bool)

(assert (=> bm!428217 (= call!428220 (validRegex!7387 (ite c!994772 (regOne!31815 (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))) (regOne!31814 (ite c!994603 (reg!15980 r!7292) (ite c!994602 (regTwo!31815 r!7292) (regTwo!31814 r!7292)))))))))

(declare-fun b!5657607 () Bool)

(assert (=> b!5657607 (= e!3484503 call!428222)))

(assert (= (and d!1786465 (not res!2393135)) b!5657602))

(assert (= (and b!5657602 c!994773) b!5657600))

(assert (= (and b!5657602 (not c!994773)) b!5657599))

(assert (= (and b!5657600 res!2393137) b!5657601))

(assert (= (and b!5657599 c!994772) b!5657606))

(assert (= (and b!5657599 (not c!994772)) b!5657604))

(assert (= (and b!5657606 res!2393133) b!5657607))

(assert (= (and b!5657604 (not res!2393136)) b!5657603))

(assert (= (and b!5657603 res!2393134) b!5657605))

(assert (= (or b!5657607 b!5657605) bm!428216))

(assert (= (or b!5657606 b!5657603) bm!428217))

(assert (= (or b!5657601 bm!428216) bm!428215))

(declare-fun m!6623306 () Bool)

(assert (=> bm!428215 m!6623306))

(declare-fun m!6623308 () Bool)

(assert (=> b!5657600 m!6623308))

(declare-fun m!6623310 () Bool)

(assert (=> bm!428217 m!6623310))

(assert (=> bm!428074 d!1786465))

(declare-fun b!5657608 () Bool)

(declare-fun e!3484509 () Bool)

(declare-fun e!3484506 () Bool)

(assert (=> b!5657608 (= e!3484509 e!3484506)))

(declare-fun res!2393139 () Bool)

(declare-fun call!428224 () Bool)

(assert (=> b!5657608 (= res!2393139 call!428224)))

(assert (=> b!5657608 (=> (not res!2393139) (not e!3484506))))

(declare-fun b!5657609 () Bool)

(declare-fun e!3484507 () Bool)

(declare-fun call!428223 () Bool)

(assert (=> b!5657609 (= e!3484507 call!428223)))

(declare-fun bm!428218 () Bool)

(declare-fun c!994774 () Bool)

(assert (=> bm!428218 (= call!428224 (nullable!5683 (ite c!994774 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))))))

(declare-fun b!5657610 () Bool)

(declare-fun e!3484511 () Bool)

(declare-fun e!3484510 () Bool)

(assert (=> b!5657610 (= e!3484511 e!3484510)))

(declare-fun res!2393138 () Bool)

(assert (=> b!5657610 (=> (not res!2393138) (not e!3484510))))

(assert (=> b!5657610 (= res!2393138 (and (not ((_ is EmptyLang!15651) (regOne!31814 (regOne!31814 r!7292)))) (not ((_ is ElementMatch!15651) (regOne!31814 (regOne!31814 r!7292))))))))

(declare-fun d!1786471 () Bool)

(declare-fun res!2393141 () Bool)

(assert (=> d!1786471 (=> res!2393141 e!3484511)))

(assert (=> d!1786471 (= res!2393141 ((_ is EmptyExpr!15651) (regOne!31814 (regOne!31814 r!7292))))))

(assert (=> d!1786471 (= (nullableFct!1769 (regOne!31814 (regOne!31814 r!7292))) e!3484511)))

(declare-fun b!5657611 () Bool)

(declare-fun e!3484508 () Bool)

(assert (=> b!5657611 (= e!3484510 e!3484508)))

(declare-fun res!2393140 () Bool)

(assert (=> b!5657611 (=> res!2393140 e!3484508)))

(assert (=> b!5657611 (= res!2393140 ((_ is Star!15651) (regOne!31814 (regOne!31814 r!7292))))))

(declare-fun b!5657612 () Bool)

(assert (=> b!5657612 (= e!3484509 e!3484507)))

(declare-fun res!2393142 () Bool)

(assert (=> b!5657612 (= res!2393142 call!428224)))

(assert (=> b!5657612 (=> res!2393142 e!3484507)))

(declare-fun bm!428219 () Bool)

(assert (=> bm!428219 (= call!428223 (nullable!5683 (ite c!994774 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))))))))

(declare-fun b!5657613 () Bool)

(assert (=> b!5657613 (= e!3484508 e!3484509)))

(assert (=> b!5657613 (= c!994774 ((_ is Union!15651) (regOne!31814 (regOne!31814 r!7292))))))

(declare-fun b!5657614 () Bool)

(assert (=> b!5657614 (= e!3484506 call!428223)))

(assert (= (and d!1786471 (not res!2393141)) b!5657610))

(assert (= (and b!5657610 res!2393138) b!5657611))

(assert (= (and b!5657611 (not res!2393140)) b!5657613))

(assert (= (and b!5657613 c!994774) b!5657612))

(assert (= (and b!5657613 (not c!994774)) b!5657608))

(assert (= (and b!5657612 (not res!2393142)) b!5657609))

(assert (= (and b!5657608 res!2393139) b!5657614))

(assert (= (or b!5657609 b!5657614) bm!428219))

(assert (= (or b!5657612 b!5657608) bm!428218))

(declare-fun m!6623314 () Bool)

(assert (=> bm!428218 m!6623314))

(declare-fun m!6623316 () Bool)

(assert (=> bm!428219 m!6623316))

(assert (=> d!1786225 d!1786471))

(declare-fun d!1786475 () Bool)

(assert (=> d!1786475 true))

(assert (=> d!1786475 true))

(declare-fun res!2393146 () Bool)

(assert (=> d!1786475 (= (choose!42843 lambda!304448) res!2393146)))

(assert (=> d!1786179 d!1786475))

(declare-fun b!5657615 () Bool)

(declare-fun e!3484512 () (InoxSet Context!10070))

(declare-fun call!428225 () (InoxSet Context!10070))

(assert (=> b!5657615 (= e!3484512 call!428225)))

(declare-fun b!5657616 () Bool)

(assert (=> b!5657616 (= e!3484512 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786485 () Bool)

(declare-fun c!994776 () Bool)

(declare-fun e!3484514 () Bool)

(assert (=> d!1786485 (= c!994776 e!3484514)))

(declare-fun res!2393147 () Bool)

(assert (=> d!1786485 (=> (not res!2393147) (not e!3484514))))

(assert (=> d!1786485 (= res!2393147 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840))))))))

(declare-fun e!3484513 () (InoxSet Context!10070))

(assert (=> d!1786485 (= (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 lt!2266840))) (h!69578 s!2326)) e!3484513)))

(declare-fun b!5657617 () Bool)

(assert (=> b!5657617 (= e!3484513 ((_ map or) call!428225 (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840)))))) (h!69578 s!2326))))))

(declare-fun b!5657618 () Bool)

(assert (=> b!5657618 (= e!3484513 e!3484512)))

(declare-fun c!994775 () Bool)

(assert (=> b!5657618 (= c!994775 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840))))))))

(declare-fun b!5657619 () Bool)

(assert (=> b!5657619 (= e!3484514 (nullable!5683 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840)))))))))

(declare-fun bm!428220 () Bool)

(assert (=> bm!428220 (= call!428225 (derivationStepZipperDown!993 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840))))) (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840)))))) (h!69578 s!2326)))))

(assert (= (and d!1786485 res!2393147) b!5657619))

(assert (= (and d!1786485 c!994776) b!5657617))

(assert (= (and d!1786485 (not c!994776)) b!5657618))

(assert (= (and b!5657618 c!994775) b!5657615))

(assert (= (and b!5657618 (not c!994775)) b!5657616))

(assert (= (or b!5657617 b!5657615) bm!428220))

(declare-fun m!6623324 () Bool)

(assert (=> b!5657617 m!6623324))

(declare-fun m!6623326 () Bool)

(assert (=> b!5657619 m!6623326))

(declare-fun m!6623328 () Bool)

(assert (=> bm!428220 m!6623328))

(assert (=> b!5656857 d!1786485))

(declare-fun b!5657638 () Bool)

(declare-fun res!2393157 () Bool)

(declare-fun e!3484526 () Bool)

(assert (=> b!5657638 (=> (not res!2393157) (not e!3484526))))

(declare-fun lt!2266966 () List!63254)

(declare-fun size!39989 (List!63254) Int)

(assert (=> b!5657638 (= res!2393157 (= (size!39989 lt!2266966) (+ (size!39989 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130))) (size!39989 (t!376556 s!2326)))))))

(declare-fun d!1786493 () Bool)

(assert (=> d!1786493 e!3484526))

(declare-fun res!2393156 () Bool)

(assert (=> d!1786493 (=> (not res!2393156) (not e!3484526))))

(declare-fun content!11426 (List!63254) (InoxSet C!31572))

(assert (=> d!1786493 (= res!2393156 (= (content!11426 lt!2266966) ((_ map or) (content!11426 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130))) (content!11426 (t!376556 s!2326)))))))

(declare-fun e!3484525 () List!63254)

(assert (=> d!1786493 (= lt!2266966 e!3484525)))

(declare-fun c!994781 () Bool)

(assert (=> d!1786493 (= c!994781 ((_ is Nil!63130) (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130))))))

(assert (=> d!1786493 (= (++!13857 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) (t!376556 s!2326)) lt!2266966)))

(declare-fun b!5657636 () Bool)

(assert (=> b!5657636 (= e!3484525 (t!376556 s!2326))))

(declare-fun b!5657639 () Bool)

(assert (=> b!5657639 (= e!3484526 (or (not (= (t!376556 s!2326) Nil!63130)) (= lt!2266966 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)))))))

(declare-fun b!5657637 () Bool)

(assert (=> b!5657637 (= e!3484525 (Cons!63130 (h!69578 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130))) (++!13857 (t!376556 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130))) (t!376556 s!2326))))))

(assert (= (and d!1786493 c!994781) b!5657636))

(assert (= (and d!1786493 (not c!994781)) b!5657637))

(assert (= (and d!1786493 res!2393156) b!5657638))

(assert (= (and b!5657638 res!2393157) b!5657639))

(declare-fun m!6623338 () Bool)

(assert (=> b!5657638 m!6623338))

(assert (=> b!5657638 m!6622640))

(declare-fun m!6623340 () Bool)

(assert (=> b!5657638 m!6623340))

(declare-fun m!6623342 () Bool)

(assert (=> b!5657638 m!6623342))

(declare-fun m!6623344 () Bool)

(assert (=> d!1786493 m!6623344))

(assert (=> d!1786493 m!6622640))

(declare-fun m!6623346 () Bool)

(assert (=> d!1786493 m!6623346))

(declare-fun m!6623348 () Bool)

(assert (=> d!1786493 m!6623348))

(declare-fun m!6623350 () Bool)

(assert (=> b!5657637 m!6623350))

(assert (=> b!5656825 d!1786493))

(declare-fun b!5657646 () Bool)

(declare-fun res!2393163 () Bool)

(declare-fun e!3484532 () Bool)

(assert (=> b!5657646 (=> (not res!2393163) (not e!3484532))))

(declare-fun lt!2266967 () List!63254)

(assert (=> b!5657646 (= res!2393163 (= (size!39989 lt!2266967) (+ (size!39989 Nil!63130) (size!39989 (Cons!63130 (h!69578 s!2326) Nil!63130)))))))

(declare-fun d!1786501 () Bool)

(assert (=> d!1786501 e!3484532))

(declare-fun res!2393162 () Bool)

(assert (=> d!1786501 (=> (not res!2393162) (not e!3484532))))

(assert (=> d!1786501 (= res!2393162 (= (content!11426 lt!2266967) ((_ map or) (content!11426 Nil!63130) (content!11426 (Cons!63130 (h!69578 s!2326) Nil!63130)))))))

(declare-fun e!3484531 () List!63254)

(assert (=> d!1786501 (= lt!2266967 e!3484531)))

(declare-fun c!994782 () Bool)

(assert (=> d!1786501 (= c!994782 ((_ is Nil!63130) Nil!63130))))

(assert (=> d!1786501 (= (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) lt!2266967)))

(declare-fun b!5657644 () Bool)

(assert (=> b!5657644 (= e!3484531 (Cons!63130 (h!69578 s!2326) Nil!63130))))

(declare-fun b!5657647 () Bool)

(assert (=> b!5657647 (= e!3484532 (or (not (= (Cons!63130 (h!69578 s!2326) Nil!63130) Nil!63130)) (= lt!2266967 Nil!63130)))))

(declare-fun b!5657645 () Bool)

(assert (=> b!5657645 (= e!3484531 (Cons!63130 (h!69578 Nil!63130) (++!13857 (t!376556 Nil!63130) (Cons!63130 (h!69578 s!2326) Nil!63130))))))

(assert (= (and d!1786501 c!994782) b!5657644))

(assert (= (and d!1786501 (not c!994782)) b!5657645))

(assert (= (and d!1786501 res!2393162) b!5657646))

(assert (= (and b!5657646 res!2393163) b!5657647))

(declare-fun m!6623352 () Bool)

(assert (=> b!5657646 m!6623352))

(declare-fun m!6623354 () Bool)

(assert (=> b!5657646 m!6623354))

(declare-fun m!6623356 () Bool)

(assert (=> b!5657646 m!6623356))

(declare-fun m!6623358 () Bool)

(assert (=> d!1786501 m!6623358))

(declare-fun m!6623360 () Bool)

(assert (=> d!1786501 m!6623360))

(declare-fun m!6623362 () Bool)

(assert (=> d!1786501 m!6623362))

(declare-fun m!6623364 () Bool)

(assert (=> b!5657645 m!6623364))

(assert (=> b!5656825 d!1786501))

(declare-fun d!1786503 () Bool)

(assert (=> d!1786503 (= (++!13857 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) (t!376556 s!2326)) s!2326)))

(declare-fun lt!2266970 () Unit!156136)

(declare-fun choose!42849 (List!63254 C!31572 List!63254 List!63254) Unit!156136)

(assert (=> d!1786503 (= lt!2266970 (choose!42849 Nil!63130 (h!69578 s!2326) (t!376556 s!2326) s!2326))))

(assert (=> d!1786503 (= (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) (t!376556 s!2326))) s!2326)))

(assert (=> d!1786503 (= (lemmaMoveElementToOtherListKeepsConcatEq!2026 Nil!63130 (h!69578 s!2326) (t!376556 s!2326) s!2326) lt!2266970)))

(declare-fun bs!1315455 () Bool)

(assert (= bs!1315455 d!1786503))

(assert (=> bs!1315455 m!6622640))

(assert (=> bs!1315455 m!6622640))

(assert (=> bs!1315455 m!6622642))

(declare-fun m!6623378 () Bool)

(assert (=> bs!1315455 m!6623378))

(declare-fun m!6623380 () Bool)

(assert (=> bs!1315455 m!6623380))

(assert (=> b!5656825 d!1786503))

(declare-fun b!5657673 () Bool)

(declare-fun e!3484555 () Option!15660)

(declare-fun e!3484551 () Option!15660)

(assert (=> b!5657673 (= e!3484555 e!3484551)))

(declare-fun c!994787 () Bool)

(assert (=> b!5657673 (= c!994787 ((_ is Nil!63130) (t!376556 s!2326)))))

(declare-fun b!5657674 () Bool)

(assert (=> b!5657674 (= e!3484555 (Some!15659 (tuple2!65497 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) (t!376556 s!2326))))))

(declare-fun b!5657675 () Bool)

(declare-fun e!3484552 () Bool)

(declare-fun lt!2266972 () Option!15660)

(assert (=> b!5657675 (= e!3484552 (not (isDefined!12363 lt!2266972)))))

(declare-fun b!5657676 () Bool)

(assert (=> b!5657676 (= e!3484551 None!15659)))

(declare-fun d!1786511 () Bool)

(assert (=> d!1786511 e!3484552))

(declare-fun res!2393180 () Bool)

(assert (=> d!1786511 (=> res!2393180 e!3484552)))

(declare-fun e!3484553 () Bool)

(assert (=> d!1786511 (= res!2393180 e!3484553)))

(declare-fun res!2393183 () Bool)

(assert (=> d!1786511 (=> (not res!2393183) (not e!3484553))))

(assert (=> d!1786511 (= res!2393183 (isDefined!12363 lt!2266972))))

(assert (=> d!1786511 (= lt!2266972 e!3484555)))

(declare-fun c!994786 () Bool)

(declare-fun e!3484554 () Bool)

(assert (=> d!1786511 (= c!994786 e!3484554)))

(declare-fun res!2393184 () Bool)

(assert (=> d!1786511 (=> (not res!2393184) (not e!3484554))))

(assert (=> d!1786511 (= res!2393184 (matchR!7836 (regOne!31814 r!7292) (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130))))))

(assert (=> d!1786511 (validRegex!7387 (regOne!31814 r!7292))))

(assert (=> d!1786511 (= (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) (t!376556 s!2326) s!2326) lt!2266972)))

(declare-fun b!5657677 () Bool)

(declare-fun lt!2266974 () Unit!156136)

(declare-fun lt!2266973 () Unit!156136)

(assert (=> b!5657677 (= lt!2266974 lt!2266973)))

(assert (=> b!5657677 (= (++!13857 (++!13857 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) (Cons!63130 (h!69578 (t!376556 s!2326)) Nil!63130)) (t!376556 (t!376556 s!2326))) s!2326)))

(assert (=> b!5657677 (= lt!2266973 (lemmaMoveElementToOtherListKeepsConcatEq!2026 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) (h!69578 (t!376556 s!2326)) (t!376556 (t!376556 s!2326)) s!2326))))

(assert (=> b!5657677 (= e!3484551 (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) (++!13857 (++!13857 Nil!63130 (Cons!63130 (h!69578 s!2326) Nil!63130)) (Cons!63130 (h!69578 (t!376556 s!2326)) Nil!63130)) (t!376556 (t!376556 s!2326)) s!2326))))

(declare-fun b!5657678 () Bool)

(declare-fun res!2393181 () Bool)

(assert (=> b!5657678 (=> (not res!2393181) (not e!3484553))))

(assert (=> b!5657678 (= res!2393181 (matchR!7836 (regTwo!31814 r!7292) (_2!36051 (get!21750 lt!2266972))))))

(declare-fun b!5657679 () Bool)

(assert (=> b!5657679 (= e!3484553 (= (++!13857 (_1!36051 (get!21750 lt!2266972)) (_2!36051 (get!21750 lt!2266972))) s!2326))))

(declare-fun b!5657680 () Bool)

(declare-fun res!2393182 () Bool)

(assert (=> b!5657680 (=> (not res!2393182) (not e!3484553))))

(assert (=> b!5657680 (= res!2393182 (matchR!7836 (regOne!31814 r!7292) (_1!36051 (get!21750 lt!2266972))))))

(declare-fun b!5657681 () Bool)

(assert (=> b!5657681 (= e!3484554 (matchR!7836 (regTwo!31814 r!7292) (t!376556 s!2326)))))

(assert (= (and d!1786511 res!2393184) b!5657681))

(assert (= (and d!1786511 c!994786) b!5657674))

(assert (= (and d!1786511 (not c!994786)) b!5657673))

(assert (= (and b!5657673 c!994787) b!5657676))

(assert (= (and b!5657673 (not c!994787)) b!5657677))

(assert (= (and d!1786511 res!2393183) b!5657680))

(assert (= (and b!5657680 res!2393182) b!5657678))

(assert (= (and b!5657678 res!2393181) b!5657679))

(assert (= (and d!1786511 (not res!2393180)) b!5657675))

(declare-fun m!6623394 () Bool)

(assert (=> b!5657678 m!6623394))

(declare-fun m!6623396 () Bool)

(assert (=> b!5657678 m!6623396))

(declare-fun m!6623398 () Bool)

(assert (=> d!1786511 m!6623398))

(assert (=> d!1786511 m!6622640))

(declare-fun m!6623400 () Bool)

(assert (=> d!1786511 m!6623400))

(assert (=> d!1786511 m!6622638))

(assert (=> b!5657675 m!6623398))

(assert (=> b!5657677 m!6622640))

(declare-fun m!6623402 () Bool)

(assert (=> b!5657677 m!6623402))

(assert (=> b!5657677 m!6623402))

(declare-fun m!6623404 () Bool)

(assert (=> b!5657677 m!6623404))

(assert (=> b!5657677 m!6622640))

(declare-fun m!6623406 () Bool)

(assert (=> b!5657677 m!6623406))

(assert (=> b!5657677 m!6623402))

(declare-fun m!6623408 () Bool)

(assert (=> b!5657677 m!6623408))

(assert (=> b!5657680 m!6623394))

(declare-fun m!6623410 () Bool)

(assert (=> b!5657680 m!6623410))

(assert (=> b!5657679 m!6623394))

(declare-fun m!6623412 () Bool)

(assert (=> b!5657679 m!6623412))

(declare-fun m!6623414 () Bool)

(assert (=> b!5657681 m!6623414))

(assert (=> b!5656825 d!1786511))

(declare-fun d!1786517 () Bool)

(assert (=> d!1786517 (= (flatMap!1264 lt!2266829 lambda!304499) (choose!42838 lt!2266829 lambda!304499))))

(declare-fun bs!1315456 () Bool)

(assert (= bs!1315456 d!1786517))

(declare-fun m!6623418 () Bool)

(assert (=> bs!1315456 m!6623418))

(assert (=> d!1786203 d!1786517))

(declare-fun b!5657693 () Bool)

(declare-fun e!3484562 () (InoxSet Context!10070))

(declare-fun e!3484563 () (InoxSet Context!10070))

(assert (=> b!5657693 (= e!3484562 e!3484563)))

(declare-fun c!994796 () Bool)

(assert (=> b!5657693 (= c!994796 ((_ is Union!15651) (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))))))

(declare-fun call!428236 () List!63252)

(declare-fun bm!428229 () Bool)

(declare-fun call!428235 () (InoxSet Context!10070))

(assert (=> bm!428229 (= call!428235 (derivationStepZipperDown!993 (ite c!994796 (regOne!31815 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))) (regOne!31814 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292)))))) (ite c!994796 (ite c!994559 (Context!10071 lt!2266835) (Context!10071 call!428060)) (Context!10071 call!428236)) (h!69578 s!2326)))))

(declare-fun b!5657694 () Bool)

(declare-fun e!3484565 () (InoxSet Context!10070))

(declare-fun call!428238 () (InoxSet Context!10070))

(assert (=> b!5657694 (= e!3484565 ((_ map or) call!428235 call!428238))))

(declare-fun bm!428230 () Bool)

(declare-fun call!428239 () (InoxSet Context!10070))

(assert (=> bm!428230 (= call!428238 call!428239)))

(declare-fun b!5657696 () Bool)

(declare-fun c!994794 () Bool)

(declare-fun e!3484564 () Bool)

(assert (=> b!5657696 (= c!994794 e!3484564)))

(declare-fun res!2393186 () Bool)

(assert (=> b!5657696 (=> (not res!2393186) (not e!3484564))))

(assert (=> b!5657696 (= res!2393186 ((_ is Concat!24496) (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))))))

(assert (=> b!5657696 (= e!3484563 e!3484565)))

(declare-fun b!5657697 () Bool)

(declare-fun e!3484567 () (InoxSet Context!10070))

(declare-fun call!428234 () (InoxSet Context!10070))

(assert (=> b!5657697 (= e!3484567 call!428234)))

(declare-fun b!5657698 () Bool)

(assert (=> b!5657698 (= e!3484562 (store ((as const (Array Context!10070 Bool)) false) (ite c!994559 (Context!10071 lt!2266835) (Context!10071 call!428060)) true))))

(declare-fun b!5657699 () Bool)

(assert (=> b!5657699 (= e!3484565 e!3484567)))

(declare-fun c!994793 () Bool)

(assert (=> b!5657699 (= c!994793 ((_ is Concat!24496) (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))))))

(declare-fun bm!428231 () Bool)

(declare-fun call!428237 () List!63252)

(assert (=> bm!428231 (= call!428237 call!428236)))

(declare-fun b!5657700 () Bool)

(assert (=> b!5657700 (= e!3484564 (nullable!5683 (regOne!31814 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292)))))))))

(declare-fun b!5657701 () Bool)

(declare-fun e!3484566 () (InoxSet Context!10070))

(assert (=> b!5657701 (= e!3484566 call!428234)))

(declare-fun bm!428232 () Bool)

(assert (=> bm!428232 (= call!428234 call!428238)))

(declare-fun b!5657695 () Bool)

(assert (=> b!5657695 (= e!3484566 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786519 () Bool)

(declare-fun c!994795 () Bool)

(assert (=> d!1786519 (= c!994795 (and ((_ is ElementMatch!15651) (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))) (= (c!994391 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))) (h!69578 s!2326))))))

(assert (=> d!1786519 (= (derivationStepZipperDown!993 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292)))) (ite c!994559 (Context!10071 lt!2266835) (Context!10071 call!428060)) (h!69578 s!2326)) e!3484562)))

(declare-fun b!5657702 () Bool)

(assert (=> b!5657702 (= e!3484563 ((_ map or) call!428235 call!428239))))

(declare-fun bm!428233 () Bool)

(assert (=> bm!428233 (= call!428239 (derivationStepZipperDown!993 (ite c!994796 (regTwo!31815 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))) (ite c!994794 (regTwo!31814 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))) (ite c!994793 (regOne!31814 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))) (reg!15980 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292)))))))) (ite (or c!994796 c!994794) (ite c!994559 (Context!10071 lt!2266835) (Context!10071 call!428060)) (Context!10071 call!428237)) (h!69578 s!2326)))))

(declare-fun bm!428234 () Bool)

(assert (=> bm!428234 (= call!428236 ($colon$colon!1690 (exprs!5535 (ite c!994559 (Context!10071 lt!2266835) (Context!10071 call!428060))) (ite (or c!994794 c!994793) (regTwo!31814 (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))) (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292)))))))))

(declare-fun b!5657703 () Bool)

(declare-fun c!994797 () Bool)

(assert (=> b!5657703 (= c!994797 ((_ is Star!15651) (ite c!994559 (regOne!31815 (regOne!31814 (regOne!31814 r!7292))) (regOne!31814 (regOne!31814 (regOne!31814 r!7292))))))))

(assert (=> b!5657703 (= e!3484567 e!3484566)))

(assert (= (and d!1786519 c!994795) b!5657698))

(assert (= (and d!1786519 (not c!994795)) b!5657693))

(assert (= (and b!5657693 c!994796) b!5657702))

(assert (= (and b!5657693 (not c!994796)) b!5657696))

(assert (= (and b!5657696 res!2393186) b!5657700))

(assert (= (and b!5657696 c!994794) b!5657694))

(assert (= (and b!5657696 (not c!994794)) b!5657699))

(assert (= (and b!5657699 c!994793) b!5657697))

(assert (= (and b!5657699 (not c!994793)) b!5657703))

(assert (= (and b!5657703 c!994797) b!5657701))

(assert (= (and b!5657703 (not c!994797)) b!5657695))

(assert (= (or b!5657697 b!5657701) bm!428231))

(assert (= (or b!5657697 b!5657701) bm!428232))

(assert (= (or b!5657694 bm!428231) bm!428234))

(assert (= (or b!5657694 bm!428232) bm!428230))

(assert (= (or b!5657702 bm!428230) bm!428233))

(assert (= (or b!5657702 b!5657694) bm!428229))

(declare-fun m!6623428 () Bool)

(assert (=> b!5657700 m!6623428))

(declare-fun m!6623430 () Bool)

(assert (=> bm!428229 m!6623430))

(declare-fun m!6623434 () Bool)

(assert (=> bm!428233 m!6623434))

(declare-fun m!6623438 () Bool)

(assert (=> bm!428234 m!6623438))

(declare-fun m!6623440 () Bool)

(assert (=> b!5657698 m!6623440))

(assert (=> bm!428053 d!1786519))

(declare-fun d!1786525 () Bool)

(declare-fun res!2393195 () Bool)

(declare-fun e!3484575 () Bool)

(assert (=> d!1786525 (=> res!2393195 e!3484575)))

(assert (=> d!1786525 (= res!2393195 ((_ is Nil!63128) (exprs!5535 setElem!37822)))))

(assert (=> d!1786525 (= (forall!14800 (exprs!5535 setElem!37822) lambda!304478) e!3484575)))

(declare-fun b!5657718 () Bool)

(declare-fun e!3484576 () Bool)

(assert (=> b!5657718 (= e!3484575 e!3484576)))

(declare-fun res!2393196 () Bool)

(assert (=> b!5657718 (=> (not res!2393196) (not e!3484576))))

(assert (=> b!5657718 (= res!2393196 (dynLambda!24696 lambda!304478 (h!69576 (exprs!5535 setElem!37822))))))

(declare-fun b!5657719 () Bool)

(assert (=> b!5657719 (= e!3484576 (forall!14800 (t!376554 (exprs!5535 setElem!37822)) lambda!304478))))

(assert (= (and d!1786525 (not res!2393195)) b!5657718))

(assert (= (and b!5657718 res!2393196) b!5657719))

(declare-fun b_lambda!213915 () Bool)

(assert (=> (not b_lambda!213915) (not b!5657718)))

(declare-fun m!6623442 () Bool)

(assert (=> b!5657718 m!6623442))

(declare-fun m!6623444 () Bool)

(assert (=> b!5657719 m!6623444))

(assert (=> d!1786153 d!1786525))

(declare-fun call!428242 () Bool)

(declare-fun c!994801 () Bool)

(declare-fun c!994802 () Bool)

(declare-fun bm!428236 () Bool)

(assert (=> bm!428236 (= call!428242 (validRegex!7387 (ite c!994802 (reg!15980 lt!2266883) (ite c!994801 (regTwo!31815 lt!2266883) (regTwo!31814 lt!2266883)))))))

(declare-fun b!5657720 () Bool)

(declare-fun e!3484579 () Bool)

(declare-fun e!3484578 () Bool)

(assert (=> b!5657720 (= e!3484579 e!3484578)))

(assert (=> b!5657720 (= c!994801 ((_ is Union!15651) lt!2266883))))

(declare-fun b!5657721 () Bool)

(declare-fun e!3484580 () Bool)

(assert (=> b!5657721 (= e!3484579 e!3484580)))

(declare-fun res!2393201 () Bool)

(assert (=> b!5657721 (= res!2393201 (not (nullable!5683 (reg!15980 lt!2266883))))))

(assert (=> b!5657721 (=> (not res!2393201) (not e!3484580))))

(declare-fun b!5657722 () Bool)

(assert (=> b!5657722 (= e!3484580 call!428242)))

(declare-fun b!5657723 () Bool)

(declare-fun e!3484583 () Bool)

(assert (=> b!5657723 (= e!3484583 e!3484579)))

(assert (=> b!5657723 (= c!994802 ((_ is Star!15651) lt!2266883))))

(declare-fun d!1786527 () Bool)

(declare-fun res!2393199 () Bool)

(assert (=> d!1786527 (=> res!2393199 e!3484583)))

(assert (=> d!1786527 (= res!2393199 ((_ is ElementMatch!15651) lt!2266883))))

(assert (=> d!1786527 (= (validRegex!7387 lt!2266883) e!3484583)))

(declare-fun bm!428237 () Bool)

(declare-fun call!428243 () Bool)

(assert (=> bm!428237 (= call!428243 call!428242)))

(declare-fun b!5657724 () Bool)

(declare-fun e!3484577 () Bool)

(declare-fun e!3484582 () Bool)

(assert (=> b!5657724 (= e!3484577 e!3484582)))

(declare-fun res!2393198 () Bool)

(assert (=> b!5657724 (=> (not res!2393198) (not e!3484582))))

(declare-fun call!428241 () Bool)

(assert (=> b!5657724 (= res!2393198 call!428241)))

(declare-fun b!5657725 () Bool)

(declare-fun res!2393200 () Bool)

(assert (=> b!5657725 (=> res!2393200 e!3484577)))

(assert (=> b!5657725 (= res!2393200 (not ((_ is Concat!24496) lt!2266883)))))

(assert (=> b!5657725 (= e!3484578 e!3484577)))

(declare-fun b!5657726 () Bool)

(assert (=> b!5657726 (= e!3484582 call!428243)))

(declare-fun b!5657727 () Bool)

(declare-fun res!2393197 () Bool)

(declare-fun e!3484581 () Bool)

(assert (=> b!5657727 (=> (not res!2393197) (not e!3484581))))

(assert (=> b!5657727 (= res!2393197 call!428241)))

(assert (=> b!5657727 (= e!3484578 e!3484581)))

(declare-fun bm!428238 () Bool)

(assert (=> bm!428238 (= call!428241 (validRegex!7387 (ite c!994801 (regOne!31815 lt!2266883) (regOne!31814 lt!2266883))))))

(declare-fun b!5657728 () Bool)

(assert (=> b!5657728 (= e!3484581 call!428243)))

(assert (= (and d!1786527 (not res!2393199)) b!5657723))

(assert (= (and b!5657723 c!994802) b!5657721))

(assert (= (and b!5657723 (not c!994802)) b!5657720))

(assert (= (and b!5657721 res!2393201) b!5657722))

(assert (= (and b!5657720 c!994801) b!5657727))

(assert (= (and b!5657720 (not c!994801)) b!5657725))

(assert (= (and b!5657727 res!2393197) b!5657728))

(assert (= (and b!5657725 (not res!2393200)) b!5657724))

(assert (= (and b!5657724 res!2393198) b!5657726))

(assert (= (or b!5657728 b!5657726) bm!428237))

(assert (= (or b!5657727 b!5657724) bm!428238))

(assert (= (or b!5657722 bm!428237) bm!428236))

(declare-fun m!6623448 () Bool)

(assert (=> bm!428236 m!6623448))

(declare-fun m!6623450 () Bool)

(assert (=> b!5657721 m!6623450))

(declare-fun m!6623452 () Bool)

(assert (=> bm!428238 m!6623452))

(assert (=> d!1786143 d!1786527))

(declare-fun d!1786531 () Bool)

(declare-fun res!2393202 () Bool)

(declare-fun e!3484584 () Bool)

(assert (=> d!1786531 (=> res!2393202 e!3484584)))

(assert (=> d!1786531 (= res!2393202 ((_ is Nil!63128) (exprs!5535 (h!69577 zl!343))))))

(assert (=> d!1786531 (= (forall!14800 (exprs!5535 (h!69577 zl!343)) lambda!304477) e!3484584)))

(declare-fun b!5657729 () Bool)

(declare-fun e!3484585 () Bool)

(assert (=> b!5657729 (= e!3484584 e!3484585)))

(declare-fun res!2393203 () Bool)

(assert (=> b!5657729 (=> (not res!2393203) (not e!3484585))))

(assert (=> b!5657729 (= res!2393203 (dynLambda!24696 lambda!304477 (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5657730 () Bool)

(assert (=> b!5657730 (= e!3484585 (forall!14800 (t!376554 (exprs!5535 (h!69577 zl!343))) lambda!304477))))

(assert (= (and d!1786531 (not res!2393202)) b!5657729))

(assert (= (and b!5657729 res!2393203) b!5657730))

(declare-fun b_lambda!213917 () Bool)

(assert (=> (not b_lambda!213917) (not b!5657729)))

(declare-fun m!6623454 () Bool)

(assert (=> b!5657729 m!6623454))

(declare-fun m!6623456 () Bool)

(assert (=> b!5657730 m!6623456))

(assert (=> d!1786143 d!1786531))

(declare-fun b!5657733 () Bool)

(declare-fun e!3484592 () Bool)

(assert (=> b!5657733 (= e!3484592 (matchR!7836 (derivativeStep!4476 (regTwo!31814 r!7292) (head!12026 s!2326)) (tail!11121 s!2326)))))

(declare-fun b!5657734 () Bool)

(declare-fun e!3484589 () Bool)

(declare-fun e!3484591 () Bool)

(assert (=> b!5657734 (= e!3484589 e!3484591)))

(declare-fun res!2393208 () Bool)

(assert (=> b!5657734 (=> (not res!2393208) (not e!3484591))))

(declare-fun lt!2266976 () Bool)

(assert (=> b!5657734 (= res!2393208 (not lt!2266976))))

(declare-fun b!5657735 () Bool)

(declare-fun e!3484590 () Bool)

(declare-fun call!428244 () Bool)

(assert (=> b!5657735 (= e!3484590 (= lt!2266976 call!428244))))

(declare-fun b!5657736 () Bool)

(declare-fun e!3484594 () Bool)

(assert (=> b!5657736 (= e!3484594 (not (= (head!12026 s!2326) (c!994391 (regTwo!31814 r!7292)))))))

(declare-fun b!5657737 () Bool)

(declare-fun e!3484593 () Bool)

(assert (=> b!5657737 (= e!3484593 (= (head!12026 s!2326) (c!994391 (regTwo!31814 r!7292))))))

(declare-fun b!5657738 () Bool)

(declare-fun e!3484588 () Bool)

(assert (=> b!5657738 (= e!3484590 e!3484588)))

(declare-fun c!994804 () Bool)

(assert (=> b!5657738 (= c!994804 ((_ is EmptyLang!15651) (regTwo!31814 r!7292)))))

(declare-fun b!5657739 () Bool)

(declare-fun res!2393207 () Bool)

(assert (=> b!5657739 (=> res!2393207 e!3484589)))

(assert (=> b!5657739 (= res!2393207 e!3484593)))

(declare-fun res!2393212 () Bool)

(assert (=> b!5657739 (=> (not res!2393212) (not e!3484593))))

(assert (=> b!5657739 (= res!2393212 lt!2266976)))

(declare-fun bm!428239 () Bool)

(assert (=> bm!428239 (= call!428244 (isEmpty!34976 s!2326))))

(declare-fun b!5657740 () Bool)

(assert (=> b!5657740 (= e!3484591 e!3484594)))

(declare-fun res!2393213 () Bool)

(assert (=> b!5657740 (=> res!2393213 e!3484594)))

(assert (=> b!5657740 (= res!2393213 call!428244)))

(declare-fun b!5657741 () Bool)

(declare-fun res!2393211 () Bool)

(assert (=> b!5657741 (=> (not res!2393211) (not e!3484593))))

(assert (=> b!5657741 (= res!2393211 (not call!428244))))

(declare-fun b!5657742 () Bool)

(declare-fun res!2393206 () Bool)

(assert (=> b!5657742 (=> res!2393206 e!3484594)))

(assert (=> b!5657742 (= res!2393206 (not (isEmpty!34976 (tail!11121 s!2326))))))

(declare-fun d!1786535 () Bool)

(assert (=> d!1786535 e!3484590))

(declare-fun c!994805 () Bool)

(assert (=> d!1786535 (= c!994805 ((_ is EmptyExpr!15651) (regTwo!31814 r!7292)))))

(assert (=> d!1786535 (= lt!2266976 e!3484592)))

(declare-fun c!994803 () Bool)

(assert (=> d!1786535 (= c!994803 (isEmpty!34976 s!2326))))

(assert (=> d!1786535 (validRegex!7387 (regTwo!31814 r!7292))))

(assert (=> d!1786535 (= (matchR!7836 (regTwo!31814 r!7292) s!2326) lt!2266976)))

(declare-fun b!5657743 () Bool)

(assert (=> b!5657743 (= e!3484592 (nullable!5683 (regTwo!31814 r!7292)))))

(declare-fun b!5657744 () Bool)

(declare-fun res!2393209 () Bool)

(assert (=> b!5657744 (=> (not res!2393209) (not e!3484593))))

(assert (=> b!5657744 (= res!2393209 (isEmpty!34976 (tail!11121 s!2326)))))

(declare-fun b!5657745 () Bool)

(declare-fun res!2393210 () Bool)

(assert (=> b!5657745 (=> res!2393210 e!3484589)))

(assert (=> b!5657745 (= res!2393210 (not ((_ is ElementMatch!15651) (regTwo!31814 r!7292))))))

(assert (=> b!5657745 (= e!3484588 e!3484589)))

(declare-fun b!5657746 () Bool)

(assert (=> b!5657746 (= e!3484588 (not lt!2266976))))

(assert (= (and d!1786535 c!994803) b!5657743))

(assert (= (and d!1786535 (not c!994803)) b!5657733))

(assert (= (and d!1786535 c!994805) b!5657735))

(assert (= (and d!1786535 (not c!994805)) b!5657738))

(assert (= (and b!5657738 c!994804) b!5657746))

(assert (= (and b!5657738 (not c!994804)) b!5657745))

(assert (= (and b!5657745 (not res!2393210)) b!5657739))

(assert (= (and b!5657739 res!2393212) b!5657741))

(assert (= (and b!5657741 res!2393211) b!5657744))

(assert (= (and b!5657744 res!2393209) b!5657737))

(assert (= (and b!5657739 (not res!2393207)) b!5657734))

(assert (= (and b!5657734 res!2393208) b!5657740))

(assert (= (and b!5657740 (not res!2393213)) b!5657742))

(assert (= (and b!5657742 (not res!2393206)) b!5657736))

(assert (= (or b!5657735 b!5657740 b!5657741) bm!428239))

(assert (=> b!5657742 m!6622748))

(assert (=> b!5657742 m!6622748))

(assert (=> b!5657742 m!6622750))

(assert (=> b!5657737 m!6622752))

(assert (=> d!1786535 m!6622742))

(assert (=> d!1786535 m!6623052))

(assert (=> b!5657736 m!6622752))

(assert (=> b!5657743 m!6623054))

(assert (=> b!5657733 m!6622752))

(assert (=> b!5657733 m!6622752))

(declare-fun m!6623468 () Bool)

(assert (=> b!5657733 m!6623468))

(assert (=> b!5657733 m!6622748))

(assert (=> b!5657733 m!6623468))

(assert (=> b!5657733 m!6622748))

(declare-fun m!6623470 () Bool)

(assert (=> b!5657733 m!6623470))

(assert (=> bm!428239 m!6622742))

(assert (=> b!5657744 m!6622748))

(assert (=> b!5657744 m!6622748))

(assert (=> b!5657744 m!6622750))

(assert (=> b!5656829 d!1786535))

(declare-fun d!1786545 () Bool)

(assert (=> d!1786545 (= (isEmpty!34978 (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) Nil!63130 s!2326 s!2326)) (not ((_ is Some!15659) (findConcatSeparation!2074 (regOne!31814 r!7292) (regTwo!31814 r!7292) Nil!63130 s!2326 s!2326))))))

(assert (=> d!1786185 d!1786545))

(declare-fun bm!428240 () Bool)

(declare-fun c!994806 () Bool)

(declare-fun call!428246 () Bool)

(declare-fun c!994807 () Bool)

(assert (=> bm!428240 (= call!428246 (validRegex!7387 (ite c!994807 (reg!15980 lt!2266873) (ite c!994806 (regTwo!31815 lt!2266873) (regTwo!31814 lt!2266873)))))))

(declare-fun b!5657748 () Bool)

(declare-fun e!3484598 () Bool)

(declare-fun e!3484597 () Bool)

(assert (=> b!5657748 (= e!3484598 e!3484597)))

(assert (=> b!5657748 (= c!994806 ((_ is Union!15651) lt!2266873))))

(declare-fun b!5657749 () Bool)

(declare-fun e!3484599 () Bool)

(assert (=> b!5657749 (= e!3484598 e!3484599)))

(declare-fun res!2393219 () Bool)

(assert (=> b!5657749 (= res!2393219 (not (nullable!5683 (reg!15980 lt!2266873))))))

(assert (=> b!5657749 (=> (not res!2393219) (not e!3484599))))

(declare-fun b!5657750 () Bool)

(assert (=> b!5657750 (= e!3484599 call!428246)))

(declare-fun b!5657751 () Bool)

(declare-fun e!3484602 () Bool)

(assert (=> b!5657751 (= e!3484602 e!3484598)))

(assert (=> b!5657751 (= c!994807 ((_ is Star!15651) lt!2266873))))

(declare-fun d!1786547 () Bool)

(declare-fun res!2393217 () Bool)

(assert (=> d!1786547 (=> res!2393217 e!3484602)))

(assert (=> d!1786547 (= res!2393217 ((_ is ElementMatch!15651) lt!2266873))))

(assert (=> d!1786547 (= (validRegex!7387 lt!2266873) e!3484602)))

(declare-fun bm!428241 () Bool)

(declare-fun call!428247 () Bool)

(assert (=> bm!428241 (= call!428247 call!428246)))

(declare-fun b!5657752 () Bool)

(declare-fun e!3484596 () Bool)

(declare-fun e!3484601 () Bool)

(assert (=> b!5657752 (= e!3484596 e!3484601)))

(declare-fun res!2393216 () Bool)

(assert (=> b!5657752 (=> (not res!2393216) (not e!3484601))))

(declare-fun call!428245 () Bool)

(assert (=> b!5657752 (= res!2393216 call!428245)))

(declare-fun b!5657753 () Bool)

(declare-fun res!2393218 () Bool)

(assert (=> b!5657753 (=> res!2393218 e!3484596)))

(assert (=> b!5657753 (= res!2393218 (not ((_ is Concat!24496) lt!2266873)))))

(assert (=> b!5657753 (= e!3484597 e!3484596)))

(declare-fun b!5657754 () Bool)

(assert (=> b!5657754 (= e!3484601 call!428247)))

(declare-fun b!5657755 () Bool)

(declare-fun res!2393215 () Bool)

(declare-fun e!3484600 () Bool)

(assert (=> b!5657755 (=> (not res!2393215) (not e!3484600))))

(assert (=> b!5657755 (= res!2393215 call!428245)))

(assert (=> b!5657755 (= e!3484597 e!3484600)))

(declare-fun bm!428242 () Bool)

(assert (=> bm!428242 (= call!428245 (validRegex!7387 (ite c!994806 (regOne!31815 lt!2266873) (regOne!31814 lt!2266873))))))

(declare-fun b!5657756 () Bool)

(assert (=> b!5657756 (= e!3484600 call!428247)))

(assert (= (and d!1786547 (not res!2393217)) b!5657751))

(assert (= (and b!5657751 c!994807) b!5657749))

(assert (= (and b!5657751 (not c!994807)) b!5657748))

(assert (= (and b!5657749 res!2393219) b!5657750))

(assert (= (and b!5657748 c!994806) b!5657755))

(assert (= (and b!5657748 (not c!994806)) b!5657753))

(assert (= (and b!5657755 res!2393215) b!5657756))

(assert (= (and b!5657753 (not res!2393218)) b!5657752))

(assert (= (and b!5657752 res!2393216) b!5657754))

(assert (= (or b!5657756 b!5657754) bm!428241))

(assert (= (or b!5657755 b!5657752) bm!428242))

(assert (= (or b!5657750 bm!428241) bm!428240))

(declare-fun m!6623472 () Bool)

(assert (=> bm!428240 m!6623472))

(declare-fun m!6623474 () Bool)

(assert (=> b!5657749 m!6623474))

(declare-fun m!6623476 () Bool)

(assert (=> bm!428242 m!6623476))

(assert (=> d!1786127 d!1786547))

(assert (=> d!1786127 d!1786207))

(assert (=> d!1786127 d!1786209))

(declare-fun d!1786549 () Bool)

(assert (=> d!1786549 (= (isEmpty!34973 (exprs!5535 (h!69577 zl!343))) ((_ is Nil!63128) (exprs!5535 (h!69577 zl!343))))))

(assert (=> b!5656699 d!1786549))

(declare-fun d!1786551 () Bool)

(assert (=> d!1786551 (= (nullable!5683 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (nullableFct!1769 (h!69576 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))))

(declare-fun bs!1315464 () Bool)

(assert (= bs!1315464 d!1786551))

(declare-fun m!6623478 () Bool)

(assert (=> bs!1315464 m!6623478))

(assert (=> b!5656536 d!1786551))

(declare-fun d!1786553 () Bool)

(assert (=> d!1786553 (= (nullable!5683 (regOne!31814 (regOne!31814 (regOne!31814 r!7292)))) (nullableFct!1769 (regOne!31814 (regOne!31814 (regOne!31814 r!7292)))))))

(declare-fun bs!1315465 () Bool)

(assert (= bs!1315465 d!1786553))

(declare-fun m!6623480 () Bool)

(assert (=> bs!1315465 m!6623480))

(assert (=> b!5656869 d!1786553))

(declare-fun d!1786555 () Bool)

(declare-fun c!994810 () Bool)

(assert (=> d!1786555 (= c!994810 ((_ is Nil!63129) lt!2266936))))

(declare-fun e!3484605 () (InoxSet Context!10070))

(assert (=> d!1786555 (= (content!11424 lt!2266936) e!3484605)))

(declare-fun b!5657761 () Bool)

(assert (=> b!5657761 (= e!3484605 ((as const (Array Context!10070 Bool)) false))))

(declare-fun b!5657762 () Bool)

(assert (=> b!5657762 (= e!3484605 ((_ map or) (store ((as const (Array Context!10070 Bool)) false) (h!69577 lt!2266936) true) (content!11424 (t!376555 lt!2266936))))))

(assert (= (and d!1786555 c!994810) b!5657761))

(assert (= (and d!1786555 (not c!994810)) b!5657762))

(declare-fun m!6623482 () Bool)

(assert (=> b!5657762 m!6623482))

(declare-fun m!6623484 () Bool)

(assert (=> b!5657762 m!6623484))

(assert (=> b!5657025 d!1786555))

(declare-fun d!1786557 () Bool)

(assert (=> d!1786557 (= (isEmptyExpr!1181 lt!2266883) ((_ is EmptyExpr!15651) lt!2266883))))

(assert (=> b!5656703 d!1786557))

(declare-fun d!1786559 () Bool)

(assert (=> d!1786559 true))

(declare-fun setRes!37836 () Bool)

(assert (=> d!1786559 setRes!37836))

(declare-fun condSetEmpty!37836 () Bool)

(declare-fun res!2393224 () (InoxSet Context!10070))

(assert (=> d!1786559 (= condSetEmpty!37836 (= res!2393224 ((as const (Array Context!10070 Bool)) false)))))

(assert (=> d!1786559 (= (choose!42838 z!1189 lambda!304449) res!2393224)))

(declare-fun setIsEmpty!37836 () Bool)

(assert (=> setIsEmpty!37836 setRes!37836))

(declare-fun tp!1567015 () Bool)

(declare-fun setElem!37836 () Context!10070)

(declare-fun e!3484608 () Bool)

(declare-fun setNonEmpty!37836 () Bool)

(assert (=> setNonEmpty!37836 (= setRes!37836 (and tp!1567015 (inv!82374 setElem!37836) e!3484608))))

(declare-fun setRest!37836 () (InoxSet Context!10070))

(assert (=> setNonEmpty!37836 (= res!2393224 ((_ map or) (store ((as const (Array Context!10070 Bool)) false) setElem!37836 true) setRest!37836))))

(declare-fun b!5657767 () Bool)

(declare-fun tp!1567014 () Bool)

(assert (=> b!5657767 (= e!3484608 tp!1567014)))

(assert (= (and d!1786559 condSetEmpty!37836) setIsEmpty!37836))

(assert (= (and d!1786559 (not condSetEmpty!37836)) setNonEmpty!37836))

(assert (= setNonEmpty!37836 b!5657767))

(declare-fun m!6623486 () Bool)

(assert (=> setNonEmpty!37836 m!6623486))

(assert (=> d!1786095 d!1786559))

(assert (=> d!1786117 d!1786095))

(declare-fun d!1786561 () Bool)

(assert (=> d!1786561 (= (flatMap!1264 z!1189 lambda!304449) (dynLambda!24694 lambda!304449 (h!69577 zl!343)))))

(assert (=> d!1786561 true))

(declare-fun _$13!2302 () Unit!156136)

(assert (=> d!1786561 (= (choose!42839 z!1189 (h!69577 zl!343) lambda!304449) _$13!2302)))

(declare-fun b_lambda!213921 () Bool)

(assert (=> (not b_lambda!213921) (not d!1786561)))

(declare-fun bs!1315466 () Bool)

(assert (= bs!1315466 d!1786561))

(assert (=> bs!1315466 m!6622238))

(assert (=> bs!1315466 m!6622454))

(assert (=> d!1786117 d!1786561))

(declare-fun d!1786563 () Bool)

(assert (=> d!1786563 true))

(assert (=> d!1786563 true))

(declare-fun res!2393225 () Bool)

(assert (=> d!1786563 (= (choose!42843 lambda!304447) res!2393225)))

(assert (=> d!1786177 d!1786563))

(assert (=> d!1786191 d!1786193))

(assert (=> d!1786191 d!1786157))

(declare-fun d!1786565 () Bool)

(declare-fun e!3484618 () Bool)

(assert (=> d!1786565 (= (matchZipper!1789 ((_ map or) lt!2266828 lt!2266834) (t!376556 s!2326)) e!3484618)))

(declare-fun res!2393231 () Bool)

(assert (=> d!1786565 (=> res!2393231 e!3484618)))

(assert (=> d!1786565 (= res!2393231 (matchZipper!1789 lt!2266828 (t!376556 s!2326)))))

(assert (=> d!1786565 true))

(declare-fun _$48!1293 () Unit!156136)

(assert (=> d!1786565 (= (choose!42846 lt!2266828 lt!2266834 (t!376556 s!2326)) _$48!1293)))

(declare-fun b!5657781 () Bool)

(assert (=> b!5657781 (= e!3484618 (matchZipper!1789 lt!2266834 (t!376556 s!2326)))))

(assert (= (and d!1786565 (not res!2393231)) b!5657781))

(assert (=> d!1786565 m!6622300))

(assert (=> d!1786565 m!6622246))

(assert (=> b!5657781 m!6622296))

(assert (=> d!1786191 d!1786565))

(declare-fun bs!1315482 () Bool)

(declare-fun d!1786569 () Bool)

(assert (= bs!1315482 (and d!1786569 d!1786207)))

(declare-fun lambda!304553 () Int)

(assert (=> bs!1315482 (= lambda!304553 lambda!304502)))

(declare-fun bs!1315484 () Bool)

(assert (= bs!1315484 (and d!1786569 d!1786209)))

(assert (=> bs!1315484 (= lambda!304553 lambda!304505)))

(declare-fun bs!1315485 () Bool)

(assert (= bs!1315485 (and d!1786569 d!1786131)))

(assert (=> bs!1315485 (= lambda!304553 lambda!304468)))

(declare-fun bs!1315486 () Bool)

(assert (= bs!1315486 (and d!1786569 d!1786143)))

(assert (=> bs!1315486 (= lambda!304553 lambda!304477)))

(declare-fun bs!1315487 () Bool)

(assert (= bs!1315487 (and d!1786569 d!1786153)))

(assert (=> bs!1315487 (= lambda!304553 lambda!304478)))

(assert (=> d!1786569 (= (inv!82374 (h!69577 (t!376555 zl!343))) (forall!14800 (exprs!5535 (h!69577 (t!376555 zl!343))) lambda!304553))))

(declare-fun bs!1315489 () Bool)

(assert (= bs!1315489 d!1786569))

(declare-fun m!6623490 () Bool)

(assert (=> bs!1315489 m!6623490))

(assert (=> b!5657042 d!1786569))

(declare-fun b!5657782 () Bool)

(declare-fun e!3484619 () (InoxSet Context!10070))

(declare-fun e!3484620 () (InoxSet Context!10070))

(assert (=> b!5657782 (= e!3484619 e!3484620)))

(declare-fun c!994818 () Bool)

(assert (=> b!5657782 (= c!994818 ((_ is Union!15651) (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))))))

(declare-fun bm!428245 () Bool)

(declare-fun call!428252 () List!63252)

(declare-fun call!428251 () (InoxSet Context!10070))

(assert (=> bm!428245 (= call!428251 (derivationStepZipperDown!993 (ite c!994818 (regOne!31815 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))) (regOne!31814 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292)))))))) (ite c!994818 (ite (or c!994559 c!994557) (Context!10071 lt!2266835) (Context!10071 call!428061)) (Context!10071 call!428252)) (h!69578 s!2326)))))

(declare-fun b!5657783 () Bool)

(declare-fun e!3484622 () (InoxSet Context!10070))

(declare-fun call!428254 () (InoxSet Context!10070))

(assert (=> b!5657783 (= e!3484622 ((_ map or) call!428251 call!428254))))

(declare-fun bm!428246 () Bool)

(declare-fun call!428255 () (InoxSet Context!10070))

(assert (=> bm!428246 (= call!428254 call!428255)))

(declare-fun b!5657785 () Bool)

(declare-fun c!994816 () Bool)

(declare-fun e!3484621 () Bool)

(assert (=> b!5657785 (= c!994816 e!3484621)))

(declare-fun res!2393232 () Bool)

(assert (=> b!5657785 (=> (not res!2393232) (not e!3484621))))

(assert (=> b!5657785 (= res!2393232 ((_ is Concat!24496) (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))))))

(assert (=> b!5657785 (= e!3484620 e!3484622)))

(declare-fun b!5657786 () Bool)

(declare-fun e!3484624 () (InoxSet Context!10070))

(declare-fun call!428250 () (InoxSet Context!10070))

(assert (=> b!5657786 (= e!3484624 call!428250)))

(declare-fun b!5657787 () Bool)

(assert (=> b!5657787 (= e!3484619 (store ((as const (Array Context!10070 Bool)) false) (ite (or c!994559 c!994557) (Context!10071 lt!2266835) (Context!10071 call!428061)) true))))

(declare-fun b!5657788 () Bool)

(assert (=> b!5657788 (= e!3484622 e!3484624)))

(declare-fun c!994815 () Bool)

(assert (=> b!5657788 (= c!994815 ((_ is Concat!24496) (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))))))

(declare-fun bm!428247 () Bool)

(declare-fun call!428253 () List!63252)

(assert (=> bm!428247 (= call!428253 call!428252)))

(declare-fun b!5657789 () Bool)

(assert (=> b!5657789 (= e!3484621 (nullable!5683 (regOne!31814 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292)))))))))))

(declare-fun b!5657790 () Bool)

(declare-fun e!3484623 () (InoxSet Context!10070))

(assert (=> b!5657790 (= e!3484623 call!428250)))

(declare-fun bm!428248 () Bool)

(assert (=> bm!428248 (= call!428250 call!428254)))

(declare-fun b!5657784 () Bool)

(assert (=> b!5657784 (= e!3484623 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786571 () Bool)

(declare-fun c!994817 () Bool)

(assert (=> d!1786571 (= c!994817 (and ((_ is ElementMatch!15651) (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))) (= (c!994391 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))) (h!69578 s!2326))))))

(assert (=> d!1786571 (= (derivationStepZipperDown!993 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292)))))) (ite (or c!994559 c!994557) (Context!10071 lt!2266835) (Context!10071 call!428061)) (h!69578 s!2326)) e!3484619)))

(declare-fun b!5657791 () Bool)

(assert (=> b!5657791 (= e!3484620 ((_ map or) call!428251 call!428255))))

(declare-fun bm!428249 () Bool)

(assert (=> bm!428249 (= call!428255 (derivationStepZipperDown!993 (ite c!994818 (regTwo!31815 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))) (ite c!994816 (regTwo!31814 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))) (ite c!994815 (regOne!31814 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))) (reg!15980 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292)))))))))) (ite (or c!994818 c!994816) (ite (or c!994559 c!994557) (Context!10071 lt!2266835) (Context!10071 call!428061)) (Context!10071 call!428253)) (h!69578 s!2326)))))

(declare-fun bm!428250 () Bool)

(assert (=> bm!428250 (= call!428252 ($colon$colon!1690 (exprs!5535 (ite (or c!994559 c!994557) (Context!10071 lt!2266835) (Context!10071 call!428061))) (ite (or c!994816 c!994815) (regTwo!31814 (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))) (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292)))))))))))

(declare-fun b!5657792 () Bool)

(declare-fun c!994819 () Bool)

(assert (=> b!5657792 (= c!994819 ((_ is Star!15651) (ite c!994559 (regTwo!31815 (regOne!31814 (regOne!31814 r!7292))) (ite c!994557 (regTwo!31814 (regOne!31814 (regOne!31814 r!7292))) (ite c!994556 (regOne!31814 (regOne!31814 (regOne!31814 r!7292))) (reg!15980 (regOne!31814 (regOne!31814 r!7292))))))))))

(assert (=> b!5657792 (= e!3484624 e!3484623)))

(assert (= (and d!1786571 c!994817) b!5657787))

(assert (= (and d!1786571 (not c!994817)) b!5657782))

(assert (= (and b!5657782 c!994818) b!5657791))

(assert (= (and b!5657782 (not c!994818)) b!5657785))

(assert (= (and b!5657785 res!2393232) b!5657789))

(assert (= (and b!5657785 c!994816) b!5657783))

(assert (= (and b!5657785 (not c!994816)) b!5657788))

(assert (= (and b!5657788 c!994815) b!5657786))

(assert (= (and b!5657788 (not c!994815)) b!5657792))

(assert (= (and b!5657792 c!994819) b!5657790))

(assert (= (and b!5657792 (not c!994819)) b!5657784))

(assert (= (or b!5657786 b!5657790) bm!428247))

(assert (= (or b!5657786 b!5657790) bm!428248))

(assert (= (or b!5657783 bm!428247) bm!428250))

(assert (= (or b!5657783 bm!428248) bm!428246))

(assert (= (or b!5657791 bm!428246) bm!428249))

(assert (= (or b!5657791 b!5657783) bm!428245))

(declare-fun m!6623492 () Bool)

(assert (=> b!5657789 m!6623492))

(declare-fun m!6623494 () Bool)

(assert (=> bm!428245 m!6623494))

(declare-fun m!6623496 () Bool)

(assert (=> bm!428249 m!6623496))

(declare-fun m!6623498 () Bool)

(assert (=> bm!428250 m!6623498))

(declare-fun m!6623500 () Bool)

(assert (=> b!5657787 m!6623500))

(assert (=> bm!428057 d!1786571))

(declare-fun d!1786573 () Bool)

(assert (=> d!1786573 (= (nullable!5683 (h!69576 (exprs!5535 lt!2266833))) (nullableFct!1769 (h!69576 (exprs!5535 lt!2266833))))))

(declare-fun bs!1315499 () Bool)

(assert (= bs!1315499 d!1786573))

(declare-fun m!6623502 () Bool)

(assert (=> bs!1315499 m!6623502))

(assert (=> b!5656574 d!1786573))

(declare-fun d!1786575 () Bool)

(assert (=> d!1786575 (= (isEmpty!34976 (tail!11121 s!2326)) ((_ is Nil!63130) (tail!11121 s!2326)))))

(assert (=> b!5656991 d!1786575))

(declare-fun d!1786577 () Bool)

(assert (=> d!1786577 (= (tail!11121 s!2326) (t!376556 s!2326))))

(assert (=> b!5656991 d!1786577))

(declare-fun d!1786579 () Bool)

(assert (=> d!1786579 (= (isUnion!622 lt!2266924) ((_ is Union!15651) lt!2266924))))

(assert (=> b!5656899 d!1786579))

(declare-fun bs!1315502 () Bool)

(declare-fun d!1786581 () Bool)

(assert (= bs!1315502 (and d!1786581 d!1786367)))

(declare-fun lambda!304555 () Int)

(assert (=> bs!1315502 (= lambda!304555 lambda!304534)))

(assert (=> d!1786581 (= (nullableZipper!1623 ((_ map or) lt!2266828 lt!2266834)) (exists!2197 ((_ map or) lt!2266828 lt!2266834) lambda!304555))))

(declare-fun bs!1315503 () Bool)

(assert (= bs!1315503 d!1786581))

(declare-fun m!6623510 () Bool)

(assert (=> bs!1315503 m!6623510))

(assert (=> b!5656853 d!1786581))

(declare-fun bs!1315504 () Bool)

(declare-fun d!1786585 () Bool)

(assert (= bs!1315504 (and d!1786585 d!1786367)))

(declare-fun lambda!304556 () Int)

(assert (=> bs!1315504 (= lambda!304556 lambda!304534)))

(declare-fun bs!1315505 () Bool)

(assert (= bs!1315505 (and d!1786585 d!1786581)))

(assert (=> bs!1315505 (= lambda!304556 lambda!304555)))

(assert (=> d!1786585 (= (nullableZipper!1623 lt!2266837) (exists!2197 lt!2266837 lambda!304556))))

(declare-fun bs!1315506 () Bool)

(assert (= bs!1315506 d!1786585))

(declare-fun m!6623512 () Bool)

(assert (=> bs!1315506 m!6623512))

(assert (=> b!5656630 d!1786585))

(declare-fun d!1786587 () Bool)

(declare-fun c!994820 () Bool)

(assert (=> d!1786587 (= c!994820 (isEmpty!34976 (tail!11121 (t!376556 s!2326))))))

(declare-fun e!3484625 () Bool)

(assert (=> d!1786587 (= (matchZipper!1789 (derivationStepZipper!1736 lt!2266827 (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))) e!3484625)))

(declare-fun b!5657793 () Bool)

(assert (=> b!5657793 (= e!3484625 (nullableZipper!1623 (derivationStepZipper!1736 lt!2266827 (head!12026 (t!376556 s!2326)))))))

(declare-fun b!5657794 () Bool)

(assert (=> b!5657794 (= e!3484625 (matchZipper!1789 (derivationStepZipper!1736 (derivationStepZipper!1736 lt!2266827 (head!12026 (t!376556 s!2326))) (head!12026 (tail!11121 (t!376556 s!2326)))) (tail!11121 (tail!11121 (t!376556 s!2326)))))))

(assert (= (and d!1786587 c!994820) b!5657793))

(assert (= (and d!1786587 (not c!994820)) b!5657794))

(assert (=> d!1786587 m!6622528))

(assert (=> d!1786587 m!6622952))

(assert (=> b!5657793 m!6622576))

(declare-fun m!6623514 () Bool)

(assert (=> b!5657793 m!6623514))

(assert (=> b!5657794 m!6622528))

(assert (=> b!5657794 m!6622956))

(assert (=> b!5657794 m!6622576))

(assert (=> b!5657794 m!6622956))

(declare-fun m!6623516 () Bool)

(assert (=> b!5657794 m!6623516))

(assert (=> b!5657794 m!6622528))

(assert (=> b!5657794 m!6622960))

(assert (=> b!5657794 m!6623516))

(assert (=> b!5657794 m!6622960))

(declare-fun m!6623518 () Bool)

(assert (=> b!5657794 m!6623518))

(assert (=> b!5656725 d!1786587))

(declare-fun bs!1315507 () Bool)

(declare-fun d!1786589 () Bool)

(assert (= bs!1315507 (and d!1786589 b!5656316)))

(declare-fun lambda!304557 () Int)

(assert (=> bs!1315507 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304557 lambda!304449))))

(declare-fun bs!1315508 () Bool)

(assert (= bs!1315508 (and d!1786589 d!1786203)))

(assert (=> bs!1315508 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304557 lambda!304499))))

(declare-fun bs!1315509 () Bool)

(assert (= bs!1315509 (and d!1786589 d!1786319)))

(assert (=> bs!1315509 (= lambda!304557 lambda!304517)))

(declare-fun bs!1315510 () Bool)

(assert (= bs!1315510 (and d!1786589 d!1786459)))

(assert (=> bs!1315510 (= lambda!304557 lambda!304544)))

(assert (=> d!1786589 true))

(assert (=> d!1786589 (= (derivationStepZipper!1736 lt!2266827 (head!12026 (t!376556 s!2326))) (flatMap!1264 lt!2266827 lambda!304557))))

(declare-fun bs!1315511 () Bool)

(assert (= bs!1315511 d!1786589))

(declare-fun m!6623520 () Bool)

(assert (=> bs!1315511 m!6623520))

(assert (=> b!5656725 d!1786589))

(assert (=> b!5656725 d!1786325))

(assert (=> b!5656725 d!1786327))

(declare-fun d!1786591 () Bool)

(assert (=> d!1786591 (= (head!12027 (unfocusZipperList!1079 zl!343)) (h!69576 (unfocusZipperList!1079 zl!343)))))

(assert (=> b!5656902 d!1786591))

(assert (=> d!1786213 d!1786399))

(declare-fun b!5657813 () Bool)

(declare-fun e!3484635 () Bool)

(assert (=> b!5657813 (= e!3484635 (matchR!7836 (derivativeStep!4476 (regOne!31814 r!7292) (head!12026 (_1!36051 (get!21750 lt!2266905)))) (tail!11121 (_1!36051 (get!21750 lt!2266905)))))))

(declare-fun b!5657814 () Bool)

(declare-fun e!3484632 () Bool)

(declare-fun e!3484634 () Bool)

(assert (=> b!5657814 (= e!3484632 e!3484634)))

(declare-fun res!2393235 () Bool)

(assert (=> b!5657814 (=> (not res!2393235) (not e!3484634))))

(declare-fun lt!2266977 () Bool)

(assert (=> b!5657814 (= res!2393235 (not lt!2266977))))

(declare-fun b!5657815 () Bool)

(declare-fun e!3484633 () Bool)

(declare-fun call!428256 () Bool)

(assert (=> b!5657815 (= e!3484633 (= lt!2266977 call!428256))))

(declare-fun b!5657816 () Bool)

(declare-fun e!3484638 () Bool)

(assert (=> b!5657816 (= e!3484638 (not (= (head!12026 (_1!36051 (get!21750 lt!2266905))) (c!994391 (regOne!31814 r!7292)))))))

(declare-fun b!5657817 () Bool)

(declare-fun e!3484637 () Bool)

(assert (=> b!5657817 (= e!3484637 (= (head!12026 (_1!36051 (get!21750 lt!2266905))) (c!994391 (regOne!31814 r!7292))))))

(declare-fun b!5657818 () Bool)

(declare-fun e!3484631 () Bool)

(assert (=> b!5657818 (= e!3484633 e!3484631)))

(declare-fun c!994822 () Bool)

(assert (=> b!5657818 (= c!994822 ((_ is EmptyLang!15651) (regOne!31814 r!7292)))))

(declare-fun b!5657819 () Bool)

(declare-fun res!2393234 () Bool)

(assert (=> b!5657819 (=> res!2393234 e!3484632)))

(assert (=> b!5657819 (= res!2393234 e!3484637)))

(declare-fun res!2393239 () Bool)

(assert (=> b!5657819 (=> (not res!2393239) (not e!3484637))))

(assert (=> b!5657819 (= res!2393239 lt!2266977)))

(declare-fun bm!428251 () Bool)

(assert (=> bm!428251 (= call!428256 (isEmpty!34976 (_1!36051 (get!21750 lt!2266905))))))

(declare-fun b!5657820 () Bool)

(assert (=> b!5657820 (= e!3484634 e!3484638)))

(declare-fun res!2393240 () Bool)

(assert (=> b!5657820 (=> res!2393240 e!3484638)))

(assert (=> b!5657820 (= res!2393240 call!428256)))

(declare-fun b!5657821 () Bool)

(declare-fun res!2393238 () Bool)

(assert (=> b!5657821 (=> (not res!2393238) (not e!3484637))))

(assert (=> b!5657821 (= res!2393238 (not call!428256))))

(declare-fun b!5657822 () Bool)

(declare-fun res!2393233 () Bool)

(assert (=> b!5657822 (=> res!2393233 e!3484638)))

(assert (=> b!5657822 (= res!2393233 (not (isEmpty!34976 (tail!11121 (_1!36051 (get!21750 lt!2266905))))))))

(declare-fun d!1786593 () Bool)

(assert (=> d!1786593 e!3484633))

(declare-fun c!994823 () Bool)

(assert (=> d!1786593 (= c!994823 ((_ is EmptyExpr!15651) (regOne!31814 r!7292)))))

(assert (=> d!1786593 (= lt!2266977 e!3484635)))

(declare-fun c!994821 () Bool)

(assert (=> d!1786593 (= c!994821 (isEmpty!34976 (_1!36051 (get!21750 lt!2266905))))))

(assert (=> d!1786593 (validRegex!7387 (regOne!31814 r!7292))))

(assert (=> d!1786593 (= (matchR!7836 (regOne!31814 r!7292) (_1!36051 (get!21750 lt!2266905))) lt!2266977)))

(declare-fun b!5657823 () Bool)

(assert (=> b!5657823 (= e!3484635 (nullable!5683 (regOne!31814 r!7292)))))

(declare-fun b!5657824 () Bool)

(declare-fun res!2393236 () Bool)

(assert (=> b!5657824 (=> (not res!2393236) (not e!3484637))))

(assert (=> b!5657824 (= res!2393236 (isEmpty!34976 (tail!11121 (_1!36051 (get!21750 lt!2266905)))))))

(declare-fun b!5657825 () Bool)

(declare-fun res!2393237 () Bool)

(assert (=> b!5657825 (=> res!2393237 e!3484632)))

(assert (=> b!5657825 (= res!2393237 (not ((_ is ElementMatch!15651) (regOne!31814 r!7292))))))

(assert (=> b!5657825 (= e!3484631 e!3484632)))

(declare-fun b!5657826 () Bool)

(assert (=> b!5657826 (= e!3484631 (not lt!2266977))))

(assert (= (and d!1786593 c!994821) b!5657823))

(assert (= (and d!1786593 (not c!994821)) b!5657813))

(assert (= (and d!1786593 c!994823) b!5657815))

(assert (= (and d!1786593 (not c!994823)) b!5657818))

(assert (= (and b!5657818 c!994822) b!5657826))

(assert (= (and b!5657818 (not c!994822)) b!5657825))

(assert (= (and b!5657825 (not res!2393237)) b!5657819))

(assert (= (and b!5657819 res!2393239) b!5657821))

(assert (= (and b!5657821 res!2393238) b!5657824))

(assert (= (and b!5657824 res!2393236) b!5657817))

(assert (= (and b!5657819 (not res!2393234)) b!5657814))

(assert (= (and b!5657814 res!2393235) b!5657820))

(assert (= (and b!5657820 (not res!2393240)) b!5657822))

(assert (= (and b!5657822 (not res!2393233)) b!5657816))

(assert (= (or b!5657815 b!5657820 b!5657821) bm!428251))

(declare-fun m!6623522 () Bool)

(assert (=> b!5657822 m!6623522))

(assert (=> b!5657822 m!6623522))

(declare-fun m!6623524 () Bool)

(assert (=> b!5657822 m!6623524))

(declare-fun m!6623526 () Bool)

(assert (=> b!5657817 m!6623526))

(declare-fun m!6623528 () Bool)

(assert (=> d!1786593 m!6623528))

(assert (=> d!1786593 m!6622638))

(assert (=> b!5657816 m!6623526))

(declare-fun m!6623530 () Bool)

(assert (=> b!5657823 m!6623530))

(assert (=> b!5657813 m!6623526))

(assert (=> b!5657813 m!6623526))

(declare-fun m!6623532 () Bool)

(assert (=> b!5657813 m!6623532))

(assert (=> b!5657813 m!6623522))

(assert (=> b!5657813 m!6623532))

(assert (=> b!5657813 m!6623522))

(declare-fun m!6623534 () Bool)

(assert (=> b!5657813 m!6623534))

(assert (=> bm!428251 m!6623528))

(assert (=> b!5657824 m!6623522))

(assert (=> b!5657824 m!6623522))

(assert (=> b!5657824 m!6623524))

(assert (=> b!5656828 d!1786593))

(assert (=> b!5656828 d!1786357))

(declare-fun bs!1315512 () Bool)

(declare-fun d!1786595 () Bool)

(assert (= bs!1315512 (and d!1786595 d!1786569)))

(declare-fun lambda!304558 () Int)

(assert (=> bs!1315512 (= lambda!304558 lambda!304553)))

(declare-fun bs!1315513 () Bool)

(assert (= bs!1315513 (and d!1786595 d!1786207)))

(assert (=> bs!1315513 (= lambda!304558 lambda!304502)))

(declare-fun bs!1315514 () Bool)

(assert (= bs!1315514 (and d!1786595 d!1786209)))

(assert (=> bs!1315514 (= lambda!304558 lambda!304505)))

(declare-fun bs!1315515 () Bool)

(assert (= bs!1315515 (and d!1786595 d!1786131)))

(assert (=> bs!1315515 (= lambda!304558 lambda!304468)))

(declare-fun bs!1315516 () Bool)

(assert (= bs!1315516 (and d!1786595 d!1786143)))

(assert (=> bs!1315516 (= lambda!304558 lambda!304477)))

(declare-fun bs!1315517 () Bool)

(assert (= bs!1315517 (and d!1786595 d!1786153)))

(assert (=> bs!1315517 (= lambda!304558 lambda!304478)))

(declare-fun b!5657852 () Bool)

(declare-fun e!3484649 () Regex!15651)

(declare-fun e!3484648 () Regex!15651)

(assert (=> b!5657852 (= e!3484649 e!3484648)))

(declare-fun c!994824 () Bool)

(assert (=> b!5657852 (= c!994824 ((_ is Cons!63128) (t!376554 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5657854 () Bool)

(assert (=> b!5657854 (= e!3484648 (Concat!24496 (h!69576 (t!376554 (exprs!5535 (h!69577 zl!343)))) (generalisedConcat!1266 (t!376554 (t!376554 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun b!5657856 () Bool)

(declare-fun e!3484650 () Bool)

(declare-fun lt!2266978 () Regex!15651)

(assert (=> b!5657856 (= e!3484650 (isConcat!704 lt!2266978))))

(declare-fun b!5657858 () Bool)

(declare-fun e!3484646 () Bool)

(declare-fun e!3484647 () Bool)

(assert (=> b!5657858 (= e!3484646 e!3484647)))

(declare-fun c!994827 () Bool)

(assert (=> b!5657858 (= c!994827 (isEmpty!34973 (t!376554 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5657860 () Bool)

(assert (=> b!5657860 (= e!3484650 (= lt!2266978 (head!12027 (t!376554 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun b!5657861 () Bool)

(declare-fun e!3484651 () Bool)

(assert (=> b!5657861 (= e!3484651 (isEmpty!34973 (t!376554 (t!376554 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun b!5657862 () Bool)

(assert (=> b!5657862 (= e!3484647 e!3484650)))

(declare-fun c!994826 () Bool)

(assert (=> b!5657862 (= c!994826 (isEmpty!34973 (tail!11122 (t!376554 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun b!5657863 () Bool)

(assert (=> b!5657863 (= e!3484647 (isEmptyExpr!1181 lt!2266978))))

(assert (=> d!1786595 e!3484646))

(declare-fun res!2393241 () Bool)

(assert (=> d!1786595 (=> (not res!2393241) (not e!3484646))))

(assert (=> d!1786595 (= res!2393241 (validRegex!7387 lt!2266978))))

(assert (=> d!1786595 (= lt!2266978 e!3484649)))

(declare-fun c!994825 () Bool)

(assert (=> d!1786595 (= c!994825 e!3484651)))

(declare-fun res!2393242 () Bool)

(assert (=> d!1786595 (=> (not res!2393242) (not e!3484651))))

(assert (=> d!1786595 (= res!2393242 ((_ is Cons!63128) (t!376554 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> d!1786595 (forall!14800 (t!376554 (exprs!5535 (h!69577 zl!343))) lambda!304558)))

(assert (=> d!1786595 (= (generalisedConcat!1266 (t!376554 (exprs!5535 (h!69577 zl!343)))) lt!2266978)))

(declare-fun b!5657864 () Bool)

(assert (=> b!5657864 (= e!3484648 EmptyExpr!15651)))

(declare-fun b!5657865 () Bool)

(assert (=> b!5657865 (= e!3484649 (h!69576 (t!376554 (exprs!5535 (h!69577 zl!343)))))))

(assert (= (and d!1786595 res!2393242) b!5657861))

(assert (= (and d!1786595 c!994825) b!5657865))

(assert (= (and d!1786595 (not c!994825)) b!5657852))

(assert (= (and b!5657852 c!994824) b!5657854))

(assert (= (and b!5657852 (not c!994824)) b!5657864))

(assert (= (and d!1786595 res!2393241) b!5657858))

(assert (= (and b!5657858 c!994827) b!5657863))

(assert (= (and b!5657858 (not c!994827)) b!5657862))

(assert (= (and b!5657862 c!994826) b!5657860))

(assert (= (and b!5657862 (not c!994826)) b!5657856))

(declare-fun m!6623538 () Bool)

(assert (=> b!5657862 m!6623538))

(assert (=> b!5657862 m!6623538))

(declare-fun m!6623540 () Bool)

(assert (=> b!5657862 m!6623540))

(declare-fun m!6623542 () Bool)

(assert (=> b!5657861 m!6623542))

(assert (=> b!5657858 m!6622248))

(declare-fun m!6623544 () Bool)

(assert (=> b!5657863 m!6623544))

(declare-fun m!6623546 () Bool)

(assert (=> b!5657856 m!6623546))

(declare-fun m!6623548 () Bool)

(assert (=> b!5657854 m!6623548))

(declare-fun m!6623550 () Bool)

(assert (=> d!1786595 m!6623550))

(declare-fun m!6623552 () Bool)

(assert (=> d!1786595 m!6623552))

(declare-fun m!6623554 () Bool)

(assert (=> b!5657860 m!6623554))

(assert (=> b!5656697 d!1786595))

(declare-fun b!5657894 () Bool)

(declare-fun e!3484663 () (InoxSet Context!10070))

(declare-fun call!428257 () (InoxSet Context!10070))

(assert (=> b!5657894 (= e!3484663 call!428257)))

(declare-fun b!5657895 () Bool)

(assert (=> b!5657895 (= e!3484663 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786597 () Bool)

(declare-fun c!994829 () Bool)

(declare-fun e!3484665 () Bool)

(assert (=> d!1786597 (= c!994829 e!3484665)))

(declare-fun res!2393243 () Bool)

(assert (=> d!1786597 (=> (not res!2393243) (not e!3484665))))

(assert (=> d!1786597 (= res!2393243 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun e!3484664 () (InoxSet Context!10070))

(assert (=> d!1786597 (= (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))) (h!69578 s!2326)) e!3484664)))

(declare-fun b!5657896 () Bool)

(assert (=> b!5657896 (= e!3484664 ((_ map or) call!428257 (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343))))))) (h!69578 s!2326))))))

(declare-fun b!5657897 () Bool)

(assert (=> b!5657897 (= e!3484664 e!3484663)))

(declare-fun c!994828 () Bool)

(assert (=> b!5657897 (= c!994828 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun b!5657898 () Bool)

(assert (=> b!5657898 (= e!3484665 (nullable!5683 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343))))))))))

(declare-fun bm!428252 () Bool)

(assert (=> bm!428252 (= call!428257 (derivationStepZipperDown!993 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))))) (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343))))))) (h!69578 s!2326)))))

(assert (= (and d!1786597 res!2393243) b!5657898))

(assert (= (and d!1786597 c!994829) b!5657896))

(assert (= (and d!1786597 (not c!994829)) b!5657897))

(assert (= (and b!5657897 c!994828) b!5657894))

(assert (= (and b!5657897 (not c!994828)) b!5657895))

(assert (= (or b!5657896 b!5657894) bm!428252))

(declare-fun m!6623556 () Bool)

(assert (=> b!5657896 m!6623556))

(declare-fun m!6623558 () Bool)

(assert (=> b!5657898 m!6623558))

(declare-fun m!6623560 () Bool)

(assert (=> bm!428252 m!6623560))

(assert (=> b!5656567 d!1786597))

(assert (=> d!1786157 d!1786399))

(declare-fun d!1786599 () Bool)

(assert (=> d!1786599 (= ($colon$colon!1690 (exprs!5535 lt!2266833) (ite (or c!994447 c!994446) (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (h!69576 (exprs!5535 (h!69577 zl!343))))) (Cons!63128 (ite (or c!994447 c!994446) (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (h!69576 (exprs!5535 (h!69577 zl!343)))) (exprs!5535 lt!2266833)))))

(assert (=> bm!428007 d!1786599))

(declare-fun d!1786601 () Bool)

(declare-fun c!994830 () Bool)

(assert (=> d!1786601 (= c!994830 (isEmpty!34976 (tail!11121 (t!376556 s!2326))))))

(declare-fun e!3484670 () Bool)

(assert (=> d!1786601 (= (matchZipper!1789 (derivationStepZipper!1736 lt!2266834 (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))) e!3484670)))

(declare-fun b!5657915 () Bool)

(assert (=> b!5657915 (= e!3484670 (nullableZipper!1623 (derivationStepZipper!1736 lt!2266834 (head!12026 (t!376556 s!2326)))))))

(declare-fun b!5657916 () Bool)

(assert (=> b!5657916 (= e!3484670 (matchZipper!1789 (derivationStepZipper!1736 (derivationStepZipper!1736 lt!2266834 (head!12026 (t!376556 s!2326))) (head!12026 (tail!11121 (t!376556 s!2326)))) (tail!11121 (tail!11121 (t!376556 s!2326)))))))

(assert (= (and d!1786601 c!994830) b!5657915))

(assert (= (and d!1786601 (not c!994830)) b!5657916))

(assert (=> d!1786601 m!6622528))

(assert (=> d!1786601 m!6622952))

(assert (=> b!5657915 m!6622736))

(declare-fun m!6623562 () Bool)

(assert (=> b!5657915 m!6623562))

(assert (=> b!5657916 m!6622528))

(assert (=> b!5657916 m!6622956))

(assert (=> b!5657916 m!6622736))

(assert (=> b!5657916 m!6622956))

(declare-fun m!6623564 () Bool)

(assert (=> b!5657916 m!6623564))

(assert (=> b!5657916 m!6622528))

(assert (=> b!5657916 m!6622960))

(assert (=> b!5657916 m!6623564))

(assert (=> b!5657916 m!6622960))

(declare-fun m!6623566 () Bool)

(assert (=> b!5657916 m!6623566))

(assert (=> b!5656910 d!1786601))

(declare-fun bs!1315518 () Bool)

(declare-fun d!1786603 () Bool)

(assert (= bs!1315518 (and d!1786603 b!5656316)))

(declare-fun lambda!304559 () Int)

(assert (=> bs!1315518 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304559 lambda!304449))))

(declare-fun bs!1315519 () Bool)

(assert (= bs!1315519 (and d!1786603 d!1786319)))

(assert (=> bs!1315519 (= lambda!304559 lambda!304517)))

(declare-fun bs!1315520 () Bool)

(assert (= bs!1315520 (and d!1786603 d!1786459)))

(assert (=> bs!1315520 (= lambda!304559 lambda!304544)))

(declare-fun bs!1315521 () Bool)

(assert (= bs!1315521 (and d!1786603 d!1786203)))

(assert (=> bs!1315521 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304559 lambda!304499))))

(declare-fun bs!1315522 () Bool)

(assert (= bs!1315522 (and d!1786603 d!1786589)))

(assert (=> bs!1315522 (= lambda!304559 lambda!304557)))

(assert (=> d!1786603 true))

(assert (=> d!1786603 (= (derivationStepZipper!1736 lt!2266834 (head!12026 (t!376556 s!2326))) (flatMap!1264 lt!2266834 lambda!304559))))

(declare-fun bs!1315523 () Bool)

(assert (= bs!1315523 d!1786603))

(declare-fun m!6623570 () Bool)

(assert (=> bs!1315523 m!6623570))

(assert (=> b!5656910 d!1786603))

(assert (=> b!5656910 d!1786325))

(assert (=> b!5656910 d!1786327))

(declare-fun b!5657938 () Bool)

(declare-fun e!3484677 () (InoxSet Context!10070))

(declare-fun e!3484678 () (InoxSet Context!10070))

(assert (=> b!5657938 (= e!3484677 e!3484678)))

(declare-fun c!994834 () Bool)

(assert (=> b!5657938 (= c!994834 ((_ is Union!15651) (h!69576 (exprs!5535 lt!2266840))))))

(declare-fun call!428259 () (InoxSet Context!10070))

(declare-fun call!428260 () List!63252)

(declare-fun bm!428253 () Bool)

(assert (=> bm!428253 (= call!428259 (derivationStepZipperDown!993 (ite c!994834 (regOne!31815 (h!69576 (exprs!5535 lt!2266840))) (regOne!31814 (h!69576 (exprs!5535 lt!2266840)))) (ite c!994834 (Context!10071 (t!376554 (exprs!5535 lt!2266840))) (Context!10071 call!428260)) (h!69578 s!2326)))))

(declare-fun b!5657939 () Bool)

(declare-fun e!3484680 () (InoxSet Context!10070))

(declare-fun call!428262 () (InoxSet Context!10070))

(assert (=> b!5657939 (= e!3484680 ((_ map or) call!428259 call!428262))))

(declare-fun bm!428254 () Bool)

(declare-fun call!428263 () (InoxSet Context!10070))

(assert (=> bm!428254 (= call!428262 call!428263)))

(declare-fun b!5657941 () Bool)

(declare-fun c!994832 () Bool)

(declare-fun e!3484679 () Bool)

(assert (=> b!5657941 (= c!994832 e!3484679)))

(declare-fun res!2393244 () Bool)

(assert (=> b!5657941 (=> (not res!2393244) (not e!3484679))))

(assert (=> b!5657941 (= res!2393244 ((_ is Concat!24496) (h!69576 (exprs!5535 lt!2266840))))))

(assert (=> b!5657941 (= e!3484678 e!3484680)))

(declare-fun b!5657942 () Bool)

(declare-fun e!3484682 () (InoxSet Context!10070))

(declare-fun call!428258 () (InoxSet Context!10070))

(assert (=> b!5657942 (= e!3484682 call!428258)))

(declare-fun b!5657943 () Bool)

(assert (=> b!5657943 (= e!3484677 (store ((as const (Array Context!10070 Bool)) false) (Context!10071 (t!376554 (exprs!5535 lt!2266840))) true))))

(declare-fun b!5657944 () Bool)

(assert (=> b!5657944 (= e!3484680 e!3484682)))

(declare-fun c!994831 () Bool)

(assert (=> b!5657944 (= c!994831 ((_ is Concat!24496) (h!69576 (exprs!5535 lt!2266840))))))

(declare-fun bm!428255 () Bool)

(declare-fun call!428261 () List!63252)

(assert (=> bm!428255 (= call!428261 call!428260)))

(declare-fun b!5657945 () Bool)

(assert (=> b!5657945 (= e!3484679 (nullable!5683 (regOne!31814 (h!69576 (exprs!5535 lt!2266840)))))))

(declare-fun b!5657947 () Bool)

(declare-fun e!3484681 () (InoxSet Context!10070))

(assert (=> b!5657947 (= e!3484681 call!428258)))

(declare-fun bm!428256 () Bool)

(assert (=> bm!428256 (= call!428258 call!428262)))

(declare-fun b!5657940 () Bool)

(assert (=> b!5657940 (= e!3484681 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786605 () Bool)

(declare-fun c!994833 () Bool)

(assert (=> d!1786605 (= c!994833 (and ((_ is ElementMatch!15651) (h!69576 (exprs!5535 lt!2266840))) (= (c!994391 (h!69576 (exprs!5535 lt!2266840))) (h!69578 s!2326))))))

(assert (=> d!1786605 (= (derivationStepZipperDown!993 (h!69576 (exprs!5535 lt!2266840)) (Context!10071 (t!376554 (exprs!5535 lt!2266840))) (h!69578 s!2326)) e!3484677)))

(declare-fun b!5657950 () Bool)

(assert (=> b!5657950 (= e!3484678 ((_ map or) call!428259 call!428263))))

(declare-fun bm!428257 () Bool)

(assert (=> bm!428257 (= call!428263 (derivationStepZipperDown!993 (ite c!994834 (regTwo!31815 (h!69576 (exprs!5535 lt!2266840))) (ite c!994832 (regTwo!31814 (h!69576 (exprs!5535 lt!2266840))) (ite c!994831 (regOne!31814 (h!69576 (exprs!5535 lt!2266840))) (reg!15980 (h!69576 (exprs!5535 lt!2266840)))))) (ite (or c!994834 c!994832) (Context!10071 (t!376554 (exprs!5535 lt!2266840))) (Context!10071 call!428261)) (h!69578 s!2326)))))

(declare-fun bm!428258 () Bool)

(assert (=> bm!428258 (= call!428260 ($colon$colon!1690 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840)))) (ite (or c!994832 c!994831) (regTwo!31814 (h!69576 (exprs!5535 lt!2266840))) (h!69576 (exprs!5535 lt!2266840)))))))

(declare-fun b!5657952 () Bool)

(declare-fun c!994835 () Bool)

(assert (=> b!5657952 (= c!994835 ((_ is Star!15651) (h!69576 (exprs!5535 lt!2266840))))))

(assert (=> b!5657952 (= e!3484682 e!3484681)))

(assert (= (and d!1786605 c!994833) b!5657943))

(assert (= (and d!1786605 (not c!994833)) b!5657938))

(assert (= (and b!5657938 c!994834) b!5657950))

(assert (= (and b!5657938 (not c!994834)) b!5657941))

(assert (= (and b!5657941 res!2393244) b!5657945))

(assert (= (and b!5657941 c!994832) b!5657939))

(assert (= (and b!5657941 (not c!994832)) b!5657944))

(assert (= (and b!5657944 c!994831) b!5657942))

(assert (= (and b!5657944 (not c!994831)) b!5657952))

(assert (= (and b!5657952 c!994835) b!5657947))

(assert (= (and b!5657952 (not c!994835)) b!5657940))

(assert (= (or b!5657942 b!5657947) bm!428255))

(assert (= (or b!5657942 b!5657947) bm!428256))

(assert (= (or b!5657939 bm!428255) bm!428258))

(assert (= (or b!5657939 bm!428256) bm!428254))

(assert (= (or b!5657950 bm!428254) bm!428257))

(assert (= (or b!5657950 b!5657939) bm!428253))

(declare-fun m!6623576 () Bool)

(assert (=> b!5657945 m!6623576))

(declare-fun m!6623580 () Bool)

(assert (=> bm!428253 m!6623580))

(declare-fun m!6623582 () Bool)

(assert (=> bm!428257 m!6623582))

(declare-fun m!6623586 () Bool)

(assert (=> bm!428258 m!6623586))

(declare-fun m!6623588 () Bool)

(assert (=> b!5657943 m!6623588))

(assert (=> bm!428052 d!1786605))

(declare-fun b!5657953 () Bool)

(declare-fun e!3484688 () Bool)

(assert (=> b!5657953 (= e!3484688 (matchR!7836 (derivativeStep!4476 (derivativeStep!4476 r!7292 (head!12026 s!2326)) (head!12026 (tail!11121 s!2326))) (tail!11121 (tail!11121 s!2326))))))

(declare-fun b!5657954 () Bool)

(declare-fun e!3484685 () Bool)

(declare-fun e!3484687 () Bool)

(assert (=> b!5657954 (= e!3484685 e!3484687)))

(declare-fun res!2393247 () Bool)

(assert (=> b!5657954 (=> (not res!2393247) (not e!3484687))))

(declare-fun lt!2266979 () Bool)

(assert (=> b!5657954 (= res!2393247 (not lt!2266979))))

(declare-fun b!5657955 () Bool)

(declare-fun e!3484686 () Bool)

(declare-fun call!428264 () Bool)

(assert (=> b!5657955 (= e!3484686 (= lt!2266979 call!428264))))

(declare-fun b!5657956 () Bool)

(declare-fun e!3484690 () Bool)

(assert (=> b!5657956 (= e!3484690 (not (= (head!12026 (tail!11121 s!2326)) (c!994391 (derivativeStep!4476 r!7292 (head!12026 s!2326))))))))

(declare-fun b!5657957 () Bool)

(declare-fun e!3484689 () Bool)

(assert (=> b!5657957 (= e!3484689 (= (head!12026 (tail!11121 s!2326)) (c!994391 (derivativeStep!4476 r!7292 (head!12026 s!2326)))))))

(declare-fun b!5657958 () Bool)

(declare-fun e!3484684 () Bool)

(assert (=> b!5657958 (= e!3484686 e!3484684)))

(declare-fun c!994837 () Bool)

(assert (=> b!5657958 (= c!994837 ((_ is EmptyLang!15651) (derivativeStep!4476 r!7292 (head!12026 s!2326))))))

(declare-fun b!5657959 () Bool)

(declare-fun res!2393246 () Bool)

(assert (=> b!5657959 (=> res!2393246 e!3484685)))

(assert (=> b!5657959 (= res!2393246 e!3484689)))

(declare-fun res!2393251 () Bool)

(assert (=> b!5657959 (=> (not res!2393251) (not e!3484689))))

(assert (=> b!5657959 (= res!2393251 lt!2266979)))

(declare-fun bm!428259 () Bool)

(assert (=> bm!428259 (= call!428264 (isEmpty!34976 (tail!11121 s!2326)))))

(declare-fun b!5657960 () Bool)

(assert (=> b!5657960 (= e!3484687 e!3484690)))

(declare-fun res!2393252 () Bool)

(assert (=> b!5657960 (=> res!2393252 e!3484690)))

(assert (=> b!5657960 (= res!2393252 call!428264)))

(declare-fun b!5657961 () Bool)

(declare-fun res!2393250 () Bool)

(assert (=> b!5657961 (=> (not res!2393250) (not e!3484689))))

(assert (=> b!5657961 (= res!2393250 (not call!428264))))

(declare-fun b!5657962 () Bool)

(declare-fun res!2393245 () Bool)

(assert (=> b!5657962 (=> res!2393245 e!3484690)))

(assert (=> b!5657962 (= res!2393245 (not (isEmpty!34976 (tail!11121 (tail!11121 s!2326)))))))

(declare-fun d!1786617 () Bool)

(assert (=> d!1786617 e!3484686))

(declare-fun c!994838 () Bool)

(assert (=> d!1786617 (= c!994838 ((_ is EmptyExpr!15651) (derivativeStep!4476 r!7292 (head!12026 s!2326))))))

(assert (=> d!1786617 (= lt!2266979 e!3484688)))

(declare-fun c!994836 () Bool)

(assert (=> d!1786617 (= c!994836 (isEmpty!34976 (tail!11121 s!2326)))))

(assert (=> d!1786617 (validRegex!7387 (derivativeStep!4476 r!7292 (head!12026 s!2326)))))

(assert (=> d!1786617 (= (matchR!7836 (derivativeStep!4476 r!7292 (head!12026 s!2326)) (tail!11121 s!2326)) lt!2266979)))

(declare-fun b!5657963 () Bool)

(assert (=> b!5657963 (= e!3484688 (nullable!5683 (derivativeStep!4476 r!7292 (head!12026 s!2326))))))

(declare-fun b!5657964 () Bool)

(declare-fun res!2393248 () Bool)

(assert (=> b!5657964 (=> (not res!2393248) (not e!3484689))))

(assert (=> b!5657964 (= res!2393248 (isEmpty!34976 (tail!11121 (tail!11121 s!2326))))))

(declare-fun b!5657965 () Bool)

(declare-fun res!2393249 () Bool)

(assert (=> b!5657965 (=> res!2393249 e!3484685)))

(assert (=> b!5657965 (= res!2393249 (not ((_ is ElementMatch!15651) (derivativeStep!4476 r!7292 (head!12026 s!2326)))))))

(assert (=> b!5657965 (= e!3484684 e!3484685)))

(declare-fun b!5657966 () Bool)

(assert (=> b!5657966 (= e!3484684 (not lt!2266979))))

(assert (= (and d!1786617 c!994836) b!5657963))

(assert (= (and d!1786617 (not c!994836)) b!5657953))

(assert (= (and d!1786617 c!994838) b!5657955))

(assert (= (and d!1786617 (not c!994838)) b!5657958))

(assert (= (and b!5657958 c!994837) b!5657966))

(assert (= (and b!5657958 (not c!994837)) b!5657965))

(assert (= (and b!5657965 (not res!2393249)) b!5657959))

(assert (= (and b!5657959 res!2393251) b!5657961))

(assert (= (and b!5657961 res!2393250) b!5657964))

(assert (= (and b!5657964 res!2393248) b!5657957))

(assert (= (and b!5657959 (not res!2393246)) b!5657954))

(assert (= (and b!5657954 res!2393247) b!5657960))

(assert (= (and b!5657960 (not res!2393252)) b!5657962))

(assert (= (and b!5657962 (not res!2393245)) b!5657956))

(assert (= (or b!5657955 b!5657960 b!5657961) bm!428259))

(assert (=> b!5657962 m!6622748))

(declare-fun m!6623590 () Bool)

(assert (=> b!5657962 m!6623590))

(assert (=> b!5657962 m!6623590))

(declare-fun m!6623592 () Bool)

(assert (=> b!5657962 m!6623592))

(assert (=> b!5657957 m!6622748))

(declare-fun m!6623594 () Bool)

(assert (=> b!5657957 m!6623594))

(assert (=> d!1786617 m!6622748))

(assert (=> d!1786617 m!6622750))

(assert (=> d!1786617 m!6622756))

(declare-fun m!6623596 () Bool)

(assert (=> d!1786617 m!6623596))

(assert (=> b!5657956 m!6622748))

(assert (=> b!5657956 m!6623594))

(assert (=> b!5657963 m!6622756))

(declare-fun m!6623598 () Bool)

(assert (=> b!5657963 m!6623598))

(assert (=> b!5657953 m!6622748))

(assert (=> b!5657953 m!6623594))

(assert (=> b!5657953 m!6622756))

(assert (=> b!5657953 m!6623594))

(declare-fun m!6623600 () Bool)

(assert (=> b!5657953 m!6623600))

(assert (=> b!5657953 m!6622748))

(assert (=> b!5657953 m!6623590))

(assert (=> b!5657953 m!6623600))

(assert (=> b!5657953 m!6623590))

(declare-fun m!6623602 () Bool)

(assert (=> b!5657953 m!6623602))

(assert (=> bm!428259 m!6622748))

(assert (=> bm!428259 m!6622750))

(assert (=> b!5657964 m!6622748))

(assert (=> b!5657964 m!6623590))

(assert (=> b!5657964 m!6623590))

(assert (=> b!5657964 m!6623592))

(assert (=> b!5656982 d!1786617))

(declare-fun b!5657987 () Bool)

(declare-fun e!3484701 () Regex!15651)

(declare-fun call!428273 () Regex!15651)

(assert (=> b!5657987 (= e!3484701 (Concat!24496 call!428273 r!7292))))

(declare-fun b!5657988 () Bool)

(declare-fun e!3484703 () Regex!15651)

(declare-fun call!428275 () Regex!15651)

(assert (=> b!5657988 (= e!3484703 (Union!15651 (Concat!24496 call!428275 (regTwo!31814 r!7292)) EmptyLang!15651))))

(declare-fun bm!428268 () Bool)

(declare-fun c!994850 () Bool)

(declare-fun call!428274 () Regex!15651)

(assert (=> bm!428268 (= call!428274 (derivativeStep!4476 (ite c!994850 (regOne!31815 r!7292) (regOne!31814 r!7292)) (head!12026 s!2326)))))

(declare-fun c!994852 () Bool)

(declare-fun bm!428269 () Bool)

(declare-fun call!428276 () Regex!15651)

(declare-fun c!994849 () Bool)

(assert (=> bm!428269 (= call!428276 (derivativeStep!4476 (ite c!994850 (regTwo!31815 r!7292) (ite c!994852 (reg!15980 r!7292) (ite c!994849 (regTwo!31814 r!7292) (regOne!31814 r!7292)))) (head!12026 s!2326)))))

(declare-fun b!5657989 () Bool)

(declare-fun e!3484702 () Regex!15651)

(assert (=> b!5657989 (= e!3484702 EmptyLang!15651)))

(declare-fun b!5657990 () Bool)

(assert (=> b!5657990 (= e!3484703 (Union!15651 (Concat!24496 call!428274 (regTwo!31814 r!7292)) call!428275))))

(declare-fun b!5657991 () Bool)

(declare-fun e!3484705 () Regex!15651)

(assert (=> b!5657991 (= e!3484705 (Union!15651 call!428274 call!428276))))

(declare-fun b!5657992 () Bool)

(assert (=> b!5657992 (= c!994849 (nullable!5683 (regOne!31814 r!7292)))))

(assert (=> b!5657992 (= e!3484701 e!3484703)))

(declare-fun b!5657993 () Bool)

(assert (=> b!5657993 (= c!994850 ((_ is Union!15651) r!7292))))

(declare-fun e!3484704 () Regex!15651)

(assert (=> b!5657993 (= e!3484704 e!3484705)))

(declare-fun b!5657994 () Bool)

(assert (=> b!5657994 (= e!3484704 (ite (= (head!12026 s!2326) (c!994391 r!7292)) EmptyExpr!15651 EmptyLang!15651))))

(declare-fun d!1786619 () Bool)

(declare-fun lt!2266982 () Regex!15651)

(assert (=> d!1786619 (validRegex!7387 lt!2266982)))

(assert (=> d!1786619 (= lt!2266982 e!3484702)))

(declare-fun c!994851 () Bool)

(assert (=> d!1786619 (= c!994851 (or ((_ is EmptyExpr!15651) r!7292) ((_ is EmptyLang!15651) r!7292)))))

(assert (=> d!1786619 (validRegex!7387 r!7292)))

(assert (=> d!1786619 (= (derivativeStep!4476 r!7292 (head!12026 s!2326)) lt!2266982)))

(declare-fun bm!428270 () Bool)

(assert (=> bm!428270 (= call!428275 call!428273)))

(declare-fun b!5657995 () Bool)

(assert (=> b!5657995 (= e!3484705 e!3484701)))

(assert (=> b!5657995 (= c!994852 ((_ is Star!15651) r!7292))))

(declare-fun bm!428271 () Bool)

(assert (=> bm!428271 (= call!428273 call!428276)))

(declare-fun b!5657996 () Bool)

(assert (=> b!5657996 (= e!3484702 e!3484704)))

(declare-fun c!994853 () Bool)

(assert (=> b!5657996 (= c!994853 ((_ is ElementMatch!15651) r!7292))))

(assert (= (and d!1786619 c!994851) b!5657989))

(assert (= (and d!1786619 (not c!994851)) b!5657996))

(assert (= (and b!5657996 c!994853) b!5657994))

(assert (= (and b!5657996 (not c!994853)) b!5657993))

(assert (= (and b!5657993 c!994850) b!5657991))

(assert (= (and b!5657993 (not c!994850)) b!5657995))

(assert (= (and b!5657995 c!994852) b!5657987))

(assert (= (and b!5657995 (not c!994852)) b!5657992))

(assert (= (and b!5657992 c!994849) b!5657990))

(assert (= (and b!5657992 (not c!994849)) b!5657988))

(assert (= (or b!5657990 b!5657988) bm!428270))

(assert (= (or b!5657987 bm!428270) bm!428271))

(assert (= (or b!5657991 bm!428271) bm!428269))

(assert (= (or b!5657991 b!5657990) bm!428268))

(assert (=> bm!428268 m!6622752))

(declare-fun m!6623604 () Bool)

(assert (=> bm!428268 m!6623604))

(assert (=> bm!428269 m!6622752))

(declare-fun m!6623606 () Bool)

(assert (=> bm!428269 m!6623606))

(assert (=> b!5657992 m!6623530))

(declare-fun m!6623608 () Bool)

(assert (=> d!1786619 m!6623608))

(assert (=> d!1786619 m!6622304))

(assert (=> b!5656982 d!1786619))

(assert (=> b!5656982 d!1786403))

(assert (=> b!5656982 d!1786577))

(declare-fun d!1786621 () Bool)

(assert (=> d!1786621 (= (isConcat!704 lt!2266883) ((_ is Concat!24496) lt!2266883))))

(assert (=> b!5656698 d!1786621))

(assert (=> bm!428063 d!1786441))

(declare-fun d!1786623 () Bool)

(assert (=> d!1786623 (= (isEmpty!34973 (tail!11122 (exprs!5535 (h!69577 zl!343)))) ((_ is Nil!63128) (tail!11122 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> b!5656702 d!1786623))

(declare-fun d!1786625 () Bool)

(assert (=> d!1786625 (= (tail!11122 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))

(assert (=> b!5656702 d!1786625))

(declare-fun b!5657997 () Bool)

(declare-fun e!3484706 () (InoxSet Context!10070))

(declare-fun e!3484707 () (InoxSet Context!10070))

(assert (=> b!5657997 (= e!3484706 e!3484707)))

(declare-fun c!994857 () Bool)

(assert (=> b!5657997 (= c!994857 ((_ is Union!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun call!428279 () List!63252)

(declare-fun bm!428272 () Bool)

(declare-fun call!428278 () (InoxSet Context!10070))

(assert (=> bm!428272 (= call!428278 (derivationStepZipperDown!993 (ite c!994857 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))) (ite c!994857 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))) (Context!10071 call!428279)) (h!69578 s!2326)))))

(declare-fun b!5657998 () Bool)

(declare-fun e!3484709 () (InoxSet Context!10070))

(declare-fun call!428281 () (InoxSet Context!10070))

(assert (=> b!5657998 (= e!3484709 ((_ map or) call!428278 call!428281))))

(declare-fun bm!428273 () Bool)

(declare-fun call!428282 () (InoxSet Context!10070))

(assert (=> bm!428273 (= call!428281 call!428282)))

(declare-fun b!5658000 () Bool)

(declare-fun c!994855 () Bool)

(declare-fun e!3484708 () Bool)

(assert (=> b!5658000 (= c!994855 e!3484708)))

(declare-fun res!2393253 () Bool)

(assert (=> b!5658000 (=> (not res!2393253) (not e!3484708))))

(assert (=> b!5658000 (= res!2393253 ((_ is Concat!24496) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> b!5658000 (= e!3484707 e!3484709)))

(declare-fun b!5658001 () Bool)

(declare-fun e!3484711 () (InoxSet Context!10070))

(declare-fun call!428277 () (InoxSet Context!10070))

(assert (=> b!5658001 (= e!3484711 call!428277)))

(declare-fun b!5658002 () Bool)

(assert (=> b!5658002 (= e!3484706 (store ((as const (Array Context!10070 Bool)) false) (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))) true))))

(declare-fun b!5658003 () Bool)

(assert (=> b!5658003 (= e!3484709 e!3484711)))

(declare-fun c!994854 () Bool)

(assert (=> b!5658003 (= c!994854 ((_ is Concat!24496) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun bm!428274 () Bool)

(declare-fun call!428280 () List!63252)

(assert (=> bm!428274 (= call!428280 call!428279)))

(declare-fun b!5658004 () Bool)

(assert (=> b!5658004 (= e!3484708 (nullable!5683 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun b!5658005 () Bool)

(declare-fun e!3484710 () (InoxSet Context!10070))

(assert (=> b!5658005 (= e!3484710 call!428277)))

(declare-fun bm!428275 () Bool)

(assert (=> bm!428275 (= call!428277 call!428281)))

(declare-fun b!5657999 () Bool)

(assert (=> b!5657999 (= e!3484710 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786627 () Bool)

(declare-fun c!994856 () Bool)

(assert (=> d!1786627 (= c!994856 (and ((_ is ElementMatch!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))) (= (c!994391 (h!69576 (exprs!5535 (h!69577 zl!343)))) (h!69578 s!2326))))))

(assert (=> d!1786627 (= (derivationStepZipperDown!993 (h!69576 (exprs!5535 (h!69577 zl!343))) (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))) (h!69578 s!2326)) e!3484706)))

(declare-fun b!5658006 () Bool)

(assert (=> b!5658006 (= e!3484707 ((_ map or) call!428278 call!428282))))

(declare-fun bm!428276 () Bool)

(assert (=> bm!428276 (= call!428282 (derivationStepZipperDown!993 (ite c!994857 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994855 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994854 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343))))))) (ite (or c!994857 c!994855) (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))) (Context!10071 call!428280)) (h!69578 s!2326)))))

(declare-fun bm!428277 () Bool)

(assert (=> bm!428277 (= call!428279 ($colon$colon!1690 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343))))) (ite (or c!994855 c!994854) (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (h!69576 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun b!5658007 () Bool)

(declare-fun c!994858 () Bool)

(assert (=> b!5658007 (= c!994858 ((_ is Star!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> b!5658007 (= e!3484711 e!3484710)))

(assert (= (and d!1786627 c!994856) b!5658002))

(assert (= (and d!1786627 (not c!994856)) b!5657997))

(assert (= (and b!5657997 c!994857) b!5658006))

(assert (= (and b!5657997 (not c!994857)) b!5658000))

(assert (= (and b!5658000 res!2393253) b!5658004))

(assert (= (and b!5658000 c!994855) b!5657998))

(assert (= (and b!5658000 (not c!994855)) b!5658003))

(assert (= (and b!5658003 c!994854) b!5658001))

(assert (= (and b!5658003 (not c!994854)) b!5658007))

(assert (= (and b!5658007 c!994858) b!5658005))

(assert (= (and b!5658007 (not c!994858)) b!5657999))

(assert (= (or b!5658001 b!5658005) bm!428274))

(assert (= (or b!5658001 b!5658005) bm!428275))

(assert (= (or b!5657998 bm!428274) bm!428277))

(assert (= (or b!5657998 bm!428275) bm!428273))

(assert (= (or b!5658006 bm!428273) bm!428276))

(assert (= (or b!5658006 b!5657998) bm!428272))

(assert (=> b!5658004 m!6622398))

(declare-fun m!6623610 () Bool)

(assert (=> bm!428272 m!6623610))

(declare-fun m!6623612 () Bool)

(assert (=> bm!428276 m!6623612))

(declare-fun m!6623614 () Bool)

(assert (=> bm!428277 m!6623614))

(declare-fun m!6623616 () Bool)

(assert (=> b!5658002 m!6623616))

(assert (=> bm!428021 d!1786627))

(declare-fun bs!1315529 () Bool)

(declare-fun d!1786629 () Bool)

(assert (= bs!1315529 (and d!1786629 d!1786569)))

(declare-fun lambda!304560 () Int)

(assert (=> bs!1315529 (= lambda!304560 lambda!304553)))

(declare-fun bs!1315530 () Bool)

(assert (= bs!1315530 (and d!1786629 d!1786207)))

(assert (=> bs!1315530 (= lambda!304560 lambda!304502)))

(declare-fun bs!1315531 () Bool)

(assert (= bs!1315531 (and d!1786629 d!1786209)))

(assert (=> bs!1315531 (= lambda!304560 lambda!304505)))

(declare-fun bs!1315532 () Bool)

(assert (= bs!1315532 (and d!1786629 d!1786595)))

(assert (=> bs!1315532 (= lambda!304560 lambda!304558)))

(declare-fun bs!1315533 () Bool)

(assert (= bs!1315533 (and d!1786629 d!1786131)))

(assert (=> bs!1315533 (= lambda!304560 lambda!304468)))

(declare-fun bs!1315534 () Bool)

(assert (= bs!1315534 (and d!1786629 d!1786143)))

(assert (=> bs!1315534 (= lambda!304560 lambda!304477)))

(declare-fun bs!1315535 () Bool)

(assert (= bs!1315535 (and d!1786629 d!1786153)))

(assert (=> bs!1315535 (= lambda!304560 lambda!304478)))

(assert (=> d!1786629 (= (inv!82374 setElem!37828) (forall!14800 (exprs!5535 setElem!37828) lambda!304560))))

(declare-fun bs!1315536 () Bool)

(assert (= bs!1315536 d!1786629))

(declare-fun m!6623618 () Bool)

(assert (=> bs!1315536 m!6623618))

(assert (=> setNonEmpty!37828 d!1786629))

(assert (=> d!1786155 d!1786399))

(declare-fun d!1786631 () Bool)

(assert (=> d!1786631 (= (Exists!2751 (ite c!994587 lambda!304510 lambda!304511)) (choose!42843 (ite c!994587 lambda!304510 lambda!304511)))))

(declare-fun bs!1315537 () Bool)

(assert (= bs!1315537 d!1786631))

(declare-fun m!6623620 () Bool)

(assert (=> bs!1315537 m!6623620))

(assert (=> bm!428064 d!1786631))

(declare-fun b!5658024 () Bool)

(declare-fun e!3484721 () Int)

(declare-fun call!428290 () Int)

(declare-fun call!428289 () Int)

(assert (=> b!5658024 (= e!3484721 (+ 1 call!428290 call!428289))))

(declare-fun bm!428284 () Bool)

(declare-fun c!994867 () Bool)

(assert (=> bm!428284 (= call!428289 (regexDepthTotal!99 (ite c!994867 (regTwo!31815 (h!69576 (exprs!5535 lt!2266840))) (regTwo!31814 (h!69576 (exprs!5535 lt!2266840))))))))

(declare-fun b!5658025 () Bool)

(declare-fun e!3484720 () Int)

(assert (=> b!5658025 (= e!3484720 e!3484721)))

(declare-fun c!994868 () Bool)

(assert (=> b!5658025 (= c!994868 ((_ is Concat!24496) (h!69576 (exprs!5535 lt!2266840))))))

(declare-fun b!5658026 () Bool)

(assert (=> b!5658026 (= c!994867 ((_ is Union!15651) (h!69576 (exprs!5535 lt!2266840))))))

(declare-fun e!3484722 () Int)

(assert (=> b!5658026 (= e!3484722 e!3484720)))

(declare-fun b!5658028 () Bool)

(assert (=> b!5658028 (= e!3484721 1)))

(declare-fun b!5658029 () Bool)

(declare-fun call!428291 () Int)

(assert (=> b!5658029 (= e!3484722 (+ 1 call!428291))))

(declare-fun bm!428285 () Bool)

(assert (=> bm!428285 (= call!428290 call!428291)))

(declare-fun b!5658030 () Bool)

(declare-fun e!3484723 () Int)

(assert (=> b!5658030 (= e!3484723 e!3484722)))

(declare-fun c!994870 () Bool)

(assert (=> b!5658030 (= c!994870 ((_ is Star!15651) (h!69576 (exprs!5535 lt!2266840))))))

(declare-fun b!5658031 () Bool)

(assert (=> b!5658031 (= e!3484720 (+ 1 call!428290 call!428289))))

(declare-fun bm!428286 () Bool)

(assert (=> bm!428286 (= call!428291 (regexDepthTotal!99 (ite c!994870 (reg!15980 (h!69576 (exprs!5535 lt!2266840))) (ite c!994867 (regOne!31815 (h!69576 (exprs!5535 lt!2266840))) (regOne!31814 (h!69576 (exprs!5535 lt!2266840)))))))))

(declare-fun b!5658027 () Bool)

(assert (=> b!5658027 (= e!3484723 1)))

(declare-fun d!1786633 () Bool)

(declare-fun lt!2266985 () Int)

(assert (=> d!1786633 (> lt!2266985 0)))

(assert (=> d!1786633 (= lt!2266985 e!3484723)))

(declare-fun c!994869 () Bool)

(assert (=> d!1786633 (= c!994869 ((_ is ElementMatch!15651) (h!69576 (exprs!5535 lt!2266840))))))

(assert (=> d!1786633 (= (regexDepthTotal!99 (h!69576 (exprs!5535 lt!2266840))) lt!2266985)))

(assert (= (and d!1786633 c!994869) b!5658027))

(assert (= (and d!1786633 (not c!994869)) b!5658030))

(assert (= (and b!5658030 c!994870) b!5658029))

(assert (= (and b!5658030 (not c!994870)) b!5658026))

(assert (= (and b!5658026 c!994867) b!5658031))

(assert (= (and b!5658026 (not c!994867)) b!5658025))

(assert (= (and b!5658025 c!994868) b!5658024))

(assert (= (and b!5658025 (not c!994868)) b!5658028))

(assert (= (or b!5658031 b!5658024) bm!428284))

(assert (= (or b!5658031 b!5658024) bm!428285))

(assert (= (or b!5658029 bm!428285) bm!428286))

(declare-fun m!6623622 () Bool)

(assert (=> bm!428284 m!6623622))

(declare-fun m!6623624 () Bool)

(assert (=> bm!428286 m!6623624))

(assert (=> b!5656846 d!1786633))

(declare-fun d!1786635 () Bool)

(declare-fun lt!2266986 () Int)

(assert (=> d!1786635 (>= lt!2266986 0)))

(declare-fun e!3484724 () Int)

(assert (=> d!1786635 (= lt!2266986 e!3484724)))

(declare-fun c!994871 () Bool)

(assert (=> d!1786635 (= c!994871 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840))))))))

(assert (=> d!1786635 (= (contextDepthTotal!226 (Context!10071 (t!376554 (exprs!5535 lt!2266840)))) lt!2266986)))

(declare-fun b!5658032 () Bool)

(assert (=> b!5658032 (= e!3484724 (+ (regexDepthTotal!99 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840)))))) (contextDepthTotal!226 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266840)))))))))))

(declare-fun b!5658033 () Bool)

(assert (=> b!5658033 (= e!3484724 1)))

(assert (= (and d!1786635 c!994871) b!5658032))

(assert (= (and d!1786635 (not c!994871)) b!5658033))

(declare-fun m!6623626 () Bool)

(assert (=> b!5658032 m!6623626))

(declare-fun m!6623628 () Bool)

(assert (=> b!5658032 m!6623628))

(assert (=> b!5656846 d!1786635))

(declare-fun d!1786637 () Bool)

(assert (=> d!1786637 (= (isEmptyLang!1192 lt!2266924) ((_ is EmptyLang!15651) lt!2266924))))

(assert (=> b!5656898 d!1786637))

(assert (=> d!1786217 d!1786441))

(assert (=> d!1786217 d!1786221))

(assert (=> b!5656993 d!1786575))

(assert (=> b!5656993 d!1786577))

(declare-fun d!1786639 () Bool)

(assert (=> d!1786639 (= (nullable!5683 (reg!15980 r!7292)) (nullableFct!1769 (reg!15980 r!7292)))))

(declare-fun bs!1315538 () Bool)

(assert (= bs!1315538 d!1786639))

(declare-fun m!6623630 () Bool)

(assert (=> bs!1315538 m!6623630))

(assert (=> b!5657015 d!1786639))

(declare-fun d!1786641 () Bool)

(assert (=> d!1786641 (= (nullable!5683 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))) (nullableFct!1769 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))))))

(declare-fun bs!1315539 () Bool)

(assert (= bs!1315539 d!1786641))

(declare-fun m!6623632 () Bool)

(assert (=> bs!1315539 m!6623632))

(assert (=> b!5656494 d!1786641))

(declare-fun d!1786643 () Bool)

(assert (=> d!1786643 (= (isDefined!12363 lt!2266905) (not (isEmpty!34978 lt!2266905)))))

(declare-fun bs!1315540 () Bool)

(assert (= bs!1315540 d!1786643))

(declare-fun m!6623634 () Bool)

(assert (=> bs!1315540 m!6623634))

(assert (=> b!5656823 d!1786643))

(declare-fun b!5658034 () Bool)

(declare-fun e!3484725 () (InoxSet Context!10070))

(declare-fun e!3484726 () (InoxSet Context!10070))

(assert (=> b!5658034 (= e!3484725 e!3484726)))

(declare-fun c!994875 () Bool)

(assert (=> b!5658034 (= c!994875 ((_ is Union!15651) (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))))

(declare-fun call!428294 () List!63252)

(declare-fun bm!428287 () Bool)

(declare-fun call!428293 () (InoxSet Context!10070))

(assert (=> bm!428287 (= call!428293 (derivationStepZipperDown!993 (ite c!994875 (regOne!31815 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))) (regOne!31814 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343))))))))) (ite c!994875 (ite (or c!994449 c!994447) lt!2266833 (Context!10071 call!428010)) (Context!10071 call!428294)) (h!69578 s!2326)))))

(declare-fun b!5658035 () Bool)

(declare-fun e!3484728 () (InoxSet Context!10070))

(declare-fun call!428296 () (InoxSet Context!10070))

(assert (=> b!5658035 (= e!3484728 ((_ map or) call!428293 call!428296))))

(declare-fun bm!428288 () Bool)

(declare-fun call!428297 () (InoxSet Context!10070))

(assert (=> bm!428288 (= call!428296 call!428297)))

(declare-fun b!5658037 () Bool)

(declare-fun c!994873 () Bool)

(declare-fun e!3484727 () Bool)

(assert (=> b!5658037 (= c!994873 e!3484727)))

(declare-fun res!2393254 () Bool)

(assert (=> b!5658037 (=> (not res!2393254) (not e!3484727))))

(assert (=> b!5658037 (= res!2393254 ((_ is Concat!24496) (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))))

(assert (=> b!5658037 (= e!3484726 e!3484728)))

(declare-fun b!5658038 () Bool)

(declare-fun e!3484730 () (InoxSet Context!10070))

(declare-fun call!428292 () (InoxSet Context!10070))

(assert (=> b!5658038 (= e!3484730 call!428292)))

(declare-fun b!5658039 () Bool)

(assert (=> b!5658039 (= e!3484725 (store ((as const (Array Context!10070 Bool)) false) (ite (or c!994449 c!994447) lt!2266833 (Context!10071 call!428010)) true))))

(declare-fun b!5658040 () Bool)

(assert (=> b!5658040 (= e!3484728 e!3484730)))

(declare-fun c!994872 () Bool)

(assert (=> b!5658040 (= c!994872 ((_ is Concat!24496) (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))))

(declare-fun bm!428289 () Bool)

(declare-fun call!428295 () List!63252)

(assert (=> bm!428289 (= call!428295 call!428294)))

(declare-fun b!5658041 () Bool)

(assert (=> b!5658041 (= e!3484727 (nullable!5683 (regOne!31814 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343))))))))))))

(declare-fun b!5658042 () Bool)

(declare-fun e!3484729 () (InoxSet Context!10070))

(assert (=> b!5658042 (= e!3484729 call!428292)))

(declare-fun bm!428290 () Bool)

(assert (=> bm!428290 (= call!428292 call!428296)))

(declare-fun b!5658036 () Bool)

(assert (=> b!5658036 (= e!3484729 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786645 () Bool)

(declare-fun c!994874 () Bool)

(assert (=> d!1786645 (= c!994874 (and ((_ is ElementMatch!15651) (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))) (= (c!994391 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))) (h!69578 s!2326))))))

(assert (=> d!1786645 (= (derivationStepZipperDown!993 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343))))))) (ite (or c!994449 c!994447) lt!2266833 (Context!10071 call!428010)) (h!69578 s!2326)) e!3484725)))

(declare-fun b!5658043 () Bool)

(assert (=> b!5658043 (= e!3484726 ((_ map or) call!428293 call!428297))))

(declare-fun bm!428291 () Bool)

(assert (=> bm!428291 (= call!428297 (derivationStepZipperDown!993 (ite c!994875 (regTwo!31815 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))) (ite c!994873 (regTwo!31814 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))) (ite c!994872 (regOne!31814 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))) (reg!15980 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343))))))))))) (ite (or c!994875 c!994873) (ite (or c!994449 c!994447) lt!2266833 (Context!10071 call!428010)) (Context!10071 call!428295)) (h!69578 s!2326)))))

(declare-fun bm!428292 () Bool)

(assert (=> bm!428292 (= call!428294 ($colon$colon!1690 (exprs!5535 (ite (or c!994449 c!994447) lt!2266833 (Context!10071 call!428010))) (ite (or c!994873 c!994872) (regTwo!31814 (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))) (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343))))))))))))

(declare-fun c!994876 () Bool)

(declare-fun b!5658044 () Bool)

(assert (=> b!5658044 (= c!994876 ((_ is Star!15651) (ite c!994449 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994447 (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994446 (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))) (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))))

(assert (=> b!5658044 (= e!3484730 e!3484729)))

(assert (= (and d!1786645 c!994874) b!5658039))

(assert (= (and d!1786645 (not c!994874)) b!5658034))

(assert (= (and b!5658034 c!994875) b!5658043))

(assert (= (and b!5658034 (not c!994875)) b!5658037))

(assert (= (and b!5658037 res!2393254) b!5658041))

(assert (= (and b!5658037 c!994873) b!5658035))

(assert (= (and b!5658037 (not c!994873)) b!5658040))

(assert (= (and b!5658040 c!994872) b!5658038))

(assert (= (and b!5658040 (not c!994872)) b!5658044))

(assert (= (and b!5658044 c!994876) b!5658042))

(assert (= (and b!5658044 (not c!994876)) b!5658036))

(assert (= (or b!5658038 b!5658042) bm!428289))

(assert (= (or b!5658038 b!5658042) bm!428290))

(assert (= (or b!5658035 bm!428289) bm!428292))

(assert (= (or b!5658035 bm!428290) bm!428288))

(assert (= (or b!5658043 bm!428288) bm!428291))

(assert (= (or b!5658043 b!5658035) bm!428287))

(declare-fun m!6623636 () Bool)

(assert (=> b!5658041 m!6623636))

(declare-fun m!6623638 () Bool)

(assert (=> bm!428287 m!6623638))

(declare-fun m!6623640 () Bool)

(assert (=> bm!428291 m!6623640))

(declare-fun m!6623642 () Bool)

(assert (=> bm!428292 m!6623642))

(declare-fun m!6623644 () Bool)

(assert (=> b!5658039 m!6623644))

(assert (=> bm!428006 d!1786645))

(assert (=> b!5656907 d!1786143))

(declare-fun bs!1315541 () Bool)

(declare-fun d!1786647 () Bool)

(assert (= bs!1315541 (and d!1786647 d!1786569)))

(declare-fun lambda!304561 () Int)

(assert (=> bs!1315541 (= lambda!304561 lambda!304553)))

(declare-fun bs!1315542 () Bool)

(assert (= bs!1315542 (and d!1786647 d!1786207)))

(assert (=> bs!1315542 (= lambda!304561 lambda!304502)))

(declare-fun bs!1315543 () Bool)

(assert (= bs!1315543 (and d!1786647 d!1786209)))

(assert (=> bs!1315543 (= lambda!304561 lambda!304505)))

(declare-fun bs!1315544 () Bool)

(assert (= bs!1315544 (and d!1786647 d!1786595)))

(assert (=> bs!1315544 (= lambda!304561 lambda!304558)))

(declare-fun bs!1315545 () Bool)

(assert (= bs!1315545 (and d!1786647 d!1786131)))

(assert (=> bs!1315545 (= lambda!304561 lambda!304468)))

(declare-fun bs!1315546 () Bool)

(assert (= bs!1315546 (and d!1786647 d!1786143)))

(assert (=> bs!1315546 (= lambda!304561 lambda!304477)))

(declare-fun bs!1315547 () Bool)

(assert (= bs!1315547 (and d!1786647 d!1786629)))

(assert (=> bs!1315547 (= lambda!304561 lambda!304560)))

(declare-fun bs!1315548 () Bool)

(assert (= bs!1315548 (and d!1786647 d!1786153)))

(assert (=> bs!1315548 (= lambda!304561 lambda!304478)))

(declare-fun lt!2266987 () List!63252)

(assert (=> d!1786647 (forall!14800 lt!2266987 lambda!304561)))

(declare-fun e!3484731 () List!63252)

(assert (=> d!1786647 (= lt!2266987 e!3484731)))

(declare-fun c!994877 () Bool)

(assert (=> d!1786647 (= c!994877 ((_ is Cons!63129) (t!376555 zl!343)))))

(assert (=> d!1786647 (= (unfocusZipperList!1079 (t!376555 zl!343)) lt!2266987)))

(declare-fun b!5658045 () Bool)

(assert (=> b!5658045 (= e!3484731 (Cons!63128 (generalisedConcat!1266 (exprs!5535 (h!69577 (t!376555 zl!343)))) (unfocusZipperList!1079 (t!376555 (t!376555 zl!343)))))))

(declare-fun b!5658046 () Bool)

(assert (=> b!5658046 (= e!3484731 Nil!63128)))

(assert (= (and d!1786647 c!994877) b!5658045))

(assert (= (and d!1786647 (not c!994877)) b!5658046))

(declare-fun m!6623646 () Bool)

(assert (=> d!1786647 m!6623646))

(declare-fun m!6623648 () Bool)

(assert (=> b!5658045 m!6623648))

(declare-fun m!6623650 () Bool)

(assert (=> b!5658045 m!6623650))

(assert (=> b!5656907 d!1786647))

(declare-fun bs!1315549 () Bool)

(declare-fun d!1786649 () Bool)

(assert (= bs!1315549 (and d!1786649 d!1786367)))

(declare-fun lambda!304562 () Int)

(assert (=> bs!1315549 (= lambda!304562 lambda!304534)))

(declare-fun bs!1315550 () Bool)

(assert (= bs!1315550 (and d!1786649 d!1786581)))

(assert (=> bs!1315550 (= lambda!304562 lambda!304555)))

(declare-fun bs!1315551 () Bool)

(assert (= bs!1315551 (and d!1786649 d!1786585)))

(assert (=> bs!1315551 (= lambda!304562 lambda!304556)))

(assert (=> d!1786649 (= (nullableZipper!1623 lt!2266834) (exists!2197 lt!2266834 lambda!304562))))

(declare-fun bs!1315552 () Bool)

(assert (= bs!1315552 d!1786649))

(declare-fun m!6623652 () Bool)

(assert (=> bs!1315552 m!6623652))

(assert (=> b!5656909 d!1786649))

(declare-fun d!1786651 () Bool)

(assert (=> d!1786651 (= (nullable!5683 (h!69576 (exprs!5535 lt!2266840))) (nullableFct!1769 (h!69576 (exprs!5535 lt!2266840))))))

(declare-fun bs!1315553 () Bool)

(assert (= bs!1315553 d!1786651))

(declare-fun m!6623654 () Bool)

(assert (=> bs!1315553 m!6623654))

(assert (=> b!5656859 d!1786651))

(declare-fun b!5658049 () Bool)

(declare-fun res!2393256 () Bool)

(declare-fun e!3484733 () Bool)

(assert (=> b!5658049 (=> (not res!2393256) (not e!3484733))))

(declare-fun lt!2266988 () List!63254)

(assert (=> b!5658049 (= res!2393256 (= (size!39989 lt!2266988) (+ (size!39989 (_1!36051 (get!21750 lt!2266905))) (size!39989 (_2!36051 (get!21750 lt!2266905))))))))

(declare-fun d!1786653 () Bool)

(assert (=> d!1786653 e!3484733))

(declare-fun res!2393255 () Bool)

(assert (=> d!1786653 (=> (not res!2393255) (not e!3484733))))

(assert (=> d!1786653 (= res!2393255 (= (content!11426 lt!2266988) ((_ map or) (content!11426 (_1!36051 (get!21750 lt!2266905))) (content!11426 (_2!36051 (get!21750 lt!2266905))))))))

(declare-fun e!3484732 () List!63254)

(assert (=> d!1786653 (= lt!2266988 e!3484732)))

(declare-fun c!994878 () Bool)

(assert (=> d!1786653 (= c!994878 ((_ is Nil!63130) (_1!36051 (get!21750 lt!2266905))))))

(assert (=> d!1786653 (= (++!13857 (_1!36051 (get!21750 lt!2266905)) (_2!36051 (get!21750 lt!2266905))) lt!2266988)))

(declare-fun b!5658047 () Bool)

(assert (=> b!5658047 (= e!3484732 (_2!36051 (get!21750 lt!2266905)))))

(declare-fun b!5658050 () Bool)

(assert (=> b!5658050 (= e!3484733 (or (not (= (_2!36051 (get!21750 lt!2266905)) Nil!63130)) (= lt!2266988 (_1!36051 (get!21750 lt!2266905)))))))

(declare-fun b!5658048 () Bool)

(assert (=> b!5658048 (= e!3484732 (Cons!63130 (h!69578 (_1!36051 (get!21750 lt!2266905))) (++!13857 (t!376556 (_1!36051 (get!21750 lt!2266905))) (_2!36051 (get!21750 lt!2266905)))))))

(assert (= (and d!1786653 c!994878) b!5658047))

(assert (= (and d!1786653 (not c!994878)) b!5658048))

(assert (= (and d!1786653 res!2393255) b!5658049))

(assert (= (and b!5658049 res!2393256) b!5658050))

(declare-fun m!6623656 () Bool)

(assert (=> b!5658049 m!6623656))

(declare-fun m!6623658 () Bool)

(assert (=> b!5658049 m!6623658))

(declare-fun m!6623660 () Bool)

(assert (=> b!5658049 m!6623660))

(declare-fun m!6623662 () Bool)

(assert (=> d!1786653 m!6623662))

(declare-fun m!6623664 () Bool)

(assert (=> d!1786653 m!6623664))

(declare-fun m!6623666 () Bool)

(assert (=> d!1786653 m!6623666))

(declare-fun m!6623668 () Bool)

(assert (=> b!5658048 m!6623668))

(assert (=> b!5656827 d!1786653))

(assert (=> b!5656827 d!1786357))

(declare-fun b!5658051 () Bool)

(declare-fun e!3484735 () Int)

(declare-fun call!428299 () Int)

(declare-fun call!428298 () Int)

(assert (=> b!5658051 (= e!3484735 (+ 1 call!428299 call!428298))))

(declare-fun bm!428293 () Bool)

(declare-fun c!994879 () Bool)

(assert (=> bm!428293 (= call!428298 (regexDepthTotal!99 (ite c!994879 (regTwo!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regTwo!31814 (h!69576 (exprs!5535 (h!69577 zl!343)))))))))

(declare-fun b!5658052 () Bool)

(declare-fun e!3484734 () Int)

(assert (=> b!5658052 (= e!3484734 e!3484735)))

(declare-fun c!994880 () Bool)

(assert (=> b!5658052 (= c!994880 ((_ is Concat!24496) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5658053 () Bool)

(assert (=> b!5658053 (= c!994879 ((_ is Union!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun e!3484736 () Int)

(assert (=> b!5658053 (= e!3484736 e!3484734)))

(declare-fun b!5658055 () Bool)

(assert (=> b!5658055 (= e!3484735 1)))

(declare-fun b!5658056 () Bool)

(declare-fun call!428300 () Int)

(assert (=> b!5658056 (= e!3484736 (+ 1 call!428300))))

(declare-fun bm!428294 () Bool)

(assert (=> bm!428294 (= call!428299 call!428300)))

(declare-fun b!5658057 () Bool)

(declare-fun e!3484737 () Int)

(assert (=> b!5658057 (= e!3484737 e!3484736)))

(declare-fun c!994882 () Bool)

(assert (=> b!5658057 (= c!994882 ((_ is Star!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5658058 () Bool)

(assert (=> b!5658058 (= e!3484734 (+ 1 call!428299 call!428298))))

(declare-fun bm!428295 () Bool)

(assert (=> bm!428295 (= call!428300 (regexDepthTotal!99 (ite c!994882 (reg!15980 (h!69576 (exprs!5535 (h!69577 zl!343)))) (ite c!994879 (regOne!31815 (h!69576 (exprs!5535 (h!69577 zl!343)))) (regOne!31814 (h!69576 (exprs!5535 (h!69577 zl!343))))))))))

(declare-fun b!5658054 () Bool)

(assert (=> b!5658054 (= e!3484737 1)))

(declare-fun d!1786655 () Bool)

(declare-fun lt!2266989 () Int)

(assert (=> d!1786655 (> lt!2266989 0)))

(assert (=> d!1786655 (= lt!2266989 e!3484737)))

(declare-fun c!994881 () Bool)

(assert (=> d!1786655 (= c!994881 ((_ is ElementMatch!15651) (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> d!1786655 (= (regexDepthTotal!99 (h!69576 (exprs!5535 (h!69577 zl!343)))) lt!2266989)))

(assert (= (and d!1786655 c!994881) b!5658054))

(assert (= (and d!1786655 (not c!994881)) b!5658057))

(assert (= (and b!5658057 c!994882) b!5658056))

(assert (= (and b!5658057 (not c!994882)) b!5658053))

(assert (= (and b!5658053 c!994879) b!5658058))

(assert (= (and b!5658053 (not c!994879)) b!5658052))

(assert (= (and b!5658052 c!994880) b!5658051))

(assert (= (and b!5658052 (not c!994880)) b!5658055))

(assert (= (or b!5658058 b!5658051) bm!428293))

(assert (= (or b!5658058 b!5658051) bm!428294))

(assert (= (or b!5658056 bm!428294) bm!428295))

(declare-fun m!6623670 () Bool)

(assert (=> bm!428293 m!6623670))

(declare-fun m!6623672 () Bool)

(assert (=> bm!428295 m!6623672))

(assert (=> b!5656848 d!1786655))

(declare-fun d!1786657 () Bool)

(declare-fun lt!2266990 () Int)

(assert (=> d!1786657 (>= lt!2266990 0)))

(declare-fun e!3484738 () Int)

(assert (=> d!1786657 (= lt!2266990 e!3484738)))

(declare-fun c!994883 () Bool)

(assert (=> d!1786657 (= c!994883 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343)))))))))

(assert (=> d!1786657 (= (contextDepthTotal!226 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343))))) lt!2266990)))

(declare-fun b!5658059 () Bool)

(assert (=> b!5658059 (= e!3484738 (+ (regexDepthTotal!99 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343))))))) (contextDepthTotal!226 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (h!69577 zl!343))))))))))))

(declare-fun b!5658060 () Bool)

(assert (=> b!5658060 (= e!3484738 1)))

(assert (= (and d!1786657 c!994883) b!5658059))

(assert (= (and d!1786657 (not c!994883)) b!5658060))

(declare-fun m!6623674 () Bool)

(assert (=> b!5658059 m!6623674))

(declare-fun m!6623676 () Bool)

(assert (=> b!5658059 m!6623676))

(assert (=> b!5656848 d!1786657))

(declare-fun b!5658061 () Bool)

(declare-fun e!3484739 () (InoxSet Context!10070))

(declare-fun call!428301 () (InoxSet Context!10070))

(assert (=> b!5658061 (= e!3484739 call!428301)))

(declare-fun b!5658062 () Bool)

(assert (=> b!5658062 (= e!3484739 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786659 () Bool)

(declare-fun c!994885 () Bool)

(declare-fun e!3484741 () Bool)

(assert (=> d!1786659 (= c!994885 e!3484741)))

(declare-fun res!2393257 () Bool)

(assert (=> d!1786659 (=> (not res!2393257) (not e!3484741))))

(assert (=> d!1786659 (= res!2393257 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))))))

(declare-fun e!3484740 () (InoxSet Context!10070))

(assert (=> d!1786659 (= (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))) (h!69578 s!2326)) e!3484740)))

(declare-fun b!5658063 () Bool)

(assert (=> b!5658063 (= e!3484740 ((_ map or) call!428301 (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))))) (h!69578 s!2326))))))

(declare-fun b!5658064 () Bool)

(assert (=> b!5658064 (= e!3484740 e!3484739)))

(declare-fun c!994884 () Bool)

(assert (=> b!5658064 (= c!994884 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))))))

(declare-fun b!5658065 () Bool)

(assert (=> b!5658065 (= e!3484741 (nullable!5683 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))))))))

(declare-fun bm!428296 () Bool)

(assert (=> bm!428296 (= call!428301 (derivationStepZipperDown!993 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343)))))))))) (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (Cons!63128 (h!69576 (exprs!5535 (h!69577 zl!343))) (t!376554 (exprs!5535 (h!69577 zl!343))))))))))) (h!69578 s!2326)))))

(assert (= (and d!1786659 res!2393257) b!5658065))

(assert (= (and d!1786659 c!994885) b!5658063))

(assert (= (and d!1786659 (not c!994885)) b!5658064))

(assert (= (and b!5658064 c!994884) b!5658061))

(assert (= (and b!5658064 (not c!994884)) b!5658062))

(assert (= (or b!5658063 b!5658061) bm!428296))

(declare-fun m!6623678 () Bool)

(assert (=> b!5658063 m!6623678))

(declare-fun m!6623680 () Bool)

(assert (=> b!5658065 m!6623680))

(declare-fun m!6623682 () Bool)

(assert (=> bm!428296 m!6623682))

(assert (=> b!5656534 d!1786659))

(declare-fun d!1786661 () Bool)

(declare-fun c!994886 () Bool)

(assert (=> d!1786661 (= c!994886 (isEmpty!34976 (tail!11121 (t!376556 s!2326))))))

(declare-fun e!3484742 () Bool)

(assert (=> d!1786661 (= (matchZipper!1789 (derivationStepZipper!1736 lt!2266828 (head!12026 (t!376556 s!2326))) (tail!11121 (t!376556 s!2326))) e!3484742)))

(declare-fun b!5658066 () Bool)

(assert (=> b!5658066 (= e!3484742 (nullableZipper!1623 (derivationStepZipper!1736 lt!2266828 (head!12026 (t!376556 s!2326)))))))

(declare-fun b!5658067 () Bool)

(assert (=> b!5658067 (= e!3484742 (matchZipper!1789 (derivationStepZipper!1736 (derivationStepZipper!1736 lt!2266828 (head!12026 (t!376556 s!2326))) (head!12026 (tail!11121 (t!376556 s!2326)))) (tail!11121 (tail!11121 (t!376556 s!2326)))))))

(assert (= (and d!1786661 c!994886) b!5658066))

(assert (= (and d!1786661 (not c!994886)) b!5658067))

(assert (=> d!1786661 m!6622528))

(assert (=> d!1786661 m!6622952))

(assert (=> b!5658066 m!6622582))

(declare-fun m!6623684 () Bool)

(assert (=> b!5658066 m!6623684))

(assert (=> b!5658067 m!6622528))

(assert (=> b!5658067 m!6622956))

(assert (=> b!5658067 m!6622582))

(assert (=> b!5658067 m!6622956))

(declare-fun m!6623686 () Bool)

(assert (=> b!5658067 m!6623686))

(assert (=> b!5658067 m!6622528))

(assert (=> b!5658067 m!6622960))

(assert (=> b!5658067 m!6623686))

(assert (=> b!5658067 m!6622960))

(declare-fun m!6623688 () Bool)

(assert (=> b!5658067 m!6623688))

(assert (=> b!5656727 d!1786661))

(declare-fun bs!1315554 () Bool)

(declare-fun d!1786663 () Bool)

(assert (= bs!1315554 (and d!1786663 d!1786603)))

(declare-fun lambda!304563 () Int)

(assert (=> bs!1315554 (= lambda!304563 lambda!304559)))

(declare-fun bs!1315555 () Bool)

(assert (= bs!1315555 (and d!1786663 b!5656316)))

(assert (=> bs!1315555 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304563 lambda!304449))))

(declare-fun bs!1315556 () Bool)

(assert (= bs!1315556 (and d!1786663 d!1786319)))

(assert (=> bs!1315556 (= lambda!304563 lambda!304517)))

(declare-fun bs!1315557 () Bool)

(assert (= bs!1315557 (and d!1786663 d!1786459)))

(assert (=> bs!1315557 (= lambda!304563 lambda!304544)))

(declare-fun bs!1315558 () Bool)

(assert (= bs!1315558 (and d!1786663 d!1786203)))

(assert (=> bs!1315558 (= (= (head!12026 (t!376556 s!2326)) (h!69578 s!2326)) (= lambda!304563 lambda!304499))))

(declare-fun bs!1315559 () Bool)

(assert (= bs!1315559 (and d!1786663 d!1786589)))

(assert (=> bs!1315559 (= lambda!304563 lambda!304557)))

(assert (=> d!1786663 true))

(assert (=> d!1786663 (= (derivationStepZipper!1736 lt!2266828 (head!12026 (t!376556 s!2326))) (flatMap!1264 lt!2266828 lambda!304563))))

(declare-fun bs!1315560 () Bool)

(assert (= bs!1315560 d!1786663))

(declare-fun m!6623690 () Bool)

(assert (=> bs!1315560 m!6623690))

(assert (=> b!5656727 d!1786663))

(assert (=> b!5656727 d!1786325))

(assert (=> b!5656727 d!1786327))

(assert (=> b!5656986 d!1786403))

(assert (=> b!5656701 d!1786195))

(declare-fun bs!1315561 () Bool)

(declare-fun d!1786665 () Bool)

(assert (= bs!1315561 (and d!1786665 d!1786569)))

(declare-fun lambda!304564 () Int)

(assert (=> bs!1315561 (= lambda!304564 lambda!304553)))

(declare-fun bs!1315562 () Bool)

(assert (= bs!1315562 (and d!1786665 d!1786207)))

(assert (=> bs!1315562 (= lambda!304564 lambda!304502)))

(declare-fun bs!1315563 () Bool)

(assert (= bs!1315563 (and d!1786665 d!1786209)))

(assert (=> bs!1315563 (= lambda!304564 lambda!304505)))

(declare-fun bs!1315564 () Bool)

(assert (= bs!1315564 (and d!1786665 d!1786647)))

(assert (=> bs!1315564 (= lambda!304564 lambda!304561)))

(declare-fun bs!1315565 () Bool)

(assert (= bs!1315565 (and d!1786665 d!1786595)))

(assert (=> bs!1315565 (= lambda!304564 lambda!304558)))

(declare-fun bs!1315566 () Bool)

(assert (= bs!1315566 (and d!1786665 d!1786131)))

(assert (=> bs!1315566 (= lambda!304564 lambda!304468)))

(declare-fun bs!1315567 () Bool)

(assert (= bs!1315567 (and d!1786665 d!1786143)))

(assert (=> bs!1315567 (= lambda!304564 lambda!304477)))

(declare-fun bs!1315568 () Bool)

(assert (= bs!1315568 (and d!1786665 d!1786629)))

(assert (=> bs!1315568 (= lambda!304564 lambda!304560)))

(declare-fun bs!1315569 () Bool)

(assert (= bs!1315569 (and d!1786665 d!1786153)))

(assert (=> bs!1315569 (= lambda!304564 lambda!304478)))

(declare-fun b!5658068 () Bool)

(declare-fun e!3484744 () Regex!15651)

(assert (=> b!5658068 (= e!3484744 (Union!15651 (h!69576 (t!376554 (unfocusZipperList!1079 zl!343))) (generalisedUnion!1514 (t!376554 (t!376554 (unfocusZipperList!1079 zl!343))))))))

(declare-fun b!5658069 () Bool)

(declare-fun e!3484748 () Regex!15651)

(assert (=> b!5658069 (= e!3484748 e!3484744)))

(declare-fun c!994887 () Bool)

(assert (=> b!5658069 (= c!994887 ((_ is Cons!63128) (t!376554 (unfocusZipperList!1079 zl!343))))))

(declare-fun b!5658070 () Bool)

(assert (=> b!5658070 (= e!3484748 (h!69576 (t!376554 (unfocusZipperList!1079 zl!343))))))

(declare-fun b!5658071 () Bool)

(declare-fun e!3484747 () Bool)

(declare-fun e!3484745 () Bool)

(assert (=> b!5658071 (= e!3484747 e!3484745)))

(declare-fun c!994890 () Bool)

(assert (=> b!5658071 (= c!994890 (isEmpty!34973 (tail!11122 (t!376554 (unfocusZipperList!1079 zl!343)))))))

(declare-fun b!5658072 () Bool)

(declare-fun e!3484743 () Bool)

(assert (=> b!5658072 (= e!3484743 e!3484747)))

(declare-fun c!994889 () Bool)

(assert (=> b!5658072 (= c!994889 (isEmpty!34973 (t!376554 (unfocusZipperList!1079 zl!343))))))

(declare-fun b!5658073 () Bool)

(declare-fun lt!2266991 () Regex!15651)

(assert (=> b!5658073 (= e!3484747 (isEmptyLang!1192 lt!2266991))))

(declare-fun b!5658074 () Bool)

(assert (=> b!5658074 (= e!3484745 (isUnion!622 lt!2266991))))

(declare-fun b!5658075 () Bool)

(declare-fun e!3484746 () Bool)

(assert (=> b!5658075 (= e!3484746 (isEmpty!34973 (t!376554 (t!376554 (unfocusZipperList!1079 zl!343)))))))

(assert (=> d!1786665 e!3484743))

(declare-fun res!2393259 () Bool)

(assert (=> d!1786665 (=> (not res!2393259) (not e!3484743))))

(assert (=> d!1786665 (= res!2393259 (validRegex!7387 lt!2266991))))

(assert (=> d!1786665 (= lt!2266991 e!3484748)))

(declare-fun c!994888 () Bool)

(assert (=> d!1786665 (= c!994888 e!3484746)))

(declare-fun res!2393258 () Bool)

(assert (=> d!1786665 (=> (not res!2393258) (not e!3484746))))

(assert (=> d!1786665 (= res!2393258 ((_ is Cons!63128) (t!376554 (unfocusZipperList!1079 zl!343))))))

(assert (=> d!1786665 (forall!14800 (t!376554 (unfocusZipperList!1079 zl!343)) lambda!304564)))

(assert (=> d!1786665 (= (generalisedUnion!1514 (t!376554 (unfocusZipperList!1079 zl!343))) lt!2266991)))

(declare-fun b!5658076 () Bool)

(assert (=> b!5658076 (= e!3484744 EmptyLang!15651)))

(declare-fun b!5658077 () Bool)

(assert (=> b!5658077 (= e!3484745 (= lt!2266991 (head!12027 (t!376554 (unfocusZipperList!1079 zl!343)))))))

(assert (= (and d!1786665 res!2393258) b!5658075))

(assert (= (and d!1786665 c!994888) b!5658070))

(assert (= (and d!1786665 (not c!994888)) b!5658069))

(assert (= (and b!5658069 c!994887) b!5658068))

(assert (= (and b!5658069 (not c!994887)) b!5658076))

(assert (= (and d!1786665 res!2393259) b!5658072))

(assert (= (and b!5658072 c!994889) b!5658073))

(assert (= (and b!5658072 (not c!994889)) b!5658071))

(assert (= (and b!5658071 c!994890) b!5658077))

(assert (= (and b!5658071 (not c!994890)) b!5658074))

(declare-fun m!6623692 () Bool)

(assert (=> b!5658077 m!6623692))

(declare-fun m!6623694 () Bool)

(assert (=> b!5658075 m!6623694))

(declare-fun m!6623696 () Bool)

(assert (=> b!5658068 m!6623696))

(declare-fun m!6623698 () Bool)

(assert (=> b!5658074 m!6623698))

(declare-fun m!6623700 () Bool)

(assert (=> b!5658073 m!6623700))

(assert (=> b!5658072 m!6622712))

(declare-fun m!6623702 () Bool)

(assert (=> d!1786665 m!6623702))

(declare-fun m!6623704 () Bool)

(assert (=> d!1786665 m!6623704))

(declare-fun m!6623706 () Bool)

(assert (=> b!5658071 m!6623706))

(assert (=> b!5658071 m!6623706))

(declare-fun m!6623708 () Bool)

(assert (=> b!5658071 m!6623708))

(assert (=> b!5656893 d!1786665))

(assert (=> b!5656569 d!1786097))

(declare-fun b!5658078 () Bool)

(declare-fun e!3484749 () (InoxSet Context!10070))

(declare-fun call!428302 () (InoxSet Context!10070))

(assert (=> b!5658078 (= e!3484749 call!428302)))

(declare-fun b!5658079 () Bool)

(assert (=> b!5658079 (= e!3484749 ((as const (Array Context!10070 Bool)) false))))

(declare-fun d!1786667 () Bool)

(declare-fun c!994892 () Bool)

(declare-fun e!3484751 () Bool)

(assert (=> d!1786667 (= c!994892 e!3484751)))

(declare-fun res!2393260 () Bool)

(assert (=> d!1786667 (=> (not res!2393260) (not e!3484751))))

(assert (=> d!1786667 (= res!2393260 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266833))))))))

(declare-fun e!3484750 () (InoxSet Context!10070))

(assert (=> d!1786667 (= (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 lt!2266833))) (h!69578 s!2326)) e!3484750)))

(declare-fun b!5658080 () Bool)

(assert (=> b!5658080 (= e!3484750 ((_ map or) call!428302 (derivationStepZipperUp!919 (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266833)))))) (h!69578 s!2326))))))

(declare-fun b!5658081 () Bool)

(assert (=> b!5658081 (= e!3484750 e!3484749)))

(declare-fun c!994891 () Bool)

(assert (=> b!5658081 (= c!994891 ((_ is Cons!63128) (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266833))))))))

(declare-fun b!5658082 () Bool)

(assert (=> b!5658082 (= e!3484751 (nullable!5683 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266833)))))))))

(declare-fun bm!428297 () Bool)

(assert (=> bm!428297 (= call!428302 (derivationStepZipperDown!993 (h!69576 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266833))))) (Context!10071 (t!376554 (exprs!5535 (Context!10071 (t!376554 (exprs!5535 lt!2266833)))))) (h!69578 s!2326)))))

(assert (= (and d!1786667 res!2393260) b!5658082))

(assert (= (and d!1786667 c!994892) b!5658080))

(assert (= (and d!1786667 (not c!994892)) b!5658081))

(assert (= (and b!5658081 c!994891) b!5658078))

(assert (= (and b!5658081 (not c!994891)) b!5658079))

(assert (= (or b!5658080 b!5658078) bm!428297))

(declare-fun m!6623710 () Bool)

(assert (=> b!5658080 m!6623710))

(declare-fun m!6623712 () Bool)

(assert (=> b!5658082 m!6623712))

(declare-fun m!6623714 () Bool)

(assert (=> bm!428297 m!6623714))

(assert (=> b!5656572 d!1786667))

(assert (=> bs!1315300 d!1786123))

(assert (=> d!1786201 d!1786197))

(declare-fun d!1786669 () Bool)

(assert (=> d!1786669 (= (flatMap!1264 lt!2266829 lambda!304449) (dynLambda!24694 lambda!304449 lt!2266840))))

(assert (=> d!1786669 true))

(declare-fun _$13!2303 () Unit!156136)

(assert (=> d!1786669 (= (choose!42839 lt!2266829 lt!2266840 lambda!304449) _$13!2303)))

(declare-fun b_lambda!213937 () Bool)

(assert (=> (not b_lambda!213937) (not d!1786669)))

(declare-fun bs!1315570 () Bool)

(assert (= bs!1315570 d!1786669))

(assert (=> bs!1315570 m!6622286))

(assert (=> bs!1315570 m!6622694))

(assert (=> d!1786201 d!1786669))

(declare-fun bs!1315571 () Bool)

(declare-fun d!1786671 () Bool)

(assert (= bs!1315571 (and d!1786671 d!1786367)))

(declare-fun lambda!304565 () Int)

(assert (=> bs!1315571 (= lambda!304565 lambda!304534)))

(declare-fun bs!1315572 () Bool)

(assert (= bs!1315572 (and d!1786671 d!1786581)))

(assert (=> bs!1315572 (= lambda!304565 lambda!304555)))

(declare-fun bs!1315573 () Bool)

(assert (= bs!1315573 (and d!1786671 d!1786585)))

(assert (=> bs!1315573 (= lambda!304565 lambda!304556)))

(declare-fun bs!1315574 () Bool)

(assert (= bs!1315574 (and d!1786671 d!1786649)))

(assert (=> bs!1315574 (= lambda!304565 lambda!304562)))

(assert (=> d!1786671 (= (nullableZipper!1623 lt!2266827) (exists!2197 lt!2266827 lambda!304565))))

(declare-fun bs!1315575 () Bool)

(assert (= bs!1315575 d!1786671))

(declare-fun m!6623716 () Bool)

(assert (=> bs!1315575 m!6623716))

(assert (=> b!5656724 d!1786671))

(declare-fun d!1786673 () Bool)

(declare-fun res!2393265 () Bool)

(declare-fun e!3484756 () Bool)

(assert (=> d!1786673 (=> res!2393265 e!3484756)))

(assert (=> d!1786673 (= res!2393265 ((_ is Nil!63129) lt!2266936))))

(assert (=> d!1786673 (= (noDuplicate!1603 lt!2266936) e!3484756)))

(declare-fun b!5658087 () Bool)

(declare-fun e!3484757 () Bool)

(assert (=> b!5658087 (= e!3484756 e!3484757)))

(declare-fun res!2393266 () Bool)

(assert (=> b!5658087 (=> (not res!2393266) (not e!3484757))))

(declare-fun contains!19836 (List!63253 Context!10070) Bool)

(assert (=> b!5658087 (= res!2393266 (not (contains!19836 (t!376555 lt!2266936) (h!69577 lt!2266936))))))

(declare-fun b!5658088 () Bool)

(assert (=> b!5658088 (= e!3484757 (noDuplicate!1603 (t!376555 lt!2266936)))))

(assert (= (and d!1786673 (not res!2393265)) b!5658087))

(assert (= (and b!5658087 res!2393266) b!5658088))

(declare-fun m!6623718 () Bool)

(assert (=> b!5658087 m!6623718))

(declare-fun m!6623720 () Bool)

(assert (=> b!5658088 m!6623720))

(assert (=> d!1786223 d!1786673))

(declare-fun d!1786675 () Bool)

(declare-fun e!3484765 () Bool)

(assert (=> d!1786675 e!3484765))

(declare-fun res!2393271 () Bool)

(assert (=> d!1786675 (=> (not res!2393271) (not e!3484765))))

(declare-fun res!2393272 () List!63253)

(assert (=> d!1786675 (= res!2393271 (noDuplicate!1603 res!2393272))))

(declare-fun e!3484766 () Bool)

(assert (=> d!1786675 e!3484766))

(assert (=> d!1786675 (= (choose!42848 z!1189) res!2393272)))

(declare-fun b!5658096 () Bool)

(declare-fun e!3484764 () Bool)

(declare-fun tp!1567169 () Bool)

(assert (=> b!5658096 (= e!3484764 tp!1567169)))

(declare-fun tp!1567168 () Bool)

(declare-fun b!5658095 () Bool)

(assert (=> b!5658095 (= e!3484766 (and (inv!82374 (h!69577 res!2393272)) e!3484764 tp!1567168))))

(declare-fun b!5658097 () Bool)

(assert (=> b!5658097 (= e!3484765 (= (content!11424 res!2393272) z!1189))))

(assert (= b!5658095 b!5658096))

(assert (= (and d!1786675 ((_ is Cons!63129) res!2393272)) b!5658095))

(assert (= (and d!1786675 res!2393271) b!5658097))

(declare-fun m!6623722 () Bool)

(assert (=> d!1786675 m!6623722))

(declare-fun m!6623724 () Bool)

(assert (=> b!5658095 m!6623724))

(declare-fun m!6623726 () Bool)

(assert (=> b!5658097 m!6623726))

(assert (=> d!1786223 d!1786675))

(declare-fun d!1786677 () Bool)

(declare-fun res!2393273 () Bool)

(declare-fun e!3484767 () Bool)

(assert (=> d!1786677 (=> res!2393273 e!3484767)))

(assert (=> d!1786677 (= res!2393273 ((_ is Nil!63128) (exprs!5535 (h!69577 zl!343))))))

(assert (=> d!1786677 (= (forall!14800 (exprs!5535 (h!69577 zl!343)) lambda!304468) e!3484767)))

(declare-fun b!5658098 () Bool)

(declare-fun e!3484768 () Bool)

(assert (=> b!5658098 (= e!3484767 e!3484768)))

(declare-fun res!2393274 () Bool)

(assert (=> b!5658098 (=> (not res!2393274) (not e!3484768))))

(assert (=> b!5658098 (= res!2393274 (dynLambda!24696 lambda!304468 (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun b!5658099 () Bool)

(assert (=> b!5658099 (= e!3484768 (forall!14800 (t!376554 (exprs!5535 (h!69577 zl!343))) lambda!304468))))

(assert (= (and d!1786677 (not res!2393273)) b!5658098))

(assert (= (and b!5658098 res!2393274) b!5658099))

(declare-fun b_lambda!213939 () Bool)

(assert (=> (not b_lambda!213939) (not b!5658098)))

(declare-fun m!6623728 () Bool)

(assert (=> b!5658098 m!6623728))

(declare-fun m!6623730 () Bool)

(assert (=> b!5658099 m!6623730))

(assert (=> d!1786131 d!1786677))

(declare-fun d!1786679 () Bool)

(assert (=> d!1786679 (= (isEmpty!34973 (unfocusZipperList!1079 zl!343)) ((_ is Nil!63128) (unfocusZipperList!1079 zl!343)))))

(assert (=> b!5656897 d!1786679))

(declare-fun d!1786681 () Bool)

(assert (=> d!1786681 (= (Exists!2751 lambda!304495) (choose!42843 lambda!304495))))

(declare-fun bs!1315576 () Bool)

(assert (= bs!1315576 d!1786681))

(declare-fun m!6623732 () Bool)

(assert (=> bs!1315576 m!6623732))

(assert (=> d!1786183 d!1786681))

(declare-fun d!1786683 () Bool)

(assert (=> d!1786683 (= (Exists!2751 lambda!304496) (choose!42843 lambda!304496))))

(declare-fun bs!1315577 () Bool)

(assert (= bs!1315577 d!1786683))

(declare-fun m!6623734 () Bool)

(assert (=> bs!1315577 m!6623734))

(assert (=> d!1786183 d!1786683))

(declare-fun bs!1315578 () Bool)

(declare-fun d!1786685 () Bool)

(assert (= bs!1315578 (and d!1786685 b!5656951)))

(declare-fun lambda!304570 () Int)

(assert (=> bs!1315578 (not (= lambda!304570 lambda!304511))))

(declare-fun bs!1315579 () Bool)

(assert (= bs!1315579 (and d!1786685 d!1786183)))

(assert (=> bs!1315579 (not (= lambda!304570 lambda!304496))))

(declare-fun bs!1315580 () Bool)

(assert (= bs!1315580 (and d!1786685 b!5656950)))

(assert (=> bs!1315580 (not (= lambda!304570 lambda!304510))))

(declare-fun bs!1315581 () Bool)

(assert (= bs!1315581 (and d!1786685 b!5657539)))

(assert (=> bs!1315581 (not (= lambda!304570 lambda!304543))))

(declare-fun bs!1315582 () Bool)

(assert (= bs!1315582 (and d!1786685 d!1786181)))

(assert (=> bs!1315582 (= lambda!304570 lambda!304490)))

(declare-fun bs!1315583 () Bool)

(assert (= bs!1315583 (and d!1786685 b!5657538)))

(assert (=> bs!1315583 (not (= lambda!304570 lambda!304542))))

(declare-fun bs!1315584 () Bool)

(assert (= bs!1315584 (and d!1786685 b!5656308)))

(assert (=> bs!1315584 (= lambda!304570 lambda!304447)))

(assert (=> bs!1315579 (= lambda!304570 lambda!304495)))

(declare-fun bs!1315585 () Bool)

(assert (= bs!1315585 (and d!1786685 d!1786341)))

(assert (=> bs!1315585 (= lambda!304570 lambda!304526)))

(declare-fun bs!1315586 () Bool)

(assert (= bs!1315586 (and d!1786685 b!5657460)))

(assert (=> bs!1315586 (not (= lambda!304570 lambda!304538))))

(declare-fun bs!1315587 () Bool)

(assert (= bs!1315587 (and d!1786685 b!5657459)))

(assert (=> bs!1315587 (not (= lambda!304570 lambda!304536))))

(assert (=> bs!1315584 (not (= lambda!304570 lambda!304448))))

(assert (=> d!1786685 true))

(assert (=> d!1786685 true))

(assert (=> d!1786685 true))

(declare-fun lambda!304571 () Int)

(assert (=> bs!1315578 (= lambda!304571 lambda!304511)))

(assert (=> bs!1315579 (= lambda!304571 lambda!304496)))

(assert (=> bs!1315580 (not (= lambda!304571 lambda!304510))))

(declare-fun bs!1315588 () Bool)

(assert (= bs!1315588 d!1786685))

(assert (=> bs!1315588 (not (= lambda!304571 lambda!304570))))

(assert (=> bs!1315581 (= (and (= (regOne!31814 r!7292) (regOne!31814 (regTwo!31815 r!7292))) (= (regTwo!31814 r!7292) (regTwo!31814 (regTwo!31815 r!7292)))) (= lambda!304571 lambda!304543))))

(assert (=> bs!1315582 (not (= lambda!304571 lambda!304490))))

(assert (=> bs!1315583 (not (= lambda!304571 lambda!304542))))

(assert (=> bs!1315584 (not (= lambda!304571 lambda!304447))))

(assert (=> bs!1315579 (not (= lambda!304571 lambda!304495))))

(assert (=> bs!1315585 (not (= lambda!304571 lambda!304526))))

(assert (=> bs!1315586 (= (and (= (regOne!31814 r!7292) (regOne!31814 (regOne!31815 r!7292))) (= (regTwo!31814 r!7292) (regTwo!31814 (regOne!31815 r!7292)))) (= lambda!304571 lambda!304538))))

(assert (=> bs!1315587 (not (= lambda!304571 lambda!304536))))

(assert (=> bs!1315584 (= lambda!304571 lambda!304448)))

(assert (=> d!1786685 true))

(assert (=> d!1786685 true))

(assert (=> d!1786685 true))

(assert (=> d!1786685 (= (Exists!2751 lambda!304570) (Exists!2751 lambda!304571))))

(assert (=> d!1786685 true))

(declare-fun _$90!1401 () Unit!156136)

(assert (=> d!1786685 (= (choose!42845 (regOne!31814 r!7292) (regTwo!31814 r!7292) s!2326) _$90!1401)))

(declare-fun m!6623736 () Bool)

(assert (=> bs!1315588 m!6623736))

(declare-fun m!6623738 () Bool)

(assert (=> bs!1315588 m!6623738))

(assert (=> d!1786183 d!1786685))

(assert (=> d!1786183 d!1786335))

(assert (=> d!1786159 d!1786643))

(declare-fun b!5658108 () Bool)

(declare-fun e!3484777 () Bool)

(assert (=> b!5658108 (= e!3484777 (matchR!7836 (derivativeStep!4476 (regOne!31814 r!7292) (head!12026 Nil!63130)) (tail!11121 Nil!63130)))))

(declare-fun b!5658109 () Bool)

(declare-fun e!3484774 () Bool)

(declare-fun e!3484776 () Bool)

(assert (=> b!5658109 (= e!3484774 e!3484776)))

(declare-fun res!2393285 () Bool)

(assert (=> b!5658109 (=> (not res!2393285) (not e!3484776))))

(declare-fun lt!2266992 () Bool)

(assert (=> b!5658109 (= res!2393285 (not lt!2266992))))

(declare-fun b!5658110 () Bool)

(declare-fun e!3484775 () Bool)

(declare-fun call!428303 () Bool)

(assert (=> b!5658110 (= e!3484775 (= lt!2266992 call!428303))))

(declare-fun b!5658111 () Bool)

(declare-fun e!3484779 () Bool)

(assert (=> b!5658111 (= e!3484779 (not (= (head!12026 Nil!63130) (c!994391 (regOne!31814 r!7292)))))))

(declare-fun b!5658112 () Bool)

(declare-fun e!3484778 () Bool)

(assert (=> b!5658112 (= e!3484778 (= (head!12026 Nil!63130) (c!994391 (regOne!31814 r!7292))))))

(declare-fun b!5658113 () Bool)

(declare-fun e!3484773 () Bool)

(assert (=> b!5658113 (= e!3484775 e!3484773)))

(declare-fun c!994894 () Bool)

(assert (=> b!5658113 (= c!994894 ((_ is EmptyLang!15651) (regOne!31814 r!7292)))))

(declare-fun b!5658114 () Bool)

(declare-fun res!2393284 () Bool)

(assert (=> b!5658114 (=> res!2393284 e!3484774)))

(assert (=> b!5658114 (= res!2393284 e!3484778)))

(declare-fun res!2393289 () Bool)

(assert (=> b!5658114 (=> (not res!2393289) (not e!3484778))))

(assert (=> b!5658114 (= res!2393289 lt!2266992)))

(declare-fun bm!428298 () Bool)

(assert (=> bm!428298 (= call!428303 (isEmpty!34976 Nil!63130))))

(declare-fun b!5658115 () Bool)

(assert (=> b!5658115 (= e!3484776 e!3484779)))

(declare-fun res!2393290 () Bool)

(assert (=> b!5658115 (=> res!2393290 e!3484779)))

(assert (=> b!5658115 (= res!2393290 call!428303)))

(declare-fun b!5658116 () Bool)

(declare-fun res!2393288 () Bool)

(assert (=> b!5658116 (=> (not res!2393288) (not e!3484778))))

(assert (=> b!5658116 (= res!2393288 (not call!428303))))

(declare-fun b!5658117 () Bool)

(declare-fun res!2393283 () Bool)

(assert (=> b!5658117 (=> res!2393283 e!3484779)))

(assert (=> b!5658117 (= res!2393283 (not (isEmpty!34976 (tail!11121 Nil!63130))))))

(declare-fun d!1786687 () Bool)

(assert (=> d!1786687 e!3484775))

(declare-fun c!994895 () Bool)

(assert (=> d!1786687 (= c!994895 ((_ is EmptyExpr!15651) (regOne!31814 r!7292)))))

(assert (=> d!1786687 (= lt!2266992 e!3484777)))

(declare-fun c!994893 () Bool)

(assert (=> d!1786687 (= c!994893 (isEmpty!34976 Nil!63130))))

(assert (=> d!1786687 (validRegex!7387 (regOne!31814 r!7292))))

(assert (=> d!1786687 (= (matchR!7836 (regOne!31814 r!7292) Nil!63130) lt!2266992)))

(declare-fun b!5658118 () Bool)

(assert (=> b!5658118 (= e!3484777 (nullable!5683 (regOne!31814 r!7292)))))

(declare-fun b!5658119 () Bool)

(declare-fun res!2393286 () Bool)

(assert (=> b!5658119 (=> (not res!2393286) (not e!3484778))))

(assert (=> b!5658119 (= res!2393286 (isEmpty!34976 (tail!11121 Nil!63130)))))

(declare-fun b!5658120 () Bool)

(declare-fun res!2393287 () Bool)

(assert (=> b!5658120 (=> res!2393287 e!3484774)))

(assert (=> b!5658120 (= res!2393287 (not ((_ is ElementMatch!15651) (regOne!31814 r!7292))))))

(assert (=> b!5658120 (= e!3484773 e!3484774)))

(declare-fun b!5658121 () Bool)

(assert (=> b!5658121 (= e!3484773 (not lt!2266992))))

(assert (= (and d!1786687 c!994893) b!5658118))

(assert (= (and d!1786687 (not c!994893)) b!5658108))

(assert (= (and d!1786687 c!994895) b!5658110))

(assert (= (and d!1786687 (not c!994895)) b!5658113))

(assert (= (and b!5658113 c!994894) b!5658121))

(assert (= (and b!5658113 (not c!994894)) b!5658120))

(assert (= (and b!5658120 (not res!2393287)) b!5658114))

(assert (= (and b!5658114 res!2393289) b!5658116))

(assert (= (and b!5658116 res!2393288) b!5658119))

(assert (= (and b!5658119 res!2393286) b!5658112))

(assert (= (and b!5658114 (not res!2393284)) b!5658109))

(assert (= (and b!5658109 res!2393285) b!5658115))

(assert (= (and b!5658115 (not res!2393290)) b!5658117))

(assert (= (and b!5658117 (not res!2393283)) b!5658111))

(assert (= (or b!5658110 b!5658115 b!5658116) bm!428298))

(declare-fun m!6623740 () Bool)

(assert (=> b!5658117 m!6623740))

(assert (=> b!5658117 m!6623740))

(declare-fun m!6623742 () Bool)

(assert (=> b!5658117 m!6623742))

(declare-fun m!6623744 () Bool)

(assert (=> b!5658112 m!6623744))

(declare-fun m!6623746 () Bool)

(assert (=> d!1786687 m!6623746))

(assert (=> d!1786687 m!6622638))

(assert (=> b!5658111 m!6623744))

(assert (=> b!5658118 m!6623530))

(assert (=> b!5658108 m!6623744))

(assert (=> b!5658108 m!6623744))

(declare-fun m!6623748 () Bool)

(assert (=> b!5658108 m!6623748))

(assert (=> b!5658108 m!6623740))

(assert (=> b!5658108 m!6623748))

(assert (=> b!5658108 m!6623740))

(declare-fun m!6623750 () Bool)

(assert (=> b!5658108 m!6623750))

(assert (=> bm!428298 m!6623746))

(assert (=> b!5658119 m!6623740))

(assert (=> b!5658119 m!6623740))

(assert (=> b!5658119 m!6623742))

(assert (=> d!1786159 d!1786687))

(assert (=> d!1786159 d!1786335))

(declare-fun b!5658125 () Bool)

(declare-fun e!3484780 () Bool)

(declare-fun tp!1567170 () Bool)

(declare-fun tp!1567174 () Bool)

(assert (=> b!5658125 (= e!3484780 (and tp!1567170 tp!1567174))))

(declare-fun b!5658124 () Bool)

(declare-fun tp!1567172 () Bool)

(assert (=> b!5658124 (= e!3484780 tp!1567172)))

(declare-fun b!5658122 () Bool)

(assert (=> b!5658122 (= e!3484780 tp_is_empty!40555)))

(assert (=> b!5657069 (= tp!1566976 e!3484780)))

(declare-fun b!5658123 () Bool)

(declare-fun tp!1567173 () Bool)

(declare-fun tp!1567171 () Bool)

(assert (=> b!5658123 (= e!3484780 (and tp!1567173 tp!1567171))))

(assert (= (and b!5657069 ((_ is ElementMatch!15651) (regOne!31815 (regTwo!31815 r!7292)))) b!5658122))

(assert (= (and b!5657069 ((_ is Concat!24496) (regOne!31815 (regTwo!31815 r!7292)))) b!5658123))

(assert (= (and b!5657069 ((_ is Star!15651) (regOne!31815 (regTwo!31815 r!7292)))) b!5658124))

(assert (= (and b!5657069 ((_ is Union!15651) (regOne!31815 (regTwo!31815 r!7292)))) b!5658125))

(declare-fun b!5658129 () Bool)

(declare-fun e!3484781 () Bool)

(declare-fun tp!1567175 () Bool)

(declare-fun tp!1567179 () Bool)

(assert (=> b!5658129 (= e!3484781 (and tp!1567175 tp!1567179))))

(declare-fun b!5658128 () Bool)

(declare-fun tp!1567177 () Bool)

(assert (=> b!5658128 (= e!3484781 tp!1567177)))

(declare-fun b!5658126 () Bool)

(assert (=> b!5658126 (= e!3484781 tp_is_empty!40555)))

(assert (=> b!5657069 (= tp!1566980 e!3484781)))

(declare-fun b!5658127 () Bool)

(declare-fun tp!1567178 () Bool)

(declare-fun tp!1567176 () Bool)

(assert (=> b!5658127 (= e!3484781 (and tp!1567178 tp!1567176))))

(assert (= (and b!5657069 ((_ is ElementMatch!15651) (regTwo!31815 (regTwo!31815 r!7292)))) b!5658126))

(assert (= (and b!5657069 ((_ is Concat!24496) (regTwo!31815 (regTwo!31815 r!7292)))) b!5658127))

(assert (= (and b!5657069 ((_ is Star!15651) (regTwo!31815 (regTwo!31815 r!7292)))) b!5658128))

(assert (= (and b!5657069 ((_ is Union!15651) (regTwo!31815 (regTwo!31815 r!7292)))) b!5658129))

(declare-fun b!5658133 () Bool)

(declare-fun e!3484782 () Bool)

(declare-fun tp!1567180 () Bool)

(declare-fun tp!1567184 () Bool)

(assert (=> b!5658133 (= e!3484782 (and tp!1567180 tp!1567184))))

(declare-fun b!5658132 () Bool)

(declare-fun tp!1567182 () Bool)

(assert (=> b!5658132 (= e!3484782 tp!1567182)))

(declare-fun b!5658130 () Bool)

(assert (=> b!5658130 (= e!3484782 tp_is_empty!40555)))

(assert (=> b!5657060 (= tp!1566968 e!3484782)))

(declare-fun b!5658131 () Bool)

(declare-fun tp!1567183 () Bool)

(declare-fun tp!1567181 () Bool)

(assert (=> b!5658131 (= e!3484782 (and tp!1567183 tp!1567181))))

(assert (= (and b!5657060 ((_ is ElementMatch!15651) (reg!15980 (regTwo!31814 r!7292)))) b!5658130))

(assert (= (and b!5657060 ((_ is Concat!24496) (reg!15980 (regTwo!31814 r!7292)))) b!5658131))

(assert (= (and b!5657060 ((_ is Star!15651) (reg!15980 (regTwo!31814 r!7292)))) b!5658132))

(assert (= (and b!5657060 ((_ is Union!15651) (reg!15980 (regTwo!31814 r!7292)))) b!5658133))

(declare-fun b!5658137 () Bool)

(declare-fun e!3484783 () Bool)

(declare-fun tp!1567185 () Bool)

(declare-fun tp!1567189 () Bool)

(assert (=> b!5658137 (= e!3484783 (and tp!1567185 tp!1567189))))

(declare-fun b!5658136 () Bool)

(declare-fun tp!1567187 () Bool)

(assert (=> b!5658136 (= e!3484783 tp!1567187)))

(declare-fun b!5658134 () Bool)

(assert (=> b!5658134 (= e!3484783 tp_is_empty!40555)))

(assert (=> b!5657061 (= tp!1566966 e!3484783)))

(declare-fun b!5658135 () Bool)

(declare-fun tp!1567188 () Bool)

(declare-fun tp!1567186 () Bool)

(assert (=> b!5658135 (= e!3484783 (and tp!1567188 tp!1567186))))

(assert (= (and b!5657061 ((_ is ElementMatch!15651) (regOne!31815 (regTwo!31814 r!7292)))) b!5658134))

(assert (= (and b!5657061 ((_ is Concat!24496) (regOne!31815 (regTwo!31814 r!7292)))) b!5658135))

(assert (= (and b!5657061 ((_ is Star!15651) (regOne!31815 (regTwo!31814 r!7292)))) b!5658136))

(assert (= (and b!5657061 ((_ is Union!15651) (regOne!31815 (regTwo!31814 r!7292)))) b!5658137))

(declare-fun b!5658141 () Bool)

(declare-fun e!3484784 () Bool)

(declare-fun tp!1567190 () Bool)

(declare-fun tp!1567194 () Bool)

(assert (=> b!5658141 (= e!3484784 (and tp!1567190 tp!1567194))))

(declare-fun b!5658140 () Bool)

(declare-fun tp!1567192 () Bool)

(assert (=> b!5658140 (= e!3484784 tp!1567192)))

(declare-fun b!5658138 () Bool)

(assert (=> b!5658138 (= e!3484784 tp_is_empty!40555)))

(assert (=> b!5657061 (= tp!1566970 e!3484784)))

(declare-fun b!5658139 () Bool)

(declare-fun tp!1567193 () Bool)

(declare-fun tp!1567191 () Bool)

(assert (=> b!5658139 (= e!3484784 (and tp!1567193 tp!1567191))))

(assert (= (and b!5657061 ((_ is ElementMatch!15651) (regTwo!31815 (regTwo!31814 r!7292)))) b!5658138))

(assert (= (and b!5657061 ((_ is Concat!24496) (regTwo!31815 (regTwo!31814 r!7292)))) b!5658139))

(assert (= (and b!5657061 ((_ is Star!15651) (regTwo!31815 (regTwo!31814 r!7292)))) b!5658140))

(assert (= (and b!5657061 ((_ is Union!15651) (regTwo!31815 (regTwo!31814 r!7292)))) b!5658141))

(declare-fun b!5658145 () Bool)

(declare-fun e!3484785 () Bool)

(declare-fun tp!1567195 () Bool)

(declare-fun tp!1567199 () Bool)

(assert (=> b!5658145 (= e!3484785 (and tp!1567195 tp!1567199))))

(declare-fun b!5658144 () Bool)

(declare-fun tp!1567197 () Bool)

(assert (=> b!5658144 (= e!3484785 tp!1567197)))

(declare-fun b!5658142 () Bool)

(assert (=> b!5658142 (= e!3484785 tp_is_empty!40555)))

(assert (=> b!5657076 (= tp!1566990 e!3484785)))

(declare-fun b!5658143 () Bool)

(declare-fun tp!1567198 () Bool)

(declare-fun tp!1567196 () Bool)

(assert (=> b!5658143 (= e!3484785 (and tp!1567198 tp!1567196))))

(assert (= (and b!5657076 ((_ is ElementMatch!15651) (regOne!31814 (reg!15980 r!7292)))) b!5658142))

(assert (= (and b!5657076 ((_ is Concat!24496) (regOne!31814 (reg!15980 r!7292)))) b!5658143))

(assert (= (and b!5657076 ((_ is Star!15651) (regOne!31814 (reg!15980 r!7292)))) b!5658144))

(assert (= (and b!5657076 ((_ is Union!15651) (regOne!31814 (reg!15980 r!7292)))) b!5658145))

(declare-fun b!5658149 () Bool)

(declare-fun e!3484786 () Bool)

(declare-fun tp!1567200 () Bool)

(declare-fun tp!1567204 () Bool)

(assert (=> b!5658149 (= e!3484786 (and tp!1567200 tp!1567204))))

(declare-fun b!5658148 () Bool)

(declare-fun tp!1567202 () Bool)

(assert (=> b!5658148 (= e!3484786 tp!1567202)))

(declare-fun b!5658146 () Bool)

(assert (=> b!5658146 (= e!3484786 tp_is_empty!40555)))

(assert (=> b!5657076 (= tp!1566988 e!3484786)))

(declare-fun b!5658147 () Bool)

(declare-fun tp!1567203 () Bool)

(declare-fun tp!1567201 () Bool)

(assert (=> b!5658147 (= e!3484786 (and tp!1567203 tp!1567201))))

(assert (= (and b!5657076 ((_ is ElementMatch!15651) (regTwo!31814 (reg!15980 r!7292)))) b!5658146))

(assert (= (and b!5657076 ((_ is Concat!24496) (regTwo!31814 (reg!15980 r!7292)))) b!5658147))

(assert (= (and b!5657076 ((_ is Star!15651) (regTwo!31814 (reg!15980 r!7292)))) b!5658148))

(assert (= (and b!5657076 ((_ is Union!15651) (regTwo!31814 (reg!15980 r!7292)))) b!5658149))

(declare-fun b!5658153 () Bool)

(declare-fun e!3484787 () Bool)

(declare-fun tp!1567205 () Bool)

(declare-fun tp!1567209 () Bool)

(assert (=> b!5658153 (= e!3484787 (and tp!1567205 tp!1567209))))

(declare-fun b!5658152 () Bool)

(declare-fun tp!1567207 () Bool)

(assert (=> b!5658152 (= e!3484787 tp!1567207)))

(declare-fun b!5658150 () Bool)

(assert (=> b!5658150 (= e!3484787 tp_is_empty!40555)))

(assert (=> b!5657077 (= tp!1566989 e!3484787)))

(declare-fun b!5658151 () Bool)

(declare-fun tp!1567208 () Bool)

(declare-fun tp!1567206 () Bool)

(assert (=> b!5658151 (= e!3484787 (and tp!1567208 tp!1567206))))

(assert (= (and b!5657077 ((_ is ElementMatch!15651) (reg!15980 (reg!15980 r!7292)))) b!5658150))

(assert (= (and b!5657077 ((_ is Concat!24496) (reg!15980 (reg!15980 r!7292)))) b!5658151))

(assert (= (and b!5657077 ((_ is Star!15651) (reg!15980 (reg!15980 r!7292)))) b!5658152))

(assert (= (and b!5657077 ((_ is Union!15651) (reg!15980 (reg!15980 r!7292)))) b!5658153))

(declare-fun b!5658157 () Bool)

(declare-fun e!3484788 () Bool)

(declare-fun tp!1567210 () Bool)

(declare-fun tp!1567214 () Bool)

(assert (=> b!5658157 (= e!3484788 (and tp!1567210 tp!1567214))))

(declare-fun b!5658156 () Bool)

(declare-fun tp!1567212 () Bool)

(assert (=> b!5658156 (= e!3484788 tp!1567212)))

(declare-fun b!5658154 () Bool)

(assert (=> b!5658154 (= e!3484788 tp_is_empty!40555)))

(assert (=> b!5657078 (= tp!1566987 e!3484788)))

(declare-fun b!5658155 () Bool)

(declare-fun tp!1567213 () Bool)

(declare-fun tp!1567211 () Bool)

(assert (=> b!5658155 (= e!3484788 (and tp!1567213 tp!1567211))))

(assert (= (and b!5657078 ((_ is ElementMatch!15651) (regOne!31815 (reg!15980 r!7292)))) b!5658154))

(assert (= (and b!5657078 ((_ is Concat!24496) (regOne!31815 (reg!15980 r!7292)))) b!5658155))

(assert (= (and b!5657078 ((_ is Star!15651) (regOne!31815 (reg!15980 r!7292)))) b!5658156))

(assert (= (and b!5657078 ((_ is Union!15651) (regOne!31815 (reg!15980 r!7292)))) b!5658157))

(declare-fun b!5658161 () Bool)

(declare-fun e!3484789 () Bool)

(declare-fun tp!1567215 () Bool)

(declare-fun tp!1567219 () Bool)

(assert (=> b!5658161 (= e!3484789 (and tp!1567215 tp!1567219))))

(declare-fun b!5658160 () Bool)

(declare-fun tp!1567217 () Bool)

(assert (=> b!5658160 (= e!3484789 tp!1567217)))

(declare-fun b!5658158 () Bool)

(assert (=> b!5658158 (= e!3484789 tp_is_empty!40555)))

(assert (=> b!5657078 (= tp!1566991 e!3484789)))

(declare-fun b!5658159 () Bool)

(declare-fun tp!1567218 () Bool)

(declare-fun tp!1567216 () Bool)

(assert (=> b!5658159 (= e!3484789 (and tp!1567218 tp!1567216))))

(assert (= (and b!5657078 ((_ is ElementMatch!15651) (regTwo!31815 (reg!15980 r!7292)))) b!5658158))

(assert (= (and b!5657078 ((_ is Concat!24496) (regTwo!31815 (reg!15980 r!7292)))) b!5658159))

(assert (= (and b!5657078 ((_ is Star!15651) (regTwo!31815 (reg!15980 r!7292)))) b!5658160))

(assert (= (and b!5657078 ((_ is Union!15651) (regTwo!31815 (reg!15980 r!7292)))) b!5658161))

(declare-fun b!5658165 () Bool)

(declare-fun e!3484790 () Bool)

(declare-fun tp!1567220 () Bool)

(declare-fun tp!1567224 () Bool)

(assert (=> b!5658165 (= e!3484790 (and tp!1567220 tp!1567224))))

(declare-fun b!5658164 () Bool)

(declare-fun tp!1567222 () Bool)

(assert (=> b!5658164 (= e!3484790 tp!1567222)))

(declare-fun b!5658162 () Bool)

(assert (=> b!5658162 (= e!3484790 tp_is_empty!40555)))

(assert (=> b!5657064 (= tp!1566973 e!3484790)))

(declare-fun b!5658163 () Bool)

(declare-fun tp!1567223 () Bool)

(declare-fun tp!1567221 () Bool)

(assert (=> b!5658163 (= e!3484790 (and tp!1567223 tp!1567221))))

(assert (= (and b!5657064 ((_ is ElementMatch!15651) (reg!15980 (regOne!31815 r!7292)))) b!5658162))

(assert (= (and b!5657064 ((_ is Concat!24496) (reg!15980 (regOne!31815 r!7292)))) b!5658163))

(assert (= (and b!5657064 ((_ is Star!15651) (reg!15980 (regOne!31815 r!7292)))) b!5658164))

(assert (= (and b!5657064 ((_ is Union!15651) (reg!15980 (regOne!31815 r!7292)))) b!5658165))

(declare-fun b!5658169 () Bool)

(declare-fun e!3484791 () Bool)

(declare-fun tp!1567225 () Bool)

(declare-fun tp!1567229 () Bool)

(assert (=> b!5658169 (= e!3484791 (and tp!1567225 tp!1567229))))

(declare-fun b!5658168 () Bool)

(declare-fun tp!1567227 () Bool)

(assert (=> b!5658168 (= e!3484791 tp!1567227)))

(declare-fun b!5658166 () Bool)

(assert (=> b!5658166 (= e!3484791 tp_is_empty!40555)))

(assert (=> b!5657079 (= tp!1566992 e!3484791)))

(declare-fun b!5658167 () Bool)

(declare-fun tp!1567228 () Bool)

(declare-fun tp!1567226 () Bool)

(assert (=> b!5658167 (= e!3484791 (and tp!1567228 tp!1567226))))

(assert (= (and b!5657079 ((_ is ElementMatch!15651) (h!69576 (exprs!5535 setElem!37822)))) b!5658166))

(assert (= (and b!5657079 ((_ is Concat!24496) (h!69576 (exprs!5535 setElem!37822)))) b!5658167))

(assert (= (and b!5657079 ((_ is Star!15651) (h!69576 (exprs!5535 setElem!37822)))) b!5658168))

(assert (= (and b!5657079 ((_ is Union!15651) (h!69576 (exprs!5535 setElem!37822)))) b!5658169))

(declare-fun b!5658170 () Bool)

(declare-fun e!3484792 () Bool)

(declare-fun tp!1567230 () Bool)

(declare-fun tp!1567231 () Bool)

(assert (=> b!5658170 (= e!3484792 (and tp!1567230 tp!1567231))))

(assert (=> b!5657079 (= tp!1566993 e!3484792)))

(assert (= (and b!5657079 ((_ is Cons!63128) (t!376554 (exprs!5535 setElem!37822)))) b!5658170))

(declare-fun b!5658174 () Bool)

(declare-fun e!3484793 () Bool)

(declare-fun tp!1567232 () Bool)

(declare-fun tp!1567236 () Bool)

(assert (=> b!5658174 (= e!3484793 (and tp!1567232 tp!1567236))))

(declare-fun b!5658173 () Bool)

(declare-fun tp!1567234 () Bool)

(assert (=> b!5658173 (= e!3484793 tp!1567234)))

(declare-fun b!5658171 () Bool)

(assert (=> b!5658171 (= e!3484793 tp_is_empty!40555)))

(assert (=> b!5657063 (= tp!1566974 e!3484793)))

(declare-fun b!5658172 () Bool)

(declare-fun tp!1567235 () Bool)

(declare-fun tp!1567233 () Bool)

(assert (=> b!5658172 (= e!3484793 (and tp!1567235 tp!1567233))))

(assert (= (and b!5657063 ((_ is ElementMatch!15651) (regOne!31814 (regOne!31815 r!7292)))) b!5658171))

(assert (= (and b!5657063 ((_ is Concat!24496) (regOne!31814 (regOne!31815 r!7292)))) b!5658172))

(assert (= (and b!5657063 ((_ is Star!15651) (regOne!31814 (regOne!31815 r!7292)))) b!5658173))

(assert (= (and b!5657063 ((_ is Union!15651) (regOne!31814 (regOne!31815 r!7292)))) b!5658174))

(declare-fun b!5658178 () Bool)

(declare-fun e!3484794 () Bool)

(declare-fun tp!1567237 () Bool)

(declare-fun tp!1567241 () Bool)

(assert (=> b!5658178 (= e!3484794 (and tp!1567237 tp!1567241))))

(declare-fun b!5658177 () Bool)

(declare-fun tp!1567239 () Bool)

(assert (=> b!5658177 (= e!3484794 tp!1567239)))

(declare-fun b!5658175 () Bool)

(assert (=> b!5658175 (= e!3484794 tp_is_empty!40555)))

(assert (=> b!5657063 (= tp!1566972 e!3484794)))

(declare-fun b!5658176 () Bool)

(declare-fun tp!1567240 () Bool)

(declare-fun tp!1567238 () Bool)

(assert (=> b!5658176 (= e!3484794 (and tp!1567240 tp!1567238))))

(assert (= (and b!5657063 ((_ is ElementMatch!15651) (regTwo!31814 (regOne!31815 r!7292)))) b!5658175))

(assert (= (and b!5657063 ((_ is Concat!24496) (regTwo!31814 (regOne!31815 r!7292)))) b!5658176))

(assert (= (and b!5657063 ((_ is Star!15651) (regTwo!31814 (regOne!31815 r!7292)))) b!5658177))

(assert (= (and b!5657063 ((_ is Union!15651) (regTwo!31814 (regOne!31815 r!7292)))) b!5658178))

(declare-fun b!5658182 () Bool)

(declare-fun e!3484795 () Bool)

(declare-fun tp!1567242 () Bool)

(declare-fun tp!1567246 () Bool)

(assert (=> b!5658182 (= e!3484795 (and tp!1567242 tp!1567246))))

(declare-fun b!5658181 () Bool)

(declare-fun tp!1567244 () Bool)

(assert (=> b!5658181 (= e!3484795 tp!1567244)))

(declare-fun b!5658179 () Bool)

(assert (=> b!5658179 (= e!3484795 tp_is_empty!40555)))

(assert (=> b!5657065 (= tp!1566971 e!3484795)))

(declare-fun b!5658180 () Bool)

(declare-fun tp!1567245 () Bool)

(declare-fun tp!1567243 () Bool)

(assert (=> b!5658180 (= e!3484795 (and tp!1567245 tp!1567243))))

(assert (= (and b!5657065 ((_ is ElementMatch!15651) (regOne!31815 (regOne!31815 r!7292)))) b!5658179))

(assert (= (and b!5657065 ((_ is Concat!24496) (regOne!31815 (regOne!31815 r!7292)))) b!5658180))

(assert (= (and b!5657065 ((_ is Star!15651) (regOne!31815 (regOne!31815 r!7292)))) b!5658181))

(assert (= (and b!5657065 ((_ is Union!15651) (regOne!31815 (regOne!31815 r!7292)))) b!5658182))

(declare-fun b!5658186 () Bool)

(declare-fun e!3484796 () Bool)

(declare-fun tp!1567247 () Bool)

(declare-fun tp!1567251 () Bool)

(assert (=> b!5658186 (= e!3484796 (and tp!1567247 tp!1567251))))

(declare-fun b!5658185 () Bool)

(declare-fun tp!1567249 () Bool)

(assert (=> b!5658185 (= e!3484796 tp!1567249)))

(declare-fun b!5658183 () Bool)

(assert (=> b!5658183 (= e!3484796 tp_is_empty!40555)))

(assert (=> b!5657065 (= tp!1566975 e!3484796)))

(declare-fun b!5658184 () Bool)

(declare-fun tp!1567250 () Bool)

(declare-fun tp!1567248 () Bool)

(assert (=> b!5658184 (= e!3484796 (and tp!1567250 tp!1567248))))

(assert (= (and b!5657065 ((_ is ElementMatch!15651) (regTwo!31815 (regOne!31815 r!7292)))) b!5658183))

(assert (= (and b!5657065 ((_ is Concat!24496) (regTwo!31815 (regOne!31815 r!7292)))) b!5658184))

(assert (= (and b!5657065 ((_ is Star!15651) (regTwo!31815 (regOne!31815 r!7292)))) b!5658185))

(assert (= (and b!5657065 ((_ is Union!15651) (regTwo!31815 (regOne!31815 r!7292)))) b!5658186))

(declare-fun b!5658190 () Bool)

(declare-fun e!3484797 () Bool)

(declare-fun tp!1567252 () Bool)

(declare-fun tp!1567256 () Bool)

(assert (=> b!5658190 (= e!3484797 (and tp!1567252 tp!1567256))))

(declare-fun b!5658189 () Bool)

(declare-fun tp!1567254 () Bool)

(assert (=> b!5658189 (= e!3484797 tp!1567254)))

(declare-fun b!5658187 () Bool)

(assert (=> b!5658187 (= e!3484797 tp_is_empty!40555)))

(assert (=> b!5657056 (= tp!1566963 e!3484797)))

(declare-fun b!5658188 () Bool)

(declare-fun tp!1567255 () Bool)

(declare-fun tp!1567253 () Bool)

(assert (=> b!5658188 (= e!3484797 (and tp!1567255 tp!1567253))))

(assert (= (and b!5657056 ((_ is ElementMatch!15651) (reg!15980 (regOne!31814 r!7292)))) b!5658187))

(assert (= (and b!5657056 ((_ is Concat!24496) (reg!15980 (regOne!31814 r!7292)))) b!5658188))

(assert (= (and b!5657056 ((_ is Star!15651) (reg!15980 (regOne!31814 r!7292)))) b!5658189))

(assert (= (and b!5657056 ((_ is Union!15651) (reg!15980 (regOne!31814 r!7292)))) b!5658190))

(declare-fun b!5658194 () Bool)

(declare-fun e!3484798 () Bool)

(declare-fun tp!1567257 () Bool)

(declare-fun tp!1567261 () Bool)

(assert (=> b!5658194 (= e!3484798 (and tp!1567257 tp!1567261))))

(declare-fun b!5658193 () Bool)

(declare-fun tp!1567259 () Bool)

(assert (=> b!5658193 (= e!3484798 tp!1567259)))

(declare-fun b!5658191 () Bool)

(assert (=> b!5658191 (= e!3484798 tp_is_empty!40555)))

(assert (=> b!5657055 (= tp!1566964 e!3484798)))

(declare-fun b!5658192 () Bool)

(declare-fun tp!1567260 () Bool)

(declare-fun tp!1567258 () Bool)

(assert (=> b!5658192 (= e!3484798 (and tp!1567260 tp!1567258))))

(assert (= (and b!5657055 ((_ is ElementMatch!15651) (regOne!31814 (regOne!31814 r!7292)))) b!5658191))

(assert (= (and b!5657055 ((_ is Concat!24496) (regOne!31814 (regOne!31814 r!7292)))) b!5658192))

(assert (= (and b!5657055 ((_ is Star!15651) (regOne!31814 (regOne!31814 r!7292)))) b!5658193))

(assert (= (and b!5657055 ((_ is Union!15651) (regOne!31814 (regOne!31814 r!7292)))) b!5658194))

(declare-fun b!5658198 () Bool)

(declare-fun e!3484799 () Bool)

(declare-fun tp!1567262 () Bool)

(declare-fun tp!1567266 () Bool)

(assert (=> b!5658198 (= e!3484799 (and tp!1567262 tp!1567266))))

(declare-fun b!5658197 () Bool)

(declare-fun tp!1567264 () Bool)

(assert (=> b!5658197 (= e!3484799 tp!1567264)))

(declare-fun b!5658195 () Bool)

(assert (=> b!5658195 (= e!3484799 tp_is_empty!40555)))

(assert (=> b!5657055 (= tp!1566962 e!3484799)))

(declare-fun b!5658196 () Bool)

(declare-fun tp!1567265 () Bool)

(declare-fun tp!1567263 () Bool)

(assert (=> b!5658196 (= e!3484799 (and tp!1567265 tp!1567263))))

(assert (= (and b!5657055 ((_ is ElementMatch!15651) (regTwo!31814 (regOne!31814 r!7292)))) b!5658195))

(assert (= (and b!5657055 ((_ is Concat!24496) (regTwo!31814 (regOne!31814 r!7292)))) b!5658196))

(assert (= (and b!5657055 ((_ is Star!15651) (regTwo!31814 (regOne!31814 r!7292)))) b!5658197))

(assert (= (and b!5657055 ((_ is Union!15651) (regTwo!31814 (regOne!31814 r!7292)))) b!5658198))

(declare-fun b!5658202 () Bool)

(declare-fun e!3484800 () Bool)

(declare-fun tp!1567267 () Bool)

(declare-fun tp!1567271 () Bool)

(assert (=> b!5658202 (= e!3484800 (and tp!1567267 tp!1567271))))

(declare-fun b!5658201 () Bool)

(declare-fun tp!1567269 () Bool)

(assert (=> b!5658201 (= e!3484800 tp!1567269)))

(declare-fun b!5658199 () Bool)

(assert (=> b!5658199 (= e!3484800 tp_is_empty!40555)))

(assert (=> b!5657057 (= tp!1566961 e!3484800)))

(declare-fun b!5658200 () Bool)

(declare-fun tp!1567270 () Bool)

(declare-fun tp!1567268 () Bool)

(assert (=> b!5658200 (= e!3484800 (and tp!1567270 tp!1567268))))

(assert (= (and b!5657057 ((_ is ElementMatch!15651) (regOne!31815 (regOne!31814 r!7292)))) b!5658199))

(assert (= (and b!5657057 ((_ is Concat!24496) (regOne!31815 (regOne!31814 r!7292)))) b!5658200))

(assert (= (and b!5657057 ((_ is Star!15651) (regOne!31815 (regOne!31814 r!7292)))) b!5658201))

(assert (= (and b!5657057 ((_ is Union!15651) (regOne!31815 (regOne!31814 r!7292)))) b!5658202))

(declare-fun b!5658206 () Bool)

(declare-fun e!3484801 () Bool)

(declare-fun tp!1567272 () Bool)

(declare-fun tp!1567276 () Bool)

(assert (=> b!5658206 (= e!3484801 (and tp!1567272 tp!1567276))))

(declare-fun b!5658205 () Bool)

(declare-fun tp!1567274 () Bool)

(assert (=> b!5658205 (= e!3484801 tp!1567274)))

(declare-fun b!5658203 () Bool)

(assert (=> b!5658203 (= e!3484801 tp_is_empty!40555)))

(assert (=> b!5657057 (= tp!1566965 e!3484801)))

(declare-fun b!5658204 () Bool)

(declare-fun tp!1567275 () Bool)

(declare-fun tp!1567273 () Bool)

(assert (=> b!5658204 (= e!3484801 (and tp!1567275 tp!1567273))))

(assert (= (and b!5657057 ((_ is ElementMatch!15651) (regTwo!31815 (regOne!31814 r!7292)))) b!5658203))

(assert (= (and b!5657057 ((_ is Concat!24496) (regTwo!31815 (regOne!31814 r!7292)))) b!5658204))

(assert (= (and b!5657057 ((_ is Star!15651) (regTwo!31815 (regOne!31814 r!7292)))) b!5658205))

(assert (= (and b!5657057 ((_ is Union!15651) (regTwo!31815 (regOne!31814 r!7292)))) b!5658206))

(declare-fun condSetEmpty!37838 () Bool)

(assert (=> setNonEmpty!37828 (= condSetEmpty!37838 (= setRest!37828 ((as const (Array Context!10070 Bool)) false)))))

(declare-fun setRes!37838 () Bool)

(assert (=> setNonEmpty!37828 (= tp!1566985 setRes!37838)))

(declare-fun setIsEmpty!37838 () Bool)

(assert (=> setIsEmpty!37838 setRes!37838))

(declare-fun setElem!37838 () Context!10070)

(declare-fun tp!1567277 () Bool)

(declare-fun e!3484802 () Bool)

(declare-fun setNonEmpty!37838 () Bool)

(assert (=> setNonEmpty!37838 (= setRes!37838 (and tp!1567277 (inv!82374 setElem!37838) e!3484802))))

(declare-fun setRest!37838 () (InoxSet Context!10070))

(assert (=> setNonEmpty!37838 (= setRest!37828 ((_ map or) (store ((as const (Array Context!10070 Bool)) false) setElem!37838 true) setRest!37838))))

(declare-fun b!5658207 () Bool)

(declare-fun tp!1567278 () Bool)

(assert (=> b!5658207 (= e!3484802 tp!1567278)))

(assert (= (and setNonEmpty!37828 condSetEmpty!37838) setIsEmpty!37838))

(assert (= (and setNonEmpty!37828 (not condSetEmpty!37838)) setNonEmpty!37838))

(assert (= setNonEmpty!37838 b!5658207))

(declare-fun m!6623752 () Bool)

(assert (=> setNonEmpty!37838 m!6623752))

(declare-fun b!5658208 () Bool)

(declare-fun e!3484803 () Bool)

(declare-fun tp!1567279 () Bool)

(declare-fun tp!1567280 () Bool)

(assert (=> b!5658208 (= e!3484803 (and tp!1567279 tp!1567280))))

(assert (=> b!5657074 (= tp!1566986 e!3484803)))

(assert (= (and b!5657074 ((_ is Cons!63128) (exprs!5535 setElem!37828))) b!5658208))

(declare-fun b!5658209 () Bool)

(declare-fun e!3484804 () Bool)

(declare-fun tp!1567281 () Bool)

(assert (=> b!5658209 (= e!3484804 (and tp_is_empty!40555 tp!1567281))))

(assert (=> b!5657035 (= tp!1566944 e!3484804)))

(assert (= (and b!5657035 ((_ is Cons!63130) (t!376556 (t!376556 s!2326)))) b!5658209))

(declare-fun b!5658211 () Bool)

(declare-fun e!3484806 () Bool)

(declare-fun tp!1567282 () Bool)

(assert (=> b!5658211 (= e!3484806 tp!1567282)))

(declare-fun e!3484805 () Bool)

(declare-fun b!5658210 () Bool)

(declare-fun tp!1567283 () Bool)

(assert (=> b!5658210 (= e!3484805 (and (inv!82374 (h!69577 (t!376555 (t!376555 zl!343)))) e!3484806 tp!1567283))))

(assert (=> b!5657042 (= tp!1566950 e!3484805)))

(assert (= b!5658210 b!5658211))

(assert (= (and b!5657042 ((_ is Cons!63129) (t!376555 (t!376555 zl!343)))) b!5658210))

(declare-fun m!6623754 () Bool)

(assert (=> b!5658210 m!6623754))

(declare-fun b!5658212 () Bool)

(declare-fun e!3484807 () Bool)

(declare-fun tp!1567284 () Bool)

(declare-fun tp!1567285 () Bool)

(assert (=> b!5658212 (= e!3484807 (and tp!1567284 tp!1567285))))

(assert (=> b!5657043 (= tp!1566949 e!3484807)))

(assert (= (and b!5657043 ((_ is Cons!63128) (exprs!5535 (h!69577 (t!376555 zl!343))))) b!5658212))

(declare-fun b!5658216 () Bool)

(declare-fun e!3484808 () Bool)

(declare-fun tp!1567286 () Bool)

(declare-fun tp!1567290 () Bool)

(assert (=> b!5658216 (= e!3484808 (and tp!1567286 tp!1567290))))

(declare-fun b!5658215 () Bool)

(declare-fun tp!1567288 () Bool)

(assert (=> b!5658215 (= e!3484808 tp!1567288)))

(declare-fun b!5658213 () Bool)

(assert (=> b!5658213 (= e!3484808 tp_is_empty!40555)))

(assert (=> b!5657067 (= tp!1566979 e!3484808)))

(declare-fun b!5658214 () Bool)

(declare-fun tp!1567289 () Bool)

(declare-fun tp!1567287 () Bool)

(assert (=> b!5658214 (= e!3484808 (and tp!1567289 tp!1567287))))

(assert (= (and b!5657067 ((_ is ElementMatch!15651) (regOne!31814 (regTwo!31815 r!7292)))) b!5658213))

(assert (= (and b!5657067 ((_ is Concat!24496) (regOne!31814 (regTwo!31815 r!7292)))) b!5658214))

(assert (= (and b!5657067 ((_ is Star!15651) (regOne!31814 (regTwo!31815 r!7292)))) b!5658215))

(assert (= (and b!5657067 ((_ is Union!15651) (regOne!31814 (regTwo!31815 r!7292)))) b!5658216))

(declare-fun b!5658220 () Bool)

(declare-fun e!3484809 () Bool)

(declare-fun tp!1567291 () Bool)

(declare-fun tp!1567295 () Bool)

(assert (=> b!5658220 (= e!3484809 (and tp!1567291 tp!1567295))))

(declare-fun b!5658219 () Bool)

(declare-fun tp!1567293 () Bool)

(assert (=> b!5658219 (= e!3484809 tp!1567293)))

(declare-fun b!5658217 () Bool)

(assert (=> b!5658217 (= e!3484809 tp_is_empty!40555)))

(assert (=> b!5657067 (= tp!1566977 e!3484809)))

(declare-fun b!5658218 () Bool)

(declare-fun tp!1567294 () Bool)

(declare-fun tp!1567292 () Bool)

(assert (=> b!5658218 (= e!3484809 (and tp!1567294 tp!1567292))))

(assert (= (and b!5657067 ((_ is ElementMatch!15651) (regTwo!31814 (regTwo!31815 r!7292)))) b!5658217))

(assert (= (and b!5657067 ((_ is Concat!24496) (regTwo!31814 (regTwo!31815 r!7292)))) b!5658218))

(assert (= (and b!5657067 ((_ is Star!15651) (regTwo!31814 (regTwo!31815 r!7292)))) b!5658219))

(assert (= (and b!5657067 ((_ is Union!15651) (regTwo!31814 (regTwo!31815 r!7292)))) b!5658220))

(declare-fun b!5658224 () Bool)

(declare-fun e!3484810 () Bool)

(declare-fun tp!1567296 () Bool)

(declare-fun tp!1567300 () Bool)

(assert (=> b!5658224 (= e!3484810 (and tp!1567296 tp!1567300))))

(declare-fun b!5658223 () Bool)

(declare-fun tp!1567298 () Bool)

(assert (=> b!5658223 (= e!3484810 tp!1567298)))

(declare-fun b!5658221 () Bool)

(assert (=> b!5658221 (= e!3484810 tp_is_empty!40555)))

(assert (=> b!5657059 (= tp!1566969 e!3484810)))

(declare-fun b!5658222 () Bool)

(declare-fun tp!1567299 () Bool)

(declare-fun tp!1567297 () Bool)

(assert (=> b!5658222 (= e!3484810 (and tp!1567299 tp!1567297))))

(assert (= (and b!5657059 ((_ is ElementMatch!15651) (regOne!31814 (regTwo!31814 r!7292)))) b!5658221))

(assert (= (and b!5657059 ((_ is Concat!24496) (regOne!31814 (regTwo!31814 r!7292)))) b!5658222))

(assert (= (and b!5657059 ((_ is Star!15651) (regOne!31814 (regTwo!31814 r!7292)))) b!5658223))

(assert (= (and b!5657059 ((_ is Union!15651) (regOne!31814 (regTwo!31814 r!7292)))) b!5658224))

(declare-fun b!5658228 () Bool)

(declare-fun e!3484811 () Bool)

(declare-fun tp!1567301 () Bool)

(declare-fun tp!1567305 () Bool)

(assert (=> b!5658228 (= e!3484811 (and tp!1567301 tp!1567305))))

(declare-fun b!5658227 () Bool)

(declare-fun tp!1567303 () Bool)

(assert (=> b!5658227 (= e!3484811 tp!1567303)))

(declare-fun b!5658225 () Bool)

(assert (=> b!5658225 (= e!3484811 tp_is_empty!40555)))

(assert (=> b!5657059 (= tp!1566967 e!3484811)))

(declare-fun b!5658226 () Bool)

(declare-fun tp!1567304 () Bool)

(declare-fun tp!1567302 () Bool)

(assert (=> b!5658226 (= e!3484811 (and tp!1567304 tp!1567302))))

(assert (= (and b!5657059 ((_ is ElementMatch!15651) (regTwo!31814 (regTwo!31814 r!7292)))) b!5658225))

(assert (= (and b!5657059 ((_ is Concat!24496) (regTwo!31814 (regTwo!31814 r!7292)))) b!5658226))

(assert (= (and b!5657059 ((_ is Star!15651) (regTwo!31814 (regTwo!31814 r!7292)))) b!5658227))

(assert (= (and b!5657059 ((_ is Union!15651) (regTwo!31814 (regTwo!31814 r!7292)))) b!5658228))

(declare-fun b!5658232 () Bool)

(declare-fun e!3484812 () Bool)

(declare-fun tp!1567306 () Bool)

(declare-fun tp!1567310 () Bool)

(assert (=> b!5658232 (= e!3484812 (and tp!1567306 tp!1567310))))

(declare-fun b!5658231 () Bool)

(declare-fun tp!1567308 () Bool)

(assert (=> b!5658231 (= e!3484812 tp!1567308)))

(declare-fun b!5658229 () Bool)

(assert (=> b!5658229 (= e!3484812 tp_is_empty!40555)))

(assert (=> b!5657030 (= tp!1566940 e!3484812)))

(declare-fun b!5658230 () Bool)

(declare-fun tp!1567309 () Bool)

(declare-fun tp!1567307 () Bool)

(assert (=> b!5658230 (= e!3484812 (and tp!1567309 tp!1567307))))

(assert (= (and b!5657030 ((_ is ElementMatch!15651) (h!69576 (exprs!5535 (h!69577 zl!343))))) b!5658229))

(assert (= (and b!5657030 ((_ is Concat!24496) (h!69576 (exprs!5535 (h!69577 zl!343))))) b!5658230))

(assert (= (and b!5657030 ((_ is Star!15651) (h!69576 (exprs!5535 (h!69577 zl!343))))) b!5658231))

(assert (= (and b!5657030 ((_ is Union!15651) (h!69576 (exprs!5535 (h!69577 zl!343))))) b!5658232))

(declare-fun b!5658233 () Bool)

(declare-fun e!3484813 () Bool)

(declare-fun tp!1567311 () Bool)

(declare-fun tp!1567312 () Bool)

(assert (=> b!5658233 (= e!3484813 (and tp!1567311 tp!1567312))))

(assert (=> b!5657030 (= tp!1566941 e!3484813)))

(assert (= (and b!5657030 ((_ is Cons!63128) (t!376554 (exprs!5535 (h!69577 zl!343))))) b!5658233))

(declare-fun b!5658237 () Bool)

(declare-fun e!3484814 () Bool)

(declare-fun tp!1567313 () Bool)

(declare-fun tp!1567317 () Bool)

(assert (=> b!5658237 (= e!3484814 (and tp!1567313 tp!1567317))))

(declare-fun b!5658236 () Bool)

(declare-fun tp!1567315 () Bool)

(assert (=> b!5658236 (= e!3484814 tp!1567315)))

(declare-fun b!5658234 () Bool)

(assert (=> b!5658234 (= e!3484814 tp_is_empty!40555)))

(assert (=> b!5657068 (= tp!1566978 e!3484814)))

(declare-fun b!5658235 () Bool)

(declare-fun tp!1567316 () Bool)

(declare-fun tp!1567314 () Bool)

(assert (=> b!5658235 (= e!3484814 (and tp!1567316 tp!1567314))))

(assert (= (and b!5657068 ((_ is ElementMatch!15651) (reg!15980 (regTwo!31815 r!7292)))) b!5658234))

(assert (= (and b!5657068 ((_ is Concat!24496) (reg!15980 (regTwo!31815 r!7292)))) b!5658235))

(assert (= (and b!5657068 ((_ is Star!15651) (reg!15980 (regTwo!31815 r!7292)))) b!5658236))

(assert (= (and b!5657068 ((_ is Union!15651) (reg!15980 (regTwo!31815 r!7292)))) b!5658237))

(declare-fun b_lambda!213941 () Bool)

(assert (= b_lambda!213937 (or b!5656316 b_lambda!213941)))

(assert (=> d!1786669 d!1786229))

(declare-fun b_lambda!213943 () Bool)

(assert (= b_lambda!213909 (or d!1786207 b_lambda!213943)))

(declare-fun bs!1315589 () Bool)

(declare-fun d!1786689 () Bool)

(assert (= bs!1315589 (and d!1786689 d!1786207)))

(assert (=> bs!1315589 (= (dynLambda!24696 lambda!304502 (h!69576 (unfocusZipperList!1079 zl!343))) (validRegex!7387 (h!69576 (unfocusZipperList!1079 zl!343))))))

(declare-fun m!6623756 () Bool)

(assert (=> bs!1315589 m!6623756))

(assert (=> b!5657439 d!1786689))

(declare-fun b_lambda!213945 () Bool)

(assert (= b_lambda!213915 (or d!1786153 b_lambda!213945)))

(declare-fun bs!1315590 () Bool)

(declare-fun d!1786691 () Bool)

(assert (= bs!1315590 (and d!1786691 d!1786153)))

(assert (=> bs!1315590 (= (dynLambda!24696 lambda!304478 (h!69576 (exprs!5535 setElem!37822))) (validRegex!7387 (h!69576 (exprs!5535 setElem!37822))))))

(declare-fun m!6623758 () Bool)

(assert (=> bs!1315590 m!6623758))

(assert (=> b!5657718 d!1786691))

(declare-fun b_lambda!213947 () Bool)

(assert (= b_lambda!213939 (or d!1786131 b_lambda!213947)))

(declare-fun bs!1315591 () Bool)

(declare-fun d!1786693 () Bool)

(assert (= bs!1315591 (and d!1786693 d!1786131)))

(assert (=> bs!1315591 (= (dynLambda!24696 lambda!304468 (h!69576 (exprs!5535 (h!69577 zl!343)))) (validRegex!7387 (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(declare-fun m!6623760 () Bool)

(assert (=> bs!1315591 m!6623760))

(assert (=> b!5658098 d!1786693))

(declare-fun b_lambda!213949 () Bool)

(assert (= b_lambda!213905 (or d!1786209 b_lambda!213949)))

(declare-fun bs!1315592 () Bool)

(declare-fun d!1786695 () Bool)

(assert (= bs!1315592 (and d!1786695 d!1786209)))

(assert (=> bs!1315592 (= (dynLambda!24696 lambda!304505 (h!69576 lt!2266927)) (validRegex!7387 (h!69576 lt!2266927)))))

(declare-fun m!6623762 () Bool)

(assert (=> bs!1315592 m!6623762))

(assert (=> b!5657426 d!1786695))

(declare-fun b_lambda!213951 () Bool)

(assert (= b_lambda!213921 (or b!5656316 b_lambda!213951)))

(assert (=> d!1786561 d!1786227))

(declare-fun b_lambda!213953 () Bool)

(assert (= b_lambda!213917 (or d!1786143 b_lambda!213953)))

(declare-fun bs!1315593 () Bool)

(declare-fun d!1786697 () Bool)

(assert (= bs!1315593 (and d!1786697 d!1786143)))

(assert (=> bs!1315593 (= (dynLambda!24696 lambda!304477 (h!69576 (exprs!5535 (h!69577 zl!343)))) (validRegex!7387 (h!69576 (exprs!5535 (h!69577 zl!343)))))))

(assert (=> bs!1315593 m!6623760))

(assert (=> b!5657729 d!1786697))

(check-sat (not bm!428204) (not b!5658208) (not b!5657945) (not d!1786593) (not b!5658232) (not bm!428169) (not b!5657452) (not b!5657898) (not bm!428170) (not b!5657953) (not b!5658164) (not b!5658161) (not bm!428298) (not bm!428276) (not bm!428240) (not b!5658156) (not b_lambda!213897) (not b!5658193) (not d!1786631) (not bm!428236) (not b!5658174) (not b!5657793) (not b!5658049) (not d!1786653) (not d!1786675) (not bm!428219) (not b!5658111) (not b!5657417) (not bm!428214) (not bm!428250) (not b!5657736) (not b!5657595) (not b!5657412) (not b!5658080) (not bm!428291) (not bm!428269) (not b!5658194) (not b!5657781) (not d!1786661) (not b!5657440) (not b!5658108) (not b!5658147) (not d!1786683) (not bs!1315591) (not bm!428202) (not b!5657767) (not bm!428239) (not b!5658149) (not setNonEmpty!37834) (not b!5657637) (not d!1786511) (not b!5658230) (not b!5657678) (not b!5658192) (not b!5658176) (not b!5657860) (not bm!428173) (not b!5658045) (not b!5658087) (not b!5658231) (not b!5658197) (not b!5657863) (not b!5657525) (not b!5658215) (not b!5657956) (not d!1786355) (not d!1786443) (not bs!1315590) (not b!5658125) (not b_lambda!213953) (not b!5658135) (not b!5657411) (not b!5658123) (not b!5658210) (not b!5657419) (not b!5658063) (not b!5657677) (not b!5658088) (not bm!428201) (not b!5657645) (not bm!428167) (not d!1786629) (not b!5657816) (not b!5657822) (not b!5658140) (not bm!428251) (not bm!428245) (not b!5657493) (not b!5658151) (not b!5658222) (not bm!428293) (not b!5658124) (not b!5657619) (not b!5658096) (not bm!428242) (not b!5658071) (not b!5658099) (not b!5658227) (not b!5658204) (not b!5658226) (not b!5658223) (not d!1786665) (not b!5657325) tp_is_empty!40555 (not d!1786501) (not b!5658004) (not bm!428284) (not bs!1315589) (not b!5658219) (not b!5658159) (not d!1786639) (not b!5658148) (not b!5658139) (not b!5657719) (not b!5658211) (not d!1786573) (not bs!1315593) (not bm!428174) (not b!5657596) (not d!1786463) (not d!1786565) (not d!1786681) (not b!5658214) (not b!5658068) (not b!5657646) (not b!5658196) (not b!5658077) (not b!5658167) (not d!1786569) (not b!5658181) (not b!5658041) (not d!1786669) (not b!5658152) (not bm!428259) (not bs!1315592) (not bm!428215) (not b!5657737) (not d!1786587) (not b!5657680) (not b!5657455) (not b!5657862) (not b!5657408) (not d!1786671) (not d!1786459) (not b!5658178) (not bm!428272) (not b!5658144) (not b!5658220) (not bm!428295) (not b!5658165) (not d!1786663) (not b_lambda!213943) (not d!1786493) (not d!1786643) (not b!5658131) (not b!5657813) (not bm!428268) (not bm!428217) (not b!5658066) (not b!5657733) (not bm!428135) (not d!1786317) (not d!1786455) (not d!1786367) (not b!5658170) (not d!1786589) (not b!5658097) (not d!1786503) (not setNonEmpty!37836) (not b!5658173) (not b!5658182) (not b!5658095) (not b!5658143) (not b!5658236) (not b!5657915) (not bm!428287) (not b!5658112) (not b!5658072) (not b!5658157) (not b!5657957) (not d!1786561) (not b!5658065) (not b!5658189) (not d!1786341) (not bm!428257) (not b!5657858) (not b!5658237) (not b!5658212) (not d!1786617) (not d!1786339) (not d!1786319) (not b!5657962) (not b!5657638) (not b!5657600) (not b!5657591) (not b!5657675) (not bm!428203) (not b!5657861) (not b!5658180) (not b!5657534) (not b_lambda!213951) (not b!5658082) (not d!1786553) (not bm!428229) (not d!1786585) (not b!5657512) (not b!5658074) (not b!5658128) (not b!5658198) (not b!5658153) (not bm!428253) (not b!5658228) (not bm!428286) (not d!1786601) (not b!5657531) (not bm!428234) (not b!5657743) (not b!5658127) (not d!1786651) (not d!1786685) (not b!5658218) (not b!5658160) (not b!5657817) (not d!1786581) (not b!5657794) (not b!5658172) (not b!5657418) (not b!5658206) (not bm!428252) (not b_lambda!213895) (not b!5658169) (not bm!428249) (not b!5658129) (not b_lambda!213949) (not b!5658200) (not b!5658145) (not b!5657427) (not bm!428213) (not b!5657721) (not b!5658132) (not d!1786647) (not b!5657429) (not b!5657789) (not b_lambda!213941) (not b!5657744) (not b!5658190) (not bm!428296) (not b!5657823) (not b!5658188) (not b!5658059) (not bm!428152) (not d!1786641) (not d!1786649) (not b!5658118) (not setNonEmpty!37838) (not bm!428196) (not b!5658207) (not b_lambda!213945) (not b!5658133) (not d!1786595) (not b!5657824) (not bm!428292) (not b!5658205) (not b!5657700) (not b!5658032) (not b!5658216) (not b!5658186) (not b!5657742) (not bm!428209) (not b!5657856) (not d!1786535) (not b!5658201) (not b!5658185) (not b!5657916) (not b!5658235) (not b!5657896) (not bm!428297) (not b_lambda!213947) (not b!5658075) (not d!1786603) (not b!5657324) (not b!5658184) (not bm!428166) (not b!5658141) (not b!5657854) (not d!1786551) (not bm!428218) (not b!5658073) (not b!5658137) (not b!5658119) (not b!5658117) (not b!5658067) (not b!5658163) (not b!5658224) (not b!5657964) (not d!1786517) (not b!5657679) (not b!5657749) (not b!5657992) (not b!5657963) (not b!5657681) (not bm!428191) (not b!5658209) (not b!5658233) (not bm!428233) (not b!5658136) (not b!5658177) (not b!5657347) (not b!5657617) (not d!1786687) (not bm!428197) (not bm!428258) (not b!5657762) (not d!1786619) (not b!5658168) (not b!5658048) (not bm!428277) (not bm!428172) (not bm!428154) (not b!5658202) (not bm!428238) (not b!5657444) (not bm!428220) (not bm!428134) (not b!5657730) (not b!5658155) (not bm!428195))
(check-sat)
