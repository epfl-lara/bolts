; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!634046 () Bool)

(assert start!634046)

(declare-fun b!6416311 () Bool)

(assert (=> b!6416311 true))

(assert (=> b!6416311 true))

(declare-fun lambda!354302 () Int)

(declare-fun lambda!354301 () Int)

(assert (=> b!6416311 (not (= lambda!354302 lambda!354301))))

(assert (=> b!6416311 true))

(assert (=> b!6416311 true))

(declare-fun b!6416288 () Bool)

(assert (=> b!6416288 true))

(declare-fun bs!1613609 () Bool)

(declare-fun b!6416313 () Bool)

(assert (= bs!1613609 (and b!6416313 b!6416311)))

(declare-datatypes ((C!32904 0))(
  ( (C!32905 (val!26154 Int)) )
))
(declare-datatypes ((Regex!16317 0))(
  ( (ElementMatch!16317 (c!1171938 C!32904)) (Concat!25162 (regOne!33146 Regex!16317) (regTwo!33146 Regex!16317)) (EmptyExpr!16317) (Star!16317 (reg!16646 Regex!16317)) (EmptyLang!16317) (Union!16317 (regOne!33147 Regex!16317) (regTwo!33147 Regex!16317)) )
))
(declare-fun r!7292 () Regex!16317)

(declare-fun lt!2375781 () Regex!16317)

(declare-fun lambda!354304 () Int)

(assert (=> bs!1613609 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354304 lambda!354301))))

(assert (=> bs!1613609 (not (= lambda!354304 lambda!354302))))

(assert (=> b!6416313 true))

(assert (=> b!6416313 true))

(assert (=> b!6416313 true))

(declare-fun lambda!354305 () Int)

(assert (=> bs!1613609 (not (= lambda!354305 lambda!354301))))

(assert (=> bs!1613609 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354305 lambda!354302))))

(assert (=> b!6416313 (not (= lambda!354305 lambda!354304))))

(assert (=> b!6416313 true))

(assert (=> b!6416313 true))

(assert (=> b!6416313 true))

(declare-fun b!6416278 () Bool)

(declare-fun e!3893292 () Bool)

(declare-fun e!3893295 () Bool)

(assert (=> b!6416278 (= e!3893292 (not e!3893295))))

(declare-fun res!2636923 () Bool)

(assert (=> b!6416278 (=> res!2636923 e!3893295)))

(declare-datatypes ((List!65250 0))(
  ( (Nil!65126) (Cons!65126 (h!71574 Regex!16317) (t!378864 List!65250)) )
))
(declare-datatypes ((Context!11402 0))(
  ( (Context!11403 (exprs!6201 List!65250)) )
))
(declare-datatypes ((List!65251 0))(
  ( (Nil!65127) (Cons!65127 (h!71575 Context!11402) (t!378865 List!65251)) )
))
(declare-fun zl!343 () List!65251)

(get-info :version)

(assert (=> b!6416278 (= res!2636923 (not ((_ is Cons!65127) zl!343)))))

(declare-fun lt!2375776 () Bool)

(declare-fun lt!2375779 () Bool)

(assert (=> b!6416278 (= lt!2375776 lt!2375779)))

(declare-datatypes ((List!65252 0))(
  ( (Nil!65128) (Cons!65128 (h!71576 C!32904) (t!378866 List!65252)) )
))
(declare-fun s!2326 () List!65252)

(declare-fun matchRSpec!3418 (Regex!16317 List!65252) Bool)

(assert (=> b!6416278 (= lt!2375779 (matchRSpec!3418 r!7292 s!2326))))

(declare-fun matchR!8500 (Regex!16317 List!65252) Bool)

(assert (=> b!6416278 (= lt!2375776 (matchR!8500 r!7292 s!2326))))

(declare-datatypes ((Unit!158599 0))(
  ( (Unit!158600) )
))
(declare-fun lt!2375784 () Unit!158599)

(declare-fun mainMatchTheorem!3418 (Regex!16317 List!65252) Unit!158599)

(assert (=> b!6416278 (= lt!2375784 (mainMatchTheorem!3418 r!7292 s!2326))))

(declare-fun b!6416279 () Bool)

(declare-fun e!3893302 () Unit!158599)

(declare-fun Unit!158601 () Unit!158599)

(assert (=> b!6416279 (= e!3893302 Unit!158601)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2375761 () (InoxSet Context!11402))

(declare-fun lt!2375758 () Unit!158599)

(declare-fun lt!2375763 () (InoxSet Context!11402))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1148 ((InoxSet Context!11402) (InoxSet Context!11402) List!65252) Unit!158599)

(assert (=> b!6416279 (= lt!2375758 (lemmaZipperConcatMatchesSameAsBothZippers!1148 lt!2375763 lt!2375761 (t!378866 s!2326)))))

(declare-fun res!2636935 () Bool)

(declare-fun matchZipper!2329 ((InoxSet Context!11402) List!65252) Bool)

(assert (=> b!6416279 (= res!2636935 (matchZipper!2329 lt!2375763 (t!378866 s!2326)))))

(declare-fun e!3893300 () Bool)

(assert (=> b!6416279 (=> res!2636935 e!3893300)))

(assert (=> b!6416279 (= (matchZipper!2329 ((_ map or) lt!2375763 lt!2375761) (t!378866 s!2326)) e!3893300)))

(declare-fun b!6416280 () Bool)

(declare-fun res!2636918 () Bool)

(assert (=> b!6416280 (=> res!2636918 e!3893295)))

(assert (=> b!6416280 (= res!2636918 (not ((_ is Cons!65126) (exprs!6201 (h!71575 zl!343)))))))

(declare-fun b!6416281 () Bool)

(declare-fun e!3893298 () Bool)

(declare-fun tp!1782211 () Bool)

(declare-fun tp!1782205 () Bool)

(assert (=> b!6416281 (= e!3893298 (and tp!1782211 tp!1782205))))

(declare-fun b!6416282 () Bool)

(declare-fun e!3893303 () Bool)

(declare-fun e!3893287 () Bool)

(assert (=> b!6416282 (= e!3893303 e!3893287)))

(declare-fun res!2636937 () Bool)

(assert (=> b!6416282 (=> res!2636937 e!3893287)))

(declare-fun lt!2375751 () Context!11402)

(declare-fun lt!2375756 () Regex!16317)

(declare-fun unfocusZipper!2059 (List!65251) Regex!16317)

(assert (=> b!6416282 (= res!2636937 (not (= (unfocusZipper!2059 (Cons!65127 lt!2375751 Nil!65127)) lt!2375756)))))

(declare-fun lt!2375773 () Regex!16317)

(assert (=> b!6416282 (= lt!2375756 (Concat!25162 (reg!16646 (regOne!33146 r!7292)) lt!2375773))))

(declare-fun b!6416283 () Bool)

(declare-fun res!2636928 () Bool)

(declare-fun e!3893286 () Bool)

(assert (=> b!6416283 (=> res!2636928 e!3893286)))

(declare-fun isEmpty!37276 (List!65250) Bool)

