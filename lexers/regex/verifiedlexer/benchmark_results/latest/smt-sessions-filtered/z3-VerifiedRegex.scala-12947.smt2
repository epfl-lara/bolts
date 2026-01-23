; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713010 () Bool)

(assert start!713010)

(declare-fun b!7315965 () Bool)

(declare-fun e!4379657 () Bool)

(declare-fun tp!2076750 () Bool)

(assert (=> b!7315965 (= e!4379657 tp!2076750)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!38132 0))(
  ( (C!38133 (val!29162 Int)) )
))
(declare-datatypes ((Regex!18929 0))(
  ( (ElementMatch!18929 (c!1358091 C!38132)) (Concat!27774 (regOne!38370 Regex!18929) (regTwo!38370 Regex!18929)) (EmptyExpr!18929) (Star!18929 (reg!19258 Regex!18929)) (EmptyLang!18929) (Union!18929 (regOne!38371 Regex!18929) (regTwo!38371 Regex!18929)) )
))
(declare-datatypes ((List!71276 0))(
  ( (Nil!71152) (Cons!71152 (h!77600 Regex!18929) (t!385508 List!71276)) )
))
(declare-datatypes ((Context!15738 0))(
  ( (Context!15739 (exprs!8369 List!71276)) )
))
(declare-fun lt!2602091 () (InoxSet Context!15738))

(declare-fun e!4379660 () Bool)

(declare-fun b!7315966 () Bool)

(declare-datatypes ((List!71277 0))(
  ( (Nil!71153) (Cons!71153 (h!77601 C!38132) (t!385509 List!71277)) )
))
(declare-fun s!7362 () List!71277)

(declare-fun e!4379661 () Bool)

(declare-fun matchZipper!3803 ((InoxSet Context!15738) List!71277) Bool)

(assert (=> b!7315966 (= e!4379660 (not (= (matchZipper!3803 lt!2602091 s!7362) e!4379661)))))

(declare-fun res!2956305 () Bool)

(assert (=> b!7315966 (=> res!2956305 e!4379661)))

(declare-fun z1!542 () (InoxSet Context!15738))

(assert (=> b!7315966 (= res!2956305 (matchZipper!3803 z1!542 s!7362))))

(declare-fun lt!2602092 () (InoxSet Context!15738))

(declare-fun e!4379659 () Bool)

(assert (=> b!7315966 (= (matchZipper!3803 lt!2602092 (t!385509 s!7362)) e!4379659)))

(declare-fun res!2956306 () Bool)

(assert (=> b!7315966 (=> res!2956306 e!4379659)))

(declare-fun lt!2602093 () (InoxSet Context!15738))

(assert (=> b!7315966 (= res!2956306 (matchZipper!3803 lt!2602093 (t!385509 s!7362)))))

(declare-datatypes ((Unit!164615 0))(
  ( (Unit!164616) )
))
(declare-fun lt!2602090 () Unit!164615)

(declare-fun lt!2602095 () (InoxSet Context!15738))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1790 ((InoxSet Context!15738) (InoxSet Context!15738) List!71277) Unit!164615)

(assert (=> b!7315966 (= lt!2602090 (lemmaZipperConcatMatchesSameAsBothZippers!1790 lt!2602093 lt!2602095 (t!385509 s!7362)))))

(declare-fun derivationStepZipper!3631 ((InoxSet Context!15738) C!38132) (InoxSet Context!15738))

(assert (=> b!7315966 (= (derivationStepZipper!3631 lt!2602091 (h!77601 s!7362)) lt!2602092)))

(assert (=> b!7315966 (= lt!2602092 ((_ map or) lt!2602093 lt!2602095))))

(declare-fun lt!2602094 () Unit!164615)

(declare-fun z2!461 () (InoxSet Context!15738))

(declare-fun lemmaDerivativeStepZipperAssociative!4 ((InoxSet Context!15738) (InoxSet Context!15738) (InoxSet Context!15738) C!38132) Unit!164615)

(assert (=> b!7315966 (= lt!2602094 (lemmaDerivativeStepZipperAssociative!4 lt!2602091 z1!542 z2!461 (h!77601 s!7362)))))

(assert (=> b!7315966 (= lt!2602091 ((_ map or) z1!542 z2!461))))

(assert (=> b!7315966 (= lt!2602095 (derivationStepZipper!3631 z2!461 (h!77601 s!7362)))))

(assert (=> b!7315966 (= lt!2602093 (derivationStepZipper!3631 z1!542 (h!77601 s!7362)))))

(declare-fun setRes!54496 () Bool)

(declare-fun setNonEmpty!54496 () Bool)

(declare-fun tp!2076748 () Bool)

(declare-fun setElem!54497 () Context!15738)

(declare-fun inv!90443 (Context!15738) Bool)

(assert (=> setNonEmpty!54496 (= setRes!54496 (and tp!2076748 (inv!90443 setElem!54497) e!4379657))))

(declare-fun setRest!54496 () (InoxSet Context!15738))

(assert (=> setNonEmpty!54496 (= z1!542 ((_ map or) (store ((as const (Array Context!15738 Bool)) false) setElem!54497 true) setRest!54496))))

(declare-fun b!7315967 () Bool)

(assert (=> b!7315967 (= e!4379659 (matchZipper!3803 lt!2602095 (t!385509 s!7362)))))

(declare-fun tp!2076747 () Bool)

(declare-fun setNonEmpty!54497 () Bool)

(declare-fun e!4379662 () Bool)

(declare-fun setElem!54496 () Context!15738)

(declare-fun setRes!54497 () Bool)

(assert (=> setNonEmpty!54497 (= setRes!54497 (and tp!2076747 (inv!90443 setElem!54496) e!4379662))))

(declare-fun setRest!54497 () (InoxSet Context!15738))

(assert (=> setNonEmpty!54497 (= z2!461 ((_ map or) (store ((as const (Array Context!15738 Bool)) false) setElem!54496 true) setRest!54497))))

(declare-fun b!7315968 () Bool)

(assert (=> b!7315968 (= e!4379661 (matchZipper!3803 z2!461 s!7362))))

(declare-fun setIsEmpty!54496 () Bool)

(assert (=> setIsEmpty!54496 setRes!54496))

(declare-fun b!7315970 () Bool)

(declare-fun e!4379658 () Bool)

(declare-fun tp_is_empty!47603 () Bool)

(declare-fun tp!2076751 () Bool)

(assert (=> b!7315970 (= e!4379658 (and tp_is_empty!47603 tp!2076751))))

(declare-fun setIsEmpty!54497 () Bool)

(assert (=> setIsEmpty!54497 setRes!54497))

(declare-fun b!7315969 () Bool)

(declare-fun tp!2076749 () Bool)

(assert (=> b!7315969 (= e!4379662 tp!2076749)))

(declare-fun res!2956304 () Bool)

(assert (=> start!713010 (=> (not res!2956304) (not e!4379660))))

(get-info :version)

(assert (=> start!713010 (= res!2956304 ((_ is Cons!71153) s!7362))))

(assert (=> start!713010 e!4379660))

(assert (=> start!713010 e!4379658))

(declare-fun condSetEmpty!54496 () Bool)

(assert (=> start!713010 (= condSetEmpty!54496 (= z1!542 ((as const (Array Context!15738 Bool)) false)))))

(assert (=> start!713010 setRes!54496))

(declare-fun condSetEmpty!54497 () Bool)

(assert (=> start!713010 (= condSetEmpty!54497 (= z2!461 ((as const (Array Context!15738 Bool)) false)))))

(assert (=> start!713010 setRes!54497))

(assert (= (and start!713010 res!2956304) b!7315966))

(assert (= (and b!7315966 (not res!2956306)) b!7315967))

(assert (= (and b!7315966 (not res!2956305)) b!7315968))

(assert (= (and start!713010 ((_ is Cons!71153) s!7362)) b!7315970))

(assert (= (and start!713010 condSetEmpty!54496) setIsEmpty!54496))

(assert (= (and start!713010 (not condSetEmpty!54496)) setNonEmpty!54496))

(assert (= setNonEmpty!54496 b!7315965))

(assert (= (and start!713010 condSetEmpty!54497) setIsEmpty!54497))

(assert (= (and start!713010 (not condSetEmpty!54497)) setNonEmpty!54497))

(assert (= setNonEmpty!54497 b!7315969))

(declare-fun m!7979928 () Bool)

(assert (=> b!7315967 m!7979928))

(declare-fun m!7979930 () Bool)

(assert (=> setNonEmpty!54496 m!7979930))

(declare-fun m!7979932 () Bool)

(assert (=> b!7315966 m!7979932))

(declare-fun m!7979934 () Bool)

(assert (=> b!7315966 m!7979934))

(declare-fun m!7979936 () Bool)

(assert (=> b!7315966 m!7979936))

(declare-fun m!7979938 () Bool)

(assert (=> b!7315966 m!7979938))

(declare-fun m!7979940 () Bool)

(assert (=> b!7315966 m!7979940))

(declare-fun m!7979942 () Bool)

(assert (=> b!7315966 m!7979942))

(declare-fun m!7979944 () Bool)

(assert (=> b!7315966 m!7979944))

(declare-fun m!7979946 () Bool)

(assert (=> b!7315966 m!7979946))

(declare-fun m!7979948 () Bool)

(assert (=> b!7315966 m!7979948))

(declare-fun m!7979950 () Bool)

(assert (=> b!7315968 m!7979950))

(declare-fun m!7979952 () Bool)

(assert (=> setNonEmpty!54497 m!7979952))

(check-sat (not setNonEmpty!54496) (not b!7315968) (not b!7315967) (not b!7315969) (not b!7315965) (not setNonEmpty!54497) (not b!7315966) tp_is_empty!47603 (not b!7315970))
(check-sat)
(get-model)

(declare-fun d!2271418 () Bool)

(declare-fun lambda!452247 () Int)

(declare-fun forall!17770 (List!71276 Int) Bool)

(assert (=> d!2271418 (= (inv!90443 setElem!54497) (forall!17770 (exprs!8369 setElem!54497) lambda!452247))))

(declare-fun bs!1914899 () Bool)

(assert (= bs!1914899 d!2271418))

(declare-fun m!7980022 () Bool)

(assert (=> bs!1914899 m!7980022))

(assert (=> setNonEmpty!54496 d!2271418))

(declare-fun d!2271444 () Bool)

(declare-fun c!1358104 () Bool)

(declare-fun isEmpty!40860 (List!71277) Bool)

