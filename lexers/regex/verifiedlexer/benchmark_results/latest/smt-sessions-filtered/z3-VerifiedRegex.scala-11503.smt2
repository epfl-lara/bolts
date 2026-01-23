; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!628850 () Bool)

(assert start!628850)

(declare-fun b!6346842 () Bool)

(assert (=> b!6346842 true))

(assert (=> b!6346842 true))

(declare-fun lambda!348936 () Int)

(declare-fun lambda!348935 () Int)

(assert (=> b!6346842 (not (= lambda!348936 lambda!348935))))

(assert (=> b!6346842 true))

(assert (=> b!6346842 true))

(declare-fun b!6346815 () Bool)

(assert (=> b!6346815 true))

(declare-fun bs!1589055 () Bool)

(declare-fun b!6346830 () Bool)

(assert (= bs!1589055 (and b!6346830 b!6346842)))

(declare-datatypes ((C!32776 0))(
  ( (C!32777 (val!26090 Int)) )
))
(declare-datatypes ((Regex!16253 0))(
  ( (ElementMatch!16253 (c!1154330 C!32776)) (Concat!25098 (regOne!33018 Regex!16253) (regTwo!33018 Regex!16253)) (EmptyExpr!16253) (Star!16253 (reg!16582 Regex!16253)) (EmptyLang!16253) (Union!16253 (regOne!33019 Regex!16253) (regTwo!33019 Regex!16253)) )
))
(declare-fun r!7292 () Regex!16253)

(declare-fun lambda!348938 () Int)

(declare-fun lt!2363831 () Regex!16253)

(assert (=> bs!1589055 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!348938 lambda!348935))))

(assert (=> bs!1589055 (not (= lambda!348938 lambda!348936))))

(assert (=> b!6346830 true))

(assert (=> b!6346830 true))

(assert (=> b!6346830 true))

(declare-fun lambda!348939 () Int)

(assert (=> bs!1589055 (not (= lambda!348939 lambda!348935))))

(assert (=> bs!1589055 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!348939 lambda!348936))))

(assert (=> b!6346830 (not (= lambda!348939 lambda!348938))))

(assert (=> b!6346830 true))

(assert (=> b!6346830 true))

(assert (=> b!6346830 true))

(declare-fun b!6346810 () Bool)

(declare-fun res!2611705 () Bool)

(declare-fun e!3854722 () Bool)

(assert (=> b!6346810 (=> (not res!2611705) (not e!3854722))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65058 0))(
  ( (Nil!64934) (Cons!64934 (h!71382 Regex!16253) (t!378646 List!65058)) )
))
(declare-datatypes ((Context!11274 0))(
  ( (Context!11275 (exprs!6137 List!65058)) )
))
(declare-fun z!1189 () (InoxSet Context!11274))

(declare-datatypes ((List!65059 0))(
  ( (Nil!64935) (Cons!64935 (h!71383 Context!11274) (t!378647 List!65059)) )
))
(declare-fun zl!343 () List!65059)

(declare-fun toList!10037 ((InoxSet Context!11274)) List!65059)

(assert (=> b!6346810 (= res!2611705 (= (toList!10037 z!1189) zl!343))))

(declare-fun b!6346811 () Bool)

(declare-datatypes ((Unit!158343 0))(
  ( (Unit!158344) )
))
(declare-fun e!3854715 () Unit!158343)

(declare-fun Unit!158345 () Unit!158343)

(assert (=> b!6346811 (= e!3854715 Unit!158345)))

(declare-datatypes ((List!65060 0))(
  ( (Nil!64936) (Cons!64936 (h!71384 C!32776) (t!378648 List!65060)) )
))
(declare-fun s!2326 () List!65060)

(declare-fun lt!2363838 () (InoxSet Context!11274))

(declare-fun lt!2363840 () (InoxSet Context!11274))

(declare-fun lt!2363836 () Unit!158343)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1084 ((InoxSet Context!11274) (InoxSet Context!11274) List!65060) Unit!158343)

(assert (=> b!6346811 (= lt!2363836 (lemmaZipperConcatMatchesSameAsBothZippers!1084 lt!2363838 lt!2363840 (t!378648 s!2326)))))

(declare-fun res!2611709 () Bool)

(declare-fun matchZipper!2265 ((InoxSet Context!11274) List!65060) Bool)

(assert (=> b!6346811 (= res!2611709 (matchZipper!2265 lt!2363838 (t!378648 s!2326)))))

(declare-fun e!3854714 () Bool)

(assert (=> b!6346811 (=> res!2611709 e!3854714)))

(assert (=> b!6346811 (= (matchZipper!2265 ((_ map or) lt!2363838 lt!2363840) (t!378648 s!2326)) e!3854714)))

(declare-fun b!6346812 () Bool)

(declare-fun res!2611713 () Bool)

(declare-fun e!3854720 () Bool)

(assert (=> b!6346812 (=> res!2611713 e!3854720)))

(assert (=> b!6346812 (= res!2611713 (not (= (exprs!6137 (h!71383 zl!343)) (Cons!64934 (Concat!25098 (regOne!33018 (regOne!33018 r!7292)) (regTwo!33018 (regOne!33018 r!7292))) (t!378646 (exprs!6137 (h!71383 zl!343)))))))))

(declare-fun b!6346813 () Bool)

(declare-fun res!2611726 () Bool)

(declare-fun e!3854708 () Bool)

(assert (=> b!6346813 (=> res!2611726 e!3854708)))

(declare-fun e!3854710 () Bool)

(assert (=> b!6346813 (= res!2611726 e!3854710)))

(declare-fun res!2611716 () Bool)

(assert (=> b!6346813 (=> (not res!2611716) (not e!3854710))))

(get-info :version)

(assert (=> b!6346813 (= res!2611716 ((_ is Concat!25098) (regOne!33018 r!7292)))))

(declare-fun b!6346814 () Bool)

(declare-fun e!3854711 () Bool)

(declare-fun tp_is_empty!41759 () Bool)

(assert (=> b!6346814 (= e!3854711 tp_is_empty!41759)))

(declare-fun e!3854707 () Bool)

(assert (=> b!6346815 (= e!3854707 e!3854708)))

(declare-fun res!2611722 () Bool)

(assert (=> b!6346815 (=> res!2611722 e!3854708)))

(assert (=> b!6346815 (= res!2611722 (or (and ((_ is ElementMatch!16253) (regOne!33018 r!7292)) (= (c!1154330 (regOne!33018 r!7292)) (h!71384 s!2326))) ((_ is Union!16253) (regOne!33018 r!7292))))))

(declare-fun lt!2363822 () Unit!158343)

(assert (=> b!6346815 (= lt!2363822 e!3854715)))

(declare-fun c!1154329 () Bool)

(declare-fun nullable!6246 (Regex!16253) Bool)