(assert (=> b!6416283 (= res!2636928 (isEmpty!37276 (t!378864 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun b!6416284 () Bool)

(declare-fun e!3893299 () Bool)

(declare-fun nullable!6310 (Regex!16317) Bool)

(assert (=> b!6416284 (= e!3893299 (nullable!6310 (regOne!33146 (regOne!33146 r!7292))))))

(declare-fun b!6416285 () Bool)

(declare-fun e!3893288 () Bool)

(declare-fun tp!1782210 () Bool)

(assert (=> b!6416285 (= e!3893288 tp!1782210)))

(declare-fun b!6416286 () Bool)

(declare-fun e!3893297 () Bool)

(assert (=> b!6416286 (= e!3893297 e!3893303)))

(declare-fun res!2636912 () Bool)

(assert (=> b!6416286 (=> res!2636912 e!3893303)))

(assert (=> b!6416286 (= res!2636912 (not (= r!7292 lt!2375773)))))

(assert (=> b!6416286 (= lt!2375773 (Concat!25162 lt!2375781 (regTwo!33146 r!7292)))))

(declare-fun b!6416287 () Bool)

(declare-fun tp!1782209 () Bool)

(declare-fun tp!1782213 () Bool)

(assert (=> b!6416287 (= e!3893298 (and tp!1782209 tp!1782213))))

(declare-fun e!3893306 () Bool)

(assert (=> b!6416288 (= e!3893286 e!3893306)))

(declare-fun res!2636920 () Bool)

(assert (=> b!6416288 (=> res!2636920 e!3893306)))

(assert (=> b!6416288 (= res!2636920 (or (and ((_ is ElementMatch!16317) (regOne!33146 r!7292)) (= (c!1171938 (regOne!33146 r!7292)) (h!71576 s!2326))) ((_ is Union!16317) (regOne!33146 r!7292))))))

(declare-fun lt!2375778 () Unit!158599)

(assert (=> b!6416288 (= lt!2375778 e!3893302)))

(declare-fun c!1171937 () Bool)

(assert (=> b!6416288 (= c!1171937 (nullable!6310 (h!71574 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11402))

(declare-fun lambda!354303 () Int)

(declare-fun flatMap!1822 ((InoxSet Context!11402) Int) (InoxSet Context!11402))

(declare-fun derivationStepZipperUp!1491 (Context!11402 C!32904) (InoxSet Context!11402))

(assert (=> b!6416288 (= (flatMap!1822 z!1189 lambda!354303) (derivationStepZipperUp!1491 (h!71575 zl!343) (h!71576 s!2326)))))

(declare-fun lt!2375764 () Unit!158599)

(declare-fun lemmaFlatMapOnSingletonSet!1348 ((InoxSet Context!11402) Context!11402 Int) Unit!158599)

(assert (=> b!6416288 (= lt!2375764 (lemmaFlatMapOnSingletonSet!1348 z!1189 (h!71575 zl!343) lambda!354303))))

(declare-fun lt!2375765 () Context!11402)

(assert (=> b!6416288 (= lt!2375761 (derivationStepZipperUp!1491 lt!2375765 (h!71576 s!2326)))))

(declare-fun derivationStepZipperDown!1565 (Regex!16317 Context!11402 C!32904) (InoxSet Context!11402))

(assert (=> b!6416288 (= lt!2375763 (derivationStepZipperDown!1565 (h!71574 (exprs!6201 (h!71575 zl!343))) lt!2375765 (h!71576 s!2326)))))

(assert (=> b!6416288 (= lt!2375765 (Context!11403 (t!378864 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun lt!2375759 () (InoxSet Context!11402))

(assert (=> b!6416288 (= lt!2375759 (derivationStepZipperUp!1491 (Context!11403 (Cons!65126 (h!71574 (exprs!6201 (h!71575 zl!343))) (t!378864 (exprs!6201 (h!71575 zl!343))))) (h!71576 s!2326)))))

(declare-fun b!6416290 () Bool)

(declare-fun res!2636916 () Bool)

(assert (=> b!6416290 (=> res!2636916 e!3893297)))

(declare-fun lt!2375774 () Regex!16317)

(assert (=> b!6416290 (= res!2636916 (not (= lt!2375774 r!7292)))))

(declare-fun b!6416291 () Bool)

(declare-fun e!3893289 () Bool)

(assert (=> b!6416291 (= e!3893289 (or (not lt!2375776) lt!2375779))))

(declare-fun b!6416292 () Bool)

(declare-fun e!3893291 () Bool)

(assert (=> b!6416292 (= e!3893291 e!3893297)))

(declare-fun res!2636917 () Bool)

(assert (=> b!6416292 (=> res!2636917 e!3893297)))

(declare-fun lt!2375752 () (InoxSet Context!11402))

(declare-fun lt!2375753 () (InoxSet Context!11402))

(assert (=> b!6416292 (= res!2636917 (not (= lt!2375752 lt!2375753)))))

(declare-fun lt!2375757 () (InoxSet Context!11402))

(assert (=> b!6416292 (= (flatMap!1822 lt!2375757 lambda!354303) (derivationStepZipperUp!1491 lt!2375751 (h!71576 s!2326)))))

(declare-fun lt!2375767 () Unit!158599)

(assert (=> b!6416292 (= lt!2375767 (lemmaFlatMapOnSingletonSet!1348 lt!2375757 lt!2375751 lambda!354303))))

(declare-fun lt!2375755 () (InoxSet Context!11402))

(assert (=> b!6416292 (= lt!2375755 (derivationStepZipperUp!1491 lt!2375751 (h!71576 s!2326)))))

(declare-fun derivationStepZipper!2283 ((InoxSet Context!11402) C!32904) (InoxSet Context!11402))

(assert (=> b!6416292 (= lt!2375752 (derivationStepZipper!2283 lt!2375757 (h!71576 s!2326)))))

(assert (=> b!6416292 (= lt!2375757 (store ((as const (Array Context!11402 Bool)) false) lt!2375751 true))))

(declare-fun lt!2375769 () List!65250)

(assert (=> b!6416292 (= lt!2375751 (Context!11403 (Cons!65126 (reg!16646 (regOne!33146 r!7292)) lt!2375769)))))

(declare-fun b!6416293 () Bool)

(declare-fun e!3893301 () Bool)

(assert (=> b!6416293 (= e!3893301 e!3893292)))

(declare-fun res!2636936 () Bool)

(assert (=> b!6416293 (=> (not res!2636936) (not e!3893292))))

(assert (=> b!6416293 (= res!2636936 (= r!7292 lt!2375774))))

(assert (=> b!6416293 (= lt!2375774 (unfocusZipper!2059 zl!343))))

(declare-fun b!6416294 () Bool)

(declare-fun res!2636909 () Bool)

(assert (=> b!6416294 (=> res!2636909 e!3893306)))

(assert (=> b!6416294 (= res!2636909 e!3893299)))

(declare-fun res!2636911 () Bool)

(assert (=> b!6416294 (=> (not res!2636911) (not e!3893299))))

(assert (=> b!6416294 (= res!2636911 ((_ is Concat!25162) (regOne!33146 r!7292)))))

(declare-fun b!6416295 () Bool)

(declare-fun e!3893294 () Bool)

(declare-fun validRegex!8053 (Regex!16317) Bool)

(assert (=> b!6416295 (= e!3893294 (validRegex!8053 lt!2375781))))

(declare-fun b!6416296 () Bool)

(declare-fun res!2636910 () Bool)

(assert (=> b!6416296 (=> res!2636910 e!3893295)))

(assert (=> b!6416296 (= res!2636910 (or ((_ is EmptyExpr!16317) r!7292) ((_ is EmptyLang!16317) r!7292) ((_ is ElementMatch!16317) r!7292) ((_ is Union!16317) r!7292) (not ((_ is Concat!25162) r!7292))))))

(declare-fun b!6416297 () Bool)

(declare-fun res!2636933 () Bool)

(assert (=> b!6416297 (=> res!2636933 e!3893295)))

(declare-fun generalisedUnion!2161 (List!65250) Regex!16317)

(declare-fun unfocusZipperList!1738 (List!65251) List!65250)

(assert (=> b!6416297 (= res!2636933 (not (= r!7292 (generalisedUnion!2161 (unfocusZipperList!1738 zl!343)))))))

(declare-fun b!6416298 () Bool)

(declare-fun e!3893293 () Bool)

(assert (=> b!6416298 (= e!3893287 e!3893293)))

(declare-fun res!2636932 () Bool)

(assert (=> b!6416298 (=> res!2636932 e!3893293)))

(declare-fun lt!2375772 () Context!11402)

(assert (=> b!6416298 (= res!2636932 (not (= (unfocusZipper!2059 (Cons!65127 lt!2375772 Nil!65127)) (reg!16646 (regOne!33146 r!7292)))))))

(declare-fun lt!2375766 () Context!11402)

(declare-fun lt!2375771 () (InoxSet Context!11402))

(assert (=> b!6416298 (= (flatMap!1822 lt!2375771 lambda!354303) (derivationStepZipperUp!1491 lt!2375766 (h!71576 s!2326)))))

(declare-fun lt!2375783 () Unit!158599)

(assert (=> b!6416298 (= lt!2375783 (lemmaFlatMapOnSingletonSet!1348 lt!2375771 lt!2375766 lambda!354303))))

(declare-fun lt!2375777 () (InoxSet Context!11402))

(assert (=> b!6416298 (= (flatMap!1822 lt!2375777 lambda!354303) (derivationStepZipperUp!1491 lt!2375772 (h!71576 s!2326)))))

(declare-fun lt!2375748 () Unit!158599)

(assert (=> b!6416298 (= lt!2375748 (lemmaFlatMapOnSingletonSet!1348 lt!2375777 lt!2375772 lambda!354303))))

(declare-fun lt!2375770 () (InoxSet Context!11402))

(assert (=> b!6416298 (= lt!2375770 (derivationStepZipperUp!1491 lt!2375766 (h!71576 s!2326)))))

(declare-fun lt!2375760 () (InoxSet Context!11402))

(assert (=> b!6416298 (= lt!2375760 (derivationStepZipperUp!1491 lt!2375772 (h!71576 s!2326)))))

(assert (=> b!6416298 (= lt!2375771 (store ((as const (Array Context!11402 Bool)) false) lt!2375766 true))))

(assert (=> b!6416298 (= lt!2375777 (store ((as const (Array Context!11402 Bool)) false) lt!2375772 true))))

(assert (=> b!6416298 (= lt!2375772 (Context!11403 (Cons!65126 (reg!16646 (regOne!33146 r!7292)) Nil!65126)))))

(declare-fun b!6416299 () Bool)

(declare-fun e!3893304 () Bool)

(declare-fun e!3893290 () Bool)

(declare-fun tp!1782212 () Bool)

(declare-fun inv!84039 (Context!11402) Bool)

(assert (=> b!6416299 (= e!3893304 (and (inv!84039 (h!71575 zl!343)) e!3893290 tp!1782212))))

(declare-fun b!6416300 () Bool)

(declare-fun res!2636934 () Bool)

(assert (=> b!6416300 (=> res!2636934 e!3893294)))

(declare-datatypes ((tuple2!66592 0))(
  ( (tuple2!66593 (_1!36599 List!65252) (_2!36599 List!65252)) )
))
(declare-fun lt!2375768 () tuple2!66592)

(assert (=> b!6416300 (= res!2636934 (not (matchR!8500 lt!2375781 (_1!36599 lt!2375768))))))

(declare-fun b!6416301 () Bool)

(assert (=> b!6416301 (= e!3893306 e!3893291)))

(declare-fun res!2636925 () Bool)

(assert (=> b!6416301 (=> res!2636925 e!3893291)))

(assert (=> b!6416301 (= res!2636925 (not (= lt!2375763 lt!2375753)))))

(assert (=> b!6416301 (= lt!2375753 (derivationStepZipperDown!1565 (reg!16646 (regOne!33146 r!7292)) lt!2375766 (h!71576 s!2326)))))

(assert (=> b!6416301 (= lt!2375766 (Context!11403 lt!2375769))))

(assert (=> b!6416301 (= lt!2375769 (Cons!65126 lt!2375781 (t!378864 (exprs!6201 (h!71575 zl!343)))))))

(assert (=> b!6416301 (= lt!2375781 (Star!16317 (reg!16646 (regOne!33146 r!7292))))))

(declare-fun b!6416302 () Bool)

(declare-fun res!2636914 () Bool)

(assert (=> b!6416302 (=> res!2636914 e!3893294)))

(declare-fun isEmpty!37277 (List!65252) Bool)

(assert (=> b!6416302 (= res!2636914 (isEmpty!37277 (_1!36599 lt!2375768)))))

(declare-fun b!6416303 () Bool)

(declare-fun tp!1782207 () Bool)

(assert (=> b!6416303 (= e!3893298 tp!1782207)))

(declare-fun b!6416304 () Bool)

(declare-fun res!2636919 () Bool)

(assert (=> b!6416304 (=> res!2636919 e!3893306)))

(assert (=> b!6416304 (= res!2636919 (or ((_ is Concat!25162) (regOne!33146 r!7292)) (not ((_ is Star!16317) (regOne!33146 r!7292)))))))

(declare-fun b!6416305 () Bool)

(declare-fun tp!1782208 () Bool)

(assert (=> b!6416305 (= e!3893290 tp!1782208)))

(declare-fun b!6416306 () Bool)

(declare-fun e!3893305 () Bool)

(assert (=> b!6416306 (= e!3893293 e!3893305)))

(declare-fun res!2636924 () Bool)

(assert (=> b!6416306 (=> res!2636924 e!3893305)))

(assert (=> b!6416306 (= res!2636924 (not lt!2375776))))

(assert (=> b!6416306 e!3893289))

(declare-fun res!2636915 () Bool)

(assert (=> b!6416306 (=> (not res!2636915) (not e!3893289))))

(assert (=> b!6416306 (= res!2636915 (= (matchR!8500 lt!2375756 s!2326) (matchRSpec!3418 lt!2375756 s!2326)))))

(declare-fun lt!2375749 () Unit!158599)

(assert (=> b!6416306 (= lt!2375749 (mainMatchTheorem!3418 lt!2375756 s!2326))))

(declare-fun b!6416307 () Bool)

(declare-fun Unit!158602 () Unit!158599)

(assert (=> b!6416307 (= e!3893302 Unit!158602)))

(declare-fun b!6416308 () Bool)

(declare-fun res!2636922 () Bool)

(assert (=> b!6416308 (=> res!2636922 e!3893295)))

(declare-fun isEmpty!37278 (List!65251) Bool)

(assert (=> b!6416308 (= res!2636922 (not (isEmpty!37278 (t!378865 zl!343))))))

(declare-fun b!6416309 () Bool)

(declare-fun e!3893296 () Bool)

(declare-fun tp_is_empty!41887 () Bool)

(declare-fun tp!1782214 () Bool)

(assert (=> b!6416309 (= e!3893296 (and tp_is_empty!41887 tp!1782214))))

(declare-fun b!6416310 () Bool)

(declare-fun res!2636913 () Bool)

(assert (=> b!6416310 (=> res!2636913 e!3893293)))

(assert (=> b!6416310 (= res!2636913 (not (= (unfocusZipper!2059 (Cons!65127 lt!2375766 Nil!65127)) lt!2375773)))))

(declare-fun setNonEmpty!43786 () Bool)

(declare-fun tp!1782206 () Bool)

(declare-fun setRes!43786 () Bool)

(declare-fun setElem!43786 () Context!11402)

(assert (=> setNonEmpty!43786 (= setRes!43786 (and tp!1782206 (inv!84039 setElem!43786) e!3893288))))

(declare-fun setRest!43786 () (InoxSet Context!11402))

(assert (=> setNonEmpty!43786 (= z!1189 ((_ map or) (store ((as const (Array Context!11402 Bool)) false) setElem!43786 true) setRest!43786))))

(assert (=> b!6416311 (= e!3893295 e!3893286)))

(declare-fun res!2636931 () Bool)

(assert (=> b!6416311 (=> res!2636931 e!3893286)))

(declare-fun lt!2375780 () Bool)

(assert (=> b!6416311 (= res!2636931 (or (not (= lt!2375776 lt!2375780)) ((_ is Nil!65128) s!2326)))))

(declare-fun Exists!3387 (Int) Bool)

(assert (=> b!6416311 (= (Exists!3387 lambda!354301) (Exists!3387 lambda!354302))))

(declare-fun lt!2375762 () Unit!158599)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1924 (Regex!16317 Regex!16317 List!65252) Unit!158599)

(assert (=> b!6416311 (= lt!2375762 (lemmaExistCutMatchRandMatchRSpecEquivalent!1924 (regOne!33146 r!7292) (regTwo!33146 r!7292) s!2326))))

(assert (=> b!6416311 (= lt!2375780 (Exists!3387 lambda!354301))))

(declare-datatypes ((Option!16208 0))(
  ( (None!16207) (Some!16207 (v!52380 tuple2!66592)) )
))
(declare-fun isDefined!12911 (Option!16208) Bool)

(declare-fun findConcatSeparation!2622 (Regex!16317 Regex!16317 List!65252 List!65252 List!65252) Option!16208)

(assert (=> b!6416311 (= lt!2375780 (isDefined!12911 (findConcatSeparation!2622 (regOne!33146 r!7292) (regTwo!33146 r!7292) Nil!65128 s!2326 s!2326)))))

(declare-fun lt!2375754 () Unit!158599)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2386 (Regex!16317 Regex!16317 List!65252) Unit!158599)

(assert (=> b!6416311 (= lt!2375754 (lemmaFindConcatSeparationEquivalentToExists!2386 (regOne!33146 r!7292) (regTwo!33146 r!7292) s!2326))))

(declare-fun res!2636930 () Bool)

(assert (=> start!634046 (=> (not res!2636930) (not e!3893301))))

(assert (=> start!634046 (= res!2636930 (validRegex!8053 r!7292))))

(assert (=> start!634046 e!3893301))

(assert (=> start!634046 e!3893298))

(declare-fun condSetEmpty!43786 () Bool)

(assert (=> start!634046 (= condSetEmpty!43786 (= z!1189 ((as const (Array Context!11402 Bool)) false)))))

(assert (=> start!634046 setRes!43786))

(assert (=> start!634046 e!3893304))

(assert (=> start!634046 e!3893296))

(declare-fun b!6416289 () Bool)

(assert (=> b!6416289 (= e!3893298 tp_is_empty!41887)))

(declare-fun b!6416312 () Bool)

(declare-fun res!2636921 () Bool)

(assert (=> b!6416312 (=> res!2636921 e!3893297)))

(assert (=> b!6416312 (= res!2636921 (not (= (matchZipper!2329 lt!2375757 s!2326) (matchZipper!2329 lt!2375752 (t!378866 s!2326)))))))

(assert (=> b!6416313 (= e!3893305 e!3893294)))

(declare-fun res!2636929 () Bool)

(assert (=> b!6416313 (=> res!2636929 e!3893294)))

(declare-fun ++!14385 (List!65252 List!65252) List!65252)

(assert (=> b!6416313 (= res!2636929 (not (= (++!14385 (_1!36599 lt!2375768) (_2!36599 lt!2375768)) s!2326)))))

(declare-fun lt!2375775 () Option!16208)

(declare-fun get!22559 (Option!16208) tuple2!66592)

(assert (=> b!6416313 (= lt!2375768 (get!22559 lt!2375775))))

(assert (=> b!6416313 (= (Exists!3387 lambda!354304) (Exists!3387 lambda!354305))))

(declare-fun lt!2375750 () Unit!158599)

(assert (=> b!6416313 (= lt!2375750 (lemmaExistCutMatchRandMatchRSpecEquivalent!1924 lt!2375781 (regTwo!33146 r!7292) s!2326))))

(assert (=> b!6416313 (= (isDefined!12911 lt!2375775) (Exists!3387 lambda!354304))))

(assert (=> b!6416313 (= lt!2375775 (findConcatSeparation!2622 lt!2375781 (regTwo!33146 r!7292) Nil!65128 s!2326 s!2326))))

(declare-fun lt!2375782 () Unit!158599)

(assert (=> b!6416313 (= lt!2375782 (lemmaFindConcatSeparationEquivalentToExists!2386 lt!2375781 (regTwo!33146 r!7292) s!2326))))

(declare-fun setIsEmpty!43786 () Bool)

(assert (=> setIsEmpty!43786 setRes!43786))

(declare-fun b!6416314 () Bool)

(assert (=> b!6416314 (= e!3893300 (matchZipper!2329 lt!2375761 (t!378866 s!2326)))))

(declare-fun b!6416315 () Bool)

(declare-fun res!2636927 () Bool)

(assert (=> b!6416315 (=> res!2636927 e!3893295)))

(declare-fun generalisedConcat!1914 (List!65250) Regex!16317)

(assert (=> b!6416315 (= res!2636927 (not (= r!7292 (generalisedConcat!1914 (exprs!6201 (h!71575 zl!343))))))))

(declare-fun b!6416316 () Bool)

(declare-fun res!2636926 () Bool)

(assert (=> b!6416316 (=> res!2636926 e!3893294)))

(assert (=> b!6416316 (= res!2636926 (not (matchR!8500 (regTwo!33146 r!7292) (_2!36599 lt!2375768))))))

(declare-fun b!6416317 () Bool)

(declare-fun res!2636938 () Bool)

(assert (=> b!6416317 (=> (not res!2636938) (not e!3893301))))

(declare-fun toList!10101 ((InoxSet Context!11402)) List!65251)

(assert (=> b!6416317 (= res!2636938 (= (toList!10101 z!1189) zl!343))))

(assert (= (and start!634046 res!2636930) b!6416317))

(assert (= (and b!6416317 res!2636938) b!6416293))

(assert (= (and b!6416293 res!2636936) b!6416278))

(assert (= (and b!6416278 (not res!2636923)) b!6416308))

(assert (= (and b!6416308 (not res!2636922)) b!6416315))

(assert (= (and b!6416315 (not res!2636927)) b!6416280))

(assert (= (and b!6416280 (not res!2636918)) b!6416297))

(assert (= (and b!6416297 (not res!2636933)) b!6416296))

(assert (= (and b!6416296 (not res!2636910)) b!6416311))

(assert (= (and b!6416311 (not res!2636931)) b!6416283))

(assert (= (and b!6416283 (not res!2636928)) b!6416288))

(assert (= (and b!6416288 c!1171937) b!6416279))

(assert (= (and b!6416288 (not c!1171937)) b!6416307))

(assert (= (and b!6416279 (not res!2636935)) b!6416314))

(assert (= (and b!6416288 (not res!2636920)) b!6416294))

(assert (= (and b!6416294 res!2636911) b!6416284))

(assert (= (and b!6416294 (not res!2636909)) b!6416304))

(assert (= (and b!6416304 (not res!2636919)) b!6416301))

(assert (= (and b!6416301 (not res!2636925)) b!6416292))

(assert (= (and b!6416292 (not res!2636917)) b!6416312))

(assert (= (and b!6416312 (not res!2636921)) b!6416290))

(assert (= (and b!6416290 (not res!2636916)) b!6416286))

(assert (= (and b!6416286 (not res!2636912)) b!6416282))

(assert (= (and b!6416282 (not res!2636937)) b!6416298))

(assert (= (and b!6416298 (not res!2636932)) b!6416310))

(assert (= (and b!6416310 (not res!2636913)) b!6416306))

(assert (= (and b!6416306 res!2636915) b!6416291))

(assert (= (and b!6416306 (not res!2636924)) b!6416313))

(assert (= (and b!6416313 (not res!2636929)) b!6416300))

(assert (= (and b!6416300 (not res!2636934)) b!6416316))

(assert (= (and b!6416316 (not res!2636926)) b!6416302))

(assert (= (and b!6416302 (not res!2636914)) b!6416295))

(assert (= (and start!634046 ((_ is ElementMatch!16317) r!7292)) b!6416289))

(assert (= (and start!634046 ((_ is Concat!25162) r!7292)) b!6416281))

(assert (= (and start!634046 ((_ is Star!16317) r!7292)) b!6416303))

(assert (= (and start!634046 ((_ is Union!16317) r!7292)) b!6416287))

(assert (= (and start!634046 condSetEmpty!43786) setIsEmpty!43786))

(assert (= (and start!634046 (not condSetEmpty!43786)) setNonEmpty!43786))

(assert (= setNonEmpty!43786 b!6416285))

(assert (= b!6416299 b!6416305))

(assert (= (and start!634046 ((_ is Cons!65127) zl!343)) b!6416299))

(assert (= (and start!634046 ((_ is Cons!65128) s!2326)) b!6416309))

(declare-fun m!7211650 () Bool)

(assert (=> b!6416317 m!7211650))

(declare-fun m!7211652 () Bool)

(assert (=> b!6416308 m!7211652))

(declare-fun m!7211654 () Bool)

(assert (=> b!6416302 m!7211654))

(declare-fun m!7211656 () Bool)

(assert (=> b!6416310 m!7211656))

(declare-fun m!7211658 () Bool)

(assert (=> b!6416298 m!7211658))

(declare-fun m!7211660 () Bool)

(assert (=> b!6416298 m!7211660))

(declare-fun m!7211662 () Bool)

(assert (=> b!6416298 m!7211662))

(declare-fun m!7211664 () Bool)

(assert (=> b!6416298 m!7211664))

(declare-fun m!7211666 () Bool)

(assert (=> b!6416298 m!7211666))

(declare-fun m!7211668 () Bool)

(assert (=> b!6416298 m!7211668))

(declare-fun m!7211670 () Bool)

(assert (=> b!6416298 m!7211670))

(declare-fun m!7211672 () Bool)

(assert (=> b!6416298 m!7211672))

(declare-fun m!7211674 () Bool)

(assert (=> b!6416298 m!7211674))

(declare-fun m!7211676 () Bool)

(assert (=> start!634046 m!7211676))

(declare-fun m!7211678 () Bool)

(assert (=> b!6416279 m!7211678))

(declare-fun m!7211680 () Bool)

(assert (=> b!6416279 m!7211680))

(declare-fun m!7211682 () Bool)

(assert (=> b!6416279 m!7211682))

(declare-fun m!7211684 () Bool)

(assert (=> b!6416284 m!7211684))

(declare-fun m!7211686 () Bool)

(assert (=> b!6416315 m!7211686))

(declare-fun m!7211688 () Bool)

(assert (=> b!6416283 m!7211688))

(declare-fun m!7211690 () Bool)

(assert (=> b!6416299 m!7211690))

(declare-fun m!7211692 () Bool)

(assert (=> b!6416288 m!7211692))

(declare-fun m!7211694 () Bool)

(assert (=> b!6416288 m!7211694))

(declare-fun m!7211696 () Bool)

(assert (=> b!6416288 m!7211696))

(declare-fun m!7211698 () Bool)

(assert (=> b!6416288 m!7211698))

(declare-fun m!7211700 () Bool)

(assert (=> b!6416288 m!7211700))

(declare-fun m!7211702 () Bool)

(assert (=> b!6416288 m!7211702))

(declare-fun m!7211704 () Bool)

(assert (=> b!6416288 m!7211704))

(declare-fun m!7211706 () Bool)

(assert (=> b!6416306 m!7211706))

(declare-fun m!7211708 () Bool)

(assert (=> b!6416306 m!7211708))

(declare-fun m!7211710 () Bool)

(assert (=> b!6416306 m!7211710))

(declare-fun m!7211712 () Bool)

(assert (=> b!6416278 m!7211712))

(declare-fun m!7211714 () Bool)

(assert (=> b!6416278 m!7211714))

(declare-fun m!7211716 () Bool)

(assert (=> b!6416278 m!7211716))

(declare-fun m!7211718 () Bool)

(assert (=> b!6416293 m!7211718))

(declare-fun m!7211720 () Bool)

(assert (=> b!6416313 m!7211720))

(declare-fun m!7211722 () Bool)

(assert (=> b!6416313 m!7211722))

(declare-fun m!7211724 () Bool)

(assert (=> b!6416313 m!7211724))

(declare-fun m!7211726 () Bool)

(assert (=> b!6416313 m!7211726))

(declare-fun m!7211728 () Bool)

(assert (=> b!6416313 m!7211728))

(declare-fun m!7211730 () Bool)

(assert (=> b!6416313 m!7211730))

(assert (=> b!6416313 m!7211724))

(declare-fun m!7211732 () Bool)

(assert (=> b!6416313 m!7211732))

(declare-fun m!7211734 () Bool)

(assert (=> b!6416313 m!7211734))

(declare-fun m!7211736 () Bool)

(assert (=> b!6416282 m!7211736))

(declare-fun m!7211738 () Bool)

(assert (=> b!6416312 m!7211738))

(declare-fun m!7211740 () Bool)

(assert (=> b!6416312 m!7211740))

(declare-fun m!7211742 () Bool)

(assert (=> setNonEmpty!43786 m!7211742))

(declare-fun m!7211744 () Bool)

(assert (=> b!6416311 m!7211744))

(declare-fun m!7211746 () Bool)

(assert (=> b!6416311 m!7211746))

(declare-fun m!7211748 () Bool)

(assert (=> b!6416311 m!7211748))

(assert (=> b!6416311 m!7211744))

(declare-fun m!7211750 () Bool)

(assert (=> b!6416311 m!7211750))

(declare-fun m!7211752 () Bool)

(assert (=> b!6416311 m!7211752))

(assert (=> b!6416311 m!7211750))

(declare-fun m!7211754 () Bool)

(assert (=> b!6416311 m!7211754))

(declare-fun m!7211756 () Bool)

(assert (=> b!6416316 m!7211756))

(declare-fun m!7211758 () Bool)

(assert (=> b!6416292 m!7211758))

(declare-fun m!7211760 () Bool)

(assert (=> b!6416292 m!7211760))

(declare-fun m!7211762 () Bool)

(assert (=> b!6416292 m!7211762))

(declare-fun m!7211764 () Bool)

(assert (=> b!6416292 m!7211764))

(declare-fun m!7211766 () Bool)

(assert (=> b!6416292 m!7211766))

(declare-fun m!7211768 () Bool)

(assert (=> b!6416297 m!7211768))

(assert (=> b!6416297 m!7211768))

(declare-fun m!7211770 () Bool)

(assert (=> b!6416297 m!7211770))

(declare-fun m!7211772 () Bool)

(assert (=> b!6416314 m!7211772))

(declare-fun m!7211774 () Bool)

(assert (=> b!6416301 m!7211774))

(declare-fun m!7211776 () Bool)

(assert (=> b!6416300 m!7211776))

(declare-fun m!7211778 () Bool)

(assert (=> b!6416295 m!7211778))

(check-sat (not b!6416310) (not b!6416309) (not b!6416284) (not b!6416311) (not b!6416293) (not b!6416313) (not start!634046) (not b!6416303) (not b!6416315) (not b!6416279) (not b!6416317) (not b!6416285) (not b!6416306) (not b!6416292) (not b!6416312) (not b!6416299) (not b!6416295) (not setNonEmpty!43786) (not b!6416316) (not b!6416282) (not b!6416298) tp_is_empty!41887 (not b!6416314) (not b!6416302) (not b!6416297) (not b!6416283) (not b!6416281) (not b!6416278) (not b!6416301) (not b!6416300) (not b!6416308) (not b!6416287) (not b!6416288) (not b!6416305))
(check-sat)
(get-model)

(declare-fun d!2012122 () Bool)

(declare-fun choose!47652 (Int) Bool)

(assert (=> d!2012122 (= (Exists!3387 lambda!354302) (choose!47652 lambda!354302))))

(declare-fun bs!1613618 () Bool)

(assert (= bs!1613618 d!2012122))

(declare-fun m!7211854 () Bool)

(assert (=> bs!1613618 m!7211854))

(assert (=> b!6416311 d!2012122))

(declare-fun d!2012126 () Bool)

(declare-fun e!3893468 () Bool)

(assert (=> d!2012126 e!3893468))

(declare-fun res!2637062 () Bool)

(assert (=> d!2012126 (=> res!2637062 e!3893468)))

(declare-fun e!3893464 () Bool)

(assert (=> d!2012126 (= res!2637062 e!3893464)))

(declare-fun res!2637061 () Bool)

(assert (=> d!2012126 (=> (not res!2637061) (not e!3893464))))

(declare-fun lt!2375824 () Option!16208)

(assert (=> d!2012126 (= res!2637061 (isDefined!12911 lt!2375824))))

(declare-fun e!3893467 () Option!16208)

(assert (=> d!2012126 (= lt!2375824 e!3893467)))

(declare-fun c!1172013 () Bool)

(declare-fun e!3893465 () Bool)

(assert (=> d!2012126 (= c!1172013 e!3893465)))

(declare-fun res!2637064 () Bool)

(assert (=> d!2012126 (=> (not res!2637064) (not e!3893465))))

(assert (=> d!2012126 (= res!2637064 (matchR!8500 (regOne!33146 r!7292) Nil!65128))))

(assert (=> d!2012126 (validRegex!8053 (regOne!33146 r!7292))))

(assert (=> d!2012126 (= (findConcatSeparation!2622 (regOne!33146 r!7292) (regTwo!33146 r!7292) Nil!65128 s!2326 s!2326) lt!2375824)))

(declare-fun b!6416593 () Bool)

(assert (=> b!6416593 (= e!3893465 (matchR!8500 (regTwo!33146 r!7292) s!2326))))

(declare-fun b!6416594 () Bool)

(assert (=> b!6416594 (= e!3893468 (not (isDefined!12911 lt!2375824)))))

(declare-fun b!6416595 () Bool)

(assert (=> b!6416595 (= e!3893467 (Some!16207 (tuple2!66593 Nil!65128 s!2326)))))

(declare-fun b!6416596 () Bool)

(declare-fun lt!2375826 () Unit!158599)

(declare-fun lt!2375825 () Unit!158599)

(assert (=> b!6416596 (= lt!2375826 lt!2375825)))

(assert (=> b!6416596 (= (++!14385 (++!14385 Nil!65128 (Cons!65128 (h!71576 s!2326) Nil!65128)) (t!378866 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2479 (List!65252 C!32904 List!65252 List!65252) Unit!158599)

(assert (=> b!6416596 (= lt!2375825 (lemmaMoveElementToOtherListKeepsConcatEq!2479 Nil!65128 (h!71576 s!2326) (t!378866 s!2326) s!2326))))

(declare-fun e!3893466 () Option!16208)

(assert (=> b!6416596 (= e!3893466 (findConcatSeparation!2622 (regOne!33146 r!7292) (regTwo!33146 r!7292) (++!14385 Nil!65128 (Cons!65128 (h!71576 s!2326) Nil!65128)) (t!378866 s!2326) s!2326))))

(declare-fun b!6416597 () Bool)

(declare-fun res!2637060 () Bool)

(assert (=> b!6416597 (=> (not res!2637060) (not e!3893464))))

(assert (=> b!6416597 (= res!2637060 (matchR!8500 (regTwo!33146 r!7292) (_2!36599 (get!22559 lt!2375824))))))

(declare-fun b!6416598 () Bool)

(assert (=> b!6416598 (= e!3893467 e!3893466)))

(declare-fun c!1172014 () Bool)

(assert (=> b!6416598 (= c!1172014 ((_ is Nil!65128) s!2326))))

(declare-fun b!6416599 () Bool)

(assert (=> b!6416599 (= e!3893466 None!16207)))

(declare-fun b!6416600 () Bool)

(assert (=> b!6416600 (= e!3893464 (= (++!14385 (_1!36599 (get!22559 lt!2375824)) (_2!36599 (get!22559 lt!2375824))) s!2326))))

(declare-fun b!6416601 () Bool)

(declare-fun res!2637063 () Bool)

(assert (=> b!6416601 (=> (not res!2637063) (not e!3893464))))

(assert (=> b!6416601 (= res!2637063 (matchR!8500 (regOne!33146 r!7292) (_1!36599 (get!22559 lt!2375824))))))

(assert (= (and d!2012126 res!2637064) b!6416593))

(assert (= (and d!2012126 c!1172013) b!6416595))

(assert (= (and d!2012126 (not c!1172013)) b!6416598))

(assert (= (and b!6416598 c!1172014) b!6416599))

(assert (= (and b!6416598 (not c!1172014)) b!6416596))

(assert (= (and d!2012126 res!2637061) b!6416601))

(assert (= (and b!6416601 res!2637063) b!6416597))

(assert (= (and b!6416597 res!2637060) b!6416600))

(assert (= (and d!2012126 (not res!2637062)) b!6416594))

(declare-fun m!7211920 () Bool)

(assert (=> b!6416601 m!7211920))

(declare-fun m!7211922 () Bool)

(assert (=> b!6416601 m!7211922))

(declare-fun m!7211924 () Bool)

(assert (=> b!6416593 m!7211924))

(assert (=> b!6416597 m!7211920))

(declare-fun m!7211926 () Bool)

(assert (=> b!6416597 m!7211926))

(declare-fun m!7211928 () Bool)

(assert (=> b!6416594 m!7211928))

(assert (=> d!2012126 m!7211928))

(declare-fun m!7211930 () Bool)

(assert (=> d!2012126 m!7211930))

(declare-fun m!7211932 () Bool)

(assert (=> d!2012126 m!7211932))

(assert (=> b!6416600 m!7211920))

(declare-fun m!7211934 () Bool)

(assert (=> b!6416600 m!7211934))

(declare-fun m!7211936 () Bool)

(assert (=> b!6416596 m!7211936))

(assert (=> b!6416596 m!7211936))

(declare-fun m!7211938 () Bool)

(assert (=> b!6416596 m!7211938))

(declare-fun m!7211940 () Bool)

(assert (=> b!6416596 m!7211940))

(assert (=> b!6416596 m!7211936))

(declare-fun m!7211942 () Bool)

(assert (=> b!6416596 m!7211942))

(assert (=> b!6416311 d!2012126))

(declare-fun d!2012144 () Bool)

(assert (=> d!2012144 (= (Exists!3387 lambda!354301) (choose!47652 lambda!354301))))

(declare-fun bs!1613640 () Bool)

(assert (= bs!1613640 d!2012144))

(declare-fun m!7211944 () Bool)

(assert (=> bs!1613640 m!7211944))

(assert (=> b!6416311 d!2012144))

(declare-fun bs!1613671 () Bool)

(declare-fun d!2012146 () Bool)

(assert (= bs!1613671 (and d!2012146 b!6416311)))

(declare-fun lambda!354337 () Int)

(assert (=> bs!1613671 (= lambda!354337 lambda!354301)))

(assert (=> bs!1613671 (not (= lambda!354337 lambda!354302))))

(declare-fun bs!1613672 () Bool)

(assert (= bs!1613672 (and d!2012146 b!6416313)))

(assert (=> bs!1613672 (= (= (regOne!33146 r!7292) lt!2375781) (= lambda!354337 lambda!354304))))

(assert (=> bs!1613672 (not (= lambda!354337 lambda!354305))))

(assert (=> d!2012146 true))

(assert (=> d!2012146 true))

(assert (=> d!2012146 true))

(assert (=> d!2012146 (= (isDefined!12911 (findConcatSeparation!2622 (regOne!33146 r!7292) (regTwo!33146 r!7292) Nil!65128 s!2326 s!2326)) (Exists!3387 lambda!354337))))

(declare-fun lt!2375834 () Unit!158599)

(declare-fun choose!47654 (Regex!16317 Regex!16317 List!65252) Unit!158599)

(assert (=> d!2012146 (= lt!2375834 (choose!47654 (regOne!33146 r!7292) (regTwo!33146 r!7292) s!2326))))

(assert (=> d!2012146 (validRegex!8053 (regOne!33146 r!7292))))

(assert (=> d!2012146 (= (lemmaFindConcatSeparationEquivalentToExists!2386 (regOne!33146 r!7292) (regTwo!33146 r!7292) s!2326) lt!2375834)))

(declare-fun bs!1613674 () Bool)

(assert (= bs!1613674 d!2012146))

(declare-fun m!7211986 () Bool)

(assert (=> bs!1613674 m!7211986))

(assert (=> bs!1613674 m!7211750))

(assert (=> bs!1613674 m!7211932))

(declare-fun m!7211988 () Bool)

(assert (=> bs!1613674 m!7211988))

(assert (=> bs!1613674 m!7211750))

(assert (=> bs!1613674 m!7211752))

(assert (=> b!6416311 d!2012146))

(declare-fun bs!1613684 () Bool)

(declare-fun d!2012166 () Bool)

(assert (= bs!1613684 (and d!2012166 d!2012146)))

(declare-fun lambda!354342 () Int)

(assert (=> bs!1613684 (= lambda!354342 lambda!354337)))

(declare-fun bs!1613685 () Bool)

(assert (= bs!1613685 (and d!2012166 b!6416313)))

(assert (=> bs!1613685 (= (= (regOne!33146 r!7292) lt!2375781) (= lambda!354342 lambda!354304))))

(assert (=> bs!1613685 (not (= lambda!354342 lambda!354305))))

(declare-fun bs!1613687 () Bool)

(assert (= bs!1613687 (and d!2012166 b!6416311)))

(assert (=> bs!1613687 (not (= lambda!354342 lambda!354302))))

(assert (=> bs!1613687 (= lambda!354342 lambda!354301)))

(assert (=> d!2012166 true))

(assert (=> d!2012166 true))

(assert (=> d!2012166 true))

(declare-fun bs!1613689 () Bool)

(assert (= bs!1613689 d!2012166))

(declare-fun lambda!354346 () Int)

(assert (=> bs!1613689 (not (= lambda!354346 lambda!354342))))

(assert (=> bs!1613684 (not (= lambda!354346 lambda!354337))))

(assert (=> bs!1613685 (not (= lambda!354346 lambda!354304))))

(assert (=> bs!1613685 (= (= (regOne!33146 r!7292) lt!2375781) (= lambda!354346 lambda!354305))))

(assert (=> bs!1613687 (= lambda!354346 lambda!354302)))

(assert (=> bs!1613687 (not (= lambda!354346 lambda!354301))))

(assert (=> d!2012166 true))

(assert (=> d!2012166 true))

(assert (=> d!2012166 true))

(assert (=> d!2012166 (= (Exists!3387 lambda!354342) (Exists!3387 lambda!354346))))

(declare-fun lt!2375853 () Unit!158599)

(declare-fun choose!47655 (Regex!16317 Regex!16317 List!65252) Unit!158599)

(assert (=> d!2012166 (= lt!2375853 (choose!47655 (regOne!33146 r!7292) (regTwo!33146 r!7292) s!2326))))

(assert (=> d!2012166 (validRegex!8053 (regOne!33146 r!7292))))

(assert (=> d!2012166 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1924 (regOne!33146 r!7292) (regTwo!33146 r!7292) s!2326) lt!2375853)))

(declare-fun m!7212056 () Bool)

(assert (=> bs!1613689 m!7212056))

(declare-fun m!7212058 () Bool)

(assert (=> bs!1613689 m!7212058))

(declare-fun m!7212060 () Bool)

(assert (=> bs!1613689 m!7212060))

(assert (=> bs!1613689 m!7211932))

(assert (=> b!6416311 d!2012166))

(declare-fun d!2012196 () Bool)

(declare-fun isEmpty!37279 (Option!16208) Bool)

(assert (=> d!2012196 (= (isDefined!12911 (findConcatSeparation!2622 (regOne!33146 r!7292) (regTwo!33146 r!7292) Nil!65128 s!2326 s!2326)) (not (isEmpty!37279 (findConcatSeparation!2622 (regOne!33146 r!7292) (regTwo!33146 r!7292) Nil!65128 s!2326 s!2326))))))

(declare-fun bs!1613690 () Bool)

(assert (= bs!1613690 d!2012196))

(assert (=> bs!1613690 m!7211750))

(declare-fun m!7212062 () Bool)

(assert (=> bs!1613690 m!7212062))

(assert (=> b!6416311 d!2012196))

(declare-fun d!2012198 () Bool)

(declare-fun lambda!354349 () Int)

(declare-fun forall!15507 (List!65250 Int) Bool)

(assert (=> d!2012198 (= (inv!84039 setElem!43786) (forall!15507 (exprs!6201 setElem!43786) lambda!354349))))

(declare-fun bs!1613691 () Bool)

(assert (= bs!1613691 d!2012198))

(declare-fun m!7212064 () Bool)

(assert (=> bs!1613691 m!7212064))

(assert (=> setNonEmpty!43786 d!2012198))

(declare-fun d!2012200 () Bool)

(declare-fun lt!2375856 () Regex!16317)

(assert (=> d!2012200 (validRegex!8053 lt!2375856)))

(assert (=> d!2012200 (= lt!2375856 (generalisedUnion!2161 (unfocusZipperList!1738 zl!343)))))

(assert (=> d!2012200 (= (unfocusZipper!2059 zl!343) lt!2375856)))

(declare-fun bs!1613692 () Bool)

(assert (= bs!1613692 d!2012200))

(declare-fun m!7212066 () Bool)

(assert (=> bs!1613692 m!7212066))

(assert (=> bs!1613692 m!7211768))

(assert (=> bs!1613692 m!7211768))

(assert (=> bs!1613692 m!7211770))

(assert (=> b!6416293 d!2012200))

(declare-fun d!2012202 () Bool)

(declare-fun choose!47656 ((InoxSet Context!11402) Int) (InoxSet Context!11402))

(assert (=> d!2012202 (= (flatMap!1822 lt!2375757 lambda!354303) (choose!47656 lt!2375757 lambda!354303))))

(declare-fun bs!1613693 () Bool)

(assert (= bs!1613693 d!2012202))

(declare-fun m!7212076 () Bool)

(assert (=> bs!1613693 m!7212076))

(assert (=> b!6416292 d!2012202))

(declare-fun b!6416753 () Bool)

(declare-fun e!3893553 () Bool)

(assert (=> b!6416753 (= e!3893553 (nullable!6310 (h!71574 (exprs!6201 lt!2375751))))))

(declare-fun b!6416754 () Bool)

(declare-fun e!3893551 () (InoxSet Context!11402))

(assert (=> b!6416754 (= e!3893551 ((as const (Array Context!11402 Bool)) false))))

(declare-fun b!6416755 () Bool)

(declare-fun e!3893552 () (InoxSet Context!11402))

(declare-fun call!551662 () (InoxSet Context!11402))

(assert (=> b!6416755 (= e!3893552 ((_ map or) call!551662 (derivationStepZipperUp!1491 (Context!11403 (t!378864 (exprs!6201 lt!2375751))) (h!71576 s!2326))))))

(declare-fun bm!551657 () Bool)

(assert (=> bm!551657 (= call!551662 (derivationStepZipperDown!1565 (h!71574 (exprs!6201 lt!2375751)) (Context!11403 (t!378864 (exprs!6201 lt!2375751))) (h!71576 s!2326)))))

(declare-fun d!2012206 () Bool)

(declare-fun c!1172065 () Bool)

(assert (=> d!2012206 (= c!1172065 e!3893553)))

(declare-fun res!2637118 () Bool)

(assert (=> d!2012206 (=> (not res!2637118) (not e!3893553))))

(assert (=> d!2012206 (= res!2637118 ((_ is Cons!65126) (exprs!6201 lt!2375751)))))

(assert (=> d!2012206 (= (derivationStepZipperUp!1491 lt!2375751 (h!71576 s!2326)) e!3893552)))

(declare-fun b!6416756 () Bool)

(assert (=> b!6416756 (= e!3893552 e!3893551)))

(declare-fun c!1172066 () Bool)

(assert (=> b!6416756 (= c!1172066 ((_ is Cons!65126) (exprs!6201 lt!2375751)))))

(declare-fun b!6416757 () Bool)

(assert (=> b!6416757 (= e!3893551 call!551662)))

(assert (= (and d!2012206 res!2637118) b!6416753))

(assert (= (and d!2012206 c!1172065) b!6416755))

(assert (= (and d!2012206 (not c!1172065)) b!6416756))

(assert (= (and b!6416756 c!1172066) b!6416757))

(assert (= (and b!6416756 (not c!1172066)) b!6416754))

(assert (= (or b!6416755 b!6416757) bm!551657))

(declare-fun m!7212132 () Bool)

(assert (=> b!6416753 m!7212132))

(declare-fun m!7212134 () Bool)

(assert (=> b!6416755 m!7212134))

(declare-fun m!7212136 () Bool)

(assert (=> bm!551657 m!7212136))

(assert (=> b!6416292 d!2012206))

(declare-fun d!2012228 () Bool)

(declare-fun dynLambda!25871 (Int Context!11402) (InoxSet Context!11402))

(assert (=> d!2012228 (= (flatMap!1822 lt!2375757 lambda!354303) (dynLambda!25871 lambda!354303 lt!2375751))))

(declare-fun lt!2375861 () Unit!158599)

(declare-fun choose!47658 ((InoxSet Context!11402) Context!11402 Int) Unit!158599)

(assert (=> d!2012228 (= lt!2375861 (choose!47658 lt!2375757 lt!2375751 lambda!354303))))

(assert (=> d!2012228 (= lt!2375757 (store ((as const (Array Context!11402 Bool)) false) lt!2375751 true))))

(assert (=> d!2012228 (= (lemmaFlatMapOnSingletonSet!1348 lt!2375757 lt!2375751 lambda!354303) lt!2375861)))

(declare-fun b_lambda!243957 () Bool)

(assert (=> (not b_lambda!243957) (not d!2012228)))

(declare-fun bs!1613701 () Bool)

(assert (= bs!1613701 d!2012228))

(assert (=> bs!1613701 m!7211758))

(declare-fun m!7212162 () Bool)

(assert (=> bs!1613701 m!7212162))

(declare-fun m!7212164 () Bool)

(assert (=> bs!1613701 m!7212164))

(assert (=> bs!1613701 m!7211762))

(assert (=> b!6416292 d!2012228))

(declare-fun bs!1613702 () Bool)

(declare-fun d!2012236 () Bool)

(assert (= bs!1613702 (and d!2012236 b!6416288)))

(declare-fun lambda!354355 () Int)

(assert (=> bs!1613702 (= lambda!354355 lambda!354303)))

(assert (=> d!2012236 true))

(assert (=> d!2012236 (= (derivationStepZipper!2283 lt!2375757 (h!71576 s!2326)) (flatMap!1822 lt!2375757 lambda!354355))))

(declare-fun bs!1613703 () Bool)

(assert (= bs!1613703 d!2012236))

(declare-fun m!7212174 () Bool)

(assert (=> bs!1613703 m!7212174))

(assert (=> b!6416292 d!2012236))

(declare-fun d!2012242 () Bool)

(declare-fun c!1172080 () Bool)

(assert (=> d!2012242 (= c!1172080 (isEmpty!37277 s!2326))))

(declare-fun e!3893580 () Bool)

(assert (=> d!2012242 (= (matchZipper!2329 lt!2375757 s!2326) e!3893580)))

(declare-fun b!6416814 () Bool)

(declare-fun nullableZipper!2081 ((InoxSet Context!11402)) Bool)

(assert (=> b!6416814 (= e!3893580 (nullableZipper!2081 lt!2375757))))

(declare-fun b!6416816 () Bool)

(declare-fun head!13125 (List!65252) C!32904)

(declare-fun tail!12210 (List!65252) List!65252)

(assert (=> b!6416816 (= e!3893580 (matchZipper!2329 (derivationStepZipper!2283 lt!2375757 (head!13125 s!2326)) (tail!12210 s!2326)))))

(assert (= (and d!2012242 c!1172080) b!6416814))

(assert (= (and d!2012242 (not c!1172080)) b!6416816))

(declare-fun m!7212198 () Bool)

(assert (=> d!2012242 m!7212198))

(declare-fun m!7212200 () Bool)

(assert (=> b!6416814 m!7212200))

(declare-fun m!7212202 () Bool)

(assert (=> b!6416816 m!7212202))

(assert (=> b!6416816 m!7212202))

(declare-fun m!7212204 () Bool)

(assert (=> b!6416816 m!7212204))

(declare-fun m!7212206 () Bool)

(assert (=> b!6416816 m!7212206))

(assert (=> b!6416816 m!7212204))

(assert (=> b!6416816 m!7212206))

(declare-fun m!7212208 () Bool)

(assert (=> b!6416816 m!7212208))

(assert (=> b!6416312 d!2012242))

(declare-fun d!2012250 () Bool)

(declare-fun c!1172081 () Bool)

(assert (=> d!2012250 (= c!1172081 (isEmpty!37277 (t!378866 s!2326)))))

(declare-fun e!3893584 () Bool)

(assert (=> d!2012250 (= (matchZipper!2329 lt!2375752 (t!378866 s!2326)) e!3893584)))

(declare-fun b!6416823 () Bool)

(assert (=> b!6416823 (= e!3893584 (nullableZipper!2081 lt!2375752))))

(declare-fun b!6416824 () Bool)

(assert (=> b!6416824 (= e!3893584 (matchZipper!2329 (derivationStepZipper!2283 lt!2375752 (head!13125 (t!378866 s!2326))) (tail!12210 (t!378866 s!2326))))))

(assert (= (and d!2012250 c!1172081) b!6416823))

(assert (= (and d!2012250 (not c!1172081)) b!6416824))

(declare-fun m!7212210 () Bool)

(assert (=> d!2012250 m!7212210))

(declare-fun m!7212212 () Bool)

(assert (=> b!6416823 m!7212212))

(declare-fun m!7212214 () Bool)

(assert (=> b!6416824 m!7212214))

(assert (=> b!6416824 m!7212214))

(declare-fun m!7212216 () Bool)

(assert (=> b!6416824 m!7212216))

(declare-fun m!7212218 () Bool)

(assert (=> b!6416824 m!7212218))

(assert (=> b!6416824 m!7212216))

(assert (=> b!6416824 m!7212218))

(declare-fun m!7212220 () Bool)

(assert (=> b!6416824 m!7212220))

(assert (=> b!6416312 d!2012250))

(declare-fun d!2012252 () Bool)

(assert (=> d!2012252 (= (isDefined!12911 lt!2375775) (not (isEmpty!37279 lt!2375775)))))

(declare-fun bs!1613710 () Bool)

(assert (= bs!1613710 d!2012252))

(declare-fun m!7212222 () Bool)

(assert (=> bs!1613710 m!7212222))

(assert (=> b!6416313 d!2012252))

(declare-fun d!2012254 () Bool)

(assert (=> d!2012254 (= (Exists!3387 lambda!354304) (choose!47652 lambda!354304))))

(declare-fun bs!1613711 () Bool)

(assert (= bs!1613711 d!2012254))

(declare-fun m!7212224 () Bool)

(assert (=> bs!1613711 m!7212224))

(assert (=> b!6416313 d!2012254))

(declare-fun d!2012256 () Bool)

(assert (=> d!2012256 (= (Exists!3387 lambda!354305) (choose!47652 lambda!354305))))

(declare-fun bs!1613712 () Bool)

(assert (= bs!1613712 d!2012256))

(declare-fun m!7212226 () Bool)

(assert (=> bs!1613712 m!7212226))

(assert (=> b!6416313 d!2012256))

(declare-fun bs!1613713 () Bool)

(declare-fun d!2012258 () Bool)

(assert (= bs!1613713 (and d!2012258 d!2012166)))

(declare-fun lambda!354357 () Int)

(assert (=> bs!1613713 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354357 lambda!354342))))

(assert (=> bs!1613713 (not (= lambda!354357 lambda!354346))))

(declare-fun bs!1613714 () Bool)

(assert (= bs!1613714 (and d!2012258 d!2012146)))

(assert (=> bs!1613714 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354357 lambda!354337))))

(declare-fun bs!1613715 () Bool)

(assert (= bs!1613715 (and d!2012258 b!6416313)))

(assert (=> bs!1613715 (= lambda!354357 lambda!354304)))

(assert (=> bs!1613715 (not (= lambda!354357 lambda!354305))))

(declare-fun bs!1613716 () Bool)

(assert (= bs!1613716 (and d!2012258 b!6416311)))

(assert (=> bs!1613716 (not (= lambda!354357 lambda!354302))))

(assert (=> bs!1613716 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354357 lambda!354301))))

(assert (=> d!2012258 true))

(assert (=> d!2012258 true))

(assert (=> d!2012258 true))

(assert (=> d!2012258 (= (isDefined!12911 (findConcatSeparation!2622 lt!2375781 (regTwo!33146 r!7292) Nil!65128 s!2326 s!2326)) (Exists!3387 lambda!354357))))

(declare-fun lt!2375866 () Unit!158599)

(assert (=> d!2012258 (= lt!2375866 (choose!47654 lt!2375781 (regTwo!33146 r!7292) s!2326))))

(assert (=> d!2012258 (validRegex!8053 lt!2375781)))

(assert (=> d!2012258 (= (lemmaFindConcatSeparationEquivalentToExists!2386 lt!2375781 (regTwo!33146 r!7292) s!2326) lt!2375866)))

(declare-fun bs!1613718 () Bool)

(assert (= bs!1613718 d!2012258))

(declare-fun m!7212230 () Bool)

(assert (=> bs!1613718 m!7212230))

(assert (=> bs!1613718 m!7211722))

(assert (=> bs!1613718 m!7211778))

(declare-fun m!7212232 () Bool)

(assert (=> bs!1613718 m!7212232))

(assert (=> bs!1613718 m!7211722))

(declare-fun m!7212234 () Bool)

(assert (=> bs!1613718 m!7212234))

(assert (=> b!6416313 d!2012258))

(declare-fun bs!1613722 () Bool)

(declare-fun d!2012266 () Bool)

(assert (= bs!1613722 (and d!2012266 d!2012258)))

(declare-fun lambda!354358 () Int)

(assert (=> bs!1613722 (= lambda!354358 lambda!354357)))

(declare-fun bs!1613723 () Bool)

(assert (= bs!1613723 (and d!2012266 d!2012166)))

(assert (=> bs!1613723 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354358 lambda!354342))))

(assert (=> bs!1613723 (not (= lambda!354358 lambda!354346))))

(declare-fun bs!1613724 () Bool)

(assert (= bs!1613724 (and d!2012266 d!2012146)))

(assert (=> bs!1613724 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354358 lambda!354337))))

(declare-fun bs!1613725 () Bool)

(assert (= bs!1613725 (and d!2012266 b!6416313)))

(assert (=> bs!1613725 (= lambda!354358 lambda!354304)))

(assert (=> bs!1613725 (not (= lambda!354358 lambda!354305))))

(declare-fun bs!1613726 () Bool)

(assert (= bs!1613726 (and d!2012266 b!6416311)))

(assert (=> bs!1613726 (not (= lambda!354358 lambda!354302))))

(assert (=> bs!1613726 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354358 lambda!354301))))