(assert (=> d!2271444 (= c!1358104 (isEmpty!40860 (t!385509 s!7362)))))

(declare-fun e!4379687 () Bool)

(assert (=> d!2271444 (= (matchZipper!3803 lt!2602095 (t!385509 s!7362)) e!4379687)))

(declare-fun b!7316013 () Bool)

(declare-fun nullableZipper!3108 ((InoxSet Context!15738)) Bool)

(assert (=> b!7316013 (= e!4379687 (nullableZipper!3108 lt!2602095))))

(declare-fun b!7316014 () Bool)

(declare-fun head!15078 (List!71277) C!38132)

(declare-fun tail!14639 (List!71277) List!71277)

(assert (=> b!7316014 (= e!4379687 (matchZipper!3803 (derivationStepZipper!3631 lt!2602095 (head!15078 (t!385509 s!7362))) (tail!14639 (t!385509 s!7362))))))

(assert (= (and d!2271444 c!1358104) b!7316013))

(assert (= (and d!2271444 (not c!1358104)) b!7316014))

(declare-fun m!7980024 () Bool)

(assert (=> d!2271444 m!7980024))

(declare-fun m!7980026 () Bool)

(assert (=> b!7316013 m!7980026))

(declare-fun m!7980028 () Bool)

(assert (=> b!7316014 m!7980028))

(assert (=> b!7316014 m!7980028))

(declare-fun m!7980030 () Bool)

(assert (=> b!7316014 m!7980030))

(declare-fun m!7980032 () Bool)

(assert (=> b!7316014 m!7980032))

(assert (=> b!7316014 m!7980030))

(assert (=> b!7316014 m!7980032))

(declare-fun m!7980034 () Bool)

(assert (=> b!7316014 m!7980034))

(assert (=> b!7315967 d!2271444))

(declare-fun d!2271446 () Bool)

(declare-fun c!1358105 () Bool)

(assert (=> d!2271446 (= c!1358105 (isEmpty!40860 s!7362))))

(declare-fun e!4379688 () Bool)

(assert (=> d!2271446 (= (matchZipper!3803 z2!461 s!7362) e!4379688)))

(declare-fun b!7316015 () Bool)

(assert (=> b!7316015 (= e!4379688 (nullableZipper!3108 z2!461))))

(declare-fun b!7316016 () Bool)

(assert (=> b!7316016 (= e!4379688 (matchZipper!3803 (derivationStepZipper!3631 z2!461 (head!15078 s!7362)) (tail!14639 s!7362)))))

(assert (= (and d!2271446 c!1358105) b!7316015))

(assert (= (and d!2271446 (not c!1358105)) b!7316016))

(declare-fun m!7980036 () Bool)

(assert (=> d!2271446 m!7980036))

(declare-fun m!7980038 () Bool)

(assert (=> b!7316015 m!7980038))

(declare-fun m!7980040 () Bool)

(assert (=> b!7316016 m!7980040))

(assert (=> b!7316016 m!7980040))

(declare-fun m!7980042 () Bool)

(assert (=> b!7316016 m!7980042))

(declare-fun m!7980044 () Bool)

(assert (=> b!7316016 m!7980044))

(assert (=> b!7316016 m!7980042))

(assert (=> b!7316016 m!7980044))

(declare-fun m!7980046 () Bool)

(assert (=> b!7316016 m!7980046))

(assert (=> b!7315968 d!2271446))

(declare-fun bs!1914900 () Bool)

(declare-fun d!2271448 () Bool)

(assert (= bs!1914900 (and d!2271448 d!2271418)))

(declare-fun lambda!452248 () Int)

(assert (=> bs!1914900 (= lambda!452248 lambda!452247)))

(assert (=> d!2271448 (= (inv!90443 setElem!54496) (forall!17770 (exprs!8369 setElem!54496) lambda!452248))))

(declare-fun bs!1914901 () Bool)

(assert (= bs!1914901 d!2271448))

(declare-fun m!7980048 () Bool)

(assert (=> bs!1914901 m!7980048))

(assert (=> setNonEmpty!54497 d!2271448))

(declare-fun d!2271450 () Bool)

(declare-fun c!1358106 () Bool)

(assert (=> d!2271450 (= c!1358106 (isEmpty!40860 s!7362))))

(declare-fun e!4379689 () Bool)

(assert (=> d!2271450 (= (matchZipper!3803 z1!542 s!7362) e!4379689)))

(declare-fun b!7316017 () Bool)

(assert (=> b!7316017 (= e!4379689 (nullableZipper!3108 z1!542))))

(declare-fun b!7316018 () Bool)

(assert (=> b!7316018 (= e!4379689 (matchZipper!3803 (derivationStepZipper!3631 z1!542 (head!15078 s!7362)) (tail!14639 s!7362)))))

(assert (= (and d!2271450 c!1358106) b!7316017))

(assert (= (and d!2271450 (not c!1358106)) b!7316018))

(assert (=> d!2271450 m!7980036))

(declare-fun m!7980050 () Bool)

(assert (=> b!7316017 m!7980050))

(assert (=> b!7316018 m!7980040))

(assert (=> b!7316018 m!7980040))

(declare-fun m!7980052 () Bool)

(assert (=> b!7316018 m!7980052))

(assert (=> b!7316018 m!7980044))

(assert (=> b!7316018 m!7980052))

(assert (=> b!7316018 m!7980044))

(declare-fun m!7980054 () Bool)

(assert (=> b!7316018 m!7980054))

(assert (=> b!7315966 d!2271450))

(declare-fun d!2271452 () Bool)

(assert (=> d!2271452 true))

(declare-fun lambda!452251 () Int)

(declare-fun flatMap!3049 ((InoxSet Context!15738) Int) (InoxSet Context!15738))

(assert (=> d!2271452 (= (derivationStepZipper!3631 z1!542 (h!77601 s!7362)) (flatMap!3049 z1!542 lambda!452251))))

(declare-fun bs!1914902 () Bool)

(assert (= bs!1914902 d!2271452))

(declare-fun m!7980056 () Bool)

(assert (=> bs!1914902 m!7980056))

(assert (=> b!7315966 d!2271452))

(declare-fun d!2271454 () Bool)

(declare-fun c!1358109 () Bool)

(assert (=> d!2271454 (= c!1358109 (isEmpty!40860 (t!385509 s!7362)))))

(declare-fun e!4379690 () Bool)

(assert (=> d!2271454 (= (matchZipper!3803 lt!2602092 (t!385509 s!7362)) e!4379690)))

(declare-fun b!7316021 () Bool)

(assert (=> b!7316021 (= e!4379690 (nullableZipper!3108 lt!2602092))))

(declare-fun b!7316022 () Bool)

(assert (=> b!7316022 (= e!4379690 (matchZipper!3803 (derivationStepZipper!3631 lt!2602092 (head!15078 (t!385509 s!7362))) (tail!14639 (t!385509 s!7362))))))

(assert (= (and d!2271454 c!1358109) b!7316021))

(assert (= (and d!2271454 (not c!1358109)) b!7316022))

(assert (=> d!2271454 m!7980024))

(declare-fun m!7980058 () Bool)

(assert (=> b!7316021 m!7980058))

(assert (=> b!7316022 m!7980028))

(assert (=> b!7316022 m!7980028))

(declare-fun m!7980060 () Bool)

(assert (=> b!7316022 m!7980060))

(assert (=> b!7316022 m!7980032))

(assert (=> b!7316022 m!7980060))

(assert (=> b!7316022 m!7980032))

(declare-fun m!7980062 () Bool)

(assert (=> b!7316022 m!7980062))

(assert (=> b!7315966 d!2271454))

(declare-fun bs!1914903 () Bool)

(declare-fun d!2271456 () Bool)

(assert (= bs!1914903 (and d!2271456 d!2271452)))

(declare-fun lambda!452252 () Int)

(assert (=> bs!1914903 (= lambda!452252 lambda!452251)))

(assert (=> d!2271456 true))

(assert (=> d!2271456 (= (derivationStepZipper!3631 z2!461 (h!77601 s!7362)) (flatMap!3049 z2!461 lambda!452252))))

(declare-fun bs!1914904 () Bool)

(assert (= bs!1914904 d!2271456))

(declare-fun m!7980064 () Bool)

(assert (=> bs!1914904 m!7980064))

(assert (=> b!7315966 d!2271456))

(declare-fun d!2271458 () Bool)

(declare-fun c!1358110 () Bool)

(assert (=> d!2271458 (= c!1358110 (isEmpty!40860 (t!385509 s!7362)))))

(declare-fun e!4379691 () Bool)

(assert (=> d!2271458 (= (matchZipper!3803 lt!2602093 (t!385509 s!7362)) e!4379691)))

(declare-fun b!7316023 () Bool)

(assert (=> b!7316023 (= e!4379691 (nullableZipper!3108 lt!2602093))))

(declare-fun b!7316024 () Bool)

(assert (=> b!7316024 (= e!4379691 (matchZipper!3803 (derivationStepZipper!3631 lt!2602093 (head!15078 (t!385509 s!7362))) (tail!14639 (t!385509 s!7362))))))

(assert (= (and d!2271458 c!1358110) b!7316023))

(assert (= (and d!2271458 (not c!1358110)) b!7316024))

(assert (=> d!2271458 m!7980024))

(declare-fun m!7980066 () Bool)

(assert (=> b!7316023 m!7980066))

(assert (=> b!7316024 m!7980028))

(assert (=> b!7316024 m!7980028))

(declare-fun m!7980068 () Bool)

(assert (=> b!7316024 m!7980068))

(assert (=> b!7316024 m!7980032))

(assert (=> b!7316024 m!7980068))

(assert (=> b!7316024 m!7980032))

(declare-fun m!7980070 () Bool)

(assert (=> b!7316024 m!7980070))

(assert (=> b!7315966 d!2271458))

(declare-fun d!2271460 () Bool)

(declare-fun e!4379694 () Bool)

(assert (=> d!2271460 (= (matchZipper!3803 ((_ map or) lt!2602093 lt!2602095) (t!385509 s!7362)) e!4379694)))

(declare-fun res!2956312 () Bool)

(assert (=> d!2271460 (=> res!2956312 e!4379694)))

(assert (=> d!2271460 (= res!2956312 (matchZipper!3803 lt!2602093 (t!385509 s!7362)))))

(declare-fun lt!2602104 () Unit!164615)

(declare-fun choose!56736 ((InoxSet Context!15738) (InoxSet Context!15738) List!71277) Unit!164615)