(assert (=> b!6346815 (= c!1154329 (nullable!6246 (h!71382 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun lambda!348937 () Int)

(declare-fun flatMap!1758 ((InoxSet Context!11274) Int) (InoxSet Context!11274))

(declare-fun derivationStepZipperUp!1427 (Context!11274 C!32776) (InoxSet Context!11274))

(assert (=> b!6346815 (= (flatMap!1758 z!1189 lambda!348937) (derivationStepZipperUp!1427 (h!71383 zl!343) (h!71384 s!2326)))))

(declare-fun lt!2363839 () Unit!158343)

(declare-fun lemmaFlatMapOnSingletonSet!1284 ((InoxSet Context!11274) Context!11274 Int) Unit!158343)

(assert (=> b!6346815 (= lt!2363839 (lemmaFlatMapOnSingletonSet!1284 z!1189 (h!71383 zl!343) lambda!348937))))

(declare-fun lt!2363815 () Context!11274)

(assert (=> b!6346815 (= lt!2363840 (derivationStepZipperUp!1427 lt!2363815 (h!71384 s!2326)))))

(declare-fun derivationStepZipperDown!1501 (Regex!16253 Context!11274 C!32776) (InoxSet Context!11274))

(assert (=> b!6346815 (= lt!2363838 (derivationStepZipperDown!1501 (h!71382 (exprs!6137 (h!71383 zl!343))) lt!2363815 (h!71384 s!2326)))))

(assert (=> b!6346815 (= lt!2363815 (Context!11275 (t!378646 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun lt!2363833 () (InoxSet Context!11274))

(assert (=> b!6346815 (= lt!2363833 (derivationStepZipperUp!1427 (Context!11275 (Cons!64934 (h!71382 (exprs!6137 (h!71383 zl!343))) (t!378646 (exprs!6137 (h!71383 zl!343))))) (h!71384 s!2326)))))

(declare-fun b!6346816 () Bool)

(declare-fun e!3854716 () Bool)

(assert (=> b!6346816 (= e!3854720 e!3854716)))

(declare-fun res!2611723 () Bool)

(assert (=> b!6346816 (=> res!2611723 e!3854716)))

(declare-fun lt!2363823 () List!65059)

(declare-fun zipperDepthTotal!390 (List!65059) Int)

(assert (=> b!6346816 (= res!2611723 (>= (zipperDepthTotal!390 lt!2363823) (zipperDepthTotal!390 zl!343)))))

(declare-fun lt!2363824 () Context!11274)

(assert (=> b!6346816 (= lt!2363823 (Cons!64935 lt!2363824 Nil!64935))))

(declare-fun setIsEmpty!43212 () Bool)

(declare-fun setRes!43212 () Bool)

(assert (=> setIsEmpty!43212 setRes!43212))

(declare-fun res!2611727 () Bool)

(assert (=> start!628850 (=> (not res!2611727) (not e!3854722))))

(declare-fun validRegex!7989 (Regex!16253) Bool)

(assert (=> start!628850 (= res!2611727 (validRegex!7989 r!7292))))

(assert (=> start!628850 e!3854722))

(assert (=> start!628850 e!3854711))

(declare-fun condSetEmpty!43212 () Bool)

(assert (=> start!628850 (= condSetEmpty!43212 (= z!1189 ((as const (Array Context!11274 Bool)) false)))))

(assert (=> start!628850 setRes!43212))

(declare-fun e!3854718 () Bool)

(assert (=> start!628850 e!3854718))

(declare-fun e!3854713 () Bool)

(assert (=> start!628850 e!3854713))

(declare-fun b!6346817 () Bool)

(declare-fun e!3854721 () Bool)

(declare-fun tp!1769325 () Bool)

(assert (=> b!6346817 (= e!3854721 tp!1769325)))

(declare-fun b!6346818 () Bool)

(declare-fun tp!1769326 () Bool)

(assert (=> b!6346818 (= e!3854711 tp!1769326)))

(declare-fun b!6346819 () Bool)

(declare-fun e!3854719 () Bool)

(declare-fun e!3854709 () Bool)

(assert (=> b!6346819 (= e!3854719 e!3854709)))

(declare-fun res!2611712 () Bool)

(assert (=> b!6346819 (=> res!2611712 e!3854709)))

(declare-fun lt!2363835 () (InoxSet Context!11274))

(declare-fun lt!2363819 () Bool)

(assert (=> b!6346819 (= res!2611712 (not (= lt!2363819 (matchZipper!2265 lt!2363835 (t!378648 s!2326)))))))

(assert (=> b!6346819 (= lt!2363819 (matchZipper!2265 lt!2363838 (t!378648 s!2326)))))

(declare-fun b!6346820 () Bool)

(declare-fun tp!1769317 () Bool)

(assert (=> b!6346820 (= e!3854713 (and tp_is_empty!41759 tp!1769317))))

(declare-fun b!6346821 () Bool)

(declare-fun res!2611728 () Bool)

(declare-fun e!3854717 () Bool)

(assert (=> b!6346821 (=> res!2611728 e!3854717)))

(declare-fun generalisedConcat!1850 (List!65058) Regex!16253)

(assert (=> b!6346821 (= res!2611728 (not (= r!7292 (generalisedConcat!1850 (exprs!6137 (h!71383 zl!343))))))))

(declare-fun b!6346822 () Bool)

(assert (=> b!6346822 (= e!3854714 (matchZipper!2265 lt!2363840 (t!378648 s!2326)))))

(declare-fun b!6346823 () Bool)

(declare-fun Unit!158346 () Unit!158343)

(assert (=> b!6346823 (= e!3854715 Unit!158346)))

(declare-fun b!6346824 () Bool)

(declare-fun e!3854712 () Bool)

(declare-fun tp!1769324 () Bool)

(assert (=> b!6346824 (= e!3854712 tp!1769324)))

(declare-fun b!6346825 () Bool)

(declare-fun res!2611720 () Bool)

(assert (=> b!6346825 (=> res!2611720 e!3854707)))

(declare-fun isEmpty!37021 (List!65058) Bool)

(assert (=> b!6346825 (= res!2611720 (isEmpty!37021 (t!378646 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun b!6346826 () Bool)

(declare-fun res!2611710 () Bool)

(assert (=> b!6346826 (=> res!2611710 e!3854717)))

(assert (=> b!6346826 (= res!2611710 (not ((_ is Cons!64934) (exprs!6137 (h!71383 zl!343)))))))

(declare-fun b!6346827 () Bool)

(declare-fun res!2611714 () Bool)

(assert (=> b!6346827 (=> res!2611714 e!3854716)))

(declare-fun zipperDepth!360 (List!65059) Int)

(assert (=> b!6346827 (= res!2611714 (> (zipperDepth!360 lt!2363823) (zipperDepth!360 zl!343)))))

(declare-fun tp!1769319 () Bool)

(declare-fun b!6346828 () Bool)

(declare-fun inv!83879 (Context!11274) Bool)

(assert (=> b!6346828 (= e!3854718 (and (inv!83879 (h!71383 zl!343)) e!3854721 tp!1769319))))

(declare-fun b!6346829 () Bool)

(declare-fun tp!1769323 () Bool)

(declare-fun tp!1769321 () Bool)

(assert (=> b!6346829 (= e!3854711 (and tp!1769323 tp!1769321))))

(assert (=> b!6346830 (= e!3854716 (validRegex!7989 lt!2363831))))

(declare-fun Exists!3323 (Int) Bool)

(assert (=> b!6346830 (= (Exists!3323 lambda!348938) (Exists!3323 lambda!348939))))

(declare-fun lt!2363829 () Unit!158343)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1860 (Regex!16253 Regex!16253 List!65060) Unit!158343)

(assert (=> b!6346830 (= lt!2363829 (lemmaExistCutMatchRandMatchRSpecEquivalent!1860 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 s!2326))))

(declare-datatypes ((tuple2!66464 0))(
  ( (tuple2!66465 (_1!36535 List!65060) (_2!36535 List!65060)) )
))
(declare-datatypes ((Option!16144 0))(
  ( (None!16143) (Some!16143 (v!52312 tuple2!66464)) )
))
(declare-fun isDefined!12847 (Option!16144) Bool)

(declare-fun findConcatSeparation!2558 (Regex!16253 Regex!16253 List!65060 List!65060 List!65060) Option!16144)

(assert (=> b!6346830 (= (isDefined!12847 (findConcatSeparation!2558 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 Nil!64936 s!2326 s!2326)) (Exists!3323 lambda!348938))))

(declare-fun lt!2363832 () Unit!158343)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2322 (Regex!16253 Regex!16253 List!65060) Unit!158343)

(assert (=> b!6346830 (= lt!2363832 (lemmaFindConcatSeparationEquivalentToExists!2322 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 s!2326))))

(declare-fun lt!2363842 () List!65058)

(assert (=> b!6346830 (= lt!2363831 (generalisedConcat!1850 lt!2363842))))

(declare-fun lt!2363828 () Bool)

(declare-fun lt!2363826 () Regex!16253)

(declare-fun matchRSpec!3354 (Regex!16253 List!65060) Bool)

(assert (=> b!6346830 (= lt!2363828 (matchRSpec!3354 lt!2363826 s!2326))))

(declare-fun lt!2363820 () Unit!158343)

(declare-fun mainMatchTheorem!3354 (Regex!16253 List!65060) Unit!158343)

(assert (=> b!6346830 (= lt!2363820 (mainMatchTheorem!3354 lt!2363826 s!2326))))

(declare-fun lt!2363827 () (InoxSet Context!11274))

(assert (=> b!6346830 (= lt!2363828 (matchZipper!2265 lt!2363827 s!2326))))

(declare-fun matchR!8436 (Regex!16253 List!65060) Bool)

(assert (=> b!6346830 (= lt!2363828 (matchR!8436 lt!2363826 s!2326))))

(declare-fun lt!2363816 () Unit!158343)

(declare-fun theoremZipperRegexEquiv!795 ((InoxSet Context!11274) List!65059 Regex!16253 List!65060) Unit!158343)

(assert (=> b!6346830 (= lt!2363816 (theoremZipperRegexEquiv!795 lt!2363827 lt!2363823 lt!2363826 s!2326))))

(declare-fun lt!2363825 () List!65058)

(assert (=> b!6346830 (= lt!2363826 (generalisedConcat!1850 lt!2363825))))

(declare-fun b!6346831 () Bool)

(declare-fun res!2611721 () Bool)

(assert (=> b!6346831 (=> res!2611721 e!3854717)))

(declare-fun generalisedUnion!2097 (List!65058) Regex!16253)

(declare-fun unfocusZipperList!1674 (List!65059) List!65058)

(assert (=> b!6346831 (= res!2611721 (not (= r!7292 (generalisedUnion!2097 (unfocusZipperList!1674 zl!343)))))))

(declare-fun b!6346832 () Bool)

(declare-fun res!2611707 () Bool)

(assert (=> b!6346832 (=> (not res!2611707) (not e!3854722))))

(declare-fun unfocusZipper!1995 (List!65059) Regex!16253)

(assert (=> b!6346832 (= res!2611707 (= r!7292 (unfocusZipper!1995 zl!343)))))

(declare-fun b!6346833 () Bool)

(declare-fun res!2611715 () Bool)

(assert (=> b!6346833 (=> res!2611715 e!3854720)))

(declare-fun lt!2363830 () (InoxSet Context!11274))

(assert (=> b!6346833 (= res!2611715 (not (= lt!2363819 (matchZipper!2265 lt!2363830 (t!378648 s!2326)))))))

(declare-fun b!6346834 () Bool)

(assert (=> b!6346834 (= e!3854709 e!3854720)))

(declare-fun res!2611706 () Bool)

(assert (=> b!6346834 (=> res!2611706 e!3854720)))

(assert (=> b!6346834 (= res!2611706 (not (= lt!2363830 lt!2363835)))))

(assert (=> b!6346834 (= (flatMap!1758 lt!2363827 lambda!348937) (derivationStepZipperUp!1427 lt!2363824 (h!71384 s!2326)))))

(declare-fun lt!2363841 () Unit!158343)

(assert (=> b!6346834 (= lt!2363841 (lemmaFlatMapOnSingletonSet!1284 lt!2363827 lt!2363824 lambda!348937))))

(declare-fun lt!2363837 () (InoxSet Context!11274))

(assert (=> b!6346834 (= lt!2363837 (derivationStepZipperUp!1427 lt!2363824 (h!71384 s!2326)))))

(declare-fun derivationStepZipper!2219 ((InoxSet Context!11274) C!32776) (InoxSet Context!11274))

(assert (=> b!6346834 (= lt!2363830 (derivationStepZipper!2219 lt!2363827 (h!71384 s!2326)))))

(assert (=> b!6346834 (= lt!2363827 (store ((as const (Array Context!11274 Bool)) false) lt!2363824 true))))

(assert (=> b!6346834 (= lt!2363824 (Context!11275 lt!2363825))))

(assert (=> b!6346834 (= lt!2363825 (Cons!64934 (regOne!33018 (regOne!33018 r!7292)) lt!2363842))))

(declare-fun b!6346835 () Bool)

(declare-fun res!2611719 () Bool)

(assert (=> b!6346835 (=> res!2611719 e!3854717)))

(declare-fun isEmpty!37022 (List!65059) Bool)

(assert (=> b!6346835 (= res!2611719 (not (isEmpty!37022 (t!378647 zl!343))))))

(declare-fun b!6346836 () Bool)

(declare-fun tp!1769318 () Bool)

(declare-fun tp!1769320 () Bool)

(assert (=> b!6346836 (= e!3854711 (and tp!1769318 tp!1769320))))

(declare-fun b!6346837 () Bool)

(declare-fun res!2611724 () Bool)

(assert (=> b!6346837 (=> res!2611724 e!3854708)))

(assert (=> b!6346837 (= res!2611724 (not ((_ is Concat!25098) (regOne!33018 r!7292))))))

(declare-fun setElem!43212 () Context!11274)

(declare-fun setNonEmpty!43212 () Bool)

(declare-fun tp!1769322 () Bool)

(assert (=> setNonEmpty!43212 (= setRes!43212 (and tp!1769322 (inv!83879 setElem!43212) e!3854712))))

(declare-fun setRest!43212 () (InoxSet Context!11274))

(assert (=> setNonEmpty!43212 (= z!1189 ((_ map or) (store ((as const (Array Context!11274 Bool)) false) setElem!43212 true) setRest!43212))))

(declare-fun b!6346838 () Bool)

(assert (=> b!6346838 (= e!3854708 e!3854719)))

(declare-fun res!2611717 () Bool)

(assert (=> b!6346838 (=> res!2611717 e!3854719)))

(assert (=> b!6346838 (= res!2611717 (not (= lt!2363838 lt!2363835)))))

(assert (=> b!6346838 (= lt!2363835 (derivationStepZipperDown!1501 (regOne!33018 (regOne!33018 r!7292)) (Context!11275 lt!2363842) (h!71384 s!2326)))))

(assert (=> b!6346838 (= lt!2363842 (Cons!64934 (regTwo!33018 (regOne!33018 r!7292)) (t!378646 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun b!6346839 () Bool)

(declare-fun res!2611708 () Bool)

(assert (=> b!6346839 (=> res!2611708 e!3854720)))

(declare-fun contextDepthTotal!362 (Context!11274) Int)

(assert (=> b!6346839 (= res!2611708 (>= (contextDepthTotal!362 lt!2363824) (contextDepthTotal!362 (h!71383 zl!343))))))

(declare-fun b!6346840 () Bool)

(assert (=> b!6346840 (= e!3854722 (not e!3854717))))

(declare-fun res!2611711 () Bool)

(assert (=> b!6346840 (=> res!2611711 e!3854717)))

(assert (=> b!6346840 (= res!2611711 (not ((_ is Cons!64935) zl!343)))))

(declare-fun lt!2363821 () Bool)

(assert (=> b!6346840 (= lt!2363821 (matchRSpec!3354 r!7292 s!2326))))

(assert (=> b!6346840 (= lt!2363821 (matchR!8436 r!7292 s!2326))))

(declare-fun lt!2363814 () Unit!158343)

(assert (=> b!6346840 (= lt!2363814 (mainMatchTheorem!3354 r!7292 s!2326))))

(declare-fun b!6346841 () Bool)

(declare-fun res!2611718 () Bool)

(assert (=> b!6346841 (=> res!2611718 e!3854717)))

(assert (=> b!6346841 (= res!2611718 (or ((_ is EmptyExpr!16253) r!7292) ((_ is EmptyLang!16253) r!7292) ((_ is ElementMatch!16253) r!7292) ((_ is Union!16253) r!7292) (not ((_ is Concat!25098) r!7292))))))

(assert (=> b!6346842 (= e!3854717 e!3854707)))

(declare-fun res!2611725 () Bool)

(assert (=> b!6346842 (=> res!2611725 e!3854707)))

(declare-fun lt!2363817 () Bool)

(assert (=> b!6346842 (= res!2611725 (or (not (= lt!2363821 lt!2363817)) ((_ is Nil!64936) s!2326)))))

(assert (=> b!6346842 (= (Exists!3323 lambda!348935) (Exists!3323 lambda!348936))))

(declare-fun lt!2363834 () Unit!158343)

(assert (=> b!6346842 (= lt!2363834 (lemmaExistCutMatchRandMatchRSpecEquivalent!1860 (regOne!33018 r!7292) (regTwo!33018 r!7292) s!2326))))

(assert (=> b!6346842 (= lt!2363817 (Exists!3323 lambda!348935))))

(assert (=> b!6346842 (= lt!2363817 (isDefined!12847 (findConcatSeparation!2558 (regOne!33018 r!7292) (regTwo!33018 r!7292) Nil!64936 s!2326 s!2326)))))

(declare-fun lt!2363818 () Unit!158343)

(assert (=> b!6346842 (= lt!2363818 (lemmaFindConcatSeparationEquivalentToExists!2322 (regOne!33018 r!7292) (regTwo!33018 r!7292) s!2326))))

(declare-fun b!6346843 () Bool)

(assert (=> b!6346843 (= e!3854710 (nullable!6246 (regOne!33018 (regOne!33018 r!7292))))))

(assert (= (and start!628850 res!2611727) b!6346810))

(assert (= (and b!6346810 res!2611705) b!6346832))

(assert (= (and b!6346832 res!2611707) b!6346840))

(assert (= (and b!6346840 (not res!2611711)) b!6346835))

(assert (= (and b!6346835 (not res!2611719)) b!6346821))

(assert (= (and b!6346821 (not res!2611728)) b!6346826))

(assert (= (and b!6346826 (not res!2611710)) b!6346831))

(assert (= (and b!6346831 (not res!2611721)) b!6346841))

(assert (= (and b!6346841 (not res!2611718)) b!6346842))

(assert (= (and b!6346842 (not res!2611725)) b!6346825))

(assert (= (and b!6346825 (not res!2611720)) b!6346815))

(assert (= (and b!6346815 c!1154329) b!6346811))

(assert (= (and b!6346815 (not c!1154329)) b!6346823))

(assert (= (and b!6346811 (not res!2611709)) b!6346822))

(assert (= (and b!6346815 (not res!2611722)) b!6346813))

(assert (= (and b!6346813 res!2611716) b!6346843))

(assert (= (and b!6346813 (not res!2611726)) b!6346837))

(assert (= (and b!6346837 (not res!2611724)) b!6346838))

(assert (= (and b!6346838 (not res!2611717)) b!6346819))

(assert (= (and b!6346819 (not res!2611712)) b!6346834))

(assert (= (and b!6346834 (not res!2611706)) b!6346833))

(assert (= (and b!6346833 (not res!2611715)) b!6346812))

(assert (= (and b!6346812 (not res!2611713)) b!6346839))

(assert (= (and b!6346839 (not res!2611708)) b!6346816))

(assert (= (and b!6346816 (not res!2611723)) b!6346827))

(assert (= (and b!6346827 (not res!2611714)) b!6346830))

(assert (= (and start!628850 ((_ is ElementMatch!16253) r!7292)) b!6346814))

(assert (= (and start!628850 ((_ is Concat!25098) r!7292)) b!6346836))

(assert (= (and start!628850 ((_ is Star!16253) r!7292)) b!6346818))

(assert (= (and start!628850 ((_ is Union!16253) r!7292)) b!6346829))

(assert (= (and start!628850 condSetEmpty!43212) setIsEmpty!43212))

(assert (= (and start!628850 (not condSetEmpty!43212)) setNonEmpty!43212))

(assert (= setNonEmpty!43212 b!6346824))

(assert (= b!6346828 b!6346817))

(assert (= (and start!628850 ((_ is Cons!64935) zl!343)) b!6346828))

(assert (= (and start!628850 ((_ is Cons!64936) s!2326)) b!6346820))

(declare-fun m!7154274 () Bool)

(assert (=> b!6346831 m!7154274))

(assert (=> b!6346831 m!7154274))

(declare-fun m!7154276 () Bool)

(assert (=> b!6346831 m!7154276))

(declare-fun m!7154278 () Bool)

(assert (=> b!6346816 m!7154278))

(declare-fun m!7154280 () Bool)

(assert (=> b!6346816 m!7154280))

(declare-fun m!7154282 () Bool)

(assert (=> b!6346842 m!7154282))

(declare-fun m!7154284 () Bool)

(assert (=> b!6346842 m!7154284))

(declare-fun m!7154286 () Bool)

(assert (=> b!6346842 m!7154286))

(declare-fun m!7154288 () Bool)

(assert (=> b!6346842 m!7154288))

(assert (=> b!6346842 m!7154282))

(declare-fun m!7154290 () Bool)

(assert (=> b!6346842 m!7154290))

(assert (=> b!6346842 m!7154284))

(declare-fun m!7154292 () Bool)

(assert (=> b!6346842 m!7154292))

(declare-fun m!7154294 () Bool)

(assert (=> b!6346832 m!7154294))

(declare-fun m!7154296 () Bool)

(assert (=> b!6346833 m!7154296))

(declare-fun m!7154298 () Bool)

(assert (=> b!6346843 m!7154298))

(declare-fun m!7154300 () Bool)

(assert (=> b!6346838 m!7154300))

(declare-fun m!7154302 () Bool)

(assert (=> b!6346815 m!7154302))

(declare-fun m!7154304 () Bool)

(assert (=> b!6346815 m!7154304))

(declare-fun m!7154306 () Bool)

(assert (=> b!6346815 m!7154306))

(declare-fun m!7154308 () Bool)

(assert (=> b!6346815 m!7154308))

(declare-fun m!7154310 () Bool)

(assert (=> b!6346815 m!7154310))

(declare-fun m!7154312 () Bool)

(assert (=> b!6346815 m!7154312))

(declare-fun m!7154314 () Bool)

(assert (=> b!6346815 m!7154314))

(declare-fun m!7154316 () Bool)

(assert (=> b!6346821 m!7154316))

(declare-fun m!7154318 () Bool)

(assert (=> b!6346839 m!7154318))

(declare-fun m!7154320 () Bool)

(assert (=> b!6346839 m!7154320))

(declare-fun m!7154322 () Bool)

(assert (=> start!628850 m!7154322))

(declare-fun m!7154324 () Bool)

(assert (=> b!6346819 m!7154324))

(declare-fun m!7154326 () Bool)

(assert (=> b!6346819 m!7154326))

(declare-fun m!7154328 () Bool)

(assert (=> b!6346825 m!7154328))

(declare-fun m!7154330 () Bool)

(assert (=> b!6346828 m!7154330))

(declare-fun m!7154332 () Bool)

(assert (=> b!6346840 m!7154332))

(declare-fun m!7154334 () Bool)

(assert (=> b!6346840 m!7154334))

(declare-fun m!7154336 () Bool)

(assert (=> b!6346840 m!7154336))

(declare-fun m!7154338 () Bool)

(assert (=> b!6346830 m!7154338))

(declare-fun m!7154340 () Bool)

(assert (=> b!6346830 m!7154340))

(declare-fun m!7154342 () Bool)

(assert (=> b!6346830 m!7154342))

(declare-fun m!7154344 () Bool)

(assert (=> b!6346830 m!7154344))

(declare-fun m!7154346 () Bool)

(assert (=> b!6346830 m!7154346))

(declare-fun m!7154348 () Bool)

(assert (=> b!6346830 m!7154348))

(declare-fun m!7154350 () Bool)

(assert (=> b!6346830 m!7154350))

(declare-fun m!7154352 () Bool)

(assert (=> b!6346830 m!7154352))

(assert (=> b!6346830 m!7154348))

(declare-fun m!7154354 () Bool)

(assert (=> b!6346830 m!7154354))

(declare-fun m!7154356 () Bool)

(assert (=> b!6346830 m!7154356))

(declare-fun m!7154358 () Bool)

(assert (=> b!6346830 m!7154358))

(declare-fun m!7154360 () Bool)

(assert (=> b!6346830 m!7154360))

(declare-fun m!7154362 () Bool)

(assert (=> b!6346830 m!7154362))

(declare-fun m!7154364 () Bool)

(assert (=> b!6346830 m!7154364))

(assert (=> b!6346830 m!7154354))

(declare-fun m!7154366 () Bool)

(assert (=> b!6346810 m!7154366))

(declare-fun m!7154368 () Bool)

(assert (=> setNonEmpty!43212 m!7154368))

(declare-fun m!7154370 () Bool)

(assert (=> b!6346834 m!7154370))

(declare-fun m!7154372 () Bool)

(assert (=> b!6346834 m!7154372))

(declare-fun m!7154374 () Bool)

(assert (=> b!6346834 m!7154374))

(declare-fun m!7154376 () Bool)

(assert (=> b!6346834 m!7154376))

(declare-fun m!7154378 () Bool)

(assert (=> b!6346834 m!7154378))

(declare-fun m!7154380 () Bool)

(assert (=> b!6346811 m!7154380))

(assert (=> b!6346811 m!7154326))

(declare-fun m!7154382 () Bool)

(assert (=> b!6346811 m!7154382))

(declare-fun m!7154384 () Bool)

(assert (=> b!6346827 m!7154384))

(declare-fun m!7154386 () Bool)

(assert (=> b!6346827 m!7154386))

(declare-fun m!7154388 () Bool)

(assert (=> b!6346822 m!7154388))

(declare-fun m!7154390 () Bool)

(assert (=> b!6346835 m!7154390))

(check-sat (not b!6346833) (not b!6346816) (not setNonEmpty!43212) (not b!6346838) (not b!6346831) (not b!6346843) (not b!6346828) (not b!6346834) (not b!6346829) (not b!6346817) (not b!6346840) (not start!628850) (not b!6346821) (not b!6346824) (not b!6346835) (not b!6346810) (not b!6346832) tp_is_empty!41759 (not b!6346830) (not b!6346811) (not b!6346820) (not b!6346839) (not b!6346825) (not b!6346836) (not b!6346842) (not b!6346819) (not b!6346815) (not b!6346827) (not b!6346818) (not b!6346822))
(check-sat)
(get-model)

(declare-fun b!6347085 () Bool)

(assert (=> b!6347085 true))

(declare-fun bs!1589070 () Bool)

(declare-fun b!6347087 () Bool)

(assert (= bs!1589070 (and b!6347087 b!6347085)))

(declare-fun lt!2363878 () Int)

(declare-fun lambda!348961 () Int)

(declare-fun lt!2363879 () Int)

(declare-fun lambda!348960 () Int)

(assert (=> bs!1589070 (= (= lt!2363879 lt!2363878) (= lambda!348961 lambda!348960))))

(assert (=> b!6347087 true))

(declare-fun d!1991608 () Bool)

(declare-fun e!3854861 () Bool)

(assert (=> d!1991608 e!3854861))

(declare-fun res!2611818 () Bool)

(assert (=> d!1991608 (=> (not res!2611818) (not e!3854861))))

(assert (=> d!1991608 (= res!2611818 (>= lt!2363879 0))))

(declare-fun e!3854862 () Int)

(assert (=> d!1991608 (= lt!2363879 e!3854862)))

(declare-fun c!1154410 () Bool)

(assert (=> d!1991608 (= c!1154410 ((_ is Cons!64935) lt!2363823))))

(assert (=> d!1991608 (= (zipperDepth!360 lt!2363823) lt!2363879)))

(assert (=> b!6347085 (= e!3854862 lt!2363878)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!248 (Context!11274) Int)

(assert (=> b!6347085 (= lt!2363878 (maxBigInt!0 (contextDepth!248 (h!71383 lt!2363823)) (zipperDepth!360 (t!378647 lt!2363823))))))

(declare-fun lt!2363877 () Unit!158343)

(declare-fun lambda!348959 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!232 (List!65059 Int Int Int) Unit!158343)

(assert (=> b!6347085 (= lt!2363877 (lemmaForallContextDepthBiggerThanTransitive!232 (t!378647 lt!2363823) lt!2363878 (zipperDepth!360 (t!378647 lt!2363823)) lambda!348959))))

(declare-fun forall!15417 (List!65059 Int) Bool)

(assert (=> b!6347085 (forall!15417 (t!378647 lt!2363823) lambda!348960)))

(declare-fun lt!2363880 () Unit!158343)

(assert (=> b!6347085 (= lt!2363880 lt!2363877)))

(declare-fun b!6347086 () Bool)

(assert (=> b!6347086 (= e!3854862 0)))

(assert (=> b!6347087 (= e!3854861 (forall!15417 lt!2363823 lambda!348961))))

(assert (= (and d!1991608 c!1154410) b!6347085))

(assert (= (and d!1991608 (not c!1154410)) b!6347086))

(assert (= (and d!1991608 res!2611818) b!6347087))

(declare-fun m!7154524 () Bool)

(assert (=> b!6347085 m!7154524))

(declare-fun m!7154526 () Bool)

(assert (=> b!6347085 m!7154526))

(declare-fun m!7154528 () Bool)

(assert (=> b!6347085 m!7154528))

(assert (=> b!6347085 m!7154526))

(assert (=> b!6347085 m!7154524))

(assert (=> b!6347085 m!7154526))

(declare-fun m!7154530 () Bool)

(assert (=> b!6347085 m!7154530))

(declare-fun m!7154532 () Bool)

(assert (=> b!6347085 m!7154532))

(declare-fun m!7154534 () Bool)

(assert (=> b!6347087 m!7154534))

(assert (=> b!6346827 d!1991608))

(declare-fun bs!1589071 () Bool)

(declare-fun b!6347094 () Bool)

(assert (= bs!1589071 (and b!6347094 b!6347085)))

(declare-fun lambda!348964 () Int)

(assert (=> bs!1589071 (= lambda!348964 lambda!348959)))

(declare-fun lambda!348965 () Int)

(declare-fun lt!2363884 () Int)

(assert (=> bs!1589071 (= (= lt!2363884 lt!2363878) (= lambda!348965 lambda!348960))))

(declare-fun bs!1589072 () Bool)

(assert (= bs!1589072 (and b!6347094 b!6347087)))

(assert (=> bs!1589072 (= (= lt!2363884 lt!2363879) (= lambda!348965 lambda!348961))))

(assert (=> b!6347094 true))

(declare-fun bs!1589073 () Bool)

(declare-fun b!6347096 () Bool)

(assert (= bs!1589073 (and b!6347096 b!6347085)))

(declare-fun lambda!348966 () Int)

(declare-fun lt!2363885 () Int)

(assert (=> bs!1589073 (= (= lt!2363885 lt!2363878) (= lambda!348966 lambda!348960))))

(declare-fun bs!1589074 () Bool)

(assert (= bs!1589074 (and b!6347096 b!6347087)))

(assert (=> bs!1589074 (= (= lt!2363885 lt!2363879) (= lambda!348966 lambda!348961))))

(declare-fun bs!1589075 () Bool)

(assert (= bs!1589075 (and b!6347096 b!6347094)))

(assert (=> bs!1589075 (= (= lt!2363885 lt!2363884) (= lambda!348966 lambda!348965))))

(assert (=> b!6347096 true))

(declare-fun d!1991622 () Bool)

(declare-fun e!3854865 () Bool)

(assert (=> d!1991622 e!3854865))

(declare-fun res!2611823 () Bool)

(assert (=> d!1991622 (=> (not res!2611823) (not e!3854865))))

(assert (=> d!1991622 (= res!2611823 (>= lt!2363885 0))))

(declare-fun e!3854866 () Int)

(assert (=> d!1991622 (= lt!2363885 e!3854866)))

(declare-fun c!1154411 () Bool)

(assert (=> d!1991622 (= c!1154411 ((_ is Cons!64935) zl!343))))

(assert (=> d!1991622 (= (zipperDepth!360 zl!343) lt!2363885)))

(assert (=> b!6347094 (= e!3854866 lt!2363884)))

(assert (=> b!6347094 (= lt!2363884 (maxBigInt!0 (contextDepth!248 (h!71383 zl!343)) (zipperDepth!360 (t!378647 zl!343))))))

(declare-fun lt!2363883 () Unit!158343)

(assert (=> b!6347094 (= lt!2363883 (lemmaForallContextDepthBiggerThanTransitive!232 (t!378647 zl!343) lt!2363884 (zipperDepth!360 (t!378647 zl!343)) lambda!348964))))

(assert (=> b!6347094 (forall!15417 (t!378647 zl!343) lambda!348965)))

(declare-fun lt!2363886 () Unit!158343)

(assert (=> b!6347094 (= lt!2363886 lt!2363883)))

(declare-fun b!6347095 () Bool)

(assert (=> b!6347095 (= e!3854866 0)))

(assert (=> b!6347096 (= e!3854865 (forall!15417 zl!343 lambda!348966))))

(assert (= (and d!1991622 c!1154411) b!6347094))

(assert (= (and d!1991622 (not c!1154411)) b!6347095))

(assert (= (and d!1991622 res!2611823) b!6347096))

(declare-fun m!7154536 () Bool)

(assert (=> b!6347094 m!7154536))

(declare-fun m!7154538 () Bool)

(assert (=> b!6347094 m!7154538))

(declare-fun m!7154540 () Bool)

(assert (=> b!6347094 m!7154540))

(assert (=> b!6347094 m!7154538))

(assert (=> b!6347094 m!7154536))

(assert (=> b!6347094 m!7154538))

(declare-fun m!7154542 () Bool)

(assert (=> b!6347094 m!7154542))

(declare-fun m!7154544 () Bool)

(assert (=> b!6347094 m!7154544))

(declare-fun m!7154546 () Bool)

(assert (=> b!6347096 m!7154546))

(assert (=> b!6346827 d!1991622))

(declare-fun d!1991624 () Bool)

(assert (=> d!1991624 (= (isEmpty!37021 (t!378646 (exprs!6137 (h!71383 zl!343)))) ((_ is Nil!64934) (t!378646 (exprs!6137 (h!71383 zl!343)))))))

(assert (=> b!6346825 d!1991624))

(declare-fun d!1991628 () Bool)

(declare-fun nullableFct!2193 (Regex!16253) Bool)

(assert (=> d!1991628 (= (nullable!6246 (h!71382 (exprs!6137 (h!71383 zl!343)))) (nullableFct!2193 (h!71382 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun bs!1589081 () Bool)

(assert (= bs!1589081 d!1991628))

(declare-fun m!7154552 () Bool)

(assert (=> bs!1589081 m!7154552))

(assert (=> b!6346815 d!1991628))

(declare-fun d!1991630 () Bool)

(declare-fun c!1154417 () Bool)

(declare-fun e!3854875 () Bool)

(assert (=> d!1991630 (= c!1154417 e!3854875)))

(declare-fun res!2611830 () Bool)

(assert (=> d!1991630 (=> (not res!2611830) (not e!3854875))))

(assert (=> d!1991630 (= res!2611830 ((_ is Cons!64934) (exprs!6137 (Context!11275 (Cons!64934 (h!71382 (exprs!6137 (h!71383 zl!343))) (t!378646 (exprs!6137 (h!71383 zl!343))))))))))

(declare-fun e!3854876 () (InoxSet Context!11274))

(assert (=> d!1991630 (= (derivationStepZipperUp!1427 (Context!11275 (Cons!64934 (h!71382 (exprs!6137 (h!71383 zl!343))) (t!378646 (exprs!6137 (h!71383 zl!343))))) (h!71384 s!2326)) e!3854876)))

(declare-fun b!6347111 () Bool)

(declare-fun e!3854877 () (InoxSet Context!11274))

(declare-fun call!541067 () (InoxSet Context!11274))

(assert (=> b!6347111 (= e!3854877 call!541067)))

(declare-fun b!6347112 () Bool)

(assert (=> b!6347112 (= e!3854875 (nullable!6246 (h!71382 (exprs!6137 (Context!11275 (Cons!64934 (h!71382 (exprs!6137 (h!71383 zl!343))) (t!378646 (exprs!6137 (h!71383 zl!343)))))))))))

(declare-fun bm!541062 () Bool)

(assert (=> bm!541062 (= call!541067 (derivationStepZipperDown!1501 (h!71382 (exprs!6137 (Context!11275 (Cons!64934 (h!71382 (exprs!6137 (h!71383 zl!343))) (t!378646 (exprs!6137 (h!71383 zl!343))))))) (Context!11275 (t!378646 (exprs!6137 (Context!11275 (Cons!64934 (h!71382 (exprs!6137 (h!71383 zl!343))) (t!378646 (exprs!6137 (h!71383 zl!343)))))))) (h!71384 s!2326)))))

(declare-fun b!6347113 () Bool)

(assert (=> b!6347113 (= e!3854877 ((as const (Array Context!11274 Bool)) false))))

(declare-fun b!6347114 () Bool)

(assert (=> b!6347114 (= e!3854876 e!3854877)))

(declare-fun c!1154416 () Bool)

(assert (=> b!6347114 (= c!1154416 ((_ is Cons!64934) (exprs!6137 (Context!11275 (Cons!64934 (h!71382 (exprs!6137 (h!71383 zl!343))) (t!378646 (exprs!6137 (h!71383 zl!343))))))))))

(declare-fun b!6347115 () Bool)

(assert (=> b!6347115 (= e!3854876 ((_ map or) call!541067 (derivationStepZipperUp!1427 (Context!11275 (t!378646 (exprs!6137 (Context!11275 (Cons!64934 (h!71382 (exprs!6137 (h!71383 zl!343))) (t!378646 (exprs!6137 (h!71383 zl!343)))))))) (h!71384 s!2326))))))

(assert (= (and d!1991630 res!2611830) b!6347112))

(assert (= (and d!1991630 c!1154417) b!6347115))

(assert (= (and d!1991630 (not c!1154417)) b!6347114))

(assert (= (and b!6347114 c!1154416) b!6347111))

(assert (= (and b!6347114 (not c!1154416)) b!6347113))

(assert (= (or b!6347115 b!6347111) bm!541062))

(declare-fun m!7154556 () Bool)

(assert (=> b!6347112 m!7154556))

(declare-fun m!7154558 () Bool)

(assert (=> bm!541062 m!7154558))

(declare-fun m!7154560 () Bool)

(assert (=> b!6347115 m!7154560))

(assert (=> b!6346815 d!1991630))

(declare-fun d!1991634 () Bool)

(declare-fun c!1154419 () Bool)

(declare-fun e!3854878 () Bool)

(assert (=> d!1991634 (= c!1154419 e!3854878)))

(declare-fun res!2611831 () Bool)

(assert (=> d!1991634 (=> (not res!2611831) (not e!3854878))))

(assert (=> d!1991634 (= res!2611831 ((_ is Cons!64934) (exprs!6137 lt!2363815)))))

(declare-fun e!3854879 () (InoxSet Context!11274))

(assert (=> d!1991634 (= (derivationStepZipperUp!1427 lt!2363815 (h!71384 s!2326)) e!3854879)))

(declare-fun b!6347116 () Bool)

(declare-fun e!3854880 () (InoxSet Context!11274))

(declare-fun call!541068 () (InoxSet Context!11274))

(assert (=> b!6347116 (= e!3854880 call!541068)))

(declare-fun b!6347117 () Bool)

(assert (=> b!6347117 (= e!3854878 (nullable!6246 (h!71382 (exprs!6137 lt!2363815))))))

(declare-fun bm!541063 () Bool)

(assert (=> bm!541063 (= call!541068 (derivationStepZipperDown!1501 (h!71382 (exprs!6137 lt!2363815)) (Context!11275 (t!378646 (exprs!6137 lt!2363815))) (h!71384 s!2326)))))

(declare-fun b!6347118 () Bool)

(assert (=> b!6347118 (= e!3854880 ((as const (Array Context!11274 Bool)) false))))

(declare-fun b!6347119 () Bool)

(assert (=> b!6347119 (= e!3854879 e!3854880)))

(declare-fun c!1154418 () Bool)

(assert (=> b!6347119 (= c!1154418 ((_ is Cons!64934) (exprs!6137 lt!2363815)))))

(declare-fun b!6347120 () Bool)

(assert (=> b!6347120 (= e!3854879 ((_ map or) call!541068 (derivationStepZipperUp!1427 (Context!11275 (t!378646 (exprs!6137 lt!2363815))) (h!71384 s!2326))))))

(assert (= (and d!1991634 res!2611831) b!6347117))

(assert (= (and d!1991634 c!1154419) b!6347120))

(assert (= (and d!1991634 (not c!1154419)) b!6347119))

(assert (= (and b!6347119 c!1154418) b!6347116))

(assert (= (and b!6347119 (not c!1154418)) b!6347118))

(assert (= (or b!6347120 b!6347116) bm!541063))

(declare-fun m!7154562 () Bool)

(assert (=> b!6347117 m!7154562))

(declare-fun m!7154564 () Bool)

(assert (=> bm!541063 m!7154564))

(declare-fun m!7154566 () Bool)

(assert (=> b!6347120 m!7154566))

(assert (=> b!6346815 d!1991634))

(declare-fun d!1991636 () Bool)

(declare-fun c!1154421 () Bool)

(declare-fun e!3854883 () Bool)

(assert (=> d!1991636 (= c!1154421 e!3854883)))

(declare-fun res!2611834 () Bool)

(assert (=> d!1991636 (=> (not res!2611834) (not e!3854883))))

(assert (=> d!1991636 (= res!2611834 ((_ is Cons!64934) (exprs!6137 (h!71383 zl!343))))))

(declare-fun e!3854884 () (InoxSet Context!11274))

(assert (=> d!1991636 (= (derivationStepZipperUp!1427 (h!71383 zl!343) (h!71384 s!2326)) e!3854884)))

(declare-fun b!6347123 () Bool)

(declare-fun e!3854885 () (InoxSet Context!11274))

(declare-fun call!541069 () (InoxSet Context!11274))

(assert (=> b!6347123 (= e!3854885 call!541069)))

(declare-fun b!6347124 () Bool)

(assert (=> b!6347124 (= e!3854883 (nullable!6246 (h!71382 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun bm!541064 () Bool)

(assert (=> bm!541064 (= call!541069 (derivationStepZipperDown!1501 (h!71382 (exprs!6137 (h!71383 zl!343))) (Context!11275 (t!378646 (exprs!6137 (h!71383 zl!343)))) (h!71384 s!2326)))))

(declare-fun b!6347127 () Bool)

(assert (=> b!6347127 (= e!3854885 ((as const (Array Context!11274 Bool)) false))))

(declare-fun b!6347128 () Bool)

(assert (=> b!6347128 (= e!3854884 e!3854885)))

(declare-fun c!1154420 () Bool)

(assert (=> b!6347128 (= c!1154420 ((_ is Cons!64934) (exprs!6137 (h!71383 zl!343))))))

(declare-fun b!6347129 () Bool)

(assert (=> b!6347129 (= e!3854884 ((_ map or) call!541069 (derivationStepZipperUp!1427 (Context!11275 (t!378646 (exprs!6137 (h!71383 zl!343)))) (h!71384 s!2326))))))

(assert (= (and d!1991636 res!2611834) b!6347124))

(assert (= (and d!1991636 c!1154421) b!6347129))

(assert (= (and d!1991636 (not c!1154421)) b!6347128))

(assert (= (and b!6347128 c!1154420) b!6347123))

(assert (= (and b!6347128 (not c!1154420)) b!6347127))

(assert (= (or b!6347129 b!6347123) bm!541064))

(assert (=> b!6347124 m!7154308))

(declare-fun m!7154568 () Bool)

(assert (=> bm!541064 m!7154568))

(declare-fun m!7154570 () Bool)

(assert (=> b!6347129 m!7154570))

(assert (=> b!6346815 d!1991636))

(declare-fun d!1991638 () Bool)

(declare-fun choose!47091 ((InoxSet Context!11274) Int) (InoxSet Context!11274))

(assert (=> d!1991638 (= (flatMap!1758 z!1189 lambda!348937) (choose!47091 z!1189 lambda!348937))))

(declare-fun bs!1589083 () Bool)

(assert (= bs!1589083 d!1991638))

(declare-fun m!7154572 () Bool)

(assert (=> bs!1589083 m!7154572))

(assert (=> b!6346815 d!1991638))

(declare-fun d!1991640 () Bool)

(declare-fun dynLambda!25743 (Int Context!11274) (InoxSet Context!11274))

(assert (=> d!1991640 (= (flatMap!1758 z!1189 lambda!348937) (dynLambda!25743 lambda!348937 (h!71383 zl!343)))))

(declare-fun lt!2363896 () Unit!158343)

(declare-fun choose!47092 ((InoxSet Context!11274) Context!11274 Int) Unit!158343)

(assert (=> d!1991640 (= lt!2363896 (choose!47092 z!1189 (h!71383 zl!343) lambda!348937))))

(assert (=> d!1991640 (= z!1189 (store ((as const (Array Context!11274 Bool)) false) (h!71383 zl!343) true))))

(assert (=> d!1991640 (= (lemmaFlatMapOnSingletonSet!1284 z!1189 (h!71383 zl!343) lambda!348937) lt!2363896)))

(declare-fun b_lambda!241461 () Bool)

(assert (=> (not b_lambda!241461) (not d!1991640)))

(declare-fun bs!1589089 () Bool)

(assert (= bs!1589089 d!1991640))

(assert (=> bs!1589089 m!7154314))

(declare-fun m!7154574 () Bool)

(assert (=> bs!1589089 m!7154574))

(declare-fun m!7154576 () Bool)

(assert (=> bs!1589089 m!7154576))

(declare-fun m!7154578 () Bool)

(assert (=> bs!1589089 m!7154578))

(assert (=> b!6346815 d!1991640))

(declare-fun bm!541079 () Bool)

(declare-fun call!541085 () (InoxSet Context!11274))

(declare-fun call!541086 () (InoxSet Context!11274))

(assert (=> bm!541079 (= call!541085 call!541086)))

(declare-fun b!6347164 () Bool)

(declare-fun e!3854907 () (InoxSet Context!11274))

(assert (=> b!6347164 (= e!3854907 call!541085)))

(declare-fun b!6347165 () Bool)

(declare-fun e!3854910 () (InoxSet Context!11274))

(assert (=> b!6347165 (= e!3854910 ((as const (Array Context!11274 Bool)) false))))

(declare-fun d!1991642 () Bool)

(declare-fun c!1154437 () Bool)

(assert (=> d!1991642 (= c!1154437 (and ((_ is ElementMatch!16253) (h!71382 (exprs!6137 (h!71383 zl!343)))) (= (c!1154330 (h!71382 (exprs!6137 (h!71383 zl!343)))) (h!71384 s!2326))))))

(declare-fun e!3854906 () (InoxSet Context!11274))

(assert (=> d!1991642 (= (derivationStepZipperDown!1501 (h!71382 (exprs!6137 (h!71383 zl!343))) lt!2363815 (h!71384 s!2326)) e!3854906)))

(declare-fun bm!541080 () Bool)

(declare-fun call!541088 () (InoxSet Context!11274))

(assert (=> bm!541080 (= call!541086 call!541088)))

(declare-fun b!6347166 () Bool)

(declare-fun e!3854908 () (InoxSet Context!11274))

(declare-fun call!541089 () (InoxSet Context!11274))

(assert (=> b!6347166 (= e!3854908 ((_ map or) call!541089 call!541088))))

(declare-fun b!6347167 () Bool)

(declare-fun c!1154439 () Bool)

(assert (=> b!6347167 (= c!1154439 ((_ is Star!16253) (h!71382 (exprs!6137 (h!71383 zl!343)))))))

(assert (=> b!6347167 (= e!3854907 e!3854910)))

(declare-fun bm!541081 () Bool)

(declare-fun call!541084 () List!65058)

(declare-fun call!541087 () List!65058)

(assert (=> bm!541081 (= call!541084 call!541087)))

(declare-fun b!6347168 () Bool)

(declare-fun e!3854909 () Bool)

(assert (=> b!6347168 (= e!3854909 (nullable!6246 (regOne!33018 (h!71382 (exprs!6137 (h!71383 zl!343))))))))

(declare-fun bm!541082 () Bool)

(declare-fun c!1154441 () Bool)

(assert (=> bm!541082 (= call!541089 (derivationStepZipperDown!1501 (ite c!1154441 (regOne!33019 (h!71382 (exprs!6137 (h!71383 zl!343)))) (regOne!33018 (h!71382 (exprs!6137 (h!71383 zl!343))))) (ite c!1154441 lt!2363815 (Context!11275 call!541087)) (h!71384 s!2326)))))

(declare-fun b!6347169 () Bool)

(declare-fun e!3854905 () (InoxSet Context!11274))

(assert (=> b!6347169 (= e!3854905 ((_ map or) call!541089 call!541086))))

(declare-fun b!6347170 () Bool)

(assert (=> b!6347170 (= e!3854910 call!541085)))

(declare-fun b!6347171 () Bool)

(declare-fun c!1154440 () Bool)

(assert (=> b!6347171 (= c!1154440 e!3854909)))

(declare-fun res!2611841 () Bool)

(assert (=> b!6347171 (=> (not res!2611841) (not e!3854909))))

(assert (=> b!6347171 (= res!2611841 ((_ is Concat!25098) (h!71382 (exprs!6137 (h!71383 zl!343)))))))

(assert (=> b!6347171 (= e!3854908 e!3854905)))

(declare-fun b!6347172 () Bool)

(assert (=> b!6347172 (= e!3854906 (store ((as const (Array Context!11274 Bool)) false) lt!2363815 true))))

(declare-fun bm!541083 () Bool)

(declare-fun c!1154438 () Bool)

(declare-fun $colon$colon!2114 (List!65058 Regex!16253) List!65058)

(assert (=> bm!541083 (= call!541087 ($colon$colon!2114 (exprs!6137 lt!2363815) (ite (or c!1154440 c!1154438) (regTwo!33018 (h!71382 (exprs!6137 (h!71383 zl!343)))) (h!71382 (exprs!6137 (h!71383 zl!343))))))))

(declare-fun bm!541084 () Bool)

(assert (=> bm!541084 (= call!541088 (derivationStepZipperDown!1501 (ite c!1154441 (regTwo!33019 (h!71382 (exprs!6137 (h!71383 zl!343)))) (ite c!1154440 (regTwo!33018 (h!71382 (exprs!6137 (h!71383 zl!343)))) (ite c!1154438 (regOne!33018 (h!71382 (exprs!6137 (h!71383 zl!343)))) (reg!16582 (h!71382 (exprs!6137 (h!71383 zl!343))))))) (ite (or c!1154441 c!1154440) lt!2363815 (Context!11275 call!541084)) (h!71384 s!2326)))))

(declare-fun b!6347173 () Bool)

(assert (=> b!6347173 (= e!3854906 e!3854908)))

(assert (=> b!6347173 (= c!1154441 ((_ is Union!16253) (h!71382 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun b!6347174 () Bool)

(assert (=> b!6347174 (= e!3854905 e!3854907)))

(assert (=> b!6347174 (= c!1154438 ((_ is Concat!25098) (h!71382 (exprs!6137 (h!71383 zl!343)))))))

(assert (= (and d!1991642 c!1154437) b!6347172))

(assert (= (and d!1991642 (not c!1154437)) b!6347173))

(assert (= (and b!6347173 c!1154441) b!6347166))

(assert (= (and b!6347173 (not c!1154441)) b!6347171))

(assert (= (and b!6347171 res!2611841) b!6347168))

(assert (= (and b!6347171 c!1154440) b!6347169))

(assert (= (and b!6347171 (not c!1154440)) b!6347174))

(assert (= (and b!6347174 c!1154438) b!6347164))

(assert (= (and b!6347174 (not c!1154438)) b!6347167))

(assert (= (and b!6347167 c!1154439) b!6347170))

(assert (= (and b!6347167 (not c!1154439)) b!6347165))

(assert (= (or b!6347164 b!6347170) bm!541081))

(assert (= (or b!6347164 b!6347170) bm!541079))

(assert (= (or b!6347169 bm!541081) bm!541083))

(assert (= (or b!6347169 bm!541079) bm!541080))

(assert (= (or b!6347166 bm!541080) bm!541084))

(assert (= (or b!6347166 b!6347169) bm!541082))

(declare-fun m!7154610 () Bool)

(assert (=> bm!541083 m!7154610))

(declare-fun m!7154612 () Bool)

(assert (=> b!6347168 m!7154612))

(declare-fun m!7154614 () Bool)

(assert (=> bm!541082 m!7154614))

(declare-fun m!7154616 () Bool)

(assert (=> b!6347172 m!7154616))

(declare-fun m!7154618 () Bool)

(assert (=> bm!541084 m!7154618))

(assert (=> b!6346815 d!1991642))

(declare-fun d!1991656 () Bool)

(declare-fun lt!2363905 () Int)

(assert (=> d!1991656 (>= lt!2363905 0)))

(declare-fun e!3854928 () Int)

(assert (=> d!1991656 (= lt!2363905 e!3854928)))

(declare-fun c!1154455 () Bool)

(assert (=> d!1991656 (= c!1154455 ((_ is Cons!64935) lt!2363823))))

(assert (=> d!1991656 (= (zipperDepthTotal!390 lt!2363823) lt!2363905)))

(declare-fun b!6347205 () Bool)

(assert (=> b!6347205 (= e!3854928 (+ (contextDepthTotal!362 (h!71383 lt!2363823)) (zipperDepthTotal!390 (t!378647 lt!2363823))))))

(declare-fun b!6347206 () Bool)

(assert (=> b!6347206 (= e!3854928 0)))

(assert (= (and d!1991656 c!1154455) b!6347205))

(assert (= (and d!1991656 (not c!1154455)) b!6347206))

(declare-fun m!7154638 () Bool)

(assert (=> b!6347205 m!7154638))

(declare-fun m!7154640 () Bool)

(assert (=> b!6347205 m!7154640))

(assert (=> b!6346816 d!1991656))

(declare-fun d!1991664 () Bool)

(declare-fun lt!2363906 () Int)

(assert (=> d!1991664 (>= lt!2363906 0)))

(declare-fun e!3854929 () Int)

(assert (=> d!1991664 (= lt!2363906 e!3854929)))

(declare-fun c!1154456 () Bool)

(assert (=> d!1991664 (= c!1154456 ((_ is Cons!64935) zl!343))))

(assert (=> d!1991664 (= (zipperDepthTotal!390 zl!343) lt!2363906)))

(declare-fun b!6347207 () Bool)

(assert (=> b!6347207 (= e!3854929 (+ (contextDepthTotal!362 (h!71383 zl!343)) (zipperDepthTotal!390 (t!378647 zl!343))))))

(declare-fun b!6347208 () Bool)

(assert (=> b!6347208 (= e!3854929 0)))

(assert (= (and d!1991664 c!1154456) b!6347207))

(assert (= (and d!1991664 (not c!1154456)) b!6347208))

(assert (=> b!6347207 m!7154320))

(declare-fun m!7154650 () Bool)

(assert (=> b!6347207 m!7154650))

(assert (=> b!6346816 d!1991664))

(declare-fun d!1991668 () Bool)

(declare-fun c!1154459 () Bool)

(declare-fun isEmpty!37025 (List!65060) Bool)

(assert (=> d!1991668 (= c!1154459 (isEmpty!37025 (t!378648 s!2326)))))

(declare-fun e!3854932 () Bool)

(assert (=> d!1991668 (= (matchZipper!2265 lt!2363835 (t!378648 s!2326)) e!3854932)))

(declare-fun b!6347213 () Bool)

(declare-fun nullableZipper!2019 ((InoxSet Context!11274)) Bool)

(assert (=> b!6347213 (= e!3854932 (nullableZipper!2019 lt!2363835))))

(declare-fun b!6347214 () Bool)

(declare-fun head!12998 (List!65060) C!32776)

(declare-fun tail!12083 (List!65060) List!65060)

(assert (=> b!6347214 (= e!3854932 (matchZipper!2265 (derivationStepZipper!2219 lt!2363835 (head!12998 (t!378648 s!2326))) (tail!12083 (t!378648 s!2326))))))

(assert (= (and d!1991668 c!1154459) b!6347213))

(assert (= (and d!1991668 (not c!1154459)) b!6347214))

(declare-fun m!7154652 () Bool)

(assert (=> d!1991668 m!7154652))

(declare-fun m!7154654 () Bool)

(assert (=> b!6347213 m!7154654))

(declare-fun m!7154656 () Bool)

(assert (=> b!6347214 m!7154656))

(assert (=> b!6347214 m!7154656))

(declare-fun m!7154658 () Bool)

(assert (=> b!6347214 m!7154658))

(declare-fun m!7154660 () Bool)

(assert (=> b!6347214 m!7154660))

(assert (=> b!6347214 m!7154658))

(assert (=> b!6347214 m!7154660))

(declare-fun m!7154662 () Bool)

(assert (=> b!6347214 m!7154662))

(assert (=> b!6346819 d!1991668))

(declare-fun d!1991670 () Bool)

(declare-fun c!1154460 () Bool)

(assert (=> d!1991670 (= c!1154460 (isEmpty!37025 (t!378648 s!2326)))))

(declare-fun e!3854933 () Bool)

(assert (=> d!1991670 (= (matchZipper!2265 lt!2363838 (t!378648 s!2326)) e!3854933)))

(declare-fun b!6347215 () Bool)

(assert (=> b!6347215 (= e!3854933 (nullableZipper!2019 lt!2363838))))

(declare-fun b!6347216 () Bool)

(assert (=> b!6347216 (= e!3854933 (matchZipper!2265 (derivationStepZipper!2219 lt!2363838 (head!12998 (t!378648 s!2326))) (tail!12083 (t!378648 s!2326))))))

(assert (= (and d!1991670 c!1154460) b!6347215))

(assert (= (and d!1991670 (not c!1154460)) b!6347216))

(assert (=> d!1991670 m!7154652))

(declare-fun m!7154664 () Bool)

(assert (=> b!6347215 m!7154664))

(assert (=> b!6347216 m!7154656))

(assert (=> b!6347216 m!7154656))

(declare-fun m!7154666 () Bool)

(assert (=> b!6347216 m!7154666))

(assert (=> b!6347216 m!7154660))

(assert (=> b!6347216 m!7154666))

(assert (=> b!6347216 m!7154660))

(declare-fun m!7154668 () Bool)

(assert (=> b!6347216 m!7154668))

(assert (=> b!6346819 d!1991670))

(declare-fun d!1991672 () Bool)

(declare-fun lt!2363911 () Int)

(assert (=> d!1991672 (>= lt!2363911 0)))

(declare-fun e!3854948 () Int)

(assert (=> d!1991672 (= lt!2363911 e!3854948)))

(declare-fun c!1154472 () Bool)

(assert (=> d!1991672 (= c!1154472 ((_ is Cons!64934) (exprs!6137 lt!2363824)))))

(assert (=> d!1991672 (= (contextDepthTotal!362 lt!2363824) lt!2363911)))

(declare-fun b!6347241 () Bool)

(declare-fun regexDepthTotal!210 (Regex!16253) Int)

(assert (=> b!6347241 (= e!3854948 (+ (regexDepthTotal!210 (h!71382 (exprs!6137 lt!2363824))) (contextDepthTotal!362 (Context!11275 (t!378646 (exprs!6137 lt!2363824))))))))

(declare-fun b!6347242 () Bool)

(assert (=> b!6347242 (= e!3854948 1)))

(assert (= (and d!1991672 c!1154472) b!6347241))

(assert (= (and d!1991672 (not c!1154472)) b!6347242))

(declare-fun m!7154670 () Bool)

(assert (=> b!6347241 m!7154670))

(declare-fun m!7154672 () Bool)

(assert (=> b!6347241 m!7154672))

(assert (=> b!6346839 d!1991672))

(declare-fun d!1991674 () Bool)

(declare-fun lt!2363912 () Int)

(assert (=> d!1991674 (>= lt!2363912 0)))

(declare-fun e!3854949 () Int)

(assert (=> d!1991674 (= lt!2363912 e!3854949)))

(declare-fun c!1154473 () Bool)

(assert (=> d!1991674 (= c!1154473 ((_ is Cons!64934) (exprs!6137 (h!71383 zl!343))))))

(assert (=> d!1991674 (= (contextDepthTotal!362 (h!71383 zl!343)) lt!2363912)))

(declare-fun b!6347243 () Bool)

(assert (=> b!6347243 (= e!3854949 (+ (regexDepthTotal!210 (h!71382 (exprs!6137 (h!71383 zl!343)))) (contextDepthTotal!362 (Context!11275 (t!378646 (exprs!6137 (h!71383 zl!343)))))))))

(declare-fun b!6347244 () Bool)

(assert (=> b!6347244 (= e!3854949 1)))

(assert (= (and d!1991674 c!1154473) b!6347243))

(assert (= (and d!1991674 (not c!1154473)) b!6347244))

(declare-fun m!7154674 () Bool)

(assert (=> b!6347243 m!7154674))

(declare-fun m!7154676 () Bool)

(assert (=> b!6347243 m!7154676))

(assert (=> b!6346839 d!1991674))

(declare-fun d!1991676 () Bool)

(declare-fun lambda!348979 () Int)

(declare-fun forall!15418 (List!65058 Int) Bool)

(assert (=> d!1991676 (= (inv!83879 setElem!43212) (forall!15418 (exprs!6137 setElem!43212) lambda!348979))))

(declare-fun bs!1589098 () Bool)

(assert (= bs!1589098 d!1991676))

(declare-fun m!7154698 () Bool)

(assert (=> bs!1589098 m!7154698))

(assert (=> setNonEmpty!43212 d!1991676))

(declare-fun bm!541094 () Bool)

(declare-fun call!541100 () (InoxSet Context!11274))

(declare-fun call!541101 () (InoxSet Context!11274))

(assert (=> bm!541094 (= call!541100 call!541101)))

(declare-fun b!6347255 () Bool)

(declare-fun e!3854958 () (InoxSet Context!11274))

(assert (=> b!6347255 (= e!3854958 call!541100)))

(declare-fun b!6347256 () Bool)

(declare-fun e!3854961 () (InoxSet Context!11274))

(assert (=> b!6347256 (= e!3854961 ((as const (Array Context!11274 Bool)) false))))

(declare-fun d!1991680 () Bool)

(declare-fun c!1154478 () Bool)

(assert (=> d!1991680 (= c!1154478 (and ((_ is ElementMatch!16253) (regOne!33018 (regOne!33018 r!7292))) (= (c!1154330 (regOne!33018 (regOne!33018 r!7292))) (h!71384 s!2326))))))

(declare-fun e!3854957 () (InoxSet Context!11274))

(assert (=> d!1991680 (= (derivationStepZipperDown!1501 (regOne!33018 (regOne!33018 r!7292)) (Context!11275 lt!2363842) (h!71384 s!2326)) e!3854957)))

(declare-fun bm!541095 () Bool)

(declare-fun call!541103 () (InoxSet Context!11274))

(assert (=> bm!541095 (= call!541101 call!541103)))

(declare-fun b!6347257 () Bool)

(declare-fun e!3854959 () (InoxSet Context!11274))

(declare-fun call!541104 () (InoxSet Context!11274))

(assert (=> b!6347257 (= e!3854959 ((_ map or) call!541104 call!541103))))

(declare-fun b!6347258 () Bool)

(declare-fun c!1154480 () Bool)

(assert (=> b!6347258 (= c!1154480 ((_ is Star!16253) (regOne!33018 (regOne!33018 r!7292))))))

(assert (=> b!6347258 (= e!3854958 e!3854961)))

(declare-fun bm!541096 () Bool)

(declare-fun call!541099 () List!65058)

(declare-fun call!541102 () List!65058)

(assert (=> bm!541096 (= call!541099 call!541102)))

(declare-fun b!6347259 () Bool)

(declare-fun e!3854960 () Bool)

(assert (=> b!6347259 (= e!3854960 (nullable!6246 (regOne!33018 (regOne!33018 (regOne!33018 r!7292)))))))

(declare-fun bm!541097 () Bool)

(declare-fun c!1154482 () Bool)

(assert (=> bm!541097 (= call!541104 (derivationStepZipperDown!1501 (ite c!1154482 (regOne!33019 (regOne!33018 (regOne!33018 r!7292))) (regOne!33018 (regOne!33018 (regOne!33018 r!7292)))) (ite c!1154482 (Context!11275 lt!2363842) (Context!11275 call!541102)) (h!71384 s!2326)))))

(declare-fun b!6347260 () Bool)

(declare-fun e!3854956 () (InoxSet Context!11274))

(assert (=> b!6347260 (= e!3854956 ((_ map or) call!541104 call!541101))))

(declare-fun b!6347261 () Bool)

(assert (=> b!6347261 (= e!3854961 call!541100)))

(declare-fun b!6347262 () Bool)

(declare-fun c!1154481 () Bool)

(assert (=> b!6347262 (= c!1154481 e!3854960)))

(declare-fun res!2611852 () Bool)

(assert (=> b!6347262 (=> (not res!2611852) (not e!3854960))))

(assert (=> b!6347262 (= res!2611852 ((_ is Concat!25098) (regOne!33018 (regOne!33018 r!7292))))))

(assert (=> b!6347262 (= e!3854959 e!3854956)))

(declare-fun b!6347263 () Bool)

(assert (=> b!6347263 (= e!3854957 (store ((as const (Array Context!11274 Bool)) false) (Context!11275 lt!2363842) true))))

(declare-fun c!1154479 () Bool)

(declare-fun bm!541098 () Bool)

(assert (=> bm!541098 (= call!541102 ($colon$colon!2114 (exprs!6137 (Context!11275 lt!2363842)) (ite (or c!1154481 c!1154479) (regTwo!33018 (regOne!33018 (regOne!33018 r!7292))) (regOne!33018 (regOne!33018 r!7292)))))))

(declare-fun bm!541099 () Bool)

(assert (=> bm!541099 (= call!541103 (derivationStepZipperDown!1501 (ite c!1154482 (regTwo!33019 (regOne!33018 (regOne!33018 r!7292))) (ite c!1154481 (regTwo!33018 (regOne!33018 (regOne!33018 r!7292))) (ite c!1154479 (regOne!33018 (regOne!33018 (regOne!33018 r!7292))) (reg!16582 (regOne!33018 (regOne!33018 r!7292)))))) (ite (or c!1154482 c!1154481) (Context!11275 lt!2363842) (Context!11275 call!541099)) (h!71384 s!2326)))))

(declare-fun b!6347264 () Bool)

(assert (=> b!6347264 (= e!3854957 e!3854959)))

(assert (=> b!6347264 (= c!1154482 ((_ is Union!16253) (regOne!33018 (regOne!33018 r!7292))))))

(declare-fun b!6347265 () Bool)

(assert (=> b!6347265 (= e!3854956 e!3854958)))

(assert (=> b!6347265 (= c!1154479 ((_ is Concat!25098) (regOne!33018 (regOne!33018 r!7292))))))

(assert (= (and d!1991680 c!1154478) b!6347263))

(assert (= (and d!1991680 (not c!1154478)) b!6347264))

(assert (= (and b!6347264 c!1154482) b!6347257))

(assert (= (and b!6347264 (not c!1154482)) b!6347262))

(assert (= (and b!6347262 res!2611852) b!6347259))

(assert (= (and b!6347262 c!1154481) b!6347260))

(assert (= (and b!6347262 (not c!1154481)) b!6347265))

(assert (= (and b!6347265 c!1154479) b!6347255))

(assert (= (and b!6347265 (not c!1154479)) b!6347258))

(assert (= (and b!6347258 c!1154480) b!6347261))

(assert (= (and b!6347258 (not c!1154480)) b!6347256))

(assert (= (or b!6347255 b!6347261) bm!541096))

(assert (= (or b!6347255 b!6347261) bm!541094))

(assert (= (or b!6347260 bm!541096) bm!541098))

(assert (= (or b!6347260 bm!541094) bm!541095))

(assert (= (or b!6347257 bm!541095) bm!541099))

(assert (= (or b!6347257 b!6347260) bm!541097))

(declare-fun m!7154700 () Bool)

(assert (=> bm!541098 m!7154700))

(declare-fun m!7154702 () Bool)

(assert (=> b!6347259 m!7154702))

(declare-fun m!7154704 () Bool)

(assert (=> bm!541097 m!7154704))

(declare-fun m!7154706 () Bool)

(assert (=> b!6347263 m!7154706))

(declare-fun m!7154708 () Bool)

(assert (=> bm!541099 m!7154708))

(assert (=> b!6346838 d!1991680))

(declare-fun bs!1589099 () Bool)

(declare-fun d!1991682 () Bool)

(assert (= bs!1589099 (and d!1991682 d!1991676)))

(declare-fun lambda!348980 () Int)

(assert (=> bs!1589099 (= lambda!348980 lambda!348979)))

(assert (=> d!1991682 (= (inv!83879 (h!71383 zl!343)) (forall!15418 (exprs!6137 (h!71383 zl!343)) lambda!348980))))

(declare-fun bs!1589100 () Bool)

(assert (= bs!1589100 d!1991682))

(declare-fun m!7154710 () Bool)

(assert (=> bs!1589100 m!7154710))

(assert (=> b!6346828 d!1991682))

(declare-fun bs!1589115 () Bool)

(declare-fun d!1991684 () Bool)

(assert (= bs!1589115 (and d!1991684 d!1991676)))

(declare-fun lambda!348990 () Int)

(assert (=> bs!1589115 (= lambda!348990 lambda!348979)))

(declare-fun bs!1589116 () Bool)

(assert (= bs!1589116 (and d!1991684 d!1991682)))

(assert (=> bs!1589116 (= lambda!348990 lambda!348980)))

(declare-fun b!6347309 () Bool)

(declare-fun e!3854990 () Bool)

(declare-fun e!3854985 () Bool)

(assert (=> b!6347309 (= e!3854990 e!3854985)))

(declare-fun c!1154500 () Bool)

(assert (=> b!6347309 (= c!1154500 (isEmpty!37021 (exprs!6137 (h!71383 zl!343))))))

(declare-fun b!6347310 () Bool)

(declare-fun e!3854987 () Regex!16253)

(assert (=> b!6347310 (= e!3854987 EmptyExpr!16253)))

(declare-fun b!6347311 () Bool)

(declare-fun e!3854986 () Regex!16253)

(assert (=> b!6347311 (= e!3854986 (h!71382 (exprs!6137 (h!71383 zl!343))))))

(declare-fun b!6347312 () Bool)

(declare-fun e!3854988 () Bool)

(assert (=> b!6347312 (= e!3854988 (isEmpty!37021 (t!378646 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun b!6347313 () Bool)

(assert (=> b!6347313 (= e!3854986 e!3854987)))

(declare-fun c!1154502 () Bool)

(assert (=> b!6347313 (= c!1154502 ((_ is Cons!64934) (exprs!6137 (h!71383 zl!343))))))

(declare-fun b!6347314 () Bool)

(declare-fun e!3854989 () Bool)

(declare-fun lt!2363923 () Regex!16253)

(declare-fun isConcat!1178 (Regex!16253) Bool)

(assert (=> b!6347314 (= e!3854989 (isConcat!1178 lt!2363923))))

(declare-fun b!6347315 () Bool)

(assert (=> b!6347315 (= e!3854985 e!3854989)))

(declare-fun c!1154501 () Bool)

(declare-fun tail!12084 (List!65058) List!65058)

(assert (=> b!6347315 (= c!1154501 (isEmpty!37021 (tail!12084 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun b!6347308 () Bool)

(assert (=> b!6347308 (= e!3854987 (Concat!25098 (h!71382 (exprs!6137 (h!71383 zl!343))) (generalisedConcat!1850 (t!378646 (exprs!6137 (h!71383 zl!343))))))))

(assert (=> d!1991684 e!3854990))

(declare-fun res!2611864 () Bool)

(assert (=> d!1991684 (=> (not res!2611864) (not e!3854990))))

(assert (=> d!1991684 (= res!2611864 (validRegex!7989 lt!2363923))))

(assert (=> d!1991684 (= lt!2363923 e!3854986)))

(declare-fun c!1154503 () Bool)

(assert (=> d!1991684 (= c!1154503 e!3854988)))

(declare-fun res!2611863 () Bool)

(assert (=> d!1991684 (=> (not res!2611863) (not e!3854988))))

(assert (=> d!1991684 (= res!2611863 ((_ is Cons!64934) (exprs!6137 (h!71383 zl!343))))))

(assert (=> d!1991684 (forall!15418 (exprs!6137 (h!71383 zl!343)) lambda!348990)))

(assert (=> d!1991684 (= (generalisedConcat!1850 (exprs!6137 (h!71383 zl!343))) lt!2363923)))

(declare-fun b!6347316 () Bool)

(declare-fun head!12999 (List!65058) Regex!16253)

(assert (=> b!6347316 (= e!3854989 (= lt!2363923 (head!12999 (exprs!6137 (h!71383 zl!343)))))))

(declare-fun b!6347317 () Bool)

(declare-fun isEmptyExpr!1655 (Regex!16253) Bool)

(assert (=> b!6347317 (= e!3854985 (isEmptyExpr!1655 lt!2363923))))

(assert (= (and d!1991684 res!2611863) b!6347312))

(assert (= (and d!1991684 c!1154503) b!6347311))

(assert (= (and d!1991684 (not c!1154503)) b!6347313))

(assert (= (and b!6347313 c!1154502) b!6347308))

(assert (= (and b!6347313 (not c!1154502)) b!6347310))

(assert (= (and d!1991684 res!2611864) b!6347309))

(assert (= (and b!6347309 c!1154500) b!6347317))

(assert (= (and b!6347309 (not c!1154500)) b!6347315))

(assert (= (and b!6347315 c!1154501) b!6347316))

(assert (= (and b!6347315 (not c!1154501)) b!6347314))

(declare-fun m!7154754 () Bool)

(assert (=> b!6347317 m!7154754))

(declare-fun m!7154756 () Bool)

(assert (=> d!1991684 m!7154756))

(declare-fun m!7154758 () Bool)

(assert (=> d!1991684 m!7154758))

(declare-fun m!7154760 () Bool)

(assert (=> b!6347315 m!7154760))

(assert (=> b!6347315 m!7154760))

(declare-fun m!7154762 () Bool)

(assert (=> b!6347315 m!7154762))

(declare-fun m!7154764 () Bool)

(assert (=> b!6347316 m!7154764))

(declare-fun m!7154766 () Bool)

(assert (=> b!6347314 m!7154766))

(assert (=> b!6347312 m!7154328))

(declare-fun m!7154768 () Bool)

(assert (=> b!6347308 m!7154768))

(declare-fun m!7154770 () Bool)

(assert (=> b!6347309 m!7154770))

(assert (=> b!6346821 d!1991684))

(declare-fun e!3854993 () Bool)

(declare-fun d!1991708 () Bool)

(assert (=> d!1991708 (= (matchZipper!2265 ((_ map or) lt!2363838 lt!2363840) (t!378648 s!2326)) e!3854993)))

(declare-fun res!2611867 () Bool)

(assert (=> d!1991708 (=> res!2611867 e!3854993)))

(assert (=> d!1991708 (= res!2611867 (matchZipper!2265 lt!2363838 (t!378648 s!2326)))))

(declare-fun lt!2363928 () Unit!158343)

(declare-fun choose!47093 ((InoxSet Context!11274) (InoxSet Context!11274) List!65060) Unit!158343)

(assert (=> d!1991708 (= lt!2363928 (choose!47093 lt!2363838 lt!2363840 (t!378648 s!2326)))))

(assert (=> d!1991708 (= (lemmaZipperConcatMatchesSameAsBothZippers!1084 lt!2363838 lt!2363840 (t!378648 s!2326)) lt!2363928)))

(declare-fun b!6347320 () Bool)

(assert (=> b!6347320 (= e!3854993 (matchZipper!2265 lt!2363840 (t!378648 s!2326)))))

(assert (= (and d!1991708 (not res!2611867)) b!6347320))

(assert (=> d!1991708 m!7154382))

(assert (=> d!1991708 m!7154326))

(declare-fun m!7154776 () Bool)

(assert (=> d!1991708 m!7154776))

(assert (=> b!6347320 m!7154388))

(assert (=> b!6346811 d!1991708))

(assert (=> b!6346811 d!1991670))

(declare-fun d!1991712 () Bool)

(declare-fun c!1154504 () Bool)

(assert (=> d!1991712 (= c!1154504 (isEmpty!37025 (t!378648 s!2326)))))

(declare-fun e!3854994 () Bool)

(assert (=> d!1991712 (= (matchZipper!2265 ((_ map or) lt!2363838 lt!2363840) (t!378648 s!2326)) e!3854994)))

(declare-fun b!6347321 () Bool)

(assert (=> b!6347321 (= e!3854994 (nullableZipper!2019 ((_ map or) lt!2363838 lt!2363840)))))

(declare-fun b!6347322 () Bool)

(assert (=> b!6347322 (= e!3854994 (matchZipper!2265 (derivationStepZipper!2219 ((_ map or) lt!2363838 lt!2363840) (head!12998 (t!378648 s!2326))) (tail!12083 (t!378648 s!2326))))))

(assert (= (and d!1991712 c!1154504) b!6347321))

(assert (= (and d!1991712 (not c!1154504)) b!6347322))

(assert (=> d!1991712 m!7154652))

(declare-fun m!7154778 () Bool)

(assert (=> b!6347321 m!7154778))

(assert (=> b!6347322 m!7154656))

(assert (=> b!6347322 m!7154656))

(declare-fun m!7154780 () Bool)

(assert (=> b!6347322 m!7154780))

(assert (=> b!6347322 m!7154660))

(assert (=> b!6347322 m!7154780))

(assert (=> b!6347322 m!7154660))

(declare-fun m!7154782 () Bool)

(assert (=> b!6347322 m!7154782))

(assert (=> b!6346811 d!1991712))

(declare-fun b!6347364 () Bool)

(declare-fun e!3855023 () Option!16144)

(assert (=> b!6347364 (= e!3855023 (Some!16143 (tuple2!66465 Nil!64936 s!2326)))))

(declare-fun b!6347365 () Bool)

(declare-fun e!3855024 () Option!16144)

(assert (=> b!6347365 (= e!3855023 e!3855024)))

(declare-fun c!1154521 () Bool)

(assert (=> b!6347365 (= c!1154521 ((_ is Nil!64936) s!2326))))

(declare-fun b!6347366 () Bool)

(declare-fun e!3855020 () Bool)

(declare-fun lt!2363951 () Option!16144)

(declare-fun ++!14322 (List!65060 List!65060) List!65060)

(declare-fun get!22464 (Option!16144) tuple2!66464)

(assert (=> b!6347366 (= e!3855020 (= (++!14322 (_1!36535 (get!22464 lt!2363951)) (_2!36535 (get!22464 lt!2363951))) s!2326))))

(declare-fun b!6347367 () Bool)

(declare-fun e!3855021 () Bool)

(assert (=> b!6347367 (= e!3855021 (matchR!8436 (regTwo!33018 r!7292) s!2326))))

(declare-fun b!6347368 () Bool)

(declare-fun res!2611891 () Bool)

(assert (=> b!6347368 (=> (not res!2611891) (not e!3855020))))

(assert (=> b!6347368 (= res!2611891 (matchR!8436 (regTwo!33018 r!7292) (_2!36535 (get!22464 lt!2363951))))))

(declare-fun b!6347369 () Bool)

(declare-fun lt!2363953 () Unit!158343)

(declare-fun lt!2363952 () Unit!158343)

(assert (=> b!6347369 (= lt!2363953 lt!2363952)))

(assert (=> b!6347369 (= (++!14322 (++!14322 Nil!64936 (Cons!64936 (h!71384 s!2326) Nil!64936)) (t!378648 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2417 (List!65060 C!32776 List!65060 List!65060) Unit!158343)

(assert (=> b!6347369 (= lt!2363952 (lemmaMoveElementToOtherListKeepsConcatEq!2417 Nil!64936 (h!71384 s!2326) (t!378648 s!2326) s!2326))))

(assert (=> b!6347369 (= e!3855024 (findConcatSeparation!2558 (regOne!33018 r!7292) (regTwo!33018 r!7292) (++!14322 Nil!64936 (Cons!64936 (h!71384 s!2326) Nil!64936)) (t!378648 s!2326) s!2326))))

(declare-fun b!6347370 () Bool)

(declare-fun res!2611887 () Bool)

(assert (=> b!6347370 (=> (not res!2611887) (not e!3855020))))

(assert (=> b!6347370 (= res!2611887 (matchR!8436 (regOne!33018 r!7292) (_1!36535 (get!22464 lt!2363951))))))

(declare-fun d!1991714 () Bool)

(declare-fun e!3855022 () Bool)

(assert (=> d!1991714 e!3855022))

(declare-fun res!2611888 () Bool)

(assert (=> d!1991714 (=> res!2611888 e!3855022)))

(assert (=> d!1991714 (= res!2611888 e!3855020)))

(declare-fun res!2611889 () Bool)

(assert (=> d!1991714 (=> (not res!2611889) (not e!3855020))))

(assert (=> d!1991714 (= res!2611889 (isDefined!12847 lt!2363951))))

(assert (=> d!1991714 (= lt!2363951 e!3855023)))

(declare-fun c!1154522 () Bool)

(assert (=> d!1991714 (= c!1154522 e!3855021)))

(declare-fun res!2611890 () Bool)

(assert (=> d!1991714 (=> (not res!2611890) (not e!3855021))))

(assert (=> d!1991714 (= res!2611890 (matchR!8436 (regOne!33018 r!7292) Nil!64936))))

(assert (=> d!1991714 (validRegex!7989 (regOne!33018 r!7292))))

(assert (=> d!1991714 (= (findConcatSeparation!2558 (regOne!33018 r!7292) (regTwo!33018 r!7292) Nil!64936 s!2326 s!2326) lt!2363951)))

(declare-fun b!6347371 () Bool)

(assert (=> b!6347371 (= e!3855022 (not (isDefined!12847 lt!2363951)))))

(declare-fun b!6347372 () Bool)

(assert (=> b!6347372 (= e!3855024 None!16143)))

(assert (= (and d!1991714 res!2611890) b!6347367))

(assert (= (and d!1991714 c!1154522) b!6347364))

(assert (= (and d!1991714 (not c!1154522)) b!6347365))

(assert (= (and b!6347365 c!1154521) b!6347372))

(assert (= (and b!6347365 (not c!1154521)) b!6347369))

(assert (= (and d!1991714 res!2611889) b!6347370))

(assert (= (and b!6347370 res!2611887) b!6347368))

(assert (= (and b!6347368 res!2611891) b!6347366))

(assert (= (and d!1991714 (not res!2611888)) b!6347371))

(declare-fun m!7154810 () Bool)

(assert (=> b!6347366 m!7154810))

(declare-fun m!7154812 () Bool)

(assert (=> b!6347366 m!7154812))

(declare-fun m!7154814 () Bool)

(assert (=> b!6347367 m!7154814))

(declare-fun m!7154816 () Bool)

(assert (=> b!6347371 m!7154816))

(assert (=> d!1991714 m!7154816))

(declare-fun m!7154818 () Bool)

(assert (=> d!1991714 m!7154818))

(declare-fun m!7154820 () Bool)

(assert (=> d!1991714 m!7154820))

(declare-fun m!7154822 () Bool)

(assert (=> b!6347369 m!7154822))

(assert (=> b!6347369 m!7154822))

(declare-fun m!7154826 () Bool)

(assert (=> b!6347369 m!7154826))

(declare-fun m!7154830 () Bool)

(assert (=> b!6347369 m!7154830))

(assert (=> b!6347369 m!7154822))

(declare-fun m!7154836 () Bool)

(assert (=> b!6347369 m!7154836))

(assert (=> b!6347370 m!7154810))

(declare-fun m!7154842 () Bool)

(assert (=> b!6347370 m!7154842))

(assert (=> b!6347368 m!7154810))

(declare-fun m!7154844 () Bool)

(assert (=> b!6347368 m!7154844))

(assert (=> b!6346842 d!1991714))

(declare-fun d!1991726 () Bool)

(declare-fun choose!47095 (Int) Bool)

(assert (=> d!1991726 (= (Exists!3323 lambda!348935) (choose!47095 lambda!348935))))

(declare-fun bs!1589141 () Bool)

(assert (= bs!1589141 d!1991726))

(declare-fun m!7154852 () Bool)

(assert (=> bs!1589141 m!7154852))

(assert (=> b!6346842 d!1991726))

(declare-fun d!1991730 () Bool)

(assert (=> d!1991730 (= (Exists!3323 lambda!348936) (choose!47095 lambda!348936))))

(declare-fun bs!1589142 () Bool)

(assert (= bs!1589142 d!1991730))

(declare-fun m!7154854 () Bool)

(assert (=> bs!1589142 m!7154854))

(assert (=> b!6346842 d!1991730))

(declare-fun bs!1589151 () Bool)

(declare-fun d!1991732 () Bool)

(assert (= bs!1589151 (and d!1991732 b!6346842)))

(declare-fun lambda!349009 () Int)

(assert (=> bs!1589151 (= lambda!349009 lambda!348935)))

(assert (=> bs!1589151 (not (= lambda!349009 lambda!348936))))

(declare-fun bs!1589152 () Bool)

(assert (= bs!1589152 (and d!1991732 b!6346830)))

(assert (=> bs!1589152 (= (and (= (regOne!33018 r!7292) (regOne!33018 (regOne!33018 r!7292))) (= (regTwo!33018 r!7292) lt!2363831)) (= lambda!349009 lambda!348938))))

(assert (=> bs!1589152 (not (= lambda!349009 lambda!348939))))

(assert (=> d!1991732 true))

(assert (=> d!1991732 true))

(assert (=> d!1991732 true))

(assert (=> d!1991732 (= (isDefined!12847 (findConcatSeparation!2558 (regOne!33018 r!7292) (regTwo!33018 r!7292) Nil!64936 s!2326 s!2326)) (Exists!3323 lambda!349009))))

(declare-fun lt!2363959 () Unit!158343)

(declare-fun choose!47096 (Regex!16253 Regex!16253 List!65060) Unit!158343)

(assert (=> d!1991732 (= lt!2363959 (choose!47096 (regOne!33018 r!7292) (regTwo!33018 r!7292) s!2326))))

(assert (=> d!1991732 (validRegex!7989 (regOne!33018 r!7292))))

(assert (=> d!1991732 (= (lemmaFindConcatSeparationEquivalentToExists!2322 (regOne!33018 r!7292) (regTwo!33018 r!7292) s!2326) lt!2363959)))

(declare-fun bs!1589156 () Bool)

(assert (= bs!1589156 d!1991732))

(assert (=> bs!1589156 m!7154284))

(declare-fun m!7154876 () Bool)

(assert (=> bs!1589156 m!7154876))

(declare-fun m!7154878 () Bool)

(assert (=> bs!1589156 m!7154878))

(assert (=> bs!1589156 m!7154284))

(assert (=> bs!1589156 m!7154286))

(assert (=> bs!1589156 m!7154820))

(assert (=> b!6346842 d!1991732))

(declare-fun bs!1589170 () Bool)

(declare-fun d!1991742 () Bool)

(assert (= bs!1589170 (and d!1991742 b!6346830)))

(declare-fun lambda!349016 () Int)

(assert (=> bs!1589170 (not (= lambda!349016 lambda!348939))))

(assert (=> bs!1589170 (= (and (= (regOne!33018 r!7292) (regOne!33018 (regOne!33018 r!7292))) (= (regTwo!33018 r!7292) lt!2363831)) (= lambda!349016 lambda!348938))))

(declare-fun bs!1589171 () Bool)

(assert (= bs!1589171 (and d!1991742 b!6346842)))

(assert (=> bs!1589171 (= lambda!349016 lambda!348935)))

(assert (=> bs!1589171 (not (= lambda!349016 lambda!348936))))

(declare-fun bs!1589172 () Bool)

(assert (= bs!1589172 (and d!1991742 d!1991732)))

(assert (=> bs!1589172 (= lambda!349016 lambda!349009)))

(assert (=> d!1991742 true))

(assert (=> d!1991742 true))

(assert (=> d!1991742 true))

(declare-fun lambda!349017 () Int)

(assert (=> bs!1589170 (= (and (= (regOne!33018 r!7292) (regOne!33018 (regOne!33018 r!7292))) (= (regTwo!33018 r!7292) lt!2363831)) (= lambda!349017 lambda!348939))))

(assert (=> bs!1589170 (not (= lambda!349017 lambda!348938))))

(assert (=> bs!1589171 (not (= lambda!349017 lambda!348935))))

(declare-fun bs!1589173 () Bool)

(assert (= bs!1589173 d!1991742))

(assert (=> bs!1589173 (not (= lambda!349017 lambda!349016))))

(assert (=> bs!1589171 (= lambda!349017 lambda!348936)))

(assert (=> bs!1589172 (not (= lambda!349017 lambda!349009))))

(assert (=> d!1991742 true))

(assert (=> d!1991742 true))

(assert (=> d!1991742 true))

(assert (=> d!1991742 (= (Exists!3323 lambda!349016) (Exists!3323 lambda!349017))))

(declare-fun lt!2363969 () Unit!158343)

(declare-fun choose!47097 (Regex!16253 Regex!16253 List!65060) Unit!158343)

(assert (=> d!1991742 (= lt!2363969 (choose!47097 (regOne!33018 r!7292) (regTwo!33018 r!7292) s!2326))))

(assert (=> d!1991742 (validRegex!7989 (regOne!33018 r!7292))))

(assert (=> d!1991742 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1860 (regOne!33018 r!7292) (regTwo!33018 r!7292) s!2326) lt!2363969)))

(declare-fun m!7154922 () Bool)

(assert (=> bs!1589173 m!7154922))

(declare-fun m!7154924 () Bool)

(assert (=> bs!1589173 m!7154924))

(declare-fun m!7154926 () Bool)

(assert (=> bs!1589173 m!7154926))

(assert (=> bs!1589173 m!7154820))

(assert (=> b!6346842 d!1991742))

(declare-fun d!1991754 () Bool)

(declare-fun isEmpty!37026 (Option!16144) Bool)

(assert (=> d!1991754 (= (isDefined!12847 (findConcatSeparation!2558 (regOne!33018 r!7292) (regTwo!33018 r!7292) Nil!64936 s!2326 s!2326)) (not (isEmpty!37026 (findConcatSeparation!2558 (regOne!33018 r!7292) (regTwo!33018 r!7292) Nil!64936 s!2326 s!2326))))))

(declare-fun bs!1589174 () Bool)

(assert (= bs!1589174 d!1991754))

(assert (=> bs!1589174 m!7154284))

(declare-fun m!7154930 () Bool)

(assert (=> bs!1589174 m!7154930))

(assert (=> b!6346842 d!1991754))

(declare-fun d!1991756 () Bool)

(declare-fun lt!2363972 () Regex!16253)

(assert (=> d!1991756 (validRegex!7989 lt!2363972)))

(assert (=> d!1991756 (= lt!2363972 (generalisedUnion!2097 (unfocusZipperList!1674 zl!343)))))

(assert (=> d!1991756 (= (unfocusZipper!1995 zl!343) lt!2363972)))

(declare-fun bs!1589177 () Bool)

(assert (= bs!1589177 d!1991756))

(declare-fun m!7154932 () Bool)

(assert (=> bs!1589177 m!7154932))

(assert (=> bs!1589177 m!7154274))

(assert (=> bs!1589177 m!7154274))

(assert (=> bs!1589177 m!7154276))

(assert (=> b!6346832 d!1991756))

(declare-fun b!6347511 () Bool)

(declare-fun e!3855099 () Bool)

(declare-fun call!541120 () Bool)

(assert (=> b!6347511 (= e!3855099 call!541120)))

(declare-fun b!6347512 () Bool)

(declare-fun res!2611930 () Bool)

(declare-fun e!3855100 () Bool)

(assert (=> b!6347512 (=> res!2611930 e!3855100)))

(assert (=> b!6347512 (= res!2611930 (not ((_ is Concat!25098) r!7292)))))

(declare-fun e!3855105 () Bool)

(assert (=> b!6347512 (= e!3855105 e!3855100)))

(declare-fun bm!541113 () Bool)

(declare-fun call!541118 () Bool)

(declare-fun c!1154548 () Bool)

(assert (=> bm!541113 (= call!541118 (validRegex!7989 (ite c!1154548 (regOne!33019 r!7292) (regOne!33018 r!7292))))))

(declare-fun b!6347513 () Bool)

(declare-fun e!3855103 () Bool)

(assert (=> b!6347513 (= e!3855100 e!3855103)))

(declare-fun res!2611932 () Bool)

(assert (=> b!6347513 (=> (not res!2611932) (not e!3855103))))

(assert (=> b!6347513 (= res!2611932 call!541118)))

(declare-fun bm!541114 () Bool)

(declare-fun call!541119 () Bool)

(assert (=> bm!541114 (= call!541120 call!541119)))

(declare-fun b!6347514 () Bool)

(declare-fun e!3855102 () Bool)

(assert (=> b!6347514 (= e!3855102 e!3855105)))

(assert (=> b!6347514 (= c!1154548 ((_ is Union!16253) r!7292))))

(declare-fun b!6347515 () Bool)

(assert (=> b!6347515 (= e!3855103 call!541120)))

(declare-fun b!6347516 () Bool)

(declare-fun e!3855104 () Bool)

(assert (=> b!6347516 (= e!3855102 e!3855104)))

(declare-fun res!2611934 () Bool)

(assert (=> b!6347516 (= res!2611934 (not (nullable!6246 (reg!16582 r!7292))))))

(assert (=> b!6347516 (=> (not res!2611934) (not e!3855104))))

(declare-fun d!1991762 () Bool)

(declare-fun res!2611931 () Bool)

(declare-fun e!3855101 () Bool)

(assert (=> d!1991762 (=> res!2611931 e!3855101)))

(assert (=> d!1991762 (= res!2611931 ((_ is ElementMatch!16253) r!7292))))

(assert (=> d!1991762 (= (validRegex!7989 r!7292) e!3855101)))

(declare-fun b!6347517 () Bool)

(assert (=> b!6347517 (= e!3855101 e!3855102)))

(declare-fun c!1154547 () Bool)

(assert (=> b!6347517 (= c!1154547 ((_ is Star!16253) r!7292))))

(declare-fun b!6347518 () Bool)

(assert (=> b!6347518 (= e!3855104 call!541119)))

(declare-fun b!6347519 () Bool)

(declare-fun res!2611933 () Bool)

(assert (=> b!6347519 (=> (not res!2611933) (not e!3855099))))

(assert (=> b!6347519 (= res!2611933 call!541118)))

(assert (=> b!6347519 (= e!3855105 e!3855099)))

(declare-fun bm!541115 () Bool)

(assert (=> bm!541115 (= call!541119 (validRegex!7989 (ite c!1154547 (reg!16582 r!7292) (ite c!1154548 (regTwo!33019 r!7292) (regTwo!33018 r!7292)))))))

(assert (= (and d!1991762 (not res!2611931)) b!6347517))

(assert (= (and b!6347517 c!1154547) b!6347516))

(assert (= (and b!6347517 (not c!1154547)) b!6347514))

(assert (= (and b!6347516 res!2611934) b!6347518))

(assert (= (and b!6347514 c!1154548) b!6347519))

(assert (= (and b!6347514 (not c!1154548)) b!6347512))

(assert (= (and b!6347519 res!2611933) b!6347511))

(assert (= (and b!6347512 (not res!2611930)) b!6347513))

(assert (= (and b!6347513 res!2611932) b!6347515))

(assert (= (or b!6347511 b!6347515) bm!541114))

(assert (= (or b!6347519 b!6347513) bm!541113))

(assert (= (or b!6347518 bm!541114) bm!541115))

(declare-fun m!7154934 () Bool)

(assert (=> bm!541113 m!7154934))

(declare-fun m!7154936 () Bool)

(assert (=> b!6347516 m!7154936))

(declare-fun m!7154938 () Bool)

(assert (=> bm!541115 m!7154938))

(assert (=> start!628850 d!1991762))

(declare-fun bs!1589178 () Bool)

(declare-fun b!6347558 () Bool)

(assert (= bs!1589178 (and b!6347558 b!6346830)))

(declare-fun lambda!349022 () Int)

(assert (=> bs!1589178 (not (= lambda!349022 lambda!348939))))

(assert (=> bs!1589178 (not (= lambda!349022 lambda!348938))))

(declare-fun bs!1589179 () Bool)

(assert (= bs!1589179 (and b!6347558 d!1991742)))

(assert (=> bs!1589179 (not (= lambda!349022 lambda!349017))))

(declare-fun bs!1589180 () Bool)

(assert (= bs!1589180 (and b!6347558 b!6346842)))

(assert (=> bs!1589180 (not (= lambda!349022 lambda!348935))))

(assert (=> bs!1589179 (not (= lambda!349022 lambda!349016))))

(assert (=> bs!1589180 (not (= lambda!349022 lambda!348936))))

(declare-fun bs!1589181 () Bool)

(assert (= bs!1589181 (and b!6347558 d!1991732)))

(assert (=> bs!1589181 (not (= lambda!349022 lambda!349009))))

(assert (=> b!6347558 true))

(assert (=> b!6347558 true))

(declare-fun bs!1589182 () Bool)

(declare-fun b!6347553 () Bool)

(assert (= bs!1589182 (and b!6347553 b!6346830)))

(declare-fun lambda!349023 () Int)

(assert (=> bs!1589182 (= (and (= (regOne!33018 r!7292) (regOne!33018 (regOne!33018 r!7292))) (= (regTwo!33018 r!7292) lt!2363831)) (= lambda!349023 lambda!348939))))

(assert (=> bs!1589182 (not (= lambda!349023 lambda!348938))))

(declare-fun bs!1589183 () Bool)

(assert (= bs!1589183 (and b!6347553 d!1991742)))

(assert (=> bs!1589183 (= lambda!349023 lambda!349017)))

(declare-fun bs!1589184 () Bool)

(assert (= bs!1589184 (and b!6347553 b!6346842)))

(assert (=> bs!1589184 (not (= lambda!349023 lambda!348935))))

(declare-fun bs!1589185 () Bool)

(assert (= bs!1589185 (and b!6347553 b!6347558)))

(assert (=> bs!1589185 (not (= lambda!349023 lambda!349022))))

(assert (=> bs!1589183 (not (= lambda!349023 lambda!349016))))

(assert (=> bs!1589184 (= lambda!349023 lambda!348936)))

(declare-fun bs!1589186 () Bool)

(assert (= bs!1589186 (and b!6347553 d!1991732)))

(assert (=> bs!1589186 (not (= lambda!349023 lambda!349009))))

(assert (=> b!6347553 true))

(assert (=> b!6347553 true))

(declare-fun bm!541120 () Bool)

(declare-fun c!1154560 () Bool)

(declare-fun call!541125 () Bool)

(assert (=> bm!541120 (= call!541125 (Exists!3323 (ite c!1154560 lambda!349022 lambda!349023)))))

(declare-fun bm!541121 () Bool)

(declare-fun call!541126 () Bool)

(assert (=> bm!541121 (= call!541126 (isEmpty!37025 s!2326))))

(declare-fun b!6347552 () Bool)

(declare-fun e!3855126 () Bool)

(declare-fun e!3855127 () Bool)

(assert (=> b!6347552 (= e!3855126 e!3855127)))

(declare-fun res!2611953 () Bool)

(assert (=> b!6347552 (= res!2611953 (not ((_ is EmptyLang!16253) r!7292)))))

(assert (=> b!6347552 (=> (not res!2611953) (not e!3855127))))

(declare-fun e!3855124 () Bool)

(assert (=> b!6347553 (= e!3855124 call!541125)))

(declare-fun b!6347554 () Bool)

(declare-fun e!3855129 () Bool)

(assert (=> b!6347554 (= e!3855129 e!3855124)))

(assert (=> b!6347554 (= c!1154560 ((_ is Star!16253) r!7292))))

(declare-fun b!6347555 () Bool)

(declare-fun e!3855125 () Bool)

(assert (=> b!6347555 (= e!3855125 (= s!2326 (Cons!64936 (c!1154330 r!7292) Nil!64936)))))

(declare-fun b!6347556 () Bool)

(declare-fun e!3855130 () Bool)

(assert (=> b!6347556 (= e!3855130 (matchRSpec!3354 (regTwo!33019 r!7292) s!2326))))

(declare-fun b!6347557 () Bool)

(declare-fun res!2611951 () Bool)

(declare-fun e!3855128 () Bool)

(assert (=> b!6347557 (=> res!2611951 e!3855128)))

(assert (=> b!6347557 (= res!2611951 call!541126)))

(assert (=> b!6347557 (= e!3855124 e!3855128)))

(declare-fun b!6347559 () Bool)

(declare-fun c!1154558 () Bool)

(assert (=> b!6347559 (= c!1154558 ((_ is Union!16253) r!7292))))

(assert (=> b!6347559 (= e!3855125 e!3855129)))

(declare-fun b!6347560 () Bool)

(declare-fun c!1154557 () Bool)

(assert (=> b!6347560 (= c!1154557 ((_ is ElementMatch!16253) r!7292))))

(assert (=> b!6347560 (= e!3855127 e!3855125)))

(declare-fun b!6347561 () Bool)

(assert (=> b!6347561 (= e!3855126 call!541126)))

(declare-fun b!6347562 () Bool)

(assert (=> b!6347562 (= e!3855129 e!3855130)))

(declare-fun res!2611952 () Bool)

(assert (=> b!6347562 (= res!2611952 (matchRSpec!3354 (regOne!33019 r!7292) s!2326))))

(assert (=> b!6347562 (=> res!2611952 e!3855130)))

(assert (=> b!6347558 (= e!3855128 call!541125)))

(declare-fun d!1991764 () Bool)

(declare-fun c!1154559 () Bool)

(assert (=> d!1991764 (= c!1154559 ((_ is EmptyExpr!16253) r!7292))))

(assert (=> d!1991764 (= (matchRSpec!3354 r!7292 s!2326) e!3855126)))

(assert (= (and d!1991764 c!1154559) b!6347561))

(assert (= (and d!1991764 (not c!1154559)) b!6347552))

(assert (= (and b!6347552 res!2611953) b!6347560))

(assert (= (and b!6347560 c!1154557) b!6347555))

(assert (= (and b!6347560 (not c!1154557)) b!6347559))

(assert (= (and b!6347559 c!1154558) b!6347562))

(assert (= (and b!6347559 (not c!1154558)) b!6347554))

(assert (= (and b!6347562 (not res!2611952)) b!6347556))

(assert (= (and b!6347554 c!1154560) b!6347557))

(assert (= (and b!6347554 (not c!1154560)) b!6347553))

(assert (= (and b!6347557 (not res!2611951)) b!6347558))

(assert (= (or b!6347558 b!6347553) bm!541120))

(assert (= (or b!6347561 b!6347557) bm!541121))

(declare-fun m!7154940 () Bool)

(assert (=> bm!541120 m!7154940))

(declare-fun m!7154942 () Bool)

(assert (=> bm!541121 m!7154942))

(declare-fun m!7154944 () Bool)

(assert (=> b!6347556 m!7154944))

(declare-fun m!7154946 () Bool)

(assert (=> b!6347562 m!7154946))

(assert (=> b!6346840 d!1991764))

(declare-fun b!6347591 () Bool)

(declare-fun e!3855149 () Bool)

(declare-fun lt!2363975 () Bool)

(declare-fun call!541129 () Bool)

(assert (=> b!6347591 (= e!3855149 (= lt!2363975 call!541129))))

(declare-fun b!6347592 () Bool)

(declare-fun res!2611971 () Bool)

(declare-fun e!3855151 () Bool)

(assert (=> b!6347592 (=> res!2611971 e!3855151)))

(assert (=> b!6347592 (= res!2611971 (not (isEmpty!37025 (tail!12083 s!2326))))))

(declare-fun b!6347593 () Bool)

(declare-fun e!3855147 () Bool)

(assert (=> b!6347593 (= e!3855147 (= (head!12998 s!2326) (c!1154330 r!7292)))))

(declare-fun b!6347594 () Bool)

(declare-fun res!2611975 () Bool)

(declare-fun e!3855146 () Bool)

(assert (=> b!6347594 (=> res!2611975 e!3855146)))

(assert (=> b!6347594 (= res!2611975 e!3855147)))

(declare-fun res!2611973 () Bool)

(assert (=> b!6347594 (=> (not res!2611973) (not e!3855147))))

(assert (=> b!6347594 (= res!2611973 lt!2363975)))

(declare-fun b!6347595 () Bool)

(declare-fun e!3855150 () Bool)

(assert (=> b!6347595 (= e!3855150 (not lt!2363975))))

(declare-fun b!6347596 () Bool)

(declare-fun e!3855148 () Bool)

(assert (=> b!6347596 (= e!3855148 e!3855151)))

(declare-fun res!2611970 () Bool)

(assert (=> b!6347596 (=> res!2611970 e!3855151)))

(assert (=> b!6347596 (= res!2611970 call!541129)))

(declare-fun b!6347597 () Bool)

(assert (=> b!6347597 (= e!3855146 e!3855148)))

(declare-fun res!2611976 () Bool)

(assert (=> b!6347597 (=> (not res!2611976) (not e!3855148))))

(assert (=> b!6347597 (= res!2611976 (not lt!2363975))))

(declare-fun b!6347598 () Bool)

(declare-fun e!3855145 () Bool)

(assert (=> b!6347598 (= e!3855145 (nullable!6246 r!7292))))

(declare-fun b!6347599 () Bool)

(assert (=> b!6347599 (= e!3855149 e!3855150)))

(declare-fun c!1154567 () Bool)

(assert (=> b!6347599 (= c!1154567 ((_ is EmptyLang!16253) r!7292))))

(declare-fun d!1991766 () Bool)

(assert (=> d!1991766 e!3855149))

(declare-fun c!1154568 () Bool)

(assert (=> d!1991766 (= c!1154568 ((_ is EmptyExpr!16253) r!7292))))

(assert (=> d!1991766 (= lt!2363975 e!3855145)))

(declare-fun c!1154569 () Bool)

(assert (=> d!1991766 (= c!1154569 (isEmpty!37025 s!2326))))

(assert (=> d!1991766 (validRegex!7989 r!7292)))

(assert (=> d!1991766 (= (matchR!8436 r!7292 s!2326) lt!2363975)))

(declare-fun b!6347600 () Bool)

(declare-fun res!2611972 () Bool)

(assert (=> b!6347600 (=> (not res!2611972) (not e!3855147))))

(assert (=> b!6347600 (= res!2611972 (isEmpty!37025 (tail!12083 s!2326)))))

(declare-fun b!6347601 () Bool)

(declare-fun res!2611977 () Bool)

(assert (=> b!6347601 (=> (not res!2611977) (not e!3855147))))

(assert (=> b!6347601 (= res!2611977 (not call!541129))))

(declare-fun b!6347602 () Bool)

(declare-fun derivativeStep!4958 (Regex!16253 C!32776) Regex!16253)

(assert (=> b!6347602 (= e!3855145 (matchR!8436 (derivativeStep!4958 r!7292 (head!12998 s!2326)) (tail!12083 s!2326)))))

(declare-fun bm!541124 () Bool)

(assert (=> bm!541124 (= call!541129 (isEmpty!37025 s!2326))))

(declare-fun b!6347603 () Bool)

(assert (=> b!6347603 (= e!3855151 (not (= (head!12998 s!2326) (c!1154330 r!7292))))))

(declare-fun b!6347604 () Bool)

(declare-fun res!2611974 () Bool)

(assert (=> b!6347604 (=> res!2611974 e!3855146)))

(assert (=> b!6347604 (= res!2611974 (not ((_ is ElementMatch!16253) r!7292)))))

(assert (=> b!6347604 (= e!3855150 e!3855146)))

(assert (= (and d!1991766 c!1154569) b!6347598))

(assert (= (and d!1991766 (not c!1154569)) b!6347602))

(assert (= (and d!1991766 c!1154568) b!6347591))

(assert (= (and d!1991766 (not c!1154568)) b!6347599))

(assert (= (and b!6347599 c!1154567) b!6347595))

(assert (= (and b!6347599 (not c!1154567)) b!6347604))

(assert (= (and b!6347604 (not res!2611974)) b!6347594))

(assert (= (and b!6347594 res!2611973) b!6347601))

(assert (= (and b!6347601 res!2611977) b!6347600))

(assert (= (and b!6347600 res!2611972) b!6347593))

(assert (= (and b!6347594 (not res!2611975)) b!6347597))

(assert (= (and b!6347597 res!2611976) b!6347596))

(assert (= (and b!6347596 (not res!2611970)) b!6347592))

(assert (= (and b!6347592 (not res!2611971)) b!6347603))

(assert (= (or b!6347591 b!6347596 b!6347601) bm!541124))

(declare-fun m!7154948 () Bool)

(assert (=> b!6347600 m!7154948))

(assert (=> b!6347600 m!7154948))

(declare-fun m!7154950 () Bool)

(assert (=> b!6347600 m!7154950))

(declare-fun m!7154952 () Bool)

(assert (=> b!6347598 m!7154952))

(declare-fun m!7154954 () Bool)

(assert (=> b!6347603 m!7154954))

(assert (=> b!6347592 m!7154948))

(assert (=> b!6347592 m!7154948))

(assert (=> b!6347592 m!7154950))

(assert (=> b!6347593 m!7154954))

(assert (=> b!6347602 m!7154954))

(assert (=> b!6347602 m!7154954))

(declare-fun m!7154956 () Bool)

(assert (=> b!6347602 m!7154956))

(assert (=> b!6347602 m!7154948))

(assert (=> b!6347602 m!7154956))

(assert (=> b!6347602 m!7154948))

(declare-fun m!7154958 () Bool)

(assert (=> b!6347602 m!7154958))

(assert (=> d!1991766 m!7154942))

(assert (=> d!1991766 m!7154322))

(assert (=> bm!541124 m!7154942))

(assert (=> b!6346840 d!1991766))

(declare-fun d!1991768 () Bool)

(assert (=> d!1991768 (= (matchR!8436 r!7292 s!2326) (matchRSpec!3354 r!7292 s!2326))))

(declare-fun lt!2363978 () Unit!158343)

(declare-fun choose!47098 (Regex!16253 List!65060) Unit!158343)

(assert (=> d!1991768 (= lt!2363978 (choose!47098 r!7292 s!2326))))

(assert (=> d!1991768 (validRegex!7989 r!7292)))

(assert (=> d!1991768 (= (mainMatchTheorem!3354 r!7292 s!2326) lt!2363978)))

(declare-fun bs!1589187 () Bool)

(assert (= bs!1589187 d!1991768))

(assert (=> bs!1589187 m!7154334))

(assert (=> bs!1589187 m!7154332))

(declare-fun m!7154960 () Bool)

(assert (=> bs!1589187 m!7154960))

(assert (=> bs!1589187 m!7154322))

(assert (=> b!6346840 d!1991768))

(declare-fun d!1991770 () Bool)

(declare-fun e!3855154 () Bool)

(assert (=> d!1991770 e!3855154))

(declare-fun res!2611980 () Bool)

(assert (=> d!1991770 (=> (not res!2611980) (not e!3855154))))

(declare-fun lt!2363981 () List!65059)

(declare-fun noDuplicate!2083 (List!65059) Bool)

(assert (=> d!1991770 (= res!2611980 (noDuplicate!2083 lt!2363981))))

(declare-fun choose!47099 ((InoxSet Context!11274)) List!65059)

(assert (=> d!1991770 (= lt!2363981 (choose!47099 z!1189))))

(assert (=> d!1991770 (= (toList!10037 z!1189) lt!2363981)))

(declare-fun b!6347607 () Bool)

(declare-fun content!12252 (List!65059) (InoxSet Context!11274))

(assert (=> b!6347607 (= e!3855154 (= (content!12252 lt!2363981) z!1189))))

(assert (= (and d!1991770 res!2611980) b!6347607))

(declare-fun m!7154962 () Bool)

(assert (=> d!1991770 m!7154962))

(declare-fun m!7154964 () Bool)

(assert (=> d!1991770 m!7154964))

(declare-fun m!7154966 () Bool)

(assert (=> b!6347607 m!7154966))

(assert (=> b!6346810 d!1991770))

(declare-fun d!1991772 () Bool)

(assert (=> d!1991772 (= (Exists!3323 lambda!348939) (choose!47095 lambda!348939))))

(declare-fun bs!1589188 () Bool)

(assert (= bs!1589188 d!1991772))

(declare-fun m!7154968 () Bool)

(assert (=> bs!1589188 m!7154968))

(assert (=> b!6346830 d!1991772))

(declare-fun b!6347608 () Bool)

(declare-fun e!3855155 () Bool)

(declare-fun call!541132 () Bool)

(assert (=> b!6347608 (= e!3855155 call!541132)))

(declare-fun b!6347609 () Bool)

(declare-fun res!2611981 () Bool)

(declare-fun e!3855156 () Bool)

(assert (=> b!6347609 (=> res!2611981 e!3855156)))

(assert (=> b!6347609 (= res!2611981 (not ((_ is Concat!25098) lt!2363831)))))

(declare-fun e!3855161 () Bool)

(assert (=> b!6347609 (= e!3855161 e!3855156)))

(declare-fun bm!541125 () Bool)

(declare-fun call!541130 () Bool)

(declare-fun c!1154571 () Bool)

(assert (=> bm!541125 (= call!541130 (validRegex!7989 (ite c!1154571 (regOne!33019 lt!2363831) (regOne!33018 lt!2363831))))))

(declare-fun b!6347610 () Bool)

(declare-fun e!3855159 () Bool)

(assert (=> b!6347610 (= e!3855156 e!3855159)))

(declare-fun res!2611983 () Bool)

(assert (=> b!6347610 (=> (not res!2611983) (not e!3855159))))

(assert (=> b!6347610 (= res!2611983 call!541130)))

(declare-fun bm!541126 () Bool)

(declare-fun call!541131 () Bool)

(assert (=> bm!541126 (= call!541132 call!541131)))

(declare-fun b!6347611 () Bool)

(declare-fun e!3855158 () Bool)

(assert (=> b!6347611 (= e!3855158 e!3855161)))

(assert (=> b!6347611 (= c!1154571 ((_ is Union!16253) lt!2363831))))

(declare-fun b!6347612 () Bool)

(assert (=> b!6347612 (= e!3855159 call!541132)))

(declare-fun b!6347613 () Bool)

(declare-fun e!3855160 () Bool)

(assert (=> b!6347613 (= e!3855158 e!3855160)))

(declare-fun res!2611985 () Bool)

(assert (=> b!6347613 (= res!2611985 (not (nullable!6246 (reg!16582 lt!2363831))))))

(assert (=> b!6347613 (=> (not res!2611985) (not e!3855160))))

(declare-fun d!1991774 () Bool)

(declare-fun res!2611982 () Bool)

(declare-fun e!3855157 () Bool)

(assert (=> d!1991774 (=> res!2611982 e!3855157)))

(assert (=> d!1991774 (= res!2611982 ((_ is ElementMatch!16253) lt!2363831))))

(assert (=> d!1991774 (= (validRegex!7989 lt!2363831) e!3855157)))

(declare-fun b!6347614 () Bool)

(assert (=> b!6347614 (= e!3855157 e!3855158)))

(declare-fun c!1154570 () Bool)

(assert (=> b!6347614 (= c!1154570 ((_ is Star!16253) lt!2363831))))

(declare-fun b!6347615 () Bool)

(assert (=> b!6347615 (= e!3855160 call!541131)))

(declare-fun b!6347616 () Bool)

(declare-fun res!2611984 () Bool)

(assert (=> b!6347616 (=> (not res!2611984) (not e!3855155))))

(assert (=> b!6347616 (= res!2611984 call!541130)))

(assert (=> b!6347616 (= e!3855161 e!3855155)))

(declare-fun bm!541127 () Bool)

(assert (=> bm!541127 (= call!541131 (validRegex!7989 (ite c!1154570 (reg!16582 lt!2363831) (ite c!1154571 (regTwo!33019 lt!2363831) (regTwo!33018 lt!2363831)))))))

(assert (= (and d!1991774 (not res!2611982)) b!6347614))

(assert (= (and b!6347614 c!1154570) b!6347613))

(assert (= (and b!6347614 (not c!1154570)) b!6347611))

(assert (= (and b!6347613 res!2611985) b!6347615))

(assert (= (and b!6347611 c!1154571) b!6347616))

(assert (= (and b!6347611 (not c!1154571)) b!6347609))

(assert (= (and b!6347616 res!2611984) b!6347608))

(assert (= (and b!6347609 (not res!2611981)) b!6347610))

(assert (= (and b!6347610 res!2611983) b!6347612))

(assert (= (or b!6347608 b!6347612) bm!541126))

(assert (= (or b!6347616 b!6347610) bm!541125))

(assert (= (or b!6347615 bm!541126) bm!541127))

(declare-fun m!7154970 () Bool)

(assert (=> bm!541125 m!7154970))

(declare-fun m!7154972 () Bool)

(assert (=> b!6347613 m!7154972))

(declare-fun m!7154974 () Bool)

(assert (=> bm!541127 m!7154974))

(assert (=> b!6346830 d!1991774))

(declare-fun d!1991776 () Bool)

(assert (=> d!1991776 (= (matchR!8436 lt!2363826 s!2326) (matchRSpec!3354 lt!2363826 s!2326))))

(declare-fun lt!2363982 () Unit!158343)

(assert (=> d!1991776 (= lt!2363982 (choose!47098 lt!2363826 s!2326))))

(assert (=> d!1991776 (validRegex!7989 lt!2363826)))

(assert (=> d!1991776 (= (mainMatchTheorem!3354 lt!2363826 s!2326) lt!2363982)))

(declare-fun bs!1589189 () Bool)

(assert (= bs!1589189 d!1991776))

(assert (=> bs!1589189 m!7154338))

(assert (=> bs!1589189 m!7154340))

(declare-fun m!7154976 () Bool)

(assert (=> bs!1589189 m!7154976))

(declare-fun m!7154978 () Bool)

(assert (=> bs!1589189 m!7154978))

(assert (=> b!6346830 d!1991776))

(declare-fun d!1991778 () Bool)

(assert (=> d!1991778 (= (Exists!3323 lambda!348938) (choose!47095 lambda!348938))))

(declare-fun bs!1589190 () Bool)

(assert (= bs!1589190 d!1991778))

(declare-fun m!7154980 () Bool)

(assert (=> bs!1589190 m!7154980))

(assert (=> b!6346830 d!1991778))

(declare-fun b!6347617 () Bool)

(declare-fun e!3855165 () Option!16144)

(assert (=> b!6347617 (= e!3855165 (Some!16143 (tuple2!66465 Nil!64936 s!2326)))))

(declare-fun b!6347618 () Bool)

(declare-fun e!3855166 () Option!16144)

(assert (=> b!6347618 (= e!3855165 e!3855166)))

(declare-fun c!1154572 () Bool)

(assert (=> b!6347618 (= c!1154572 ((_ is Nil!64936) s!2326))))

(declare-fun b!6347619 () Bool)

(declare-fun e!3855162 () Bool)

(declare-fun lt!2363983 () Option!16144)

(assert (=> b!6347619 (= e!3855162 (= (++!14322 (_1!36535 (get!22464 lt!2363983)) (_2!36535 (get!22464 lt!2363983))) s!2326))))

(declare-fun b!6347620 () Bool)

(declare-fun e!3855163 () Bool)

(assert (=> b!6347620 (= e!3855163 (matchR!8436 lt!2363831 s!2326))))

(declare-fun b!6347621 () Bool)

(declare-fun res!2611990 () Bool)

(assert (=> b!6347621 (=> (not res!2611990) (not e!3855162))))

(assert (=> b!6347621 (= res!2611990 (matchR!8436 lt!2363831 (_2!36535 (get!22464 lt!2363983))))))

(declare-fun b!6347622 () Bool)

(declare-fun lt!2363985 () Unit!158343)

(declare-fun lt!2363984 () Unit!158343)

(assert (=> b!6347622 (= lt!2363985 lt!2363984)))

(assert (=> b!6347622 (= (++!14322 (++!14322 Nil!64936 (Cons!64936 (h!71384 s!2326) Nil!64936)) (t!378648 s!2326)) s!2326)))

(assert (=> b!6347622 (= lt!2363984 (lemmaMoveElementToOtherListKeepsConcatEq!2417 Nil!64936 (h!71384 s!2326) (t!378648 s!2326) s!2326))))

(assert (=> b!6347622 (= e!3855166 (findConcatSeparation!2558 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 (++!14322 Nil!64936 (Cons!64936 (h!71384 s!2326) Nil!64936)) (t!378648 s!2326) s!2326))))

(declare-fun b!6347623 () Bool)

(declare-fun res!2611986 () Bool)

(assert (=> b!6347623 (=> (not res!2611986) (not e!3855162))))

(assert (=> b!6347623 (= res!2611986 (matchR!8436 (regOne!33018 (regOne!33018 r!7292)) (_1!36535 (get!22464 lt!2363983))))))

(declare-fun d!1991780 () Bool)

(declare-fun e!3855164 () Bool)

(assert (=> d!1991780 e!3855164))

(declare-fun res!2611987 () Bool)

(assert (=> d!1991780 (=> res!2611987 e!3855164)))

(assert (=> d!1991780 (= res!2611987 e!3855162)))

(declare-fun res!2611988 () Bool)

(assert (=> d!1991780 (=> (not res!2611988) (not e!3855162))))

(assert (=> d!1991780 (= res!2611988 (isDefined!12847 lt!2363983))))

(assert (=> d!1991780 (= lt!2363983 e!3855165)))

(declare-fun c!1154573 () Bool)

(assert (=> d!1991780 (= c!1154573 e!3855163)))

(declare-fun res!2611989 () Bool)

(assert (=> d!1991780 (=> (not res!2611989) (not e!3855163))))

(assert (=> d!1991780 (= res!2611989 (matchR!8436 (regOne!33018 (regOne!33018 r!7292)) Nil!64936))))

(assert (=> d!1991780 (validRegex!7989 (regOne!33018 (regOne!33018 r!7292)))))

(assert (=> d!1991780 (= (findConcatSeparation!2558 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 Nil!64936 s!2326 s!2326) lt!2363983)))

(declare-fun b!6347624 () Bool)

(assert (=> b!6347624 (= e!3855164 (not (isDefined!12847 lt!2363983)))))

(declare-fun b!6347625 () Bool)

(assert (=> b!6347625 (= e!3855166 None!16143)))

(assert (= (and d!1991780 res!2611989) b!6347620))

(assert (= (and d!1991780 c!1154573) b!6347617))

(assert (= (and d!1991780 (not c!1154573)) b!6347618))

(assert (= (and b!6347618 c!1154572) b!6347625))

(assert (= (and b!6347618 (not c!1154572)) b!6347622))

(assert (= (and d!1991780 res!2611988) b!6347623))

(assert (= (and b!6347623 res!2611986) b!6347621))

(assert (= (and b!6347621 res!2611990) b!6347619))

(assert (= (and d!1991780 (not res!2611987)) b!6347624))

(declare-fun m!7154982 () Bool)

(assert (=> b!6347619 m!7154982))

(declare-fun m!7154984 () Bool)

(assert (=> b!6347619 m!7154984))

(declare-fun m!7154986 () Bool)

(assert (=> b!6347620 m!7154986))

(declare-fun m!7154988 () Bool)

(assert (=> b!6347624 m!7154988))

(assert (=> d!1991780 m!7154988))

(declare-fun m!7154990 () Bool)

(assert (=> d!1991780 m!7154990))

(declare-fun m!7154992 () Bool)

(assert (=> d!1991780 m!7154992))

(assert (=> b!6347622 m!7154822))

(assert (=> b!6347622 m!7154822))

(assert (=> b!6347622 m!7154826))

(assert (=> b!6347622 m!7154830))

(assert (=> b!6347622 m!7154822))

(declare-fun m!7154994 () Bool)

(assert (=> b!6347622 m!7154994))

(assert (=> b!6347623 m!7154982))

(declare-fun m!7154996 () Bool)

(assert (=> b!6347623 m!7154996))

(assert (=> b!6347621 m!7154982))

(declare-fun m!7154998 () Bool)

(assert (=> b!6347621 m!7154998))

(assert (=> b!6346830 d!1991780))

(declare-fun bs!1589191 () Bool)

(declare-fun b!6347632 () Bool)

(assert (= bs!1589191 (and b!6347632 b!6346830)))

(declare-fun lambda!349024 () Int)

(assert (=> bs!1589191 (not (= lambda!349024 lambda!348939))))

(assert (=> bs!1589191 (not (= lambda!349024 lambda!348938))))

(declare-fun bs!1589192 () Bool)

(assert (= bs!1589192 (and b!6347632 d!1991742)))

(assert (=> bs!1589192 (not (= lambda!349024 lambda!349017))))

(declare-fun bs!1589193 () Bool)

(assert (= bs!1589193 (and b!6347632 b!6347553)))

(assert (=> bs!1589193 (not (= lambda!349024 lambda!349023))))

(declare-fun bs!1589194 () Bool)

(assert (= bs!1589194 (and b!6347632 b!6346842)))

(assert (=> bs!1589194 (not (= lambda!349024 lambda!348935))))

(declare-fun bs!1589195 () Bool)

(assert (= bs!1589195 (and b!6347632 b!6347558)))

(assert (=> bs!1589195 (= (and (= (reg!16582 lt!2363826) (reg!16582 r!7292)) (= lt!2363826 r!7292)) (= lambda!349024 lambda!349022))))

(assert (=> bs!1589192 (not (= lambda!349024 lambda!349016))))

(assert (=> bs!1589194 (not (= lambda!349024 lambda!348936))))

(declare-fun bs!1589196 () Bool)

(assert (= bs!1589196 (and b!6347632 d!1991732)))

(assert (=> bs!1589196 (not (= lambda!349024 lambda!349009))))

(assert (=> b!6347632 true))

(assert (=> b!6347632 true))

(declare-fun bs!1589197 () Bool)

(declare-fun b!6347627 () Bool)

(assert (= bs!1589197 (and b!6347627 b!6346830)))

(declare-fun lambda!349025 () Int)

(assert (=> bs!1589197 (= (and (= (regOne!33018 lt!2363826) (regOne!33018 (regOne!33018 r!7292))) (= (regTwo!33018 lt!2363826) lt!2363831)) (= lambda!349025 lambda!348939))))

(assert (=> bs!1589197 (not (= lambda!349025 lambda!348938))))

(declare-fun bs!1589198 () Bool)

(assert (= bs!1589198 (and b!6347627 b!6347632)))

(assert (=> bs!1589198 (not (= lambda!349025 lambda!349024))))

(declare-fun bs!1589199 () Bool)

(assert (= bs!1589199 (and b!6347627 d!1991742)))

(assert (=> bs!1589199 (= (and (= (regOne!33018 lt!2363826) (regOne!33018 r!7292)) (= (regTwo!33018 lt!2363826) (regTwo!33018 r!7292))) (= lambda!349025 lambda!349017))))

(declare-fun bs!1589200 () Bool)

(assert (= bs!1589200 (and b!6347627 b!6347553)))

(assert (=> bs!1589200 (= (and (= (regOne!33018 lt!2363826) (regOne!33018 r!7292)) (= (regTwo!33018 lt!2363826) (regTwo!33018 r!7292))) (= lambda!349025 lambda!349023))))

(declare-fun bs!1589201 () Bool)

(assert (= bs!1589201 (and b!6347627 b!6346842)))

(assert (=> bs!1589201 (not (= lambda!349025 lambda!348935))))

(declare-fun bs!1589202 () Bool)

(assert (= bs!1589202 (and b!6347627 b!6347558)))

(assert (=> bs!1589202 (not (= lambda!349025 lambda!349022))))

(assert (=> bs!1589199 (not (= lambda!349025 lambda!349016))))

(assert (=> bs!1589201 (= (and (= (regOne!33018 lt!2363826) (regOne!33018 r!7292)) (= (regTwo!33018 lt!2363826) (regTwo!33018 r!7292))) (= lambda!349025 lambda!348936))))

(declare-fun bs!1589203 () Bool)

(assert (= bs!1589203 (and b!6347627 d!1991732)))

(assert (=> bs!1589203 (not (= lambda!349025 lambda!349009))))

(assert (=> b!6347627 true))

(assert (=> b!6347627 true))

(declare-fun c!1154577 () Bool)

(declare-fun call!541133 () Bool)

(declare-fun bm!541128 () Bool)

(assert (=> bm!541128 (= call!541133 (Exists!3323 (ite c!1154577 lambda!349024 lambda!349025)))))

(declare-fun bm!541129 () Bool)

(declare-fun call!541134 () Bool)

(assert (=> bm!541129 (= call!541134 (isEmpty!37025 s!2326))))

(declare-fun b!6347626 () Bool)

(declare-fun e!3855169 () Bool)

(declare-fun e!3855170 () Bool)

(assert (=> b!6347626 (= e!3855169 e!3855170)))

(declare-fun res!2611993 () Bool)

(assert (=> b!6347626 (= res!2611993 (not ((_ is EmptyLang!16253) lt!2363826)))))

(assert (=> b!6347626 (=> (not res!2611993) (not e!3855170))))

(declare-fun e!3855167 () Bool)

(assert (=> b!6347627 (= e!3855167 call!541133)))

(declare-fun b!6347628 () Bool)

(declare-fun e!3855172 () Bool)

(assert (=> b!6347628 (= e!3855172 e!3855167)))

(assert (=> b!6347628 (= c!1154577 ((_ is Star!16253) lt!2363826))))

(declare-fun b!6347629 () Bool)

(declare-fun e!3855168 () Bool)

(assert (=> b!6347629 (= e!3855168 (= s!2326 (Cons!64936 (c!1154330 lt!2363826) Nil!64936)))))

(declare-fun b!6347630 () Bool)

(declare-fun e!3855173 () Bool)

(assert (=> b!6347630 (= e!3855173 (matchRSpec!3354 (regTwo!33019 lt!2363826) s!2326))))

(declare-fun b!6347631 () Bool)

(declare-fun res!2611991 () Bool)

(declare-fun e!3855171 () Bool)

(assert (=> b!6347631 (=> res!2611991 e!3855171)))

(assert (=> b!6347631 (= res!2611991 call!541134)))

(assert (=> b!6347631 (= e!3855167 e!3855171)))

(declare-fun b!6347633 () Bool)

(declare-fun c!1154575 () Bool)

(assert (=> b!6347633 (= c!1154575 ((_ is Union!16253) lt!2363826))))

(assert (=> b!6347633 (= e!3855168 e!3855172)))

(declare-fun b!6347634 () Bool)

(declare-fun c!1154574 () Bool)

(assert (=> b!6347634 (= c!1154574 ((_ is ElementMatch!16253) lt!2363826))))

(assert (=> b!6347634 (= e!3855170 e!3855168)))

(declare-fun b!6347635 () Bool)

(assert (=> b!6347635 (= e!3855169 call!541134)))

(declare-fun b!6347636 () Bool)

(assert (=> b!6347636 (= e!3855172 e!3855173)))

(declare-fun res!2611992 () Bool)

(assert (=> b!6347636 (= res!2611992 (matchRSpec!3354 (regOne!33019 lt!2363826) s!2326))))

(assert (=> b!6347636 (=> res!2611992 e!3855173)))

(assert (=> b!6347632 (= e!3855171 call!541133)))

(declare-fun d!1991782 () Bool)

(declare-fun c!1154576 () Bool)

(assert (=> d!1991782 (= c!1154576 ((_ is EmptyExpr!16253) lt!2363826))))

(assert (=> d!1991782 (= (matchRSpec!3354 lt!2363826 s!2326) e!3855169)))

(assert (= (and d!1991782 c!1154576) b!6347635))

(assert (= (and d!1991782 (not c!1154576)) b!6347626))

(assert (= (and b!6347626 res!2611993) b!6347634))

(assert (= (and b!6347634 c!1154574) b!6347629))

(assert (= (and b!6347634 (not c!1154574)) b!6347633))

(assert (= (and b!6347633 c!1154575) b!6347636))

(assert (= (and b!6347633 (not c!1154575)) b!6347628))

(assert (= (and b!6347636 (not res!2611992)) b!6347630))

(assert (= (and b!6347628 c!1154577) b!6347631))

(assert (= (and b!6347628 (not c!1154577)) b!6347627))

(assert (= (and b!6347631 (not res!2611991)) b!6347632))

(assert (= (or b!6347632 b!6347627) bm!541128))

(assert (= (or b!6347635 b!6347631) bm!541129))

(declare-fun m!7155000 () Bool)

(assert (=> bm!541128 m!7155000))

(assert (=> bm!541129 m!7154942))

(declare-fun m!7155002 () Bool)

(assert (=> b!6347630 m!7155002))

(declare-fun m!7155004 () Bool)

(assert (=> b!6347636 m!7155004))

(assert (=> b!6346830 d!1991782))

(declare-fun bs!1589204 () Bool)

(declare-fun d!1991784 () Bool)

(assert (= bs!1589204 (and d!1991784 b!6346830)))

(declare-fun lambda!349026 () Int)

(assert (=> bs!1589204 (not (= lambda!349026 lambda!348939))))

(assert (=> bs!1589204 (= lambda!349026 lambda!348938)))

(declare-fun bs!1589205 () Bool)

(assert (= bs!1589205 (and d!1991784 b!6347632)))

(assert (=> bs!1589205 (not (= lambda!349026 lambda!349024))))

(declare-fun bs!1589206 () Bool)

(assert (= bs!1589206 (and d!1991784 d!1991742)))

(assert (=> bs!1589206 (not (= lambda!349026 lambda!349017))))

(declare-fun bs!1589207 () Bool)

(assert (= bs!1589207 (and d!1991784 b!6347553)))

(assert (=> bs!1589207 (not (= lambda!349026 lambda!349023))))

(declare-fun bs!1589208 () Bool)

(assert (= bs!1589208 (and d!1991784 b!6346842)))

(assert (=> bs!1589208 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!349026 lambda!348935))))

(declare-fun bs!1589209 () Bool)

(assert (= bs!1589209 (and d!1991784 b!6347558)))

(assert (=> bs!1589209 (not (= lambda!349026 lambda!349022))))

(declare-fun bs!1589210 () Bool)

(assert (= bs!1589210 (and d!1991784 b!6347627)))

(assert (=> bs!1589210 (not (= lambda!349026 lambda!349025))))

(assert (=> bs!1589206 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!349026 lambda!349016))))

(assert (=> bs!1589208 (not (= lambda!349026 lambda!348936))))

(declare-fun bs!1589211 () Bool)

(assert (= bs!1589211 (and d!1991784 d!1991732)))

(assert (=> bs!1589211 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!349026 lambda!349009))))

(assert (=> d!1991784 true))

(assert (=> d!1991784 true))

(assert (=> d!1991784 true))

(assert (=> d!1991784 (= (isDefined!12847 (findConcatSeparation!2558 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 Nil!64936 s!2326 s!2326)) (Exists!3323 lambda!349026))))

(declare-fun lt!2363986 () Unit!158343)

(assert (=> d!1991784 (= lt!2363986 (choose!47096 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 s!2326))))

(assert (=> d!1991784 (validRegex!7989 (regOne!33018 (regOne!33018 r!7292)))))

(assert (=> d!1991784 (= (lemmaFindConcatSeparationEquivalentToExists!2322 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 s!2326) lt!2363986)))

(declare-fun bs!1589212 () Bool)

(assert (= bs!1589212 d!1991784))

(assert (=> bs!1589212 m!7154354))

(declare-fun m!7155006 () Bool)

(assert (=> bs!1589212 m!7155006))

(declare-fun m!7155008 () Bool)

(assert (=> bs!1589212 m!7155008))

(assert (=> bs!1589212 m!7154354))

(assert (=> bs!1589212 m!7154356))

(assert (=> bs!1589212 m!7154992))

(assert (=> b!6346830 d!1991784))

(declare-fun d!1991786 () Bool)

(assert (=> d!1991786 (= (matchR!8436 lt!2363826 s!2326) (matchZipper!2265 lt!2363827 s!2326))))

(declare-fun lt!2363989 () Unit!158343)

(declare-fun choose!47100 ((InoxSet Context!11274) List!65059 Regex!16253 List!65060) Unit!158343)

(assert (=> d!1991786 (= lt!2363989 (choose!47100 lt!2363827 lt!2363823 lt!2363826 s!2326))))

(assert (=> d!1991786 (validRegex!7989 lt!2363826)))

(assert (=> d!1991786 (= (theoremZipperRegexEquiv!795 lt!2363827 lt!2363823 lt!2363826 s!2326) lt!2363989)))

(declare-fun bs!1589213 () Bool)

(assert (= bs!1589213 d!1991786))

(assert (=> bs!1589213 m!7154338))

(assert (=> bs!1589213 m!7154358))

(declare-fun m!7155010 () Bool)

(assert (=> bs!1589213 m!7155010))

(assert (=> bs!1589213 m!7154978))

(assert (=> b!6346830 d!1991786))

(declare-fun bs!1589214 () Bool)

(declare-fun d!1991788 () Bool)

(assert (= bs!1589214 (and d!1991788 d!1991676)))

(declare-fun lambda!349027 () Int)

(assert (=> bs!1589214 (= lambda!349027 lambda!348979)))

(declare-fun bs!1589215 () Bool)

(assert (= bs!1589215 (and d!1991788 d!1991682)))

(assert (=> bs!1589215 (= lambda!349027 lambda!348980)))

(declare-fun bs!1589216 () Bool)

(assert (= bs!1589216 (and d!1991788 d!1991684)))

(assert (=> bs!1589216 (= lambda!349027 lambda!348990)))

(declare-fun b!6347638 () Bool)

(declare-fun e!3855179 () Bool)

(declare-fun e!3855174 () Bool)

(assert (=> b!6347638 (= e!3855179 e!3855174)))

(declare-fun c!1154578 () Bool)

(assert (=> b!6347638 (= c!1154578 (isEmpty!37021 lt!2363842))))

(declare-fun b!6347639 () Bool)

(declare-fun e!3855176 () Regex!16253)

(assert (=> b!6347639 (= e!3855176 EmptyExpr!16253)))

(declare-fun b!6347640 () Bool)

(declare-fun e!3855175 () Regex!16253)

(assert (=> b!6347640 (= e!3855175 (h!71382 lt!2363842))))

(declare-fun b!6347641 () Bool)

(declare-fun e!3855177 () Bool)

(assert (=> b!6347641 (= e!3855177 (isEmpty!37021 (t!378646 lt!2363842)))))

(declare-fun b!6347642 () Bool)

(assert (=> b!6347642 (= e!3855175 e!3855176)))

(declare-fun c!1154580 () Bool)

(assert (=> b!6347642 (= c!1154580 ((_ is Cons!64934) lt!2363842))))

(declare-fun b!6347643 () Bool)

(declare-fun e!3855178 () Bool)

(declare-fun lt!2363990 () Regex!16253)

(assert (=> b!6347643 (= e!3855178 (isConcat!1178 lt!2363990))))

(declare-fun b!6347644 () Bool)

(assert (=> b!6347644 (= e!3855174 e!3855178)))

(declare-fun c!1154579 () Bool)

(assert (=> b!6347644 (= c!1154579 (isEmpty!37021 (tail!12084 lt!2363842)))))

(declare-fun b!6347637 () Bool)

(assert (=> b!6347637 (= e!3855176 (Concat!25098 (h!71382 lt!2363842) (generalisedConcat!1850 (t!378646 lt!2363842))))))

(assert (=> d!1991788 e!3855179))

(declare-fun res!2611995 () Bool)

(assert (=> d!1991788 (=> (not res!2611995) (not e!3855179))))

(assert (=> d!1991788 (= res!2611995 (validRegex!7989 lt!2363990))))

(assert (=> d!1991788 (= lt!2363990 e!3855175)))

(declare-fun c!1154581 () Bool)

(assert (=> d!1991788 (= c!1154581 e!3855177)))

(declare-fun res!2611994 () Bool)

(assert (=> d!1991788 (=> (not res!2611994) (not e!3855177))))

(assert (=> d!1991788 (= res!2611994 ((_ is Cons!64934) lt!2363842))))

(assert (=> d!1991788 (forall!15418 lt!2363842 lambda!349027)))

(assert (=> d!1991788 (= (generalisedConcat!1850 lt!2363842) lt!2363990)))

(declare-fun b!6347645 () Bool)

(assert (=> b!6347645 (= e!3855178 (= lt!2363990 (head!12999 lt!2363842)))))

(declare-fun b!6347646 () Bool)

(assert (=> b!6347646 (= e!3855174 (isEmptyExpr!1655 lt!2363990))))

(assert (= (and d!1991788 res!2611994) b!6347641))

(assert (= (and d!1991788 c!1154581) b!6347640))

(assert (= (and d!1991788 (not c!1154581)) b!6347642))

(assert (= (and b!6347642 c!1154580) b!6347637))

(assert (= (and b!6347642 (not c!1154580)) b!6347639))

(assert (= (and d!1991788 res!2611995) b!6347638))

(assert (= (and b!6347638 c!1154578) b!6347646))

(assert (= (and b!6347638 (not c!1154578)) b!6347644))

(assert (= (and b!6347644 c!1154579) b!6347645))

(assert (= (and b!6347644 (not c!1154579)) b!6347643))

(declare-fun m!7155012 () Bool)

(assert (=> b!6347646 m!7155012))

(declare-fun m!7155014 () Bool)

(assert (=> d!1991788 m!7155014))

(declare-fun m!7155016 () Bool)

(assert (=> d!1991788 m!7155016))

(declare-fun m!7155018 () Bool)

(assert (=> b!6347644 m!7155018))

(assert (=> b!6347644 m!7155018))

(declare-fun m!7155020 () Bool)

(assert (=> b!6347644 m!7155020))

(declare-fun m!7155022 () Bool)

(assert (=> b!6347645 m!7155022))

(declare-fun m!7155024 () Bool)

(assert (=> b!6347643 m!7155024))

(declare-fun m!7155026 () Bool)

(assert (=> b!6347641 m!7155026))

(declare-fun m!7155028 () Bool)

(assert (=> b!6347637 m!7155028))

(declare-fun m!7155030 () Bool)

(assert (=> b!6347638 m!7155030))

(assert (=> b!6346830 d!1991788))

(declare-fun d!1991790 () Bool)

(declare-fun c!1154582 () Bool)

(assert (=> d!1991790 (= c!1154582 (isEmpty!37025 s!2326))))

(declare-fun e!3855180 () Bool)

(assert (=> d!1991790 (= (matchZipper!2265 lt!2363827 s!2326) e!3855180)))

(declare-fun b!6347647 () Bool)

(assert (=> b!6347647 (= e!3855180 (nullableZipper!2019 lt!2363827))))

(declare-fun b!6347648 () Bool)

(assert (=> b!6347648 (= e!3855180 (matchZipper!2265 (derivationStepZipper!2219 lt!2363827 (head!12998 s!2326)) (tail!12083 s!2326)))))

(assert (= (and d!1991790 c!1154582) b!6347647))

(assert (= (and d!1991790 (not c!1154582)) b!6347648))

(assert (=> d!1991790 m!7154942))

(declare-fun m!7155032 () Bool)

(assert (=> b!6347647 m!7155032))

(assert (=> b!6347648 m!7154954))

(assert (=> b!6347648 m!7154954))

(declare-fun m!7155034 () Bool)

(assert (=> b!6347648 m!7155034))

(assert (=> b!6347648 m!7154948))

(assert (=> b!6347648 m!7155034))

(assert (=> b!6347648 m!7154948))

(declare-fun m!7155036 () Bool)

(assert (=> b!6347648 m!7155036))

(assert (=> b!6346830 d!1991790))

(declare-fun bs!1589217 () Bool)

(declare-fun d!1991792 () Bool)

(assert (= bs!1589217 (and d!1991792 b!6346830)))

(declare-fun lambda!349028 () Int)

(assert (=> bs!1589217 (not (= lambda!349028 lambda!348939))))

(assert (=> bs!1589217 (= lambda!349028 lambda!348938)))

(declare-fun bs!1589218 () Bool)

(assert (= bs!1589218 (and d!1991792 b!6347632)))

(assert (=> bs!1589218 (not (= lambda!349028 lambda!349024))))

(declare-fun bs!1589219 () Bool)

(assert (= bs!1589219 (and d!1991792 d!1991742)))

(assert (=> bs!1589219 (not (= lambda!349028 lambda!349017))))

(declare-fun bs!1589220 () Bool)

(assert (= bs!1589220 (and d!1991792 b!6347553)))

(assert (=> bs!1589220 (not (= lambda!349028 lambda!349023))))

(declare-fun bs!1589221 () Bool)

(assert (= bs!1589221 (and d!1991792 b!6346842)))

(assert (=> bs!1589221 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!349028 lambda!348935))))

(declare-fun bs!1589222 () Bool)

(assert (= bs!1589222 (and d!1991792 b!6347558)))

(assert (=> bs!1589222 (not (= lambda!349028 lambda!349022))))

(declare-fun bs!1589223 () Bool)

(assert (= bs!1589223 (and d!1991792 b!6347627)))

(assert (=> bs!1589223 (not (= lambda!349028 lambda!349025))))

(assert (=> bs!1589219 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!349028 lambda!349016))))

(declare-fun bs!1589224 () Bool)

(assert (= bs!1589224 (and d!1991792 d!1991784)))

(assert (=> bs!1589224 (= lambda!349028 lambda!349026)))

(assert (=> bs!1589221 (not (= lambda!349028 lambda!348936))))

(declare-fun bs!1589225 () Bool)

(assert (= bs!1589225 (and d!1991792 d!1991732)))

(assert (=> bs!1589225 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!349028 lambda!349009))))

(assert (=> d!1991792 true))

(assert (=> d!1991792 true))

(assert (=> d!1991792 true))

(declare-fun lambda!349029 () Int)

(assert (=> bs!1589217 (= lambda!349029 lambda!348939)))

(declare-fun bs!1589226 () Bool)

(assert (= bs!1589226 d!1991792))

(assert (=> bs!1589226 (not (= lambda!349029 lambda!349028))))

(assert (=> bs!1589217 (not (= lambda!349029 lambda!348938))))

(assert (=> bs!1589218 (not (= lambda!349029 lambda!349024))))

(assert (=> bs!1589219 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!349029 lambda!349017))))

(assert (=> bs!1589220 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!349029 lambda!349023))))

(assert (=> bs!1589221 (not (= lambda!349029 lambda!348935))))

(assert (=> bs!1589222 (not (= lambda!349029 lambda!349022))))

(assert (=> bs!1589223 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 lt!2363826)) (= lt!2363831 (regTwo!33018 lt!2363826))) (= lambda!349029 lambda!349025))))

(assert (=> bs!1589219 (not (= lambda!349029 lambda!349016))))

(assert (=> bs!1589224 (not (= lambda!349029 lambda!349026))))

(assert (=> bs!1589221 (= (and (= (regOne!33018 (regOne!33018 r!7292)) (regOne!33018 r!7292)) (= lt!2363831 (regTwo!33018 r!7292))) (= lambda!349029 lambda!348936))))

(assert (=> bs!1589225 (not (= lambda!349029 lambda!349009))))

(assert (=> d!1991792 true))

(assert (=> d!1991792 true))

(assert (=> d!1991792 true))

(assert (=> d!1991792 (= (Exists!3323 lambda!349028) (Exists!3323 lambda!349029))))

(declare-fun lt!2363991 () Unit!158343)

(assert (=> d!1991792 (= lt!2363991 (choose!47097 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 s!2326))))

(assert (=> d!1991792 (validRegex!7989 (regOne!33018 (regOne!33018 r!7292)))))

(assert (=> d!1991792 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1860 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 s!2326) lt!2363991)))

(declare-fun m!7155038 () Bool)

(assert (=> bs!1589226 m!7155038))

(declare-fun m!7155040 () Bool)

(assert (=> bs!1589226 m!7155040))

(declare-fun m!7155042 () Bool)

(assert (=> bs!1589226 m!7155042))

(assert (=> bs!1589226 m!7154992))

(assert (=> b!6346830 d!1991792))

(declare-fun bs!1589227 () Bool)

(declare-fun d!1991794 () Bool)

(assert (= bs!1589227 (and d!1991794 d!1991676)))

(declare-fun lambda!349030 () Int)

(assert (=> bs!1589227 (= lambda!349030 lambda!348979)))

(declare-fun bs!1589228 () Bool)

(assert (= bs!1589228 (and d!1991794 d!1991682)))

(assert (=> bs!1589228 (= lambda!349030 lambda!348980)))

(declare-fun bs!1589229 () Bool)

(assert (= bs!1589229 (and d!1991794 d!1991684)))

(assert (=> bs!1589229 (= lambda!349030 lambda!348990)))

(declare-fun bs!1589230 () Bool)

(assert (= bs!1589230 (and d!1991794 d!1991788)))

(assert (=> bs!1589230 (= lambda!349030 lambda!349027)))

(declare-fun b!6347650 () Bool)

(declare-fun e!3855186 () Bool)

(declare-fun e!3855181 () Bool)

(assert (=> b!6347650 (= e!3855186 e!3855181)))

(declare-fun c!1154583 () Bool)

(assert (=> b!6347650 (= c!1154583 (isEmpty!37021 lt!2363825))))

(declare-fun b!6347651 () Bool)

(declare-fun e!3855183 () Regex!16253)

(assert (=> b!6347651 (= e!3855183 EmptyExpr!16253)))

(declare-fun b!6347652 () Bool)

(declare-fun e!3855182 () Regex!16253)

(assert (=> b!6347652 (= e!3855182 (h!71382 lt!2363825))))

(declare-fun b!6347653 () Bool)

(declare-fun e!3855184 () Bool)

(assert (=> b!6347653 (= e!3855184 (isEmpty!37021 (t!378646 lt!2363825)))))

(declare-fun b!6347654 () Bool)

(assert (=> b!6347654 (= e!3855182 e!3855183)))

(declare-fun c!1154585 () Bool)

(assert (=> b!6347654 (= c!1154585 ((_ is Cons!64934) lt!2363825))))

(declare-fun b!6347655 () Bool)

(declare-fun e!3855185 () Bool)

(declare-fun lt!2363992 () Regex!16253)

(assert (=> b!6347655 (= e!3855185 (isConcat!1178 lt!2363992))))

(declare-fun b!6347656 () Bool)

(assert (=> b!6347656 (= e!3855181 e!3855185)))

(declare-fun c!1154584 () Bool)

(assert (=> b!6347656 (= c!1154584 (isEmpty!37021 (tail!12084 lt!2363825)))))

(declare-fun b!6347649 () Bool)

(assert (=> b!6347649 (= e!3855183 (Concat!25098 (h!71382 lt!2363825) (generalisedConcat!1850 (t!378646 lt!2363825))))))

(assert (=> d!1991794 e!3855186))

(declare-fun res!2611997 () Bool)

(assert (=> d!1991794 (=> (not res!2611997) (not e!3855186))))

(assert (=> d!1991794 (= res!2611997 (validRegex!7989 lt!2363992))))

(assert (=> d!1991794 (= lt!2363992 e!3855182)))

(declare-fun c!1154586 () Bool)

(assert (=> d!1991794 (= c!1154586 e!3855184)))

(declare-fun res!2611996 () Bool)

(assert (=> d!1991794 (=> (not res!2611996) (not e!3855184))))

(assert (=> d!1991794 (= res!2611996 ((_ is Cons!64934) lt!2363825))))

(assert (=> d!1991794 (forall!15418 lt!2363825 lambda!349030)))

(assert (=> d!1991794 (= (generalisedConcat!1850 lt!2363825) lt!2363992)))

(declare-fun b!6347657 () Bool)

(assert (=> b!6347657 (= e!3855185 (= lt!2363992 (head!12999 lt!2363825)))))

(declare-fun b!6347658 () Bool)

(assert (=> b!6347658 (= e!3855181 (isEmptyExpr!1655 lt!2363992))))

(assert (= (and d!1991794 res!2611996) b!6347653))

(assert (= (and d!1991794 c!1154586) b!6347652))

(assert (= (and d!1991794 (not c!1154586)) b!6347654))

(assert (= (and b!6347654 c!1154585) b!6347649))

(assert (= (and b!6347654 (not c!1154585)) b!6347651))

(assert (= (and d!1991794 res!2611997) b!6347650))

(assert (= (and b!6347650 c!1154583) b!6347658))

(assert (= (and b!6347650 (not c!1154583)) b!6347656))

(assert (= (and b!6347656 c!1154584) b!6347657))

(assert (= (and b!6347656 (not c!1154584)) b!6347655))

(declare-fun m!7155044 () Bool)

(assert (=> b!6347658 m!7155044))

(declare-fun m!7155046 () Bool)

(assert (=> d!1991794 m!7155046))

(declare-fun m!7155048 () Bool)

(assert (=> d!1991794 m!7155048))

(declare-fun m!7155050 () Bool)

(assert (=> b!6347656 m!7155050))

(assert (=> b!6347656 m!7155050))

(declare-fun m!7155052 () Bool)

(assert (=> b!6347656 m!7155052))

(declare-fun m!7155054 () Bool)

(assert (=> b!6347657 m!7155054))

(declare-fun m!7155056 () Bool)

(assert (=> b!6347655 m!7155056))

(declare-fun m!7155058 () Bool)

(assert (=> b!6347653 m!7155058))

(declare-fun m!7155060 () Bool)

(assert (=> b!6347649 m!7155060))

(declare-fun m!7155062 () Bool)

(assert (=> b!6347650 m!7155062))

(assert (=> b!6346830 d!1991794))

(declare-fun b!6347659 () Bool)

(declare-fun e!3855191 () Bool)

(declare-fun lt!2363993 () Bool)

(declare-fun call!541135 () Bool)

(assert (=> b!6347659 (= e!3855191 (= lt!2363993 call!541135))))

(declare-fun b!6347660 () Bool)

(declare-fun res!2611999 () Bool)

(declare-fun e!3855193 () Bool)

(assert (=> b!6347660 (=> res!2611999 e!3855193)))

(assert (=> b!6347660 (= res!2611999 (not (isEmpty!37025 (tail!12083 s!2326))))))

(declare-fun b!6347661 () Bool)

(declare-fun e!3855189 () Bool)

(assert (=> b!6347661 (= e!3855189 (= (head!12998 s!2326) (c!1154330 lt!2363826)))))

(declare-fun b!6347662 () Bool)

(declare-fun res!2612003 () Bool)

(declare-fun e!3855188 () Bool)

(assert (=> b!6347662 (=> res!2612003 e!3855188)))

(assert (=> b!6347662 (= res!2612003 e!3855189)))

(declare-fun res!2612001 () Bool)

(assert (=> b!6347662 (=> (not res!2612001) (not e!3855189))))

(assert (=> b!6347662 (= res!2612001 lt!2363993)))

(declare-fun b!6347663 () Bool)

(declare-fun e!3855192 () Bool)

(assert (=> b!6347663 (= e!3855192 (not lt!2363993))))

(declare-fun b!6347664 () Bool)

(declare-fun e!3855190 () Bool)

(assert (=> b!6347664 (= e!3855190 e!3855193)))

(declare-fun res!2611998 () Bool)

(assert (=> b!6347664 (=> res!2611998 e!3855193)))

(assert (=> b!6347664 (= res!2611998 call!541135)))

(declare-fun b!6347665 () Bool)

(assert (=> b!6347665 (= e!3855188 e!3855190)))

(declare-fun res!2612004 () Bool)

(assert (=> b!6347665 (=> (not res!2612004) (not e!3855190))))

(assert (=> b!6347665 (= res!2612004 (not lt!2363993))))

(declare-fun b!6347666 () Bool)

(declare-fun e!3855187 () Bool)

(assert (=> b!6347666 (= e!3855187 (nullable!6246 lt!2363826))))

(declare-fun b!6347667 () Bool)

(assert (=> b!6347667 (= e!3855191 e!3855192)))

(declare-fun c!1154587 () Bool)

(assert (=> b!6347667 (= c!1154587 ((_ is EmptyLang!16253) lt!2363826))))

(declare-fun d!1991796 () Bool)

(assert (=> d!1991796 e!3855191))

(declare-fun c!1154588 () Bool)

(assert (=> d!1991796 (= c!1154588 ((_ is EmptyExpr!16253) lt!2363826))))

(assert (=> d!1991796 (= lt!2363993 e!3855187)))

(declare-fun c!1154589 () Bool)

(assert (=> d!1991796 (= c!1154589 (isEmpty!37025 s!2326))))

(assert (=> d!1991796 (validRegex!7989 lt!2363826)))

(assert (=> d!1991796 (= (matchR!8436 lt!2363826 s!2326) lt!2363993)))

(declare-fun b!6347668 () Bool)

(declare-fun res!2612000 () Bool)

(assert (=> b!6347668 (=> (not res!2612000) (not e!3855189))))

(assert (=> b!6347668 (= res!2612000 (isEmpty!37025 (tail!12083 s!2326)))))

(declare-fun b!6347669 () Bool)

(declare-fun res!2612005 () Bool)

(assert (=> b!6347669 (=> (not res!2612005) (not e!3855189))))

(assert (=> b!6347669 (= res!2612005 (not call!541135))))

(declare-fun b!6347670 () Bool)

(assert (=> b!6347670 (= e!3855187 (matchR!8436 (derivativeStep!4958 lt!2363826 (head!12998 s!2326)) (tail!12083 s!2326)))))

(declare-fun bm!541130 () Bool)

(assert (=> bm!541130 (= call!541135 (isEmpty!37025 s!2326))))

(declare-fun b!6347671 () Bool)

(assert (=> b!6347671 (= e!3855193 (not (= (head!12998 s!2326) (c!1154330 lt!2363826))))))

(declare-fun b!6347672 () Bool)

(declare-fun res!2612002 () Bool)

(assert (=> b!6347672 (=> res!2612002 e!3855188)))

(assert (=> b!6347672 (= res!2612002 (not ((_ is ElementMatch!16253) lt!2363826)))))

(assert (=> b!6347672 (= e!3855192 e!3855188)))

(assert (= (and d!1991796 c!1154589) b!6347666))

(assert (= (and d!1991796 (not c!1154589)) b!6347670))

(assert (= (and d!1991796 c!1154588) b!6347659))

(assert (= (and d!1991796 (not c!1154588)) b!6347667))

(assert (= (and b!6347667 c!1154587) b!6347663))

(assert (= (and b!6347667 (not c!1154587)) b!6347672))

(assert (= (and b!6347672 (not res!2612002)) b!6347662))

(assert (= (and b!6347662 res!2612001) b!6347669))

(assert (= (and b!6347669 res!2612005) b!6347668))

(assert (= (and b!6347668 res!2612000) b!6347661))

(assert (= (and b!6347662 (not res!2612003)) b!6347665))

(assert (= (and b!6347665 res!2612004) b!6347664))

(assert (= (and b!6347664 (not res!2611998)) b!6347660))

(assert (= (and b!6347660 (not res!2611999)) b!6347671))

(assert (= (or b!6347659 b!6347664 b!6347669) bm!541130))

(assert (=> b!6347668 m!7154948))

(assert (=> b!6347668 m!7154948))

(assert (=> b!6347668 m!7154950))

(declare-fun m!7155064 () Bool)

(assert (=> b!6347666 m!7155064))

(assert (=> b!6347671 m!7154954))

(assert (=> b!6347660 m!7154948))

(assert (=> b!6347660 m!7154948))

(assert (=> b!6347660 m!7154950))

(assert (=> b!6347661 m!7154954))

(assert (=> b!6347670 m!7154954))

(assert (=> b!6347670 m!7154954))

(declare-fun m!7155066 () Bool)

(assert (=> b!6347670 m!7155066))

(assert (=> b!6347670 m!7154948))

(assert (=> b!6347670 m!7155066))

(assert (=> b!6347670 m!7154948))

(declare-fun m!7155068 () Bool)

(assert (=> b!6347670 m!7155068))

(assert (=> d!1991796 m!7154942))

(assert (=> d!1991796 m!7154978))

(assert (=> bm!541130 m!7154942))

(assert (=> b!6346830 d!1991796))

(declare-fun d!1991798 () Bool)

(assert (=> d!1991798 (= (isDefined!12847 (findConcatSeparation!2558 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 Nil!64936 s!2326 s!2326)) (not (isEmpty!37026 (findConcatSeparation!2558 (regOne!33018 (regOne!33018 r!7292)) lt!2363831 Nil!64936 s!2326 s!2326))))))

(declare-fun bs!1589231 () Bool)

(assert (= bs!1589231 d!1991798))

(assert (=> bs!1589231 m!7154354))

(declare-fun m!7155070 () Bool)

(assert (=> bs!1589231 m!7155070))

(assert (=> b!6346830 d!1991798))

(declare-fun bs!1589232 () Bool)

(declare-fun d!1991800 () Bool)

(assert (= bs!1589232 (and d!1991800 d!1991794)))

(declare-fun lambda!349033 () Int)

(assert (=> bs!1589232 (= lambda!349033 lambda!349030)))

(declare-fun bs!1589233 () Bool)

(assert (= bs!1589233 (and d!1991800 d!1991684)))

(assert (=> bs!1589233 (= lambda!349033 lambda!348990)))

(declare-fun bs!1589234 () Bool)

(assert (= bs!1589234 (and d!1991800 d!1991676)))

(assert (=> bs!1589234 (= lambda!349033 lambda!348979)))

(declare-fun bs!1589235 () Bool)

(assert (= bs!1589235 (and d!1991800 d!1991682)))

(assert (=> bs!1589235 (= lambda!349033 lambda!348980)))

(declare-fun bs!1589236 () Bool)

(assert (= bs!1589236 (and d!1991800 d!1991788)))

(assert (=> bs!1589236 (= lambda!349033 lambda!349027)))

(declare-fun b!6347693 () Bool)

(declare-fun e!3855209 () Regex!16253)

(declare-fun e!3855207 () Regex!16253)

(assert (=> b!6347693 (= e!3855209 e!3855207)))

(declare-fun c!1154599 () Bool)

(assert (=> b!6347693 (= c!1154599 ((_ is Cons!64934) (unfocusZipperList!1674 zl!343)))))

(declare-fun b!6347694 () Bool)

(declare-fun e!3855206 () Bool)

(assert (=> b!6347694 (= e!3855206 (isEmpty!37021 (t!378646 (unfocusZipperList!1674 zl!343))))))

(declare-fun b!6347695 () Bool)

(assert (=> b!6347695 (= e!3855207 (Union!16253 (h!71382 (unfocusZipperList!1674 zl!343)) (generalisedUnion!2097 (t!378646 (unfocusZipperList!1674 zl!343)))))))

(declare-fun b!6347696 () Bool)

(declare-fun e!3855210 () Bool)

(declare-fun e!3855211 () Bool)

(assert (=> b!6347696 (= e!3855210 e!3855211)))

(declare-fun c!1154600 () Bool)

(assert (=> b!6347696 (= c!1154600 (isEmpty!37021 (unfocusZipperList!1674 zl!343)))))

(declare-fun b!6347697 () Bool)

(assert (=> b!6347697 (= e!3855209 (h!71382 (unfocusZipperList!1674 zl!343)))))

(declare-fun b!6347699 () Bool)

(declare-fun e!3855208 () Bool)

(declare-fun lt!2363996 () Regex!16253)

(assert (=> b!6347699 (= e!3855208 (= lt!2363996 (head!12999 (unfocusZipperList!1674 zl!343))))))

(declare-fun b!6347700 () Bool)

(declare-fun isUnion!1092 (Regex!16253) Bool)

(assert (=> b!6347700 (= e!3855208 (isUnion!1092 lt!2363996))))

(declare-fun b!6347701 () Bool)

(assert (=> b!6347701 (= e!3855211 e!3855208)))

(declare-fun c!1154601 () Bool)

(assert (=> b!6347701 (= c!1154601 (isEmpty!37021 (tail!12084 (unfocusZipperList!1674 zl!343))))))

(declare-fun b!6347702 () Bool)

(assert (=> b!6347702 (= e!3855207 EmptyLang!16253)))

(assert (=> d!1991800 e!3855210))

(declare-fun res!2612010 () Bool)

(assert (=> d!1991800 (=> (not res!2612010) (not e!3855210))))

(assert (=> d!1991800 (= res!2612010 (validRegex!7989 lt!2363996))))

(assert (=> d!1991800 (= lt!2363996 e!3855209)))

(declare-fun c!1154598 () Bool)

(assert (=> d!1991800 (= c!1154598 e!3855206)))

(declare-fun res!2612011 () Bool)

(assert (=> d!1991800 (=> (not res!2612011) (not e!3855206))))

(assert (=> d!1991800 (= res!2612011 ((_ is Cons!64934) (unfocusZipperList!1674 zl!343)))))

(assert (=> d!1991800 (forall!15418 (unfocusZipperList!1674 zl!343) lambda!349033)))

(assert (=> d!1991800 (= (generalisedUnion!2097 (unfocusZipperList!1674 zl!343)) lt!2363996)))

(declare-fun b!6347698 () Bool)

(declare-fun isEmptyLang!1662 (Regex!16253) Bool)

(assert (=> b!6347698 (= e!3855211 (isEmptyLang!1662 lt!2363996))))

(assert (= (and d!1991800 res!2612011) b!6347694))

(assert (= (and d!1991800 c!1154598) b!6347697))

(assert (= (and d!1991800 (not c!1154598)) b!6347693))

(assert (= (and b!6347693 c!1154599) b!6347695))

(assert (= (and b!6347693 (not c!1154599)) b!6347702))

(assert (= (and d!1991800 res!2612010) b!6347696))

(assert (= (and b!6347696 c!1154600) b!6347698))

(assert (= (and b!6347696 (not c!1154600)) b!6347701))

(assert (= (and b!6347701 c!1154601) b!6347699))

(assert (= (and b!6347701 (not c!1154601)) b!6347700))

(assert (=> b!6347696 m!7154274))

(declare-fun m!7155072 () Bool)

(assert (=> b!6347696 m!7155072))

(declare-fun m!7155074 () Bool)

(assert (=> b!6347695 m!7155074))

(declare-fun m!7155076 () Bool)

(assert (=> b!6347698 m!7155076))

(declare-fun m!7155078 () Bool)

(assert (=> b!6347700 m!7155078))

(declare-fun m!7155080 () Bool)

(assert (=> b!6347694 m!7155080))

(assert (=> b!6347699 m!7154274))

(declare-fun m!7155082 () Bool)

(assert (=> b!6347699 m!7155082))

(declare-fun m!7155084 () Bool)

(assert (=> d!1991800 m!7155084))

(assert (=> d!1991800 m!7154274))

(declare-fun m!7155086 () Bool)

(assert (=> d!1991800 m!7155086))

(assert (=> b!6347701 m!7154274))

(declare-fun m!7155088 () Bool)

(assert (=> b!6347701 m!7155088))

(assert (=> b!6347701 m!7155088))

(declare-fun m!7155090 () Bool)

(assert (=> b!6347701 m!7155090))

(assert (=> b!6346831 d!1991800))

(declare-fun bs!1589237 () Bool)

(declare-fun d!1991802 () Bool)

(assert (= bs!1589237 (and d!1991802 d!1991794)))

(declare-fun lambda!349036 () Int)

(assert (=> bs!1589237 (= lambda!349036 lambda!349030)))

(declare-fun bs!1589238 () Bool)

(assert (= bs!1589238 (and d!1991802 d!1991684)))

(assert (=> bs!1589238 (= lambda!349036 lambda!348990)))

(declare-fun bs!1589239 () Bool)

(assert (= bs!1589239 (and d!1991802 d!1991676)))

(assert (=> bs!1589239 (= lambda!349036 lambda!348979)))

(declare-fun bs!1589240 () Bool)

(assert (= bs!1589240 (and d!1991802 d!1991800)))

(assert (=> bs!1589240 (= lambda!349036 lambda!349033)))

(declare-fun bs!1589241 () Bool)

(assert (= bs!1589241 (and d!1991802 d!1991682)))

(assert (=> bs!1589241 (= lambda!349036 lambda!348980)))

(declare-fun bs!1589242 () Bool)

(assert (= bs!1589242 (and d!1991802 d!1991788)))

(assert (=> bs!1589242 (= lambda!349036 lambda!349027)))

(declare-fun lt!2363999 () List!65058)

(assert (=> d!1991802 (forall!15418 lt!2363999 lambda!349036)))

(declare-fun e!3855214 () List!65058)

(assert (=> d!1991802 (= lt!2363999 e!3855214)))

(declare-fun c!1154604 () Bool)

(assert (=> d!1991802 (= c!1154604 ((_ is Cons!64935) zl!343))))

(assert (=> d!1991802 (= (unfocusZipperList!1674 zl!343) lt!2363999)))

(declare-fun b!6347707 () Bool)

(assert (=> b!6347707 (= e!3855214 (Cons!64934 (generalisedConcat!1850 (exprs!6137 (h!71383 zl!343))) (unfocusZipperList!1674 (t!378647 zl!343))))))

(declare-fun b!6347708 () Bool)

(assert (=> b!6347708 (= e!3855214 Nil!64934)))

(assert (= (and d!1991802 c!1154604) b!6347707))

(assert (= (and d!1991802 (not c!1154604)) b!6347708))

(declare-fun m!7155092 () Bool)

(assert (=> d!1991802 m!7155092))

(assert (=> b!6347707 m!7154316))

(declare-fun m!7155094 () Bool)

(assert (=> b!6347707 m!7155094))

(assert (=> b!6346831 d!1991802))

(declare-fun d!1991804 () Bool)

(assert (=> d!1991804 (= (flatMap!1758 lt!2363827 lambda!348937) (choose!47091 lt!2363827 lambda!348937))))

(declare-fun bs!1589243 () Bool)

(assert (= bs!1589243 d!1991804))

(declare-fun m!7155096 () Bool)

(assert (=> bs!1589243 m!7155096))

(assert (=> b!6346834 d!1991804))

(declare-fun d!1991806 () Bool)

(declare-fun c!1154606 () Bool)

(declare-fun e!3855215 () Bool)

(assert (=> d!1991806 (= c!1154606 e!3855215)))

(declare-fun res!2612012 () Bool)

(assert (=> d!1991806 (=> (not res!2612012) (not e!3855215))))

(assert (=> d!1991806 (= res!2612012 ((_ is Cons!64934) (exprs!6137 lt!2363824)))))

(declare-fun e!3855216 () (InoxSet Context!11274))

(assert (=> d!1991806 (= (derivationStepZipperUp!1427 lt!2363824 (h!71384 s!2326)) e!3855216)))

(declare-fun b!6347709 () Bool)

(declare-fun e!3855217 () (InoxSet Context!11274))

(declare-fun call!541136 () (InoxSet Context!11274))

(assert (=> b!6347709 (= e!3855217 call!541136)))

(declare-fun b!6347710 () Bool)

(assert (=> b!6347710 (= e!3855215 (nullable!6246 (h!71382 (exprs!6137 lt!2363824))))))

(declare-fun bm!541131 () Bool)

(assert (=> bm!541131 (= call!541136 (derivationStepZipperDown!1501 (h!71382 (exprs!6137 lt!2363824)) (Context!11275 (t!378646 (exprs!6137 lt!2363824))) (h!71384 s!2326)))))

(declare-fun b!6347711 () Bool)

(assert (=> b!6347711 (= e!3855217 ((as const (Array Context!11274 Bool)) false))))

(declare-fun b!6347712 () Bool)

(assert (=> b!6347712 (= e!3855216 e!3855217)))

(declare-fun c!1154605 () Bool)

(assert (=> b!6347712 (= c!1154605 ((_ is Cons!64934) (exprs!6137 lt!2363824)))))

(declare-fun b!6347713 () Bool)

(assert (=> b!6347713 (= e!3855216 ((_ map or) call!541136 (derivationStepZipperUp!1427 (Context!11275 (t!378646 (exprs!6137 lt!2363824))) (h!71384 s!2326))))))

(assert (= (and d!1991806 res!2612012) b!6347710))

(assert (= (and d!1991806 c!1154606) b!6347713))

(assert (= (and d!1991806 (not c!1154606)) b!6347712))

(assert (= (and b!6347712 c!1154605) b!6347709))

(assert (= (and b!6347712 (not c!1154605)) b!6347711))

(assert (= (or b!6347713 b!6347709) bm!541131))

(declare-fun m!7155098 () Bool)

(assert (=> b!6347710 m!7155098))

(declare-fun m!7155100 () Bool)

(assert (=> bm!541131 m!7155100))

(declare-fun m!7155102 () Bool)

(assert (=> b!6347713 m!7155102))

(assert (=> b!6346834 d!1991806))

(declare-fun d!1991808 () Bool)

(assert (=> d!1991808 (= (flatMap!1758 lt!2363827 lambda!348937) (dynLambda!25743 lambda!348937 lt!2363824))))

(declare-fun lt!2364000 () Unit!158343)

(assert (=> d!1991808 (= lt!2364000 (choose!47092 lt!2363827 lt!2363824 lambda!348937))))

(assert (=> d!1991808 (= lt!2363827 (store ((as const (Array Context!11274 Bool)) false) lt!2363824 true))))

(assert (=> d!1991808 (= (lemmaFlatMapOnSingletonSet!1284 lt!2363827 lt!2363824 lambda!348937) lt!2364000)))

(declare-fun b_lambda!241471 () Bool)

(assert (=> (not b_lambda!241471) (not d!1991808)))

(declare-fun bs!1589244 () Bool)

(assert (= bs!1589244 d!1991808))

(assert (=> bs!1589244 m!7154378))

(declare-fun m!7155104 () Bool)

(assert (=> bs!1589244 m!7155104))

(declare-fun m!7155106 () Bool)

(assert (=> bs!1589244 m!7155106))

(assert (=> bs!1589244 m!7154376))

(assert (=> b!6346834 d!1991808))

(declare-fun bs!1589245 () Bool)

(declare-fun d!1991810 () Bool)

(assert (= bs!1589245 (and d!1991810 b!6346815)))

(declare-fun lambda!349039 () Int)

(assert (=> bs!1589245 (= lambda!349039 lambda!348937)))

(assert (=> d!1991810 true))

(assert (=> d!1991810 (= (derivationStepZipper!2219 lt!2363827 (h!71384 s!2326)) (flatMap!1758 lt!2363827 lambda!349039))))

(declare-fun bs!1589246 () Bool)

(assert (= bs!1589246 d!1991810))

(declare-fun m!7155108 () Bool)

(assert (=> bs!1589246 m!7155108))

(assert (=> b!6346834 d!1991810))

(declare-fun d!1991812 () Bool)

(assert (=> d!1991812 (= (isEmpty!37022 (t!378647 zl!343)) ((_ is Nil!64935) (t!378647 zl!343)))))

(assert (=> b!6346835 d!1991812))

(declare-fun d!1991814 () Bool)

(declare-fun c!1154609 () Bool)

(assert (=> d!1991814 (= c!1154609 (isEmpty!37025 (t!378648 s!2326)))))

(declare-fun e!3855218 () Bool)

(assert (=> d!1991814 (= (matchZipper!2265 lt!2363830 (t!378648 s!2326)) e!3855218)))

(declare-fun b!6347716 () Bool)

(assert (=> b!6347716 (= e!3855218 (nullableZipper!2019 lt!2363830))))

(declare-fun b!6347717 () Bool)

(assert (=> b!6347717 (= e!3855218 (matchZipper!2265 (derivationStepZipper!2219 lt!2363830 (head!12998 (t!378648 s!2326))) (tail!12083 (t!378648 s!2326))))))

(assert (= (and d!1991814 c!1154609) b!6347716))

(assert (= (and d!1991814 (not c!1154609)) b!6347717))

(assert (=> d!1991814 m!7154652))

(declare-fun m!7155110 () Bool)

(assert (=> b!6347716 m!7155110))

(assert (=> b!6347717 m!7154656))

(assert (=> b!6347717 m!7154656))

(declare-fun m!7155112 () Bool)

(assert (=> b!6347717 m!7155112))

(assert (=> b!6347717 m!7154660))

(assert (=> b!6347717 m!7155112))

(assert (=> b!6347717 m!7154660))

(declare-fun m!7155114 () Bool)

(assert (=> b!6347717 m!7155114))

(assert (=> b!6346833 d!1991814))

(declare-fun d!1991816 () Bool)

(declare-fun c!1154610 () Bool)

(assert (=> d!1991816 (= c!1154610 (isEmpty!37025 (t!378648 s!2326)))))

(declare-fun e!3855219 () Bool)

(assert (=> d!1991816 (= (matchZipper!2265 lt!2363840 (t!378648 s!2326)) e!3855219)))

(declare-fun b!6347718 () Bool)

(assert (=> b!6347718 (= e!3855219 (nullableZipper!2019 lt!2363840))))

(declare-fun b!6347719 () Bool)

(assert (=> b!6347719 (= e!3855219 (matchZipper!2265 (derivationStepZipper!2219 lt!2363840 (head!12998 (t!378648 s!2326))) (tail!12083 (t!378648 s!2326))))))

(assert (= (and d!1991816 c!1154610) b!6347718))

(assert (= (and d!1991816 (not c!1154610)) b!6347719))

(assert (=> d!1991816 m!7154652))

(declare-fun m!7155116 () Bool)

(assert (=> b!6347718 m!7155116))

(assert (=> b!6347719 m!7154656))

(assert (=> b!6347719 m!7154656))

(declare-fun m!7155118 () Bool)

(assert (=> b!6347719 m!7155118))

(assert (=> b!6347719 m!7154660))

(assert (=> b!6347719 m!7155118))

(assert (=> b!6347719 m!7154660))

(declare-fun m!7155120 () Bool)

(assert (=> b!6347719 m!7155120))

(assert (=> b!6346822 d!1991816))

(declare-fun d!1991818 () Bool)

(assert (=> d!1991818 (= (nullable!6246 (regOne!33018 (regOne!33018 r!7292))) (nullableFct!2193 (regOne!33018 (regOne!33018 r!7292))))))

(declare-fun bs!1589247 () Bool)

(assert (= bs!1589247 d!1991818))

(declare-fun m!7155122 () Bool)

(assert (=> bs!1589247 m!7155122))

(assert (=> b!6346843 d!1991818))

(declare-fun e!3855222 () Bool)

(assert (=> b!6346836 (= tp!1769318 e!3855222)))

(declare-fun b!6347733 () Bool)

(declare-fun tp!1769398 () Bool)

(declare-fun tp!1769397 () Bool)

(assert (=> b!6347733 (= e!3855222 (and tp!1769398 tp!1769397))))

(declare-fun b!6347732 () Bool)

(declare-fun tp!1769396 () Bool)

(assert (=> b!6347732 (= e!3855222 tp!1769396)))

(declare-fun b!6347730 () Bool)

(assert (=> b!6347730 (= e!3855222 tp_is_empty!41759)))

(declare-fun b!6347731 () Bool)

(declare-fun tp!1769395 () Bool)

(declare-fun tp!1769399 () Bool)

(assert (=> b!6347731 (= e!3855222 (and tp!1769395 tp!1769399))))

(assert (= (and b!6346836 ((_ is ElementMatch!16253) (regOne!33018 r!7292))) b!6347730))

(assert (= (and b!6346836 ((_ is Concat!25098) (regOne!33018 r!7292))) b!6347731))

(assert (= (and b!6346836 ((_ is Star!16253) (regOne!33018 r!7292))) b!6347732))

(assert (= (and b!6346836 ((_ is Union!16253) (regOne!33018 r!7292))) b!6347733))

(declare-fun e!3855223 () Bool)

(assert (=> b!6346836 (= tp!1769320 e!3855223)))

(declare-fun b!6347737 () Bool)

(declare-fun tp!1769403 () Bool)

(declare-fun tp!1769402 () Bool)

(assert (=> b!6347737 (= e!3855223 (and tp!1769403 tp!1769402))))

(declare-fun b!6347736 () Bool)

(declare-fun tp!1769401 () Bool)

(assert (=> b!6347736 (= e!3855223 tp!1769401)))

(declare-fun b!6347734 () Bool)

(assert (=> b!6347734 (= e!3855223 tp_is_empty!41759)))

(declare-fun b!6347735 () Bool)

(declare-fun tp!1769400 () Bool)

(declare-fun tp!1769404 () Bool)

(assert (=> b!6347735 (= e!3855223 (and tp!1769400 tp!1769404))))

(assert (= (and b!6346836 ((_ is ElementMatch!16253) (regTwo!33018 r!7292))) b!6347734))

(assert (= (and b!6346836 ((_ is Concat!25098) (regTwo!33018 r!7292))) b!6347735))

(assert (= (and b!6346836 ((_ is Star!16253) (regTwo!33018 r!7292))) b!6347736))

(assert (= (and b!6346836 ((_ is Union!16253) (regTwo!33018 r!7292))) b!6347737))

(declare-fun b!6347742 () Bool)

(declare-fun e!3855226 () Bool)

(declare-fun tp!1769407 () Bool)

(assert (=> b!6347742 (= e!3855226 (and tp_is_empty!41759 tp!1769407))))

(assert (=> b!6346820 (= tp!1769317 e!3855226)))

(assert (= (and b!6346820 ((_ is Cons!64936) (t!378648 s!2326))) b!6347742))

(declare-fun e!3855227 () Bool)

(assert (=> b!6346829 (= tp!1769323 e!3855227)))

(declare-fun b!6347746 () Bool)

(declare-fun tp!1769411 () Bool)

(declare-fun tp!1769410 () Bool)

(assert (=> b!6347746 (= e!3855227 (and tp!1769411 tp!1769410))))

(declare-fun b!6347745 () Bool)

(declare-fun tp!1769409 () Bool)

(assert (=> b!6347745 (= e!3855227 tp!1769409)))

(declare-fun b!6347743 () Bool)

(assert (=> b!6347743 (= e!3855227 tp_is_empty!41759)))

(declare-fun b!6347744 () Bool)

(declare-fun tp!1769408 () Bool)

(declare-fun tp!1769412 () Bool)

(assert (=> b!6347744 (= e!3855227 (and tp!1769408 tp!1769412))))

(assert (= (and b!6346829 ((_ is ElementMatch!16253) (regOne!33019 r!7292))) b!6347743))

(assert (= (and b!6346829 ((_ is Concat!25098) (regOne!33019 r!7292))) b!6347744))

(assert (= (and b!6346829 ((_ is Star!16253) (regOne!33019 r!7292))) b!6347745))

(assert (= (and b!6346829 ((_ is Union!16253) (regOne!33019 r!7292))) b!6347746))

(declare-fun e!3855228 () Bool)

(assert (=> b!6346829 (= tp!1769321 e!3855228)))

(declare-fun b!6347750 () Bool)

(declare-fun tp!1769416 () Bool)

(declare-fun tp!1769415 () Bool)

(assert (=> b!6347750 (= e!3855228 (and tp!1769416 tp!1769415))))

(declare-fun b!6347749 () Bool)

(declare-fun tp!1769414 () Bool)

(assert (=> b!6347749 (= e!3855228 tp!1769414)))

(declare-fun b!6347747 () Bool)

(assert (=> b!6347747 (= e!3855228 tp_is_empty!41759)))

(declare-fun b!6347748 () Bool)

(declare-fun tp!1769413 () Bool)

(declare-fun tp!1769417 () Bool)

(assert (=> b!6347748 (= e!3855228 (and tp!1769413 tp!1769417))))

(assert (= (and b!6346829 ((_ is ElementMatch!16253) (regTwo!33019 r!7292))) b!6347747))

(assert (= (and b!6346829 ((_ is Concat!25098) (regTwo!33019 r!7292))) b!6347748))

(assert (= (and b!6346829 ((_ is Star!16253) (regTwo!33019 r!7292))) b!6347749))

(assert (= (and b!6346829 ((_ is Union!16253) (regTwo!33019 r!7292))) b!6347750))

(declare-fun e!3855229 () Bool)

(assert (=> b!6346818 (= tp!1769326 e!3855229)))

(declare-fun b!6347754 () Bool)

(declare-fun tp!1769421 () Bool)

(declare-fun tp!1769420 () Bool)

(assert (=> b!6347754 (= e!3855229 (and tp!1769421 tp!1769420))))

(declare-fun b!6347753 () Bool)

(declare-fun tp!1769419 () Bool)

(assert (=> b!6347753 (= e!3855229 tp!1769419)))

(declare-fun b!6347751 () Bool)

(assert (=> b!6347751 (= e!3855229 tp_is_empty!41759)))

(declare-fun b!6347752 () Bool)

(declare-fun tp!1769418 () Bool)

(declare-fun tp!1769422 () Bool)

(assert (=> b!6347752 (= e!3855229 (and tp!1769418 tp!1769422))))

(assert (= (and b!6346818 ((_ is ElementMatch!16253) (reg!16582 r!7292))) b!6347751))

(assert (= (and b!6346818 ((_ is Concat!25098) (reg!16582 r!7292))) b!6347752))

(assert (= (and b!6346818 ((_ is Star!16253) (reg!16582 r!7292))) b!6347753))

(assert (= (and b!6346818 ((_ is Union!16253) (reg!16582 r!7292))) b!6347754))

(declare-fun b!6347759 () Bool)

(declare-fun e!3855232 () Bool)

(declare-fun tp!1769427 () Bool)

(declare-fun tp!1769428 () Bool)

(assert (=> b!6347759 (= e!3855232 (and tp!1769427 tp!1769428))))

(assert (=> b!6346824 (= tp!1769324 e!3855232)))

(assert (= (and b!6346824 ((_ is Cons!64934) (exprs!6137 setElem!43212))) b!6347759))

(declare-fun b!6347760 () Bool)

(declare-fun e!3855233 () Bool)

(declare-fun tp!1769429 () Bool)

(declare-fun tp!1769430 () Bool)

(assert (=> b!6347760 (= e!3855233 (and tp!1769429 tp!1769430))))

(assert (=> b!6346817 (= tp!1769325 e!3855233)))

(assert (= (and b!6346817 ((_ is Cons!64934) (exprs!6137 (h!71383 zl!343)))) b!6347760))

(declare-fun condSetEmpty!43218 () Bool)

(assert (=> setNonEmpty!43212 (= condSetEmpty!43218 (= setRest!43212 ((as const (Array Context!11274 Bool)) false)))))

(declare-fun setRes!43218 () Bool)

(assert (=> setNonEmpty!43212 (= tp!1769322 setRes!43218)))

(declare-fun setIsEmpty!43218 () Bool)

(assert (=> setIsEmpty!43218 setRes!43218))

(declare-fun setElem!43218 () Context!11274)

(declare-fun tp!1769436 () Bool)

(declare-fun setNonEmpty!43218 () Bool)

(declare-fun e!3855236 () Bool)

(assert (=> setNonEmpty!43218 (= setRes!43218 (and tp!1769436 (inv!83879 setElem!43218) e!3855236))))

(declare-fun setRest!43218 () (InoxSet Context!11274))

(assert (=> setNonEmpty!43218 (= setRest!43212 ((_ map or) (store ((as const (Array Context!11274 Bool)) false) setElem!43218 true) setRest!43218))))

(declare-fun b!6347765 () Bool)

(declare-fun tp!1769435 () Bool)

(assert (=> b!6347765 (= e!3855236 tp!1769435)))

(assert (= (and setNonEmpty!43212 condSetEmpty!43218) setIsEmpty!43218))

(assert (= (and setNonEmpty!43212 (not condSetEmpty!43218)) setNonEmpty!43218))

(assert (= setNonEmpty!43218 b!6347765))

(declare-fun m!7155124 () Bool)

(assert (=> setNonEmpty!43218 m!7155124))

(declare-fun b!6347773 () Bool)

(declare-fun e!3855242 () Bool)

(declare-fun tp!1769441 () Bool)

(assert (=> b!6347773 (= e!3855242 tp!1769441)))

(declare-fun e!3855241 () Bool)

(declare-fun b!6347772 () Bool)

(declare-fun tp!1769442 () Bool)

(assert (=> b!6347772 (= e!3855241 (and (inv!83879 (h!71383 (t!378647 zl!343))) e!3855242 tp!1769442))))

(assert (=> b!6346828 (= tp!1769319 e!3855241)))

(assert (= b!6347772 b!6347773))

(assert (= (and b!6346828 ((_ is Cons!64935) (t!378647 zl!343))) b!6347772))

(declare-fun m!7155126 () Bool)

(assert (=> b!6347772 m!7155126))

(declare-fun b_lambda!241473 () Bool)

(assert (= b_lambda!241461 (or b!6346815 b_lambda!241473)))

(declare-fun bs!1589248 () Bool)

(declare-fun d!1991820 () Bool)

(assert (= bs!1589248 (and d!1991820 b!6346815)))

(assert (=> bs!1589248 (= (dynLambda!25743 lambda!348937 (h!71383 zl!343)) (derivationStepZipperUp!1427 (h!71383 zl!343) (h!71384 s!2326)))))

(assert (=> bs!1589248 m!7154306))

(assert (=> d!1991640 d!1991820))

(declare-fun b_lambda!241475 () Bool)

(assert (= b_lambda!241471 (or b!6346815 b_lambda!241475)))

(declare-fun bs!1589249 () Bool)

(declare-fun d!1991822 () Bool)

(assert (= bs!1589249 (and d!1991822 b!6346815)))

(assert (=> bs!1589249 (= (dynLambda!25743 lambda!348937 lt!2363824) (derivationStepZipperUp!1427 lt!2363824 (h!71384 s!2326)))))

(assert (=> bs!1589249 m!7154372))

(assert (=> d!1991808 d!1991822))

(check-sat (not d!1991712) (not b!6347772) (not b!6347666) (not d!1991676) (not b!6347653) (not b!6347753) (not b!6347516) (not bm!541130) (not d!1991788) (not d!1991708) (not d!1991796) (not b!6347649) (not b!6347366) (not b!6347630) (not b!6347737) (not d!1991784) (not b!6347637) tp_is_empty!41759 (not b!6347320) (not b!6347650) (not b!6347205) (not b!6347641) (not bm!541084) (not b!6347636) (not bm!541097) (not d!1991684) (not b!6347241) (not bm!541120) (not b!6347622) (not b!6347603) (not d!1991780) (not b!6347120) (not b!6347661) (not bm!541115) (not b!6347087) (not d!1991794) (not d!1991628) (not d!1991756) (not b!6347624) (not b!6347112) (not d!1991768) (not b!6347732) (not b!6347707) (not b!6347115) (not bm!541128) (not bs!1589249) (not b!6347556) (not b!6347773) (not d!1991766) (not b!6347215) (not b!6347124) (not b!6347745) (not b!6347696) (not b!6347322) (not b!6347668) (not bm!541083) (not b!6347321) (not b!6347309) (not b!6347658) (not b!6347168) (not b!6347370) (not setNonEmpty!43218) (not b!6347647) (not b!6347670) (not b!6347314) (not bm!541099) (not b!6347699) (not b!6347698) (not b!6347369) (not b_lambda!241473) (not bm!541063) (not b!6347700) (not b!6347750) (not b!6347317) (not bm!541124) (not b!6347695) (not d!1991816) (not b!6347752) (not b!6347713) (not b!6347735) (not b!6347213) (not b!6347742) (not b!6347733) (not b!6347710) (not b!6347620) (not d!1991814) (not bm!541098) (not b!6347746) (not b!6347749) (not bm!541121) (not b!6347598) (not b!6347671) (not b!6347619) (not d!1991790) (not b!6347593) (not b!6347600) (not b!6347644) (not d!1991772) (not d!1991638) (not d!1991726) (not d!1991776) (not b!6347719) (not b!6347085) (not d!1991640) (not b!6347129) (not d!1991778) (not b!6347562) (not b!6347312) (not b!6347648) (not b!6347717) (not bm!541062) (not b!6347316) (not b!6347367) (not b!6347602) (not b!6347368) (not b!6347592) (not d!1991802) (not b!6347308) (not bm!541127) (not d!1991786) (not b!6347701) (not b!6347613) (not b!6347748) (not bs!1589248) (not d!1991668) (not d!1991682) (not b!6347117) (not bm!541129) (not bm!541131) (not d!1991754) (not b!6347096) (not d!1991670) (not b!6347207) (not b!6347657) (not d!1991714) (not b!6347645) (not d!1991810) (not bm!541113) (not bm!541125) (not d!1991798) (not d!1991818) (not b!6347643) (not b!6347646) (not b!6347765) (not b!6347716) (not d!1991770) (not b!6347656) (not b!6347718) (not d!1991732) (not b!6347655) (not d!1991808) (not bm!541082) (not b!6347214) (not b!6347744) (not b!6347371) (not b_lambda!241475) (not b!6347216) (not bm!541064) (not b!6347094) (not b!6347243) (not b!6347694) (not b!6347621) (not b!6347660) (not b!6347754) (not b!6347731) (not b!6347638) (not d!1991800) (not b!6347760) (not d!1991804) (not b!6347623) (not b!6347607) (not d!1991730) (not b!6347315) (not d!1991742) (not b!6347759) (not b!6347259) (not d!1991792) (not b!6347736))
(check-sat)