(assert (=> d!2012266 true))

(assert (=> d!2012266 true))

(assert (=> d!2012266 true))

(declare-fun lambda!354359 () Int)

(assert (=> bs!1613722 (not (= lambda!354359 lambda!354357))))

(assert (=> bs!1613723 (not (= lambda!354359 lambda!354342))))

(assert (=> bs!1613723 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354359 lambda!354346))))

(declare-fun bs!1613727 () Bool)

(assert (= bs!1613727 d!2012266))

(assert (=> bs!1613727 (not (= lambda!354359 lambda!354358))))

(assert (=> bs!1613724 (not (= lambda!354359 lambda!354337))))

(assert (=> bs!1613725 (not (= lambda!354359 lambda!354304))))

(assert (=> bs!1613725 (= lambda!354359 lambda!354305)))

(assert (=> bs!1613726 (= (= lt!2375781 (regOne!33146 r!7292)) (= lambda!354359 lambda!354302))))

(assert (=> bs!1613726 (not (= lambda!354359 lambda!354301))))

(assert (=> d!2012266 true))

(assert (=> d!2012266 true))

(assert (=> d!2012266 true))

(assert (=> d!2012266 (= (Exists!3387 lambda!354358) (Exists!3387 lambda!354359))))

(declare-fun lt!2375867 () Unit!158599)

(assert (=> d!2012266 (= lt!2375867 (choose!47655 lt!2375781 (regTwo!33146 r!7292) s!2326))))

(assert (=> d!2012266 (validRegex!8053 lt!2375781)))

(assert (=> d!2012266 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1924 lt!2375781 (regTwo!33146 r!7292) s!2326) lt!2375867)))

(declare-fun m!7212236 () Bool)

(assert (=> bs!1613727 m!7212236))

(declare-fun m!7212238 () Bool)

(assert (=> bs!1613727 m!7212238))

(declare-fun m!7212240 () Bool)

(assert (=> bs!1613727 m!7212240))

(assert (=> bs!1613727 m!7211778))

(assert (=> b!6416313 d!2012266))

(declare-fun d!2012270 () Bool)

(declare-fun e!3893602 () Bool)

(assert (=> d!2012270 e!3893602))

(declare-fun res!2637129 () Bool)

(assert (=> d!2012270 (=> res!2637129 e!3893602)))

(declare-fun e!3893598 () Bool)

(assert (=> d!2012270 (= res!2637129 e!3893598)))

(declare-fun res!2637128 () Bool)

(assert (=> d!2012270 (=> (not res!2637128) (not e!3893598))))

(declare-fun lt!2375868 () Option!16208)

(assert (=> d!2012270 (= res!2637128 (isDefined!12911 lt!2375868))))

(declare-fun e!3893601 () Option!16208)

(assert (=> d!2012270 (= lt!2375868 e!3893601)))

(declare-fun c!1172082 () Bool)

(declare-fun e!3893599 () Bool)

(assert (=> d!2012270 (= c!1172082 e!3893599)))

(declare-fun res!2637131 () Bool)

(assert (=> d!2012270 (=> (not res!2637131) (not e!3893599))))

(assert (=> d!2012270 (= res!2637131 (matchR!8500 lt!2375781 Nil!65128))))

(assert (=> d!2012270 (validRegex!8053 lt!2375781)))

(assert (=> d!2012270 (= (findConcatSeparation!2622 lt!2375781 (regTwo!33146 r!7292) Nil!65128 s!2326 s!2326) lt!2375868)))

(declare-fun b!6416848 () Bool)

(assert (=> b!6416848 (= e!3893599 (matchR!8500 (regTwo!33146 r!7292) s!2326))))

(declare-fun b!6416849 () Bool)

(assert (=> b!6416849 (= e!3893602 (not (isDefined!12911 lt!2375868)))))

(declare-fun b!6416850 () Bool)

(assert (=> b!6416850 (= e!3893601 (Some!16207 (tuple2!66593 Nil!65128 s!2326)))))

(declare-fun b!6416851 () Bool)

(declare-fun lt!2375870 () Unit!158599)

(declare-fun lt!2375869 () Unit!158599)

(assert (=> b!6416851 (= lt!2375870 lt!2375869)))

(assert (=> b!6416851 (= (++!14385 (++!14385 Nil!65128 (Cons!65128 (h!71576 s!2326) Nil!65128)) (t!378866 s!2326)) s!2326)))

(assert (=> b!6416851 (= lt!2375869 (lemmaMoveElementToOtherListKeepsConcatEq!2479 Nil!65128 (h!71576 s!2326) (t!378866 s!2326) s!2326))))

(declare-fun e!3893600 () Option!16208)

(assert (=> b!6416851 (= e!3893600 (findConcatSeparation!2622 lt!2375781 (regTwo!33146 r!7292) (++!14385 Nil!65128 (Cons!65128 (h!71576 s!2326) Nil!65128)) (t!378866 s!2326) s!2326))))

(declare-fun b!6416852 () Bool)

(declare-fun res!2637127 () Bool)

(assert (=> b!6416852 (=> (not res!2637127) (not e!3893598))))

(assert (=> b!6416852 (= res!2637127 (matchR!8500 (regTwo!33146 r!7292) (_2!36599 (get!22559 lt!2375868))))))

(declare-fun b!6416853 () Bool)

(assert (=> b!6416853 (= e!3893601 e!3893600)))

(declare-fun c!1172083 () Bool)

(assert (=> b!6416853 (= c!1172083 ((_ is Nil!65128) s!2326))))

(declare-fun b!6416854 () Bool)

(assert (=> b!6416854 (= e!3893600 None!16207)))

(declare-fun b!6416855 () Bool)

(assert (=> b!6416855 (= e!3893598 (= (++!14385 (_1!36599 (get!22559 lt!2375868)) (_2!36599 (get!22559 lt!2375868))) s!2326))))

(declare-fun b!6416856 () Bool)

(declare-fun res!2637130 () Bool)

(assert (=> b!6416856 (=> (not res!2637130) (not e!3893598))))

(assert (=> b!6416856 (= res!2637130 (matchR!8500 lt!2375781 (_1!36599 (get!22559 lt!2375868))))))

(assert (= (and d!2012270 res!2637131) b!6416848))

(assert (= (and d!2012270 c!1172082) b!6416850))

(assert (= (and d!2012270 (not c!1172082)) b!6416853))

(assert (= (and b!6416853 c!1172083) b!6416854))

(assert (= (and b!6416853 (not c!1172083)) b!6416851))

(assert (= (and d!2012270 res!2637128) b!6416856))

(assert (= (and b!6416856 res!2637130) b!6416852))

(assert (= (and b!6416852 res!2637127) b!6416855))

(assert (= (and d!2012270 (not res!2637129)) b!6416849))

(declare-fun m!7212242 () Bool)

(assert (=> b!6416856 m!7212242))

(declare-fun m!7212244 () Bool)

(assert (=> b!6416856 m!7212244))

(assert (=> b!6416848 m!7211924))

(assert (=> b!6416852 m!7212242))

(declare-fun m!7212246 () Bool)

(assert (=> b!6416852 m!7212246))

(declare-fun m!7212248 () Bool)

(assert (=> b!6416849 m!7212248))

(assert (=> d!2012270 m!7212248))

(declare-fun m!7212250 () Bool)

(assert (=> d!2012270 m!7212250))

(assert (=> d!2012270 m!7211778))

(assert (=> b!6416855 m!7212242))

(declare-fun m!7212252 () Bool)

(assert (=> b!6416855 m!7212252))

(assert (=> b!6416851 m!7211936))

(assert (=> b!6416851 m!7211936))

(assert (=> b!6416851 m!7211938))

(assert (=> b!6416851 m!7211940))

(assert (=> b!6416851 m!7211936))

(declare-fun m!7212254 () Bool)

(assert (=> b!6416851 m!7212254))

(assert (=> b!6416313 d!2012270))

(declare-fun d!2012272 () Bool)

(assert (=> d!2012272 (= (get!22559 lt!2375775) (v!52380 lt!2375775))))

(assert (=> b!6416313 d!2012272))

(declare-fun b!6416865 () Bool)

(declare-fun e!3893607 () List!65252)

(assert (=> b!6416865 (= e!3893607 (_2!36599 lt!2375768))))

(declare-fun b!6416867 () Bool)

(declare-fun res!2637137 () Bool)

(declare-fun e!3893608 () Bool)

(assert (=> b!6416867 (=> (not res!2637137) (not e!3893608))))

(declare-fun lt!2375873 () List!65252)

(declare-fun size!40375 (List!65252) Int)

(assert (=> b!6416867 (= res!2637137 (= (size!40375 lt!2375873) (+ (size!40375 (_1!36599 lt!2375768)) (size!40375 (_2!36599 lt!2375768)))))))

(declare-fun b!6416866 () Bool)

(assert (=> b!6416866 (= e!3893607 (Cons!65128 (h!71576 (_1!36599 lt!2375768)) (++!14385 (t!378866 (_1!36599 lt!2375768)) (_2!36599 lt!2375768))))))

(declare-fun b!6416868 () Bool)

(assert (=> b!6416868 (= e!3893608 (or (not (= (_2!36599 lt!2375768) Nil!65128)) (= lt!2375873 (_1!36599 lt!2375768))))))

(declare-fun d!2012274 () Bool)

(assert (=> d!2012274 e!3893608))

(declare-fun res!2637136 () Bool)

(assert (=> d!2012274 (=> (not res!2637136) (not e!3893608))))

(declare-fun content!12348 (List!65252) (InoxSet C!32904))

(assert (=> d!2012274 (= res!2637136 (= (content!12348 lt!2375873) ((_ map or) (content!12348 (_1!36599 lt!2375768)) (content!12348 (_2!36599 lt!2375768)))))))

(assert (=> d!2012274 (= lt!2375873 e!3893607)))

(declare-fun c!1172086 () Bool)

(assert (=> d!2012274 (= c!1172086 ((_ is Nil!65128) (_1!36599 lt!2375768)))))

(assert (=> d!2012274 (= (++!14385 (_1!36599 lt!2375768) (_2!36599 lt!2375768)) lt!2375873)))

(assert (= (and d!2012274 c!1172086) b!6416865))

(assert (= (and d!2012274 (not c!1172086)) b!6416866))

(assert (= (and d!2012274 res!2637136) b!6416867))

(assert (= (and b!6416867 res!2637137) b!6416868))

(declare-fun m!7212256 () Bool)

(assert (=> b!6416867 m!7212256))

(declare-fun m!7212258 () Bool)

(assert (=> b!6416867 m!7212258))

(declare-fun m!7212260 () Bool)

(assert (=> b!6416867 m!7212260))

(declare-fun m!7212262 () Bool)

(assert (=> b!6416866 m!7212262))

(declare-fun m!7212264 () Bool)

(assert (=> d!2012274 m!7212264))

(declare-fun m!7212266 () Bool)

(assert (=> d!2012274 m!7212266))

(declare-fun m!7212268 () Bool)

(assert (=> d!2012274 m!7212268))

(assert (=> b!6416313 d!2012274))

(declare-fun bs!1613728 () Bool)

(declare-fun d!2012276 () Bool)

(assert (= bs!1613728 (and d!2012276 d!2012198)))

(declare-fun lambda!354362 () Int)

(assert (=> bs!1613728 (= lambda!354362 lambda!354349)))

(declare-fun b!6416889 () Bool)

(declare-fun e!3893626 () Regex!16317)

(assert (=> b!6416889 (= e!3893626 (h!71574 (exprs!6201 (h!71575 zl!343))))))

(declare-fun b!6416890 () Bool)

(declare-fun e!3893621 () Bool)

(declare-fun lt!2375876 () Regex!16317)

(declare-fun isConcat!1241 (Regex!16317) Bool)

(assert (=> b!6416890 (= e!3893621 (isConcat!1241 lt!2375876))))

(declare-fun b!6416892 () Bool)

(declare-fun e!3893623 () Bool)

(declare-fun e!3893625 () Bool)

(assert (=> b!6416892 (= e!3893623 e!3893625)))

(declare-fun c!1172096 () Bool)

(assert (=> b!6416892 (= c!1172096 (isEmpty!37276 (exprs!6201 (h!71575 zl!343))))))

(declare-fun b!6416893 () Bool)

(declare-fun e!3893622 () Regex!16317)

(assert (=> b!6416893 (= e!3893622 (Concat!25162 (h!71574 (exprs!6201 (h!71575 zl!343))) (generalisedConcat!1914 (t!378864 (exprs!6201 (h!71575 zl!343))))))))

(declare-fun b!6416894 () Bool)

(assert (=> b!6416894 (= e!3893625 e!3893621)))

(declare-fun c!1172097 () Bool)

(declare-fun tail!12211 (List!65250) List!65250)