(assert (=> d!2271460 (= lt!2602104 (choose!56736 lt!2602093 lt!2602095 (t!385509 s!7362)))))

(assert (=> d!2271460 (= (lemmaZipperConcatMatchesSameAsBothZippers!1790 lt!2602093 lt!2602095 (t!385509 s!7362)) lt!2602104)))

(declare-fun b!7316027 () Bool)

(assert (=> b!7316027 (= e!4379694 (matchZipper!3803 lt!2602095 (t!385509 s!7362)))))

(assert (= (and d!2271460 (not res!2956312)) b!7316027))

(declare-fun m!7980072 () Bool)

(assert (=> d!2271460 m!7980072))

(assert (=> d!2271460 m!7979934))

(declare-fun m!7980074 () Bool)

(assert (=> d!2271460 m!7980074))

(assert (=> b!7316027 m!7979928))

(assert (=> b!7315966 d!2271460))

(declare-fun bs!1914905 () Bool)

(declare-fun d!2271462 () Bool)

(assert (= bs!1914905 (and d!2271462 d!2271452)))

(declare-fun lambda!452253 () Int)

(assert (=> bs!1914905 (= lambda!452253 lambda!452251)))

(declare-fun bs!1914906 () Bool)

(assert (= bs!1914906 (and d!2271462 d!2271456)))

(assert (=> bs!1914906 (= lambda!452253 lambda!452252)))

(assert (=> d!2271462 true))

(assert (=> d!2271462 (= (derivationStepZipper!3631 lt!2602091 (h!77601 s!7362)) (flatMap!3049 lt!2602091 lambda!452253))))

(declare-fun bs!1914907 () Bool)

(assert (= bs!1914907 d!2271462))

(declare-fun m!7980076 () Bool)

(assert (=> bs!1914907 m!7980076))

(assert (=> b!7315966 d!2271462))

(declare-fun d!2271464 () Bool)

(assert (=> d!2271464 (= (derivationStepZipper!3631 lt!2602091 (h!77601 s!7362)) ((_ map or) (derivationStepZipper!3631 z1!542 (h!77601 s!7362)) (derivationStepZipper!3631 z2!461 (h!77601 s!7362))))))

(declare-fun lt!2602107 () Unit!164615)

(declare-fun choose!56737 ((InoxSet Context!15738) (InoxSet Context!15738) (InoxSet Context!15738) C!38132) Unit!164615)

(assert (=> d!2271464 (= lt!2602107 (choose!56737 lt!2602091 z1!542 z2!461 (h!77601 s!7362)))))

(assert (=> d!2271464 (= lt!2602091 ((_ map or) z1!542 z2!461))))

(assert (=> d!2271464 (= (lemmaDerivativeStepZipperAssociative!4 lt!2602091 z1!542 z2!461 (h!77601 s!7362)) lt!2602107)))

(declare-fun bs!1914908 () Bool)

(assert (= bs!1914908 d!2271464))

(assert (=> bs!1914908 m!7979936))

(assert (=> bs!1914908 m!7979944))

(assert (=> bs!1914908 m!7979942))

(declare-fun m!7980078 () Bool)

(assert (=> bs!1914908 m!7980078))

(assert (=> b!7315966 d!2271464))

(declare-fun d!2271466 () Bool)

(declare-fun c!1358111 () Bool)

(assert (=> d!2271466 (= c!1358111 (isEmpty!40860 s!7362))))

(declare-fun e!4379695 () Bool)

(assert (=> d!2271466 (= (matchZipper!3803 lt!2602091 s!7362) e!4379695)))

(declare-fun b!7316028 () Bool)

(assert (=> b!7316028 (= e!4379695 (nullableZipper!3108 lt!2602091))))

(declare-fun b!7316029 () Bool)

(assert (=> b!7316029 (= e!4379695 (matchZipper!3803 (derivationStepZipper!3631 lt!2602091 (head!15078 s!7362)) (tail!14639 s!7362)))))

(assert (= (and d!2271466 c!1358111) b!7316028))

(assert (= (and d!2271466 (not c!1358111)) b!7316029))

(assert (=> d!2271466 m!7980036))

(declare-fun m!7980080 () Bool)

(assert (=> b!7316028 m!7980080))

(assert (=> b!7316029 m!7980040))

(assert (=> b!7316029 m!7980040))

(declare-fun m!7980082 () Bool)

(assert (=> b!7316029 m!7980082))

(assert (=> b!7316029 m!7980044))

(assert (=> b!7316029 m!7980082))

(assert (=> b!7316029 m!7980044))

(declare-fun m!7980084 () Bool)

(assert (=> b!7316029 m!7980084))

(assert (=> b!7315966 d!2271466))

(declare-fun condSetEmpty!54504 () Bool)

(assert (=> setNonEmpty!54496 (= condSetEmpty!54504 (= setRest!54496 ((as const (Array Context!15738 Bool)) false)))))

(declare-fun setRes!54504 () Bool)

(assert (=> setNonEmpty!54496 (= tp!2076748 setRes!54504)))

(declare-fun setIsEmpty!54504 () Bool)

(assert (=> setIsEmpty!54504 setRes!54504))

(declare-fun setNonEmpty!54504 () Bool)

(declare-fun setElem!54504 () Context!15738)

(declare-fun tp!2076775 () Bool)

(declare-fun e!4379698 () Bool)

(assert (=> setNonEmpty!54504 (= setRes!54504 (and tp!2076775 (inv!90443 setElem!54504) e!4379698))))

(declare-fun setRest!54504 () (InoxSet Context!15738))

(assert (=> setNonEmpty!54504 (= setRest!54496 ((_ map or) (store ((as const (Array Context!15738 Bool)) false) setElem!54504 true) setRest!54504))))

(declare-fun b!7316034 () Bool)

(declare-fun tp!2076776 () Bool)

(assert (=> b!7316034 (= e!4379698 tp!2076776)))

(assert (= (and setNonEmpty!54496 condSetEmpty!54504) setIsEmpty!54504))

(assert (= (and setNonEmpty!54496 (not condSetEmpty!54504)) setNonEmpty!54504))

(assert (= setNonEmpty!54504 b!7316034))

(declare-fun m!7980086 () Bool)

(assert (=> setNonEmpty!54504 m!7980086))

(declare-fun b!7316039 () Bool)

(declare-fun e!4379701 () Bool)

(declare-fun tp!2076779 () Bool)

(assert (=> b!7316039 (= e!4379701 (and tp_is_empty!47603 tp!2076779))))

(assert (=> b!7315970 (= tp!2076751 e!4379701)))

(assert (= (and b!7315970 ((_ is Cons!71153) (t!385509 s!7362))) b!7316039))

(declare-fun condSetEmpty!54505 () Bool)

(assert (=> setNonEmpty!54497 (= condSetEmpty!54505 (= setRest!54497 ((as const (Array Context!15738 Bool)) false)))))

(declare-fun setRes!54505 () Bool)

(assert (=> setNonEmpty!54497 (= tp!2076747 setRes!54505)))

(declare-fun setIsEmpty!54505 () Bool)

(assert (=> setIsEmpty!54505 setRes!54505))

(declare-fun tp!2076780 () Bool)

(declare-fun setElem!54505 () Context!15738)

(declare-fun e!4379702 () Bool)

(declare-fun setNonEmpty!54505 () Bool)

(assert (=> setNonEmpty!54505 (= setRes!54505 (and tp!2076780 (inv!90443 setElem!54505) e!4379702))))

(declare-fun setRest!54505 () (InoxSet Context!15738))

(assert (=> setNonEmpty!54505 (= setRest!54497 ((_ map or) (store ((as const (Array Context!15738 Bool)) false) setElem!54505 true) setRest!54505))))

(declare-fun b!7316040 () Bool)

(declare-fun tp!2076781 () Bool)

(assert (=> b!7316040 (= e!4379702 tp!2076781)))

(assert (= (and setNonEmpty!54497 condSetEmpty!54505) setIsEmpty!54505))

(assert (= (and setNonEmpty!54497 (not condSetEmpty!54505)) setNonEmpty!54505))

(assert (= setNonEmpty!54505 b!7316040))

(declare-fun m!7980088 () Bool)

(assert (=> setNonEmpty!54505 m!7980088))

(declare-fun b!7316045 () Bool)

(declare-fun e!4379705 () Bool)

(declare-fun tp!2076786 () Bool)

(declare-fun tp!2076787 () Bool)

(assert (=> b!7316045 (= e!4379705 (and tp!2076786 tp!2076787))))

(assert (=> b!7315969 (= tp!2076749 e!4379705)))

(assert (= (and b!7315969 ((_ is Cons!71152) (exprs!8369 setElem!54496))) b!7316045))

(declare-fun b!7316046 () Bool)

(declare-fun e!4379706 () Bool)

(declare-fun tp!2076788 () Bool)

(declare-fun tp!2076789 () Bool)

(assert (=> b!7316046 (= e!4379706 (and tp!2076788 tp!2076789))))

(assert (=> b!7315965 (= tp!2076750 e!4379706)))

(assert (= (and b!7315965 ((_ is Cons!71152) (exprs!8369 setElem!54497))) b!7316046))

(check-sat (not d!2271450) (not d!2271448) (not b!7316023) (not b!7316021) (not d!2271460) (not b!7316024) (not d!2271464) (not b!7316018) (not b!7316022) (not d!2271444) (not b!7316017) (not b!7316039) (not b!7316016) (not b!7316014) (not d!2271458) (not d!2271418) (not b!7316028) (not b!7316015) (not b!7316046) (not b!7316027) (not setNonEmpty!54505) (not setNonEmpty!54504) (not d!2271446) (not d!2271454) (not b!7316045) (not b!7316034) (not d!2271466) tp_is_empty!47603 (not b!7316029) (not b!7316013) (not d!2271452) (not b!7316040) (not d!2271462) (not d!2271456))
(check-sat)
(get-model)

(declare-fun d!2271530 () Bool)

(declare-fun res!2956328 () Bool)

(declare-fun e!4379730 () Bool)

(assert (=> d!2271530 (=> res!2956328 e!4379730)))

(assert (=> d!2271530 (= res!2956328 ((_ is Nil!71152) (exprs!8369 setElem!54496)))))

(assert (=> d!2271530 (= (forall!17770 (exprs!8369 setElem!54496) lambda!452248) e!4379730)))

(declare-fun b!7316077 () Bool)

(declare-fun e!4379731 () Bool)

