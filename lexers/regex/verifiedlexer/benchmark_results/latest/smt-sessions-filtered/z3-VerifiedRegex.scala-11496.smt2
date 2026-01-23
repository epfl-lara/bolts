; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!627862 () Bool)

(assert start!627862)

(declare-fun b!6336813 () Bool)

(assert (=> b!6336813 true))

(assert (=> b!6336813 true))

(declare-fun lambda!347958 () Int)

(declare-fun lambda!347957 () Int)

(assert (=> b!6336813 (not (= lambda!347958 lambda!347957))))

(assert (=> b!6336813 true))

(assert (=> b!6336813 true))

(declare-fun b!6336821 () Bool)

(assert (=> b!6336821 true))

(declare-fun b!6336812 () Bool)

(declare-fun res!2607898 () Bool)

(declare-fun e!3849231 () Bool)

(assert (=> b!6336812 (=> res!2607898 e!3849231)))

(declare-datatypes ((C!32748 0))(
  ( (C!32749 (val!26076 Int)) )
))
(declare-datatypes ((Regex!16239 0))(
  ( (ElementMatch!16239 (c!1151834 C!32748)) (Concat!25084 (regOne!32990 Regex!16239) (regTwo!32990 Regex!16239)) (EmptyExpr!16239) (Star!16239 (reg!16568 Regex!16239)) (EmptyLang!16239) (Union!16239 (regOne!32991 Regex!16239) (regTwo!32991 Regex!16239)) )
))
(declare-datatypes ((List!65016 0))(
  ( (Nil!64892) (Cons!64892 (h!71340 Regex!16239) (t!378600 List!65016)) )
))
(declare-datatypes ((Context!11246 0))(
  ( (Context!11247 (exprs!6123 List!65016)) )
))
(declare-datatypes ((List!65017 0))(
  ( (Nil!64893) (Cons!64893 (h!71341 Context!11246) (t!378601 List!65017)) )
))
(declare-fun zl!343 () List!65017)

(declare-fun r!7292 () Regex!16239)

(assert (=> b!6336812 (= res!2607898 (not (= (exprs!6123 (h!71341 zl!343)) (Cons!64892 (Concat!25084 (regOne!32990 (regOne!32990 r!7292)) (regTwo!32990 (regOne!32990 r!7292))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun e!3849226 () Bool)

(declare-fun e!3849235 () Bool)

(assert (=> b!6336813 (= e!3849226 e!3849235)))

(declare-fun res!2607883 () Bool)

(assert (=> b!6336813 (=> res!2607883 e!3849235)))

(declare-datatypes ((List!65018 0))(
  ( (Nil!64894) (Cons!64894 (h!71342 C!32748) (t!378602 List!65018)) )
))
(declare-fun s!2326 () List!65018)

(declare-fun lt!2361576 () Bool)

(declare-fun lt!2361565 () Bool)

(get-info :version)

(assert (=> b!6336813 (= res!2607883 (or (not (= lt!2361576 lt!2361565)) ((_ is Nil!64894) s!2326)))))

(declare-fun Exists!3309 (Int) Bool)

(assert (=> b!6336813 (= (Exists!3309 lambda!347957) (Exists!3309 lambda!347958))))

(declare-datatypes ((Unit!158287 0))(
  ( (Unit!158288) )
))
(declare-fun lt!2361563 () Unit!158287)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1846 (Regex!16239 Regex!16239 List!65018) Unit!158287)

(assert (=> b!6336813 (= lt!2361563 (lemmaExistCutMatchRandMatchRSpecEquivalent!1846 (regOne!32990 r!7292) (regTwo!32990 r!7292) s!2326))))

(assert (=> b!6336813 (= lt!2361565 (Exists!3309 lambda!347957))))

(declare-datatypes ((tuple2!66436 0))(
  ( (tuple2!66437 (_1!36521 List!65018) (_2!36521 List!65018)) )
))
(declare-datatypes ((Option!16130 0))(
  ( (None!16129) (Some!16129 (v!52298 tuple2!66436)) )
))
(declare-fun isDefined!12833 (Option!16130) Bool)

(declare-fun findConcatSeparation!2544 (Regex!16239 Regex!16239 List!65018 List!65018 List!65018) Option!16130)

(assert (=> b!6336813 (= lt!2361565 (isDefined!12833 (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) Nil!64894 s!2326 s!2326)))))

(declare-fun lt!2361568 () Unit!158287)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2308 (Regex!16239 Regex!16239 List!65018) Unit!158287)

(assert (=> b!6336813 (= lt!2361568 (lemmaFindConcatSeparationEquivalentToExists!2308 (regOne!32990 r!7292) (regTwo!32990 r!7292) s!2326))))

(declare-fun b!6336814 () Bool)

(declare-fun res!2607894 () Bool)

(assert (=> b!6336814 (=> res!2607894 e!3849235)))

(declare-fun isEmpty!36969 (List!65016) Bool)

(assert (=> b!6336814 (= res!2607894 (isEmpty!36969 (t!378600 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6336815 () Bool)

(declare-fun res!2607886 () Bool)

(declare-fun e!3849236 () Bool)

(assert (=> b!6336815 (=> res!2607886 e!3849236)))

(assert (=> b!6336815 (= res!2607886 (not ((_ is Concat!25084) (regOne!32990 r!7292))))))

(declare-fun setRes!43114 () Bool)

(declare-fun tp!1767558 () Bool)

(declare-fun setElem!43114 () Context!11246)

(declare-fun e!3849225 () Bool)

(declare-fun setNonEmpty!43114 () Bool)

(declare-fun inv!83844 (Context!11246) Bool)

(assert (=> setNonEmpty!43114 (= setRes!43114 (and tp!1767558 (inv!83844 setElem!43114) e!3849225))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11246))

(declare-fun setRest!43114 () (InoxSet Context!11246))

(assert (=> setNonEmpty!43114 (= z!1189 ((_ map or) (store ((as const (Array Context!11246 Bool)) false) setElem!43114 true) setRest!43114))))

(declare-fun res!2607885 () Bool)

(declare-fun e!3849239 () Bool)

(assert (=> start!627862 (=> (not res!2607885) (not e!3849239))))

(declare-fun validRegex!7975 (Regex!16239) Bool)

(assert (=> start!627862 (= res!2607885 (validRegex!7975 r!7292))))

(assert (=> start!627862 e!3849239))

(declare-fun e!3849238 () Bool)

(assert (=> start!627862 e!3849238))

(declare-fun condSetEmpty!43114 () Bool)

(assert (=> start!627862 (= condSetEmpty!43114 (= z!1189 ((as const (Array Context!11246 Bool)) false)))))

(assert (=> start!627862 setRes!43114))

(declare-fun e!3849237 () Bool)

(assert (=> start!627862 e!3849237))

(declare-fun e!3849233 () Bool)

(assert (=> start!627862 e!3849233))

(declare-fun b!6336816 () Bool)

(declare-fun tp!1767556 () Bool)

(declare-fun tp!1767557 () Bool)

(assert (=> b!6336816 (= e!3849238 (and tp!1767556 tp!1767557))))

(declare-fun setIsEmpty!43114 () Bool)

(assert (=> setIsEmpty!43114 setRes!43114))

(declare-fun b!6336817 () Bool)

(assert (=> b!6336817 (= e!3849239 (not e!3849226))))

(declare-fun res!2607890 () Bool)

(assert (=> b!6336817 (=> res!2607890 e!3849226)))

(assert (=> b!6336817 (= res!2607890 (not ((_ is Cons!64893) zl!343)))))

(declare-fun matchRSpec!3340 (Regex!16239 List!65018) Bool)

(assert (=> b!6336817 (= lt!2361576 (matchRSpec!3340 r!7292 s!2326))))

(declare-fun matchR!8422 (Regex!16239 List!65018) Bool)

(assert (=> b!6336817 (= lt!2361576 (matchR!8422 r!7292 s!2326))))

(declare-fun lt!2361575 () Unit!158287)

(declare-fun mainMatchTheorem!3340 (Regex!16239 List!65018) Unit!158287)

(assert (=> b!6336817 (= lt!2361575 (mainMatchTheorem!3340 r!7292 s!2326))))

(declare-fun b!6336818 () Bool)

(declare-fun res!2607900 () Bool)

(assert (=> b!6336818 (=> res!2607900 e!3849231)))

(declare-fun lt!2361569 () Bool)

(declare-fun lt!2361566 () (InoxSet Context!11246))

(declare-fun matchZipper!2251 ((InoxSet Context!11246) List!65018) Bool)

(assert (=> b!6336818 (= res!2607900 (not (= lt!2361569 (matchZipper!2251 lt!2361566 (t!378602 s!2326)))))))

(declare-fun b!6336819 () Bool)

(declare-fun e!3849224 () Bool)

(assert (=> b!6336819 (= e!3849231 e!3849224)))

(declare-fun res!2607879 () Bool)

(assert (=> b!6336819 (=> res!2607879 e!3849224)))

(declare-fun lt!2361561 () List!65017)

(declare-fun zipperDepthTotal!376 (List!65017) Int)

(assert (=> b!6336819 (= res!2607879 (>= (zipperDepthTotal!376 lt!2361561) (zipperDepthTotal!376 zl!343)))))

(declare-fun lt!2361567 () Context!11246)

(assert (=> b!6336819 (= lt!2361561 (Cons!64893 lt!2361567 Nil!64893))))

(declare-fun b!6336820 () Bool)

(declare-fun tp!1767549 () Bool)

(declare-fun e!3849228 () Bool)

(assert (=> b!6336820 (= e!3849237 (and (inv!83844 (h!71341 zl!343)) e!3849228 tp!1767549))))

(assert (=> b!6336821 (= e!3849235 e!3849236)))

(declare-fun res!2607899 () Bool)

(assert (=> b!6336821 (=> res!2607899 e!3849236)))

(assert (=> b!6336821 (= res!2607899 (or (and ((_ is ElementMatch!16239) (regOne!32990 r!7292)) (= (c!1151834 (regOne!32990 r!7292)) (h!71342 s!2326))) ((_ is Union!16239) (regOne!32990 r!7292))))))

(declare-fun lt!2361574 () Unit!158287)

(declare-fun e!3849230 () Unit!158287)

(assert (=> b!6336821 (= lt!2361574 e!3849230)))

(declare-fun c!1151833 () Bool)

(declare-fun nullable!6232 (Regex!16239) Bool)

(assert (=> b!6336821 (= c!1151833 (nullable!6232 (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun lambda!347959 () Int)

(declare-fun flatMap!1744 ((InoxSet Context!11246) Int) (InoxSet Context!11246))

(declare-fun derivationStepZipperUp!1413 (Context!11246 C!32748) (InoxSet Context!11246))

(assert (=> b!6336821 (= (flatMap!1744 z!1189 lambda!347959) (derivationStepZipperUp!1413 (h!71341 zl!343) (h!71342 s!2326)))))

(declare-fun lt!2361572 () Unit!158287)

(declare-fun lemmaFlatMapOnSingletonSet!1270 ((InoxSet Context!11246) Context!11246 Int) Unit!158287)

(assert (=> b!6336821 (= lt!2361572 (lemmaFlatMapOnSingletonSet!1270 z!1189 (h!71341 zl!343) lambda!347959))))

(declare-fun lt!2361577 () (InoxSet Context!11246))

(declare-fun lt!2361578 () Context!11246)

(assert (=> b!6336821 (= lt!2361577 (derivationStepZipperUp!1413 lt!2361578 (h!71342 s!2326)))))

(declare-fun lt!2361560 () (InoxSet Context!11246))

(declare-fun derivationStepZipperDown!1487 (Regex!16239 Context!11246 C!32748) (InoxSet Context!11246))

(assert (=> b!6336821 (= lt!2361560 (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (h!71341 zl!343))) lt!2361578 (h!71342 s!2326)))))

(assert (=> b!6336821 (= lt!2361578 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun lt!2361559 () (InoxSet Context!11246))

(assert (=> b!6336821 (= lt!2361559 (derivationStepZipperUp!1413 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))) (h!71342 s!2326)))))

(declare-fun b!6336822 () Bool)

(declare-fun tp!1767552 () Bool)

(assert (=> b!6336822 (= e!3849225 tp!1767552)))

(declare-fun b!6336823 () Bool)

(declare-fun e!3849240 () Bool)

(assert (=> b!6336823 (= e!3849236 e!3849240)))

(declare-fun res!2607884 () Bool)

(assert (=> b!6336823 (=> res!2607884 e!3849240)))

(declare-fun lt!2361558 () (InoxSet Context!11246))

(assert (=> b!6336823 (= res!2607884 (not (= lt!2361560 lt!2361558)))))

(declare-fun lt!2361564 () List!65016)

(assert (=> b!6336823 (= lt!2361558 (derivationStepZipperDown!1487 (regOne!32990 (regOne!32990 r!7292)) (Context!11247 lt!2361564) (h!71342 s!2326)))))

(assert (=> b!6336823 (= lt!2361564 (Cons!64892 (regTwo!32990 (regOne!32990 r!7292)) (t!378600 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6336824 () Bool)

(declare-fun tp_is_empty!41731 () Bool)

(declare-fun tp!1767555 () Bool)

(assert (=> b!6336824 (= e!3849233 (and tp_is_empty!41731 tp!1767555))))

(declare-fun b!6336825 () Bool)

(declare-fun Unit!158289 () Unit!158287)

(assert (=> b!6336825 (= e!3849230 Unit!158289)))

(declare-fun b!6336826 () Bool)

(declare-fun e!3849227 () Bool)

(assert (=> b!6336826 (= e!3849224 e!3849227)))

(declare-fun res!2607891 () Bool)

(assert (=> b!6336826 (=> res!2607891 e!3849227)))

(declare-fun lt!2361556 () Regex!16239)

(assert (=> b!6336826 (= res!2607891 (not (validRegex!7975 lt!2361556)))))

(declare-fun lt!2361557 () List!65016)

(declare-fun generalisedConcat!1836 (List!65016) Regex!16239)

(assert (=> b!6336826 (= lt!2361556 (generalisedConcat!1836 lt!2361557))))

(declare-fun b!6336827 () Bool)

(declare-fun res!2607897 () Bool)

(assert (=> b!6336827 (=> res!2607897 e!3849227)))

(declare-fun lt!2361573 () (InoxSet Context!11246))

(declare-fun toList!10023 ((InoxSet Context!11246)) List!65017)

(assert (=> b!6336827 (= res!2607897 (not (= (toList!10023 lt!2361573) lt!2361561)))))

(declare-fun b!6336828 () Bool)

(declare-fun res!2607893 () Bool)

(assert (=> b!6336828 (=> res!2607893 e!3849224)))

(declare-fun zipperDepth!346 (List!65017) Int)

(assert (=> b!6336828 (= res!2607893 (> (zipperDepth!346 lt!2361561) (zipperDepth!346 zl!343)))))

(declare-fun b!6336829 () Bool)

(declare-fun tp!1767554 () Bool)

(assert (=> b!6336829 (= e!3849228 tp!1767554)))

(declare-fun b!6336830 () Bool)

(declare-fun tp!1767553 () Bool)

(declare-fun tp!1767550 () Bool)

(assert (=> b!6336830 (= e!3849238 (and tp!1767553 tp!1767550))))

(declare-fun b!6336831 () Bool)

(declare-fun res!2607888 () Bool)

(assert (=> b!6336831 (=> res!2607888 e!3849226)))

(assert (=> b!6336831 (= res!2607888 (not (= r!7292 (generalisedConcat!1836 (exprs!6123 (h!71341 zl!343))))))))

(declare-fun b!6336832 () Bool)

(declare-fun Unit!158290 () Unit!158287)

(assert (=> b!6336832 (= e!3849230 Unit!158290)))

(declare-fun lt!2361571 () Unit!158287)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1070 ((InoxSet Context!11246) (InoxSet Context!11246) List!65018) Unit!158287)

(assert (=> b!6336832 (= lt!2361571 (lemmaZipperConcatMatchesSameAsBothZippers!1070 lt!2361560 lt!2361577 (t!378602 s!2326)))))

(declare-fun res!2607889 () Bool)

(assert (=> b!6336832 (= res!2607889 (matchZipper!2251 lt!2361560 (t!378602 s!2326)))))

(declare-fun e!3849232 () Bool)

(assert (=> b!6336832 (=> res!2607889 e!3849232)))

(assert (=> b!6336832 (= (matchZipper!2251 ((_ map or) lt!2361560 lt!2361577) (t!378602 s!2326)) e!3849232)))

(declare-fun b!6336833 () Bool)

(declare-fun unfocusZipper!1981 (List!65017) Regex!16239)

(assert (=> b!6336833 (= e!3849227 (= lt!2361556 (unfocusZipper!1981 lt!2361561)))))

(declare-fun b!6336834 () Bool)

(declare-fun res!2607877 () Bool)

(assert (=> b!6336834 (=> res!2607877 e!3849231)))

(declare-fun contextDepthTotal!348 (Context!11246) Int)

(assert (=> b!6336834 (= res!2607877 (>= (contextDepthTotal!348 lt!2361567) (contextDepthTotal!348 (h!71341 zl!343))))))

(declare-fun b!6336835 () Bool)

(declare-fun res!2607895 () Bool)

(assert (=> b!6336835 (=> res!2607895 e!3849226)))

(declare-fun generalisedUnion!2083 (List!65016) Regex!16239)

(declare-fun unfocusZipperList!1660 (List!65017) List!65016)

(assert (=> b!6336835 (= res!2607895 (not (= r!7292 (generalisedUnion!2083 (unfocusZipperList!1660 zl!343)))))))

(declare-fun b!6336836 () Bool)

(declare-fun res!2607882 () Bool)

(assert (=> b!6336836 (=> (not res!2607882) (not e!3849239))))

(assert (=> b!6336836 (= res!2607882 (= (toList!10023 z!1189) zl!343))))

(declare-fun b!6336837 () Bool)

(declare-fun res!2607887 () Bool)

(assert (=> b!6336837 (=> res!2607887 e!3849236)))

(declare-fun e!3849229 () Bool)

(assert (=> b!6336837 (= res!2607887 e!3849229)))

(declare-fun res!2607881 () Bool)

(assert (=> b!6336837 (=> (not res!2607881) (not e!3849229))))

(assert (=> b!6336837 (= res!2607881 ((_ is Concat!25084) (regOne!32990 r!7292)))))

(declare-fun b!6336838 () Bool)

(declare-fun res!2607896 () Bool)

(assert (=> b!6336838 (=> (not res!2607896) (not e!3849239))))

(assert (=> b!6336838 (= res!2607896 (= r!7292 (unfocusZipper!1981 zl!343)))))

(declare-fun b!6336839 () Bool)

(declare-fun tp!1767551 () Bool)

(assert (=> b!6336839 (= e!3849238 tp!1767551)))

(declare-fun b!6336840 () Bool)

(declare-fun res!2607878 () Bool)

(assert (=> b!6336840 (=> res!2607878 e!3849226)))

(declare-fun isEmpty!36970 (List!65017) Bool)

(assert (=> b!6336840 (= res!2607878 (not (isEmpty!36970 (t!378601 zl!343))))))

(declare-fun b!6336841 () Bool)

(assert (=> b!6336841 (= e!3849229 (nullable!6232 (regOne!32990 (regOne!32990 r!7292))))))

(declare-fun b!6336842 () Bool)

(declare-fun res!2607892 () Bool)

(assert (=> b!6336842 (=> res!2607892 e!3849226)))

(assert (=> b!6336842 (= res!2607892 (not ((_ is Cons!64892) (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6336843 () Bool)

(declare-fun e!3849234 () Bool)

(assert (=> b!6336843 (= e!3849234 e!3849231)))

(declare-fun res!2607902 () Bool)

(assert (=> b!6336843 (=> res!2607902 e!3849231)))

(assert (=> b!6336843 (= res!2607902 (not (= lt!2361566 lt!2361558)))))

(assert (=> b!6336843 (= (flatMap!1744 lt!2361573 lambda!347959) (derivationStepZipperUp!1413 lt!2361567 (h!71342 s!2326)))))

(declare-fun lt!2361570 () Unit!158287)

(assert (=> b!6336843 (= lt!2361570 (lemmaFlatMapOnSingletonSet!1270 lt!2361573 lt!2361567 lambda!347959))))

(declare-fun lt!2361562 () (InoxSet Context!11246))

(assert (=> b!6336843 (= lt!2361562 (derivationStepZipperUp!1413 lt!2361567 (h!71342 s!2326)))))

(declare-fun derivationStepZipper!2205 ((InoxSet Context!11246) C!32748) (InoxSet Context!11246))

(assert (=> b!6336843 (= lt!2361566 (derivationStepZipper!2205 lt!2361573 (h!71342 s!2326)))))

(assert (=> b!6336843 (= lt!2361573 (store ((as const (Array Context!11246 Bool)) false) lt!2361567 true))))

(assert (=> b!6336843 (= lt!2361567 (Context!11247 lt!2361557))))

(assert (=> b!6336843 (= lt!2361557 (Cons!64892 (regOne!32990 (regOne!32990 r!7292)) lt!2361564))))

(declare-fun b!6336844 () Bool)

(assert (=> b!6336844 (= e!3849232 (matchZipper!2251 lt!2361577 (t!378602 s!2326)))))

(declare-fun b!6336845 () Bool)

(declare-fun res!2607880 () Bool)

(assert (=> b!6336845 (=> res!2607880 e!3849226)))

(assert (=> b!6336845 (= res!2607880 (or ((_ is EmptyExpr!16239) r!7292) ((_ is EmptyLang!16239) r!7292) ((_ is ElementMatch!16239) r!7292) ((_ is Union!16239) r!7292) (not ((_ is Concat!25084) r!7292))))))

(declare-fun b!6336846 () Bool)

(assert (=> b!6336846 (= e!3849240 e!3849234)))

(declare-fun res!2607901 () Bool)

(assert (=> b!6336846 (=> res!2607901 e!3849234)))

(assert (=> b!6336846 (= res!2607901 (not (= lt!2361569 (matchZipper!2251 lt!2361558 (t!378602 s!2326)))))))

(assert (=> b!6336846 (= lt!2361569 (matchZipper!2251 lt!2361560 (t!378602 s!2326)))))

(declare-fun b!6336847 () Bool)

(assert (=> b!6336847 (= e!3849238 tp_is_empty!41731)))

(assert (= (and start!627862 res!2607885) b!6336836))

(assert (= (and b!6336836 res!2607882) b!6336838))

(assert (= (and b!6336838 res!2607896) b!6336817))

(assert (= (and b!6336817 (not res!2607890)) b!6336840))

(assert (= (and b!6336840 (not res!2607878)) b!6336831))

(assert (= (and b!6336831 (not res!2607888)) b!6336842))

(assert (= (and b!6336842 (not res!2607892)) b!6336835))

(assert (= (and b!6336835 (not res!2607895)) b!6336845))

(assert (= (and b!6336845 (not res!2607880)) b!6336813))

(assert (= (and b!6336813 (not res!2607883)) b!6336814))

(assert (= (and b!6336814 (not res!2607894)) b!6336821))

(assert (= (and b!6336821 c!1151833) b!6336832))

(assert (= (and b!6336821 (not c!1151833)) b!6336825))

(assert (= (and b!6336832 (not res!2607889)) b!6336844))

(assert (= (and b!6336821 (not res!2607899)) b!6336837))

(assert (= (and b!6336837 res!2607881) b!6336841))

(assert (= (and b!6336837 (not res!2607887)) b!6336815))

(assert (= (and b!6336815 (not res!2607886)) b!6336823))

(assert (= (and b!6336823 (not res!2607884)) b!6336846))

(assert (= (and b!6336846 (not res!2607901)) b!6336843))

(assert (= (and b!6336843 (not res!2607902)) b!6336818))

(assert (= (and b!6336818 (not res!2607900)) b!6336812))

(assert (= (and b!6336812 (not res!2607898)) b!6336834))

(assert (= (and b!6336834 (not res!2607877)) b!6336819))

(assert (= (and b!6336819 (not res!2607879)) b!6336828))

(assert (= (and b!6336828 (not res!2607893)) b!6336826))

(assert (= (and b!6336826 (not res!2607891)) b!6336827))

(assert (= (and b!6336827 (not res!2607897)) b!6336833))

(assert (= (and start!627862 ((_ is ElementMatch!16239) r!7292)) b!6336847))

(assert (= (and start!627862 ((_ is Concat!25084) r!7292)) b!6336830))

(assert (= (and start!627862 ((_ is Star!16239) r!7292)) b!6336839))

(assert (= (and start!627862 ((_ is Union!16239) r!7292)) b!6336816))

(assert (= (and start!627862 condSetEmpty!43114) setIsEmpty!43114))

(assert (= (and start!627862 (not condSetEmpty!43114)) setNonEmpty!43114))

(assert (= setNonEmpty!43114 b!6336822))

(assert (= b!6336820 b!6336829))

(assert (= (and start!627862 ((_ is Cons!64893) zl!343)) b!6336820))

(assert (= (and start!627862 ((_ is Cons!64894) s!2326)) b!6336824))

(declare-fun m!7146038 () Bool)

(assert (=> b!6336846 m!7146038))

(declare-fun m!7146040 () Bool)

(assert (=> b!6336846 m!7146040))

(declare-fun m!7146042 () Bool)

(assert (=> b!6336841 m!7146042))

(declare-fun m!7146044 () Bool)

(assert (=> b!6336820 m!7146044))

(declare-fun m!7146046 () Bool)

(assert (=> b!6336828 m!7146046))

(declare-fun m!7146048 () Bool)

(assert (=> b!6336828 m!7146048))

(declare-fun m!7146050 () Bool)

(assert (=> b!6336827 m!7146050))

(declare-fun m!7146052 () Bool)

(assert (=> b!6336819 m!7146052))

(declare-fun m!7146054 () Bool)

(assert (=> b!6336819 m!7146054))

(declare-fun m!7146056 () Bool)

(assert (=> b!6336835 m!7146056))

(assert (=> b!6336835 m!7146056))

(declare-fun m!7146058 () Bool)

(assert (=> b!6336835 m!7146058))

(declare-fun m!7146060 () Bool)

(assert (=> b!6336836 m!7146060))

(declare-fun m!7146062 () Bool)

(assert (=> setNonEmpty!43114 m!7146062))

(declare-fun m!7146064 () Bool)

(assert (=> b!6336821 m!7146064))

(declare-fun m!7146066 () Bool)

(assert (=> b!6336821 m!7146066))

(declare-fun m!7146068 () Bool)

(assert (=> b!6336821 m!7146068))

(declare-fun m!7146070 () Bool)

(assert (=> b!6336821 m!7146070))

(declare-fun m!7146072 () Bool)

(assert (=> b!6336821 m!7146072))

(declare-fun m!7146074 () Bool)

(assert (=> b!6336821 m!7146074))

(declare-fun m!7146076 () Bool)

(assert (=> b!6336821 m!7146076))

(declare-fun m!7146078 () Bool)

(assert (=> b!6336826 m!7146078))

(declare-fun m!7146080 () Bool)

(assert (=> b!6336826 m!7146080))

(declare-fun m!7146082 () Bool)

(assert (=> b!6336838 m!7146082))

(declare-fun m!7146084 () Bool)

(assert (=> b!6336832 m!7146084))

(assert (=> b!6336832 m!7146040))

(declare-fun m!7146086 () Bool)

(assert (=> b!6336832 m!7146086))

(declare-fun m!7146088 () Bool)

(assert (=> b!6336823 m!7146088))

(declare-fun m!7146090 () Bool)

(assert (=> b!6336844 m!7146090))

(declare-fun m!7146092 () Bool)

(assert (=> b!6336817 m!7146092))

(declare-fun m!7146094 () Bool)

(assert (=> b!6336817 m!7146094))

(declare-fun m!7146096 () Bool)

(assert (=> b!6336817 m!7146096))

(declare-fun m!7146098 () Bool)

(assert (=> b!6336840 m!7146098))

(declare-fun m!7146100 () Bool)

(assert (=> b!6336831 m!7146100))

(declare-fun m!7146102 () Bool)

(assert (=> b!6336834 m!7146102))

(declare-fun m!7146104 () Bool)

(assert (=> b!6336834 m!7146104))

(declare-fun m!7146106 () Bool)

(assert (=> b!6336833 m!7146106))

(declare-fun m!7146108 () Bool)

(assert (=> b!6336813 m!7146108))

(declare-fun m!7146110 () Bool)

(assert (=> b!6336813 m!7146110))

(declare-fun m!7146112 () Bool)

(assert (=> b!6336813 m!7146112))

(declare-fun m!7146114 () Bool)

(assert (=> b!6336813 m!7146114))

(declare-fun m!7146116 () Bool)

(assert (=> b!6336813 m!7146116))

(assert (=> b!6336813 m!7146108))

(assert (=> b!6336813 m!7146110))

(declare-fun m!7146118 () Bool)

(assert (=> b!6336813 m!7146118))

(declare-fun m!7146120 () Bool)

(assert (=> b!6336814 m!7146120))

(declare-fun m!7146122 () Bool)

(assert (=> b!6336843 m!7146122))

(declare-fun m!7146124 () Bool)

(assert (=> b!6336843 m!7146124))

(declare-fun m!7146126 () Bool)

(assert (=> b!6336843 m!7146126))

(declare-fun m!7146128 () Bool)

(assert (=> b!6336843 m!7146128))

(declare-fun m!7146130 () Bool)

(assert (=> b!6336843 m!7146130))

(declare-fun m!7146132 () Bool)

(assert (=> b!6336818 m!7146132))

(declare-fun m!7146134 () Bool)

(assert (=> start!627862 m!7146134))

(check-sat (not b!6336834) (not b!6336816) (not b!6336820) (not b!6336846) (not b!6336831) (not b!6336826) (not b!6336819) (not b!6336823) (not b!6336814) (not b!6336828) (not b!6336829) (not start!627862) tp_is_empty!41731 (not b!6336827) (not b!6336813) (not b!6336822) (not b!6336844) (not b!6336817) (not b!6336839) (not b!6336836) (not b!6336821) (not b!6336838) (not b!6336824) (not b!6336840) (not b!6336835) (not b!6336843) (not b!6336832) (not b!6336841) (not setNonEmpty!43114) (not b!6336833) (not b!6336830) (not b!6336818))
(check-sat)
(get-model)

(declare-fun b!6337016 () Bool)

(declare-fun res!2607966 () Bool)

(declare-fun e!3849339 () Bool)

(assert (=> b!6337016 (=> (not res!2607966) (not e!3849339))))

(declare-fun call!539886 () Bool)

(assert (=> b!6337016 (= res!2607966 call!539886)))

(declare-fun e!3849338 () Bool)

(assert (=> b!6337016 (= e!3849338 e!3849339)))

(declare-fun c!1151891 () Bool)

(declare-fun bm!539880 () Bool)

(declare-fun c!1151890 () Bool)

(declare-fun call!539887 () Bool)

(assert (=> bm!539880 (= call!539887 (validRegex!7975 (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))))))

(declare-fun b!6337017 () Bool)

(declare-fun e!3849335 () Bool)

(declare-fun e!3849337 () Bool)

(assert (=> b!6337017 (= e!3849335 e!3849337)))

(declare-fun res!2607965 () Bool)

(assert (=> b!6337017 (=> (not res!2607965) (not e!3849337))))

(assert (=> b!6337017 (= res!2607965 call!539886)))

(declare-fun b!6337018 () Bool)

(declare-fun e!3849340 () Bool)

(assert (=> b!6337018 (= e!3849340 call!539887)))

(declare-fun bm!539881 () Bool)

(assert (=> bm!539881 (= call!539886 call!539887)))

(declare-fun b!6337019 () Bool)

(declare-fun call!539885 () Bool)

(assert (=> b!6337019 (= e!3849339 call!539885)))

(declare-fun b!6337020 () Bool)

(declare-fun e!3849336 () Bool)

(assert (=> b!6337020 (= e!3849336 e!3849340)))

(declare-fun res!2607969 () Bool)

(assert (=> b!6337020 (= res!2607969 (not (nullable!6232 (reg!16568 lt!2361556))))))

(assert (=> b!6337020 (=> (not res!2607969) (not e!3849340))))

(declare-fun bm!539882 () Bool)

(assert (=> bm!539882 (= call!539885 (validRegex!7975 (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))))))

(declare-fun b!6337021 () Bool)

(declare-fun e!3849334 () Bool)

(assert (=> b!6337021 (= e!3849334 e!3849336)))

(assert (=> b!6337021 (= c!1151891 ((_ is Star!16239) lt!2361556))))

(declare-fun d!1988971 () Bool)

(declare-fun res!2607968 () Bool)

(assert (=> d!1988971 (=> res!2607968 e!3849334)))

(assert (=> d!1988971 (= res!2607968 ((_ is ElementMatch!16239) lt!2361556))))

(assert (=> d!1988971 (= (validRegex!7975 lt!2361556) e!3849334)))

(declare-fun b!6337022 () Bool)

(assert (=> b!6337022 (= e!3849337 call!539885)))

(declare-fun b!6337023 () Bool)

(declare-fun res!2607967 () Bool)

(assert (=> b!6337023 (=> res!2607967 e!3849335)))

(assert (=> b!6337023 (= res!2607967 (not ((_ is Concat!25084) lt!2361556)))))

(assert (=> b!6337023 (= e!3849338 e!3849335)))

(declare-fun b!6337024 () Bool)

(assert (=> b!6337024 (= e!3849336 e!3849338)))

(assert (=> b!6337024 (= c!1151890 ((_ is Union!16239) lt!2361556))))

(assert (= (and d!1988971 (not res!2607968)) b!6337021))

(assert (= (and b!6337021 c!1151891) b!6337020))

(assert (= (and b!6337021 (not c!1151891)) b!6337024))

(assert (= (and b!6337020 res!2607969) b!6337018))

(assert (= (and b!6337024 c!1151890) b!6337016))

(assert (= (and b!6337024 (not c!1151890)) b!6337023))

(assert (= (and b!6337016 res!2607966) b!6337019))

(assert (= (and b!6337023 (not res!2607967)) b!6337017))

(assert (= (and b!6337017 res!2607965) b!6337022))

(assert (= (or b!6337019 b!6337022) bm!539882))

(assert (= (or b!6337016 b!6337017) bm!539881))

(assert (= (or b!6337018 bm!539881) bm!539880))

(declare-fun m!7146208 () Bool)

(assert (=> bm!539880 m!7146208))

(declare-fun m!7146210 () Bool)

(assert (=> b!6337020 m!7146210))

(declare-fun m!7146212 () Bool)

(assert (=> bm!539882 m!7146212))

(assert (=> b!6336826 d!1988971))

(declare-fun b!6337061 () Bool)

(declare-fun e!3849364 () Bool)

(declare-fun lt!2361603 () Regex!16239)

(declare-fun head!12973 (List!65016) Regex!16239)

(assert (=> b!6337061 (= e!3849364 (= lt!2361603 (head!12973 lt!2361557)))))

(declare-fun b!6337062 () Bool)

(declare-fun e!3849365 () Bool)

(declare-fun e!3849366 () Bool)

(assert (=> b!6337062 (= e!3849365 e!3849366)))

(declare-fun c!1151908 () Bool)

(assert (=> b!6337062 (= c!1151908 (isEmpty!36969 lt!2361557))))

(declare-fun b!6337063 () Bool)

(declare-fun e!3849367 () Regex!16239)

(declare-fun e!3849363 () Regex!16239)

(assert (=> b!6337063 (= e!3849367 e!3849363)))

(declare-fun c!1151909 () Bool)

(assert (=> b!6337063 (= c!1151909 ((_ is Cons!64892) lt!2361557))))

(declare-fun b!6337064 () Bool)

(declare-fun e!3849362 () Bool)

(assert (=> b!6337064 (= e!3849362 (isEmpty!36969 (t!378600 lt!2361557)))))

(declare-fun d!1988975 () Bool)

(assert (=> d!1988975 e!3849365))

(declare-fun res!2607977 () Bool)

(assert (=> d!1988975 (=> (not res!2607977) (not e!3849365))))

(assert (=> d!1988975 (= res!2607977 (validRegex!7975 lt!2361603))))

(assert (=> d!1988975 (= lt!2361603 e!3849367)))

(declare-fun c!1151910 () Bool)

(assert (=> d!1988975 (= c!1151910 e!3849362)))

(declare-fun res!2607976 () Bool)

(assert (=> d!1988975 (=> (not res!2607976) (not e!3849362))))

(assert (=> d!1988975 (= res!2607976 ((_ is Cons!64892) lt!2361557))))

(declare-fun lambda!347980 () Int)

(declare-fun forall!15393 (List!65016 Int) Bool)

(assert (=> d!1988975 (forall!15393 lt!2361557 lambda!347980)))

(assert (=> d!1988975 (= (generalisedConcat!1836 lt!2361557) lt!2361603)))

(declare-fun b!6337065 () Bool)

(assert (=> b!6337065 (= e!3849363 EmptyExpr!16239)))

(declare-fun b!6337066 () Bool)

(assert (=> b!6337066 (= e!3849367 (h!71340 lt!2361557))))

(declare-fun b!6337067 () Bool)

(assert (=> b!6337067 (= e!3849366 e!3849364)))

(declare-fun c!1151907 () Bool)

(declare-fun tail!12058 (List!65016) List!65016)

(assert (=> b!6337067 (= c!1151907 (isEmpty!36969 (tail!12058 lt!2361557)))))

(declare-fun b!6337068 () Bool)

(declare-fun isEmptyExpr!1642 (Regex!16239) Bool)

(assert (=> b!6337068 (= e!3849366 (isEmptyExpr!1642 lt!2361603))))

(declare-fun b!6337069 () Bool)

(assert (=> b!6337069 (= e!3849363 (Concat!25084 (h!71340 lt!2361557) (generalisedConcat!1836 (t!378600 lt!2361557))))))

(declare-fun b!6337070 () Bool)

(declare-fun isConcat!1165 (Regex!16239) Bool)

(assert (=> b!6337070 (= e!3849364 (isConcat!1165 lt!2361603))))

(assert (= (and d!1988975 res!2607976) b!6337064))

(assert (= (and d!1988975 c!1151910) b!6337066))

(assert (= (and d!1988975 (not c!1151910)) b!6337063))

(assert (= (and b!6337063 c!1151909) b!6337069))

(assert (= (and b!6337063 (not c!1151909)) b!6337065))

(assert (= (and d!1988975 res!2607977) b!6337062))

(assert (= (and b!6337062 c!1151908) b!6337068))

(assert (= (and b!6337062 (not c!1151908)) b!6337067))

(assert (= (and b!6337067 c!1151907) b!6337061))

(assert (= (and b!6337067 (not c!1151907)) b!6337070))

(declare-fun m!7146230 () Bool)

(assert (=> b!6337068 m!7146230))

(declare-fun m!7146232 () Bool)

(assert (=> b!6337064 m!7146232))

(declare-fun m!7146234 () Bool)

(assert (=> d!1988975 m!7146234))

(declare-fun m!7146236 () Bool)

(assert (=> d!1988975 m!7146236))

(declare-fun m!7146238 () Bool)

(assert (=> b!6337061 m!7146238))

(declare-fun m!7146240 () Bool)

(assert (=> b!6337062 m!7146240))

(declare-fun m!7146242 () Bool)

(assert (=> b!6337070 m!7146242))

(declare-fun m!7146244 () Bool)

(assert (=> b!6337067 m!7146244))

(assert (=> b!6337067 m!7146244))

(declare-fun m!7146246 () Bool)

(assert (=> b!6337067 m!7146246))

(declare-fun m!7146248 () Bool)

(assert (=> b!6337069 m!7146248))

(assert (=> b!6336826 d!1988975))

(declare-fun d!1988983 () Bool)

(declare-fun e!3849373 () Bool)

(assert (=> d!1988983 e!3849373))

(declare-fun res!2607981 () Bool)

(assert (=> d!1988983 (=> (not res!2607981) (not e!3849373))))

(declare-fun lt!2361609 () List!65017)

(declare-fun noDuplicate!2070 (List!65017) Bool)

(assert (=> d!1988983 (= res!2607981 (noDuplicate!2070 lt!2361609))))

(declare-fun choose!46973 ((InoxSet Context!11246)) List!65017)

(assert (=> d!1988983 (= lt!2361609 (choose!46973 lt!2361573))))

(assert (=> d!1988983 (= (toList!10023 lt!2361573) lt!2361609)))

(declare-fun b!6337078 () Bool)

(declare-fun content!12235 (List!65017) (InoxSet Context!11246))

(assert (=> b!6337078 (= e!3849373 (= (content!12235 lt!2361609) lt!2361573))))

(assert (= (and d!1988983 res!2607981) b!6337078))

(declare-fun m!7146262 () Bool)

(assert (=> d!1988983 m!7146262))

(declare-fun m!7146264 () Bool)

(assert (=> d!1988983 m!7146264))

(declare-fun m!7146266 () Bool)

(assert (=> b!6337078 m!7146266))

(assert (=> b!6336827 d!1988983))

(declare-fun b!6337112 () Bool)

(assert (=> b!6337112 true))

(declare-fun bs!1586655 () Bool)

(declare-fun b!6337114 () Bool)

(assert (= bs!1586655 (and b!6337114 b!6337112)))

(declare-fun lt!2361618 () Int)

(declare-fun lambda!347990 () Int)

(declare-fun lt!2361621 () Int)

(declare-fun lambda!347991 () Int)

(assert (=> bs!1586655 (= (= lt!2361618 lt!2361621) (= lambda!347991 lambda!347990))))

(assert (=> b!6337114 true))

(declare-fun d!1988989 () Bool)

(declare-fun e!3849399 () Bool)

(assert (=> d!1988989 e!3849399))

(declare-fun res!2607999 () Bool)

(assert (=> d!1988989 (=> (not res!2607999) (not e!3849399))))

(assert (=> d!1988989 (= res!2607999 (>= lt!2361618 0))))

(declare-fun e!3849400 () Int)

(assert (=> d!1988989 (= lt!2361618 e!3849400)))

(declare-fun c!1151927 () Bool)

(assert (=> d!1988989 (= c!1151927 ((_ is Cons!64893) lt!2361561))))

(assert (=> d!1988989 (= (zipperDepth!346 lt!2361561) lt!2361618)))

(assert (=> b!6337112 (= e!3849400 lt!2361621)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!237 (Context!11246) Int)

(assert (=> b!6337112 (= lt!2361621 (maxBigInt!0 (contextDepth!237 (h!71341 lt!2361561)) (zipperDepth!346 (t!378601 lt!2361561))))))

(declare-fun lt!2361620 () Unit!158287)

(declare-fun lambda!347989 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!221 (List!65017 Int Int Int) Unit!158287)

(assert (=> b!6337112 (= lt!2361620 (lemmaForallContextDepthBiggerThanTransitive!221 (t!378601 lt!2361561) lt!2361621 (zipperDepth!346 (t!378601 lt!2361561)) lambda!347989))))

(declare-fun forall!15394 (List!65017 Int) Bool)

(assert (=> b!6337112 (forall!15394 (t!378601 lt!2361561) lambda!347990)))

(declare-fun lt!2361619 () Unit!158287)

(assert (=> b!6337112 (= lt!2361619 lt!2361620)))

(declare-fun b!6337113 () Bool)

(assert (=> b!6337113 (= e!3849400 0)))

(assert (=> b!6337114 (= e!3849399 (forall!15394 lt!2361561 lambda!347991))))

(assert (= (and d!1988989 c!1151927) b!6337112))

(assert (= (and d!1988989 (not c!1151927)) b!6337113))

(assert (= (and d!1988989 res!2607999) b!6337114))

(declare-fun m!7146274 () Bool)

(assert (=> b!6337112 m!7146274))

(declare-fun m!7146276 () Bool)

(assert (=> b!6337112 m!7146276))

(assert (=> b!6337112 m!7146274))

(declare-fun m!7146278 () Bool)

(assert (=> b!6337112 m!7146278))

(declare-fun m!7146280 () Bool)

(assert (=> b!6337112 m!7146280))

(assert (=> b!6337112 m!7146278))

(assert (=> b!6337112 m!7146278))

(declare-fun m!7146282 () Bool)

(assert (=> b!6337112 m!7146282))

(declare-fun m!7146284 () Bool)

(assert (=> b!6337114 m!7146284))

(assert (=> b!6336828 d!1988989))

(declare-fun bs!1586656 () Bool)

(declare-fun b!6337137 () Bool)

(assert (= bs!1586656 (and b!6337137 b!6337112)))

(declare-fun lambda!347992 () Int)

(assert (=> bs!1586656 (= lambda!347992 lambda!347989)))

(declare-fun lambda!347993 () Int)

(declare-fun lt!2361627 () Int)

(assert (=> bs!1586656 (= (= lt!2361627 lt!2361621) (= lambda!347993 lambda!347990))))

(declare-fun bs!1586657 () Bool)

(assert (= bs!1586657 (and b!6337137 b!6337114)))

(assert (=> bs!1586657 (= (= lt!2361627 lt!2361618) (= lambda!347993 lambda!347991))))

(assert (=> b!6337137 true))

(declare-fun bs!1586658 () Bool)

(declare-fun b!6337139 () Bool)

(assert (= bs!1586658 (and b!6337139 b!6337112)))

(declare-fun lambda!347994 () Int)

(declare-fun lt!2361624 () Int)

(assert (=> bs!1586658 (= (= lt!2361624 lt!2361621) (= lambda!347994 lambda!347990))))

(declare-fun bs!1586659 () Bool)

(assert (= bs!1586659 (and b!6337139 b!6337114)))

(assert (=> bs!1586659 (= (= lt!2361624 lt!2361618) (= lambda!347994 lambda!347991))))

(declare-fun bs!1586660 () Bool)

(assert (= bs!1586660 (and b!6337139 b!6337137)))

(assert (=> bs!1586660 (= (= lt!2361624 lt!2361627) (= lambda!347994 lambda!347993))))

(assert (=> b!6337139 true))

(declare-fun d!1988993 () Bool)

(declare-fun e!3849413 () Bool)

(assert (=> d!1988993 e!3849413))

(declare-fun res!2608004 () Bool)

(assert (=> d!1988993 (=> (not res!2608004) (not e!3849413))))

(assert (=> d!1988993 (= res!2608004 (>= lt!2361624 0))))

(declare-fun e!3849414 () Int)

(assert (=> d!1988993 (= lt!2361624 e!3849414)))

(declare-fun c!1151936 () Bool)

(assert (=> d!1988993 (= c!1151936 ((_ is Cons!64893) zl!343))))

(assert (=> d!1988993 (= (zipperDepth!346 zl!343) lt!2361624)))

(assert (=> b!6337137 (= e!3849414 lt!2361627)))

(assert (=> b!6337137 (= lt!2361627 (maxBigInt!0 (contextDepth!237 (h!71341 zl!343)) (zipperDepth!346 (t!378601 zl!343))))))

(declare-fun lt!2361626 () Unit!158287)

(assert (=> b!6337137 (= lt!2361626 (lemmaForallContextDepthBiggerThanTransitive!221 (t!378601 zl!343) lt!2361627 (zipperDepth!346 (t!378601 zl!343)) lambda!347992))))

(assert (=> b!6337137 (forall!15394 (t!378601 zl!343) lambda!347993)))

(declare-fun lt!2361625 () Unit!158287)

(assert (=> b!6337137 (= lt!2361625 lt!2361626)))

(declare-fun b!6337138 () Bool)

(assert (=> b!6337138 (= e!3849414 0)))

(assert (=> b!6337139 (= e!3849413 (forall!15394 zl!343 lambda!347994))))

(assert (= (and d!1988993 c!1151936) b!6337137))

(assert (= (and d!1988993 (not c!1151936)) b!6337138))

(assert (= (and d!1988993 res!2608004) b!6337139))

(declare-fun m!7146286 () Bool)

(assert (=> b!6337137 m!7146286))

(declare-fun m!7146288 () Bool)

(assert (=> b!6337137 m!7146288))

(assert (=> b!6337137 m!7146286))

(declare-fun m!7146290 () Bool)

(assert (=> b!6337137 m!7146290))

(declare-fun m!7146292 () Bool)

(assert (=> b!6337137 m!7146292))

(assert (=> b!6337137 m!7146290))

(assert (=> b!6337137 m!7146290))

(declare-fun m!7146294 () Bool)

(assert (=> b!6337137 m!7146294))

(declare-fun m!7146296 () Bool)

(assert (=> b!6337139 m!7146296))

(assert (=> b!6336828 d!1988993))

(declare-fun d!1988995 () Bool)

(declare-fun nullableFct!2181 (Regex!16239) Bool)

(assert (=> d!1988995 (= (nullable!6232 (h!71340 (exprs!6123 (h!71341 zl!343)))) (nullableFct!2181 (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun bs!1586661 () Bool)

(assert (= bs!1586661 d!1988995))

(declare-fun m!7146298 () Bool)

(assert (=> bs!1586661 m!7146298))

(assert (=> b!6336821 d!1988995))

(declare-fun b!6337173 () Bool)

(declare-fun e!3849435 () Bool)

(assert (=> b!6337173 (= e!3849435 (nullable!6232 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))))

(declare-fun b!6337174 () Bool)

(declare-fun e!3849434 () (InoxSet Context!11246))

(declare-fun call!539916 () (InoxSet Context!11246))

(assert (=> b!6337174 (= e!3849434 call!539916)))

(declare-fun b!6337175 () Bool)

(assert (=> b!6337175 (= e!3849434 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6337176 () Bool)

(declare-fun e!3849436 () (InoxSet Context!11246))

(assert (=> b!6337176 (= e!3849436 e!3849434)))

(declare-fun c!1151951 () Bool)

(assert (=> b!6337176 (= c!1151951 ((_ is Cons!64892) (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))))

(declare-fun d!1988997 () Bool)

(declare-fun c!1151952 () Bool)

(assert (=> d!1988997 (= c!1151952 e!3849435)))

(declare-fun res!2608010 () Bool)

(assert (=> d!1988997 (=> (not res!2608010) (not e!3849435))))

(assert (=> d!1988997 (= res!2608010 ((_ is Cons!64892) (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))))

(assert (=> d!1988997 (= (derivationStepZipperUp!1413 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))) (h!71342 s!2326)) e!3849436)))

(declare-fun bm!539911 () Bool)

(assert (=> bm!539911 (= call!539916 (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))) (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (h!71342 s!2326)))))

(declare-fun b!6337177 () Bool)

(assert (=> b!6337177 (= e!3849436 ((_ map or) call!539916 (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (h!71342 s!2326))))))

(assert (= (and d!1988997 res!2608010) b!6337173))

(assert (= (and d!1988997 c!1151952) b!6337177))

(assert (= (and d!1988997 (not c!1151952)) b!6337176))

(assert (= (and b!6337176 c!1151951) b!6337174))

(assert (= (and b!6337176 (not c!1151951)) b!6337175))

(assert (= (or b!6337177 b!6337174) bm!539911))

(declare-fun m!7146338 () Bool)

(assert (=> b!6337173 m!7146338))

(declare-fun m!7146340 () Bool)

(assert (=> bm!539911 m!7146340))

(declare-fun m!7146342 () Bool)

(assert (=> b!6337177 m!7146342))

(assert (=> b!6336821 d!1988997))

(declare-fun d!1989011 () Bool)

(declare-fun choose!46974 ((InoxSet Context!11246) Int) (InoxSet Context!11246))

(assert (=> d!1989011 (= (flatMap!1744 z!1189 lambda!347959) (choose!46974 z!1189 lambda!347959))))

(declare-fun bs!1586664 () Bool)

(assert (= bs!1586664 d!1989011))

(declare-fun m!7146344 () Bool)

(assert (=> bs!1586664 m!7146344))

(assert (=> b!6336821 d!1989011))

(declare-fun b!6337202 () Bool)

(declare-fun e!3849454 () (InoxSet Context!11246))

(declare-fun e!3849451 () (InoxSet Context!11246))

(assert (=> b!6337202 (= e!3849454 e!3849451)))

(declare-fun c!1151967 () Bool)

(assert (=> b!6337202 (= c!1151967 ((_ is Concat!25084) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6337203 () Bool)

(declare-fun e!3849453 () (InoxSet Context!11246))

(assert (=> b!6337203 (= e!3849453 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6337204 () Bool)

(declare-fun call!539934 () (InoxSet Context!11246))

(declare-fun call!539933 () (InoxSet Context!11246))

(assert (=> b!6337204 (= e!3849454 ((_ map or) call!539934 call!539933))))

(declare-fun b!6337205 () Bool)

(declare-fun e!3849452 () Bool)

(assert (=> b!6337205 (= e!3849452 (nullable!6232 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))))))

(declare-fun bm!539925 () Bool)

(declare-fun call!539932 () (InoxSet Context!11246))

(assert (=> bm!539925 (= call!539933 call!539932)))

(declare-fun c!1151968 () Bool)

(declare-fun call!539931 () List!65016)

(declare-fun bm!539926 () Bool)

(assert (=> bm!539926 (= call!539934 (derivationStepZipperDown!1487 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))) (ite c!1151968 lt!2361578 (Context!11247 call!539931)) (h!71342 s!2326)))))

(declare-fun b!6337206 () Bool)

(declare-fun call!539930 () (InoxSet Context!11246))

(assert (=> b!6337206 (= e!3849451 call!539930)))

(declare-fun c!1151965 () Bool)

(declare-fun bm!539927 () Bool)

(declare-fun $colon$colon!2102 (List!65016 Regex!16239) List!65016)

(assert (=> bm!539927 (= call!539931 ($colon$colon!2102 (exprs!6123 lt!2361578) (ite (or c!1151965 c!1151967) (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (h!71340 (exprs!6123 (h!71341 zl!343))))))))

(declare-fun d!1989013 () Bool)

(declare-fun c!1151966 () Bool)

(assert (=> d!1989013 (= c!1151966 (and ((_ is ElementMatch!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))) (= (c!1151834 (h!71340 (exprs!6123 (h!71341 zl!343)))) (h!71342 s!2326))))))

(declare-fun e!3849450 () (InoxSet Context!11246))

(assert (=> d!1989013 (= (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (h!71341 zl!343))) lt!2361578 (h!71342 s!2326)) e!3849450)))

(declare-fun bm!539924 () Bool)

(declare-fun call!539929 () List!65016)

(assert (=> bm!539924 (= call!539932 (derivationStepZipperDown!1487 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343))))))) (ite (or c!1151968 c!1151965) lt!2361578 (Context!11247 call!539929)) (h!71342 s!2326)))))

(declare-fun bm!539928 () Bool)

(assert (=> bm!539928 (= call!539929 call!539931)))

(declare-fun b!6337207 () Bool)

(assert (=> b!6337207 (= e!3849450 (store ((as const (Array Context!11246 Bool)) false) lt!2361578 true))))

(declare-fun b!6337208 () Bool)

(declare-fun e!3849449 () (InoxSet Context!11246))

(assert (=> b!6337208 (= e!3849449 ((_ map or) call!539932 call!539934))))

(declare-fun b!6337209 () Bool)

(assert (=> b!6337209 (= e!3849453 call!539930)))

(declare-fun b!6337210 () Bool)

(assert (=> b!6337210 (= c!1151965 e!3849452)))

(declare-fun res!2608013 () Bool)

(assert (=> b!6337210 (=> (not res!2608013) (not e!3849452))))

(assert (=> b!6337210 (= res!2608013 ((_ is Concat!25084) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> b!6337210 (= e!3849449 e!3849454)))

(declare-fun b!6337211 () Bool)

(assert (=> b!6337211 (= e!3849450 e!3849449)))

(assert (=> b!6337211 (= c!1151968 ((_ is Union!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6337212 () Bool)

(declare-fun c!1151969 () Bool)

(assert (=> b!6337212 (= c!1151969 ((_ is Star!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> b!6337212 (= e!3849451 e!3849453)))

(declare-fun bm!539929 () Bool)

(assert (=> bm!539929 (= call!539930 call!539933)))

(assert (= (and d!1989013 c!1151966) b!6337207))

(assert (= (and d!1989013 (not c!1151966)) b!6337211))

(assert (= (and b!6337211 c!1151968) b!6337208))

(assert (= (and b!6337211 (not c!1151968)) b!6337210))

(assert (= (and b!6337210 res!2608013) b!6337205))

(assert (= (and b!6337210 c!1151965) b!6337204))

(assert (= (and b!6337210 (not c!1151965)) b!6337202))

(assert (= (and b!6337202 c!1151967) b!6337206))

(assert (= (and b!6337202 (not c!1151967)) b!6337212))

(assert (= (and b!6337212 c!1151969) b!6337209))

(assert (= (and b!6337212 (not c!1151969)) b!6337203))

(assert (= (or b!6337206 b!6337209) bm!539928))

(assert (= (or b!6337206 b!6337209) bm!539929))

(assert (= (or b!6337204 bm!539928) bm!539927))

(assert (= (or b!6337204 bm!539929) bm!539925))

(assert (= (or b!6337208 b!6337204) bm!539926))

(assert (= (or b!6337208 bm!539925) bm!539924))

(declare-fun m!7146352 () Bool)

(assert (=> bm!539924 m!7146352))

(declare-fun m!7146354 () Bool)

(assert (=> bm!539926 m!7146354))

(declare-fun m!7146356 () Bool)

(assert (=> bm!539927 m!7146356))

(declare-fun m!7146358 () Bool)

(assert (=> b!6337207 m!7146358))

(declare-fun m!7146360 () Bool)

(assert (=> b!6337205 m!7146360))

(assert (=> b!6336821 d!1989013))

(declare-fun b!6337213 () Bool)

(declare-fun e!3849456 () Bool)

(assert (=> b!6337213 (= e!3849456 (nullable!6232 (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6337214 () Bool)

(declare-fun e!3849455 () (InoxSet Context!11246))

(declare-fun call!539935 () (InoxSet Context!11246))

(assert (=> b!6337214 (= e!3849455 call!539935)))

(declare-fun b!6337215 () Bool)

(assert (=> b!6337215 (= e!3849455 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6337216 () Bool)

(declare-fun e!3849457 () (InoxSet Context!11246))

(assert (=> b!6337216 (= e!3849457 e!3849455)))

(declare-fun c!1151970 () Bool)

(assert (=> b!6337216 (= c!1151970 ((_ is Cons!64892) (exprs!6123 (h!71341 zl!343))))))

(declare-fun d!1989023 () Bool)

(declare-fun c!1151971 () Bool)

(assert (=> d!1989023 (= c!1151971 e!3849456)))

(declare-fun res!2608014 () Bool)

(assert (=> d!1989023 (=> (not res!2608014) (not e!3849456))))

(assert (=> d!1989023 (= res!2608014 ((_ is Cons!64892) (exprs!6123 (h!71341 zl!343))))))

(assert (=> d!1989023 (= (derivationStepZipperUp!1413 (h!71341 zl!343) (h!71342 s!2326)) e!3849457)))

(declare-fun bm!539930 () Bool)

(assert (=> bm!539930 (= call!539935 (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (h!71341 zl!343))) (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))) (h!71342 s!2326)))))

(declare-fun b!6337217 () Bool)

(assert (=> b!6337217 (= e!3849457 ((_ map or) call!539935 (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))) (h!71342 s!2326))))))

(assert (= (and d!1989023 res!2608014) b!6337213))

(assert (= (and d!1989023 c!1151971) b!6337217))

(assert (= (and d!1989023 (not c!1151971)) b!6337216))

(assert (= (and b!6337216 c!1151970) b!6337214))

(assert (= (and b!6337216 (not c!1151970)) b!6337215))

(assert (= (or b!6337217 b!6337214) bm!539930))

(assert (=> b!6337213 m!7146074))

(declare-fun m!7146362 () Bool)

(assert (=> bm!539930 m!7146362))

(declare-fun m!7146364 () Bool)

(assert (=> b!6337217 m!7146364))

(assert (=> b!6336821 d!1989023))

(declare-fun d!1989025 () Bool)

(declare-fun dynLambda!25715 (Int Context!11246) (InoxSet Context!11246))

(assert (=> d!1989025 (= (flatMap!1744 z!1189 lambda!347959) (dynLambda!25715 lambda!347959 (h!71341 zl!343)))))

(declare-fun lt!2361642 () Unit!158287)

(declare-fun choose!46975 ((InoxSet Context!11246) Context!11246 Int) Unit!158287)

(assert (=> d!1989025 (= lt!2361642 (choose!46975 z!1189 (h!71341 zl!343) lambda!347959))))

(assert (=> d!1989025 (= z!1189 (store ((as const (Array Context!11246 Bool)) false) (h!71341 zl!343) true))))

(assert (=> d!1989025 (= (lemmaFlatMapOnSingletonSet!1270 z!1189 (h!71341 zl!343) lambda!347959) lt!2361642)))

(declare-fun b_lambda!241169 () Bool)

(assert (=> (not b_lambda!241169) (not d!1989025)))

(declare-fun bs!1586670 () Bool)

(assert (= bs!1586670 d!1989025))

(assert (=> bs!1586670 m!7146070))

(declare-fun m!7146366 () Bool)

(assert (=> bs!1586670 m!7146366))

(declare-fun m!7146368 () Bool)

(assert (=> bs!1586670 m!7146368))

(declare-fun m!7146370 () Bool)

(assert (=> bs!1586670 m!7146370))

(assert (=> b!6336821 d!1989025))

(declare-fun b!6337236 () Bool)

(declare-fun e!3849469 () Bool)

(assert (=> b!6337236 (= e!3849469 (nullable!6232 (h!71340 (exprs!6123 lt!2361578))))))

(declare-fun b!6337237 () Bool)

(declare-fun e!3849468 () (InoxSet Context!11246))

(declare-fun call!539936 () (InoxSet Context!11246))

(assert (=> b!6337237 (= e!3849468 call!539936)))

(declare-fun b!6337238 () Bool)

(assert (=> b!6337238 (= e!3849468 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6337239 () Bool)

(declare-fun e!3849470 () (InoxSet Context!11246))

(assert (=> b!6337239 (= e!3849470 e!3849468)))

(declare-fun c!1151976 () Bool)

(assert (=> b!6337239 (= c!1151976 ((_ is Cons!64892) (exprs!6123 lt!2361578)))))

(declare-fun d!1989027 () Bool)

(declare-fun c!1151977 () Bool)

(assert (=> d!1989027 (= c!1151977 e!3849469)))

(declare-fun res!2608025 () Bool)

(assert (=> d!1989027 (=> (not res!2608025) (not e!3849469))))

(assert (=> d!1989027 (= res!2608025 ((_ is Cons!64892) (exprs!6123 lt!2361578)))))

(assert (=> d!1989027 (= (derivationStepZipperUp!1413 lt!2361578 (h!71342 s!2326)) e!3849470)))

(declare-fun bm!539931 () Bool)

(assert (=> bm!539931 (= call!539936 (derivationStepZipperDown!1487 (h!71340 (exprs!6123 lt!2361578)) (Context!11247 (t!378600 (exprs!6123 lt!2361578))) (h!71342 s!2326)))))

(declare-fun b!6337240 () Bool)

(assert (=> b!6337240 (= e!3849470 ((_ map or) call!539936 (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 lt!2361578))) (h!71342 s!2326))))))

(assert (= (and d!1989027 res!2608025) b!6337236))

(assert (= (and d!1989027 c!1151977) b!6337240))

(assert (= (and d!1989027 (not c!1151977)) b!6337239))

(assert (= (and b!6337239 c!1151976) b!6337237))

(assert (= (and b!6337239 (not c!1151976)) b!6337238))

(assert (= (or b!6337240 b!6337237) bm!539931))

(declare-fun m!7146372 () Bool)

(assert (=> b!6337236 m!7146372))

(declare-fun m!7146374 () Bool)

(assert (=> bm!539931 m!7146374))

(declare-fun m!7146376 () Bool)

(assert (=> b!6337240 m!7146376))

(assert (=> b!6336821 d!1989027))

(declare-fun bs!1586671 () Bool)

(declare-fun d!1989029 () Bool)

(assert (= bs!1586671 (and d!1989029 d!1988975)))

(declare-fun lambda!348004 () Int)

(assert (=> bs!1586671 (= lambda!348004 lambda!347980)))

(assert (=> d!1989029 (= (inv!83844 (h!71341 zl!343)) (forall!15393 (exprs!6123 (h!71341 zl!343)) lambda!348004))))

(declare-fun bs!1586672 () Bool)

(assert (= bs!1586672 d!1989029))

(declare-fun m!7146378 () Bool)

(assert (=> bs!1586672 m!7146378))

(assert (=> b!6336820 d!1989029))

(declare-fun d!1989031 () Bool)

(assert (=> d!1989031 (= (flatMap!1744 lt!2361573 lambda!347959) (choose!46974 lt!2361573 lambda!347959))))

(declare-fun bs!1586673 () Bool)

(assert (= bs!1586673 d!1989031))

(declare-fun m!7146380 () Bool)

(assert (=> bs!1586673 m!7146380))

(assert (=> b!6336843 d!1989031))

(declare-fun b!6337250 () Bool)

(declare-fun e!3849477 () Bool)

(assert (=> b!6337250 (= e!3849477 (nullable!6232 (h!71340 (exprs!6123 lt!2361567))))))

(declare-fun b!6337251 () Bool)

(declare-fun e!3849476 () (InoxSet Context!11246))

(declare-fun call!539937 () (InoxSet Context!11246))

(assert (=> b!6337251 (= e!3849476 call!539937)))

(declare-fun b!6337252 () Bool)

(assert (=> b!6337252 (= e!3849476 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6337253 () Bool)

(declare-fun e!3849478 () (InoxSet Context!11246))

(assert (=> b!6337253 (= e!3849478 e!3849476)))

(declare-fun c!1151980 () Bool)

(assert (=> b!6337253 (= c!1151980 ((_ is Cons!64892) (exprs!6123 lt!2361567)))))

(declare-fun d!1989033 () Bool)

(declare-fun c!1151981 () Bool)

(assert (=> d!1989033 (= c!1151981 e!3849477)))

(declare-fun res!2608031 () Bool)

(assert (=> d!1989033 (=> (not res!2608031) (not e!3849477))))

(assert (=> d!1989033 (= res!2608031 ((_ is Cons!64892) (exprs!6123 lt!2361567)))))

(assert (=> d!1989033 (= (derivationStepZipperUp!1413 lt!2361567 (h!71342 s!2326)) e!3849478)))

(declare-fun bm!539932 () Bool)

(assert (=> bm!539932 (= call!539937 (derivationStepZipperDown!1487 (h!71340 (exprs!6123 lt!2361567)) (Context!11247 (t!378600 (exprs!6123 lt!2361567))) (h!71342 s!2326)))))

(declare-fun b!6337254 () Bool)

(assert (=> b!6337254 (= e!3849478 ((_ map or) call!539937 (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 lt!2361567))) (h!71342 s!2326))))))

(assert (= (and d!1989033 res!2608031) b!6337250))

(assert (= (and d!1989033 c!1151981) b!6337254))

(assert (= (and d!1989033 (not c!1151981)) b!6337253))

(assert (= (and b!6337253 c!1151980) b!6337251))

(assert (= (and b!6337253 (not c!1151980)) b!6337252))

(assert (= (or b!6337254 b!6337251) bm!539932))

(declare-fun m!7146382 () Bool)

(assert (=> b!6337250 m!7146382))

(declare-fun m!7146384 () Bool)

(assert (=> bm!539932 m!7146384))

(declare-fun m!7146386 () Bool)

(assert (=> b!6337254 m!7146386))

(assert (=> b!6336843 d!1989033))

(declare-fun d!1989035 () Bool)

(assert (=> d!1989035 (= (flatMap!1744 lt!2361573 lambda!347959) (dynLambda!25715 lambda!347959 lt!2361567))))

(declare-fun lt!2361646 () Unit!158287)

(assert (=> d!1989035 (= lt!2361646 (choose!46975 lt!2361573 lt!2361567 lambda!347959))))

(assert (=> d!1989035 (= lt!2361573 (store ((as const (Array Context!11246 Bool)) false) lt!2361567 true))))

(assert (=> d!1989035 (= (lemmaFlatMapOnSingletonSet!1270 lt!2361573 lt!2361567 lambda!347959) lt!2361646)))

(declare-fun b_lambda!241171 () Bool)

(assert (=> (not b_lambda!241171) (not d!1989035)))

(declare-fun bs!1586674 () Bool)

(assert (= bs!1586674 d!1989035))

(assert (=> bs!1586674 m!7146128))

(declare-fun m!7146400 () Bool)

(assert (=> bs!1586674 m!7146400))

(declare-fun m!7146404 () Bool)

(assert (=> bs!1586674 m!7146404))

(assert (=> bs!1586674 m!7146130))

(assert (=> b!6336843 d!1989035))

(declare-fun bs!1586677 () Bool)

(declare-fun d!1989037 () Bool)

(assert (= bs!1586677 (and d!1989037 b!6336821)))

(declare-fun lambda!348007 () Int)

(assert (=> bs!1586677 (= lambda!348007 lambda!347959)))

(assert (=> d!1989037 true))

(assert (=> d!1989037 (= (derivationStepZipper!2205 lt!2361573 (h!71342 s!2326)) (flatMap!1744 lt!2361573 lambda!348007))))

(declare-fun bs!1586678 () Bool)

(assert (= bs!1586678 d!1989037))

(declare-fun m!7146420 () Bool)

(assert (=> bs!1586678 m!7146420))

(assert (=> b!6336843 d!1989037))

(declare-fun b!6337257 () Bool)

(declare-fun res!2608033 () Bool)

(declare-fun e!3849484 () Bool)

(assert (=> b!6337257 (=> (not res!2608033) (not e!3849484))))

(declare-fun call!539939 () Bool)

(assert (=> b!6337257 (= res!2608033 call!539939)))

(declare-fun e!3849483 () Bool)

(assert (=> b!6337257 (= e!3849483 e!3849484)))

(declare-fun bm!539933 () Bool)

(declare-fun call!539940 () Bool)

(declare-fun c!1151984 () Bool)

(declare-fun c!1151985 () Bool)

(assert (=> bm!539933 (= call!539940 (validRegex!7975 (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))))))

(declare-fun b!6337258 () Bool)

(declare-fun e!3849480 () Bool)

(declare-fun e!3849482 () Bool)

(assert (=> b!6337258 (= e!3849480 e!3849482)))

(declare-fun res!2608032 () Bool)

(assert (=> b!6337258 (=> (not res!2608032) (not e!3849482))))

(assert (=> b!6337258 (= res!2608032 call!539939)))

(declare-fun b!6337259 () Bool)

(declare-fun e!3849485 () Bool)

(assert (=> b!6337259 (= e!3849485 call!539940)))

(declare-fun bm!539934 () Bool)

(assert (=> bm!539934 (= call!539939 call!539940)))

(declare-fun b!6337260 () Bool)

(declare-fun call!539938 () Bool)

(assert (=> b!6337260 (= e!3849484 call!539938)))

(declare-fun b!6337261 () Bool)

(declare-fun e!3849481 () Bool)

(assert (=> b!6337261 (= e!3849481 e!3849485)))

(declare-fun res!2608036 () Bool)

(assert (=> b!6337261 (= res!2608036 (not (nullable!6232 (reg!16568 r!7292))))))

(assert (=> b!6337261 (=> (not res!2608036) (not e!3849485))))

(declare-fun bm!539935 () Bool)

(assert (=> bm!539935 (= call!539938 (validRegex!7975 (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))))))

(declare-fun b!6337262 () Bool)

(declare-fun e!3849479 () Bool)

(assert (=> b!6337262 (= e!3849479 e!3849481)))

(assert (=> b!6337262 (= c!1151985 ((_ is Star!16239) r!7292))))

(declare-fun d!1989045 () Bool)

(declare-fun res!2608035 () Bool)

(assert (=> d!1989045 (=> res!2608035 e!3849479)))

(assert (=> d!1989045 (= res!2608035 ((_ is ElementMatch!16239) r!7292))))

(assert (=> d!1989045 (= (validRegex!7975 r!7292) e!3849479)))

(declare-fun b!6337263 () Bool)

(assert (=> b!6337263 (= e!3849482 call!539938)))

(declare-fun b!6337264 () Bool)

(declare-fun res!2608034 () Bool)

(assert (=> b!6337264 (=> res!2608034 e!3849480)))

(assert (=> b!6337264 (= res!2608034 (not ((_ is Concat!25084) r!7292)))))

(assert (=> b!6337264 (= e!3849483 e!3849480)))

(declare-fun b!6337265 () Bool)

(assert (=> b!6337265 (= e!3849481 e!3849483)))

(assert (=> b!6337265 (= c!1151984 ((_ is Union!16239) r!7292))))

(assert (= (and d!1989045 (not res!2608035)) b!6337262))

(assert (= (and b!6337262 c!1151985) b!6337261))

(assert (= (and b!6337262 (not c!1151985)) b!6337265))

(assert (= (and b!6337261 res!2608036) b!6337259))

(assert (= (and b!6337265 c!1151984) b!6337257))

(assert (= (and b!6337265 (not c!1151984)) b!6337264))

(assert (= (and b!6337257 res!2608033) b!6337260))

(assert (= (and b!6337264 (not res!2608034)) b!6337258))

(assert (= (and b!6337258 res!2608032) b!6337263))

(assert (= (or b!6337260 b!6337263) bm!539935))

(assert (= (or b!6337257 b!6337258) bm!539934))

(assert (= (or b!6337259 bm!539934) bm!539933))

(declare-fun m!7146422 () Bool)

(assert (=> bm!539933 m!7146422))

(declare-fun m!7146424 () Bool)

(assert (=> b!6337261 m!7146424))

(declare-fun m!7146426 () Bool)

(assert (=> bm!539935 m!7146426))

(assert (=> start!627862 d!1989045))

(declare-fun b!6337266 () Bool)

(declare-fun e!3849491 () (InoxSet Context!11246))

(declare-fun e!3849488 () (InoxSet Context!11246))

(assert (=> b!6337266 (= e!3849491 e!3849488)))

(declare-fun c!1151988 () Bool)

(assert (=> b!6337266 (= c!1151988 ((_ is Concat!25084) (regOne!32990 (regOne!32990 r!7292))))))

(declare-fun b!6337267 () Bool)

(declare-fun e!3849490 () (InoxSet Context!11246))

(assert (=> b!6337267 (= e!3849490 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6337268 () Bool)

(declare-fun call!539946 () (InoxSet Context!11246))

(declare-fun call!539945 () (InoxSet Context!11246))

(assert (=> b!6337268 (= e!3849491 ((_ map or) call!539946 call!539945))))

(declare-fun b!6337269 () Bool)

(declare-fun e!3849489 () Bool)

(assert (=> b!6337269 (= e!3849489 (nullable!6232 (regOne!32990 (regOne!32990 (regOne!32990 r!7292)))))))

(declare-fun bm!539937 () Bool)

(declare-fun call!539944 () (InoxSet Context!11246))

(assert (=> bm!539937 (= call!539945 call!539944)))

(declare-fun bm!539938 () Bool)

(declare-fun call!539943 () List!65016)

(declare-fun c!1151989 () Bool)

(assert (=> bm!539938 (= call!539946 (derivationStepZipperDown!1487 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292)))) (ite c!1151989 (Context!11247 lt!2361564) (Context!11247 call!539943)) (h!71342 s!2326)))))

(declare-fun b!6337270 () Bool)

(declare-fun call!539942 () (InoxSet Context!11246))

(assert (=> b!6337270 (= e!3849488 call!539942)))

(declare-fun c!1151986 () Bool)

(declare-fun bm!539939 () Bool)

(assert (=> bm!539939 (= call!539943 ($colon$colon!2102 (exprs!6123 (Context!11247 lt!2361564)) (ite (or c!1151986 c!1151988) (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 r!7292)))))))

(declare-fun d!1989047 () Bool)

(declare-fun c!1151987 () Bool)

(assert (=> d!1989047 (= c!1151987 (and ((_ is ElementMatch!16239) (regOne!32990 (regOne!32990 r!7292))) (= (c!1151834 (regOne!32990 (regOne!32990 r!7292))) (h!71342 s!2326))))))

(declare-fun e!3849487 () (InoxSet Context!11246))

(assert (=> d!1989047 (= (derivationStepZipperDown!1487 (regOne!32990 (regOne!32990 r!7292)) (Context!11247 lt!2361564) (h!71342 s!2326)) e!3849487)))

(declare-fun call!539941 () List!65016)

(declare-fun bm!539936 () Bool)

(assert (=> bm!539936 (= call!539944 (derivationStepZipperDown!1487 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292)))))) (ite (or c!1151989 c!1151986) (Context!11247 lt!2361564) (Context!11247 call!539941)) (h!71342 s!2326)))))

(declare-fun bm!539940 () Bool)

(assert (=> bm!539940 (= call!539941 call!539943)))

(declare-fun b!6337271 () Bool)

(assert (=> b!6337271 (= e!3849487 (store ((as const (Array Context!11246 Bool)) false) (Context!11247 lt!2361564) true))))

(declare-fun b!6337272 () Bool)

(declare-fun e!3849486 () (InoxSet Context!11246))

(assert (=> b!6337272 (= e!3849486 ((_ map or) call!539944 call!539946))))

(declare-fun b!6337273 () Bool)

(assert (=> b!6337273 (= e!3849490 call!539942)))

(declare-fun b!6337274 () Bool)

(assert (=> b!6337274 (= c!1151986 e!3849489)))

(declare-fun res!2608037 () Bool)

(assert (=> b!6337274 (=> (not res!2608037) (not e!3849489))))

(assert (=> b!6337274 (= res!2608037 ((_ is Concat!25084) (regOne!32990 (regOne!32990 r!7292))))))

(assert (=> b!6337274 (= e!3849486 e!3849491)))

(declare-fun b!6337275 () Bool)

(assert (=> b!6337275 (= e!3849487 e!3849486)))

(assert (=> b!6337275 (= c!1151989 ((_ is Union!16239) (regOne!32990 (regOne!32990 r!7292))))))

(declare-fun b!6337276 () Bool)

(declare-fun c!1151990 () Bool)

(assert (=> b!6337276 (= c!1151990 ((_ is Star!16239) (regOne!32990 (regOne!32990 r!7292))))))

(assert (=> b!6337276 (= e!3849488 e!3849490)))

(declare-fun bm!539941 () Bool)

(assert (=> bm!539941 (= call!539942 call!539945)))

(assert (= (and d!1989047 c!1151987) b!6337271))

(assert (= (and d!1989047 (not c!1151987)) b!6337275))

(assert (= (and b!6337275 c!1151989) b!6337272))

(assert (= (and b!6337275 (not c!1151989)) b!6337274))

(assert (= (and b!6337274 res!2608037) b!6337269))

(assert (= (and b!6337274 c!1151986) b!6337268))

(assert (= (and b!6337274 (not c!1151986)) b!6337266))

(assert (= (and b!6337266 c!1151988) b!6337270))

(assert (= (and b!6337266 (not c!1151988)) b!6337276))

(assert (= (and b!6337276 c!1151990) b!6337273))

(assert (= (and b!6337276 (not c!1151990)) b!6337267))

(assert (= (or b!6337270 b!6337273) bm!539940))

(assert (= (or b!6337270 b!6337273) bm!539941))

(assert (= (or b!6337268 bm!539940) bm!539939))

(assert (= (or b!6337268 bm!539941) bm!539937))

(assert (= (or b!6337272 b!6337268) bm!539938))

(assert (= (or b!6337272 bm!539937) bm!539936))

(declare-fun m!7146428 () Bool)

(assert (=> bm!539936 m!7146428))

(declare-fun m!7146430 () Bool)

(assert (=> bm!539938 m!7146430))

(declare-fun m!7146432 () Bool)

(assert (=> bm!539939 m!7146432))

(declare-fun m!7146434 () Bool)

(assert (=> b!6337271 m!7146434))

(declare-fun m!7146436 () Bool)

(assert (=> b!6337269 m!7146436))

(assert (=> b!6336823 d!1989047))

(declare-fun d!1989049 () Bool)

(declare-fun c!1151993 () Bool)

(declare-fun isEmpty!36973 (List!65018) Bool)

(assert (=> d!1989049 (= c!1151993 (isEmpty!36973 (t!378602 s!2326)))))

(declare-fun e!3849496 () Bool)

(assert (=> d!1989049 (= (matchZipper!2251 lt!2361577 (t!378602 s!2326)) e!3849496)))

(declare-fun b!6337285 () Bool)

(declare-fun nullableZipper!2007 ((InoxSet Context!11246)) Bool)

(assert (=> b!6337285 (= e!3849496 (nullableZipper!2007 lt!2361577))))

(declare-fun b!6337286 () Bool)

(declare-fun head!12975 (List!65018) C!32748)

(declare-fun tail!12060 (List!65018) List!65018)

(assert (=> b!6337286 (= e!3849496 (matchZipper!2251 (derivationStepZipper!2205 lt!2361577 (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))))))

(assert (= (and d!1989049 c!1151993) b!6337285))

(assert (= (and d!1989049 (not c!1151993)) b!6337286))

(declare-fun m!7146438 () Bool)

(assert (=> d!1989049 m!7146438))

(declare-fun m!7146440 () Bool)

(assert (=> b!6337285 m!7146440))

(declare-fun m!7146442 () Bool)

(assert (=> b!6337286 m!7146442))

(assert (=> b!6337286 m!7146442))

(declare-fun m!7146444 () Bool)

(assert (=> b!6337286 m!7146444))

(declare-fun m!7146446 () Bool)

(assert (=> b!6337286 m!7146446))

(assert (=> b!6337286 m!7146444))

(assert (=> b!6337286 m!7146446))

(declare-fun m!7146448 () Bool)

(assert (=> b!6337286 m!7146448))

(assert (=> b!6336844 d!1989049))

(declare-fun d!1989051 () Bool)

(declare-fun c!1151994 () Bool)

(assert (=> d!1989051 (= c!1151994 (isEmpty!36973 (t!378602 s!2326)))))

(declare-fun e!3849497 () Bool)

(assert (=> d!1989051 (= (matchZipper!2251 lt!2361558 (t!378602 s!2326)) e!3849497)))

(declare-fun b!6337287 () Bool)

(assert (=> b!6337287 (= e!3849497 (nullableZipper!2007 lt!2361558))))

(declare-fun b!6337288 () Bool)

(assert (=> b!6337288 (= e!3849497 (matchZipper!2251 (derivationStepZipper!2205 lt!2361558 (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))))))

(assert (= (and d!1989051 c!1151994) b!6337287))

(assert (= (and d!1989051 (not c!1151994)) b!6337288))

(assert (=> d!1989051 m!7146438))

(declare-fun m!7146450 () Bool)

(assert (=> b!6337287 m!7146450))

(assert (=> b!6337288 m!7146442))

(assert (=> b!6337288 m!7146442))

(declare-fun m!7146452 () Bool)

(assert (=> b!6337288 m!7146452))

(assert (=> b!6337288 m!7146446))

(assert (=> b!6337288 m!7146452))

(assert (=> b!6337288 m!7146446))

(declare-fun m!7146454 () Bool)

(assert (=> b!6337288 m!7146454))

(assert (=> b!6336846 d!1989051))

(declare-fun d!1989053 () Bool)

(declare-fun c!1151995 () Bool)

(assert (=> d!1989053 (= c!1151995 (isEmpty!36973 (t!378602 s!2326)))))

(declare-fun e!3849498 () Bool)

(assert (=> d!1989053 (= (matchZipper!2251 lt!2361560 (t!378602 s!2326)) e!3849498)))

(declare-fun b!6337289 () Bool)

(assert (=> b!6337289 (= e!3849498 (nullableZipper!2007 lt!2361560))))

(declare-fun b!6337290 () Bool)

(assert (=> b!6337290 (= e!3849498 (matchZipper!2251 (derivationStepZipper!2205 lt!2361560 (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))))))

(assert (= (and d!1989053 c!1151995) b!6337289))

(assert (= (and d!1989053 (not c!1151995)) b!6337290))

(assert (=> d!1989053 m!7146438))

(declare-fun m!7146456 () Bool)

(assert (=> b!6337289 m!7146456))

(assert (=> b!6337290 m!7146442))

(assert (=> b!6337290 m!7146442))

(declare-fun m!7146458 () Bool)

(assert (=> b!6337290 m!7146458))

(assert (=> b!6337290 m!7146446))

(assert (=> b!6337290 m!7146458))

(assert (=> b!6337290 m!7146446))

(declare-fun m!7146460 () Bool)

(assert (=> b!6337290 m!7146460))

(assert (=> b!6336846 d!1989053))

(declare-fun d!1989055 () Bool)

(declare-fun e!3849499 () Bool)

(assert (=> d!1989055 e!3849499))

(declare-fun res!2608042 () Bool)

(assert (=> d!1989055 (=> (not res!2608042) (not e!3849499))))

(declare-fun lt!2361650 () List!65017)

(assert (=> d!1989055 (= res!2608042 (noDuplicate!2070 lt!2361650))))

(assert (=> d!1989055 (= lt!2361650 (choose!46973 z!1189))))

(assert (=> d!1989055 (= (toList!10023 z!1189) lt!2361650)))

(declare-fun b!6337291 () Bool)

(assert (=> b!6337291 (= e!3849499 (= (content!12235 lt!2361650) z!1189))))

(assert (= (and d!1989055 res!2608042) b!6337291))

(declare-fun m!7146462 () Bool)

(assert (=> d!1989055 m!7146462))

(declare-fun m!7146464 () Bool)

(assert (=> d!1989055 m!7146464))

(declare-fun m!7146466 () Bool)

(assert (=> b!6337291 m!7146466))

(assert (=> b!6336836 d!1989055))

(declare-fun bs!1586689 () Bool)

(declare-fun b!6337341 () Bool)

(assert (= bs!1586689 (and b!6337341 b!6336813)))

(declare-fun lambda!348021 () Int)

(assert (=> bs!1586689 (not (= lambda!348021 lambda!347957))))

(assert (=> bs!1586689 (not (= lambda!348021 lambda!347958))))

(assert (=> b!6337341 true))

(assert (=> b!6337341 true))

(declare-fun bs!1586690 () Bool)

(declare-fun b!6337339 () Bool)

(assert (= bs!1586690 (and b!6337339 b!6336813)))

(declare-fun lambda!348022 () Int)

(assert (=> bs!1586690 (not (= lambda!348022 lambda!347957))))

(assert (=> bs!1586690 (= lambda!348022 lambda!347958)))

(declare-fun bs!1586691 () Bool)

(assert (= bs!1586691 (and b!6337339 b!6337341)))

(assert (=> bs!1586691 (not (= lambda!348022 lambda!348021))))

(assert (=> b!6337339 true))

(assert (=> b!6337339 true))

(declare-fun bm!539946 () Bool)

(declare-fun c!1152004 () Bool)

(declare-fun call!539951 () Bool)

(assert (=> bm!539946 (= call!539951 (Exists!3309 (ite c!1152004 lambda!348021 lambda!348022)))))

(declare-fun b!6337332 () Bool)

(declare-fun e!3849523 () Bool)

(assert (=> b!6337332 (= e!3849523 (matchRSpec!3340 (regTwo!32991 r!7292) s!2326))))

(declare-fun b!6337333 () Bool)

(declare-fun e!3849528 () Bool)

(assert (=> b!6337333 (= e!3849528 e!3849523)))

(declare-fun res!2608067 () Bool)

(assert (=> b!6337333 (= res!2608067 (matchRSpec!3340 (regOne!32991 r!7292) s!2326))))

(assert (=> b!6337333 (=> res!2608067 e!3849523)))

(declare-fun bm!539947 () Bool)

(declare-fun call!539952 () Bool)

(assert (=> bm!539947 (= call!539952 (isEmpty!36973 s!2326))))

(declare-fun b!6337334 () Bool)

(declare-fun e!3849524 () Bool)

(assert (=> b!6337334 (= e!3849524 (= s!2326 (Cons!64894 (c!1151834 r!7292) Nil!64894)))))

(declare-fun b!6337335 () Bool)

(declare-fun c!1152006 () Bool)

(assert (=> b!6337335 (= c!1152006 ((_ is Union!16239) r!7292))))

(assert (=> b!6337335 (= e!3849524 e!3849528)))

(declare-fun b!6337337 () Bool)

(declare-fun e!3849527 () Bool)

(declare-fun e!3849526 () Bool)

(assert (=> b!6337337 (= e!3849527 e!3849526)))

(declare-fun res!2608068 () Bool)

(assert (=> b!6337337 (= res!2608068 (not ((_ is EmptyLang!16239) r!7292)))))

(assert (=> b!6337337 (=> (not res!2608068) (not e!3849526))))

(declare-fun b!6337338 () Bool)

(declare-fun e!3849522 () Bool)

(assert (=> b!6337338 (= e!3849528 e!3849522)))

(assert (=> b!6337338 (= c!1152004 ((_ is Star!16239) r!7292))))

(assert (=> b!6337339 (= e!3849522 call!539951)))

(declare-fun b!6337340 () Bool)

(assert (=> b!6337340 (= e!3849527 call!539952)))

(declare-fun e!3849525 () Bool)

(assert (=> b!6337341 (= e!3849525 call!539951)))

(declare-fun b!6337342 () Bool)

(declare-fun res!2608069 () Bool)

(assert (=> b!6337342 (=> res!2608069 e!3849525)))

(assert (=> b!6337342 (= res!2608069 call!539952)))

(assert (=> b!6337342 (= e!3849522 e!3849525)))

(declare-fun b!6337336 () Bool)

(declare-fun c!1152005 () Bool)

(assert (=> b!6337336 (= c!1152005 ((_ is ElementMatch!16239) r!7292))))

(assert (=> b!6337336 (= e!3849526 e!3849524)))

(declare-fun d!1989057 () Bool)

(declare-fun c!1152007 () Bool)

(assert (=> d!1989057 (= c!1152007 ((_ is EmptyExpr!16239) r!7292))))

(assert (=> d!1989057 (= (matchRSpec!3340 r!7292 s!2326) e!3849527)))

(assert (= (and d!1989057 c!1152007) b!6337340))

(assert (= (and d!1989057 (not c!1152007)) b!6337337))

(assert (= (and b!6337337 res!2608068) b!6337336))

(assert (= (and b!6337336 c!1152005) b!6337334))

(assert (= (and b!6337336 (not c!1152005)) b!6337335))

(assert (= (and b!6337335 c!1152006) b!6337333))

(assert (= (and b!6337335 (not c!1152006)) b!6337338))

(assert (= (and b!6337333 (not res!2608067)) b!6337332))

(assert (= (and b!6337338 c!1152004) b!6337342))

(assert (= (and b!6337338 (not c!1152004)) b!6337339))

(assert (= (and b!6337342 (not res!2608069)) b!6337341))

(assert (= (or b!6337341 b!6337339) bm!539946))

(assert (= (or b!6337340 b!6337342) bm!539947))

(declare-fun m!7146484 () Bool)

(assert (=> bm!539946 m!7146484))

(declare-fun m!7146486 () Bool)

(assert (=> b!6337332 m!7146486))

(declare-fun m!7146488 () Bool)

(assert (=> b!6337333 m!7146488))

(declare-fun m!7146490 () Bool)

(assert (=> bm!539947 m!7146490))

(assert (=> b!6336817 d!1989057))

(declare-fun b!6337394 () Bool)

(declare-fun e!3849559 () Bool)

(declare-fun lt!2361668 () Bool)

(declare-fun call!539955 () Bool)

(assert (=> b!6337394 (= e!3849559 (= lt!2361668 call!539955))))

(declare-fun bm!539950 () Bool)

(assert (=> bm!539950 (= call!539955 (isEmpty!36973 s!2326))))

(declare-fun b!6337395 () Bool)

(declare-fun e!3849563 () Bool)

(assert (=> b!6337395 (= e!3849559 e!3849563)))

(declare-fun c!1152024 () Bool)

(assert (=> b!6337395 (= c!1152024 ((_ is EmptyLang!16239) r!7292))))

(declare-fun d!1989069 () Bool)

(assert (=> d!1989069 e!3849559))

(declare-fun c!1152025 () Bool)

(assert (=> d!1989069 (= c!1152025 ((_ is EmptyExpr!16239) r!7292))))

(declare-fun e!3849560 () Bool)

(assert (=> d!1989069 (= lt!2361668 e!3849560)))

(declare-fun c!1152026 () Bool)

(assert (=> d!1989069 (= c!1152026 (isEmpty!36973 s!2326))))

(assert (=> d!1989069 (validRegex!7975 r!7292)))

(assert (=> d!1989069 (= (matchR!8422 r!7292 s!2326) lt!2361668)))

(declare-fun b!6337396 () Bool)

(assert (=> b!6337396 (= e!3849560 (nullable!6232 r!7292))))

(declare-fun b!6337397 () Bool)

(declare-fun res!2608095 () Bool)

(declare-fun e!3849557 () Bool)

(assert (=> b!6337397 (=> res!2608095 e!3849557)))

(assert (=> b!6337397 (= res!2608095 (not ((_ is ElementMatch!16239) r!7292)))))

(assert (=> b!6337397 (= e!3849563 e!3849557)))

(declare-fun b!6337398 () Bool)

(declare-fun res!2608093 () Bool)

(declare-fun e!3849558 () Bool)

(assert (=> b!6337398 (=> (not res!2608093) (not e!3849558))))

(assert (=> b!6337398 (= res!2608093 (isEmpty!36973 (tail!12060 s!2326)))))

(declare-fun b!6337399 () Bool)

(assert (=> b!6337399 (= e!3849563 (not lt!2361668))))

(declare-fun b!6337400 () Bool)

(declare-fun res!2608097 () Bool)

(declare-fun e!3849562 () Bool)

(assert (=> b!6337400 (=> res!2608097 e!3849562)))

(assert (=> b!6337400 (= res!2608097 (not (isEmpty!36973 (tail!12060 s!2326))))))

(declare-fun b!6337401 () Bool)

(assert (=> b!6337401 (= e!3849562 (not (= (head!12975 s!2326) (c!1151834 r!7292))))))

(declare-fun b!6337402 () Bool)

(declare-fun res!2608098 () Bool)

(assert (=> b!6337402 (=> res!2608098 e!3849557)))

(assert (=> b!6337402 (= res!2608098 e!3849558)))

(declare-fun res!2608092 () Bool)

(assert (=> b!6337402 (=> (not res!2608092) (not e!3849558))))

(assert (=> b!6337402 (= res!2608092 lt!2361668)))

(declare-fun b!6337403 () Bool)

(declare-fun e!3849561 () Bool)

(assert (=> b!6337403 (= e!3849561 e!3849562)))

(declare-fun res!2608091 () Bool)

(assert (=> b!6337403 (=> res!2608091 e!3849562)))

(assert (=> b!6337403 (= res!2608091 call!539955)))

(declare-fun b!6337404 () Bool)

(assert (=> b!6337404 (= e!3849557 e!3849561)))

(declare-fun res!2608094 () Bool)

(assert (=> b!6337404 (=> (not res!2608094) (not e!3849561))))

(assert (=> b!6337404 (= res!2608094 (not lt!2361668))))

(declare-fun b!6337405 () Bool)

(declare-fun derivativeStep!4946 (Regex!16239 C!32748) Regex!16239)

(assert (=> b!6337405 (= e!3849560 (matchR!8422 (derivativeStep!4946 r!7292 (head!12975 s!2326)) (tail!12060 s!2326)))))

(declare-fun b!6337406 () Bool)

(declare-fun res!2608096 () Bool)

(assert (=> b!6337406 (=> (not res!2608096) (not e!3849558))))

(assert (=> b!6337406 (= res!2608096 (not call!539955))))

(declare-fun b!6337407 () Bool)

(assert (=> b!6337407 (= e!3849558 (= (head!12975 s!2326) (c!1151834 r!7292)))))

(assert (= (and d!1989069 c!1152026) b!6337396))

(assert (= (and d!1989069 (not c!1152026)) b!6337405))

(assert (= (and d!1989069 c!1152025) b!6337394))

(assert (= (and d!1989069 (not c!1152025)) b!6337395))

(assert (= (and b!6337395 c!1152024) b!6337399))

(assert (= (and b!6337395 (not c!1152024)) b!6337397))

(assert (= (and b!6337397 (not res!2608095)) b!6337402))

(assert (= (and b!6337402 res!2608092) b!6337406))

(assert (= (and b!6337406 res!2608096) b!6337398))

(assert (= (and b!6337398 res!2608093) b!6337407))

(assert (= (and b!6337402 (not res!2608098)) b!6337404))

(assert (= (and b!6337404 res!2608094) b!6337403))

(assert (= (and b!6337403 (not res!2608091)) b!6337400))

(assert (= (and b!6337400 (not res!2608097)) b!6337401))

(assert (= (or b!6337394 b!6337403 b!6337406) bm!539950))

(declare-fun m!7146536 () Bool)

(assert (=> b!6337401 m!7146536))

(assert (=> b!6337407 m!7146536))

(assert (=> d!1989069 m!7146490))

(assert (=> d!1989069 m!7146134))

(declare-fun m!7146538 () Bool)

(assert (=> b!6337396 m!7146538))

(assert (=> bm!539950 m!7146490))

(assert (=> b!6337405 m!7146536))

(assert (=> b!6337405 m!7146536))

(declare-fun m!7146540 () Bool)

(assert (=> b!6337405 m!7146540))

(declare-fun m!7146542 () Bool)

(assert (=> b!6337405 m!7146542))

(assert (=> b!6337405 m!7146540))

(assert (=> b!6337405 m!7146542))

(declare-fun m!7146544 () Bool)

(assert (=> b!6337405 m!7146544))

(assert (=> b!6337398 m!7146542))

(assert (=> b!6337398 m!7146542))

(declare-fun m!7146546 () Bool)

(assert (=> b!6337398 m!7146546))

(assert (=> b!6337400 m!7146542))

(assert (=> b!6337400 m!7146542))

(assert (=> b!6337400 m!7146546))

(assert (=> b!6336817 d!1989069))

(declare-fun d!1989083 () Bool)

(assert (=> d!1989083 (= (matchR!8422 r!7292 s!2326) (matchRSpec!3340 r!7292 s!2326))))

(declare-fun lt!2361675 () Unit!158287)

(declare-fun choose!46981 (Regex!16239 List!65018) Unit!158287)

(assert (=> d!1989083 (= lt!2361675 (choose!46981 r!7292 s!2326))))

(assert (=> d!1989083 (validRegex!7975 r!7292)))

(assert (=> d!1989083 (= (mainMatchTheorem!3340 r!7292 s!2326) lt!2361675)))

(declare-fun bs!1586700 () Bool)

(assert (= bs!1586700 d!1989083))

(assert (=> bs!1586700 m!7146094))

(assert (=> bs!1586700 m!7146092))

(declare-fun m!7146574 () Bool)

(assert (=> bs!1586700 m!7146574))

(assert (=> bs!1586700 m!7146134))

(assert (=> b!6336817 d!1989083))

(declare-fun d!1989097 () Bool)

(declare-fun lt!2361678 () Regex!16239)

(assert (=> d!1989097 (validRegex!7975 lt!2361678)))

(assert (=> d!1989097 (= lt!2361678 (generalisedUnion!2083 (unfocusZipperList!1660 zl!343)))))

(assert (=> d!1989097 (= (unfocusZipper!1981 zl!343) lt!2361678)))

(declare-fun bs!1586701 () Bool)

(assert (= bs!1586701 d!1989097))

(declare-fun m!7146586 () Bool)

(assert (=> bs!1586701 m!7146586))

(assert (=> bs!1586701 m!7146056))

(assert (=> bs!1586701 m!7146056))

(assert (=> bs!1586701 m!7146058))

(assert (=> b!6336838 d!1989097))

(declare-fun d!1989101 () Bool)

(declare-fun c!1152036 () Bool)

(assert (=> d!1989101 (= c!1152036 (isEmpty!36973 (t!378602 s!2326)))))

(declare-fun e!3849583 () Bool)

(assert (=> d!1989101 (= (matchZipper!2251 lt!2361566 (t!378602 s!2326)) e!3849583)))

(declare-fun b!6337436 () Bool)

(assert (=> b!6337436 (= e!3849583 (nullableZipper!2007 lt!2361566))))

(declare-fun b!6337437 () Bool)

(assert (=> b!6337437 (= e!3849583 (matchZipper!2251 (derivationStepZipper!2205 lt!2361566 (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))))))

(assert (= (and d!1989101 c!1152036) b!6337436))

(assert (= (and d!1989101 (not c!1152036)) b!6337437))

(assert (=> d!1989101 m!7146438))

(declare-fun m!7146588 () Bool)

(assert (=> b!6337436 m!7146588))

(assert (=> b!6337437 m!7146442))

(assert (=> b!6337437 m!7146442))

(declare-fun m!7146590 () Bool)

(assert (=> b!6337437 m!7146590))

(assert (=> b!6337437 m!7146446))

(assert (=> b!6337437 m!7146590))

(assert (=> b!6337437 m!7146446))

(declare-fun m!7146592 () Bool)

(assert (=> b!6337437 m!7146592))

(assert (=> b!6336818 d!1989101))

(declare-fun d!1989103 () Bool)

(assert (=> d!1989103 (= (nullable!6232 (regOne!32990 (regOne!32990 r!7292))) (nullableFct!2181 (regOne!32990 (regOne!32990 r!7292))))))

(declare-fun bs!1586702 () Bool)

(assert (= bs!1586702 d!1989103))

(declare-fun m!7146594 () Bool)

(assert (=> bs!1586702 m!7146594))

(assert (=> b!6336841 d!1989103))

(declare-fun d!1989105 () Bool)

(declare-fun lt!2361681 () Int)

(assert (=> d!1989105 (>= lt!2361681 0)))

(declare-fun e!3849586 () Int)

(assert (=> d!1989105 (= lt!2361681 e!3849586)))

(declare-fun c!1152039 () Bool)

(assert (=> d!1989105 (= c!1152039 ((_ is Cons!64893) lt!2361561))))

(assert (=> d!1989105 (= (zipperDepthTotal!376 lt!2361561) lt!2361681)))

(declare-fun b!6337442 () Bool)

(assert (=> b!6337442 (= e!3849586 (+ (contextDepthTotal!348 (h!71341 lt!2361561)) (zipperDepthTotal!376 (t!378601 lt!2361561))))))

(declare-fun b!6337443 () Bool)

(assert (=> b!6337443 (= e!3849586 0)))

(assert (= (and d!1989105 c!1152039) b!6337442))

(assert (= (and d!1989105 (not c!1152039)) b!6337443))

(declare-fun m!7146596 () Bool)

(assert (=> b!6337442 m!7146596))

(declare-fun m!7146598 () Bool)

(assert (=> b!6337442 m!7146598))

(assert (=> b!6336819 d!1989105))

(declare-fun d!1989107 () Bool)

(declare-fun lt!2361682 () Int)

(assert (=> d!1989107 (>= lt!2361682 0)))

(declare-fun e!3849587 () Int)

(assert (=> d!1989107 (= lt!2361682 e!3849587)))

(declare-fun c!1152040 () Bool)

(assert (=> d!1989107 (= c!1152040 ((_ is Cons!64893) zl!343))))

(assert (=> d!1989107 (= (zipperDepthTotal!376 zl!343) lt!2361682)))

(declare-fun b!6337444 () Bool)

(assert (=> b!6337444 (= e!3849587 (+ (contextDepthTotal!348 (h!71341 zl!343)) (zipperDepthTotal!376 (t!378601 zl!343))))))

(declare-fun b!6337445 () Bool)

(assert (=> b!6337445 (= e!3849587 0)))

(assert (= (and d!1989107 c!1152040) b!6337444))

(assert (= (and d!1989107 (not c!1152040)) b!6337445))

(assert (=> b!6337444 m!7146104))

(declare-fun m!7146600 () Bool)

(assert (=> b!6337444 m!7146600))

(assert (=> b!6336819 d!1989107))

(declare-fun d!1989109 () Bool)

(assert (=> d!1989109 (= (isEmpty!36970 (t!378601 zl!343)) ((_ is Nil!64893) (t!378601 zl!343)))))

(assert (=> b!6336840 d!1989109))

(declare-fun bs!1586703 () Bool)

(declare-fun d!1989111 () Bool)

(assert (= bs!1586703 (and d!1989111 d!1988975)))

(declare-fun lambda!348027 () Int)

(assert (=> bs!1586703 (= lambda!348027 lambda!347980)))

(declare-fun bs!1586704 () Bool)

(assert (= bs!1586704 (and d!1989111 d!1989029)))

(assert (=> bs!1586704 (= lambda!348027 lambda!348004)))

(declare-fun b!6337456 () Bool)

(declare-fun e!3849596 () Bool)

(declare-fun lt!2361685 () Regex!16239)

(assert (=> b!6337456 (= e!3849596 (= lt!2361685 (head!12973 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6337457 () Bool)

(declare-fun e!3849597 () Bool)

(declare-fun e!3849598 () Bool)

(assert (=> b!6337457 (= e!3849597 e!3849598)))

(declare-fun c!1152046 () Bool)

(assert (=> b!6337457 (= c!1152046 (isEmpty!36969 (exprs!6123 (h!71341 zl!343))))))

(declare-fun b!6337460 () Bool)

(declare-fun e!3849601 () Regex!16239)

(declare-fun e!3849595 () Regex!16239)

(assert (=> b!6337460 (= e!3849601 e!3849595)))

(declare-fun c!1152047 () Bool)

(assert (=> b!6337460 (= c!1152047 ((_ is Cons!64892) (exprs!6123 (h!71341 zl!343))))))

(declare-fun b!6337461 () Bool)

(declare-fun e!3849594 () Bool)

(assert (=> b!6337461 (= e!3849594 (isEmpty!36969 (t!378600 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> d!1989111 e!3849597))

(declare-fun res!2608112 () Bool)

(assert (=> d!1989111 (=> (not res!2608112) (not e!3849597))))

(assert (=> d!1989111 (= res!2608112 (validRegex!7975 lt!2361685))))

(assert (=> d!1989111 (= lt!2361685 e!3849601)))

(declare-fun c!1152048 () Bool)

(assert (=> d!1989111 (= c!1152048 e!3849594)))

(declare-fun res!2608111 () Bool)

(assert (=> d!1989111 (=> (not res!2608111) (not e!3849594))))

(assert (=> d!1989111 (= res!2608111 ((_ is Cons!64892) (exprs!6123 (h!71341 zl!343))))))

(assert (=> d!1989111 (forall!15393 (exprs!6123 (h!71341 zl!343)) lambda!348027)))

(assert (=> d!1989111 (= (generalisedConcat!1836 (exprs!6123 (h!71341 zl!343))) lt!2361685)))

(declare-fun b!6337462 () Bool)

(assert (=> b!6337462 (= e!3849595 EmptyExpr!16239)))

(declare-fun b!6337463 () Bool)

(assert (=> b!6337463 (= e!3849601 (h!71340 (exprs!6123 (h!71341 zl!343))))))

(declare-fun b!6337464 () Bool)

(assert (=> b!6337464 (= e!3849598 e!3849596)))

(declare-fun c!1152045 () Bool)

(assert (=> b!6337464 (= c!1152045 (isEmpty!36969 (tail!12058 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6337465 () Bool)

(assert (=> b!6337465 (= e!3849598 (isEmptyExpr!1642 lt!2361685))))

(declare-fun b!6337466 () Bool)

(assert (=> b!6337466 (= e!3849595 (Concat!25084 (h!71340 (exprs!6123 (h!71341 zl!343))) (generalisedConcat!1836 (t!378600 (exprs!6123 (h!71341 zl!343))))))))

(declare-fun b!6337467 () Bool)

(assert (=> b!6337467 (= e!3849596 (isConcat!1165 lt!2361685))))

(assert (= (and d!1989111 res!2608111) b!6337461))

(assert (= (and d!1989111 c!1152048) b!6337463))

(assert (= (and d!1989111 (not c!1152048)) b!6337460))

(assert (= (and b!6337460 c!1152047) b!6337466))

(assert (= (and b!6337460 (not c!1152047)) b!6337462))

(assert (= (and d!1989111 res!2608112) b!6337457))

(assert (= (and b!6337457 c!1152046) b!6337465))

(assert (= (and b!6337457 (not c!1152046)) b!6337464))

(assert (= (and b!6337464 c!1152045) b!6337456))

(assert (= (and b!6337464 (not c!1152045)) b!6337467))

(declare-fun m!7146602 () Bool)

(assert (=> b!6337465 m!7146602))

(assert (=> b!6337461 m!7146120))

(declare-fun m!7146604 () Bool)

(assert (=> d!1989111 m!7146604))

(declare-fun m!7146606 () Bool)

(assert (=> d!1989111 m!7146606))

(declare-fun m!7146608 () Bool)

(assert (=> b!6337456 m!7146608))

(declare-fun m!7146610 () Bool)

(assert (=> b!6337457 m!7146610))

(declare-fun m!7146612 () Bool)

(assert (=> b!6337467 m!7146612))

(declare-fun m!7146614 () Bool)

(assert (=> b!6337464 m!7146614))

(assert (=> b!6337464 m!7146614))

(declare-fun m!7146616 () Bool)

(assert (=> b!6337464 m!7146616))

(declare-fun m!7146618 () Bool)

(assert (=> b!6337466 m!7146618))

(assert (=> b!6336831 d!1989111))

(declare-fun d!1989113 () Bool)

(declare-fun lt!2361686 () Regex!16239)

(assert (=> d!1989113 (validRegex!7975 lt!2361686)))

(assert (=> d!1989113 (= lt!2361686 (generalisedUnion!2083 (unfocusZipperList!1660 lt!2361561)))))

(assert (=> d!1989113 (= (unfocusZipper!1981 lt!2361561) lt!2361686)))

(declare-fun bs!1586705 () Bool)

(assert (= bs!1586705 d!1989113))

(declare-fun m!7146620 () Bool)

(assert (=> bs!1586705 m!7146620))

(declare-fun m!7146622 () Bool)

(assert (=> bs!1586705 m!7146622))

(assert (=> bs!1586705 m!7146622))

(declare-fun m!7146624 () Bool)

(assert (=> bs!1586705 m!7146624))

(assert (=> b!6336833 d!1989113))

(declare-fun b!6337564 () Bool)

(declare-fun res!2608131 () Bool)

(declare-fun e!3849651 () Bool)

(assert (=> b!6337564 (=> (not res!2608131) (not e!3849651))))

(declare-fun lt!2361697 () Option!16130)

(declare-fun get!22445 (Option!16130) tuple2!66436)

(assert (=> b!6337564 (= res!2608131 (matchR!8422 (regOne!32990 r!7292) (_1!36521 (get!22445 lt!2361697))))))

(declare-fun b!6337565 () Bool)

(declare-fun e!3849649 () Option!16130)

(assert (=> b!6337565 (= e!3849649 (Some!16129 (tuple2!66437 Nil!64894 s!2326)))))

(declare-fun b!6337566 () Bool)

(declare-fun e!3849648 () Bool)

(assert (=> b!6337566 (= e!3849648 (not (isDefined!12833 lt!2361697)))))

(declare-fun b!6337567 () Bool)

(declare-fun ++!14310 (List!65018 List!65018) List!65018)

(assert (=> b!6337567 (= e!3849651 (= (++!14310 (_1!36521 (get!22445 lt!2361697)) (_2!36521 (get!22445 lt!2361697))) s!2326))))

(declare-fun b!6337568 () Bool)

(declare-fun e!3849650 () Bool)

(assert (=> b!6337568 (= e!3849650 (matchR!8422 (regTwo!32990 r!7292) s!2326))))

(declare-fun b!6337569 () Bool)

(declare-fun e!3849652 () Option!16130)

(assert (=> b!6337569 (= e!3849652 None!16129)))

(declare-fun b!6337570 () Bool)

(assert (=> b!6337570 (= e!3849649 e!3849652)))

(declare-fun c!1152064 () Bool)

(assert (=> b!6337570 (= c!1152064 ((_ is Nil!64894) s!2326))))

(declare-fun b!6337571 () Bool)

(declare-fun res!2608129 () Bool)

(assert (=> b!6337571 (=> (not res!2608129) (not e!3849651))))

(assert (=> b!6337571 (= res!2608129 (matchR!8422 (regTwo!32990 r!7292) (_2!36521 (get!22445 lt!2361697))))))

(declare-fun d!1989115 () Bool)

(assert (=> d!1989115 e!3849648))

(declare-fun res!2608127 () Bool)

(assert (=> d!1989115 (=> res!2608127 e!3849648)))

(assert (=> d!1989115 (= res!2608127 e!3849651)))

(declare-fun res!2608128 () Bool)

(assert (=> d!1989115 (=> (not res!2608128) (not e!3849651))))

(assert (=> d!1989115 (= res!2608128 (isDefined!12833 lt!2361697))))

(assert (=> d!1989115 (= lt!2361697 e!3849649)))

(declare-fun c!1152065 () Bool)

(assert (=> d!1989115 (= c!1152065 e!3849650)))

(declare-fun res!2608130 () Bool)

(assert (=> d!1989115 (=> (not res!2608130) (not e!3849650))))

(assert (=> d!1989115 (= res!2608130 (matchR!8422 (regOne!32990 r!7292) Nil!64894))))

(assert (=> d!1989115 (validRegex!7975 (regOne!32990 r!7292))))

(assert (=> d!1989115 (= (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) Nil!64894 s!2326 s!2326) lt!2361697)))

(declare-fun b!6337572 () Bool)

(declare-fun lt!2361699 () Unit!158287)

(declare-fun lt!2361698 () Unit!158287)

(assert (=> b!6337572 (= lt!2361699 lt!2361698)))

(assert (=> b!6337572 (= (++!14310 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) (t!378602 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2405 (List!65018 C!32748 List!65018 List!65018) Unit!158287)

(assert (=> b!6337572 (= lt!2361698 (lemmaMoveElementToOtherListKeepsConcatEq!2405 Nil!64894 (h!71342 s!2326) (t!378602 s!2326) s!2326))))

(assert (=> b!6337572 (= e!3849652 (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) (t!378602 s!2326) s!2326))))

(assert (= (and d!1989115 res!2608130) b!6337568))

(assert (= (and d!1989115 c!1152065) b!6337565))

(assert (= (and d!1989115 (not c!1152065)) b!6337570))

(assert (= (and b!6337570 c!1152064) b!6337569))

(assert (= (and b!6337570 (not c!1152064)) b!6337572))

(assert (= (and d!1989115 res!2608128) b!6337564))

(assert (= (and b!6337564 res!2608131) b!6337571))

(assert (= (and b!6337571 res!2608129) b!6337567))

(assert (= (and d!1989115 (not res!2608127)) b!6337566))

(declare-fun m!7146654 () Bool)

(assert (=> b!6337571 m!7146654))

(declare-fun m!7146656 () Bool)

(assert (=> b!6337571 m!7146656))

(declare-fun m!7146658 () Bool)

(assert (=> b!6337568 m!7146658))

(assert (=> b!6337567 m!7146654))

(declare-fun m!7146660 () Bool)

(assert (=> b!6337567 m!7146660))

(declare-fun m!7146662 () Bool)

(assert (=> b!6337566 m!7146662))

(assert (=> b!6337564 m!7146654))

(declare-fun m!7146664 () Bool)

(assert (=> b!6337564 m!7146664))

(assert (=> d!1989115 m!7146662))

(declare-fun m!7146666 () Bool)

(assert (=> d!1989115 m!7146666))

(declare-fun m!7146668 () Bool)

(assert (=> d!1989115 m!7146668))

(declare-fun m!7146670 () Bool)

(assert (=> b!6337572 m!7146670))

(assert (=> b!6337572 m!7146670))

(declare-fun m!7146672 () Bool)

(assert (=> b!6337572 m!7146672))

(declare-fun m!7146674 () Bool)

(assert (=> b!6337572 m!7146674))

(assert (=> b!6337572 m!7146670))

(declare-fun m!7146676 () Bool)

(assert (=> b!6337572 m!7146676))

(assert (=> b!6336813 d!1989115))

(declare-fun d!1989123 () Bool)

(declare-fun choose!46982 (Int) Bool)

(assert (=> d!1989123 (= (Exists!3309 lambda!347957) (choose!46982 lambda!347957))))

(declare-fun bs!1586717 () Bool)

(assert (= bs!1586717 d!1989123))

(declare-fun m!7146678 () Bool)

(assert (=> bs!1586717 m!7146678))

(assert (=> b!6336813 d!1989123))

(declare-fun d!1989125 () Bool)

(assert (=> d!1989125 (= (Exists!3309 lambda!347958) (choose!46982 lambda!347958))))

(declare-fun bs!1586718 () Bool)

(assert (= bs!1586718 d!1989125))

(declare-fun m!7146680 () Bool)

(assert (=> bs!1586718 m!7146680))

(assert (=> b!6336813 d!1989125))

(declare-fun bs!1586719 () Bool)

(declare-fun d!1989127 () Bool)

(assert (= bs!1586719 (and d!1989127 b!6336813)))

(declare-fun lambda!348034 () Int)

(assert (=> bs!1586719 (= lambda!348034 lambda!347957)))

(assert (=> bs!1586719 (not (= lambda!348034 lambda!347958))))

(declare-fun bs!1586720 () Bool)

(assert (= bs!1586720 (and d!1989127 b!6337341)))

(assert (=> bs!1586720 (not (= lambda!348034 lambda!348021))))

(declare-fun bs!1586721 () Bool)

(assert (= bs!1586721 (and d!1989127 b!6337339)))

(assert (=> bs!1586721 (not (= lambda!348034 lambda!348022))))

(assert (=> d!1989127 true))

(assert (=> d!1989127 true))

(assert (=> d!1989127 true))

(assert (=> d!1989127 (= (isDefined!12833 (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) Nil!64894 s!2326 s!2326)) (Exists!3309 lambda!348034))))

(declare-fun lt!2361702 () Unit!158287)

(declare-fun choose!46983 (Regex!16239 Regex!16239 List!65018) Unit!158287)

(assert (=> d!1989127 (= lt!2361702 (choose!46983 (regOne!32990 r!7292) (regTwo!32990 r!7292) s!2326))))

(assert (=> d!1989127 (validRegex!7975 (regOne!32990 r!7292))))

(assert (=> d!1989127 (= (lemmaFindConcatSeparationEquivalentToExists!2308 (regOne!32990 r!7292) (regTwo!32990 r!7292) s!2326) lt!2361702)))

(declare-fun bs!1586722 () Bool)

(assert (= bs!1586722 d!1989127))

(assert (=> bs!1586722 m!7146110))

(declare-fun m!7146682 () Bool)

(assert (=> bs!1586722 m!7146682))

(declare-fun m!7146684 () Bool)

(assert (=> bs!1586722 m!7146684))

(assert (=> bs!1586722 m!7146110))

(assert (=> bs!1586722 m!7146112))

(assert (=> bs!1586722 m!7146668))

(assert (=> b!6336813 d!1989127))

(declare-fun bs!1586723 () Bool)

(declare-fun d!1989129 () Bool)

(assert (= bs!1586723 (and d!1989129 d!1989127)))

(declare-fun lambda!348039 () Int)

(assert (=> bs!1586723 (= lambda!348039 lambda!348034)))

(declare-fun bs!1586724 () Bool)

(assert (= bs!1586724 (and d!1989129 b!6336813)))

(assert (=> bs!1586724 (not (= lambda!348039 lambda!347958))))

(declare-fun bs!1586725 () Bool)

(assert (= bs!1586725 (and d!1989129 b!6337339)))

(assert (=> bs!1586725 (not (= lambda!348039 lambda!348022))))

(declare-fun bs!1586726 () Bool)

(assert (= bs!1586726 (and d!1989129 b!6337341)))

(assert (=> bs!1586726 (not (= lambda!348039 lambda!348021))))

(assert (=> bs!1586724 (= lambda!348039 lambda!347957)))

(assert (=> d!1989129 true))

(assert (=> d!1989129 true))

(assert (=> d!1989129 true))

(declare-fun lambda!348040 () Int)

(assert (=> bs!1586723 (not (= lambda!348040 lambda!348034))))

(assert (=> bs!1586725 (= lambda!348040 lambda!348022)))

(declare-fun bs!1586727 () Bool)

(assert (= bs!1586727 d!1989129))

(assert (=> bs!1586727 (not (= lambda!348040 lambda!348039))))

(assert (=> bs!1586724 (= lambda!348040 lambda!347958)))

(assert (=> bs!1586726 (not (= lambda!348040 lambda!348021))))

(assert (=> bs!1586724 (not (= lambda!348040 lambda!347957))))

(assert (=> d!1989129 true))

(assert (=> d!1989129 true))

(assert (=> d!1989129 true))

(assert (=> d!1989129 (= (Exists!3309 lambda!348039) (Exists!3309 lambda!348040))))

(declare-fun lt!2361705 () Unit!158287)

(declare-fun choose!46984 (Regex!16239 Regex!16239 List!65018) Unit!158287)

(assert (=> d!1989129 (= lt!2361705 (choose!46984 (regOne!32990 r!7292) (regTwo!32990 r!7292) s!2326))))

(assert (=> d!1989129 (validRegex!7975 (regOne!32990 r!7292))))

(assert (=> d!1989129 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1846 (regOne!32990 r!7292) (regTwo!32990 r!7292) s!2326) lt!2361705)))

(declare-fun m!7146686 () Bool)

(assert (=> bs!1586727 m!7146686))

(declare-fun m!7146688 () Bool)

(assert (=> bs!1586727 m!7146688))

(declare-fun m!7146690 () Bool)

(assert (=> bs!1586727 m!7146690))

(assert (=> bs!1586727 m!7146668))

(assert (=> b!6336813 d!1989129))

(declare-fun d!1989131 () Bool)

(declare-fun isEmpty!36974 (Option!16130) Bool)

(assert (=> d!1989131 (= (isDefined!12833 (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) Nil!64894 s!2326 s!2326)) (not (isEmpty!36974 (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) Nil!64894 s!2326 s!2326))))))

(declare-fun bs!1586728 () Bool)

(assert (= bs!1586728 d!1989131))

(assert (=> bs!1586728 m!7146110))

(declare-fun m!7146692 () Bool)

(assert (=> bs!1586728 m!7146692))

(assert (=> b!6336813 d!1989131))

(declare-fun e!3849661 () Bool)

(declare-fun d!1989133 () Bool)

(assert (=> d!1989133 (= (matchZipper!2251 ((_ map or) lt!2361560 lt!2361577) (t!378602 s!2326)) e!3849661)))

(declare-fun res!2608146 () Bool)

(assert (=> d!1989133 (=> res!2608146 e!3849661)))

(assert (=> d!1989133 (= res!2608146 (matchZipper!2251 lt!2361560 (t!378602 s!2326)))))

(declare-fun lt!2361708 () Unit!158287)

(declare-fun choose!46985 ((InoxSet Context!11246) (InoxSet Context!11246) List!65018) Unit!158287)

(assert (=> d!1989133 (= lt!2361708 (choose!46985 lt!2361560 lt!2361577 (t!378602 s!2326)))))

(assert (=> d!1989133 (= (lemmaZipperConcatMatchesSameAsBothZippers!1070 lt!2361560 lt!2361577 (t!378602 s!2326)) lt!2361708)))

(declare-fun b!6337587 () Bool)

(assert (=> b!6337587 (= e!3849661 (matchZipper!2251 lt!2361577 (t!378602 s!2326)))))

(assert (= (and d!1989133 (not res!2608146)) b!6337587))

(assert (=> d!1989133 m!7146086))

(assert (=> d!1989133 m!7146040))

(declare-fun m!7146694 () Bool)

(assert (=> d!1989133 m!7146694))

(assert (=> b!6337587 m!7146090))

(assert (=> b!6336832 d!1989133))

(assert (=> b!6336832 d!1989053))

(declare-fun d!1989135 () Bool)

(declare-fun c!1152066 () Bool)

(assert (=> d!1989135 (= c!1152066 (isEmpty!36973 (t!378602 s!2326)))))

(declare-fun e!3849662 () Bool)

(assert (=> d!1989135 (= (matchZipper!2251 ((_ map or) lt!2361560 lt!2361577) (t!378602 s!2326)) e!3849662)))

(declare-fun b!6337588 () Bool)

(assert (=> b!6337588 (= e!3849662 (nullableZipper!2007 ((_ map or) lt!2361560 lt!2361577)))))

(declare-fun b!6337589 () Bool)

(assert (=> b!6337589 (= e!3849662 (matchZipper!2251 (derivationStepZipper!2205 ((_ map or) lt!2361560 lt!2361577) (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))))))

(assert (= (and d!1989135 c!1152066) b!6337588))

(assert (= (and d!1989135 (not c!1152066)) b!6337589))

(assert (=> d!1989135 m!7146438))

(declare-fun m!7146696 () Bool)

(assert (=> b!6337588 m!7146696))

(assert (=> b!6337589 m!7146442))

(assert (=> b!6337589 m!7146442))

(declare-fun m!7146698 () Bool)

(assert (=> b!6337589 m!7146698))

(assert (=> b!6337589 m!7146446))

(assert (=> b!6337589 m!7146698))

(assert (=> b!6337589 m!7146446))

(declare-fun m!7146700 () Bool)

(assert (=> b!6337589 m!7146700))

(assert (=> b!6336832 d!1989135))

(declare-fun d!1989137 () Bool)

(declare-fun lt!2361711 () Int)

(assert (=> d!1989137 (>= lt!2361711 0)))

(declare-fun e!3849665 () Int)

(assert (=> d!1989137 (= lt!2361711 e!3849665)))

(declare-fun c!1152070 () Bool)

(assert (=> d!1989137 (= c!1152070 ((_ is Cons!64892) (exprs!6123 lt!2361567)))))

(assert (=> d!1989137 (= (contextDepthTotal!348 lt!2361567) lt!2361711)))

(declare-fun b!6337594 () Bool)

(declare-fun regexDepthTotal!199 (Regex!16239) Int)

(assert (=> b!6337594 (= e!3849665 (+ (regexDepthTotal!199 (h!71340 (exprs!6123 lt!2361567))) (contextDepthTotal!348 (Context!11247 (t!378600 (exprs!6123 lt!2361567))))))))

(declare-fun b!6337595 () Bool)

(assert (=> b!6337595 (= e!3849665 1)))

(assert (= (and d!1989137 c!1152070) b!6337594))

(assert (= (and d!1989137 (not c!1152070)) b!6337595))

(declare-fun m!7146702 () Bool)

(assert (=> b!6337594 m!7146702))

(declare-fun m!7146704 () Bool)

(assert (=> b!6337594 m!7146704))

(assert (=> b!6336834 d!1989137))

(declare-fun d!1989139 () Bool)

(declare-fun lt!2361712 () Int)

(assert (=> d!1989139 (>= lt!2361712 0)))

(declare-fun e!3849666 () Int)

(assert (=> d!1989139 (= lt!2361712 e!3849666)))

(declare-fun c!1152071 () Bool)

(assert (=> d!1989139 (= c!1152071 ((_ is Cons!64892) (exprs!6123 (h!71341 zl!343))))))

(assert (=> d!1989139 (= (contextDepthTotal!348 (h!71341 zl!343)) lt!2361712)))

(declare-fun b!6337596 () Bool)

(assert (=> b!6337596 (= e!3849666 (+ (regexDepthTotal!199 (h!71340 (exprs!6123 (h!71341 zl!343)))) (contextDepthTotal!348 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun b!6337597 () Bool)

(assert (=> b!6337597 (= e!3849666 1)))

(assert (= (and d!1989139 c!1152071) b!6337596))

(assert (= (and d!1989139 (not c!1152071)) b!6337597))

(declare-fun m!7146706 () Bool)

(assert (=> b!6337596 m!7146706))

(declare-fun m!7146708 () Bool)

(assert (=> b!6337596 m!7146708))

(assert (=> b!6336834 d!1989139))

(declare-fun d!1989141 () Bool)

(assert (=> d!1989141 (= (isEmpty!36969 (t!378600 (exprs!6123 (h!71341 zl!343)))) ((_ is Nil!64892) (t!378600 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> b!6336814 d!1989141))

(declare-fun bs!1586729 () Bool)

(declare-fun d!1989143 () Bool)

(assert (= bs!1586729 (and d!1989143 d!1988975)))

(declare-fun lambda!348041 () Int)

(assert (=> bs!1586729 (= lambda!348041 lambda!347980)))

(declare-fun bs!1586730 () Bool)

(assert (= bs!1586730 (and d!1989143 d!1989029)))

(assert (=> bs!1586730 (= lambda!348041 lambda!348004)))

(declare-fun bs!1586731 () Bool)

(assert (= bs!1586731 (and d!1989143 d!1989111)))

(assert (=> bs!1586731 (= lambda!348041 lambda!348027)))

(assert (=> d!1989143 (= (inv!83844 setElem!43114) (forall!15393 (exprs!6123 setElem!43114) lambda!348041))))

(declare-fun bs!1586732 () Bool)

(assert (= bs!1586732 d!1989143))

(declare-fun m!7146710 () Bool)

(assert (=> bs!1586732 m!7146710))

(assert (=> setNonEmpty!43114 d!1989143))

(declare-fun bs!1586733 () Bool)

(declare-fun d!1989145 () Bool)

(assert (= bs!1586733 (and d!1989145 d!1988975)))

(declare-fun lambda!348044 () Int)

(assert (=> bs!1586733 (= lambda!348044 lambda!347980)))

(declare-fun bs!1586734 () Bool)

(assert (= bs!1586734 (and d!1989145 d!1989029)))

(assert (=> bs!1586734 (= lambda!348044 lambda!348004)))

(declare-fun bs!1586735 () Bool)

(assert (= bs!1586735 (and d!1989145 d!1989111)))

(assert (=> bs!1586735 (= lambda!348044 lambda!348027)))

(declare-fun bs!1586736 () Bool)

(assert (= bs!1586736 (and d!1989145 d!1989143)))

(assert (=> bs!1586736 (= lambda!348044 lambda!348041)))

(declare-fun b!6337618 () Bool)

(declare-fun e!3849684 () Bool)

(declare-fun lt!2361715 () Regex!16239)

(assert (=> b!6337618 (= e!3849684 (= lt!2361715 (head!12973 (unfocusZipperList!1660 zl!343))))))

(declare-fun b!6337619 () Bool)

(declare-fun e!3849682 () Bool)

(assert (=> b!6337619 (= e!3849682 (isEmpty!36969 (t!378600 (unfocusZipperList!1660 zl!343))))))

(declare-fun b!6337620 () Bool)

(declare-fun isUnion!1080 (Regex!16239) Bool)

(assert (=> b!6337620 (= e!3849684 (isUnion!1080 lt!2361715))))

(declare-fun b!6337621 () Bool)

(declare-fun e!3849681 () Regex!16239)

(assert (=> b!6337621 (= e!3849681 (h!71340 (unfocusZipperList!1660 zl!343)))))

(declare-fun b!6337622 () Bool)

(declare-fun e!3849679 () Bool)

(declare-fun isEmptyLang!1650 (Regex!16239) Bool)

(assert (=> b!6337622 (= e!3849679 (isEmptyLang!1650 lt!2361715))))

(declare-fun b!6337623 () Bool)

(declare-fun e!3849680 () Bool)

(assert (=> b!6337623 (= e!3849680 e!3849679)))

(declare-fun c!1152080 () Bool)

(assert (=> b!6337623 (= c!1152080 (isEmpty!36969 (unfocusZipperList!1660 zl!343)))))

(declare-fun b!6337624 () Bool)

(declare-fun e!3849683 () Regex!16239)

(assert (=> b!6337624 (= e!3849681 e!3849683)))

(declare-fun c!1152082 () Bool)

(assert (=> b!6337624 (= c!1152082 ((_ is Cons!64892) (unfocusZipperList!1660 zl!343)))))

(assert (=> d!1989145 e!3849680))

(declare-fun res!2608151 () Bool)

(assert (=> d!1989145 (=> (not res!2608151) (not e!3849680))))

(assert (=> d!1989145 (= res!2608151 (validRegex!7975 lt!2361715))))

(assert (=> d!1989145 (= lt!2361715 e!3849681)))

(declare-fun c!1152083 () Bool)

(assert (=> d!1989145 (= c!1152083 e!3849682)))

(declare-fun res!2608152 () Bool)

(assert (=> d!1989145 (=> (not res!2608152) (not e!3849682))))

(assert (=> d!1989145 (= res!2608152 ((_ is Cons!64892) (unfocusZipperList!1660 zl!343)))))

(assert (=> d!1989145 (forall!15393 (unfocusZipperList!1660 zl!343) lambda!348044)))

(assert (=> d!1989145 (= (generalisedUnion!2083 (unfocusZipperList!1660 zl!343)) lt!2361715)))

(declare-fun b!6337625 () Bool)

(assert (=> b!6337625 (= e!3849683 EmptyLang!16239)))

(declare-fun b!6337626 () Bool)

(assert (=> b!6337626 (= e!3849679 e!3849684)))

(declare-fun c!1152081 () Bool)

(assert (=> b!6337626 (= c!1152081 (isEmpty!36969 (tail!12058 (unfocusZipperList!1660 zl!343))))))

(declare-fun b!6337627 () Bool)

(assert (=> b!6337627 (= e!3849683 (Union!16239 (h!71340 (unfocusZipperList!1660 zl!343)) (generalisedUnion!2083 (t!378600 (unfocusZipperList!1660 zl!343)))))))

(assert (= (and d!1989145 res!2608152) b!6337619))

(assert (= (and d!1989145 c!1152083) b!6337621))

(assert (= (and d!1989145 (not c!1152083)) b!6337624))

(assert (= (and b!6337624 c!1152082) b!6337627))

(assert (= (and b!6337624 (not c!1152082)) b!6337625))

(assert (= (and d!1989145 res!2608151) b!6337623))

(assert (= (and b!6337623 c!1152080) b!6337622))

(assert (= (and b!6337623 (not c!1152080)) b!6337626))

(assert (= (and b!6337626 c!1152081) b!6337618))

(assert (= (and b!6337626 (not c!1152081)) b!6337620))

(declare-fun m!7146712 () Bool)

(assert (=> b!6337619 m!7146712))

(declare-fun m!7146714 () Bool)

(assert (=> b!6337627 m!7146714))

(declare-fun m!7146716 () Bool)

(assert (=> b!6337620 m!7146716))

(assert (=> b!6337618 m!7146056))

(declare-fun m!7146718 () Bool)

(assert (=> b!6337618 m!7146718))

(assert (=> b!6337626 m!7146056))

(declare-fun m!7146720 () Bool)

(assert (=> b!6337626 m!7146720))

(assert (=> b!6337626 m!7146720))

(declare-fun m!7146722 () Bool)

(assert (=> b!6337626 m!7146722))

(assert (=> b!6337623 m!7146056))

(declare-fun m!7146724 () Bool)

(assert (=> b!6337623 m!7146724))

(declare-fun m!7146726 () Bool)

(assert (=> d!1989145 m!7146726))

(assert (=> d!1989145 m!7146056))

(declare-fun m!7146728 () Bool)

(assert (=> d!1989145 m!7146728))

(declare-fun m!7146730 () Bool)

(assert (=> b!6337622 m!7146730))

(assert (=> b!6336835 d!1989145))

(declare-fun bs!1586737 () Bool)

(declare-fun d!1989147 () Bool)

(assert (= bs!1586737 (and d!1989147 d!1989111)))

(declare-fun lambda!348047 () Int)

(assert (=> bs!1586737 (= lambda!348047 lambda!348027)))

(declare-fun bs!1586738 () Bool)

(assert (= bs!1586738 (and d!1989147 d!1989145)))

(assert (=> bs!1586738 (= lambda!348047 lambda!348044)))

(declare-fun bs!1586739 () Bool)

(assert (= bs!1586739 (and d!1989147 d!1989029)))

(assert (=> bs!1586739 (= lambda!348047 lambda!348004)))

(declare-fun bs!1586740 () Bool)

(assert (= bs!1586740 (and d!1989147 d!1988975)))

(assert (=> bs!1586740 (= lambda!348047 lambda!347980)))

(declare-fun bs!1586741 () Bool)

(assert (= bs!1586741 (and d!1989147 d!1989143)))

(assert (=> bs!1586741 (= lambda!348047 lambda!348041)))

(declare-fun lt!2361718 () List!65016)

(assert (=> d!1989147 (forall!15393 lt!2361718 lambda!348047)))

(declare-fun e!3849687 () List!65016)

(assert (=> d!1989147 (= lt!2361718 e!3849687)))

(declare-fun c!1152086 () Bool)

(assert (=> d!1989147 (= c!1152086 ((_ is Cons!64893) zl!343))))

(assert (=> d!1989147 (= (unfocusZipperList!1660 zl!343) lt!2361718)))

(declare-fun b!6337632 () Bool)

(assert (=> b!6337632 (= e!3849687 (Cons!64892 (generalisedConcat!1836 (exprs!6123 (h!71341 zl!343))) (unfocusZipperList!1660 (t!378601 zl!343))))))

(declare-fun b!6337633 () Bool)

(assert (=> b!6337633 (= e!3849687 Nil!64892)))

(assert (= (and d!1989147 c!1152086) b!6337632))

(assert (= (and d!1989147 (not c!1152086)) b!6337633))

(declare-fun m!7146732 () Bool)

(assert (=> d!1989147 m!7146732))

(assert (=> b!6337632 m!7146100))

(declare-fun m!7146734 () Bool)

(assert (=> b!6337632 m!7146734))

(assert (=> b!6336835 d!1989147))

(declare-fun b!6337645 () Bool)

(declare-fun e!3849690 () Bool)

(declare-fun tp!1767631 () Bool)

(declare-fun tp!1767629 () Bool)

(assert (=> b!6337645 (= e!3849690 (and tp!1767631 tp!1767629))))

(assert (=> b!6336816 (= tp!1767556 e!3849690)))

(declare-fun b!6337647 () Bool)

(declare-fun tp!1767630 () Bool)

(declare-fun tp!1767627 () Bool)

(assert (=> b!6337647 (= e!3849690 (and tp!1767630 tp!1767627))))

(declare-fun b!6337646 () Bool)

(declare-fun tp!1767628 () Bool)

(assert (=> b!6337646 (= e!3849690 tp!1767628)))

(declare-fun b!6337644 () Bool)

(assert (=> b!6337644 (= e!3849690 tp_is_empty!41731)))

(assert (= (and b!6336816 ((_ is ElementMatch!16239) (regOne!32991 r!7292))) b!6337644))

(assert (= (and b!6336816 ((_ is Concat!25084) (regOne!32991 r!7292))) b!6337645))

(assert (= (and b!6336816 ((_ is Star!16239) (regOne!32991 r!7292))) b!6337646))

(assert (= (and b!6336816 ((_ is Union!16239) (regOne!32991 r!7292))) b!6337647))

(declare-fun b!6337649 () Bool)

(declare-fun e!3849691 () Bool)

(declare-fun tp!1767636 () Bool)

(declare-fun tp!1767634 () Bool)

(assert (=> b!6337649 (= e!3849691 (and tp!1767636 tp!1767634))))

(assert (=> b!6336816 (= tp!1767557 e!3849691)))

(declare-fun b!6337651 () Bool)

(declare-fun tp!1767635 () Bool)

(declare-fun tp!1767632 () Bool)

(assert (=> b!6337651 (= e!3849691 (and tp!1767635 tp!1767632))))

(declare-fun b!6337650 () Bool)

(declare-fun tp!1767633 () Bool)

(assert (=> b!6337650 (= e!3849691 tp!1767633)))

(declare-fun b!6337648 () Bool)

(assert (=> b!6337648 (= e!3849691 tp_is_empty!41731)))

(assert (= (and b!6336816 ((_ is ElementMatch!16239) (regTwo!32991 r!7292))) b!6337648))

(assert (= (and b!6336816 ((_ is Concat!25084) (regTwo!32991 r!7292))) b!6337649))

(assert (= (and b!6336816 ((_ is Star!16239) (regTwo!32991 r!7292))) b!6337650))

(assert (= (and b!6336816 ((_ is Union!16239) (regTwo!32991 r!7292))) b!6337651))

(declare-fun b!6337659 () Bool)

(declare-fun e!3849697 () Bool)

(declare-fun tp!1767641 () Bool)

(assert (=> b!6337659 (= e!3849697 tp!1767641)))

(declare-fun e!3849696 () Bool)

(declare-fun tp!1767642 () Bool)

(declare-fun b!6337658 () Bool)

(assert (=> b!6337658 (= e!3849696 (and (inv!83844 (h!71341 (t!378601 zl!343))) e!3849697 tp!1767642))))

(assert (=> b!6336820 (= tp!1767549 e!3849696)))

(assert (= b!6337658 b!6337659))

(assert (= (and b!6336820 ((_ is Cons!64893) (t!378601 zl!343))) b!6337658))

(declare-fun m!7146736 () Bool)

(assert (=> b!6337658 m!7146736))

(declare-fun b!6337664 () Bool)

(declare-fun e!3849700 () Bool)

(declare-fun tp!1767647 () Bool)

(declare-fun tp!1767648 () Bool)

(assert (=> b!6337664 (= e!3849700 (and tp!1767647 tp!1767648))))

(assert (=> b!6336822 (= tp!1767552 e!3849700)))

(assert (= (and b!6336822 ((_ is Cons!64892) (exprs!6123 setElem!43114))) b!6337664))

(declare-fun b!6337665 () Bool)

(declare-fun e!3849701 () Bool)

(declare-fun tp!1767649 () Bool)

(declare-fun tp!1767650 () Bool)

(assert (=> b!6337665 (= e!3849701 (and tp!1767649 tp!1767650))))

(assert (=> b!6336829 (= tp!1767554 e!3849701)))

(assert (= (and b!6336829 ((_ is Cons!64892) (exprs!6123 (h!71341 zl!343)))) b!6337665))

(declare-fun b!6337667 () Bool)

(declare-fun e!3849702 () Bool)

(declare-fun tp!1767655 () Bool)

(declare-fun tp!1767653 () Bool)

(assert (=> b!6337667 (= e!3849702 (and tp!1767655 tp!1767653))))

(assert (=> b!6336839 (= tp!1767551 e!3849702)))

(declare-fun b!6337669 () Bool)

(declare-fun tp!1767654 () Bool)

(declare-fun tp!1767651 () Bool)

(assert (=> b!6337669 (= e!3849702 (and tp!1767654 tp!1767651))))

(declare-fun b!6337668 () Bool)

(declare-fun tp!1767652 () Bool)

(assert (=> b!6337668 (= e!3849702 tp!1767652)))

(declare-fun b!6337666 () Bool)

(assert (=> b!6337666 (= e!3849702 tp_is_empty!41731)))

(assert (= (and b!6336839 ((_ is ElementMatch!16239) (reg!16568 r!7292))) b!6337666))

(assert (= (and b!6336839 ((_ is Concat!25084) (reg!16568 r!7292))) b!6337667))

(assert (= (and b!6336839 ((_ is Star!16239) (reg!16568 r!7292))) b!6337668))

(assert (= (and b!6336839 ((_ is Union!16239) (reg!16568 r!7292))) b!6337669))

(declare-fun condSetEmpty!43120 () Bool)

(assert (=> setNonEmpty!43114 (= condSetEmpty!43120 (= setRest!43114 ((as const (Array Context!11246 Bool)) false)))))

(declare-fun setRes!43120 () Bool)

(assert (=> setNonEmpty!43114 (= tp!1767558 setRes!43120)))

(declare-fun setIsEmpty!43120 () Bool)

(assert (=> setIsEmpty!43120 setRes!43120))

(declare-fun setElem!43120 () Context!11246)

(declare-fun e!3849705 () Bool)

(declare-fun setNonEmpty!43120 () Bool)

(declare-fun tp!1767661 () Bool)

(assert (=> setNonEmpty!43120 (= setRes!43120 (and tp!1767661 (inv!83844 setElem!43120) e!3849705))))

(declare-fun setRest!43120 () (InoxSet Context!11246))

(assert (=> setNonEmpty!43120 (= setRest!43114 ((_ map or) (store ((as const (Array Context!11246 Bool)) false) setElem!43120 true) setRest!43120))))

(declare-fun b!6337674 () Bool)

(declare-fun tp!1767660 () Bool)

(assert (=> b!6337674 (= e!3849705 tp!1767660)))

(assert (= (and setNonEmpty!43114 condSetEmpty!43120) setIsEmpty!43120))

(assert (= (and setNonEmpty!43114 (not condSetEmpty!43120)) setNonEmpty!43120))

(assert (= setNonEmpty!43120 b!6337674))

(declare-fun m!7146738 () Bool)

(assert (=> setNonEmpty!43120 m!7146738))

(declare-fun b!6337676 () Bool)

(declare-fun e!3849706 () Bool)

(declare-fun tp!1767666 () Bool)

(declare-fun tp!1767664 () Bool)

(assert (=> b!6337676 (= e!3849706 (and tp!1767666 tp!1767664))))

(assert (=> b!6336830 (= tp!1767553 e!3849706)))

(declare-fun b!6337678 () Bool)

(declare-fun tp!1767665 () Bool)

(declare-fun tp!1767662 () Bool)

(assert (=> b!6337678 (= e!3849706 (and tp!1767665 tp!1767662))))

(declare-fun b!6337677 () Bool)

(declare-fun tp!1767663 () Bool)

(assert (=> b!6337677 (= e!3849706 tp!1767663)))

(declare-fun b!6337675 () Bool)

(assert (=> b!6337675 (= e!3849706 tp_is_empty!41731)))

(assert (= (and b!6336830 ((_ is ElementMatch!16239) (regOne!32990 r!7292))) b!6337675))

(assert (= (and b!6336830 ((_ is Concat!25084) (regOne!32990 r!7292))) b!6337676))

(assert (= (and b!6336830 ((_ is Star!16239) (regOne!32990 r!7292))) b!6337677))

(assert (= (and b!6336830 ((_ is Union!16239) (regOne!32990 r!7292))) b!6337678))

(declare-fun b!6337680 () Bool)

(declare-fun e!3849707 () Bool)

(declare-fun tp!1767671 () Bool)

(declare-fun tp!1767669 () Bool)

(assert (=> b!6337680 (= e!3849707 (and tp!1767671 tp!1767669))))

(assert (=> b!6336830 (= tp!1767550 e!3849707)))

(declare-fun b!6337682 () Bool)

(declare-fun tp!1767670 () Bool)

(declare-fun tp!1767667 () Bool)

(assert (=> b!6337682 (= e!3849707 (and tp!1767670 tp!1767667))))

(declare-fun b!6337681 () Bool)

(declare-fun tp!1767668 () Bool)

(assert (=> b!6337681 (= e!3849707 tp!1767668)))

(declare-fun b!6337679 () Bool)

(assert (=> b!6337679 (= e!3849707 tp_is_empty!41731)))

(assert (= (and b!6336830 ((_ is ElementMatch!16239) (regTwo!32990 r!7292))) b!6337679))

(assert (= (and b!6336830 ((_ is Concat!25084) (regTwo!32990 r!7292))) b!6337680))

(assert (= (and b!6336830 ((_ is Star!16239) (regTwo!32990 r!7292))) b!6337681))

(assert (= (and b!6336830 ((_ is Union!16239) (regTwo!32990 r!7292))) b!6337682))

(declare-fun b!6337687 () Bool)

(declare-fun e!3849710 () Bool)

(declare-fun tp!1767674 () Bool)

(assert (=> b!6337687 (= e!3849710 (and tp_is_empty!41731 tp!1767674))))

(assert (=> b!6336824 (= tp!1767555 e!3849710)))

(assert (= (and b!6336824 ((_ is Cons!64894) (t!378602 s!2326))) b!6337687))

(declare-fun b_lambda!241177 () Bool)

(assert (= b_lambda!241169 (or b!6336821 b_lambda!241177)))

(declare-fun bs!1586742 () Bool)

(declare-fun d!1989149 () Bool)

(assert (= bs!1586742 (and d!1989149 b!6336821)))

(assert (=> bs!1586742 (= (dynLambda!25715 lambda!347959 (h!71341 zl!343)) (derivationStepZipperUp!1413 (h!71341 zl!343) (h!71342 s!2326)))))

(assert (=> bs!1586742 m!7146066))

(assert (=> d!1989025 d!1989149))

(declare-fun b_lambda!241179 () Bool)

(assert (= b_lambda!241171 (or b!6336821 b_lambda!241179)))

(declare-fun bs!1586743 () Bool)

(declare-fun d!1989151 () Bool)

(assert (= bs!1586743 (and d!1989151 b!6336821)))

(assert (=> bs!1586743 (= (dynLambda!25715 lambda!347959 lt!2361567) (derivationStepZipperUp!1413 lt!2361567 (h!71342 s!2326)))))

(assert (=> bs!1586743 m!7146122))

(assert (=> d!1989035 d!1989151))

(check-sat (not d!1989035) (not b!6337665) (not b!6337213) (not b!6337650) (not bs!1586742) (not d!1989147) (not b!6337205) (not setNonEmpty!43120) (not b!6337288) (not d!1989125) (not d!1989115) (not d!1989123) (not b!6337069) (not b!6337627) (not d!1989143) (not b!6337677) tp_is_empty!41731 (not b!6337618) (not d!1989135) (not b!6337620) (not b!6337667) (not b!6337622) (not b!6337020) (not b!6337669) (not b!6337587) (not bm!539936) (not b!6337254) (not d!1989025) (not b_lambda!241179) (not b!6337139) (not b!6337061) (not b!6337287) (not b!6337619) (not d!1988983) (not b!6337651) (not d!1989049) (not b!6337114) (not b!6337632) (not b!6337285) (not bm!539924) (not b!6337217) (not d!1989103) (not b!6337678) (not b!6337564) (not b!6337649) (not b!6337568) (not b!6337659) (not b!6337465) (not b!6337466) (not b!6337457) (not b!6337645) (not bm!539880) (not b!6337682) (not bm!539938) (not d!1989083) (not b!6337664) (not b!6337572) (not bm!539939) (not b!6337668) (not b!6337589) (not b!6337596) (not b!6337464) (not b!6337456) (not b!6337646) (not b!6337407) (not b!6337064) (not bm!539950) (not d!1989111) (not b!6337647) (not b!6337396) (not b!6337332) (not d!1989133) (not bm!539932) (not b!6337461) (not bm!539911) (not d!1989051) (not b!6337676) (not b!6337261) (not b!6337062) (not b!6337680) (not b!6337068) (not b!6337594) (not b!6337588) (not b!6337289) (not b!6337137) (not d!1989127) (not d!1989069) (not b!6337571) (not b!6337236) (not b!6337658) (not d!1989011) (not bs!1586743) (not b!6337070) (not bm!539926) (not d!1989129) (not b!6337687) (not b!6337467) (not b!6337674) (not bm!539882) (not d!1989101) (not bm!539935) (not bm!539933) (not b!6337291) (not b!6337286) (not b!6337112) (not b!6337442) (not b!6337240) (not b!6337333) (not b!6337400) (not d!1989097) (not bm!539927) (not b!6337398) (not b!6337626) (not d!1989031) (not b!6337437) (not b!6337067) (not d!1989113) (not d!1988975) (not b_lambda!241177) (not bm!539931) (not b!6337290) (not b!6337623) (not b!6337566) (not b!6337250) (not b!6337269) (not bm!539946) (not b!6337444) (not b!6337401) (not bm!539930) (not d!1989055) (not d!1989131) (not d!1989145) (not b!6337681) (not b!6337078) (not b!6337177) (not d!1988995) (not d!1989029) (not bm!539947) (not b!6337173) (not d!1989037) (not b!6337405) (not b!6337436) (not d!1989053) (not b!6337567))
(check-sat)
(get-model)

(assert (=> d!1989035 d!1989031))

(declare-fun d!1989153 () Bool)

(assert (=> d!1989153 (= (flatMap!1744 lt!2361573 lambda!347959) (dynLambda!25715 lambda!347959 lt!2361567))))

(assert (=> d!1989153 true))

(declare-fun _$13!3487 () Unit!158287)

(assert (=> d!1989153 (= (choose!46975 lt!2361573 lt!2361567 lambda!347959) _$13!3487)))

(declare-fun b_lambda!241181 () Bool)

(assert (=> (not b_lambda!241181) (not d!1989153)))

(declare-fun bs!1586744 () Bool)

(assert (= bs!1586744 d!1989153))

(assert (=> bs!1586744 m!7146128))

(assert (=> bs!1586744 m!7146400))

(assert (=> d!1989035 d!1989153))

(declare-fun d!1989155 () Bool)

(declare-fun res!2608157 () Bool)

(declare-fun e!3849715 () Bool)

(assert (=> d!1989155 (=> res!2608157 e!3849715)))

(assert (=> d!1989155 (= res!2608157 ((_ is Nil!64892) lt!2361718))))

(assert (=> d!1989155 (= (forall!15393 lt!2361718 lambda!348047) e!3849715)))

(declare-fun b!6337692 () Bool)

(declare-fun e!3849716 () Bool)

(assert (=> b!6337692 (= e!3849715 e!3849716)))

(declare-fun res!2608158 () Bool)

(assert (=> b!6337692 (=> (not res!2608158) (not e!3849716))))

(declare-fun dynLambda!25716 (Int Regex!16239) Bool)

(assert (=> b!6337692 (= res!2608158 (dynLambda!25716 lambda!348047 (h!71340 lt!2361718)))))

(declare-fun b!6337693 () Bool)

(assert (=> b!6337693 (= e!3849716 (forall!15393 (t!378600 lt!2361718) lambda!348047))))

(assert (= (and d!1989155 (not res!2608157)) b!6337692))

(assert (= (and b!6337692 res!2608158) b!6337693))

(declare-fun b_lambda!241183 () Bool)

(assert (=> (not b_lambda!241183) (not b!6337692)))

(declare-fun m!7146740 () Bool)

(assert (=> b!6337692 m!7146740))

(declare-fun m!7146742 () Bool)

(assert (=> b!6337693 m!7146742))

(assert (=> d!1989147 d!1989155))

(declare-fun b!6337694 () Bool)

(declare-fun res!2608160 () Bool)

(declare-fun e!3849722 () Bool)

(assert (=> b!6337694 (=> (not res!2608160) (not e!3849722))))

(declare-fun call!539966 () Bool)

(assert (=> b!6337694 (= res!2608160 call!539966)))

(declare-fun e!3849721 () Bool)

(assert (=> b!6337694 (= e!3849721 e!3849722)))

(declare-fun bm!539960 () Bool)

(declare-fun call!539967 () Bool)

(declare-fun c!1152087 () Bool)

(declare-fun c!1152088 () Bool)

(assert (=> bm!539960 (= call!539967 (validRegex!7975 (ite c!1152088 (reg!16568 lt!2361686) (ite c!1152087 (regOne!32991 lt!2361686) (regOne!32990 lt!2361686)))))))

(declare-fun b!6337695 () Bool)

(declare-fun e!3849718 () Bool)

(declare-fun e!3849720 () Bool)

(assert (=> b!6337695 (= e!3849718 e!3849720)))

(declare-fun res!2608159 () Bool)

(assert (=> b!6337695 (=> (not res!2608159) (not e!3849720))))

(assert (=> b!6337695 (= res!2608159 call!539966)))

(declare-fun b!6337696 () Bool)

(declare-fun e!3849723 () Bool)

(assert (=> b!6337696 (= e!3849723 call!539967)))

(declare-fun bm!539961 () Bool)

(assert (=> bm!539961 (= call!539966 call!539967)))

(declare-fun b!6337697 () Bool)

(declare-fun call!539965 () Bool)

(assert (=> b!6337697 (= e!3849722 call!539965)))

(declare-fun b!6337698 () Bool)

(declare-fun e!3849719 () Bool)

(assert (=> b!6337698 (= e!3849719 e!3849723)))

(declare-fun res!2608163 () Bool)

(assert (=> b!6337698 (= res!2608163 (not (nullable!6232 (reg!16568 lt!2361686))))))

(assert (=> b!6337698 (=> (not res!2608163) (not e!3849723))))

(declare-fun bm!539962 () Bool)

(assert (=> bm!539962 (= call!539965 (validRegex!7975 (ite c!1152087 (regTwo!32991 lt!2361686) (regTwo!32990 lt!2361686))))))

(declare-fun b!6337699 () Bool)

(declare-fun e!3849717 () Bool)

(assert (=> b!6337699 (= e!3849717 e!3849719)))

(assert (=> b!6337699 (= c!1152088 ((_ is Star!16239) lt!2361686))))

(declare-fun d!1989157 () Bool)

(declare-fun res!2608162 () Bool)

(assert (=> d!1989157 (=> res!2608162 e!3849717)))

(assert (=> d!1989157 (= res!2608162 ((_ is ElementMatch!16239) lt!2361686))))

(assert (=> d!1989157 (= (validRegex!7975 lt!2361686) e!3849717)))

(declare-fun b!6337700 () Bool)

(assert (=> b!6337700 (= e!3849720 call!539965)))

(declare-fun b!6337701 () Bool)

(declare-fun res!2608161 () Bool)

(assert (=> b!6337701 (=> res!2608161 e!3849718)))

(assert (=> b!6337701 (= res!2608161 (not ((_ is Concat!25084) lt!2361686)))))

(assert (=> b!6337701 (= e!3849721 e!3849718)))

(declare-fun b!6337702 () Bool)

(assert (=> b!6337702 (= e!3849719 e!3849721)))

(assert (=> b!6337702 (= c!1152087 ((_ is Union!16239) lt!2361686))))

(assert (= (and d!1989157 (not res!2608162)) b!6337699))

(assert (= (and b!6337699 c!1152088) b!6337698))

(assert (= (and b!6337699 (not c!1152088)) b!6337702))

(assert (= (and b!6337698 res!2608163) b!6337696))

(assert (= (and b!6337702 c!1152087) b!6337694))

(assert (= (and b!6337702 (not c!1152087)) b!6337701))

(assert (= (and b!6337694 res!2608160) b!6337697))

(assert (= (and b!6337701 (not res!2608161)) b!6337695))

(assert (= (and b!6337695 res!2608159) b!6337700))

(assert (= (or b!6337697 b!6337700) bm!539962))

(assert (= (or b!6337694 b!6337695) bm!539961))

(assert (= (or b!6337696 bm!539961) bm!539960))

(declare-fun m!7146744 () Bool)

(assert (=> bm!539960 m!7146744))

(declare-fun m!7146746 () Bool)

(assert (=> b!6337698 m!7146746))

(declare-fun m!7146748 () Bool)

(assert (=> bm!539962 m!7146748))

(assert (=> d!1989113 d!1989157))

(declare-fun bs!1586745 () Bool)

(declare-fun d!1989159 () Bool)

(assert (= bs!1586745 (and d!1989159 d!1989111)))

(declare-fun lambda!348048 () Int)

(assert (=> bs!1586745 (= lambda!348048 lambda!348027)))

(declare-fun bs!1586746 () Bool)

(assert (= bs!1586746 (and d!1989159 d!1989145)))

(assert (=> bs!1586746 (= lambda!348048 lambda!348044)))

(declare-fun bs!1586747 () Bool)

(assert (= bs!1586747 (and d!1989159 d!1989029)))

(assert (=> bs!1586747 (= lambda!348048 lambda!348004)))

(declare-fun bs!1586748 () Bool)

(assert (= bs!1586748 (and d!1989159 d!1989147)))

(assert (=> bs!1586748 (= lambda!348048 lambda!348047)))

(declare-fun bs!1586749 () Bool)

(assert (= bs!1586749 (and d!1989159 d!1988975)))

(assert (=> bs!1586749 (= lambda!348048 lambda!347980)))

(declare-fun bs!1586750 () Bool)

(assert (= bs!1586750 (and d!1989159 d!1989143)))

(assert (=> bs!1586750 (= lambda!348048 lambda!348041)))

(declare-fun b!6337703 () Bool)

(declare-fun e!3849729 () Bool)

(declare-fun lt!2361719 () Regex!16239)

(assert (=> b!6337703 (= e!3849729 (= lt!2361719 (head!12973 (unfocusZipperList!1660 lt!2361561))))))

(declare-fun b!6337704 () Bool)

(declare-fun e!3849727 () Bool)

(assert (=> b!6337704 (= e!3849727 (isEmpty!36969 (t!378600 (unfocusZipperList!1660 lt!2361561))))))

(declare-fun b!6337705 () Bool)

(assert (=> b!6337705 (= e!3849729 (isUnion!1080 lt!2361719))))

(declare-fun b!6337706 () Bool)

(declare-fun e!3849726 () Regex!16239)

(assert (=> b!6337706 (= e!3849726 (h!71340 (unfocusZipperList!1660 lt!2361561)))))

(declare-fun b!6337707 () Bool)

(declare-fun e!3849724 () Bool)

(assert (=> b!6337707 (= e!3849724 (isEmptyLang!1650 lt!2361719))))

(declare-fun b!6337708 () Bool)

(declare-fun e!3849725 () Bool)

(assert (=> b!6337708 (= e!3849725 e!3849724)))

(declare-fun c!1152089 () Bool)

(assert (=> b!6337708 (= c!1152089 (isEmpty!36969 (unfocusZipperList!1660 lt!2361561)))))

(declare-fun b!6337709 () Bool)

(declare-fun e!3849728 () Regex!16239)

(assert (=> b!6337709 (= e!3849726 e!3849728)))

(declare-fun c!1152091 () Bool)

(assert (=> b!6337709 (= c!1152091 ((_ is Cons!64892) (unfocusZipperList!1660 lt!2361561)))))

(assert (=> d!1989159 e!3849725))

(declare-fun res!2608164 () Bool)

(assert (=> d!1989159 (=> (not res!2608164) (not e!3849725))))

(assert (=> d!1989159 (= res!2608164 (validRegex!7975 lt!2361719))))

(assert (=> d!1989159 (= lt!2361719 e!3849726)))

(declare-fun c!1152092 () Bool)

(assert (=> d!1989159 (= c!1152092 e!3849727)))

(declare-fun res!2608165 () Bool)

(assert (=> d!1989159 (=> (not res!2608165) (not e!3849727))))

(assert (=> d!1989159 (= res!2608165 ((_ is Cons!64892) (unfocusZipperList!1660 lt!2361561)))))

(assert (=> d!1989159 (forall!15393 (unfocusZipperList!1660 lt!2361561) lambda!348048)))

(assert (=> d!1989159 (= (generalisedUnion!2083 (unfocusZipperList!1660 lt!2361561)) lt!2361719)))

(declare-fun b!6337710 () Bool)

(assert (=> b!6337710 (= e!3849728 EmptyLang!16239)))

(declare-fun b!6337711 () Bool)

(assert (=> b!6337711 (= e!3849724 e!3849729)))

(declare-fun c!1152090 () Bool)

(assert (=> b!6337711 (= c!1152090 (isEmpty!36969 (tail!12058 (unfocusZipperList!1660 lt!2361561))))))

(declare-fun b!6337712 () Bool)

(assert (=> b!6337712 (= e!3849728 (Union!16239 (h!71340 (unfocusZipperList!1660 lt!2361561)) (generalisedUnion!2083 (t!378600 (unfocusZipperList!1660 lt!2361561)))))))

(assert (= (and d!1989159 res!2608165) b!6337704))

(assert (= (and d!1989159 c!1152092) b!6337706))

(assert (= (and d!1989159 (not c!1152092)) b!6337709))

(assert (= (and b!6337709 c!1152091) b!6337712))

(assert (= (and b!6337709 (not c!1152091)) b!6337710))

(assert (= (and d!1989159 res!2608164) b!6337708))

(assert (= (and b!6337708 c!1152089) b!6337707))

(assert (= (and b!6337708 (not c!1152089)) b!6337711))

(assert (= (and b!6337711 c!1152090) b!6337703))

(assert (= (and b!6337711 (not c!1152090)) b!6337705))

(declare-fun m!7146750 () Bool)

(assert (=> b!6337704 m!7146750))

(declare-fun m!7146752 () Bool)

(assert (=> b!6337712 m!7146752))

(declare-fun m!7146754 () Bool)

(assert (=> b!6337705 m!7146754))

(assert (=> b!6337703 m!7146622))

(declare-fun m!7146756 () Bool)

(assert (=> b!6337703 m!7146756))

(assert (=> b!6337711 m!7146622))

(declare-fun m!7146758 () Bool)

(assert (=> b!6337711 m!7146758))

(assert (=> b!6337711 m!7146758))

(declare-fun m!7146760 () Bool)

(assert (=> b!6337711 m!7146760))

(assert (=> b!6337708 m!7146622))

(declare-fun m!7146762 () Bool)

(assert (=> b!6337708 m!7146762))

(declare-fun m!7146764 () Bool)

(assert (=> d!1989159 m!7146764))

(assert (=> d!1989159 m!7146622))

(declare-fun m!7146766 () Bool)

(assert (=> d!1989159 m!7146766))

(declare-fun m!7146768 () Bool)

(assert (=> b!6337707 m!7146768))

(assert (=> d!1989113 d!1989159))

(declare-fun bs!1586751 () Bool)

(declare-fun d!1989161 () Bool)

(assert (= bs!1586751 (and d!1989161 d!1989111)))

(declare-fun lambda!348049 () Int)

(assert (=> bs!1586751 (= lambda!348049 lambda!348027)))

(declare-fun bs!1586752 () Bool)

(assert (= bs!1586752 (and d!1989161 d!1989145)))

(assert (=> bs!1586752 (= lambda!348049 lambda!348044)))

(declare-fun bs!1586753 () Bool)

(assert (= bs!1586753 (and d!1989161 d!1989029)))

(assert (=> bs!1586753 (= lambda!348049 lambda!348004)))

(declare-fun bs!1586754 () Bool)

(assert (= bs!1586754 (and d!1989161 d!1989159)))

(assert (=> bs!1586754 (= lambda!348049 lambda!348048)))

(declare-fun bs!1586755 () Bool)

(assert (= bs!1586755 (and d!1989161 d!1989147)))

(assert (=> bs!1586755 (= lambda!348049 lambda!348047)))

(declare-fun bs!1586756 () Bool)

(assert (= bs!1586756 (and d!1989161 d!1988975)))

(assert (=> bs!1586756 (= lambda!348049 lambda!347980)))

(declare-fun bs!1586757 () Bool)

(assert (= bs!1586757 (and d!1989161 d!1989143)))

(assert (=> bs!1586757 (= lambda!348049 lambda!348041)))

(declare-fun lt!2361720 () List!65016)

(assert (=> d!1989161 (forall!15393 lt!2361720 lambda!348049)))

(declare-fun e!3849730 () List!65016)

(assert (=> d!1989161 (= lt!2361720 e!3849730)))

(declare-fun c!1152093 () Bool)

(assert (=> d!1989161 (= c!1152093 ((_ is Cons!64893) lt!2361561))))

(assert (=> d!1989161 (= (unfocusZipperList!1660 lt!2361561) lt!2361720)))

(declare-fun b!6337713 () Bool)

(assert (=> b!6337713 (= e!3849730 (Cons!64892 (generalisedConcat!1836 (exprs!6123 (h!71341 lt!2361561))) (unfocusZipperList!1660 (t!378601 lt!2361561))))))

(declare-fun b!6337714 () Bool)

(assert (=> b!6337714 (= e!3849730 Nil!64892)))

(assert (= (and d!1989161 c!1152093) b!6337713))

(assert (= (and d!1989161 (not c!1152093)) b!6337714))

(declare-fun m!7146770 () Bool)

(assert (=> d!1989161 m!7146770))

(declare-fun m!7146772 () Bool)

(assert (=> b!6337713 m!7146772))

(declare-fun m!7146774 () Bool)

(assert (=> b!6337713 m!7146774))

(assert (=> d!1989113 d!1989161))

(declare-fun b!6337715 () Bool)

(declare-fun res!2608167 () Bool)

(declare-fun e!3849736 () Bool)

(assert (=> b!6337715 (=> (not res!2608167) (not e!3849736))))

(declare-fun call!539969 () Bool)

(assert (=> b!6337715 (= res!2608167 call!539969)))

(declare-fun e!3849735 () Bool)

(assert (=> b!6337715 (= e!3849735 e!3849736)))

(declare-fun bm!539963 () Bool)

(declare-fun c!1152095 () Bool)

(declare-fun c!1152094 () Bool)

(declare-fun call!539970 () Bool)

(assert (=> bm!539963 (= call!539970 (validRegex!7975 (ite c!1152095 (reg!16568 (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))) (ite c!1152094 (regOne!32991 (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))) (regOne!32990 (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556))))))))))

(declare-fun b!6337716 () Bool)

(declare-fun e!3849732 () Bool)

(declare-fun e!3849734 () Bool)

(assert (=> b!6337716 (= e!3849732 e!3849734)))

(declare-fun res!2608166 () Bool)

(assert (=> b!6337716 (=> (not res!2608166) (not e!3849734))))

(assert (=> b!6337716 (= res!2608166 call!539969)))

(declare-fun b!6337717 () Bool)

(declare-fun e!3849737 () Bool)

(assert (=> b!6337717 (= e!3849737 call!539970)))

(declare-fun bm!539964 () Bool)

(assert (=> bm!539964 (= call!539969 call!539970)))

(declare-fun b!6337718 () Bool)

(declare-fun call!539968 () Bool)

(assert (=> b!6337718 (= e!3849736 call!539968)))

(declare-fun b!6337719 () Bool)

(declare-fun e!3849733 () Bool)

(assert (=> b!6337719 (= e!3849733 e!3849737)))

(declare-fun res!2608170 () Bool)

(assert (=> b!6337719 (= res!2608170 (not (nullable!6232 (reg!16568 (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))))))))

(assert (=> b!6337719 (=> (not res!2608170) (not e!3849737))))

(declare-fun bm!539965 () Bool)

(assert (=> bm!539965 (= call!539968 (validRegex!7975 (ite c!1152094 (regTwo!32991 (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))) (regTwo!32990 (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))))))))

(declare-fun b!6337720 () Bool)

(declare-fun e!3849731 () Bool)

(assert (=> b!6337720 (= e!3849731 e!3849733)))

(assert (=> b!6337720 (= c!1152095 ((_ is Star!16239) (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))))))

(declare-fun d!1989163 () Bool)

(declare-fun res!2608169 () Bool)

(assert (=> d!1989163 (=> res!2608169 e!3849731)))

(assert (=> d!1989163 (= res!2608169 ((_ is ElementMatch!16239) (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))))))

(assert (=> d!1989163 (= (validRegex!7975 (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))) e!3849731)))

(declare-fun b!6337721 () Bool)

(assert (=> b!6337721 (= e!3849734 call!539968)))

(declare-fun b!6337722 () Bool)

(declare-fun res!2608168 () Bool)

(assert (=> b!6337722 (=> res!2608168 e!3849732)))

(assert (=> b!6337722 (= res!2608168 (not ((_ is Concat!25084) (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556))))))))

(assert (=> b!6337722 (= e!3849735 e!3849732)))

(declare-fun b!6337723 () Bool)

(assert (=> b!6337723 (= e!3849733 e!3849735)))

(assert (=> b!6337723 (= c!1152094 ((_ is Union!16239) (ite c!1151891 (reg!16568 lt!2361556) (ite c!1151890 (regOne!32991 lt!2361556) (regOne!32990 lt!2361556)))))))

(assert (= (and d!1989163 (not res!2608169)) b!6337720))

(assert (= (and b!6337720 c!1152095) b!6337719))

(assert (= (and b!6337720 (not c!1152095)) b!6337723))

(assert (= (and b!6337719 res!2608170) b!6337717))

(assert (= (and b!6337723 c!1152094) b!6337715))

(assert (= (and b!6337723 (not c!1152094)) b!6337722))

(assert (= (and b!6337715 res!2608167) b!6337718))

(assert (= (and b!6337722 (not res!2608168)) b!6337716))

(assert (= (and b!6337716 res!2608166) b!6337721))

(assert (= (or b!6337718 b!6337721) bm!539965))

(assert (= (or b!6337715 b!6337716) bm!539964))

(assert (= (or b!6337717 bm!539964) bm!539963))

(declare-fun m!7146776 () Bool)

(assert (=> bm!539963 m!7146776))

(declare-fun m!7146778 () Bool)

(assert (=> b!6337719 m!7146778))

(declare-fun m!7146780 () Bool)

(assert (=> bm!539965 m!7146780))

(assert (=> bm!539880 d!1989163))

(declare-fun d!1989165 () Bool)

(assert (=> d!1989165 (= (isEmpty!36969 (tail!12058 (exprs!6123 (h!71341 zl!343)))) ((_ is Nil!64892) (tail!12058 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> b!6337464 d!1989165))

(declare-fun d!1989167 () Bool)

(assert (=> d!1989167 (= (tail!12058 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))

(assert (=> b!6337464 d!1989167))

(declare-fun b!6337724 () Bool)

(declare-fun e!3849739 () Bool)

(assert (=> b!6337724 (= e!3849739 (nullable!6232 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567)))))))))

(declare-fun b!6337725 () Bool)

(declare-fun e!3849738 () (InoxSet Context!11246))

(declare-fun call!539971 () (InoxSet Context!11246))

(assert (=> b!6337725 (= e!3849738 call!539971)))

(declare-fun b!6337726 () Bool)

(assert (=> b!6337726 (= e!3849738 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6337727 () Bool)

(declare-fun e!3849740 () (InoxSet Context!11246))

(assert (=> b!6337727 (= e!3849740 e!3849738)))

(declare-fun c!1152096 () Bool)

(assert (=> b!6337727 (= c!1152096 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567))))))))

(declare-fun d!1989169 () Bool)

(declare-fun c!1152097 () Bool)

(assert (=> d!1989169 (= c!1152097 e!3849739)))

(declare-fun res!2608171 () Bool)

(assert (=> d!1989169 (=> (not res!2608171) (not e!3849739))))

(assert (=> d!1989169 (= res!2608171 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567))))))))

(assert (=> d!1989169 (= (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 lt!2361567))) (h!71342 s!2326)) e!3849740)))

(declare-fun bm!539966 () Bool)

(assert (=> bm!539966 (= call!539971 (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567))))) (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567)))))) (h!71342 s!2326)))))

(declare-fun b!6337728 () Bool)

(assert (=> b!6337728 (= e!3849740 ((_ map or) call!539971 (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567)))))) (h!71342 s!2326))))))

(assert (= (and d!1989169 res!2608171) b!6337724))

(assert (= (and d!1989169 c!1152097) b!6337728))

(assert (= (and d!1989169 (not c!1152097)) b!6337727))

(assert (= (and b!6337727 c!1152096) b!6337725))

(assert (= (and b!6337727 (not c!1152096)) b!6337726))

(assert (= (or b!6337728 b!6337725) bm!539966))

(declare-fun m!7146782 () Bool)

(assert (=> b!6337724 m!7146782))

(declare-fun m!7146784 () Bool)

(assert (=> bm!539966 m!7146784))

(declare-fun m!7146786 () Bool)

(assert (=> b!6337728 m!7146786))

(assert (=> b!6337254 d!1989169))

(declare-fun d!1989171 () Bool)

(assert (=> d!1989171 (= (isEmpty!36969 (tail!12058 (unfocusZipperList!1660 zl!343))) ((_ is Nil!64892) (tail!12058 (unfocusZipperList!1660 zl!343))))))

(assert (=> b!6337626 d!1989171))

(declare-fun d!1989173 () Bool)

(assert (=> d!1989173 (= (tail!12058 (unfocusZipperList!1660 zl!343)) (t!378600 (unfocusZipperList!1660 zl!343)))))

(assert (=> b!6337626 d!1989173))

(declare-fun d!1989175 () Bool)

(declare-fun res!2608172 () Bool)

(declare-fun e!3849741 () Bool)

(assert (=> d!1989175 (=> res!2608172 e!3849741)))

(assert (=> d!1989175 (= res!2608172 ((_ is Nil!64892) (exprs!6123 setElem!43114)))))

(assert (=> d!1989175 (= (forall!15393 (exprs!6123 setElem!43114) lambda!348041) e!3849741)))

(declare-fun b!6337729 () Bool)

(declare-fun e!3849742 () Bool)

(assert (=> b!6337729 (= e!3849741 e!3849742)))

(declare-fun res!2608173 () Bool)

(assert (=> b!6337729 (=> (not res!2608173) (not e!3849742))))

(assert (=> b!6337729 (= res!2608173 (dynLambda!25716 lambda!348041 (h!71340 (exprs!6123 setElem!43114))))))

(declare-fun b!6337730 () Bool)

(assert (=> b!6337730 (= e!3849742 (forall!15393 (t!378600 (exprs!6123 setElem!43114)) lambda!348041))))

(assert (= (and d!1989175 (not res!2608172)) b!6337729))

(assert (= (and b!6337729 res!2608173) b!6337730))

(declare-fun b_lambda!241185 () Bool)

(assert (=> (not b_lambda!241185) (not b!6337729)))

(declare-fun m!7146788 () Bool)

(assert (=> b!6337729 m!7146788))

(declare-fun m!7146790 () Bool)

(assert (=> b!6337730 m!7146790))

(assert (=> d!1989143 d!1989175))

(declare-fun d!1989177 () Bool)

(assert (=> d!1989177 (= (nullable!6232 (h!71340 (exprs!6123 lt!2361567))) (nullableFct!2181 (h!71340 (exprs!6123 lt!2361567))))))

(declare-fun bs!1586758 () Bool)

(assert (= bs!1586758 d!1989177))

(declare-fun m!7146792 () Bool)

(assert (=> bs!1586758 m!7146792))

(assert (=> b!6337250 d!1989177))

(declare-fun b!6337731 () Bool)

(declare-fun res!2608175 () Bool)

(declare-fun e!3849748 () Bool)

(assert (=> b!6337731 (=> (not res!2608175) (not e!3849748))))

(declare-fun call!539973 () Bool)

(assert (=> b!6337731 (= res!2608175 call!539973)))

(declare-fun e!3849747 () Bool)

(assert (=> b!6337731 (= e!3849747 e!3849748)))

(declare-fun c!1152099 () Bool)

(declare-fun call!539974 () Bool)

(declare-fun bm!539967 () Bool)

(declare-fun c!1152098 () Bool)

(assert (=> bm!539967 (= call!539974 (validRegex!7975 (ite c!1152099 (reg!16568 lt!2361685) (ite c!1152098 (regOne!32991 lt!2361685) (regOne!32990 lt!2361685)))))))

(declare-fun b!6337732 () Bool)

(declare-fun e!3849744 () Bool)

(declare-fun e!3849746 () Bool)

(assert (=> b!6337732 (= e!3849744 e!3849746)))

(declare-fun res!2608174 () Bool)

(assert (=> b!6337732 (=> (not res!2608174) (not e!3849746))))

(assert (=> b!6337732 (= res!2608174 call!539973)))

(declare-fun b!6337733 () Bool)

(declare-fun e!3849749 () Bool)

(assert (=> b!6337733 (= e!3849749 call!539974)))

(declare-fun bm!539968 () Bool)

(assert (=> bm!539968 (= call!539973 call!539974)))

(declare-fun b!6337734 () Bool)

(declare-fun call!539972 () Bool)

(assert (=> b!6337734 (= e!3849748 call!539972)))

(declare-fun b!6337735 () Bool)

(declare-fun e!3849745 () Bool)

(assert (=> b!6337735 (= e!3849745 e!3849749)))

(declare-fun res!2608178 () Bool)

(assert (=> b!6337735 (= res!2608178 (not (nullable!6232 (reg!16568 lt!2361685))))))

(assert (=> b!6337735 (=> (not res!2608178) (not e!3849749))))

(declare-fun bm!539969 () Bool)

(assert (=> bm!539969 (= call!539972 (validRegex!7975 (ite c!1152098 (regTwo!32991 lt!2361685) (regTwo!32990 lt!2361685))))))

(declare-fun b!6337736 () Bool)

(declare-fun e!3849743 () Bool)

(assert (=> b!6337736 (= e!3849743 e!3849745)))

(assert (=> b!6337736 (= c!1152099 ((_ is Star!16239) lt!2361685))))

(declare-fun d!1989179 () Bool)

(declare-fun res!2608177 () Bool)

(assert (=> d!1989179 (=> res!2608177 e!3849743)))

(assert (=> d!1989179 (= res!2608177 ((_ is ElementMatch!16239) lt!2361685))))

(assert (=> d!1989179 (= (validRegex!7975 lt!2361685) e!3849743)))

(declare-fun b!6337737 () Bool)

(assert (=> b!6337737 (= e!3849746 call!539972)))

(declare-fun b!6337738 () Bool)

(declare-fun res!2608176 () Bool)

(assert (=> b!6337738 (=> res!2608176 e!3849744)))

(assert (=> b!6337738 (= res!2608176 (not ((_ is Concat!25084) lt!2361685)))))

(assert (=> b!6337738 (= e!3849747 e!3849744)))

(declare-fun b!6337739 () Bool)

(assert (=> b!6337739 (= e!3849745 e!3849747)))

(assert (=> b!6337739 (= c!1152098 ((_ is Union!16239) lt!2361685))))

(assert (= (and d!1989179 (not res!2608177)) b!6337736))

(assert (= (and b!6337736 c!1152099) b!6337735))

(assert (= (and b!6337736 (not c!1152099)) b!6337739))

(assert (= (and b!6337735 res!2608178) b!6337733))

(assert (= (and b!6337739 c!1152098) b!6337731))

(assert (= (and b!6337739 (not c!1152098)) b!6337738))

(assert (= (and b!6337731 res!2608175) b!6337734))

(assert (= (and b!6337738 (not res!2608176)) b!6337732))

(assert (= (and b!6337732 res!2608174) b!6337737))

(assert (= (or b!6337734 b!6337737) bm!539969))

(assert (= (or b!6337731 b!6337732) bm!539968))

(assert (= (or b!6337733 bm!539968) bm!539967))

(declare-fun m!7146794 () Bool)

(assert (=> bm!539967 m!7146794))

(declare-fun m!7146796 () Bool)

(assert (=> b!6337735 m!7146796))

(declare-fun m!7146798 () Bool)

(assert (=> bm!539969 m!7146798))

(assert (=> d!1989111 d!1989179))

(declare-fun d!1989181 () Bool)

(declare-fun res!2608179 () Bool)

(declare-fun e!3849750 () Bool)

(assert (=> d!1989181 (=> res!2608179 e!3849750)))

(assert (=> d!1989181 (= res!2608179 ((_ is Nil!64892) (exprs!6123 (h!71341 zl!343))))))

(assert (=> d!1989181 (= (forall!15393 (exprs!6123 (h!71341 zl!343)) lambda!348027) e!3849750)))

(declare-fun b!6337740 () Bool)

(declare-fun e!3849751 () Bool)

(assert (=> b!6337740 (= e!3849750 e!3849751)))

(declare-fun res!2608180 () Bool)

(assert (=> b!6337740 (=> (not res!2608180) (not e!3849751))))

(assert (=> b!6337740 (= res!2608180 (dynLambda!25716 lambda!348027 (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6337741 () Bool)

(assert (=> b!6337741 (= e!3849751 (forall!15393 (t!378600 (exprs!6123 (h!71341 zl!343))) lambda!348027))))

(assert (= (and d!1989181 (not res!2608179)) b!6337740))

(assert (= (and b!6337740 res!2608180) b!6337741))

(declare-fun b_lambda!241187 () Bool)

(assert (=> (not b_lambda!241187) (not b!6337740)))

(declare-fun m!7146800 () Bool)

(assert (=> b!6337740 m!7146800))

(declare-fun m!7146802 () Bool)

(assert (=> b!6337741 m!7146802))

(assert (=> d!1989111 d!1989181))

(declare-fun d!1989183 () Bool)

(assert (=> d!1989183 (= (isEmpty!36973 (t!378602 s!2326)) ((_ is Nil!64894) (t!378602 s!2326)))))

(assert (=> d!1989053 d!1989183))

(declare-fun bs!1586759 () Bool)

(declare-fun d!1989185 () Bool)

(assert (= bs!1586759 (and d!1989185 d!1989111)))

(declare-fun lambda!348050 () Int)

(assert (=> bs!1586759 (= lambda!348050 lambda!348027)))

(declare-fun bs!1586760 () Bool)

(assert (= bs!1586760 (and d!1989185 d!1989145)))

(assert (=> bs!1586760 (= lambda!348050 lambda!348044)))

(declare-fun bs!1586761 () Bool)

(assert (= bs!1586761 (and d!1989185 d!1989029)))

(assert (=> bs!1586761 (= lambda!348050 lambda!348004)))

(declare-fun bs!1586762 () Bool)

(assert (= bs!1586762 (and d!1989185 d!1989161)))

(assert (=> bs!1586762 (= lambda!348050 lambda!348049)))

(declare-fun bs!1586763 () Bool)

(assert (= bs!1586763 (and d!1989185 d!1989159)))

(assert (=> bs!1586763 (= lambda!348050 lambda!348048)))

(declare-fun bs!1586764 () Bool)

(assert (= bs!1586764 (and d!1989185 d!1989147)))

(assert (=> bs!1586764 (= lambda!348050 lambda!348047)))

(declare-fun bs!1586765 () Bool)

(assert (= bs!1586765 (and d!1989185 d!1988975)))

(assert (=> bs!1586765 (= lambda!348050 lambda!347980)))

(declare-fun bs!1586766 () Bool)

(assert (= bs!1586766 (and d!1989185 d!1989143)))

(assert (=> bs!1586766 (= lambda!348050 lambda!348041)))

(declare-fun b!6337742 () Bool)

(declare-fun e!3849754 () Bool)

(declare-fun lt!2361721 () Regex!16239)

(assert (=> b!6337742 (= e!3849754 (= lt!2361721 (head!12973 (t!378600 lt!2361557))))))

(declare-fun b!6337743 () Bool)

(declare-fun e!3849755 () Bool)

(declare-fun e!3849756 () Bool)

(assert (=> b!6337743 (= e!3849755 e!3849756)))

(declare-fun c!1152101 () Bool)

(assert (=> b!6337743 (= c!1152101 (isEmpty!36969 (t!378600 lt!2361557)))))

(declare-fun b!6337744 () Bool)

(declare-fun e!3849757 () Regex!16239)

(declare-fun e!3849753 () Regex!16239)

(assert (=> b!6337744 (= e!3849757 e!3849753)))

(declare-fun c!1152102 () Bool)

(assert (=> b!6337744 (= c!1152102 ((_ is Cons!64892) (t!378600 lt!2361557)))))

(declare-fun b!6337745 () Bool)

(declare-fun e!3849752 () Bool)

(assert (=> b!6337745 (= e!3849752 (isEmpty!36969 (t!378600 (t!378600 lt!2361557))))))

(assert (=> d!1989185 e!3849755))

(declare-fun res!2608182 () Bool)

(assert (=> d!1989185 (=> (not res!2608182) (not e!3849755))))

(assert (=> d!1989185 (= res!2608182 (validRegex!7975 lt!2361721))))

(assert (=> d!1989185 (= lt!2361721 e!3849757)))

(declare-fun c!1152103 () Bool)

(assert (=> d!1989185 (= c!1152103 e!3849752)))

(declare-fun res!2608181 () Bool)

(assert (=> d!1989185 (=> (not res!2608181) (not e!3849752))))

(assert (=> d!1989185 (= res!2608181 ((_ is Cons!64892) (t!378600 lt!2361557)))))

(assert (=> d!1989185 (forall!15393 (t!378600 lt!2361557) lambda!348050)))

(assert (=> d!1989185 (= (generalisedConcat!1836 (t!378600 lt!2361557)) lt!2361721)))

(declare-fun b!6337746 () Bool)

(assert (=> b!6337746 (= e!3849753 EmptyExpr!16239)))

(declare-fun b!6337747 () Bool)

(assert (=> b!6337747 (= e!3849757 (h!71340 (t!378600 lt!2361557)))))

(declare-fun b!6337748 () Bool)

(assert (=> b!6337748 (= e!3849756 e!3849754)))

(declare-fun c!1152100 () Bool)

(assert (=> b!6337748 (= c!1152100 (isEmpty!36969 (tail!12058 (t!378600 lt!2361557))))))

(declare-fun b!6337749 () Bool)

(assert (=> b!6337749 (= e!3849756 (isEmptyExpr!1642 lt!2361721))))

(declare-fun b!6337750 () Bool)

(assert (=> b!6337750 (= e!3849753 (Concat!25084 (h!71340 (t!378600 lt!2361557)) (generalisedConcat!1836 (t!378600 (t!378600 lt!2361557)))))))

(declare-fun b!6337751 () Bool)

(assert (=> b!6337751 (= e!3849754 (isConcat!1165 lt!2361721))))

(assert (= (and d!1989185 res!2608181) b!6337745))

(assert (= (and d!1989185 c!1152103) b!6337747))

(assert (= (and d!1989185 (not c!1152103)) b!6337744))

(assert (= (and b!6337744 c!1152102) b!6337750))

(assert (= (and b!6337744 (not c!1152102)) b!6337746))

(assert (= (and d!1989185 res!2608182) b!6337743))

(assert (= (and b!6337743 c!1152101) b!6337749))

(assert (= (and b!6337743 (not c!1152101)) b!6337748))

(assert (= (and b!6337748 c!1152100) b!6337742))

(assert (= (and b!6337748 (not c!1152100)) b!6337751))

(declare-fun m!7146804 () Bool)

(assert (=> b!6337749 m!7146804))

(declare-fun m!7146806 () Bool)

(assert (=> b!6337745 m!7146806))

(declare-fun m!7146808 () Bool)

(assert (=> d!1989185 m!7146808))

(declare-fun m!7146810 () Bool)

(assert (=> d!1989185 m!7146810))

(declare-fun m!7146812 () Bool)

(assert (=> b!6337742 m!7146812))

(assert (=> b!6337743 m!7146232))

(declare-fun m!7146814 () Bool)

(assert (=> b!6337751 m!7146814))

(declare-fun m!7146816 () Bool)

(assert (=> b!6337748 m!7146816))

(assert (=> b!6337748 m!7146816))

(declare-fun m!7146818 () Bool)

(assert (=> b!6337748 m!7146818))

(declare-fun m!7146820 () Bool)

(assert (=> b!6337750 m!7146820))

(assert (=> b!6337069 d!1989185))

(declare-fun b!6337752 () Bool)

(declare-fun e!3849763 () (InoxSet Context!11246))

(declare-fun e!3849760 () (InoxSet Context!11246))

(assert (=> b!6337752 (= e!3849763 e!3849760)))

(declare-fun c!1152106 () Bool)

(assert (=> b!6337752 (= c!1152106 ((_ is Concat!25084) (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))))

(declare-fun b!6337753 () Bool)

(declare-fun e!3849762 () (InoxSet Context!11246))

(assert (=> b!6337753 (= e!3849762 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6337754 () Bool)

(declare-fun call!539980 () (InoxSet Context!11246))

(declare-fun call!539979 () (InoxSet Context!11246))

(assert (=> b!6337754 (= e!3849763 ((_ map or) call!539980 call!539979))))

(declare-fun b!6337755 () Bool)

(declare-fun e!3849761 () Bool)

(assert (=> b!6337755 (= e!3849761 (nullable!6232 (regOne!32990 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))))))

(declare-fun bm!539971 () Bool)

(declare-fun call!539978 () (InoxSet Context!11246))

(assert (=> bm!539971 (= call!539979 call!539978)))

(declare-fun bm!539972 () Bool)

(declare-fun call!539977 () List!65016)

(declare-fun c!1152107 () Bool)

(assert (=> bm!539972 (= call!539980 (derivationStepZipperDown!1487 (ite c!1152107 (regTwo!32991 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (regOne!32990 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))) (ite c!1152107 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (Context!11247 call!539977)) (h!71342 s!2326)))))

(declare-fun b!6337756 () Bool)

(declare-fun call!539976 () (InoxSet Context!11246))

(assert (=> b!6337756 (= e!3849760 call!539976)))

(declare-fun bm!539973 () Bool)

(declare-fun c!1152104 () Bool)

(assert (=> bm!539973 (= call!539977 ($colon$colon!2102 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))) (ite (or c!1152104 c!1152106) (regTwo!32990 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))))))

(declare-fun d!1989187 () Bool)

(declare-fun c!1152105 () Bool)

(assert (=> d!1989187 (= c!1152105 (and ((_ is ElementMatch!16239) (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (= (c!1151834 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (h!71342 s!2326))))))

(declare-fun e!3849759 () (InoxSet Context!11246))

(assert (=> d!1989187 (= (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))) (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (h!71342 s!2326)) e!3849759)))

(declare-fun bm!539970 () Bool)

(declare-fun call!539975 () List!65016)

(assert (=> bm!539970 (= call!539978 (derivationStepZipperDown!1487 (ite c!1152107 (regOne!32991 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (ite c!1152104 (regTwo!32990 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (ite c!1152106 (regOne!32990 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (reg!16568 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))))) (ite (or c!1152107 c!1152104) (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (Context!11247 call!539975)) (h!71342 s!2326)))))

(declare-fun bm!539974 () Bool)

(assert (=> bm!539974 (= call!539975 call!539977)))

(declare-fun b!6337757 () Bool)

(assert (=> b!6337757 (= e!3849759 (store ((as const (Array Context!11246 Bool)) false) (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) true))))

(declare-fun b!6337758 () Bool)

(declare-fun e!3849758 () (InoxSet Context!11246))

(assert (=> b!6337758 (= e!3849758 ((_ map or) call!539978 call!539980))))

(declare-fun b!6337759 () Bool)

(assert (=> b!6337759 (= e!3849762 call!539976)))

(declare-fun b!6337760 () Bool)

(assert (=> b!6337760 (= c!1152104 e!3849761)))

(declare-fun res!2608183 () Bool)

(assert (=> b!6337760 (=> (not res!2608183) (not e!3849761))))

(assert (=> b!6337760 (= res!2608183 ((_ is Concat!25084) (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))))

(assert (=> b!6337760 (= e!3849758 e!3849763)))

(declare-fun b!6337761 () Bool)

(assert (=> b!6337761 (= e!3849759 e!3849758)))

(assert (=> b!6337761 (= c!1152107 ((_ is Union!16239) (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))))

(declare-fun b!6337762 () Bool)

(declare-fun c!1152108 () Bool)

(assert (=> b!6337762 (= c!1152108 ((_ is Star!16239) (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))))

(assert (=> b!6337762 (= e!3849760 e!3849762)))

(declare-fun bm!539975 () Bool)

(assert (=> bm!539975 (= call!539976 call!539979)))

(assert (= (and d!1989187 c!1152105) b!6337757))

(assert (= (and d!1989187 (not c!1152105)) b!6337761))

(assert (= (and b!6337761 c!1152107) b!6337758))

(assert (= (and b!6337761 (not c!1152107)) b!6337760))

(assert (= (and b!6337760 res!2608183) b!6337755))

(assert (= (and b!6337760 c!1152104) b!6337754))

(assert (= (and b!6337760 (not c!1152104)) b!6337752))

(assert (= (and b!6337752 c!1152106) b!6337756))

(assert (= (and b!6337752 (not c!1152106)) b!6337762))

(assert (= (and b!6337762 c!1152108) b!6337759))

(assert (= (and b!6337762 (not c!1152108)) b!6337753))

(assert (= (or b!6337756 b!6337759) bm!539974))

(assert (= (or b!6337756 b!6337759) bm!539975))

(assert (= (or b!6337754 bm!539974) bm!539973))

(assert (= (or b!6337754 bm!539975) bm!539971))

(assert (= (or b!6337758 b!6337754) bm!539972))

(assert (= (or b!6337758 bm!539971) bm!539970))

(declare-fun m!7146822 () Bool)

(assert (=> bm!539970 m!7146822))

(declare-fun m!7146824 () Bool)

(assert (=> bm!539972 m!7146824))

(declare-fun m!7146826 () Bool)

(assert (=> bm!539973 m!7146826))

(declare-fun m!7146828 () Bool)

(assert (=> b!6337757 m!7146828))

(declare-fun m!7146830 () Bool)

(assert (=> b!6337755 m!7146830))

(assert (=> bm!539911 d!1989187))

(declare-fun b!6337763 () Bool)

(declare-fun res!2608185 () Bool)

(declare-fun e!3849769 () Bool)

(assert (=> b!6337763 (=> (not res!2608185) (not e!3849769))))

(declare-fun call!539982 () Bool)

(assert (=> b!6337763 (= res!2608185 call!539982)))

(declare-fun e!3849768 () Bool)

(assert (=> b!6337763 (= e!3849768 e!3849769)))

(declare-fun c!1152109 () Bool)

(declare-fun call!539983 () Bool)

(declare-fun bm!539976 () Bool)

(declare-fun c!1152110 () Bool)

(assert (=> bm!539976 (= call!539983 (validRegex!7975 (ite c!1152110 (reg!16568 (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))) (ite c!1152109 (regOne!32991 (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))) (regOne!32990 (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292)))))))))

(declare-fun b!6337764 () Bool)

(declare-fun e!3849765 () Bool)

(declare-fun e!3849767 () Bool)

(assert (=> b!6337764 (= e!3849765 e!3849767)))

(declare-fun res!2608184 () Bool)

(assert (=> b!6337764 (=> (not res!2608184) (not e!3849767))))

(assert (=> b!6337764 (= res!2608184 call!539982)))

(declare-fun b!6337765 () Bool)

(declare-fun e!3849770 () Bool)

(assert (=> b!6337765 (= e!3849770 call!539983)))

(declare-fun bm!539977 () Bool)

(assert (=> bm!539977 (= call!539982 call!539983)))

(declare-fun b!6337766 () Bool)

(declare-fun call!539981 () Bool)

(assert (=> b!6337766 (= e!3849769 call!539981)))

(declare-fun b!6337767 () Bool)

(declare-fun e!3849766 () Bool)

(assert (=> b!6337767 (= e!3849766 e!3849770)))

(declare-fun res!2608188 () Bool)

(assert (=> b!6337767 (= res!2608188 (not (nullable!6232 (reg!16568 (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))))))))

(assert (=> b!6337767 (=> (not res!2608188) (not e!3849770))))

(declare-fun bm!539978 () Bool)

(assert (=> bm!539978 (= call!539981 (validRegex!7975 (ite c!1152109 (regTwo!32991 (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))) (regTwo!32990 (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))))))))

(declare-fun b!6337768 () Bool)

(declare-fun e!3849764 () Bool)

(assert (=> b!6337768 (= e!3849764 e!3849766)))

(assert (=> b!6337768 (= c!1152110 ((_ is Star!16239) (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))))))

(declare-fun d!1989189 () Bool)

(declare-fun res!2608187 () Bool)

(assert (=> d!1989189 (=> res!2608187 e!3849764)))

(assert (=> d!1989189 (= res!2608187 ((_ is ElementMatch!16239) (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))))))

(assert (=> d!1989189 (= (validRegex!7975 (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))) e!3849764)))

(declare-fun b!6337769 () Bool)

(assert (=> b!6337769 (= e!3849767 call!539981)))

(declare-fun b!6337770 () Bool)

(declare-fun res!2608186 () Bool)

(assert (=> b!6337770 (=> res!2608186 e!3849765)))

(assert (=> b!6337770 (= res!2608186 (not ((_ is Concat!25084) (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292)))))))

(assert (=> b!6337770 (= e!3849768 e!3849765)))

(declare-fun b!6337771 () Bool)

(assert (=> b!6337771 (= e!3849766 e!3849768)))

(assert (=> b!6337771 (= c!1152109 ((_ is Union!16239) (ite c!1151984 (regTwo!32991 r!7292) (regTwo!32990 r!7292))))))

(assert (= (and d!1989189 (not res!2608187)) b!6337768))

(assert (= (and b!6337768 c!1152110) b!6337767))

(assert (= (and b!6337768 (not c!1152110)) b!6337771))

(assert (= (and b!6337767 res!2608188) b!6337765))

(assert (= (and b!6337771 c!1152109) b!6337763))

(assert (= (and b!6337771 (not c!1152109)) b!6337770))

(assert (= (and b!6337763 res!2608185) b!6337766))

(assert (= (and b!6337770 (not res!2608186)) b!6337764))

(assert (= (and b!6337764 res!2608184) b!6337769))

(assert (= (or b!6337766 b!6337769) bm!539978))

(assert (= (or b!6337763 b!6337764) bm!539977))

(assert (= (or b!6337765 bm!539977) bm!539976))

(declare-fun m!7146832 () Bool)

(assert (=> bm!539976 m!7146832))

(declare-fun m!7146834 () Bool)

(assert (=> b!6337767 m!7146834))

(declare-fun m!7146836 () Bool)

(assert (=> bm!539978 m!7146836))

(assert (=> bm!539935 d!1989189))

(declare-fun bs!1586767 () Bool)

(declare-fun d!1989191 () Bool)

(assert (= bs!1586767 (and d!1989191 d!1989111)))

(declare-fun lambda!348051 () Int)

(assert (=> bs!1586767 (= lambda!348051 lambda!348027)))

(declare-fun bs!1586768 () Bool)

(assert (= bs!1586768 (and d!1989191 d!1989145)))

(assert (=> bs!1586768 (= lambda!348051 lambda!348044)))

(declare-fun bs!1586769 () Bool)

(assert (= bs!1586769 (and d!1989191 d!1989029)))

(assert (=> bs!1586769 (= lambda!348051 lambda!348004)))

(declare-fun bs!1586770 () Bool)

(assert (= bs!1586770 (and d!1989191 d!1989161)))

(assert (=> bs!1586770 (= lambda!348051 lambda!348049)))

(declare-fun bs!1586771 () Bool)

(assert (= bs!1586771 (and d!1989191 d!1989185)))

(assert (=> bs!1586771 (= lambda!348051 lambda!348050)))

(declare-fun bs!1586772 () Bool)

(assert (= bs!1586772 (and d!1989191 d!1989159)))

(assert (=> bs!1586772 (= lambda!348051 lambda!348048)))

(declare-fun bs!1586773 () Bool)

(assert (= bs!1586773 (and d!1989191 d!1989147)))

(assert (=> bs!1586773 (= lambda!348051 lambda!348047)))

(declare-fun bs!1586774 () Bool)

(assert (= bs!1586774 (and d!1989191 d!1988975)))

(assert (=> bs!1586774 (= lambda!348051 lambda!347980)))

(declare-fun bs!1586775 () Bool)

(assert (= bs!1586775 (and d!1989191 d!1989143)))

(assert (=> bs!1586775 (= lambda!348051 lambda!348041)))

(assert (=> d!1989191 (= (inv!83844 setElem!43120) (forall!15393 (exprs!6123 setElem!43120) lambda!348051))))

(declare-fun bs!1586776 () Bool)

(assert (= bs!1586776 d!1989191))

(declare-fun m!7146838 () Bool)

(assert (=> bs!1586776 m!7146838))

(assert (=> setNonEmpty!43120 d!1989191))

(declare-fun b!6337772 () Bool)

(declare-fun e!3849776 () (InoxSet Context!11246))

(declare-fun e!3849773 () (InoxSet Context!11246))

(assert (=> b!6337772 (= e!3849776 e!3849773)))

(declare-fun c!1152113 () Bool)

(assert (=> b!6337772 (= c!1152113 ((_ is Concat!25084) (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))))

(declare-fun b!6337773 () Bool)

(declare-fun e!3849775 () (InoxSet Context!11246))

(assert (=> b!6337773 (= e!3849775 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6337774 () Bool)

(declare-fun call!539989 () (InoxSet Context!11246))

(declare-fun call!539988 () (InoxSet Context!11246))

(assert (=> b!6337774 (= e!3849776 ((_ map or) call!539989 call!539988))))

(declare-fun b!6337775 () Bool)

(declare-fun e!3849774 () Bool)

(assert (=> b!6337775 (= e!3849774 (nullable!6232 (regOne!32990 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343))))))))))))

(declare-fun bm!539980 () Bool)

(declare-fun call!539987 () (InoxSet Context!11246))

(assert (=> bm!539980 (= call!539988 call!539987)))

(declare-fun bm!539981 () Bool)

(declare-fun call!539986 () List!65016)

(declare-fun c!1152114 () Bool)

(assert (=> bm!539981 (= call!539989 (derivationStepZipperDown!1487 (ite c!1152114 (regTwo!32991 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))) (regOne!32990 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343))))))))) (ite c!1152114 (ite (or c!1151968 c!1151965) lt!2361578 (Context!11247 call!539929)) (Context!11247 call!539986)) (h!71342 s!2326)))))

(declare-fun b!6337776 () Bool)

(declare-fun call!539985 () (InoxSet Context!11246))

(assert (=> b!6337776 (= e!3849773 call!539985)))

(declare-fun c!1152111 () Bool)

(declare-fun bm!539982 () Bool)

(assert (=> bm!539982 (= call!539986 ($colon$colon!2102 (exprs!6123 (ite (or c!1151968 c!1151965) lt!2361578 (Context!11247 call!539929))) (ite (or c!1152111 c!1152113) (regTwo!32990 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))) (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343))))))))))))

(declare-fun c!1152112 () Bool)

(declare-fun d!1989195 () Bool)

(assert (=> d!1989195 (= c!1152112 (and ((_ is ElementMatch!16239) (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))) (= (c!1151834 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))) (h!71342 s!2326))))))

(declare-fun e!3849772 () (InoxSet Context!11246))

(assert (=> d!1989195 (= (derivationStepZipperDown!1487 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343))))))) (ite (or c!1151968 c!1151965) lt!2361578 (Context!11247 call!539929)) (h!71342 s!2326)) e!3849772)))

(declare-fun call!539984 () List!65016)

(declare-fun bm!539979 () Bool)

(assert (=> bm!539979 (= call!539987 (derivationStepZipperDown!1487 (ite c!1152114 (regOne!32991 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))) (ite c!1152111 (regTwo!32990 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))) (ite c!1152113 (regOne!32990 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))) (reg!16568 (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343))))))))))) (ite (or c!1152114 c!1152111) (ite (or c!1151968 c!1151965) lt!2361578 (Context!11247 call!539929)) (Context!11247 call!539984)) (h!71342 s!2326)))))

(declare-fun bm!539983 () Bool)

(assert (=> bm!539983 (= call!539984 call!539986)))

(declare-fun b!6337777 () Bool)

(assert (=> b!6337777 (= e!3849772 (store ((as const (Array Context!11246 Bool)) false) (ite (or c!1151968 c!1151965) lt!2361578 (Context!11247 call!539929)) true))))

(declare-fun b!6337778 () Bool)

(declare-fun e!3849771 () (InoxSet Context!11246))

(assert (=> b!6337778 (= e!3849771 ((_ map or) call!539987 call!539989))))

(declare-fun b!6337779 () Bool)

(assert (=> b!6337779 (= e!3849775 call!539985)))

(declare-fun b!6337780 () Bool)

(assert (=> b!6337780 (= c!1152111 e!3849774)))

(declare-fun res!2608189 () Bool)

(assert (=> b!6337780 (=> (not res!2608189) (not e!3849774))))

(assert (=> b!6337780 (= res!2608189 ((_ is Concat!25084) (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))))

(assert (=> b!6337780 (= e!3849771 e!3849776)))

(declare-fun b!6337781 () Bool)

(assert (=> b!6337781 (= e!3849772 e!3849771)))

(assert (=> b!6337781 (= c!1152114 ((_ is Union!16239) (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))))

(declare-fun b!6337782 () Bool)

(declare-fun c!1152115 () Bool)

(assert (=> b!6337782 (= c!1152115 ((_ is Star!16239) (ite c!1151968 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151965 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1151967 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))))

(assert (=> b!6337782 (= e!3849773 e!3849775)))

(declare-fun bm!539984 () Bool)

(assert (=> bm!539984 (= call!539985 call!539988)))

(assert (= (and d!1989195 c!1152112) b!6337777))

(assert (= (and d!1989195 (not c!1152112)) b!6337781))

(assert (= (and b!6337781 c!1152114) b!6337778))

(assert (= (and b!6337781 (not c!1152114)) b!6337780))

(assert (= (and b!6337780 res!2608189) b!6337775))

(assert (= (and b!6337780 c!1152111) b!6337774))

(assert (= (and b!6337780 (not c!1152111)) b!6337772))

(assert (= (and b!6337772 c!1152113) b!6337776))

(assert (= (and b!6337772 (not c!1152113)) b!6337782))

(assert (= (and b!6337782 c!1152115) b!6337779))

(assert (= (and b!6337782 (not c!1152115)) b!6337773))

(assert (= (or b!6337776 b!6337779) bm!539983))

(assert (= (or b!6337776 b!6337779) bm!539984))

(assert (= (or b!6337774 bm!539983) bm!539982))

(assert (= (or b!6337774 bm!539984) bm!539980))

(assert (= (or b!6337778 b!6337774) bm!539981))

(assert (= (or b!6337778 bm!539980) bm!539979))

(declare-fun m!7146840 () Bool)

(assert (=> bm!539979 m!7146840))

(declare-fun m!7146842 () Bool)

(assert (=> bm!539981 m!7146842))

(declare-fun m!7146844 () Bool)

(assert (=> bm!539982 m!7146844))

(declare-fun m!7146846 () Bool)

(assert (=> b!6337777 m!7146846))

(declare-fun m!7146848 () Bool)

(assert (=> b!6337775 m!7146848))

(assert (=> bm!539924 d!1989195))

(declare-fun d!1989201 () Bool)

(assert (=> d!1989201 (= (head!12973 lt!2361557) (h!71340 lt!2361557))))

(assert (=> b!6337061 d!1989201))

(declare-fun d!1989203 () Bool)

(assert (=> d!1989203 (= (nullable!6232 (regOne!32990 (regOne!32990 (regOne!32990 r!7292)))) (nullableFct!2181 (regOne!32990 (regOne!32990 (regOne!32990 r!7292)))))))

(declare-fun bs!1586777 () Bool)

(assert (= bs!1586777 d!1989203))

(declare-fun m!7146850 () Bool)

(assert (=> bs!1586777 m!7146850))

(assert (=> b!6337269 d!1989203))

(declare-fun d!1989205 () Bool)

(assert (=> d!1989205 (= (Exists!3309 lambda!348039) (choose!46982 lambda!348039))))

(declare-fun bs!1586778 () Bool)

(assert (= bs!1586778 d!1989205))

(declare-fun m!7146852 () Bool)

(assert (=> bs!1586778 m!7146852))

(assert (=> d!1989129 d!1989205))

(declare-fun d!1989207 () Bool)

(assert (=> d!1989207 (= (Exists!3309 lambda!348040) (choose!46982 lambda!348040))))

(declare-fun bs!1586779 () Bool)

(assert (= bs!1586779 d!1989207))

(declare-fun m!7146854 () Bool)

(assert (=> bs!1586779 m!7146854))

(assert (=> d!1989129 d!1989207))

(declare-fun bs!1586780 () Bool)

(declare-fun d!1989209 () Bool)

(assert (= bs!1586780 (and d!1989209 d!1989127)))

(declare-fun lambda!348056 () Int)

(assert (=> bs!1586780 (= lambda!348056 lambda!348034)))

(declare-fun bs!1586781 () Bool)

(assert (= bs!1586781 (and d!1989209 d!1989129)))

(assert (=> bs!1586781 (not (= lambda!348056 lambda!348040))))

(declare-fun bs!1586782 () Bool)

(assert (= bs!1586782 (and d!1989209 b!6337339)))

(assert (=> bs!1586782 (not (= lambda!348056 lambda!348022))))

(assert (=> bs!1586781 (= lambda!348056 lambda!348039)))

(declare-fun bs!1586783 () Bool)

(assert (= bs!1586783 (and d!1989209 b!6336813)))

(assert (=> bs!1586783 (not (= lambda!348056 lambda!347958))))

(declare-fun bs!1586784 () Bool)

(assert (= bs!1586784 (and d!1989209 b!6337341)))

(assert (=> bs!1586784 (not (= lambda!348056 lambda!348021))))

(assert (=> bs!1586783 (= lambda!348056 lambda!347957)))

(assert (=> d!1989209 true))

(assert (=> d!1989209 true))

(assert (=> d!1989209 true))

(declare-fun lambda!348057 () Int)

(assert (=> bs!1586780 (not (= lambda!348057 lambda!348034))))

(assert (=> bs!1586781 (= lambda!348057 lambda!348040)))

(declare-fun bs!1586785 () Bool)

(assert (= bs!1586785 d!1989209))

(assert (=> bs!1586785 (not (= lambda!348057 lambda!348056))))

(assert (=> bs!1586782 (= lambda!348057 lambda!348022)))

(assert (=> bs!1586781 (not (= lambda!348057 lambda!348039))))

(assert (=> bs!1586783 (= lambda!348057 lambda!347958)))

(assert (=> bs!1586784 (not (= lambda!348057 lambda!348021))))

(assert (=> bs!1586783 (not (= lambda!348057 lambda!347957))))

(assert (=> d!1989209 true))

(assert (=> d!1989209 true))

(assert (=> d!1989209 true))

(assert (=> d!1989209 (= (Exists!3309 lambda!348056) (Exists!3309 lambda!348057))))

(assert (=> d!1989209 true))

(declare-fun _$90!2178 () Unit!158287)

(assert (=> d!1989209 (= (choose!46984 (regOne!32990 r!7292) (regTwo!32990 r!7292) s!2326) _$90!2178)))

(declare-fun m!7146878 () Bool)

(assert (=> bs!1586785 m!7146878))

(declare-fun m!7146880 () Bool)

(assert (=> bs!1586785 m!7146880))

(assert (=> d!1989129 d!1989209))

(declare-fun b!6337812 () Bool)

(declare-fun res!2608206 () Bool)

(declare-fun e!3849800 () Bool)

(assert (=> b!6337812 (=> (not res!2608206) (not e!3849800))))

(declare-fun call!539997 () Bool)

(assert (=> b!6337812 (= res!2608206 call!539997)))

(declare-fun e!3849799 () Bool)

(assert (=> b!6337812 (= e!3849799 e!3849800)))

(declare-fun bm!539991 () Bool)

(declare-fun c!1152123 () Bool)

(declare-fun call!539998 () Bool)

(declare-fun c!1152124 () Bool)

(assert (=> bm!539991 (= call!539998 (validRegex!7975 (ite c!1152124 (reg!16568 (regOne!32990 r!7292)) (ite c!1152123 (regOne!32991 (regOne!32990 r!7292)) (regOne!32990 (regOne!32990 r!7292))))))))

(declare-fun b!6337813 () Bool)

(declare-fun e!3849796 () Bool)

(declare-fun e!3849798 () Bool)

(assert (=> b!6337813 (= e!3849796 e!3849798)))

(declare-fun res!2608205 () Bool)

(assert (=> b!6337813 (=> (not res!2608205) (not e!3849798))))

(assert (=> b!6337813 (= res!2608205 call!539997)))

(declare-fun b!6337814 () Bool)

(declare-fun e!3849801 () Bool)

(assert (=> b!6337814 (= e!3849801 call!539998)))

(declare-fun bm!539992 () Bool)

(assert (=> bm!539992 (= call!539997 call!539998)))

(declare-fun b!6337815 () Bool)

(declare-fun call!539996 () Bool)

(assert (=> b!6337815 (= e!3849800 call!539996)))

(declare-fun b!6337816 () Bool)

(declare-fun e!3849797 () Bool)

(assert (=> b!6337816 (= e!3849797 e!3849801)))

(declare-fun res!2608209 () Bool)

(assert (=> b!6337816 (= res!2608209 (not (nullable!6232 (reg!16568 (regOne!32990 r!7292)))))))

(assert (=> b!6337816 (=> (not res!2608209) (not e!3849801))))

(declare-fun bm!539993 () Bool)

(assert (=> bm!539993 (= call!539996 (validRegex!7975 (ite c!1152123 (regTwo!32991 (regOne!32990 r!7292)) (regTwo!32990 (regOne!32990 r!7292)))))))

(declare-fun b!6337817 () Bool)

(declare-fun e!3849795 () Bool)

(assert (=> b!6337817 (= e!3849795 e!3849797)))

(assert (=> b!6337817 (= c!1152124 ((_ is Star!16239) (regOne!32990 r!7292)))))

(declare-fun d!1989221 () Bool)

(declare-fun res!2608208 () Bool)

(assert (=> d!1989221 (=> res!2608208 e!3849795)))

(assert (=> d!1989221 (= res!2608208 ((_ is ElementMatch!16239) (regOne!32990 r!7292)))))

(assert (=> d!1989221 (= (validRegex!7975 (regOne!32990 r!7292)) e!3849795)))

(declare-fun b!6337818 () Bool)

(assert (=> b!6337818 (= e!3849798 call!539996)))

(declare-fun b!6337819 () Bool)

(declare-fun res!2608207 () Bool)

(assert (=> b!6337819 (=> res!2608207 e!3849796)))

(assert (=> b!6337819 (= res!2608207 (not ((_ is Concat!25084) (regOne!32990 r!7292))))))

(assert (=> b!6337819 (= e!3849799 e!3849796)))

(declare-fun b!6337820 () Bool)

(assert (=> b!6337820 (= e!3849797 e!3849799)))

(assert (=> b!6337820 (= c!1152123 ((_ is Union!16239) (regOne!32990 r!7292)))))

(assert (= (and d!1989221 (not res!2608208)) b!6337817))

(assert (= (and b!6337817 c!1152124) b!6337816))

(assert (= (and b!6337817 (not c!1152124)) b!6337820))

(assert (= (and b!6337816 res!2608209) b!6337814))

(assert (= (and b!6337820 c!1152123) b!6337812))

(assert (= (and b!6337820 (not c!1152123)) b!6337819))

(assert (= (and b!6337812 res!2608206) b!6337815))

(assert (= (and b!6337819 (not res!2608207)) b!6337813))

(assert (= (and b!6337813 res!2608205) b!6337818))

(assert (= (or b!6337815 b!6337818) bm!539993))

(assert (= (or b!6337812 b!6337813) bm!539992))

(assert (= (or b!6337814 bm!539992) bm!539991))

(declare-fun m!7146882 () Bool)

(assert (=> bm!539991 m!7146882))

(declare-fun m!7146884 () Bool)

(assert (=> b!6337816 m!7146884))

(declare-fun m!7146886 () Bool)

(assert (=> bm!539993 m!7146886))

(assert (=> d!1989129 d!1989221))

(declare-fun b!6337847 () Bool)

(declare-fun e!3849828 () Bool)

(declare-fun e!3849831 () Bool)

(assert (=> b!6337847 (= e!3849828 e!3849831)))

(declare-fun res!2608231 () Bool)

(assert (=> b!6337847 (=> (not res!2608231) (not e!3849831))))

(assert (=> b!6337847 (= res!2608231 (and (not ((_ is EmptyLang!16239) (h!71340 (exprs!6123 (h!71341 zl!343))))) (not ((_ is ElementMatch!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun b!6337848 () Bool)

(declare-fun e!3849829 () Bool)

(declare-fun e!3849830 () Bool)

(assert (=> b!6337848 (= e!3849829 e!3849830)))

(declare-fun res!2608232 () Bool)

(declare-fun call!540004 () Bool)

(assert (=> b!6337848 (= res!2608232 call!540004)))

(assert (=> b!6337848 (=> (not res!2608232) (not e!3849830))))

(declare-fun b!6337849 () Bool)

(declare-fun e!3849826 () Bool)

(assert (=> b!6337849 (= e!3849831 e!3849826)))

(declare-fun res!2608230 () Bool)

(assert (=> b!6337849 (=> res!2608230 e!3849826)))

(assert (=> b!6337849 (= res!2608230 ((_ is Star!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6337850 () Bool)

(declare-fun e!3849827 () Bool)

(assert (=> b!6337850 (= e!3849829 e!3849827)))

(declare-fun res!2608233 () Bool)

(assert (=> b!6337850 (= res!2608233 call!540004)))

(assert (=> b!6337850 (=> res!2608233 e!3849827)))

(declare-fun bm!539998 () Bool)

(declare-fun c!1152127 () Bool)

(assert (=> bm!539998 (= call!540004 (nullable!6232 (ite c!1152127 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun bm!539999 () Bool)

(declare-fun call!540003 () Bool)

(assert (=> bm!539999 (= call!540003 (nullable!6232 (ite c!1152127 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun b!6337852 () Bool)

(assert (=> b!6337852 (= e!3849827 call!540003)))

(declare-fun b!6337853 () Bool)

(assert (=> b!6337853 (= e!3849826 e!3849829)))

(assert (=> b!6337853 (= c!1152127 ((_ is Union!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun d!1989223 () Bool)

(declare-fun res!2608234 () Bool)

(assert (=> d!1989223 (=> res!2608234 e!3849828)))

(assert (=> d!1989223 (= res!2608234 ((_ is EmptyExpr!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> d!1989223 (= (nullableFct!2181 (h!71340 (exprs!6123 (h!71341 zl!343)))) e!3849828)))

(declare-fun b!6337851 () Bool)

(assert (=> b!6337851 (= e!3849830 call!540003)))

(assert (= (and d!1989223 (not res!2608234)) b!6337847))

(assert (= (and b!6337847 res!2608231) b!6337849))

(assert (= (and b!6337849 (not res!2608230)) b!6337853))

(assert (= (and b!6337853 c!1152127) b!6337850))

(assert (= (and b!6337853 (not c!1152127)) b!6337848))

(assert (= (and b!6337850 (not res!2608233)) b!6337852))

(assert (= (and b!6337848 res!2608232) b!6337851))

(assert (= (or b!6337852 b!6337851) bm!539999))

(assert (= (or b!6337850 b!6337848) bm!539998))

(declare-fun m!7146892 () Bool)

(assert (=> bm!539998 m!7146892))

(declare-fun m!7146894 () Bool)

(assert (=> bm!539999 m!7146894))

(assert (=> d!1988995 d!1989223))

(declare-fun d!1989227 () Bool)

(assert (=> d!1989227 (= (nullable!6232 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (nullableFct!2181 (h!71340 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))))

(declare-fun bs!1586786 () Bool)

(assert (= bs!1586786 d!1989227))

(declare-fun m!7146896 () Bool)

(assert (=> bs!1586786 m!7146896))

(assert (=> b!6337173 d!1989227))

(declare-fun bs!1586787 () Bool)

(declare-fun b!6337857 () Bool)

(assert (= bs!1586787 (and b!6337857 b!6337112)))

(declare-fun lambda!348058 () Int)

(assert (=> bs!1586787 (= lambda!348058 lambda!347989)))

(declare-fun bs!1586788 () Bool)

(assert (= bs!1586788 (and b!6337857 b!6337137)))

(assert (=> bs!1586788 (= lambda!348058 lambda!347992)))

(declare-fun lt!2361727 () Int)

(declare-fun lambda!348059 () Int)

(assert (=> bs!1586787 (= (= lt!2361727 lt!2361621) (= lambda!348059 lambda!347990))))

(declare-fun bs!1586789 () Bool)

(assert (= bs!1586789 (and b!6337857 b!6337114)))

(assert (=> bs!1586789 (= (= lt!2361727 lt!2361618) (= lambda!348059 lambda!347991))))

(assert (=> bs!1586788 (= (= lt!2361727 lt!2361627) (= lambda!348059 lambda!347993))))

(declare-fun bs!1586790 () Bool)

(assert (= bs!1586790 (and b!6337857 b!6337139)))

(assert (=> bs!1586790 (= (= lt!2361727 lt!2361624) (= lambda!348059 lambda!347994))))

(assert (=> b!6337857 true))

(declare-fun bs!1586791 () Bool)

(declare-fun b!6337859 () Bool)

(assert (= bs!1586791 (and b!6337859 b!6337112)))

(declare-fun lt!2361724 () Int)

(declare-fun lambda!348060 () Int)

(assert (=> bs!1586791 (= (= lt!2361724 lt!2361621) (= lambda!348060 lambda!347990))))

(declare-fun bs!1586792 () Bool)

(assert (= bs!1586792 (and b!6337859 b!6337137)))

(assert (=> bs!1586792 (= (= lt!2361724 lt!2361627) (= lambda!348060 lambda!347993))))

(declare-fun bs!1586793 () Bool)

(assert (= bs!1586793 (and b!6337859 b!6337114)))

(assert (=> bs!1586793 (= (= lt!2361724 lt!2361618) (= lambda!348060 lambda!347991))))

(declare-fun bs!1586794 () Bool)

(assert (= bs!1586794 (and b!6337859 b!6337139)))

(assert (=> bs!1586794 (= (= lt!2361724 lt!2361624) (= lambda!348060 lambda!347994))))

(declare-fun bs!1586795 () Bool)

(assert (= bs!1586795 (and b!6337859 b!6337857)))

(assert (=> bs!1586795 (= (= lt!2361724 lt!2361727) (= lambda!348060 lambda!348059))))

(assert (=> b!6337859 true))

(declare-fun d!1989229 () Bool)

(declare-fun e!3849835 () Bool)

(assert (=> d!1989229 e!3849835))

(declare-fun res!2608237 () Bool)

(assert (=> d!1989229 (=> (not res!2608237) (not e!3849835))))

(assert (=> d!1989229 (= res!2608237 (>= lt!2361724 0))))

(declare-fun e!3849836 () Int)

(assert (=> d!1989229 (= lt!2361724 e!3849836)))

(declare-fun c!1152128 () Bool)

(assert (=> d!1989229 (= c!1152128 ((_ is Cons!64893) (t!378601 lt!2361561)))))

(assert (=> d!1989229 (= (zipperDepth!346 (t!378601 lt!2361561)) lt!2361724)))

(assert (=> b!6337857 (= e!3849836 lt!2361727)))

(assert (=> b!6337857 (= lt!2361727 (maxBigInt!0 (contextDepth!237 (h!71341 (t!378601 lt!2361561))) (zipperDepth!346 (t!378601 (t!378601 lt!2361561)))))))

(declare-fun lt!2361726 () Unit!158287)

(assert (=> b!6337857 (= lt!2361726 (lemmaForallContextDepthBiggerThanTransitive!221 (t!378601 (t!378601 lt!2361561)) lt!2361727 (zipperDepth!346 (t!378601 (t!378601 lt!2361561))) lambda!348058))))

(assert (=> b!6337857 (forall!15394 (t!378601 (t!378601 lt!2361561)) lambda!348059)))

(declare-fun lt!2361725 () Unit!158287)

(assert (=> b!6337857 (= lt!2361725 lt!2361726)))

(declare-fun b!6337858 () Bool)

(assert (=> b!6337858 (= e!3849836 0)))

(assert (=> b!6337859 (= e!3849835 (forall!15394 (t!378601 lt!2361561) lambda!348060))))

(assert (= (and d!1989229 c!1152128) b!6337857))

(assert (= (and d!1989229 (not c!1152128)) b!6337858))

(assert (= (and d!1989229 res!2608237) b!6337859))

(declare-fun m!7146916 () Bool)

(assert (=> b!6337857 m!7146916))

(declare-fun m!7146918 () Bool)

(assert (=> b!6337857 m!7146918))

(assert (=> b!6337857 m!7146916))

(declare-fun m!7146920 () Bool)

(assert (=> b!6337857 m!7146920))

(declare-fun m!7146922 () Bool)

(assert (=> b!6337857 m!7146922))

(assert (=> b!6337857 m!7146920))

(assert (=> b!6337857 m!7146920))

(declare-fun m!7146924 () Bool)

(assert (=> b!6337857 m!7146924))

(declare-fun m!7146926 () Bool)

(assert (=> b!6337859 m!7146926))

(assert (=> b!6337112 d!1989229))

(declare-fun d!1989235 () Bool)

(assert (=> d!1989235 (= (maxBigInt!0 (contextDepth!237 (h!71341 lt!2361561)) (zipperDepth!346 (t!378601 lt!2361561))) (ite (>= (contextDepth!237 (h!71341 lt!2361561)) (zipperDepth!346 (t!378601 lt!2361561))) (contextDepth!237 (h!71341 lt!2361561)) (zipperDepth!346 (t!378601 lt!2361561))))))

(assert (=> b!6337112 d!1989235))

(declare-fun bs!1586799 () Bool)

(declare-fun d!1989239 () Bool)

(assert (= bs!1586799 (and d!1989239 b!6337112)))

(declare-fun lambda!348064 () Int)

(assert (=> bs!1586799 (not (= lambda!348064 lambda!347990))))

(declare-fun bs!1586800 () Bool)

(assert (= bs!1586800 (and d!1989239 b!6337137)))

(assert (=> bs!1586800 (not (= lambda!348064 lambda!347993))))

(declare-fun bs!1586801 () Bool)

(assert (= bs!1586801 (and d!1989239 b!6337114)))

(assert (=> bs!1586801 (not (= lambda!348064 lambda!347991))))

(declare-fun bs!1586802 () Bool)

(assert (= bs!1586802 (and d!1989239 b!6337859)))

(assert (=> bs!1586802 (not (= lambda!348064 lambda!348060))))

(declare-fun bs!1586803 () Bool)

(assert (= bs!1586803 (and d!1989239 b!6337139)))

(assert (=> bs!1586803 (not (= lambda!348064 lambda!347994))))

(declare-fun bs!1586804 () Bool)

(assert (= bs!1586804 (and d!1989239 b!6337857)))

(assert (=> bs!1586804 (not (= lambda!348064 lambda!348059))))

(assert (=> d!1989239 true))

(assert (=> d!1989239 true))

(declare-fun order!27503 () Int)

(declare-fun order!27501 () Int)

(declare-fun dynLambda!25718 (Int Int) Int)

(declare-fun dynLambda!25719 (Int Int) Int)

(assert (=> d!1989239 (< (dynLambda!25718 order!27501 lambda!347989) (dynLambda!25719 order!27503 lambda!348064))))

(assert (=> d!1989239 (forall!15394 (t!378601 lt!2361561) lambda!348064)))

(declare-fun lt!2361730 () Unit!158287)

(declare-fun choose!46986 (List!65017 Int Int Int) Unit!158287)

(assert (=> d!1989239 (= lt!2361730 (choose!46986 (t!378601 lt!2361561) lt!2361621 (zipperDepth!346 (t!378601 lt!2361561)) lambda!347989))))

(assert (=> d!1989239 (>= lt!2361621 (zipperDepth!346 (t!378601 lt!2361561)))))

(assert (=> d!1989239 (= (lemmaForallContextDepthBiggerThanTransitive!221 (t!378601 lt!2361561) lt!2361621 (zipperDepth!346 (t!378601 lt!2361561)) lambda!347989) lt!2361730)))

(declare-fun bs!1586805 () Bool)

(assert (= bs!1586805 d!1989239))

(declare-fun m!7146942 () Bool)

(assert (=> bs!1586805 m!7146942))

(assert (=> bs!1586805 m!7146278))

(declare-fun m!7146944 () Bool)

(assert (=> bs!1586805 m!7146944))

(assert (=> b!6337112 d!1989239))

(declare-fun d!1989251 () Bool)

(declare-fun res!2608243 () Bool)

(declare-fun e!3849846 () Bool)

(assert (=> d!1989251 (=> res!2608243 e!3849846)))

(assert (=> d!1989251 (= res!2608243 ((_ is Nil!64893) (t!378601 lt!2361561)))))

(assert (=> d!1989251 (= (forall!15394 (t!378601 lt!2361561) lambda!347990) e!3849846)))

(declare-fun b!6337877 () Bool)

(declare-fun e!3849847 () Bool)

(assert (=> b!6337877 (= e!3849846 e!3849847)))

(declare-fun res!2608244 () Bool)

(assert (=> b!6337877 (=> (not res!2608244) (not e!3849847))))

(declare-fun dynLambda!25720 (Int Context!11246) Bool)

(assert (=> b!6337877 (= res!2608244 (dynLambda!25720 lambda!347990 (h!71341 (t!378601 lt!2361561))))))

(declare-fun b!6337878 () Bool)

(assert (=> b!6337878 (= e!3849847 (forall!15394 (t!378601 (t!378601 lt!2361561)) lambda!347990))))

(assert (= (and d!1989251 (not res!2608243)) b!6337877))

(assert (= (and b!6337877 res!2608244) b!6337878))

(declare-fun b_lambda!241191 () Bool)

(assert (=> (not b_lambda!241191) (not b!6337877)))

(declare-fun m!7146950 () Bool)

(assert (=> b!6337877 m!7146950))

(declare-fun m!7146952 () Bool)

(assert (=> b!6337878 m!7146952))

(assert (=> b!6337112 d!1989251))

(declare-fun bs!1586829 () Bool)

(declare-fun b!6337917 () Bool)

(assert (= bs!1586829 (and b!6337917 d!1989111)))

(declare-fun lambda!348073 () Int)

(assert (=> bs!1586829 (not (= lambda!348073 lambda!348027))))

(declare-fun bs!1586830 () Bool)

(assert (= bs!1586830 (and b!6337917 d!1989145)))

(assert (=> bs!1586830 (not (= lambda!348073 lambda!348044))))

(declare-fun bs!1586831 () Bool)

(assert (= bs!1586831 (and b!6337917 d!1989191)))

(assert (=> bs!1586831 (not (= lambda!348073 lambda!348051))))

(declare-fun bs!1586832 () Bool)

(assert (= bs!1586832 (and b!6337917 d!1989029)))

(assert (=> bs!1586832 (not (= lambda!348073 lambda!348004))))

(declare-fun bs!1586833 () Bool)

(assert (= bs!1586833 (and b!6337917 d!1989161)))

(assert (=> bs!1586833 (not (= lambda!348073 lambda!348049))))

(declare-fun bs!1586834 () Bool)

(assert (= bs!1586834 (and b!6337917 d!1989185)))

(assert (=> bs!1586834 (not (= lambda!348073 lambda!348050))))

(declare-fun bs!1586835 () Bool)

(assert (= bs!1586835 (and b!6337917 d!1989159)))

(assert (=> bs!1586835 (not (= lambda!348073 lambda!348048))))

(declare-fun bs!1586836 () Bool)

(assert (= bs!1586836 (and b!6337917 d!1989147)))

(assert (=> bs!1586836 (not (= lambda!348073 lambda!348047))))

(declare-fun bs!1586837 () Bool)

(assert (= bs!1586837 (and b!6337917 d!1988975)))

(assert (=> bs!1586837 (not (= lambda!348073 lambda!347980))))

(declare-fun bs!1586838 () Bool)

(assert (= bs!1586838 (and b!6337917 d!1989143)))

(assert (=> bs!1586838 (not (= lambda!348073 lambda!348041))))

(assert (=> b!6337917 true))

(declare-fun bs!1586839 () Bool)

(declare-fun b!6337919 () Bool)

(assert (= bs!1586839 (and b!6337919 d!1989111)))

(declare-fun lambda!348074 () Int)

(assert (=> bs!1586839 (not (= lambda!348074 lambda!348027))))

(declare-fun bs!1586840 () Bool)

(assert (= bs!1586840 (and b!6337919 b!6337917)))

(declare-fun lt!2361742 () Int)

(declare-fun lt!2361743 () Int)

(assert (=> bs!1586840 (= (= lt!2361742 lt!2361743) (= lambda!348074 lambda!348073))))

(declare-fun bs!1586841 () Bool)

(assert (= bs!1586841 (and b!6337919 d!1989145)))

(assert (=> bs!1586841 (not (= lambda!348074 lambda!348044))))

(declare-fun bs!1586842 () Bool)

(assert (= bs!1586842 (and b!6337919 d!1989191)))

(assert (=> bs!1586842 (not (= lambda!348074 lambda!348051))))

(declare-fun bs!1586843 () Bool)

(assert (= bs!1586843 (and b!6337919 d!1989029)))

(assert (=> bs!1586843 (not (= lambda!348074 lambda!348004))))

(declare-fun bs!1586844 () Bool)

(assert (= bs!1586844 (and b!6337919 d!1989161)))

(assert (=> bs!1586844 (not (= lambda!348074 lambda!348049))))

(declare-fun bs!1586845 () Bool)

(assert (= bs!1586845 (and b!6337919 d!1989185)))

(assert (=> bs!1586845 (not (= lambda!348074 lambda!348050))))

(declare-fun bs!1586846 () Bool)

(assert (= bs!1586846 (and b!6337919 d!1989159)))

(assert (=> bs!1586846 (not (= lambda!348074 lambda!348048))))

(declare-fun bs!1586847 () Bool)

(assert (= bs!1586847 (and b!6337919 d!1989147)))

(assert (=> bs!1586847 (not (= lambda!348074 lambda!348047))))

(declare-fun bs!1586848 () Bool)

(assert (= bs!1586848 (and b!6337919 d!1988975)))

(assert (=> bs!1586848 (not (= lambda!348074 lambda!347980))))

(declare-fun bs!1586849 () Bool)

(assert (= bs!1586849 (and b!6337919 d!1989143)))

(assert (=> bs!1586849 (not (= lambda!348074 lambda!348041))))

(assert (=> b!6337919 true))

(declare-fun d!1989259 () Bool)

(declare-fun e!3849874 () Bool)

(assert (=> d!1989259 e!3849874))

(declare-fun res!2608262 () Bool)

(assert (=> d!1989259 (=> (not res!2608262) (not e!3849874))))

(assert (=> d!1989259 (= res!2608262 (>= lt!2361742 0))))

(declare-fun e!3849875 () Int)

(assert (=> d!1989259 (= lt!2361742 e!3849875)))

(declare-fun c!1152148 () Bool)

(assert (=> d!1989259 (= c!1152148 ((_ is Cons!64892) (exprs!6123 (h!71341 lt!2361561))))))

(assert (=> d!1989259 (= (contextDepth!237 (h!71341 lt!2361561)) lt!2361742)))

(assert (=> b!6337917 (= e!3849875 lt!2361743)))

(declare-fun regexDepth!321 (Regex!16239) Int)

(assert (=> b!6337917 (= lt!2361743 (maxBigInt!0 (regexDepth!321 (h!71340 (exprs!6123 (h!71341 lt!2361561)))) (contextDepth!237 (Context!11247 (t!378600 (exprs!6123 (h!71341 lt!2361561)))))))))

(declare-fun lt!2361741 () Unit!158287)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!111 (List!65016 Int Int) Unit!158287)

(assert (=> b!6337917 (= lt!2361741 (lemmaForallRegexDepthBiggerThanTransitive!111 (t!378600 (exprs!6123 (h!71341 lt!2361561))) lt!2361743 (contextDepth!237 (Context!11247 (t!378600 (exprs!6123 (h!71341 lt!2361561)))))))))

(assert (=> b!6337917 (forall!15393 (t!378600 (exprs!6123 (h!71341 lt!2361561))) lambda!348073)))

(declare-fun lt!2361744 () Unit!158287)

(assert (=> b!6337917 (= lt!2361744 lt!2361741)))

(declare-fun b!6337918 () Bool)

(assert (=> b!6337918 (= e!3849875 0)))

(assert (=> b!6337919 (= e!3849874 (forall!15393 (exprs!6123 (h!71341 lt!2361561)) lambda!348074))))

(assert (= (and d!1989259 c!1152148) b!6337917))

(assert (= (and d!1989259 (not c!1152148)) b!6337918))

(assert (= (and d!1989259 res!2608262) b!6337919))

(declare-fun m!7147000 () Bool)

(assert (=> b!6337917 m!7147000))

(declare-fun m!7147002 () Bool)

(assert (=> b!6337917 m!7147002))

(declare-fun m!7147004 () Bool)

(assert (=> b!6337917 m!7147004))

(declare-fun m!7147006 () Bool)

(assert (=> b!6337917 m!7147006))

(assert (=> b!6337917 m!7147000))

(declare-fun m!7147008 () Bool)

(assert (=> b!6337917 m!7147008))

(assert (=> b!6337917 m!7147000))

(assert (=> b!6337917 m!7147006))

(declare-fun m!7147010 () Bool)

(assert (=> b!6337919 m!7147010))

(assert (=> b!6337112 d!1989259))

(assert (=> d!1989049 d!1989183))

(declare-fun b!6337936 () Bool)

(declare-fun res!2608272 () Bool)

(declare-fun e!3849888 () Bool)

(assert (=> b!6337936 (=> (not res!2608272) (not e!3849888))))

(declare-fun call!540014 () Bool)

(assert (=> b!6337936 (= res!2608272 call!540014)))

(declare-fun e!3849887 () Bool)

(assert (=> b!6337936 (= e!3849887 e!3849888)))

(declare-fun c!1152152 () Bool)

(declare-fun c!1152153 () Bool)

(declare-fun call!540015 () Bool)

(declare-fun bm!540008 () Bool)

(assert (=> bm!540008 (= call!540015 (validRegex!7975 (ite c!1152153 (reg!16568 lt!2361678) (ite c!1152152 (regOne!32991 lt!2361678) (regOne!32990 lt!2361678)))))))

(declare-fun b!6337937 () Bool)

(declare-fun e!3849884 () Bool)

(declare-fun e!3849886 () Bool)

(assert (=> b!6337937 (= e!3849884 e!3849886)))

(declare-fun res!2608271 () Bool)

(assert (=> b!6337937 (=> (not res!2608271) (not e!3849886))))

(assert (=> b!6337937 (= res!2608271 call!540014)))

(declare-fun b!6337938 () Bool)

(declare-fun e!3849889 () Bool)

(assert (=> b!6337938 (= e!3849889 call!540015)))

(declare-fun bm!540009 () Bool)

(assert (=> bm!540009 (= call!540014 call!540015)))

(declare-fun b!6337939 () Bool)

(declare-fun call!540013 () Bool)

(assert (=> b!6337939 (= e!3849888 call!540013)))

(declare-fun b!6337940 () Bool)

(declare-fun e!3849885 () Bool)

(assert (=> b!6337940 (= e!3849885 e!3849889)))

(declare-fun res!2608275 () Bool)

(assert (=> b!6337940 (= res!2608275 (not (nullable!6232 (reg!16568 lt!2361678))))))

(assert (=> b!6337940 (=> (not res!2608275) (not e!3849889))))

(declare-fun bm!540010 () Bool)

(assert (=> bm!540010 (= call!540013 (validRegex!7975 (ite c!1152152 (regTwo!32991 lt!2361678) (regTwo!32990 lt!2361678))))))

(declare-fun b!6337941 () Bool)

(declare-fun e!3849883 () Bool)

(assert (=> b!6337941 (= e!3849883 e!3849885)))

(assert (=> b!6337941 (= c!1152153 ((_ is Star!16239) lt!2361678))))

(declare-fun d!1989283 () Bool)

(declare-fun res!2608274 () Bool)

(assert (=> d!1989283 (=> res!2608274 e!3849883)))

(assert (=> d!1989283 (= res!2608274 ((_ is ElementMatch!16239) lt!2361678))))

(assert (=> d!1989283 (= (validRegex!7975 lt!2361678) e!3849883)))

(declare-fun b!6337942 () Bool)

(assert (=> b!6337942 (= e!3849886 call!540013)))

(declare-fun b!6337943 () Bool)

(declare-fun res!2608273 () Bool)

(assert (=> b!6337943 (=> res!2608273 e!3849884)))

(assert (=> b!6337943 (= res!2608273 (not ((_ is Concat!25084) lt!2361678)))))

(assert (=> b!6337943 (= e!3849887 e!3849884)))

(declare-fun b!6337944 () Bool)

(assert (=> b!6337944 (= e!3849885 e!3849887)))

(assert (=> b!6337944 (= c!1152152 ((_ is Union!16239) lt!2361678))))

(assert (= (and d!1989283 (not res!2608274)) b!6337941))

(assert (= (and b!6337941 c!1152153) b!6337940))

(assert (= (and b!6337941 (not c!1152153)) b!6337944))

(assert (= (and b!6337940 res!2608275) b!6337938))

(assert (= (and b!6337944 c!1152152) b!6337936))

(assert (= (and b!6337944 (not c!1152152)) b!6337943))

(assert (= (and b!6337936 res!2608272) b!6337939))

(assert (= (and b!6337943 (not res!2608273)) b!6337937))

(assert (= (and b!6337937 res!2608271) b!6337942))

(assert (= (or b!6337939 b!6337942) bm!540010))

(assert (= (or b!6337936 b!6337937) bm!540009))

(assert (= (or b!6337938 bm!540009) bm!540008))

(declare-fun m!7147022 () Bool)

(assert (=> bm!540008 m!7147022))

(declare-fun m!7147024 () Bool)

(assert (=> b!6337940 m!7147024))

(declare-fun m!7147028 () Bool)

(assert (=> bm!540010 m!7147028))

(assert (=> d!1989097 d!1989283))

(assert (=> d!1989097 d!1989145))

(assert (=> d!1989097 d!1989147))

(assert (=> b!6337444 d!1989139))

(declare-fun d!1989285 () Bool)

(declare-fun lt!2361746 () Int)

(assert (=> d!1989285 (>= lt!2361746 0)))

(declare-fun e!3849890 () Int)

(assert (=> d!1989285 (= lt!2361746 e!3849890)))

(declare-fun c!1152154 () Bool)

(assert (=> d!1989285 (= c!1152154 ((_ is Cons!64893) (t!378601 zl!343)))))

(assert (=> d!1989285 (= (zipperDepthTotal!376 (t!378601 zl!343)) lt!2361746)))

(declare-fun b!6337945 () Bool)

(assert (=> b!6337945 (= e!3849890 (+ (contextDepthTotal!348 (h!71341 (t!378601 zl!343))) (zipperDepthTotal!376 (t!378601 (t!378601 zl!343)))))))

(declare-fun b!6337946 () Bool)

(assert (=> b!6337946 (= e!3849890 0)))

(assert (= (and d!1989285 c!1152154) b!6337945))

(assert (= (and d!1989285 (not c!1152154)) b!6337946))

(declare-fun m!7147032 () Bool)

(assert (=> b!6337945 m!7147032))

(declare-fun m!7147034 () Bool)

(assert (=> b!6337945 m!7147034))

(assert (=> b!6337444 d!1989285))

(declare-fun d!1989289 () Bool)

(declare-fun c!1152155 () Bool)

(assert (=> d!1989289 (= c!1152155 (isEmpty!36973 (tail!12060 (t!378602 s!2326))))))

(declare-fun e!3849891 () Bool)

(assert (=> d!1989289 (= (matchZipper!2251 (derivationStepZipper!2205 lt!2361558 (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))) e!3849891)))

(declare-fun b!6337947 () Bool)

(assert (=> b!6337947 (= e!3849891 (nullableZipper!2007 (derivationStepZipper!2205 lt!2361558 (head!12975 (t!378602 s!2326)))))))

(declare-fun b!6337948 () Bool)

(assert (=> b!6337948 (= e!3849891 (matchZipper!2251 (derivationStepZipper!2205 (derivationStepZipper!2205 lt!2361558 (head!12975 (t!378602 s!2326))) (head!12975 (tail!12060 (t!378602 s!2326)))) (tail!12060 (tail!12060 (t!378602 s!2326)))))))

(assert (= (and d!1989289 c!1152155) b!6337947))

(assert (= (and d!1989289 (not c!1152155)) b!6337948))

(assert (=> d!1989289 m!7146446))

(declare-fun m!7147036 () Bool)

(assert (=> d!1989289 m!7147036))

(assert (=> b!6337947 m!7146452))

(declare-fun m!7147038 () Bool)

(assert (=> b!6337947 m!7147038))

(assert (=> b!6337948 m!7146446))

(declare-fun m!7147040 () Bool)

(assert (=> b!6337948 m!7147040))

(assert (=> b!6337948 m!7146452))

(assert (=> b!6337948 m!7147040))

(declare-fun m!7147042 () Bool)

(assert (=> b!6337948 m!7147042))

(assert (=> b!6337948 m!7146446))

(declare-fun m!7147044 () Bool)

(assert (=> b!6337948 m!7147044))

(assert (=> b!6337948 m!7147042))

(assert (=> b!6337948 m!7147044))

(declare-fun m!7147046 () Bool)

(assert (=> b!6337948 m!7147046))

(assert (=> b!6337288 d!1989289))

(declare-fun bs!1586850 () Bool)

(declare-fun d!1989291 () Bool)

(assert (= bs!1586850 (and d!1989291 b!6336821)))

(declare-fun lambda!348075 () Int)

(assert (=> bs!1586850 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348075 lambda!347959))))

(declare-fun bs!1586851 () Bool)

(assert (= bs!1586851 (and d!1989291 d!1989037)))

(assert (=> bs!1586851 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348075 lambda!348007))))

(assert (=> d!1989291 true))

(assert (=> d!1989291 (= (derivationStepZipper!2205 lt!2361558 (head!12975 (t!378602 s!2326))) (flatMap!1744 lt!2361558 lambda!348075))))

(declare-fun bs!1586852 () Bool)

(assert (= bs!1586852 d!1989291))

(declare-fun m!7147048 () Bool)

(assert (=> bs!1586852 m!7147048))

(assert (=> b!6337288 d!1989291))

(declare-fun d!1989295 () Bool)

(assert (=> d!1989295 (= (head!12975 (t!378602 s!2326)) (h!71342 (t!378602 s!2326)))))

(assert (=> b!6337288 d!1989295))

(declare-fun d!1989297 () Bool)

(assert (=> d!1989297 (= (tail!12060 (t!378602 s!2326)) (t!378602 (t!378602 s!2326)))))

(assert (=> b!6337288 d!1989297))

(declare-fun d!1989299 () Bool)

(declare-fun res!2608286 () Bool)

(declare-fun e!3849909 () Bool)

(assert (=> d!1989299 (=> res!2608286 e!3849909)))

(assert (=> d!1989299 (= res!2608286 ((_ is Nil!64893) lt!2361650))))

(assert (=> d!1989299 (= (noDuplicate!2070 lt!2361650) e!3849909)))

(declare-fun b!6337973 () Bool)

(declare-fun e!3849910 () Bool)

(assert (=> b!6337973 (= e!3849909 e!3849910)))

(declare-fun res!2608287 () Bool)

(assert (=> b!6337973 (=> (not res!2608287) (not e!3849910))))

(declare-fun contains!20149 (List!65017 Context!11246) Bool)

(assert (=> b!6337973 (= res!2608287 (not (contains!20149 (t!378601 lt!2361650) (h!71341 lt!2361650))))))

(declare-fun b!6337974 () Bool)

(assert (=> b!6337974 (= e!3849910 (noDuplicate!2070 (t!378601 lt!2361650)))))

(assert (= (and d!1989299 (not res!2608286)) b!6337973))

(assert (= (and b!6337973 res!2608287) b!6337974))

(declare-fun m!7147056 () Bool)

(assert (=> b!6337973 m!7147056))

(declare-fun m!7147058 () Bool)

(assert (=> b!6337974 m!7147058))

(assert (=> d!1989055 d!1989299))

(declare-fun d!1989303 () Bool)

(declare-fun e!3849917 () Bool)

(assert (=> d!1989303 e!3849917))

(declare-fun res!2608292 () Bool)

(assert (=> d!1989303 (=> (not res!2608292) (not e!3849917))))

(declare-fun res!2608293 () List!65017)

(assert (=> d!1989303 (= res!2608292 (noDuplicate!2070 res!2608293))))

(declare-fun e!3849919 () Bool)

(assert (=> d!1989303 e!3849919))

(assert (=> d!1989303 (= (choose!46973 z!1189) res!2608293)))

(declare-fun b!6337982 () Bool)

(declare-fun e!3849918 () Bool)

(declare-fun tp!1767685 () Bool)

(assert (=> b!6337982 (= e!3849918 tp!1767685)))

(declare-fun b!6337981 () Bool)

(declare-fun tp!1767686 () Bool)

(assert (=> b!6337981 (= e!3849919 (and (inv!83844 (h!71341 res!2608293)) e!3849918 tp!1767686))))

(declare-fun b!6337983 () Bool)

(assert (=> b!6337983 (= e!3849917 (= (content!12235 res!2608293) z!1189))))

(assert (= b!6337981 b!6337982))

(assert (= (and d!1989303 ((_ is Cons!64893) res!2608293)) b!6337981))

(assert (= (and d!1989303 res!2608292) b!6337983))

(declare-fun m!7147070 () Bool)

(assert (=> d!1989303 m!7147070))

(declare-fun m!7147072 () Bool)

(assert (=> b!6337981 m!7147072))

(declare-fun m!7147074 () Bool)

(assert (=> b!6337983 m!7147074))

(assert (=> d!1989055 d!1989303))

(declare-fun d!1989307 () Bool)

(declare-fun res!2608294 () Bool)

(declare-fun e!3849920 () Bool)

(assert (=> d!1989307 (=> res!2608294 e!3849920)))

(assert (=> d!1989307 (= res!2608294 ((_ is Nil!64892) (exprs!6123 (h!71341 zl!343))))))

(assert (=> d!1989307 (= (forall!15393 (exprs!6123 (h!71341 zl!343)) lambda!348004) e!3849920)))

(declare-fun b!6337984 () Bool)

(declare-fun e!3849921 () Bool)

(assert (=> b!6337984 (= e!3849920 e!3849921)))

(declare-fun res!2608295 () Bool)

(assert (=> b!6337984 (=> (not res!2608295) (not e!3849921))))

(assert (=> b!6337984 (= res!2608295 (dynLambda!25716 lambda!348004 (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6337985 () Bool)

(assert (=> b!6337985 (= e!3849921 (forall!15393 (t!378600 (exprs!6123 (h!71341 zl!343))) lambda!348004))))

(assert (= (and d!1989307 (not res!2608294)) b!6337984))

(assert (= (and b!6337984 res!2608295) b!6337985))

(declare-fun b_lambda!241193 () Bool)

(assert (=> (not b_lambda!241193) (not b!6337984)))

(declare-fun m!7147078 () Bool)

(assert (=> b!6337984 m!7147078))

(declare-fun m!7147080 () Bool)

(assert (=> b!6337985 m!7147080))

(assert (=> d!1989029 d!1989307))

(declare-fun b!6337997 () Bool)

(declare-fun e!3849931 () Bool)

(declare-fun lt!2361747 () Bool)

(declare-fun call!540027 () Bool)

(assert (=> b!6337997 (= e!3849931 (= lt!2361747 call!540027))))

(declare-fun bm!540022 () Bool)

(assert (=> bm!540022 (= call!540027 (isEmpty!36973 (_1!36521 (get!22445 lt!2361697))))))

(declare-fun b!6337998 () Bool)

(declare-fun e!3849935 () Bool)

(assert (=> b!6337998 (= e!3849931 e!3849935)))

(declare-fun c!1152167 () Bool)

(assert (=> b!6337998 (= c!1152167 ((_ is EmptyLang!16239) (regOne!32990 r!7292)))))

(declare-fun d!1989311 () Bool)

(assert (=> d!1989311 e!3849931))

(declare-fun c!1152168 () Bool)

(assert (=> d!1989311 (= c!1152168 ((_ is EmptyExpr!16239) (regOne!32990 r!7292)))))

(declare-fun e!3849932 () Bool)

(assert (=> d!1989311 (= lt!2361747 e!3849932)))

(declare-fun c!1152169 () Bool)

(assert (=> d!1989311 (= c!1152169 (isEmpty!36973 (_1!36521 (get!22445 lt!2361697))))))

(assert (=> d!1989311 (validRegex!7975 (regOne!32990 r!7292))))

(assert (=> d!1989311 (= (matchR!8422 (regOne!32990 r!7292) (_1!36521 (get!22445 lt!2361697))) lt!2361747)))

(declare-fun b!6337999 () Bool)

(assert (=> b!6337999 (= e!3849932 (nullable!6232 (regOne!32990 r!7292)))))

(declare-fun b!6338000 () Bool)

(declare-fun res!2608303 () Bool)

(declare-fun e!3849929 () Bool)

(assert (=> b!6338000 (=> res!2608303 e!3849929)))

(assert (=> b!6338000 (= res!2608303 (not ((_ is ElementMatch!16239) (regOne!32990 r!7292))))))

(assert (=> b!6338000 (= e!3849935 e!3849929)))

(declare-fun b!6338001 () Bool)

(declare-fun res!2608301 () Bool)

(declare-fun e!3849930 () Bool)

(assert (=> b!6338001 (=> (not res!2608301) (not e!3849930))))

(assert (=> b!6338001 (= res!2608301 (isEmpty!36973 (tail!12060 (_1!36521 (get!22445 lt!2361697)))))))

(declare-fun b!6338002 () Bool)

(assert (=> b!6338002 (= e!3849935 (not lt!2361747))))

(declare-fun b!6338003 () Bool)

(declare-fun res!2608305 () Bool)

(declare-fun e!3849934 () Bool)

(assert (=> b!6338003 (=> res!2608305 e!3849934)))

(assert (=> b!6338003 (= res!2608305 (not (isEmpty!36973 (tail!12060 (_1!36521 (get!22445 lt!2361697))))))))

(declare-fun b!6338004 () Bool)

(assert (=> b!6338004 (= e!3849934 (not (= (head!12975 (_1!36521 (get!22445 lt!2361697))) (c!1151834 (regOne!32990 r!7292)))))))

(declare-fun b!6338005 () Bool)

(declare-fun res!2608306 () Bool)

(assert (=> b!6338005 (=> res!2608306 e!3849929)))

(assert (=> b!6338005 (= res!2608306 e!3849930)))

(declare-fun res!2608300 () Bool)

(assert (=> b!6338005 (=> (not res!2608300) (not e!3849930))))

(assert (=> b!6338005 (= res!2608300 lt!2361747)))

(declare-fun b!6338006 () Bool)

(declare-fun e!3849933 () Bool)

(assert (=> b!6338006 (= e!3849933 e!3849934)))

(declare-fun res!2608299 () Bool)

(assert (=> b!6338006 (=> res!2608299 e!3849934)))

(assert (=> b!6338006 (= res!2608299 call!540027)))

(declare-fun b!6338007 () Bool)

(assert (=> b!6338007 (= e!3849929 e!3849933)))

(declare-fun res!2608302 () Bool)

(assert (=> b!6338007 (=> (not res!2608302) (not e!3849933))))

(assert (=> b!6338007 (= res!2608302 (not lt!2361747))))

(declare-fun b!6338008 () Bool)

(assert (=> b!6338008 (= e!3849932 (matchR!8422 (derivativeStep!4946 (regOne!32990 r!7292) (head!12975 (_1!36521 (get!22445 lt!2361697)))) (tail!12060 (_1!36521 (get!22445 lt!2361697)))))))

(declare-fun b!6338009 () Bool)

(declare-fun res!2608304 () Bool)

(assert (=> b!6338009 (=> (not res!2608304) (not e!3849930))))

(assert (=> b!6338009 (= res!2608304 (not call!540027))))

(declare-fun b!6338010 () Bool)

(assert (=> b!6338010 (= e!3849930 (= (head!12975 (_1!36521 (get!22445 lt!2361697))) (c!1151834 (regOne!32990 r!7292))))))

(assert (= (and d!1989311 c!1152169) b!6337999))

(assert (= (and d!1989311 (not c!1152169)) b!6338008))

(assert (= (and d!1989311 c!1152168) b!6337997))

(assert (= (and d!1989311 (not c!1152168)) b!6337998))

(assert (= (and b!6337998 c!1152167) b!6338002))

(assert (= (and b!6337998 (not c!1152167)) b!6338000))

(assert (= (and b!6338000 (not res!2608303)) b!6338005))

(assert (= (and b!6338005 res!2608300) b!6338009))

(assert (= (and b!6338009 res!2608304) b!6338001))

(assert (= (and b!6338001 res!2608301) b!6338010))

(assert (= (and b!6338005 (not res!2608306)) b!6338007))

(assert (= (and b!6338007 res!2608302) b!6338006))

(assert (= (and b!6338006 (not res!2608299)) b!6338003))

(assert (= (and b!6338003 (not res!2608305)) b!6338004))

(assert (= (or b!6337997 b!6338006 b!6338009) bm!540022))

(declare-fun m!7147082 () Bool)

(assert (=> b!6338004 m!7147082))

(assert (=> b!6338010 m!7147082))

(declare-fun m!7147084 () Bool)

(assert (=> d!1989311 m!7147084))

(assert (=> d!1989311 m!7146668))

(declare-fun m!7147086 () Bool)

(assert (=> b!6337999 m!7147086))

(assert (=> bm!540022 m!7147084))

(assert (=> b!6338008 m!7147082))

(assert (=> b!6338008 m!7147082))

(declare-fun m!7147088 () Bool)

(assert (=> b!6338008 m!7147088))

(declare-fun m!7147090 () Bool)

(assert (=> b!6338008 m!7147090))

(assert (=> b!6338008 m!7147088))

(assert (=> b!6338008 m!7147090))

(declare-fun m!7147092 () Bool)

(assert (=> b!6338008 m!7147092))

(assert (=> b!6338001 m!7147090))

(assert (=> b!6338001 m!7147090))

(declare-fun m!7147094 () Bool)

(assert (=> b!6338001 m!7147094))

(assert (=> b!6338003 m!7147090))

(assert (=> b!6338003 m!7147090))

(assert (=> b!6338003 m!7147094))

(assert (=> b!6337564 d!1989311))

(declare-fun d!1989313 () Bool)

(assert (=> d!1989313 (= (get!22445 lt!2361697) (v!52298 lt!2361697))))

(assert (=> b!6337564 d!1989313))

(declare-fun b!6338011 () Bool)

(declare-fun e!3849941 () (InoxSet Context!11246))

(declare-fun e!3849938 () (InoxSet Context!11246))

(assert (=> b!6338011 (= e!3849941 e!3849938)))

(declare-fun c!1152172 () Bool)

(assert (=> b!6338011 (= c!1152172 ((_ is Concat!25084) (h!71340 (exprs!6123 lt!2361567))))))

(declare-fun b!6338012 () Bool)

(declare-fun e!3849940 () (InoxSet Context!11246))

(assert (=> b!6338012 (= e!3849940 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338013 () Bool)

(declare-fun call!540033 () (InoxSet Context!11246))

(declare-fun call!540032 () (InoxSet Context!11246))

(assert (=> b!6338013 (= e!3849941 ((_ map or) call!540033 call!540032))))

(declare-fun b!6338014 () Bool)

(declare-fun e!3849939 () Bool)

(assert (=> b!6338014 (= e!3849939 (nullable!6232 (regOne!32990 (h!71340 (exprs!6123 lt!2361567)))))))

(declare-fun bm!540024 () Bool)

(declare-fun call!540031 () (InoxSet Context!11246))

(assert (=> bm!540024 (= call!540032 call!540031)))

(declare-fun c!1152173 () Bool)

(declare-fun bm!540025 () Bool)

(declare-fun call!540030 () List!65016)

(assert (=> bm!540025 (= call!540033 (derivationStepZipperDown!1487 (ite c!1152173 (regTwo!32991 (h!71340 (exprs!6123 lt!2361567))) (regOne!32990 (h!71340 (exprs!6123 lt!2361567)))) (ite c!1152173 (Context!11247 (t!378600 (exprs!6123 lt!2361567))) (Context!11247 call!540030)) (h!71342 s!2326)))))

(declare-fun b!6338015 () Bool)

(declare-fun call!540029 () (InoxSet Context!11246))

(assert (=> b!6338015 (= e!3849938 call!540029)))

(declare-fun bm!540026 () Bool)

(declare-fun c!1152170 () Bool)

(assert (=> bm!540026 (= call!540030 ($colon$colon!2102 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567)))) (ite (or c!1152170 c!1152172) (regTwo!32990 (h!71340 (exprs!6123 lt!2361567))) (h!71340 (exprs!6123 lt!2361567)))))))

(declare-fun d!1989315 () Bool)

(declare-fun c!1152171 () Bool)

(assert (=> d!1989315 (= c!1152171 (and ((_ is ElementMatch!16239) (h!71340 (exprs!6123 lt!2361567))) (= (c!1151834 (h!71340 (exprs!6123 lt!2361567))) (h!71342 s!2326))))))

(declare-fun e!3849937 () (InoxSet Context!11246))

(assert (=> d!1989315 (= (derivationStepZipperDown!1487 (h!71340 (exprs!6123 lt!2361567)) (Context!11247 (t!378600 (exprs!6123 lt!2361567))) (h!71342 s!2326)) e!3849937)))

(declare-fun bm!540023 () Bool)

(declare-fun call!540028 () List!65016)

(assert (=> bm!540023 (= call!540031 (derivationStepZipperDown!1487 (ite c!1152173 (regOne!32991 (h!71340 (exprs!6123 lt!2361567))) (ite c!1152170 (regTwo!32990 (h!71340 (exprs!6123 lt!2361567))) (ite c!1152172 (regOne!32990 (h!71340 (exprs!6123 lt!2361567))) (reg!16568 (h!71340 (exprs!6123 lt!2361567)))))) (ite (or c!1152173 c!1152170) (Context!11247 (t!378600 (exprs!6123 lt!2361567))) (Context!11247 call!540028)) (h!71342 s!2326)))))

(declare-fun bm!540027 () Bool)

(assert (=> bm!540027 (= call!540028 call!540030)))

(declare-fun b!6338016 () Bool)

(assert (=> b!6338016 (= e!3849937 (store ((as const (Array Context!11246 Bool)) false) (Context!11247 (t!378600 (exprs!6123 lt!2361567))) true))))

(declare-fun b!6338017 () Bool)

(declare-fun e!3849936 () (InoxSet Context!11246))

(assert (=> b!6338017 (= e!3849936 ((_ map or) call!540031 call!540033))))

(declare-fun b!6338018 () Bool)

(assert (=> b!6338018 (= e!3849940 call!540029)))

(declare-fun b!6338019 () Bool)

(assert (=> b!6338019 (= c!1152170 e!3849939)))

(declare-fun res!2608307 () Bool)

(assert (=> b!6338019 (=> (not res!2608307) (not e!3849939))))

(assert (=> b!6338019 (= res!2608307 ((_ is Concat!25084) (h!71340 (exprs!6123 lt!2361567))))))

(assert (=> b!6338019 (= e!3849936 e!3849941)))

(declare-fun b!6338020 () Bool)

(assert (=> b!6338020 (= e!3849937 e!3849936)))

(assert (=> b!6338020 (= c!1152173 ((_ is Union!16239) (h!71340 (exprs!6123 lt!2361567))))))

(declare-fun b!6338021 () Bool)

(declare-fun c!1152174 () Bool)

(assert (=> b!6338021 (= c!1152174 ((_ is Star!16239) (h!71340 (exprs!6123 lt!2361567))))))

(assert (=> b!6338021 (= e!3849938 e!3849940)))

(declare-fun bm!540028 () Bool)

(assert (=> bm!540028 (= call!540029 call!540032)))

(assert (= (and d!1989315 c!1152171) b!6338016))

(assert (= (and d!1989315 (not c!1152171)) b!6338020))

(assert (= (and b!6338020 c!1152173) b!6338017))

(assert (= (and b!6338020 (not c!1152173)) b!6338019))

(assert (= (and b!6338019 res!2608307) b!6338014))

(assert (= (and b!6338019 c!1152170) b!6338013))

(assert (= (and b!6338019 (not c!1152170)) b!6338011))

(assert (= (and b!6338011 c!1152172) b!6338015))

(assert (= (and b!6338011 (not c!1152172)) b!6338021))

(assert (= (and b!6338021 c!1152174) b!6338018))

(assert (= (and b!6338021 (not c!1152174)) b!6338012))

(assert (= (or b!6338015 b!6338018) bm!540027))

(assert (= (or b!6338015 b!6338018) bm!540028))

(assert (= (or b!6338013 bm!540027) bm!540026))

(assert (= (or b!6338013 bm!540028) bm!540024))

(assert (= (or b!6338017 b!6338013) bm!540025))

(assert (= (or b!6338017 bm!540024) bm!540023))

(declare-fun m!7147096 () Bool)

(assert (=> bm!540023 m!7147096))

(declare-fun m!7147098 () Bool)

(assert (=> bm!540025 m!7147098))

(declare-fun m!7147100 () Bool)

(assert (=> bm!540026 m!7147100))

(declare-fun m!7147102 () Bool)

(assert (=> b!6338016 m!7147102))

(declare-fun m!7147104 () Bool)

(assert (=> b!6338014 m!7147104))

(assert (=> bm!539932 d!1989315))

(declare-fun d!1989317 () Bool)

(declare-fun c!1152175 () Bool)

(assert (=> d!1989317 (= c!1152175 (isEmpty!36973 (tail!12060 (t!378602 s!2326))))))

(declare-fun e!3849942 () Bool)

(assert (=> d!1989317 (= (matchZipper!2251 (derivationStepZipper!2205 lt!2361560 (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))) e!3849942)))

(declare-fun b!6338022 () Bool)

(assert (=> b!6338022 (= e!3849942 (nullableZipper!2007 (derivationStepZipper!2205 lt!2361560 (head!12975 (t!378602 s!2326)))))))

(declare-fun b!6338023 () Bool)

(assert (=> b!6338023 (= e!3849942 (matchZipper!2251 (derivationStepZipper!2205 (derivationStepZipper!2205 lt!2361560 (head!12975 (t!378602 s!2326))) (head!12975 (tail!12060 (t!378602 s!2326)))) (tail!12060 (tail!12060 (t!378602 s!2326)))))))

(assert (= (and d!1989317 c!1152175) b!6338022))

(assert (= (and d!1989317 (not c!1152175)) b!6338023))

(assert (=> d!1989317 m!7146446))

(assert (=> d!1989317 m!7147036))

(assert (=> b!6338022 m!7146458))

(declare-fun m!7147106 () Bool)

(assert (=> b!6338022 m!7147106))

(assert (=> b!6338023 m!7146446))

(assert (=> b!6338023 m!7147040))

(assert (=> b!6338023 m!7146458))

(assert (=> b!6338023 m!7147040))

(declare-fun m!7147108 () Bool)

(assert (=> b!6338023 m!7147108))

(assert (=> b!6338023 m!7146446))

(assert (=> b!6338023 m!7147044))

(assert (=> b!6338023 m!7147108))

(assert (=> b!6338023 m!7147044))

(declare-fun m!7147110 () Bool)

(assert (=> b!6338023 m!7147110))

(assert (=> b!6337290 d!1989317))

(declare-fun bs!1586867 () Bool)

(declare-fun d!1989319 () Bool)

(assert (= bs!1586867 (and d!1989319 b!6336821)))

(declare-fun lambda!348079 () Int)

(assert (=> bs!1586867 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348079 lambda!347959))))

(declare-fun bs!1586868 () Bool)

(assert (= bs!1586868 (and d!1989319 d!1989037)))

(assert (=> bs!1586868 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348079 lambda!348007))))

(declare-fun bs!1586870 () Bool)

(assert (= bs!1586870 (and d!1989319 d!1989291)))

(assert (=> bs!1586870 (= lambda!348079 lambda!348075)))

(assert (=> d!1989319 true))

(assert (=> d!1989319 (= (derivationStepZipper!2205 lt!2361560 (head!12975 (t!378602 s!2326))) (flatMap!1744 lt!2361560 lambda!348079))))

(declare-fun bs!1586871 () Bool)

(assert (= bs!1586871 d!1989319))

(declare-fun m!7147112 () Bool)

(assert (=> bs!1586871 m!7147112))

(assert (=> b!6337290 d!1989319))

(assert (=> b!6337290 d!1989295))

(assert (=> b!6337290 d!1989297))

(declare-fun b!6338024 () Bool)

(declare-fun e!3849944 () Bool)

(assert (=> b!6338024 (= e!3849944 (nullable!6232 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361578)))))))))

(declare-fun b!6338025 () Bool)

(declare-fun e!3849943 () (InoxSet Context!11246))

(declare-fun call!540034 () (InoxSet Context!11246))

(assert (=> b!6338025 (= e!3849943 call!540034)))

(declare-fun b!6338026 () Bool)

(assert (=> b!6338026 (= e!3849943 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338027 () Bool)

(declare-fun e!3849945 () (InoxSet Context!11246))

(assert (=> b!6338027 (= e!3849945 e!3849943)))

(declare-fun c!1152176 () Bool)

(assert (=> b!6338027 (= c!1152176 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361578))))))))

(declare-fun d!1989321 () Bool)

(declare-fun c!1152177 () Bool)

(assert (=> d!1989321 (= c!1152177 e!3849944)))

(declare-fun res!2608308 () Bool)

(assert (=> d!1989321 (=> (not res!2608308) (not e!3849944))))

(assert (=> d!1989321 (= res!2608308 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361578))))))))

(assert (=> d!1989321 (= (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 lt!2361578))) (h!71342 s!2326)) e!3849945)))

(declare-fun bm!540029 () Bool)

(assert (=> bm!540029 (= call!540034 (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361578))))) (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361578)))))) (h!71342 s!2326)))))

(declare-fun b!6338028 () Bool)

(assert (=> b!6338028 (= e!3849945 ((_ map or) call!540034 (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361578)))))) (h!71342 s!2326))))))

(assert (= (and d!1989321 res!2608308) b!6338024))

(assert (= (and d!1989321 c!1152177) b!6338028))

(assert (= (and d!1989321 (not c!1152177)) b!6338027))

(assert (= (and b!6338027 c!1152176) b!6338025))

(assert (= (and b!6338027 (not c!1152176)) b!6338026))

(assert (= (or b!6338028 b!6338025) bm!540029))

(declare-fun m!7147114 () Bool)

(assert (=> b!6338024 m!7147114))

(declare-fun m!7147116 () Bool)

(assert (=> bm!540029 m!7147116))

(declare-fun m!7147118 () Bool)

(assert (=> b!6338028 m!7147118))

(assert (=> b!6337240 d!1989321))

(declare-fun d!1989323 () Bool)

(assert (=> d!1989323 (= (isEmpty!36973 s!2326) ((_ is Nil!64894) s!2326))))

(assert (=> bm!539947 d!1989323))

(declare-fun d!1989325 () Bool)

(assert (=> d!1989325 (= ($colon$colon!2102 (exprs!6123 lt!2361578) (ite (or c!1151965 c!1151967) (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (h!71340 (exprs!6123 (h!71341 zl!343))))) (Cons!64892 (ite (or c!1151965 c!1151967) (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (h!71340 (exprs!6123 (h!71341 zl!343)))) (exprs!6123 lt!2361578)))))

(assert (=> bm!539927 d!1989325))

(declare-fun d!1989327 () Bool)

(assert (=> d!1989327 (= (isConcat!1165 lt!2361685) ((_ is Concat!25084) lt!2361685))))

(assert (=> b!6337467 d!1989327))

(assert (=> d!1989051 d!1989183))

(declare-fun d!1989329 () Bool)

(assert (=> d!1989329 (= (head!12975 s!2326) (h!71342 s!2326))))

(assert (=> b!6337407 d!1989329))

(declare-fun d!1989331 () Bool)

(assert (=> d!1989331 true))

(declare-fun setRes!43123 () Bool)

(assert (=> d!1989331 setRes!43123))

(declare-fun condSetEmpty!43123 () Bool)

(declare-fun res!2608311 () (InoxSet Context!11246))

(assert (=> d!1989331 (= condSetEmpty!43123 (= res!2608311 ((as const (Array Context!11246 Bool)) false)))))

(assert (=> d!1989331 (= (choose!46974 lt!2361573 lambda!347959) res!2608311)))

(declare-fun setIsEmpty!43123 () Bool)

(assert (=> setIsEmpty!43123 setRes!43123))

(declare-fun setElem!43123 () Context!11246)

(declare-fun setNonEmpty!43123 () Bool)

(declare-fun tp!1767691 () Bool)

(declare-fun e!3849948 () Bool)

(assert (=> setNonEmpty!43123 (= setRes!43123 (and tp!1767691 (inv!83844 setElem!43123) e!3849948))))

(declare-fun setRest!43123 () (InoxSet Context!11246))

(assert (=> setNonEmpty!43123 (= res!2608311 ((_ map or) (store ((as const (Array Context!11246 Bool)) false) setElem!43123 true) setRest!43123))))

(declare-fun b!6338031 () Bool)

(declare-fun tp!1767692 () Bool)

(assert (=> b!6338031 (= e!3849948 tp!1767692)))

(assert (= (and d!1989331 condSetEmpty!43123) setIsEmpty!43123))

(assert (= (and d!1989331 (not condSetEmpty!43123)) setNonEmpty!43123))

(assert (= setNonEmpty!43123 b!6338031))

(declare-fun m!7147126 () Bool)

(assert (=> setNonEmpty!43123 m!7147126))

(assert (=> d!1989031 d!1989331))

(declare-fun d!1989339 () Bool)

(assert (=> d!1989339 (= (nullable!6232 (h!71340 (exprs!6123 lt!2361578))) (nullableFct!2181 (h!71340 (exprs!6123 lt!2361578))))))

(declare-fun bs!1586877 () Bool)

(assert (= bs!1586877 d!1989339))

(declare-fun m!7147128 () Bool)

(assert (=> bs!1586877 m!7147128))

(assert (=> b!6337236 d!1989339))

(declare-fun d!1989341 () Bool)

(assert (=> d!1989341 (= (isEmptyExpr!1642 lt!2361603) ((_ is EmptyExpr!16239) lt!2361603))))

(assert (=> b!6337068 d!1989341))

(declare-fun d!1989343 () Bool)

(assert (=> d!1989343 (= (isEmpty!36973 (tail!12060 s!2326)) ((_ is Nil!64894) (tail!12060 s!2326)))))

(assert (=> b!6337398 d!1989343))

(declare-fun d!1989345 () Bool)

(assert (=> d!1989345 (= (tail!12060 s!2326) (t!378602 s!2326))))

(assert (=> b!6337398 d!1989345))

(declare-fun d!1989347 () Bool)

(assert (=> d!1989347 (= (isUnion!1080 lt!2361715) ((_ is Union!16239) lt!2361715))))

(assert (=> b!6337620 d!1989347))

(assert (=> d!1989127 d!1989115))

(declare-fun d!1989349 () Bool)

(assert (=> d!1989349 (= (Exists!3309 lambda!348034) (choose!46982 lambda!348034))))

(declare-fun bs!1586878 () Bool)

(assert (= bs!1586878 d!1989349))

(declare-fun m!7147130 () Bool)

(assert (=> bs!1586878 m!7147130))

(assert (=> d!1989127 d!1989349))

(assert (=> d!1989127 d!1989221))

(assert (=> d!1989127 d!1989131))

(declare-fun bs!1586879 () Bool)

(declare-fun d!1989351 () Bool)

(assert (= bs!1586879 (and d!1989351 d!1989127)))

(declare-fun lambda!348082 () Int)

(assert (=> bs!1586879 (= lambda!348082 lambda!348034)))

(declare-fun bs!1586880 () Bool)

(assert (= bs!1586880 (and d!1989351 d!1989129)))

(assert (=> bs!1586880 (not (= lambda!348082 lambda!348040))))

(declare-fun bs!1586881 () Bool)

(assert (= bs!1586881 (and d!1989351 d!1989209)))

(assert (=> bs!1586881 (= lambda!348082 lambda!348056)))

(assert (=> bs!1586881 (not (= lambda!348082 lambda!348057))))

(declare-fun bs!1586882 () Bool)

(assert (= bs!1586882 (and d!1989351 b!6337339)))

(assert (=> bs!1586882 (not (= lambda!348082 lambda!348022))))

(assert (=> bs!1586880 (= lambda!348082 lambda!348039)))

(declare-fun bs!1586883 () Bool)

(assert (= bs!1586883 (and d!1989351 b!6336813)))

(assert (=> bs!1586883 (not (= lambda!348082 lambda!347958))))

(declare-fun bs!1586884 () Bool)

(assert (= bs!1586884 (and d!1989351 b!6337341)))

(assert (=> bs!1586884 (not (= lambda!348082 lambda!348021))))

(assert (=> bs!1586883 (= lambda!348082 lambda!347957)))

(assert (=> d!1989351 true))

(assert (=> d!1989351 true))

(assert (=> d!1989351 true))

(assert (=> d!1989351 (= (isDefined!12833 (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) Nil!64894 s!2326 s!2326)) (Exists!3309 lambda!348082))))

(assert (=> d!1989351 true))

(declare-fun _$89!2554 () Unit!158287)

(assert (=> d!1989351 (= (choose!46983 (regOne!32990 r!7292) (regTwo!32990 r!7292) s!2326) _$89!2554)))

(declare-fun bs!1586885 () Bool)

(assert (= bs!1586885 d!1989351))

(assert (=> bs!1586885 m!7146110))

(assert (=> bs!1586885 m!7146110))

(assert (=> bs!1586885 m!7146112))

(declare-fun m!7147144 () Bool)

(assert (=> bs!1586885 m!7147144))

(assert (=> d!1989127 d!1989351))

(assert (=> bs!1586742 d!1989023))

(declare-fun b!6338082 () Bool)

(declare-fun e!3849982 () List!65018)

(assert (=> b!6338082 (= e!3849982 (t!378602 s!2326))))

(declare-fun b!6338084 () Bool)

(declare-fun res!2608343 () Bool)

(declare-fun e!3849981 () Bool)

(assert (=> b!6338084 (=> (not res!2608343) (not e!3849981))))

(declare-fun lt!2361751 () List!65018)

(declare-fun size!40337 (List!65018) Int)

(assert (=> b!6338084 (= res!2608343 (= (size!40337 lt!2361751) (+ (size!40337 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894))) (size!40337 (t!378602 s!2326)))))))

(declare-fun d!1989359 () Bool)

(assert (=> d!1989359 e!3849981))

(declare-fun res!2608342 () Bool)

(assert (=> d!1989359 (=> (not res!2608342) (not e!3849981))))

(declare-fun content!12237 (List!65018) (InoxSet C!32748))

(assert (=> d!1989359 (= res!2608342 (= (content!12237 lt!2361751) ((_ map or) (content!12237 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894))) (content!12237 (t!378602 s!2326)))))))

(assert (=> d!1989359 (= lt!2361751 e!3849982)))

(declare-fun c!1152188 () Bool)

(assert (=> d!1989359 (= c!1152188 ((_ is Nil!64894) (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894))))))

(assert (=> d!1989359 (= (++!14310 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) (t!378602 s!2326)) lt!2361751)))

(declare-fun b!6338085 () Bool)

(assert (=> b!6338085 (= e!3849981 (or (not (= (t!378602 s!2326) Nil!64894)) (= lt!2361751 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)))))))

(declare-fun b!6338083 () Bool)

(assert (=> b!6338083 (= e!3849982 (Cons!64894 (h!71342 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894))) (++!14310 (t!378602 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894))) (t!378602 s!2326))))))

(assert (= (and d!1989359 c!1152188) b!6338082))

(assert (= (and d!1989359 (not c!1152188)) b!6338083))

(assert (= (and d!1989359 res!2608342) b!6338084))

(assert (= (and b!6338084 res!2608343) b!6338085))

(declare-fun m!7147152 () Bool)

(assert (=> b!6338084 m!7147152))

(assert (=> b!6338084 m!7146670))

(declare-fun m!7147154 () Bool)

(assert (=> b!6338084 m!7147154))

(declare-fun m!7147156 () Bool)

(assert (=> b!6338084 m!7147156))

(declare-fun m!7147158 () Bool)

(assert (=> d!1989359 m!7147158))

(assert (=> d!1989359 m!7146670))

(declare-fun m!7147160 () Bool)

(assert (=> d!1989359 m!7147160))

(declare-fun m!7147162 () Bool)

(assert (=> d!1989359 m!7147162))

(declare-fun m!7147164 () Bool)

(assert (=> b!6338083 m!7147164))

(assert (=> b!6337572 d!1989359))

(declare-fun b!6338086 () Bool)

(declare-fun e!3849984 () List!65018)

(assert (=> b!6338086 (= e!3849984 (Cons!64894 (h!71342 s!2326) Nil!64894))))

(declare-fun b!6338088 () Bool)

(declare-fun res!2608345 () Bool)

(declare-fun e!3849983 () Bool)

(assert (=> b!6338088 (=> (not res!2608345) (not e!3849983))))

(declare-fun lt!2361752 () List!65018)

(assert (=> b!6338088 (= res!2608345 (= (size!40337 lt!2361752) (+ (size!40337 Nil!64894) (size!40337 (Cons!64894 (h!71342 s!2326) Nil!64894)))))))

(declare-fun d!1989365 () Bool)

(assert (=> d!1989365 e!3849983))

(declare-fun res!2608344 () Bool)

(assert (=> d!1989365 (=> (not res!2608344) (not e!3849983))))

(assert (=> d!1989365 (= res!2608344 (= (content!12237 lt!2361752) ((_ map or) (content!12237 Nil!64894) (content!12237 (Cons!64894 (h!71342 s!2326) Nil!64894)))))))

(assert (=> d!1989365 (= lt!2361752 e!3849984)))

(declare-fun c!1152189 () Bool)

(assert (=> d!1989365 (= c!1152189 ((_ is Nil!64894) Nil!64894))))

(assert (=> d!1989365 (= (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) lt!2361752)))

(declare-fun b!6338089 () Bool)

(assert (=> b!6338089 (= e!3849983 (or (not (= (Cons!64894 (h!71342 s!2326) Nil!64894) Nil!64894)) (= lt!2361752 Nil!64894)))))

(declare-fun b!6338087 () Bool)

(assert (=> b!6338087 (= e!3849984 (Cons!64894 (h!71342 Nil!64894) (++!14310 (t!378602 Nil!64894) (Cons!64894 (h!71342 s!2326) Nil!64894))))))

(assert (= (and d!1989365 c!1152189) b!6338086))

(assert (= (and d!1989365 (not c!1152189)) b!6338087))

(assert (= (and d!1989365 res!2608344) b!6338088))

(assert (= (and b!6338088 res!2608345) b!6338089))

(declare-fun m!7147172 () Bool)

(assert (=> b!6338088 m!7147172))

(declare-fun m!7147174 () Bool)

(assert (=> b!6338088 m!7147174))

(declare-fun m!7147176 () Bool)

(assert (=> b!6338088 m!7147176))

(declare-fun m!7147178 () Bool)

(assert (=> d!1989365 m!7147178))

(declare-fun m!7147182 () Bool)

(assert (=> d!1989365 m!7147182))

(declare-fun m!7147184 () Bool)

(assert (=> d!1989365 m!7147184))

(declare-fun m!7147188 () Bool)

(assert (=> b!6338087 m!7147188))

(assert (=> b!6337572 d!1989365))

(declare-fun d!1989367 () Bool)

(assert (=> d!1989367 (= (++!14310 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) (t!378602 s!2326)) s!2326)))

(declare-fun lt!2361755 () Unit!158287)

(declare-fun choose!46987 (List!65018 C!32748 List!65018 List!65018) Unit!158287)

(assert (=> d!1989367 (= lt!2361755 (choose!46987 Nil!64894 (h!71342 s!2326) (t!378602 s!2326) s!2326))))

(assert (=> d!1989367 (= (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) (t!378602 s!2326))) s!2326)))

(assert (=> d!1989367 (= (lemmaMoveElementToOtherListKeepsConcatEq!2405 Nil!64894 (h!71342 s!2326) (t!378602 s!2326) s!2326) lt!2361755)))

(declare-fun bs!1586887 () Bool)

(assert (= bs!1586887 d!1989367))

(assert (=> bs!1586887 m!7146670))

(assert (=> bs!1586887 m!7146670))

(assert (=> bs!1586887 m!7146672))

(declare-fun m!7147196 () Bool)

(assert (=> bs!1586887 m!7147196))

(declare-fun m!7147198 () Bool)

(assert (=> bs!1586887 m!7147198))

(assert (=> b!6337572 d!1989367))

(declare-fun b!6338090 () Bool)

(declare-fun res!2608350 () Bool)

(declare-fun e!3849988 () Bool)

(assert (=> b!6338090 (=> (not res!2608350) (not e!3849988))))

(declare-fun lt!2361756 () Option!16130)

(assert (=> b!6338090 (= res!2608350 (matchR!8422 (regOne!32990 r!7292) (_1!36521 (get!22445 lt!2361756))))))

(declare-fun b!6338091 () Bool)

(declare-fun e!3849986 () Option!16130)

(assert (=> b!6338091 (= e!3849986 (Some!16129 (tuple2!66437 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) (t!378602 s!2326))))))

(declare-fun b!6338092 () Bool)

(declare-fun e!3849985 () Bool)

(assert (=> b!6338092 (= e!3849985 (not (isDefined!12833 lt!2361756)))))

(declare-fun b!6338093 () Bool)

(assert (=> b!6338093 (= e!3849988 (= (++!14310 (_1!36521 (get!22445 lt!2361756)) (_2!36521 (get!22445 lt!2361756))) s!2326))))

(declare-fun b!6338094 () Bool)

(declare-fun e!3849987 () Bool)

(assert (=> b!6338094 (= e!3849987 (matchR!8422 (regTwo!32990 r!7292) (t!378602 s!2326)))))

(declare-fun b!6338095 () Bool)

(declare-fun e!3849989 () Option!16130)

(assert (=> b!6338095 (= e!3849989 None!16129)))

(declare-fun b!6338096 () Bool)

(assert (=> b!6338096 (= e!3849986 e!3849989)))

(declare-fun c!1152190 () Bool)

(assert (=> b!6338096 (= c!1152190 ((_ is Nil!64894) (t!378602 s!2326)))))

(declare-fun b!6338097 () Bool)

(declare-fun res!2608348 () Bool)

(assert (=> b!6338097 (=> (not res!2608348) (not e!3849988))))

(assert (=> b!6338097 (= res!2608348 (matchR!8422 (regTwo!32990 r!7292) (_2!36521 (get!22445 lt!2361756))))))

(declare-fun d!1989371 () Bool)

(assert (=> d!1989371 e!3849985))

(declare-fun res!2608346 () Bool)

(assert (=> d!1989371 (=> res!2608346 e!3849985)))

(assert (=> d!1989371 (= res!2608346 e!3849988)))

(declare-fun res!2608347 () Bool)

(assert (=> d!1989371 (=> (not res!2608347) (not e!3849988))))

(assert (=> d!1989371 (= res!2608347 (isDefined!12833 lt!2361756))))

(assert (=> d!1989371 (= lt!2361756 e!3849986)))

(declare-fun c!1152191 () Bool)

(assert (=> d!1989371 (= c!1152191 e!3849987)))

(declare-fun res!2608349 () Bool)

(assert (=> d!1989371 (=> (not res!2608349) (not e!3849987))))

(assert (=> d!1989371 (= res!2608349 (matchR!8422 (regOne!32990 r!7292) (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894))))))

(assert (=> d!1989371 (validRegex!7975 (regOne!32990 r!7292))))

(assert (=> d!1989371 (= (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) (t!378602 s!2326) s!2326) lt!2361756)))

(declare-fun b!6338098 () Bool)

(declare-fun lt!2361758 () Unit!158287)

(declare-fun lt!2361757 () Unit!158287)

(assert (=> b!6338098 (= lt!2361758 lt!2361757)))

(assert (=> b!6338098 (= (++!14310 (++!14310 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) (Cons!64894 (h!71342 (t!378602 s!2326)) Nil!64894)) (t!378602 (t!378602 s!2326))) s!2326)))

(assert (=> b!6338098 (= lt!2361757 (lemmaMoveElementToOtherListKeepsConcatEq!2405 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) (h!71342 (t!378602 s!2326)) (t!378602 (t!378602 s!2326)) s!2326))))

(assert (=> b!6338098 (= e!3849989 (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) (++!14310 (++!14310 Nil!64894 (Cons!64894 (h!71342 s!2326) Nil!64894)) (Cons!64894 (h!71342 (t!378602 s!2326)) Nil!64894)) (t!378602 (t!378602 s!2326)) s!2326))))

(assert (= (and d!1989371 res!2608349) b!6338094))

(assert (= (and d!1989371 c!1152191) b!6338091))

(assert (= (and d!1989371 (not c!1152191)) b!6338096))

(assert (= (and b!6338096 c!1152190) b!6338095))

(assert (= (and b!6338096 (not c!1152190)) b!6338098))

(assert (= (and d!1989371 res!2608347) b!6338090))

(assert (= (and b!6338090 res!2608350) b!6338097))

(assert (= (and b!6338097 res!2608348) b!6338093))

(assert (= (and d!1989371 (not res!2608346)) b!6338092))

(declare-fun m!7147200 () Bool)

(assert (=> b!6338097 m!7147200))

(declare-fun m!7147202 () Bool)

(assert (=> b!6338097 m!7147202))

(declare-fun m!7147204 () Bool)

(assert (=> b!6338094 m!7147204))

(assert (=> b!6338093 m!7147200))

(declare-fun m!7147206 () Bool)

(assert (=> b!6338093 m!7147206))

(declare-fun m!7147208 () Bool)

(assert (=> b!6338092 m!7147208))

(assert (=> b!6338090 m!7147200))

(declare-fun m!7147210 () Bool)

(assert (=> b!6338090 m!7147210))

(assert (=> d!1989371 m!7147208))

(assert (=> d!1989371 m!7146670))

(declare-fun m!7147212 () Bool)

(assert (=> d!1989371 m!7147212))

(assert (=> d!1989371 m!7146668))

(assert (=> b!6338098 m!7146670))

(declare-fun m!7147214 () Bool)

(assert (=> b!6338098 m!7147214))

(assert (=> b!6338098 m!7147214))

(declare-fun m!7147216 () Bool)

(assert (=> b!6338098 m!7147216))

(assert (=> b!6338098 m!7146670))

(declare-fun m!7147218 () Bool)

(assert (=> b!6338098 m!7147218))

(assert (=> b!6338098 m!7147214))

(declare-fun m!7147220 () Bool)

(assert (=> b!6338098 m!7147220))

(assert (=> b!6337572 d!1989371))

(declare-fun d!1989373 () Bool)

(assert (=> d!1989373 (= (nullable!6232 (reg!16568 r!7292)) (nullableFct!2181 (reg!16568 r!7292)))))

(declare-fun bs!1586888 () Bool)

(assert (= bs!1586888 d!1989373))

(declare-fun m!7147222 () Bool)

(assert (=> bs!1586888 m!7147222))

(assert (=> b!6337261 d!1989373))

(declare-fun d!1989375 () Bool)

(assert (=> d!1989375 (= (nullable!6232 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))) (nullableFct!2181 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))))))

(declare-fun bs!1586889 () Bool)

(assert (= bs!1586889 d!1989375))

(declare-fun m!7147224 () Bool)

(assert (=> bs!1586889 m!7147224))

(assert (=> b!6337205 d!1989375))

(declare-fun bs!1586890 () Bool)

(declare-fun d!1989377 () Bool)

(assert (= bs!1586890 (and d!1989377 b!6337112)))

(declare-fun lambda!348085 () Int)

(assert (=> bs!1586890 (not (= lambda!348085 lambda!347990))))

(declare-fun bs!1586891 () Bool)

(assert (= bs!1586891 (and d!1989377 d!1989239)))

(assert (=> bs!1586891 (not (= lambda!348085 lambda!348064))))

(declare-fun bs!1586892 () Bool)

(assert (= bs!1586892 (and d!1989377 b!6337137)))

(assert (=> bs!1586892 (not (= lambda!348085 lambda!347993))))

(declare-fun bs!1586893 () Bool)

(assert (= bs!1586893 (and d!1989377 b!6337114)))

(assert (=> bs!1586893 (not (= lambda!348085 lambda!347991))))

(declare-fun bs!1586894 () Bool)

(assert (= bs!1586894 (and d!1989377 b!6337859)))

(assert (=> bs!1586894 (not (= lambda!348085 lambda!348060))))

(declare-fun bs!1586895 () Bool)

(assert (= bs!1586895 (and d!1989377 b!6337139)))

(assert (=> bs!1586895 (not (= lambda!348085 lambda!347994))))

(declare-fun bs!1586896 () Bool)

(assert (= bs!1586896 (and d!1989377 b!6337857)))

(assert (=> bs!1586896 (not (= lambda!348085 lambda!348059))))

(declare-fun exists!2565 ((InoxSet Context!11246) Int) Bool)

(assert (=> d!1989377 (= (nullableZipper!2007 lt!2361560) (exists!2565 lt!2361560 lambda!348085))))

(declare-fun bs!1586897 () Bool)

(assert (= bs!1586897 d!1989377))

(declare-fun m!7147226 () Bool)

(assert (=> bs!1586897 m!7147226))

(assert (=> b!6337289 d!1989377))

(declare-fun d!1989379 () Bool)

(declare-fun c!1152208 () Bool)

(assert (=> d!1989379 (= c!1152208 ((_ is Nil!64893) lt!2361609))))

(declare-fun e!3850004 () (InoxSet Context!11246))

(assert (=> d!1989379 (= (content!12235 lt!2361609) e!3850004)))

(declare-fun b!6338127 () Bool)

(assert (=> b!6338127 (= e!3850004 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338128 () Bool)

(assert (=> b!6338128 (= e!3850004 ((_ map or) (store ((as const (Array Context!11246 Bool)) false) (h!71341 lt!2361609) true) (content!12235 (t!378601 lt!2361609))))))

(assert (= (and d!1989379 c!1152208) b!6338127))

(assert (= (and d!1989379 (not c!1152208)) b!6338128))

(declare-fun m!7147232 () Bool)

(assert (=> b!6338128 m!7147232))

(declare-fun m!7147234 () Bool)

(assert (=> b!6338128 m!7147234))

(assert (=> b!6337078 d!1989379))

(declare-fun d!1989383 () Bool)

(declare-fun res!2608351 () Bool)

(declare-fun e!3850006 () Bool)

(assert (=> d!1989383 (=> res!2608351 e!3850006)))

(assert (=> d!1989383 (= res!2608351 ((_ is Nil!64893) zl!343))))

(assert (=> d!1989383 (= (forall!15394 zl!343 lambda!347994) e!3850006)))

(declare-fun b!6338131 () Bool)

(declare-fun e!3850007 () Bool)

(assert (=> b!6338131 (= e!3850006 e!3850007)))

(declare-fun res!2608352 () Bool)

(assert (=> b!6338131 (=> (not res!2608352) (not e!3850007))))

(assert (=> b!6338131 (= res!2608352 (dynLambda!25720 lambda!347994 (h!71341 zl!343)))))

(declare-fun b!6338132 () Bool)

(assert (=> b!6338132 (= e!3850007 (forall!15394 (t!378601 zl!343) lambda!347994))))

(assert (= (and d!1989383 (not res!2608351)) b!6338131))

(assert (= (and b!6338131 res!2608352) b!6338132))

(declare-fun b_lambda!241197 () Bool)

(assert (=> (not b_lambda!241197) (not b!6338131)))

(declare-fun m!7147240 () Bool)

(assert (=> b!6338131 m!7147240))

(declare-fun m!7147242 () Bool)

(assert (=> b!6338132 m!7147242))

(assert (=> b!6337139 d!1989383))

(declare-fun d!1989387 () Bool)

(assert (=> d!1989387 (= (flatMap!1744 lt!2361573 lambda!348007) (choose!46974 lt!2361573 lambda!348007))))

(declare-fun bs!1586898 () Bool)

(assert (= bs!1586898 d!1989387))

(declare-fun m!7147244 () Bool)

(assert (=> bs!1586898 m!7147244))

(assert (=> d!1989037 d!1989387))

(declare-fun d!1989389 () Bool)

(declare-fun c!1152210 () Bool)

(assert (=> d!1989389 (= c!1152210 ((_ is Nil!64893) lt!2361650))))

(declare-fun e!3850008 () (InoxSet Context!11246))

(assert (=> d!1989389 (= (content!12235 lt!2361650) e!3850008)))

(declare-fun b!6338133 () Bool)

(assert (=> b!6338133 (= e!3850008 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338134 () Bool)

(assert (=> b!6338134 (= e!3850008 ((_ map or) (store ((as const (Array Context!11246 Bool)) false) (h!71341 lt!2361650) true) (content!12235 (t!378601 lt!2361650))))))

(assert (= (and d!1989389 c!1152210) b!6338133))

(assert (= (and d!1989389 (not c!1152210)) b!6338134))

(declare-fun m!7147246 () Bool)

(assert (=> b!6338134 m!7147246))

(declare-fun m!7147248 () Bool)

(assert (=> b!6338134 m!7147248))

(assert (=> b!6337291 d!1989389))

(declare-fun d!1989391 () Bool)

(assert (=> d!1989391 (= (isEmpty!36969 (t!378600 lt!2361557)) ((_ is Nil!64892) (t!378600 lt!2361557)))))

(assert (=> b!6337064 d!1989391))

(assert (=> bm!539950 d!1989323))

(declare-fun d!1989393 () Bool)

(declare-fun lt!2361763 () Int)

(assert (=> d!1989393 (>= lt!2361763 0)))

(declare-fun e!3850009 () Int)

(assert (=> d!1989393 (= lt!2361763 e!3850009)))

(declare-fun c!1152211 () Bool)

(assert (=> d!1989393 (= c!1152211 ((_ is Cons!64892) (exprs!6123 (h!71341 lt!2361561))))))

(assert (=> d!1989393 (= (contextDepthTotal!348 (h!71341 lt!2361561)) lt!2361763)))

(declare-fun b!6338135 () Bool)

(assert (=> b!6338135 (= e!3850009 (+ (regexDepthTotal!199 (h!71340 (exprs!6123 (h!71341 lt!2361561)))) (contextDepthTotal!348 (Context!11247 (t!378600 (exprs!6123 (h!71341 lt!2361561)))))))))

(declare-fun b!6338136 () Bool)

(assert (=> b!6338136 (= e!3850009 1)))

(assert (= (and d!1989393 c!1152211) b!6338135))

(assert (= (and d!1989393 (not c!1152211)) b!6338136))

(declare-fun m!7147250 () Bool)

(assert (=> b!6338135 m!7147250))

(declare-fun m!7147252 () Bool)

(assert (=> b!6338135 m!7147252))

(assert (=> b!6337442 d!1989393))

(declare-fun d!1989395 () Bool)

(declare-fun lt!2361764 () Int)

(assert (=> d!1989395 (>= lt!2361764 0)))

(declare-fun e!3850010 () Int)

(assert (=> d!1989395 (= lt!2361764 e!3850010)))

(declare-fun c!1152212 () Bool)

(assert (=> d!1989395 (= c!1152212 ((_ is Cons!64893) (t!378601 lt!2361561)))))

(assert (=> d!1989395 (= (zipperDepthTotal!376 (t!378601 lt!2361561)) lt!2361764)))

(declare-fun b!6338137 () Bool)

(assert (=> b!6338137 (= e!3850010 (+ (contextDepthTotal!348 (h!71341 (t!378601 lt!2361561))) (zipperDepthTotal!376 (t!378601 (t!378601 lt!2361561)))))))

(declare-fun b!6338138 () Bool)

(assert (=> b!6338138 (= e!3850010 0)))

(assert (= (and d!1989395 c!1152212) b!6338137))

(assert (= (and d!1989395 (not c!1152212)) b!6338138))

(declare-fun m!7147254 () Bool)

(assert (=> b!6338137 m!7147254))

(declare-fun m!7147256 () Bool)

(assert (=> b!6338137 m!7147256))

(assert (=> b!6337442 d!1989395))

(declare-fun b!6338139 () Bool)

(declare-fun e!3850016 () (InoxSet Context!11246))

(declare-fun e!3850013 () (InoxSet Context!11246))

(assert (=> b!6338139 (= e!3850016 e!3850013)))

(declare-fun c!1152215 () Bool)

(assert (=> b!6338139 (= c!1152215 ((_ is Concat!25084) (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))))))

(declare-fun b!6338140 () Bool)

(declare-fun e!3850015 () (InoxSet Context!11246))

(assert (=> b!6338140 (= e!3850015 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338141 () Bool)

(declare-fun call!540053 () (InoxSet Context!11246))

(declare-fun call!540052 () (InoxSet Context!11246))

(assert (=> b!6338141 (= e!3850016 ((_ map or) call!540053 call!540052))))

(declare-fun b!6338142 () Bool)

(declare-fun e!3850014 () Bool)

(assert (=> b!6338142 (= e!3850014 (nullable!6232 (regOne!32990 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292)))))))))

(declare-fun bm!540044 () Bool)

(declare-fun call!540051 () (InoxSet Context!11246))

(assert (=> bm!540044 (= call!540052 call!540051)))

(declare-fun call!540050 () List!65016)

(declare-fun c!1152216 () Bool)

(declare-fun bm!540045 () Bool)

(assert (=> bm!540045 (= call!540053 (derivationStepZipperDown!1487 (ite c!1152216 (regTwo!32991 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))) (regOne!32990 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292)))))) (ite c!1152216 (ite c!1151989 (Context!11247 lt!2361564) (Context!11247 call!539943)) (Context!11247 call!540050)) (h!71342 s!2326)))))

(declare-fun b!6338143 () Bool)

(declare-fun call!540049 () (InoxSet Context!11246))

(assert (=> b!6338143 (= e!3850013 call!540049)))

(declare-fun bm!540046 () Bool)

(declare-fun c!1152213 () Bool)

(assert (=> bm!540046 (= call!540050 ($colon$colon!2102 (exprs!6123 (ite c!1151989 (Context!11247 lt!2361564) (Context!11247 call!539943))) (ite (or c!1152213 c!1152215) (regTwo!32990 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))) (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292)))))))))

(declare-fun d!1989397 () Bool)

(declare-fun c!1152214 () Bool)

(assert (=> d!1989397 (= c!1152214 (and ((_ is ElementMatch!16239) (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))) (= (c!1151834 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))) (h!71342 s!2326))))))

(declare-fun e!3850012 () (InoxSet Context!11246))

(assert (=> d!1989397 (= (derivationStepZipperDown!1487 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292)))) (ite c!1151989 (Context!11247 lt!2361564) (Context!11247 call!539943)) (h!71342 s!2326)) e!3850012)))

(declare-fun bm!540043 () Bool)

(declare-fun call!540048 () List!65016)

(assert (=> bm!540043 (= call!540051 (derivationStepZipperDown!1487 (ite c!1152216 (regOne!32991 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))) (ite c!1152213 (regTwo!32990 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))) (ite c!1152215 (regOne!32990 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))) (reg!16568 (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292)))))))) (ite (or c!1152216 c!1152213) (ite c!1151989 (Context!11247 lt!2361564) (Context!11247 call!539943)) (Context!11247 call!540048)) (h!71342 s!2326)))))

(declare-fun bm!540047 () Bool)

(assert (=> bm!540047 (= call!540048 call!540050)))

(declare-fun b!6338144 () Bool)

(assert (=> b!6338144 (= e!3850012 (store ((as const (Array Context!11246 Bool)) false) (ite c!1151989 (Context!11247 lt!2361564) (Context!11247 call!539943)) true))))

(declare-fun b!6338145 () Bool)

(declare-fun e!3850011 () (InoxSet Context!11246))

(assert (=> b!6338145 (= e!3850011 ((_ map or) call!540051 call!540053))))

(declare-fun b!6338146 () Bool)

(assert (=> b!6338146 (= e!3850015 call!540049)))

(declare-fun b!6338147 () Bool)

(assert (=> b!6338147 (= c!1152213 e!3850014)))

(declare-fun res!2608353 () Bool)

(assert (=> b!6338147 (=> (not res!2608353) (not e!3850014))))

(assert (=> b!6338147 (= res!2608353 ((_ is Concat!25084) (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))))))

(assert (=> b!6338147 (= e!3850011 e!3850016)))

(declare-fun b!6338148 () Bool)

(assert (=> b!6338148 (= e!3850012 e!3850011)))

(assert (=> b!6338148 (= c!1152216 ((_ is Union!16239) (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))))))

(declare-fun b!6338149 () Bool)

(declare-fun c!1152217 () Bool)

(assert (=> b!6338149 (= c!1152217 ((_ is Star!16239) (ite c!1151989 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))))))

(assert (=> b!6338149 (= e!3850013 e!3850015)))

(declare-fun bm!540048 () Bool)

(assert (=> bm!540048 (= call!540049 call!540052)))

(assert (= (and d!1989397 c!1152214) b!6338144))

(assert (= (and d!1989397 (not c!1152214)) b!6338148))

(assert (= (and b!6338148 c!1152216) b!6338145))

(assert (= (and b!6338148 (not c!1152216)) b!6338147))

(assert (= (and b!6338147 res!2608353) b!6338142))

(assert (= (and b!6338147 c!1152213) b!6338141))

(assert (= (and b!6338147 (not c!1152213)) b!6338139))

(assert (= (and b!6338139 c!1152215) b!6338143))

(assert (= (and b!6338139 (not c!1152215)) b!6338149))

(assert (= (and b!6338149 c!1152217) b!6338146))

(assert (= (and b!6338149 (not c!1152217)) b!6338140))

(assert (= (or b!6338143 b!6338146) bm!540047))

(assert (= (or b!6338143 b!6338146) bm!540048))

(assert (= (or b!6338141 bm!540047) bm!540046))

(assert (= (or b!6338141 bm!540048) bm!540044))

(assert (= (or b!6338145 b!6338141) bm!540045))

(assert (= (or b!6338145 bm!540044) bm!540043))

(declare-fun m!7147258 () Bool)

(assert (=> bm!540043 m!7147258))

(declare-fun m!7147260 () Bool)

(assert (=> bm!540045 m!7147260))

(declare-fun m!7147262 () Bool)

(assert (=> bm!540046 m!7147262))

(declare-fun m!7147264 () Bool)

(assert (=> b!6338144 m!7147264))

(declare-fun m!7147266 () Bool)

(assert (=> b!6338142 m!7147266))

(assert (=> bm!539938 d!1989397))

(declare-fun b!6338164 () Bool)

(declare-fun e!3850031 () Bool)

(declare-fun lt!2361765 () Bool)

(declare-fun call!540058 () Bool)

(assert (=> b!6338164 (= e!3850031 (= lt!2361765 call!540058))))

(declare-fun bm!540053 () Bool)

(assert (=> bm!540053 (= call!540058 (isEmpty!36973 s!2326))))

(declare-fun b!6338165 () Bool)

(declare-fun e!3850035 () Bool)

(assert (=> b!6338165 (= e!3850031 e!3850035)))

(declare-fun c!1152220 () Bool)

(assert (=> b!6338165 (= c!1152220 ((_ is EmptyLang!16239) (regTwo!32990 r!7292)))))

(declare-fun d!1989399 () Bool)

(assert (=> d!1989399 e!3850031))

(declare-fun c!1152221 () Bool)

(assert (=> d!1989399 (= c!1152221 ((_ is EmptyExpr!16239) (regTwo!32990 r!7292)))))

(declare-fun e!3850032 () Bool)

(assert (=> d!1989399 (= lt!2361765 e!3850032)))

(declare-fun c!1152222 () Bool)

(assert (=> d!1989399 (= c!1152222 (isEmpty!36973 s!2326))))

(assert (=> d!1989399 (validRegex!7975 (regTwo!32990 r!7292))))

(assert (=> d!1989399 (= (matchR!8422 (regTwo!32990 r!7292) s!2326) lt!2361765)))

(declare-fun b!6338166 () Bool)

(assert (=> b!6338166 (= e!3850032 (nullable!6232 (regTwo!32990 r!7292)))))

(declare-fun b!6338167 () Bool)

(declare-fun res!2608368 () Bool)

(declare-fun e!3850029 () Bool)

(assert (=> b!6338167 (=> res!2608368 e!3850029)))

(assert (=> b!6338167 (= res!2608368 (not ((_ is ElementMatch!16239) (regTwo!32990 r!7292))))))

(assert (=> b!6338167 (= e!3850035 e!3850029)))

(declare-fun b!6338168 () Bool)

(declare-fun res!2608366 () Bool)

(declare-fun e!3850030 () Bool)

(assert (=> b!6338168 (=> (not res!2608366) (not e!3850030))))

(assert (=> b!6338168 (= res!2608366 (isEmpty!36973 (tail!12060 s!2326)))))

(declare-fun b!6338169 () Bool)

(assert (=> b!6338169 (= e!3850035 (not lt!2361765))))

(declare-fun b!6338170 () Bool)

(declare-fun res!2608370 () Bool)

(declare-fun e!3850034 () Bool)

(assert (=> b!6338170 (=> res!2608370 e!3850034)))

(assert (=> b!6338170 (= res!2608370 (not (isEmpty!36973 (tail!12060 s!2326))))))

(declare-fun b!6338171 () Bool)

(assert (=> b!6338171 (= e!3850034 (not (= (head!12975 s!2326) (c!1151834 (regTwo!32990 r!7292)))))))

(declare-fun b!6338172 () Bool)

(declare-fun res!2608371 () Bool)

(assert (=> b!6338172 (=> res!2608371 e!3850029)))

(assert (=> b!6338172 (= res!2608371 e!3850030)))

(declare-fun res!2608365 () Bool)

(assert (=> b!6338172 (=> (not res!2608365) (not e!3850030))))

(assert (=> b!6338172 (= res!2608365 lt!2361765)))

(declare-fun b!6338173 () Bool)

(declare-fun e!3850033 () Bool)

(assert (=> b!6338173 (= e!3850033 e!3850034)))

(declare-fun res!2608364 () Bool)

(assert (=> b!6338173 (=> res!2608364 e!3850034)))

(assert (=> b!6338173 (= res!2608364 call!540058)))

(declare-fun b!6338174 () Bool)

(assert (=> b!6338174 (= e!3850029 e!3850033)))

(declare-fun res!2608367 () Bool)

(assert (=> b!6338174 (=> (not res!2608367) (not e!3850033))))

(assert (=> b!6338174 (= res!2608367 (not lt!2361765))))

(declare-fun b!6338175 () Bool)

(assert (=> b!6338175 (= e!3850032 (matchR!8422 (derivativeStep!4946 (regTwo!32990 r!7292) (head!12975 s!2326)) (tail!12060 s!2326)))))

(declare-fun b!6338176 () Bool)

(declare-fun res!2608369 () Bool)

(assert (=> b!6338176 (=> (not res!2608369) (not e!3850030))))

(assert (=> b!6338176 (= res!2608369 (not call!540058))))

(declare-fun b!6338177 () Bool)

(assert (=> b!6338177 (= e!3850030 (= (head!12975 s!2326) (c!1151834 (regTwo!32990 r!7292))))))

(assert (= (and d!1989399 c!1152222) b!6338166))

(assert (= (and d!1989399 (not c!1152222)) b!6338175))

(assert (= (and d!1989399 c!1152221) b!6338164))

(assert (= (and d!1989399 (not c!1152221)) b!6338165))

(assert (= (and b!6338165 c!1152220) b!6338169))

(assert (= (and b!6338165 (not c!1152220)) b!6338167))

(assert (= (and b!6338167 (not res!2608368)) b!6338172))

(assert (= (and b!6338172 res!2608365) b!6338176))

(assert (= (and b!6338176 res!2608369) b!6338168))

(assert (= (and b!6338168 res!2608366) b!6338177))

(assert (= (and b!6338172 (not res!2608371)) b!6338174))

(assert (= (and b!6338174 res!2608367) b!6338173))

(assert (= (and b!6338173 (not res!2608364)) b!6338170))

(assert (= (and b!6338170 (not res!2608370)) b!6338171))

(assert (= (or b!6338164 b!6338173 b!6338176) bm!540053))

(assert (=> b!6338171 m!7146536))

(assert (=> b!6338177 m!7146536))

(assert (=> d!1989399 m!7146490))

(declare-fun m!7147268 () Bool)

(assert (=> d!1989399 m!7147268))

(declare-fun m!7147270 () Bool)

(assert (=> b!6338166 m!7147270))

(assert (=> bm!540053 m!7146490))

(assert (=> b!6338175 m!7146536))

(assert (=> b!6338175 m!7146536))

(declare-fun m!7147272 () Bool)

(assert (=> b!6338175 m!7147272))

(assert (=> b!6338175 m!7146542))

(assert (=> b!6338175 m!7147272))

(assert (=> b!6338175 m!7146542))

(declare-fun m!7147274 () Bool)

(assert (=> b!6338175 m!7147274))

(assert (=> b!6338168 m!7146542))

(assert (=> b!6338168 m!7146542))

(assert (=> b!6338168 m!7146546))

(assert (=> b!6338170 m!7146542))

(assert (=> b!6338170 m!7146542))

(assert (=> b!6338170 m!7146546))

(assert (=> b!6337568 d!1989399))

(declare-fun d!1989401 () Bool)

(assert (=> d!1989401 (= (isEmpty!36974 (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) Nil!64894 s!2326 s!2326)) (not ((_ is Some!16129) (findConcatSeparation!2544 (regOne!32990 r!7292) (regTwo!32990 r!7292) Nil!64894 s!2326 s!2326))))))

(assert (=> d!1989131 d!1989401))

(declare-fun bs!1586899 () Bool)

(declare-fun d!1989403 () Bool)

(assert (= bs!1586899 (and d!1989403 b!6337112)))

(declare-fun lambda!348086 () Int)

(assert (=> bs!1586899 (not (= lambda!348086 lambda!347990))))

(declare-fun bs!1586900 () Bool)

(assert (= bs!1586900 (and d!1989403 d!1989239)))

(assert (=> bs!1586900 (not (= lambda!348086 lambda!348064))))

(declare-fun bs!1586901 () Bool)

(assert (= bs!1586901 (and d!1989403 b!6337137)))

(assert (=> bs!1586901 (not (= lambda!348086 lambda!347993))))

(declare-fun bs!1586902 () Bool)

(assert (= bs!1586902 (and d!1989403 d!1989377)))

(assert (=> bs!1586902 (= lambda!348086 lambda!348085)))

(declare-fun bs!1586903 () Bool)

(assert (= bs!1586903 (and d!1989403 b!6337114)))

(assert (=> bs!1586903 (not (= lambda!348086 lambda!347991))))

(declare-fun bs!1586904 () Bool)

(assert (= bs!1586904 (and d!1989403 b!6337859)))

(assert (=> bs!1586904 (not (= lambda!348086 lambda!348060))))

(declare-fun bs!1586905 () Bool)

(assert (= bs!1586905 (and d!1989403 b!6337139)))

(assert (=> bs!1586905 (not (= lambda!348086 lambda!347994))))

(declare-fun bs!1586906 () Bool)

(assert (= bs!1586906 (and d!1989403 b!6337857)))

(assert (=> bs!1586906 (not (= lambda!348086 lambda!348059))))

(assert (=> d!1989403 (= (nullableZipper!2007 lt!2361558) (exists!2565 lt!2361558 lambda!348086))))

(declare-fun bs!1586907 () Bool)

(assert (= bs!1586907 d!1989403))

(declare-fun m!7147280 () Bool)

(assert (=> bs!1586907 m!7147280))

(assert (=> b!6337287 d!1989403))

(declare-fun b!6338194 () Bool)

(declare-fun res!2608383 () Bool)

(declare-fun e!3850054 () Bool)

(assert (=> b!6338194 (=> (not res!2608383) (not e!3850054))))

(declare-fun call!540065 () Bool)

(assert (=> b!6338194 (= res!2608383 call!540065)))

(declare-fun e!3850053 () Bool)

(assert (=> b!6338194 (= e!3850053 e!3850054)))

(declare-fun c!1152227 () Bool)

(declare-fun bm!540059 () Bool)

(declare-fun call!540066 () Bool)

(declare-fun c!1152226 () Bool)

(assert (=> bm!540059 (= call!540066 (validRegex!7975 (ite c!1152227 (reg!16568 (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))) (ite c!1152226 (regOne!32991 (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))) (regOne!32990 (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556)))))))))

(declare-fun b!6338195 () Bool)

(declare-fun e!3850050 () Bool)

(declare-fun e!3850052 () Bool)

(assert (=> b!6338195 (= e!3850050 e!3850052)))

(declare-fun res!2608382 () Bool)

(assert (=> b!6338195 (=> (not res!2608382) (not e!3850052))))

(assert (=> b!6338195 (= res!2608382 call!540065)))

(declare-fun b!6338196 () Bool)

(declare-fun e!3850055 () Bool)

(assert (=> b!6338196 (= e!3850055 call!540066)))

(declare-fun bm!540060 () Bool)

(assert (=> bm!540060 (= call!540065 call!540066)))

(declare-fun b!6338197 () Bool)

(declare-fun call!540064 () Bool)

(assert (=> b!6338197 (= e!3850054 call!540064)))

(declare-fun b!6338198 () Bool)

(declare-fun e!3850051 () Bool)

(assert (=> b!6338198 (= e!3850051 e!3850055)))

(declare-fun res!2608386 () Bool)

(assert (=> b!6338198 (= res!2608386 (not (nullable!6232 (reg!16568 (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))))))))

(assert (=> b!6338198 (=> (not res!2608386) (not e!3850055))))

(declare-fun bm!540061 () Bool)

(assert (=> bm!540061 (= call!540064 (validRegex!7975 (ite c!1152226 (regTwo!32991 (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))) (regTwo!32990 (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))))))))

(declare-fun b!6338199 () Bool)

(declare-fun e!3850049 () Bool)

(assert (=> b!6338199 (= e!3850049 e!3850051)))

(assert (=> b!6338199 (= c!1152227 ((_ is Star!16239) (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))))))

(declare-fun d!1989407 () Bool)

(declare-fun res!2608385 () Bool)

(assert (=> d!1989407 (=> res!2608385 e!3850049)))

(assert (=> d!1989407 (= res!2608385 ((_ is ElementMatch!16239) (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))))))

(assert (=> d!1989407 (= (validRegex!7975 (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))) e!3850049)))

(declare-fun b!6338200 () Bool)

(assert (=> b!6338200 (= e!3850052 call!540064)))

(declare-fun b!6338201 () Bool)

(declare-fun res!2608384 () Bool)

(assert (=> b!6338201 (=> res!2608384 e!3850050)))

(assert (=> b!6338201 (= res!2608384 (not ((_ is Concat!25084) (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556)))))))

(assert (=> b!6338201 (= e!3850053 e!3850050)))

(declare-fun b!6338202 () Bool)

(assert (=> b!6338202 (= e!3850051 e!3850053)))

(assert (=> b!6338202 (= c!1152226 ((_ is Union!16239) (ite c!1151890 (regTwo!32991 lt!2361556) (regTwo!32990 lt!2361556))))))

(assert (= (and d!1989407 (not res!2608385)) b!6338199))

(assert (= (and b!6338199 c!1152227) b!6338198))

(assert (= (and b!6338199 (not c!1152227)) b!6338202))

(assert (= (and b!6338198 res!2608386) b!6338196))

(assert (= (and b!6338202 c!1152226) b!6338194))

(assert (= (and b!6338202 (not c!1152226)) b!6338201))

(assert (= (and b!6338194 res!2608383) b!6338197))

(assert (= (and b!6338201 (not res!2608384)) b!6338195))

(assert (= (and b!6338195 res!2608382) b!6338200))

(assert (= (or b!6338197 b!6338200) bm!540061))

(assert (= (or b!6338194 b!6338195) bm!540060))

(assert (= (or b!6338196 bm!540060) bm!540059))

(declare-fun m!7147288 () Bool)

(assert (=> bm!540059 m!7147288))

(declare-fun m!7147290 () Bool)

(assert (=> b!6338198 m!7147290))

(declare-fun m!7147292 () Bool)

(assert (=> bm!540061 m!7147292))

(assert (=> bm!539882 d!1989407))

(declare-fun b!6338205 () Bool)

(declare-fun e!3850063 () (InoxSet Context!11246))

(declare-fun e!3850060 () (InoxSet Context!11246))

(assert (=> b!6338205 (= e!3850063 e!3850060)))

(declare-fun c!1152230 () Bool)

(assert (=> b!6338205 (= c!1152230 ((_ is Concat!25084) (h!71340 (exprs!6123 lt!2361578))))))

(declare-fun b!6338206 () Bool)

(declare-fun e!3850062 () (InoxSet Context!11246))

(assert (=> b!6338206 (= e!3850062 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338207 () Bool)

(declare-fun call!540072 () (InoxSet Context!11246))

(declare-fun call!540071 () (InoxSet Context!11246))

(assert (=> b!6338207 (= e!3850063 ((_ map or) call!540072 call!540071))))

(declare-fun b!6338208 () Bool)

(declare-fun e!3850061 () Bool)

(assert (=> b!6338208 (= e!3850061 (nullable!6232 (regOne!32990 (h!71340 (exprs!6123 lt!2361578)))))))

(declare-fun bm!540063 () Bool)

(declare-fun call!540070 () (InoxSet Context!11246))

(assert (=> bm!540063 (= call!540071 call!540070)))

(declare-fun bm!540064 () Bool)

(declare-fun c!1152231 () Bool)

(declare-fun call!540069 () List!65016)

(assert (=> bm!540064 (= call!540072 (derivationStepZipperDown!1487 (ite c!1152231 (regTwo!32991 (h!71340 (exprs!6123 lt!2361578))) (regOne!32990 (h!71340 (exprs!6123 lt!2361578)))) (ite c!1152231 (Context!11247 (t!378600 (exprs!6123 lt!2361578))) (Context!11247 call!540069)) (h!71342 s!2326)))))

(declare-fun b!6338209 () Bool)

(declare-fun call!540068 () (InoxSet Context!11246))

(assert (=> b!6338209 (= e!3850060 call!540068)))

(declare-fun bm!540065 () Bool)

(declare-fun c!1152228 () Bool)

(assert (=> bm!540065 (= call!540069 ($colon$colon!2102 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361578)))) (ite (or c!1152228 c!1152230) (regTwo!32990 (h!71340 (exprs!6123 lt!2361578))) (h!71340 (exprs!6123 lt!2361578)))))))

(declare-fun d!1989411 () Bool)

(declare-fun c!1152229 () Bool)

(assert (=> d!1989411 (= c!1152229 (and ((_ is ElementMatch!16239) (h!71340 (exprs!6123 lt!2361578))) (= (c!1151834 (h!71340 (exprs!6123 lt!2361578))) (h!71342 s!2326))))))

(declare-fun e!3850059 () (InoxSet Context!11246))

(assert (=> d!1989411 (= (derivationStepZipperDown!1487 (h!71340 (exprs!6123 lt!2361578)) (Context!11247 (t!378600 (exprs!6123 lt!2361578))) (h!71342 s!2326)) e!3850059)))

(declare-fun call!540067 () List!65016)

(declare-fun bm!540062 () Bool)

(assert (=> bm!540062 (= call!540070 (derivationStepZipperDown!1487 (ite c!1152231 (regOne!32991 (h!71340 (exprs!6123 lt!2361578))) (ite c!1152228 (regTwo!32990 (h!71340 (exprs!6123 lt!2361578))) (ite c!1152230 (regOne!32990 (h!71340 (exprs!6123 lt!2361578))) (reg!16568 (h!71340 (exprs!6123 lt!2361578)))))) (ite (or c!1152231 c!1152228) (Context!11247 (t!378600 (exprs!6123 lt!2361578))) (Context!11247 call!540067)) (h!71342 s!2326)))))

(declare-fun bm!540066 () Bool)

(assert (=> bm!540066 (= call!540067 call!540069)))

(declare-fun b!6338210 () Bool)

(assert (=> b!6338210 (= e!3850059 (store ((as const (Array Context!11246 Bool)) false) (Context!11247 (t!378600 (exprs!6123 lt!2361578))) true))))

(declare-fun b!6338211 () Bool)

(declare-fun e!3850058 () (InoxSet Context!11246))

(assert (=> b!6338211 (= e!3850058 ((_ map or) call!540070 call!540072))))

(declare-fun b!6338212 () Bool)

(assert (=> b!6338212 (= e!3850062 call!540068)))

(declare-fun b!6338213 () Bool)

(assert (=> b!6338213 (= c!1152228 e!3850061)))

(declare-fun res!2608389 () Bool)

(assert (=> b!6338213 (=> (not res!2608389) (not e!3850061))))

(assert (=> b!6338213 (= res!2608389 ((_ is Concat!25084) (h!71340 (exprs!6123 lt!2361578))))))

(assert (=> b!6338213 (= e!3850058 e!3850063)))

(declare-fun b!6338214 () Bool)

(assert (=> b!6338214 (= e!3850059 e!3850058)))

(assert (=> b!6338214 (= c!1152231 ((_ is Union!16239) (h!71340 (exprs!6123 lt!2361578))))))

(declare-fun b!6338215 () Bool)

(declare-fun c!1152232 () Bool)

(assert (=> b!6338215 (= c!1152232 ((_ is Star!16239) (h!71340 (exprs!6123 lt!2361578))))))

(assert (=> b!6338215 (= e!3850060 e!3850062)))

(declare-fun bm!540067 () Bool)

(assert (=> bm!540067 (= call!540068 call!540071)))

(assert (= (and d!1989411 c!1152229) b!6338210))

(assert (= (and d!1989411 (not c!1152229)) b!6338214))

(assert (= (and b!6338214 c!1152231) b!6338211))

(assert (= (and b!6338214 (not c!1152231)) b!6338213))

(assert (= (and b!6338213 res!2608389) b!6338208))

(assert (= (and b!6338213 c!1152228) b!6338207))

(assert (= (and b!6338213 (not c!1152228)) b!6338205))

(assert (= (and b!6338205 c!1152230) b!6338209))

(assert (= (and b!6338205 (not c!1152230)) b!6338215))

(assert (= (and b!6338215 c!1152232) b!6338212))

(assert (= (and b!6338215 (not c!1152232)) b!6338206))

(assert (= (or b!6338209 b!6338212) bm!540066))

(assert (= (or b!6338209 b!6338212) bm!540067))

(assert (= (or b!6338207 bm!540066) bm!540065))

(assert (= (or b!6338207 bm!540067) bm!540063))

(assert (= (or b!6338211 b!6338207) bm!540064))

(assert (= (or b!6338211 bm!540063) bm!540062))

(declare-fun m!7147300 () Bool)

(assert (=> bm!540062 m!7147300))

(declare-fun m!7147302 () Bool)

(assert (=> bm!540064 m!7147302))

(declare-fun m!7147304 () Bool)

(assert (=> bm!540065 m!7147304))

(declare-fun m!7147306 () Bool)

(assert (=> b!6338210 m!7147306))

(declare-fun m!7147308 () Bool)

(assert (=> b!6338208 m!7147308))

(assert (=> bm!539931 d!1989411))

(declare-fun bs!1586909 () Bool)

(declare-fun b!6338225 () Bool)

(assert (= bs!1586909 (and b!6338225 d!1989127)))

(declare-fun lambda!348087 () Int)

(assert (=> bs!1586909 (not (= lambda!348087 lambda!348034))))

(declare-fun bs!1586910 () Bool)

(assert (= bs!1586910 (and b!6338225 d!1989129)))

(assert (=> bs!1586910 (not (= lambda!348087 lambda!348040))))

(declare-fun bs!1586911 () Bool)

(assert (= bs!1586911 (and b!6338225 d!1989209)))

(assert (=> bs!1586911 (not (= lambda!348087 lambda!348056))))

(declare-fun bs!1586912 () Bool)

(assert (= bs!1586912 (and b!6338225 d!1989351)))

(assert (=> bs!1586912 (not (= lambda!348087 lambda!348082))))

(assert (=> bs!1586911 (not (= lambda!348087 lambda!348057))))

(declare-fun bs!1586913 () Bool)

(assert (= bs!1586913 (and b!6338225 b!6337339)))

(assert (=> bs!1586913 (not (= lambda!348087 lambda!348022))))

(assert (=> bs!1586910 (not (= lambda!348087 lambda!348039))))

(declare-fun bs!1586915 () Bool)

(assert (= bs!1586915 (and b!6338225 b!6336813)))

(assert (=> bs!1586915 (not (= lambda!348087 lambda!347958))))

(declare-fun bs!1586917 () Bool)

(assert (= bs!1586917 (and b!6338225 b!6337341)))

(assert (=> bs!1586917 (= (and (= (reg!16568 (regOne!32991 r!7292)) (reg!16568 r!7292)) (= (regOne!32991 r!7292) r!7292)) (= lambda!348087 lambda!348021))))

(assert (=> bs!1586915 (not (= lambda!348087 lambda!347957))))

(assert (=> b!6338225 true))

(assert (=> b!6338225 true))

(declare-fun bs!1586921 () Bool)

(declare-fun b!6338223 () Bool)

(assert (= bs!1586921 (and b!6338223 d!1989127)))

(declare-fun lambda!348091 () Int)

(assert (=> bs!1586921 (not (= lambda!348091 lambda!348034))))

(declare-fun bs!1586922 () Bool)

(assert (= bs!1586922 (and b!6338223 d!1989209)))

(assert (=> bs!1586922 (not (= lambda!348091 lambda!348056))))

(declare-fun bs!1586923 () Bool)

(assert (= bs!1586923 (and b!6338223 d!1989351)))

(assert (=> bs!1586923 (not (= lambda!348091 lambda!348082))))

(assert (=> bs!1586922 (= (and (= (regOne!32990 (regOne!32991 r!7292)) (regOne!32990 r!7292)) (= (regTwo!32990 (regOne!32991 r!7292)) (regTwo!32990 r!7292))) (= lambda!348091 lambda!348057))))

(declare-fun bs!1586924 () Bool)

(assert (= bs!1586924 (and b!6338223 b!6337339)))

(assert (=> bs!1586924 (= (and (= (regOne!32990 (regOne!32991 r!7292)) (regOne!32990 r!7292)) (= (regTwo!32990 (regOne!32991 r!7292)) (regTwo!32990 r!7292))) (= lambda!348091 lambda!348022))))

(declare-fun bs!1586925 () Bool)

(assert (= bs!1586925 (and b!6338223 b!6338225)))

(assert (=> bs!1586925 (not (= lambda!348091 lambda!348087))))

(declare-fun bs!1586926 () Bool)

(assert (= bs!1586926 (and b!6338223 d!1989129)))

(assert (=> bs!1586926 (= (and (= (regOne!32990 (regOne!32991 r!7292)) (regOne!32990 r!7292)) (= (regTwo!32990 (regOne!32991 r!7292)) (regTwo!32990 r!7292))) (= lambda!348091 lambda!348040))))

(assert (=> bs!1586926 (not (= lambda!348091 lambda!348039))))

(declare-fun bs!1586927 () Bool)

(assert (= bs!1586927 (and b!6338223 b!6336813)))

(assert (=> bs!1586927 (= (and (= (regOne!32990 (regOne!32991 r!7292)) (regOne!32990 r!7292)) (= (regTwo!32990 (regOne!32991 r!7292)) (regTwo!32990 r!7292))) (= lambda!348091 lambda!347958))))

(declare-fun bs!1586928 () Bool)

(assert (= bs!1586928 (and b!6338223 b!6337341)))

(assert (=> bs!1586928 (not (= lambda!348091 lambda!348021))))

(assert (=> bs!1586927 (not (= lambda!348091 lambda!347957))))

(assert (=> b!6338223 true))

(assert (=> b!6338223 true))

(declare-fun bm!540068 () Bool)

(declare-fun c!1152233 () Bool)

(declare-fun call!540073 () Bool)

(assert (=> bm!540068 (= call!540073 (Exists!3309 (ite c!1152233 lambda!348087 lambda!348091)))))

(declare-fun b!6338216 () Bool)

(declare-fun e!3850065 () Bool)

(assert (=> b!6338216 (= e!3850065 (matchRSpec!3340 (regTwo!32991 (regOne!32991 r!7292)) s!2326))))

(declare-fun b!6338217 () Bool)

(declare-fun e!3850070 () Bool)

(assert (=> b!6338217 (= e!3850070 e!3850065)))

(declare-fun res!2608390 () Bool)

(assert (=> b!6338217 (= res!2608390 (matchRSpec!3340 (regOne!32991 (regOne!32991 r!7292)) s!2326))))

(assert (=> b!6338217 (=> res!2608390 e!3850065)))

(declare-fun bm!540069 () Bool)

(declare-fun call!540074 () Bool)

(assert (=> bm!540069 (= call!540074 (isEmpty!36973 s!2326))))

(declare-fun b!6338218 () Bool)

(declare-fun e!3850066 () Bool)

(assert (=> b!6338218 (= e!3850066 (= s!2326 (Cons!64894 (c!1151834 (regOne!32991 r!7292)) Nil!64894)))))

(declare-fun b!6338219 () Bool)

(declare-fun c!1152235 () Bool)

(assert (=> b!6338219 (= c!1152235 ((_ is Union!16239) (regOne!32991 r!7292)))))

(assert (=> b!6338219 (= e!3850066 e!3850070)))

(declare-fun b!6338221 () Bool)

(declare-fun e!3850069 () Bool)

(declare-fun e!3850068 () Bool)

(assert (=> b!6338221 (= e!3850069 e!3850068)))

(declare-fun res!2608391 () Bool)

(assert (=> b!6338221 (= res!2608391 (not ((_ is EmptyLang!16239) (regOne!32991 r!7292))))))

(assert (=> b!6338221 (=> (not res!2608391) (not e!3850068))))

(declare-fun b!6338222 () Bool)

(declare-fun e!3850064 () Bool)

(assert (=> b!6338222 (= e!3850070 e!3850064)))

(assert (=> b!6338222 (= c!1152233 ((_ is Star!16239) (regOne!32991 r!7292)))))

(assert (=> b!6338223 (= e!3850064 call!540073)))

(declare-fun b!6338224 () Bool)

(assert (=> b!6338224 (= e!3850069 call!540074)))

(declare-fun e!3850067 () Bool)

(assert (=> b!6338225 (= e!3850067 call!540073)))

(declare-fun b!6338226 () Bool)

(declare-fun res!2608392 () Bool)

(assert (=> b!6338226 (=> res!2608392 e!3850067)))

(assert (=> b!6338226 (= res!2608392 call!540074)))

(assert (=> b!6338226 (= e!3850064 e!3850067)))

(declare-fun b!6338220 () Bool)

(declare-fun c!1152234 () Bool)

(assert (=> b!6338220 (= c!1152234 ((_ is ElementMatch!16239) (regOne!32991 r!7292)))))

(assert (=> b!6338220 (= e!3850068 e!3850066)))

(declare-fun d!1989421 () Bool)

(declare-fun c!1152236 () Bool)

(assert (=> d!1989421 (= c!1152236 ((_ is EmptyExpr!16239) (regOne!32991 r!7292)))))

(assert (=> d!1989421 (= (matchRSpec!3340 (regOne!32991 r!7292) s!2326) e!3850069)))

(assert (= (and d!1989421 c!1152236) b!6338224))

(assert (= (and d!1989421 (not c!1152236)) b!6338221))

(assert (= (and b!6338221 res!2608391) b!6338220))

(assert (= (and b!6338220 c!1152234) b!6338218))

(assert (= (and b!6338220 (not c!1152234)) b!6338219))

(assert (= (and b!6338219 c!1152235) b!6338217))

(assert (= (and b!6338219 (not c!1152235)) b!6338222))

(assert (= (and b!6338217 (not res!2608390)) b!6338216))

(assert (= (and b!6338222 c!1152233) b!6338226))

(assert (= (and b!6338222 (not c!1152233)) b!6338223))

(assert (= (and b!6338226 (not res!2608392)) b!6338225))

(assert (= (or b!6338225 b!6338223) bm!540068))

(assert (= (or b!6338224 b!6338226) bm!540069))

(declare-fun m!7147328 () Bool)

(assert (=> bm!540068 m!7147328))

(declare-fun m!7147330 () Bool)

(assert (=> b!6338216 m!7147330))

(declare-fun m!7147332 () Bool)

(assert (=> b!6338217 m!7147332))

(assert (=> bm!540069 m!7146490))

(assert (=> b!6337333 d!1989421))

(assert (=> d!1989069 d!1989323))

(assert (=> d!1989069 d!1989045))

(declare-fun bs!1586935 () Bool)

(declare-fun d!1989433 () Bool)

(assert (= bs!1586935 (and d!1989433 d!1989111)))

(declare-fun lambda!348093 () Int)

(assert (=> bs!1586935 (= lambda!348093 lambda!348027)))

(declare-fun bs!1586937 () Bool)

(assert (= bs!1586937 (and d!1989433 b!6337917)))

(assert (=> bs!1586937 (not (= lambda!348093 lambda!348073))))

(declare-fun bs!1586939 () Bool)

(assert (= bs!1586939 (and d!1989433 d!1989145)))

(assert (=> bs!1586939 (= lambda!348093 lambda!348044)))

(declare-fun bs!1586941 () Bool)

(assert (= bs!1586941 (and d!1989433 d!1989191)))

(assert (=> bs!1586941 (= lambda!348093 lambda!348051)))

(declare-fun bs!1586943 () Bool)

(assert (= bs!1586943 (and d!1989433 d!1989029)))

(assert (=> bs!1586943 (= lambda!348093 lambda!348004)))

(declare-fun bs!1586945 () Bool)

(assert (= bs!1586945 (and d!1989433 d!1989161)))

(assert (=> bs!1586945 (= lambda!348093 lambda!348049)))

(declare-fun bs!1586947 () Bool)

(assert (= bs!1586947 (and d!1989433 b!6337919)))

(assert (=> bs!1586947 (not (= lambda!348093 lambda!348074))))

(declare-fun bs!1586949 () Bool)

(assert (= bs!1586949 (and d!1989433 d!1989185)))

(assert (=> bs!1586949 (= lambda!348093 lambda!348050)))

(declare-fun bs!1586951 () Bool)

(assert (= bs!1586951 (and d!1989433 d!1989159)))

(assert (=> bs!1586951 (= lambda!348093 lambda!348048)))

(declare-fun bs!1586953 () Bool)

(assert (= bs!1586953 (and d!1989433 d!1989147)))

(assert (=> bs!1586953 (= lambda!348093 lambda!348047)))

(declare-fun bs!1586954 () Bool)

(assert (= bs!1586954 (and d!1989433 d!1988975)))

(assert (=> bs!1586954 (= lambda!348093 lambda!347980)))

(declare-fun bs!1586955 () Bool)

(assert (= bs!1586955 (and d!1989433 d!1989143)))

(assert (=> bs!1586955 (= lambda!348093 lambda!348041)))

(declare-fun b!6338247 () Bool)

(declare-fun e!3850086 () Bool)

(declare-fun lt!2361766 () Regex!16239)

(assert (=> b!6338247 (= e!3850086 (= lt!2361766 (head!12973 (t!378600 (exprs!6123 (h!71341 zl!343))))))))

(declare-fun b!6338248 () Bool)

(declare-fun e!3850087 () Bool)

(declare-fun e!3850088 () Bool)

(assert (=> b!6338248 (= e!3850087 e!3850088)))

(declare-fun c!1152247 () Bool)

(assert (=> b!6338248 (= c!1152247 (isEmpty!36969 (t!378600 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6338249 () Bool)

(declare-fun e!3850089 () Regex!16239)

(declare-fun e!3850085 () Regex!16239)

(assert (=> b!6338249 (= e!3850089 e!3850085)))

(declare-fun c!1152248 () Bool)

(assert (=> b!6338249 (= c!1152248 ((_ is Cons!64892) (t!378600 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6338250 () Bool)

(declare-fun e!3850084 () Bool)

(assert (=> b!6338250 (= e!3850084 (isEmpty!36969 (t!378600 (t!378600 (exprs!6123 (h!71341 zl!343))))))))

(assert (=> d!1989433 e!3850087))

(declare-fun res!2608400 () Bool)

(assert (=> d!1989433 (=> (not res!2608400) (not e!3850087))))

(assert (=> d!1989433 (= res!2608400 (validRegex!7975 lt!2361766))))

(assert (=> d!1989433 (= lt!2361766 e!3850089)))

(declare-fun c!1152249 () Bool)

(assert (=> d!1989433 (= c!1152249 e!3850084)))

(declare-fun res!2608399 () Bool)

(assert (=> d!1989433 (=> (not res!2608399) (not e!3850084))))

(assert (=> d!1989433 (= res!2608399 ((_ is Cons!64892) (t!378600 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> d!1989433 (forall!15393 (t!378600 (exprs!6123 (h!71341 zl!343))) lambda!348093)))

(assert (=> d!1989433 (= (generalisedConcat!1836 (t!378600 (exprs!6123 (h!71341 zl!343)))) lt!2361766)))

(declare-fun b!6338251 () Bool)

(assert (=> b!6338251 (= e!3850085 EmptyExpr!16239)))

(declare-fun b!6338252 () Bool)

(assert (=> b!6338252 (= e!3850089 (h!71340 (t!378600 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6338253 () Bool)

(assert (=> b!6338253 (= e!3850088 e!3850086)))

(declare-fun c!1152246 () Bool)

(assert (=> b!6338253 (= c!1152246 (isEmpty!36969 (tail!12058 (t!378600 (exprs!6123 (h!71341 zl!343))))))))

(declare-fun b!6338254 () Bool)

(assert (=> b!6338254 (= e!3850088 (isEmptyExpr!1642 lt!2361766))))

(declare-fun b!6338255 () Bool)

(assert (=> b!6338255 (= e!3850085 (Concat!25084 (h!71340 (t!378600 (exprs!6123 (h!71341 zl!343)))) (generalisedConcat!1836 (t!378600 (t!378600 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun b!6338256 () Bool)

(assert (=> b!6338256 (= e!3850086 (isConcat!1165 lt!2361766))))

(assert (= (and d!1989433 res!2608399) b!6338250))

(assert (= (and d!1989433 c!1152249) b!6338252))

(assert (= (and d!1989433 (not c!1152249)) b!6338249))

(assert (= (and b!6338249 c!1152248) b!6338255))

(assert (= (and b!6338249 (not c!1152248)) b!6338251))

(assert (= (and d!1989433 res!2608400) b!6338248))

(assert (= (and b!6338248 c!1152247) b!6338254))

(assert (= (and b!6338248 (not c!1152247)) b!6338253))

(assert (= (and b!6338253 c!1152246) b!6338247))

(assert (= (and b!6338253 (not c!1152246)) b!6338256))

(declare-fun m!7147350 () Bool)

(assert (=> b!6338254 m!7147350))

(declare-fun m!7147354 () Bool)

(assert (=> b!6338250 m!7147354))

(declare-fun m!7147358 () Bool)

(assert (=> d!1989433 m!7147358))

(declare-fun m!7147360 () Bool)

(assert (=> d!1989433 m!7147360))

(declare-fun m!7147362 () Bool)

(assert (=> b!6338247 m!7147362))

(assert (=> b!6338248 m!7146120))

(declare-fun m!7147364 () Bool)

(assert (=> b!6338256 m!7147364))

(declare-fun m!7147366 () Bool)

(assert (=> b!6338253 m!7147366))

(assert (=> b!6338253 m!7147366))

(declare-fun m!7147368 () Bool)

(assert (=> b!6338253 m!7147368))

(declare-fun m!7147370 () Bool)

(assert (=> b!6338255 m!7147370))

(assert (=> b!6337466 d!1989433))

(declare-fun d!1989439 () Bool)

(assert (=> d!1989439 true))

(assert (=> d!1989439 true))

(declare-fun res!2608406 () Bool)

(assert (=> d!1989439 (= (choose!46982 lambda!347957) res!2608406)))

(assert (=> d!1989123 d!1989439))

(declare-fun d!1989445 () Bool)

(assert (=> d!1989445 true))

(declare-fun setRes!43128 () Bool)

(assert (=> d!1989445 setRes!43128))

(declare-fun condSetEmpty!43128 () Bool)

(declare-fun res!2608407 () (InoxSet Context!11246))

(assert (=> d!1989445 (= condSetEmpty!43128 (= res!2608407 ((as const (Array Context!11246 Bool)) false)))))

(assert (=> d!1989445 (= (choose!46974 z!1189 lambda!347959) res!2608407)))

(declare-fun setIsEmpty!43128 () Bool)

(assert (=> setIsEmpty!43128 setRes!43128))

(declare-fun tp!1767701 () Bool)

(declare-fun e!3850098 () Bool)

(declare-fun setElem!43128 () Context!11246)

(declare-fun setNonEmpty!43128 () Bool)

(assert (=> setNonEmpty!43128 (= setRes!43128 (and tp!1767701 (inv!83844 setElem!43128) e!3850098))))

(declare-fun setRest!43128 () (InoxSet Context!11246))

(assert (=> setNonEmpty!43128 (= res!2608407 ((_ map or) (store ((as const (Array Context!11246 Bool)) false) setElem!43128 true) setRest!43128))))

(declare-fun b!6338270 () Bool)

(declare-fun tp!1767702 () Bool)

(assert (=> b!6338270 (= e!3850098 tp!1767702)))

(assert (= (and d!1989445 condSetEmpty!43128) setIsEmpty!43128))

(assert (= (and d!1989445 (not condSetEmpty!43128)) setNonEmpty!43128))

(assert (= setNonEmpty!43128 b!6338270))

(declare-fun m!7147380 () Bool)

(assert (=> setNonEmpty!43128 m!7147380))

(assert (=> d!1989011 d!1989445))

(declare-fun d!1989447 () Bool)

(assert (=> d!1989447 (= (isEmpty!36969 (t!378600 (unfocusZipperList!1660 zl!343))) ((_ is Nil!64892) (t!378600 (unfocusZipperList!1660 zl!343))))))

(assert (=> b!6337619 d!1989447))

(assert (=> d!1989101 d!1989183))

(declare-fun b!6338271 () Bool)

(declare-fun e!3850101 () Bool)

(declare-fun lt!2361768 () Bool)

(declare-fun call!540084 () Bool)

(assert (=> b!6338271 (= e!3850101 (= lt!2361768 call!540084))))

(declare-fun bm!540079 () Bool)

(assert (=> bm!540079 (= call!540084 (isEmpty!36973 (_2!36521 (get!22445 lt!2361697))))))

(declare-fun b!6338272 () Bool)

(declare-fun e!3850105 () Bool)

(assert (=> b!6338272 (= e!3850101 e!3850105)))

(declare-fun c!1152255 () Bool)

(assert (=> b!6338272 (= c!1152255 ((_ is EmptyLang!16239) (regTwo!32990 r!7292)))))

(declare-fun d!1989449 () Bool)

(assert (=> d!1989449 e!3850101))

(declare-fun c!1152256 () Bool)

(assert (=> d!1989449 (= c!1152256 ((_ is EmptyExpr!16239) (regTwo!32990 r!7292)))))

(declare-fun e!3850102 () Bool)

(assert (=> d!1989449 (= lt!2361768 e!3850102)))

(declare-fun c!1152257 () Bool)

(assert (=> d!1989449 (= c!1152257 (isEmpty!36973 (_2!36521 (get!22445 lt!2361697))))))

(assert (=> d!1989449 (validRegex!7975 (regTwo!32990 r!7292))))

(assert (=> d!1989449 (= (matchR!8422 (regTwo!32990 r!7292) (_2!36521 (get!22445 lt!2361697))) lt!2361768)))

(declare-fun b!6338273 () Bool)

(assert (=> b!6338273 (= e!3850102 (nullable!6232 (regTwo!32990 r!7292)))))

(declare-fun b!6338274 () Bool)

(declare-fun res!2608412 () Bool)

(declare-fun e!3850099 () Bool)

(assert (=> b!6338274 (=> res!2608412 e!3850099)))

(assert (=> b!6338274 (= res!2608412 (not ((_ is ElementMatch!16239) (regTwo!32990 r!7292))))))

(assert (=> b!6338274 (= e!3850105 e!3850099)))

(declare-fun b!6338275 () Bool)

(declare-fun res!2608410 () Bool)

(declare-fun e!3850100 () Bool)

(assert (=> b!6338275 (=> (not res!2608410) (not e!3850100))))

(assert (=> b!6338275 (= res!2608410 (isEmpty!36973 (tail!12060 (_2!36521 (get!22445 lt!2361697)))))))

(declare-fun b!6338276 () Bool)

(assert (=> b!6338276 (= e!3850105 (not lt!2361768))))

(declare-fun b!6338277 () Bool)

(declare-fun res!2608414 () Bool)

(declare-fun e!3850104 () Bool)

(assert (=> b!6338277 (=> res!2608414 e!3850104)))

(assert (=> b!6338277 (= res!2608414 (not (isEmpty!36973 (tail!12060 (_2!36521 (get!22445 lt!2361697))))))))

(declare-fun b!6338278 () Bool)

(assert (=> b!6338278 (= e!3850104 (not (= (head!12975 (_2!36521 (get!22445 lt!2361697))) (c!1151834 (regTwo!32990 r!7292)))))))

(declare-fun b!6338279 () Bool)

(declare-fun res!2608415 () Bool)

(assert (=> b!6338279 (=> res!2608415 e!3850099)))

(assert (=> b!6338279 (= res!2608415 e!3850100)))

(declare-fun res!2608409 () Bool)

(assert (=> b!6338279 (=> (not res!2608409) (not e!3850100))))

(assert (=> b!6338279 (= res!2608409 lt!2361768)))

(declare-fun b!6338280 () Bool)

(declare-fun e!3850103 () Bool)

(assert (=> b!6338280 (= e!3850103 e!3850104)))

(declare-fun res!2608408 () Bool)

(assert (=> b!6338280 (=> res!2608408 e!3850104)))

(assert (=> b!6338280 (= res!2608408 call!540084)))

(declare-fun b!6338281 () Bool)

(assert (=> b!6338281 (= e!3850099 e!3850103)))

(declare-fun res!2608411 () Bool)

(assert (=> b!6338281 (=> (not res!2608411) (not e!3850103))))

(assert (=> b!6338281 (= res!2608411 (not lt!2361768))))

(declare-fun b!6338282 () Bool)

(assert (=> b!6338282 (= e!3850102 (matchR!8422 (derivativeStep!4946 (regTwo!32990 r!7292) (head!12975 (_2!36521 (get!22445 lt!2361697)))) (tail!12060 (_2!36521 (get!22445 lt!2361697)))))))

(declare-fun b!6338283 () Bool)

(declare-fun res!2608413 () Bool)

(assert (=> b!6338283 (=> (not res!2608413) (not e!3850100))))

(assert (=> b!6338283 (= res!2608413 (not call!540084))))

(declare-fun b!6338284 () Bool)

(assert (=> b!6338284 (= e!3850100 (= (head!12975 (_2!36521 (get!22445 lt!2361697))) (c!1151834 (regTwo!32990 r!7292))))))

(assert (= (and d!1989449 c!1152257) b!6338273))

(assert (= (and d!1989449 (not c!1152257)) b!6338282))

(assert (= (and d!1989449 c!1152256) b!6338271))

(assert (= (and d!1989449 (not c!1152256)) b!6338272))

(assert (= (and b!6338272 c!1152255) b!6338276))

(assert (= (and b!6338272 (not c!1152255)) b!6338274))

(assert (= (and b!6338274 (not res!2608412)) b!6338279))

(assert (= (and b!6338279 res!2608409) b!6338283))

(assert (= (and b!6338283 res!2608413) b!6338275))

(assert (= (and b!6338275 res!2608410) b!6338284))

(assert (= (and b!6338279 (not res!2608415)) b!6338281))

(assert (= (and b!6338281 res!2608411) b!6338280))

(assert (= (and b!6338280 (not res!2608408)) b!6338277))

(assert (= (and b!6338277 (not res!2608414)) b!6338278))

(assert (= (or b!6338271 b!6338280 b!6338283) bm!540079))

(declare-fun m!7147388 () Bool)

(assert (=> b!6338278 m!7147388))

(assert (=> b!6338284 m!7147388))

(declare-fun m!7147390 () Bool)

(assert (=> d!1989449 m!7147390))

(assert (=> d!1989449 m!7147268))

(assert (=> b!6338273 m!7147270))

(assert (=> bm!540079 m!7147390))

(assert (=> b!6338282 m!7147388))

(assert (=> b!6338282 m!7147388))

(declare-fun m!7147392 () Bool)

(assert (=> b!6338282 m!7147392))

(declare-fun m!7147394 () Bool)

(assert (=> b!6338282 m!7147394))

(assert (=> b!6338282 m!7147392))

(assert (=> b!6338282 m!7147394))

(declare-fun m!7147396 () Bool)

(assert (=> b!6338282 m!7147396))

(assert (=> b!6338275 m!7147394))

(assert (=> b!6338275 m!7147394))

(declare-fun m!7147398 () Bool)

(assert (=> b!6338275 m!7147398))

(assert (=> b!6338277 m!7147394))

(assert (=> b!6338277 m!7147394))

(assert (=> b!6338277 m!7147398))

(assert (=> b!6337571 d!1989449))

(assert (=> b!6337571 d!1989313))

(declare-fun d!1989459 () Bool)

(assert (=> d!1989459 (= (isEmpty!36969 (tail!12058 lt!2361557)) ((_ is Nil!64892) (tail!12058 lt!2361557)))))

(assert (=> b!6337067 d!1989459))

(declare-fun d!1989461 () Bool)

(assert (=> d!1989461 (= (tail!12058 lt!2361557) (t!378600 lt!2361557))))

(assert (=> b!6337067 d!1989461))

(declare-fun d!1989463 () Bool)

(declare-fun res!2608418 () Bool)

(declare-fun e!3850109 () Bool)

(assert (=> d!1989463 (=> res!2608418 e!3850109)))

(assert (=> d!1989463 (= res!2608418 ((_ is Nil!64893) lt!2361561))))

(assert (=> d!1989463 (= (forall!15394 lt!2361561 lambda!347991) e!3850109)))

(declare-fun b!6338289 () Bool)

(declare-fun e!3850110 () Bool)

(assert (=> b!6338289 (= e!3850109 e!3850110)))

(declare-fun res!2608419 () Bool)

(assert (=> b!6338289 (=> (not res!2608419) (not e!3850110))))

(assert (=> b!6338289 (= res!2608419 (dynLambda!25720 lambda!347991 (h!71341 lt!2361561)))))

(declare-fun b!6338290 () Bool)

(assert (=> b!6338290 (= e!3850110 (forall!15394 (t!378601 lt!2361561) lambda!347991))))

(assert (= (and d!1989463 (not res!2608418)) b!6338289))

(assert (= (and b!6338289 res!2608419) b!6338290))

(declare-fun b_lambda!241203 () Bool)

(assert (=> (not b_lambda!241203) (not b!6338289)))

(declare-fun m!7147406 () Bool)

(assert (=> b!6338289 m!7147406))

(declare-fun m!7147408 () Bool)

(assert (=> b!6338290 m!7147408))

(assert (=> b!6337114 d!1989463))

(declare-fun d!1989467 () Bool)

(declare-fun c!1152259 () Bool)

(assert (=> d!1989467 (= c!1152259 (isEmpty!36973 (tail!12060 (t!378602 s!2326))))))

(declare-fun e!3850111 () Bool)

(assert (=> d!1989467 (= (matchZipper!2251 (derivationStepZipper!2205 ((_ map or) lt!2361560 lt!2361577) (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))) e!3850111)))

(declare-fun b!6338291 () Bool)

(assert (=> b!6338291 (= e!3850111 (nullableZipper!2007 (derivationStepZipper!2205 ((_ map or) lt!2361560 lt!2361577) (head!12975 (t!378602 s!2326)))))))

(declare-fun b!6338292 () Bool)

(assert (=> b!6338292 (= e!3850111 (matchZipper!2251 (derivationStepZipper!2205 (derivationStepZipper!2205 ((_ map or) lt!2361560 lt!2361577) (head!12975 (t!378602 s!2326))) (head!12975 (tail!12060 (t!378602 s!2326)))) (tail!12060 (tail!12060 (t!378602 s!2326)))))))

(assert (= (and d!1989467 c!1152259) b!6338291))

(assert (= (and d!1989467 (not c!1152259)) b!6338292))

(assert (=> d!1989467 m!7146446))

(assert (=> d!1989467 m!7147036))

(assert (=> b!6338291 m!7146698))

(declare-fun m!7147410 () Bool)

(assert (=> b!6338291 m!7147410))

(assert (=> b!6338292 m!7146446))

(assert (=> b!6338292 m!7147040))

(assert (=> b!6338292 m!7146698))

(assert (=> b!6338292 m!7147040))

(declare-fun m!7147412 () Bool)

(assert (=> b!6338292 m!7147412))

(assert (=> b!6338292 m!7146446))

(assert (=> b!6338292 m!7147044))

(assert (=> b!6338292 m!7147412))

(assert (=> b!6338292 m!7147044))

(declare-fun m!7147414 () Bool)

(assert (=> b!6338292 m!7147414))

(assert (=> b!6337589 d!1989467))

(declare-fun bs!1586969 () Bool)

(declare-fun d!1989469 () Bool)

(assert (= bs!1586969 (and d!1989469 b!6336821)))

(declare-fun lambda!348097 () Int)

(assert (=> bs!1586969 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348097 lambda!347959))))

(declare-fun bs!1586970 () Bool)

(assert (= bs!1586970 (and d!1989469 d!1989037)))

(assert (=> bs!1586970 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348097 lambda!348007))))

(declare-fun bs!1586971 () Bool)

(assert (= bs!1586971 (and d!1989469 d!1989291)))

(assert (=> bs!1586971 (= lambda!348097 lambda!348075)))

(declare-fun bs!1586972 () Bool)

(assert (= bs!1586972 (and d!1989469 d!1989319)))

(assert (=> bs!1586972 (= lambda!348097 lambda!348079)))

(assert (=> d!1989469 true))

(assert (=> d!1989469 (= (derivationStepZipper!2205 ((_ map or) lt!2361560 lt!2361577) (head!12975 (t!378602 s!2326))) (flatMap!1744 ((_ map or) lt!2361560 lt!2361577) lambda!348097))))

(declare-fun bs!1586973 () Bool)

(assert (= bs!1586973 d!1989469))

(declare-fun m!7147418 () Bool)

(assert (=> bs!1586973 m!7147418))

(assert (=> b!6337589 d!1989469))

(assert (=> b!6337589 d!1989295))

(assert (=> b!6337589 d!1989297))

(assert (=> b!6337461 d!1989141))

(assert (=> b!6337401 d!1989329))

(declare-fun d!1989473 () Bool)

(assert (=> d!1989473 (= (isEmpty!36969 (unfocusZipperList!1660 zl!343)) ((_ is Nil!64892) (unfocusZipperList!1660 zl!343)))))

(assert (=> b!6337623 d!1989473))

(declare-fun bs!1586975 () Bool)

(declare-fun b!6338302 () Bool)

(assert (= bs!1586975 (and b!6338302 d!1989127)))

(declare-fun lambda!348098 () Int)

(assert (=> bs!1586975 (not (= lambda!348098 lambda!348034))))

(declare-fun bs!1586976 () Bool)

(assert (= bs!1586976 (and b!6338302 d!1989209)))

(assert (=> bs!1586976 (not (= lambda!348098 lambda!348056))))

(declare-fun bs!1586977 () Bool)

(assert (= bs!1586977 (and b!6338302 d!1989351)))

(assert (=> bs!1586977 (not (= lambda!348098 lambda!348082))))

(assert (=> bs!1586976 (not (= lambda!348098 lambda!348057))))

(declare-fun bs!1586978 () Bool)

(assert (= bs!1586978 (and b!6338302 b!6338223)))

(assert (=> bs!1586978 (not (= lambda!348098 lambda!348091))))

(declare-fun bs!1586979 () Bool)

(assert (= bs!1586979 (and b!6338302 b!6337339)))

(assert (=> bs!1586979 (not (= lambda!348098 lambda!348022))))

(declare-fun bs!1586980 () Bool)

(assert (= bs!1586980 (and b!6338302 b!6338225)))

(assert (=> bs!1586980 (= (and (= (reg!16568 (regTwo!32991 r!7292)) (reg!16568 (regOne!32991 r!7292))) (= (regTwo!32991 r!7292) (regOne!32991 r!7292))) (= lambda!348098 lambda!348087))))

(declare-fun bs!1586981 () Bool)

(assert (= bs!1586981 (and b!6338302 d!1989129)))

(assert (=> bs!1586981 (not (= lambda!348098 lambda!348040))))

(assert (=> bs!1586981 (not (= lambda!348098 lambda!348039))))

(declare-fun bs!1586982 () Bool)

(assert (= bs!1586982 (and b!6338302 b!6336813)))

(assert (=> bs!1586982 (not (= lambda!348098 lambda!347958))))

(declare-fun bs!1586983 () Bool)

(assert (= bs!1586983 (and b!6338302 b!6337341)))

(assert (=> bs!1586983 (= (and (= (reg!16568 (regTwo!32991 r!7292)) (reg!16568 r!7292)) (= (regTwo!32991 r!7292) r!7292)) (= lambda!348098 lambda!348021))))

(assert (=> bs!1586982 (not (= lambda!348098 lambda!347957))))

(assert (=> b!6338302 true))

(assert (=> b!6338302 true))

(declare-fun bs!1586984 () Bool)

(declare-fun b!6338300 () Bool)

(assert (= bs!1586984 (and b!6338300 d!1989127)))

(declare-fun lambda!348099 () Int)

(assert (=> bs!1586984 (not (= lambda!348099 lambda!348034))))

(declare-fun bs!1586985 () Bool)

(assert (= bs!1586985 (and b!6338300 b!6338302)))

(assert (=> bs!1586985 (not (= lambda!348099 lambda!348098))))

(declare-fun bs!1586986 () Bool)

(assert (= bs!1586986 (and b!6338300 d!1989209)))

(assert (=> bs!1586986 (not (= lambda!348099 lambda!348056))))

(declare-fun bs!1586987 () Bool)

(assert (= bs!1586987 (and b!6338300 d!1989351)))

(assert (=> bs!1586987 (not (= lambda!348099 lambda!348082))))

(assert (=> bs!1586986 (= (and (= (regOne!32990 (regTwo!32991 r!7292)) (regOne!32990 r!7292)) (= (regTwo!32990 (regTwo!32991 r!7292)) (regTwo!32990 r!7292))) (= lambda!348099 lambda!348057))))

(declare-fun bs!1586988 () Bool)

(assert (= bs!1586988 (and b!6338300 b!6338223)))

(assert (=> bs!1586988 (= (and (= (regOne!32990 (regTwo!32991 r!7292)) (regOne!32990 (regOne!32991 r!7292))) (= (regTwo!32990 (regTwo!32991 r!7292)) (regTwo!32990 (regOne!32991 r!7292)))) (= lambda!348099 lambda!348091))))

(declare-fun bs!1586989 () Bool)

(assert (= bs!1586989 (and b!6338300 b!6337339)))

(assert (=> bs!1586989 (= (and (= (regOne!32990 (regTwo!32991 r!7292)) (regOne!32990 r!7292)) (= (regTwo!32990 (regTwo!32991 r!7292)) (regTwo!32990 r!7292))) (= lambda!348099 lambda!348022))))

(declare-fun bs!1586990 () Bool)

(assert (= bs!1586990 (and b!6338300 b!6338225)))

(assert (=> bs!1586990 (not (= lambda!348099 lambda!348087))))

(declare-fun bs!1586991 () Bool)

(assert (= bs!1586991 (and b!6338300 d!1989129)))

(assert (=> bs!1586991 (= (and (= (regOne!32990 (regTwo!32991 r!7292)) (regOne!32990 r!7292)) (= (regTwo!32990 (regTwo!32991 r!7292)) (regTwo!32990 r!7292))) (= lambda!348099 lambda!348040))))

(assert (=> bs!1586991 (not (= lambda!348099 lambda!348039))))

(declare-fun bs!1586992 () Bool)

(assert (= bs!1586992 (and b!6338300 b!6336813)))

(assert (=> bs!1586992 (= (and (= (regOne!32990 (regTwo!32991 r!7292)) (regOne!32990 r!7292)) (= (regTwo!32990 (regTwo!32991 r!7292)) (regTwo!32990 r!7292))) (= lambda!348099 lambda!347958))))

(declare-fun bs!1586993 () Bool)

(assert (= bs!1586993 (and b!6338300 b!6337341)))

(assert (=> bs!1586993 (not (= lambda!348099 lambda!348021))))

(assert (=> bs!1586992 (not (= lambda!348099 lambda!347957))))

(assert (=> b!6338300 true))

(assert (=> b!6338300 true))

(declare-fun call!540085 () Bool)

(declare-fun bm!540080 () Bool)

(declare-fun c!1152260 () Bool)

(assert (=> bm!540080 (= call!540085 (Exists!3309 (ite c!1152260 lambda!348098 lambda!348099)))))

(declare-fun b!6338293 () Bool)

(declare-fun e!3850113 () Bool)

(assert (=> b!6338293 (= e!3850113 (matchRSpec!3340 (regTwo!32991 (regTwo!32991 r!7292)) s!2326))))

(declare-fun b!6338294 () Bool)

(declare-fun e!3850118 () Bool)

(assert (=> b!6338294 (= e!3850118 e!3850113)))

(declare-fun res!2608420 () Bool)

(assert (=> b!6338294 (= res!2608420 (matchRSpec!3340 (regOne!32991 (regTwo!32991 r!7292)) s!2326))))

(assert (=> b!6338294 (=> res!2608420 e!3850113)))

(declare-fun bm!540081 () Bool)

(declare-fun call!540086 () Bool)

(assert (=> bm!540081 (= call!540086 (isEmpty!36973 s!2326))))

(declare-fun b!6338295 () Bool)

(declare-fun e!3850114 () Bool)

(assert (=> b!6338295 (= e!3850114 (= s!2326 (Cons!64894 (c!1151834 (regTwo!32991 r!7292)) Nil!64894)))))

(declare-fun b!6338296 () Bool)

(declare-fun c!1152262 () Bool)

(assert (=> b!6338296 (= c!1152262 ((_ is Union!16239) (regTwo!32991 r!7292)))))

(assert (=> b!6338296 (= e!3850114 e!3850118)))

(declare-fun b!6338298 () Bool)

(declare-fun e!3850117 () Bool)

(declare-fun e!3850116 () Bool)

(assert (=> b!6338298 (= e!3850117 e!3850116)))

(declare-fun res!2608421 () Bool)

(assert (=> b!6338298 (= res!2608421 (not ((_ is EmptyLang!16239) (regTwo!32991 r!7292))))))

(assert (=> b!6338298 (=> (not res!2608421) (not e!3850116))))

(declare-fun b!6338299 () Bool)

(declare-fun e!3850112 () Bool)

(assert (=> b!6338299 (= e!3850118 e!3850112)))

(assert (=> b!6338299 (= c!1152260 ((_ is Star!16239) (regTwo!32991 r!7292)))))

(assert (=> b!6338300 (= e!3850112 call!540085)))

(declare-fun b!6338301 () Bool)

(assert (=> b!6338301 (= e!3850117 call!540086)))

(declare-fun e!3850115 () Bool)

(assert (=> b!6338302 (= e!3850115 call!540085)))

(declare-fun b!6338303 () Bool)

(declare-fun res!2608422 () Bool)

(assert (=> b!6338303 (=> res!2608422 e!3850115)))

(assert (=> b!6338303 (= res!2608422 call!540086)))

(assert (=> b!6338303 (= e!3850112 e!3850115)))

(declare-fun b!6338297 () Bool)

(declare-fun c!1152261 () Bool)

(assert (=> b!6338297 (= c!1152261 ((_ is ElementMatch!16239) (regTwo!32991 r!7292)))))

(assert (=> b!6338297 (= e!3850116 e!3850114)))

(declare-fun d!1989475 () Bool)

(declare-fun c!1152263 () Bool)

(assert (=> d!1989475 (= c!1152263 ((_ is EmptyExpr!16239) (regTwo!32991 r!7292)))))

(assert (=> d!1989475 (= (matchRSpec!3340 (regTwo!32991 r!7292) s!2326) e!3850117)))

(assert (= (and d!1989475 c!1152263) b!6338301))

(assert (= (and d!1989475 (not c!1152263)) b!6338298))

(assert (= (and b!6338298 res!2608421) b!6338297))

(assert (= (and b!6338297 c!1152261) b!6338295))

(assert (= (and b!6338297 (not c!1152261)) b!6338296))

(assert (= (and b!6338296 c!1152262) b!6338294))

(assert (= (and b!6338296 (not c!1152262)) b!6338299))

(assert (= (and b!6338294 (not res!2608420)) b!6338293))

(assert (= (and b!6338299 c!1152260) b!6338303))

(assert (= (and b!6338299 (not c!1152260)) b!6338300))

(assert (= (and b!6338303 (not res!2608422)) b!6338302))

(assert (= (or b!6338302 b!6338300) bm!540080))

(assert (= (or b!6338301 b!6338303) bm!540081))

(declare-fun m!7147440 () Bool)

(assert (=> bm!540080 m!7147440))

(declare-fun m!7147442 () Bool)

(assert (=> b!6338293 m!7147442))

(declare-fun m!7147444 () Bool)

(assert (=> b!6338294 m!7147444))

(assert (=> bm!540081 m!7146490))

(assert (=> b!6337332 d!1989475))

(declare-fun d!1989485 () Bool)

(assert (=> d!1989485 (= (isDefined!12833 lt!2361697) (not (isEmpty!36974 lt!2361697)))))

(declare-fun bs!1586994 () Bool)

(assert (= bs!1586994 d!1989485))

(declare-fun m!7147446 () Bool)

(assert (=> bs!1586994 m!7147446))

(assert (=> d!1989115 d!1989485))

(declare-fun b!6338326 () Bool)

(declare-fun e!3850135 () Bool)

(declare-fun lt!2361770 () Bool)

(declare-fun call!540096 () Bool)

(assert (=> b!6338326 (= e!3850135 (= lt!2361770 call!540096))))

(declare-fun bm!540091 () Bool)

(assert (=> bm!540091 (= call!540096 (isEmpty!36973 Nil!64894))))

(declare-fun b!6338327 () Bool)

(declare-fun e!3850139 () Bool)

(assert (=> b!6338327 (= e!3850135 e!3850139)))

(declare-fun c!1152272 () Bool)

(assert (=> b!6338327 (= c!1152272 ((_ is EmptyLang!16239) (regOne!32990 r!7292)))))

(declare-fun d!1989487 () Bool)

(assert (=> d!1989487 e!3850135))

(declare-fun c!1152273 () Bool)

(assert (=> d!1989487 (= c!1152273 ((_ is EmptyExpr!16239) (regOne!32990 r!7292)))))

(declare-fun e!3850136 () Bool)

(assert (=> d!1989487 (= lt!2361770 e!3850136)))

(declare-fun c!1152274 () Bool)

(assert (=> d!1989487 (= c!1152274 (isEmpty!36973 Nil!64894))))

(assert (=> d!1989487 (validRegex!7975 (regOne!32990 r!7292))))

(assert (=> d!1989487 (= (matchR!8422 (regOne!32990 r!7292) Nil!64894) lt!2361770)))

(declare-fun b!6338328 () Bool)

(assert (=> b!6338328 (= e!3850136 (nullable!6232 (regOne!32990 r!7292)))))

(declare-fun b!6338329 () Bool)

(declare-fun res!2608433 () Bool)

(declare-fun e!3850133 () Bool)

(assert (=> b!6338329 (=> res!2608433 e!3850133)))

(assert (=> b!6338329 (= res!2608433 (not ((_ is ElementMatch!16239) (regOne!32990 r!7292))))))

(assert (=> b!6338329 (= e!3850139 e!3850133)))

(declare-fun b!6338330 () Bool)

(declare-fun res!2608431 () Bool)

(declare-fun e!3850134 () Bool)

(assert (=> b!6338330 (=> (not res!2608431) (not e!3850134))))

(assert (=> b!6338330 (= res!2608431 (isEmpty!36973 (tail!12060 Nil!64894)))))

(declare-fun b!6338331 () Bool)

(assert (=> b!6338331 (= e!3850139 (not lt!2361770))))

(declare-fun b!6338332 () Bool)

(declare-fun res!2608435 () Bool)

(declare-fun e!3850138 () Bool)

(assert (=> b!6338332 (=> res!2608435 e!3850138)))

(assert (=> b!6338332 (= res!2608435 (not (isEmpty!36973 (tail!12060 Nil!64894))))))

(declare-fun b!6338333 () Bool)

(assert (=> b!6338333 (= e!3850138 (not (= (head!12975 Nil!64894) (c!1151834 (regOne!32990 r!7292)))))))

(declare-fun b!6338334 () Bool)

(declare-fun res!2608436 () Bool)

(assert (=> b!6338334 (=> res!2608436 e!3850133)))

(assert (=> b!6338334 (= res!2608436 e!3850134)))

(declare-fun res!2608430 () Bool)

(assert (=> b!6338334 (=> (not res!2608430) (not e!3850134))))

(assert (=> b!6338334 (= res!2608430 lt!2361770)))

(declare-fun b!6338335 () Bool)

(declare-fun e!3850137 () Bool)

(assert (=> b!6338335 (= e!3850137 e!3850138)))

(declare-fun res!2608429 () Bool)

(assert (=> b!6338335 (=> res!2608429 e!3850138)))

(assert (=> b!6338335 (= res!2608429 call!540096)))

(declare-fun b!6338336 () Bool)

(assert (=> b!6338336 (= e!3850133 e!3850137)))

(declare-fun res!2608432 () Bool)

(assert (=> b!6338336 (=> (not res!2608432) (not e!3850137))))

(assert (=> b!6338336 (= res!2608432 (not lt!2361770))))

(declare-fun b!6338337 () Bool)

(assert (=> b!6338337 (= e!3850136 (matchR!8422 (derivativeStep!4946 (regOne!32990 r!7292) (head!12975 Nil!64894)) (tail!12060 Nil!64894)))))

(declare-fun b!6338338 () Bool)

(declare-fun res!2608434 () Bool)

(assert (=> b!6338338 (=> (not res!2608434) (not e!3850134))))

(assert (=> b!6338338 (= res!2608434 (not call!540096))))

(declare-fun b!6338339 () Bool)

(assert (=> b!6338339 (= e!3850134 (= (head!12975 Nil!64894) (c!1151834 (regOne!32990 r!7292))))))

(assert (= (and d!1989487 c!1152274) b!6338328))

(assert (= (and d!1989487 (not c!1152274)) b!6338337))

(assert (= (and d!1989487 c!1152273) b!6338326))

(assert (= (and d!1989487 (not c!1152273)) b!6338327))

(assert (= (and b!6338327 c!1152272) b!6338331))

(assert (= (and b!6338327 (not c!1152272)) b!6338329))

(assert (= (and b!6338329 (not res!2608433)) b!6338334))

(assert (= (and b!6338334 res!2608430) b!6338338))

(assert (= (and b!6338338 res!2608434) b!6338330))

(assert (= (and b!6338330 res!2608431) b!6338339))

(assert (= (and b!6338334 (not res!2608436)) b!6338336))

(assert (= (and b!6338336 res!2608432) b!6338335))

(assert (= (and b!6338335 (not res!2608429)) b!6338332))

(assert (= (and b!6338332 (not res!2608435)) b!6338333))

(assert (= (or b!6338326 b!6338335 b!6338338) bm!540091))

(declare-fun m!7147448 () Bool)

(assert (=> b!6338333 m!7147448))

(assert (=> b!6338339 m!7147448))

(declare-fun m!7147450 () Bool)

(assert (=> d!1989487 m!7147450))

(assert (=> d!1989487 m!7146668))

(assert (=> b!6338328 m!7147086))

(assert (=> bm!540091 m!7147450))

(assert (=> b!6338337 m!7147448))

(assert (=> b!6338337 m!7147448))

(declare-fun m!7147452 () Bool)

(assert (=> b!6338337 m!7147452))

(declare-fun m!7147454 () Bool)

(assert (=> b!6338337 m!7147454))

(assert (=> b!6338337 m!7147452))

(assert (=> b!6338337 m!7147454))

(declare-fun m!7147456 () Bool)

(assert (=> b!6338337 m!7147456))

(assert (=> b!6338330 m!7147454))

(assert (=> b!6338330 m!7147454))

(declare-fun m!7147458 () Bool)

(assert (=> b!6338330 m!7147458))

(assert (=> b!6338332 m!7147454))

(assert (=> b!6338332 m!7147454))

(assert (=> b!6338332 m!7147458))

(assert (=> d!1989115 d!1989487))

(assert (=> d!1989115 d!1989221))

(assert (=> b!6337587 d!1989049))

(declare-fun d!1989491 () Bool)

(declare-fun c!1152278 () Bool)

(assert (=> d!1989491 (= c!1152278 (isEmpty!36973 (tail!12060 (t!378602 s!2326))))))

(declare-fun e!3850147 () Bool)

(assert (=> d!1989491 (= (matchZipper!2251 (derivationStepZipper!2205 lt!2361577 (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))) e!3850147)))

(declare-fun b!6338354 () Bool)

(assert (=> b!6338354 (= e!3850147 (nullableZipper!2007 (derivationStepZipper!2205 lt!2361577 (head!12975 (t!378602 s!2326)))))))

(declare-fun b!6338355 () Bool)

(assert (=> b!6338355 (= e!3850147 (matchZipper!2251 (derivationStepZipper!2205 (derivationStepZipper!2205 lt!2361577 (head!12975 (t!378602 s!2326))) (head!12975 (tail!12060 (t!378602 s!2326)))) (tail!12060 (tail!12060 (t!378602 s!2326)))))))

(assert (= (and d!1989491 c!1152278) b!6338354))

(assert (= (and d!1989491 (not c!1152278)) b!6338355))

(assert (=> d!1989491 m!7146446))

(assert (=> d!1989491 m!7147036))

(assert (=> b!6338354 m!7146444))

(declare-fun m!7147472 () Bool)

(assert (=> b!6338354 m!7147472))

(assert (=> b!6338355 m!7146446))

(assert (=> b!6338355 m!7147040))

(assert (=> b!6338355 m!7146444))

(assert (=> b!6338355 m!7147040))

(declare-fun m!7147474 () Bool)

(assert (=> b!6338355 m!7147474))

(assert (=> b!6338355 m!7146446))

(assert (=> b!6338355 m!7147044))

(assert (=> b!6338355 m!7147474))

(assert (=> b!6338355 m!7147044))

(declare-fun m!7147478 () Bool)

(assert (=> b!6338355 m!7147478))

(assert (=> b!6337286 d!1989491))

(declare-fun bs!1586996 () Bool)

(declare-fun d!1989495 () Bool)

(assert (= bs!1586996 (and d!1989495 b!6336821)))

(declare-fun lambda!348100 () Int)

(assert (=> bs!1586996 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348100 lambda!347959))))

(declare-fun bs!1586997 () Bool)

(assert (= bs!1586997 (and d!1989495 d!1989291)))

(assert (=> bs!1586997 (= lambda!348100 lambda!348075)))

(declare-fun bs!1586998 () Bool)

(assert (= bs!1586998 (and d!1989495 d!1989037)))

(assert (=> bs!1586998 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348100 lambda!348007))))

(declare-fun bs!1586999 () Bool)

(assert (= bs!1586999 (and d!1989495 d!1989319)))

(assert (=> bs!1586999 (= lambda!348100 lambda!348079)))

(declare-fun bs!1587000 () Bool)

(assert (= bs!1587000 (and d!1989495 d!1989469)))

(assert (=> bs!1587000 (= lambda!348100 lambda!348097)))

(assert (=> d!1989495 true))

(assert (=> d!1989495 (= (derivationStepZipper!2205 lt!2361577 (head!12975 (t!378602 s!2326))) (flatMap!1744 lt!2361577 lambda!348100))))

(declare-fun bs!1587001 () Bool)

(assert (= bs!1587001 d!1989495))

(declare-fun m!7147480 () Bool)

(assert (=> bs!1587001 m!7147480))

(assert (=> b!6337286 d!1989495))

(assert (=> b!6337286 d!1989295))

(assert (=> b!6337286 d!1989297))

(declare-fun d!1989497 () Bool)

(assert (=> d!1989497 true))

(assert (=> d!1989497 true))

(declare-fun res!2608445 () Bool)

(assert (=> d!1989497 (= (choose!46982 lambda!347958) res!2608445)))

(assert (=> d!1989125 d!1989497))

(declare-fun b!6338356 () Bool)

(declare-fun e!3850149 () List!65018)

(assert (=> b!6338356 (= e!3850149 (_2!36521 (get!22445 lt!2361697)))))

(declare-fun b!6338358 () Bool)

(declare-fun res!2608447 () Bool)

(declare-fun e!3850148 () Bool)

(assert (=> b!6338358 (=> (not res!2608447) (not e!3850148))))

(declare-fun lt!2361772 () List!65018)

(assert (=> b!6338358 (= res!2608447 (= (size!40337 lt!2361772) (+ (size!40337 (_1!36521 (get!22445 lt!2361697))) (size!40337 (_2!36521 (get!22445 lt!2361697))))))))

(declare-fun d!1989499 () Bool)

(assert (=> d!1989499 e!3850148))

(declare-fun res!2608446 () Bool)

(assert (=> d!1989499 (=> (not res!2608446) (not e!3850148))))

(assert (=> d!1989499 (= res!2608446 (= (content!12237 lt!2361772) ((_ map or) (content!12237 (_1!36521 (get!22445 lt!2361697))) (content!12237 (_2!36521 (get!22445 lt!2361697))))))))

(assert (=> d!1989499 (= lt!2361772 e!3850149)))

(declare-fun c!1152279 () Bool)

(assert (=> d!1989499 (= c!1152279 ((_ is Nil!64894) (_1!36521 (get!22445 lt!2361697))))))

(assert (=> d!1989499 (= (++!14310 (_1!36521 (get!22445 lt!2361697)) (_2!36521 (get!22445 lt!2361697))) lt!2361772)))

(declare-fun b!6338359 () Bool)

(assert (=> b!6338359 (= e!3850148 (or (not (= (_2!36521 (get!22445 lt!2361697)) Nil!64894)) (= lt!2361772 (_1!36521 (get!22445 lt!2361697)))))))

(declare-fun b!6338357 () Bool)

(assert (=> b!6338357 (= e!3850149 (Cons!64894 (h!71342 (_1!36521 (get!22445 lt!2361697))) (++!14310 (t!378602 (_1!36521 (get!22445 lt!2361697))) (_2!36521 (get!22445 lt!2361697)))))))

(assert (= (and d!1989499 c!1152279) b!6338356))

(assert (= (and d!1989499 (not c!1152279)) b!6338357))

(assert (= (and d!1989499 res!2608446) b!6338358))

(assert (= (and b!6338358 res!2608447) b!6338359))

(declare-fun m!7147482 () Bool)

(assert (=> b!6338358 m!7147482))

(declare-fun m!7147484 () Bool)

(assert (=> b!6338358 m!7147484))

(declare-fun m!7147486 () Bool)

(assert (=> b!6338358 m!7147486))

(declare-fun m!7147488 () Bool)

(assert (=> d!1989499 m!7147488))

(declare-fun m!7147490 () Bool)

(assert (=> d!1989499 m!7147490))

(declare-fun m!7147492 () Bool)

(assert (=> d!1989499 m!7147492))

(declare-fun m!7147494 () Bool)

(assert (=> b!6338357 m!7147494))

(assert (=> b!6337567 d!1989499))

(assert (=> b!6337567 d!1989313))

(assert (=> d!1989025 d!1989011))

(declare-fun d!1989501 () Bool)

(assert (=> d!1989501 (= (flatMap!1744 z!1189 lambda!347959) (dynLambda!25715 lambda!347959 (h!71341 zl!343)))))

(assert (=> d!1989501 true))

(declare-fun _$13!3491 () Unit!158287)

(assert (=> d!1989501 (= (choose!46975 z!1189 (h!71341 zl!343) lambda!347959) _$13!3491)))

(declare-fun b_lambda!241207 () Bool)

(assert (=> (not b_lambda!241207) (not d!1989501)))

(declare-fun bs!1587002 () Bool)

(assert (= bs!1587002 d!1989501))

(assert (=> bs!1587002 m!7146070))

(assert (=> bs!1587002 m!7146366))

(assert (=> d!1989025 d!1989501))

(declare-fun b!6338360 () Bool)

(declare-fun res!2608449 () Bool)

(declare-fun e!3850155 () Bool)

(assert (=> b!6338360 (=> (not res!2608449) (not e!3850155))))

(declare-fun call!540099 () Bool)

(assert (=> b!6338360 (= res!2608449 call!540099)))

(declare-fun e!3850154 () Bool)

(assert (=> b!6338360 (= e!3850154 e!3850155)))

(declare-fun c!1152281 () Bool)

(declare-fun call!540100 () Bool)

(declare-fun bm!540093 () Bool)

(declare-fun c!1152280 () Bool)

(assert (=> bm!540093 (= call!540100 (validRegex!7975 (ite c!1152281 (reg!16568 (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))) (ite c!1152280 (regOne!32991 (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))) (regOne!32990 (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292))))))))))

(declare-fun b!6338361 () Bool)

(declare-fun e!3850151 () Bool)

(declare-fun e!3850153 () Bool)

(assert (=> b!6338361 (= e!3850151 e!3850153)))

(declare-fun res!2608448 () Bool)

(assert (=> b!6338361 (=> (not res!2608448) (not e!3850153))))

(assert (=> b!6338361 (= res!2608448 call!540099)))

(declare-fun b!6338362 () Bool)

(declare-fun e!3850156 () Bool)

(assert (=> b!6338362 (= e!3850156 call!540100)))

(declare-fun bm!540094 () Bool)

(assert (=> bm!540094 (= call!540099 call!540100)))

(declare-fun b!6338363 () Bool)

(declare-fun call!540098 () Bool)

(assert (=> b!6338363 (= e!3850155 call!540098)))

(declare-fun b!6338364 () Bool)

(declare-fun e!3850152 () Bool)

(assert (=> b!6338364 (= e!3850152 e!3850156)))

(declare-fun res!2608452 () Bool)

(assert (=> b!6338364 (= res!2608452 (not (nullable!6232 (reg!16568 (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))))))))

(assert (=> b!6338364 (=> (not res!2608452) (not e!3850156))))

(declare-fun bm!540095 () Bool)

(assert (=> bm!540095 (= call!540098 (validRegex!7975 (ite c!1152280 (regTwo!32991 (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))) (regTwo!32990 (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))))))))

(declare-fun b!6338365 () Bool)

(declare-fun e!3850150 () Bool)

(assert (=> b!6338365 (= e!3850150 e!3850152)))

(assert (=> b!6338365 (= c!1152281 ((_ is Star!16239) (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))))))

(declare-fun d!1989503 () Bool)

(declare-fun res!2608451 () Bool)

(assert (=> d!1989503 (=> res!2608451 e!3850150)))

(assert (=> d!1989503 (= res!2608451 ((_ is ElementMatch!16239) (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))))))

(assert (=> d!1989503 (= (validRegex!7975 (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))) e!3850150)))

(declare-fun b!6338366 () Bool)

(assert (=> b!6338366 (= e!3850153 call!540098)))

(declare-fun b!6338367 () Bool)

(declare-fun res!2608450 () Bool)

(assert (=> b!6338367 (=> res!2608450 e!3850151)))

(assert (=> b!6338367 (= res!2608450 (not ((_ is Concat!25084) (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292))))))))

(assert (=> b!6338367 (= e!3850154 e!3850151)))

(declare-fun b!6338368 () Bool)

(assert (=> b!6338368 (= e!3850152 e!3850154)))

(assert (=> b!6338368 (= c!1152280 ((_ is Union!16239) (ite c!1151985 (reg!16568 r!7292) (ite c!1151984 (regOne!32991 r!7292) (regOne!32990 r!7292)))))))

(assert (= (and d!1989503 (not res!2608451)) b!6338365))

(assert (= (and b!6338365 c!1152281) b!6338364))

(assert (= (and b!6338365 (not c!1152281)) b!6338368))

(assert (= (and b!6338364 res!2608452) b!6338362))

(assert (= (and b!6338368 c!1152280) b!6338360))

(assert (= (and b!6338368 (not c!1152280)) b!6338367))

(assert (= (and b!6338360 res!2608449) b!6338363))

(assert (= (and b!6338367 (not res!2608450)) b!6338361))

(assert (= (and b!6338361 res!2608448) b!6338366))

(assert (= (or b!6338363 b!6338366) bm!540095))

(assert (= (or b!6338360 b!6338361) bm!540094))

(assert (= (or b!6338362 bm!540094) bm!540093))

(declare-fun m!7147496 () Bool)

(assert (=> bm!540093 m!7147496))

(declare-fun m!7147498 () Bool)

(assert (=> b!6338364 m!7147498))

(declare-fun m!7147500 () Bool)

(assert (=> bm!540095 m!7147500))

(assert (=> bm!539933 d!1989503))

(assert (=> d!1989135 d!1989183))

(assert (=> d!1989133 d!1989135))

(assert (=> d!1989133 d!1989053))

(declare-fun d!1989505 () Bool)

(declare-fun e!3850169 () Bool)

(assert (=> d!1989505 (= (matchZipper!2251 ((_ map or) lt!2361560 lt!2361577) (t!378602 s!2326)) e!3850169)))

(declare-fun res!2608455 () Bool)

(assert (=> d!1989505 (=> res!2608455 e!3850169)))

(assert (=> d!1989505 (= res!2608455 (matchZipper!2251 lt!2361560 (t!378602 s!2326)))))

(assert (=> d!1989505 true))

(declare-fun _$48!2117 () Unit!158287)

(assert (=> d!1989505 (= (choose!46985 lt!2361560 lt!2361577 (t!378602 s!2326)) _$48!2117)))

(declare-fun b!6338391 () Bool)

(assert (=> b!6338391 (= e!3850169 (matchZipper!2251 lt!2361577 (t!378602 s!2326)))))

(assert (= (and d!1989505 (not res!2608455)) b!6338391))

(assert (=> d!1989505 m!7146086))

(assert (=> d!1989505 m!7146040))

(assert (=> b!6338391 m!7146090))

(assert (=> d!1989133 d!1989505))

(assert (=> bs!1586743 d!1989033))

(declare-fun d!1989507 () Bool)

(assert (=> d!1989507 (= (isEmpty!36969 (exprs!6123 (h!71341 zl!343))) ((_ is Nil!64892) (exprs!6123 (h!71341 zl!343))))))

(assert (=> b!6337457 d!1989507))

(declare-fun bs!1587003 () Bool)

(declare-fun d!1989509 () Bool)

(assert (= bs!1587003 (and d!1989509 d!1989111)))

(declare-fun lambda!348101 () Int)

(assert (=> bs!1587003 (= lambda!348101 lambda!348027)))

(declare-fun bs!1587004 () Bool)

(assert (= bs!1587004 (and d!1989509 b!6337917)))

(assert (=> bs!1587004 (not (= lambda!348101 lambda!348073))))

(declare-fun bs!1587005 () Bool)

(assert (= bs!1587005 (and d!1989509 d!1989145)))

(assert (=> bs!1587005 (= lambda!348101 lambda!348044)))

(declare-fun bs!1587006 () Bool)

(assert (= bs!1587006 (and d!1989509 d!1989191)))

(assert (=> bs!1587006 (= lambda!348101 lambda!348051)))

(declare-fun bs!1587007 () Bool)

(assert (= bs!1587007 (and d!1989509 d!1989029)))

(assert (=> bs!1587007 (= lambda!348101 lambda!348004)))

(declare-fun bs!1587008 () Bool)

(assert (= bs!1587008 (and d!1989509 d!1989161)))

(assert (=> bs!1587008 (= lambda!348101 lambda!348049)))

(declare-fun bs!1587009 () Bool)

(assert (= bs!1587009 (and d!1989509 b!6337919)))

(assert (=> bs!1587009 (not (= lambda!348101 lambda!348074))))

(declare-fun bs!1587010 () Bool)

(assert (= bs!1587010 (and d!1989509 d!1989185)))

(assert (=> bs!1587010 (= lambda!348101 lambda!348050)))

(declare-fun bs!1587011 () Bool)

(assert (= bs!1587011 (and d!1989509 d!1989159)))

(assert (=> bs!1587011 (= lambda!348101 lambda!348048)))

(declare-fun bs!1587012 () Bool)

(assert (= bs!1587012 (and d!1989509 d!1989433)))

(assert (=> bs!1587012 (= lambda!348101 lambda!348093)))

(declare-fun bs!1587013 () Bool)

(assert (= bs!1587013 (and d!1989509 d!1989147)))

(assert (=> bs!1587013 (= lambda!348101 lambda!348047)))

(declare-fun bs!1587014 () Bool)

(assert (= bs!1587014 (and d!1989509 d!1988975)))

(assert (=> bs!1587014 (= lambda!348101 lambda!347980)))

(declare-fun bs!1587015 () Bool)

(assert (= bs!1587015 (and d!1989509 d!1989143)))

(assert (=> bs!1587015 (= lambda!348101 lambda!348041)))

(assert (=> d!1989509 (= (inv!83844 (h!71341 (t!378601 zl!343))) (forall!15393 (exprs!6123 (h!71341 (t!378601 zl!343))) lambda!348101))))

(declare-fun bs!1587016 () Bool)

(assert (= bs!1587016 d!1989509))

(declare-fun m!7147502 () Bool)

(assert (=> bs!1587016 m!7147502))

(assert (=> b!6337658 d!1989509))

(declare-fun d!1989511 () Bool)

(declare-fun res!2608456 () Bool)

(declare-fun e!3850170 () Bool)

(assert (=> d!1989511 (=> res!2608456 e!3850170)))

(assert (=> d!1989511 (= res!2608456 ((_ is Nil!64893) lt!2361609))))

(assert (=> d!1989511 (= (noDuplicate!2070 lt!2361609) e!3850170)))

(declare-fun b!6338392 () Bool)

(declare-fun e!3850171 () Bool)

(assert (=> b!6338392 (= e!3850170 e!3850171)))

(declare-fun res!2608457 () Bool)

(assert (=> b!6338392 (=> (not res!2608457) (not e!3850171))))

(assert (=> b!6338392 (= res!2608457 (not (contains!20149 (t!378601 lt!2361609) (h!71341 lt!2361609))))))

(declare-fun b!6338393 () Bool)

(assert (=> b!6338393 (= e!3850171 (noDuplicate!2070 (t!378601 lt!2361609)))))

(assert (= (and d!1989511 (not res!2608456)) b!6338392))

(assert (= (and b!6338392 res!2608457) b!6338393))

(declare-fun m!7147504 () Bool)

(assert (=> b!6338392 m!7147504))

(declare-fun m!7147506 () Bool)

(assert (=> b!6338393 m!7147506))

(assert (=> d!1988983 d!1989511))

(declare-fun d!1989513 () Bool)

(declare-fun e!3850172 () Bool)

(assert (=> d!1989513 e!3850172))

(declare-fun res!2608458 () Bool)

(assert (=> d!1989513 (=> (not res!2608458) (not e!3850172))))

(declare-fun res!2608459 () List!65017)

(assert (=> d!1989513 (= res!2608458 (noDuplicate!2070 res!2608459))))

(declare-fun e!3850174 () Bool)

(assert (=> d!1989513 e!3850174))

(assert (=> d!1989513 (= (choose!46973 lt!2361573) res!2608459)))

(declare-fun b!6338395 () Bool)

(declare-fun e!3850173 () Bool)

(declare-fun tp!1767703 () Bool)

(assert (=> b!6338395 (= e!3850173 tp!1767703)))

(declare-fun b!6338394 () Bool)

(declare-fun tp!1767704 () Bool)

(assert (=> b!6338394 (= e!3850174 (and (inv!83844 (h!71341 res!2608459)) e!3850173 tp!1767704))))

(declare-fun b!6338396 () Bool)

(assert (=> b!6338396 (= e!3850172 (= (content!12235 res!2608459) lt!2361573))))

(assert (= b!6338394 b!6338395))

(assert (= (and d!1989513 ((_ is Cons!64893) res!2608459)) b!6338394))

(assert (= (and d!1989513 res!2608458) b!6338396))

(declare-fun m!7147508 () Bool)

(assert (=> d!1989513 m!7147508))

(declare-fun m!7147510 () Bool)

(assert (=> b!6338394 m!7147510))

(declare-fun m!7147512 () Bool)

(assert (=> b!6338396 m!7147512))

(assert (=> d!1988983 d!1989513))

(declare-fun b!6338397 () Bool)

(declare-fun res!2608461 () Bool)

(declare-fun e!3850180 () Bool)

(assert (=> b!6338397 (=> (not res!2608461) (not e!3850180))))

(declare-fun call!540110 () Bool)

(assert (=> b!6338397 (= res!2608461 call!540110)))

(declare-fun e!3850179 () Bool)

(assert (=> b!6338397 (= e!3850179 e!3850180)))

(declare-fun bm!540104 () Bool)

(declare-fun call!540111 () Bool)

(declare-fun c!1152292 () Bool)

(declare-fun c!1152293 () Bool)

(assert (=> bm!540104 (= call!540111 (validRegex!7975 (ite c!1152293 (reg!16568 lt!2361603) (ite c!1152292 (regOne!32991 lt!2361603) (regOne!32990 lt!2361603)))))))

(declare-fun b!6338398 () Bool)

(declare-fun e!3850176 () Bool)

(declare-fun e!3850178 () Bool)

(assert (=> b!6338398 (= e!3850176 e!3850178)))

(declare-fun res!2608460 () Bool)

(assert (=> b!6338398 (=> (not res!2608460) (not e!3850178))))

(assert (=> b!6338398 (= res!2608460 call!540110)))

(declare-fun b!6338399 () Bool)

(declare-fun e!3850181 () Bool)

(assert (=> b!6338399 (= e!3850181 call!540111)))

(declare-fun bm!540105 () Bool)

(assert (=> bm!540105 (= call!540110 call!540111)))

(declare-fun b!6338400 () Bool)

(declare-fun call!540109 () Bool)

(assert (=> b!6338400 (= e!3850180 call!540109)))

(declare-fun b!6338401 () Bool)

(declare-fun e!3850177 () Bool)

(assert (=> b!6338401 (= e!3850177 e!3850181)))

(declare-fun res!2608464 () Bool)

(assert (=> b!6338401 (= res!2608464 (not (nullable!6232 (reg!16568 lt!2361603))))))

(assert (=> b!6338401 (=> (not res!2608464) (not e!3850181))))

(declare-fun bm!540106 () Bool)

(assert (=> bm!540106 (= call!540109 (validRegex!7975 (ite c!1152292 (regTwo!32991 lt!2361603) (regTwo!32990 lt!2361603))))))

(declare-fun b!6338402 () Bool)

(declare-fun e!3850175 () Bool)

(assert (=> b!6338402 (= e!3850175 e!3850177)))

(assert (=> b!6338402 (= c!1152293 ((_ is Star!16239) lt!2361603))))

(declare-fun d!1989515 () Bool)

(declare-fun res!2608463 () Bool)

(assert (=> d!1989515 (=> res!2608463 e!3850175)))

(assert (=> d!1989515 (= res!2608463 ((_ is ElementMatch!16239) lt!2361603))))

(assert (=> d!1989515 (= (validRegex!7975 lt!2361603) e!3850175)))

(declare-fun b!6338403 () Bool)

(assert (=> b!6338403 (= e!3850178 call!540109)))

(declare-fun b!6338404 () Bool)

(declare-fun res!2608462 () Bool)

(assert (=> b!6338404 (=> res!2608462 e!3850176)))

(assert (=> b!6338404 (= res!2608462 (not ((_ is Concat!25084) lt!2361603)))))

(assert (=> b!6338404 (= e!3850179 e!3850176)))

(declare-fun b!6338405 () Bool)

(assert (=> b!6338405 (= e!3850177 e!3850179)))

(assert (=> b!6338405 (= c!1152292 ((_ is Union!16239) lt!2361603))))

(assert (= (and d!1989515 (not res!2608463)) b!6338402))

(assert (= (and b!6338402 c!1152293) b!6338401))

(assert (= (and b!6338402 (not c!1152293)) b!6338405))

(assert (= (and b!6338401 res!2608464) b!6338399))

(assert (= (and b!6338405 c!1152292) b!6338397))

(assert (= (and b!6338405 (not c!1152292)) b!6338404))

(assert (= (and b!6338397 res!2608461) b!6338400))

(assert (= (and b!6338404 (not res!2608462)) b!6338398))

(assert (= (and b!6338398 res!2608460) b!6338403))

(assert (= (or b!6338400 b!6338403) bm!540106))

(assert (= (or b!6338397 b!6338398) bm!540105))

(assert (= (or b!6338399 bm!540105) bm!540104))

(declare-fun m!7147514 () Bool)

(assert (=> bm!540104 m!7147514))

(declare-fun m!7147516 () Bool)

(assert (=> b!6338401 m!7147516))

(declare-fun m!7147518 () Bool)

(assert (=> bm!540106 m!7147518))

(assert (=> d!1988975 d!1989515))

(declare-fun d!1989517 () Bool)

(declare-fun res!2608465 () Bool)

(declare-fun e!3850182 () Bool)

(assert (=> d!1989517 (=> res!2608465 e!3850182)))

(assert (=> d!1989517 (= res!2608465 ((_ is Nil!64892) lt!2361557))))

(assert (=> d!1989517 (= (forall!15393 lt!2361557 lambda!347980) e!3850182)))

(declare-fun b!6338406 () Bool)

(declare-fun e!3850183 () Bool)

(assert (=> b!6338406 (= e!3850182 e!3850183)))

(declare-fun res!2608466 () Bool)

(assert (=> b!6338406 (=> (not res!2608466) (not e!3850183))))

(assert (=> b!6338406 (= res!2608466 (dynLambda!25716 lambda!347980 (h!71340 lt!2361557)))))

(declare-fun b!6338407 () Bool)

(assert (=> b!6338407 (= e!3850183 (forall!15393 (t!378600 lt!2361557) lambda!347980))))

(assert (= (and d!1989517 (not res!2608465)) b!6338406))

(assert (= (and b!6338406 res!2608466) b!6338407))

(declare-fun b_lambda!241209 () Bool)

(assert (=> (not b_lambda!241209) (not b!6338406)))

(declare-fun m!7147520 () Bool)

(assert (=> b!6338406 m!7147520))

(declare-fun m!7147522 () Bool)

(assert (=> b!6338407 m!7147522))

(assert (=> d!1988975 d!1989517))

(declare-fun d!1989519 () Bool)

(assert (=> d!1989519 (= (nullable!6232 (reg!16568 lt!2361556)) (nullableFct!2181 (reg!16568 lt!2361556)))))

(declare-fun bs!1587017 () Bool)

(assert (= bs!1587017 d!1989519))

(declare-fun m!7147524 () Bool)

(assert (=> bs!1587017 m!7147524))

(assert (=> b!6337020 d!1989519))

(declare-fun b!6338408 () Bool)

(declare-fun e!3850186 () Bool)

(declare-fun e!3850189 () Bool)

(assert (=> b!6338408 (= e!3850186 e!3850189)))

(declare-fun res!2608468 () Bool)

(assert (=> b!6338408 (=> (not res!2608468) (not e!3850189))))

(assert (=> b!6338408 (= res!2608468 (and (not ((_ is EmptyLang!16239) (regOne!32990 (regOne!32990 r!7292)))) (not ((_ is ElementMatch!16239) (regOne!32990 (regOne!32990 r!7292))))))))

(declare-fun b!6338409 () Bool)

(declare-fun e!3850187 () Bool)

(declare-fun e!3850188 () Bool)

(assert (=> b!6338409 (= e!3850187 e!3850188)))

(declare-fun res!2608469 () Bool)

(declare-fun call!540113 () Bool)

(assert (=> b!6338409 (= res!2608469 call!540113)))

(assert (=> b!6338409 (=> (not res!2608469) (not e!3850188))))

(declare-fun b!6338410 () Bool)

(declare-fun e!3850184 () Bool)

(assert (=> b!6338410 (= e!3850189 e!3850184)))

(declare-fun res!2608467 () Bool)

(assert (=> b!6338410 (=> res!2608467 e!3850184)))

(assert (=> b!6338410 (= res!2608467 ((_ is Star!16239) (regOne!32990 (regOne!32990 r!7292))))))

(declare-fun b!6338411 () Bool)

(declare-fun e!3850185 () Bool)

(assert (=> b!6338411 (= e!3850187 e!3850185)))

(declare-fun res!2608470 () Bool)

(assert (=> b!6338411 (= res!2608470 call!540113)))

(assert (=> b!6338411 (=> res!2608470 e!3850185)))

(declare-fun bm!540107 () Bool)

(declare-fun c!1152294 () Bool)

(assert (=> bm!540107 (= call!540113 (nullable!6232 (ite c!1152294 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 (regOne!32990 r!7292))))))))

(declare-fun bm!540108 () Bool)

(declare-fun call!540112 () Bool)

(assert (=> bm!540108 (= call!540112 (nullable!6232 (ite c!1152294 (regTwo!32991 (regOne!32990 (regOne!32990 r!7292))) (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))))))))

(declare-fun b!6338413 () Bool)

(assert (=> b!6338413 (= e!3850185 call!540112)))

(declare-fun b!6338414 () Bool)

(assert (=> b!6338414 (= e!3850184 e!3850187)))

(assert (=> b!6338414 (= c!1152294 ((_ is Union!16239) (regOne!32990 (regOne!32990 r!7292))))))

(declare-fun d!1989521 () Bool)

(declare-fun res!2608471 () Bool)

(assert (=> d!1989521 (=> res!2608471 e!3850186)))

(assert (=> d!1989521 (= res!2608471 ((_ is EmptyExpr!16239) (regOne!32990 (regOne!32990 r!7292))))))

(assert (=> d!1989521 (= (nullableFct!2181 (regOne!32990 (regOne!32990 r!7292))) e!3850186)))

(declare-fun b!6338412 () Bool)

(assert (=> b!6338412 (= e!3850188 call!540112)))

(assert (= (and d!1989521 (not res!2608471)) b!6338408))

(assert (= (and b!6338408 res!2608468) b!6338410))

(assert (= (and b!6338410 (not res!2608467)) b!6338414))

(assert (= (and b!6338414 c!1152294) b!6338411))

(assert (= (and b!6338414 (not c!1152294)) b!6338409))

(assert (= (and b!6338411 (not res!2608470)) b!6338413))

(assert (= (and b!6338409 res!2608469) b!6338412))

(assert (= (or b!6338413 b!6338412) bm!540108))

(assert (= (or b!6338411 b!6338409) bm!540107))

(declare-fun m!7147526 () Bool)

(assert (=> bm!540107 m!7147526))

(declare-fun m!7147528 () Bool)

(assert (=> bm!540108 m!7147528))

(assert (=> d!1989103 d!1989521))

(declare-fun d!1989523 () Bool)

(declare-fun c!1152300 () Bool)

(assert (=> d!1989523 (= c!1152300 (isEmpty!36973 (tail!12060 (t!378602 s!2326))))))

(declare-fun e!3850195 () Bool)

(assert (=> d!1989523 (= (matchZipper!2251 (derivationStepZipper!2205 lt!2361566 (head!12975 (t!378602 s!2326))) (tail!12060 (t!378602 s!2326))) e!3850195)))

(declare-fun b!6338425 () Bool)

(assert (=> b!6338425 (= e!3850195 (nullableZipper!2007 (derivationStepZipper!2205 lt!2361566 (head!12975 (t!378602 s!2326)))))))

(declare-fun b!6338426 () Bool)

(assert (=> b!6338426 (= e!3850195 (matchZipper!2251 (derivationStepZipper!2205 (derivationStepZipper!2205 lt!2361566 (head!12975 (t!378602 s!2326))) (head!12975 (tail!12060 (t!378602 s!2326)))) (tail!12060 (tail!12060 (t!378602 s!2326)))))))

(assert (= (and d!1989523 c!1152300) b!6338425))

(assert (= (and d!1989523 (not c!1152300)) b!6338426))

(assert (=> d!1989523 m!7146446))

(assert (=> d!1989523 m!7147036))

(assert (=> b!6338425 m!7146590))

(declare-fun m!7147530 () Bool)

(assert (=> b!6338425 m!7147530))

(assert (=> b!6338426 m!7146446))

(assert (=> b!6338426 m!7147040))

(assert (=> b!6338426 m!7146590))

(assert (=> b!6338426 m!7147040))

(declare-fun m!7147532 () Bool)

(assert (=> b!6338426 m!7147532))

(assert (=> b!6338426 m!7146446))

(assert (=> b!6338426 m!7147044))

(assert (=> b!6338426 m!7147532))

(assert (=> b!6338426 m!7147044))

(declare-fun m!7147534 () Bool)

(assert (=> b!6338426 m!7147534))

(assert (=> b!6337437 d!1989523))

(declare-fun bs!1587018 () Bool)

(declare-fun d!1989525 () Bool)

(assert (= bs!1587018 (and d!1989525 d!1989291)))

(declare-fun lambda!348102 () Int)

(assert (=> bs!1587018 (= lambda!348102 lambda!348075)))

(declare-fun bs!1587019 () Bool)

(assert (= bs!1587019 (and d!1989525 d!1989037)))

(assert (=> bs!1587019 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348102 lambda!348007))))

(declare-fun bs!1587020 () Bool)

(assert (= bs!1587020 (and d!1989525 d!1989319)))

(assert (=> bs!1587020 (= lambda!348102 lambda!348079)))

(declare-fun bs!1587021 () Bool)

(assert (= bs!1587021 (and d!1989525 d!1989469)))

(assert (=> bs!1587021 (= lambda!348102 lambda!348097)))

(declare-fun bs!1587022 () Bool)

(assert (= bs!1587022 (and d!1989525 d!1989495)))

(assert (=> bs!1587022 (= lambda!348102 lambda!348100)))

(declare-fun bs!1587023 () Bool)

(assert (= bs!1587023 (and d!1989525 b!6336821)))

(assert (=> bs!1587023 (= (= (head!12975 (t!378602 s!2326)) (h!71342 s!2326)) (= lambda!348102 lambda!347959))))

(assert (=> d!1989525 true))

(assert (=> d!1989525 (= (derivationStepZipper!2205 lt!2361566 (head!12975 (t!378602 s!2326))) (flatMap!1744 lt!2361566 lambda!348102))))

(declare-fun bs!1587024 () Bool)

(assert (= bs!1587024 d!1989525))

(declare-fun m!7147542 () Bool)

(assert (=> bs!1587024 m!7147542))

(assert (=> b!6337437 d!1989525))

(assert (=> b!6337437 d!1989295))

(assert (=> b!6337437 d!1989297))

(declare-fun b!6338427 () Bool)

(declare-fun e!3850197 () Bool)

(assert (=> b!6338427 (= e!3850197 (nullable!6232 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343))))))))))

(declare-fun b!6338428 () Bool)

(declare-fun e!3850196 () (InoxSet Context!11246))

(declare-fun call!540118 () (InoxSet Context!11246))

(assert (=> b!6338428 (= e!3850196 call!540118)))

(declare-fun b!6338429 () Bool)

(assert (=> b!6338429 (= e!3850196 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338430 () Bool)

(declare-fun e!3850198 () (InoxSet Context!11246))

(assert (=> b!6338430 (= e!3850198 e!3850196)))

(declare-fun c!1152301 () Bool)

(assert (=> b!6338430 (= c!1152301 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun d!1989529 () Bool)

(declare-fun c!1152302 () Bool)

(assert (=> d!1989529 (= c!1152302 e!3850197)))

(declare-fun res!2608472 () Bool)

(assert (=> d!1989529 (=> (not res!2608472) (not e!3850197))))

(assert (=> d!1989529 (= res!2608472 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))))))))

(assert (=> d!1989529 (= (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))) (h!71342 s!2326)) e!3850198)))

(declare-fun bm!540113 () Bool)

(assert (=> bm!540113 (= call!540118 (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))))) (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343))))))) (h!71342 s!2326)))))

(declare-fun b!6338431 () Bool)

(assert (=> b!6338431 (= e!3850198 ((_ map or) call!540118 (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343))))))) (h!71342 s!2326))))))

(assert (= (and d!1989529 res!2608472) b!6338427))

(assert (= (and d!1989529 c!1152302) b!6338431))

(assert (= (and d!1989529 (not c!1152302)) b!6338430))

(assert (= (and b!6338430 c!1152301) b!6338428))

(assert (= (and b!6338430 (not c!1152301)) b!6338429))

(assert (= (or b!6338431 b!6338428) bm!540113))

(declare-fun m!7147544 () Bool)

(assert (=> b!6338427 m!7147544))

(declare-fun m!7147546 () Bool)

(assert (=> bm!540113 m!7147546))

(declare-fun m!7147548 () Bool)

(assert (=> b!6338431 m!7147548))

(assert (=> b!6337217 d!1989529))

(declare-fun d!1989535 () Bool)

(declare-fun lt!2361779 () Int)

(assert (=> d!1989535 (> lt!2361779 0)))

(declare-fun e!3850228 () Int)

(assert (=> d!1989535 (= lt!2361779 e!3850228)))

(declare-fun c!1152323 () Bool)

(assert (=> d!1989535 (= c!1152323 ((_ is ElementMatch!16239) (h!71340 (exprs!6123 lt!2361567))))))

(assert (=> d!1989535 (= (regexDepthTotal!199 (h!71340 (exprs!6123 lt!2361567))) lt!2361779)))

(declare-fun b!6338484 () Bool)

(declare-fun e!3850229 () Int)

(declare-fun call!540134 () Int)

(assert (=> b!6338484 (= e!3850229 (+ 1 call!540134))))

(declare-fun b!6338485 () Bool)

(assert (=> b!6338485 (= e!3850228 e!3850229)))

(declare-fun c!1152326 () Bool)

(assert (=> b!6338485 (= c!1152326 ((_ is Star!16239) (h!71340 (exprs!6123 lt!2361567))))))

(declare-fun b!6338486 () Bool)

(declare-fun e!3850227 () Int)

(declare-fun call!540135 () Int)

(declare-fun call!540136 () Int)

(assert (=> b!6338486 (= e!3850227 (+ 1 call!540135 call!540136))))

(declare-fun b!6338487 () Bool)

(declare-fun e!3850230 () Int)

(assert (=> b!6338487 (= e!3850227 e!3850230)))

(declare-fun c!1152324 () Bool)

(assert (=> b!6338487 (= c!1152324 ((_ is Concat!25084) (h!71340 (exprs!6123 lt!2361567))))))

(declare-fun b!6338488 () Bool)

(declare-fun c!1152325 () Bool)

(assert (=> b!6338488 (= c!1152325 ((_ is Union!16239) (h!71340 (exprs!6123 lt!2361567))))))

(assert (=> b!6338488 (= e!3850229 e!3850227)))

(declare-fun b!6338489 () Bool)

(assert (=> b!6338489 (= e!3850228 1)))

(declare-fun bm!540129 () Bool)

(assert (=> bm!540129 (= call!540135 (regexDepthTotal!199 (ite c!1152325 (regOne!32991 (h!71340 (exprs!6123 lt!2361567))) (regOne!32990 (h!71340 (exprs!6123 lt!2361567))))))))

(declare-fun bm!540130 () Bool)

(assert (=> bm!540130 (= call!540134 (regexDepthTotal!199 (ite c!1152326 (reg!16568 (h!71340 (exprs!6123 lt!2361567))) (ite c!1152325 (regTwo!32991 (h!71340 (exprs!6123 lt!2361567))) (regTwo!32990 (h!71340 (exprs!6123 lt!2361567)))))))))

(declare-fun b!6338490 () Bool)

(assert (=> b!6338490 (= e!3850230 1)))

(declare-fun bm!540131 () Bool)

(assert (=> bm!540131 (= call!540136 call!540134)))

(declare-fun b!6338491 () Bool)

(assert (=> b!6338491 (= e!3850230 (+ 1 call!540135 call!540136))))

(assert (= (and d!1989535 c!1152323) b!6338489))

(assert (= (and d!1989535 (not c!1152323)) b!6338485))

(assert (= (and b!6338485 c!1152326) b!6338484))

(assert (= (and b!6338485 (not c!1152326)) b!6338488))

(assert (= (and b!6338488 c!1152325) b!6338486))

(assert (= (and b!6338488 (not c!1152325)) b!6338487))

(assert (= (and b!6338487 c!1152324) b!6338491))

(assert (= (and b!6338487 (not c!1152324)) b!6338490))

(assert (= (or b!6338486 b!6338491) bm!540131))

(assert (= (or b!6338486 b!6338491) bm!540129))

(assert (= (or b!6338484 bm!540131) bm!540130))

(declare-fun m!7147564 () Bool)

(assert (=> bm!540129 m!7147564))

(declare-fun m!7147566 () Bool)

(assert (=> bm!540130 m!7147566))

(assert (=> b!6337594 d!1989535))

(declare-fun d!1989545 () Bool)

(declare-fun lt!2361780 () Int)

(assert (=> d!1989545 (>= lt!2361780 0)))

(declare-fun e!3850231 () Int)

(assert (=> d!1989545 (= lt!2361780 e!3850231)))

(declare-fun c!1152327 () Bool)

(assert (=> d!1989545 (= c!1152327 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567))))))))

(assert (=> d!1989545 (= (contextDepthTotal!348 (Context!11247 (t!378600 (exprs!6123 lt!2361567)))) lt!2361780)))

(declare-fun b!6338492 () Bool)

(assert (=> b!6338492 (= e!3850231 (+ (regexDepthTotal!199 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567)))))) (contextDepthTotal!348 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 lt!2361567)))))))))))

(declare-fun b!6338493 () Bool)

(assert (=> b!6338493 (= e!3850231 1)))

(assert (= (and d!1989545 c!1152327) b!6338492))

(assert (= (and d!1989545 (not c!1152327)) b!6338493))

(declare-fun m!7147568 () Bool)

(assert (=> b!6338492 m!7147568))

(declare-fun m!7147570 () Bool)

(assert (=> b!6338492 m!7147570))

(assert (=> b!6337594 d!1989545))

(declare-fun b!6338494 () Bool)

(declare-fun e!3850237 () (InoxSet Context!11246))

(declare-fun e!3850234 () (InoxSet Context!11246))

(assert (=> b!6338494 (= e!3850237 e!3850234)))

(declare-fun c!1152330 () Bool)

(assert (=> b!6338494 (= c!1152330 ((_ is Concat!25084) (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun b!6338495 () Bool)

(declare-fun e!3850236 () (InoxSet Context!11246))

(assert (=> b!6338495 (= e!3850236 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338496 () Bool)

(declare-fun call!540142 () (InoxSet Context!11246))

(declare-fun call!540141 () (InoxSet Context!11246))

(assert (=> b!6338496 (= e!3850237 ((_ map or) call!540142 call!540141))))

(declare-fun b!6338497 () Bool)

(declare-fun e!3850235 () Bool)

(assert (=> b!6338497 (= e!3850235 (nullable!6232 (regOne!32990 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))))))))

(declare-fun bm!540133 () Bool)

(declare-fun call!540140 () (InoxSet Context!11246))

(assert (=> bm!540133 (= call!540141 call!540140)))

(declare-fun c!1152331 () Bool)

(declare-fun call!540139 () List!65016)

(declare-fun bm!540134 () Bool)

(assert (=> bm!540134 (= call!540142 (derivationStepZipperDown!1487 (ite c!1152331 (regTwo!32991 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))) (regOne!32990 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))))) (ite c!1152331 (ite c!1151968 lt!2361578 (Context!11247 call!539931)) (Context!11247 call!540139)) (h!71342 s!2326)))))

(declare-fun b!6338498 () Bool)

(declare-fun call!540138 () (InoxSet Context!11246))

(assert (=> b!6338498 (= e!3850234 call!540138)))

(declare-fun bm!540135 () Bool)

(declare-fun c!1152328 () Bool)

(assert (=> bm!540135 (= call!540139 ($colon$colon!2102 (exprs!6123 (ite c!1151968 lt!2361578 (Context!11247 call!539931))) (ite (or c!1152328 c!1152330) (regTwo!32990 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))) (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))))))))

(declare-fun d!1989547 () Bool)

(declare-fun c!1152329 () Bool)

(assert (=> d!1989547 (= c!1152329 (and ((_ is ElementMatch!16239) (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))) (= (c!1151834 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))) (h!71342 s!2326))))))

(declare-fun e!3850233 () (InoxSet Context!11246))

(assert (=> d!1989547 (= (derivationStepZipperDown!1487 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))) (ite c!1151968 lt!2361578 (Context!11247 call!539931)) (h!71342 s!2326)) e!3850233)))

(declare-fun bm!540132 () Bool)

(declare-fun call!540137 () List!65016)

(assert (=> bm!540132 (= call!540140 (derivationStepZipperDown!1487 (ite c!1152331 (regOne!32991 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))) (ite c!1152328 (regTwo!32990 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))) (ite c!1152330 (regOne!32990 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))) (reg!16568 (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))))))) (ite (or c!1152331 c!1152328) (ite c!1151968 lt!2361578 (Context!11247 call!539931)) (Context!11247 call!540137)) (h!71342 s!2326)))))

(declare-fun bm!540136 () Bool)

(assert (=> bm!540136 (= call!540137 call!540139)))

(declare-fun b!6338499 () Bool)

(assert (=> b!6338499 (= e!3850233 (store ((as const (Array Context!11246 Bool)) false) (ite c!1151968 lt!2361578 (Context!11247 call!539931)) true))))

(declare-fun b!6338500 () Bool)

(declare-fun e!3850232 () (InoxSet Context!11246))

(assert (=> b!6338500 (= e!3850232 ((_ map or) call!540140 call!540142))))

(declare-fun b!6338501 () Bool)

(assert (=> b!6338501 (= e!3850236 call!540138)))

(declare-fun b!6338502 () Bool)

(assert (=> b!6338502 (= c!1152328 e!3850235)))

(declare-fun res!2608485 () Bool)

(assert (=> b!6338502 (=> (not res!2608485) (not e!3850235))))

(assert (=> b!6338502 (= res!2608485 ((_ is Concat!25084) (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))

(assert (=> b!6338502 (= e!3850232 e!3850237)))

(declare-fun b!6338503 () Bool)

(assert (=> b!6338503 (= e!3850233 e!3850232)))

(assert (=> b!6338503 (= c!1152331 ((_ is Union!16239) (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun b!6338504 () Bool)

(declare-fun c!1152332 () Bool)

(assert (=> b!6338504 (= c!1152332 ((_ is Star!16239) (ite c!1151968 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))

(assert (=> b!6338504 (= e!3850234 e!3850236)))

(declare-fun bm!540137 () Bool)

(assert (=> bm!540137 (= call!540138 call!540141)))

(assert (= (and d!1989547 c!1152329) b!6338499))

(assert (= (and d!1989547 (not c!1152329)) b!6338503))

(assert (= (and b!6338503 c!1152331) b!6338500))

(assert (= (and b!6338503 (not c!1152331)) b!6338502))

(assert (= (and b!6338502 res!2608485) b!6338497))

(assert (= (and b!6338502 c!1152328) b!6338496))

(assert (= (and b!6338502 (not c!1152328)) b!6338494))

(assert (= (and b!6338494 c!1152330) b!6338498))

(assert (= (and b!6338494 (not c!1152330)) b!6338504))

(assert (= (and b!6338504 c!1152332) b!6338501))

(assert (= (and b!6338504 (not c!1152332)) b!6338495))

(assert (= (or b!6338498 b!6338501) bm!540136))

(assert (= (or b!6338498 b!6338501) bm!540137))

(assert (= (or b!6338496 bm!540136) bm!540135))

(assert (= (or b!6338496 bm!540137) bm!540133))

(assert (= (or b!6338500 b!6338496) bm!540134))

(assert (= (or b!6338500 bm!540133) bm!540132))

(declare-fun m!7147578 () Bool)

(assert (=> bm!540132 m!7147578))

(declare-fun m!7147580 () Bool)

(assert (=> bm!540134 m!7147580))

(declare-fun m!7147582 () Bool)

(assert (=> bm!540135 m!7147582))

(declare-fun m!7147584 () Bool)

(assert (=> b!6338499 m!7147584))

(declare-fun m!7147586 () Bool)

(assert (=> b!6338497 m!7147586))

(assert (=> bm!539926 d!1989547))

(declare-fun d!1989551 () Bool)

(assert (=> d!1989551 (= (isEmptyExpr!1642 lt!2361685) ((_ is EmptyExpr!16239) lt!2361685))))

(assert (=> b!6337465 d!1989551))

(declare-fun b!6338505 () Bool)

(declare-fun e!3850240 () Bool)

(declare-fun lt!2361781 () Bool)

(declare-fun call!540143 () Bool)

(assert (=> b!6338505 (= e!3850240 (= lt!2361781 call!540143))))

(declare-fun bm!540138 () Bool)

(assert (=> bm!540138 (= call!540143 (isEmpty!36973 (tail!12060 s!2326)))))

(declare-fun b!6338506 () Bool)

(declare-fun e!3850244 () Bool)

(assert (=> b!6338506 (= e!3850240 e!3850244)))

(declare-fun c!1152333 () Bool)

(assert (=> b!6338506 (= c!1152333 ((_ is EmptyLang!16239) (derivativeStep!4946 r!7292 (head!12975 s!2326))))))

(declare-fun d!1989553 () Bool)

(assert (=> d!1989553 e!3850240))

(declare-fun c!1152334 () Bool)

(assert (=> d!1989553 (= c!1152334 ((_ is EmptyExpr!16239) (derivativeStep!4946 r!7292 (head!12975 s!2326))))))

(declare-fun e!3850241 () Bool)

(assert (=> d!1989553 (= lt!2361781 e!3850241)))

(declare-fun c!1152335 () Bool)

(assert (=> d!1989553 (= c!1152335 (isEmpty!36973 (tail!12060 s!2326)))))

(assert (=> d!1989553 (validRegex!7975 (derivativeStep!4946 r!7292 (head!12975 s!2326)))))

(assert (=> d!1989553 (= (matchR!8422 (derivativeStep!4946 r!7292 (head!12975 s!2326)) (tail!12060 s!2326)) lt!2361781)))

(declare-fun b!6338507 () Bool)

(assert (=> b!6338507 (= e!3850241 (nullable!6232 (derivativeStep!4946 r!7292 (head!12975 s!2326))))))

(declare-fun b!6338508 () Bool)

(declare-fun res!2608490 () Bool)

(declare-fun e!3850238 () Bool)

(assert (=> b!6338508 (=> res!2608490 e!3850238)))

(assert (=> b!6338508 (= res!2608490 (not ((_ is ElementMatch!16239) (derivativeStep!4946 r!7292 (head!12975 s!2326)))))))

(assert (=> b!6338508 (= e!3850244 e!3850238)))

(declare-fun b!6338509 () Bool)

(declare-fun res!2608488 () Bool)

(declare-fun e!3850239 () Bool)

(assert (=> b!6338509 (=> (not res!2608488) (not e!3850239))))

(assert (=> b!6338509 (= res!2608488 (isEmpty!36973 (tail!12060 (tail!12060 s!2326))))))

(declare-fun b!6338510 () Bool)

(assert (=> b!6338510 (= e!3850244 (not lt!2361781))))

(declare-fun b!6338511 () Bool)

(declare-fun res!2608492 () Bool)

(declare-fun e!3850243 () Bool)

(assert (=> b!6338511 (=> res!2608492 e!3850243)))

(assert (=> b!6338511 (= res!2608492 (not (isEmpty!36973 (tail!12060 (tail!12060 s!2326)))))))

(declare-fun b!6338512 () Bool)

(assert (=> b!6338512 (= e!3850243 (not (= (head!12975 (tail!12060 s!2326)) (c!1151834 (derivativeStep!4946 r!7292 (head!12975 s!2326))))))))

(declare-fun b!6338513 () Bool)

(declare-fun res!2608493 () Bool)

(assert (=> b!6338513 (=> res!2608493 e!3850238)))

(assert (=> b!6338513 (= res!2608493 e!3850239)))

(declare-fun res!2608487 () Bool)

(assert (=> b!6338513 (=> (not res!2608487) (not e!3850239))))

(assert (=> b!6338513 (= res!2608487 lt!2361781)))

(declare-fun b!6338514 () Bool)

(declare-fun e!3850242 () Bool)

(assert (=> b!6338514 (= e!3850242 e!3850243)))

(declare-fun res!2608486 () Bool)

(assert (=> b!6338514 (=> res!2608486 e!3850243)))

(assert (=> b!6338514 (= res!2608486 call!540143)))

(declare-fun b!6338515 () Bool)

(assert (=> b!6338515 (= e!3850238 e!3850242)))

(declare-fun res!2608489 () Bool)

(assert (=> b!6338515 (=> (not res!2608489) (not e!3850242))))

(assert (=> b!6338515 (= res!2608489 (not lt!2361781))))

(declare-fun b!6338516 () Bool)

(assert (=> b!6338516 (= e!3850241 (matchR!8422 (derivativeStep!4946 (derivativeStep!4946 r!7292 (head!12975 s!2326)) (head!12975 (tail!12060 s!2326))) (tail!12060 (tail!12060 s!2326))))))

(declare-fun b!6338517 () Bool)

(declare-fun res!2608491 () Bool)

(assert (=> b!6338517 (=> (not res!2608491) (not e!3850239))))

(assert (=> b!6338517 (= res!2608491 (not call!540143))))

(declare-fun b!6338518 () Bool)

(assert (=> b!6338518 (= e!3850239 (= (head!12975 (tail!12060 s!2326)) (c!1151834 (derivativeStep!4946 r!7292 (head!12975 s!2326)))))))

(assert (= (and d!1989553 c!1152335) b!6338507))

(assert (= (and d!1989553 (not c!1152335)) b!6338516))

(assert (= (and d!1989553 c!1152334) b!6338505))

(assert (= (and d!1989553 (not c!1152334)) b!6338506))

(assert (= (and b!6338506 c!1152333) b!6338510))

(assert (= (and b!6338506 (not c!1152333)) b!6338508))

(assert (= (and b!6338508 (not res!2608490)) b!6338513))

(assert (= (and b!6338513 res!2608487) b!6338517))

(assert (= (and b!6338517 res!2608491) b!6338509))

(assert (= (and b!6338509 res!2608488) b!6338518))

(assert (= (and b!6338513 (not res!2608493)) b!6338515))

(assert (= (and b!6338515 res!2608489) b!6338514))

(assert (= (and b!6338514 (not res!2608486)) b!6338511))

(assert (= (and b!6338511 (not res!2608492)) b!6338512))

(assert (= (or b!6338505 b!6338514 b!6338517) bm!540138))

(assert (=> b!6338512 m!7146542))

(declare-fun m!7147592 () Bool)

(assert (=> b!6338512 m!7147592))

(assert (=> b!6338518 m!7146542))

(assert (=> b!6338518 m!7147592))

(assert (=> d!1989553 m!7146542))

(assert (=> d!1989553 m!7146546))

(assert (=> d!1989553 m!7146540))

(declare-fun m!7147594 () Bool)

(assert (=> d!1989553 m!7147594))

(assert (=> b!6338507 m!7146540))

(declare-fun m!7147596 () Bool)

(assert (=> b!6338507 m!7147596))

(assert (=> bm!540138 m!7146542))

(assert (=> bm!540138 m!7146546))

(assert (=> b!6338516 m!7146542))

(assert (=> b!6338516 m!7147592))

(assert (=> b!6338516 m!7146540))

(assert (=> b!6338516 m!7147592))

(declare-fun m!7147598 () Bool)

(assert (=> b!6338516 m!7147598))

(assert (=> b!6338516 m!7146542))

(declare-fun m!7147600 () Bool)

(assert (=> b!6338516 m!7147600))

(assert (=> b!6338516 m!7147598))

(assert (=> b!6338516 m!7147600))

(declare-fun m!7147602 () Bool)

(assert (=> b!6338516 m!7147602))

(assert (=> b!6338509 m!7146542))

(assert (=> b!6338509 m!7147600))

(assert (=> b!6338509 m!7147600))

(declare-fun m!7147604 () Bool)

(assert (=> b!6338509 m!7147604))

(assert (=> b!6338511 m!7146542))

(assert (=> b!6338511 m!7147600))

(assert (=> b!6338511 m!7147600))

(assert (=> b!6338511 m!7147604))

(assert (=> b!6337405 d!1989553))

(declare-fun b!6338545 () Bool)

(declare-fun c!1152351 () Bool)

(assert (=> b!6338545 (= c!1152351 ((_ is Union!16239) r!7292))))

(declare-fun e!3850261 () Regex!16239)

(declare-fun e!3850262 () Regex!16239)

(assert (=> b!6338545 (= e!3850261 e!3850262)))

(declare-fun b!6338546 () Bool)

(declare-fun e!3850260 () Regex!16239)

(assert (=> b!6338546 (= e!3850260 EmptyLang!16239)))

(declare-fun bm!540147 () Bool)

(declare-fun call!540153 () Regex!16239)

(assert (=> bm!540147 (= call!540153 (derivativeStep!4946 (ite c!1152351 (regOne!32991 r!7292) (regOne!32990 r!7292)) (head!12975 s!2326)))))

(declare-fun b!6338547 () Bool)

(declare-fun call!540154 () Regex!16239)

(assert (=> b!6338547 (= e!3850262 (Union!16239 call!540153 call!540154))))

(declare-fun b!6338548 () Bool)

(declare-fun e!3850263 () Regex!16239)

(declare-fun call!540152 () Regex!16239)

(assert (=> b!6338548 (= e!3850263 (Union!16239 (Concat!25084 call!540152 (regTwo!32990 r!7292)) EmptyLang!16239))))

(declare-fun bm!540148 () Bool)

(declare-fun call!540155 () Regex!16239)

(assert (=> bm!540148 (= call!540155 call!540154)))

(declare-fun d!1989561 () Bool)

(declare-fun lt!2361792 () Regex!16239)

(assert (=> d!1989561 (validRegex!7975 lt!2361792)))

(assert (=> d!1989561 (= lt!2361792 e!3850260)))

(declare-fun c!1152349 () Bool)

(assert (=> d!1989561 (= c!1152349 (or ((_ is EmptyExpr!16239) r!7292) ((_ is EmptyLang!16239) r!7292)))))

(assert (=> d!1989561 (validRegex!7975 r!7292)))

(assert (=> d!1989561 (= (derivativeStep!4946 r!7292 (head!12975 s!2326)) lt!2361792)))

(declare-fun b!6338549 () Bool)

(assert (=> b!6338549 (= e!3850260 e!3850261)))

(declare-fun c!1152352 () Bool)

(assert (=> b!6338549 (= c!1152352 ((_ is ElementMatch!16239) r!7292))))

(declare-fun b!6338550 () Bool)

(assert (=> b!6338550 (= e!3850261 (ite (= (head!12975 s!2326) (c!1151834 r!7292)) EmptyExpr!16239 EmptyLang!16239))))

(declare-fun bm!540149 () Bool)

(assert (=> bm!540149 (= call!540152 call!540155)))

(declare-fun b!6338551 () Bool)

(declare-fun c!1152350 () Bool)

(assert (=> b!6338551 (= c!1152350 (nullable!6232 (regOne!32990 r!7292)))))

(declare-fun e!3850259 () Regex!16239)

(assert (=> b!6338551 (= e!3850259 e!3850263)))

(declare-fun bm!540150 () Bool)

(declare-fun c!1152353 () Bool)

(assert (=> bm!540150 (= call!540154 (derivativeStep!4946 (ite c!1152351 (regTwo!32991 r!7292) (ite c!1152353 (reg!16568 r!7292) (ite c!1152350 (regTwo!32990 r!7292) (regOne!32990 r!7292)))) (head!12975 s!2326)))))

(declare-fun b!6338552 () Bool)

(assert (=> b!6338552 (= e!3850263 (Union!16239 (Concat!25084 call!540153 (regTwo!32990 r!7292)) call!540152))))

(declare-fun b!6338553 () Bool)

(assert (=> b!6338553 (= e!3850259 (Concat!25084 call!540155 r!7292))))

(declare-fun b!6338554 () Bool)

(assert (=> b!6338554 (= e!3850262 e!3850259)))

(assert (=> b!6338554 (= c!1152353 ((_ is Star!16239) r!7292))))

(assert (= (and d!1989561 c!1152349) b!6338546))

(assert (= (and d!1989561 (not c!1152349)) b!6338549))

(assert (= (and b!6338549 c!1152352) b!6338550))

(assert (= (and b!6338549 (not c!1152352)) b!6338545))

(assert (= (and b!6338545 c!1152351) b!6338547))

(assert (= (and b!6338545 (not c!1152351)) b!6338554))

(assert (= (and b!6338554 c!1152353) b!6338553))

(assert (= (and b!6338554 (not c!1152353)) b!6338551))

(assert (= (and b!6338551 c!1152350) b!6338552))

(assert (= (and b!6338551 (not c!1152350)) b!6338548))

(assert (= (or b!6338552 b!6338548) bm!540149))

(assert (= (or b!6338553 bm!540149) bm!540148))

(assert (= (or b!6338547 bm!540148) bm!540150))

(assert (= (or b!6338547 b!6338552) bm!540147))

(assert (=> bm!540147 m!7146536))

(declare-fun m!7147606 () Bool)

(assert (=> bm!540147 m!7147606))

(declare-fun m!7147608 () Bool)

(assert (=> d!1989561 m!7147608))

(assert (=> d!1989561 m!7146134))

(assert (=> b!6338551 m!7147086))

(assert (=> bm!540150 m!7146536))

(declare-fun m!7147610 () Bool)

(assert (=> bm!540150 m!7147610))

(assert (=> b!6337405 d!1989561))

(assert (=> b!6337405 d!1989329))

(assert (=> b!6337405 d!1989345))

(declare-fun bs!1587053 () Bool)

(declare-fun d!1989563 () Bool)

(assert (= bs!1587053 (and d!1989563 d!1989111)))

(declare-fun lambda!348111 () Int)

(assert (=> bs!1587053 (= lambda!348111 lambda!348027)))

(declare-fun bs!1587055 () Bool)

(assert (= bs!1587055 (and d!1989563 b!6337917)))

(assert (=> bs!1587055 (not (= lambda!348111 lambda!348073))))

(declare-fun bs!1587058 () Bool)

(assert (= bs!1587058 (and d!1989563 d!1989145)))

(assert (=> bs!1587058 (= lambda!348111 lambda!348044)))

(declare-fun bs!1587060 () Bool)

(assert (= bs!1587060 (and d!1989563 d!1989191)))

(assert (=> bs!1587060 (= lambda!348111 lambda!348051)))

(declare-fun bs!1587062 () Bool)

(assert (= bs!1587062 (and d!1989563 d!1989029)))

(assert (=> bs!1587062 (= lambda!348111 lambda!348004)))

(declare-fun bs!1587064 () Bool)

(assert (= bs!1587064 (and d!1989563 d!1989161)))

(assert (=> bs!1587064 (= lambda!348111 lambda!348049)))

(declare-fun bs!1587065 () Bool)

(assert (= bs!1587065 (and d!1989563 b!6337919)))

(assert (=> bs!1587065 (not (= lambda!348111 lambda!348074))))

(declare-fun bs!1587066 () Bool)

(assert (= bs!1587066 (and d!1989563 d!1989185)))

(assert (=> bs!1587066 (= lambda!348111 lambda!348050)))

(declare-fun bs!1587067 () Bool)

(assert (= bs!1587067 (and d!1989563 d!1989159)))

(assert (=> bs!1587067 (= lambda!348111 lambda!348048)))

(declare-fun bs!1587068 () Bool)

(assert (= bs!1587068 (and d!1989563 d!1989433)))

(assert (=> bs!1587068 (= lambda!348111 lambda!348093)))

(declare-fun bs!1587070 () Bool)

(assert (= bs!1587070 (and d!1989563 d!1989509)))

(assert (=> bs!1587070 (= lambda!348111 lambda!348101)))

(declare-fun bs!1587072 () Bool)

(assert (= bs!1587072 (and d!1989563 d!1989147)))

(assert (=> bs!1587072 (= lambda!348111 lambda!348047)))

(declare-fun bs!1587074 () Bool)

(assert (= bs!1587074 (and d!1989563 d!1988975)))

(assert (=> bs!1587074 (= lambda!348111 lambda!347980)))

(declare-fun bs!1587076 () Bool)

(assert (= bs!1587076 (and d!1989563 d!1989143)))

(assert (=> bs!1587076 (= lambda!348111 lambda!348041)))

(declare-fun b!6338560 () Bool)

(declare-fun e!3850271 () Bool)

(declare-fun lt!2361797 () Regex!16239)

(assert (=> b!6338560 (= e!3850271 (= lt!2361797 (head!12973 (t!378600 (unfocusZipperList!1660 zl!343)))))))

(declare-fun b!6338561 () Bool)

(declare-fun e!3850269 () Bool)

(assert (=> b!6338561 (= e!3850269 (isEmpty!36969 (t!378600 (t!378600 (unfocusZipperList!1660 zl!343)))))))

(declare-fun b!6338562 () Bool)

(assert (=> b!6338562 (= e!3850271 (isUnion!1080 lt!2361797))))

(declare-fun b!6338563 () Bool)

(declare-fun e!3850268 () Regex!16239)

(assert (=> b!6338563 (= e!3850268 (h!71340 (t!378600 (unfocusZipperList!1660 zl!343))))))

(declare-fun b!6338564 () Bool)

(declare-fun e!3850266 () Bool)

(assert (=> b!6338564 (= e!3850266 (isEmptyLang!1650 lt!2361797))))

(declare-fun b!6338565 () Bool)

(declare-fun e!3850267 () Bool)

(assert (=> b!6338565 (= e!3850267 e!3850266)))

(declare-fun c!1152355 () Bool)

(assert (=> b!6338565 (= c!1152355 (isEmpty!36969 (t!378600 (unfocusZipperList!1660 zl!343))))))

(declare-fun b!6338566 () Bool)

(declare-fun e!3850270 () Regex!16239)

(assert (=> b!6338566 (= e!3850268 e!3850270)))

(declare-fun c!1152357 () Bool)

(assert (=> b!6338566 (= c!1152357 ((_ is Cons!64892) (t!378600 (unfocusZipperList!1660 zl!343))))))

(assert (=> d!1989563 e!3850267))

(declare-fun res!2608497 () Bool)

(assert (=> d!1989563 (=> (not res!2608497) (not e!3850267))))

(assert (=> d!1989563 (= res!2608497 (validRegex!7975 lt!2361797))))

(assert (=> d!1989563 (= lt!2361797 e!3850268)))

(declare-fun c!1152358 () Bool)

(assert (=> d!1989563 (= c!1152358 e!3850269)))

(declare-fun res!2608498 () Bool)

(assert (=> d!1989563 (=> (not res!2608498) (not e!3850269))))

(assert (=> d!1989563 (= res!2608498 ((_ is Cons!64892) (t!378600 (unfocusZipperList!1660 zl!343))))))

(assert (=> d!1989563 (forall!15393 (t!378600 (unfocusZipperList!1660 zl!343)) lambda!348111)))

(assert (=> d!1989563 (= (generalisedUnion!2083 (t!378600 (unfocusZipperList!1660 zl!343))) lt!2361797)))

(declare-fun b!6338567 () Bool)

(assert (=> b!6338567 (= e!3850270 EmptyLang!16239)))

(declare-fun b!6338568 () Bool)

(assert (=> b!6338568 (= e!3850266 e!3850271)))

(declare-fun c!1152356 () Bool)

(assert (=> b!6338568 (= c!1152356 (isEmpty!36969 (tail!12058 (t!378600 (unfocusZipperList!1660 zl!343)))))))

(declare-fun b!6338569 () Bool)

(assert (=> b!6338569 (= e!3850270 (Union!16239 (h!71340 (t!378600 (unfocusZipperList!1660 zl!343))) (generalisedUnion!2083 (t!378600 (t!378600 (unfocusZipperList!1660 zl!343))))))))

(assert (= (and d!1989563 res!2608498) b!6338561))

(assert (= (and d!1989563 c!1152358) b!6338563))

(assert (= (and d!1989563 (not c!1152358)) b!6338566))

(assert (= (and b!6338566 c!1152357) b!6338569))

(assert (= (and b!6338566 (not c!1152357)) b!6338567))

(assert (= (and d!1989563 res!2608497) b!6338565))

(assert (= (and b!6338565 c!1152355) b!6338564))

(assert (= (and b!6338565 (not c!1152355)) b!6338568))

(assert (= (and b!6338568 c!1152356) b!6338560))

(assert (= (and b!6338568 (not c!1152356)) b!6338562))

(declare-fun m!7147612 () Bool)

(assert (=> b!6338561 m!7147612))

(declare-fun m!7147614 () Bool)

(assert (=> b!6338569 m!7147614))

(declare-fun m!7147616 () Bool)

(assert (=> b!6338562 m!7147616))

(declare-fun m!7147618 () Bool)

(assert (=> b!6338560 m!7147618))

(declare-fun m!7147620 () Bool)

(assert (=> b!6338568 m!7147620))

(assert (=> b!6338568 m!7147620))

(declare-fun m!7147622 () Bool)

(assert (=> b!6338568 m!7147622))

(assert (=> b!6338565 m!7146712))

(declare-fun m!7147624 () Bool)

(assert (=> d!1989563 m!7147624))

(declare-fun m!7147626 () Bool)

(assert (=> d!1989563 m!7147626))

(declare-fun m!7147628 () Bool)

(assert (=> b!6338564 m!7147628))

(assert (=> b!6337627 d!1989563))

(declare-fun d!1989565 () Bool)

(assert (=> d!1989565 (= ($colon$colon!2102 (exprs!6123 (Context!11247 lt!2361564)) (ite (or c!1151986 c!1151988) (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 r!7292)))) (Cons!64892 (ite (or c!1151986 c!1151988) (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (regOne!32990 (regOne!32990 r!7292))) (exprs!6123 (Context!11247 lt!2361564))))))

(assert (=> bm!539939 d!1989565))

(assert (=> b!6337213 d!1988995))

(declare-fun bs!1587084 () Bool)

(declare-fun d!1989567 () Bool)

(assert (= bs!1587084 (and d!1989567 b!6337112)))

(declare-fun lambda!348113 () Int)

(assert (=> bs!1587084 (not (= lambda!348113 lambda!347990))))

(declare-fun bs!1587085 () Bool)

(assert (= bs!1587085 (and d!1989567 d!1989239)))

(assert (=> bs!1587085 (not (= lambda!348113 lambda!348064))))

(declare-fun bs!1587086 () Bool)

(assert (= bs!1587086 (and d!1989567 b!6337137)))

(assert (=> bs!1587086 (not (= lambda!348113 lambda!347993))))

(declare-fun bs!1587087 () Bool)

(assert (= bs!1587087 (and d!1989567 d!1989377)))

(assert (=> bs!1587087 (= lambda!348113 lambda!348085)))

(declare-fun bs!1587088 () Bool)

(assert (= bs!1587088 (and d!1989567 d!1989403)))

(assert (=> bs!1587088 (= lambda!348113 lambda!348086)))

(declare-fun bs!1587090 () Bool)

(assert (= bs!1587090 (and d!1989567 b!6337114)))

(assert (=> bs!1587090 (not (= lambda!348113 lambda!347991))))

(declare-fun bs!1587092 () Bool)

(assert (= bs!1587092 (and d!1989567 b!6337859)))

(assert (=> bs!1587092 (not (= lambda!348113 lambda!348060))))

(declare-fun bs!1587093 () Bool)

(assert (= bs!1587093 (and d!1989567 b!6337139)))

(assert (=> bs!1587093 (not (= lambda!348113 lambda!347994))))

(declare-fun bs!1587094 () Bool)

(assert (= bs!1587094 (and d!1989567 b!6337857)))

(assert (=> bs!1587094 (not (= lambda!348113 lambda!348059))))

(assert (=> d!1989567 (= (nullableZipper!2007 ((_ map or) lt!2361560 lt!2361577)) (exists!2565 ((_ map or) lt!2361560 lt!2361577) lambda!348113))))

(declare-fun bs!1587096 () Bool)

(assert (= bs!1587096 d!1989567))

(declare-fun m!7147642 () Bool)

(assert (=> bs!1587096 m!7147642))

(assert (=> b!6337588 d!1989567))

(declare-fun d!1989571 () Bool)

(assert (=> d!1989571 (= (Exists!3309 (ite c!1152004 lambda!348021 lambda!348022)) (choose!46982 (ite c!1152004 lambda!348021 lambda!348022)))))

(declare-fun bs!1587099 () Bool)

(assert (= bs!1587099 d!1989571))

(declare-fun m!7147644 () Bool)

(assert (=> bs!1587099 m!7147644))

(assert (=> bm!539946 d!1989571))

(assert (=> b!6337400 d!1989343))

(assert (=> b!6337400 d!1989345))

(declare-fun d!1989573 () Bool)

(assert (=> d!1989573 (= (isEmptyLang!1650 lt!2361715) ((_ is EmptyLang!16239) lt!2361715))))

(assert (=> b!6337622 d!1989573))

(declare-fun bs!1587108 () Bool)

(declare-fun d!1989575 () Bool)

(assert (= bs!1587108 (and d!1989575 b!6337112)))

(declare-fun lambda!348117 () Int)

(assert (=> bs!1587108 (not (= lambda!348117 lambda!347990))))

(declare-fun bs!1587109 () Bool)

(assert (= bs!1587109 (and d!1989575 d!1989239)))

(assert (=> bs!1587109 (not (= lambda!348117 lambda!348064))))

(declare-fun bs!1587111 () Bool)

(assert (= bs!1587111 (and d!1989575 d!1989377)))

(assert (=> bs!1587111 (= lambda!348117 lambda!348085)))

(declare-fun bs!1587113 () Bool)

(assert (= bs!1587113 (and d!1989575 d!1989403)))

(assert (=> bs!1587113 (= lambda!348117 lambda!348086)))

(declare-fun bs!1587114 () Bool)

(assert (= bs!1587114 (and d!1989575 b!6337114)))

(assert (=> bs!1587114 (not (= lambda!348117 lambda!347991))))

(declare-fun bs!1587115 () Bool)

(assert (= bs!1587115 (and d!1989575 b!6337859)))

(assert (=> bs!1587115 (not (= lambda!348117 lambda!348060))))

(declare-fun bs!1587116 () Bool)

(assert (= bs!1587116 (and d!1989575 b!6337139)))

(assert (=> bs!1587116 (not (= lambda!348117 lambda!347994))))

(declare-fun bs!1587117 () Bool)

(assert (= bs!1587117 (and d!1989575 b!6337857)))

(assert (=> bs!1587117 (not (= lambda!348117 lambda!348059))))

(declare-fun bs!1587118 () Bool)

(assert (= bs!1587118 (and d!1989575 d!1989567)))

(assert (=> bs!1587118 (= lambda!348117 lambda!348113)))

(declare-fun bs!1587119 () Bool)

(assert (= bs!1587119 (and d!1989575 b!6337137)))

(assert (=> bs!1587119 (not (= lambda!348117 lambda!347993))))

(assert (=> d!1989575 (= (nullableZipper!2007 lt!2361566) (exists!2565 lt!2361566 lambda!348117))))

(declare-fun bs!1587120 () Bool)

(assert (= bs!1587120 d!1989575))

(declare-fun m!7147652 () Bool)

(assert (=> bs!1587120 m!7147652))

(assert (=> b!6337436 d!1989575))

(declare-fun b!6338573 () Bool)

(declare-fun e!3850279 () (InoxSet Context!11246))

(declare-fun e!3850276 () (InoxSet Context!11246))

(assert (=> b!6338573 (= e!3850279 e!3850276)))

(declare-fun c!1152362 () Bool)

(assert (=> b!6338573 (= c!1152362 ((_ is Concat!25084) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6338574 () Bool)

(declare-fun e!3850278 () (InoxSet Context!11246))

(assert (=> b!6338574 (= e!3850278 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338575 () Bool)

(declare-fun call!540161 () (InoxSet Context!11246))

(declare-fun call!540160 () (InoxSet Context!11246))

(assert (=> b!6338575 (= e!3850279 ((_ map or) call!540161 call!540160))))

(declare-fun b!6338576 () Bool)

(declare-fun e!3850277 () Bool)

(assert (=> b!6338576 (= e!3850277 (nullable!6232 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))))))

(declare-fun bm!540152 () Bool)

(declare-fun call!540159 () (InoxSet Context!11246))

(assert (=> bm!540152 (= call!540160 call!540159)))

(declare-fun c!1152363 () Bool)

(declare-fun call!540158 () List!65016)

(declare-fun bm!540153 () Bool)

(assert (=> bm!540153 (= call!540161 (derivationStepZipperDown!1487 (ite c!1152363 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))) (ite c!1152363 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))) (Context!11247 call!540158)) (h!71342 s!2326)))))

(declare-fun b!6338577 () Bool)

(declare-fun call!540157 () (InoxSet Context!11246))

(assert (=> b!6338577 (= e!3850276 call!540157)))

(declare-fun bm!540154 () Bool)

(declare-fun c!1152360 () Bool)

(assert (=> bm!540154 (= call!540158 ($colon$colon!2102 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343))))) (ite (or c!1152360 c!1152362) (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (h!71340 (exprs!6123 (h!71341 zl!343))))))))

(declare-fun d!1989577 () Bool)

(declare-fun c!1152361 () Bool)

(assert (=> d!1989577 (= c!1152361 (and ((_ is ElementMatch!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))) (= (c!1151834 (h!71340 (exprs!6123 (h!71341 zl!343)))) (h!71342 s!2326))))))

(declare-fun e!3850275 () (InoxSet Context!11246))

(assert (=> d!1989577 (= (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (h!71341 zl!343))) (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))) (h!71342 s!2326)) e!3850275)))

(declare-fun bm!540151 () Bool)

(declare-fun call!540156 () List!65016)

(assert (=> bm!540151 (= call!540159 (derivationStepZipperDown!1487 (ite c!1152363 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1152360 (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1152362 (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))) (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343))))))) (ite (or c!1152363 c!1152360) (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))) (Context!11247 call!540156)) (h!71342 s!2326)))))

(declare-fun bm!540155 () Bool)

(assert (=> bm!540155 (= call!540156 call!540158)))

(declare-fun b!6338578 () Bool)

(assert (=> b!6338578 (= e!3850275 (store ((as const (Array Context!11246 Bool)) false) (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))) true))))

(declare-fun b!6338579 () Bool)

(declare-fun e!3850274 () (InoxSet Context!11246))

(assert (=> b!6338579 (= e!3850274 ((_ map or) call!540159 call!540161))))

(declare-fun b!6338580 () Bool)

(assert (=> b!6338580 (= e!3850278 call!540157)))

(declare-fun b!6338581 () Bool)

(assert (=> b!6338581 (= c!1152360 e!3850277)))

(declare-fun res!2608500 () Bool)

(assert (=> b!6338581 (=> (not res!2608500) (not e!3850277))))

(assert (=> b!6338581 (= res!2608500 ((_ is Concat!25084) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> b!6338581 (= e!3850274 e!3850279)))

(declare-fun b!6338582 () Bool)

(assert (=> b!6338582 (= e!3850275 e!3850274)))

(assert (=> b!6338582 (= c!1152363 ((_ is Union!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6338583 () Bool)

(declare-fun c!1152364 () Bool)

(assert (=> b!6338583 (= c!1152364 ((_ is Star!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> b!6338583 (= e!3850276 e!3850278)))

(declare-fun bm!540156 () Bool)

(assert (=> bm!540156 (= call!540157 call!540160)))

(assert (= (and d!1989577 c!1152361) b!6338578))

(assert (= (and d!1989577 (not c!1152361)) b!6338582))

(assert (= (and b!6338582 c!1152363) b!6338579))

(assert (= (and b!6338582 (not c!1152363)) b!6338581))

(assert (= (and b!6338581 res!2608500) b!6338576))

(assert (= (and b!6338581 c!1152360) b!6338575))

(assert (= (and b!6338581 (not c!1152360)) b!6338573))

(assert (= (and b!6338573 c!1152362) b!6338577))

(assert (= (and b!6338573 (not c!1152362)) b!6338583))

(assert (= (and b!6338583 c!1152364) b!6338580))

(assert (= (and b!6338583 (not c!1152364)) b!6338574))

(assert (= (or b!6338577 b!6338580) bm!540155))

(assert (= (or b!6338577 b!6338580) bm!540156))

(assert (= (or b!6338575 bm!540155) bm!540154))

(assert (= (or b!6338575 bm!540156) bm!540152))

(assert (= (or b!6338579 b!6338575) bm!540153))

(assert (= (or b!6338579 bm!540152) bm!540151))

(declare-fun m!7147660 () Bool)

(assert (=> bm!540151 m!7147660))

(declare-fun m!7147662 () Bool)

(assert (=> bm!540153 m!7147662))

(declare-fun m!7147664 () Bool)

(assert (=> bm!540154 m!7147664))

(declare-fun m!7147666 () Bool)

(assert (=> b!6338578 m!7147666))

(assert (=> b!6338576 m!7146360))

(assert (=> bm!539930 d!1989577))

(declare-fun d!1989583 () Bool)

(assert (=> d!1989583 (= (isConcat!1165 lt!2361603) ((_ is Concat!25084) lt!2361603))))

(assert (=> b!6337070 d!1989583))

(declare-fun b!6338585 () Bool)

(declare-fun e!3850281 () Bool)

(assert (=> b!6338585 (= e!3850281 (nullable!6232 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))))))))

(declare-fun b!6338586 () Bool)

(declare-fun e!3850280 () (InoxSet Context!11246))

(declare-fun call!540162 () (InoxSet Context!11246))

(assert (=> b!6338586 (= e!3850280 call!540162)))

(declare-fun b!6338587 () Bool)

(assert (=> b!6338587 (= e!3850280 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338588 () Bool)

(declare-fun e!3850282 () (InoxSet Context!11246))

(assert (=> b!6338588 (= e!3850282 e!3850280)))

(declare-fun c!1152365 () Bool)

(assert (=> b!6338588 (= c!1152365 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))))))

(declare-fun d!1989585 () Bool)

(declare-fun c!1152366 () Bool)

(assert (=> d!1989585 (= c!1152366 e!3850281)))

(declare-fun res!2608501 () Bool)

(assert (=> d!1989585 (=> (not res!2608501) (not e!3850281))))

(assert (=> d!1989585 (= res!2608501 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))))))

(assert (=> d!1989585 (= (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))) (h!71342 s!2326)) e!3850282)))

(declare-fun bm!540157 () Bool)

(assert (=> bm!540157 (= call!540162 (derivationStepZipperDown!1487 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343)))))))))) (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))))) (h!71342 s!2326)))))

(declare-fun b!6338589 () Bool)

(assert (=> b!6338589 (= e!3850282 ((_ map or) call!540162 (derivationStepZipperUp!1413 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (Cons!64892 (h!71340 (exprs!6123 (h!71341 zl!343))) (t!378600 (exprs!6123 (h!71341 zl!343))))))))))) (h!71342 s!2326))))))

(assert (= (and d!1989585 res!2608501) b!6338585))

(assert (= (and d!1989585 c!1152366) b!6338589))

(assert (= (and d!1989585 (not c!1152366)) b!6338588))

(assert (= (and b!6338588 c!1152365) b!6338586))

(assert (= (and b!6338588 (not c!1152365)) b!6338587))

(assert (= (or b!6338589 b!6338586) bm!540157))

(declare-fun m!7147668 () Bool)

(assert (=> b!6338585 m!7147668))

(declare-fun m!7147670 () Bool)

(assert (=> bm!540157 m!7147670))

(declare-fun m!7147672 () Bool)

(assert (=> b!6338589 m!7147672))

(assert (=> b!6337177 d!1989585))

(assert (=> b!6337632 d!1989111))

(declare-fun bs!1587121 () Bool)

(declare-fun d!1989587 () Bool)

(assert (= bs!1587121 (and d!1989587 d!1989111)))

(declare-fun lambda!348118 () Int)

(assert (=> bs!1587121 (= lambda!348118 lambda!348027)))

(declare-fun bs!1587122 () Bool)

(assert (= bs!1587122 (and d!1989587 b!6337917)))

(assert (=> bs!1587122 (not (= lambda!348118 lambda!348073))))

(declare-fun bs!1587123 () Bool)

(assert (= bs!1587123 (and d!1989587 d!1989145)))

(assert (=> bs!1587123 (= lambda!348118 lambda!348044)))

(declare-fun bs!1587124 () Bool)

(assert (= bs!1587124 (and d!1989587 d!1989191)))

(assert (=> bs!1587124 (= lambda!348118 lambda!348051)))

(declare-fun bs!1587125 () Bool)

(assert (= bs!1587125 (and d!1989587 d!1989029)))

(assert (=> bs!1587125 (= lambda!348118 lambda!348004)))

(declare-fun bs!1587126 () Bool)

(assert (= bs!1587126 (and d!1989587 d!1989161)))

(assert (=> bs!1587126 (= lambda!348118 lambda!348049)))

(declare-fun bs!1587127 () Bool)

(assert (= bs!1587127 (and d!1989587 d!1989563)))

(assert (=> bs!1587127 (= lambda!348118 lambda!348111)))

(declare-fun bs!1587128 () Bool)

(assert (= bs!1587128 (and d!1989587 b!6337919)))

(assert (=> bs!1587128 (not (= lambda!348118 lambda!348074))))

(declare-fun bs!1587129 () Bool)

(assert (= bs!1587129 (and d!1989587 d!1989185)))

(assert (=> bs!1587129 (= lambda!348118 lambda!348050)))

(declare-fun bs!1587130 () Bool)

(assert (= bs!1587130 (and d!1989587 d!1989159)))

(assert (=> bs!1587130 (= lambda!348118 lambda!348048)))

(declare-fun bs!1587131 () Bool)

(assert (= bs!1587131 (and d!1989587 d!1989433)))

(assert (=> bs!1587131 (= lambda!348118 lambda!348093)))

(declare-fun bs!1587132 () Bool)

(assert (= bs!1587132 (and d!1989587 d!1989509)))

(assert (=> bs!1587132 (= lambda!348118 lambda!348101)))

(declare-fun bs!1587133 () Bool)

(assert (= bs!1587133 (and d!1989587 d!1989147)))

(assert (=> bs!1587133 (= lambda!348118 lambda!348047)))

(declare-fun bs!1587134 () Bool)

(assert (= bs!1587134 (and d!1989587 d!1988975)))

(assert (=> bs!1587134 (= lambda!348118 lambda!347980)))

(declare-fun bs!1587135 () Bool)

(assert (= bs!1587135 (and d!1989587 d!1989143)))

(assert (=> bs!1587135 (= lambda!348118 lambda!348041)))

(declare-fun lt!2361802 () List!65016)

(assert (=> d!1989587 (forall!15393 lt!2361802 lambda!348118)))

(declare-fun e!3850283 () List!65016)

(assert (=> d!1989587 (= lt!2361802 e!3850283)))

(declare-fun c!1152367 () Bool)

(assert (=> d!1989587 (= c!1152367 ((_ is Cons!64893) (t!378601 zl!343)))))

(assert (=> d!1989587 (= (unfocusZipperList!1660 (t!378601 zl!343)) lt!2361802)))

(declare-fun b!6338590 () Bool)

(assert (=> b!6338590 (= e!3850283 (Cons!64892 (generalisedConcat!1836 (exprs!6123 (h!71341 (t!378601 zl!343)))) (unfocusZipperList!1660 (t!378601 (t!378601 zl!343)))))))

(declare-fun b!6338591 () Bool)

(assert (=> b!6338591 (= e!3850283 Nil!64892)))

(assert (= (and d!1989587 c!1152367) b!6338590))

(assert (= (and d!1989587 (not c!1152367)) b!6338591))

(declare-fun m!7147674 () Bool)

(assert (=> d!1989587 m!7147674))

(declare-fun m!7147676 () Bool)

(assert (=> b!6338590 m!7147676))

(declare-fun m!7147678 () Bool)

(assert (=> b!6338590 m!7147678))

(assert (=> b!6337632 d!1989587))

(declare-fun bs!1587136 () Bool)

(declare-fun b!6338593 () Bool)

(assert (= bs!1587136 (and b!6338593 d!1989111)))

(declare-fun lambda!348122 () Int)

(assert (=> bs!1587136 (not (= lambda!348122 lambda!348027))))

(declare-fun bs!1587138 () Bool)

(assert (= bs!1587138 (and b!6338593 b!6337917)))

(declare-fun lt!2361808 () Int)

(assert (=> bs!1587138 (= (= lt!2361808 lt!2361743) (= lambda!348122 lambda!348073))))

(declare-fun bs!1587139 () Bool)

(assert (= bs!1587139 (and b!6338593 d!1989145)))

(assert (=> bs!1587139 (not (= lambda!348122 lambda!348044))))

(declare-fun bs!1587141 () Bool)

(assert (= bs!1587141 (and b!6338593 d!1989191)))

(assert (=> bs!1587141 (not (= lambda!348122 lambda!348051))))

(declare-fun bs!1587143 () Bool)

(assert (= bs!1587143 (and b!6338593 d!1989029)))

(assert (=> bs!1587143 (not (= lambda!348122 lambda!348004))))

(declare-fun bs!1587145 () Bool)

(assert (= bs!1587145 (and b!6338593 d!1989161)))

(assert (=> bs!1587145 (not (= lambda!348122 lambda!348049))))

(declare-fun bs!1587147 () Bool)

(assert (= bs!1587147 (and b!6338593 d!1989563)))

(assert (=> bs!1587147 (not (= lambda!348122 lambda!348111))))

(declare-fun bs!1587149 () Bool)

(assert (= bs!1587149 (and b!6338593 b!6337919)))

(assert (=> bs!1587149 (= (= lt!2361808 lt!2361742) (= lambda!348122 lambda!348074))))

(declare-fun bs!1587151 () Bool)

(assert (= bs!1587151 (and b!6338593 d!1989185)))

(assert (=> bs!1587151 (not (= lambda!348122 lambda!348050))))

(declare-fun bs!1587153 () Bool)

(assert (= bs!1587153 (and b!6338593 d!1989159)))

(assert (=> bs!1587153 (not (= lambda!348122 lambda!348048))))

(declare-fun bs!1587155 () Bool)

(assert (= bs!1587155 (and b!6338593 d!1989433)))

(assert (=> bs!1587155 (not (= lambda!348122 lambda!348093))))

(declare-fun bs!1587156 () Bool)

(assert (= bs!1587156 (and b!6338593 d!1989509)))

(assert (=> bs!1587156 (not (= lambda!348122 lambda!348101))))

(declare-fun bs!1587157 () Bool)

(assert (= bs!1587157 (and b!6338593 d!1989147)))

(assert (=> bs!1587157 (not (= lambda!348122 lambda!348047))))

(declare-fun bs!1587158 () Bool)

(assert (= bs!1587158 (and b!6338593 d!1988975)))

(assert (=> bs!1587158 (not (= lambda!348122 lambda!347980))))

(declare-fun bs!1587160 () Bool)

(assert (= bs!1587160 (and b!6338593 d!1989143)))

(assert (=> bs!1587160 (not (= lambda!348122 lambda!348041))))

(declare-fun bs!1587161 () Bool)

(assert (= bs!1587161 (and b!6338593 d!1989587)))

(assert (=> bs!1587161 (not (= lambda!348122 lambda!348118))))

(assert (=> b!6338593 true))

(declare-fun bs!1587162 () Bool)

(declare-fun b!6338595 () Bool)

(assert (= bs!1587162 (and b!6338595 d!1989111)))

(declare-fun lambda!348123 () Int)

(assert (=> bs!1587162 (not (= lambda!348123 lambda!348027))))

(declare-fun bs!1587163 () Bool)

(assert (= bs!1587163 (and b!6338595 b!6337917)))

(declare-fun lt!2361807 () Int)

(assert (=> bs!1587163 (= (= lt!2361807 lt!2361743) (= lambda!348123 lambda!348073))))

(declare-fun bs!1587164 () Bool)

(assert (= bs!1587164 (and b!6338595 d!1989145)))

(assert (=> bs!1587164 (not (= lambda!348123 lambda!348044))))

(declare-fun bs!1587165 () Bool)

(assert (= bs!1587165 (and b!6338595 d!1989191)))

(assert (=> bs!1587165 (not (= lambda!348123 lambda!348051))))

(declare-fun bs!1587166 () Bool)

(assert (= bs!1587166 (and b!6338595 d!1989029)))

(assert (=> bs!1587166 (not (= lambda!348123 lambda!348004))))

(declare-fun bs!1587168 () Bool)

(assert (= bs!1587168 (and b!6338595 d!1989161)))

(assert (=> bs!1587168 (not (= lambda!348123 lambda!348049))))

(declare-fun bs!1587169 () Bool)

(assert (= bs!1587169 (and b!6338595 d!1989563)))

(assert (=> bs!1587169 (not (= lambda!348123 lambda!348111))))

(declare-fun bs!1587170 () Bool)

(assert (= bs!1587170 (and b!6338595 b!6337919)))

(assert (=> bs!1587170 (= (= lt!2361807 lt!2361742) (= lambda!348123 lambda!348074))))

(declare-fun bs!1587171 () Bool)

(assert (= bs!1587171 (and b!6338595 d!1989185)))

(assert (=> bs!1587171 (not (= lambda!348123 lambda!348050))))

(declare-fun bs!1587172 () Bool)

(assert (= bs!1587172 (and b!6338595 d!1989159)))

(assert (=> bs!1587172 (not (= lambda!348123 lambda!348048))))

(declare-fun bs!1587173 () Bool)

(assert (= bs!1587173 (and b!6338595 d!1989433)))

(assert (=> bs!1587173 (not (= lambda!348123 lambda!348093))))

(declare-fun bs!1587174 () Bool)

(assert (= bs!1587174 (and b!6338595 d!1989509)))

(assert (=> bs!1587174 (not (= lambda!348123 lambda!348101))))

(declare-fun bs!1587175 () Bool)

(assert (= bs!1587175 (and b!6338595 d!1989147)))

(assert (=> bs!1587175 (not (= lambda!348123 lambda!348047))))

(declare-fun bs!1587176 () Bool)

(assert (= bs!1587176 (and b!6338595 d!1988975)))

(assert (=> bs!1587176 (not (= lambda!348123 lambda!347980))))

(declare-fun bs!1587177 () Bool)

(assert (= bs!1587177 (and b!6338595 d!1989143)))

(assert (=> bs!1587177 (not (= lambda!348123 lambda!348041))))

(declare-fun bs!1587178 () Bool)

(assert (= bs!1587178 (and b!6338595 b!6338593)))

(assert (=> bs!1587178 (= (= lt!2361807 lt!2361808) (= lambda!348123 lambda!348122))))

(declare-fun bs!1587179 () Bool)

(assert (= bs!1587179 (and b!6338595 d!1989587)))

(assert (=> bs!1587179 (not (= lambda!348123 lambda!348118))))

(assert (=> b!6338595 true))

(declare-fun d!1989589 () Bool)

(declare-fun e!3850284 () Bool)

(assert (=> d!1989589 e!3850284))

(declare-fun res!2608502 () Bool)

(assert (=> d!1989589 (=> (not res!2608502) (not e!3850284))))

(assert (=> d!1989589 (= res!2608502 (>= lt!2361807 0))))

(declare-fun e!3850285 () Int)

(assert (=> d!1989589 (= lt!2361807 e!3850285)))

(declare-fun c!1152370 () Bool)

(assert (=> d!1989589 (= c!1152370 ((_ is Cons!64892) (exprs!6123 (h!71341 zl!343))))))

(assert (=> d!1989589 (= (contextDepth!237 (h!71341 zl!343)) lt!2361807)))

(assert (=> b!6338593 (= e!3850285 lt!2361808)))

(assert (=> b!6338593 (= lt!2361808 (maxBigInt!0 (regexDepth!321 (h!71340 (exprs!6123 (h!71341 zl!343)))) (contextDepth!237 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun lt!2361806 () Unit!158287)

(assert (=> b!6338593 (= lt!2361806 (lemmaForallRegexDepthBiggerThanTransitive!111 (t!378600 (exprs!6123 (h!71341 zl!343))) lt!2361808 (contextDepth!237 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))))))))

(assert (=> b!6338593 (forall!15393 (t!378600 (exprs!6123 (h!71341 zl!343))) lambda!348122)))

(declare-fun lt!2361809 () Unit!158287)

(assert (=> b!6338593 (= lt!2361809 lt!2361806)))

(declare-fun b!6338594 () Bool)

(assert (=> b!6338594 (= e!3850285 0)))

(assert (=> b!6338595 (= e!3850284 (forall!15393 (exprs!6123 (h!71341 zl!343)) lambda!348123))))

(assert (= (and d!1989589 c!1152370) b!6338593))

(assert (= (and d!1989589 (not c!1152370)) b!6338594))

(assert (= (and d!1989589 res!2608502) b!6338595))

(declare-fun m!7147700 () Bool)

(assert (=> b!6338593 m!7147700))

(declare-fun m!7147702 () Bool)

(assert (=> b!6338593 m!7147702))

(declare-fun m!7147704 () Bool)

(assert (=> b!6338593 m!7147704))

(declare-fun m!7147708 () Bool)

(assert (=> b!6338593 m!7147708))

(assert (=> b!6338593 m!7147700))

(declare-fun m!7147710 () Bool)

(assert (=> b!6338593 m!7147710))

(assert (=> b!6338593 m!7147700))

(assert (=> b!6338593 m!7147708))

(declare-fun m!7147712 () Bool)

(assert (=> b!6338595 m!7147712))

(assert (=> b!6337137 d!1989589))

(declare-fun bs!1587180 () Bool)

(declare-fun b!6338623 () Bool)

(assert (= bs!1587180 (and b!6338623 b!6337112)))

(declare-fun lambda!348124 () Int)

(assert (=> bs!1587180 (= lambda!348124 lambda!347989)))

(declare-fun bs!1587181 () Bool)

(assert (= bs!1587181 (and b!6338623 b!6337137)))

(assert (=> bs!1587181 (= lambda!348124 lambda!347992)))

(declare-fun bs!1587182 () Bool)

(assert (= bs!1587182 (and b!6338623 b!6337857)))

(assert (=> bs!1587182 (= lambda!348124 lambda!348058)))

(declare-fun lt!2361814 () Int)

(declare-fun lambda!348125 () Int)

(assert (=> bs!1587180 (= (= lt!2361814 lt!2361621) (= lambda!348125 lambda!347990))))

(declare-fun bs!1587183 () Bool)

(assert (= bs!1587183 (and b!6338623 d!1989239)))

(assert (=> bs!1587183 (not (= lambda!348125 lambda!348064))))

(declare-fun bs!1587184 () Bool)

(assert (= bs!1587184 (and b!6338623 d!1989377)))

(assert (=> bs!1587184 (not (= lambda!348125 lambda!348085))))

(declare-fun bs!1587185 () Bool)

(assert (= bs!1587185 (and b!6338623 d!1989403)))

(assert (=> bs!1587185 (not (= lambda!348125 lambda!348086))))

(declare-fun bs!1587186 () Bool)

(assert (= bs!1587186 (and b!6338623 d!1989575)))

(assert (=> bs!1587186 (not (= lambda!348125 lambda!348117))))

(declare-fun bs!1587187 () Bool)

(assert (= bs!1587187 (and b!6338623 b!6337114)))

(assert (=> bs!1587187 (= (= lt!2361814 lt!2361618) (= lambda!348125 lambda!347991))))

(declare-fun bs!1587188 () Bool)

(assert (= bs!1587188 (and b!6338623 b!6337859)))

(assert (=> bs!1587188 (= (= lt!2361814 lt!2361724) (= lambda!348125 lambda!348060))))

(declare-fun bs!1587189 () Bool)

(assert (= bs!1587189 (and b!6338623 b!6337139)))

(assert (=> bs!1587189 (= (= lt!2361814 lt!2361624) (= lambda!348125 lambda!347994))))

(assert (=> bs!1587182 (= (= lt!2361814 lt!2361727) (= lambda!348125 lambda!348059))))

(declare-fun bs!1587190 () Bool)

(assert (= bs!1587190 (and b!6338623 d!1989567)))

(assert (=> bs!1587190 (not (= lambda!348125 lambda!348113))))

(assert (=> bs!1587181 (= (= lt!2361814 lt!2361627) (= lambda!348125 lambda!347993))))

(assert (=> b!6338623 true))

(declare-fun bs!1587191 () Bool)

(declare-fun b!6338625 () Bool)

(assert (= bs!1587191 (and b!6338625 b!6337112)))

(declare-fun lambda!348126 () Int)

(declare-fun lt!2361811 () Int)

(assert (=> bs!1587191 (= (= lt!2361811 lt!2361621) (= lambda!348126 lambda!347990))))

(declare-fun bs!1587192 () Bool)

(assert (= bs!1587192 (and b!6338625 d!1989239)))

(assert (=> bs!1587192 (not (= lambda!348126 lambda!348064))))

(declare-fun bs!1587193 () Bool)

(assert (= bs!1587193 (and b!6338625 d!1989377)))

(assert (=> bs!1587193 (not (= lambda!348126 lambda!348085))))

(declare-fun bs!1587194 () Bool)

(assert (= bs!1587194 (and b!6338625 d!1989403)))

(assert (=> bs!1587194 (not (= lambda!348126 lambda!348086))))

(declare-fun bs!1587195 () Bool)

(assert (= bs!1587195 (and b!6338625 d!1989575)))

(assert (=> bs!1587195 (not (= lambda!348126 lambda!348117))))

(declare-fun bs!1587196 () Bool)

(assert (= bs!1587196 (and b!6338625 b!6337114)))

(assert (=> bs!1587196 (= (= lt!2361811 lt!2361618) (= lambda!348126 lambda!347991))))

(declare-fun bs!1587197 () Bool)

(assert (= bs!1587197 (and b!6338625 b!6338623)))

(assert (=> bs!1587197 (= (= lt!2361811 lt!2361814) (= lambda!348126 lambda!348125))))

(declare-fun bs!1587198 () Bool)

(assert (= bs!1587198 (and b!6338625 b!6337859)))

(assert (=> bs!1587198 (= (= lt!2361811 lt!2361724) (= lambda!348126 lambda!348060))))

(declare-fun bs!1587199 () Bool)

(assert (= bs!1587199 (and b!6338625 b!6337139)))

(assert (=> bs!1587199 (= (= lt!2361811 lt!2361624) (= lambda!348126 lambda!347994))))

(declare-fun bs!1587200 () Bool)

(assert (= bs!1587200 (and b!6338625 b!6337857)))

(assert (=> bs!1587200 (= (= lt!2361811 lt!2361727) (= lambda!348126 lambda!348059))))

(declare-fun bs!1587201 () Bool)

(assert (= bs!1587201 (and b!6338625 d!1989567)))

(assert (=> bs!1587201 (not (= lambda!348126 lambda!348113))))

(declare-fun bs!1587202 () Bool)

(assert (= bs!1587202 (and b!6338625 b!6337137)))

(assert (=> bs!1587202 (= (= lt!2361811 lt!2361627) (= lambda!348126 lambda!347993))))

(assert (=> b!6338625 true))

(declare-fun d!1989599 () Bool)

(declare-fun e!3850302 () Bool)

(assert (=> d!1989599 e!3850302))

(declare-fun res!2608518 () Bool)

(assert (=> d!1989599 (=> (not res!2608518) (not e!3850302))))

(assert (=> d!1989599 (= res!2608518 (>= lt!2361811 0))))

(declare-fun e!3850303 () Int)

(assert (=> d!1989599 (= lt!2361811 e!3850303)))

(declare-fun c!1152376 () Bool)

(assert (=> d!1989599 (= c!1152376 ((_ is Cons!64893) (t!378601 zl!343)))))

(assert (=> d!1989599 (= (zipperDepth!346 (t!378601 zl!343)) lt!2361811)))

(assert (=> b!6338623 (= e!3850303 lt!2361814)))

(assert (=> b!6338623 (= lt!2361814 (maxBigInt!0 (contextDepth!237 (h!71341 (t!378601 zl!343))) (zipperDepth!346 (t!378601 (t!378601 zl!343)))))))

(declare-fun lt!2361813 () Unit!158287)

(assert (=> b!6338623 (= lt!2361813 (lemmaForallContextDepthBiggerThanTransitive!221 (t!378601 (t!378601 zl!343)) lt!2361814 (zipperDepth!346 (t!378601 (t!378601 zl!343))) lambda!348124))))

(assert (=> b!6338623 (forall!15394 (t!378601 (t!378601 zl!343)) lambda!348125)))

(declare-fun lt!2361812 () Unit!158287)

(assert (=> b!6338623 (= lt!2361812 lt!2361813)))

(declare-fun b!6338624 () Bool)

(assert (=> b!6338624 (= e!3850303 0)))

(assert (=> b!6338625 (= e!3850302 (forall!15394 (t!378601 zl!343) lambda!348126))))

(assert (= (and d!1989599 c!1152376) b!6338623))

(assert (= (and d!1989599 (not c!1152376)) b!6338624))

(assert (= (and d!1989599 res!2608518) b!6338625))

(declare-fun m!7147730 () Bool)

(assert (=> b!6338623 m!7147730))

(declare-fun m!7147732 () Bool)

(assert (=> b!6338623 m!7147732))

(assert (=> b!6338623 m!7147730))

(declare-fun m!7147734 () Bool)

(assert (=> b!6338623 m!7147734))

(declare-fun m!7147736 () Bool)

(assert (=> b!6338623 m!7147736))

(assert (=> b!6338623 m!7147734))

(assert (=> b!6338623 m!7147734))

(declare-fun m!7147738 () Bool)

(assert (=> b!6338623 m!7147738))

(declare-fun m!7147740 () Bool)

(assert (=> b!6338625 m!7147740))

(assert (=> b!6337137 d!1989599))

(declare-fun d!1989605 () Bool)

(declare-fun res!2608520 () Bool)

(declare-fun e!3850310 () Bool)

(assert (=> d!1989605 (=> res!2608520 e!3850310)))

(assert (=> d!1989605 (= res!2608520 ((_ is Nil!64893) (t!378601 zl!343)))))

(assert (=> d!1989605 (= (forall!15394 (t!378601 zl!343) lambda!347993) e!3850310)))

(declare-fun b!6338637 () Bool)

(declare-fun e!3850311 () Bool)

(assert (=> b!6338637 (= e!3850310 e!3850311)))

(declare-fun res!2608521 () Bool)

(assert (=> b!6338637 (=> (not res!2608521) (not e!3850311))))

(assert (=> b!6338637 (= res!2608521 (dynLambda!25720 lambda!347993 (h!71341 (t!378601 zl!343))))))

(declare-fun b!6338638 () Bool)

(assert (=> b!6338638 (= e!3850311 (forall!15394 (t!378601 (t!378601 zl!343)) lambda!347993))))

(assert (= (and d!1989605 (not res!2608520)) b!6338637))

(assert (= (and b!6338637 res!2608521) b!6338638))

(declare-fun b_lambda!241213 () Bool)

(assert (=> (not b_lambda!241213) (not b!6338637)))

(declare-fun m!7147744 () Bool)

(assert (=> b!6338637 m!7147744))

(declare-fun m!7147746 () Bool)

(assert (=> b!6338638 m!7147746))

(assert (=> b!6337137 d!1989605))

(declare-fun d!1989611 () Bool)

(assert (=> d!1989611 (= (maxBigInt!0 (contextDepth!237 (h!71341 zl!343)) (zipperDepth!346 (t!378601 zl!343))) (ite (>= (contextDepth!237 (h!71341 zl!343)) (zipperDepth!346 (t!378601 zl!343))) (contextDepth!237 (h!71341 zl!343)) (zipperDepth!346 (t!378601 zl!343))))))

(assert (=> b!6337137 d!1989611))

(declare-fun bs!1587218 () Bool)

(declare-fun d!1989617 () Bool)

(assert (= bs!1587218 (and d!1989617 b!6337112)))

(declare-fun lambda!348129 () Int)

(assert (=> bs!1587218 (not (= lambda!348129 lambda!347990))))

(declare-fun bs!1587220 () Bool)

(assert (= bs!1587220 (and d!1989617 d!1989239)))

(assert (=> bs!1587220 (= (and (= lt!2361627 lt!2361621) (= lambda!347992 lambda!347989)) (= lambda!348129 lambda!348064))))

(declare-fun bs!1587223 () Bool)

(assert (= bs!1587223 (and d!1989617 d!1989377)))

(assert (=> bs!1587223 (not (= lambda!348129 lambda!348085))))

(declare-fun bs!1587225 () Bool)

(assert (= bs!1587225 (and d!1989617 b!6338625)))

(assert (=> bs!1587225 (not (= lambda!348129 lambda!348126))))

(declare-fun bs!1587227 () Bool)

(assert (= bs!1587227 (and d!1989617 d!1989403)))

(assert (=> bs!1587227 (not (= lambda!348129 lambda!348086))))

(declare-fun bs!1587229 () Bool)

(assert (= bs!1587229 (and d!1989617 d!1989575)))

(assert (=> bs!1587229 (not (= lambda!348129 lambda!348117))))

(declare-fun bs!1587231 () Bool)

(assert (= bs!1587231 (and d!1989617 b!6337114)))

(assert (=> bs!1587231 (not (= lambda!348129 lambda!347991))))

(declare-fun bs!1587232 () Bool)

(assert (= bs!1587232 (and d!1989617 b!6338623)))

(assert (=> bs!1587232 (not (= lambda!348129 lambda!348125))))

(declare-fun bs!1587234 () Bool)

(assert (= bs!1587234 (and d!1989617 b!6337859)))

(assert (=> bs!1587234 (not (= lambda!348129 lambda!348060))))

(declare-fun bs!1587235 () Bool)

(assert (= bs!1587235 (and d!1989617 b!6337139)))

(assert (=> bs!1587235 (not (= lambda!348129 lambda!347994))))

(declare-fun bs!1587236 () Bool)

(assert (= bs!1587236 (and d!1989617 b!6337857)))

(assert (=> bs!1587236 (not (= lambda!348129 lambda!348059))))

(declare-fun bs!1587238 () Bool)

(assert (= bs!1587238 (and d!1989617 d!1989567)))

(assert (=> bs!1587238 (not (= lambda!348129 lambda!348113))))

(declare-fun bs!1587239 () Bool)

(assert (= bs!1587239 (and d!1989617 b!6337137)))

(assert (=> bs!1587239 (not (= lambda!348129 lambda!347993))))

(assert (=> d!1989617 true))

(assert (=> d!1989617 true))

(assert (=> d!1989617 (< (dynLambda!25718 order!27501 lambda!347992) (dynLambda!25719 order!27503 lambda!348129))))

(assert (=> d!1989617 (forall!15394 (t!378601 zl!343) lambda!348129)))

(declare-fun lt!2361815 () Unit!158287)

(assert (=> d!1989617 (= lt!2361815 (choose!46986 (t!378601 zl!343) lt!2361627 (zipperDepth!346 (t!378601 zl!343)) lambda!347992))))

(assert (=> d!1989617 (>= lt!2361627 (zipperDepth!346 (t!378601 zl!343)))))

(assert (=> d!1989617 (= (lemmaForallContextDepthBiggerThanTransitive!221 (t!378601 zl!343) lt!2361627 (zipperDepth!346 (t!378601 zl!343)) lambda!347992) lt!2361815)))

(declare-fun bs!1587242 () Bool)

(assert (= bs!1587242 d!1989617))

(declare-fun m!7147752 () Bool)

(assert (=> bs!1587242 m!7147752))

(assert (=> bs!1587242 m!7146290))

(declare-fun m!7147754 () Bool)

(assert (=> bs!1587242 m!7147754))

(assert (=> b!6337137 d!1989617))

(declare-fun bs!1587247 () Bool)

(declare-fun d!1989623 () Bool)

(assert (= bs!1587247 (and d!1989623 b!6337112)))

(declare-fun lambda!348131 () Int)

(assert (=> bs!1587247 (not (= lambda!348131 lambda!347990))))

(declare-fun bs!1587249 () Bool)

(assert (= bs!1587249 (and d!1989623 d!1989239)))

(assert (=> bs!1587249 (not (= lambda!348131 lambda!348064))))

(declare-fun bs!1587251 () Bool)

(assert (= bs!1587251 (and d!1989623 d!1989377)))

(assert (=> bs!1587251 (= lambda!348131 lambda!348085)))

(declare-fun bs!1587253 () Bool)

(assert (= bs!1587253 (and d!1989623 b!6338625)))

(assert (=> bs!1587253 (not (= lambda!348131 lambda!348126))))

(declare-fun bs!1587255 () Bool)

(assert (= bs!1587255 (and d!1989623 d!1989403)))

(assert (=> bs!1587255 (= lambda!348131 lambda!348086)))

(declare-fun bs!1587257 () Bool)

(assert (= bs!1587257 (and d!1989623 d!1989617)))

(assert (=> bs!1587257 (not (= lambda!348131 lambda!348129))))

(declare-fun bs!1587259 () Bool)

(assert (= bs!1587259 (and d!1989623 d!1989575)))

(assert (=> bs!1587259 (= lambda!348131 lambda!348117)))

(declare-fun bs!1587260 () Bool)

(assert (= bs!1587260 (and d!1989623 b!6337114)))

(assert (=> bs!1587260 (not (= lambda!348131 lambda!347991))))

(declare-fun bs!1587261 () Bool)

(assert (= bs!1587261 (and d!1989623 b!6338623)))

(assert (=> bs!1587261 (not (= lambda!348131 lambda!348125))))

(declare-fun bs!1587262 () Bool)

(assert (= bs!1587262 (and d!1989623 b!6337859)))

(assert (=> bs!1587262 (not (= lambda!348131 lambda!348060))))

(declare-fun bs!1587263 () Bool)

(assert (= bs!1587263 (and d!1989623 b!6337139)))

(assert (=> bs!1587263 (not (= lambda!348131 lambda!347994))))

(declare-fun bs!1587264 () Bool)

(assert (= bs!1587264 (and d!1989623 b!6337857)))

(assert (=> bs!1587264 (not (= lambda!348131 lambda!348059))))

(declare-fun bs!1587265 () Bool)

(assert (= bs!1587265 (and d!1989623 d!1989567)))

(assert (=> bs!1587265 (= lambda!348131 lambda!348113)))

(declare-fun bs!1587266 () Bool)

(assert (= bs!1587266 (and d!1989623 b!6337137)))

(assert (=> bs!1587266 (not (= lambda!348131 lambda!347993))))

(assert (=> d!1989623 (= (nullableZipper!2007 lt!2361577) (exists!2565 lt!2361577 lambda!348131))))

(declare-fun bs!1587267 () Bool)

(assert (= bs!1587267 d!1989623))

(declare-fun m!7147766 () Bool)

(assert (=> bs!1587267 m!7147766))

(assert (=> b!6337285 d!1989623))

(declare-fun b!6338654 () Bool)

(declare-fun e!3850326 () (InoxSet Context!11246))

(declare-fun e!3850323 () (InoxSet Context!11246))

(assert (=> b!6338654 (= e!3850326 e!3850323)))

(declare-fun c!1152390 () Bool)

(assert (=> b!6338654 (= c!1152390 ((_ is Concat!25084) (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))))))

(declare-fun b!6338655 () Bool)

(declare-fun e!3850325 () (InoxSet Context!11246))

(assert (=> b!6338655 (= e!3850325 ((as const (Array Context!11246 Bool)) false))))

(declare-fun b!6338656 () Bool)

(declare-fun call!540184 () (InoxSet Context!11246))

(declare-fun call!540183 () (InoxSet Context!11246))

(assert (=> b!6338656 (= e!3850326 ((_ map or) call!540184 call!540183))))

(declare-fun e!3850324 () Bool)

(declare-fun b!6338657 () Bool)

(assert (=> b!6338657 (= e!3850324 (nullable!6232 (regOne!32990 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292)))))))))))

(declare-fun bm!540175 () Bool)

(declare-fun call!540182 () (InoxSet Context!11246))

(assert (=> bm!540175 (= call!540183 call!540182)))

(declare-fun bm!540176 () Bool)

(declare-fun c!1152391 () Bool)

(declare-fun call!540181 () List!65016)

(assert (=> bm!540176 (= call!540184 (derivationStepZipperDown!1487 (ite c!1152391 (regTwo!32991 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))) (regOne!32990 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292)))))))) (ite c!1152391 (ite (or c!1151989 c!1151986) (Context!11247 lt!2361564) (Context!11247 call!539941)) (Context!11247 call!540181)) (h!71342 s!2326)))))

(declare-fun b!6338658 () Bool)

(declare-fun call!540180 () (InoxSet Context!11246))

(assert (=> b!6338658 (= e!3850323 call!540180)))

(declare-fun bm!540177 () Bool)

(declare-fun c!1152388 () Bool)

(assert (=> bm!540177 (= call!540181 ($colon$colon!2102 (exprs!6123 (ite (or c!1151989 c!1151986) (Context!11247 lt!2361564) (Context!11247 call!539941))) (ite (or c!1152388 c!1152390) (regTwo!32990 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))) (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292)))))))))))

(declare-fun c!1152389 () Bool)

(declare-fun d!1989629 () Bool)

(assert (=> d!1989629 (= c!1152389 (and ((_ is ElementMatch!16239) (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))) (= (c!1151834 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))) (h!71342 s!2326))))))

(declare-fun e!3850322 () (InoxSet Context!11246))

(assert (=> d!1989629 (= (derivationStepZipperDown!1487 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292)))))) (ite (or c!1151989 c!1151986) (Context!11247 lt!2361564) (Context!11247 call!539941)) (h!71342 s!2326)) e!3850322)))

(declare-fun call!540179 () List!65016)

(declare-fun bm!540174 () Bool)

(assert (=> bm!540174 (= call!540182 (derivationStepZipperDown!1487 (ite c!1152391 (regOne!32991 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))) (ite c!1152388 (regTwo!32990 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))) (ite c!1152390 (regOne!32990 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))) (reg!16568 (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292)))))))))) (ite (or c!1152391 c!1152388) (ite (or c!1151989 c!1151986) (Context!11247 lt!2361564) (Context!11247 call!539941)) (Context!11247 call!540179)) (h!71342 s!2326)))))

(declare-fun bm!540178 () Bool)

(assert (=> bm!540178 (= call!540179 call!540181)))

(declare-fun b!6338659 () Bool)

(assert (=> b!6338659 (= e!3850322 (store ((as const (Array Context!11246 Bool)) false) (ite (or c!1151989 c!1151986) (Context!11247 lt!2361564) (Context!11247 call!539941)) true))))

(declare-fun b!6338660 () Bool)

(declare-fun e!3850321 () (InoxSet Context!11246))

(assert (=> b!6338660 (= e!3850321 ((_ map or) call!540182 call!540184))))

(declare-fun b!6338661 () Bool)

(assert (=> b!6338661 (= e!3850325 call!540180)))

(declare-fun b!6338662 () Bool)

(assert (=> b!6338662 (= c!1152388 e!3850324)))

(declare-fun res!2608526 () Bool)

(assert (=> b!6338662 (=> (not res!2608526) (not e!3850324))))

(assert (=> b!6338662 (= res!2608526 ((_ is Concat!25084) (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))))))

(assert (=> b!6338662 (= e!3850321 e!3850326)))

(declare-fun b!6338663 () Bool)

(assert (=> b!6338663 (= e!3850322 e!3850321)))

(assert (=> b!6338663 (= c!1152391 ((_ is Union!16239) (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))))))

(declare-fun b!6338664 () Bool)

(declare-fun c!1152392 () Bool)

(assert (=> b!6338664 (= c!1152392 ((_ is Star!16239) (ite c!1151989 (regOne!32991 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151986 (regTwo!32990 (regOne!32990 (regOne!32990 r!7292))) (ite c!1151988 (regOne!32990 (regOne!32990 (regOne!32990 r!7292))) (reg!16568 (regOne!32990 (regOne!32990 r!7292))))))))))

(assert (=> b!6338664 (= e!3850323 e!3850325)))

(declare-fun bm!540179 () Bool)

(assert (=> bm!540179 (= call!540180 call!540183)))

(assert (= (and d!1989629 c!1152389) b!6338659))

(assert (= (and d!1989629 (not c!1152389)) b!6338663))

(assert (= (and b!6338663 c!1152391) b!6338660))

(assert (= (and b!6338663 (not c!1152391)) b!6338662))

(assert (= (and b!6338662 res!2608526) b!6338657))

(assert (= (and b!6338662 c!1152388) b!6338656))

(assert (= (and b!6338662 (not c!1152388)) b!6338654))

(assert (= (and b!6338654 c!1152390) b!6338658))

(assert (= (and b!6338654 (not c!1152390)) b!6338664))

(assert (= (and b!6338664 c!1152392) b!6338661))

(assert (= (and b!6338664 (not c!1152392)) b!6338655))

(assert (= (or b!6338658 b!6338661) bm!540178))

(assert (= (or b!6338658 b!6338661) bm!540179))

(assert (= (or b!6338656 bm!540178) bm!540177))

(assert (= (or b!6338656 bm!540179) bm!540175))

(assert (= (or b!6338660 b!6338656) bm!540176))

(assert (= (or b!6338660 bm!540175) bm!540174))

(declare-fun m!7147778 () Bool)

(assert (=> bm!540174 m!7147778))

(declare-fun m!7147780 () Bool)

(assert (=> bm!540176 m!7147780))

(declare-fun m!7147782 () Bool)

(assert (=> bm!540177 m!7147782))

(declare-fun m!7147784 () Bool)

(assert (=> b!6338659 m!7147784))

(declare-fun m!7147786 () Bool)

(assert (=> b!6338657 m!7147786))

(assert (=> bm!539936 d!1989629))

(assert (=> b!6337566 d!1989485))

(declare-fun b!6338676 () Bool)

(declare-fun res!2608529 () Bool)

(declare-fun e!3850338 () Bool)

(assert (=> b!6338676 (=> (not res!2608529) (not e!3850338))))

(declare-fun call!540192 () Bool)

(assert (=> b!6338676 (= res!2608529 call!540192)))

(declare-fun e!3850337 () Bool)

(assert (=> b!6338676 (= e!3850337 e!3850338)))

(declare-fun call!540193 () Bool)

(declare-fun c!1152398 () Bool)

(declare-fun bm!540186 () Bool)

(declare-fun c!1152399 () Bool)

(assert (=> bm!540186 (= call!540193 (validRegex!7975 (ite c!1152399 (reg!16568 lt!2361715) (ite c!1152398 (regOne!32991 lt!2361715) (regOne!32990 lt!2361715)))))))

(declare-fun b!6338677 () Bool)

(declare-fun e!3850334 () Bool)

(declare-fun e!3850336 () Bool)

(assert (=> b!6338677 (= e!3850334 e!3850336)))

(declare-fun res!2608528 () Bool)

(assert (=> b!6338677 (=> (not res!2608528) (not e!3850336))))

(assert (=> b!6338677 (= res!2608528 call!540192)))

(declare-fun b!6338678 () Bool)

(declare-fun e!3850339 () Bool)

(assert (=> b!6338678 (= e!3850339 call!540193)))

(declare-fun bm!540187 () Bool)

(assert (=> bm!540187 (= call!540192 call!540193)))

(declare-fun b!6338679 () Bool)

(declare-fun call!540191 () Bool)

(assert (=> b!6338679 (= e!3850338 call!540191)))

(declare-fun b!6338680 () Bool)

(declare-fun e!3850335 () Bool)

(assert (=> b!6338680 (= e!3850335 e!3850339)))

(declare-fun res!2608532 () Bool)

(assert (=> b!6338680 (= res!2608532 (not (nullable!6232 (reg!16568 lt!2361715))))))

(assert (=> b!6338680 (=> (not res!2608532) (not e!3850339))))

(declare-fun bm!540188 () Bool)

(assert (=> bm!540188 (= call!540191 (validRegex!7975 (ite c!1152398 (regTwo!32991 lt!2361715) (regTwo!32990 lt!2361715))))))

(declare-fun b!6338681 () Bool)

(declare-fun e!3850333 () Bool)

(assert (=> b!6338681 (= e!3850333 e!3850335)))

(assert (=> b!6338681 (= c!1152399 ((_ is Star!16239) lt!2361715))))

(declare-fun d!1989635 () Bool)

(declare-fun res!2608531 () Bool)

(assert (=> d!1989635 (=> res!2608531 e!3850333)))

(assert (=> d!1989635 (= res!2608531 ((_ is ElementMatch!16239) lt!2361715))))

(assert (=> d!1989635 (= (validRegex!7975 lt!2361715) e!3850333)))

(declare-fun b!6338682 () Bool)

(assert (=> b!6338682 (= e!3850336 call!540191)))

(declare-fun b!6338683 () Bool)

(declare-fun res!2608530 () Bool)

(assert (=> b!6338683 (=> res!2608530 e!3850334)))

(assert (=> b!6338683 (= res!2608530 (not ((_ is Concat!25084) lt!2361715)))))

(assert (=> b!6338683 (= e!3850337 e!3850334)))

(declare-fun b!6338684 () Bool)

(assert (=> b!6338684 (= e!3850335 e!3850337)))

(assert (=> b!6338684 (= c!1152398 ((_ is Union!16239) lt!2361715))))

(assert (= (and d!1989635 (not res!2608531)) b!6338681))

(assert (= (and b!6338681 c!1152399) b!6338680))

(assert (= (and b!6338681 (not c!1152399)) b!6338684))

(assert (= (and b!6338680 res!2608532) b!6338678))

(assert (= (and b!6338684 c!1152398) b!6338676))

(assert (= (and b!6338684 (not c!1152398)) b!6338683))

(assert (= (and b!6338676 res!2608529) b!6338679))

(assert (= (and b!6338683 (not res!2608530)) b!6338677))

(assert (= (and b!6338677 res!2608528) b!6338682))

(assert (= (or b!6338679 b!6338682) bm!540188))

(assert (= (or b!6338676 b!6338677) bm!540187))

(assert (= (or b!6338678 bm!540187) bm!540186))

(declare-fun m!7147788 () Bool)

(assert (=> bm!540186 m!7147788))

(declare-fun m!7147790 () Bool)

(assert (=> b!6338680 m!7147790))

(declare-fun m!7147792 () Bool)

(assert (=> bm!540188 m!7147792))

(assert (=> d!1989145 d!1989635))

(declare-fun d!1989637 () Bool)

(declare-fun res!2608533 () Bool)

(declare-fun e!3850340 () Bool)

(assert (=> d!1989637 (=> res!2608533 e!3850340)))

(assert (=> d!1989637 (= res!2608533 ((_ is Nil!64892) (unfocusZipperList!1660 zl!343)))))

(assert (=> d!1989637 (= (forall!15393 (unfocusZipperList!1660 zl!343) lambda!348044) e!3850340)))

(declare-fun b!6338685 () Bool)

(declare-fun e!3850341 () Bool)

(assert (=> b!6338685 (= e!3850340 e!3850341)))

(declare-fun res!2608534 () Bool)

(assert (=> b!6338685 (=> (not res!2608534) (not e!3850341))))

(assert (=> b!6338685 (= res!2608534 (dynLambda!25716 lambda!348044 (h!71340 (unfocusZipperList!1660 zl!343))))))

(declare-fun b!6338686 () Bool)

(assert (=> b!6338686 (= e!3850341 (forall!15393 (t!378600 (unfocusZipperList!1660 zl!343)) lambda!348044))))

(assert (= (and d!1989637 (not res!2608533)) b!6338685))

(assert (= (and b!6338685 res!2608534) b!6338686))

(declare-fun b_lambda!241217 () Bool)

(assert (=> (not b_lambda!241217) (not b!6338685)))

(declare-fun m!7147794 () Bool)

(assert (=> b!6338685 m!7147794))

(declare-fun m!7147796 () Bool)

(assert (=> b!6338686 m!7147796))

(assert (=> d!1989145 d!1989637))

(declare-fun d!1989639 () Bool)

(assert (=> d!1989639 (= (isEmpty!36969 lt!2361557) ((_ is Nil!64892) lt!2361557))))

(assert (=> b!6337062 d!1989639))

(declare-fun d!1989641 () Bool)

(declare-fun lt!2361817 () Int)

(assert (=> d!1989641 (> lt!2361817 0)))

(declare-fun e!3850343 () Int)

(assert (=> d!1989641 (= lt!2361817 e!3850343)))

(declare-fun c!1152400 () Bool)

(assert (=> d!1989641 (= c!1152400 ((_ is ElementMatch!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> d!1989641 (= (regexDepthTotal!199 (h!71340 (exprs!6123 (h!71341 zl!343)))) lt!2361817)))

(declare-fun b!6338687 () Bool)

(declare-fun e!3850344 () Int)

(declare-fun call!540194 () Int)

(assert (=> b!6338687 (= e!3850344 (+ 1 call!540194))))

(declare-fun b!6338688 () Bool)

(assert (=> b!6338688 (= e!3850343 e!3850344)))

(declare-fun c!1152403 () Bool)

(assert (=> b!6338688 (= c!1152403 ((_ is Star!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6338689 () Bool)

(declare-fun e!3850342 () Int)

(declare-fun call!540195 () Int)

(declare-fun call!540196 () Int)

(assert (=> b!6338689 (= e!3850342 (+ 1 call!540195 call!540196))))

(declare-fun b!6338690 () Bool)

(declare-fun e!3850345 () Int)

(assert (=> b!6338690 (= e!3850342 e!3850345)))

(declare-fun c!1152401 () Bool)

(assert (=> b!6338690 (= c!1152401 ((_ is Concat!25084) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun b!6338691 () Bool)

(declare-fun c!1152402 () Bool)

(assert (=> b!6338691 (= c!1152402 ((_ is Union!16239) (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> b!6338691 (= e!3850344 e!3850342)))

(declare-fun b!6338692 () Bool)

(assert (=> b!6338692 (= e!3850343 1)))

(declare-fun bm!540189 () Bool)

(assert (=> bm!540189 (= call!540195 (regexDepthTotal!199 (ite c!1152402 (regOne!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regOne!32990 (h!71340 (exprs!6123 (h!71341 zl!343)))))))))

(declare-fun bm!540190 () Bool)

(assert (=> bm!540190 (= call!540194 (regexDepthTotal!199 (ite c!1152403 (reg!16568 (h!71340 (exprs!6123 (h!71341 zl!343)))) (ite c!1152402 (regTwo!32991 (h!71340 (exprs!6123 (h!71341 zl!343)))) (regTwo!32990 (h!71340 (exprs!6123 (h!71341 zl!343))))))))))

(declare-fun b!6338693 () Bool)

(assert (=> b!6338693 (= e!3850345 1)))

(declare-fun bm!540191 () Bool)

(assert (=> bm!540191 (= call!540196 call!540194)))

(declare-fun b!6338694 () Bool)

(assert (=> b!6338694 (= e!3850345 (+ 1 call!540195 call!540196))))

(assert (= (and d!1989641 c!1152400) b!6338692))

(assert (= (and d!1989641 (not c!1152400)) b!6338688))

(assert (= (and b!6338688 c!1152403) b!6338687))

(assert (= (and b!6338688 (not c!1152403)) b!6338691))

(assert (= (and b!6338691 c!1152402) b!6338689))

(assert (= (and b!6338691 (not c!1152402)) b!6338690))

(assert (= (and b!6338690 c!1152401) b!6338694))

(assert (= (and b!6338690 (not c!1152401)) b!6338693))

(assert (= (or b!6338689 b!6338694) bm!540191))

(assert (= (or b!6338689 b!6338694) bm!540189))

(assert (= (or b!6338687 bm!540191) bm!540190))

(declare-fun m!7147808 () Bool)

(assert (=> bm!540189 m!7147808))

(declare-fun m!7147810 () Bool)

(assert (=> bm!540190 m!7147810))

(assert (=> b!6337596 d!1989641))

(declare-fun d!1989645 () Bool)

(declare-fun lt!2361818 () Int)

(assert (=> d!1989645 (>= lt!2361818 0)))

(declare-fun e!3850346 () Int)

(assert (=> d!1989645 (= lt!2361818 e!3850346)))

(declare-fun c!1152404 () Bool)

(assert (=> d!1989645 (= c!1152404 ((_ is Cons!64892) (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343)))))))))

(assert (=> d!1989645 (= (contextDepthTotal!348 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343))))) lt!2361818)))

(declare-fun b!6338695 () Bool)

(assert (=> b!6338695 (= e!3850346 (+ (regexDepthTotal!199 (h!71340 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343))))))) (contextDepthTotal!348 (Context!11247 (t!378600 (exprs!6123 (Context!11247 (t!378600 (exprs!6123 (h!71341 zl!343))))))))))))

(declare-fun b!6338696 () Bool)

(assert (=> b!6338696 (= e!3850346 1)))

(assert (= (and d!1989645 c!1152404) b!6338695))

(assert (= (and d!1989645 (not c!1152404)) b!6338696))

(declare-fun m!7147812 () Bool)

(assert (=> b!6338695 m!7147812))

(declare-fun m!7147814 () Bool)

(assert (=> b!6338695 m!7147814))

(assert (=> b!6337596 d!1989645))

(declare-fun d!1989647 () Bool)

(assert (=> d!1989647 (= (head!12973 (exprs!6123 (h!71341 zl!343))) (h!71340 (exprs!6123 (h!71341 zl!343))))))

(assert (=> b!6337456 d!1989647))

(assert (=> d!1989083 d!1989069))

(assert (=> d!1989083 d!1989057))

(declare-fun d!1989649 () Bool)

(assert (=> d!1989649 (= (matchR!8422 r!7292 s!2326) (matchRSpec!3340 r!7292 s!2326))))

(assert (=> d!1989649 true))

(declare-fun _$88!5007 () Unit!158287)

(assert (=> d!1989649 (= (choose!46981 r!7292 s!2326) _$88!5007)))

(declare-fun bs!1587282 () Bool)

(assert (= bs!1587282 d!1989649))

(assert (=> bs!1587282 m!7146094))

(assert (=> bs!1587282 m!7146092))

(assert (=> d!1989083 d!1989649))

(assert (=> d!1989083 d!1989045))

(declare-fun d!1989653 () Bool)

(assert (=> d!1989653 (= (nullable!6232 r!7292) (nullableFct!2181 r!7292))))

(declare-fun bs!1587283 () Bool)

(assert (= bs!1587283 d!1989653))

(declare-fun m!7147818 () Bool)

(assert (=> bs!1587283 m!7147818))

(assert (=> b!6337396 d!1989653))

(declare-fun d!1989655 () Bool)

(assert (=> d!1989655 (= (head!12973 (unfocusZipperList!1660 zl!343)) (h!71340 (unfocusZipperList!1660 zl!343)))))

(assert (=> b!6337618 d!1989655))

(declare-fun b!6338706 () Bool)

(declare-fun e!3850352 () Bool)

(declare-fun tp!1767705 () Bool)

(assert (=> b!6338706 (= e!3850352 tp!1767705)))

(declare-fun b!6338705 () Bool)

(declare-fun e!3850351 () Bool)

(declare-fun tp!1767706 () Bool)

(assert (=> b!6338705 (= e!3850351 (and (inv!83844 (h!71341 (t!378601 (t!378601 zl!343)))) e!3850352 tp!1767706))))

(assert (=> b!6337658 (= tp!1767642 e!3850351)))

(assert (= b!6338705 b!6338706))

(assert (= (and b!6337658 ((_ is Cons!64893) (t!378601 (t!378601 zl!343)))) b!6338705))

(declare-fun m!7147820 () Bool)

(assert (=> b!6338705 m!7147820))

(declare-fun b!6338707 () Bool)

(declare-fun e!3850353 () Bool)

(declare-fun tp!1767707 () Bool)

(declare-fun tp!1767708 () Bool)

(assert (=> b!6338707 (= e!3850353 (and tp!1767707 tp!1767708))))

(assert (=> b!6337659 (= tp!1767641 e!3850353)))

(assert (= (and b!6337659 ((_ is Cons!64892) (exprs!6123 (h!71341 (t!378601 zl!343))))) b!6338707))

(declare-fun b!6338709 () Bool)

(declare-fun e!3850354 () Bool)

(declare-fun tp!1767713 () Bool)

(declare-fun tp!1767711 () Bool)

(assert (=> b!6338709 (= e!3850354 (and tp!1767713 tp!1767711))))

(assert (=> b!6337678 (= tp!1767665 e!3850354)))

(declare-fun b!6338711 () Bool)

(declare-fun tp!1767712 () Bool)

(declare-fun tp!1767709 () Bool)

(assert (=> b!6338711 (= e!3850354 (and tp!1767712 tp!1767709))))

(declare-fun b!6338710 () Bool)

(declare-fun tp!1767710 () Bool)

(assert (=> b!6338710 (= e!3850354 tp!1767710)))

(declare-fun b!6338708 () Bool)

(assert (=> b!6338708 (= e!3850354 tp_is_empty!41731)))

(assert (= (and b!6337678 ((_ is ElementMatch!16239) (regOne!32991 (regOne!32990 r!7292)))) b!6338708))

(assert (= (and b!6337678 ((_ is Concat!25084) (regOne!32991 (regOne!32990 r!7292)))) b!6338709))

(assert (= (and b!6337678 ((_ is Star!16239) (regOne!32991 (regOne!32990 r!7292)))) b!6338710))

(assert (= (and b!6337678 ((_ is Union!16239) (regOne!32991 (regOne!32990 r!7292)))) b!6338711))

(declare-fun b!6338715 () Bool)

(declare-fun e!3850356 () Bool)

(declare-fun tp!1767718 () Bool)

(declare-fun tp!1767716 () Bool)

(assert (=> b!6338715 (= e!3850356 (and tp!1767718 tp!1767716))))

(assert (=> b!6337678 (= tp!1767662 e!3850356)))

(declare-fun b!6338719 () Bool)

(declare-fun tp!1767717 () Bool)

(declare-fun tp!1767714 () Bool)

(assert (=> b!6338719 (= e!3850356 (and tp!1767717 tp!1767714))))

(declare-fun b!6338717 () Bool)

(declare-fun tp!1767715 () Bool)

(assert (=> b!6338717 (= e!3850356 tp!1767715)))

(declare-fun b!6338713 () Bool)

(assert (=> b!6338713 (= e!3850356 tp_is_empty!41731)))

(assert (= (and b!6337678 ((_ is ElementMatch!16239) (regTwo!32991 (regOne!32990 r!7292)))) b!6338713))

(assert (= (and b!6337678 ((_ is Concat!25084) (regTwo!32991 (regOne!32990 r!7292)))) b!6338715))

(assert (= (and b!6337678 ((_ is Star!16239) (regTwo!32991 (regOne!32990 r!7292)))) b!6338717))

(assert (= (and b!6337678 ((_ is Union!16239) (regTwo!32991 (regOne!32990 r!7292)))) b!6338719))

(declare-fun b!6338721 () Bool)

(declare-fun e!3850358 () Bool)

(declare-fun tp!1767723 () Bool)

(declare-fun tp!1767721 () Bool)

(assert (=> b!6338721 (= e!3850358 (and tp!1767723 tp!1767721))))

(assert (=> b!6337677 (= tp!1767663 e!3850358)))

(declare-fun b!6338723 () Bool)

(declare-fun tp!1767722 () Bool)

(declare-fun tp!1767719 () Bool)

(assert (=> b!6338723 (= e!3850358 (and tp!1767722 tp!1767719))))

(declare-fun b!6338722 () Bool)

(declare-fun tp!1767720 () Bool)

(assert (=> b!6338722 (= e!3850358 tp!1767720)))

(declare-fun b!6338720 () Bool)

(assert (=> b!6338720 (= e!3850358 tp_is_empty!41731)))

(assert (= (and b!6337677 ((_ is ElementMatch!16239) (reg!16568 (regOne!32990 r!7292)))) b!6338720))

(assert (= (and b!6337677 ((_ is Concat!25084) (reg!16568 (regOne!32990 r!7292)))) b!6338721))

(assert (= (and b!6337677 ((_ is Star!16239) (reg!16568 (regOne!32990 r!7292)))) b!6338722))

(assert (= (and b!6337677 ((_ is Union!16239) (reg!16568 (regOne!32990 r!7292)))) b!6338723))

(declare-fun b!6338725 () Bool)

(declare-fun e!3850359 () Bool)

(declare-fun tp!1767728 () Bool)

(declare-fun tp!1767726 () Bool)

(assert (=> b!6338725 (= e!3850359 (and tp!1767728 tp!1767726))))

(assert (=> b!6337665 (= tp!1767649 e!3850359)))

(declare-fun b!6338727 () Bool)

(declare-fun tp!1767727 () Bool)

(declare-fun tp!1767724 () Bool)

(assert (=> b!6338727 (= e!3850359 (and tp!1767727 tp!1767724))))

(declare-fun b!6338726 () Bool)

(declare-fun tp!1767725 () Bool)

(assert (=> b!6338726 (= e!3850359 tp!1767725)))

(declare-fun b!6338724 () Bool)

(assert (=> b!6338724 (= e!3850359 tp_is_empty!41731)))

(assert (= (and b!6337665 ((_ is ElementMatch!16239) (h!71340 (exprs!6123 (h!71341 zl!343))))) b!6338724))

(assert (= (and b!6337665 ((_ is Concat!25084) (h!71340 (exprs!6123 (h!71341 zl!343))))) b!6338725))

(assert (= (and b!6337665 ((_ is Star!16239) (h!71340 (exprs!6123 (h!71341 zl!343))))) b!6338726))

(assert (= (and b!6337665 ((_ is Union!16239) (h!71340 (exprs!6123 (h!71341 zl!343))))) b!6338727))

(declare-fun b!6338728 () Bool)

(declare-fun e!3850360 () Bool)

(declare-fun tp!1767729 () Bool)

(declare-fun tp!1767730 () Bool)

(assert (=> b!6338728 (= e!3850360 (and tp!1767729 tp!1767730))))

(assert (=> b!6337665 (= tp!1767650 e!3850360)))

(assert (= (and b!6337665 ((_ is Cons!64892) (t!378600 (exprs!6123 (h!71341 zl!343))))) b!6338728))

(declare-fun b!6338730 () Bool)

(declare-fun e!3850361 () Bool)

(declare-fun tp!1767735 () Bool)

(declare-fun tp!1767733 () Bool)

(assert (=> b!6338730 (= e!3850361 (and tp!1767735 tp!1767733))))

(assert (=> b!6337676 (= tp!1767666 e!3850361)))

(declare-fun b!6338732 () Bool)

(declare-fun tp!1767734 () Bool)

(declare-fun tp!1767731 () Bool)

(assert (=> b!6338732 (= e!3850361 (and tp!1767734 tp!1767731))))

(declare-fun b!6338731 () Bool)

(declare-fun tp!1767732 () Bool)

(assert (=> b!6338731 (= e!3850361 tp!1767732)))

(declare-fun b!6338729 () Bool)

(assert (=> b!6338729 (= e!3850361 tp_is_empty!41731)))

(assert (= (and b!6337676 ((_ is ElementMatch!16239) (regOne!32990 (regOne!32990 r!7292)))) b!6338729))

(assert (= (and b!6337676 ((_ is Concat!25084) (regOne!32990 (regOne!32990 r!7292)))) b!6338730))

(assert (= (and b!6337676 ((_ is Star!16239) (regOne!32990 (regOne!32990 r!7292)))) b!6338731))

(assert (= (and b!6337676 ((_ is Union!16239) (regOne!32990 (regOne!32990 r!7292)))) b!6338732))

(declare-fun b!6338734 () Bool)

(declare-fun e!3850362 () Bool)

(declare-fun tp!1767740 () Bool)

(declare-fun tp!1767738 () Bool)

(assert (=> b!6338734 (= e!3850362 (and tp!1767740 tp!1767738))))

(assert (=> b!6337676 (= tp!1767664 e!3850362)))

(declare-fun b!6338736 () Bool)

(declare-fun tp!1767739 () Bool)

(declare-fun tp!1767736 () Bool)

(assert (=> b!6338736 (= e!3850362 (and tp!1767739 tp!1767736))))

(declare-fun b!6338735 () Bool)

(declare-fun tp!1767737 () Bool)

(assert (=> b!6338735 (= e!3850362 tp!1767737)))

(declare-fun b!6338733 () Bool)

(assert (=> b!6338733 (= e!3850362 tp_is_empty!41731)))

(assert (= (and b!6337676 ((_ is ElementMatch!16239) (regTwo!32990 (regOne!32990 r!7292)))) b!6338733))

(assert (= (and b!6337676 ((_ is Concat!25084) (regTwo!32990 (regOne!32990 r!7292)))) b!6338734))

(assert (= (and b!6337676 ((_ is Star!16239) (regTwo!32990 (regOne!32990 r!7292)))) b!6338735))

(assert (= (and b!6337676 ((_ is Union!16239) (regTwo!32990 (regOne!32990 r!7292)))) b!6338736))

(declare-fun b!6338738 () Bool)

(declare-fun e!3850363 () Bool)

(declare-fun tp!1767745 () Bool)

(declare-fun tp!1767743 () Bool)

(assert (=> b!6338738 (= e!3850363 (and tp!1767745 tp!1767743))))

(assert (=> b!6337649 (= tp!1767636 e!3850363)))

(declare-fun b!6338740 () Bool)

(declare-fun tp!1767744 () Bool)

(declare-fun tp!1767741 () Bool)

(assert (=> b!6338740 (= e!3850363 (and tp!1767744 tp!1767741))))

(declare-fun b!6338739 () Bool)

(declare-fun tp!1767742 () Bool)

(assert (=> b!6338739 (= e!3850363 tp!1767742)))

(declare-fun b!6338737 () Bool)

(assert (=> b!6338737 (= e!3850363 tp_is_empty!41731)))

(assert (= (and b!6337649 ((_ is ElementMatch!16239) (regOne!32990 (regTwo!32991 r!7292)))) b!6338737))

(assert (= (and b!6337649 ((_ is Concat!25084) (regOne!32990 (regTwo!32991 r!7292)))) b!6338738))

(assert (= (and b!6337649 ((_ is Star!16239) (regOne!32990 (regTwo!32991 r!7292)))) b!6338739))

(assert (= (and b!6337649 ((_ is Union!16239) (regOne!32990 (regTwo!32991 r!7292)))) b!6338740))

(declare-fun b!6338742 () Bool)

(declare-fun e!3850364 () Bool)

(declare-fun tp!1767750 () Bool)

(declare-fun tp!1767748 () Bool)

(assert (=> b!6338742 (= e!3850364 (and tp!1767750 tp!1767748))))

(assert (=> b!6337649 (= tp!1767634 e!3850364)))

(declare-fun b!6338744 () Bool)

(declare-fun tp!1767749 () Bool)

(declare-fun tp!1767746 () Bool)

(assert (=> b!6338744 (= e!3850364 (and tp!1767749 tp!1767746))))

(declare-fun b!6338743 () Bool)

(declare-fun tp!1767747 () Bool)

(assert (=> b!6338743 (= e!3850364 tp!1767747)))

(declare-fun b!6338741 () Bool)

(assert (=> b!6338741 (= e!3850364 tp_is_empty!41731)))

(assert (= (and b!6337649 ((_ is ElementMatch!16239) (regTwo!32990 (regTwo!32991 r!7292)))) b!6338741))

(assert (= (and b!6337649 ((_ is Concat!25084) (regTwo!32990 (regTwo!32991 r!7292)))) b!6338742))

(assert (= (and b!6337649 ((_ is Star!16239) (regTwo!32990 (regTwo!32991 r!7292)))) b!6338743))

(assert (= (and b!6337649 ((_ is Union!16239) (regTwo!32990 (regTwo!32991 r!7292)))) b!6338744))

(declare-fun b!6338746 () Bool)

(declare-fun e!3850365 () Bool)

(declare-fun tp!1767755 () Bool)

(declare-fun tp!1767753 () Bool)

(assert (=> b!6338746 (= e!3850365 (and tp!1767755 tp!1767753))))

(assert (=> b!6337650 (= tp!1767633 e!3850365)))

(declare-fun b!6338748 () Bool)

(declare-fun tp!1767754 () Bool)

(declare-fun tp!1767751 () Bool)

(assert (=> b!6338748 (= e!3850365 (and tp!1767754 tp!1767751))))

(declare-fun b!6338747 () Bool)

(declare-fun tp!1767752 () Bool)

(assert (=> b!6338747 (= e!3850365 tp!1767752)))

(declare-fun b!6338745 () Bool)

(assert (=> b!6338745 (= e!3850365 tp_is_empty!41731)))

(assert (= (and b!6337650 ((_ is ElementMatch!16239) (reg!16568 (regTwo!32991 r!7292)))) b!6338745))

(assert (= (and b!6337650 ((_ is Concat!25084) (reg!16568 (regTwo!32991 r!7292)))) b!6338746))

(assert (= (and b!6337650 ((_ is Star!16239) (reg!16568 (regTwo!32991 r!7292)))) b!6338747))

(assert (= (and b!6337650 ((_ is Union!16239) (reg!16568 (regTwo!32991 r!7292)))) b!6338748))

(declare-fun b!6338750 () Bool)

(declare-fun e!3850366 () Bool)

(declare-fun tp!1767760 () Bool)

(declare-fun tp!1767758 () Bool)

(assert (=> b!6338750 (= e!3850366 (and tp!1767760 tp!1767758))))

(assert (=> b!6337651 (= tp!1767635 e!3850366)))

(declare-fun b!6338752 () Bool)

(declare-fun tp!1767759 () Bool)

(declare-fun tp!1767756 () Bool)

(assert (=> b!6338752 (= e!3850366 (and tp!1767759 tp!1767756))))

(declare-fun b!6338751 () Bool)

(declare-fun tp!1767757 () Bool)

(assert (=> b!6338751 (= e!3850366 tp!1767757)))

(declare-fun b!6338749 () Bool)

(assert (=> b!6338749 (= e!3850366 tp_is_empty!41731)))

(assert (= (and b!6337651 ((_ is ElementMatch!16239) (regOne!32991 (regTwo!32991 r!7292)))) b!6338749))

(assert (= (and b!6337651 ((_ is Concat!25084) (regOne!32991 (regTwo!32991 r!7292)))) b!6338750))

(assert (= (and b!6337651 ((_ is Star!16239) (regOne!32991 (regTwo!32991 r!7292)))) b!6338751))

(assert (= (and b!6337651 ((_ is Union!16239) (regOne!32991 (regTwo!32991 r!7292)))) b!6338752))

(declare-fun b!6338754 () Bool)

(declare-fun e!3850367 () Bool)

(declare-fun tp!1767765 () Bool)

(declare-fun tp!1767763 () Bool)

(assert (=> b!6338754 (= e!3850367 (and tp!1767765 tp!1767763))))

(assert (=> b!6337651 (= tp!1767632 e!3850367)))

(declare-fun b!6338756 () Bool)

(declare-fun tp!1767764 () Bool)

(declare-fun tp!1767761 () Bool)

(assert (=> b!6338756 (= e!3850367 (and tp!1767764 tp!1767761))))

(declare-fun b!6338755 () Bool)

(declare-fun tp!1767762 () Bool)

(assert (=> b!6338755 (= e!3850367 tp!1767762)))

(declare-fun b!6338753 () Bool)

(assert (=> b!6338753 (= e!3850367 tp_is_empty!41731)))

(assert (= (and b!6337651 ((_ is ElementMatch!16239) (regTwo!32991 (regTwo!32991 r!7292)))) b!6338753))

(assert (= (and b!6337651 ((_ is Concat!25084) (regTwo!32991 (regTwo!32991 r!7292)))) b!6338754))

(assert (= (and b!6337651 ((_ is Star!16239) (regTwo!32991 (regTwo!32991 r!7292)))) b!6338755))

(assert (= (and b!6337651 ((_ is Union!16239) (regTwo!32991 (regTwo!32991 r!7292)))) b!6338756))

(declare-fun b!6338757 () Bool)

(declare-fun e!3850368 () Bool)

(declare-fun tp!1767766 () Bool)

(assert (=> b!6338757 (= e!3850368 (and tp_is_empty!41731 tp!1767766))))

(assert (=> b!6337687 (= tp!1767674 e!3850368)))

(assert (= (and b!6337687 ((_ is Cons!64894) (t!378602 (t!378602 s!2326)))) b!6338757))

(declare-fun b!6338759 () Bool)

(declare-fun e!3850369 () Bool)

(declare-fun tp!1767771 () Bool)

(declare-fun tp!1767769 () Bool)

(assert (=> b!6338759 (= e!3850369 (and tp!1767771 tp!1767769))))

(assert (=> b!6337664 (= tp!1767647 e!3850369)))

(declare-fun b!6338761 () Bool)

(declare-fun tp!1767770 () Bool)

(declare-fun tp!1767767 () Bool)

(assert (=> b!6338761 (= e!3850369 (and tp!1767770 tp!1767767))))

(declare-fun b!6338760 () Bool)

(declare-fun tp!1767768 () Bool)

(assert (=> b!6338760 (= e!3850369 tp!1767768)))

(declare-fun b!6338758 () Bool)

(assert (=> b!6338758 (= e!3850369 tp_is_empty!41731)))

(assert (= (and b!6337664 ((_ is ElementMatch!16239) (h!71340 (exprs!6123 setElem!43114)))) b!6338758))

(assert (= (and b!6337664 ((_ is Concat!25084) (h!71340 (exprs!6123 setElem!43114)))) b!6338759))

(assert (= (and b!6337664 ((_ is Star!16239) (h!71340 (exprs!6123 setElem!43114)))) b!6338760))

(assert (= (and b!6337664 ((_ is Union!16239) (h!71340 (exprs!6123 setElem!43114)))) b!6338761))

(declare-fun b!6338762 () Bool)

(declare-fun e!3850370 () Bool)

(declare-fun tp!1767772 () Bool)

(declare-fun tp!1767773 () Bool)

(assert (=> b!6338762 (= e!3850370 (and tp!1767772 tp!1767773))))

(assert (=> b!6337664 (= tp!1767648 e!3850370)))

(assert (= (and b!6337664 ((_ is Cons!64892) (t!378600 (exprs!6123 setElem!43114)))) b!6338762))

(declare-fun b!6338764 () Bool)

(declare-fun e!3850371 () Bool)

(declare-fun tp!1767778 () Bool)

(declare-fun tp!1767776 () Bool)

(assert (=> b!6338764 (= e!3850371 (and tp!1767778 tp!1767776))))

(assert (=> b!6337667 (= tp!1767655 e!3850371)))

(declare-fun b!6338766 () Bool)

(declare-fun tp!1767777 () Bool)

(declare-fun tp!1767774 () Bool)

(assert (=> b!6338766 (= e!3850371 (and tp!1767777 tp!1767774))))

(declare-fun b!6338765 () Bool)

(declare-fun tp!1767775 () Bool)

(assert (=> b!6338765 (= e!3850371 tp!1767775)))

(declare-fun b!6338763 () Bool)

(assert (=> b!6338763 (= e!3850371 tp_is_empty!41731)))

(assert (= (and b!6337667 ((_ is ElementMatch!16239) (regOne!32990 (reg!16568 r!7292)))) b!6338763))

(assert (= (and b!6337667 ((_ is Concat!25084) (regOne!32990 (reg!16568 r!7292)))) b!6338764))

(assert (= (and b!6337667 ((_ is Star!16239) (regOne!32990 (reg!16568 r!7292)))) b!6338765))

(assert (= (and b!6337667 ((_ is Union!16239) (regOne!32990 (reg!16568 r!7292)))) b!6338766))

(declare-fun b!6338768 () Bool)

(declare-fun e!3850372 () Bool)

(declare-fun tp!1767783 () Bool)

(declare-fun tp!1767781 () Bool)

(assert (=> b!6338768 (= e!3850372 (and tp!1767783 tp!1767781))))

(assert (=> b!6337667 (= tp!1767653 e!3850372)))

(declare-fun b!6338770 () Bool)

(declare-fun tp!1767782 () Bool)

(declare-fun tp!1767779 () Bool)

(assert (=> b!6338770 (= e!3850372 (and tp!1767782 tp!1767779))))

(declare-fun b!6338769 () Bool)

(declare-fun tp!1767780 () Bool)

(assert (=> b!6338769 (= e!3850372 tp!1767780)))

(declare-fun b!6338767 () Bool)

(assert (=> b!6338767 (= e!3850372 tp_is_empty!41731)))

(assert (= (and b!6337667 ((_ is ElementMatch!16239) (regTwo!32990 (reg!16568 r!7292)))) b!6338767))

(assert (= (and b!6337667 ((_ is Concat!25084) (regTwo!32990 (reg!16568 r!7292)))) b!6338768))

(assert (= (and b!6337667 ((_ is Star!16239) (regTwo!32990 (reg!16568 r!7292)))) b!6338769))

(assert (= (and b!6337667 ((_ is Union!16239) (regTwo!32990 (reg!16568 r!7292)))) b!6338770))

(declare-fun b!6338772 () Bool)

(declare-fun e!3850373 () Bool)

(declare-fun tp!1767788 () Bool)

(declare-fun tp!1767786 () Bool)

(assert (=> b!6338772 (= e!3850373 (and tp!1767788 tp!1767786))))

(assert (=> b!6337668 (= tp!1767652 e!3850373)))

(declare-fun b!6338774 () Bool)

(declare-fun tp!1767787 () Bool)

(declare-fun tp!1767784 () Bool)

(assert (=> b!6338774 (= e!3850373 (and tp!1767787 tp!1767784))))

(declare-fun b!6338773 () Bool)

(declare-fun tp!1767785 () Bool)

(assert (=> b!6338773 (= e!3850373 tp!1767785)))

(declare-fun b!6338771 () Bool)

(assert (=> b!6338771 (= e!3850373 tp_is_empty!41731)))

(assert (= (and b!6337668 ((_ is ElementMatch!16239) (reg!16568 (reg!16568 r!7292)))) b!6338771))

(assert (= (and b!6337668 ((_ is Concat!25084) (reg!16568 (reg!16568 r!7292)))) b!6338772))

(assert (= (and b!6337668 ((_ is Star!16239) (reg!16568 (reg!16568 r!7292)))) b!6338773))

(assert (= (and b!6337668 ((_ is Union!16239) (reg!16568 (reg!16568 r!7292)))) b!6338774))

(declare-fun b!6338776 () Bool)

(declare-fun e!3850374 () Bool)

(declare-fun tp!1767793 () Bool)

(declare-fun tp!1767791 () Bool)

(assert (=> b!6338776 (= e!3850374 (and tp!1767793 tp!1767791))))

(assert (=> b!6337682 (= tp!1767670 e!3850374)))

(declare-fun b!6338778 () Bool)

(declare-fun tp!1767792 () Bool)

(declare-fun tp!1767789 () Bool)

(assert (=> b!6338778 (= e!3850374 (and tp!1767792 tp!1767789))))

(declare-fun b!6338777 () Bool)

(declare-fun tp!1767790 () Bool)

(assert (=> b!6338777 (= e!3850374 tp!1767790)))

(declare-fun b!6338775 () Bool)

(assert (=> b!6338775 (= e!3850374 tp_is_empty!41731)))

(assert (= (and b!6337682 ((_ is ElementMatch!16239) (regOne!32991 (regTwo!32990 r!7292)))) b!6338775))

(assert (= (and b!6337682 ((_ is Concat!25084) (regOne!32991 (regTwo!32990 r!7292)))) b!6338776))

(assert (= (and b!6337682 ((_ is Star!16239) (regOne!32991 (regTwo!32990 r!7292)))) b!6338777))

(assert (= (and b!6337682 ((_ is Union!16239) (regOne!32991 (regTwo!32990 r!7292)))) b!6338778))

(declare-fun b!6338780 () Bool)

(declare-fun e!3850375 () Bool)

(declare-fun tp!1767798 () Bool)

(declare-fun tp!1767796 () Bool)

(assert (=> b!6338780 (= e!3850375 (and tp!1767798 tp!1767796))))

(assert (=> b!6337682 (= tp!1767667 e!3850375)))

(declare-fun b!6338782 () Bool)

(declare-fun tp!1767797 () Bool)

(declare-fun tp!1767794 () Bool)

(assert (=> b!6338782 (= e!3850375 (and tp!1767797 tp!1767794))))

(declare-fun b!6338781 () Bool)

(declare-fun tp!1767795 () Bool)

(assert (=> b!6338781 (= e!3850375 tp!1767795)))

(declare-fun b!6338779 () Bool)

(assert (=> b!6338779 (= e!3850375 tp_is_empty!41731)))

(assert (= (and b!6337682 ((_ is ElementMatch!16239) (regTwo!32991 (regTwo!32990 r!7292)))) b!6338779))

(assert (= (and b!6337682 ((_ is Concat!25084) (regTwo!32991 (regTwo!32990 r!7292)))) b!6338780))

(assert (= (and b!6337682 ((_ is Star!16239) (regTwo!32991 (regTwo!32990 r!7292)))) b!6338781))

(assert (= (and b!6337682 ((_ is Union!16239) (regTwo!32991 (regTwo!32990 r!7292)))) b!6338782))

(declare-fun b!6338784 () Bool)

(declare-fun e!3850376 () Bool)

(declare-fun tp!1767803 () Bool)

(declare-fun tp!1767801 () Bool)

(assert (=> b!6338784 (= e!3850376 (and tp!1767803 tp!1767801))))

(assert (=> b!6337669 (= tp!1767654 e!3850376)))

(declare-fun b!6338786 () Bool)

(declare-fun tp!1767802 () Bool)

(declare-fun tp!1767799 () Bool)

(assert (=> b!6338786 (= e!3850376 (and tp!1767802 tp!1767799))))

(declare-fun b!6338785 () Bool)

(declare-fun tp!1767800 () Bool)

(assert (=> b!6338785 (= e!3850376 tp!1767800)))

(declare-fun b!6338783 () Bool)

(assert (=> b!6338783 (= e!3850376 tp_is_empty!41731)))

(assert (= (and b!6337669 ((_ is ElementMatch!16239) (regOne!32991 (reg!16568 r!7292)))) b!6338783))

(assert (= (and b!6337669 ((_ is Concat!25084) (regOne!32991 (reg!16568 r!7292)))) b!6338784))

(assert (= (and b!6337669 ((_ is Star!16239) (regOne!32991 (reg!16568 r!7292)))) b!6338785))

(assert (= (and b!6337669 ((_ is Union!16239) (regOne!32991 (reg!16568 r!7292)))) b!6338786))

(declare-fun b!6338790 () Bool)

(declare-fun e!3850379 () Bool)

(declare-fun tp!1767808 () Bool)

(declare-fun tp!1767806 () Bool)

(assert (=> b!6338790 (= e!3850379 (and tp!1767808 tp!1767806))))

(assert (=> b!6337669 (= tp!1767651 e!3850379)))

(declare-fun b!6338792 () Bool)

(declare-fun tp!1767807 () Bool)

(declare-fun tp!1767804 () Bool)

(assert (=> b!6338792 (= e!3850379 (and tp!1767807 tp!1767804))))

(declare-fun b!6338791 () Bool)

(declare-fun tp!1767805 () Bool)

(assert (=> b!6338791 (= e!3850379 tp!1767805)))

(declare-fun b!6338789 () Bool)

(assert (=> b!6338789 (= e!3850379 tp_is_empty!41731)))

(assert (= (and b!6337669 ((_ is ElementMatch!16239) (regTwo!32991 (reg!16568 r!7292)))) b!6338789))

(assert (= (and b!6337669 ((_ is Concat!25084) (regTwo!32991 (reg!16568 r!7292)))) b!6338790))

(assert (= (and b!6337669 ((_ is Star!16239) (regTwo!32991 (reg!16568 r!7292)))) b!6338791))

(assert (= (and b!6337669 ((_ is Union!16239) (regTwo!32991 (reg!16568 r!7292)))) b!6338792))

(declare-fun b!6338793 () Bool)

(declare-fun e!3850380 () Bool)

(declare-fun tp!1767809 () Bool)

(declare-fun tp!1767810 () Bool)

(assert (=> b!6338793 (= e!3850380 (and tp!1767809 tp!1767810))))

(assert (=> b!6337674 (= tp!1767660 e!3850380)))

(assert (= (and b!6337674 ((_ is Cons!64892) (exprs!6123 setElem!43120))) b!6338793))

(declare-fun b!6338795 () Bool)

(declare-fun e!3850381 () Bool)

(declare-fun tp!1767815 () Bool)

(declare-fun tp!1767813 () Bool)

(assert (=> b!6338795 (= e!3850381 (and tp!1767815 tp!1767813))))

(assert (=> b!6337681 (= tp!1767668 e!3850381)))

(declare-fun b!6338797 () Bool)

(declare-fun tp!1767814 () Bool)

(declare-fun tp!1767811 () Bool)

(assert (=> b!6338797 (= e!3850381 (and tp!1767814 tp!1767811))))

(declare-fun b!6338796 () Bool)

(declare-fun tp!1767812 () Bool)

(assert (=> b!6338796 (= e!3850381 tp!1767812)))

(declare-fun b!6338794 () Bool)

(assert (=> b!6338794 (= e!3850381 tp_is_empty!41731)))

(assert (= (and b!6337681 ((_ is ElementMatch!16239) (reg!16568 (regTwo!32990 r!7292)))) b!6338794))

(assert (= (and b!6337681 ((_ is Concat!25084) (reg!16568 (regTwo!32990 r!7292)))) b!6338795))

(assert (= (and b!6337681 ((_ is Star!16239) (reg!16568 (regTwo!32990 r!7292)))) b!6338796))

(assert (= (and b!6337681 ((_ is Union!16239) (reg!16568 (regTwo!32990 r!7292)))) b!6338797))

(declare-fun condSetEmpty!43129 () Bool)

(assert (=> setNonEmpty!43120 (= condSetEmpty!43129 (= setRest!43120 ((as const (Array Context!11246 Bool)) false)))))

(declare-fun setRes!43129 () Bool)

(assert (=> setNonEmpty!43120 (= tp!1767661 setRes!43129)))

(declare-fun setIsEmpty!43129 () Bool)

(assert (=> setIsEmpty!43129 setRes!43129))

(declare-fun setElem!43129 () Context!11246)

(declare-fun setNonEmpty!43129 () Bool)

(declare-fun tp!1767817 () Bool)

(declare-fun e!3850382 () Bool)

(assert (=> setNonEmpty!43129 (= setRes!43129 (and tp!1767817 (inv!83844 setElem!43129) e!3850382))))

(declare-fun setRest!43129 () (InoxSet Context!11246))

(assert (=> setNonEmpty!43129 (= setRest!43120 ((_ map or) (store ((as const (Array Context!11246 Bool)) false) setElem!43129 true) setRest!43129))))

(declare-fun b!6338798 () Bool)

(declare-fun tp!1767816 () Bool)

(assert (=> b!6338798 (= e!3850382 tp!1767816)))

(assert (= (and setNonEmpty!43120 condSetEmpty!43129) setIsEmpty!43129))

(assert (= (and setNonEmpty!43120 (not condSetEmpty!43129)) setNonEmpty!43129))

(assert (= setNonEmpty!43129 b!6338798))

(declare-fun m!7147836 () Bool)

(assert (=> setNonEmpty!43129 m!7147836))

(declare-fun b!6338801 () Bool)

(declare-fun e!3850384 () Bool)

(declare-fun tp!1767822 () Bool)

(declare-fun tp!1767820 () Bool)

(assert (=> b!6338801 (= e!3850384 (and tp!1767822 tp!1767820))))

(assert (=> b!6337680 (= tp!1767671 e!3850384)))

(declare-fun b!6338803 () Bool)

(declare-fun tp!1767821 () Bool)

(declare-fun tp!1767818 () Bool)

(assert (=> b!6338803 (= e!3850384 (and tp!1767821 tp!1767818))))

(declare-fun b!6338802 () Bool)

(declare-fun tp!1767819 () Bool)

(assert (=> b!6338802 (= e!3850384 tp!1767819)))

(declare-fun b!6338800 () Bool)

(assert (=> b!6338800 (= e!3850384 tp_is_empty!41731)))

(assert (= (and b!6337680 ((_ is ElementMatch!16239) (regOne!32990 (regTwo!32990 r!7292)))) b!6338800))

(assert (= (and b!6337680 ((_ is Concat!25084) (regOne!32990 (regTwo!32990 r!7292)))) b!6338801))

(assert (= (and b!6337680 ((_ is Star!16239) (regOne!32990 (regTwo!32990 r!7292)))) b!6338802))

(assert (= (and b!6337680 ((_ is Union!16239) (regOne!32990 (regTwo!32990 r!7292)))) b!6338803))

(declare-fun b!6338805 () Bool)

(declare-fun e!3850385 () Bool)

(declare-fun tp!1767827 () Bool)

(declare-fun tp!1767825 () Bool)

(assert (=> b!6338805 (= e!3850385 (and tp!1767827 tp!1767825))))

(assert (=> b!6337680 (= tp!1767669 e!3850385)))

(declare-fun b!6338807 () Bool)

(declare-fun tp!1767826 () Bool)

(declare-fun tp!1767823 () Bool)

(assert (=> b!6338807 (= e!3850385 (and tp!1767826 tp!1767823))))

(declare-fun b!6338806 () Bool)

(declare-fun tp!1767824 () Bool)

(assert (=> b!6338806 (= e!3850385 tp!1767824)))

(declare-fun b!6338804 () Bool)

(assert (=> b!6338804 (= e!3850385 tp_is_empty!41731)))

(assert (= (and b!6337680 ((_ is ElementMatch!16239) (regTwo!32990 (regTwo!32990 r!7292)))) b!6338804))

(assert (= (and b!6337680 ((_ is Concat!25084) (regTwo!32990 (regTwo!32990 r!7292)))) b!6338805))

(assert (= (and b!6337680 ((_ is Star!16239) (regTwo!32990 (regTwo!32990 r!7292)))) b!6338806))

(assert (= (and b!6337680 ((_ is Union!16239) (regTwo!32990 (regTwo!32990 r!7292)))) b!6338807))

(declare-fun b!6338809 () Bool)

(declare-fun e!3850388 () Bool)

(declare-fun tp!1767832 () Bool)

(declare-fun tp!1767830 () Bool)

(assert (=> b!6338809 (= e!3850388 (and tp!1767832 tp!1767830))))

(assert (=> b!6337645 (= tp!1767631 e!3850388)))

(declare-fun b!6338811 () Bool)

(declare-fun tp!1767831 () Bool)

(declare-fun tp!1767828 () Bool)

(assert (=> b!6338811 (= e!3850388 (and tp!1767831 tp!1767828))))

(declare-fun b!6338810 () Bool)

(declare-fun tp!1767829 () Bool)

(assert (=> b!6338810 (= e!3850388 tp!1767829)))

(declare-fun b!6338808 () Bool)

(assert (=> b!6338808 (= e!3850388 tp_is_empty!41731)))

(assert (= (and b!6337645 ((_ is ElementMatch!16239) (regOne!32990 (regOne!32991 r!7292)))) b!6338808))

(assert (= (and b!6337645 ((_ is Concat!25084) (regOne!32990 (regOne!32991 r!7292)))) b!6338809))

(assert (= (and b!6337645 ((_ is Star!16239) (regOne!32990 (regOne!32991 r!7292)))) b!6338810))

(assert (= (and b!6337645 ((_ is Union!16239) (regOne!32990 (regOne!32991 r!7292)))) b!6338811))

(declare-fun b!6338820 () Bool)

(declare-fun e!3850393 () Bool)

(declare-fun tp!1767837 () Bool)

(declare-fun tp!1767835 () Bool)

(assert (=> b!6338820 (= e!3850393 (and tp!1767837 tp!1767835))))

(assert (=> b!6337645 (= tp!1767629 e!3850393)))

(declare-fun b!6338822 () Bool)

(declare-fun tp!1767836 () Bool)

(declare-fun tp!1767833 () Bool)

(assert (=> b!6338822 (= e!3850393 (and tp!1767836 tp!1767833))))

(declare-fun b!6338821 () Bool)

(declare-fun tp!1767834 () Bool)

(assert (=> b!6338821 (= e!3850393 tp!1767834)))

(declare-fun b!6338819 () Bool)

(assert (=> b!6338819 (= e!3850393 tp_is_empty!41731)))

(assert (= (and b!6337645 ((_ is ElementMatch!16239) (regTwo!32990 (regOne!32991 r!7292)))) b!6338819))

(assert (= (and b!6337645 ((_ is Concat!25084) (regTwo!32990 (regOne!32991 r!7292)))) b!6338820))

(assert (= (and b!6337645 ((_ is Star!16239) (regTwo!32990 (regOne!32991 r!7292)))) b!6338821))

(assert (= (and b!6337645 ((_ is Union!16239) (regTwo!32990 (regOne!32991 r!7292)))) b!6338822))

(declare-fun b!6338824 () Bool)

(declare-fun e!3850394 () Bool)

(declare-fun tp!1767842 () Bool)

(declare-fun tp!1767840 () Bool)

(assert (=> b!6338824 (= e!3850394 (and tp!1767842 tp!1767840))))

(assert (=> b!6337646 (= tp!1767628 e!3850394)))

(declare-fun b!6338826 () Bool)

(declare-fun tp!1767841 () Bool)

(declare-fun tp!1767838 () Bool)

(assert (=> b!6338826 (= e!3850394 (and tp!1767841 tp!1767838))))

(declare-fun b!6338825 () Bool)

(declare-fun tp!1767839 () Bool)

(assert (=> b!6338825 (= e!3850394 tp!1767839)))

(declare-fun b!6338823 () Bool)

(assert (=> b!6338823 (= e!3850394 tp_is_empty!41731)))

(assert (= (and b!6337646 ((_ is ElementMatch!16239) (reg!16568 (regOne!32991 r!7292)))) b!6338823))

(assert (= (and b!6337646 ((_ is Concat!25084) (reg!16568 (regOne!32991 r!7292)))) b!6338824))

(assert (= (and b!6337646 ((_ is Star!16239) (reg!16568 (regOne!32991 r!7292)))) b!6338825))

(assert (= (and b!6337646 ((_ is Union!16239) (reg!16568 (regOne!32991 r!7292)))) b!6338826))

(declare-fun b!6338828 () Bool)

(declare-fun e!3850395 () Bool)

(declare-fun tp!1767847 () Bool)

(declare-fun tp!1767845 () Bool)

(assert (=> b!6338828 (= e!3850395 (and tp!1767847 tp!1767845))))

(assert (=> b!6337647 (= tp!1767630 e!3850395)))

(declare-fun b!6338830 () Bool)

(declare-fun tp!1767846 () Bool)

(declare-fun tp!1767843 () Bool)

(assert (=> b!6338830 (= e!3850395 (and tp!1767846 tp!1767843))))

(declare-fun b!6338829 () Bool)

(declare-fun tp!1767844 () Bool)

(assert (=> b!6338829 (= e!3850395 tp!1767844)))

(declare-fun b!6338827 () Bool)

(assert (=> b!6338827 (= e!3850395 tp_is_empty!41731)))

(assert (= (and b!6337647 ((_ is ElementMatch!16239) (regOne!32991 (regOne!32991 r!7292)))) b!6338827))

(assert (= (and b!6337647 ((_ is Concat!25084) (regOne!32991 (regOne!32991 r!7292)))) b!6338828))

(assert (= (and b!6337647 ((_ is Star!16239) (regOne!32991 (regOne!32991 r!7292)))) b!6338829))

(assert (= (and b!6337647 ((_ is Union!16239) (regOne!32991 (regOne!32991 r!7292)))) b!6338830))

(declare-fun b!6338832 () Bool)

(declare-fun e!3850396 () Bool)

(declare-fun tp!1767852 () Bool)

(declare-fun tp!1767850 () Bool)

(assert (=> b!6338832 (= e!3850396 (and tp!1767852 tp!1767850))))

(assert (=> b!6337647 (= tp!1767627 e!3850396)))

(declare-fun b!6338834 () Bool)

(declare-fun tp!1767851 () Bool)

(declare-fun tp!1767848 () Bool)

(assert (=> b!6338834 (= e!3850396 (and tp!1767851 tp!1767848))))

(declare-fun b!6338833 () Bool)

(declare-fun tp!1767849 () Bool)

(assert (=> b!6338833 (= e!3850396 tp!1767849)))

(declare-fun b!6338831 () Bool)

(assert (=> b!6338831 (= e!3850396 tp_is_empty!41731)))

(assert (= (and b!6337647 ((_ is ElementMatch!16239) (regTwo!32991 (regOne!32991 r!7292)))) b!6338831))

(assert (= (and b!6337647 ((_ is Concat!25084) (regTwo!32991 (regOne!32991 r!7292)))) b!6338832))

(assert (= (and b!6337647 ((_ is Star!16239) (regTwo!32991 (regOne!32991 r!7292)))) b!6338833))

(assert (= (and b!6337647 ((_ is Union!16239) (regTwo!32991 (regOne!32991 r!7292)))) b!6338834))

(declare-fun b_lambda!241219 () Bool)

(assert (= b_lambda!241193 (or d!1989029 b_lambda!241219)))

(declare-fun bs!1587290 () Bool)

(declare-fun d!1989665 () Bool)

(assert (= bs!1587290 (and d!1989665 d!1989029)))

(assert (=> bs!1587290 (= (dynLambda!25716 lambda!348004 (h!71340 (exprs!6123 (h!71341 zl!343)))) (validRegex!7975 (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(declare-fun m!7147844 () Bool)

(assert (=> bs!1587290 m!7147844))

(assert (=> b!6337984 d!1989665))

(declare-fun b_lambda!241221 () Bool)

(assert (= b_lambda!241209 (or d!1988975 b_lambda!241221)))

(declare-fun bs!1587293 () Bool)

(declare-fun d!1989667 () Bool)

(assert (= bs!1587293 (and d!1989667 d!1988975)))

(assert (=> bs!1587293 (= (dynLambda!25716 lambda!347980 (h!71340 lt!2361557)) (validRegex!7975 (h!71340 lt!2361557)))))

(declare-fun m!7147846 () Bool)

(assert (=> bs!1587293 m!7147846))

(assert (=> b!6338406 d!1989667))

(declare-fun b_lambda!241223 () Bool)

(assert (= b_lambda!241181 (or b!6336821 b_lambda!241223)))

(assert (=> d!1989153 d!1989151))

(declare-fun b_lambda!241225 () Bool)

(assert (= b_lambda!241207 (or b!6336821 b_lambda!241225)))

(assert (=> d!1989501 d!1989149))

(declare-fun b_lambda!241227 () Bool)

(assert (= b_lambda!241187 (or d!1989111 b_lambda!241227)))

(declare-fun bs!1587296 () Bool)

(declare-fun d!1989669 () Bool)

(assert (= bs!1587296 (and d!1989669 d!1989111)))

(assert (=> bs!1587296 (= (dynLambda!25716 lambda!348027 (h!71340 (exprs!6123 (h!71341 zl!343)))) (validRegex!7975 (h!71340 (exprs!6123 (h!71341 zl!343)))))))

(assert (=> bs!1587296 m!7147844))

(assert (=> b!6337740 d!1989669))

(declare-fun b_lambda!241229 () Bool)

(assert (= b_lambda!241183 (or d!1989147 b_lambda!241229)))

(declare-fun bs!1587299 () Bool)

(declare-fun d!1989671 () Bool)

(assert (= bs!1587299 (and d!1989671 d!1989147)))

(assert (=> bs!1587299 (= (dynLambda!25716 lambda!348047 (h!71340 lt!2361718)) (validRegex!7975 (h!71340 lt!2361718)))))

(declare-fun m!7147848 () Bool)

(assert (=> bs!1587299 m!7147848))

(assert (=> b!6337692 d!1989671))

(declare-fun b_lambda!241231 () Bool)

(assert (= b_lambda!241185 (or d!1989143 b_lambda!241231)))

(declare-fun bs!1587301 () Bool)

(declare-fun d!1989673 () Bool)

(assert (= bs!1587301 (and d!1989673 d!1989143)))

(assert (=> bs!1587301 (= (dynLambda!25716 lambda!348041 (h!71340 (exprs!6123 setElem!43114))) (validRegex!7975 (h!71340 (exprs!6123 setElem!43114))))))

(declare-fun m!7147850 () Bool)

(assert (=> bs!1587301 m!7147850))

(assert (=> b!6337729 d!1989673))

(declare-fun b_lambda!241233 () Bool)

(assert (= b_lambda!241213 (or b!6337137 b_lambda!241233)))

(declare-fun bs!1587303 () Bool)

(declare-fun d!1989675 () Bool)

(assert (= bs!1587303 (and d!1989675 b!6337137)))

(assert (=> bs!1587303 (= (dynLambda!25720 lambda!347993 (h!71341 (t!378601 zl!343))) (>= lt!2361627 (contextDepth!237 (h!71341 (t!378601 zl!343)))))))

(assert (=> bs!1587303 m!7147730))

(assert (=> b!6338637 d!1989675))

(declare-fun b_lambda!241235 () Bool)

(assert (= b_lambda!241203 (or b!6337114 b_lambda!241235)))

(declare-fun bs!1587305 () Bool)

(declare-fun d!1989677 () Bool)

(assert (= bs!1587305 (and d!1989677 b!6337114)))

(assert (=> bs!1587305 (= (dynLambda!25720 lambda!347991 (h!71341 lt!2361561)) (>= lt!2361618 (contextDepth!237 (h!71341 lt!2361561))))))

(assert (=> bs!1587305 m!7146274))

(assert (=> b!6338289 d!1989677))

(declare-fun b_lambda!241237 () Bool)

(assert (= b_lambda!241197 (or b!6337139 b_lambda!241237)))

(declare-fun bs!1587306 () Bool)

(declare-fun d!1989679 () Bool)

(assert (= bs!1587306 (and d!1989679 b!6337139)))

(assert (=> bs!1587306 (= (dynLambda!25720 lambda!347994 (h!71341 zl!343)) (>= lt!2361624 (contextDepth!237 (h!71341 zl!343))))))

(assert (=> bs!1587306 m!7146286))

(assert (=> b!6338131 d!1989679))

(declare-fun b_lambda!241239 () Bool)

(assert (= b_lambda!241191 (or b!6337112 b_lambda!241239)))

(declare-fun bs!1587307 () Bool)

(declare-fun d!1989681 () Bool)

(assert (= bs!1587307 (and d!1989681 b!6337112)))

(assert (=> bs!1587307 (= (dynLambda!25720 lambda!347990 (h!71341 (t!378601 lt!2361561))) (>= lt!2361621 (contextDepth!237 (h!71341 (t!378601 lt!2361561)))))))

(assert (=> bs!1587307 m!7146916))

(assert (=> b!6337877 d!1989681))

(declare-fun b_lambda!241241 () Bool)

(assert (= b_lambda!241217 (or d!1989145 b_lambda!241241)))

(declare-fun bs!1587308 () Bool)

(declare-fun d!1989683 () Bool)

(assert (= bs!1587308 (and d!1989683 d!1989145)))

(assert (=> bs!1587308 (= (dynLambda!25716 lambda!348044 (h!71340 (unfocusZipperList!1660 zl!343))) (validRegex!7975 (h!71340 (unfocusZipperList!1660 zl!343))))))

(declare-fun m!7147852 () Bool)

(assert (=> bs!1587308 m!7147852))

(assert (=> b!6338685 d!1989683))

(check-sat (not b!6338728) (not bm!540068) (not bm!540134) (not b!6338764) (not b!6338793) (not b!6338721) (not d!1989587) (not bm!540190) (not b!6338090) (not b!6338270) (not b!6338772) (not b!6338355) (not bm!539962) (not d!1989487) (not b!6338757) (not d!1989239) (not b!6338247) (not d!1989371) (not b!6338255) (not b!6338208) (not b!6338593) (not b!6338333) (not b!6338801) (not b!6337711) (not b_lambda!241229) (not b!6338760) (not bm!540008) (not b!6338822) (not b!6338770) (not bm!540106) (not bm!540023) (not b!6338391) (not b_lambda!241241) (not b!6338290) (not b!6337693) (not b!6338168) (not d!1989561) (not setNonEmpty!43128) (not bs!1587305) (not d!1989319) (not b!6338766) (not b!6337730) (not b!6338805) (not b!6338093) (not b!6338829) (not b!6337724) (not b!6338217) (not bm!539981) (not d!1989467) (not b!6338791) (not b!6338797) (not b!6338014) (not b!6338393) tp_is_empty!41731 (not b!6337708) (not b_lambda!241227) (not b!6338431) (not b!6337735) (not bm!540104) (not b!6338820) (not b!6338824) (not b!6338024) (not bm!540025) (not bm!540130) (not b!6338742) (not b!6338339) (not d!1989617) (not bm!540095) (not bm!540079) (not bm!539972) (not b!6338509) (not d!1989433) (not b_lambda!241179) (not d!1989177) (not bm!540069) (not b!6337859) (not b!6338401) (not b!6338686) (not b!6338512) (not b_lambda!241237) (not b!6337712) (not b!6338784) (not b!6338762) (not d!1989509) (not b!6337775) (not d!1989575) (not b!6338561) (not bm!540150) (not d!1989501) (not d!1989227) (not b!6338084) (not b!6338425) (not b!6338777) (not b!6337982) (not b!6338806) (not bm!539970) (not b!6338795) (not b!6338595) (not bs!1587301) (not b!6338773) (not b!6338128) (not b!6338735) (not b!6338755) (not b!6337947) (not d!1989291) (not bm!540108) (not b!6338337) (not d!1989649) (not bm!540188) (not b!6338754) (not b!6338277) (not b!6338711) (not b!6338010) (not bm!540065) (not bm!540132) (not b!6338394) (not b!6338562) (not b!6338098) (not bm!539998) (not b!6338364) (not bs!1587308) (not bs!1587290) (not bm!540053) (not b!6338725) (not b!6338809) (not b!6338166) (not d!1989159) (not b!6338568) (not bs!1587303) (not b!6338294) (not bm!540138) (not bm!540022) (not bm!540147) (not b!6338657) (not d!1989289) (not d!1989311) (not bm!540043) (not d!1989513) (not b!6338715) (not b!6338008) (not bm!540046) (not bm!540093) (not b!6338746) (not bm!539999) (not b!6338004) (not b!6338730) (not d!1989399) (not b!6338396) (not b!6338253) (not b!6338748) (not b!6338198) (not d!1989205) (not d!1989359) (not b!6338833) (not b_lambda!241221) (not b!6338003) (not b!6338680) (not bm!539993) (not b!6338710) (not bm!540177) (not b!6338560) (not b_lambda!241225) (not bm!540081) (not b_lambda!241239) (not b!6338001) (not b!6338707) (not b!6338282) (not b!6337704) (not b!6338292) (not b!6338761) (not b!6338507) (not b!6338717) (not bs!1587307) (not bm!539963) (not b!6338832) (not setNonEmpty!43129) (not bm!540029) (not b!6337698) (not b!6338395) (not b!6337719) (not b!6337945) (not b!6338427) (not d!1989375) (not b!6338756) (not b!6337919) (not b!6337748) (not b!6338759) (not b!6338569) (not b!6338083) (not b!6338782) (not d!1989209) (not b!6337713) (not bm!540174) (not b!6337973) (not d!1989317) (not d!1989553) (not b!6338830) (not d!1989367) (not b!6338216) (not b!6338137) (not bm!540026) (not b!6338332) (not bm!540059) (not b!6338273) (not b!6338750) (not bm!540062) (not d!1989207) (not b!6338132) (not b!6338765) (not b!6338785) (not d!1989303) (not b!6338278) (not b!6338354) (not bm!539978) (not b!6338625) (not b!6337857) (not b!6338744) (not bm!539969) (not d!1989519) (not b!6338736) (not b!6338134) (not bm!540107) (not b!6338175) (not b!6338743) (not b!6338828) (not b!6338492) (not b!6338790) (not b!6338734) (not b!6337981) (not bm!539982) (not b!6337728) (not b!6338740) (not d!1989485) (not d!1989403) (not b!6338781) (not b!6338087) (not b!6337816) (not b!6338709) (not b!6338589) (not d!1989351) (not d!1989191) (not b!6337751) (not d!1989377) (not b!6338516) (not b!6338275) (not b!6337707) (not b!6338565) (not b!6338407) (not b!6337940) (not b!6338769) (not setNonEmpty!43123) (not bm!540153) (not b!6338135) (not b!6338739) (not b_lambda!241233) (not b!6338774) (not b!6338719) (not b!6337878) (not b!6338778) (not b!6338723) (not b!6337985) (not b!6338097) (not bm!540151) (not b!6338807) (not b!6338825) (not b!6337743) (not b!6338330) (not b!6338497) (not b!6337750) (not b!6337705) (not b!6338142) (not b!6338028) (not b!6338171) (not bm!540061) (not b!6338731) (not b!6337703) (not b!6338248) (not b!6337983) (not b!6338358) (not d!1989653) (not b!6338803) (not b!6338585) (not bm!540176) (not b!6338834) (not b!6338623) (not d!1989153) (not b!6338752) (not b!6338747) (not d!1989571) (not d!1989499) (not b_lambda!241223) (not d!1989203) (not bm!540157) (not b!6338792) (not d!1989449) (not b!6338564) (not d!1989505) (not bm!540129) (not b!6338811) (not bm!539976) (not b!6338250) (not d!1989373) (not bm!540189) (not b_lambda!241235) (not b!6338256) (not d!1989623) (not b!6338590) (not bm!539960) (not b_lambda!241219) (not b!6338706) (not b!6338705) (not b!6337755) (not b!6338092) (not bm!539965) (not b!6338576) (not b!6338328) (not b_lambda!241177) (not b!6338638) (not b!6338426) (not b!6338511) (not d!1989495) (not b!6338023) (not b!6338022) (not b!6338826) (not b!6337745) (not bm!539967) (not bs!1587296) (not bm!540186) (not b!6338695) (not b!6338768) (not b!6338284) (not b!6337741) (not bm!539991) (not b_lambda!241231) (not b!6338291) (not b!6337742) (not b!6338732) (not b!6338726) (not b!6338094) (not b!6337974) (not d!1989523) (not b!6338254) (not b!6338357) (not d!1989525) (not b!6338821) (not bm!540091) (not bm!539973) (not d!1989491) (not b!6338727) (not d!1989339) (not bm!540135) (not d!1989161) (not b!6338518) (not b!6338810) (not b!6338293) (not b!6338551) (not bm!540154) (not d!1989365) (not b!6338170) (not b!6338392) (not b!6338177) (not b!6338802) (not b!6337999) (not b!6338031) (not bm!540113) (not b!6338780) (not b!6338751) (not b!6338796) (not d!1989349) (not d!1989387) (not b!6337917) (not bm!539966) (not d!1989563) (not bs!1587299) (not bm!540064) (not b!6338776) (not d!1989469) (not b!6338088) (not b!6337767) (not b!6338722) (not bm!540010) (not bs!1587293) (not d!1989567) (not b!6337948) (not d!1989185) (not b!6337749) (not bm!540080) (not bm!540045) (not b!6338798) (not bm!539979) (not b!6338786) (not bs!1587306) (not b!6338738))
(check-sat)