(assert (=> b!6416894 (= c!1172097 (isEmpty!37276 (tail!12211 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun b!6416895 () Bool)

(declare-fun e!3893624 () Bool)

(assert (=> b!6416895 (= e!3893624 (isEmpty!37276 (t!378864 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun b!6416896 () Bool)

(assert (=> b!6416896 (= e!3893622 EmptyExpr!16317)))

(declare-fun b!6416897 () Bool)

(declare-fun head!13126 (List!65250) Regex!16317)

(assert (=> b!6416897 (= e!3893621 (= lt!2375876 (head!13126 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun b!6416898 () Bool)

(declare-fun isEmptyExpr!1718 (Regex!16317) Bool)

(assert (=> b!6416898 (= e!3893625 (isEmptyExpr!1718 lt!2375876))))

(assert (=> d!2012276 e!3893623))

(declare-fun res!2637142 () Bool)

(assert (=> d!2012276 (=> (not res!2637142) (not e!3893623))))

(assert (=> d!2012276 (= res!2637142 (validRegex!8053 lt!2375876))))

(assert (=> d!2012276 (= lt!2375876 e!3893626)))

(declare-fun c!1172095 () Bool)

(assert (=> d!2012276 (= c!1172095 e!3893624)))

(declare-fun res!2637143 () Bool)

(assert (=> d!2012276 (=> (not res!2637143) (not e!3893624))))

(assert (=> d!2012276 (= res!2637143 ((_ is Cons!65126) (exprs!6201 (h!71575 zl!343))))))

(assert (=> d!2012276 (forall!15507 (exprs!6201 (h!71575 zl!343)) lambda!354362)))

(assert (=> d!2012276 (= (generalisedConcat!1914 (exprs!6201 (h!71575 zl!343))) lt!2375876)))

(declare-fun b!6416891 () Bool)

(assert (=> b!6416891 (= e!3893626 e!3893622)))

(declare-fun c!1172098 () Bool)

(assert (=> b!6416891 (= c!1172098 ((_ is Cons!65126) (exprs!6201 (h!71575 zl!343))))))

(assert (= (and d!2012276 res!2637143) b!6416895))

(assert (= (and d!2012276 c!1172095) b!6416889))

(assert (= (and d!2012276 (not c!1172095)) b!6416891))

(assert (= (and b!6416891 c!1172098) b!6416893))

(assert (= (and b!6416891 (not c!1172098)) b!6416896))

(assert (= (and d!2012276 res!2637142) b!6416892))

(assert (= (and b!6416892 c!1172096) b!6416898))

(assert (= (and b!6416892 (not c!1172096)) b!6416894))

(assert (= (and b!6416894 c!1172097) b!6416897))

(assert (= (and b!6416894 (not c!1172097)) b!6416890))

(declare-fun m!7212270 () Bool)

(assert (=> b!6416894 m!7212270))

(assert (=> b!6416894 m!7212270))

(declare-fun m!7212272 () Bool)

(assert (=> b!6416894 m!7212272))

(assert (=> b!6416895 m!7211688))

(declare-fun m!7212274 () Bool)

(assert (=> b!6416893 m!7212274))

(declare-fun m!7212276 () Bool)

(assert (=> b!6416897 m!7212276))

(declare-fun m!7212278 () Bool)

(assert (=> b!6416890 m!7212278))

(declare-fun m!7212280 () Bool)

(assert (=> b!6416898 m!7212280))

(declare-fun m!7212282 () Bool)

(assert (=> b!6416892 m!7212282))

(declare-fun m!7212284 () Bool)

(assert (=> d!2012276 m!7212284))

(declare-fun m!7212286 () Bool)

(assert (=> d!2012276 m!7212286))

(assert (=> b!6416315 d!2012276))

(declare-fun b!6416927 () Bool)

(declare-fun e!3893647 () Bool)

(declare-fun e!3893645 () Bool)

(assert (=> b!6416927 (= e!3893647 e!3893645)))

(declare-fun res!2637165 () Bool)

(assert (=> b!6416927 (=> res!2637165 e!3893645)))

(declare-fun call!551668 () Bool)

(assert (=> b!6416927 (= res!2637165 call!551668)))

(declare-fun b!6416928 () Bool)

(assert (=> b!6416928 (= e!3893645 (not (= (head!13125 (_2!36599 lt!2375768)) (c!1171938 (regTwo!33146 r!7292)))))))

(declare-fun b!6416929 () Bool)

(declare-fun e!3893644 () Bool)

(assert (=> b!6416929 (= e!3893644 (nullable!6310 (regTwo!33146 r!7292)))))

(declare-fun b!6416930 () Bool)

(declare-fun e!3893643 () Bool)

(assert (=> b!6416930 (= e!3893643 (= (head!13125 (_2!36599 lt!2375768)) (c!1171938 (regTwo!33146 r!7292))))))

(declare-fun b!6416931 () Bool)

(declare-fun e!3893646 () Bool)

(declare-fun e!3893641 () Bool)

(assert (=> b!6416931 (= e!3893646 e!3893641)))

(declare-fun c!1172106 () Bool)

(assert (=> b!6416931 (= c!1172106 ((_ is EmptyLang!16317) (regTwo!33146 r!7292)))))

(declare-fun bm!551663 () Bool)

(assert (=> bm!551663 (= call!551668 (isEmpty!37277 (_2!36599 lt!2375768)))))

(declare-fun b!6416933 () Bool)

(declare-fun res!2637167 () Bool)

(declare-fun e!3893642 () Bool)

(assert (=> b!6416933 (=> res!2637167 e!3893642)))

(assert (=> b!6416933 (= res!2637167 e!3893643)))

(declare-fun res!2637164 () Bool)

(assert (=> b!6416933 (=> (not res!2637164) (not e!3893643))))

(declare-fun lt!2375879 () Bool)

(assert (=> b!6416933 (= res!2637164 lt!2375879)))

(declare-fun b!6416934 () Bool)

(declare-fun res!2637160 () Bool)

(assert (=> b!6416934 (=> res!2637160 e!3893645)))

(assert (=> b!6416934 (= res!2637160 (not (isEmpty!37277 (tail!12210 (_2!36599 lt!2375768)))))))

(declare-fun b!6416935 () Bool)

(declare-fun res!2637161 () Bool)

(assert (=> b!6416935 (=> res!2637161 e!3893642)))

(assert (=> b!6416935 (= res!2637161 (not ((_ is ElementMatch!16317) (regTwo!33146 r!7292))))))

(assert (=> b!6416935 (= e!3893641 e!3893642)))

(declare-fun b!6416936 () Bool)

(assert (=> b!6416936 (= e!3893641 (not lt!2375879))))

(declare-fun b!6416937 () Bool)

(declare-fun res!2637162 () Bool)

(assert (=> b!6416937 (=> (not res!2637162) (not e!3893643))))

(assert (=> b!6416937 (= res!2637162 (not call!551668))))

(declare-fun b!6416938 () Bool)

(declare-fun derivativeStep!5021 (Regex!16317 C!32904) Regex!16317)

(assert (=> b!6416938 (= e!3893644 (matchR!8500 (derivativeStep!5021 (regTwo!33146 r!7292) (head!13125 (_2!36599 lt!2375768))) (tail!12210 (_2!36599 lt!2375768))))))

(declare-fun b!6416939 () Bool)

(declare-fun res!2637166 () Bool)

(assert (=> b!6416939 (=> (not res!2637166) (not e!3893643))))

(assert (=> b!6416939 (= res!2637166 (isEmpty!37277 (tail!12210 (_2!36599 lt!2375768))))))

(declare-fun b!6416940 () Bool)

(assert (=> b!6416940 (= e!3893642 e!3893647)))

(declare-fun res!2637163 () Bool)

(assert (=> b!6416940 (=> (not res!2637163) (not e!3893647))))

(assert (=> b!6416940 (= res!2637163 (not lt!2375879))))

(declare-fun b!6416932 () Bool)

(assert (=> b!6416932 (= e!3893646 (= lt!2375879 call!551668))))

(declare-fun d!2012278 () Bool)

(assert (=> d!2012278 e!3893646))

(declare-fun c!1172107 () Bool)

(assert (=> d!2012278 (= c!1172107 ((_ is EmptyExpr!16317) (regTwo!33146 r!7292)))))

(assert (=> d!2012278 (= lt!2375879 e!3893644)))

(declare-fun c!1172105 () Bool)

(assert (=> d!2012278 (= c!1172105 (isEmpty!37277 (_2!36599 lt!2375768)))))

(assert (=> d!2012278 (validRegex!8053 (regTwo!33146 r!7292))))

(assert (=> d!2012278 (= (matchR!8500 (regTwo!33146 r!7292) (_2!36599 lt!2375768)) lt!2375879)))

(assert (= (and d!2012278 c!1172105) b!6416929))

(assert (= (and d!2012278 (not c!1172105)) b!6416938))

(assert (= (and d!2012278 c!1172107) b!6416932))

(assert (= (and d!2012278 (not c!1172107)) b!6416931))

(assert (= (and b!6416931 c!1172106) b!6416936))

(assert (= (and b!6416931 (not c!1172106)) b!6416935))

(assert (= (and b!6416935 (not res!2637161)) b!6416933))

(assert (= (and b!6416933 res!2637164) b!6416937))

(assert (= (and b!6416937 res!2637162) b!6416939))

(assert (= (and b!6416939 res!2637166) b!6416930))

(assert (= (and b!6416933 (not res!2637167)) b!6416940))

(assert (= (and b!6416940 res!2637163) b!6416927))

(assert (= (and b!6416927 (not res!2637165)) b!6416934))

(assert (= (and b!6416934 (not res!2637160)) b!6416928))

(assert (= (or b!6416932 b!6416927 b!6416937) bm!551663))

(declare-fun m!7212288 () Bool)

(assert (=> b!6416930 m!7212288))

(assert (=> b!6416928 m!7212288))

(declare-fun m!7212290 () Bool)

(assert (=> bm!551663 m!7212290))

(assert (=> b!6416938 m!7212288))

(assert (=> b!6416938 m!7212288))

(declare-fun m!7212292 () Bool)

(assert (=> b!6416938 m!7212292))

(declare-fun m!7212294 () Bool)

(assert (=> b!6416938 m!7212294))

(assert (=> b!6416938 m!7212292))

(assert (=> b!6416938 m!7212294))

(declare-fun m!7212296 () Bool)

(assert (=> b!6416938 m!7212296))

(assert (=> d!2012278 m!7212290))

(declare-fun m!7212298 () Bool)

(assert (=> d!2012278 m!7212298))

(assert (=> b!6416939 m!7212294))

(assert (=> b!6416939 m!7212294))

(declare-fun m!7212300 () Bool)

(assert (=> b!6416939 m!7212300))

(assert (=> b!6416934 m!7212294))

(assert (=> b!6416934 m!7212294))

(assert (=> b!6416934 m!7212300))

(declare-fun m!7212302 () Bool)

(assert (=> b!6416929 m!7212302))

(assert (=> b!6416316 d!2012278))

(declare-fun d!2012280 () Bool)

(declare-fun c!1172108 () Bool)

(assert (=> d!2012280 (= c!1172108 (isEmpty!37277 (t!378866 s!2326)))))

(declare-fun e!3893648 () Bool)

(assert (=> d!2012280 (= (matchZipper!2329 lt!2375761 (t!378866 s!2326)) e!3893648)))

(declare-fun b!6416941 () Bool)

(assert (=> b!6416941 (= e!3893648 (nullableZipper!2081 lt!2375761))))

(declare-fun b!6416942 () Bool)

(assert (=> b!6416942 (= e!3893648 (matchZipper!2329 (derivationStepZipper!2283 lt!2375761 (head!13125 (t!378866 s!2326))) (tail!12210 (t!378866 s!2326))))))

(assert (= (and d!2012280 c!1172108) b!6416941))

(assert (= (and d!2012280 (not c!1172108)) b!6416942))

(assert (=> d!2012280 m!7212210))

(declare-fun m!7212304 () Bool)

(assert (=> b!6416941 m!7212304))

(assert (=> b!6416942 m!7212214))

(assert (=> b!6416942 m!7212214))

(declare-fun m!7212306 () Bool)

(assert (=> b!6416942 m!7212306))

(assert (=> b!6416942 m!7212218))

(assert (=> b!6416942 m!7212306))

(assert (=> b!6416942 m!7212218))

(declare-fun m!7212308 () Bool)

(assert (=> b!6416942 m!7212308))

(assert (=> b!6416314 d!2012280))

(declare-fun bm!551670 () Bool)

(declare-fun call!551677 () Bool)

(declare-fun call!551675 () Bool)

(assert (=> bm!551670 (= call!551677 call!551675)))

(declare-fun b!6416961 () Bool)

(declare-fun e!3893665 () Bool)

(declare-fun e!3893667 () Bool)

(assert (=> b!6416961 (= e!3893665 e!3893667)))

(declare-fun c!1172113 () Bool)

(assert (=> b!6416961 (= c!1172113 ((_ is Star!16317) lt!2375781))))

(declare-fun d!2012282 () Bool)

(declare-fun res!2637182 () Bool)

(assert (=> d!2012282 (=> res!2637182 e!3893665)))

(assert (=> d!2012282 (= res!2637182 ((_ is ElementMatch!16317) lt!2375781))))

(assert (=> d!2012282 (= (validRegex!8053 lt!2375781) e!3893665)))

(declare-fun b!6416962 () Bool)

(declare-fun res!2637179 () Bool)

(declare-fun e!3893666 () Bool)

(assert (=> b!6416962 (=> res!2637179 e!3893666)))

(assert (=> b!6416962 (= res!2637179 (not ((_ is Concat!25162) lt!2375781)))))

(declare-fun e!3893668 () Bool)

(assert (=> b!6416962 (= e!3893668 e!3893666)))

(declare-fun b!6416963 () Bool)

(declare-fun e!3893663 () Bool)

(assert (=> b!6416963 (= e!3893666 e!3893663)))

(declare-fun res!2637178 () Bool)

(assert (=> b!6416963 (=> (not res!2637178) (not e!3893663))))

(declare-fun call!551676 () Bool)

(assert (=> b!6416963 (= res!2637178 call!551676)))

(declare-fun b!6416964 () Bool)

(declare-fun e!3893664 () Bool)

(assert (=> b!6416964 (= e!3893664 call!551677)))

(declare-fun b!6416965 () Bool)

(assert (=> b!6416965 (= e!3893663 call!551677)))

(declare-fun b!6416966 () Bool)

(assert (=> b!6416966 (= e!3893667 e!3893668)))

(declare-fun c!1172114 () Bool)

(assert (=> b!6416966 (= c!1172114 ((_ is Union!16317) lt!2375781))))

(declare-fun bm!551671 () Bool)

(assert (=> bm!551671 (= call!551675 (validRegex!8053 (ite c!1172113 (reg!16646 lt!2375781) (ite c!1172114 (regTwo!33147 lt!2375781) (regTwo!33146 lt!2375781)))))))

(declare-fun b!6416967 () Bool)

(declare-fun e!3893669 () Bool)

(assert (=> b!6416967 (= e!3893669 call!551675)))

(declare-fun b!6416968 () Bool)

(declare-fun res!2637181 () Bool)

(assert (=> b!6416968 (=> (not res!2637181) (not e!3893664))))

(assert (=> b!6416968 (= res!2637181 call!551676)))

(assert (=> b!6416968 (= e!3893668 e!3893664)))

(declare-fun bm!551672 () Bool)

(assert (=> bm!551672 (= call!551676 (validRegex!8053 (ite c!1172114 (regOne!33147 lt!2375781) (regOne!33146 lt!2375781))))))

(declare-fun b!6416969 () Bool)

(assert (=> b!6416969 (= e!3893667 e!3893669)))

(declare-fun res!2637180 () Bool)

(assert (=> b!6416969 (= res!2637180 (not (nullable!6310 (reg!16646 lt!2375781))))))

(assert (=> b!6416969 (=> (not res!2637180) (not e!3893669))))

(assert (= (and d!2012282 (not res!2637182)) b!6416961))

(assert (= (and b!6416961 c!1172113) b!6416969))

(assert (= (and b!6416961 (not c!1172113)) b!6416966))

(assert (= (and b!6416969 res!2637180) b!6416967))

(assert (= (and b!6416966 c!1172114) b!6416968))

(assert (= (and b!6416966 (not c!1172114)) b!6416962))

(assert (= (and b!6416968 res!2637181) b!6416964))

(assert (= (and b!6416962 (not res!2637179)) b!6416963))

(assert (= (and b!6416963 res!2637178) b!6416965))

(assert (= (or b!6416964 b!6416965) bm!551670))

(assert (= (or b!6416968 b!6416963) bm!551672))

(assert (= (or b!6416967 bm!551670) bm!551671))

(declare-fun m!7212310 () Bool)

(assert (=> bm!551671 m!7212310))

(declare-fun m!7212312 () Bool)

(assert (=> bm!551672 m!7212312))

(declare-fun m!7212314 () Bool)

(assert (=> b!6416969 m!7212314))

(assert (=> b!6416295 d!2012282))

(declare-fun bs!1613729 () Bool)

(declare-fun b!6417010 () Bool)

(assert (= bs!1613729 (and b!6417010 d!2012258)))

(declare-fun lambda!354367 () Int)

(assert (=> bs!1613729 (not (= lambda!354367 lambda!354357))))

(declare-fun bs!1613730 () Bool)

(assert (= bs!1613730 (and b!6417010 d!2012166)))

(assert (=> bs!1613730 (not (= lambda!354367 lambda!354342))))

(assert (=> bs!1613730 (not (= lambda!354367 lambda!354346))))

(declare-fun bs!1613731 () Bool)

(assert (= bs!1613731 (and b!6417010 d!2012266)))

(assert (=> bs!1613731 (not (= lambda!354367 lambda!354358))))

(declare-fun bs!1613732 () Bool)

(assert (= bs!1613732 (and b!6417010 d!2012146)))

(assert (=> bs!1613732 (not (= lambda!354367 lambda!354337))))

(declare-fun bs!1613733 () Bool)

(assert (= bs!1613733 (and b!6417010 b!6416313)))

(assert (=> bs!1613733 (not (= lambda!354367 lambda!354304))))

(assert (=> bs!1613733 (not (= lambda!354367 lambda!354305))))

(declare-fun bs!1613734 () Bool)

(assert (= bs!1613734 (and b!6417010 b!6416311)))

(assert (=> bs!1613734 (not (= lambda!354367 lambda!354302))))

(assert (=> bs!1613731 (not (= lambda!354367 lambda!354359))))

(assert (=> bs!1613734 (not (= lambda!354367 lambda!354301))))

(assert (=> b!6417010 true))

(assert (=> b!6417010 true))

(declare-fun bs!1613735 () Bool)

(declare-fun b!6417006 () Bool)

(assert (= bs!1613735 (and b!6417006 d!2012258)))

(declare-fun lambda!354368 () Int)

(assert (=> bs!1613735 (not (= lambda!354368 lambda!354357))))

(declare-fun bs!1613736 () Bool)

(assert (= bs!1613736 (and b!6417006 d!2012166)))

(assert (=> bs!1613736 (not (= lambda!354368 lambda!354342))))

(assert (=> bs!1613736 (= lambda!354368 lambda!354346)))

(declare-fun bs!1613737 () Bool)

(assert (= bs!1613737 (and b!6417006 d!2012266)))

(assert (=> bs!1613737 (not (= lambda!354368 lambda!354358))))

(declare-fun bs!1613738 () Bool)

(assert (= bs!1613738 (and b!6417006 d!2012146)))

(assert (=> bs!1613738 (not (= lambda!354368 lambda!354337))))

(declare-fun bs!1613739 () Bool)

(assert (= bs!1613739 (and b!6417006 b!6416313)))

(assert (=> bs!1613739 (not (= lambda!354368 lambda!354304))))

(assert (=> bs!1613739 (= (= (regOne!33146 r!7292) lt!2375781) (= lambda!354368 lambda!354305))))

(declare-fun bs!1613740 () Bool)

(assert (= bs!1613740 (and b!6417006 b!6417010)))

(assert (=> bs!1613740 (not (= lambda!354368 lambda!354367))))

(declare-fun bs!1613741 () Bool)

(assert (= bs!1613741 (and b!6417006 b!6416311)))

(assert (=> bs!1613741 (= lambda!354368 lambda!354302)))

(assert (=> bs!1613737 (= (= (regOne!33146 r!7292) lt!2375781) (= lambda!354368 lambda!354359))))

(assert (=> bs!1613741 (not (= lambda!354368 lambda!354301))))

(assert (=> b!6417006 true))

(assert (=> b!6417006 true))

(declare-fun b!6417002 () Bool)

(declare-fun e!3893688 () Bool)

(assert (=> b!6417002 (= e!3893688 (matchRSpec!3418 (regTwo!33147 r!7292) s!2326))))

(declare-fun b!6417003 () Bool)

(declare-fun c!1172126 () Bool)

(assert (=> b!6417003 (= c!1172126 ((_ is Union!16317) r!7292))))

(declare-fun e!3893691 () Bool)

(declare-fun e!3893689 () Bool)

(assert (=> b!6417003 (= e!3893691 e!3893689)))

(declare-fun b!6417004 () Bool)

(declare-fun e!3893693 () Bool)

(assert (=> b!6417004 (= e!3893689 e!3893693)))

(declare-fun c!1172123 () Bool)

(assert (=> b!6417004 (= c!1172123 ((_ is Star!16317) r!7292))))

(declare-fun b!6417005 () Bool)

(declare-fun e!3893694 () Bool)

(declare-fun call!551683 () Bool)

(assert (=> b!6417005 (= e!3893694 call!551683)))

(declare-fun call!551682 () Bool)

(assert (=> b!6417006 (= e!3893693 call!551682)))

(declare-fun b!6417007 () Bool)

(declare-fun c!1172124 () Bool)

(assert (=> b!6417007 (= c!1172124 ((_ is ElementMatch!16317) r!7292))))

(declare-fun e!3893690 () Bool)

(assert (=> b!6417007 (= e!3893690 e!3893691)))

(declare-fun b!6417008 () Bool)

(assert (=> b!6417008 (= e!3893691 (= s!2326 (Cons!65128 (c!1171938 r!7292) Nil!65128)))))

(declare-fun b!6417009 () Bool)

(declare-fun res!2637201 () Bool)

(declare-fun e!3893692 () Bool)

(assert (=> b!6417009 (=> res!2637201 e!3893692)))

(assert (=> b!6417009 (= res!2637201 call!551683)))

(assert (=> b!6417009 (= e!3893693 e!3893692)))

(declare-fun bm!551677 () Bool)

(assert (=> bm!551677 (= call!551683 (isEmpty!37277 s!2326))))

(declare-fun d!2012284 () Bool)

(declare-fun c!1172125 () Bool)

(assert (=> d!2012284 (= c!1172125 ((_ is EmptyExpr!16317) r!7292))))

(assert (=> d!2012284 (= (matchRSpec!3418 r!7292 s!2326) e!3893694)))

(assert (=> b!6417010 (= e!3893692 call!551682)))

(declare-fun b!6417011 () Bool)

(assert (=> b!6417011 (= e!3893694 e!3893690)))

(declare-fun res!2637200 () Bool)

(assert (=> b!6417011 (= res!2637200 (not ((_ is EmptyLang!16317) r!7292)))))

(assert (=> b!6417011 (=> (not res!2637200) (not e!3893690))))

(declare-fun bm!551678 () Bool)

(assert (=> bm!551678 (= call!551682 (Exists!3387 (ite c!1172123 lambda!354367 lambda!354368)))))

(declare-fun b!6417012 () Bool)

(assert (=> b!6417012 (= e!3893689 e!3893688)))

(declare-fun res!2637199 () Bool)

(assert (=> b!6417012 (= res!2637199 (matchRSpec!3418 (regOne!33147 r!7292) s!2326))))

(assert (=> b!6417012 (=> res!2637199 e!3893688)))

(assert (= (and d!2012284 c!1172125) b!6417005))

(assert (= (and d!2012284 (not c!1172125)) b!6417011))

(assert (= (and b!6417011 res!2637200) b!6417007))

(assert (= (and b!6417007 c!1172124) b!6417008))

(assert (= (and b!6417007 (not c!1172124)) b!6417003))

(assert (= (and b!6417003 c!1172126) b!6417012))

(assert (= (and b!6417003 (not c!1172126)) b!6417004))

(assert (= (and b!6417012 (not res!2637199)) b!6417002))

(assert (= (and b!6417004 c!1172123) b!6417009))

(assert (= (and b!6417004 (not c!1172123)) b!6417006))

(assert (= (and b!6417009 (not res!2637201)) b!6417010))

(assert (= (or b!6417010 b!6417006) bm!551678))

(assert (= (or b!6417005 b!6417009) bm!551677))

(declare-fun m!7212316 () Bool)

(assert (=> b!6417002 m!7212316))

(assert (=> bm!551677 m!7212198))

(declare-fun m!7212318 () Bool)

(assert (=> bm!551678 m!7212318))

(declare-fun m!7212320 () Bool)

(assert (=> b!6417012 m!7212320))

(assert (=> b!6416278 d!2012284))

(declare-fun b!6417013 () Bool)

(declare-fun e!3893701 () Bool)

(declare-fun e!3893699 () Bool)

(assert (=> b!6417013 (= e!3893701 e!3893699)))

(declare-fun res!2637207 () Bool)

(assert (=> b!6417013 (=> res!2637207 e!3893699)))

(declare-fun call!551684 () Bool)

(assert (=> b!6417013 (= res!2637207 call!551684)))

(declare-fun b!6417014 () Bool)

(assert (=> b!6417014 (= e!3893699 (not (= (head!13125 s!2326) (c!1171938 r!7292))))))

(declare-fun b!6417015 () Bool)

(declare-fun e!3893698 () Bool)

(assert (=> b!6417015 (= e!3893698 (nullable!6310 r!7292))))

(declare-fun b!6417016 () Bool)

(declare-fun e!3893697 () Bool)

(assert (=> b!6417016 (= e!3893697 (= (head!13125 s!2326) (c!1171938 r!7292)))))

(declare-fun b!6417017 () Bool)

(declare-fun e!3893700 () Bool)

(declare-fun e!3893695 () Bool)

(assert (=> b!6417017 (= e!3893700 e!3893695)))

(declare-fun c!1172128 () Bool)

(assert (=> b!6417017 (= c!1172128 ((_ is EmptyLang!16317) r!7292))))

(declare-fun bm!551679 () Bool)

(assert (=> bm!551679 (= call!551684 (isEmpty!37277 s!2326))))

(declare-fun b!6417019 () Bool)

(declare-fun res!2637209 () Bool)

(declare-fun e!3893696 () Bool)

(assert (=> b!6417019 (=> res!2637209 e!3893696)))

(assert (=> b!6417019 (= res!2637209 e!3893697)))

(declare-fun res!2637206 () Bool)

(assert (=> b!6417019 (=> (not res!2637206) (not e!3893697))))

(declare-fun lt!2375880 () Bool)

(assert (=> b!6417019 (= res!2637206 lt!2375880)))

(declare-fun b!6417020 () Bool)

(declare-fun res!2637202 () Bool)

(assert (=> b!6417020 (=> res!2637202 e!3893699)))

(assert (=> b!6417020 (= res!2637202 (not (isEmpty!37277 (tail!12210 s!2326))))))

(declare-fun b!6417021 () Bool)

(declare-fun res!2637203 () Bool)

(assert (=> b!6417021 (=> res!2637203 e!3893696)))

(assert (=> b!6417021 (= res!2637203 (not ((_ is ElementMatch!16317) r!7292)))))

(assert (=> b!6417021 (= e!3893695 e!3893696)))

(declare-fun b!6417022 () Bool)

(assert (=> b!6417022 (= e!3893695 (not lt!2375880))))

(declare-fun b!6417023 () Bool)

(declare-fun res!2637204 () Bool)

(assert (=> b!6417023 (=> (not res!2637204) (not e!3893697))))

(assert (=> b!6417023 (= res!2637204 (not call!551684))))

(declare-fun b!6417024 () Bool)

(assert (=> b!6417024 (= e!3893698 (matchR!8500 (derivativeStep!5021 r!7292 (head!13125 s!2326)) (tail!12210 s!2326)))))

(declare-fun b!6417025 () Bool)

(declare-fun res!2637208 () Bool)

(assert (=> b!6417025 (=> (not res!2637208) (not e!3893697))))

(assert (=> b!6417025 (= res!2637208 (isEmpty!37277 (tail!12210 s!2326)))))

(declare-fun b!6417026 () Bool)

(assert (=> b!6417026 (= e!3893696 e!3893701)))

(declare-fun res!2637205 () Bool)

(assert (=> b!6417026 (=> (not res!2637205) (not e!3893701))))

(assert (=> b!6417026 (= res!2637205 (not lt!2375880))))

(declare-fun b!6417018 () Bool)

(assert (=> b!6417018 (= e!3893700 (= lt!2375880 call!551684))))

(declare-fun d!2012286 () Bool)

(assert (=> d!2012286 e!3893700))

(declare-fun c!1172129 () Bool)

(assert (=> d!2012286 (= c!1172129 ((_ is EmptyExpr!16317) r!7292))))

(assert (=> d!2012286 (= lt!2375880 e!3893698)))

(declare-fun c!1172127 () Bool)

(assert (=> d!2012286 (= c!1172127 (isEmpty!37277 s!2326))))

(assert (=> d!2012286 (validRegex!8053 r!7292)))

(assert (=> d!2012286 (= (matchR!8500 r!7292 s!2326) lt!2375880)))

(assert (= (and d!2012286 c!1172127) b!6417015))

(assert (= (and d!2012286 (not c!1172127)) b!6417024))

(assert (= (and d!2012286 c!1172129) b!6417018))

(assert (= (and d!2012286 (not c!1172129)) b!6417017))

(assert (= (and b!6417017 c!1172128) b!6417022))

(assert (= (and b!6417017 (not c!1172128)) b!6417021))

(assert (= (and b!6417021 (not res!2637203)) b!6417019))

(assert (= (and b!6417019 res!2637206) b!6417023))

(assert (= (and b!6417023 res!2637204) b!6417025))

(assert (= (and b!6417025 res!2637208) b!6417016))

(assert (= (and b!6417019 (not res!2637209)) b!6417026))

(assert (= (and b!6417026 res!2637205) b!6417013))

(assert (= (and b!6417013 (not res!2637207)) b!6417020))

(assert (= (and b!6417020 (not res!2637202)) b!6417014))

(assert (= (or b!6417018 b!6417013 b!6417023) bm!551679))

(assert (=> b!6417016 m!7212202))

(assert (=> b!6417014 m!7212202))

(assert (=> bm!551679 m!7212198))

(assert (=> b!6417024 m!7212202))

(assert (=> b!6417024 m!7212202))

(declare-fun m!7212322 () Bool)

(assert (=> b!6417024 m!7212322))

(assert (=> b!6417024 m!7212206))

(assert (=> b!6417024 m!7212322))

(assert (=> b!6417024 m!7212206))

(declare-fun m!7212324 () Bool)

(assert (=> b!6417024 m!7212324))

(assert (=> d!2012286 m!7212198))

(assert (=> d!2012286 m!7211676))

(assert (=> b!6417025 m!7212206))

(assert (=> b!6417025 m!7212206))

(declare-fun m!7212326 () Bool)

(assert (=> b!6417025 m!7212326))

(assert (=> b!6417020 m!7212206))

(assert (=> b!6417020 m!7212206))

(assert (=> b!6417020 m!7212326))

(declare-fun m!7212328 () Bool)

(assert (=> b!6417015 m!7212328))

(assert (=> b!6416278 d!2012286))

(declare-fun d!2012288 () Bool)

(assert (=> d!2012288 (= (matchR!8500 r!7292 s!2326) (matchRSpec!3418 r!7292 s!2326))))

(declare-fun lt!2375883 () Unit!158599)

(declare-fun choose!47662 (Regex!16317 List!65252) Unit!158599)

(assert (=> d!2012288 (= lt!2375883 (choose!47662 r!7292 s!2326))))

(assert (=> d!2012288 (validRegex!8053 r!7292)))

(assert (=> d!2012288 (= (mainMatchTheorem!3418 r!7292 s!2326) lt!2375883)))

(declare-fun bs!1613742 () Bool)

(assert (= bs!1613742 d!2012288))

(assert (=> bs!1613742 m!7211714))

(assert (=> bs!1613742 m!7211712))

(declare-fun m!7212330 () Bool)

(assert (=> bs!1613742 m!7212330))

(assert (=> bs!1613742 m!7211676))

(assert (=> b!6416278 d!2012288))

(declare-fun bs!1613743 () Bool)

(declare-fun d!2012290 () Bool)

(assert (= bs!1613743 (and d!2012290 d!2012198)))

(declare-fun lambda!354369 () Int)

(assert (=> bs!1613743 (= lambda!354369 lambda!354349)))

(declare-fun bs!1613744 () Bool)

(assert (= bs!1613744 (and d!2012290 d!2012276)))

(assert (=> bs!1613744 (= lambda!354369 lambda!354362)))

(assert (=> d!2012290 (= (inv!84039 (h!71575 zl!343)) (forall!15507 (exprs!6201 (h!71575 zl!343)) lambda!354369))))

(declare-fun bs!1613745 () Bool)

(assert (= bs!1613745 d!2012290))

(declare-fun m!7212332 () Bool)

(assert (=> bs!1613745 m!7212332))

(assert (=> b!6416299 d!2012290))

(declare-fun bs!1613746 () Bool)

(declare-fun d!2012292 () Bool)

(assert (= bs!1613746 (and d!2012292 d!2012198)))

(declare-fun lambda!354372 () Int)

(assert (=> bs!1613746 (= lambda!354372 lambda!354349)))

(declare-fun bs!1613747 () Bool)

(assert (= bs!1613747 (and d!2012292 d!2012276)))

(assert (=> bs!1613747 (= lambda!354372 lambda!354362)))

(declare-fun bs!1613748 () Bool)

(assert (= bs!1613748 (and d!2012292 d!2012290)))

(assert (=> bs!1613748 (= lambda!354372 lambda!354369)))

(declare-fun b!6417047 () Bool)

(declare-fun e!3893714 () Bool)

(declare-fun lt!2375886 () Regex!16317)

(declare-fun isEmptyLang!1725 (Regex!16317) Bool)

(assert (=> b!6417047 (= e!3893714 (isEmptyLang!1725 lt!2375886))))

(declare-fun b!6417048 () Bool)

(declare-fun e!3893716 () Bool)

(assert (=> b!6417048 (= e!3893716 e!3893714)))

(declare-fun c!1172138 () Bool)

(assert (=> b!6417048 (= c!1172138 (isEmpty!37276 (unfocusZipperList!1738 zl!343)))))

(declare-fun b!6417049 () Bool)

(declare-fun e!3893718 () Regex!16317)

(declare-fun e!3893719 () Regex!16317)

(assert (=> b!6417049 (= e!3893718 e!3893719)))

(declare-fun c!1172141 () Bool)

(assert (=> b!6417049 (= c!1172141 ((_ is Cons!65126) (unfocusZipperList!1738 zl!343)))))

(declare-fun b!6417050 () Bool)

(declare-fun e!3893717 () Bool)

(assert (=> b!6417050 (= e!3893717 (isEmpty!37276 (t!378864 (unfocusZipperList!1738 zl!343))))))

(declare-fun b!6417051 () Bool)

(assert (=> b!6417051 (= e!3893718 (h!71574 (unfocusZipperList!1738 zl!343)))))

(assert (=> d!2012292 e!3893716))

(declare-fun res!2637215 () Bool)

(assert (=> d!2012292 (=> (not res!2637215) (not e!3893716))))

(assert (=> d!2012292 (= res!2637215 (validRegex!8053 lt!2375886))))

(assert (=> d!2012292 (= lt!2375886 e!3893718)))

(declare-fun c!1172140 () Bool)

(assert (=> d!2012292 (= c!1172140 e!3893717)))

(declare-fun res!2637214 () Bool)

(assert (=> d!2012292 (=> (not res!2637214) (not e!3893717))))

(assert (=> d!2012292 (= res!2637214 ((_ is Cons!65126) (unfocusZipperList!1738 zl!343)))))

(assert (=> d!2012292 (forall!15507 (unfocusZipperList!1738 zl!343) lambda!354372)))

(assert (=> d!2012292 (= (generalisedUnion!2161 (unfocusZipperList!1738 zl!343)) lt!2375886)))

(declare-fun b!6417052 () Bool)

(declare-fun e!3893715 () Bool)

(assert (=> b!6417052 (= e!3893714 e!3893715)))

(declare-fun c!1172139 () Bool)

(assert (=> b!6417052 (= c!1172139 (isEmpty!37276 (tail!12211 (unfocusZipperList!1738 zl!343))))))

(declare-fun b!6417053 () Bool)

(assert (=> b!6417053 (= e!3893719 (Union!16317 (h!71574 (unfocusZipperList!1738 zl!343)) (generalisedUnion!2161 (t!378864 (unfocusZipperList!1738 zl!343)))))))

(declare-fun b!6417054 () Bool)

(assert (=> b!6417054 (= e!3893719 EmptyLang!16317)))

(declare-fun b!6417055 () Bool)

(assert (=> b!6417055 (= e!3893715 (= lt!2375886 (head!13126 (unfocusZipperList!1738 zl!343))))))

(declare-fun b!6417056 () Bool)

(declare-fun isUnion!1155 (Regex!16317) Bool)

(assert (=> b!6417056 (= e!3893715 (isUnion!1155 lt!2375886))))

(assert (= (and d!2012292 res!2637214) b!6417050))

(assert (= (and d!2012292 c!1172140) b!6417051))

(assert (= (and d!2012292 (not c!1172140)) b!6417049))

(assert (= (and b!6417049 c!1172141) b!6417053))

(assert (= (and b!6417049 (not c!1172141)) b!6417054))

(assert (= (and d!2012292 res!2637215) b!6417048))

(assert (= (and b!6417048 c!1172138) b!6417047))

(assert (= (and b!6417048 (not c!1172138)) b!6417052))

(assert (= (and b!6417052 c!1172139) b!6417055))

(assert (= (and b!6417052 (not c!1172139)) b!6417056))

(declare-fun m!7212334 () Bool)

(assert (=> d!2012292 m!7212334))

(assert (=> d!2012292 m!7211768))

(declare-fun m!7212336 () Bool)

(assert (=> d!2012292 m!7212336))

(assert (=> b!6417048 m!7211768))

(declare-fun m!7212338 () Bool)

(assert (=> b!6417048 m!7212338))

(declare-fun m!7212340 () Bool)

(assert (=> b!6417056 m!7212340))

(declare-fun m!7212342 () Bool)

(assert (=> b!6417050 m!7212342))

(declare-fun m!7212344 () Bool)

(assert (=> b!6417053 m!7212344))

(declare-fun m!7212346 () Bool)

(assert (=> b!6417047 m!7212346))

(assert (=> b!6417055 m!7211768))

(declare-fun m!7212348 () Bool)

(assert (=> b!6417055 m!7212348))

(assert (=> b!6417052 m!7211768))

(declare-fun m!7212350 () Bool)

(assert (=> b!6417052 m!7212350))

(assert (=> b!6417052 m!7212350))

(declare-fun m!7212352 () Bool)

(assert (=> b!6417052 m!7212352))

(assert (=> b!6416297 d!2012292))

(declare-fun bs!1613749 () Bool)

(declare-fun d!2012294 () Bool)

(assert (= bs!1613749 (and d!2012294 d!2012198)))

(declare-fun lambda!354375 () Int)

(assert (=> bs!1613749 (= lambda!354375 lambda!354349)))

(declare-fun bs!1613750 () Bool)

(assert (= bs!1613750 (and d!2012294 d!2012276)))

(assert (=> bs!1613750 (= lambda!354375 lambda!354362)))

(declare-fun bs!1613751 () Bool)

(assert (= bs!1613751 (and d!2012294 d!2012290)))

(assert (=> bs!1613751 (= lambda!354375 lambda!354369)))

(declare-fun bs!1613752 () Bool)

(assert (= bs!1613752 (and d!2012294 d!2012292)))

(assert (=> bs!1613752 (= lambda!354375 lambda!354372)))

(declare-fun lt!2375889 () List!65250)

(assert (=> d!2012294 (forall!15507 lt!2375889 lambda!354375)))

(declare-fun e!3893722 () List!65250)

(assert (=> d!2012294 (= lt!2375889 e!3893722)))

(declare-fun c!1172144 () Bool)

(assert (=> d!2012294 (= c!1172144 ((_ is Cons!65127) zl!343))))

(assert (=> d!2012294 (= (unfocusZipperList!1738 zl!343) lt!2375889)))

(declare-fun b!6417061 () Bool)

(assert (=> b!6417061 (= e!3893722 (Cons!65126 (generalisedConcat!1914 (exprs!6201 (h!71575 zl!343))) (unfocusZipperList!1738 (t!378865 zl!343))))))

(declare-fun b!6417062 () Bool)

(assert (=> b!6417062 (= e!3893722 Nil!65126)))

(assert (= (and d!2012294 c!1172144) b!6417061))

(assert (= (and d!2012294 (not c!1172144)) b!6417062))

(declare-fun m!7212354 () Bool)

(assert (=> d!2012294 m!7212354))

(assert (=> b!6417061 m!7211686))

(declare-fun m!7212356 () Bool)

(assert (=> b!6417061 m!7212356))

(assert (=> b!6416297 d!2012294))

(declare-fun d!2012296 () Bool)

(declare-fun lt!2375890 () Regex!16317)

(assert (=> d!2012296 (validRegex!8053 lt!2375890)))

(assert (=> d!2012296 (= lt!2375890 (generalisedUnion!2161 (unfocusZipperList!1738 (Cons!65127 lt!2375772 Nil!65127))))))

(assert (=> d!2012296 (= (unfocusZipper!2059 (Cons!65127 lt!2375772 Nil!65127)) lt!2375890)))

(declare-fun bs!1613753 () Bool)

(assert (= bs!1613753 d!2012296))

(declare-fun m!7212358 () Bool)

(assert (=> bs!1613753 m!7212358))

(declare-fun m!7212360 () Bool)

(assert (=> bs!1613753 m!7212360))

(assert (=> bs!1613753 m!7212360))

(declare-fun m!7212362 () Bool)

(assert (=> bs!1613753 m!7212362))

(assert (=> b!6416298 d!2012296))

(declare-fun b!6417063 () Bool)

(declare-fun e!3893725 () Bool)

(assert (=> b!6417063 (= e!3893725 (nullable!6310 (h!71574 (exprs!6201 lt!2375772))))))

(declare-fun b!6417064 () Bool)

(declare-fun e!3893723 () (InoxSet Context!11402))

(assert (=> b!6417064 (= e!3893723 ((as const (Array Context!11402 Bool)) false))))

(declare-fun e!3893724 () (InoxSet Context!11402))

(declare-fun b!6417065 () Bool)

(declare-fun call!551685 () (InoxSet Context!11402))

(assert (=> b!6417065 (= e!3893724 ((_ map or) call!551685 (derivationStepZipperUp!1491 (Context!11403 (t!378864 (exprs!6201 lt!2375772))) (h!71576 s!2326))))))

(declare-fun bm!551680 () Bool)

(assert (=> bm!551680 (= call!551685 (derivationStepZipperDown!1565 (h!71574 (exprs!6201 lt!2375772)) (Context!11403 (t!378864 (exprs!6201 lt!2375772))) (h!71576 s!2326)))))

(declare-fun d!2012298 () Bool)

(declare-fun c!1172145 () Bool)

(assert (=> d!2012298 (= c!1172145 e!3893725)))

(declare-fun res!2637216 () Bool)

(assert (=> d!2012298 (=> (not res!2637216) (not e!3893725))))

(assert (=> d!2012298 (= res!2637216 ((_ is Cons!65126) (exprs!6201 lt!2375772)))))

(assert (=> d!2012298 (= (derivationStepZipperUp!1491 lt!2375772 (h!71576 s!2326)) e!3893724)))

(declare-fun b!6417066 () Bool)

(assert (=> b!6417066 (= e!3893724 e!3893723)))

(declare-fun c!1172146 () Bool)

(assert (=> b!6417066 (= c!1172146 ((_ is Cons!65126) (exprs!6201 lt!2375772)))))

(declare-fun b!6417067 () Bool)

(assert (=> b!6417067 (= e!3893723 call!551685)))

(assert (= (and d!2012298 res!2637216) b!6417063))

(assert (= (and d!2012298 c!1172145) b!6417065))

(assert (= (and d!2012298 (not c!1172145)) b!6417066))

(assert (= (and b!6417066 c!1172146) b!6417067))

(assert (= (and b!6417066 (not c!1172146)) b!6417064))

(assert (= (or b!6417065 b!6417067) bm!551680))

(declare-fun m!7212364 () Bool)

(assert (=> b!6417063 m!7212364))

(declare-fun m!7212366 () Bool)

(assert (=> b!6417065 m!7212366))

(declare-fun m!7212368 () Bool)

(assert (=> bm!551680 m!7212368))

(assert (=> b!6416298 d!2012298))

(declare-fun d!2012300 () Bool)

(assert (=> d!2012300 (= (flatMap!1822 lt!2375771 lambda!354303) (choose!47656 lt!2375771 lambda!354303))))

(declare-fun bs!1613754 () Bool)

(assert (= bs!1613754 d!2012300))

(declare-fun m!7212370 () Bool)

(assert (=> bs!1613754 m!7212370))

(assert (=> b!6416298 d!2012300))

(declare-fun b!6417068 () Bool)

(declare-fun e!3893728 () Bool)

(assert (=> b!6417068 (= e!3893728 (nullable!6310 (h!71574 (exprs!6201 lt!2375766))))))

(declare-fun b!6417069 () Bool)

(declare-fun e!3893726 () (InoxSet Context!11402))

(assert (=> b!6417069 (= e!3893726 ((as const (Array Context!11402 Bool)) false))))

(declare-fun b!6417070 () Bool)

(declare-fun call!551686 () (InoxSet Context!11402))

(declare-fun e!3893727 () (InoxSet Context!11402))

(assert (=> b!6417070 (= e!3893727 ((_ map or) call!551686 (derivationStepZipperUp!1491 (Context!11403 (t!378864 (exprs!6201 lt!2375766))) (h!71576 s!2326))))))

(declare-fun bm!551681 () Bool)

(assert (=> bm!551681 (= call!551686 (derivationStepZipperDown!1565 (h!71574 (exprs!6201 lt!2375766)) (Context!11403 (t!378864 (exprs!6201 lt!2375766))) (h!71576 s!2326)))))

(declare-fun d!2012302 () Bool)

(declare-fun c!1172147 () Bool)

(assert (=> d!2012302 (= c!1172147 e!3893728)))

(declare-fun res!2637217 () Bool)

(assert (=> d!2012302 (=> (not res!2637217) (not e!3893728))))

(assert (=> d!2012302 (= res!2637217 ((_ is Cons!65126) (exprs!6201 lt!2375766)))))

(assert (=> d!2012302 (= (derivationStepZipperUp!1491 lt!2375766 (h!71576 s!2326)) e!3893727)))

(declare-fun b!6417071 () Bool)

(assert (=> b!6417071 (= e!3893727 e!3893726)))

(declare-fun c!1172148 () Bool)

(assert (=> b!6417071 (= c!1172148 ((_ is Cons!65126) (exprs!6201 lt!2375766)))))

(declare-fun b!6417072 () Bool)

(assert (=> b!6417072 (= e!3893726 call!551686)))

(assert (= (and d!2012302 res!2637217) b!6417068))

(assert (= (and d!2012302 c!1172147) b!6417070))

(assert (= (and d!2012302 (not c!1172147)) b!6417071))

(assert (= (and b!6417071 c!1172148) b!6417072))

(assert (= (and b!6417071 (not c!1172148)) b!6417069))

(assert (= (or b!6417070 b!6417072) bm!551681))

(declare-fun m!7212372 () Bool)

(assert (=> b!6417068 m!7212372))

(declare-fun m!7212374 () Bool)

(assert (=> b!6417070 m!7212374))

(declare-fun m!7212376 () Bool)

(assert (=> bm!551681 m!7212376))

(assert (=> b!6416298 d!2012302))

(declare-fun d!2012304 () Bool)

(assert (=> d!2012304 (= (flatMap!1822 lt!2375771 lambda!354303) (dynLambda!25871 lambda!354303 lt!2375766))))

(declare-fun lt!2375891 () Unit!158599)

(assert (=> d!2012304 (= lt!2375891 (choose!47658 lt!2375771 lt!2375766 lambda!354303))))

(assert (=> d!2012304 (= lt!2375771 (store ((as const (Array Context!11402 Bool)) false) lt!2375766 true))))

(assert (=> d!2012304 (= (lemmaFlatMapOnSingletonSet!1348 lt!2375771 lt!2375766 lambda!354303) lt!2375891)))

(declare-fun b_lambda!243967 () Bool)

(assert (=> (not b_lambda!243967) (not d!2012304)))

(declare-fun bs!1613755 () Bool)

(assert (= bs!1613755 d!2012304))

(assert (=> bs!1613755 m!7211668))

(declare-fun m!7212378 () Bool)

(assert (=> bs!1613755 m!7212378))

(declare-fun m!7212380 () Bool)

(assert (=> bs!1613755 m!7212380))

(assert (=> bs!1613755 m!7211670))

(assert (=> b!6416298 d!2012304))

(declare-fun d!2012306 () Bool)

(assert (=> d!2012306 (= (flatMap!1822 lt!2375777 lambda!354303) (choose!47656 lt!2375777 lambda!354303))))

(declare-fun bs!1613756 () Bool)

(assert (= bs!1613756 d!2012306))

(declare-fun m!7212382 () Bool)

(assert (=> bs!1613756 m!7212382))

(assert (=> b!6416298 d!2012306))

(declare-fun d!2012308 () Bool)

(assert (=> d!2012308 (= (flatMap!1822 lt!2375777 lambda!354303) (dynLambda!25871 lambda!354303 lt!2375772))))

(declare-fun lt!2375892 () Unit!158599)

(assert (=> d!2012308 (= lt!2375892 (choose!47658 lt!2375777 lt!2375772 lambda!354303))))

(assert (=> d!2012308 (= lt!2375777 (store ((as const (Array Context!11402 Bool)) false) lt!2375772 true))))

(assert (=> d!2012308 (= (lemmaFlatMapOnSingletonSet!1348 lt!2375777 lt!2375772 lambda!354303) lt!2375892)))

(declare-fun b_lambda!243969 () Bool)

(assert (=> (not b_lambda!243969) (not d!2012308)))

(declare-fun bs!1613757 () Bool)

(assert (= bs!1613757 d!2012308))

(assert (=> bs!1613757 m!7211672))

(declare-fun m!7212384 () Bool)

(assert (=> bs!1613757 m!7212384))

(declare-fun m!7212386 () Bool)

(assert (=> bs!1613757 m!7212386))

(assert (=> bs!1613757 m!7211674))

(assert (=> b!6416298 d!2012308))

(declare-fun d!2012310 () Bool)

(declare-fun e!3893731 () Bool)

(assert (=> d!2012310 e!3893731))

(declare-fun res!2637220 () Bool)

(assert (=> d!2012310 (=> (not res!2637220) (not e!3893731))))

(declare-fun lt!2375895 () List!65251)

(declare-fun noDuplicate!2146 (List!65251) Bool)

(assert (=> d!2012310 (= res!2637220 (noDuplicate!2146 lt!2375895))))

(declare-fun choose!47663 ((InoxSet Context!11402)) List!65251)

(assert (=> d!2012310 (= lt!2375895 (choose!47663 z!1189))))

(assert (=> d!2012310 (= (toList!10101 z!1189) lt!2375895)))

(declare-fun b!6417075 () Bool)

(declare-fun content!12349 (List!65251) (InoxSet Context!11402))

(assert (=> b!6417075 (= e!3893731 (= (content!12349 lt!2375895) z!1189))))

(assert (= (and d!2012310 res!2637220) b!6417075))

(declare-fun m!7212388 () Bool)

(assert (=> d!2012310 m!7212388))

(declare-fun m!7212390 () Bool)

(assert (=> d!2012310 m!7212390))

(declare-fun m!7212392 () Bool)

(assert (=> b!6417075 m!7212392))

(assert (=> b!6416317 d!2012310))

(declare-fun bm!551694 () Bool)

(declare-fun call!551699 () List!65250)

(declare-fun call!551703 () List!65250)

(assert (=> bm!551694 (= call!551699 call!551703)))

(declare-fun b!6417098 () Bool)

(declare-fun e!3893746 () (InoxSet Context!11402))

(assert (=> b!6417098 (= e!3893746 ((as const (Array Context!11402 Bool)) false))))

(declare-fun b!6417099 () Bool)

(declare-fun c!1172162 () Bool)

(declare-fun e!3893745 () Bool)

(assert (=> b!6417099 (= c!1172162 e!3893745)))

(declare-fun res!2637223 () Bool)

(assert (=> b!6417099 (=> (not res!2637223) (not e!3893745))))

(assert (=> b!6417099 (= res!2637223 ((_ is Concat!25162) (reg!16646 (regOne!33146 r!7292))))))

(declare-fun e!3893748 () (InoxSet Context!11402))

(declare-fun e!3893749 () (InoxSet Context!11402))

(assert (=> b!6417099 (= e!3893748 e!3893749)))

(declare-fun c!1172161 () Bool)

(declare-fun call!551704 () (InoxSet Context!11402))

(declare-fun c!1172160 () Bool)

(declare-fun bm!551695 () Bool)

(assert (=> bm!551695 (= call!551704 (derivationStepZipperDown!1565 (ite c!1172161 (regOne!33147 (reg!16646 (regOne!33146 r!7292))) (ite c!1172162 (regTwo!33146 (reg!16646 (regOne!33146 r!7292))) (ite c!1172160 (regOne!33146 (reg!16646 (regOne!33146 r!7292))) (reg!16646 (reg!16646 (regOne!33146 r!7292)))))) (ite (or c!1172161 c!1172162) lt!2375766 (Context!11403 call!551699)) (h!71576 s!2326)))))

(declare-fun bm!551696 () Bool)

(declare-fun call!551700 () (InoxSet Context!11402))

(assert (=> bm!551696 (= call!551700 call!551704)))

(declare-fun call!551701 () (InoxSet Context!11402))

(declare-fun bm!551697 () Bool)

(assert (=> bm!551697 (= call!551701 (derivationStepZipperDown!1565 (ite c!1172161 (regTwo!33147 (reg!16646 (regOne!33146 r!7292))) (regOne!33146 (reg!16646 (regOne!33146 r!7292)))) (ite c!1172161 lt!2375766 (Context!11403 call!551703)) (h!71576 s!2326)))))

(declare-fun b!6417100 () Bool)

(declare-fun e!3893744 () (InoxSet Context!11402))

(assert (=> b!6417100 (= e!3893744 e!3893748)))

(assert (=> b!6417100 (= c!1172161 ((_ is Union!16317) (reg!16646 (regOne!33146 r!7292))))))

(declare-fun d!2012312 () Bool)

(declare-fun c!1172163 () Bool)

(assert (=> d!2012312 (= c!1172163 (and ((_ is ElementMatch!16317) (reg!16646 (regOne!33146 r!7292))) (= (c!1171938 (reg!16646 (regOne!33146 r!7292))) (h!71576 s!2326))))))

(assert (=> d!2012312 (= (derivationStepZipperDown!1565 (reg!16646 (regOne!33146 r!7292)) lt!2375766 (h!71576 s!2326)) e!3893744)))

(declare-fun bm!551698 () Bool)

(declare-fun call!551702 () (InoxSet Context!11402))

(assert (=> bm!551698 (= call!551702 call!551700)))

(declare-fun bm!551699 () Bool)

(declare-fun $colon$colon!2178 (List!65250 Regex!16317) List!65250)

(assert (=> bm!551699 (= call!551703 ($colon$colon!2178 (exprs!6201 lt!2375766) (ite (or c!1172162 c!1172160) (regTwo!33146 (reg!16646 (regOne!33146 r!7292))) (reg!16646 (regOne!33146 r!7292)))))))

(declare-fun b!6417101 () Bool)

(assert (=> b!6417101 (= e!3893749 ((_ map or) call!551701 call!551700))))

(declare-fun b!6417102 () Bool)

(assert (=> b!6417102 (= e!3893746 call!551702)))

(declare-fun b!6417103 () Bool)

(declare-fun c!1172159 () Bool)

(assert (=> b!6417103 (= c!1172159 ((_ is Star!16317) (reg!16646 (regOne!33146 r!7292))))))

(declare-fun e!3893747 () (InoxSet Context!11402))

(assert (=> b!6417103 (= e!3893747 e!3893746)))

(declare-fun b!6417104 () Bool)

(assert (=> b!6417104 (= e!3893749 e!3893747)))

(assert (=> b!6417104 (= c!1172160 ((_ is Concat!25162) (reg!16646 (regOne!33146 r!7292))))))

(declare-fun b!6417105 () Bool)

(assert (=> b!6417105 (= e!3893748 ((_ map or) call!551704 call!551701))))

(declare-fun b!6417106 () Bool)

(assert (=> b!6417106 (= e!3893744 (store ((as const (Array Context!11402 Bool)) false) lt!2375766 true))))

(declare-fun b!6417107 () Bool)

(assert (=> b!6417107 (= e!3893745 (nullable!6310 (regOne!33146 (reg!16646 (regOne!33146 r!7292)))))))

(declare-fun b!6417108 () Bool)

(assert (=> b!6417108 (= e!3893747 call!551702)))

(assert (= (and d!2012312 c!1172163) b!6417106))

(assert (= (and d!2012312 (not c!1172163)) b!6417100))

(assert (= (and b!6417100 c!1172161) b!6417105))

(assert (= (and b!6417100 (not c!1172161)) b!6417099))

(assert (= (and b!6417099 res!2637223) b!6417107))

(assert (= (and b!6417099 c!1172162) b!6417101))

(assert (= (and b!6417099 (not c!1172162)) b!6417104))

(assert (= (and b!6417104 c!1172160) b!6417108))

(assert (= (and b!6417104 (not c!1172160)) b!6417103))

(assert (= (and b!6417103 c!1172159) b!6417102))

(assert (= (and b!6417103 (not c!1172159)) b!6417098))

(assert (= (or b!6417108 b!6417102) bm!551694))

(assert (= (or b!6417108 b!6417102) bm!551698))

(assert (= (or b!6417101 bm!551694) bm!551699))

(assert (= (or b!6417101 bm!551698) bm!551696))

(assert (= (or b!6417105 b!6417101) bm!551697))

(assert (= (or b!6417105 bm!551696) bm!551695))

(declare-fun m!7212394 () Bool)

(assert (=> b!6417107 m!7212394))

(declare-fun m!7212396 () Bool)

(assert (=> bm!551697 m!7212396))

(declare-fun m!7212398 () Bool)

(assert (=> bm!551695 m!7212398))

(declare-fun m!7212400 () Bool)

(assert (=> bm!551699 m!7212400))

(assert (=> b!6417106 m!7211670))

(assert (=> b!6416301 d!2012312))

(declare-fun d!2012314 () Bool)

(assert (=> d!2012314 (= (isEmpty!37277 (_1!36599 lt!2375768)) ((_ is Nil!65128) (_1!36599 lt!2375768)))))

(assert (=> b!6416302 d!2012314))

(declare-fun b!6417109 () Bool)

(declare-fun e!3893756 () Bool)

(declare-fun e!3893754 () Bool)

(assert (=> b!6417109 (= e!3893756 e!3893754)))

(declare-fun res!2637229 () Bool)

(assert (=> b!6417109 (=> res!2637229 e!3893754)))

(declare-fun call!551705 () Bool)

(assert (=> b!6417109 (= res!2637229 call!551705)))

(declare-fun b!6417110 () Bool)

(assert (=> b!6417110 (= e!3893754 (not (= (head!13125 (_1!36599 lt!2375768)) (c!1171938 lt!2375781))))))

(declare-fun b!6417111 () Bool)

(declare-fun e!3893753 () Bool)

(assert (=> b!6417111 (= e!3893753 (nullable!6310 lt!2375781))))

(declare-fun b!6417112 () Bool)

(declare-fun e!3893752 () Bool)

(assert (=> b!6417112 (= e!3893752 (= (head!13125 (_1!36599 lt!2375768)) (c!1171938 lt!2375781)))))

(declare-fun b!6417113 () Bool)

(declare-fun e!3893755 () Bool)

(declare-fun e!3893750 () Bool)

(assert (=> b!6417113 (= e!3893755 e!3893750)))

(declare-fun c!1172165 () Bool)

(assert (=> b!6417113 (= c!1172165 ((_ is EmptyLang!16317) lt!2375781))))

(declare-fun bm!551700 () Bool)

(assert (=> bm!551700 (= call!551705 (isEmpty!37277 (_1!36599 lt!2375768)))))

(declare-fun b!6417115 () Bool)

(declare-fun res!2637231 () Bool)

(declare-fun e!3893751 () Bool)

(assert (=> b!6417115 (=> res!2637231 e!3893751)))

(assert (=> b!6417115 (= res!2637231 e!3893752)))

(declare-fun res!2637228 () Bool)

(assert (=> b!6417115 (=> (not res!2637228) (not e!3893752))))

(declare-fun lt!2375896 () Bool)

(assert (=> b!6417115 (= res!2637228 lt!2375896)))

(declare-fun b!6417116 () Bool)

(declare-fun res!2637224 () Bool)

(assert (=> b!6417116 (=> res!2637224 e!3893754)))

(assert (=> b!6417116 (= res!2637224 (not (isEmpty!37277 (tail!12210 (_1!36599 lt!2375768)))))))

(declare-fun b!6417117 () Bool)

(declare-fun res!2637225 () Bool)

(assert (=> b!6417117 (=> res!2637225 e!3893751)))

(assert (=> b!6417117 (= res!2637225 (not ((_ is ElementMatch!16317) lt!2375781)))))

(assert (=> b!6417117 (= e!3893750 e!3893751)))

(declare-fun b!6417118 () Bool)

(assert (=> b!6417118 (= e!3893750 (not lt!2375896))))

(declare-fun b!6417119 () Bool)

(declare-fun res!2637226 () Bool)

(assert (=> b!6417119 (=> (not res!2637226) (not e!3893752))))

(assert (=> b!6417119 (= res!2637226 (not call!551705))))

(declare-fun b!6417120 () Bool)

(assert (=> b!6417120 (= e!3893753 (matchR!8500 (derivativeStep!5021 lt!2375781 (head!13125 (_1!36599 lt!2375768))) (tail!12210 (_1!36599 lt!2375768))))))

(declare-fun b!6417121 () Bool)

(declare-fun res!2637230 () Bool)

(assert (=> b!6417121 (=> (not res!2637230) (not e!3893752))))

(assert (=> b!6417121 (= res!2637230 (isEmpty!37277 (tail!12210 (_1!36599 lt!2375768))))))

(declare-fun b!6417122 () Bool)

(assert (=> b!6417122 (= e!3893751 e!3893756)))

(declare-fun res!2637227 () Bool)

(assert (=> b!6417122 (=> (not res!2637227) (not e!3893756))))

(assert (=> b!6417122 (= res!2637227 (not lt!2375896))))

(declare-fun b!6417114 () Bool)

(assert (=> b!6417114 (= e!3893755 (= lt!2375896 call!551705))))

(declare-fun d!2012316 () Bool)

(assert (=> d!2012316 e!3893755))

(declare-fun c!1172166 () Bool)

(assert (=> d!2012316 (= c!1172166 ((_ is EmptyExpr!16317) lt!2375781))))

(assert (=> d!2012316 (= lt!2375896 e!3893753)))

(declare-fun c!1172164 () Bool)

(assert (=> d!2012316 (= c!1172164 (isEmpty!37277 (_1!36599 lt!2375768)))))

(assert (=> d!2012316 (validRegex!8053 lt!2375781)))

(assert (=> d!2012316 (= (matchR!8500 lt!2375781 (_1!36599 lt!2375768)) lt!2375896)))

(assert (= (and d!2012316 c!1172164) b!6417111))

(assert (= (and d!2012316 (not c!1172164)) b!6417120))

(assert (= (and d!2012316 c!1172166) b!6417114))

(assert (= (and d!2012316 (not c!1172166)) b!6417113))

(assert (= (and b!6417113 c!1172165) b!6417118))

(assert (= (and b!6417113 (not c!1172165)) b!6417117))

(assert (= (and b!6417117 (not res!2637225)) b!6417115))

(assert (= (and b!6417115 res!2637228) b!6417119))

(assert (= (and b!6417119 res!2637226) b!6417121))

(assert (= (and b!6417121 res!2637230) b!6417112))

(assert (= (and b!6417115 (not res!2637231)) b!6417122))

(assert (= (and b!6417122 res!2637227) b!6417109))

(assert (= (and b!6417109 (not res!2637229)) b!6417116))

(assert (= (and b!6417116 (not res!2637224)) b!6417110))

(assert (= (or b!6417114 b!6417109 b!6417119) bm!551700))

(declare-fun m!7212402 () Bool)

(assert (=> b!6417112 m!7212402))

(assert (=> b!6417110 m!7212402))

(assert (=> bm!551700 m!7211654))

(assert (=> b!6417120 m!7212402))

(assert (=> b!6417120 m!7212402))

(declare-fun m!7212404 () Bool)

(assert (=> b!6417120 m!7212404))

(declare-fun m!7212406 () Bool)

(assert (=> b!6417120 m!7212406))

(assert (=> b!6417120 m!7212404))

(assert (=> b!6417120 m!7212406))

(declare-fun m!7212408 () Bool)

(assert (=> b!6417120 m!7212408))

(assert (=> d!2012316 m!7211654))

(assert (=> d!2012316 m!7211778))

(assert (=> b!6417121 m!7212406))

(assert (=> b!6417121 m!7212406))

(declare-fun m!7212410 () Bool)

(assert (=> b!6417121 m!7212410))

(assert (=> b!6417116 m!7212406))

(assert (=> b!6417116 m!7212406))

(assert (=> b!6417116 m!7212410))

(declare-fun m!7212412 () Bool)

(assert (=> b!6417111 m!7212412))

(assert (=> b!6416300 d!2012316))

(declare-fun e!3893759 () Bool)

(declare-fun d!2012318 () Bool)

(assert (=> d!2012318 (= (matchZipper!2329 ((_ map or) lt!2375763 lt!2375761) (t!378866 s!2326)) e!3893759)))

(declare-fun res!2637234 () Bool)

(assert (=> d!2012318 (=> res!2637234 e!3893759)))

(assert (=> d!2012318 (= res!2637234 (matchZipper!2329 lt!2375763 (t!378866 s!2326)))))

(declare-fun lt!2375899 () Unit!158599)

(declare-fun choose!47665 ((InoxSet Context!11402) (InoxSet Context!11402) List!65252) Unit!158599)

(assert (=> d!2012318 (= lt!2375899 (choose!47665 lt!2375763 lt!2375761 (t!378866 s!2326)))))

(assert (=> d!2012318 (= (lemmaZipperConcatMatchesSameAsBothZippers!1148 lt!2375763 lt!2375761 (t!378866 s!2326)) lt!2375899)))

(declare-fun b!6417125 () Bool)

(assert (=> b!6417125 (= e!3893759 (matchZipper!2329 lt!2375761 (t!378866 s!2326)))))

(assert (= (and d!2012318 (not res!2637234)) b!6417125))

(assert (=> d!2012318 m!7211682))

(assert (=> d!2012318 m!7211680))

(declare-fun m!7212414 () Bool)

(assert (=> d!2012318 m!7212414))

(assert (=> b!6417125 m!7211772))

(assert (=> b!6416279 d!2012318))

(declare-fun d!2012320 () Bool)

(declare-fun c!1172167 () Bool)

(assert (=> d!2012320 (= c!1172167 (isEmpty!37277 (t!378866 s!2326)))))

(declare-fun e!3893760 () Bool)

(assert (=> d!2012320 (= (matchZipper!2329 lt!2375763 (t!378866 s!2326)) e!3893760)))

(declare-fun b!6417126 () Bool)

(assert (=> b!6417126 (= e!3893760 (nullableZipper!2081 lt!2375763))))

(declare-fun b!6417127 () Bool)

(assert (=> b!6417127 (= e!3893760 (matchZipper!2329 (derivationStepZipper!2283 lt!2375763 (head!13125 (t!378866 s!2326))) (tail!12210 (t!378866 s!2326))))))

(assert (= (and d!2012320 c!1172167) b!6417126))

(assert (= (and d!2012320 (not c!1172167)) b!6417127))

(assert (=> d!2012320 m!7212210))

(declare-fun m!7212416 () Bool)

(assert (=> b!6417126 m!7212416))

(assert (=> b!6417127 m!7212214))

(assert (=> b!6417127 m!7212214))

(declare-fun m!7212418 () Bool)

(assert (=> b!6417127 m!7212418))

(assert (=> b!6417127 m!7212218))

(assert (=> b!6417127 m!7212418))

(assert (=> b!6417127 m!7212218))

(declare-fun m!7212420 () Bool)

(assert (=> b!6417127 m!7212420))

(assert (=> b!6416279 d!2012320))

(declare-fun d!2012322 () Bool)

(declare-fun c!1172168 () Bool)

(assert (=> d!2012322 (= c!1172168 (isEmpty!37277 (t!378866 s!2326)))))

(declare-fun e!3893761 () Bool)

(assert (=> d!2012322 (= (matchZipper!2329 ((_ map or) lt!2375763 lt!2375761) (t!378866 s!2326)) e!3893761)))

(declare-fun b!6417128 () Bool)

(assert (=> b!6417128 (= e!3893761 (nullableZipper!2081 ((_ map or) lt!2375763 lt!2375761)))))

(declare-fun b!6417129 () Bool)

(assert (=> b!6417129 (= e!3893761 (matchZipper!2329 (derivationStepZipper!2283 ((_ map or) lt!2375763 lt!2375761) (head!13125 (t!378866 s!2326))) (tail!12210 (t!378866 s!2326))))))

(assert (= (and d!2012322 c!1172168) b!6417128))

(assert (= (and d!2012322 (not c!1172168)) b!6417129))

(assert (=> d!2012322 m!7212210))

(declare-fun m!7212422 () Bool)

(assert (=> b!6417128 m!7212422))

(assert (=> b!6417129 m!7212214))

(assert (=> b!6417129 m!7212214))

(declare-fun m!7212424 () Bool)

(assert (=> b!6417129 m!7212424))

(assert (=> b!6417129 m!7212218))

(assert (=> b!6417129 m!7212424))

(assert (=> b!6417129 m!7212218))

(declare-fun m!7212426 () Bool)

(assert (=> b!6417129 m!7212426))

(assert (=> b!6416279 d!2012322))

(declare-fun d!2012324 () Bool)

(assert (=> d!2012324 (= (isEmpty!37276 (t!378864 (exprs!6201 (h!71575 zl!343)))) ((_ is Nil!65126) (t!378864 (exprs!6201 (h!71575 zl!343)))))))

(assert (=> b!6416283 d!2012324))

(declare-fun d!2012326 () Bool)

(declare-fun lt!2375900 () Regex!16317)

(assert (=> d!2012326 (validRegex!8053 lt!2375900)))

(assert (=> d!2012326 (= lt!2375900 (generalisedUnion!2161 (unfocusZipperList!1738 (Cons!65127 lt!2375751 Nil!65127))))))

(assert (=> d!2012326 (= (unfocusZipper!2059 (Cons!65127 lt!2375751 Nil!65127)) lt!2375900)))

(declare-fun bs!1613758 () Bool)

(assert (= bs!1613758 d!2012326))

(declare-fun m!7212428 () Bool)

(assert (=> bs!1613758 m!7212428))

(declare-fun m!7212430 () Bool)

(assert (=> bs!1613758 m!7212430))

(assert (=> bs!1613758 m!7212430))

(declare-fun m!7212432 () Bool)

(assert (=> bs!1613758 m!7212432))

(assert (=> b!6416282 d!2012326))

(declare-fun d!2012328 () Bool)

(declare-fun nullableFct!2256 (Regex!16317) Bool)

(assert (=> d!2012328 (= (nullable!6310 (regOne!33146 (regOne!33146 r!7292))) (nullableFct!2256 (regOne!33146 (regOne!33146 r!7292))))))

(declare-fun bs!1613759 () Bool)

(assert (= bs!1613759 d!2012328))

(declare-fun m!7212434 () Bool)

(assert (=> bs!1613759 m!7212434))

(assert (=> b!6416284 d!2012328))

(declare-fun b!6417130 () Bool)

(declare-fun e!3893768 () Bool)

(declare-fun e!3893766 () Bool)

(assert (=> b!6417130 (= e!3893768 e!3893766)))

(declare-fun res!2637240 () Bool)

(assert (=> b!6417130 (=> res!2637240 e!3893766)))

(declare-fun call!551706 () Bool)

(assert (=> b!6417130 (= res!2637240 call!551706)))

(declare-fun b!6417131 () Bool)

(assert (=> b!6417131 (= e!3893766 (not (= (head!13125 s!2326) (c!1171938 lt!2375756))))))

(declare-fun b!6417132 () Bool)

(declare-fun e!3893765 () Bool)

(assert (=> b!6417132 (= e!3893765 (nullable!6310 lt!2375756))))

(declare-fun b!6417133 () Bool)

(declare-fun e!3893764 () Bool)

(assert (=> b!6417133 (= e!3893764 (= (head!13125 s!2326) (c!1171938 lt!2375756)))))

(declare-fun b!6417134 () Bool)

(declare-fun e!3893767 () Bool)

(declare-fun e!3893762 () Bool)

(assert (=> b!6417134 (= e!3893767 e!3893762)))

(declare-fun c!1172170 () Bool)

(assert (=> b!6417134 (= c!1172170 ((_ is EmptyLang!16317) lt!2375756))))

(declare-fun bm!551701 () Bool)

(assert (=> bm!551701 (= call!551706 (isEmpty!37277 s!2326))))

(declare-fun b!6417136 () Bool)

(declare-fun res!2637242 () Bool)

(declare-fun e!3893763 () Bool)

(assert (=> b!6417136 (=> res!2637242 e!3893763)))

(assert (=> b!6417136 (= res!2637242 e!3893764)))

(declare-fun res!2637239 () Bool)

(assert (=> b!6417136 (=> (not res!2637239) (not e!3893764))))

(declare-fun lt!2375901 () Bool)

(assert (=> b!6417136 (= res!2637239 lt!2375901)))

(declare-fun b!6417137 () Bool)

(declare-fun res!2637235 () Bool)

(assert (=> b!6417137 (=> res!2637235 e!3893766)))

(assert (=> b!6417137 (= res!2637235 (not (isEmpty!37277 (tail!12210 s!2326))))))

(declare-fun b!6417138 () Bool)

(declare-fun res!2637236 () Bool)

(assert (=> b!6417138 (=> res!2637236 e!3893763)))

(assert (=> b!6417138 (= res!2637236 (not ((_ is ElementMatch!16317) lt!2375756)))))

(assert (=> b!6417138 (= e!3893762 e!3893763)))

(declare-fun b!6417139 () Bool)

(assert (=> b!6417139 (= e!3893762 (not lt!2375901))))

(declare-fun b!6417140 () Bool)

(declare-fun res!2637237 () Bool)

(assert (=> b!6417140 (=> (not res!2637237) (not e!3893764))))

(assert (=> b!6417140 (= res!2637237 (not call!551706))))

(declare-fun b!6417141 () Bool)

(assert (=> b!6417141 (= e!3893765 (matchR!8500 (derivativeStep!5021 lt!2375756 (head!13125 s!2326)) (tail!12210 s!2326)))))

(declare-fun b!6417142 () Bool)

(declare-fun res!2637241 () Bool)

(assert (=> b!6417142 (=> (not res!2637241) (not e!3893764))))

(assert (=> b!6417142 (= res!2637241 (isEmpty!37277 (tail!12210 s!2326)))))

(declare-fun b!6417143 () Bool)

(assert (=> b!6417143 (= e!3893763 e!3893768)))

(declare-fun res!2637238 () Bool)

(assert (=> b!6417143 (=> (not res!2637238) (not e!3893768))))

(assert (=> b!6417143 (= res!2637238 (not lt!2375901))))

(declare-fun b!6417135 () Bool)

(assert (=> b!6417135 (= e!3893767 (= lt!2375901 call!551706))))

(declare-fun d!2012330 () Bool)

(assert (=> d!2012330 e!3893767))

(declare-fun c!1172171 () Bool)

(assert (=> d!2012330 (= c!1172171 ((_ is EmptyExpr!16317) lt!2375756))))

(assert (=> d!2012330 (= lt!2375901 e!3893765)))

(declare-fun c!1172169 () Bool)

(assert (=> d!2012330 (= c!1172169 (isEmpty!37277 s!2326))))

(assert (=> d!2012330 (validRegex!8053 lt!2375756)))

(assert (=> d!2012330 (= (matchR!8500 lt!2375756 s!2326) lt!2375901)))

(assert (= (and d!2012330 c!1172169) b!6417132))

(assert (= (and d!2012330 (not c!1172169)) b!6417141))

(assert (= (and d!2012330 c!1172171) b!6417135))

(assert (= (and d!2012330 (not c!1172171)) b!6417134))

(assert (= (and b!6417134 c!1172170) b!6417139))

(assert (= (and b!6417134 (not c!1172170)) b!6417138))

(assert (= (and b!6417138 (not res!2637236)) b!6417136))

(assert (= (and b!6417136 res!2637239) b!6417140))

(assert (= (and b!6417140 res!2637237) b!6417142))

(assert (= (and b!6417142 res!2637241) b!6417133))

(assert (= (and b!6417136 (not res!2637242)) b!6417143))

(assert (= (and b!6417143 res!2637238) b!6417130))

(assert (= (and b!6417130 (not res!2637240)) b!6417137))

(assert (= (and b!6417137 (not res!2637235)) b!6417131))

(assert (= (or b!6417135 b!6417130 b!6417140) bm!551701))

(assert (=> b!6417133 m!7212202))

(assert (=> b!6417131 m!7212202))

(assert (=> bm!551701 m!7212198))

(assert (=> b!6417141 m!7212202))

(assert (=> b!6417141 m!7212202))

(declare-fun m!7212436 () Bool)

(assert (=> b!6417141 m!7212436))

(assert (=> b!6417141 m!7212206))

(assert (=> b!6417141 m!7212436))

(assert (=> b!6417141 m!7212206))

(declare-fun m!7212438 () Bool)

(assert (=> b!6417141 m!7212438))

(assert (=> d!2012330 m!7212198))

(declare-fun m!7212440 () Bool)

(assert (=> d!2012330 m!7212440))

(assert (=> b!6417142 m!7212206))

(assert (=> b!6417142 m!7212206))

(assert (=> b!6417142 m!7212326))

(assert (=> b!6417137 m!7212206))

(assert (=> b!6417137 m!7212206))

(assert (=> b!6417137 m!7212326))

(declare-fun m!7212442 () Bool)

(assert (=> b!6417132 m!7212442))

(assert (=> b!6416306 d!2012330))

(declare-fun bs!1613760 () Bool)

(declare-fun b!6417152 () Bool)

(assert (= bs!1613760 (and b!6417152 d!2012258)))

(declare-fun lambda!354376 () Int)

(assert (=> bs!1613760 (not (= lambda!354376 lambda!354357))))

(declare-fun bs!1613761 () Bool)

(assert (= bs!1613761 (and b!6417152 d!2012166)))

(assert (=> bs!1613761 (not (= lambda!354376 lambda!354342))))

(assert (=> bs!1613761 (not (= lambda!354376 lambda!354346))))

(declare-fun bs!1613762 () Bool)

(assert (= bs!1613762 (and b!6417152 d!2012266)))

(assert (=> bs!1613762 (not (= lambda!354376 lambda!354358))))

(declare-fun bs!1613763 () Bool)

(assert (= bs!1613763 (and b!6417152 d!2012146)))

(assert (=> bs!1613763 (not (= lambda!354376 lambda!354337))))

(declare-fun bs!1613764 () Bool)

(assert (= bs!1613764 (and b!6417152 b!6416313)))

(assert (=> bs!1613764 (not (= lambda!354376 lambda!354304))))

(assert (=> bs!1613764 (not (= lambda!354376 lambda!354305))))

(declare-fun bs!1613765 () Bool)

(assert (= bs!1613765 (and b!6417152 b!6417010)))

(assert (=> bs!1613765 (= (and (= (reg!16646 lt!2375756) (reg!16646 r!7292)) (= lt!2375756 r!7292)) (= lambda!354376 lambda!354367))))

(declare-fun bs!1613766 () Bool)

(assert (= bs!1613766 (and b!6417152 b!6416311)))

(assert (=> bs!1613766 (not (= lambda!354376 lambda!354302))))

(declare-fun bs!1613767 () Bool)

(assert (= bs!1613767 (and b!6417152 b!6417006)))

(assert (=> bs!1613767 (not (= lambda!354376 lambda!354368))))

(assert (=> bs!1613762 (not (= lambda!354376 lambda!354359))))

(assert (=> bs!1613766 (not (= lambda!354376 lambda!354301))))

(assert (=> b!6417152 true))

(assert (=> b!6417152 true))

(declare-fun bs!1613768 () Bool)

(declare-fun b!6417148 () Bool)

(assert (= bs!1613768 (and b!6417148 d!2012258)))

(declare-fun lambda!354377 () Int)

(assert (=> bs!1613768 (not (= lambda!354377 lambda!354357))))

(declare-fun bs!1613769 () Bool)

(assert (= bs!1613769 (and b!6417148 d!2012166)))

(assert (=> bs!1613769 (not (= lambda!354377 lambda!354342))))

(declare-fun bs!1613770 () Bool)

(assert (= bs!1613770 (and b!6417148 b!6417152)))

(assert (=> bs!1613770 (not (= lambda!354377 lambda!354376))))

(assert (=> bs!1613769 (= (and (= (regOne!33146 lt!2375756) (regOne!33146 r!7292)) (= (regTwo!33146 lt!2375756) (regTwo!33146 r!7292))) (= lambda!354377 lambda!354346))))

(declare-fun bs!1613771 () Bool)

(assert (= bs!1613771 (and b!6417148 d!2012266)))

(assert (=> bs!1613771 (not (= lambda!354377 lambda!354358))))

(declare-fun bs!1613772 () Bool)

(assert (= bs!1613772 (and b!6417148 d!2012146)))

(assert (=> bs!1613772 (not (= lambda!354377 lambda!354337))))

(declare-fun bs!1613773 () Bool)

(assert (= bs!1613773 (and b!6417148 b!6416313)))

(assert (=> bs!1613773 (not (= lambda!354377 lambda!354304))))

(assert (=> bs!1613773 (= (and (= (regOne!33146 lt!2375756) lt!2375781) (= (regTwo!33146 lt!2375756) (regTwo!33146 r!7292))) (= lambda!354377 lambda!354305))))

(declare-fun bs!1613774 () Bool)

(assert (= bs!1613774 (and b!6417148 b!6417010)))

(assert (=> bs!1613774 (not (= lambda!354377 lambda!354367))))

(declare-fun bs!1613775 () Bool)

(assert (= bs!1613775 (and b!6417148 b!6416311)))

(assert (=> bs!1613775 (= (and (= (regOne!33146 lt!2375756) (regOne!33146 r!7292)) (= (regTwo!33146 lt!2375756) (regTwo!33146 r!7292))) (= lambda!354377 lambda!354302))))

(declare-fun bs!1613776 () Bool)

(assert (= bs!1613776 (and b!6417148 b!6417006)))

(assert (=> bs!1613776 (= (and (= (regOne!33146 lt!2375756) (regOne!33146 r!7292)) (= (regTwo!33146 lt!2375756) (regTwo!33146 r!7292))) (= lambda!354377 lambda!354368))))

(assert (=> bs!1613771 (= (and (= (regOne!33146 lt!2375756) lt!2375781) (= (regTwo!33146 lt!2375756) (regTwo!33146 r!7292))) (= lambda!354377 lambda!354359))))

(assert (=> bs!1613775 (not (= lambda!354377 lambda!354301))))

(assert (=> b!6417148 true))

(assert (=> b!6417148 true))

(declare-fun b!6417144 () Bool)

(declare-fun e!3893769 () Bool)

(assert (=> b!6417144 (= e!3893769 (matchRSpec!3418 (regTwo!33147 lt!2375756) s!2326))))

(declare-fun b!6417145 () Bool)

(declare-fun c!1172175 () Bool)

(assert (=> b!6417145 (= c!1172175 ((_ is Union!16317) lt!2375756))))

(declare-fun e!3893772 () Bool)

(declare-fun e!3893770 () Bool)

(assert (=> b!6417145 (= e!3893772 e!3893770)))

(declare-fun b!6417146 () Bool)

(declare-fun e!3893774 () Bool)

(assert (=> b!6417146 (= e!3893770 e!3893774)))

(declare-fun c!1172172 () Bool)

(assert (=> b!6417146 (= c!1172172 ((_ is Star!16317) lt!2375756))))

(declare-fun b!6417147 () Bool)

(declare-fun e!3893775 () Bool)

(declare-fun call!551708 () Bool)

(assert (=> b!6417147 (= e!3893775 call!551708)))

(declare-fun call!551707 () Bool)

(assert (=> b!6417148 (= e!3893774 call!551707)))

(declare-fun b!6417149 () Bool)

(declare-fun c!1172173 () Bool)

(assert (=> b!6417149 (= c!1172173 ((_ is ElementMatch!16317) lt!2375756))))

(declare-fun e!3893771 () Bool)

(assert (=> b!6417149 (= e!3893771 e!3893772)))

(declare-fun b!6417150 () Bool)

(assert (=> b!6417150 (= e!3893772 (= s!2326 (Cons!65128 (c!1171938 lt!2375756) Nil!65128)))))

(declare-fun b!6417151 () Bool)

(declare-fun res!2637245 () Bool)

(declare-fun e!3893773 () Bool)

(assert (=> b!6417151 (=> res!2637245 e!3893773)))

(assert (=> b!6417151 (= res!2637245 call!551708)))

(assert (=> b!6417151 (= e!3893774 e!3893773)))

(declare-fun bm!551702 () Bool)

(assert (=> bm!551702 (= call!551708 (isEmpty!37277 s!2326))))

(declare-fun d!2012332 () Bool)

(declare-fun c!1172174 () Bool)

(assert (=> d!2012332 (= c!1172174 ((_ is EmptyExpr!16317) lt!2375756))))

(assert (=> d!2012332 (= (matchRSpec!3418 lt!2375756 s!2326) e!3893775)))

(assert (=> b!6417152 (= e!3893773 call!551707)))

(declare-fun b!6417153 () Bool)

(assert (=> b!6417153 (= e!3893775 e!3893771)))

(declare-fun res!2637244 () Bool)

(assert (=> b!6417153 (= res!2637244 (not ((_ is EmptyLang!16317) lt!2375756)))))

(assert (=> b!6417153 (=> (not res!2637244) (not e!3893771))))

(declare-fun bm!551703 () Bool)

(assert (=> bm!551703 (= call!551707 (Exists!3387 (ite c!1172172 lambda!354376 lambda!354377)))))

(declare-fun b!6417154 () Bool)

(assert (=> b!6417154 (= e!3893770 e!3893769)))

(declare-fun res!2637243 () Bool)

(assert (=> b!6417154 (= res!2637243 (matchRSpec!3418 (regOne!33147 lt!2375756) s!2326))))

(assert (=> b!6417154 (=> res!2637243 e!3893769)))

(assert (= (and d!2012332 c!1172174) b!6417147))

(assert (= (and d!2012332 (not c!1172174)) b!6417153))

(assert (= (and b!6417153 res!2637244) b!6417149))

(assert (= (and b!6417149 c!1172173) b!6417150))

(assert (= (and b!6417149 (not c!1172173)) b!6417145))

(assert (= (and b!6417145 c!1172175) b!6417154))

(assert (= (and b!6417145 (not c!1172175)) b!6417146))

(assert (= (and b!6417154 (not res!2637243)) b!6417144))

(assert (= (and b!6417146 c!1172172) b!6417151))

(assert (= (and b!6417146 (not c!1172172)) b!6417148))

(assert (= (and b!6417151 (not res!2637245)) b!6417152))

(assert (= (or b!6417152 b!6417148) bm!551703))

(assert (= (or b!6417147 b!6417151) bm!551702))

(declare-fun m!7212444 () Bool)

(assert (=> b!6417144 m!7212444))

(assert (=> bm!551702 m!7212198))

(declare-fun m!7212446 () Bool)

(assert (=> bm!551703 m!7212446))

(declare-fun m!7212448 () Bool)

(assert (=> b!6417154 m!7212448))

(assert (=> b!6416306 d!2012332))

(declare-fun d!2012334 () Bool)

(assert (=> d!2012334 (= (matchR!8500 lt!2375756 s!2326) (matchRSpec!3418 lt!2375756 s!2326))))

(declare-fun lt!2375902 () Unit!158599)

(assert (=> d!2012334 (= lt!2375902 (choose!47662 lt!2375756 s!2326))))

(assert (=> d!2012334 (validRegex!8053 lt!2375756)))

(assert (=> d!2012334 (= (mainMatchTheorem!3418 lt!2375756 s!2326) lt!2375902)))

(declare-fun bs!1613777 () Bool)

(assert (= bs!1613777 d!2012334))

(assert (=> bs!1613777 m!7211706))

(assert (=> bs!1613777 m!7211708))

(declare-fun m!7212450 () Bool)

(assert (=> bs!1613777 m!7212450))

(assert (=> bs!1613777 m!7212440))

(assert (=> b!6416306 d!2012334))

(declare-fun bm!551704 () Bool)

(declare-fun call!551711 () Bool)

(declare-fun call!551709 () Bool)

(assert (=> bm!551704 (= call!551711 call!551709)))

(declare-fun b!6417155 () Bool)

(declare-fun e!3893778 () Bool)

(declare-fun e!3893780 () Bool)

(assert (=> b!6417155 (= e!3893778 e!3893780)))

(declare-fun c!1172176 () Bool)

(assert (=> b!6417155 (= c!1172176 ((_ is Star!16317) r!7292))))

(declare-fun d!2012336 () Bool)

(declare-fun res!2637250 () Bool)

(assert (=> d!2012336 (=> res!2637250 e!3893778)))

(assert (=> d!2012336 (= res!2637250 ((_ is ElementMatch!16317) r!7292))))

(assert (=> d!2012336 (= (validRegex!8053 r!7292) e!3893778)))

(declare-fun b!6417156 () Bool)

(declare-fun res!2637247 () Bool)

(declare-fun e!3893779 () Bool)

(assert (=> b!6417156 (=> res!2637247 e!3893779)))

(assert (=> b!6417156 (= res!2637247 (not ((_ is Concat!25162) r!7292)))))

(declare-fun e!3893781 () Bool)

(assert (=> b!6417156 (= e!3893781 e!3893779)))

(declare-fun b!6417157 () Bool)

(declare-fun e!3893776 () Bool)

(assert (=> b!6417157 (= e!3893779 e!3893776)))

(declare-fun res!2637246 () Bool)

(assert (=> b!6417157 (=> (not res!2637246) (not e!3893776))))

(declare-fun call!551710 () Bool)

(assert (=> b!6417157 (= res!2637246 call!551710)))

(declare-fun b!6417158 () Bool)

(declare-fun e!3893777 () Bool)

(assert (=> b!6417158 (= e!3893777 call!551711)))

(declare-fun b!6417159 () Bool)

(assert (=> b!6417159 (= e!3893776 call!551711)))

(declare-fun b!6417160 () Bool)

(assert (=> b!6417160 (= e!3893780 e!3893781)))

(declare-fun c!1172177 () Bool)

(assert (=> b!6417160 (= c!1172177 ((_ is Union!16317) r!7292))))

(declare-fun bm!551705 () Bool)

(assert (=> bm!551705 (= call!551709 (validRegex!8053 (ite c!1172176 (reg!16646 r!7292) (ite c!1172177 (regTwo!33147 r!7292) (regTwo!33146 r!7292)))))))

(declare-fun b!6417161 () Bool)

(declare-fun e!3893782 () Bool)

(assert (=> b!6417161 (= e!3893782 call!551709)))

(declare-fun b!6417162 () Bool)

(declare-fun res!2637249 () Bool)

(assert (=> b!6417162 (=> (not res!2637249) (not e!3893777))))

(assert (=> b!6417162 (= res!2637249 call!551710)))

(assert (=> b!6417162 (= e!3893781 e!3893777)))

(declare-fun bm!551706 () Bool)

(assert (=> bm!551706 (= call!551710 (validRegex!8053 (ite c!1172177 (regOne!33147 r!7292) (regOne!33146 r!7292))))))

(declare-fun b!6417163 () Bool)

(assert (=> b!6417163 (= e!3893780 e!3893782)))

(declare-fun res!2637248 () Bool)

(assert (=> b!6417163 (= res!2637248 (not (nullable!6310 (reg!16646 r!7292))))))

(assert (=> b!6417163 (=> (not res!2637248) (not e!3893782))))

(assert (= (and d!2012336 (not res!2637250)) b!6417155))

(assert (= (and b!6417155 c!1172176) b!6417163))

(assert (= (and b!6417155 (not c!1172176)) b!6417160))

(assert (= (and b!6417163 res!2637248) b!6417161))

(assert (= (and b!6417160 c!1172177) b!6417162))

(assert (= (and b!6417160 (not c!1172177)) b!6417156))

(assert (= (and b!6417162 res!2637249) b!6417158))

(assert (= (and b!6417156 (not res!2637247)) b!6417157))

(assert (= (and b!6417157 res!2637246) b!6417159))

(assert (= (or b!6417158 b!6417159) bm!551704))

(assert (= (or b!6417162 b!6417157) bm!551706))

(assert (= (or b!6417161 bm!551704) bm!551705))

(declare-fun m!7212452 () Bool)

(assert (=> bm!551705 m!7212452))

(declare-fun m!7212454 () Bool)

(assert (=> bm!551706 m!7212454))

(declare-fun m!7212456 () Bool)

(assert (=> b!6417163 m!7212456))

(assert (=> start!634046 d!2012336))

(declare-fun b!6417164 () Bool)

(declare-fun e!3893785 () Bool)

(assert (=> b!6417164 (= e!3893785 (nullable!6310 (h!71574 (exprs!6201 lt!2375765))))))

(declare-fun b!6417165 () Bool)

(declare-fun e!3893783 () (InoxSet Context!11402))

(assert (=> b!6417165 (= e!3893783 ((as const (Array Context!11402 Bool)) false))))

(declare-fun b!6417166 () Bool)

(declare-fun call!551712 () (InoxSet Context!11402))

(declare-fun e!3893784 () (InoxSet Context!11402))

(assert (=> b!6417166 (= e!3893784 ((_ map or) call!551712 (derivationStepZipperUp!1491 (Context!11403 (t!378864 (exprs!6201 lt!2375765))) (h!71576 s!2326))))))

(declare-fun bm!551707 () Bool)

(assert (=> bm!551707 (= call!551712 (derivationStepZipperDown!1565 (h!71574 (exprs!6201 lt!2375765)) (Context!11403 (t!378864 (exprs!6201 lt!2375765))) (h!71576 s!2326)))))

(declare-fun d!2012338 () Bool)

(declare-fun c!1172178 () Bool)

(assert (=> d!2012338 (= c!1172178 e!3893785)))

(declare-fun res!2637251 () Bool)

(assert (=> d!2012338 (=> (not res!2637251) (not e!3893785))))

(assert (=> d!2012338 (= res!2637251 ((_ is Cons!65126) (exprs!6201 lt!2375765)))))

(assert (=> d!2012338 (= (derivationStepZipperUp!1491 lt!2375765 (h!71576 s!2326)) e!3893784)))

(declare-fun b!6417167 () Bool)

(assert (=> b!6417167 (= e!3893784 e!3893783)))

(declare-fun c!1172179 () Bool)

(assert (=> b!6417167 (= c!1172179 ((_ is Cons!65126) (exprs!6201 lt!2375765)))))

(declare-fun b!6417168 () Bool)

(assert (=> b!6417168 (= e!3893783 call!551712)))

(assert (= (and d!2012338 res!2637251) b!6417164))

(assert (= (and d!2012338 c!1172178) b!6417166))

(assert (= (and d!2012338 (not c!1172178)) b!6417167))

(assert (= (and b!6417167 c!1172179) b!6417168))

(assert (= (and b!6417167 (not c!1172179)) b!6417165))

(assert (= (or b!6417166 b!6417168) bm!551707))

(declare-fun m!7212458 () Bool)

(assert (=> b!6417164 m!7212458))

(declare-fun m!7212460 () Bool)

(assert (=> b!6417166 m!7212460))

(declare-fun m!7212462 () Bool)

(assert (=> bm!551707 m!7212462))

(assert (=> b!6416288 d!2012338))

(declare-fun b!6417169 () Bool)

(declare-fun e!3893788 () Bool)

(assert (=> b!6417169 (= e!3893788 (nullable!6310 (h!71574 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun b!6417170 () Bool)

(declare-fun e!3893786 () (InoxSet Context!11402))

(assert (=> b!6417170 (= e!3893786 ((as const (Array Context!11402 Bool)) false))))

(declare-fun call!551713 () (InoxSet Context!11402))

(declare-fun e!3893787 () (InoxSet Context!11402))

(declare-fun b!6417171 () Bool)

(assert (=> b!6417171 (= e!3893787 ((_ map or) call!551713 (derivationStepZipperUp!1491 (Context!11403 (t!378864 (exprs!6201 (h!71575 zl!343)))) (h!71576 s!2326))))))

(declare-fun bm!551708 () Bool)

(assert (=> bm!551708 (= call!551713 (derivationStepZipperDown!1565 (h!71574 (exprs!6201 (h!71575 zl!343))) (Context!11403 (t!378864 (exprs!6201 (h!71575 zl!343)))) (h!71576 s!2326)))))

(declare-fun d!2012340 () Bool)

(declare-fun c!1172180 () Bool)

(assert (=> d!2012340 (= c!1172180 e!3893788)))

(declare-fun res!2637252 () Bool)

(assert (=> d!2012340 (=> (not res!2637252) (not e!3893788))))

(assert (=> d!2012340 (= res!2637252 ((_ is Cons!65126) (exprs!6201 (h!71575 zl!343))))))

(assert (=> d!2012340 (= (derivationStepZipperUp!1491 (h!71575 zl!343) (h!71576 s!2326)) e!3893787)))

(declare-fun b!6417172 () Bool)

(assert (=> b!6417172 (= e!3893787 e!3893786)))

(declare-fun c!1172181 () Bool)

(assert (=> b!6417172 (= c!1172181 ((_ is Cons!65126) (exprs!6201 (h!71575 zl!343))))))

(declare-fun b!6417173 () Bool)

(assert (=> b!6417173 (= e!3893786 call!551713)))

(assert (= (and d!2012340 res!2637252) b!6417169))

(assert (= (and d!2012340 c!1172180) b!6417171))

(assert (= (and d!2012340 (not c!1172180)) b!6417172))

(assert (= (and b!6417172 c!1172181) b!6417173))

(assert (= (and b!6417172 (not c!1172181)) b!6417170))

(assert (= (or b!6417171 b!6417173) bm!551708))

(assert (=> b!6417169 m!7211704))

(declare-fun m!7212464 () Bool)

(assert (=> b!6417171 m!7212464))

(declare-fun m!7212466 () Bool)

(assert (=> bm!551708 m!7212466))

(assert (=> b!6416288 d!2012340))

(declare-fun d!2012342 () Bool)

(assert (=> d!2012342 (= (flatMap!1822 z!1189 lambda!354303) (choose!47656 z!1189 lambda!354303))))

(declare-fun bs!1613778 () Bool)

(assert (= bs!1613778 d!2012342))

(declare-fun m!7212468 () Bool)

(assert (=> bs!1613778 m!7212468))

(assert (=> b!6416288 d!2012342))

(declare-fun d!2012344 () Bool)

(assert (=> d!2012344 (= (nullable!6310 (h!71574 (exprs!6201 (h!71575 zl!343)))) (nullableFct!2256 (h!71574 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun bs!1613779 () Bool)

(assert (= bs!1613779 d!2012344))

(declare-fun m!7212470 () Bool)

(assert (=> bs!1613779 m!7212470))

(assert (=> b!6416288 d!2012344))

(declare-fun bm!551709 () Bool)

(declare-fun call!551714 () List!65250)

(declare-fun call!551718 () List!65250)

(assert (=> bm!551709 (= call!551714 call!551718)))

(declare-fun b!6417174 () Bool)

(declare-fun e!3893791 () (InoxSet Context!11402))

(assert (=> b!6417174 (= e!3893791 ((as const (Array Context!11402 Bool)) false))))

(declare-fun b!6417175 () Bool)

(declare-fun c!1172185 () Bool)

(declare-fun e!3893790 () Bool)

(assert (=> b!6417175 (= c!1172185 e!3893790)))

(declare-fun res!2637253 () Bool)

(assert (=> b!6417175 (=> (not res!2637253) (not e!3893790))))

(assert (=> b!6417175 (= res!2637253 ((_ is Concat!25162) (h!71574 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun e!3893793 () (InoxSet Context!11402))

(declare-fun e!3893794 () (InoxSet Context!11402))

(assert (=> b!6417175 (= e!3893793 e!3893794)))

(declare-fun c!1172184 () Bool)

(declare-fun call!551719 () (InoxSet Context!11402))

(declare-fun c!1172183 () Bool)

(declare-fun bm!551710 () Bool)

(assert (=> bm!551710 (= call!551719 (derivationStepZipperDown!1565 (ite c!1172184 (regOne!33147 (h!71574 (exprs!6201 (h!71575 zl!343)))) (ite c!1172185 (regTwo!33146 (h!71574 (exprs!6201 (h!71575 zl!343)))) (ite c!1172183 (regOne!33146 (h!71574 (exprs!6201 (h!71575 zl!343)))) (reg!16646 (h!71574 (exprs!6201 (h!71575 zl!343))))))) (ite (or c!1172184 c!1172185) lt!2375765 (Context!11403 call!551714)) (h!71576 s!2326)))))

(declare-fun bm!551711 () Bool)

(declare-fun call!551715 () (InoxSet Context!11402))

(assert (=> bm!551711 (= call!551715 call!551719)))

(declare-fun bm!551712 () Bool)

(declare-fun call!551716 () (InoxSet Context!11402))

(assert (=> bm!551712 (= call!551716 (derivationStepZipperDown!1565 (ite c!1172184 (regTwo!33147 (h!71574 (exprs!6201 (h!71575 zl!343)))) (regOne!33146 (h!71574 (exprs!6201 (h!71575 zl!343))))) (ite c!1172184 lt!2375765 (Context!11403 call!551718)) (h!71576 s!2326)))))

(declare-fun b!6417176 () Bool)

(declare-fun e!3893789 () (InoxSet Context!11402))

(assert (=> b!6417176 (= e!3893789 e!3893793)))

(assert (=> b!6417176 (= c!1172184 ((_ is Union!16317) (h!71574 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun d!2012346 () Bool)

(declare-fun c!1172186 () Bool)

(assert (=> d!2012346 (= c!1172186 (and ((_ is ElementMatch!16317) (h!71574 (exprs!6201 (h!71575 zl!343)))) (= (c!1171938 (h!71574 (exprs!6201 (h!71575 zl!343)))) (h!71576 s!2326))))))

(assert (=> d!2012346 (= (derivationStepZipperDown!1565 (h!71574 (exprs!6201 (h!71575 zl!343))) lt!2375765 (h!71576 s!2326)) e!3893789)))

(declare-fun bm!551713 () Bool)

(declare-fun call!551717 () (InoxSet Context!11402))

(assert (=> bm!551713 (= call!551717 call!551715)))

(declare-fun bm!551714 () Bool)

(assert (=> bm!551714 (= call!551718 ($colon$colon!2178 (exprs!6201 lt!2375765) (ite (or c!1172185 c!1172183) (regTwo!33146 (h!71574 (exprs!6201 (h!71575 zl!343)))) (h!71574 (exprs!6201 (h!71575 zl!343))))))))

(declare-fun b!6417177 () Bool)

(assert (=> b!6417177 (= e!3893794 ((_ map or) call!551716 call!551715))))

(declare-fun b!6417178 () Bool)

(assert (=> b!6417178 (= e!3893791 call!551717)))

(declare-fun b!6417179 () Bool)

(declare-fun c!1172182 () Bool)

(assert (=> b!6417179 (= c!1172182 ((_ is Star!16317) (h!71574 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun e!3893792 () (InoxSet Context!11402))

(assert (=> b!6417179 (= e!3893792 e!3893791)))

(declare-fun b!6417180 () Bool)

(assert (=> b!6417180 (= e!3893794 e!3893792)))

(assert (=> b!6417180 (= c!1172183 ((_ is Concat!25162) (h!71574 (exprs!6201 (h!71575 zl!343)))))))

(declare-fun b!6417181 () Bool)

(assert (=> b!6417181 (= e!3893793 ((_ map or) call!551719 call!551716))))

(declare-fun b!6417182 () Bool)

(assert (=> b!6417182 (= e!3893789 (store ((as const (Array Context!11402 Bool)) false) lt!2375765 true))))

(declare-fun b!6417183 () Bool)

(assert (=> b!6417183 (= e!3893790 (nullable!6310 (regOne!33146 (h!71574 (exprs!6201 (h!71575 zl!343))))))))

(declare-fun b!6417184 () Bool)

(assert (=> b!6417184 (= e!3893792 call!551717)))

(assert (= (and d!2012346 c!1172186) b!6417182))

(assert (= (and d!2012346 (not c!1172186)) b!6417176))

(assert (= (and b!6417176 c!1172184) b!6417181))

(assert (= (and b!6417176 (not c!1172184)) b!6417175))

(assert (= (and b!6417175 res!2637253) b!6417183))

(assert (= (and b!6417175 c!1172185) b!6417177))

(assert (= (and b!6417175 (not c!1172185)) b!6417180))

(assert (= (and b!6417180 c!1172183) b!6417184))

(assert (= (and b!6417180 (not c!1172183)) b!6417179))

(assert (= (and b!6417179 c!1172182) b!6417178))

(assert (= (and b!6417179 (not c!1172182)) b!6417174))

(assert (= (or b!6417184 b!6417178) bm!551709))

(assert (= (or b!6417184 b!6417178) bm!551713))

(assert (= (or b!6417177 bm!551709) bm!551714))

(assert (= (or b!6417177 bm!551713) bm!551711))

(assert (= (or b!6417181 b!6417177) bm!551712))

(assert (= (or b!6417181 bm!551711) bm!551710))

(declare-fun m!7212472 () Bool)

(assert (=> b!6417183 m!7212472))

(declare-fun m!7212474 () Bool)

(assert (=> bm!551712 m!7212474))

(declare-fun m!7212476 () Bool)

(assert (=> bm!551710 m!7212476))

(declare-fun m!7212478 () Bool)

(assert (=> bm!551714 m!7212478))

(declare-fun m!7212480 () Bool)

(assert (=> b!6417182 m!7212480))

(assert (=> b!6416288 d!2012346))

(declare-fun b!6417185 () Bool)

(declare-fun e!3893797 () Bool)

(assert (=> b!6417185 (= e!3893797 (nullable!6310 (h!71574 (exprs!6201 (Context!11403 (Cons!65126 (h!71574 (exprs!6201 (h!71575 zl!343))) (t!378864 (exprs!6201 (h!71575 zl!343)))))))))))

(declare-fun b!6417186 () Bool)

(declare-fun e!3893795 () (InoxSet Context!11402))

(assert (=> b!6417186 (= e!3893795 ((as const (Array Context!11402 Bool)) false))))

(declare-fun b!6417187 () Bool)

(declare-fun call!551720 () (InoxSet Context!11402))

(declare-fun e!3893796 () (InoxSet Context!11402))

(assert (=> b!6417187 (= e!3893796 ((_ map or) call!551720 (derivationStepZipperUp!1491 (Context!11403 (t!378864 (exprs!6201 (Context!11403 (Cons!65126 (h!71574 (exprs!6201 (h!71575 zl!343))) (t!378864 (exprs!6201 (h!71575 zl!343)))))))) (h!71576 s!2326))))))

(declare-fun bm!551715 () Bool)

(assert (=> bm!551715 (= call!551720 (derivationStepZipperDown!1565 (h!71574 (exprs!6201 (Context!11403 (Cons!65126 (h!71574 (exprs!6201 (h!71575 zl!343))) (t!378864 (exprs!6201 (h!71575 zl!343))))))) (Context!11403 (t!378864 (exprs!6201 (Context!11403 (Cons!65126 (h!71574 (exprs!6201 (h!71575 zl!343))) (t!378864 (exprs!6201 (h!71575 zl!343)))))))) (h!71576 s!2326)))))

(declare-fun d!2012348 () Bool)

(declare-fun c!1172187 () Bool)

(assert (=> d!2012348 (= c!1172187 e!3893797)))

(declare-fun res!2637254 () Bool)

(assert (=> d!2012348 (=> (not res!2637254) (not e!3893797))))

(assert (=> d!2012348 (= res!2637254 ((_ is Cons!65126) (exprs!6201 (Context!11403 (Cons!65126 (h!71574 (exprs!6201 (h!71575 zl!343))) (t!378864 (exprs!6201 (h!71575 zl!343))))))))))

(assert (=> d!2012348 (= (derivationStepZipperUp!1491 (Context!11403 (Cons!65126 (h!71574 (exprs!6201 (h!71575 zl!343))) (t!378864 (exprs!6201 (h!71575 zl!343))))) (h!71576 s!2326)) e!3893796)))

(declare-fun b!6417188 () Bool)

(assert (=> b!6417188 (= e!3893796 e!3893795)))

(declare-fun c!1172188 () Bool)

(assert (=> b!6417188 (= c!1172188 ((_ is Cons!65126) (exprs!6201 (Context!11403 (Cons!65126 (h!71574 (exprs!6201 (h!71575 zl!343))) (t!378864 (exprs!6201 (h!71575 zl!343))))))))))

(declare-fun b!6417189 () Bool)

(assert (=> b!6417189 (= e!3893795 call!551720)))

(assert (= (and d!2012348 res!2637254) b!6417185))

(assert (= (and d!2012348 c!1172187) b!6417187))

(assert (= (and d!2012348 (not c!1172187)) b!6417188))

(assert (= (and b!6417188 c!1172188) b!6417189))

(assert (= (and b!6417188 (not c!1172188)) b!6417186))

(assert (= (or b!6417187 b!6417189) bm!551715))

(declare-fun m!7212482 () Bool)

(assert (=> b!6417185 m!7212482))

(declare-fun m!7212484 () Bool)

(assert (=> b!6417187 m!7212484))

(declare-fun m!7212486 () Bool)

(assert (=> bm!551715 m!7212486))

(assert (=> b!6416288 d!2012348))

(declare-fun d!2012350 () Bool)

(assert (=> d!2012350 (= (flatMap!1822 z!1189 lambda!354303) (dynLambda!25871 lambda!354303 (h!71575 zl!343)))))

(declare-fun lt!2375903 () Unit!158599)

(assert (=> d!2012350 (= lt!2375903 (choose!47658 z!1189 (h!71575 zl!343) lambda!354303))))

(assert (=> d!2012350 (= z!1189 (store ((as const (Array Context!11402 Bool)) false) (h!71575 zl!343) true))))

(assert (=> d!2012350 (= (lemmaFlatMapOnSingletonSet!1348 z!1189 (h!71575 zl!343) lambda!354303) lt!2375903)))

(declare-fun b_lambda!243971 () Bool)

(assert (=> (not b_lambda!243971) (not d!2012350)))

(declare-fun bs!1613780 () Bool)

(assert (= bs!1613780 d!2012350))

(assert (=> bs!1613780 m!7211700))

(declare-fun m!7212488 () Bool)

(assert (=> bs!1613780 m!7212488))

(declare-fun m!7212490 () Bool)

(assert (=> bs!1613780 m!7212490))

(declare-fun m!7212492 () Bool)

(assert (=> bs!1613780 m!7212492))

(assert (=> b!6416288 d!2012350))

(declare-fun d!2012352 () Bool)

(declare-fun lt!2375904 () Regex!16317)

(assert (=> d!2012352 (validRegex!8053 lt!2375904)))

(assert (=> d!2012352 (= lt!2375904 (generalisedUnion!2161 (unfocusZipperList!1738 (Cons!65127 lt!2375766 Nil!65127))))))

(assert (=> d!2012352 (= (unfocusZipper!2059 (Cons!65127 lt!2375766 Nil!65127)) lt!2375904)))

(declare-fun bs!1613781 () Bool)

(assert (= bs!1613781 d!2012352))

(declare-fun m!7212494 () Bool)

(assert (=> bs!1613781 m!7212494))

(declare-fun m!7212496 () Bool)

(assert (=> bs!1613781 m!7212496))

(assert (=> bs!1613781 m!7212496))

(declare-fun m!7212498 () Bool)

(assert (=> bs!1613781 m!7212498))

(assert (=> b!6416310 d!2012352))

(declare-fun d!2012354 () Bool)

(assert (=> d!2012354 (= (isEmpty!37278 (t!378865 zl!343)) ((_ is Nil!65127) (t!378865 zl!343)))))

(assert (=> b!6416308 d!2012354))

(declare-fun b!6417194 () Bool)

(declare-fun e!3893800 () Bool)

(declare-fun tp!1782277 () Bool)

(declare-fun tp!1782278 () Bool)

(assert (=> b!6417194 (= e!3893800 (and tp!1782277 tp!1782278))))

(assert (=> b!6416285 (= tp!1782210 e!3893800)))

(assert (= (and b!6416285 ((_ is Cons!65126) (exprs!6201 setElem!43786))) b!6417194))

(declare-fun b!6417195 () Bool)

(declare-fun e!3893801 () Bool)

(declare-fun tp!1782279 () Bool)

(declare-fun tp!1782280 () Bool)

(assert (=> b!6417195 (= e!3893801 (and tp!1782279 tp!1782280))))

(assert (=> b!6416305 (= tp!1782208 e!3893801)))

(assert (= (and b!6416305 ((_ is Cons!65126) (exprs!6201 (h!71575 zl!343)))) b!6417195))

(declare-fun condSetEmpty!43792 () Bool)

(assert (=> setNonEmpty!43786 (= condSetEmpty!43792 (= setRest!43786 ((as const (Array Context!11402 Bool)) false)))))

(declare-fun setRes!43792 () Bool)

(assert (=> setNonEmpty!43786 (= tp!1782206 setRes!43792)))

(declare-fun setIsEmpty!43792 () Bool)

(assert (=> setIsEmpty!43792 setRes!43792))

(declare-fun setElem!43792 () Context!11402)

(declare-fun e!3893804 () Bool)

(declare-fun setNonEmpty!43792 () Bool)

(declare-fun tp!1782285 () Bool)

(assert (=> setNonEmpty!43792 (= setRes!43792 (and tp!1782285 (inv!84039 setElem!43792) e!3893804))))

(declare-fun setRest!43792 () (InoxSet Context!11402))

(assert (=> setNonEmpty!43792 (= setRest!43786 ((_ map or) (store ((as const (Array Context!11402 Bool)) false) setElem!43792 true) setRest!43792))))

(declare-fun b!6417200 () Bool)

(declare-fun tp!1782286 () Bool)

(assert (=> b!6417200 (= e!3893804 tp!1782286)))

(assert (= (and setNonEmpty!43786 condSetEmpty!43792) setIsEmpty!43792))

(assert (= (and setNonEmpty!43786 (not condSetEmpty!43792)) setNonEmpty!43792))

(assert (= setNonEmpty!43792 b!6417200))

(declare-fun m!7212500 () Bool)

(assert (=> setNonEmpty!43792 m!7212500))

(declare-fun b!6417205 () Bool)

(declare-fun e!3893807 () Bool)

(declare-fun tp!1782289 () Bool)

(assert (=> b!6417205 (= e!3893807 (and tp_is_empty!41887 tp!1782289))))

(assert (=> b!6416309 (= tp!1782214 e!3893807)))

(assert (= (and b!6416309 ((_ is Cons!65128) (t!378866 s!2326))) b!6417205))

(declare-fun b!6417213 () Bool)

(declare-fun e!3893813 () Bool)

(declare-fun tp!1782294 () Bool)

(assert (=> b!6417213 (= e!3893813 tp!1782294)))

(declare-fun b!6417212 () Bool)

(declare-fun e!3893812 () Bool)

(declare-fun tp!1782295 () Bool)

(assert (=> b!6417212 (= e!3893812 (and (inv!84039 (h!71575 (t!378865 zl!343))) e!3893813 tp!1782295))))

(assert (=> b!6416299 (= tp!1782212 e!3893812)))

(assert (= b!6417212 b!6417213))

(assert (= (and b!6416299 ((_ is Cons!65127) (t!378865 zl!343))) b!6417212))

(declare-fun m!7212502 () Bool)

(assert (=> b!6417212 m!7212502))

(declare-fun b!6417224 () Bool)

(declare-fun e!3893816 () Bool)

(assert (=> b!6417224 (= e!3893816 tp_is_empty!41887)))

(assert (=> b!6416281 (= tp!1782211 e!3893816)))

(declare-fun b!6417225 () Bool)

(declare-fun tp!1782309 () Bool)

(declare-fun tp!1782308 () Bool)

(assert (=> b!6417225 (= e!3893816 (and tp!1782309 tp!1782308))))

(declare-fun b!6417227 () Bool)

(declare-fun tp!1782307 () Bool)

(declare-fun tp!1782306 () Bool)

(assert (=> b!6417227 (= e!3893816 (and tp!1782307 tp!1782306))))

(declare-fun b!6417226 () Bool)

(declare-fun tp!1782310 () Bool)

(assert (=> b!6417226 (= e!3893816 tp!1782310)))

(assert (= (and b!6416281 ((_ is ElementMatch!16317) (regOne!33146 r!7292))) b!6417224))

(assert (= (and b!6416281 ((_ is Concat!25162) (regOne!33146 r!7292))) b!6417225))

(assert (= (and b!6416281 ((_ is Star!16317) (regOne!33146 r!7292))) b!6417226))

(assert (= (and b!6416281 ((_ is Union!16317) (regOne!33146 r!7292))) b!6417227))

(declare-fun b!6417228 () Bool)

(declare-fun e!3893817 () Bool)

(assert (=> b!6417228 (= e!3893817 tp_is_empty!41887)))

(assert (=> b!6416281 (= tp!1782205 e!3893817)))

(declare-fun b!6417229 () Bool)

(declare-fun tp!1782314 () Bool)

(declare-fun tp!1782313 () Bool)

(assert (=> b!6417229 (= e!3893817 (and tp!1782314 tp!1782313))))

(declare-fun b!6417231 () Bool)

(declare-fun tp!1782312 () Bool)

(declare-fun tp!1782311 () Bool)

(assert (=> b!6417231 (= e!3893817 (and tp!1782312 tp!1782311))))

(declare-fun b!6417230 () Bool)

(declare-fun tp!1782315 () Bool)

(assert (=> b!6417230 (= e!3893817 tp!1782315)))

(assert (= (and b!6416281 ((_ is ElementMatch!16317) (regTwo!33146 r!7292))) b!6417228))

(assert (= (and b!6416281 ((_ is Concat!25162) (regTwo!33146 r!7292))) b!6417229))

(assert (= (and b!6416281 ((_ is Star!16317) (regTwo!33146 r!7292))) b!6417230))

(assert (= (and b!6416281 ((_ is Union!16317) (regTwo!33146 r!7292))) b!6417231))

(declare-fun b!6417232 () Bool)

(declare-fun e!3893818 () Bool)

(assert (=> b!6417232 (= e!3893818 tp_is_empty!41887)))

(assert (=> b!6416303 (= tp!1782207 e!3893818)))

(declare-fun b!6417233 () Bool)

(declare-fun tp!1782319 () Bool)

(declare-fun tp!1782318 () Bool)

(assert (=> b!6417233 (= e!3893818 (and tp!1782319 tp!1782318))))

(declare-fun b!6417235 () Bool)

(declare-fun tp!1782317 () Bool)

(declare-fun tp!1782316 () Bool)

(assert (=> b!6417235 (= e!3893818 (and tp!1782317 tp!1782316))))

(declare-fun b!6417234 () Bool)

(declare-fun tp!1782320 () Bool)

(assert (=> b!6417234 (= e!3893818 tp!1782320)))

(assert (= (and b!6416303 ((_ is ElementMatch!16317) (reg!16646 r!7292))) b!6417232))

(assert (= (and b!6416303 ((_ is Concat!25162) (reg!16646 r!7292))) b!6417233))

(assert (= (and b!6416303 ((_ is Star!16317) (reg!16646 r!7292))) b!6417234))

(assert (= (and b!6416303 ((_ is Union!16317) (reg!16646 r!7292))) b!6417235))

(declare-fun b!6417236 () Bool)

(declare-fun e!3893819 () Bool)

(assert (=> b!6417236 (= e!3893819 tp_is_empty!41887)))

(assert (=> b!6416287 (= tp!1782209 e!3893819)))

(declare-fun b!6417237 () Bool)

(declare-fun tp!1782324 () Bool)

(declare-fun tp!1782323 () Bool)

(assert (=> b!6417237 (= e!3893819 (and tp!1782324 tp!1782323))))

(declare-fun b!6417239 () Bool)

(declare-fun tp!1782322 () Bool)

(declare-fun tp!1782321 () Bool)

(assert (=> b!6417239 (= e!3893819 (and tp!1782322 tp!1782321))))

(declare-fun b!6417238 () Bool)

(declare-fun tp!1782325 () Bool)

(assert (=> b!6417238 (= e!3893819 tp!1782325)))

(assert (= (and b!6416287 ((_ is ElementMatch!16317) (regOne!33147 r!7292))) b!6417236))

(assert (= (and b!6416287 ((_ is Concat!25162) (regOne!33147 r!7292))) b!6417237))

(assert (= (and b!6416287 ((_ is Star!16317) (regOne!33147 r!7292))) b!6417238))

(assert (= (and b!6416287 ((_ is Union!16317) (regOne!33147 r!7292))) b!6417239))

(declare-fun b!6417240 () Bool)

(declare-fun e!3893820 () Bool)

(assert (=> b!6417240 (= e!3893820 tp_is_empty!41887)))

(assert (=> b!6416287 (= tp!1782213 e!3893820)))

(declare-fun b!6417241 () Bool)

(declare-fun tp!1782329 () Bool)

(declare-fun tp!1782328 () Bool)

(assert (=> b!6417241 (= e!3893820 (and tp!1782329 tp!1782328))))

(declare-fun b!6417243 () Bool)

(declare-fun tp!1782327 () Bool)

(declare-fun tp!1782326 () Bool)

(assert (=> b!6417243 (= e!3893820 (and tp!1782327 tp!1782326))))

(declare-fun b!6417242 () Bool)

(declare-fun tp!1782330 () Bool)

(assert (=> b!6417242 (= e!3893820 tp!1782330)))

(assert (= (and b!6416287 ((_ is ElementMatch!16317) (regTwo!33147 r!7292))) b!6417240))

(assert (= (and b!6416287 ((_ is Concat!25162) (regTwo!33147 r!7292))) b!6417241))

(assert (= (and b!6416287 ((_ is Star!16317) (regTwo!33147 r!7292))) b!6417242))

(assert (= (and b!6416287 ((_ is Union!16317) (regTwo!33147 r!7292))) b!6417243))

(declare-fun b_lambda!243973 () Bool)

(assert (= b_lambda!243971 (or b!6416288 b_lambda!243973)))

(declare-fun bs!1613782 () Bool)

(declare-fun d!2012356 () Bool)

(assert (= bs!1613782 (and d!2012356 b!6416288)))

(assert (=> bs!1613782 (= (dynLambda!25871 lambda!354303 (h!71575 zl!343)) (derivationStepZipperUp!1491 (h!71575 zl!343) (h!71576 s!2326)))))

(assert (=> bs!1613782 m!7211698))

(assert (=> d!2012350 d!2012356))

(declare-fun b_lambda!243975 () Bool)

(assert (= b_lambda!243957 (or b!6416288 b_lambda!243975)))

(declare-fun bs!1613783 () Bool)

(declare-fun d!2012358 () Bool)

(assert (= bs!1613783 (and d!2012358 b!6416288)))

(assert (=> bs!1613783 (= (dynLambda!25871 lambda!354303 lt!2375751) (derivationStepZipperUp!1491 lt!2375751 (h!71576 s!2326)))))

(assert (=> bs!1613783 m!7211760))

(assert (=> d!2012228 d!2012358))

(declare-fun b_lambda!243977 () Bool)

(assert (= b_lambda!243967 (or b!6416288 b_lambda!243977)))

(declare-fun bs!1613784 () Bool)

(declare-fun d!2012360 () Bool)

(assert (= bs!1613784 (and d!2012360 b!6416288)))

(assert (=> bs!1613784 (= (dynLambda!25871 lambda!354303 lt!2375766) (derivationStepZipperUp!1491 lt!2375766 (h!71576 s!2326)))))

(assert (=> bs!1613784 m!7211658))

(assert (=> d!2012304 d!2012360))

(declare-fun b_lambda!243979 () Bool)

(assert (= b_lambda!243969 (or b!6416288 b_lambda!243979)))

(declare-fun bs!1613785 () Bool)

(declare-fun d!2012362 () Bool)

(assert (= bs!1613785 (and d!2012362 b!6416288)))

(assert (=> bs!1613785 (= (dynLambda!25871 lambda!354303 lt!2375772) (derivationStepZipperUp!1491 lt!2375772 (h!71576 s!2326)))))

(assert (=> bs!1613785 m!7211660))

(assert (=> d!2012308 d!2012362))

(check-sat (not b!6417055) (not b!6417063) (not b_lambda!243979) (not d!2012144) (not b!6416597) (not bm!551706) (not b!6416892) (not b!6416849) (not b!6416851) (not b!6417020) (not d!2012256) (not bm!551657) (not b_lambda!243975) (not b!6416893) (not b!6417144) (not b!6417016) (not d!2012242) (not d!2012270) (not b!6417129) (not b!6417142) (not d!2012316) (not d!2012344) tp_is_empty!41887 (not b!6417200) (not d!2012288) (not bs!1613782) (not b!6416594) (not b!6417125) (not b!6416941) (not d!2012196) (not b!6417164) (not d!2012326) (not b!6416824) (not b!6417002) (not bm!551700) (not b!6417230) (not b!6417120) (not b!6416866) (not d!2012320) (not b!6417132) (not b!6417070) (not d!2012228) (not b!6416898) (not bm!551672) (not d!2012306) (not b!6416897) (not b!6417163) (not d!2012292) (not b!6416867) (not d!2012274) (not b!6417141) (not b!6417231) (not b!6417194) (not b!6417050) (not d!2012146) (not b!6417229) (not d!2012286) (not b!6416848) (not bm!551699) (not d!2012290) (not b!6417239) (not b!6417047) (not b!6416929) (not b!6416816) (not d!2012328) (not d!2012352) (not b!6417056) (not b!6417137) (not b!6417171) (not bm!551712) (not d!2012278) (not b!6416593) (not b!6417110) (not bm!551707) (not d!2012322) (not b!6417068) (not bs!1613783) (not b!6417014) (not d!2012304) (not bm!551705) (not b!6417048) (not b!6417127) (not b!6417241) (not b!6416596) (not b!6417012) (not d!2012330) (not b!6417243) (not d!2012250) (not bm!551697) (not b!6416852) (not b!6417052) (not b!6417065) (not b!6416753) (not b_lambda!243977) (not bm!551681) (not bm!551703) (not b_lambda!243973) (not d!2012350) (not b!6416823) (not b!6417128) (not bm!551663) (not bm!551695) (not b!6417233) (not b!6417131) (not d!2012252) (not b!6417126) (not b!6417061) (not d!2012200) (not bs!1613785) (not b!6417213) (not b!6417169) (not b!6417238) (not b!6416755) (not b!6417212) (not bm!551701) (not b!6417154) (not b!6416928) (not b!6417112) (not b!6417075) (not b!6416600) (not bm!551702) (not b!6417205) (not d!2012296) (not b!6416934) (not b!6416856) (not b!6417024) (not b!6416890) (not bm!551679) (not bm!551671) (not d!2012202) (not b!6416814) (not d!2012236) (not b!6417242) (not bs!1613784) (not b!6416939) (not b!6417185) (not b!6417234) (not b!6417111) (not d!2012166) (not b!6417226) (not b!6416601) (not d!2012266) (not b!6417187) (not b!6417183) (not bm!551678) (not bm!551708) (not bm!551677) (not b!6417225) (not d!2012310) (not d!2012342) (not b!6416855) (not b!6416895) (not setNonEmpty!43792) (not b!6417166) (not b!6417195) (not b!6416894) (not bm!551715) (not d!2012276) (not b!6416938) (not d!2012318) (not d!2012122) (not b!6417237) (not b!6416969) (not b!6417015) (not d!2012300) (not b!6417235) (not b!6417121) (not b!6417116) (not d!2012126) (not bm!551714) (not d!2012294) (not b!6417227) (not b!6417053) (not b!6416930) (not d!2012254) (not b!6416942) (not bm!551680) (not d!2012198) (not b!6417133) (not b!6417107) (not d!2012308) (not d!2012334) (not d!2012258) (not d!2012280) (not b!6417025) (not bm!551710))
(check-sat)