(assert (=> b!7316077 (= e!4379730 e!4379731)))

(declare-fun res!2956329 () Bool)

(assert (=> b!7316077 (=> (not res!2956329) (not e!4379731))))

(declare-fun dynLambda!29154 (Int Regex!18929) Bool)

(assert (=> b!7316077 (= res!2956329 (dynLambda!29154 lambda!452248 (h!77600 (exprs!8369 setElem!54496))))))

(declare-fun b!7316078 () Bool)

(assert (=> b!7316078 (= e!4379731 (forall!17770 (t!385508 (exprs!8369 setElem!54496)) lambda!452248))))

(assert (= (and d!2271530 (not res!2956328)) b!7316077))

(assert (= (and b!7316077 res!2956329) b!7316078))

(declare-fun b_lambda!282539 () Bool)

(assert (=> (not b_lambda!282539) (not b!7316077)))

(declare-fun m!7980186 () Bool)

(assert (=> b!7316077 m!7980186))

(declare-fun m!7980190 () Bool)

(assert (=> b!7316078 m!7980190))

(assert (=> d!2271448 d!2271530))

(declare-fun d!2271538 () Bool)

(declare-fun c!1358121 () Bool)

(assert (=> d!2271538 (= c!1358121 (isEmpty!40860 (tail!14639 s!7362)))))

(declare-fun e!4379735 () Bool)

(assert (=> d!2271538 (= (matchZipper!3803 (derivationStepZipper!3631 lt!2602091 (head!15078 s!7362)) (tail!14639 s!7362)) e!4379735)))

(declare-fun b!7316086 () Bool)

(assert (=> b!7316086 (= e!4379735 (nullableZipper!3108 (derivationStepZipper!3631 lt!2602091 (head!15078 s!7362))))))

(declare-fun b!7316087 () Bool)

(assert (=> b!7316087 (= e!4379735 (matchZipper!3803 (derivationStepZipper!3631 (derivationStepZipper!3631 lt!2602091 (head!15078 s!7362)) (head!15078 (tail!14639 s!7362))) (tail!14639 (tail!14639 s!7362))))))

(assert (= (and d!2271538 c!1358121) b!7316086))

(assert (= (and d!2271538 (not c!1358121)) b!7316087))

(assert (=> d!2271538 m!7980044))

(declare-fun m!7980192 () Bool)

(assert (=> d!2271538 m!7980192))

(assert (=> b!7316086 m!7980082))

(declare-fun m!7980194 () Bool)

(assert (=> b!7316086 m!7980194))

(assert (=> b!7316087 m!7980044))

(declare-fun m!7980196 () Bool)

(assert (=> b!7316087 m!7980196))

(assert (=> b!7316087 m!7980082))

(assert (=> b!7316087 m!7980196))

(declare-fun m!7980198 () Bool)

(assert (=> b!7316087 m!7980198))

(assert (=> b!7316087 m!7980044))

(declare-fun m!7980200 () Bool)

(assert (=> b!7316087 m!7980200))

(assert (=> b!7316087 m!7980198))

(assert (=> b!7316087 m!7980200))

(declare-fun m!7980202 () Bool)

(assert (=> b!7316087 m!7980202))

(assert (=> b!7316029 d!2271538))

(declare-fun bs!1914980 () Bool)

(declare-fun d!2271540 () Bool)

(assert (= bs!1914980 (and d!2271540 d!2271452)))

(declare-fun lambda!452270 () Int)

(assert (=> bs!1914980 (= (= (head!15078 s!7362) (h!77601 s!7362)) (= lambda!452270 lambda!452251))))

(declare-fun bs!1914981 () Bool)

(assert (= bs!1914981 (and d!2271540 d!2271456)))

(assert (=> bs!1914981 (= (= (head!15078 s!7362) (h!77601 s!7362)) (= lambda!452270 lambda!452252))))

(declare-fun bs!1914982 () Bool)

(assert (= bs!1914982 (and d!2271540 d!2271462)))

(assert (=> bs!1914982 (= (= (head!15078 s!7362) (h!77601 s!7362)) (= lambda!452270 lambda!452253))))

(assert (=> d!2271540 true))

(assert (=> d!2271540 (= (derivationStepZipper!3631 lt!2602091 (head!15078 s!7362)) (flatMap!3049 lt!2602091 lambda!452270))))

(declare-fun bs!1914983 () Bool)

(assert (= bs!1914983 d!2271540))

(declare-fun m!7980204 () Bool)

(assert (=> bs!1914983 m!7980204))

(assert (=> b!7316029 d!2271540))

(declare-fun d!2271542 () Bool)

(assert (=> d!2271542 (= (head!15078 s!7362) (h!77601 s!7362))))

(assert (=> b!7316029 d!2271542))

(declare-fun d!2271544 () Bool)

(assert (=> d!2271544 (= (tail!14639 s!7362) (t!385509 s!7362))))

(assert (=> b!7316029 d!2271544))

(declare-fun d!2271546 () Bool)

(declare-fun choose!56739 ((InoxSet Context!15738) Int) (InoxSet Context!15738))

(assert (=> d!2271546 (= (flatMap!3049 z1!542 lambda!452251) (choose!56739 z1!542 lambda!452251))))

(declare-fun bs!1914986 () Bool)

(assert (= bs!1914986 d!2271546))

(declare-fun m!7980212 () Bool)

(assert (=> bs!1914986 m!7980212))

(assert (=> d!2271452 d!2271546))

(declare-fun d!2271552 () Bool)

(declare-fun lambda!452273 () Int)

(declare-fun exists!4575 ((InoxSet Context!15738) Int) Bool)

(assert (=> d!2271552 (= (nullableZipper!3108 lt!2602091) (exists!4575 lt!2602091 lambda!452273))))

(declare-fun bs!1914987 () Bool)

(assert (= bs!1914987 d!2271552))

(declare-fun m!7980214 () Bool)

(assert (=> bs!1914987 m!7980214))

(assert (=> b!7316028 d!2271552))

(declare-fun bs!1914988 () Bool)

(declare-fun d!2271554 () Bool)

(assert (= bs!1914988 (and d!2271554 d!2271418)))

(declare-fun lambda!452274 () Int)

(assert (=> bs!1914988 (= lambda!452274 lambda!452247)))

(declare-fun bs!1914989 () Bool)

(assert (= bs!1914989 (and d!2271554 d!2271448)))

(assert (=> bs!1914989 (= lambda!452274 lambda!452248)))

(assert (=> d!2271554 (= (inv!90443 setElem!54504) (forall!17770 (exprs!8369 setElem!54504) lambda!452274))))

(declare-fun bs!1914990 () Bool)

(assert (= bs!1914990 d!2271554))

(declare-fun m!7980216 () Bool)

(assert (=> bs!1914990 m!7980216))

(assert (=> setNonEmpty!54504 d!2271554))

(declare-fun d!2271556 () Bool)

(assert (=> d!2271556 (= (isEmpty!40860 (t!385509 s!7362)) ((_ is Nil!71153) (t!385509 s!7362)))))

(assert (=> d!2271454 d!2271556))

(declare-fun d!2271558 () Bool)

(assert (=> d!2271558 (= (isEmpty!40860 s!7362) ((_ is Nil!71153) s!7362))))

(assert (=> d!2271450 d!2271558))

(declare-fun d!2271560 () Bool)

(declare-fun c!1358124 () Bool)

(assert (=> d!2271560 (= c!1358124 (isEmpty!40860 (tail!14639 (t!385509 s!7362))))))

(declare-fun e!4379743 () Bool)

(assert (=> d!2271560 (= (matchZipper!3803 (derivationStepZipper!3631 lt!2602093 (head!15078 (t!385509 s!7362))) (tail!14639 (t!385509 s!7362))) e!4379743)))

(declare-fun b!7316105 () Bool)

(assert (=> b!7316105 (= e!4379743 (nullableZipper!3108 (derivationStepZipper!3631 lt!2602093 (head!15078 (t!385509 s!7362)))))))

(declare-fun b!7316106 () Bool)

(assert (=> b!7316106 (= e!4379743 (matchZipper!3803 (derivationStepZipper!3631 (derivationStepZipper!3631 lt!2602093 (head!15078 (t!385509 s!7362))) (head!15078 (tail!14639 (t!385509 s!7362)))) (tail!14639 (tail!14639 (t!385509 s!7362)))))))

(assert (= (and d!2271560 c!1358124) b!7316105))

(assert (= (and d!2271560 (not c!1358124)) b!7316106))

(assert (=> d!2271560 m!7980032))

(declare-fun m!7980218 () Bool)

(assert (=> d!2271560 m!7980218))

(assert (=> b!7316105 m!7980068))

(declare-fun m!7980220 () Bool)

(assert (=> b!7316105 m!7980220))

(assert (=> b!7316106 m!7980032))

(declare-fun m!7980222 () Bool)

(assert (=> b!7316106 m!7980222))

(assert (=> b!7316106 m!7980068))

(assert (=> b!7316106 m!7980222))

(declare-fun m!7980224 () Bool)

(assert (=> b!7316106 m!7980224))

(assert (=> b!7316106 m!7980032))

(declare-fun m!7980226 () Bool)

(assert (=> b!7316106 m!7980226))

(assert (=> b!7316106 m!7980224))

(assert (=> b!7316106 m!7980226))

(declare-fun m!7980228 () Bool)

(assert (=> b!7316106 m!7980228))

(assert (=> b!7316024 d!2271560))

(declare-fun bs!1914991 () Bool)

(declare-fun d!2271562 () Bool)

(assert (= bs!1914991 (and d!2271562 d!2271452)))

(declare-fun lambda!452275 () Int)

(assert (=> bs!1914991 (= (= (head!15078 (t!385509 s!7362)) (h!77601 s!7362)) (= lambda!452275 lambda!452251))))

(declare-fun bs!1914992 () Bool)

(assert (= bs!1914992 (and d!2271562 d!2271456)))

(assert (=> bs!1914992 (= (= (head!15078 (t!385509 s!7362)) (h!77601 s!7362)) (= lambda!452275 lambda!452252))))

(declare-fun bs!1914993 () Bool)

(assert (= bs!1914993 (and d!2271562 d!2271462)))

(assert (=> bs!1914993 (= (= (head!15078 (t!385509 s!7362)) (h!77601 s!7362)) (= lambda!452275 lambda!452253))))

(declare-fun bs!1914994 () Bool)

(assert (= bs!1914994 (and d!2271562 d!2271540)))

