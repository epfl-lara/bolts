; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!624590 () Bool)

(assert start!624590)

(declare-fun b!6284148 () Bool)

(assert (=> b!6284148 true))

(assert (=> b!6284148 true))

(declare-fun lambda!344812 () Int)

(declare-fun lambda!344811 () Int)

(assert (=> b!6284148 (not (= lambda!344812 lambda!344811))))

(assert (=> b!6284148 true))

(assert (=> b!6284148 true))

(declare-fun b!6284137 () Bool)

(assert (=> b!6284137 true))

(declare-fun bs!1570813 () Bool)

(declare-fun b!6284147 () Bool)

(assert (= bs!1570813 (and b!6284147 b!6284148)))

(declare-datatypes ((C!32680 0))(
  ( (C!32681 (val!26042 Int)) )
))
(declare-datatypes ((Regex!16205 0))(
  ( (ElementMatch!16205 (c!1139836 C!32680)) (Concat!25050 (regOne!32922 Regex!16205) (regTwo!32922 Regex!16205)) (EmptyExpr!16205) (Star!16205 (reg!16534 Regex!16205)) (EmptyLang!16205) (Union!16205 (regOne!32923 Regex!16205) (regTwo!32923 Regex!16205)) )
))
(declare-fun lt!2355217 () Regex!16205)

(declare-fun r!7292 () Regex!16205)

(declare-fun lambda!344814 () Int)

(assert (=> bs!1570813 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344814 lambda!344811))))

(assert (=> bs!1570813 (not (= lambda!344814 lambda!344812))))

(assert (=> b!6284147 true))

(assert (=> b!6284147 true))

(assert (=> b!6284147 true))

(declare-fun lambda!344815 () Int)

(assert (=> bs!1570813 (not (= lambda!344815 lambda!344811))))

(assert (=> bs!1570813 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344815 lambda!344812))))

(assert (=> b!6284147 (not (= lambda!344815 lambda!344814))))

(assert (=> b!6284147 true))

(assert (=> b!6284147 true))

(assert (=> b!6284147 true))

(declare-fun b!6284127 () Bool)

(declare-fun e!3821473 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!64914 0))(
  ( (Nil!64790) (Cons!64790 (h!71238 Regex!16205) (t!378476 List!64914)) )
))
(declare-datatypes ((Context!11178 0))(
  ( (Context!11179 (exprs!6089 List!64914)) )
))
(declare-fun lt!2355231 () (InoxSet Context!11178))

(declare-datatypes ((List!64915 0))(
  ( (Nil!64791) (Cons!64791 (h!71239 C!32680) (t!378477 List!64915)) )
))
(declare-fun s!2326 () List!64915)

(declare-fun matchZipper!2217 ((InoxSet Context!11178) List!64915) Bool)

(assert (=> b!6284127 (= e!3821473 (not (matchZipper!2217 lt!2355231 (t!378477 s!2326))))))

(declare-fun b!6284128 () Bool)

(declare-fun e!3821460 () Bool)

(declare-fun e!3821469 () Bool)

(assert (=> b!6284128 (= e!3821460 e!3821469)))

(declare-fun res!2591666 () Bool)

(assert (=> b!6284128 (=> res!2591666 e!3821469)))

(assert (=> b!6284128 (= res!2591666 e!3821473)))

(declare-fun res!2591669 () Bool)

(assert (=> b!6284128 (=> (not res!2591669) (not e!3821473))))

(declare-fun lt!2355247 () Bool)

(declare-fun lt!2355229 () Bool)

(assert (=> b!6284128 (= res!2591669 (not (= lt!2355247 lt!2355229)))))

(declare-fun lt!2355242 () (InoxSet Context!11178))

(assert (=> b!6284128 (= lt!2355247 (matchZipper!2217 lt!2355242 (t!378477 s!2326)))))

(declare-fun lt!2355238 () (InoxSet Context!11178))

(declare-fun e!3821477 () Bool)

(assert (=> b!6284128 (= (matchZipper!2217 lt!2355238 (t!378477 s!2326)) e!3821477)))

(declare-fun res!2591663 () Bool)

(assert (=> b!6284128 (=> res!2591663 e!3821477)))

(assert (=> b!6284128 (= res!2591663 lt!2355229)))

(declare-fun lt!2355218 () (InoxSet Context!11178))

(assert (=> b!6284128 (= lt!2355229 (matchZipper!2217 lt!2355218 (t!378477 s!2326)))))

(declare-datatypes ((Unit!158151 0))(
  ( (Unit!158152) )
))
(declare-fun lt!2355246 () Unit!158151)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1036 ((InoxSet Context!11178) (InoxSet Context!11178) List!64915) Unit!158151)

(assert (=> b!6284128 (= lt!2355246 (lemmaZipperConcatMatchesSameAsBothZippers!1036 lt!2355218 lt!2355231 (t!378477 s!2326)))))

(declare-fun b!6284129 () Bool)

(declare-fun res!2591679 () Bool)

(declare-fun e!3821475 () Bool)

(assert (=> b!6284129 (=> res!2591679 e!3821475)))

(get-info :version)

(assert (=> b!6284129 (= res!2591679 (or ((_ is EmptyExpr!16205) r!7292) ((_ is EmptyLang!16205) r!7292) ((_ is ElementMatch!16205) r!7292) ((_ is Union!16205) r!7292) (not ((_ is Concat!25050) r!7292))))))

(declare-fun e!3821465 () Bool)

(declare-fun tp!1750973 () Bool)

(declare-fun e!3821459 () Bool)

(declare-datatypes ((List!64916 0))(
  ( (Nil!64792) (Cons!64792 (h!71240 Context!11178) (t!378478 List!64916)) )
))
(declare-fun zl!343 () List!64916)

(declare-fun b!6284130 () Bool)

(declare-fun inv!83759 (Context!11178) Bool)

(assert (=> b!6284130 (= e!3821459 (and (inv!83759 (h!71240 zl!343)) e!3821465 tp!1750973))))

(declare-fun b!6284131 () Bool)

(declare-fun e!3821476 () Bool)

(declare-fun tp!1750971 () Bool)

(assert (=> b!6284131 (= e!3821476 tp!1750971)))

(declare-fun b!6284132 () Bool)

(declare-fun e!3821470 () Bool)

(declare-fun lt!2355240 () (InoxSet Context!11178))

(declare-fun derivationStepZipper!2171 ((InoxSet Context!11178) C!32680) (InoxSet Context!11178))

(assert (=> b!6284132 (= e!3821470 (not (matchZipper!2217 (derivationStepZipper!2171 lt!2355240 (h!71239 s!2326)) (t!378477 s!2326))))))

(declare-fun b!6284133 () Bool)

(declare-fun res!2591673 () Bool)

(declare-fun e!3821472 () Bool)

(assert (=> b!6284133 (=> res!2591673 e!3821472)))

(declare-fun isEmpty!36837 (List!64914) Bool)