(assert (=> bs!1914994 (= (= (head!15078 (t!385509 s!7362)) (head!15078 s!7362)) (= lambda!452275 lambda!452270))))

(assert (=> d!2271562 true))

(assert (=> d!2271562 (= (derivationStepZipper!3631 lt!2602093 (head!15078 (t!385509 s!7362))) (flatMap!3049 lt!2602093 lambda!452275))))

(declare-fun bs!1914995 () Bool)

(assert (= bs!1914995 d!2271562))

(declare-fun m!7980230 () Bool)

(assert (=> bs!1914995 m!7980230))

(assert (=> b!7316024 d!2271562))

(declare-fun d!2271564 () Bool)

(assert (=> d!2271564 (= (head!15078 (t!385509 s!7362)) (h!77601 (t!385509 s!7362)))))

(assert (=> b!7316024 d!2271564))

(declare-fun d!2271566 () Bool)

(assert (=> d!2271566 (= (tail!14639 (t!385509 s!7362)) (t!385509 (t!385509 s!7362)))))

(assert (=> b!7316024 d!2271566))

(declare-fun bs!1914996 () Bool)

(declare-fun d!2271568 () Bool)

(assert (= bs!1914996 (and d!2271568 d!2271552)))

(declare-fun lambda!452276 () Int)

(assert (=> bs!1914996 (= lambda!452276 lambda!452273)))

(assert (=> d!2271568 (= (nullableZipper!3108 lt!2602093) (exists!4575 lt!2602093 lambda!452276))))

(declare-fun bs!1914997 () Bool)

(assert (= bs!1914997 d!2271568))

(declare-fun m!7980232 () Bool)

(assert (=> bs!1914997 m!7980232))

(assert (=> b!7316023 d!2271568))

(declare-fun bs!1914998 () Bool)

(declare-fun d!2271570 () Bool)

(assert (= bs!1914998 (and d!2271570 d!2271552)))

(declare-fun lambda!452277 () Int)

(assert (=> bs!1914998 (= lambda!452277 lambda!452273)))

(declare-fun bs!1914999 () Bool)

(assert (= bs!1914999 (and d!2271570 d!2271568)))

(assert (=> bs!1914999 (= lambda!452277 lambda!452276)))

(assert (=> d!2271570 (= (nullableZipper!3108 z2!461) (exists!4575 z2!461 lambda!452277))))

(declare-fun bs!1915000 () Bool)

(assert (= bs!1915000 d!2271570))

(declare-fun m!7980234 () Bool)

(assert (=> bs!1915000 m!7980234))

(assert (=> b!7316015 d!2271570))

(assert (=> d!2271458 d!2271556))

(declare-fun bs!1915001 () Bool)

(declare-fun d!2271572 () Bool)

(assert (= bs!1915001 (and d!2271572 d!2271418)))

(declare-fun lambda!452278 () Int)

(assert (=> bs!1915001 (= lambda!452278 lambda!452247)))

(declare-fun bs!1915002 () Bool)

(assert (= bs!1915002 (and d!2271572 d!2271448)))

(assert (=> bs!1915002 (= lambda!452278 lambda!452248)))

(declare-fun bs!1915003 () Bool)

(assert (= bs!1915003 (and d!2271572 d!2271554)))

(assert (=> bs!1915003 (= lambda!452278 lambda!452274)))

(assert (=> d!2271572 (= (inv!90443 setElem!54505) (forall!17770 (exprs!8369 setElem!54505) lambda!452278))))

(declare-fun bs!1915004 () Bool)

(assert (= bs!1915004 d!2271572))

(declare-fun m!7980236 () Bool)

(assert (=> bs!1915004 m!7980236))

(assert (=> setNonEmpty!54505 d!2271572))

(assert (=> d!2271446 d!2271558))

(assert (=> d!2271464 d!2271462))

(assert (=> d!2271464 d!2271452))

(assert (=> d!2271464 d!2271456))

(declare-fun d!2271574 () Bool)

(assert (=> d!2271574 (= (derivationStepZipper!3631 lt!2602091 (h!77601 s!7362)) ((_ map or) (derivationStepZipper!3631 z1!542 (h!77601 s!7362)) (derivationStepZipper!3631 z2!461 (h!77601 s!7362))))))

(assert (=> d!2271574 true))

(declare-fun _$52!2470 () Unit!164615)

(assert (=> d!2271574 (= (choose!56737 lt!2602091 z1!542 z2!461 (h!77601 s!7362)) _$52!2470)))

(declare-fun bs!1915005 () Bool)

(assert (= bs!1915005 d!2271574))

(assert (=> bs!1915005 m!7979936))

(assert (=> bs!1915005 m!7979944))

(assert (=> bs!1915005 m!7979942))

(assert (=> d!2271464 d!2271574))

(declare-fun d!2271576 () Bool)

(declare-fun c!1358125 () Bool)

(assert (=> d!2271576 (= c!1358125 (isEmpty!40860 (tail!14639 (t!385509 s!7362))))))

(declare-fun e!4379744 () Bool)

(assert (=> d!2271576 (= (matchZipper!3803 (derivationStepZipper!3631 lt!2602095 (head!15078 (t!385509 s!7362))) (tail!14639 (t!385509 s!7362))) e!4379744)))

(declare-fun b!7316107 () Bool)

(assert (=> b!7316107 (= e!4379744 (nullableZipper!3108 (derivationStepZipper!3631 lt!2602095 (head!15078 (t!385509 s!7362)))))))

(declare-fun b!7316108 () Bool)

(assert (=> b!7316108 (= e!4379744 (matchZipper!3803 (derivationStepZipper!3631 (derivationStepZipper!3631 lt!2602095 (head!15078 (t!385509 s!7362))) (head!15078 (tail!14639 (t!385509 s!7362)))) (tail!14639 (tail!14639 (t!385509 s!7362)))))))

(assert (= (and d!2271576 c!1358125) b!7316107))

(assert (= (and d!2271576 (not c!1358125)) b!7316108))

(assert (=> d!2271576 m!7980032))

(assert (=> d!2271576 m!7980218))

(assert (=> b!7316107 m!7980030))

(declare-fun m!7980238 () Bool)

(assert (=> b!7316107 m!7980238))

(assert (=> b!7316108 m!7980032))

(assert (=> b!7316108 m!7980222))

(assert (=> b!7316108 m!7980030))

(assert (=> b!7316108 m!7980222))

(declare-fun m!7980240 () Bool)

(assert (=> b!7316108 m!7980240))

(assert (=> b!7316108 m!7980032))

(assert (=> b!7316108 m!7980226))

(assert (=> b!7316108 m!7980240))

(assert (=> b!7316108 m!7980226))

(declare-fun m!7980242 () Bool)

(assert (=> b!7316108 m!7980242))

(assert (=> b!7316014 d!2271576))

(declare-fun bs!1915006 () Bool)

(declare-fun d!2271578 () Bool)

(assert (= bs!1915006 (and d!2271578 d!2271462)))

(declare-fun lambda!452279 () Int)

(assert (=> bs!1915006 (= (= (head!15078 (t!385509 s!7362)) (h!77601 s!7362)) (= lambda!452279 lambda!452253))))

(declare-fun bs!1915007 () Bool)

(assert (= bs!1915007 (and d!2271578 d!2271452)))

(assert (=> bs!1915007 (= (= (head!15078 (t!385509 s!7362)) (h!77601 s!7362)) (= lambda!452279 lambda!452251))))

(declare-fun bs!1915008 () Bool)

(assert (= bs!1915008 (and d!2271578 d!2271540)))

(assert (=> bs!1915008 (= (= (head!15078 (t!385509 s!7362)) (head!15078 s!7362)) (= lambda!452279 lambda!452270))))

(declare-fun bs!1915009 () Bool)

(assert (= bs!1915009 (and d!2271578 d!2271562)))

(assert (=> bs!1915009 (= lambda!452279 lambda!452275)))

(declare-fun bs!1915010 () Bool)

(assert (= bs!1915010 (and d!2271578 d!2271456)))

(assert (=> bs!1915010 (= (= (head!15078 (t!385509 s!7362)) (h!77601 s!7362)) (= lambda!452279 lambda!452252))))

(assert (=> d!2271578 true))

(assert (=> d!2271578 (= (derivationStepZipper!3631 lt!2602095 (head!15078 (t!385509 s!7362))) (flatMap!3049 lt!2602095 lambda!452279))))

(declare-fun bs!1915011 () Bool)

(assert (= bs!1915011 d!2271578))

(declare-fun m!7980244 () Bool)

(assert (=> bs!1915011 m!7980244))

(assert (=> b!7316014 d!2271578))

(assert (=> b!7316014 d!2271564))

(assert (=> b!7316014 d!2271566))

(assert (=> b!7316027 d!2271444))

(declare-fun d!2271580 () Bool)

(declare-fun c!1358126 () Bool)

(assert (=> d!2271580 (= c!1358126 (isEmpty!40860 (tail!14639 s!7362)))))

(declare-fun e!4379745 () Bool)

(assert (=> d!2271580 (= (matchZipper!3803 (derivationStepZipper!3631 z1!542 (head!15078 s!7362)) (tail!14639 s!7362)) e!4379745)))

(declare-fun b!7316109 () Bool)

(assert (=> b!7316109 (= e!4379745 (nullableZipper!3108 (derivationStepZipper!3631 z1!542 (head!15078 s!7362))))))

(declare-fun b!7316110 () Bool)

(assert (=> b!7316110 (= e!4379745 (matchZipper!3803 (derivationStepZipper!3631 (derivationStepZipper!3631 z1!542 (head!15078 s!7362)) (head!15078 (tail!14639 s!7362))) (tail!14639 (tail!14639 s!7362))))))

(assert (= (and d!2271580 c!1358126) b!7316109))

(assert (= (and d!2271580 (not c!1358126)) b!7316110))

(assert (=> d!2271580 m!7980044))

(assert (=> d!2271580 m!7980192))

(assert (=> b!7316109 m!7980052))

(declare-fun m!7980246 () Bool)

(assert (=> b!7316109 m!7980246))

(assert (=> b!7316110 m!7980044))

(assert (=> b!7316110 m!7980196))

(assert (=> b!7316110 m!7980052))

(assert (=> b!7316110 m!7980196))

(declare-fun m!7980248 () Bool)

(assert (=> b!7316110 m!7980248))

(assert (=> b!7316110 m!7980044))

(assert (=> b!7316110 m!7980200))

(assert (=> b!7316110 m!7980248))

(assert (=> b!7316110 m!7980200))

(declare-fun m!7980250 () Bool)

(assert (=> b!7316110 m!7980250))

(assert (=> b!7316018 d!2271580))

(declare-fun bs!1915012 () Bool)

(declare-fun d!2271582 () Bool)

(assert (= bs!1915012 (and d!2271582 d!2271462)))

(declare-fun lambda!452280 () Int)

(assert (=> bs!1915012 (= (= (head!15078 s!7362) (h!77601 s!7362)) (= lambda!452280 lambda!452253))))

(declare-fun bs!1915013 () Bool)

(assert (= bs!1915013 (and d!2271582 d!2271578)))

(assert (=> bs!1915013 (= (= (head!15078 s!7362) (head!15078 (t!385509 s!7362))) (= lambda!452280 lambda!452279))))

(declare-fun bs!1915014 () Bool)

(assert (= bs!1915014 (and d!2271582 d!2271452)))

(assert (=> bs!1915014 (= (= (head!15078 s!7362) (h!77601 s!7362)) (= lambda!452280 lambda!452251))))

(declare-fun bs!1915015 () Bool)

(assert (= bs!1915015 (and d!2271582 d!2271540)))

(assert (=> bs!1915015 (= lambda!452280 lambda!452270)))

(declare-fun bs!1915016 () Bool)

(assert (= bs!1915016 (and d!2271582 d!2271562)))

(assert (=> bs!1915016 (= (= (head!15078 s!7362) (head!15078 (t!385509 s!7362))) (= lambda!452280 lambda!452275))))

(declare-fun bs!1915017 () Bool)

(assert (= bs!1915017 (and d!2271582 d!2271456)))

(assert (=> bs!1915017 (= (= (head!15078 s!7362) (h!77601 s!7362)) (= lambda!452280 lambda!452252))))

(assert (=> d!2271582 true))

(assert (=> d!2271582 (= (derivationStepZipper!3631 z1!542 (head!15078 s!7362)) (flatMap!3049 z1!542 lambda!452280))))

(declare-fun bs!1915018 () Bool)

(assert (= bs!1915018 d!2271582))

(declare-fun m!7980252 () Bool)

(assert (=> bs!1915018 m!7980252))

(assert (=> b!7316018 d!2271582))

(assert (=> b!7316018 d!2271542))

(assert (=> b!7316018 d!2271544))

(declare-fun bs!1915019 () Bool)

(declare-fun d!2271584 () Bool)

(assert (= bs!1915019 (and d!2271584 d!2271552)))

(declare-fun lambda!452281 () Int)

(assert (=> bs!1915019 (= lambda!452281 lambda!452273)))

(declare-fun bs!1915020 () Bool)

(assert (= bs!1915020 (and d!2271584 d!2271568)))

(assert (=> bs!1915020 (= lambda!452281 lambda!452276)))

(declare-fun bs!1915021 () Bool)

(assert (= bs!1915021 (and d!2271584 d!2271570)))

(assert (=> bs!1915021 (= lambda!452281 lambda!452277)))

(assert (=> d!2271584 (= (nullableZipper!3108 z1!542) (exists!4575 z1!542 lambda!452281))))

(declare-fun bs!1915022 () Bool)

(assert (= bs!1915022 d!2271584))

(declare-fun m!7980254 () Bool)

(assert (=> bs!1915022 m!7980254))

(assert (=> b!7316017 d!2271584))

(declare-fun bs!1915023 () Bool)

(declare-fun d!2271586 () Bool)

(assert (= bs!1915023 (and d!2271586 d!2271552)))

(declare-fun lambda!452282 () Int)

(assert (=> bs!1915023 (= lambda!452282 lambda!452273)))

(declare-fun bs!1915024 () Bool)

(assert (= bs!1915024 (and d!2271586 d!2271568)))

(assert (=> bs!1915024 (= lambda!452282 lambda!452276)))

(declare-fun bs!1915025 () Bool)

(assert (= bs!1915025 (and d!2271586 d!2271570)))

(assert (=> bs!1915025 (= lambda!452282 lambda!452277)))

(declare-fun bs!1915026 () Bool)

(assert (= bs!1915026 (and d!2271586 d!2271584)))

(assert (=> bs!1915026 (= lambda!452282 lambda!452281)))

(assert (=> d!2271586 (= (nullableZipper!3108 lt!2602092) (exists!4575 lt!2602092 lambda!452282))))

(declare-fun bs!1915027 () Bool)

(assert (= bs!1915027 d!2271586))

(declare-fun m!7980256 () Bool)

(assert (=> bs!1915027 m!7980256))

(assert (=> b!7316021 d!2271586))

(declare-fun d!2271588 () Bool)

(declare-fun c!1358127 () Bool)

(assert (=> d!2271588 (= c!1358127 (isEmpty!40860 (tail!14639 s!7362)))))

(declare-fun e!4379746 () Bool)

(assert (=> d!2271588 (= (matchZipper!3803 (derivationStepZipper!3631 z2!461 (head!15078 s!7362)) (tail!14639 s!7362)) e!4379746)))

(declare-fun b!7316111 () Bool)

(assert (=> b!7316111 (= e!4379746 (nullableZipper!3108 (derivationStepZipper!3631 z2!461 (head!15078 s!7362))))))

(declare-fun b!7316112 () Bool)

(assert (=> b!7316112 (= e!4379746 (matchZipper!3803 (derivationStepZipper!3631 (derivationStepZipper!3631 z2!461 (head!15078 s!7362)) (head!15078 (tail!14639 s!7362))) (tail!14639 (tail!14639 s!7362))))))

(assert (= (and d!2271588 c!1358127) b!7316111))

(assert (= (and d!2271588 (not c!1358127)) b!7316112))

(assert (=> d!2271588 m!7980044))

(assert (=> d!2271588 m!7980192))

(assert (=> b!7316111 m!7980042))

(declare-fun m!7980258 () Bool)

(assert (=> b!7316111 m!7980258))

(assert (=> b!7316112 m!7980044))

(assert (=> b!7316112 m!7980196))

(assert (=> b!7316112 m!7980042))

(assert (=> b!7316112 m!7980196))

(declare-fun m!7980260 () Bool)

(assert (=> b!7316112 m!7980260))

(assert (=> b!7316112 m!7980044))

(assert (=> b!7316112 m!7980200))

(assert (=> b!7316112 m!7980260))

(assert (=> b!7316112 m!7980200))

(declare-fun m!7980262 () Bool)

(assert (=> b!7316112 m!7980262))

(assert (=> b!7316016 d!2271588))

(declare-fun bs!1915028 () Bool)

(declare-fun d!2271590 () Bool)

(assert (= bs!1915028 (and d!2271590 d!2271462)))

(declare-fun lambda!452283 () Int)

(assert (=> bs!1915028 (= (= (head!15078 s!7362) (h!77601 s!7362)) (= lambda!452283 lambda!452253))))

(declare-fun bs!1915029 () Bool)

(assert (= bs!1915029 (and d!2271590 d!2271452)))

(assert (=> bs!1915029 (= (= (head!15078 s!7362) (h!77601 s!7362)) (= lambda!452283 lambda!452251))))

(declare-fun bs!1915030 () Bool)

(assert (= bs!1915030 (and d!2271590 d!2271540)))

(assert (=> bs!1915030 (= lambda!452283 lambda!452270)))

(declare-fun bs!1915031 () Bool)

(assert (= bs!1915031 (and d!2271590 d!2271562)))

(assert (=> bs!1915031 (= (= (head!15078 s!7362) (head!15078 (t!385509 s!7362))) (= lambda!452283 lambda!452275))))

(declare-fun bs!1915032 () Bool)

(assert (= bs!1915032 (and d!2271590 d!2271456)))

(assert (=> bs!1915032 (= (= (head!15078 s!7362) (h!77601 s!7362)) (= lambda!452283 lambda!452252))))

(declare-fun bs!1915033 () Bool)

(assert (= bs!1915033 (and d!2271590 d!2271582)))

(assert (=> bs!1915033 (= lambda!452283 lambda!452280)))

(declare-fun bs!1915034 () Bool)

(assert (= bs!1915034 (and d!2271590 d!2271578)))

(assert (=> bs!1915034 (= (= (head!15078 s!7362) (head!15078 (t!385509 s!7362))) (= lambda!452283 lambda!452279))))

(assert (=> d!2271590 true))

(assert (=> d!2271590 (= (derivationStepZipper!3631 z2!461 (head!15078 s!7362)) (flatMap!3049 z2!461 lambda!452283))))

(declare-fun bs!1915035 () Bool)

(assert (= bs!1915035 d!2271590))

(declare-fun m!7980264 () Bool)

(assert (=> bs!1915035 m!7980264))

(assert (=> b!7316016 d!2271590))

(assert (=> b!7316016 d!2271542))

(assert (=> b!7316016 d!2271544))

(declare-fun d!2271592 () Bool)

(declare-fun c!1358128 () Bool)

(assert (=> d!2271592 (= c!1358128 (isEmpty!40860 (tail!14639 (t!385509 s!7362))))))

(declare-fun e!4379747 () Bool)

(assert (=> d!2271592 (= (matchZipper!3803 (derivationStepZipper!3631 lt!2602092 (head!15078 (t!385509 s!7362))) (tail!14639 (t!385509 s!7362))) e!4379747)))

(declare-fun b!7316113 () Bool)

(assert (=> b!7316113 (= e!4379747 (nullableZipper!3108 (derivationStepZipper!3631 lt!2602092 (head!15078 (t!385509 s!7362)))))))

(declare-fun b!7316114 () Bool)

(assert (=> b!7316114 (= e!4379747 (matchZipper!3803 (derivationStepZipper!3631 (derivationStepZipper!3631 lt!2602092 (head!15078 (t!385509 s!7362))) (head!15078 (tail!14639 (t!385509 s!7362)))) (tail!14639 (tail!14639 (t!385509 s!7362)))))))

(assert (= (and d!2271592 c!1358128) b!7316113))

(assert (= (and d!2271592 (not c!1358128)) b!7316114))

(assert (=> d!2271592 m!7980032))

(assert (=> d!2271592 m!7980218))

(assert (=> b!7316113 m!7980060))

(declare-fun m!7980266 () Bool)

(assert (=> b!7316113 m!7980266))

(assert (=> b!7316114 m!7980032))

(assert (=> b!7316114 m!7980222))

(assert (=> b!7316114 m!7980060))