(assert (=> b!6284133 (= res!2591673 (isEmpty!36837 (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6284134 () Bool)

(declare-fun e!3821462 () Bool)

(assert (=> b!6284134 (= e!3821462 (not e!3821475))))

(declare-fun res!2591677 () Bool)

(assert (=> b!6284134 (=> res!2591677 e!3821475)))

(assert (=> b!6284134 (= res!2591677 (not ((_ is Cons!64792) zl!343)))))

(declare-fun lt!2355233 () Bool)

(declare-fun matchRSpec!3306 (Regex!16205 List!64915) Bool)

(assert (=> b!6284134 (= lt!2355233 (matchRSpec!3306 r!7292 s!2326))))

(declare-fun matchR!8388 (Regex!16205 List!64915) Bool)

(assert (=> b!6284134 (= lt!2355233 (matchR!8388 r!7292 s!2326))))

(declare-fun lt!2355236 () Unit!158151)

(declare-fun mainMatchTheorem!3306 (Regex!16205 List!64915) Unit!158151)

(assert (=> b!6284134 (= lt!2355236 (mainMatchTheorem!3306 r!7292 s!2326))))

(declare-fun b!6284135 () Bool)

(declare-fun res!2591671 () Bool)

(assert (=> b!6284135 (=> res!2591671 e!3821475)))

(assert (=> b!6284135 (= res!2591671 (not ((_ is Cons!64790) (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6284136 () Bool)

(declare-fun e!3821464 () Bool)

(declare-fun lt!2355232 () (InoxSet Context!11178))

(assert (=> b!6284136 (= e!3821464 (matchZipper!2217 lt!2355232 (t!378477 s!2326)))))

(declare-fun e!3821467 () Bool)

(assert (=> b!6284137 (= e!3821472 e!3821467)))

(declare-fun res!2591682 () Bool)

(assert (=> b!6284137 (=> res!2591682 e!3821467)))

(assert (=> b!6284137 (= res!2591682 (or (and ((_ is ElementMatch!16205) (regOne!32922 r!7292)) (= (c!1139836 (regOne!32922 r!7292)) (h!71239 s!2326))) ((_ is Union!16205) (regOne!32922 r!7292)) (not ((_ is Concat!25050) (regOne!32922 r!7292)))))))

(declare-fun lt!2355215 () Unit!158151)

(declare-fun e!3821463 () Unit!158151)

(assert (=> b!6284137 (= lt!2355215 e!3821463)))

(declare-fun c!1139835 () Bool)

(declare-fun nullable!6198 (Regex!16205) Bool)

(assert (=> b!6284137 (= c!1139835 (nullable!6198 (h!71238 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11178))

(declare-fun lambda!344813 () Int)

(declare-fun flatMap!1710 ((InoxSet Context!11178) Int) (InoxSet Context!11178))

(declare-fun derivationStepZipperUp!1379 (Context!11178 C!32680) (InoxSet Context!11178))

(assert (=> b!6284137 (= (flatMap!1710 z!1189 lambda!344813) (derivationStepZipperUp!1379 (h!71240 zl!343) (h!71239 s!2326)))))

(declare-fun lt!2355235 () Unit!158151)

(declare-fun lemmaFlatMapOnSingletonSet!1236 ((InoxSet Context!11178) Context!11178 Int) Unit!158151)

(assert (=> b!6284137 (= lt!2355235 (lemmaFlatMapOnSingletonSet!1236 z!1189 (h!71240 zl!343) lambda!344813))))

(declare-fun lt!2355228 () Context!11178)

(assert (=> b!6284137 (= lt!2355232 (derivationStepZipperUp!1379 lt!2355228 (h!71239 s!2326)))))

(declare-fun derivationStepZipperDown!1453 (Regex!16205 Context!11178 C!32680) (InoxSet Context!11178))

(assert (=> b!6284137 (= lt!2355242 (derivationStepZipperDown!1453 (h!71238 (exprs!6089 (h!71240 zl!343))) lt!2355228 (h!71239 s!2326)))))

(assert (=> b!6284137 (= lt!2355228 (Context!11179 (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun lt!2355214 () (InoxSet Context!11178))

(assert (=> b!6284137 (= lt!2355214 (derivationStepZipperUp!1379 (Context!11179 (Cons!64790 (h!71238 (exprs!6089 (h!71240 zl!343))) (t!378476 (exprs!6089 (h!71240 zl!343))))) (h!71239 s!2326)))))

(declare-fun b!6284138 () Bool)

(declare-fun e!3821466 () Bool)

(declare-fun lt!2355243 () (InoxSet Context!11178))

(assert (=> b!6284138 (= e!3821466 (matchZipper!2217 lt!2355243 (t!378477 s!2326)))))

(declare-fun b!6284140 () Bool)

(declare-fun tp_is_empty!41663 () Bool)

(assert (=> b!6284140 (= e!3821476 tp_is_empty!41663)))

(declare-fun b!6284141 () Bool)

(declare-fun tp!1750976 () Bool)

(declare-fun tp!1750974 () Bool)

(assert (=> b!6284141 (= e!3821476 (and tp!1750976 tp!1750974))))

(declare-fun b!6284142 () Bool)

(declare-fun Unit!158153 () Unit!158151)

(assert (=> b!6284142 (= e!3821463 Unit!158153)))

(declare-fun lt!2355210 () Unit!158151)

(assert (=> b!6284142 (= lt!2355210 (lemmaZipperConcatMatchesSameAsBothZippers!1036 lt!2355242 lt!2355232 (t!378477 s!2326)))))

(declare-fun res!2591661 () Bool)

(assert (=> b!6284142 (= res!2591661 (matchZipper!2217 lt!2355242 (t!378477 s!2326)))))

(assert (=> b!6284142 (=> res!2591661 e!3821464)))

(assert (=> b!6284142 (= (matchZipper!2217 ((_ map or) lt!2355242 lt!2355232) (t!378477 s!2326)) e!3821464)))

(declare-fun b!6284143 () Bool)

(declare-fun e!3821471 () Bool)

(declare-fun tp!1750969 () Bool)

(assert (=> b!6284143 (= e!3821471 (and tp_is_empty!41663 tp!1750969))))

(declare-fun b!6284144 () Bool)

(declare-fun e!3821461 () Bool)

(declare-fun lt!2355222 () Regex!16205)

(declare-fun validRegex!7941 (Regex!16205) Bool)

(assert (=> b!6284144 (= e!3821461 (validRegex!7941 lt!2355222))))

(declare-fun b!6284145 () Bool)

(declare-fun tp!1750975 () Bool)

(declare-fun tp!1750977 () Bool)

(assert (=> b!6284145 (= e!3821476 (and tp!1750975 tp!1750977))))

(declare-fun b!6284146 () Bool)

(declare-fun e!3821468 () Bool)

(declare-fun e!3821474 () Bool)

(assert (=> b!6284146 (= e!3821468 e!3821474)))

(declare-fun res!2591676 () Bool)

(assert (=> b!6284146 (=> res!2591676 e!3821474)))

(declare-fun lt!2355223 () List!64916)

(declare-fun zipperDepthTotal!358 (List!64916) Int)

(assert (=> b!6284146 (= res!2591676 (>= (zipperDepthTotal!358 lt!2355223) (zipperDepthTotal!358 zl!343)))))

(declare-fun lt!2355250 () Context!11178)

(assert (=> b!6284146 (= lt!2355223 (Cons!64792 lt!2355250 Nil!64792))))

(assert (=> b!6284147 (= e!3821474 e!3821461)))

(declare-fun res!2591662 () Bool)

(assert (=> b!6284147 (=> res!2591662 e!3821461)))

(assert (=> b!6284147 (= res!2591662 (not (validRegex!7941 (regTwo!32922 (regOne!32922 r!7292)))))))

(declare-fun generalisedConcat!1802 (List!64914) Regex!16205)

(assert (=> b!6284147 (= lt!2355222 (generalisedConcat!1802 (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun lt!2355220 () Bool)

(assert (=> b!6284147 (= lt!2355220 (matchRSpec!3306 lt!2355217 s!2326))))

(declare-fun lt!2355244 () Unit!158151)

(assert (=> b!6284147 (= lt!2355244 (mainMatchTheorem!3306 lt!2355217 s!2326))))

(declare-fun Exists!3275 (Int) Bool)

(assert (=> b!6284147 (= (Exists!3275 lambda!344814) (Exists!3275 lambda!344815))))

(declare-fun lt!2355219 () Unit!158151)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1812 (Regex!16205 Regex!16205 List!64915) Unit!158151)

(assert (=> b!6284147 (= lt!2355219 (lemmaExistCutMatchRandMatchRSpecEquivalent!1812 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 s!2326))))

(declare-datatypes ((tuple2!66368 0))(
  ( (tuple2!66369 (_1!36487 List!64915) (_2!36487 List!64915)) )
))
(declare-datatypes ((Option!16096 0))(
  ( (None!16095) (Some!16095 (v!52250 tuple2!66368)) )
))
(declare-fun isDefined!12799 (Option!16096) Bool)

(declare-fun findConcatSeparation!2510 (Regex!16205 Regex!16205 List!64915 List!64915 List!64915) Option!16096)

(assert (=> b!6284147 (= (isDefined!12799 (findConcatSeparation!2510 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 Nil!64791 s!2326 s!2326)) (Exists!3275 lambda!344814))))

(declare-fun lt!2355212 () Unit!158151)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2274 (Regex!16205 Regex!16205 List!64915) Unit!158151)

(assert (=> b!6284147 (= lt!2355212 (lemmaFindConcatSeparationEquivalentToExists!2274 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 s!2326))))

(declare-fun lt!2355227 () Bool)

(declare-fun lt!2355226 () Regex!16205)

(assert (=> b!6284147 (= lt!2355227 (matchRSpec!3306 lt!2355226 s!2326))))

(declare-fun lt!2355209 () Unit!158151)

(assert (=> b!6284147 (= lt!2355209 (mainMatchTheorem!3306 lt!2355226 s!2326))))

(assert (=> b!6284147 (= lt!2355220 (matchZipper!2217 lt!2355240 s!2326))))

(assert (=> b!6284147 (= lt!2355220 (matchR!8388 lt!2355217 s!2326))))

(declare-fun lt!2355213 () Context!11178)

(declare-fun lt!2355239 () Unit!158151)

(declare-fun theoremZipperRegexEquiv!775 ((InoxSet Context!11178) List!64916 Regex!16205 List!64915) Unit!158151)

(assert (=> b!6284147 (= lt!2355239 (theoremZipperRegexEquiv!775 lt!2355240 (Cons!64792 lt!2355213 Nil!64792) lt!2355217 s!2326))))

(declare-fun lt!2355211 () List!64914)

(assert (=> b!6284147 (= lt!2355217 (generalisedConcat!1802 lt!2355211))))

(declare-fun lt!2355224 () (InoxSet Context!11178))

(assert (=> b!6284147 (= lt!2355227 (matchZipper!2217 lt!2355224 s!2326))))

(assert (=> b!6284147 (= lt!2355227 (matchR!8388 lt!2355226 s!2326))))

(declare-fun lt!2355216 () Unit!158151)

(assert (=> b!6284147 (= lt!2355216 (theoremZipperRegexEquiv!775 lt!2355224 lt!2355223 lt!2355226 s!2326))))

(declare-fun lt!2355241 () List!64914)

(assert (=> b!6284147 (= lt!2355226 (generalisedConcat!1802 lt!2355241))))

(assert (=> b!6284148 (= e!3821475 e!3821472)))

(declare-fun res!2591660 () Bool)

(assert (=> b!6284148 (=> res!2591660 e!3821472)))

(declare-fun lt!2355234 () Bool)

(assert (=> b!6284148 (= res!2591660 (or (not (= lt!2355233 lt!2355234)) ((_ is Nil!64791) s!2326)))))

(assert (=> b!6284148 (= (Exists!3275 lambda!344811) (Exists!3275 lambda!344812))))

(declare-fun lt!2355237 () Unit!158151)

(assert (=> b!6284148 (= lt!2355237 (lemmaExistCutMatchRandMatchRSpecEquivalent!1812 (regOne!32922 r!7292) (regTwo!32922 r!7292) s!2326))))

(assert (=> b!6284148 (= lt!2355234 (Exists!3275 lambda!344811))))

(assert (=> b!6284148 (= lt!2355234 (isDefined!12799 (findConcatSeparation!2510 (regOne!32922 r!7292) (regTwo!32922 r!7292) Nil!64791 s!2326 s!2326)))))

(declare-fun lt!2355208 () Unit!158151)

(assert (=> b!6284148 (= lt!2355208 (lemmaFindConcatSeparationEquivalentToExists!2274 (regOne!32922 r!7292) (regTwo!32922 r!7292) s!2326))))

(declare-fun b!6284149 () Bool)

(declare-fun res!2591680 () Bool)

(assert (=> b!6284149 (=> res!2591680 e!3821474)))

(declare-fun zipperDepth!330 (List!64916) Int)

(assert (=> b!6284149 (= res!2591680 (> (zipperDepth!330 lt!2355223) (zipperDepth!330 zl!343)))))

(declare-fun b!6284150 () Bool)

(declare-fun e!3821458 () Bool)

(declare-fun tp!1750972 () Bool)

(assert (=> b!6284150 (= e!3821458 tp!1750972)))

(declare-fun b!6284151 () Bool)

(assert (=> b!6284151 (= e!3821467 e!3821460)))

(declare-fun res!2591674 () Bool)

(assert (=> b!6284151 (=> res!2591674 e!3821460)))

(assert (=> b!6284151 (= res!2591674 (not (= lt!2355242 lt!2355238)))))

(assert (=> b!6284151 (= lt!2355238 ((_ map or) lt!2355218 lt!2355231))))

(assert (=> b!6284151 (= lt!2355231 (derivationStepZipperDown!1453 (regTwo!32922 (regOne!32922 r!7292)) lt!2355228 (h!71239 s!2326)))))

(assert (=> b!6284151 (= lt!2355218 (derivationStepZipperDown!1453 (regOne!32922 (regOne!32922 r!7292)) lt!2355213 (h!71239 s!2326)))))

(assert (=> b!6284151 (= lt!2355213 (Context!11179 lt!2355211))))

(assert (=> b!6284151 (= lt!2355211 (Cons!64790 (regTwo!32922 (regOne!32922 r!7292)) (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6284152 () Bool)

(declare-fun Unit!158154 () Unit!158151)

(assert (=> b!6284152 (= e!3821463 Unit!158154)))

(declare-fun b!6284153 () Bool)

(declare-fun res!2591657 () Bool)

(assert (=> b!6284153 (=> res!2591657 e!3821468)))

(declare-fun contextDepthTotal!328 (Context!11178) Int)

(assert (=> b!6284153 (= res!2591657 (>= (contextDepthTotal!328 lt!2355250) (contextDepthTotal!328 (h!71240 zl!343))))))

(declare-fun b!6284154 () Bool)

(declare-fun res!2591681 () Bool)

(assert (=> b!6284154 (=> (not res!2591681) (not e!3821462))))

(declare-fun toList!9989 ((InoxSet Context!11178)) List!64916)

(assert (=> b!6284154 (= res!2591681 (= (toList!9989 z!1189) zl!343))))

(declare-fun b!6284155 () Bool)

(declare-fun res!2591668 () Bool)

(assert (=> b!6284155 (=> res!2591668 e!3821475)))

(declare-fun isEmpty!36838 (List!64916) Bool)

(assert (=> b!6284155 (= res!2591668 (not (isEmpty!36838 (t!378478 zl!343))))))

(declare-fun b!6284156 () Bool)

(declare-fun res!2591664 () Bool)

(assert (=> b!6284156 (=> (not res!2591664) (not e!3821462))))

(declare-fun unfocusZipper!1947 (List!64916) Regex!16205)

(assert (=> b!6284156 (= res!2591664 (= r!7292 (unfocusZipper!1947 zl!343)))))

(declare-fun tp!1750978 () Bool)

(declare-fun setNonEmpty!42764 () Bool)

(declare-fun setElem!42764 () Context!11178)

(declare-fun setRes!42764 () Bool)

(assert (=> setNonEmpty!42764 (= setRes!42764 (and tp!1750978 (inv!83759 setElem!42764) e!3821458))))

(declare-fun setRest!42764 () (InoxSet Context!11178))

(assert (=> setNonEmpty!42764 (= z!1189 ((_ map or) (store ((as const (Array Context!11178 Bool)) false) setElem!42764 true) setRest!42764))))

(declare-fun b!6284157 () Bool)

(declare-fun res!2591665 () Bool)

(assert (=> b!6284157 (=> res!2591665 e!3821468)))

(assert (=> b!6284157 (= res!2591665 (not (= (exprs!6089 (h!71240 zl!343)) (Cons!64790 (Concat!25050 (regOne!32922 (regOne!32922 r!7292)) (regTwo!32922 (regOne!32922 r!7292))) (t!378476 (exprs!6089 (h!71240 zl!343)))))))))

(declare-fun b!6284158 () Bool)

(declare-fun res!2591670 () Bool)

(assert (=> b!6284158 (=> res!2591670 e!3821475)))

(declare-fun generalisedUnion!2049 (List!64914) Regex!16205)

(declare-fun unfocusZipperList!1626 (List!64916) List!64914)

(assert (=> b!6284158 (= res!2591670 (not (= r!7292 (generalisedUnion!2049 (unfocusZipperList!1626 zl!343)))))))

(declare-fun b!6284159 () Bool)

(assert (=> b!6284159 (= e!3821477 (matchZipper!2217 lt!2355231 (t!378477 s!2326)))))

(declare-fun res!2591667 () Bool)

(assert (=> start!624590 (=> (not res!2591667) (not e!3821462))))

(assert (=> start!624590 (= res!2591667 (validRegex!7941 r!7292))))

(assert (=> start!624590 e!3821462))

(assert (=> start!624590 e!3821476))

(declare-fun condSetEmpty!42764 () Bool)

(assert (=> start!624590 (= condSetEmpty!42764 (= z!1189 ((as const (Array Context!11178 Bool)) false)))))

(assert (=> start!624590 setRes!42764))

(assert (=> start!624590 e!3821459))

(assert (=> start!624590 e!3821471))

(declare-fun b!6284139 () Bool)

(declare-fun e!3821478 () Bool)

(assert (=> b!6284139 (= e!3821469 e!3821478)))

(declare-fun res!2591678 () Bool)

(assert (=> b!6284139 (=> res!2591678 e!3821478)))

(declare-fun lt!2355249 () (InoxSet Context!11178))

(declare-fun lt!2355225 () (InoxSet Context!11178))

(assert (=> b!6284139 (= res!2591678 (not (= lt!2355249 lt!2355225)))))

(assert (=> b!6284139 (= lt!2355225 ((_ map or) lt!2355218 lt!2355243))))

(assert (=> b!6284139 (= lt!2355243 (derivationStepZipperUp!1379 lt!2355213 (h!71239 s!2326)))))

(assert (=> b!6284139 (= (flatMap!1710 lt!2355224 lambda!344813) (derivationStepZipperUp!1379 lt!2355250 (h!71239 s!2326)))))

(declare-fun lt!2355230 () Unit!158151)

(assert (=> b!6284139 (= lt!2355230 (lemmaFlatMapOnSingletonSet!1236 lt!2355224 lt!2355250 lambda!344813))))

(declare-fun lt!2355248 () (InoxSet Context!11178))

(assert (=> b!6284139 (= lt!2355248 (derivationStepZipperUp!1379 lt!2355250 (h!71239 s!2326)))))

(assert (=> b!6284139 (= lt!2355249 (derivationStepZipper!2171 lt!2355224 (h!71239 s!2326)))))

(assert (=> b!6284139 (= lt!2355240 (store ((as const (Array Context!11178 Bool)) false) lt!2355213 true))))

(assert (=> b!6284139 (= lt!2355224 (store ((as const (Array Context!11178 Bool)) false) lt!2355250 true))))

(assert (=> b!6284139 (= lt!2355250 (Context!11179 lt!2355241))))

(assert (=> b!6284139 (= lt!2355241 (Cons!64790 (regOne!32922 (regOne!32922 r!7292)) lt!2355211))))

(declare-fun b!6284160 () Bool)

(assert (=> b!6284160 (= e!3821478 e!3821468)))

(declare-fun res!2591672 () Bool)

(assert (=> b!6284160 (=> res!2591672 e!3821468)))

(assert (=> b!6284160 (= res!2591672 e!3821470)))

(declare-fun res!2591675 () Bool)

(assert (=> b!6284160 (=> (not res!2591675) (not e!3821470))))

(assert (=> b!6284160 (= res!2591675 (not (= lt!2355247 (matchZipper!2217 lt!2355249 (t!378477 s!2326)))))))

(assert (=> b!6284160 (= (matchZipper!2217 lt!2355225 (t!378477 s!2326)) e!3821466)))

(declare-fun res!2591658 () Bool)

(assert (=> b!6284160 (=> res!2591658 e!3821466)))

(assert (=> b!6284160 (= res!2591658 lt!2355229)))

(declare-fun lt!2355221 () Unit!158151)

(assert (=> b!6284160 (= lt!2355221 (lemmaZipperConcatMatchesSameAsBothZippers!1036 lt!2355218 lt!2355243 (t!378477 s!2326)))))

(assert (=> b!6284160 (= (flatMap!1710 lt!2355240 lambda!344813) (derivationStepZipperUp!1379 lt!2355213 (h!71239 s!2326)))))

(declare-fun lt!2355245 () Unit!158151)

(assert (=> b!6284160 (= lt!2355245 (lemmaFlatMapOnSingletonSet!1236 lt!2355240 lt!2355213 lambda!344813))))

(declare-fun b!6284161 () Bool)

(declare-fun res!2591656 () Bool)

(assert (=> b!6284161 (=> res!2591656 e!3821467)))

(assert (=> b!6284161 (= res!2591656 (not (nullable!6198 (regOne!32922 (regOne!32922 r!7292)))))))

(declare-fun b!6284162 () Bool)

(declare-fun tp!1750970 () Bool)

(assert (=> b!6284162 (= e!3821465 tp!1750970)))

(declare-fun setIsEmpty!42764 () Bool)

(assert (=> setIsEmpty!42764 setRes!42764))

(declare-fun b!6284163 () Bool)

(declare-fun res!2591659 () Bool)

(assert (=> b!6284163 (=> res!2591659 e!3821475)))

(assert (=> b!6284163 (= res!2591659 (not (= r!7292 (generalisedConcat!1802 (exprs!6089 (h!71240 zl!343))))))))

(assert (= (and start!624590 res!2591667) b!6284154))

(assert (= (and b!6284154 res!2591681) b!6284156))

(assert (= (and b!6284156 res!2591664) b!6284134))

(assert (= (and b!6284134 (not res!2591677)) b!6284155))

(assert (= (and b!6284155 (not res!2591668)) b!6284163))

(assert (= (and b!6284163 (not res!2591659)) b!6284135))

(assert (= (and b!6284135 (not res!2591671)) b!6284158))

(assert (= (and b!6284158 (not res!2591670)) b!6284129))

(assert (= (and b!6284129 (not res!2591679)) b!6284148))

(assert (= (and b!6284148 (not res!2591660)) b!6284133))

(assert (= (and b!6284133 (not res!2591673)) b!6284137))

(assert (= (and b!6284137 c!1139835) b!6284142))

(assert (= (and b!6284137 (not c!1139835)) b!6284152))

(assert (= (and b!6284142 (not res!2591661)) b!6284136))

(assert (= (and b!6284137 (not res!2591682)) b!6284161))

(assert (= (and b!6284161 (not res!2591656)) b!6284151))

(assert (= (and b!6284151 (not res!2591674)) b!6284128))

(assert (= (and b!6284128 (not res!2591663)) b!6284159))

(assert (= (and b!6284128 res!2591669) b!6284127))

(assert (= (and b!6284128 (not res!2591666)) b!6284139))

(assert (= (and b!6284139 (not res!2591678)) b!6284160))

(assert (= (and b!6284160 (not res!2591658)) b!6284138))

(assert (= (and b!6284160 res!2591675) b!6284132))

(assert (= (and b!6284160 (not res!2591672)) b!6284157))

(assert (= (and b!6284157 (not res!2591665)) b!6284153))

(assert (= (and b!6284153 (not res!2591657)) b!6284146))

(assert (= (and b!6284146 (not res!2591676)) b!6284149))

(assert (= (and b!6284149 (not res!2591680)) b!6284147))

(assert (= (and b!6284147 (not res!2591662)) b!6284144))

(assert (= (and start!624590 ((_ is ElementMatch!16205) r!7292)) b!6284140))

(assert (= (and start!624590 ((_ is Concat!25050) r!7292)) b!6284145))

(assert (= (and start!624590 ((_ is Star!16205) r!7292)) b!6284131))

(assert (= (and start!624590 ((_ is Union!16205) r!7292)) b!6284141))

(assert (= (and start!624590 condSetEmpty!42764) setIsEmpty!42764))

(assert (= (and start!624590 (not condSetEmpty!42764)) setNonEmpty!42764))

(assert (= setNonEmpty!42764 b!6284150))

(assert (= b!6284130 b!6284162))

(assert (= (and start!624590 ((_ is Cons!64792) zl!343)) b!6284130))

(assert (= (and start!624590 ((_ is Cons!64791) s!2326)) b!6284143))

(declare-fun m!7104998 () Bool)

(assert (=> b!6284137 m!7104998))

(declare-fun m!7105000 () Bool)

(assert (=> b!6284137 m!7105000))

(declare-fun m!7105002 () Bool)

(assert (=> b!6284137 m!7105002))

(declare-fun m!7105004 () Bool)

(assert (=> b!6284137 m!7105004))

(declare-fun m!7105006 () Bool)

(assert (=> b!6284137 m!7105006))

(declare-fun m!7105008 () Bool)

(assert (=> b!6284137 m!7105008))

(declare-fun m!7105010 () Bool)

(assert (=> b!6284137 m!7105010))

(declare-fun m!7105012 () Bool)

(assert (=> b!6284151 m!7105012))

(declare-fun m!7105014 () Bool)

(assert (=> b!6284151 m!7105014))

(declare-fun m!7105016 () Bool)

(assert (=> b!6284144 m!7105016))

(declare-fun m!7105018 () Bool)

(assert (=> b!6284142 m!7105018))

(declare-fun m!7105020 () Bool)

(assert (=> b!6284142 m!7105020))

(declare-fun m!7105022 () Bool)

(assert (=> b!6284142 m!7105022))

(declare-fun m!7105024 () Bool)

(assert (=> b!6284133 m!7105024))

(declare-fun m!7105026 () Bool)

(assert (=> b!6284158 m!7105026))

(assert (=> b!6284158 m!7105026))

(declare-fun m!7105028 () Bool)

(assert (=> b!6284158 m!7105028))

(declare-fun m!7105030 () Bool)

(assert (=> b!6284146 m!7105030))

(declare-fun m!7105032 () Bool)

(assert (=> b!6284146 m!7105032))

(declare-fun m!7105034 () Bool)

(assert (=> b!6284147 m!7105034))

(declare-fun m!7105036 () Bool)

(assert (=> b!6284147 m!7105036))

(declare-fun m!7105038 () Bool)

(assert (=> b!6284147 m!7105038))

(declare-fun m!7105040 () Bool)

(assert (=> b!6284147 m!7105040))

(declare-fun m!7105042 () Bool)

(assert (=> b!6284147 m!7105042))

(declare-fun m!7105044 () Bool)

(assert (=> b!6284147 m!7105044))

(declare-fun m!7105046 () Bool)

(assert (=> b!6284147 m!7105046))

(declare-fun m!7105048 () Bool)

(assert (=> b!6284147 m!7105048))

(declare-fun m!7105050 () Bool)

(assert (=> b!6284147 m!7105050))

(declare-fun m!7105052 () Bool)

(assert (=> b!6284147 m!7105052))

(declare-fun m!7105054 () Bool)

(assert (=> b!6284147 m!7105054))

(declare-fun m!7105056 () Bool)

(assert (=> b!6284147 m!7105056))

(assert (=> b!6284147 m!7105056))

(declare-fun m!7105058 () Bool)

(assert (=> b!6284147 m!7105058))

(declare-fun m!7105060 () Bool)

(assert (=> b!6284147 m!7105060))

(declare-fun m!7105062 () Bool)

(assert (=> b!6284147 m!7105062))

(declare-fun m!7105064 () Bool)

(assert (=> b!6284147 m!7105064))

(declare-fun m!7105066 () Bool)

(assert (=> b!6284147 m!7105066))

(declare-fun m!7105068 () Bool)

(assert (=> b!6284147 m!7105068))

(assert (=> b!6284147 m!7105062))

(declare-fun m!7105070 () Bool)

(assert (=> b!6284147 m!7105070))

(declare-fun m!7105072 () Bool)

(assert (=> b!6284147 m!7105072))

(declare-fun m!7105074 () Bool)

(assert (=> start!624590 m!7105074))

(declare-fun m!7105076 () Bool)

(assert (=> b!6284159 m!7105076))

(declare-fun m!7105078 () Bool)

(assert (=> b!6284148 m!7105078))

(declare-fun m!7105080 () Bool)

(assert (=> b!6284148 m!7105080))

(declare-fun m!7105082 () Bool)

(assert (=> b!6284148 m!7105082))

(declare-fun m!7105084 () Bool)

(assert (=> b!6284148 m!7105084))

(declare-fun m!7105086 () Bool)

(assert (=> b!6284148 m!7105086))

(assert (=> b!6284148 m!7105086))

(assert (=> b!6284148 m!7105080))

(declare-fun m!7105088 () Bool)

(assert (=> b!6284148 m!7105088))

(declare-fun m!7105090 () Bool)

(assert (=> b!6284134 m!7105090))

(declare-fun m!7105092 () Bool)

(assert (=> b!6284134 m!7105092))

(declare-fun m!7105094 () Bool)

(assert (=> b!6284134 m!7105094))

(declare-fun m!7105096 () Bool)

(assert (=> b!6284154 m!7105096))

(declare-fun m!7105098 () Bool)

(assert (=> setNonEmpty!42764 m!7105098))

(declare-fun m!7105100 () Bool)

(assert (=> b!6284136 m!7105100))

(declare-fun m!7105102 () Bool)

(assert (=> b!6284130 m!7105102))

(declare-fun m!7105104 () Bool)

(assert (=> b!6284138 m!7105104))

(assert (=> b!6284127 m!7105076))

(assert (=> b!6284128 m!7105020))

(declare-fun m!7105106 () Bool)

(assert (=> b!6284128 m!7105106))

(declare-fun m!7105108 () Bool)

(assert (=> b!6284128 m!7105108))

(declare-fun m!7105110 () Bool)

(assert (=> b!6284128 m!7105110))

(declare-fun m!7105112 () Bool)

(assert (=> b!6284139 m!7105112))

(declare-fun m!7105114 () Bool)

(assert (=> b!6284139 m!7105114))

(declare-fun m!7105116 () Bool)

(assert (=> b!6284139 m!7105116))

(declare-fun m!7105118 () Bool)

(assert (=> b!6284139 m!7105118))

(declare-fun m!7105120 () Bool)

(assert (=> b!6284139 m!7105120))

(declare-fun m!7105122 () Bool)

(assert (=> b!6284139 m!7105122))

(declare-fun m!7105124 () Bool)

(assert (=> b!6284139 m!7105124))

(declare-fun m!7105126 () Bool)

(assert (=> b!6284161 m!7105126))

(declare-fun m!7105128 () Bool)

(assert (=> b!6284132 m!7105128))

(assert (=> b!6284132 m!7105128))

(declare-fun m!7105130 () Bool)

(assert (=> b!6284132 m!7105130))

(declare-fun m!7105132 () Bool)

(assert (=> b!6284163 m!7105132))

(declare-fun m!7105134 () Bool)

(assert (=> b!6284149 m!7105134))

(declare-fun m!7105136 () Bool)

(assert (=> b!6284149 m!7105136))

(declare-fun m!7105138 () Bool)

(assert (=> b!6284153 m!7105138))

(declare-fun m!7105140 () Bool)

(assert (=> b!6284153 m!7105140))

(declare-fun m!7105142 () Bool)

(assert (=> b!6284155 m!7105142))

(declare-fun m!7105144 () Bool)

(assert (=> b!6284156 m!7105144))

(declare-fun m!7105146 () Bool)

(assert (=> b!6284160 m!7105146))

(declare-fun m!7105148 () Bool)

(assert (=> b!6284160 m!7105148))

(declare-fun m!7105150 () Bool)

(assert (=> b!6284160 m!7105150))

(declare-fun m!7105152 () Bool)

(assert (=> b!6284160 m!7105152))

(declare-fun m!7105154 () Bool)

(assert (=> b!6284160 m!7105154))

(assert (=> b!6284160 m!7105114))

(check-sat (not b!6284156) (not b!6284154) (not b!6284143) (not b!6284149) (not b!6284144) (not b!6284139) (not b!6284150) (not setNonEmpty!42764) (not b!6284142) (not b!6284138) (not b!6284161) (not b!6284163) (not b!6284128) (not b!6284127) (not b!6284146) (not b!6284141) (not b!6284153) (not b!6284151) (not b!6284133) (not b!6284131) (not b!6284145) (not start!624590) (not b!6284148) (not b!6284155) (not b!6284130) (not b!6284134) (not b!6284132) (not b!6284136) (not b!6284160) tp_is_empty!41663 (not b!6284158) (not b!6284159) (not b!6284147) (not b!6284137) (not b!6284162))
(check-sat)
(get-model)

(declare-fun d!1972446 () Bool)

(declare-fun c!1139912 () Bool)

(declare-fun isEmpty!36840 (List!64915) Bool)

(assert (=> d!1972446 (= c!1139912 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3821590 () Bool)

(assert (=> d!1972446 (= (matchZipper!2217 lt!2355231 (t!378477 s!2326)) e!3821590)))

(declare-fun b!6284370 () Bool)

(declare-fun nullableZipper!1975 ((InoxSet Context!11178)) Bool)

(assert (=> b!6284370 (= e!3821590 (nullableZipper!1975 lt!2355231))))

(declare-fun b!6284371 () Bool)

(declare-fun head!12909 (List!64915) C!32680)

(declare-fun tail!11994 (List!64915) List!64915)

(assert (=> b!6284371 (= e!3821590 (matchZipper!2217 (derivationStepZipper!2171 lt!2355231 (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972446 c!1139912) b!6284370))

(assert (= (and d!1972446 (not c!1139912)) b!6284371))

(declare-fun m!7105316 () Bool)

(assert (=> d!1972446 m!7105316))

(declare-fun m!7105318 () Bool)

(assert (=> b!6284370 m!7105318))

(declare-fun m!7105320 () Bool)

(assert (=> b!6284371 m!7105320))

(assert (=> b!6284371 m!7105320))

(declare-fun m!7105322 () Bool)

(assert (=> b!6284371 m!7105322))

(declare-fun m!7105324 () Bool)

(assert (=> b!6284371 m!7105324))

(assert (=> b!6284371 m!7105322))

(assert (=> b!6284371 m!7105324))

(declare-fun m!7105326 () Bool)

(assert (=> b!6284371 m!7105326))

(assert (=> b!6284127 d!1972446))

(declare-fun b!6284515 () Bool)

(declare-fun e!3821683 () Bool)

(assert (=> b!6284515 (= e!3821683 (matchR!8388 (regTwo!32922 r!7292) s!2326))))

(declare-fun b!6284516 () Bool)

(declare-fun e!3821682 () Bool)

(declare-fun lt!2355312 () Option!16096)

(assert (=> b!6284516 (= e!3821682 (not (isDefined!12799 lt!2355312)))))

(declare-fun b!6284518 () Bool)

(declare-fun res!2591800 () Bool)

(declare-fun e!3821684 () Bool)

(assert (=> b!6284518 (=> (not res!2591800) (not e!3821684))))

(declare-fun get!22395 (Option!16096) tuple2!66368)

(assert (=> b!6284518 (= res!2591800 (matchR!8388 (regTwo!32922 r!7292) (_2!36487 (get!22395 lt!2355312))))))

(declare-fun b!6284519 () Bool)

(declare-fun e!3821681 () Option!16096)

(assert (=> b!6284519 (= e!3821681 (Some!16095 (tuple2!66369 Nil!64791 s!2326)))))

(declare-fun b!6284520 () Bool)

(declare-fun e!3821680 () Option!16096)

(assert (=> b!6284520 (= e!3821681 e!3821680)))

(declare-fun c!1139961 () Bool)

(assert (=> b!6284520 (= c!1139961 ((_ is Nil!64791) s!2326))))

(declare-fun b!6284521 () Bool)

(declare-fun res!2591798 () Bool)

(assert (=> b!6284521 (=> (not res!2591798) (not e!3821684))))

(assert (=> b!6284521 (= res!2591798 (matchR!8388 (regOne!32922 r!7292) (_1!36487 (get!22395 lt!2355312))))))

(declare-fun b!6284522 () Bool)

(declare-fun ++!14277 (List!64915 List!64915) List!64915)

(assert (=> b!6284522 (= e!3821684 (= (++!14277 (_1!36487 (get!22395 lt!2355312)) (_2!36487 (get!22395 lt!2355312))) s!2326))))

(declare-fun b!6284523 () Bool)

(declare-fun lt!2355314 () Unit!158151)

(declare-fun lt!2355313 () Unit!158151)

(assert (=> b!6284523 (= lt!2355314 lt!2355313)))

(assert (=> b!6284523 (= (++!14277 (++!14277 Nil!64791 (Cons!64791 (h!71239 s!2326) Nil!64791)) (t!378477 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2372 (List!64915 C!32680 List!64915 List!64915) Unit!158151)

(assert (=> b!6284523 (= lt!2355313 (lemmaMoveElementToOtherListKeepsConcatEq!2372 Nil!64791 (h!71239 s!2326) (t!378477 s!2326) s!2326))))

(assert (=> b!6284523 (= e!3821680 (findConcatSeparation!2510 (regOne!32922 r!7292) (regTwo!32922 r!7292) (++!14277 Nil!64791 (Cons!64791 (h!71239 s!2326) Nil!64791)) (t!378477 s!2326) s!2326))))

(declare-fun b!6284517 () Bool)

(assert (=> b!6284517 (= e!3821680 None!16095)))

(declare-fun d!1972468 () Bool)

(assert (=> d!1972468 e!3821682))

(declare-fun res!2591797 () Bool)

(assert (=> d!1972468 (=> res!2591797 e!3821682)))

(assert (=> d!1972468 (= res!2591797 e!3821684)))

(declare-fun res!2591799 () Bool)

(assert (=> d!1972468 (=> (not res!2591799) (not e!3821684))))

(assert (=> d!1972468 (= res!2591799 (isDefined!12799 lt!2355312))))

(assert (=> d!1972468 (= lt!2355312 e!3821681)))

(declare-fun c!1139960 () Bool)

(assert (=> d!1972468 (= c!1139960 e!3821683)))

(declare-fun res!2591796 () Bool)

(assert (=> d!1972468 (=> (not res!2591796) (not e!3821683))))

(assert (=> d!1972468 (= res!2591796 (matchR!8388 (regOne!32922 r!7292) Nil!64791))))

(assert (=> d!1972468 (validRegex!7941 (regOne!32922 r!7292))))

(assert (=> d!1972468 (= (findConcatSeparation!2510 (regOne!32922 r!7292) (regTwo!32922 r!7292) Nil!64791 s!2326 s!2326) lt!2355312)))

(assert (= (and d!1972468 res!2591796) b!6284515))

(assert (= (and d!1972468 c!1139960) b!6284519))

(assert (= (and d!1972468 (not c!1139960)) b!6284520))

(assert (= (and b!6284520 c!1139961) b!6284517))

(assert (= (and b!6284520 (not c!1139961)) b!6284523))

(assert (= (and d!1972468 res!2591799) b!6284521))

(assert (= (and b!6284521 res!2591798) b!6284518))

(assert (= (and b!6284518 res!2591800) b!6284522))

(assert (= (and d!1972468 (not res!2591797)) b!6284516))

(declare-fun m!7105434 () Bool)

(assert (=> b!6284523 m!7105434))

(assert (=> b!6284523 m!7105434))

(declare-fun m!7105444 () Bool)

(assert (=> b!6284523 m!7105444))

(declare-fun m!7105446 () Bool)

(assert (=> b!6284523 m!7105446))

(assert (=> b!6284523 m!7105434))

(declare-fun m!7105448 () Bool)

(assert (=> b!6284523 m!7105448))

(declare-fun m!7105450 () Bool)

(assert (=> b!6284516 m!7105450))

(assert (=> d!1972468 m!7105450))

(declare-fun m!7105452 () Bool)

(assert (=> d!1972468 m!7105452))

(declare-fun m!7105454 () Bool)

(assert (=> d!1972468 m!7105454))

(declare-fun m!7105456 () Bool)

(assert (=> b!6284515 m!7105456))

(declare-fun m!7105460 () Bool)

(assert (=> b!6284518 m!7105460))

(declare-fun m!7105462 () Bool)

(assert (=> b!6284518 m!7105462))

(assert (=> b!6284522 m!7105460))

(declare-fun m!7105466 () Bool)

(assert (=> b!6284522 m!7105466))

(assert (=> b!6284521 m!7105460))

(declare-fun m!7105468 () Bool)

(assert (=> b!6284521 m!7105468))

(assert (=> b!6284148 d!1972468))

(declare-fun d!1972510 () Bool)

(declare-fun choose!46661 (Int) Bool)

(assert (=> d!1972510 (= (Exists!3275 lambda!344812) (choose!46661 lambda!344812))))

(declare-fun bs!1570844 () Bool)

(assert (= bs!1570844 d!1972510))

(declare-fun m!7105470 () Bool)

(assert (=> bs!1570844 m!7105470))

(assert (=> b!6284148 d!1972510))

(declare-fun d!1972512 () Bool)

(assert (=> d!1972512 (= (Exists!3275 lambda!344811) (choose!46661 lambda!344811))))

(declare-fun bs!1570845 () Bool)

(assert (= bs!1570845 d!1972512))

(declare-fun m!7105472 () Bool)

(assert (=> bs!1570845 m!7105472))

(assert (=> b!6284148 d!1972512))

(declare-fun bs!1570861 () Bool)

(declare-fun d!1972514 () Bool)

(assert (= bs!1570861 (and d!1972514 b!6284148)))

(declare-fun lambda!344856 () Int)

(assert (=> bs!1570861 (= lambda!344856 lambda!344811)))

(assert (=> bs!1570861 (not (= lambda!344856 lambda!344812))))

(declare-fun bs!1570862 () Bool)

(assert (= bs!1570862 (and d!1972514 b!6284147)))

(assert (=> bs!1570862 (= (and (= (regOne!32922 r!7292) (regOne!32922 (regOne!32922 r!7292))) (= (regTwo!32922 r!7292) lt!2355217)) (= lambda!344856 lambda!344814))))

(assert (=> bs!1570862 (not (= lambda!344856 lambda!344815))))

(assert (=> d!1972514 true))

(assert (=> d!1972514 true))

(assert (=> d!1972514 true))

(assert (=> d!1972514 (= (isDefined!12799 (findConcatSeparation!2510 (regOne!32922 r!7292) (regTwo!32922 r!7292) Nil!64791 s!2326 s!2326)) (Exists!3275 lambda!344856))))

(declare-fun lt!2355326 () Unit!158151)

(declare-fun choose!46662 (Regex!16205 Regex!16205 List!64915) Unit!158151)

(assert (=> d!1972514 (= lt!2355326 (choose!46662 (regOne!32922 r!7292) (regTwo!32922 r!7292) s!2326))))

(assert (=> d!1972514 (validRegex!7941 (regOne!32922 r!7292))))

(assert (=> d!1972514 (= (lemmaFindConcatSeparationEquivalentToExists!2274 (regOne!32922 r!7292) (regTwo!32922 r!7292) s!2326) lt!2355326)))

(declare-fun bs!1570863 () Bool)

(assert (= bs!1570863 d!1972514))

(assert (=> bs!1570863 m!7105454))

(assert (=> bs!1570863 m!7105080))

(assert (=> bs!1570863 m!7105080))

(assert (=> bs!1570863 m!7105082))

(declare-fun m!7105488 () Bool)

(assert (=> bs!1570863 m!7105488))

(declare-fun m!7105490 () Bool)

(assert (=> bs!1570863 m!7105490))

(assert (=> b!6284148 d!1972514))

(declare-fun bs!1570887 () Bool)

(declare-fun d!1972524 () Bool)

(assert (= bs!1570887 (and d!1972524 b!6284148)))

(declare-fun lambda!344870 () Int)

(assert (=> bs!1570887 (= lambda!344870 lambda!344811)))

(declare-fun bs!1570890 () Bool)

(assert (= bs!1570890 (and d!1972524 d!1972514)))

(assert (=> bs!1570890 (= lambda!344870 lambda!344856)))

(declare-fun bs!1570892 () Bool)

(assert (= bs!1570892 (and d!1972524 b!6284147)))

(assert (=> bs!1570892 (= (and (= (regOne!32922 r!7292) (regOne!32922 (regOne!32922 r!7292))) (= (regTwo!32922 r!7292) lt!2355217)) (= lambda!344870 lambda!344814))))

(assert (=> bs!1570892 (not (= lambda!344870 lambda!344815))))

(assert (=> bs!1570887 (not (= lambda!344870 lambda!344812))))

(assert (=> d!1972524 true))

(assert (=> d!1972524 true))

(assert (=> d!1972524 true))

(declare-fun lambda!344872 () Int)

(assert (=> bs!1570887 (not (= lambda!344872 lambda!344811))))

(declare-fun bs!1570895 () Bool)

(assert (= bs!1570895 d!1972524))

(assert (=> bs!1570895 (not (= lambda!344872 lambda!344870))))

(assert (=> bs!1570890 (not (= lambda!344872 lambda!344856))))

(assert (=> bs!1570892 (not (= lambda!344872 lambda!344814))))

(assert (=> bs!1570892 (= (and (= (regOne!32922 r!7292) (regOne!32922 (regOne!32922 r!7292))) (= (regTwo!32922 r!7292) lt!2355217)) (= lambda!344872 lambda!344815))))

(assert (=> bs!1570887 (= lambda!344872 lambda!344812)))

(assert (=> d!1972524 true))

(assert (=> d!1972524 true))

(assert (=> d!1972524 true))

(assert (=> d!1972524 (= (Exists!3275 lambda!344870) (Exists!3275 lambda!344872))))

(declare-fun lt!2355342 () Unit!158151)

(declare-fun choose!46663 (Regex!16205 Regex!16205 List!64915) Unit!158151)

(assert (=> d!1972524 (= lt!2355342 (choose!46663 (regOne!32922 r!7292) (regTwo!32922 r!7292) s!2326))))

(assert (=> d!1972524 (validRegex!7941 (regOne!32922 r!7292))))

(assert (=> d!1972524 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1812 (regOne!32922 r!7292) (regTwo!32922 r!7292) s!2326) lt!2355342)))

(declare-fun m!7105610 () Bool)

(assert (=> bs!1570895 m!7105610))

(declare-fun m!7105612 () Bool)

(assert (=> bs!1570895 m!7105612))

(declare-fun m!7105614 () Bool)

(assert (=> bs!1570895 m!7105614))

(assert (=> bs!1570895 m!7105454))

(assert (=> b!6284148 d!1972524))

(declare-fun d!1972552 () Bool)

(declare-fun isEmpty!36841 (Option!16096) Bool)

(assert (=> d!1972552 (= (isDefined!12799 (findConcatSeparation!2510 (regOne!32922 r!7292) (regTwo!32922 r!7292) Nil!64791 s!2326 s!2326)) (not (isEmpty!36841 (findConcatSeparation!2510 (regOne!32922 r!7292) (regTwo!32922 r!7292) Nil!64791 s!2326 s!2326))))))

(declare-fun bs!1570896 () Bool)

(assert (= bs!1570896 d!1972552))

(assert (=> bs!1570896 m!7105080))

(declare-fun m!7105616 () Bool)

(assert (=> bs!1570896 m!7105616))

(assert (=> b!6284148 d!1972552))

(declare-fun b!6284687 () Bool)

(assert (=> b!6284687 true))

(declare-fun bs!1570954 () Bool)

(declare-fun b!6284689 () Bool)

(assert (= bs!1570954 (and b!6284689 b!6284687)))

(declare-fun lambda!344886 () Int)

(declare-fun lambda!344887 () Int)

(declare-fun lt!2355360 () Int)

(declare-fun lt!2355362 () Int)

(assert (=> bs!1570954 (= (= lt!2355362 lt!2355360) (= lambda!344887 lambda!344886))))

(assert (=> b!6284689 true))

(declare-fun d!1972554 () Bool)

(declare-fun e!3821781 () Bool)

(assert (=> d!1972554 e!3821781))

(declare-fun res!2591868 () Bool)

(assert (=> d!1972554 (=> (not res!2591868) (not e!3821781))))

(assert (=> d!1972554 (= res!2591868 (>= lt!2355362 0))))

(declare-fun e!3821780 () Int)

(assert (=> d!1972554 (= lt!2355362 e!3821780)))

(declare-fun c!1140016 () Bool)

(assert (=> d!1972554 (= c!1140016 ((_ is Cons!64792) lt!2355223))))

(assert (=> d!1972554 (= (zipperDepth!330 lt!2355223) lt!2355362)))

(assert (=> b!6284687 (= e!3821780 lt!2355360)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!222 (Context!11178) Int)

(assert (=> b!6284687 (= lt!2355360 (maxBigInt!0 (contextDepth!222 (h!71240 lt!2355223)) (zipperDepth!330 (t!378478 lt!2355223))))))

(declare-fun lt!2355359 () Unit!158151)

(declare-fun lambda!344885 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!206 (List!64916 Int Int Int) Unit!158151)

(assert (=> b!6284687 (= lt!2355359 (lemmaForallContextDepthBiggerThanTransitive!206 (t!378478 lt!2355223) lt!2355360 (zipperDepth!330 (t!378478 lt!2355223)) lambda!344885))))

(declare-fun forall!15347 (List!64916 Int) Bool)

(assert (=> b!6284687 (forall!15347 (t!378478 lt!2355223) lambda!344886)))

(declare-fun lt!2355361 () Unit!158151)

(assert (=> b!6284687 (= lt!2355361 lt!2355359)))

(declare-fun b!6284688 () Bool)

(assert (=> b!6284688 (= e!3821780 0)))

(assert (=> b!6284689 (= e!3821781 (forall!15347 lt!2355223 lambda!344887))))

(assert (= (and d!1972554 c!1140016) b!6284687))

(assert (= (and d!1972554 (not c!1140016)) b!6284688))

(assert (= (and d!1972554 res!2591868) b!6284689))

(declare-fun m!7105674 () Bool)

(assert (=> b!6284687 m!7105674))

(declare-fun m!7105676 () Bool)

(assert (=> b!6284687 m!7105676))

(declare-fun m!7105678 () Bool)

(assert (=> b!6284687 m!7105678))

(assert (=> b!6284687 m!7105678))

(assert (=> b!6284687 m!7105676))

(declare-fun m!7105680 () Bool)

(assert (=> b!6284687 m!7105680))

(assert (=> b!6284687 m!7105676))

(declare-fun m!7105682 () Bool)

(assert (=> b!6284687 m!7105682))

(declare-fun m!7105684 () Bool)

(assert (=> b!6284689 m!7105684))

(assert (=> b!6284149 d!1972554))

(declare-fun bs!1570955 () Bool)

(declare-fun b!6284712 () Bool)

(assert (= bs!1570955 (and b!6284712 b!6284687)))

(declare-fun lambda!344888 () Int)

(assert (=> bs!1570955 (= lambda!344888 lambda!344885)))

(declare-fun lt!2355365 () Int)

(declare-fun lambda!344889 () Int)

(assert (=> bs!1570955 (= (= lt!2355365 lt!2355360) (= lambda!344889 lambda!344886))))

(declare-fun bs!1570956 () Bool)

(assert (= bs!1570956 (and b!6284712 b!6284689)))

(assert (=> bs!1570956 (= (= lt!2355365 lt!2355362) (= lambda!344889 lambda!344887))))

(assert (=> b!6284712 true))

(declare-fun bs!1570957 () Bool)

(declare-fun b!6284714 () Bool)

(assert (= bs!1570957 (and b!6284714 b!6284687)))

(declare-fun lt!2355367 () Int)

(declare-fun lambda!344890 () Int)

(assert (=> bs!1570957 (= (= lt!2355367 lt!2355360) (= lambda!344890 lambda!344886))))

(declare-fun bs!1570958 () Bool)

(assert (= bs!1570958 (and b!6284714 b!6284689)))

(assert (=> bs!1570958 (= (= lt!2355367 lt!2355362) (= lambda!344890 lambda!344887))))

(declare-fun bs!1570959 () Bool)

(assert (= bs!1570959 (and b!6284714 b!6284712)))

(assert (=> bs!1570959 (= (= lt!2355367 lt!2355365) (= lambda!344890 lambda!344889))))

(assert (=> b!6284714 true))

(declare-fun d!1972574 () Bool)

(declare-fun e!3821793 () Bool)

(assert (=> d!1972574 e!3821793))

(declare-fun res!2591877 () Bool)

(assert (=> d!1972574 (=> (not res!2591877) (not e!3821793))))

(assert (=> d!1972574 (= res!2591877 (>= lt!2355367 0))))

(declare-fun e!3821792 () Int)

(assert (=> d!1972574 (= lt!2355367 e!3821792)))

(declare-fun c!1140021 () Bool)

(assert (=> d!1972574 (= c!1140021 ((_ is Cons!64792) zl!343))))

(assert (=> d!1972574 (= (zipperDepth!330 zl!343) lt!2355367)))

(assert (=> b!6284712 (= e!3821792 lt!2355365)))

(assert (=> b!6284712 (= lt!2355365 (maxBigInt!0 (contextDepth!222 (h!71240 zl!343)) (zipperDepth!330 (t!378478 zl!343))))))

(declare-fun lt!2355364 () Unit!158151)

(assert (=> b!6284712 (= lt!2355364 (lemmaForallContextDepthBiggerThanTransitive!206 (t!378478 zl!343) lt!2355365 (zipperDepth!330 (t!378478 zl!343)) lambda!344888))))

(assert (=> b!6284712 (forall!15347 (t!378478 zl!343) lambda!344889)))

(declare-fun lt!2355366 () Unit!158151)

(assert (=> b!6284712 (= lt!2355366 lt!2355364)))

(declare-fun b!6284713 () Bool)

(assert (=> b!6284713 (= e!3821792 0)))

(assert (=> b!6284714 (= e!3821793 (forall!15347 zl!343 lambda!344890))))

(assert (= (and d!1972574 c!1140021) b!6284712))

(assert (= (and d!1972574 (not c!1140021)) b!6284713))

(assert (= (and d!1972574 res!2591877) b!6284714))

(declare-fun m!7105686 () Bool)

(assert (=> b!6284712 m!7105686))

(declare-fun m!7105688 () Bool)

(assert (=> b!6284712 m!7105688))

(declare-fun m!7105690 () Bool)

(assert (=> b!6284712 m!7105690))

(assert (=> b!6284712 m!7105690))

(assert (=> b!6284712 m!7105688))

(declare-fun m!7105692 () Bool)

(assert (=> b!6284712 m!7105692))

(assert (=> b!6284712 m!7105688))

(declare-fun m!7105694 () Bool)

(assert (=> b!6284712 m!7105694))

(declare-fun m!7105696 () Bool)

(assert (=> b!6284714 m!7105696))

(assert (=> b!6284149 d!1972574))

(declare-fun d!1972576 () Bool)

(declare-fun c!1140022 () Bool)

(assert (=> d!1972576 (= c!1140022 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3821807 () Bool)

(assert (=> d!1972576 (= (matchZipper!2217 lt!2355242 (t!378477 s!2326)) e!3821807)))

(declare-fun b!6284749 () Bool)

(assert (=> b!6284749 (= e!3821807 (nullableZipper!1975 lt!2355242))))

(declare-fun b!6284750 () Bool)

(assert (=> b!6284750 (= e!3821807 (matchZipper!2217 (derivationStepZipper!2171 lt!2355242 (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972576 c!1140022) b!6284749))

(assert (= (and d!1972576 (not c!1140022)) b!6284750))

(assert (=> d!1972576 m!7105316))

(declare-fun m!7105698 () Bool)

(assert (=> b!6284749 m!7105698))

(assert (=> b!6284750 m!7105320))

(assert (=> b!6284750 m!7105320))

(declare-fun m!7105700 () Bool)

(assert (=> b!6284750 m!7105700))

(assert (=> b!6284750 m!7105324))

(assert (=> b!6284750 m!7105700))

(assert (=> b!6284750 m!7105324))

(declare-fun m!7105704 () Bool)

(assert (=> b!6284750 m!7105704))

(assert (=> b!6284128 d!1972576))

(declare-fun d!1972578 () Bool)

(declare-fun c!1140023 () Bool)

(assert (=> d!1972578 (= c!1140023 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3821810 () Bool)

(assert (=> d!1972578 (= (matchZipper!2217 lt!2355238 (t!378477 s!2326)) e!3821810)))

(declare-fun b!6284755 () Bool)

(assert (=> b!6284755 (= e!3821810 (nullableZipper!1975 lt!2355238))))

(declare-fun b!6284756 () Bool)

(assert (=> b!6284756 (= e!3821810 (matchZipper!2217 (derivationStepZipper!2171 lt!2355238 (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972578 c!1140023) b!6284755))

(assert (= (and d!1972578 (not c!1140023)) b!6284756))

(assert (=> d!1972578 m!7105316))

(declare-fun m!7105706 () Bool)

(assert (=> b!6284755 m!7105706))

(assert (=> b!6284756 m!7105320))

(assert (=> b!6284756 m!7105320))

(declare-fun m!7105708 () Bool)

(assert (=> b!6284756 m!7105708))

(assert (=> b!6284756 m!7105324))

(assert (=> b!6284756 m!7105708))

(assert (=> b!6284756 m!7105324))

(declare-fun m!7105710 () Bool)

(assert (=> b!6284756 m!7105710))

(assert (=> b!6284128 d!1972578))

(declare-fun d!1972580 () Bool)

(declare-fun c!1140024 () Bool)

(assert (=> d!1972580 (= c!1140024 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3821813 () Bool)

(assert (=> d!1972580 (= (matchZipper!2217 lt!2355218 (t!378477 s!2326)) e!3821813)))

(declare-fun b!6284759 () Bool)

(assert (=> b!6284759 (= e!3821813 (nullableZipper!1975 lt!2355218))))

(declare-fun b!6284760 () Bool)

(assert (=> b!6284760 (= e!3821813 (matchZipper!2217 (derivationStepZipper!2171 lt!2355218 (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972580 c!1140024) b!6284759))

(assert (= (and d!1972580 (not c!1140024)) b!6284760))

(assert (=> d!1972580 m!7105316))

(declare-fun m!7105712 () Bool)

(assert (=> b!6284759 m!7105712))

(assert (=> b!6284760 m!7105320))

(assert (=> b!6284760 m!7105320))

(declare-fun m!7105716 () Bool)

(assert (=> b!6284760 m!7105716))

(assert (=> b!6284760 m!7105324))

(assert (=> b!6284760 m!7105716))

(assert (=> b!6284760 m!7105324))

(declare-fun m!7105718 () Bool)

(assert (=> b!6284760 m!7105718))

(assert (=> b!6284128 d!1972580))

(declare-fun d!1972582 () Bool)

(declare-fun e!3821820 () Bool)

(assert (=> d!1972582 (= (matchZipper!2217 ((_ map or) lt!2355218 lt!2355231) (t!378477 s!2326)) e!3821820)))

(declare-fun res!2591880 () Bool)

(assert (=> d!1972582 (=> res!2591880 e!3821820)))

(assert (=> d!1972582 (= res!2591880 (matchZipper!2217 lt!2355218 (t!378477 s!2326)))))

(declare-fun lt!2355370 () Unit!158151)

(declare-fun choose!46664 ((InoxSet Context!11178) (InoxSet Context!11178) List!64915) Unit!158151)

(assert (=> d!1972582 (= lt!2355370 (choose!46664 lt!2355218 lt!2355231 (t!378477 s!2326)))))

(assert (=> d!1972582 (= (lemmaZipperConcatMatchesSameAsBothZippers!1036 lt!2355218 lt!2355231 (t!378477 s!2326)) lt!2355370)))

(declare-fun b!6284773 () Bool)

(assert (=> b!6284773 (= e!3821820 (matchZipper!2217 lt!2355231 (t!378477 s!2326)))))

(assert (= (and d!1972582 (not res!2591880)) b!6284773))

(declare-fun m!7105720 () Bool)

(assert (=> d!1972582 m!7105720))

(assert (=> d!1972582 m!7105108))

(declare-fun m!7105722 () Bool)

(assert (=> d!1972582 m!7105722))

(assert (=> b!6284773 m!7105076))

(assert (=> b!6284128 d!1972582))

(declare-fun d!1972590 () Bool)

(declare-fun lt!2355373 () Int)

(assert (=> d!1972590 (>= lt!2355373 0)))

(declare-fun e!3821823 () Int)

(assert (=> d!1972590 (= lt!2355373 e!3821823)))

(declare-fun c!1140027 () Bool)

(assert (=> d!1972590 (= c!1140027 ((_ is Cons!64792) lt!2355223))))

(assert (=> d!1972590 (= (zipperDepthTotal!358 lt!2355223) lt!2355373)))

(declare-fun b!6284778 () Bool)

(assert (=> b!6284778 (= e!3821823 (+ (contextDepthTotal!328 (h!71240 lt!2355223)) (zipperDepthTotal!358 (t!378478 lt!2355223))))))

(declare-fun b!6284779 () Bool)

(assert (=> b!6284779 (= e!3821823 0)))

(assert (= (and d!1972590 c!1140027) b!6284778))

(assert (= (and d!1972590 (not c!1140027)) b!6284779))

(declare-fun m!7105724 () Bool)

(assert (=> b!6284778 m!7105724))

(declare-fun m!7105726 () Bool)

(assert (=> b!6284778 m!7105726))

(assert (=> b!6284146 d!1972590))

(declare-fun d!1972592 () Bool)

(declare-fun lt!2355374 () Int)

(assert (=> d!1972592 (>= lt!2355374 0)))

(declare-fun e!3821824 () Int)

(assert (=> d!1972592 (= lt!2355374 e!3821824)))

(declare-fun c!1140028 () Bool)

(assert (=> d!1972592 (= c!1140028 ((_ is Cons!64792) zl!343))))

(assert (=> d!1972592 (= (zipperDepthTotal!358 zl!343) lt!2355374)))

(declare-fun b!6284780 () Bool)

(assert (=> b!6284780 (= e!3821824 (+ (contextDepthTotal!328 (h!71240 zl!343)) (zipperDepthTotal!358 (t!378478 zl!343))))))

(declare-fun b!6284781 () Bool)

(assert (=> b!6284781 (= e!3821824 0)))

(assert (= (and d!1972592 c!1140028) b!6284780))

(assert (= (and d!1972592 (not c!1140028)) b!6284781))

(assert (=> b!6284780 m!7105140))

(declare-fun m!7105728 () Bool)

(assert (=> b!6284780 m!7105728))

(assert (=> b!6284146 d!1972592))

(declare-fun b!6284782 () Bool)

(declare-fun e!3821828 () Bool)

(assert (=> b!6284782 (= e!3821828 (matchR!8388 lt!2355217 s!2326))))

(declare-fun b!6284783 () Bool)

(declare-fun e!3821827 () Bool)

(declare-fun lt!2355375 () Option!16096)

(assert (=> b!6284783 (= e!3821827 (not (isDefined!12799 lt!2355375)))))

(declare-fun b!6284785 () Bool)

(declare-fun res!2591885 () Bool)

(declare-fun e!3821829 () Bool)

(assert (=> b!6284785 (=> (not res!2591885) (not e!3821829))))

(assert (=> b!6284785 (= res!2591885 (matchR!8388 lt!2355217 (_2!36487 (get!22395 lt!2355375))))))

(declare-fun b!6284786 () Bool)

(declare-fun e!3821826 () Option!16096)

(assert (=> b!6284786 (= e!3821826 (Some!16095 (tuple2!66369 Nil!64791 s!2326)))))

(declare-fun b!6284787 () Bool)

(declare-fun e!3821825 () Option!16096)

(assert (=> b!6284787 (= e!3821826 e!3821825)))

(declare-fun c!1140030 () Bool)

(assert (=> b!6284787 (= c!1140030 ((_ is Nil!64791) s!2326))))

(declare-fun b!6284788 () Bool)

(declare-fun res!2591883 () Bool)

(assert (=> b!6284788 (=> (not res!2591883) (not e!3821829))))

(assert (=> b!6284788 (= res!2591883 (matchR!8388 (regOne!32922 (regOne!32922 r!7292)) (_1!36487 (get!22395 lt!2355375))))))

(declare-fun b!6284789 () Bool)

(assert (=> b!6284789 (= e!3821829 (= (++!14277 (_1!36487 (get!22395 lt!2355375)) (_2!36487 (get!22395 lt!2355375))) s!2326))))

(declare-fun b!6284790 () Bool)

(declare-fun lt!2355377 () Unit!158151)

(declare-fun lt!2355376 () Unit!158151)

(assert (=> b!6284790 (= lt!2355377 lt!2355376)))

(assert (=> b!6284790 (= (++!14277 (++!14277 Nil!64791 (Cons!64791 (h!71239 s!2326) Nil!64791)) (t!378477 s!2326)) s!2326)))

(assert (=> b!6284790 (= lt!2355376 (lemmaMoveElementToOtherListKeepsConcatEq!2372 Nil!64791 (h!71239 s!2326) (t!378477 s!2326) s!2326))))

(assert (=> b!6284790 (= e!3821825 (findConcatSeparation!2510 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 (++!14277 Nil!64791 (Cons!64791 (h!71239 s!2326) Nil!64791)) (t!378477 s!2326) s!2326))))

(declare-fun b!6284784 () Bool)

(assert (=> b!6284784 (= e!3821825 None!16095)))

(declare-fun d!1972594 () Bool)

(assert (=> d!1972594 e!3821827))

(declare-fun res!2591882 () Bool)

(assert (=> d!1972594 (=> res!2591882 e!3821827)))

(assert (=> d!1972594 (= res!2591882 e!3821829)))

(declare-fun res!2591884 () Bool)

(assert (=> d!1972594 (=> (not res!2591884) (not e!3821829))))

(assert (=> d!1972594 (= res!2591884 (isDefined!12799 lt!2355375))))

(assert (=> d!1972594 (= lt!2355375 e!3821826)))

(declare-fun c!1140029 () Bool)

(assert (=> d!1972594 (= c!1140029 e!3821828)))

(declare-fun res!2591881 () Bool)

(assert (=> d!1972594 (=> (not res!2591881) (not e!3821828))))

(assert (=> d!1972594 (= res!2591881 (matchR!8388 (regOne!32922 (regOne!32922 r!7292)) Nil!64791))))

(assert (=> d!1972594 (validRegex!7941 (regOne!32922 (regOne!32922 r!7292)))))

(assert (=> d!1972594 (= (findConcatSeparation!2510 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 Nil!64791 s!2326 s!2326) lt!2355375)))

(assert (= (and d!1972594 res!2591881) b!6284782))

(assert (= (and d!1972594 c!1140029) b!6284786))

(assert (= (and d!1972594 (not c!1140029)) b!6284787))

(assert (= (and b!6284787 c!1140030) b!6284784))

(assert (= (and b!6284787 (not c!1140030)) b!6284790))

(assert (= (and d!1972594 res!2591884) b!6284788))

(assert (= (and b!6284788 res!2591883) b!6284785))

(assert (= (and b!6284785 res!2591885) b!6284789))

(assert (= (and d!1972594 (not res!2591882)) b!6284783))

(assert (=> b!6284790 m!7105434))

(assert (=> b!6284790 m!7105434))

(assert (=> b!6284790 m!7105444))

(assert (=> b!6284790 m!7105446))

(assert (=> b!6284790 m!7105434))

(declare-fun m!7105730 () Bool)

(assert (=> b!6284790 m!7105730))

(declare-fun m!7105732 () Bool)

(assert (=> b!6284783 m!7105732))

(assert (=> d!1972594 m!7105732))

(declare-fun m!7105734 () Bool)

(assert (=> d!1972594 m!7105734))

(declare-fun m!7105736 () Bool)

(assert (=> d!1972594 m!7105736))

(assert (=> b!6284782 m!7105070))

(declare-fun m!7105738 () Bool)

(assert (=> b!6284785 m!7105738))

(declare-fun m!7105740 () Bool)

(assert (=> b!6284785 m!7105740))

(assert (=> b!6284789 m!7105738))

(declare-fun m!7105742 () Bool)

(assert (=> b!6284789 m!7105742))

(assert (=> b!6284788 m!7105738))

(declare-fun m!7105744 () Bool)

(assert (=> b!6284788 m!7105744))

(assert (=> b!6284147 d!1972594))

(declare-fun b!6284819 () Bool)

(declare-fun e!3821846 () Bool)

(assert (=> b!6284819 (= e!3821846 (nullable!6198 lt!2355217))))

(declare-fun b!6284820 () Bool)

(declare-fun res!2591909 () Bool)

(declare-fun e!3821848 () Bool)

(assert (=> b!6284820 (=> res!2591909 e!3821848)))

(assert (=> b!6284820 (= res!2591909 (not (isEmpty!36840 (tail!11994 s!2326))))))

(declare-fun b!6284821 () Bool)

(declare-fun e!3821847 () Bool)

(assert (=> b!6284821 (= e!3821847 (= (head!12909 s!2326) (c!1139836 lt!2355217)))))

(declare-fun b!6284822 () Bool)

(declare-fun e!3821849 () Bool)

(declare-fun lt!2355380 () Bool)

(declare-fun call!532064 () Bool)

(assert (=> b!6284822 (= e!3821849 (= lt!2355380 call!532064))))

(declare-fun bm!532059 () Bool)

(assert (=> bm!532059 (= call!532064 (isEmpty!36840 s!2326))))

(declare-fun b!6284823 () Bool)

(declare-fun res!2591908 () Bool)

(assert (=> b!6284823 (=> (not res!2591908) (not e!3821847))))

(assert (=> b!6284823 (= res!2591908 (not call!532064))))

(declare-fun b!6284824 () Bool)

(declare-fun res!2591903 () Bool)

(declare-fun e!3821850 () Bool)

(assert (=> b!6284824 (=> res!2591903 e!3821850)))

(assert (=> b!6284824 (= res!2591903 e!3821847)))

(declare-fun res!2591902 () Bool)

(assert (=> b!6284824 (=> (not res!2591902) (not e!3821847))))

(assert (=> b!6284824 (= res!2591902 lt!2355380)))

(declare-fun b!6284825 () Bool)

(declare-fun e!3821844 () Bool)

(assert (=> b!6284825 (= e!3821844 e!3821848)))

(declare-fun res!2591904 () Bool)

(assert (=> b!6284825 (=> res!2591904 e!3821848)))

(assert (=> b!6284825 (= res!2591904 call!532064)))

(declare-fun b!6284826 () Bool)

(declare-fun e!3821845 () Bool)

(assert (=> b!6284826 (= e!3821849 e!3821845)))

(declare-fun c!1140038 () Bool)

(assert (=> b!6284826 (= c!1140038 ((_ is EmptyLang!16205) lt!2355217))))

(declare-fun b!6284827 () Bool)

(declare-fun res!2591906 () Bool)

(assert (=> b!6284827 (=> (not res!2591906) (not e!3821847))))

(assert (=> b!6284827 (= res!2591906 (isEmpty!36840 (tail!11994 s!2326)))))

(declare-fun b!6284828 () Bool)

(declare-fun derivativeStep!4914 (Regex!16205 C!32680) Regex!16205)

(assert (=> b!6284828 (= e!3821846 (matchR!8388 (derivativeStep!4914 lt!2355217 (head!12909 s!2326)) (tail!11994 s!2326)))))

(declare-fun b!6284829 () Bool)

(assert (=> b!6284829 (= e!3821845 (not lt!2355380))))

(declare-fun b!6284830 () Bool)

(assert (=> b!6284830 (= e!3821848 (not (= (head!12909 s!2326) (c!1139836 lt!2355217))))))

(declare-fun b!6284831 () Bool)

(assert (=> b!6284831 (= e!3821850 e!3821844)))

(declare-fun res!2591907 () Bool)

(assert (=> b!6284831 (=> (not res!2591907) (not e!3821844))))

(assert (=> b!6284831 (= res!2591907 (not lt!2355380))))

(declare-fun b!6284832 () Bool)

(declare-fun res!2591905 () Bool)

(assert (=> b!6284832 (=> res!2591905 e!3821850)))

(assert (=> b!6284832 (= res!2591905 (not ((_ is ElementMatch!16205) lt!2355217)))))

(assert (=> b!6284832 (= e!3821845 e!3821850)))

(declare-fun d!1972596 () Bool)

(assert (=> d!1972596 e!3821849))

(declare-fun c!1140037 () Bool)

(assert (=> d!1972596 (= c!1140037 ((_ is EmptyExpr!16205) lt!2355217))))

(assert (=> d!1972596 (= lt!2355380 e!3821846)))

(declare-fun c!1140039 () Bool)

(assert (=> d!1972596 (= c!1140039 (isEmpty!36840 s!2326))))

(assert (=> d!1972596 (validRegex!7941 lt!2355217)))

(assert (=> d!1972596 (= (matchR!8388 lt!2355217 s!2326) lt!2355380)))

(assert (= (and d!1972596 c!1140039) b!6284819))

(assert (= (and d!1972596 (not c!1140039)) b!6284828))

(assert (= (and d!1972596 c!1140037) b!6284822))

(assert (= (and d!1972596 (not c!1140037)) b!6284826))

(assert (= (and b!6284826 c!1140038) b!6284829))

(assert (= (and b!6284826 (not c!1140038)) b!6284832))

(assert (= (and b!6284832 (not res!2591905)) b!6284824))

(assert (= (and b!6284824 res!2591902) b!6284823))

(assert (= (and b!6284823 res!2591908) b!6284827))

(assert (= (and b!6284827 res!2591906) b!6284821))

(assert (= (and b!6284824 (not res!2591903)) b!6284831))

(assert (= (and b!6284831 res!2591907) b!6284825))

(assert (= (and b!6284825 (not res!2591904)) b!6284820))

(assert (= (and b!6284820 (not res!2591909)) b!6284830))

(assert (= (or b!6284822 b!6284823 b!6284825) bm!532059))

(declare-fun m!7105746 () Bool)

(assert (=> b!6284819 m!7105746))

(declare-fun m!7105748 () Bool)

(assert (=> b!6284821 m!7105748))

(declare-fun m!7105750 () Bool)

(assert (=> b!6284827 m!7105750))

(assert (=> b!6284827 m!7105750))

(declare-fun m!7105752 () Bool)

(assert (=> b!6284827 m!7105752))

(declare-fun m!7105754 () Bool)

(assert (=> d!1972596 m!7105754))

(declare-fun m!7105756 () Bool)

(assert (=> d!1972596 m!7105756))

(assert (=> b!6284820 m!7105750))

(assert (=> b!6284820 m!7105750))

(assert (=> b!6284820 m!7105752))

(assert (=> b!6284828 m!7105748))

(assert (=> b!6284828 m!7105748))

(declare-fun m!7105758 () Bool)

(assert (=> b!6284828 m!7105758))

(assert (=> b!6284828 m!7105750))

(assert (=> b!6284828 m!7105758))

(assert (=> b!6284828 m!7105750))

(declare-fun m!7105760 () Bool)

(assert (=> b!6284828 m!7105760))

(assert (=> bm!532059 m!7105754))

(assert (=> b!6284830 m!7105748))

(assert (=> b!6284147 d!1972596))

(declare-fun b!6284853 () Bool)

(declare-fun e!3821865 () Bool)

(declare-fun e!3821863 () Bool)

(assert (=> b!6284853 (= e!3821865 e!3821863)))

(declare-fun c!1140051 () Bool)

(assert (=> b!6284853 (= c!1140051 (isEmpty!36837 (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6284854 () Bool)

(declare-fun e!3821868 () Regex!16205)

(assert (=> b!6284854 (= e!3821868 (Concat!25050 (h!71238 (t!378476 (exprs!6089 (h!71240 zl!343)))) (generalisedConcat!1802 (t!378476 (t!378476 (exprs!6089 (h!71240 zl!343)))))))))

(declare-fun b!6284855 () Bool)

(assert (=> b!6284855 (= e!3821868 EmptyExpr!16205)))

(declare-fun b!6284856 () Bool)

(declare-fun e!3821866 () Bool)

(assert (=> b!6284856 (= e!3821863 e!3821866)))

(declare-fun c!1140050 () Bool)

(declare-fun tail!11996 (List!64914) List!64914)

(assert (=> b!6284856 (= c!1140050 (isEmpty!36837 (tail!11996 (t!378476 (exprs!6089 (h!71240 zl!343))))))))

(declare-fun b!6284857 () Bool)

(declare-fun lt!2355383 () Regex!16205)

(declare-fun isEmptyExpr!1611 (Regex!16205) Bool)

(assert (=> b!6284857 (= e!3821863 (isEmptyExpr!1611 lt!2355383))))

(declare-fun d!1972598 () Bool)

(assert (=> d!1972598 e!3821865))

(declare-fun res!2591915 () Bool)

(assert (=> d!1972598 (=> (not res!2591915) (not e!3821865))))

(assert (=> d!1972598 (= res!2591915 (validRegex!7941 lt!2355383))))

(declare-fun e!3821867 () Regex!16205)

(assert (=> d!1972598 (= lt!2355383 e!3821867)))

(declare-fun c!1140048 () Bool)

(declare-fun e!3821864 () Bool)

(assert (=> d!1972598 (= c!1140048 e!3821864)))

(declare-fun res!2591914 () Bool)

(assert (=> d!1972598 (=> (not res!2591914) (not e!3821864))))

(assert (=> d!1972598 (= res!2591914 ((_ is Cons!64790) (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun lambda!344893 () Int)

(declare-fun forall!15348 (List!64914 Int) Bool)

(assert (=> d!1972598 (forall!15348 (t!378476 (exprs!6089 (h!71240 zl!343))) lambda!344893)))

(assert (=> d!1972598 (= (generalisedConcat!1802 (t!378476 (exprs!6089 (h!71240 zl!343)))) lt!2355383)))

(declare-fun b!6284858 () Bool)

(declare-fun isConcat!1134 (Regex!16205) Bool)

(assert (=> b!6284858 (= e!3821866 (isConcat!1134 lt!2355383))))

(declare-fun b!6284859 () Bool)

(assert (=> b!6284859 (= e!3821867 e!3821868)))

(declare-fun c!1140049 () Bool)

(assert (=> b!6284859 (= c!1140049 ((_ is Cons!64790) (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6284860 () Bool)

(declare-fun head!12911 (List!64914) Regex!16205)

(assert (=> b!6284860 (= e!3821866 (= lt!2355383 (head!12911 (t!378476 (exprs!6089 (h!71240 zl!343))))))))

(declare-fun b!6284861 () Bool)

(assert (=> b!6284861 (= e!3821864 (isEmpty!36837 (t!378476 (t!378476 (exprs!6089 (h!71240 zl!343))))))))

(declare-fun b!6284862 () Bool)

(assert (=> b!6284862 (= e!3821867 (h!71238 (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(assert (= (and d!1972598 res!2591914) b!6284861))

(assert (= (and d!1972598 c!1140048) b!6284862))

(assert (= (and d!1972598 (not c!1140048)) b!6284859))

(assert (= (and b!6284859 c!1140049) b!6284854))

(assert (= (and b!6284859 (not c!1140049)) b!6284855))

(assert (= (and d!1972598 res!2591915) b!6284853))

(assert (= (and b!6284853 c!1140051) b!6284857))

(assert (= (and b!6284853 (not c!1140051)) b!6284856))

(assert (= (and b!6284856 c!1140050) b!6284860))

(assert (= (and b!6284856 (not c!1140050)) b!6284858))

(declare-fun m!7105762 () Bool)

(assert (=> b!6284857 m!7105762))

(declare-fun m!7105764 () Bool)

(assert (=> b!6284858 m!7105764))

(declare-fun m!7105766 () Bool)

(assert (=> b!6284854 m!7105766))

(declare-fun m!7105768 () Bool)

(assert (=> b!6284860 m!7105768))

(declare-fun m!7105770 () Bool)

(assert (=> d!1972598 m!7105770))

(declare-fun m!7105772 () Bool)

(assert (=> d!1972598 m!7105772))

(declare-fun m!7105774 () Bool)

(assert (=> b!6284856 m!7105774))

(assert (=> b!6284856 m!7105774))

(declare-fun m!7105776 () Bool)

(assert (=> b!6284856 m!7105776))

(declare-fun m!7105778 () Bool)

(assert (=> b!6284861 m!7105778))

(assert (=> b!6284853 m!7105024))

(assert (=> b!6284147 d!1972598))

(declare-fun d!1972600 () Bool)

(assert (=> d!1972600 (= (isDefined!12799 (findConcatSeparation!2510 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 Nil!64791 s!2326 s!2326)) (not (isEmpty!36841 (findConcatSeparation!2510 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 Nil!64791 s!2326 s!2326))))))

(declare-fun bs!1570963 () Bool)

(assert (= bs!1570963 d!1972600))

(assert (=> bs!1570963 m!7105056))

(declare-fun m!7105780 () Bool)

(assert (=> bs!1570963 m!7105780))

(assert (=> b!6284147 d!1972600))

(declare-fun bs!1570964 () Bool)

(declare-fun d!1972602 () Bool)

(assert (= bs!1570964 (and d!1972602 b!6284148)))

(declare-fun lambda!344894 () Int)

(assert (=> bs!1570964 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344894 lambda!344811))))

(declare-fun bs!1570965 () Bool)

(assert (= bs!1570965 (and d!1972602 d!1972524)))

(assert (=> bs!1570965 (not (= lambda!344894 lambda!344872))))

(assert (=> bs!1570965 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344894 lambda!344870))))

(declare-fun bs!1570966 () Bool)

(assert (= bs!1570966 (and d!1972602 d!1972514)))

(assert (=> bs!1570966 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344894 lambda!344856))))

(declare-fun bs!1570967 () Bool)

(assert (= bs!1570967 (and d!1972602 b!6284147)))

(assert (=> bs!1570967 (= lambda!344894 lambda!344814)))

(assert (=> bs!1570967 (not (= lambda!344894 lambda!344815))))

(assert (=> bs!1570964 (not (= lambda!344894 lambda!344812))))

(assert (=> d!1972602 true))

(assert (=> d!1972602 true))

(assert (=> d!1972602 true))

(assert (=> d!1972602 (= (isDefined!12799 (findConcatSeparation!2510 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 Nil!64791 s!2326 s!2326)) (Exists!3275 lambda!344894))))

(declare-fun lt!2355384 () Unit!158151)

(assert (=> d!1972602 (= lt!2355384 (choose!46662 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 s!2326))))

(assert (=> d!1972602 (validRegex!7941 (regOne!32922 (regOne!32922 r!7292)))))

(assert (=> d!1972602 (= (lemmaFindConcatSeparationEquivalentToExists!2274 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 s!2326) lt!2355384)))

(declare-fun bs!1570968 () Bool)

(assert (= bs!1570968 d!1972602))

(assert (=> bs!1570968 m!7105736))

(assert (=> bs!1570968 m!7105056))

(assert (=> bs!1570968 m!7105056))

(assert (=> bs!1570968 m!7105058))

(declare-fun m!7105782 () Bool)

(assert (=> bs!1570968 m!7105782))

(declare-fun m!7105784 () Bool)

(assert (=> bs!1570968 m!7105784))

(assert (=> b!6284147 d!1972602))

(declare-fun d!1972604 () Bool)

(declare-fun c!1140052 () Bool)

(assert (=> d!1972604 (= c!1140052 (isEmpty!36840 s!2326))))

(declare-fun e!3821869 () Bool)

(assert (=> d!1972604 (= (matchZipper!2217 lt!2355224 s!2326) e!3821869)))

(declare-fun b!6284863 () Bool)

(assert (=> b!6284863 (= e!3821869 (nullableZipper!1975 lt!2355224))))

(declare-fun b!6284864 () Bool)

(assert (=> b!6284864 (= e!3821869 (matchZipper!2217 (derivationStepZipper!2171 lt!2355224 (head!12909 s!2326)) (tail!11994 s!2326)))))

(assert (= (and d!1972604 c!1140052) b!6284863))

(assert (= (and d!1972604 (not c!1140052)) b!6284864))

(assert (=> d!1972604 m!7105754))

(declare-fun m!7105786 () Bool)

(assert (=> b!6284863 m!7105786))

(assert (=> b!6284864 m!7105748))

(assert (=> b!6284864 m!7105748))

(declare-fun m!7105788 () Bool)

(assert (=> b!6284864 m!7105788))

(assert (=> b!6284864 m!7105750))

(assert (=> b!6284864 m!7105788))

(assert (=> b!6284864 m!7105750))

(declare-fun m!7105790 () Bool)

(assert (=> b!6284864 m!7105790))

(assert (=> b!6284147 d!1972604))

(declare-fun d!1972606 () Bool)

(assert (=> d!1972606 (= (Exists!3275 lambda!344815) (choose!46661 lambda!344815))))

(declare-fun bs!1570969 () Bool)

(assert (= bs!1570969 d!1972606))

(declare-fun m!7105792 () Bool)

(assert (=> bs!1570969 m!7105792))

(assert (=> b!6284147 d!1972606))

(declare-fun d!1972608 () Bool)

(assert (=> d!1972608 (= (matchR!8388 lt!2355226 s!2326) (matchZipper!2217 lt!2355224 s!2326))))

(declare-fun lt!2355387 () Unit!158151)

(declare-fun choose!46668 ((InoxSet Context!11178) List!64916 Regex!16205 List!64915) Unit!158151)

(assert (=> d!1972608 (= lt!2355387 (choose!46668 lt!2355224 lt!2355223 lt!2355226 s!2326))))

(assert (=> d!1972608 (validRegex!7941 lt!2355226)))

(assert (=> d!1972608 (= (theoremZipperRegexEquiv!775 lt!2355224 lt!2355223 lt!2355226 s!2326) lt!2355387)))

(declare-fun bs!1570970 () Bool)

(assert (= bs!1570970 d!1972608))

(assert (=> bs!1570970 m!7105066))

(assert (=> bs!1570970 m!7105052))

(declare-fun m!7105794 () Bool)

(assert (=> bs!1570970 m!7105794))

(declare-fun m!7105796 () Bool)

(assert (=> bs!1570970 m!7105796))

(assert (=> b!6284147 d!1972608))

(declare-fun bs!1570971 () Bool)

(declare-fun d!1972610 () Bool)

(assert (= bs!1570971 (and d!1972610 d!1972598)))

(declare-fun lambda!344895 () Int)

(assert (=> bs!1570971 (= lambda!344895 lambda!344893)))

(declare-fun b!6284865 () Bool)

(declare-fun e!3821872 () Bool)

(declare-fun e!3821870 () Bool)

(assert (=> b!6284865 (= e!3821872 e!3821870)))

(declare-fun c!1140056 () Bool)

(assert (=> b!6284865 (= c!1140056 (isEmpty!36837 lt!2355241))))

(declare-fun b!6284866 () Bool)

(declare-fun e!3821875 () Regex!16205)

(assert (=> b!6284866 (= e!3821875 (Concat!25050 (h!71238 lt!2355241) (generalisedConcat!1802 (t!378476 lt!2355241))))))

(declare-fun b!6284867 () Bool)

(assert (=> b!6284867 (= e!3821875 EmptyExpr!16205)))

(declare-fun b!6284868 () Bool)

(declare-fun e!3821873 () Bool)

(assert (=> b!6284868 (= e!3821870 e!3821873)))

(declare-fun c!1140055 () Bool)

(assert (=> b!6284868 (= c!1140055 (isEmpty!36837 (tail!11996 lt!2355241)))))

(declare-fun b!6284869 () Bool)

(declare-fun lt!2355388 () Regex!16205)

(assert (=> b!6284869 (= e!3821870 (isEmptyExpr!1611 lt!2355388))))

(assert (=> d!1972610 e!3821872))

(declare-fun res!2591917 () Bool)

(assert (=> d!1972610 (=> (not res!2591917) (not e!3821872))))

(assert (=> d!1972610 (= res!2591917 (validRegex!7941 lt!2355388))))

(declare-fun e!3821874 () Regex!16205)

(assert (=> d!1972610 (= lt!2355388 e!3821874)))

(declare-fun c!1140053 () Bool)

(declare-fun e!3821871 () Bool)

(assert (=> d!1972610 (= c!1140053 e!3821871)))

(declare-fun res!2591916 () Bool)

(assert (=> d!1972610 (=> (not res!2591916) (not e!3821871))))

(assert (=> d!1972610 (= res!2591916 ((_ is Cons!64790) lt!2355241))))

(assert (=> d!1972610 (forall!15348 lt!2355241 lambda!344895)))

(assert (=> d!1972610 (= (generalisedConcat!1802 lt!2355241) lt!2355388)))

(declare-fun b!6284870 () Bool)

(assert (=> b!6284870 (= e!3821873 (isConcat!1134 lt!2355388))))

(declare-fun b!6284871 () Bool)

(assert (=> b!6284871 (= e!3821874 e!3821875)))

(declare-fun c!1140054 () Bool)

(assert (=> b!6284871 (= c!1140054 ((_ is Cons!64790) lt!2355241))))

(declare-fun b!6284872 () Bool)

(assert (=> b!6284872 (= e!3821873 (= lt!2355388 (head!12911 lt!2355241)))))

(declare-fun b!6284873 () Bool)

(assert (=> b!6284873 (= e!3821871 (isEmpty!36837 (t!378476 lt!2355241)))))

(declare-fun b!6284874 () Bool)

(assert (=> b!6284874 (= e!3821874 (h!71238 lt!2355241))))

(assert (= (and d!1972610 res!2591916) b!6284873))

(assert (= (and d!1972610 c!1140053) b!6284874))

(assert (= (and d!1972610 (not c!1140053)) b!6284871))

(assert (= (and b!6284871 c!1140054) b!6284866))

(assert (= (and b!6284871 (not c!1140054)) b!6284867))

(assert (= (and d!1972610 res!2591917) b!6284865))

(assert (= (and b!6284865 c!1140056) b!6284869))

(assert (= (and b!6284865 (not c!1140056)) b!6284868))

(assert (= (and b!6284868 c!1140055) b!6284872))

(assert (= (and b!6284868 (not c!1140055)) b!6284870))

(declare-fun m!7105798 () Bool)

(assert (=> b!6284869 m!7105798))

(declare-fun m!7105800 () Bool)

(assert (=> b!6284870 m!7105800))

(declare-fun m!7105802 () Bool)

(assert (=> b!6284866 m!7105802))

(declare-fun m!7105804 () Bool)

(assert (=> b!6284872 m!7105804))

(declare-fun m!7105806 () Bool)

(assert (=> d!1972610 m!7105806))

(declare-fun m!7105808 () Bool)

(assert (=> d!1972610 m!7105808))

(declare-fun m!7105810 () Bool)

(assert (=> b!6284868 m!7105810))

(assert (=> b!6284868 m!7105810))

(declare-fun m!7105812 () Bool)

(assert (=> b!6284868 m!7105812))

(declare-fun m!7105814 () Bool)

(assert (=> b!6284873 m!7105814))

(declare-fun m!7105816 () Bool)

(assert (=> b!6284865 m!7105816))

(assert (=> b!6284147 d!1972610))

(declare-fun d!1972612 () Bool)

(assert (=> d!1972612 (= (matchR!8388 lt!2355217 s!2326) (matchRSpec!3306 lt!2355217 s!2326))))

(declare-fun lt!2355391 () Unit!158151)

(declare-fun choose!46669 (Regex!16205 List!64915) Unit!158151)

(assert (=> d!1972612 (= lt!2355391 (choose!46669 lt!2355217 s!2326))))

(assert (=> d!1972612 (validRegex!7941 lt!2355217)))

(assert (=> d!1972612 (= (mainMatchTheorem!3306 lt!2355217 s!2326) lt!2355391)))

(declare-fun bs!1570972 () Bool)

(assert (= bs!1570972 d!1972612))

(assert (=> bs!1570972 m!7105070))

(assert (=> bs!1570972 m!7105044))

(declare-fun m!7105818 () Bool)

(assert (=> bs!1570972 m!7105818))

(assert (=> bs!1570972 m!7105756))

(assert (=> b!6284147 d!1972612))

(declare-fun bs!1570973 () Bool)

(declare-fun d!1972614 () Bool)

(assert (= bs!1570973 (and d!1972614 b!6284148)))

(declare-fun lambda!344896 () Int)

(assert (=> bs!1570973 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344896 lambda!344811))))

(declare-fun bs!1570974 () Bool)

(assert (= bs!1570974 (and d!1972614 d!1972602)))

(assert (=> bs!1570974 (= lambda!344896 lambda!344894)))

(declare-fun bs!1570975 () Bool)

(assert (= bs!1570975 (and d!1972614 d!1972524)))

(assert (=> bs!1570975 (not (= lambda!344896 lambda!344872))))

(assert (=> bs!1570975 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344896 lambda!344870))))

(declare-fun bs!1570976 () Bool)

(assert (= bs!1570976 (and d!1972614 d!1972514)))

(assert (=> bs!1570976 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344896 lambda!344856))))

(declare-fun bs!1570977 () Bool)

(assert (= bs!1570977 (and d!1972614 b!6284147)))

(assert (=> bs!1570977 (= lambda!344896 lambda!344814)))

(assert (=> bs!1570977 (not (= lambda!344896 lambda!344815))))

(assert (=> bs!1570973 (not (= lambda!344896 lambda!344812))))

(assert (=> d!1972614 true))

(assert (=> d!1972614 true))

(assert (=> d!1972614 true))

(declare-fun bs!1570978 () Bool)

(assert (= bs!1570978 d!1972614))

(declare-fun lambda!344897 () Int)

(assert (=> bs!1570978 (not (= lambda!344897 lambda!344896))))

(assert (=> bs!1570973 (not (= lambda!344897 lambda!344811))))

(assert (=> bs!1570974 (not (= lambda!344897 lambda!344894))))

(assert (=> bs!1570975 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344897 lambda!344872))))

(assert (=> bs!1570975 (not (= lambda!344897 lambda!344870))))

(assert (=> bs!1570976 (not (= lambda!344897 lambda!344856))))

(assert (=> bs!1570977 (not (= lambda!344897 lambda!344814))))

(assert (=> bs!1570977 (= lambda!344897 lambda!344815)))

(assert (=> bs!1570973 (= (and (= (regOne!32922 (regOne!32922 r!7292)) (regOne!32922 r!7292)) (= lt!2355217 (regTwo!32922 r!7292))) (= lambda!344897 lambda!344812))))

(assert (=> d!1972614 true))

(assert (=> d!1972614 true))

(assert (=> d!1972614 true))

(assert (=> d!1972614 (= (Exists!3275 lambda!344896) (Exists!3275 lambda!344897))))

(declare-fun lt!2355392 () Unit!158151)

(assert (=> d!1972614 (= lt!2355392 (choose!46663 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 s!2326))))

(assert (=> d!1972614 (validRegex!7941 (regOne!32922 (regOne!32922 r!7292)))))

(assert (=> d!1972614 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1812 (regOne!32922 (regOne!32922 r!7292)) lt!2355217 s!2326) lt!2355392)))

(declare-fun m!7105820 () Bool)

(assert (=> bs!1570978 m!7105820))

(declare-fun m!7105822 () Bool)

(assert (=> bs!1570978 m!7105822))

(declare-fun m!7105824 () Bool)

(assert (=> bs!1570978 m!7105824))

(assert (=> bs!1570978 m!7105736))

(assert (=> b!6284147 d!1972614))

(declare-fun d!1972616 () Bool)

(assert (=> d!1972616 (= (matchR!8388 lt!2355217 s!2326) (matchZipper!2217 lt!2355240 s!2326))))

(declare-fun lt!2355393 () Unit!158151)

(assert (=> d!1972616 (= lt!2355393 (choose!46668 lt!2355240 (Cons!64792 lt!2355213 Nil!64792) lt!2355217 s!2326))))

(assert (=> d!1972616 (validRegex!7941 lt!2355217)))

(assert (=> d!1972616 (= (theoremZipperRegexEquiv!775 lt!2355240 (Cons!64792 lt!2355213 Nil!64792) lt!2355217 s!2326) lt!2355393)))

(declare-fun bs!1570979 () Bool)

(assert (= bs!1570979 d!1972616))

(assert (=> bs!1570979 m!7105070))

(assert (=> bs!1570979 m!7105050))

(declare-fun m!7105826 () Bool)

(assert (=> bs!1570979 m!7105826))

(assert (=> bs!1570979 m!7105756))

(assert (=> b!6284147 d!1972616))

(declare-fun bs!1570980 () Bool)

(declare-fun b!6284915 () Bool)

(assert (= bs!1570980 (and b!6284915 d!1972614)))

(declare-fun lambda!344902 () Int)

(assert (=> bs!1570980 (not (= lambda!344902 lambda!344896))))

(assert (=> bs!1570980 (not (= lambda!344902 lambda!344897))))

(declare-fun bs!1570981 () Bool)

(assert (= bs!1570981 (and b!6284915 b!6284148)))

(assert (=> bs!1570981 (not (= lambda!344902 lambda!344811))))

(declare-fun bs!1570982 () Bool)

(assert (= bs!1570982 (and b!6284915 d!1972602)))

(assert (=> bs!1570982 (not (= lambda!344902 lambda!344894))))

(declare-fun bs!1570983 () Bool)

(assert (= bs!1570983 (and b!6284915 d!1972524)))

(assert (=> bs!1570983 (not (= lambda!344902 lambda!344872))))

(assert (=> bs!1570983 (not (= lambda!344902 lambda!344870))))

(declare-fun bs!1570984 () Bool)

(assert (= bs!1570984 (and b!6284915 d!1972514)))

(assert (=> bs!1570984 (not (= lambda!344902 lambda!344856))))

(declare-fun bs!1570985 () Bool)

(assert (= bs!1570985 (and b!6284915 b!6284147)))

(assert (=> bs!1570985 (not (= lambda!344902 lambda!344814))))

(assert (=> bs!1570985 (not (= lambda!344902 lambda!344815))))

(assert (=> bs!1570981 (not (= lambda!344902 lambda!344812))))

(assert (=> b!6284915 true))

(assert (=> b!6284915 true))

(declare-fun bs!1570986 () Bool)

(declare-fun b!6284912 () Bool)

(assert (= bs!1570986 (and b!6284912 d!1972614)))

(declare-fun lambda!344903 () Int)

(assert (=> bs!1570986 (not (= lambda!344903 lambda!344896))))

(assert (=> bs!1570986 (= (and (= (regOne!32922 lt!2355226) (regOne!32922 (regOne!32922 r!7292))) (= (regTwo!32922 lt!2355226) lt!2355217)) (= lambda!344903 lambda!344897))))

(declare-fun bs!1570987 () Bool)

(assert (= bs!1570987 (and b!6284912 b!6284915)))

(assert (=> bs!1570987 (not (= lambda!344903 lambda!344902))))

(declare-fun bs!1570988 () Bool)

(assert (= bs!1570988 (and b!6284912 b!6284148)))

(assert (=> bs!1570988 (not (= lambda!344903 lambda!344811))))

(declare-fun bs!1570989 () Bool)

(assert (= bs!1570989 (and b!6284912 d!1972602)))

(assert (=> bs!1570989 (not (= lambda!344903 lambda!344894))))

(declare-fun bs!1570990 () Bool)

(assert (= bs!1570990 (and b!6284912 d!1972524)))

(assert (=> bs!1570990 (= (and (= (regOne!32922 lt!2355226) (regOne!32922 r!7292)) (= (regTwo!32922 lt!2355226) (regTwo!32922 r!7292))) (= lambda!344903 lambda!344872))))

(assert (=> bs!1570990 (not (= lambda!344903 lambda!344870))))

(declare-fun bs!1570991 () Bool)

(assert (= bs!1570991 (and b!6284912 d!1972514)))

(assert (=> bs!1570991 (not (= lambda!344903 lambda!344856))))

(declare-fun bs!1570992 () Bool)

(assert (= bs!1570992 (and b!6284912 b!6284147)))

(assert (=> bs!1570992 (not (= lambda!344903 lambda!344814))))

(assert (=> bs!1570992 (= (and (= (regOne!32922 lt!2355226) (regOne!32922 (regOne!32922 r!7292))) (= (regTwo!32922 lt!2355226) lt!2355217)) (= lambda!344903 lambda!344815))))

(assert (=> bs!1570988 (= (and (= (regOne!32922 lt!2355226) (regOne!32922 r!7292)) (= (regTwo!32922 lt!2355226) (regTwo!32922 r!7292))) (= lambda!344903 lambda!344812))))

(assert (=> b!6284912 true))

(assert (=> b!6284912 true))

(declare-fun b!6284907 () Bool)

(declare-fun e!3821898 () Bool)

(assert (=> b!6284907 (= e!3821898 (= s!2326 (Cons!64791 (c!1139836 lt!2355226) Nil!64791)))))

(declare-fun bm!532064 () Bool)

(declare-fun call!532070 () Bool)

(assert (=> bm!532064 (= call!532070 (isEmpty!36840 s!2326))))

(declare-fun b!6284908 () Bool)

(declare-fun e!3821894 () Bool)

(declare-fun e!3821897 () Bool)

(assert (=> b!6284908 (= e!3821894 e!3821897)))

(declare-fun res!2591936 () Bool)

(assert (=> b!6284908 (= res!2591936 (matchRSpec!3306 (regOne!32923 lt!2355226) s!2326))))

(assert (=> b!6284908 (=> res!2591936 e!3821897)))

(declare-fun b!6284909 () Bool)

(declare-fun e!3821896 () Bool)

(assert (=> b!6284909 (= e!3821894 e!3821896)))

(declare-fun c!1140068 () Bool)

(assert (=> b!6284909 (= c!1140068 ((_ is Star!16205) lt!2355226))))

(declare-fun b!6284910 () Bool)

(declare-fun e!3821899 () Bool)

(assert (=> b!6284910 (= e!3821899 call!532070)))

(declare-fun b!6284911 () Bool)

(assert (=> b!6284911 (= e!3821897 (matchRSpec!3306 (regTwo!32923 lt!2355226) s!2326))))

(declare-fun call!532069 () Bool)

(assert (=> b!6284912 (= e!3821896 call!532069)))

(declare-fun b!6284913 () Bool)

(declare-fun e!3821895 () Bool)

(assert (=> b!6284913 (= e!3821899 e!3821895)))

(declare-fun res!2591934 () Bool)

(assert (=> b!6284913 (= res!2591934 (not ((_ is EmptyLang!16205) lt!2355226)))))

(assert (=> b!6284913 (=> (not res!2591934) (not e!3821895))))

(declare-fun b!6284914 () Bool)

(declare-fun c!1140065 () Bool)

(assert (=> b!6284914 (= c!1140065 ((_ is ElementMatch!16205) lt!2355226))))

(assert (=> b!6284914 (= e!3821895 e!3821898)))

(declare-fun d!1972618 () Bool)

(declare-fun c!1140066 () Bool)

(assert (=> d!1972618 (= c!1140066 ((_ is EmptyExpr!16205) lt!2355226))))

(assert (=> d!1972618 (= (matchRSpec!3306 lt!2355226 s!2326) e!3821899)))

(declare-fun e!3821900 () Bool)

(assert (=> b!6284915 (= e!3821900 call!532069)))

(declare-fun b!6284916 () Bool)

(declare-fun res!2591935 () Bool)

(assert (=> b!6284916 (=> res!2591935 e!3821900)))

(assert (=> b!6284916 (= res!2591935 call!532070)))

(assert (=> b!6284916 (= e!3821896 e!3821900)))

(declare-fun bm!532065 () Bool)

(assert (=> bm!532065 (= call!532069 (Exists!3275 (ite c!1140068 lambda!344902 lambda!344903)))))

(declare-fun b!6284917 () Bool)

(declare-fun c!1140067 () Bool)

(assert (=> b!6284917 (= c!1140067 ((_ is Union!16205) lt!2355226))))

(assert (=> b!6284917 (= e!3821898 e!3821894)))

(assert (= (and d!1972618 c!1140066) b!6284910))

(assert (= (and d!1972618 (not c!1140066)) b!6284913))

(assert (= (and b!6284913 res!2591934) b!6284914))

(assert (= (and b!6284914 c!1140065) b!6284907))

(assert (= (and b!6284914 (not c!1140065)) b!6284917))

(assert (= (and b!6284917 c!1140067) b!6284908))

(assert (= (and b!6284917 (not c!1140067)) b!6284909))

(assert (= (and b!6284908 (not res!2591936)) b!6284911))

(assert (= (and b!6284909 c!1140068) b!6284916))

(assert (= (and b!6284909 (not c!1140068)) b!6284912))

(assert (= (and b!6284916 (not res!2591935)) b!6284915))

(assert (= (or b!6284915 b!6284912) bm!532065))

(assert (= (or b!6284910 b!6284916) bm!532064))

(assert (=> bm!532064 m!7105754))

(declare-fun m!7105828 () Bool)

(assert (=> b!6284908 m!7105828))

(declare-fun m!7105830 () Bool)

(assert (=> b!6284911 m!7105830))

(declare-fun m!7105832 () Bool)

(assert (=> bm!532065 m!7105832))

(assert (=> b!6284147 d!1972618))

(declare-fun b!6284918 () Bool)

(declare-fun e!3821903 () Bool)

(assert (=> b!6284918 (= e!3821903 (nullable!6198 lt!2355226))))

(declare-fun b!6284919 () Bool)

(declare-fun res!2591944 () Bool)

(declare-fun e!3821905 () Bool)

(assert (=> b!6284919 (=> res!2591944 e!3821905)))

(assert (=> b!6284919 (= res!2591944 (not (isEmpty!36840 (tail!11994 s!2326))))))

(declare-fun b!6284920 () Bool)

(declare-fun e!3821904 () Bool)

(assert (=> b!6284920 (= e!3821904 (= (head!12909 s!2326) (c!1139836 lt!2355226)))))

(declare-fun b!6284921 () Bool)

(declare-fun e!3821906 () Bool)

(declare-fun lt!2355394 () Bool)

(declare-fun call!532071 () Bool)

(assert (=> b!6284921 (= e!3821906 (= lt!2355394 call!532071))))

(declare-fun bm!532066 () Bool)

(assert (=> bm!532066 (= call!532071 (isEmpty!36840 s!2326))))

(declare-fun b!6284922 () Bool)

(declare-fun res!2591943 () Bool)

(assert (=> b!6284922 (=> (not res!2591943) (not e!3821904))))

(assert (=> b!6284922 (= res!2591943 (not call!532071))))

(declare-fun b!6284923 () Bool)

(declare-fun res!2591938 () Bool)

(declare-fun e!3821907 () Bool)

(assert (=> b!6284923 (=> res!2591938 e!3821907)))

(assert (=> b!6284923 (= res!2591938 e!3821904)))

(declare-fun res!2591937 () Bool)

(assert (=> b!6284923 (=> (not res!2591937) (not e!3821904))))

(assert (=> b!6284923 (= res!2591937 lt!2355394)))

(declare-fun b!6284924 () Bool)

(declare-fun e!3821901 () Bool)

(assert (=> b!6284924 (= e!3821901 e!3821905)))

(declare-fun res!2591939 () Bool)

(assert (=> b!6284924 (=> res!2591939 e!3821905)))

(assert (=> b!6284924 (= res!2591939 call!532071)))

(declare-fun b!6284925 () Bool)

(declare-fun e!3821902 () Bool)

(assert (=> b!6284925 (= e!3821906 e!3821902)))

(declare-fun c!1140070 () Bool)

(assert (=> b!6284925 (= c!1140070 ((_ is EmptyLang!16205) lt!2355226))))

(declare-fun b!6284926 () Bool)

(declare-fun res!2591941 () Bool)

(assert (=> b!6284926 (=> (not res!2591941) (not e!3821904))))

(assert (=> b!6284926 (= res!2591941 (isEmpty!36840 (tail!11994 s!2326)))))

(declare-fun b!6284927 () Bool)

(assert (=> b!6284927 (= e!3821903 (matchR!8388 (derivativeStep!4914 lt!2355226 (head!12909 s!2326)) (tail!11994 s!2326)))))

(declare-fun b!6284928 () Bool)

(assert (=> b!6284928 (= e!3821902 (not lt!2355394))))

(declare-fun b!6284929 () Bool)

(assert (=> b!6284929 (= e!3821905 (not (= (head!12909 s!2326) (c!1139836 lt!2355226))))))

(declare-fun b!6284930 () Bool)

(assert (=> b!6284930 (= e!3821907 e!3821901)))

(declare-fun res!2591942 () Bool)

(assert (=> b!6284930 (=> (not res!2591942) (not e!3821901))))

(assert (=> b!6284930 (= res!2591942 (not lt!2355394))))

(declare-fun b!6284931 () Bool)

(declare-fun res!2591940 () Bool)

(assert (=> b!6284931 (=> res!2591940 e!3821907)))

(assert (=> b!6284931 (= res!2591940 (not ((_ is ElementMatch!16205) lt!2355226)))))

(assert (=> b!6284931 (= e!3821902 e!3821907)))

(declare-fun d!1972620 () Bool)

(assert (=> d!1972620 e!3821906))

(declare-fun c!1140069 () Bool)

(assert (=> d!1972620 (= c!1140069 ((_ is EmptyExpr!16205) lt!2355226))))

(assert (=> d!1972620 (= lt!2355394 e!3821903)))

(declare-fun c!1140071 () Bool)

(assert (=> d!1972620 (= c!1140071 (isEmpty!36840 s!2326))))

(assert (=> d!1972620 (validRegex!7941 lt!2355226)))

(assert (=> d!1972620 (= (matchR!8388 lt!2355226 s!2326) lt!2355394)))

(assert (= (and d!1972620 c!1140071) b!6284918))

(assert (= (and d!1972620 (not c!1140071)) b!6284927))

(assert (= (and d!1972620 c!1140069) b!6284921))

(assert (= (and d!1972620 (not c!1140069)) b!6284925))

(assert (= (and b!6284925 c!1140070) b!6284928))

(assert (= (and b!6284925 (not c!1140070)) b!6284931))

(assert (= (and b!6284931 (not res!2591940)) b!6284923))

(assert (= (and b!6284923 res!2591937) b!6284922))

(assert (= (and b!6284922 res!2591943) b!6284926))

(assert (= (and b!6284926 res!2591941) b!6284920))

(assert (= (and b!6284923 (not res!2591938)) b!6284930))

(assert (= (and b!6284930 res!2591942) b!6284924))

(assert (= (and b!6284924 (not res!2591939)) b!6284919))

(assert (= (and b!6284919 (not res!2591944)) b!6284929))

(assert (= (or b!6284921 b!6284922 b!6284924) bm!532066))

(declare-fun m!7105834 () Bool)

(assert (=> b!6284918 m!7105834))

(assert (=> b!6284920 m!7105748))

(assert (=> b!6284926 m!7105750))

(assert (=> b!6284926 m!7105750))

(assert (=> b!6284926 m!7105752))

(assert (=> d!1972620 m!7105754))

(assert (=> d!1972620 m!7105796))

(assert (=> b!6284919 m!7105750))

(assert (=> b!6284919 m!7105750))

(assert (=> b!6284919 m!7105752))

(assert (=> b!6284927 m!7105748))

(assert (=> b!6284927 m!7105748))

(declare-fun m!7105836 () Bool)

(assert (=> b!6284927 m!7105836))

(assert (=> b!6284927 m!7105750))

(assert (=> b!6284927 m!7105836))

(assert (=> b!6284927 m!7105750))

(declare-fun m!7105838 () Bool)

(assert (=> b!6284927 m!7105838))

(assert (=> bm!532066 m!7105754))

(assert (=> b!6284929 m!7105748))

(assert (=> b!6284147 d!1972620))

(declare-fun d!1972622 () Bool)

(assert (=> d!1972622 (= (Exists!3275 lambda!344814) (choose!46661 lambda!344814))))

(declare-fun bs!1570993 () Bool)

(assert (= bs!1570993 d!1972622))

(declare-fun m!7105840 () Bool)

(assert (=> bs!1570993 m!7105840))

(assert (=> b!6284147 d!1972622))

(declare-fun d!1972624 () Bool)

(declare-fun res!2591959 () Bool)

(declare-fun e!3821923 () Bool)

(assert (=> d!1972624 (=> res!2591959 e!3821923)))

(assert (=> d!1972624 (= res!2591959 ((_ is ElementMatch!16205) (regTwo!32922 (regOne!32922 r!7292))))))

(assert (=> d!1972624 (= (validRegex!7941 (regTwo!32922 (regOne!32922 r!7292))) e!3821923)))

(declare-fun b!6284950 () Bool)

(declare-fun res!2591956 () Bool)

(declare-fun e!3821927 () Bool)

(assert (=> b!6284950 (=> (not res!2591956) (not e!3821927))))

(declare-fun call!532079 () Bool)

(assert (=> b!6284950 (= res!2591956 call!532079)))

(declare-fun e!3821928 () Bool)

(assert (=> b!6284950 (= e!3821928 e!3821927)))

(declare-fun b!6284951 () Bool)

(declare-fun e!3821926 () Bool)

(assert (=> b!6284951 (= e!3821923 e!3821926)))

(declare-fun c!1140077 () Bool)

(assert (=> b!6284951 (= c!1140077 ((_ is Star!16205) (regTwo!32922 (regOne!32922 r!7292))))))

(declare-fun b!6284952 () Bool)

(declare-fun e!3821924 () Bool)

(declare-fun e!3821922 () Bool)

(assert (=> b!6284952 (= e!3821924 e!3821922)))

(declare-fun res!2591957 () Bool)

(assert (=> b!6284952 (=> (not res!2591957) (not e!3821922))))

(assert (=> b!6284952 (= res!2591957 call!532079)))

(declare-fun b!6284953 () Bool)

(declare-fun call!532078 () Bool)

(assert (=> b!6284953 (= e!3821927 call!532078)))

(declare-fun b!6284954 () Bool)

(declare-fun e!3821925 () Bool)

(declare-fun call!532080 () Bool)

(assert (=> b!6284954 (= e!3821925 call!532080)))

(declare-fun bm!532073 () Bool)

(assert (=> bm!532073 (= call!532079 call!532080)))

(declare-fun b!6284955 () Bool)

(assert (=> b!6284955 (= e!3821922 call!532078)))

(declare-fun b!6284956 () Bool)

(assert (=> b!6284956 (= e!3821926 e!3821928)))

(declare-fun c!1140076 () Bool)

(assert (=> b!6284956 (= c!1140076 ((_ is Union!16205) (regTwo!32922 (regOne!32922 r!7292))))))

(declare-fun b!6284957 () Bool)

(assert (=> b!6284957 (= e!3821926 e!3821925)))

(declare-fun res!2591955 () Bool)

(assert (=> b!6284957 (= res!2591955 (not (nullable!6198 (reg!16534 (regTwo!32922 (regOne!32922 r!7292))))))))

(assert (=> b!6284957 (=> (not res!2591955) (not e!3821925))))

(declare-fun b!6284958 () Bool)

(declare-fun res!2591958 () Bool)

(assert (=> b!6284958 (=> res!2591958 e!3821924)))

(assert (=> b!6284958 (= res!2591958 (not ((_ is Concat!25050) (regTwo!32922 (regOne!32922 r!7292)))))))

(assert (=> b!6284958 (= e!3821928 e!3821924)))

(declare-fun bm!532074 () Bool)

(assert (=> bm!532074 (= call!532078 (validRegex!7941 (ite c!1140076 (regTwo!32923 (regTwo!32922 (regOne!32922 r!7292))) (regTwo!32922 (regTwo!32922 (regOne!32922 r!7292))))))))

(declare-fun bm!532075 () Bool)

(assert (=> bm!532075 (= call!532080 (validRegex!7941 (ite c!1140077 (reg!16534 (regTwo!32922 (regOne!32922 r!7292))) (ite c!1140076 (regOne!32923 (regTwo!32922 (regOne!32922 r!7292))) (regOne!32922 (regTwo!32922 (regOne!32922 r!7292)))))))))

(assert (= (and d!1972624 (not res!2591959)) b!6284951))

(assert (= (and b!6284951 c!1140077) b!6284957))

(assert (= (and b!6284951 (not c!1140077)) b!6284956))

(assert (= (and b!6284957 res!2591955) b!6284954))

(assert (= (and b!6284956 c!1140076) b!6284950))

(assert (= (and b!6284956 (not c!1140076)) b!6284958))

(assert (= (and b!6284950 res!2591956) b!6284953))

(assert (= (and b!6284958 (not res!2591958)) b!6284952))

(assert (= (and b!6284952 res!2591957) b!6284955))

(assert (= (or b!6284953 b!6284955) bm!532074))

(assert (= (or b!6284950 b!6284952) bm!532073))

(assert (= (or b!6284954 bm!532073) bm!532075))

(declare-fun m!7105842 () Bool)

(assert (=> b!6284957 m!7105842))

(declare-fun m!7105844 () Bool)

(assert (=> bm!532074 m!7105844))

(declare-fun m!7105846 () Bool)

(assert (=> bm!532075 m!7105846))

(assert (=> b!6284147 d!1972624))

(declare-fun bs!1570994 () Bool)

(declare-fun d!1972626 () Bool)

(assert (= bs!1570994 (and d!1972626 d!1972598)))

(declare-fun lambda!344904 () Int)

(assert (=> bs!1570994 (= lambda!344904 lambda!344893)))

(declare-fun bs!1570995 () Bool)

(assert (= bs!1570995 (and d!1972626 d!1972610)))

(assert (=> bs!1570995 (= lambda!344904 lambda!344895)))

(declare-fun b!6284959 () Bool)

(declare-fun e!3821931 () Bool)

(declare-fun e!3821929 () Bool)

(assert (=> b!6284959 (= e!3821931 e!3821929)))

(declare-fun c!1140081 () Bool)

(assert (=> b!6284959 (= c!1140081 (isEmpty!36837 lt!2355211))))

(declare-fun b!6284960 () Bool)

(declare-fun e!3821934 () Regex!16205)

(assert (=> b!6284960 (= e!3821934 (Concat!25050 (h!71238 lt!2355211) (generalisedConcat!1802 (t!378476 lt!2355211))))))

(declare-fun b!6284961 () Bool)

(assert (=> b!6284961 (= e!3821934 EmptyExpr!16205)))

(declare-fun b!6284962 () Bool)

(declare-fun e!3821932 () Bool)

(assert (=> b!6284962 (= e!3821929 e!3821932)))

(declare-fun c!1140080 () Bool)

(assert (=> b!6284962 (= c!1140080 (isEmpty!36837 (tail!11996 lt!2355211)))))

(declare-fun b!6284963 () Bool)

(declare-fun lt!2355395 () Regex!16205)

(assert (=> b!6284963 (= e!3821929 (isEmptyExpr!1611 lt!2355395))))

(assert (=> d!1972626 e!3821931))

(declare-fun res!2591961 () Bool)

(assert (=> d!1972626 (=> (not res!2591961) (not e!3821931))))

(assert (=> d!1972626 (= res!2591961 (validRegex!7941 lt!2355395))))

(declare-fun e!3821933 () Regex!16205)

(assert (=> d!1972626 (= lt!2355395 e!3821933)))

(declare-fun c!1140078 () Bool)

(declare-fun e!3821930 () Bool)

(assert (=> d!1972626 (= c!1140078 e!3821930)))

(declare-fun res!2591960 () Bool)

(assert (=> d!1972626 (=> (not res!2591960) (not e!3821930))))

(assert (=> d!1972626 (= res!2591960 ((_ is Cons!64790) lt!2355211))))

(assert (=> d!1972626 (forall!15348 lt!2355211 lambda!344904)))

(assert (=> d!1972626 (= (generalisedConcat!1802 lt!2355211) lt!2355395)))

(declare-fun b!6284964 () Bool)

(assert (=> b!6284964 (= e!3821932 (isConcat!1134 lt!2355395))))

(declare-fun b!6284965 () Bool)

(assert (=> b!6284965 (= e!3821933 e!3821934)))

(declare-fun c!1140079 () Bool)

(assert (=> b!6284965 (= c!1140079 ((_ is Cons!64790) lt!2355211))))

(declare-fun b!6284966 () Bool)

(assert (=> b!6284966 (= e!3821932 (= lt!2355395 (head!12911 lt!2355211)))))

(declare-fun b!6284967 () Bool)

(assert (=> b!6284967 (= e!3821930 (isEmpty!36837 (t!378476 lt!2355211)))))

(declare-fun b!6284968 () Bool)

(assert (=> b!6284968 (= e!3821933 (h!71238 lt!2355211))))

(assert (= (and d!1972626 res!2591960) b!6284967))

(assert (= (and d!1972626 c!1140078) b!6284968))

(assert (= (and d!1972626 (not c!1140078)) b!6284965))

(assert (= (and b!6284965 c!1140079) b!6284960))

(assert (= (and b!6284965 (not c!1140079)) b!6284961))

(assert (= (and d!1972626 res!2591961) b!6284959))

(assert (= (and b!6284959 c!1140081) b!6284963))

(assert (= (and b!6284959 (not c!1140081)) b!6284962))

(assert (= (and b!6284962 c!1140080) b!6284966))

(assert (= (and b!6284962 (not c!1140080)) b!6284964))

(declare-fun m!7105848 () Bool)

(assert (=> b!6284963 m!7105848))

(declare-fun m!7105850 () Bool)

(assert (=> b!6284964 m!7105850))

(declare-fun m!7105852 () Bool)

(assert (=> b!6284960 m!7105852))

(declare-fun m!7105854 () Bool)

(assert (=> b!6284966 m!7105854))

(declare-fun m!7105856 () Bool)

(assert (=> d!1972626 m!7105856))

(declare-fun m!7105858 () Bool)

(assert (=> d!1972626 m!7105858))

(declare-fun m!7105860 () Bool)

(assert (=> b!6284962 m!7105860))

(assert (=> b!6284962 m!7105860))

(declare-fun m!7105862 () Bool)

(assert (=> b!6284962 m!7105862))

(declare-fun m!7105864 () Bool)

(assert (=> b!6284967 m!7105864))

(declare-fun m!7105866 () Bool)

(assert (=> b!6284959 m!7105866))

(assert (=> b!6284147 d!1972626))

(declare-fun d!1972628 () Bool)

(declare-fun c!1140082 () Bool)

(assert (=> d!1972628 (= c!1140082 (isEmpty!36840 s!2326))))

(declare-fun e!3821935 () Bool)

(assert (=> d!1972628 (= (matchZipper!2217 lt!2355240 s!2326) e!3821935)))

(declare-fun b!6284969 () Bool)

(assert (=> b!6284969 (= e!3821935 (nullableZipper!1975 lt!2355240))))

(declare-fun b!6284970 () Bool)

(assert (=> b!6284970 (= e!3821935 (matchZipper!2217 (derivationStepZipper!2171 lt!2355240 (head!12909 s!2326)) (tail!11994 s!2326)))))

(assert (= (and d!1972628 c!1140082) b!6284969))

(assert (= (and d!1972628 (not c!1140082)) b!6284970))

(assert (=> d!1972628 m!7105754))

(declare-fun m!7105868 () Bool)

(assert (=> b!6284969 m!7105868))

(assert (=> b!6284970 m!7105748))

(assert (=> b!6284970 m!7105748))

(declare-fun m!7105870 () Bool)

(assert (=> b!6284970 m!7105870))

(assert (=> b!6284970 m!7105750))

(assert (=> b!6284970 m!7105870))

(assert (=> b!6284970 m!7105750))

(declare-fun m!7105872 () Bool)

(assert (=> b!6284970 m!7105872))

(assert (=> b!6284147 d!1972628))

(declare-fun d!1972630 () Bool)

(assert (=> d!1972630 (= (matchR!8388 lt!2355226 s!2326) (matchRSpec!3306 lt!2355226 s!2326))))

(declare-fun lt!2355396 () Unit!158151)

(assert (=> d!1972630 (= lt!2355396 (choose!46669 lt!2355226 s!2326))))

(assert (=> d!1972630 (validRegex!7941 lt!2355226)))

(assert (=> d!1972630 (= (mainMatchTheorem!3306 lt!2355226 s!2326) lt!2355396)))

(declare-fun bs!1570996 () Bool)

(assert (= bs!1570996 d!1972630))

(assert (=> bs!1570996 m!7105066))

(assert (=> bs!1570996 m!7105034))

(declare-fun m!7105874 () Bool)

(assert (=> bs!1570996 m!7105874))

(assert (=> bs!1570996 m!7105796))

(assert (=> b!6284147 d!1972630))

(declare-fun bs!1570997 () Bool)

(declare-fun b!6284979 () Bool)

(assert (= bs!1570997 (and b!6284979 d!1972614)))

(declare-fun lambda!344905 () Int)

(assert (=> bs!1570997 (not (= lambda!344905 lambda!344896))))

(assert (=> bs!1570997 (not (= lambda!344905 lambda!344897))))

(declare-fun bs!1570998 () Bool)

(assert (= bs!1570998 (and b!6284979 b!6284915)))

(assert (=> bs!1570998 (= (and (= (reg!16534 lt!2355217) (reg!16534 lt!2355226)) (= lt!2355217 lt!2355226)) (= lambda!344905 lambda!344902))))

(declare-fun bs!1570999 () Bool)

(assert (= bs!1570999 (and b!6284979 b!6284912)))

(assert (=> bs!1570999 (not (= lambda!344905 lambda!344903))))

(declare-fun bs!1571000 () Bool)

(assert (= bs!1571000 (and b!6284979 b!6284148)))

(assert (=> bs!1571000 (not (= lambda!344905 lambda!344811))))

(declare-fun bs!1571001 () Bool)

(assert (= bs!1571001 (and b!6284979 d!1972602)))

(assert (=> bs!1571001 (not (= lambda!344905 lambda!344894))))

(declare-fun bs!1571002 () Bool)

(assert (= bs!1571002 (and b!6284979 d!1972524)))

(assert (=> bs!1571002 (not (= lambda!344905 lambda!344872))))

(assert (=> bs!1571002 (not (= lambda!344905 lambda!344870))))

(declare-fun bs!1571003 () Bool)

(assert (= bs!1571003 (and b!6284979 d!1972514)))

(assert (=> bs!1571003 (not (= lambda!344905 lambda!344856))))

(declare-fun bs!1571004 () Bool)

(assert (= bs!1571004 (and b!6284979 b!6284147)))

(assert (=> bs!1571004 (not (= lambda!344905 lambda!344814))))

(assert (=> bs!1571004 (not (= lambda!344905 lambda!344815))))

(assert (=> bs!1571000 (not (= lambda!344905 lambda!344812))))

(assert (=> b!6284979 true))

(assert (=> b!6284979 true))

(declare-fun bs!1571005 () Bool)

(declare-fun b!6284976 () Bool)

(assert (= bs!1571005 (and b!6284976 d!1972614)))

(declare-fun lambda!344906 () Int)

(assert (=> bs!1571005 (not (= lambda!344906 lambda!344896))))

(assert (=> bs!1571005 (= (and (= (regOne!32922 lt!2355217) (regOne!32922 (regOne!32922 r!7292))) (= (regTwo!32922 lt!2355217) lt!2355217)) (= lambda!344906 lambda!344897))))

(declare-fun bs!1571006 () Bool)

(assert (= bs!1571006 (and b!6284976 b!6284915)))

(assert (=> bs!1571006 (not (= lambda!344906 lambda!344902))))

(declare-fun bs!1571007 () Bool)

(assert (= bs!1571007 (and b!6284976 b!6284148)))

(assert (=> bs!1571007 (not (= lambda!344906 lambda!344811))))

(declare-fun bs!1571008 () Bool)

(assert (= bs!1571008 (and b!6284976 d!1972602)))

(assert (=> bs!1571008 (not (= lambda!344906 lambda!344894))))

(declare-fun bs!1571009 () Bool)

(assert (= bs!1571009 (and b!6284976 d!1972524)))

(assert (=> bs!1571009 (= (and (= (regOne!32922 lt!2355217) (regOne!32922 r!7292)) (= (regTwo!32922 lt!2355217) (regTwo!32922 r!7292))) (= lambda!344906 lambda!344872))))

(assert (=> bs!1571009 (not (= lambda!344906 lambda!344870))))

(declare-fun bs!1571010 () Bool)

(assert (= bs!1571010 (and b!6284976 b!6284979)))

(assert (=> bs!1571010 (not (= lambda!344906 lambda!344905))))

(declare-fun bs!1571011 () Bool)

(assert (= bs!1571011 (and b!6284976 b!6284912)))

(assert (=> bs!1571011 (= (and (= (regOne!32922 lt!2355217) (regOne!32922 lt!2355226)) (= (regTwo!32922 lt!2355217) (regTwo!32922 lt!2355226))) (= lambda!344906 lambda!344903))))

(declare-fun bs!1571012 () Bool)

(assert (= bs!1571012 (and b!6284976 d!1972514)))

(assert (=> bs!1571012 (not (= lambda!344906 lambda!344856))))

(declare-fun bs!1571013 () Bool)

(assert (= bs!1571013 (and b!6284976 b!6284147)))

(assert (=> bs!1571013 (not (= lambda!344906 lambda!344814))))

(assert (=> bs!1571013 (= (and (= (regOne!32922 lt!2355217) (regOne!32922 (regOne!32922 r!7292))) (= (regTwo!32922 lt!2355217) lt!2355217)) (= lambda!344906 lambda!344815))))

(assert (=> bs!1571007 (= (and (= (regOne!32922 lt!2355217) (regOne!32922 r!7292)) (= (regTwo!32922 lt!2355217) (regTwo!32922 r!7292))) (= lambda!344906 lambda!344812))))

(assert (=> b!6284976 true))

(assert (=> b!6284976 true))

(declare-fun b!6284971 () Bool)

(declare-fun e!3821940 () Bool)

(assert (=> b!6284971 (= e!3821940 (= s!2326 (Cons!64791 (c!1139836 lt!2355217) Nil!64791)))))

(declare-fun bm!532076 () Bool)

(declare-fun call!532082 () Bool)

(assert (=> bm!532076 (= call!532082 (isEmpty!36840 s!2326))))

(declare-fun b!6284972 () Bool)

(declare-fun e!3821936 () Bool)

(declare-fun e!3821939 () Bool)

(assert (=> b!6284972 (= e!3821936 e!3821939)))

(declare-fun res!2591964 () Bool)

(assert (=> b!6284972 (= res!2591964 (matchRSpec!3306 (regOne!32923 lt!2355217) s!2326))))

(assert (=> b!6284972 (=> res!2591964 e!3821939)))

(declare-fun b!6284973 () Bool)

(declare-fun e!3821938 () Bool)

(assert (=> b!6284973 (= e!3821936 e!3821938)))

(declare-fun c!1140086 () Bool)

(assert (=> b!6284973 (= c!1140086 ((_ is Star!16205) lt!2355217))))

(declare-fun b!6284974 () Bool)

(declare-fun e!3821941 () Bool)

(assert (=> b!6284974 (= e!3821941 call!532082)))

(declare-fun b!6284975 () Bool)

(assert (=> b!6284975 (= e!3821939 (matchRSpec!3306 (regTwo!32923 lt!2355217) s!2326))))

(declare-fun call!532081 () Bool)

(assert (=> b!6284976 (= e!3821938 call!532081)))

(declare-fun b!6284977 () Bool)

(declare-fun e!3821937 () Bool)

(assert (=> b!6284977 (= e!3821941 e!3821937)))

(declare-fun res!2591962 () Bool)

(assert (=> b!6284977 (= res!2591962 (not ((_ is EmptyLang!16205) lt!2355217)))))

(assert (=> b!6284977 (=> (not res!2591962) (not e!3821937))))

(declare-fun b!6284978 () Bool)

(declare-fun c!1140083 () Bool)

(assert (=> b!6284978 (= c!1140083 ((_ is ElementMatch!16205) lt!2355217))))

(assert (=> b!6284978 (= e!3821937 e!3821940)))

(declare-fun d!1972632 () Bool)

(declare-fun c!1140084 () Bool)

(assert (=> d!1972632 (= c!1140084 ((_ is EmptyExpr!16205) lt!2355217))))

(assert (=> d!1972632 (= (matchRSpec!3306 lt!2355217 s!2326) e!3821941)))

(declare-fun e!3821942 () Bool)

(assert (=> b!6284979 (= e!3821942 call!532081)))

(declare-fun b!6284980 () Bool)

(declare-fun res!2591963 () Bool)

(assert (=> b!6284980 (=> res!2591963 e!3821942)))

(assert (=> b!6284980 (= res!2591963 call!532082)))

(assert (=> b!6284980 (= e!3821938 e!3821942)))

(declare-fun bm!532077 () Bool)

(assert (=> bm!532077 (= call!532081 (Exists!3275 (ite c!1140086 lambda!344905 lambda!344906)))))

(declare-fun b!6284981 () Bool)

(declare-fun c!1140085 () Bool)

(assert (=> b!6284981 (= c!1140085 ((_ is Union!16205) lt!2355217))))

(assert (=> b!6284981 (= e!3821940 e!3821936)))

(assert (= (and d!1972632 c!1140084) b!6284974))

(assert (= (and d!1972632 (not c!1140084)) b!6284977))

(assert (= (and b!6284977 res!2591962) b!6284978))

(assert (= (and b!6284978 c!1140083) b!6284971))

(assert (= (and b!6284978 (not c!1140083)) b!6284981))

(assert (= (and b!6284981 c!1140085) b!6284972))

(assert (= (and b!6284981 (not c!1140085)) b!6284973))

(assert (= (and b!6284972 (not res!2591964)) b!6284975))

(assert (= (and b!6284973 c!1140086) b!6284980))

(assert (= (and b!6284973 (not c!1140086)) b!6284976))

(assert (= (and b!6284980 (not res!2591963)) b!6284979))

(assert (= (or b!6284979 b!6284976) bm!532077))

(assert (= (or b!6284974 b!6284980) bm!532076))

(assert (=> bm!532076 m!7105754))

(declare-fun m!7105876 () Bool)

(assert (=> b!6284972 m!7105876))

(declare-fun m!7105878 () Bool)

(assert (=> b!6284975 m!7105878))

(declare-fun m!7105880 () Bool)

(assert (=> bm!532077 m!7105880))

(assert (=> b!6284147 d!1972632))

(declare-fun bs!1571014 () Bool)

(declare-fun d!1972634 () Bool)

(assert (= bs!1571014 (and d!1972634 d!1972598)))

(declare-fun lambda!344907 () Int)

(assert (=> bs!1571014 (= lambda!344907 lambda!344893)))

(declare-fun bs!1571015 () Bool)

(assert (= bs!1571015 (and d!1972634 d!1972610)))

(assert (=> bs!1571015 (= lambda!344907 lambda!344895)))

(declare-fun bs!1571016 () Bool)

(assert (= bs!1571016 (and d!1972634 d!1972626)))

(assert (=> bs!1571016 (= lambda!344907 lambda!344904)))

(declare-fun b!6284982 () Bool)

(declare-fun e!3821945 () Bool)

(declare-fun e!3821943 () Bool)

(assert (=> b!6284982 (= e!3821945 e!3821943)))

(declare-fun c!1140090 () Bool)

(assert (=> b!6284982 (= c!1140090 (isEmpty!36837 (exprs!6089 (h!71240 zl!343))))))

(declare-fun b!6284983 () Bool)

(declare-fun e!3821948 () Regex!16205)

(assert (=> b!6284983 (= e!3821948 (Concat!25050 (h!71238 (exprs!6089 (h!71240 zl!343))) (generalisedConcat!1802 (t!378476 (exprs!6089 (h!71240 zl!343))))))))

(declare-fun b!6284984 () Bool)

(assert (=> b!6284984 (= e!3821948 EmptyExpr!16205)))

(declare-fun b!6284985 () Bool)

(declare-fun e!3821946 () Bool)

(assert (=> b!6284985 (= e!3821943 e!3821946)))

(declare-fun c!1140089 () Bool)

(assert (=> b!6284985 (= c!1140089 (isEmpty!36837 (tail!11996 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6284986 () Bool)

(declare-fun lt!2355397 () Regex!16205)

(assert (=> b!6284986 (= e!3821943 (isEmptyExpr!1611 lt!2355397))))

(assert (=> d!1972634 e!3821945))

(declare-fun res!2591966 () Bool)

(assert (=> d!1972634 (=> (not res!2591966) (not e!3821945))))

(assert (=> d!1972634 (= res!2591966 (validRegex!7941 lt!2355397))))

(declare-fun e!3821947 () Regex!16205)

(assert (=> d!1972634 (= lt!2355397 e!3821947)))

(declare-fun c!1140087 () Bool)

(declare-fun e!3821944 () Bool)

(assert (=> d!1972634 (= c!1140087 e!3821944)))

(declare-fun res!2591965 () Bool)

(assert (=> d!1972634 (=> (not res!2591965) (not e!3821944))))

(assert (=> d!1972634 (= res!2591965 ((_ is Cons!64790) (exprs!6089 (h!71240 zl!343))))))

(assert (=> d!1972634 (forall!15348 (exprs!6089 (h!71240 zl!343)) lambda!344907)))

(assert (=> d!1972634 (= (generalisedConcat!1802 (exprs!6089 (h!71240 zl!343))) lt!2355397)))

(declare-fun b!6284987 () Bool)

(assert (=> b!6284987 (= e!3821946 (isConcat!1134 lt!2355397))))

(declare-fun b!6284988 () Bool)

(assert (=> b!6284988 (= e!3821947 e!3821948)))

(declare-fun c!1140088 () Bool)

(assert (=> b!6284988 (= c!1140088 ((_ is Cons!64790) (exprs!6089 (h!71240 zl!343))))))

(declare-fun b!6284989 () Bool)

(assert (=> b!6284989 (= e!3821946 (= lt!2355397 (head!12911 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6284990 () Bool)

(assert (=> b!6284990 (= e!3821944 (isEmpty!36837 (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6284991 () Bool)

(assert (=> b!6284991 (= e!3821947 (h!71238 (exprs!6089 (h!71240 zl!343))))))

(assert (= (and d!1972634 res!2591965) b!6284990))

(assert (= (and d!1972634 c!1140087) b!6284991))

(assert (= (and d!1972634 (not c!1140087)) b!6284988))

(assert (= (and b!6284988 c!1140088) b!6284983))

(assert (= (and b!6284988 (not c!1140088)) b!6284984))

(assert (= (and d!1972634 res!2591966) b!6284982))

(assert (= (and b!6284982 c!1140090) b!6284986))

(assert (= (and b!6284982 (not c!1140090)) b!6284985))

(assert (= (and b!6284985 c!1140089) b!6284989))

(assert (= (and b!6284985 (not c!1140089)) b!6284987))

(declare-fun m!7105882 () Bool)

(assert (=> b!6284986 m!7105882))

(declare-fun m!7105884 () Bool)

(assert (=> b!6284987 m!7105884))

(assert (=> b!6284983 m!7105038))

(declare-fun m!7105886 () Bool)

(assert (=> b!6284989 m!7105886))

(declare-fun m!7105888 () Bool)

(assert (=> d!1972634 m!7105888))

(declare-fun m!7105890 () Bool)

(assert (=> d!1972634 m!7105890))

(declare-fun m!7105892 () Bool)

(assert (=> b!6284985 m!7105892))

(assert (=> b!6284985 m!7105892))

(declare-fun m!7105894 () Bool)

(assert (=> b!6284985 m!7105894))

(assert (=> b!6284990 m!7105024))

(declare-fun m!7105896 () Bool)

(assert (=> b!6284982 m!7105896))

(assert (=> b!6284163 d!1972634))

(declare-fun d!1972636 () Bool)

(declare-fun res!2591971 () Bool)

(declare-fun e!3821950 () Bool)

(assert (=> d!1972636 (=> res!2591971 e!3821950)))

(assert (=> d!1972636 (= res!2591971 ((_ is ElementMatch!16205) lt!2355222))))

(assert (=> d!1972636 (= (validRegex!7941 lt!2355222) e!3821950)))

(declare-fun b!6284992 () Bool)

(declare-fun res!2591968 () Bool)

(declare-fun e!3821954 () Bool)

(assert (=> b!6284992 (=> (not res!2591968) (not e!3821954))))

(declare-fun call!532084 () Bool)

(assert (=> b!6284992 (= res!2591968 call!532084)))

(declare-fun e!3821955 () Bool)

(assert (=> b!6284992 (= e!3821955 e!3821954)))

(declare-fun b!6284993 () Bool)

(declare-fun e!3821953 () Bool)

(assert (=> b!6284993 (= e!3821950 e!3821953)))

(declare-fun c!1140092 () Bool)

(assert (=> b!6284993 (= c!1140092 ((_ is Star!16205) lt!2355222))))

(declare-fun b!6284994 () Bool)

(declare-fun e!3821951 () Bool)

(declare-fun e!3821949 () Bool)

(assert (=> b!6284994 (= e!3821951 e!3821949)))

(declare-fun res!2591969 () Bool)

(assert (=> b!6284994 (=> (not res!2591969) (not e!3821949))))

(assert (=> b!6284994 (= res!2591969 call!532084)))

(declare-fun b!6284995 () Bool)

(declare-fun call!532083 () Bool)

(assert (=> b!6284995 (= e!3821954 call!532083)))

(declare-fun b!6284996 () Bool)

(declare-fun e!3821952 () Bool)

(declare-fun call!532085 () Bool)

(assert (=> b!6284996 (= e!3821952 call!532085)))

(declare-fun bm!532078 () Bool)

(assert (=> bm!532078 (= call!532084 call!532085)))

(declare-fun b!6284997 () Bool)

(assert (=> b!6284997 (= e!3821949 call!532083)))

(declare-fun b!6284998 () Bool)

(assert (=> b!6284998 (= e!3821953 e!3821955)))

(declare-fun c!1140091 () Bool)

(assert (=> b!6284998 (= c!1140091 ((_ is Union!16205) lt!2355222))))

(declare-fun b!6284999 () Bool)

(assert (=> b!6284999 (= e!3821953 e!3821952)))

(declare-fun res!2591967 () Bool)

(assert (=> b!6284999 (= res!2591967 (not (nullable!6198 (reg!16534 lt!2355222))))))

(assert (=> b!6284999 (=> (not res!2591967) (not e!3821952))))

(declare-fun b!6285000 () Bool)

(declare-fun res!2591970 () Bool)

(assert (=> b!6285000 (=> res!2591970 e!3821951)))

(assert (=> b!6285000 (= res!2591970 (not ((_ is Concat!25050) lt!2355222)))))

(assert (=> b!6285000 (= e!3821955 e!3821951)))

(declare-fun bm!532079 () Bool)

(assert (=> bm!532079 (= call!532083 (validRegex!7941 (ite c!1140091 (regTwo!32923 lt!2355222) (regTwo!32922 lt!2355222))))))

(declare-fun bm!532080 () Bool)

(assert (=> bm!532080 (= call!532085 (validRegex!7941 (ite c!1140092 (reg!16534 lt!2355222) (ite c!1140091 (regOne!32923 lt!2355222) (regOne!32922 lt!2355222)))))))

(assert (= (and d!1972636 (not res!2591971)) b!6284993))

(assert (= (and b!6284993 c!1140092) b!6284999))

(assert (= (and b!6284993 (not c!1140092)) b!6284998))

(assert (= (and b!6284999 res!2591967) b!6284996))

(assert (= (and b!6284998 c!1140091) b!6284992))

(assert (= (and b!6284998 (not c!1140091)) b!6285000))

(assert (= (and b!6284992 res!2591968) b!6284995))

(assert (= (and b!6285000 (not res!2591970)) b!6284994))

(assert (= (and b!6284994 res!2591969) b!6284997))

(assert (= (or b!6284995 b!6284997) bm!532079))

(assert (= (or b!6284992 b!6284994) bm!532078))

(assert (= (or b!6284996 bm!532078) bm!532080))

(declare-fun m!7105898 () Bool)

(assert (=> b!6284999 m!7105898))

(declare-fun m!7105900 () Bool)

(assert (=> bm!532079 m!7105900))

(declare-fun m!7105902 () Bool)

(assert (=> bm!532080 m!7105902))

(assert (=> b!6284144 d!1972636))

(declare-fun d!1972638 () Bool)

(declare-fun nullableFct!2149 (Regex!16205) Bool)

(assert (=> d!1972638 (= (nullable!6198 (regOne!32922 (regOne!32922 r!7292))) (nullableFct!2149 (regOne!32922 (regOne!32922 r!7292))))))

(declare-fun bs!1571017 () Bool)

(assert (= bs!1571017 d!1972638))

(declare-fun m!7105904 () Bool)

(assert (=> bs!1571017 m!7105904))

(assert (=> b!6284161 d!1972638))

(declare-fun d!1972640 () Bool)

(declare-fun choose!46671 ((InoxSet Context!11178) Int) (InoxSet Context!11178))

(assert (=> d!1972640 (= (flatMap!1710 lt!2355240 lambda!344813) (choose!46671 lt!2355240 lambda!344813))))

(declare-fun bs!1571018 () Bool)

(assert (= bs!1571018 d!1972640))

(declare-fun m!7105906 () Bool)

(assert (=> bs!1571018 m!7105906))

(assert (=> b!6284160 d!1972640))

(declare-fun d!1972642 () Bool)

(declare-fun dynLambda!25639 (Int Context!11178) (InoxSet Context!11178))

(assert (=> d!1972642 (= (flatMap!1710 lt!2355240 lambda!344813) (dynLambda!25639 lambda!344813 lt!2355213))))

(declare-fun lt!2355400 () Unit!158151)

(declare-fun choose!46672 ((InoxSet Context!11178) Context!11178 Int) Unit!158151)

(assert (=> d!1972642 (= lt!2355400 (choose!46672 lt!2355240 lt!2355213 lambda!344813))))

(assert (=> d!1972642 (= lt!2355240 (store ((as const (Array Context!11178 Bool)) false) lt!2355213 true))))

(assert (=> d!1972642 (= (lemmaFlatMapOnSingletonSet!1236 lt!2355240 lt!2355213 lambda!344813) lt!2355400)))

(declare-fun b_lambda!239257 () Bool)

(assert (=> (not b_lambda!239257) (not d!1972642)))

(declare-fun bs!1571019 () Bool)

(assert (= bs!1571019 d!1972642))

(assert (=> bs!1571019 m!7105146))

(declare-fun m!7105908 () Bool)

(assert (=> bs!1571019 m!7105908))

(declare-fun m!7105910 () Bool)

(assert (=> bs!1571019 m!7105910))

(assert (=> bs!1571019 m!7105112))

(assert (=> b!6284160 d!1972642))

(declare-fun d!1972644 () Bool)

(declare-fun c!1140093 () Bool)

(assert (=> d!1972644 (= c!1140093 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3821956 () Bool)

(assert (=> d!1972644 (= (matchZipper!2217 lt!2355225 (t!378477 s!2326)) e!3821956)))

(declare-fun b!6285001 () Bool)

(assert (=> b!6285001 (= e!3821956 (nullableZipper!1975 lt!2355225))))

(declare-fun b!6285002 () Bool)

(assert (=> b!6285002 (= e!3821956 (matchZipper!2217 (derivationStepZipper!2171 lt!2355225 (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972644 c!1140093) b!6285001))

(assert (= (and d!1972644 (not c!1140093)) b!6285002))

(assert (=> d!1972644 m!7105316))

(declare-fun m!7105912 () Bool)

(assert (=> b!6285001 m!7105912))

(assert (=> b!6285002 m!7105320))

(assert (=> b!6285002 m!7105320))

(declare-fun m!7105914 () Bool)

(assert (=> b!6285002 m!7105914))

(assert (=> b!6285002 m!7105324))

(assert (=> b!6285002 m!7105914))

(assert (=> b!6285002 m!7105324))

(declare-fun m!7105916 () Bool)

(assert (=> b!6285002 m!7105916))

(assert (=> b!6284160 d!1972644))

(declare-fun e!3821957 () Bool)

(declare-fun d!1972646 () Bool)

(assert (=> d!1972646 (= (matchZipper!2217 ((_ map or) lt!2355218 lt!2355243) (t!378477 s!2326)) e!3821957)))

(declare-fun res!2591972 () Bool)

(assert (=> d!1972646 (=> res!2591972 e!3821957)))

(assert (=> d!1972646 (= res!2591972 (matchZipper!2217 lt!2355218 (t!378477 s!2326)))))

(declare-fun lt!2355401 () Unit!158151)

(assert (=> d!1972646 (= lt!2355401 (choose!46664 lt!2355218 lt!2355243 (t!378477 s!2326)))))

(assert (=> d!1972646 (= (lemmaZipperConcatMatchesSameAsBothZippers!1036 lt!2355218 lt!2355243 (t!378477 s!2326)) lt!2355401)))

(declare-fun b!6285003 () Bool)

(assert (=> b!6285003 (= e!3821957 (matchZipper!2217 lt!2355243 (t!378477 s!2326)))))

(assert (= (and d!1972646 (not res!2591972)) b!6285003))

(declare-fun m!7105918 () Bool)

(assert (=> d!1972646 m!7105918))

(assert (=> d!1972646 m!7105108))

(declare-fun m!7105920 () Bool)

(assert (=> d!1972646 m!7105920))

(assert (=> b!6285003 m!7105104))

(assert (=> b!6284160 d!1972646))

(declare-fun d!1972648 () Bool)

(declare-fun c!1140094 () Bool)

(assert (=> d!1972648 (= c!1140094 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3821958 () Bool)

(assert (=> d!1972648 (= (matchZipper!2217 lt!2355249 (t!378477 s!2326)) e!3821958)))

(declare-fun b!6285004 () Bool)

(assert (=> b!6285004 (= e!3821958 (nullableZipper!1975 lt!2355249))))

(declare-fun b!6285005 () Bool)

(assert (=> b!6285005 (= e!3821958 (matchZipper!2217 (derivationStepZipper!2171 lt!2355249 (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972648 c!1140094) b!6285004))

(assert (= (and d!1972648 (not c!1140094)) b!6285005))

(assert (=> d!1972648 m!7105316))

(declare-fun m!7105922 () Bool)

(assert (=> b!6285004 m!7105922))

(assert (=> b!6285005 m!7105320))

(assert (=> b!6285005 m!7105320))

(declare-fun m!7105924 () Bool)

(assert (=> b!6285005 m!7105924))

(assert (=> b!6285005 m!7105324))

(assert (=> b!6285005 m!7105924))

(assert (=> b!6285005 m!7105324))

(declare-fun m!7105926 () Bool)

(assert (=> b!6285005 m!7105926))

(assert (=> b!6284160 d!1972648))

(declare-fun b!6285016 () Bool)

(declare-fun e!3821966 () (InoxSet Context!11178))

(declare-fun e!3821967 () (InoxSet Context!11178))

(assert (=> b!6285016 (= e!3821966 e!3821967)))

(declare-fun c!1140099 () Bool)

(assert (=> b!6285016 (= c!1140099 ((_ is Cons!64790) (exprs!6089 lt!2355213)))))

(declare-fun b!6285017 () Bool)

(declare-fun call!532088 () (InoxSet Context!11178))

(assert (=> b!6285017 (= e!3821967 call!532088)))

(declare-fun b!6285018 () Bool)

(declare-fun e!3821965 () Bool)

(assert (=> b!6285018 (= e!3821965 (nullable!6198 (h!71238 (exprs!6089 lt!2355213))))))

(declare-fun b!6285019 () Bool)

(assert (=> b!6285019 (= e!3821966 ((_ map or) call!532088 (derivationStepZipperUp!1379 (Context!11179 (t!378476 (exprs!6089 lt!2355213))) (h!71239 s!2326))))))

(declare-fun bm!532083 () Bool)

(assert (=> bm!532083 (= call!532088 (derivationStepZipperDown!1453 (h!71238 (exprs!6089 lt!2355213)) (Context!11179 (t!378476 (exprs!6089 lt!2355213))) (h!71239 s!2326)))))

(declare-fun d!1972650 () Bool)

(declare-fun c!1140100 () Bool)

(assert (=> d!1972650 (= c!1140100 e!3821965)))

(declare-fun res!2591975 () Bool)

(assert (=> d!1972650 (=> (not res!2591975) (not e!3821965))))

(assert (=> d!1972650 (= res!2591975 ((_ is Cons!64790) (exprs!6089 lt!2355213)))))

(assert (=> d!1972650 (= (derivationStepZipperUp!1379 lt!2355213 (h!71239 s!2326)) e!3821966)))

(declare-fun b!6285020 () Bool)

(assert (=> b!6285020 (= e!3821967 ((as const (Array Context!11178 Bool)) false))))

(assert (= (and d!1972650 res!2591975) b!6285018))

(assert (= (and d!1972650 c!1140100) b!6285019))

(assert (= (and d!1972650 (not c!1140100)) b!6285016))

(assert (= (and b!6285016 c!1140099) b!6285017))

(assert (= (and b!6285016 (not c!1140099)) b!6285020))

(assert (= (or b!6285019 b!6285017) bm!532083))

(declare-fun m!7105928 () Bool)

(assert (=> b!6285018 m!7105928))

(declare-fun m!7105930 () Bool)

(assert (=> b!6285019 m!7105930))

(declare-fun m!7105932 () Bool)

(assert (=> bm!532083 m!7105932))

(assert (=> b!6284160 d!1972650))

(declare-fun e!3821968 () Bool)

(declare-fun d!1972652 () Bool)

(assert (=> d!1972652 (= (matchZipper!2217 ((_ map or) lt!2355242 lt!2355232) (t!378477 s!2326)) e!3821968)))

(declare-fun res!2591976 () Bool)

(assert (=> d!1972652 (=> res!2591976 e!3821968)))

(assert (=> d!1972652 (= res!2591976 (matchZipper!2217 lt!2355242 (t!378477 s!2326)))))

(declare-fun lt!2355402 () Unit!158151)

(assert (=> d!1972652 (= lt!2355402 (choose!46664 lt!2355242 lt!2355232 (t!378477 s!2326)))))

(assert (=> d!1972652 (= (lemmaZipperConcatMatchesSameAsBothZippers!1036 lt!2355242 lt!2355232 (t!378477 s!2326)) lt!2355402)))

(declare-fun b!6285021 () Bool)

(assert (=> b!6285021 (= e!3821968 (matchZipper!2217 lt!2355232 (t!378477 s!2326)))))

(assert (= (and d!1972652 (not res!2591976)) b!6285021))

(assert (=> d!1972652 m!7105022))

(assert (=> d!1972652 m!7105020))

(declare-fun m!7105934 () Bool)

(assert (=> d!1972652 m!7105934))

(assert (=> b!6285021 m!7105100))

(assert (=> b!6284142 d!1972652))

(assert (=> b!6284142 d!1972576))

(declare-fun d!1972654 () Bool)

(declare-fun c!1140101 () Bool)

(assert (=> d!1972654 (= c!1140101 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3821969 () Bool)

(assert (=> d!1972654 (= (matchZipper!2217 ((_ map or) lt!2355242 lt!2355232) (t!378477 s!2326)) e!3821969)))

(declare-fun b!6285022 () Bool)

(assert (=> b!6285022 (= e!3821969 (nullableZipper!1975 ((_ map or) lt!2355242 lt!2355232)))))

(declare-fun b!6285023 () Bool)

(assert (=> b!6285023 (= e!3821969 (matchZipper!2217 (derivationStepZipper!2171 ((_ map or) lt!2355242 lt!2355232) (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972654 c!1140101) b!6285022))

(assert (= (and d!1972654 (not c!1140101)) b!6285023))

(assert (=> d!1972654 m!7105316))

(declare-fun m!7105936 () Bool)

(assert (=> b!6285022 m!7105936))

(assert (=> b!6285023 m!7105320))

(assert (=> b!6285023 m!7105320))

(declare-fun m!7105938 () Bool)

(assert (=> b!6285023 m!7105938))

(assert (=> b!6285023 m!7105324))

(assert (=> b!6285023 m!7105938))

(assert (=> b!6285023 m!7105324))

(declare-fun m!7105940 () Bool)

(assert (=> b!6285023 m!7105940))

(assert (=> b!6284142 d!1972654))

(declare-fun bs!1571020 () Bool)

(declare-fun d!1972656 () Bool)

(assert (= bs!1571020 (and d!1972656 d!1972598)))

(declare-fun lambda!344910 () Int)

(assert (=> bs!1571020 (= lambda!344910 lambda!344893)))

(declare-fun bs!1571021 () Bool)

(assert (= bs!1571021 (and d!1972656 d!1972610)))

(assert (=> bs!1571021 (= lambda!344910 lambda!344895)))

(declare-fun bs!1571022 () Bool)

(assert (= bs!1571022 (and d!1972656 d!1972626)))

(assert (=> bs!1571022 (= lambda!344910 lambda!344904)))

(declare-fun bs!1571023 () Bool)

(assert (= bs!1571023 (and d!1972656 d!1972634)))

(assert (=> bs!1571023 (= lambda!344910 lambda!344907)))

(declare-fun b!6285044 () Bool)

(declare-fun e!3821984 () Bool)

(assert (=> b!6285044 (= e!3821984 (isEmpty!36837 (t!378476 (unfocusZipperList!1626 zl!343))))))

(declare-fun b!6285046 () Bool)

(declare-fun e!3821987 () Regex!16205)

(assert (=> b!6285046 (= e!3821987 EmptyLang!16205)))

(declare-fun b!6285047 () Bool)

(declare-fun e!3821986 () Bool)

(declare-fun e!3821985 () Bool)

(assert (=> b!6285047 (= e!3821986 e!3821985)))

(declare-fun c!1140113 () Bool)

(assert (=> b!6285047 (= c!1140113 (isEmpty!36837 (tail!11996 (unfocusZipperList!1626 zl!343))))))

(declare-fun b!6285048 () Bool)

(declare-fun e!3821983 () Regex!16205)

(assert (=> b!6285048 (= e!3821983 (h!71238 (unfocusZipperList!1626 zl!343)))))

(declare-fun b!6285049 () Bool)

(assert (=> b!6285049 (= e!3821983 e!3821987)))

(declare-fun c!1140112 () Bool)

(assert (=> b!6285049 (= c!1140112 ((_ is Cons!64790) (unfocusZipperList!1626 zl!343)))))

(declare-fun b!6285050 () Bool)

(assert (=> b!6285050 (= e!3821987 (Union!16205 (h!71238 (unfocusZipperList!1626 zl!343)) (generalisedUnion!2049 (t!378476 (unfocusZipperList!1626 zl!343)))))))

(declare-fun b!6285051 () Bool)

(declare-fun lt!2355405 () Regex!16205)

(assert (=> b!6285051 (= e!3821985 (= lt!2355405 (head!12911 (unfocusZipperList!1626 zl!343))))))

(declare-fun e!3821982 () Bool)

(assert (=> d!1972656 e!3821982))

(declare-fun res!2591981 () Bool)

(assert (=> d!1972656 (=> (not res!2591981) (not e!3821982))))

(assert (=> d!1972656 (= res!2591981 (validRegex!7941 lt!2355405))))

(assert (=> d!1972656 (= lt!2355405 e!3821983)))

(declare-fun c!1140111 () Bool)

(assert (=> d!1972656 (= c!1140111 e!3821984)))

(declare-fun res!2591982 () Bool)

(assert (=> d!1972656 (=> (not res!2591982) (not e!3821984))))

(assert (=> d!1972656 (= res!2591982 ((_ is Cons!64790) (unfocusZipperList!1626 zl!343)))))

(assert (=> d!1972656 (forall!15348 (unfocusZipperList!1626 zl!343) lambda!344910)))

(assert (=> d!1972656 (= (generalisedUnion!2049 (unfocusZipperList!1626 zl!343)) lt!2355405)))

(declare-fun b!6285045 () Bool)

(declare-fun isUnion!1048 (Regex!16205) Bool)

(assert (=> b!6285045 (= e!3821985 (isUnion!1048 lt!2355405))))

(declare-fun b!6285052 () Bool)

(declare-fun isEmptyLang!1618 (Regex!16205) Bool)

(assert (=> b!6285052 (= e!3821986 (isEmptyLang!1618 lt!2355405))))

(declare-fun b!6285053 () Bool)

(assert (=> b!6285053 (= e!3821982 e!3821986)))

(declare-fun c!1140110 () Bool)

(assert (=> b!6285053 (= c!1140110 (isEmpty!36837 (unfocusZipperList!1626 zl!343)))))

(assert (= (and d!1972656 res!2591982) b!6285044))

(assert (= (and d!1972656 c!1140111) b!6285048))

(assert (= (and d!1972656 (not c!1140111)) b!6285049))

(assert (= (and b!6285049 c!1140112) b!6285050))

(assert (= (and b!6285049 (not c!1140112)) b!6285046))

(assert (= (and d!1972656 res!2591981) b!6285053))

(assert (= (and b!6285053 c!1140110) b!6285052))

(assert (= (and b!6285053 (not c!1140110)) b!6285047))

(assert (= (and b!6285047 c!1140113) b!6285051))

(assert (= (and b!6285047 (not c!1140113)) b!6285045))

(assert (=> b!6285047 m!7105026))

(declare-fun m!7105942 () Bool)

(assert (=> b!6285047 m!7105942))

(assert (=> b!6285047 m!7105942))

(declare-fun m!7105944 () Bool)

(assert (=> b!6285047 m!7105944))

(declare-fun m!7105946 () Bool)

(assert (=> b!6285044 m!7105946))

(declare-fun m!7105948 () Bool)

(assert (=> b!6285050 m!7105948))

(declare-fun m!7105950 () Bool)

(assert (=> d!1972656 m!7105950))

(assert (=> d!1972656 m!7105026))

(declare-fun m!7105952 () Bool)

(assert (=> d!1972656 m!7105952))

(declare-fun m!7105954 () Bool)

(assert (=> b!6285052 m!7105954))

(declare-fun m!7105956 () Bool)

(assert (=> b!6285045 m!7105956))

(assert (=> b!6285053 m!7105026))

(declare-fun m!7105958 () Bool)

(assert (=> b!6285053 m!7105958))

(assert (=> b!6285051 m!7105026))

(declare-fun m!7105960 () Bool)

(assert (=> b!6285051 m!7105960))

(assert (=> b!6284158 d!1972656))

(declare-fun bs!1571024 () Bool)

(declare-fun d!1972658 () Bool)

(assert (= bs!1571024 (and d!1972658 d!1972634)))

(declare-fun lambda!344913 () Int)

(assert (=> bs!1571024 (= lambda!344913 lambda!344907)))

(declare-fun bs!1571025 () Bool)

(assert (= bs!1571025 (and d!1972658 d!1972626)))

(assert (=> bs!1571025 (= lambda!344913 lambda!344904)))

(declare-fun bs!1571026 () Bool)

(assert (= bs!1571026 (and d!1972658 d!1972610)))

(assert (=> bs!1571026 (= lambda!344913 lambda!344895)))

(declare-fun bs!1571027 () Bool)

(assert (= bs!1571027 (and d!1972658 d!1972656)))

(assert (=> bs!1571027 (= lambda!344913 lambda!344910)))

(declare-fun bs!1571028 () Bool)

(assert (= bs!1571028 (and d!1972658 d!1972598)))

(assert (=> bs!1571028 (= lambda!344913 lambda!344893)))

(declare-fun lt!2355408 () List!64914)

(assert (=> d!1972658 (forall!15348 lt!2355408 lambda!344913)))

(declare-fun e!3821990 () List!64914)

(assert (=> d!1972658 (= lt!2355408 e!3821990)))

(declare-fun c!1140116 () Bool)

(assert (=> d!1972658 (= c!1140116 ((_ is Cons!64792) zl!343))))

(assert (=> d!1972658 (= (unfocusZipperList!1626 zl!343) lt!2355408)))

(declare-fun b!6285058 () Bool)

(assert (=> b!6285058 (= e!3821990 (Cons!64790 (generalisedConcat!1802 (exprs!6089 (h!71240 zl!343))) (unfocusZipperList!1626 (t!378478 zl!343))))))

(declare-fun b!6285059 () Bool)

(assert (=> b!6285059 (= e!3821990 Nil!64790)))

(assert (= (and d!1972658 c!1140116) b!6285058))

(assert (= (and d!1972658 (not c!1140116)) b!6285059))

(declare-fun m!7105962 () Bool)

(assert (=> d!1972658 m!7105962))

(assert (=> b!6285058 m!7105132))

(declare-fun m!7105964 () Bool)

(assert (=> b!6285058 m!7105964))

(assert (=> b!6284158 d!1972658))

(declare-fun d!1972660 () Bool)

(declare-fun c!1140117 () Bool)

(assert (=> d!1972660 (= c!1140117 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3821991 () Bool)

(assert (=> d!1972660 (= (matchZipper!2217 lt!2355243 (t!378477 s!2326)) e!3821991)))

(declare-fun b!6285060 () Bool)

(assert (=> b!6285060 (= e!3821991 (nullableZipper!1975 lt!2355243))))

(declare-fun b!6285061 () Bool)

(assert (=> b!6285061 (= e!3821991 (matchZipper!2217 (derivationStepZipper!2171 lt!2355243 (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972660 c!1140117) b!6285060))

(assert (= (and d!1972660 (not c!1140117)) b!6285061))

(assert (=> d!1972660 m!7105316))

(declare-fun m!7105966 () Bool)

(assert (=> b!6285060 m!7105966))

(assert (=> b!6285061 m!7105320))

(assert (=> b!6285061 m!7105320))

(declare-fun m!7105968 () Bool)

(assert (=> b!6285061 m!7105968))

(assert (=> b!6285061 m!7105324))

(assert (=> b!6285061 m!7105968))

(assert (=> b!6285061 m!7105324))

(declare-fun m!7105970 () Bool)

(assert (=> b!6285061 m!7105970))

(assert (=> b!6284138 d!1972660))

(declare-fun d!1972662 () Bool)

(assert (=> d!1972662 (= (flatMap!1710 z!1189 lambda!344813) (choose!46671 z!1189 lambda!344813))))

(declare-fun bs!1571029 () Bool)

(assert (= bs!1571029 d!1972662))

(declare-fun m!7105972 () Bool)

(assert (=> bs!1571029 m!7105972))

(assert (=> b!6284137 d!1972662))

(declare-fun b!6285084 () Bool)

(declare-fun c!1140128 () Bool)

(declare-fun e!3822004 () Bool)

(assert (=> b!6285084 (= c!1140128 e!3822004)))

(declare-fun res!2591985 () Bool)

(assert (=> b!6285084 (=> (not res!2591985) (not e!3822004))))

(assert (=> b!6285084 (= res!2591985 ((_ is Concat!25050) (h!71238 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun e!3822009 () (InoxSet Context!11178))

(declare-fun e!3822006 () (InoxSet Context!11178))

(assert (=> b!6285084 (= e!3822009 e!3822006)))

(declare-fun b!6285085 () Bool)

(declare-fun e!3822007 () (InoxSet Context!11178))

(assert (=> b!6285085 (= e!3822007 (store ((as const (Array Context!11178 Bool)) false) lt!2355228 true))))

(declare-fun b!6285086 () Bool)

(assert (=> b!6285086 (= e!3822004 (nullable!6198 (regOne!32922 (h!71238 (exprs!6089 (h!71240 zl!343))))))))

(declare-fun bm!532096 () Bool)

(declare-fun c!1140132 () Bool)

(declare-fun call!532103 () List!64914)

(declare-fun $colon$colon!2070 (List!64914 Regex!16205) List!64914)

(assert (=> bm!532096 (= call!532103 ($colon$colon!2070 (exprs!6089 lt!2355228) (ite (or c!1140128 c!1140132) (regTwo!32922 (h!71238 (exprs!6089 (h!71240 zl!343)))) (h!71238 (exprs!6089 (h!71240 zl!343))))))))

(declare-fun b!6285087 () Bool)

(declare-fun call!532101 () (InoxSet Context!11178))

(declare-fun call!532102 () (InoxSet Context!11178))

(assert (=> b!6285087 (= e!3822006 ((_ map or) call!532101 call!532102))))

(declare-fun c!1140129 () Bool)

(declare-fun bm!532097 () Bool)

(assert (=> bm!532097 (= call!532101 (derivationStepZipperDown!1453 (ite c!1140129 (regTwo!32923 (h!71238 (exprs!6089 (h!71240 zl!343)))) (regOne!32922 (h!71238 (exprs!6089 (h!71240 zl!343))))) (ite c!1140129 lt!2355228 (Context!11179 call!532103)) (h!71239 s!2326)))))

(declare-fun b!6285088 () Bool)

(declare-fun call!532106 () (InoxSet Context!11178))

(assert (=> b!6285088 (= e!3822009 ((_ map or) call!532106 call!532101))))

(declare-fun bm!532098 () Bool)

(declare-fun call!532105 () List!64914)

(assert (=> bm!532098 (= call!532105 call!532103)))

(declare-fun bm!532099 () Bool)

(declare-fun call!532104 () (InoxSet Context!11178))

(assert (=> bm!532099 (= call!532104 call!532102)))

(declare-fun b!6285089 () Bool)

(assert (=> b!6285089 (= e!3822007 e!3822009)))

(assert (=> b!6285089 (= c!1140129 ((_ is Union!16205) (h!71238 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6285090 () Bool)

(declare-fun e!3822008 () (InoxSet Context!11178))

(assert (=> b!6285090 (= e!3822008 call!532104)))

(declare-fun b!6285091 () Bool)

(declare-fun c!1140130 () Bool)

(assert (=> b!6285091 (= c!1140130 ((_ is Star!16205) (h!71238 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun e!3822005 () (InoxSet Context!11178))

(assert (=> b!6285091 (= e!3822008 e!3822005)))

(declare-fun bm!532100 () Bool)

(assert (=> bm!532100 (= call!532106 (derivationStepZipperDown!1453 (ite c!1140129 (regOne!32923 (h!71238 (exprs!6089 (h!71240 zl!343)))) (ite c!1140128 (regTwo!32922 (h!71238 (exprs!6089 (h!71240 zl!343)))) (ite c!1140132 (regOne!32922 (h!71238 (exprs!6089 (h!71240 zl!343)))) (reg!16534 (h!71238 (exprs!6089 (h!71240 zl!343))))))) (ite (or c!1140129 c!1140128) lt!2355228 (Context!11179 call!532105)) (h!71239 s!2326)))))

(declare-fun d!1972664 () Bool)

(declare-fun c!1140131 () Bool)

(assert (=> d!1972664 (= c!1140131 (and ((_ is ElementMatch!16205) (h!71238 (exprs!6089 (h!71240 zl!343)))) (= (c!1139836 (h!71238 (exprs!6089 (h!71240 zl!343)))) (h!71239 s!2326))))))

(assert (=> d!1972664 (= (derivationStepZipperDown!1453 (h!71238 (exprs!6089 (h!71240 zl!343))) lt!2355228 (h!71239 s!2326)) e!3822007)))

(declare-fun b!6285092 () Bool)

(assert (=> b!6285092 (= e!3822005 call!532104)))

(declare-fun b!6285093 () Bool)

(assert (=> b!6285093 (= e!3822006 e!3822008)))

(assert (=> b!6285093 (= c!1140132 ((_ is Concat!25050) (h!71238 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6285094 () Bool)

(assert (=> b!6285094 (= e!3822005 ((as const (Array Context!11178 Bool)) false))))

(declare-fun bm!532101 () Bool)

(assert (=> bm!532101 (= call!532102 call!532106)))

(assert (= (and d!1972664 c!1140131) b!6285085))

(assert (= (and d!1972664 (not c!1140131)) b!6285089))

(assert (= (and b!6285089 c!1140129) b!6285088))

(assert (= (and b!6285089 (not c!1140129)) b!6285084))

(assert (= (and b!6285084 res!2591985) b!6285086))

(assert (= (and b!6285084 c!1140128) b!6285087))

(assert (= (and b!6285084 (not c!1140128)) b!6285093))

(assert (= (and b!6285093 c!1140132) b!6285090))

(assert (= (and b!6285093 (not c!1140132)) b!6285091))

(assert (= (and b!6285091 c!1140130) b!6285092))

(assert (= (and b!6285091 (not c!1140130)) b!6285094))

(assert (= (or b!6285090 b!6285092) bm!532098))

(assert (= (or b!6285090 b!6285092) bm!532099))

(assert (= (or b!6285087 bm!532098) bm!532096))

(assert (= (or b!6285087 bm!532099) bm!532101))

(assert (= (or b!6285088 b!6285087) bm!532097))

(assert (= (or b!6285088 bm!532101) bm!532100))

(declare-fun m!7105974 () Bool)

(assert (=> bm!532096 m!7105974))

(declare-fun m!7105976 () Bool)

(assert (=> b!6285085 m!7105976))

(declare-fun m!7105978 () Bool)

(assert (=> b!6285086 m!7105978))

(declare-fun m!7105980 () Bool)

(assert (=> bm!532097 m!7105980))

(declare-fun m!7105982 () Bool)

(assert (=> bm!532100 m!7105982))

(assert (=> b!6284137 d!1972664))

(declare-fun d!1972666 () Bool)

(assert (=> d!1972666 (= (nullable!6198 (h!71238 (exprs!6089 (h!71240 zl!343)))) (nullableFct!2149 (h!71238 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun bs!1571030 () Bool)

(assert (= bs!1571030 d!1972666))

(declare-fun m!7105984 () Bool)

(assert (=> bs!1571030 m!7105984))

(assert (=> b!6284137 d!1972666))

(declare-fun b!6285095 () Bool)

(declare-fun e!3822011 () (InoxSet Context!11178))

(declare-fun e!3822012 () (InoxSet Context!11178))

(assert (=> b!6285095 (= e!3822011 e!3822012)))

(declare-fun c!1140133 () Bool)

(assert (=> b!6285095 (= c!1140133 ((_ is Cons!64790) (exprs!6089 (Context!11179 (Cons!64790 (h!71238 (exprs!6089 (h!71240 zl!343))) (t!378476 (exprs!6089 (h!71240 zl!343))))))))))

(declare-fun b!6285096 () Bool)

(declare-fun call!532107 () (InoxSet Context!11178))

(assert (=> b!6285096 (= e!3822012 call!532107)))

(declare-fun b!6285097 () Bool)

(declare-fun e!3822010 () Bool)

(assert (=> b!6285097 (= e!3822010 (nullable!6198 (h!71238 (exprs!6089 (Context!11179 (Cons!64790 (h!71238 (exprs!6089 (h!71240 zl!343))) (t!378476 (exprs!6089 (h!71240 zl!343)))))))))))

(declare-fun b!6285098 () Bool)

(assert (=> b!6285098 (= e!3822011 ((_ map or) call!532107 (derivationStepZipperUp!1379 (Context!11179 (t!378476 (exprs!6089 (Context!11179 (Cons!64790 (h!71238 (exprs!6089 (h!71240 zl!343))) (t!378476 (exprs!6089 (h!71240 zl!343)))))))) (h!71239 s!2326))))))

(declare-fun bm!532102 () Bool)

(assert (=> bm!532102 (= call!532107 (derivationStepZipperDown!1453 (h!71238 (exprs!6089 (Context!11179 (Cons!64790 (h!71238 (exprs!6089 (h!71240 zl!343))) (t!378476 (exprs!6089 (h!71240 zl!343))))))) (Context!11179 (t!378476 (exprs!6089 (Context!11179 (Cons!64790 (h!71238 (exprs!6089 (h!71240 zl!343))) (t!378476 (exprs!6089 (h!71240 zl!343)))))))) (h!71239 s!2326)))))

(declare-fun d!1972668 () Bool)

(declare-fun c!1140134 () Bool)

(assert (=> d!1972668 (= c!1140134 e!3822010)))

(declare-fun res!2591986 () Bool)

(assert (=> d!1972668 (=> (not res!2591986) (not e!3822010))))

(assert (=> d!1972668 (= res!2591986 ((_ is Cons!64790) (exprs!6089 (Context!11179 (Cons!64790 (h!71238 (exprs!6089 (h!71240 zl!343))) (t!378476 (exprs!6089 (h!71240 zl!343))))))))))

(assert (=> d!1972668 (= (derivationStepZipperUp!1379 (Context!11179 (Cons!64790 (h!71238 (exprs!6089 (h!71240 zl!343))) (t!378476 (exprs!6089 (h!71240 zl!343))))) (h!71239 s!2326)) e!3822011)))

(declare-fun b!6285099 () Bool)

(assert (=> b!6285099 (= e!3822012 ((as const (Array Context!11178 Bool)) false))))

(assert (= (and d!1972668 res!2591986) b!6285097))

(assert (= (and d!1972668 c!1140134) b!6285098))

(assert (= (and d!1972668 (not c!1140134)) b!6285095))

(assert (= (and b!6285095 c!1140133) b!6285096))

(assert (= (and b!6285095 (not c!1140133)) b!6285099))

(assert (= (or b!6285098 b!6285096) bm!532102))

(declare-fun m!7105986 () Bool)

(assert (=> b!6285097 m!7105986))

(declare-fun m!7105988 () Bool)

(assert (=> b!6285098 m!7105988))

(declare-fun m!7105990 () Bool)

(assert (=> bm!532102 m!7105990))

(assert (=> b!6284137 d!1972668))

(declare-fun b!6285100 () Bool)

(declare-fun e!3822014 () (InoxSet Context!11178))

(declare-fun e!3822015 () (InoxSet Context!11178))

(assert (=> b!6285100 (= e!3822014 e!3822015)))

(declare-fun c!1140135 () Bool)

(assert (=> b!6285100 (= c!1140135 ((_ is Cons!64790) (exprs!6089 (h!71240 zl!343))))))

(declare-fun b!6285101 () Bool)

(declare-fun call!532108 () (InoxSet Context!11178))

(assert (=> b!6285101 (= e!3822015 call!532108)))

(declare-fun b!6285102 () Bool)

(declare-fun e!3822013 () Bool)

(assert (=> b!6285102 (= e!3822013 (nullable!6198 (h!71238 (exprs!6089 (h!71240 zl!343)))))))

(declare-fun b!6285103 () Bool)

(assert (=> b!6285103 (= e!3822014 ((_ map or) call!532108 (derivationStepZipperUp!1379 (Context!11179 (t!378476 (exprs!6089 (h!71240 zl!343)))) (h!71239 s!2326))))))

(declare-fun bm!532103 () Bool)

(assert (=> bm!532103 (= call!532108 (derivationStepZipperDown!1453 (h!71238 (exprs!6089 (h!71240 zl!343))) (Context!11179 (t!378476 (exprs!6089 (h!71240 zl!343)))) (h!71239 s!2326)))))

(declare-fun d!1972670 () Bool)

(declare-fun c!1140136 () Bool)

(assert (=> d!1972670 (= c!1140136 e!3822013)))

(declare-fun res!2591987 () Bool)

(assert (=> d!1972670 (=> (not res!2591987) (not e!3822013))))

(assert (=> d!1972670 (= res!2591987 ((_ is Cons!64790) (exprs!6089 (h!71240 zl!343))))))

(assert (=> d!1972670 (= (derivationStepZipperUp!1379 (h!71240 zl!343) (h!71239 s!2326)) e!3822014)))

(declare-fun b!6285104 () Bool)

(assert (=> b!6285104 (= e!3822015 ((as const (Array Context!11178 Bool)) false))))

(assert (= (and d!1972670 res!2591987) b!6285102))

(assert (= (and d!1972670 c!1140136) b!6285103))

(assert (= (and d!1972670 (not c!1140136)) b!6285100))

(assert (= (and b!6285100 c!1140135) b!6285101))

(assert (= (and b!6285100 (not c!1140135)) b!6285104))

(assert (= (or b!6285103 b!6285101) bm!532103))

(assert (=> b!6285102 m!7105006))

(declare-fun m!7105992 () Bool)

(assert (=> b!6285103 m!7105992))

(declare-fun m!7105994 () Bool)

(assert (=> bm!532103 m!7105994))

(assert (=> b!6284137 d!1972670))

(declare-fun b!6285105 () Bool)

(declare-fun e!3822017 () (InoxSet Context!11178))

(declare-fun e!3822018 () (InoxSet Context!11178))

(assert (=> b!6285105 (= e!3822017 e!3822018)))

(declare-fun c!1140137 () Bool)

(assert (=> b!6285105 (= c!1140137 ((_ is Cons!64790) (exprs!6089 lt!2355228)))))

(declare-fun b!6285106 () Bool)

(declare-fun call!532109 () (InoxSet Context!11178))

(assert (=> b!6285106 (= e!3822018 call!532109)))

(declare-fun b!6285107 () Bool)

(declare-fun e!3822016 () Bool)

(assert (=> b!6285107 (= e!3822016 (nullable!6198 (h!71238 (exprs!6089 lt!2355228))))))

(declare-fun b!6285108 () Bool)

(assert (=> b!6285108 (= e!3822017 ((_ map or) call!532109 (derivationStepZipperUp!1379 (Context!11179 (t!378476 (exprs!6089 lt!2355228))) (h!71239 s!2326))))))

(declare-fun bm!532104 () Bool)

(assert (=> bm!532104 (= call!532109 (derivationStepZipperDown!1453 (h!71238 (exprs!6089 lt!2355228)) (Context!11179 (t!378476 (exprs!6089 lt!2355228))) (h!71239 s!2326)))))

(declare-fun d!1972672 () Bool)

(declare-fun c!1140138 () Bool)

(assert (=> d!1972672 (= c!1140138 e!3822016)))

(declare-fun res!2591988 () Bool)

(assert (=> d!1972672 (=> (not res!2591988) (not e!3822016))))

(assert (=> d!1972672 (= res!2591988 ((_ is Cons!64790) (exprs!6089 lt!2355228)))))

(assert (=> d!1972672 (= (derivationStepZipperUp!1379 lt!2355228 (h!71239 s!2326)) e!3822017)))

(declare-fun b!6285109 () Bool)

(assert (=> b!6285109 (= e!3822018 ((as const (Array Context!11178 Bool)) false))))

(assert (= (and d!1972672 res!2591988) b!6285107))

(assert (= (and d!1972672 c!1140138) b!6285108))

(assert (= (and d!1972672 (not c!1140138)) b!6285105))

(assert (= (and b!6285105 c!1140137) b!6285106))

(assert (= (and b!6285105 (not c!1140137)) b!6285109))

(assert (= (or b!6285108 b!6285106) bm!532104))

(declare-fun m!7105996 () Bool)

(assert (=> b!6285107 m!7105996))

(declare-fun m!7105998 () Bool)

(assert (=> b!6285108 m!7105998))

(declare-fun m!7106000 () Bool)

(assert (=> bm!532104 m!7106000))

(assert (=> b!6284137 d!1972672))

(declare-fun d!1972674 () Bool)

(assert (=> d!1972674 (= (flatMap!1710 z!1189 lambda!344813) (dynLambda!25639 lambda!344813 (h!71240 zl!343)))))

(declare-fun lt!2355409 () Unit!158151)

(assert (=> d!1972674 (= lt!2355409 (choose!46672 z!1189 (h!71240 zl!343) lambda!344813))))

(assert (=> d!1972674 (= z!1189 (store ((as const (Array Context!11178 Bool)) false) (h!71240 zl!343) true))))

(assert (=> d!1972674 (= (lemmaFlatMapOnSingletonSet!1236 z!1189 (h!71240 zl!343) lambda!344813) lt!2355409)))

(declare-fun b_lambda!239259 () Bool)

(assert (=> (not b_lambda!239259) (not d!1972674)))

(declare-fun bs!1571031 () Bool)

(assert (= bs!1571031 d!1972674))

(assert (=> bs!1571031 m!7105004))

(declare-fun m!7106002 () Bool)

(assert (=> bs!1571031 m!7106002))

(declare-fun m!7106004 () Bool)

(assert (=> bs!1571031 m!7106004))

(declare-fun m!7106006 () Bool)

(assert (=> bs!1571031 m!7106006))

(assert (=> b!6284137 d!1972674))

(declare-fun d!1972676 () Bool)

(assert (=> d!1972676 (= (flatMap!1710 lt!2355224 lambda!344813) (dynLambda!25639 lambda!344813 lt!2355250))))

(declare-fun lt!2355410 () Unit!158151)

(assert (=> d!1972676 (= lt!2355410 (choose!46672 lt!2355224 lt!2355250 lambda!344813))))

(assert (=> d!1972676 (= lt!2355224 (store ((as const (Array Context!11178 Bool)) false) lt!2355250 true))))

(assert (=> d!1972676 (= (lemmaFlatMapOnSingletonSet!1236 lt!2355224 lt!2355250 lambda!344813) lt!2355410)))

(declare-fun b_lambda!239261 () Bool)

(assert (=> (not b_lambda!239261) (not d!1972676)))

(declare-fun bs!1571032 () Bool)

(assert (= bs!1571032 d!1972676))

(assert (=> bs!1571032 m!7105116))

(declare-fun m!7106008 () Bool)

(assert (=> bs!1571032 m!7106008))

(declare-fun m!7106010 () Bool)

(assert (=> bs!1571032 m!7106010))

(assert (=> bs!1571032 m!7105120))

(assert (=> b!6284139 d!1972676))

(declare-fun d!1972678 () Bool)

(assert (=> d!1972678 (= (flatMap!1710 lt!2355224 lambda!344813) (choose!46671 lt!2355224 lambda!344813))))

(declare-fun bs!1571033 () Bool)

(assert (= bs!1571033 d!1972678))

(declare-fun m!7106012 () Bool)

(assert (=> bs!1571033 m!7106012))

(assert (=> b!6284139 d!1972678))

(declare-fun bs!1571034 () Bool)

(declare-fun d!1972680 () Bool)

(assert (= bs!1571034 (and d!1972680 b!6284137)))

(declare-fun lambda!344916 () Int)

(assert (=> bs!1571034 (= lambda!344916 lambda!344813)))

(assert (=> d!1972680 true))

(assert (=> d!1972680 (= (derivationStepZipper!2171 lt!2355224 (h!71239 s!2326)) (flatMap!1710 lt!2355224 lambda!344916))))

(declare-fun bs!1571035 () Bool)

(assert (= bs!1571035 d!1972680))

(declare-fun m!7106014 () Bool)

(assert (=> bs!1571035 m!7106014))

(assert (=> b!6284139 d!1972680))

(declare-fun b!6285112 () Bool)

(declare-fun e!3822020 () (InoxSet Context!11178))

(declare-fun e!3822021 () (InoxSet Context!11178))

(assert (=> b!6285112 (= e!3822020 e!3822021)))

(declare-fun c!1140141 () Bool)

(assert (=> b!6285112 (= c!1140141 ((_ is Cons!64790) (exprs!6089 lt!2355250)))))

(declare-fun b!6285113 () Bool)

(declare-fun call!532110 () (InoxSet Context!11178))

(assert (=> b!6285113 (= e!3822021 call!532110)))

(declare-fun b!6285114 () Bool)

(declare-fun e!3822019 () Bool)

(assert (=> b!6285114 (= e!3822019 (nullable!6198 (h!71238 (exprs!6089 lt!2355250))))))

(declare-fun b!6285115 () Bool)

(assert (=> b!6285115 (= e!3822020 ((_ map or) call!532110 (derivationStepZipperUp!1379 (Context!11179 (t!378476 (exprs!6089 lt!2355250))) (h!71239 s!2326))))))

(declare-fun bm!532105 () Bool)

(assert (=> bm!532105 (= call!532110 (derivationStepZipperDown!1453 (h!71238 (exprs!6089 lt!2355250)) (Context!11179 (t!378476 (exprs!6089 lt!2355250))) (h!71239 s!2326)))))

(declare-fun d!1972682 () Bool)

(declare-fun c!1140142 () Bool)

(assert (=> d!1972682 (= c!1140142 e!3822019)))

(declare-fun res!2591989 () Bool)

(assert (=> d!1972682 (=> (not res!2591989) (not e!3822019))))

(assert (=> d!1972682 (= res!2591989 ((_ is Cons!64790) (exprs!6089 lt!2355250)))))

(assert (=> d!1972682 (= (derivationStepZipperUp!1379 lt!2355250 (h!71239 s!2326)) e!3822020)))

(declare-fun b!6285116 () Bool)

(assert (=> b!6285116 (= e!3822021 ((as const (Array Context!11178 Bool)) false))))

(assert (= (and d!1972682 res!2591989) b!6285114))

(assert (= (and d!1972682 c!1140142) b!6285115))

(assert (= (and d!1972682 (not c!1140142)) b!6285112))

(assert (= (and b!6285112 c!1140141) b!6285113))

(assert (= (and b!6285112 (not c!1140141)) b!6285116))

(assert (= (or b!6285115 b!6285113) bm!532105))

(declare-fun m!7106016 () Bool)

(assert (=> b!6285114 m!7106016))

(declare-fun m!7106018 () Bool)

(assert (=> b!6285115 m!7106018))

(declare-fun m!7106020 () Bool)

(assert (=> bm!532105 m!7106020))

(assert (=> b!6284139 d!1972682))

(assert (=> b!6284139 d!1972650))

(assert (=> b!6284159 d!1972446))

(declare-fun d!1972684 () Bool)

(declare-fun res!2591994 () Bool)

(declare-fun e!3822023 () Bool)

(assert (=> d!1972684 (=> res!2591994 e!3822023)))

(assert (=> d!1972684 (= res!2591994 ((_ is ElementMatch!16205) r!7292))))

(assert (=> d!1972684 (= (validRegex!7941 r!7292) e!3822023)))

(declare-fun b!6285117 () Bool)

(declare-fun res!2591991 () Bool)

(declare-fun e!3822027 () Bool)

(assert (=> b!6285117 (=> (not res!2591991) (not e!3822027))))

(declare-fun call!532112 () Bool)

(assert (=> b!6285117 (= res!2591991 call!532112)))

(declare-fun e!3822028 () Bool)

(assert (=> b!6285117 (= e!3822028 e!3822027)))

(declare-fun b!6285118 () Bool)

(declare-fun e!3822026 () Bool)

(assert (=> b!6285118 (= e!3822023 e!3822026)))

(declare-fun c!1140144 () Bool)

(assert (=> b!6285118 (= c!1140144 ((_ is Star!16205) r!7292))))

(declare-fun b!6285119 () Bool)

(declare-fun e!3822024 () Bool)

(declare-fun e!3822022 () Bool)

(assert (=> b!6285119 (= e!3822024 e!3822022)))

(declare-fun res!2591992 () Bool)

(assert (=> b!6285119 (=> (not res!2591992) (not e!3822022))))

(assert (=> b!6285119 (= res!2591992 call!532112)))

(declare-fun b!6285120 () Bool)

(declare-fun call!532111 () Bool)

(assert (=> b!6285120 (= e!3822027 call!532111)))

(declare-fun b!6285121 () Bool)

(declare-fun e!3822025 () Bool)

(declare-fun call!532113 () Bool)

(assert (=> b!6285121 (= e!3822025 call!532113)))

(declare-fun bm!532106 () Bool)

(assert (=> bm!532106 (= call!532112 call!532113)))

(declare-fun b!6285122 () Bool)

(assert (=> b!6285122 (= e!3822022 call!532111)))

(declare-fun b!6285123 () Bool)

(assert (=> b!6285123 (= e!3822026 e!3822028)))

(declare-fun c!1140143 () Bool)

(assert (=> b!6285123 (= c!1140143 ((_ is Union!16205) r!7292))))

(declare-fun b!6285124 () Bool)

(assert (=> b!6285124 (= e!3822026 e!3822025)))

(declare-fun res!2591990 () Bool)

(assert (=> b!6285124 (= res!2591990 (not (nullable!6198 (reg!16534 r!7292))))))

(assert (=> b!6285124 (=> (not res!2591990) (not e!3822025))))

(declare-fun b!6285125 () Bool)

(declare-fun res!2591993 () Bool)

(assert (=> b!6285125 (=> res!2591993 e!3822024)))

(assert (=> b!6285125 (= res!2591993 (not ((_ is Concat!25050) r!7292)))))

(assert (=> b!6285125 (= e!3822028 e!3822024)))

(declare-fun bm!532107 () Bool)

(assert (=> bm!532107 (= call!532111 (validRegex!7941 (ite c!1140143 (regTwo!32923 r!7292) (regTwo!32922 r!7292))))))

(declare-fun bm!532108 () Bool)

(assert (=> bm!532108 (= call!532113 (validRegex!7941 (ite c!1140144 (reg!16534 r!7292) (ite c!1140143 (regOne!32923 r!7292) (regOne!32922 r!7292)))))))

(assert (= (and d!1972684 (not res!2591994)) b!6285118))

(assert (= (and b!6285118 c!1140144) b!6285124))

(assert (= (and b!6285118 (not c!1140144)) b!6285123))

(assert (= (and b!6285124 res!2591990) b!6285121))

(assert (= (and b!6285123 c!1140143) b!6285117))

(assert (= (and b!6285123 (not c!1140143)) b!6285125))

(assert (= (and b!6285117 res!2591991) b!6285120))

(assert (= (and b!6285125 (not res!2591993)) b!6285119))

(assert (= (and b!6285119 res!2591992) b!6285122))

(assert (= (or b!6285120 b!6285122) bm!532107))

(assert (= (or b!6285117 b!6285119) bm!532106))

(assert (= (or b!6285121 bm!532106) bm!532108))

(declare-fun m!7106022 () Bool)

(assert (=> b!6285124 m!7106022))

(declare-fun m!7106024 () Bool)

(assert (=> bm!532107 m!7106024))

(declare-fun m!7106026 () Bool)

(assert (=> bm!532108 m!7106026))

(assert (=> start!624590 d!1972684))

(declare-fun d!1972686 () Bool)

(declare-fun lt!2355413 () Regex!16205)

(assert (=> d!1972686 (validRegex!7941 lt!2355413)))

(assert (=> d!1972686 (= lt!2355413 (generalisedUnion!2049 (unfocusZipperList!1626 zl!343)))))

(assert (=> d!1972686 (= (unfocusZipper!1947 zl!343) lt!2355413)))

(declare-fun bs!1571036 () Bool)

(assert (= bs!1571036 d!1972686))

(declare-fun m!7106028 () Bool)

(assert (=> bs!1571036 m!7106028))

(assert (=> bs!1571036 m!7105026))

(assert (=> bs!1571036 m!7105026))

(assert (=> bs!1571036 m!7105028))

(assert (=> b!6284156 d!1972686))

(declare-fun bs!1571037 () Bool)

(declare-fun d!1972688 () Bool)

(assert (= bs!1571037 (and d!1972688 d!1972634)))

(declare-fun lambda!344919 () Int)

(assert (=> bs!1571037 (= lambda!344919 lambda!344907)))

(declare-fun bs!1571038 () Bool)

(assert (= bs!1571038 (and d!1972688 d!1972626)))

(assert (=> bs!1571038 (= lambda!344919 lambda!344904)))

(declare-fun bs!1571039 () Bool)

(assert (= bs!1571039 (and d!1972688 d!1972656)))

(assert (=> bs!1571039 (= lambda!344919 lambda!344910)))

(declare-fun bs!1571040 () Bool)

(assert (= bs!1571040 (and d!1972688 d!1972598)))

(assert (=> bs!1571040 (= lambda!344919 lambda!344893)))

(declare-fun bs!1571041 () Bool)

(assert (= bs!1571041 (and d!1972688 d!1972658)))

(assert (=> bs!1571041 (= lambda!344919 lambda!344913)))

(declare-fun bs!1571042 () Bool)

(assert (= bs!1571042 (and d!1972688 d!1972610)))

(assert (=> bs!1571042 (= lambda!344919 lambda!344895)))

(assert (=> d!1972688 (= (inv!83759 setElem!42764) (forall!15348 (exprs!6089 setElem!42764) lambda!344919))))

(declare-fun bs!1571043 () Bool)

(assert (= bs!1571043 d!1972688))

(declare-fun m!7106030 () Bool)

(assert (=> bs!1571043 m!7106030))

(assert (=> setNonEmpty!42764 d!1972688))

(declare-fun d!1972690 () Bool)

(declare-fun c!1140145 () Bool)

(assert (=> d!1972690 (= c!1140145 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3822029 () Bool)

(assert (=> d!1972690 (= (matchZipper!2217 lt!2355232 (t!378477 s!2326)) e!3822029)))

(declare-fun b!6285126 () Bool)

(assert (=> b!6285126 (= e!3822029 (nullableZipper!1975 lt!2355232))))

(declare-fun b!6285127 () Bool)

(assert (=> b!6285127 (= e!3822029 (matchZipper!2217 (derivationStepZipper!2171 lt!2355232 (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972690 c!1140145) b!6285126))

(assert (= (and d!1972690 (not c!1140145)) b!6285127))

(assert (=> d!1972690 m!7105316))

(declare-fun m!7106032 () Bool)

(assert (=> b!6285126 m!7106032))

(assert (=> b!6285127 m!7105320))

(assert (=> b!6285127 m!7105320))

(declare-fun m!7106034 () Bool)

(assert (=> b!6285127 m!7106034))

(assert (=> b!6285127 m!7105324))

(assert (=> b!6285127 m!7106034))

(assert (=> b!6285127 m!7105324))

(declare-fun m!7106036 () Bool)

(assert (=> b!6285127 m!7106036))

(assert (=> b!6284136 d!1972690))

(declare-fun d!1972692 () Bool)

(declare-fun e!3822032 () Bool)

(assert (=> d!1972692 e!3822032))

(declare-fun res!2591997 () Bool)

(assert (=> d!1972692 (=> (not res!2591997) (not e!3822032))))

(declare-fun lt!2355416 () List!64916)

(declare-fun noDuplicate!2039 (List!64916) Bool)

(assert (=> d!1972692 (= res!2591997 (noDuplicate!2039 lt!2355416))))

(declare-fun choose!46673 ((InoxSet Context!11178)) List!64916)

(assert (=> d!1972692 (= lt!2355416 (choose!46673 z!1189))))

(assert (=> d!1972692 (= (toList!9989 z!1189) lt!2355416)))

(declare-fun b!6285130 () Bool)

(declare-fun content!12182 (List!64916) (InoxSet Context!11178))

(assert (=> b!6285130 (= e!3822032 (= (content!12182 lt!2355416) z!1189))))

(assert (= (and d!1972692 res!2591997) b!6285130))

(declare-fun m!7106038 () Bool)

(assert (=> d!1972692 m!7106038))

(declare-fun m!7106040 () Bool)

(assert (=> d!1972692 m!7106040))

(declare-fun m!7106042 () Bool)

(assert (=> b!6285130 m!7106042))

(assert (=> b!6284154 d!1972692))

(declare-fun d!1972694 () Bool)

(declare-fun lt!2355419 () Int)

(assert (=> d!1972694 (>= lt!2355419 0)))

(declare-fun e!3822035 () Int)

(assert (=> d!1972694 (= lt!2355419 e!3822035)))

(declare-fun c!1140149 () Bool)

(assert (=> d!1972694 (= c!1140149 ((_ is Cons!64790) (exprs!6089 lt!2355250)))))

(assert (=> d!1972694 (= (contextDepthTotal!328 lt!2355250) lt!2355419)))

(declare-fun b!6285135 () Bool)

(declare-fun regexDepthTotal!180 (Regex!16205) Int)

(assert (=> b!6285135 (= e!3822035 (+ (regexDepthTotal!180 (h!71238 (exprs!6089 lt!2355250))) (contextDepthTotal!328 (Context!11179 (t!378476 (exprs!6089 lt!2355250))))))))

(declare-fun b!6285136 () Bool)

(assert (=> b!6285136 (= e!3822035 1)))

(assert (= (and d!1972694 c!1140149) b!6285135))

(assert (= (and d!1972694 (not c!1140149)) b!6285136))

(declare-fun m!7106044 () Bool)

(assert (=> b!6285135 m!7106044))

(declare-fun m!7106046 () Bool)

(assert (=> b!6285135 m!7106046))

(assert (=> b!6284153 d!1972694))

(declare-fun d!1972696 () Bool)

(declare-fun lt!2355420 () Int)

(assert (=> d!1972696 (>= lt!2355420 0)))

(declare-fun e!3822036 () Int)

(assert (=> d!1972696 (= lt!2355420 e!3822036)))

(declare-fun c!1140150 () Bool)

(assert (=> d!1972696 (= c!1140150 ((_ is Cons!64790) (exprs!6089 (h!71240 zl!343))))))

(assert (=> d!1972696 (= (contextDepthTotal!328 (h!71240 zl!343)) lt!2355420)))

(declare-fun b!6285137 () Bool)

(assert (=> b!6285137 (= e!3822036 (+ (regexDepthTotal!180 (h!71238 (exprs!6089 (h!71240 zl!343)))) (contextDepthTotal!328 (Context!11179 (t!378476 (exprs!6089 (h!71240 zl!343)))))))))

(declare-fun b!6285138 () Bool)

(assert (=> b!6285138 (= e!3822036 1)))

(assert (= (and d!1972696 c!1140150) b!6285137))

(assert (= (and d!1972696 (not c!1140150)) b!6285138))

(declare-fun m!7106048 () Bool)

(assert (=> b!6285137 m!7106048))

(declare-fun m!7106050 () Bool)

(assert (=> b!6285137 m!7106050))

(assert (=> b!6284153 d!1972696))

(declare-fun d!1972698 () Bool)

(declare-fun c!1140151 () Bool)

(assert (=> d!1972698 (= c!1140151 (isEmpty!36840 (t!378477 s!2326)))))

(declare-fun e!3822037 () Bool)

(assert (=> d!1972698 (= (matchZipper!2217 (derivationStepZipper!2171 lt!2355240 (h!71239 s!2326)) (t!378477 s!2326)) e!3822037)))

(declare-fun b!6285139 () Bool)

(assert (=> b!6285139 (= e!3822037 (nullableZipper!1975 (derivationStepZipper!2171 lt!2355240 (h!71239 s!2326))))))

(declare-fun b!6285140 () Bool)

(assert (=> b!6285140 (= e!3822037 (matchZipper!2217 (derivationStepZipper!2171 (derivationStepZipper!2171 lt!2355240 (h!71239 s!2326)) (head!12909 (t!378477 s!2326))) (tail!11994 (t!378477 s!2326))))))

(assert (= (and d!1972698 c!1140151) b!6285139))

(assert (= (and d!1972698 (not c!1140151)) b!6285140))

(assert (=> d!1972698 m!7105316))

(assert (=> b!6285139 m!7105128))

(declare-fun m!7106052 () Bool)

(assert (=> b!6285139 m!7106052))

(assert (=> b!6285140 m!7105320))

(assert (=> b!6285140 m!7105128))

(assert (=> b!6285140 m!7105320))

(declare-fun m!7106054 () Bool)

(assert (=> b!6285140 m!7106054))

(assert (=> b!6285140 m!7105324))

(assert (=> b!6285140 m!7106054))

(assert (=> b!6285140 m!7105324))

(declare-fun m!7106056 () Bool)

(assert (=> b!6285140 m!7106056))

(assert (=> b!6284132 d!1972698))

(declare-fun bs!1571044 () Bool)

(declare-fun d!1972700 () Bool)

(assert (= bs!1571044 (and d!1972700 b!6284137)))

(declare-fun lambda!344920 () Int)

(assert (=> bs!1571044 (= lambda!344920 lambda!344813)))

(declare-fun bs!1571045 () Bool)

(assert (= bs!1571045 (and d!1972700 d!1972680)))

(assert (=> bs!1571045 (= lambda!344920 lambda!344916)))

(assert (=> d!1972700 true))

(assert (=> d!1972700 (= (derivationStepZipper!2171 lt!2355240 (h!71239 s!2326)) (flatMap!1710 lt!2355240 lambda!344920))))

(declare-fun bs!1571046 () Bool)

(assert (= bs!1571046 d!1972700))

(declare-fun m!7106058 () Bool)

(assert (=> bs!1571046 m!7106058))

(assert (=> b!6284132 d!1972700))

(declare-fun d!1972702 () Bool)

(assert (=> d!1972702 (= (isEmpty!36838 (t!378478 zl!343)) ((_ is Nil!64792) (t!378478 zl!343)))))

(assert (=> b!6284155 d!1972702))

(declare-fun bs!1571047 () Bool)

(declare-fun b!6285149 () Bool)

(assert (= bs!1571047 (and b!6285149 d!1972614)))

(declare-fun lambda!344921 () Int)

(assert (=> bs!1571047 (not (= lambda!344921 lambda!344896))))

(assert (=> bs!1571047 (not (= lambda!344921 lambda!344897))))

(declare-fun bs!1571048 () Bool)

(assert (= bs!1571048 (and b!6285149 b!6284915)))

(assert (=> bs!1571048 (= (and (= (reg!16534 r!7292) (reg!16534 lt!2355226)) (= r!7292 lt!2355226)) (= lambda!344921 lambda!344902))))

(declare-fun bs!1571049 () Bool)

(assert (= bs!1571049 (and b!6285149 b!6284976)))

(assert (=> bs!1571049 (not (= lambda!344921 lambda!344906))))

(declare-fun bs!1571050 () Bool)

(assert (= bs!1571050 (and b!6285149 b!6284148)))

(assert (=> bs!1571050 (not (= lambda!344921 lambda!344811))))

(declare-fun bs!1571051 () Bool)

(assert (= bs!1571051 (and b!6285149 d!1972602)))

(assert (=> bs!1571051 (not (= lambda!344921 lambda!344894))))

(declare-fun bs!1571052 () Bool)

(assert (= bs!1571052 (and b!6285149 d!1972524)))

(assert (=> bs!1571052 (not (= lambda!344921 lambda!344872))))

(assert (=> bs!1571052 (not (= lambda!344921 lambda!344870))))

(declare-fun bs!1571053 () Bool)

(assert (= bs!1571053 (and b!6285149 b!6284979)))

(assert (=> bs!1571053 (= (and (= (reg!16534 r!7292) (reg!16534 lt!2355217)) (= r!7292 lt!2355217)) (= lambda!344921 lambda!344905))))

(declare-fun bs!1571054 () Bool)

(assert (= bs!1571054 (and b!6285149 b!6284912)))

(assert (=> bs!1571054 (not (= lambda!344921 lambda!344903))))

(declare-fun bs!1571055 () Bool)

(assert (= bs!1571055 (and b!6285149 d!1972514)))

(assert (=> bs!1571055 (not (= lambda!344921 lambda!344856))))

(declare-fun bs!1571056 () Bool)

(assert (= bs!1571056 (and b!6285149 b!6284147)))

(assert (=> bs!1571056 (not (= lambda!344921 lambda!344814))))

(assert (=> bs!1571056 (not (= lambda!344921 lambda!344815))))

(assert (=> bs!1571050 (not (= lambda!344921 lambda!344812))))

(assert (=> b!6285149 true))

(assert (=> b!6285149 true))

(declare-fun bs!1571057 () Bool)

(declare-fun b!6285146 () Bool)

(assert (= bs!1571057 (and b!6285146 d!1972614)))

(declare-fun lambda!344922 () Int)

(assert (=> bs!1571057 (not (= lambda!344922 lambda!344896))))

(assert (=> bs!1571057 (= (and (= (regOne!32922 r!7292) (regOne!32922 (regOne!32922 r!7292))) (= (regTwo!32922 r!7292) lt!2355217)) (= lambda!344922 lambda!344897))))

(declare-fun bs!1571058 () Bool)

(assert (= bs!1571058 (and b!6285146 b!6284915)))

(assert (=> bs!1571058 (not (= lambda!344922 lambda!344902))))

(declare-fun bs!1571059 () Bool)

(assert (= bs!1571059 (and b!6285146 b!6284976)))

(assert (=> bs!1571059 (= (and (= (regOne!32922 r!7292) (regOne!32922 lt!2355217)) (= (regTwo!32922 r!7292) (regTwo!32922 lt!2355217))) (= lambda!344922 lambda!344906))))

(declare-fun bs!1571060 () Bool)

(assert (= bs!1571060 (and b!6285146 b!6284148)))

(assert (=> bs!1571060 (not (= lambda!344922 lambda!344811))))

(declare-fun bs!1571061 () Bool)

(assert (= bs!1571061 (and b!6285146 d!1972602)))

(assert (=> bs!1571061 (not (= lambda!344922 lambda!344894))))

(declare-fun bs!1571062 () Bool)

(assert (= bs!1571062 (and b!6285146 d!1972524)))

(assert (=> bs!1571062 (= lambda!344922 lambda!344872)))

(declare-fun bs!1571063 () Bool)

(assert (= bs!1571063 (and b!6285146 b!6285149)))

(assert (=> bs!1571063 (not (= lambda!344922 lambda!344921))))

(assert (=> bs!1571062 (not (= lambda!344922 lambda!344870))))

(declare-fun bs!1571064 () Bool)

(assert (= bs!1571064 (and b!6285146 b!6284979)))

(assert (=> bs!1571064 (not (= lambda!344922 lambda!344905))))

(declare-fun bs!1571065 () Bool)

(assert (= bs!1571065 (and b!6285146 b!6284912)))

(assert (=> bs!1571065 (= (and (= (regOne!32922 r!7292) (regOne!32922 lt!2355226)) (= (regTwo!32922 r!7292) (regTwo!32922 lt!2355226))) (= lambda!344922 lambda!344903))))

(declare-fun bs!1571066 () Bool)

(assert (= bs!1571066 (and b!6285146 d!1972514)))

(assert (=> bs!1571066 (not (= lambda!344922 lambda!344856))))

(declare-fun bs!1571067 () Bool)

(assert (= bs!1571067 (and b!6285146 b!6284147)))

(assert (=> bs!1571067 (not (= lambda!344922 lambda!344814))))

(assert (=> bs!1571067 (= (and (= (regOne!32922 r!7292) (regOne!32922 (regOne!32922 r!7292))) (= (regTwo!32922 r!7292) lt!2355217)) (= lambda!344922 lambda!344815))))

(assert (=> bs!1571060 (= lambda!344922 lambda!344812)))

(assert (=> b!6285146 true))

(assert (=> b!6285146 true))

(declare-fun b!6285141 () Bool)

(declare-fun e!3822042 () Bool)

(assert (=> b!6285141 (= e!3822042 (= s!2326 (Cons!64791 (c!1139836 r!7292) Nil!64791)))))

(declare-fun bm!532109 () Bool)

(declare-fun call!532115 () Bool)

(assert (=> bm!532109 (= call!532115 (isEmpty!36840 s!2326))))

(declare-fun b!6285142 () Bool)

(declare-fun e!3822038 () Bool)

(declare-fun e!3822041 () Bool)

(assert (=> b!6285142 (= e!3822038 e!3822041)))

(declare-fun res!2592000 () Bool)

(assert (=> b!6285142 (= res!2592000 (matchRSpec!3306 (regOne!32923 r!7292) s!2326))))

(assert (=> b!6285142 (=> res!2592000 e!3822041)))

(declare-fun b!6285143 () Bool)

(declare-fun e!3822040 () Bool)

(assert (=> b!6285143 (= e!3822038 e!3822040)))

(declare-fun c!1140155 () Bool)

(assert (=> b!6285143 (= c!1140155 ((_ is Star!16205) r!7292))))

(declare-fun b!6285144 () Bool)

(declare-fun e!3822043 () Bool)

(assert (=> b!6285144 (= e!3822043 call!532115)))

(declare-fun b!6285145 () Bool)

(assert (=> b!6285145 (= e!3822041 (matchRSpec!3306 (regTwo!32923 r!7292) s!2326))))

(declare-fun call!532114 () Bool)

(assert (=> b!6285146 (= e!3822040 call!532114)))

(declare-fun b!6285147 () Bool)

(declare-fun e!3822039 () Bool)

(assert (=> b!6285147 (= e!3822043 e!3822039)))

(declare-fun res!2591998 () Bool)

(assert (=> b!6285147 (= res!2591998 (not ((_ is EmptyLang!16205) r!7292)))))

(assert (=> b!6285147 (=> (not res!2591998) (not e!3822039))))

(declare-fun b!6285148 () Bool)

(declare-fun c!1140152 () Bool)

(assert (=> b!6285148 (= c!1140152 ((_ is ElementMatch!16205) r!7292))))

(assert (=> b!6285148 (= e!3822039 e!3822042)))

(declare-fun d!1972704 () Bool)

(declare-fun c!1140153 () Bool)

(assert (=> d!1972704 (= c!1140153 ((_ is EmptyExpr!16205) r!7292))))

(assert (=> d!1972704 (= (matchRSpec!3306 r!7292 s!2326) e!3822043)))

(declare-fun e!3822044 () Bool)

(assert (=> b!6285149 (= e!3822044 call!532114)))

(declare-fun b!6285150 () Bool)

(declare-fun res!2591999 () Bool)

(assert (=> b!6285150 (=> res!2591999 e!3822044)))

(assert (=> b!6285150 (= res!2591999 call!532115)))

(assert (=> b!6285150 (= e!3822040 e!3822044)))

(declare-fun bm!532110 () Bool)

(assert (=> bm!532110 (= call!532114 (Exists!3275 (ite c!1140155 lambda!344921 lambda!344922)))))

(declare-fun b!6285151 () Bool)

(declare-fun c!1140154 () Bool)

(assert (=> b!6285151 (= c!1140154 ((_ is Union!16205) r!7292))))

(assert (=> b!6285151 (= e!3822042 e!3822038)))

(assert (= (and d!1972704 c!1140153) b!6285144))

(assert (= (and d!1972704 (not c!1140153)) b!6285147))

(assert (= (and b!6285147 res!2591998) b!6285148))

(assert (= (and b!6285148 c!1140152) b!6285141))

(assert (= (and b!6285148 (not c!1140152)) b!6285151))

(assert (= (and b!6285151 c!1140154) b!6285142))

(assert (= (and b!6285151 (not c!1140154)) b!6285143))

(assert (= (and b!6285142 (not res!2592000)) b!6285145))

(assert (= (and b!6285143 c!1140155) b!6285150))

(assert (= (and b!6285143 (not c!1140155)) b!6285146))

(assert (= (and b!6285150 (not res!2591999)) b!6285149))

(assert (= (or b!6285149 b!6285146) bm!532110))

(assert (= (or b!6285144 b!6285150) bm!532109))

(assert (=> bm!532109 m!7105754))

(declare-fun m!7106060 () Bool)

(assert (=> b!6285142 m!7106060))

(declare-fun m!7106062 () Bool)

(assert (=> b!6285145 m!7106062))

(declare-fun m!7106064 () Bool)

(assert (=> bm!532110 m!7106064))

(assert (=> b!6284134 d!1972704))

(declare-fun b!6285152 () Bool)

(declare-fun e!3822047 () Bool)

(assert (=> b!6285152 (= e!3822047 (nullable!6198 r!7292))))

(declare-fun b!6285153 () Bool)

(declare-fun res!2592008 () Bool)

(declare-fun e!3822049 () Bool)

(assert (=> b!6285153 (=> res!2592008 e!3822049)))

(assert (=> b!6285153 (= res!2592008 (not (isEmpty!36840 (tail!11994 s!2326))))))

(declare-fun b!6285154 () Bool)

(declare-fun e!3822048 () Bool)

(assert (=> b!6285154 (= e!3822048 (= (head!12909 s!2326) (c!1139836 r!7292)))))

(declare-fun b!6285155 () Bool)

(declare-fun e!3822050 () Bool)

(declare-fun lt!2355421 () Bool)

(declare-fun call!532116 () Bool)

(assert (=> b!6285155 (= e!3822050 (= lt!2355421 call!532116))))

(declare-fun bm!532111 () Bool)

(assert (=> bm!532111 (= call!532116 (isEmpty!36840 s!2326))))

(declare-fun b!6285156 () Bool)

(declare-fun res!2592007 () Bool)

(assert (=> b!6285156 (=> (not res!2592007) (not e!3822048))))

(assert (=> b!6285156 (= res!2592007 (not call!532116))))

(declare-fun b!6285157 () Bool)

(declare-fun res!2592002 () Bool)

(declare-fun e!3822051 () Bool)

(assert (=> b!6285157 (=> res!2592002 e!3822051)))

(assert (=> b!6285157 (= res!2592002 e!3822048)))

(declare-fun res!2592001 () Bool)

(assert (=> b!6285157 (=> (not res!2592001) (not e!3822048))))

(assert (=> b!6285157 (= res!2592001 lt!2355421)))

(declare-fun b!6285158 () Bool)

(declare-fun e!3822045 () Bool)

(assert (=> b!6285158 (= e!3822045 e!3822049)))

(declare-fun res!2592003 () Bool)

(assert (=> b!6285158 (=> res!2592003 e!3822049)))

(assert (=> b!6285158 (= res!2592003 call!532116)))

(declare-fun b!6285159 () Bool)

(declare-fun e!3822046 () Bool)

(assert (=> b!6285159 (= e!3822050 e!3822046)))

(declare-fun c!1140157 () Bool)

(assert (=> b!6285159 (= c!1140157 ((_ is EmptyLang!16205) r!7292))))

(declare-fun b!6285160 () Bool)

(declare-fun res!2592005 () Bool)

(assert (=> b!6285160 (=> (not res!2592005) (not e!3822048))))

(assert (=> b!6285160 (= res!2592005 (isEmpty!36840 (tail!11994 s!2326)))))

(declare-fun b!6285161 () Bool)

(assert (=> b!6285161 (= e!3822047 (matchR!8388 (derivativeStep!4914 r!7292 (head!12909 s!2326)) (tail!11994 s!2326)))))

(declare-fun b!6285162 () Bool)

(assert (=> b!6285162 (= e!3822046 (not lt!2355421))))

(declare-fun b!6285163 () Bool)

(assert (=> b!6285163 (= e!3822049 (not (= (head!12909 s!2326) (c!1139836 r!7292))))))

(declare-fun b!6285164 () Bool)

(assert (=> b!6285164 (= e!3822051 e!3822045)))

(declare-fun res!2592006 () Bool)

(assert (=> b!6285164 (=> (not res!2592006) (not e!3822045))))

(assert (=> b!6285164 (= res!2592006 (not lt!2355421))))

(declare-fun b!6285165 () Bool)

(declare-fun res!2592004 () Bool)

(assert (=> b!6285165 (=> res!2592004 e!3822051)))

(assert (=> b!6285165 (= res!2592004 (not ((_ is ElementMatch!16205) r!7292)))))

(assert (=> b!6285165 (= e!3822046 e!3822051)))

(declare-fun d!1972706 () Bool)

(assert (=> d!1972706 e!3822050))

(declare-fun c!1140156 () Bool)

(assert (=> d!1972706 (= c!1140156 ((_ is EmptyExpr!16205) r!7292))))

(assert (=> d!1972706 (= lt!2355421 e!3822047)))

(declare-fun c!1140158 () Bool)

(assert (=> d!1972706 (= c!1140158 (isEmpty!36840 s!2326))))

(assert (=> d!1972706 (validRegex!7941 r!7292)))

(assert (=> d!1972706 (= (matchR!8388 r!7292 s!2326) lt!2355421)))

(assert (= (and d!1972706 c!1140158) b!6285152))

(assert (= (and d!1972706 (not c!1140158)) b!6285161))

(assert (= (and d!1972706 c!1140156) b!6285155))

(assert (= (and d!1972706 (not c!1140156)) b!6285159))

(assert (= (and b!6285159 c!1140157) b!6285162))

(assert (= (and b!6285159 (not c!1140157)) b!6285165))

(assert (= (and b!6285165 (not res!2592004)) b!6285157))

(assert (= (and b!6285157 res!2592001) b!6285156))

(assert (= (and b!6285156 res!2592007) b!6285160))

(assert (= (and b!6285160 res!2592005) b!6285154))

(assert (= (and b!6285157 (not res!2592002)) b!6285164))

(assert (= (and b!6285164 res!2592006) b!6285158))

(assert (= (and b!6285158 (not res!2592003)) b!6285153))

(assert (= (and b!6285153 (not res!2592008)) b!6285163))

(assert (= (or b!6285155 b!6285156 b!6285158) bm!532111))

(declare-fun m!7106066 () Bool)

(assert (=> b!6285152 m!7106066))

(assert (=> b!6285154 m!7105748))

(assert (=> b!6285160 m!7105750))

(assert (=> b!6285160 m!7105750))

(assert (=> b!6285160 m!7105752))

(assert (=> d!1972706 m!7105754))

(assert (=> d!1972706 m!7105074))

(assert (=> b!6285153 m!7105750))

(assert (=> b!6285153 m!7105750))

(assert (=> b!6285153 m!7105752))

(assert (=> b!6285161 m!7105748))

(assert (=> b!6285161 m!7105748))

(declare-fun m!7106068 () Bool)

(assert (=> b!6285161 m!7106068))

(assert (=> b!6285161 m!7105750))

(assert (=> b!6285161 m!7106068))

(assert (=> b!6285161 m!7105750))

(declare-fun m!7106070 () Bool)

(assert (=> b!6285161 m!7106070))

(assert (=> bm!532111 m!7105754))

(assert (=> b!6285163 m!7105748))

(assert (=> b!6284134 d!1972706))

(declare-fun d!1972708 () Bool)

(assert (=> d!1972708 (= (matchR!8388 r!7292 s!2326) (matchRSpec!3306 r!7292 s!2326))))

(declare-fun lt!2355422 () Unit!158151)

(assert (=> d!1972708 (= lt!2355422 (choose!46669 r!7292 s!2326))))

(assert (=> d!1972708 (validRegex!7941 r!7292)))

(assert (=> d!1972708 (= (mainMatchTheorem!3306 r!7292 s!2326) lt!2355422)))

(declare-fun bs!1571068 () Bool)

(assert (= bs!1571068 d!1972708))

(assert (=> bs!1571068 m!7105092))

(assert (=> bs!1571068 m!7105090))

(declare-fun m!7106072 () Bool)

(assert (=> bs!1571068 m!7106072))

(assert (=> bs!1571068 m!7105074))

(assert (=> b!6284134 d!1972708))

(declare-fun d!1972710 () Bool)

(assert (=> d!1972710 (= (isEmpty!36837 (t!378476 (exprs!6089 (h!71240 zl!343)))) ((_ is Nil!64790) (t!378476 (exprs!6089 (h!71240 zl!343)))))))

(assert (=> b!6284133 d!1972710))

(declare-fun b!6285166 () Bool)

(declare-fun c!1140159 () Bool)

(declare-fun e!3822052 () Bool)

(assert (=> b!6285166 (= c!1140159 e!3822052)))

(declare-fun res!2592009 () Bool)

(assert (=> b!6285166 (=> (not res!2592009) (not e!3822052))))

(assert (=> b!6285166 (= res!2592009 ((_ is Concat!25050) (regTwo!32922 (regOne!32922 r!7292))))))

(declare-fun e!3822057 () (InoxSet Context!11178))

(declare-fun e!3822054 () (InoxSet Context!11178))

(assert (=> b!6285166 (= e!3822057 e!3822054)))

(declare-fun b!6285167 () Bool)

(declare-fun e!3822055 () (InoxSet Context!11178))

(assert (=> b!6285167 (= e!3822055 (store ((as const (Array Context!11178 Bool)) false) lt!2355228 true))))

(declare-fun b!6285168 () Bool)

(assert (=> b!6285168 (= e!3822052 (nullable!6198 (regOne!32922 (regTwo!32922 (regOne!32922 r!7292)))))))

(declare-fun bm!532112 () Bool)

(declare-fun call!532119 () List!64914)

(declare-fun c!1140163 () Bool)

(assert (=> bm!532112 (= call!532119 ($colon$colon!2070 (exprs!6089 lt!2355228) (ite (or c!1140159 c!1140163) (regTwo!32922 (regTwo!32922 (regOne!32922 r!7292))) (regTwo!32922 (regOne!32922 r!7292)))))))

(declare-fun b!6285169 () Bool)

(declare-fun call!532117 () (InoxSet Context!11178))

(declare-fun call!532118 () (InoxSet Context!11178))

(assert (=> b!6285169 (= e!3822054 ((_ map or) call!532117 call!532118))))

(declare-fun bm!532113 () Bool)

(declare-fun c!1140160 () Bool)

(assert (=> bm!532113 (= call!532117 (derivationStepZipperDown!1453 (ite c!1140160 (regTwo!32923 (regTwo!32922 (regOne!32922 r!7292))) (regOne!32922 (regTwo!32922 (regOne!32922 r!7292)))) (ite c!1140160 lt!2355228 (Context!11179 call!532119)) (h!71239 s!2326)))))

(declare-fun b!6285170 () Bool)

(declare-fun call!532122 () (InoxSet Context!11178))

(assert (=> b!6285170 (= e!3822057 ((_ map or) call!532122 call!532117))))

(declare-fun bm!532114 () Bool)

(declare-fun call!532121 () List!64914)

(assert (=> bm!532114 (= call!532121 call!532119)))

(declare-fun bm!532115 () Bool)

(declare-fun call!532120 () (InoxSet Context!11178))

(assert (=> bm!532115 (= call!532120 call!532118)))

(declare-fun b!6285171 () Bool)

(assert (=> b!6285171 (= e!3822055 e!3822057)))

(assert (=> b!6285171 (= c!1140160 ((_ is Union!16205) (regTwo!32922 (regOne!32922 r!7292))))))

(declare-fun b!6285172 () Bool)

(declare-fun e!3822056 () (InoxSet Context!11178))

(assert (=> b!6285172 (= e!3822056 call!532120)))

(declare-fun b!6285173 () Bool)

(declare-fun c!1140161 () Bool)

(assert (=> b!6285173 (= c!1140161 ((_ is Star!16205) (regTwo!32922 (regOne!32922 r!7292))))))

(declare-fun e!3822053 () (InoxSet Context!11178))

(assert (=> b!6285173 (= e!3822056 e!3822053)))

(declare-fun bm!532116 () Bool)

(assert (=> bm!532116 (= call!532122 (derivationStepZipperDown!1453 (ite c!1140160 (regOne!32923 (regTwo!32922 (regOne!32922 r!7292))) (ite c!1140159 (regTwo!32922 (regTwo!32922 (regOne!32922 r!7292))) (ite c!1140163 (regOne!32922 (regTwo!32922 (regOne!32922 r!7292))) (reg!16534 (regTwo!32922 (regOne!32922 r!7292)))))) (ite (or c!1140160 c!1140159) lt!2355228 (Context!11179 call!532121)) (h!71239 s!2326)))))

(declare-fun d!1972712 () Bool)

(declare-fun c!1140162 () Bool)

(assert (=> d!1972712 (= c!1140162 (and ((_ is ElementMatch!16205) (regTwo!32922 (regOne!32922 r!7292))) (= (c!1139836 (regTwo!32922 (regOne!32922 r!7292))) (h!71239 s!2326))))))

(assert (=> d!1972712 (= (derivationStepZipperDown!1453 (regTwo!32922 (regOne!32922 r!7292)) lt!2355228 (h!71239 s!2326)) e!3822055)))

(declare-fun b!6285174 () Bool)

(assert (=> b!6285174 (= e!3822053 call!532120)))

(declare-fun b!6285175 () Bool)

(assert (=> b!6285175 (= e!3822054 e!3822056)))

(assert (=> b!6285175 (= c!1140163 ((_ is Concat!25050) (regTwo!32922 (regOne!32922 r!7292))))))

(declare-fun b!6285176 () Bool)

(assert (=> b!6285176 (= e!3822053 ((as const (Array Context!11178 Bool)) false))))

(declare-fun bm!532117 () Bool)

(assert (=> bm!532117 (= call!532118 call!532122)))

(assert (= (and d!1972712 c!1140162) b!6285167))

(assert (= (and d!1972712 (not c!1140162)) b!6285171))

(assert (= (and b!6285171 c!1140160) b!6285170))

(assert (= (and b!6285171 (not c!1140160)) b!6285166))

(assert (= (and b!6285166 res!2592009) b!6285168))

(assert (= (and b!6285166 c!1140159) b!6285169))

(assert (= (and b!6285166 (not c!1140159)) b!6285175))

(assert (= (and b!6285175 c!1140163) b!6285172))

(assert (= (and b!6285175 (not c!1140163)) b!6285173))

(assert (= (and b!6285173 c!1140161) b!6285174))

(assert (= (and b!6285173 (not c!1140161)) b!6285176))

(assert (= (or b!6285172 b!6285174) bm!532114))

(assert (= (or b!6285172 b!6285174) bm!532115))

(assert (= (or b!6285169 bm!532114) bm!532112))

(assert (= (or b!6285169 bm!532115) bm!532117))

(assert (= (or b!6285170 b!6285169) bm!532113))

(assert (= (or b!6285170 bm!532117) bm!532116))

(declare-fun m!7106074 () Bool)

(assert (=> bm!532112 m!7106074))

(assert (=> b!6285167 m!7105976))

(declare-fun m!7106076 () Bool)

(assert (=> b!6285168 m!7106076))

(declare-fun m!7106078 () Bool)

(assert (=> bm!532113 m!7106078))

(declare-fun m!7106080 () Bool)

(assert (=> bm!532116 m!7106080))

(assert (=> b!6284151 d!1972712))

(declare-fun b!6285177 () Bool)

(declare-fun c!1140164 () Bool)

(declare-fun e!3822058 () Bool)

(assert (=> b!6285177 (= c!1140164 e!3822058)))

(declare-fun res!2592010 () Bool)

(assert (=> b!6285177 (=> (not res!2592010) (not e!3822058))))

(assert (=> b!6285177 (= res!2592010 ((_ is Concat!25050) (regOne!32922 (regOne!32922 r!7292))))))

(declare-fun e!3822063 () (InoxSet Context!11178))

(declare-fun e!3822060 () (InoxSet Context!11178))

(assert (=> b!6285177 (= e!3822063 e!3822060)))

(declare-fun b!6285178 () Bool)

(declare-fun e!3822061 () (InoxSet Context!11178))

(assert (=> b!6285178 (= e!3822061 (store ((as const (Array Context!11178 Bool)) false) lt!2355213 true))))

(declare-fun b!6285179 () Bool)

(assert (=> b!6285179 (= e!3822058 (nullable!6198 (regOne!32922 (regOne!32922 (regOne!32922 r!7292)))))))

(declare-fun bm!532118 () Bool)

(declare-fun call!532125 () List!64914)

(declare-fun c!1140168 () Bool)

(assert (=> bm!532118 (= call!532125 ($colon$colon!2070 (exprs!6089 lt!2355213) (ite (or c!1140164 c!1140168) (regTwo!32922 (regOne!32922 (regOne!32922 r!7292))) (regOne!32922 (regOne!32922 r!7292)))))))

(declare-fun b!6285180 () Bool)

(declare-fun call!532123 () (InoxSet Context!11178))

(declare-fun call!532124 () (InoxSet Context!11178))

(assert (=> b!6285180 (= e!3822060 ((_ map or) call!532123 call!532124))))

(declare-fun c!1140165 () Bool)

(declare-fun bm!532119 () Bool)

(assert (=> bm!532119 (= call!532123 (derivationStepZipperDown!1453 (ite c!1140165 (regTwo!32923 (regOne!32922 (regOne!32922 r!7292))) (regOne!32922 (regOne!32922 (regOne!32922 r!7292)))) (ite c!1140165 lt!2355213 (Context!11179 call!532125)) (h!71239 s!2326)))))

(declare-fun b!6285181 () Bool)

(declare-fun call!532128 () (InoxSet Context!11178))

(assert (=> b!6285181 (= e!3822063 ((_ map or) call!532128 call!532123))))

(declare-fun bm!532120 () Bool)

(declare-fun call!532127 () List!64914)

(assert (=> bm!532120 (= call!532127 call!532125)))

(declare-fun bm!532121 () Bool)

(declare-fun call!532126 () (InoxSet Context!11178))

(assert (=> bm!532121 (= call!532126 call!532124)))

(declare-fun b!6285182 () Bool)

(assert (=> b!6285182 (= e!3822061 e!3822063)))

(assert (=> b!6285182 (= c!1140165 ((_ is Union!16205) (regOne!32922 (regOne!32922 r!7292))))))

(declare-fun b!6285183 () Bool)

(declare-fun e!3822062 () (InoxSet Context!11178))

(assert (=> b!6285183 (= e!3822062 call!532126)))

(declare-fun b!6285184 () Bool)

(declare-fun c!1140166 () Bool)

(assert (=> b!6285184 (= c!1140166 ((_ is Star!16205) (regOne!32922 (regOne!32922 r!7292))))))

(declare-fun e!3822059 () (InoxSet Context!11178))

(assert (=> b!6285184 (= e!3822062 e!3822059)))

(declare-fun bm!532122 () Bool)

(assert (=> bm!532122 (= call!532128 (derivationStepZipperDown!1453 (ite c!1140165 (regOne!32923 (regOne!32922 (regOne!32922 r!7292))) (ite c!1140164 (regTwo!32922 (regOne!32922 (regOne!32922 r!7292))) (ite c!1140168 (regOne!32922 (regOne!32922 (regOne!32922 r!7292))) (reg!16534 (regOne!32922 (regOne!32922 r!7292)))))) (ite (or c!1140165 c!1140164) lt!2355213 (Context!11179 call!532127)) (h!71239 s!2326)))))

(declare-fun d!1972714 () Bool)

(declare-fun c!1140167 () Bool)

(assert (=> d!1972714 (= c!1140167 (and ((_ is ElementMatch!16205) (regOne!32922 (regOne!32922 r!7292))) (= (c!1139836 (regOne!32922 (regOne!32922 r!7292))) (h!71239 s!2326))))))

(assert (=> d!1972714 (= (derivationStepZipperDown!1453 (regOne!32922 (regOne!32922 r!7292)) lt!2355213 (h!71239 s!2326)) e!3822061)))

(declare-fun b!6285185 () Bool)

(assert (=> b!6285185 (= e!3822059 call!532126)))

(declare-fun b!6285186 () Bool)

(assert (=> b!6285186 (= e!3822060 e!3822062)))

(assert (=> b!6285186 (= c!1140168 ((_ is Concat!25050) (regOne!32922 (regOne!32922 r!7292))))))

(declare-fun b!6285187 () Bool)

(assert (=> b!6285187 (= e!3822059 ((as const (Array Context!11178 Bool)) false))))

(declare-fun bm!532123 () Bool)

(assert (=> bm!532123 (= call!532124 call!532128)))

(assert (= (and d!1972714 c!1140167) b!6285178))

(assert (= (and d!1972714 (not c!1140167)) b!6285182))

(assert (= (and b!6285182 c!1140165) b!6285181))

(assert (= (and b!6285182 (not c!1140165)) b!6285177))

(assert (= (and b!6285177 res!2592010) b!6285179))

(assert (= (and b!6285177 c!1140164) b!6285180))

(assert (= (and b!6285177 (not c!1140164)) b!6285186))

(assert (= (and b!6285186 c!1140168) b!6285183))

(assert (= (and b!6285186 (not c!1140168)) b!6285184))

(assert (= (and b!6285184 c!1140166) b!6285185))

(assert (= (and b!6285184 (not c!1140166)) b!6285187))

(assert (= (or b!6285183 b!6285185) bm!532120))

(assert (= (or b!6285183 b!6285185) bm!532121))

(assert (= (or b!6285180 bm!532120) bm!532118))

(assert (= (or b!6285180 bm!532121) bm!532123))

(assert (= (or b!6285181 b!6285180) bm!532119))

(assert (= (or b!6285181 bm!532123) bm!532122))

(declare-fun m!7106082 () Bool)

(assert (=> bm!532118 m!7106082))

(assert (=> b!6285178 m!7105112))

(declare-fun m!7106084 () Bool)

(assert (=> b!6285179 m!7106084))

(declare-fun m!7106086 () Bool)

(assert (=> bm!532119 m!7106086))

(declare-fun m!7106088 () Bool)

(assert (=> bm!532122 m!7106088))

(assert (=> b!6284151 d!1972714))

(declare-fun bs!1571069 () Bool)

(declare-fun d!1972716 () Bool)

(assert (= bs!1571069 (and d!1972716 d!1972634)))

(declare-fun lambda!344923 () Int)

(assert (=> bs!1571069 (= lambda!344923 lambda!344907)))

(declare-fun bs!1571070 () Bool)

(assert (= bs!1571070 (and d!1972716 d!1972626)))

(assert (=> bs!1571070 (= lambda!344923 lambda!344904)))

(declare-fun bs!1571071 () Bool)

(assert (= bs!1571071 (and d!1972716 d!1972656)))

(assert (=> bs!1571071 (= lambda!344923 lambda!344910)))

(declare-fun bs!1571072 () Bool)

(assert (= bs!1571072 (and d!1972716 d!1972598)))

(assert (=> bs!1571072 (= lambda!344923 lambda!344893)))

(declare-fun bs!1571073 () Bool)

(assert (= bs!1571073 (and d!1972716 d!1972688)))

(assert (=> bs!1571073 (= lambda!344923 lambda!344919)))

(declare-fun bs!1571074 () Bool)

(assert (= bs!1571074 (and d!1972716 d!1972658)))

(assert (=> bs!1571074 (= lambda!344923 lambda!344913)))

(declare-fun bs!1571075 () Bool)

(assert (= bs!1571075 (and d!1972716 d!1972610)))

(assert (=> bs!1571075 (= lambda!344923 lambda!344895)))

(assert (=> d!1972716 (= (inv!83759 (h!71240 zl!343)) (forall!15348 (exprs!6089 (h!71240 zl!343)) lambda!344923))))

(declare-fun bs!1571076 () Bool)

(assert (= bs!1571076 d!1972716))

(declare-fun m!7106090 () Bool)

(assert (=> bs!1571076 m!7106090))

(assert (=> b!6284130 d!1972716))

(declare-fun b!6285192 () Bool)

(declare-fun e!3822066 () Bool)

(declare-fun tp!1751039 () Bool)

(assert (=> b!6285192 (= e!3822066 (and tp_is_empty!41663 tp!1751039))))

(assert (=> b!6284143 (= tp!1750969 e!3822066)))

(assert (= (and b!6284143 ((_ is Cons!64791) (t!378477 s!2326))) b!6285192))

(declare-fun b!6285197 () Bool)

(declare-fun e!3822069 () Bool)

(declare-fun tp!1751044 () Bool)

(declare-fun tp!1751045 () Bool)

(assert (=> b!6285197 (= e!3822069 (and tp!1751044 tp!1751045))))

(assert (=> b!6284150 (= tp!1750972 e!3822069)))

(assert (= (and b!6284150 ((_ is Cons!64790) (exprs!6089 setElem!42764))) b!6285197))

(declare-fun b!6285205 () Bool)

(declare-fun e!3822075 () Bool)

(declare-fun tp!1751050 () Bool)

(assert (=> b!6285205 (= e!3822075 tp!1751050)))

(declare-fun tp!1751051 () Bool)

(declare-fun e!3822074 () Bool)

(declare-fun b!6285204 () Bool)

(assert (=> b!6285204 (= e!3822074 (and (inv!83759 (h!71240 (t!378478 zl!343))) e!3822075 tp!1751051))))

(assert (=> b!6284130 (= tp!1750973 e!3822074)))

(assert (= b!6285204 b!6285205))

(assert (= (and b!6284130 ((_ is Cons!64792) (t!378478 zl!343))) b!6285204))

(declare-fun m!7106092 () Bool)

(assert (=> b!6285204 m!7106092))

(declare-fun b!6285219 () Bool)

(declare-fun e!3822078 () Bool)

(declare-fun tp!1751064 () Bool)

(declare-fun tp!1751066 () Bool)

(assert (=> b!6285219 (= e!3822078 (and tp!1751064 tp!1751066))))

(declare-fun b!6285218 () Bool)

(declare-fun tp!1751065 () Bool)

(assert (=> b!6285218 (= e!3822078 tp!1751065)))

(declare-fun b!6285216 () Bool)

(assert (=> b!6285216 (= e!3822078 tp_is_empty!41663)))

(assert (=> b!6284145 (= tp!1750975 e!3822078)))

(declare-fun b!6285217 () Bool)

(declare-fun tp!1751063 () Bool)

(declare-fun tp!1751062 () Bool)

(assert (=> b!6285217 (= e!3822078 (and tp!1751063 tp!1751062))))

(assert (= (and b!6284145 ((_ is ElementMatch!16205) (regOne!32922 r!7292))) b!6285216))

(assert (= (and b!6284145 ((_ is Concat!25050) (regOne!32922 r!7292))) b!6285217))

(assert (= (and b!6284145 ((_ is Star!16205) (regOne!32922 r!7292))) b!6285218))

(assert (= (and b!6284145 ((_ is Union!16205) (regOne!32922 r!7292))) b!6285219))

(declare-fun b!6285223 () Bool)

(declare-fun e!3822079 () Bool)

(declare-fun tp!1751069 () Bool)

(declare-fun tp!1751071 () Bool)

(assert (=> b!6285223 (= e!3822079 (and tp!1751069 tp!1751071))))

(declare-fun b!6285222 () Bool)

(declare-fun tp!1751070 () Bool)

(assert (=> b!6285222 (= e!3822079 tp!1751070)))

(declare-fun b!6285220 () Bool)

(assert (=> b!6285220 (= e!3822079 tp_is_empty!41663)))

(assert (=> b!6284145 (= tp!1750977 e!3822079)))

(declare-fun b!6285221 () Bool)

(declare-fun tp!1751068 () Bool)

(declare-fun tp!1751067 () Bool)

(assert (=> b!6285221 (= e!3822079 (and tp!1751068 tp!1751067))))

(assert (= (and b!6284145 ((_ is ElementMatch!16205) (regTwo!32922 r!7292))) b!6285220))

(assert (= (and b!6284145 ((_ is Concat!25050) (regTwo!32922 r!7292))) b!6285221))

(assert (= (and b!6284145 ((_ is Star!16205) (regTwo!32922 r!7292))) b!6285222))

(assert (= (and b!6284145 ((_ is Union!16205) (regTwo!32922 r!7292))) b!6285223))

(declare-fun b!6285227 () Bool)

(declare-fun e!3822080 () Bool)

(declare-fun tp!1751074 () Bool)

(declare-fun tp!1751076 () Bool)

(assert (=> b!6285227 (= e!3822080 (and tp!1751074 tp!1751076))))

(declare-fun b!6285226 () Bool)

(declare-fun tp!1751075 () Bool)

(assert (=> b!6285226 (= e!3822080 tp!1751075)))

(declare-fun b!6285224 () Bool)

(assert (=> b!6285224 (= e!3822080 tp_is_empty!41663)))

(assert (=> b!6284131 (= tp!1750971 e!3822080)))

(declare-fun b!6285225 () Bool)

(declare-fun tp!1751073 () Bool)

(declare-fun tp!1751072 () Bool)

(assert (=> b!6285225 (= e!3822080 (and tp!1751073 tp!1751072))))

(assert (= (and b!6284131 ((_ is ElementMatch!16205) (reg!16534 r!7292))) b!6285224))

(assert (= (and b!6284131 ((_ is Concat!25050) (reg!16534 r!7292))) b!6285225))

(assert (= (and b!6284131 ((_ is Star!16205) (reg!16534 r!7292))) b!6285226))

(assert (= (and b!6284131 ((_ is Union!16205) (reg!16534 r!7292))) b!6285227))

(declare-fun b!6285228 () Bool)

(declare-fun e!3822081 () Bool)

(declare-fun tp!1751077 () Bool)

(declare-fun tp!1751078 () Bool)

(assert (=> b!6285228 (= e!3822081 (and tp!1751077 tp!1751078))))

(assert (=> b!6284162 (= tp!1750970 e!3822081)))

(assert (= (and b!6284162 ((_ is Cons!64790) (exprs!6089 (h!71240 zl!343)))) b!6285228))

(declare-fun b!6285232 () Bool)

(declare-fun e!3822082 () Bool)

(declare-fun tp!1751081 () Bool)

(declare-fun tp!1751083 () Bool)

(assert (=> b!6285232 (= e!3822082 (and tp!1751081 tp!1751083))))

(declare-fun b!6285231 () Bool)

(declare-fun tp!1751082 () Bool)

(assert (=> b!6285231 (= e!3822082 tp!1751082)))

(declare-fun b!6285229 () Bool)

(assert (=> b!6285229 (= e!3822082 tp_is_empty!41663)))

(assert (=> b!6284141 (= tp!1750976 e!3822082)))

(declare-fun b!6285230 () Bool)

(declare-fun tp!1751080 () Bool)

(declare-fun tp!1751079 () Bool)

(assert (=> b!6285230 (= e!3822082 (and tp!1751080 tp!1751079))))

(assert (= (and b!6284141 ((_ is ElementMatch!16205) (regOne!32923 r!7292))) b!6285229))

(assert (= (and b!6284141 ((_ is Concat!25050) (regOne!32923 r!7292))) b!6285230))

(assert (= (and b!6284141 ((_ is Star!16205) (regOne!32923 r!7292))) b!6285231))

(assert (= (and b!6284141 ((_ is Union!16205) (regOne!32923 r!7292))) b!6285232))

(declare-fun b!6285236 () Bool)

(declare-fun e!3822083 () Bool)

(declare-fun tp!1751086 () Bool)

(declare-fun tp!1751088 () Bool)

(assert (=> b!6285236 (= e!3822083 (and tp!1751086 tp!1751088))))

(declare-fun b!6285235 () Bool)

(declare-fun tp!1751087 () Bool)

(assert (=> b!6285235 (= e!3822083 tp!1751087)))

(declare-fun b!6285233 () Bool)

(assert (=> b!6285233 (= e!3822083 tp_is_empty!41663)))

(assert (=> b!6284141 (= tp!1750974 e!3822083)))

(declare-fun b!6285234 () Bool)

(declare-fun tp!1751085 () Bool)

(declare-fun tp!1751084 () Bool)

(assert (=> b!6285234 (= e!3822083 (and tp!1751085 tp!1751084))))

(assert (= (and b!6284141 ((_ is ElementMatch!16205) (regTwo!32923 r!7292))) b!6285233))

(assert (= (and b!6284141 ((_ is Concat!25050) (regTwo!32923 r!7292))) b!6285234))

(assert (= (and b!6284141 ((_ is Star!16205) (regTwo!32923 r!7292))) b!6285235))

(assert (= (and b!6284141 ((_ is Union!16205) (regTwo!32923 r!7292))) b!6285236))

(declare-fun condSetEmpty!42770 () Bool)

(assert (=> setNonEmpty!42764 (= condSetEmpty!42770 (= setRest!42764 ((as const (Array Context!11178 Bool)) false)))))

(declare-fun setRes!42770 () Bool)

(assert (=> setNonEmpty!42764 (= tp!1750978 setRes!42770)))

(declare-fun setIsEmpty!42770 () Bool)

(assert (=> setIsEmpty!42770 setRes!42770))

(declare-fun setNonEmpty!42770 () Bool)

(declare-fun e!3822086 () Bool)

(declare-fun setElem!42770 () Context!11178)

(declare-fun tp!1751094 () Bool)

(assert (=> setNonEmpty!42770 (= setRes!42770 (and tp!1751094 (inv!83759 setElem!42770) e!3822086))))

(declare-fun setRest!42770 () (InoxSet Context!11178))

(assert (=> setNonEmpty!42770 (= setRest!42764 ((_ map or) (store ((as const (Array Context!11178 Bool)) false) setElem!42770 true) setRest!42770))))

(declare-fun b!6285241 () Bool)

(declare-fun tp!1751093 () Bool)

(assert (=> b!6285241 (= e!3822086 tp!1751093)))

(assert (= (and setNonEmpty!42764 condSetEmpty!42770) setIsEmpty!42770))

(assert (= (and setNonEmpty!42764 (not condSetEmpty!42770)) setNonEmpty!42770))

(assert (= setNonEmpty!42770 b!6285241))

(declare-fun m!7106094 () Bool)

(assert (=> setNonEmpty!42770 m!7106094))

(declare-fun b_lambda!239263 () Bool)

(assert (= b_lambda!239261 (or b!6284137 b_lambda!239263)))

(declare-fun bs!1571077 () Bool)

(declare-fun d!1972718 () Bool)

(assert (= bs!1571077 (and d!1972718 b!6284137)))

(assert (=> bs!1571077 (= (dynLambda!25639 lambda!344813 lt!2355250) (derivationStepZipperUp!1379 lt!2355250 (h!71239 s!2326)))))

(assert (=> bs!1571077 m!7105122))

(assert (=> d!1972676 d!1972718))

(declare-fun b_lambda!239265 () Bool)

(assert (= b_lambda!239259 (or b!6284137 b_lambda!239265)))

(declare-fun bs!1571078 () Bool)

(declare-fun d!1972720 () Bool)

(assert (= bs!1571078 (and d!1972720 b!6284137)))

(assert (=> bs!1571078 (= (dynLambda!25639 lambda!344813 (h!71240 zl!343)) (derivationStepZipperUp!1379 (h!71240 zl!343) (h!71239 s!2326)))))

(assert (=> bs!1571078 m!7105002))

(assert (=> d!1972674 d!1972720))

(declare-fun b_lambda!239267 () Bool)

(assert (= b_lambda!239257 (or b!6284137 b_lambda!239267)))

(declare-fun bs!1571079 () Bool)

(declare-fun d!1972722 () Bool)

(assert (= bs!1571079 (and d!1972722 b!6284137)))

(assert (=> bs!1571079 (= (dynLambda!25639 lambda!344813 lt!2355213) (derivationStepZipperUp!1379 lt!2355213 (h!71239 s!2326)))))

(assert (=> bs!1571079 m!7105114))

(assert (=> d!1972642 d!1972722))

(check-sat (not d!1972594) (not b!6284687) (not b_lambda!239263) (not b!6285051) (not bm!532113) (not b!6284515) (not d!1972598) (not b!6284783) (not b!6284689) (not b!6284789) (not b!6284778) (not bs!1571078) (not b!6285058) (not b!6285060) (not b!6284516) (not bm!532109) (not b!6284858) (not bm!532110) (not d!1972620) (not d!1972602) (not bm!532064) (not d!1972578) (not b!6285232) (not b!6285137) (not d!1972674) (not bm!532096) (not b!6284523) (not d!1972600) (not b!6285107) (not b!6285205) (not bm!532107) (not b!6285097) (not b!6285086) (not bm!532118) (not bm!532100) (not d!1972612) (not d!1972610) (not d!1972510) (not b!6284918) (not b!6285044) (not b_lambda!239267) (not b!6284868) (not b!6284782) (not b!6285114) (not b!6284749) (not d!1972552) (not d!1972642) (not b!6285103) (not bm!532066) (not b!6284521) (not bm!532122) (not b!6285047) (not b!6284987) (not d!1972706) (not b!6285002) (not b!6285222) (not d!1972604) (not b!6284999) (not b!6284957) (not b!6284861) (not bm!532075) (not d!1972644) (not d!1972634) (not b!6284864) (not d!1972660) (not d!1972622) (not b!6285001) (not d!1972582) (not b!6284788) (not b!6285154) (not b!6284929) (not bm!532119) (not b!6285019) (not b!6284967) (not b!6284911) (not d!1972698) (not b!6284966) (not b!6284853) (not b!6284989) (not d!1972640) (not b!6285160) (not d!1972648) (not b!6285142) (not b!6285018) (not b!6285050) (not b!6285127) (not b!6285179) (not d!1972608) (not b!6284990) (not b!6284750) (not d!1972690) (not b!6285108) (not d!1972652) (not b!6285021) (not b!6285115) (not d!1972680) (not b!6284830) (not b!6285153) (not b!6285236) (not b!6284759) (not bm!532076) (not b!6285163) (not b!6284866) (not b!6284964) (not b!6285022) (not b!6284755) (not b!6284926) (not b!6285218) (not b!6285053) (not d!1972656) (not d!1972576) (not d!1972630) (not b!6284820) (not b!6285139) (not bm!532105) (not b!6285223) (not b!6285226) (not d!1972646) (not d!1972708) (not bm!532059) (not setNonEmpty!42770) (not d!1972606) (not d!1972692) (not b!6285152) (not bm!532108) (not b!6284819) (not d!1972446) (not b!6284522) (not b!6284854) (not b!6285098) (not b!6285204) (not d!1972638) (not b!6284821) (not b!6284919) (not b!6284982) (not b!6284983) (not b!6284872) (not b!6284870) (not b!6284975) (not d!1972512) (not b!6285161) (not b!6285234) (not d!1972580) (not d!1972468) (not bm!532116) (not b!6284371) (not bm!532112) (not b!6285045) (not bm!532097) (not b!6285227) (not b!6285130) (not d!1972628) (not b!6285004) (not b!6284827) (not b!6285219) (not d!1972666) (not d!1972688) (not b!6284970) (not b!6285228) (not bm!532074) (not d!1972716) (not bs!1571077) (not d!1972616) (not b!6285230) (not b!6284370) (not b!6284828) (not b!6285005) (not b!6284780) (not b!6284714) (not b!6285192) (not b!6284857) (not b!6285225) (not b!6285241) (not b!6285235) (not bm!532104) (not b!6284790) (not bm!532080) (not b!6285221) (not b!6285126) (not b!6285052) (not b!6284785) (not b!6285135) (not d!1972596) (not b!6285102) (not b!6284963) (not d!1972676) (not b!6285168) (not d!1972626) (not d!1972662) (not bm!532079) (not b!6285124) (not b!6284969) (not b!6284873) (not d!1972654) (not d!1972678) (not b!6284856) (not b!6284773) (not b!6285197) (not b!6285140) (not d!1972658) (not d!1972700) (not bm!532103) (not b!6284960) (not b!6284985) (not b!6284760) (not b!6284863) (not bm!532065) (not b!6285003) (not b!6284865) (not d!1972686) (not b_lambda!239265) (not bs!1571079) (not bm!532083) (not bm!532102) tp_is_empty!41663 (not b!6284959) (not b!6284869) (not d!1972614) (not b!6284962) (not b!6284920) (not b!6284927) (not d!1972514) (not b!6284860) (not b!6284908) (not b!6284986) (not b!6284756) (not b!6285023) (not b!6284712) (not b!6285231) (not b!6285061) (not d!1972524) (not bm!532111) (not b!6284518) (not b!6285217) (not b!6284972) (not b!6285145) (not bm!532077))
(check-sat)