(assert (=> b!7316114 m!7980222))

(declare-fun m!7980268 () Bool)

(assert (=> b!7316114 m!7980268))

(assert (=> b!7316114 m!7980032))

(assert (=> b!7316114 m!7980226))

(assert (=> b!7316114 m!7980268))

(assert (=> b!7316114 m!7980226))

(declare-fun m!7980270 () Bool)

(assert (=> b!7316114 m!7980270))

(assert (=> b!7316022 d!2271592))

(declare-fun bs!1915036 () Bool)

(declare-fun d!2271594 () Bool)

(assert (= bs!1915036 (and d!2271594 d!2271462)))

(declare-fun lambda!452284 () Int)

(assert (=> bs!1915036 (= (= (head!15078 (t!385509 s!7362)) (h!77601 s!7362)) (= lambda!452284 lambda!452253))))

(declare-fun bs!1915037 () Bool)

(assert (= bs!1915037 (and d!2271594 d!2271452)))

(assert (=> bs!1915037 (= (= (head!15078 (t!385509 s!7362)) (h!77601 s!7362)) (= lambda!452284 lambda!452251))))

(declare-fun bs!1915038 () Bool)

(assert (= bs!1915038 (and d!2271594 d!2271540)))

(assert (=> bs!1915038 (= (= (head!15078 (t!385509 s!7362)) (head!15078 s!7362)) (= lambda!452284 lambda!452270))))

(declare-fun bs!1915039 () Bool)

(assert (= bs!1915039 (and d!2271594 d!2271562)))

(assert (=> bs!1915039 (= lambda!452284 lambda!452275)))

(declare-fun bs!1915040 () Bool)

(assert (= bs!1915040 (and d!2271594 d!2271456)))

(assert (=> bs!1915040 (= (= (head!15078 (t!385509 s!7362)) (h!77601 s!7362)) (= lambda!452284 lambda!452252))))

(declare-fun bs!1915041 () Bool)

(assert (= bs!1915041 (and d!2271594 d!2271590)))

(assert (=> bs!1915041 (= (= (head!15078 (t!385509 s!7362)) (head!15078 s!7362)) (= lambda!452284 lambda!452283))))

(declare-fun bs!1915042 () Bool)

(assert (= bs!1915042 (and d!2271594 d!2271582)))

(assert (=> bs!1915042 (= (= (head!15078 (t!385509 s!7362)) (head!15078 s!7362)) (= lambda!452284 lambda!452280))))

(declare-fun bs!1915043 () Bool)

(assert (= bs!1915043 (and d!2271594 d!2271578)))

(assert (=> bs!1915043 (= lambda!452284 lambda!452279)))

(assert (=> d!2271594 true))

(assert (=> d!2271594 (= (derivationStepZipper!3631 lt!2602092 (head!15078 (t!385509 s!7362))) (flatMap!3049 lt!2602092 lambda!452284))))

(declare-fun bs!1915044 () Bool)

(assert (= bs!1915044 d!2271594))

(declare-fun m!7980272 () Bool)

(assert (=> bs!1915044 m!7980272))

(assert (=> b!7316022 d!2271594))

(assert (=> b!7316022 d!2271564))

(assert (=> b!7316022 d!2271566))

(declare-fun bs!1915045 () Bool)

(declare-fun d!2271596 () Bool)

(assert (= bs!1915045 (and d!2271596 d!2271586)))

(declare-fun lambda!452285 () Int)

(assert (=> bs!1915045 (= lambda!452285 lambda!452282)))

(declare-fun bs!1915046 () Bool)

(assert (= bs!1915046 (and d!2271596 d!2271552)))

(assert (=> bs!1915046 (= lambda!452285 lambda!452273)))

(declare-fun bs!1915047 () Bool)

(assert (= bs!1915047 (and d!2271596 d!2271570)))

(assert (=> bs!1915047 (= lambda!452285 lambda!452277)))

(declare-fun bs!1915048 () Bool)

(assert (= bs!1915048 (and d!2271596 d!2271568)))

(assert (=> bs!1915048 (= lambda!452285 lambda!452276)))

(declare-fun bs!1915049 () Bool)

(assert (= bs!1915049 (and d!2271596 d!2271584)))

(assert (=> bs!1915049 (= lambda!452285 lambda!452281)))

(assert (=> d!2271596 (= (nullableZipper!3108 lt!2602095) (exists!4575 lt!2602095 lambda!452285))))

(declare-fun bs!1915050 () Bool)

(assert (= bs!1915050 d!2271596))

(declare-fun m!7980274 () Bool)

(assert (=> bs!1915050 m!7980274))

(assert (=> b!7316013 d!2271596))

(declare-fun d!2271598 () Bool)

(declare-fun res!2956330 () Bool)

(declare-fun e!4379748 () Bool)

(assert (=> d!2271598 (=> res!2956330 e!4379748)))

(assert (=> d!2271598 (= res!2956330 ((_ is Nil!71152) (exprs!8369 setElem!54497)))))

(assert (=> d!2271598 (= (forall!17770 (exprs!8369 setElem!54497) lambda!452247) e!4379748)))

(declare-fun b!7316115 () Bool)

(declare-fun e!4379749 () Bool)

(assert (=> b!7316115 (= e!4379748 e!4379749)))

(declare-fun res!2956331 () Bool)

(assert (=> b!7316115 (=> (not res!2956331) (not e!4379749))))

(assert (=> b!7316115 (= res!2956331 (dynLambda!29154 lambda!452247 (h!77600 (exprs!8369 setElem!54497))))))

(declare-fun b!7316116 () Bool)

(assert (=> b!7316116 (= e!4379749 (forall!17770 (t!385508 (exprs!8369 setElem!54497)) lambda!452247))))

(assert (= (and d!2271598 (not res!2956330)) b!7316115))

(assert (= (and b!7316115 res!2956331) b!7316116))

(declare-fun b_lambda!282545 () Bool)

(assert (=> (not b_lambda!282545) (not b!7316115)))

(declare-fun m!7980276 () Bool)

(assert (=> b!7316115 m!7980276))

(declare-fun m!7980278 () Bool)

(assert (=> b!7316116 m!7980278))

(assert (=> d!2271418 d!2271598))

(declare-fun d!2271600 () Bool)

(assert (=> d!2271600 (= (flatMap!3049 z2!461 lambda!452252) (choose!56739 z2!461 lambda!452252))))

(declare-fun bs!1915051 () Bool)

(assert (= bs!1915051 d!2271600))

(declare-fun m!7980280 () Bool)

(assert (=> bs!1915051 m!7980280))

(assert (=> d!2271456 d!2271600))

(assert (=> d!2271466 d!2271558))

(declare-fun d!2271602 () Bool)

(assert (=> d!2271602 (= (flatMap!3049 lt!2602091 lambda!452253) (choose!56739 lt!2602091 lambda!452253))))

(declare-fun bs!1915052 () Bool)

(assert (= bs!1915052 d!2271602))

(declare-fun m!7980282 () Bool)

(assert (=> bs!1915052 m!7980282))

(assert (=> d!2271462 d!2271602))

(assert (=> d!2271444 d!2271556))

(declare-fun d!2271604 () Bool)

(declare-fun c!1358129 () Bool)

(assert (=> d!2271604 (= c!1358129 (isEmpty!40860 (t!385509 s!7362)))))

(declare-fun e!4379750 () Bool)

(assert (=> d!2271604 (= (matchZipper!3803 ((_ map or) lt!2602093 lt!2602095) (t!385509 s!7362)) e!4379750)))

(declare-fun b!7316117 () Bool)

(assert (=> b!7316117 (= e!4379750 (nullableZipper!3108 ((_ map or) lt!2602093 lt!2602095)))))

(declare-fun b!7316118 () Bool)

(assert (=> b!7316118 (= e!4379750 (matchZipper!3803 (derivationStepZipper!3631 ((_ map or) lt!2602093 lt!2602095) (head!15078 (t!385509 s!7362))) (tail!14639 (t!385509 s!7362))))))

(assert (= (and d!2271604 c!1358129) b!7316117))

(assert (= (and d!2271604 (not c!1358129)) b!7316118))

(assert (=> d!2271604 m!7980024))

(declare-fun m!7980284 () Bool)

(assert (=> b!7316117 m!7980284))

(assert (=> b!7316118 m!7980028))

(assert (=> b!7316118 m!7980028))

(declare-fun m!7980286 () Bool)

(assert (=> b!7316118 m!7980286))

(assert (=> b!7316118 m!7980032))

(assert (=> b!7316118 m!7980286))

(assert (=> b!7316118 m!7980032))

(declare-fun m!7980288 () Bool)

(assert (=> b!7316118 m!7980288))

(assert (=> d!2271460 d!2271604))

(assert (=> d!2271460 d!2271458))

(declare-fun d!2271606 () Bool)

(declare-fun e!4379753 () Bool)

(assert (=> d!2271606 (= (matchZipper!3803 ((_ map or) lt!2602093 lt!2602095) (t!385509 s!7362)) e!4379753)))

(declare-fun res!2956334 () Bool)

(assert (=> d!2271606 (=> res!2956334 e!4379753)))

(assert (=> d!2271606 (= res!2956334 (matchZipper!3803 lt!2602093 (t!385509 s!7362)))))

(assert (=> d!2271606 true))

(declare-fun _$48!2579 () Unit!164615)

(assert (=> d!2271606 (= (choose!56736 lt!2602093 lt!2602095 (t!385509 s!7362)) _$48!2579)))

(declare-fun b!7316121 () Bool)

(assert (=> b!7316121 (= e!4379753 (matchZipper!3803 lt!2602095 (t!385509 s!7362)))))

(assert (= (and d!2271606 (not res!2956334)) b!7316121))

(assert (=> d!2271606 m!7980072))

(assert (=> d!2271606 m!7979934))

(assert (=> b!7316121 m!7979928))

(assert (=> d!2271460 d!2271606))

(declare-fun b!7316122 () Bool)

(declare-fun e!4379754 () Bool)

(declare-fun tp!2076823 () Bool)

(assert (=> b!7316122 (= e!4379754 (and tp_is_empty!47603 tp!2076823))))

(assert (=> b!7316039 (= tp!2076779 e!4379754)))

(assert (= (and b!7316039 ((_ is Cons!71153) (t!385509 (t!385509 s!7362)))) b!7316122))

(declare-fun b!7316123 () Bool)

(declare-fun e!4379755 () Bool)

(declare-fun tp!2076824 () Bool)

(declare-fun tp!2076825 () Bool)

(assert (=> b!7316123 (= e!4379755 (and tp!2076824 tp!2076825))))

(assert (=> b!7316034 (= tp!2076776 e!4379755)))

(assert (= (and b!7316034 ((_ is Cons!71152) (exprs!8369 setElem!54504))) b!7316123))

(declare-fun b!7316124 () Bool)

(declare-fun e!4379756 () Bool)

(declare-fun tp!2076826 () Bool)

(declare-fun tp!2076827 () Bool)

(assert (=> b!7316124 (= e!4379756 (and tp!2076826 tp!2076827))))

(assert (=> b!7316040 (= tp!2076781 e!4379756)))

(assert (= (and b!7316040 ((_ is Cons!71152) (exprs!8369 setElem!54505))) b!7316124))

(declare-fun e!4379759 () Bool)

(assert (=> b!7316046 (= tp!2076788 e!4379759)))

(declare-fun b!7316137 () Bool)

(declare-fun tp!2076838 () Bool)

(assert (=> b!7316137 (= e!4379759 tp!2076838)))

(declare-fun b!7316135 () Bool)

(assert (=> b!7316135 (= e!4379759 tp_is_empty!47603)))

(declare-fun b!7316138 () Bool)

(declare-fun tp!2076842 () Bool)

(declare-fun tp!2076840 () Bool)

(assert (=> b!7316138 (= e!4379759 (and tp!2076842 tp!2076840))))

(declare-fun b!7316136 () Bool)

(declare-fun tp!2076839 () Bool)

(declare-fun tp!2076841 () Bool)

(assert (=> b!7316136 (= e!4379759 (and tp!2076839 tp!2076841))))

(assert (= (and b!7316046 ((_ is ElementMatch!18929) (h!77600 (exprs!8369 setElem!54497)))) b!7316135))

(assert (= (and b!7316046 ((_ is Concat!27774) (h!77600 (exprs!8369 setElem!54497)))) b!7316136))

(assert (= (and b!7316046 ((_ is Star!18929) (h!77600 (exprs!8369 setElem!54497)))) b!7316137))

(assert (= (and b!7316046 ((_ is Union!18929) (h!77600 (exprs!8369 setElem!54497)))) b!7316138))

(declare-fun b!7316139 () Bool)

(declare-fun e!4379760 () Bool)

(declare-fun tp!2076843 () Bool)

(declare-fun tp!2076844 () Bool)

(assert (=> b!7316139 (= e!4379760 (and tp!2076843 tp!2076844))))

(assert (=> b!7316046 (= tp!2076789 e!4379760)))

(assert (= (and b!7316046 ((_ is Cons!71152) (t!385508 (exprs!8369 setElem!54497)))) b!7316139))

(declare-fun condSetEmpty!54508 () Bool)

(assert (=> setNonEmpty!54505 (= condSetEmpty!54508 (= setRest!54505 ((as const (Array Context!15738 Bool)) false)))))

(declare-fun setRes!54508 () Bool)

(assert (=> setNonEmpty!54505 (= tp!2076780 setRes!54508)))

(declare-fun setIsEmpty!54508 () Bool)

(assert (=> setIsEmpty!54508 setRes!54508))

(declare-fun setNonEmpty!54508 () Bool)

(declare-fun tp!2076845 () Bool)

(declare-fun e!4379761 () Bool)

(declare-fun setElem!54508 () Context!15738)

(assert (=> setNonEmpty!54508 (= setRes!54508 (and tp!2076845 (inv!90443 setElem!54508) e!4379761))))

(declare-fun setRest!54508 () (InoxSet Context!15738))

(assert (=> setNonEmpty!54508 (= setRest!54505 ((_ map or) (store ((as const (Array Context!15738 Bool)) false) setElem!54508 true) setRest!54508))))

(declare-fun b!7316140 () Bool)

(declare-fun tp!2076846 () Bool)

(assert (=> b!7316140 (= e!4379761 tp!2076846)))

(assert (= (and setNonEmpty!54505 condSetEmpty!54508) setIsEmpty!54508))

(assert (= (and setNonEmpty!54505 (not condSetEmpty!54508)) setNonEmpty!54508))

(assert (= setNonEmpty!54508 b!7316140))

(declare-fun m!7980290 () Bool)

(assert (=> setNonEmpty!54508 m!7980290))

(declare-fun condSetEmpty!54509 () Bool)

(assert (=> setNonEmpty!54504 (= condSetEmpty!54509 (= setRest!54504 ((as const (Array Context!15738 Bool)) false)))))

(declare-fun setRes!54509 () Bool)

(assert (=> setNonEmpty!54504 (= tp!2076775 setRes!54509)))

(declare-fun setIsEmpty!54509 () Bool)

(assert (=> setIsEmpty!54509 setRes!54509))

(declare-fun e!4379762 () Bool)

(declare-fun setElem!54509 () Context!15738)

(declare-fun tp!2076847 () Bool)

(declare-fun setNonEmpty!54509 () Bool)

(assert (=> setNonEmpty!54509 (= setRes!54509 (and tp!2076847 (inv!90443 setElem!54509) e!4379762))))

(declare-fun setRest!54509 () (InoxSet Context!15738))

(assert (=> setNonEmpty!54509 (= setRest!54504 ((_ map or) (store ((as const (Array Context!15738 Bool)) false) setElem!54509 true) setRest!54509))))

(declare-fun b!7316141 () Bool)

(declare-fun tp!2076848 () Bool)

(assert (=> b!7316141 (= e!4379762 tp!2076848)))

(assert (= (and setNonEmpty!54504 condSetEmpty!54509) setIsEmpty!54509))

(assert (= (and setNonEmpty!54504 (not condSetEmpty!54509)) setNonEmpty!54509))

(assert (= setNonEmpty!54509 b!7316141))

(declare-fun m!7980292 () Bool)

(assert (=> setNonEmpty!54509 m!7980292))

(declare-fun e!4379763 () Bool)

(assert (=> b!7316045 (= tp!2076786 e!4379763)))

(declare-fun b!7316144 () Bool)

(declare-fun tp!2076849 () Bool)

(assert (=> b!7316144 (= e!4379763 tp!2076849)))

(declare-fun b!7316142 () Bool)

(assert (=> b!7316142 (= e!4379763 tp_is_empty!47603)))

(declare-fun b!7316145 () Bool)

(declare-fun tp!2076853 () Bool)

(declare-fun tp!2076851 () Bool)

(assert (=> b!7316145 (= e!4379763 (and tp!2076853 tp!2076851))))

(declare-fun b!7316143 () Bool)

(declare-fun tp!2076850 () Bool)

(declare-fun tp!2076852 () Bool)

(assert (=> b!7316143 (= e!4379763 (and tp!2076850 tp!2076852))))

(assert (= (and b!7316045 ((_ is ElementMatch!18929) (h!77600 (exprs!8369 setElem!54496)))) b!7316142))

(assert (= (and b!7316045 ((_ is Concat!27774) (h!77600 (exprs!8369 setElem!54496)))) b!7316143))

(assert (= (and b!7316045 ((_ is Star!18929) (h!77600 (exprs!8369 setElem!54496)))) b!7316144))

(assert (= (and b!7316045 ((_ is Union!18929) (h!77600 (exprs!8369 setElem!54496)))) b!7316145))

(declare-fun b!7316146 () Bool)

(declare-fun e!4379764 () Bool)

(declare-fun tp!2076854 () Bool)

(declare-fun tp!2076855 () Bool)

(assert (=> b!7316146 (= e!4379764 (and tp!2076854 tp!2076855))))

(assert (=> b!7316045 (= tp!2076787 e!4379764)))

(assert (= (and b!7316045 ((_ is Cons!71152) (t!385508 (exprs!8369 setElem!54496)))) b!7316146))

(declare-fun b_lambda!282547 () Bool)

(assert (= b_lambda!282539 (or d!2271448 b_lambda!282547)))

(declare-fun bs!1915053 () Bool)

(declare-fun d!2271608 () Bool)

(assert (= bs!1915053 (and d!2271608 d!2271448)))

(declare-fun validRegex!9612 (Regex!18929) Bool)

(assert (=> bs!1915053 (= (dynLambda!29154 lambda!452248 (h!77600 (exprs!8369 setElem!54496))) (validRegex!9612 (h!77600 (exprs!8369 setElem!54496))))))

(declare-fun m!7980294 () Bool)

(assert (=> bs!1915053 m!7980294))

(assert (=> b!7316077 d!2271608))

(declare-fun b_lambda!282549 () Bool)

(assert (= b_lambda!282545 (or d!2271418 b_lambda!282549)))

(declare-fun bs!1915054 () Bool)

(declare-fun d!2271610 () Bool)

(assert (= bs!1915054 (and d!2271610 d!2271418)))

(assert (=> bs!1915054 (= (dynLambda!29154 lambda!452247 (h!77600 (exprs!8369 setElem!54497))) (validRegex!9612 (h!77600 (exprs!8369 setElem!54497))))))

(declare-fun m!7980296 () Bool)

(assert (=> bs!1915054 m!7980296))

(assert (=> b!7316115 d!2271610))

(check-sat (not setNonEmpty!54509) (not b!7316106) (not b!7316124) (not d!2271582) (not d!2271592) (not d!2271560) (not b!7316105) (not d!2271568) (not b!7316139) (not b!7316138) (not b!7316112) (not b!7316140) (not b!7316121) (not b!7316116) (not d!2271584) (not b!7316110) (not b!7316086) (not d!2271552) (not d!2271546) (not b!7316123) (not d!2271600) (not d!2271540) (not b!7316144) (not b!7316141) (not b!7316118) (not b!7316087) (not d!2271576) (not d!2271574) (not b!7316145) (not d!2271596) (not d!2271538) (not d!2271588) (not d!2271606) (not setNonEmpty!54508) (not b!7316108) (not b!7316078) (not d!2271570) (not d!2271586) (not b!7316117) (not d!2271590) (not d!2271580) (not b_lambda!282549) (not b!7316122) (not b!7316136) (not b!7316137) (not d!2271572) (not bs!1915054) tp_is_empty!47603 (not d!2271604) (not b!7316114) (not b!7316107) (not d!2271554) (not b!7316143) (not b!7316113) (not d!2271594) (not d!2271602) (not b_lambda!282547) (not d!2271578) (not bs!1915053) (not b!7316111) (not b!7316146) (not d!2271562) (not b!7316109))
(check-sat)
