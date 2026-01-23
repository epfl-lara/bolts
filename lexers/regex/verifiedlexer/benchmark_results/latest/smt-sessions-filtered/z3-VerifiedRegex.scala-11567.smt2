; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!638822 () Bool)

(assert start!638822)

(declare-fun b!6502047 () Bool)

(assert (=> b!6502047 true))

(assert (=> b!6502047 true))

(declare-fun lambda!360401 () Int)

(declare-fun lambda!360400 () Int)

(assert (=> b!6502047 (not (= lambda!360401 lambda!360400))))

(assert (=> b!6502047 true))

(assert (=> b!6502047 true))

(declare-fun b!6502049 () Bool)

(assert (=> b!6502049 true))

(declare-fun b!6502077 () Bool)

(assert (=> b!6502077 true))

(declare-fun b!6502044 () Bool)

(declare-fun e!3939871 () Bool)

(declare-fun e!3939864 () Bool)

(assert (=> b!6502044 (= e!3939871 e!3939864)))

(declare-fun res!2670251 () Bool)

(assert (=> b!6502044 (=> (not res!2670251) (not e!3939864))))

(declare-datatypes ((C!33032 0))(
  ( (C!33033 (val!26218 Int)) )
))
(declare-datatypes ((Regex!16381 0))(
  ( (ElementMatch!16381 (c!1192193 C!33032)) (Concat!25226 (regOne!33274 Regex!16381) (regTwo!33274 Regex!16381)) (EmptyExpr!16381) (Star!16381 (reg!16710 Regex!16381)) (EmptyLang!16381) (Union!16381 (regOne!33275 Regex!16381) (regTwo!33275 Regex!16381)) )
))
(declare-fun r!7292 () Regex!16381)

(declare-fun lt!2392052 () Regex!16381)

(assert (=> b!6502044 (= res!2670251 (= r!7292 lt!2392052))))

(declare-datatypes ((List!65442 0))(
  ( (Nil!65318) (Cons!65318 (h!71766 Regex!16381) (t!379076 List!65442)) )
))
(declare-datatypes ((Context!11530 0))(
  ( (Context!11531 (exprs!6265 List!65442)) )
))
(declare-datatypes ((List!65443 0))(
  ( (Nil!65319) (Cons!65319 (h!71767 Context!11530) (t!379077 List!65443)) )
))
(declare-fun zl!343 () List!65443)

(declare-fun unfocusZipper!2123 (List!65443) Regex!16381)

(assert (=> b!6502044 (= lt!2392052 (unfocusZipper!2123 zl!343))))

(declare-fun b!6502045 () Bool)

(declare-fun e!3939876 () Bool)

(declare-fun tp!1798639 () Bool)

(assert (=> b!6502045 (= e!3939876 tp!1798639)))

(declare-fun b!6502046 () Bool)

(declare-fun e!3939881 () Bool)

(declare-fun e!3939869 () Bool)

(assert (=> b!6502046 (= e!3939881 e!3939869)))

(declare-fun res!2670257 () Bool)

(assert (=> b!6502046 (=> res!2670257 e!3939869)))

(declare-fun lt!2392024 () Context!11530)

(declare-fun lt!2392031 () Regex!16381)

(assert (=> b!6502046 (= res!2670257 (not (= (unfocusZipper!2123 (Cons!65319 lt!2392024 Nil!65319)) lt!2392031)))))

(declare-fun lt!2392055 () Regex!16381)

(assert (=> b!6502046 (= lt!2392031 (Concat!25226 (reg!16710 (regOne!33274 r!7292)) lt!2392055))))

(declare-fun e!3939870 () Bool)

(declare-fun e!3939877 () Bool)

(assert (=> b!6502047 (= e!3939870 e!3939877)))

(declare-fun res!2670254 () Bool)

(assert (=> b!6502047 (=> res!2670254 e!3939877)))

(declare-datatypes ((List!65444 0))(
  ( (Nil!65320) (Cons!65320 (h!71768 C!33032) (t!379078 List!65444)) )
))
(declare-fun s!2326 () List!65444)

(declare-fun lt!2392051 () Bool)

(declare-fun lt!2392032 () Bool)

(get-info :version)

(assert (=> b!6502047 (= res!2670254 (or (not (= lt!2392032 lt!2392051)) ((_ is Nil!65320) s!2326)))))

(declare-fun Exists!3451 (Int) Bool)

(assert (=> b!6502047 (= (Exists!3451 lambda!360400) (Exists!3451 lambda!360401))))

(declare-datatypes ((Unit!158859 0))(
  ( (Unit!158860) )
))
(declare-fun lt!2392054 () Unit!158859)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1988 (Regex!16381 Regex!16381 List!65444) Unit!158859)

(assert (=> b!6502047 (= lt!2392054 (lemmaExistCutMatchRandMatchRSpecEquivalent!1988 (regOne!33274 r!7292) (regTwo!33274 r!7292) s!2326))))

(assert (=> b!6502047 (= lt!2392051 (Exists!3451 lambda!360400))))

(declare-datatypes ((tuple2!66720 0))(
  ( (tuple2!66721 (_1!36663 List!65444) (_2!36663 List!65444)) )
))
(declare-datatypes ((Option!16272 0))(
  ( (None!16271) (Some!16271 (v!52450 tuple2!66720)) )
))
(declare-fun isDefined!12975 (Option!16272) Bool)

(declare-fun findConcatSeparation!2686 (Regex!16381 Regex!16381 List!65444 List!65444 List!65444) Option!16272)

(assert (=> b!6502047 (= lt!2392051 (isDefined!12975 (findConcatSeparation!2686 (regOne!33274 r!7292) (regTwo!33274 r!7292) Nil!65320 s!2326 s!2326)))))

(declare-fun lt!2392029 () Unit!158859)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2450 (Regex!16381 Regex!16381 List!65444) Unit!158859)

(assert (=> b!6502047 (= lt!2392029 (lemmaFindConcatSeparationEquivalentToExists!2450 (regOne!33274 r!7292) (regTwo!33274 r!7292) s!2326))))

(declare-fun b!6502048 () Bool)

(declare-fun res!2670266 () Bool)

(declare-fun e!3939863 () Bool)

(assert (=> b!6502048 (=> res!2670266 e!3939863)))

(declare-fun lt!2392038 () Bool)

(declare-fun lt!2392034 () Bool)

(assert (=> b!6502048 (= res!2670266 (or (not lt!2392038) (not lt!2392034)))))

(declare-fun e!3939865 () Bool)

(assert (=> b!6502049 (= e!3939877 e!3939865)))

(declare-fun res!2670253 () Bool)

(assert (=> b!6502049 (=> res!2670253 e!3939865)))

(assert (=> b!6502049 (= res!2670253 (or (and ((_ is ElementMatch!16381) (regOne!33274 r!7292)) (= (c!1192193 (regOne!33274 r!7292)) (h!71768 s!2326))) ((_ is Union!16381) (regOne!33274 r!7292))))))

(declare-fun lt!2392039 () Unit!158859)

(declare-fun e!3939868 () Unit!158859)

(assert (=> b!6502049 (= lt!2392039 e!3939868)))

(declare-fun c!1192192 () Bool)

(declare-fun lt!2392049 () Bool)

(assert (=> b!6502049 (= c!1192192 lt!2392049)))

(declare-fun nullable!6374 (Regex!16381) Bool)

(assert (=> b!6502049 (= lt!2392049 (nullable!6374 (h!71766 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun lambda!360402 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11530))

(declare-fun flatMap!1886 ((InoxSet Context!11530) Int) (InoxSet Context!11530))

(declare-fun derivationStepZipperUp!1555 (Context!11530 C!33032) (InoxSet Context!11530))

(assert (=> b!6502049 (= (flatMap!1886 z!1189 lambda!360402) (derivationStepZipperUp!1555 (h!71767 zl!343) (h!71768 s!2326)))))

(declare-fun lt!2392023 () Unit!158859)

(declare-fun lemmaFlatMapOnSingletonSet!1412 ((InoxSet Context!11530) Context!11530 Int) Unit!158859)

(assert (=> b!6502049 (= lt!2392023 (lemmaFlatMapOnSingletonSet!1412 z!1189 (h!71767 zl!343) lambda!360402))))

(declare-fun lt!2392030 () (InoxSet Context!11530))

(declare-fun lt!2392042 () Context!11530)

(assert (=> b!6502049 (= lt!2392030 (derivationStepZipperUp!1555 lt!2392042 (h!71768 s!2326)))))

(declare-fun lt!2392044 () (InoxSet Context!11530))

(declare-fun derivationStepZipperDown!1629 (Regex!16381 Context!11530 C!33032) (InoxSet Context!11530))

(assert (=> b!6502049 (= lt!2392044 (derivationStepZipperDown!1629 (h!71766 (exprs!6265 (h!71767 zl!343))) lt!2392042 (h!71768 s!2326)))))

(assert (=> b!6502049 (= lt!2392042 (Context!11531 (t!379076 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun lt!2392048 () (InoxSet Context!11530))

(assert (=> b!6502049 (= lt!2392048 (derivationStepZipperUp!1555 (Context!11531 (Cons!65318 (h!71766 (exprs!6265 (h!71767 zl!343))) (t!379076 (exprs!6265 (h!71767 zl!343))))) (h!71768 s!2326)))))

(declare-fun b!6502050 () Bool)

(declare-fun Unit!158861 () Unit!158859)

(assert (=> b!6502050 (= e!3939868 Unit!158861)))

(declare-fun res!2670262 () Bool)

(assert (=> start!638822 (=> (not res!2670262) (not e!3939871))))

(declare-fun validRegex!8117 (Regex!16381) Bool)

(assert (=> start!638822 (= res!2670262 (validRegex!8117 r!7292))))

(assert (=> start!638822 e!3939871))

(declare-fun e!3939867 () Bool)

(assert (=> start!638822 e!3939867))

(declare-fun condSetEmpty!44327 () Bool)

(assert (=> start!638822 (= condSetEmpty!44327 (= z!1189 ((as const (Array Context!11530 Bool)) false)))))

(declare-fun setRes!44327 () Bool)

(assert (=> start!638822 setRes!44327))

(declare-fun e!3939878 () Bool)

(assert (=> start!638822 e!3939878))

(declare-fun e!3939879 () Bool)

(assert (=> start!638822 e!3939879))

(declare-fun b!6502051 () Bool)

(declare-fun res!2670258 () Bool)

(declare-fun e!3939872 () Bool)

(assert (=> b!6502051 (=> res!2670258 e!3939872)))

(assert (=> b!6502051 (= res!2670258 (not lt!2392049))))

(declare-fun b!6502052 () Bool)

(declare-fun res!2670245 () Bool)

(declare-fun e!3939862 () Bool)

(assert (=> b!6502052 (=> res!2670245 e!3939862)))

(declare-fun lt!2392056 () Context!11530)

(assert (=> b!6502052 (= res!2670245 (not (= (unfocusZipper!2123 (Cons!65319 lt!2392056 Nil!65319)) lt!2392055)))))

(declare-fun b!6502053 () Bool)

(assert (=> b!6502053 (= e!3939869 e!3939862)))

(declare-fun res!2670264 () Bool)

(assert (=> b!6502053 (=> res!2670264 e!3939862)))

(declare-fun lt!2392028 () Context!11530)

(assert (=> b!6502053 (= res!2670264 (not (= (unfocusZipper!2123 (Cons!65319 lt!2392028 Nil!65319)) (reg!16710 (regOne!33274 r!7292)))))))

(declare-fun lt!2392021 () (InoxSet Context!11530))

(assert (=> b!6502053 (= (flatMap!1886 lt!2392021 lambda!360402) (derivationStepZipperUp!1555 lt!2392056 (h!71768 s!2326)))))

(declare-fun lt!2392045 () Unit!158859)

(assert (=> b!6502053 (= lt!2392045 (lemmaFlatMapOnSingletonSet!1412 lt!2392021 lt!2392056 lambda!360402))))

(declare-fun lt!2392050 () (InoxSet Context!11530))

(assert (=> b!6502053 (= (flatMap!1886 lt!2392050 lambda!360402) (derivationStepZipperUp!1555 lt!2392028 (h!71768 s!2326)))))

(declare-fun lt!2392040 () Unit!158859)

(assert (=> b!6502053 (= lt!2392040 (lemmaFlatMapOnSingletonSet!1412 lt!2392050 lt!2392028 lambda!360402))))

(declare-fun lt!2392047 () (InoxSet Context!11530))

(assert (=> b!6502053 (= lt!2392047 (derivationStepZipperUp!1555 lt!2392056 (h!71768 s!2326)))))

(declare-fun lt!2392026 () (InoxSet Context!11530))

(assert (=> b!6502053 (= lt!2392026 (derivationStepZipperUp!1555 lt!2392028 (h!71768 s!2326)))))

(assert (=> b!6502053 (= lt!2392021 (store ((as const (Array Context!11530 Bool)) false) lt!2392056 true))))

(assert (=> b!6502053 (= lt!2392050 (store ((as const (Array Context!11530 Bool)) false) lt!2392028 true))))

(assert (=> b!6502053 (= lt!2392028 (Context!11531 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318)))))

(declare-fun b!6502054 () Bool)

(declare-fun e!3939875 () Bool)

(assert (=> b!6502054 (= e!3939865 e!3939875)))

(declare-fun res!2670261 () Bool)

(assert (=> b!6502054 (=> res!2670261 e!3939875)))

(declare-fun lt!2392037 () (InoxSet Context!11530))

(assert (=> b!6502054 (= res!2670261 (not (= lt!2392044 lt!2392037)))))

(assert (=> b!6502054 (= lt!2392037 (derivationStepZipperDown!1629 (reg!16710 (regOne!33274 r!7292)) lt!2392056 (h!71768 s!2326)))))

(declare-fun lt!2392027 () List!65442)

(assert (=> b!6502054 (= lt!2392056 (Context!11531 lt!2392027))))

(declare-fun lt!2392022 () Regex!16381)

(assert (=> b!6502054 (= lt!2392027 (Cons!65318 lt!2392022 (t!379076 (exprs!6265 (h!71767 zl!343)))))))

(assert (=> b!6502054 (= lt!2392022 (Star!16381 (reg!16710 (regOne!33274 r!7292))))))

(declare-fun b!6502055 () Bool)

(declare-fun tp!1798642 () Bool)

(assert (=> b!6502055 (= e!3939867 tp!1798642)))

(declare-fun setIsEmpty!44327 () Bool)

(assert (=> setIsEmpty!44327 setRes!44327))

(declare-fun b!6502056 () Bool)

(declare-fun res!2670273 () Bool)

(assert (=> b!6502056 (=> res!2670273 e!3939877)))

(declare-fun isEmpty!37521 (List!65442) Bool)

(assert (=> b!6502056 (= res!2670273 (isEmpty!37521 (t!379076 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun b!6502057 () Bool)

(declare-fun e!3939882 () Bool)

(declare-fun matchZipper!2393 ((InoxSet Context!11530) List!65444) Bool)

(assert (=> b!6502057 (= e!3939882 (not (matchZipper!2393 lt!2392030 (t!379078 s!2326))))))

(declare-fun b!6502058 () Bool)

(declare-fun res!2670271 () Bool)

(assert (=> b!6502058 (=> res!2670271 e!3939872)))

(assert (=> b!6502058 (= res!2670271 (not (matchZipper!2393 z!1189 s!2326)))))

(declare-fun b!6502059 () Bool)

(declare-fun tp!1798637 () Bool)

(declare-fun inv!84199 (Context!11530) Bool)

(assert (=> b!6502059 (= e!3939878 (and (inv!84199 (h!71767 zl!343)) e!3939876 tp!1798637))))

(declare-fun b!6502060 () Bool)

(assert (=> b!6502060 (= e!3939864 (not e!3939870))))

(declare-fun res!2670255 () Bool)

(assert (=> b!6502060 (=> res!2670255 e!3939870)))

(assert (=> b!6502060 (= res!2670255 (not ((_ is Cons!65319) zl!343)))))

(declare-fun matchRSpec!3482 (Regex!16381 List!65444) Bool)

(assert (=> b!6502060 (= lt!2392032 (matchRSpec!3482 r!7292 s!2326))))

(declare-fun matchR!8564 (Regex!16381 List!65444) Bool)

(assert (=> b!6502060 (= lt!2392032 (matchR!8564 r!7292 s!2326))))

(declare-fun lt!2392036 () Unit!158859)

(declare-fun mainMatchTheorem!3482 (Regex!16381 List!65444) Unit!158859)

(assert (=> b!6502060 (= lt!2392036 (mainMatchTheorem!3482 r!7292 s!2326))))

(declare-fun b!6502061 () Bool)

(declare-fun e!3939880 () Bool)

(declare-fun e!3939866 () Bool)

(assert (=> b!6502061 (= e!3939880 e!3939866)))

(declare-fun res!2670272 () Bool)

(assert (=> b!6502061 (=> res!2670272 e!3939866)))

(declare-fun lt!2392053 () (InoxSet Context!11530))

(assert (=> b!6502061 (= res!2670272 (not (= lt!2392034 (matchZipper!2393 lt!2392053 (t!379078 s!2326)))))))

(declare-fun lt!2392043 () (InoxSet Context!11530))

(assert (=> b!6502061 (= lt!2392034 (matchZipper!2393 lt!2392043 s!2326))))

(declare-fun b!6502062 () Bool)

(declare-fun tp!1798641 () Bool)

(declare-fun tp!1798640 () Bool)

(assert (=> b!6502062 (= e!3939867 (and tp!1798641 tp!1798640))))

(declare-fun b!6502063 () Bool)

(assert (=> b!6502063 (= e!3939875 e!3939880)))

(declare-fun res!2670263 () Bool)

(assert (=> b!6502063 (=> res!2670263 e!3939880)))

(assert (=> b!6502063 (= res!2670263 (not (= lt!2392053 lt!2392037)))))

(assert (=> b!6502063 (= (flatMap!1886 lt!2392043 lambda!360402) (derivationStepZipperUp!1555 lt!2392024 (h!71768 s!2326)))))

(declare-fun lt!2392041 () Unit!158859)

(assert (=> b!6502063 (= lt!2392041 (lemmaFlatMapOnSingletonSet!1412 lt!2392043 lt!2392024 lambda!360402))))

(declare-fun lt!2392035 () (InoxSet Context!11530))

(assert (=> b!6502063 (= lt!2392035 (derivationStepZipperUp!1555 lt!2392024 (h!71768 s!2326)))))

(declare-fun derivationStepZipper!2347 ((InoxSet Context!11530) C!33032) (InoxSet Context!11530))

(assert (=> b!6502063 (= lt!2392053 (derivationStepZipper!2347 lt!2392043 (h!71768 s!2326)))))

(assert (=> b!6502063 (= lt!2392043 (store ((as const (Array Context!11530 Bool)) false) lt!2392024 true))))

(assert (=> b!6502063 (= lt!2392024 (Context!11531 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) lt!2392027)))))

(declare-fun b!6502064 () Bool)

(declare-fun tp!1798633 () Bool)

(declare-fun tp!1798638 () Bool)

(assert (=> b!6502064 (= e!3939867 (and tp!1798633 tp!1798638))))

(declare-fun b!6502065 () Bool)

(assert (=> b!6502065 (= e!3939872 e!3939863)))

(declare-fun res!2670268 () Bool)

(assert (=> b!6502065 (=> res!2670268 e!3939863)))

(assert (=> b!6502065 (= res!2670268 e!3939882)))

(declare-fun res!2670270 () Bool)

(assert (=> b!6502065 (=> (not res!2670270) (not e!3939882))))

(assert (=> b!6502065 (= res!2670270 (not lt!2392038))))

(assert (=> b!6502065 (= lt!2392038 (matchZipper!2393 lt!2392044 (t!379078 s!2326)))))

(declare-fun tp!1798635 () Bool)

(declare-fun setNonEmpty!44327 () Bool)

(declare-fun setElem!44327 () Context!11530)

(declare-fun e!3939861 () Bool)

(assert (=> setNonEmpty!44327 (= setRes!44327 (and tp!1798635 (inv!84199 setElem!44327) e!3939861))))

(declare-fun setRest!44327 () (InoxSet Context!11530))

(assert (=> setNonEmpty!44327 (= z!1189 ((_ map or) (store ((as const (Array Context!11530 Bool)) false) setElem!44327 true) setRest!44327))))

(declare-fun b!6502066 () Bool)

(declare-fun tp_is_empty!42015 () Bool)

(assert (=> b!6502066 (= e!3939867 tp_is_empty!42015)))

(declare-fun b!6502067 () Bool)

(declare-fun res!2670247 () Bool)

(assert (=> b!6502067 (=> res!2670247 e!3939870)))

(declare-fun generalisedConcat!1978 (List!65442) Regex!16381)

(assert (=> b!6502067 (= res!2670247 (not (= r!7292 (generalisedConcat!1978 (exprs!6265 (h!71767 zl!343))))))))

(declare-fun b!6502068 () Bool)

(declare-fun res!2670267 () Bool)

(assert (=> b!6502068 (=> res!2670267 e!3939865)))

(assert (=> b!6502068 (= res!2670267 (or ((_ is Concat!25226) (regOne!33274 r!7292)) (not ((_ is Star!16381) (regOne!33274 r!7292)))))))

(declare-fun b!6502069 () Bool)

(declare-fun res!2670269 () Bool)

(assert (=> b!6502069 (=> res!2670269 e!3939866)))

(assert (=> b!6502069 (= res!2670269 (not (= lt!2392052 r!7292)))))

(declare-fun b!6502070 () Bool)

(declare-fun res!2670246 () Bool)

(assert (=> b!6502070 (=> res!2670246 e!3939870)))

(assert (=> b!6502070 (= res!2670246 (or ((_ is EmptyExpr!16381) r!7292) ((_ is EmptyLang!16381) r!7292) ((_ is ElementMatch!16381) r!7292) ((_ is Union!16381) r!7292) (not ((_ is Concat!25226) r!7292))))))

(declare-fun b!6502071 () Bool)

(declare-fun e!3939874 () Bool)

(assert (=> b!6502071 (= e!3939874 (nullable!6374 (regOne!33274 (regOne!33274 r!7292))))))

(declare-fun b!6502072 () Bool)

(declare-fun res!2670249 () Bool)

(assert (=> b!6502072 (=> res!2670249 e!3939870)))

(declare-fun isEmpty!37522 (List!65443) Bool)

(assert (=> b!6502072 (= res!2670249 (not (isEmpty!37522 (t!379077 zl!343))))))

(declare-fun b!6502073 () Bool)

(declare-fun Unit!158862 () Unit!158859)

(assert (=> b!6502073 (= e!3939868 Unit!158862)))

(declare-fun lt!2392020 () Unit!158859)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1212 ((InoxSet Context!11530) (InoxSet Context!11530) List!65444) Unit!158859)

(assert (=> b!6502073 (= lt!2392020 (lemmaZipperConcatMatchesSameAsBothZippers!1212 lt!2392044 lt!2392030 (t!379078 s!2326)))))

(declare-fun res!2670248 () Bool)

(assert (=> b!6502073 (= res!2670248 (matchZipper!2393 lt!2392044 (t!379078 s!2326)))))

(declare-fun e!3939873 () Bool)

(assert (=> b!6502073 (=> res!2670248 e!3939873)))

(assert (=> b!6502073 (= (matchZipper!2393 ((_ map or) lt!2392044 lt!2392030) (t!379078 s!2326)) e!3939873)))

(declare-fun b!6502074 () Bool)

(assert (=> b!6502074 (= e!3939862 e!3939872)))

(declare-fun res!2670260 () Bool)

(assert (=> b!6502074 (=> res!2670260 e!3939872)))

(assert (=> b!6502074 (= res!2670260 lt!2392032)))

(assert (=> b!6502074 (= (matchR!8564 lt!2392031 s!2326) (matchRSpec!3482 lt!2392031 s!2326))))

(declare-fun lt!2392046 () Unit!158859)

(assert (=> b!6502074 (= lt!2392046 (mainMatchTheorem!3482 lt!2392031 s!2326))))

(declare-fun b!6502075 () Bool)

(declare-fun res!2670274 () Bool)

(assert (=> b!6502075 (=> res!2670274 e!3939870)))

(declare-fun generalisedUnion!2225 (List!65442) Regex!16381)

(declare-fun unfocusZipperList!1802 (List!65443) List!65442)

(assert (=> b!6502075 (= res!2670274 (not (= r!7292 (generalisedUnion!2225 (unfocusZipperList!1802 zl!343)))))))

(declare-fun b!6502076 () Bool)

(declare-fun res!2670250 () Bool)

(assert (=> b!6502076 (=> res!2670250 e!3939870)))

(assert (=> b!6502076 (= res!2670250 (not ((_ is Cons!65318) (exprs!6265 (h!71767 zl!343)))))))

(assert (=> b!6502077 (= e!3939863 (inv!84199 lt!2392056))))

(declare-fun lambda!360403 () Int)

(declare-fun map!14880 ((InoxSet Context!11530) Int) (InoxSet Context!11530))

(declare-fun ++!14465 (List!65442 List!65442) List!65442)

(assert (=> b!6502077 (= (map!14880 lt!2392050 lambda!360403) (store ((as const (Array Context!11530 Bool)) false) (Context!11531 (++!14465 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318) lt!2392027)) true))))

(declare-fun lt!2392033 () Unit!158859)

(declare-fun lambda!360404 () Int)

(declare-fun lemmaConcatPreservesForall!354 (List!65442 List!65442 Int) Unit!158859)

(assert (=> b!6502077 (= lt!2392033 (lemmaConcatPreservesForall!354 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318) lt!2392027 lambda!360404))))

(declare-fun lt!2392025 () Unit!158859)

(declare-fun lemmaMapOnSingletonSet!164 ((InoxSet Context!11530) Context!11530 Int) Unit!158859)

(assert (=> b!6502077 (= lt!2392025 (lemmaMapOnSingletonSet!164 lt!2392050 lt!2392028 lambda!360403))))

(declare-fun b!6502078 () Bool)

(declare-fun tp!1798636 () Bool)

(assert (=> b!6502078 (= e!3939861 tp!1798636)))

(declare-fun b!6502079 () Bool)

(assert (=> b!6502079 (= e!3939866 e!3939881)))

(declare-fun res!2670259 () Bool)

(assert (=> b!6502079 (=> res!2670259 e!3939881)))

(assert (=> b!6502079 (= res!2670259 (not (= r!7292 lt!2392055)))))

(assert (=> b!6502079 (= lt!2392055 (Concat!25226 lt!2392022 (regTwo!33274 r!7292)))))

(declare-fun b!6502080 () Bool)

(declare-fun res!2670265 () Bool)

(assert (=> b!6502080 (=> (not res!2670265) (not e!3939871))))

(declare-fun toList!10165 ((InoxSet Context!11530)) List!65443)

(assert (=> b!6502080 (= res!2670265 (= (toList!10165 z!1189) zl!343))))

(declare-fun b!6502081 () Bool)

(assert (=> b!6502081 (= e!3939873 (matchZipper!2393 lt!2392030 (t!379078 s!2326)))))

(declare-fun b!6502082 () Bool)

(declare-fun tp!1798634 () Bool)

(assert (=> b!6502082 (= e!3939879 (and tp_is_empty!42015 tp!1798634))))

(declare-fun b!6502083 () Bool)

(declare-fun res!2670252 () Bool)

(assert (=> b!6502083 (=> res!2670252 e!3939865)))

(assert (=> b!6502083 (= res!2670252 e!3939874)))

(declare-fun res!2670256 () Bool)

(assert (=> b!6502083 (=> (not res!2670256) (not e!3939874))))

(assert (=> b!6502083 (= res!2670256 ((_ is Concat!25226) (regOne!33274 r!7292)))))

(assert (= (and start!638822 res!2670262) b!6502080))

(assert (= (and b!6502080 res!2670265) b!6502044))

(assert (= (and b!6502044 res!2670251) b!6502060))

(assert (= (and b!6502060 (not res!2670255)) b!6502072))

(assert (= (and b!6502072 (not res!2670249)) b!6502067))

(assert (= (and b!6502067 (not res!2670247)) b!6502076))

(assert (= (and b!6502076 (not res!2670250)) b!6502075))

(assert (= (and b!6502075 (not res!2670274)) b!6502070))

(assert (= (and b!6502070 (not res!2670246)) b!6502047))

(assert (= (and b!6502047 (not res!2670254)) b!6502056))

(assert (= (and b!6502056 (not res!2670273)) b!6502049))

(assert (= (and b!6502049 c!1192192) b!6502073))

(assert (= (and b!6502049 (not c!1192192)) b!6502050))

(assert (= (and b!6502073 (not res!2670248)) b!6502081))

(assert (= (and b!6502049 (not res!2670253)) b!6502083))

(assert (= (and b!6502083 res!2670256) b!6502071))

(assert (= (and b!6502083 (not res!2670252)) b!6502068))

(assert (= (and b!6502068 (not res!2670267)) b!6502054))

(assert (= (and b!6502054 (not res!2670261)) b!6502063))

(assert (= (and b!6502063 (not res!2670263)) b!6502061))

(assert (= (and b!6502061 (not res!2670272)) b!6502069))

(assert (= (and b!6502069 (not res!2670269)) b!6502079))

(assert (= (and b!6502079 (not res!2670259)) b!6502046))

(assert (= (and b!6502046 (not res!2670257)) b!6502053))

(assert (= (and b!6502053 (not res!2670264)) b!6502052))

(assert (= (and b!6502052 (not res!2670245)) b!6502074))

(assert (= (and b!6502074 (not res!2670260)) b!6502058))

(assert (= (and b!6502058 (not res!2670271)) b!6502051))

(assert (= (and b!6502051 (not res!2670258)) b!6502065))

(assert (= (and b!6502065 res!2670270) b!6502057))

(assert (= (and b!6502065 (not res!2670268)) b!6502048))

(assert (= (and b!6502048 (not res!2670266)) b!6502077))

(assert (= (and start!638822 ((_ is ElementMatch!16381) r!7292)) b!6502066))

(assert (= (and start!638822 ((_ is Concat!25226) r!7292)) b!6502064))

(assert (= (and start!638822 ((_ is Star!16381) r!7292)) b!6502055))

(assert (= (and start!638822 ((_ is Union!16381) r!7292)) b!6502062))

(assert (= (and start!638822 condSetEmpty!44327) setIsEmpty!44327))

(assert (= (and start!638822 (not condSetEmpty!44327)) setNonEmpty!44327))

(assert (= setNonEmpty!44327 b!6502078))

(assert (= b!6502059 b!6502045))

(assert (= (and start!638822 ((_ is Cons!65319) zl!343)) b!6502059))

(assert (= (and start!638822 ((_ is Cons!65320) s!2326)) b!6502082))

(declare-fun m!7289536 () Bool)

(assert (=> b!6502067 m!7289536))

(declare-fun m!7289538 () Bool)

(assert (=> b!6502060 m!7289538))

(declare-fun m!7289540 () Bool)

(assert (=> b!6502060 m!7289540))

(declare-fun m!7289542 () Bool)

(assert (=> b!6502060 m!7289542))

(declare-fun m!7289544 () Bool)

(assert (=> b!6502073 m!7289544))

(declare-fun m!7289546 () Bool)

(assert (=> b!6502073 m!7289546))

(declare-fun m!7289548 () Bool)

(assert (=> b!6502073 m!7289548))

(declare-fun m!7289550 () Bool)

(assert (=> b!6502044 m!7289550))

(declare-fun m!7289552 () Bool)

(assert (=> b!6502071 m!7289552))

(declare-fun m!7289554 () Bool)

(assert (=> b!6502059 m!7289554))

(declare-fun m!7289556 () Bool)

(assert (=> b!6502052 m!7289556))

(declare-fun m!7289558 () Bool)

(assert (=> b!6502049 m!7289558))

(declare-fun m!7289560 () Bool)

(assert (=> b!6502049 m!7289560))

(declare-fun m!7289562 () Bool)

(assert (=> b!6502049 m!7289562))

(declare-fun m!7289564 () Bool)

(assert (=> b!6502049 m!7289564))

(declare-fun m!7289566 () Bool)

(assert (=> b!6502049 m!7289566))

(declare-fun m!7289568 () Bool)

(assert (=> b!6502049 m!7289568))

(declare-fun m!7289570 () Bool)

(assert (=> b!6502049 m!7289570))

(declare-fun m!7289572 () Bool)

(assert (=> b!6502058 m!7289572))

(declare-fun m!7289574 () Bool)

(assert (=> b!6502074 m!7289574))

(declare-fun m!7289576 () Bool)

(assert (=> b!6502074 m!7289576))

(declare-fun m!7289578 () Bool)

(assert (=> b!6502074 m!7289578))

(declare-fun m!7289580 () Bool)

(assert (=> b!6502075 m!7289580))

(assert (=> b!6502075 m!7289580))

(declare-fun m!7289582 () Bool)

(assert (=> b!6502075 m!7289582))

(declare-fun m!7289584 () Bool)

(assert (=> b!6502046 m!7289584))

(declare-fun m!7289586 () Bool)

(assert (=> b!6502047 m!7289586))

(declare-fun m!7289588 () Bool)

(assert (=> b!6502047 m!7289588))

(declare-fun m!7289590 () Bool)

(assert (=> b!6502047 m!7289590))

(assert (=> b!6502047 m!7289590))

(declare-fun m!7289592 () Bool)

(assert (=> b!6502047 m!7289592))

(declare-fun m!7289594 () Bool)

(assert (=> b!6502047 m!7289594))

(assert (=> b!6502047 m!7289586))

(declare-fun m!7289596 () Bool)

(assert (=> b!6502047 m!7289596))

(declare-fun m!7289598 () Bool)

(assert (=> b!6502063 m!7289598))

(declare-fun m!7289600 () Bool)

(assert (=> b!6502063 m!7289600))

(declare-fun m!7289602 () Bool)

(assert (=> b!6502063 m!7289602))

(declare-fun m!7289604 () Bool)

(assert (=> b!6502063 m!7289604))

(declare-fun m!7289606 () Bool)

(assert (=> b!6502063 m!7289606))

(declare-fun m!7289608 () Bool)

(assert (=> b!6502054 m!7289608))

(declare-fun m!7289610 () Bool)

(assert (=> b!6502057 m!7289610))

(declare-fun m!7289612 () Bool)

(assert (=> b!6502053 m!7289612))

(declare-fun m!7289614 () Bool)

(assert (=> b!6502053 m!7289614))

(declare-fun m!7289616 () Bool)

(assert (=> b!6502053 m!7289616))

(declare-fun m!7289618 () Bool)

(assert (=> b!6502053 m!7289618))

(declare-fun m!7289620 () Bool)

(assert (=> b!6502053 m!7289620))

(declare-fun m!7289622 () Bool)

(assert (=> b!6502053 m!7289622))

(declare-fun m!7289624 () Bool)

(assert (=> b!6502053 m!7289624))

(declare-fun m!7289626 () Bool)

(assert (=> b!6502053 m!7289626))

(declare-fun m!7289628 () Bool)

(assert (=> b!6502053 m!7289628))

(declare-fun m!7289630 () Bool)

(assert (=> b!6502056 m!7289630))

(declare-fun m!7289632 () Bool)

(assert (=> start!638822 m!7289632))

(assert (=> b!6502065 m!7289546))

(declare-fun m!7289634 () Bool)

(assert (=> b!6502072 m!7289634))

(declare-fun m!7289636 () Bool)

(assert (=> setNonEmpty!44327 m!7289636))

(declare-fun m!7289638 () Bool)

(assert (=> b!6502061 m!7289638))

(declare-fun m!7289640 () Bool)

(assert (=> b!6502061 m!7289640))

(declare-fun m!7289642 () Bool)

(assert (=> b!6502077 m!7289642))

(declare-fun m!7289644 () Bool)

(assert (=> b!6502077 m!7289644))

(declare-fun m!7289646 () Bool)

(assert (=> b!6502077 m!7289646))

(declare-fun m!7289648 () Bool)

(assert (=> b!6502077 m!7289648))

(declare-fun m!7289650 () Bool)

(assert (=> b!6502077 m!7289650))

(declare-fun m!7289652 () Bool)

(assert (=> b!6502077 m!7289652))

(assert (=> b!6502081 m!7289610))

(declare-fun m!7289654 () Bool)

(assert (=> b!6502080 m!7289654))

(check-sat (not b!6502056) (not start!638822) (not b!6502073) (not b!6502078) (not b!6502044) (not b!6502067) (not b!6502061) (not b!6502060) (not b!6502065) (not b!6502057) (not b!6502047) (not b!6502081) (not b!6502074) (not b!6502063) (not b!6502059) (not setNonEmpty!44327) (not b!6502080) (not b!6502077) (not b!6502055) (not b!6502058) (not b!6502062) (not b!6502075) (not b!6502053) (not b!6502054) (not b!6502072) (not b!6502064) tp_is_empty!42015 (not b!6502049) (not b!6502071) (not b!6502082) (not b!6502045) (not b!6502052) (not b!6502046))
(check-sat)
(get-model)

(declare-fun d!2040072 () Bool)

(declare-fun choose!48272 ((InoxSet Context!11530) Int) (InoxSet Context!11530))

(assert (=> d!2040072 (= (flatMap!1886 lt!2392043 lambda!360402) (choose!48272 lt!2392043 lambda!360402))))

(declare-fun bs!1651490 () Bool)

(assert (= bs!1651490 d!2040072))

(declare-fun m!7289656 () Bool)

(assert (=> bs!1651490 m!7289656))

(assert (=> b!6502063 d!2040072))

(declare-fun b!6502102 () Bool)

(declare-fun e!3939890 () (InoxSet Context!11530))

(declare-fun e!3939889 () (InoxSet Context!11530))

(assert (=> b!6502102 (= e!3939890 e!3939889)))

(declare-fun c!1192198 () Bool)

(assert (=> b!6502102 (= c!1192198 ((_ is Cons!65318) (exprs!6265 lt!2392024)))))

(declare-fun b!6502103 () Bool)

(assert (=> b!6502103 (= e!3939889 ((as const (Array Context!11530 Bool)) false))))

(declare-fun d!2040074 () Bool)

(declare-fun c!1192199 () Bool)

(declare-fun e!3939891 () Bool)

(assert (=> d!2040074 (= c!1192199 e!3939891)))

(declare-fun res!2670278 () Bool)

(assert (=> d!2040074 (=> (not res!2670278) (not e!3939891))))

(assert (=> d!2040074 (= res!2670278 ((_ is Cons!65318) (exprs!6265 lt!2392024)))))

(assert (=> d!2040074 (= (derivationStepZipperUp!1555 lt!2392024 (h!71768 s!2326)) e!3939890)))

(declare-fun bm!563399 () Bool)

(declare-fun call!563404 () (InoxSet Context!11530))

(assert (=> bm!563399 (= call!563404 (derivationStepZipperDown!1629 (h!71766 (exprs!6265 lt!2392024)) (Context!11531 (t!379076 (exprs!6265 lt!2392024))) (h!71768 s!2326)))))

(declare-fun b!6502104 () Bool)

(assert (=> b!6502104 (= e!3939889 call!563404)))

(declare-fun b!6502105 () Bool)

(assert (=> b!6502105 (= e!3939891 (nullable!6374 (h!71766 (exprs!6265 lt!2392024))))))

(declare-fun b!6502106 () Bool)

(assert (=> b!6502106 (= e!3939890 ((_ map or) call!563404 (derivationStepZipperUp!1555 (Context!11531 (t!379076 (exprs!6265 lt!2392024))) (h!71768 s!2326))))))

(assert (= (and d!2040074 res!2670278) b!6502105))

(assert (= (and d!2040074 c!1192199) b!6502106))

(assert (= (and d!2040074 (not c!1192199)) b!6502102))

(assert (= (and b!6502102 c!1192198) b!6502104))

(assert (= (and b!6502102 (not c!1192198)) b!6502103))

(assert (= (or b!6502106 b!6502104) bm!563399))

(declare-fun m!7289658 () Bool)

(assert (=> bm!563399 m!7289658))

(declare-fun m!7289660 () Bool)

(assert (=> b!6502105 m!7289660))

(declare-fun m!7289662 () Bool)

(assert (=> b!6502106 m!7289662))

(assert (=> b!6502063 d!2040074))

(declare-fun d!2040076 () Bool)

(declare-fun dynLambda!25946 (Int Context!11530) (InoxSet Context!11530))

(assert (=> d!2040076 (= (flatMap!1886 lt!2392043 lambda!360402) (dynLambda!25946 lambda!360402 lt!2392024))))

(declare-fun lt!2392059 () Unit!158859)

(declare-fun choose!48273 ((InoxSet Context!11530) Context!11530 Int) Unit!158859)

(assert (=> d!2040076 (= lt!2392059 (choose!48273 lt!2392043 lt!2392024 lambda!360402))))

(assert (=> d!2040076 (= lt!2392043 (store ((as const (Array Context!11530 Bool)) false) lt!2392024 true))))

(assert (=> d!2040076 (= (lemmaFlatMapOnSingletonSet!1412 lt!2392043 lt!2392024 lambda!360402) lt!2392059)))

(declare-fun b_lambda!246137 () Bool)

(assert (=> (not b_lambda!246137) (not d!2040076)))

(declare-fun bs!1651491 () Bool)

(assert (= bs!1651491 d!2040076))

(assert (=> bs!1651491 m!7289604))

(declare-fun m!7289664 () Bool)

(assert (=> bs!1651491 m!7289664))

(declare-fun m!7289666 () Bool)

(assert (=> bs!1651491 m!7289666))

(assert (=> bs!1651491 m!7289598))

(assert (=> b!6502063 d!2040076))

(declare-fun bs!1651492 () Bool)

(declare-fun d!2040078 () Bool)

(assert (= bs!1651492 (and d!2040078 b!6502049)))

(declare-fun lambda!360407 () Int)

(assert (=> bs!1651492 (= lambda!360407 lambda!360402)))

(assert (=> d!2040078 true))

(assert (=> d!2040078 (= (derivationStepZipper!2347 lt!2392043 (h!71768 s!2326)) (flatMap!1886 lt!2392043 lambda!360407))))

(declare-fun bs!1651493 () Bool)

(assert (= bs!1651493 d!2040078))

(declare-fun m!7289668 () Bool)

(assert (=> bs!1651493 m!7289668))

(assert (=> b!6502063 d!2040078))

(declare-fun d!2040080 () Bool)

(declare-fun c!1192204 () Bool)

(declare-fun isEmpty!37523 (List!65444) Bool)

(assert (=> d!2040080 (= c!1192204 (isEmpty!37523 (t!379078 s!2326)))))

(declare-fun e!3939894 () Bool)

(assert (=> d!2040080 (= (matchZipper!2393 lt!2392044 (t!379078 s!2326)) e!3939894)))

(declare-fun b!6502113 () Bool)

(declare-fun nullableZipper!2135 ((InoxSet Context!11530)) Bool)

(assert (=> b!6502113 (= e!3939894 (nullableZipper!2135 lt!2392044))))

(declare-fun b!6502114 () Bool)

(declare-fun head!13231 (List!65444) C!33032)

(declare-fun tail!12316 (List!65444) List!65444)

(assert (=> b!6502114 (= e!3939894 (matchZipper!2393 (derivationStepZipper!2347 lt!2392044 (head!13231 (t!379078 s!2326))) (tail!12316 (t!379078 s!2326))))))

(assert (= (and d!2040080 c!1192204) b!6502113))

(assert (= (and d!2040080 (not c!1192204)) b!6502114))

(declare-fun m!7289670 () Bool)

(assert (=> d!2040080 m!7289670))

(declare-fun m!7289672 () Bool)

(assert (=> b!6502113 m!7289672))

(declare-fun m!7289674 () Bool)

(assert (=> b!6502114 m!7289674))

(assert (=> b!6502114 m!7289674))

(declare-fun m!7289676 () Bool)

(assert (=> b!6502114 m!7289676))

(declare-fun m!7289678 () Bool)

(assert (=> b!6502114 m!7289678))

(assert (=> b!6502114 m!7289676))

(assert (=> b!6502114 m!7289678))

(declare-fun m!7289680 () Bool)

(assert (=> b!6502114 m!7289680))

(assert (=> b!6502065 d!2040080))

(declare-fun d!2040082 () Bool)

(declare-fun lt!2392062 () Regex!16381)

(assert (=> d!2040082 (validRegex!8117 lt!2392062)))

(assert (=> d!2040082 (= lt!2392062 (generalisedUnion!2225 (unfocusZipperList!1802 zl!343)))))

(assert (=> d!2040082 (= (unfocusZipper!2123 zl!343) lt!2392062)))

(declare-fun bs!1651494 () Bool)

(assert (= bs!1651494 d!2040082))

(declare-fun m!7289682 () Bool)

(assert (=> bs!1651494 m!7289682))

(assert (=> bs!1651494 m!7289580))

(assert (=> bs!1651494 m!7289580))

(assert (=> bs!1651494 m!7289582))

(assert (=> b!6502044 d!2040082))

(declare-fun d!2040084 () Bool)

(declare-fun lt!2392063 () Regex!16381)

(assert (=> d!2040084 (validRegex!8117 lt!2392063)))

(assert (=> d!2040084 (= lt!2392063 (generalisedUnion!2225 (unfocusZipperList!1802 (Cons!65319 lt!2392024 Nil!65319))))))

(assert (=> d!2040084 (= (unfocusZipper!2123 (Cons!65319 lt!2392024 Nil!65319)) lt!2392063)))

(declare-fun bs!1651495 () Bool)

(assert (= bs!1651495 d!2040084))

(declare-fun m!7289684 () Bool)

(assert (=> bs!1651495 m!7289684))

(declare-fun m!7289686 () Bool)

(assert (=> bs!1651495 m!7289686))

(assert (=> bs!1651495 m!7289686))

(declare-fun m!7289688 () Bool)

(assert (=> bs!1651495 m!7289688))

(assert (=> b!6502046 d!2040084))

(declare-fun bs!1651496 () Bool)

(declare-fun d!2040086 () Bool)

(assert (= bs!1651496 (and d!2040086 b!6502077)))

(declare-fun lambda!360410 () Int)

(assert (=> bs!1651496 (= lambda!360410 lambda!360404)))

(declare-fun forall!15561 (List!65442 Int) Bool)

(assert (=> d!2040086 (= (inv!84199 setElem!44327) (forall!15561 (exprs!6265 setElem!44327) lambda!360410))))

(declare-fun bs!1651497 () Bool)

(assert (= bs!1651497 d!2040086))

(declare-fun m!7289690 () Bool)

(assert (=> bs!1651497 m!7289690))

(assert (=> setNonEmpty!44327 d!2040086))

(declare-fun d!2040088 () Bool)

(declare-fun c!1192205 () Bool)

(assert (=> d!2040088 (= c!1192205 (isEmpty!37523 (t!379078 s!2326)))))

(declare-fun e!3939895 () Bool)

(assert (=> d!2040088 (= (matchZipper!2393 lt!2392030 (t!379078 s!2326)) e!3939895)))

(declare-fun b!6502115 () Bool)

(assert (=> b!6502115 (= e!3939895 (nullableZipper!2135 lt!2392030))))

(declare-fun b!6502116 () Bool)

(assert (=> b!6502116 (= e!3939895 (matchZipper!2393 (derivationStepZipper!2347 lt!2392030 (head!13231 (t!379078 s!2326))) (tail!12316 (t!379078 s!2326))))))

(assert (= (and d!2040088 c!1192205) b!6502115))

(assert (= (and d!2040088 (not c!1192205)) b!6502116))

(assert (=> d!2040088 m!7289670))

(declare-fun m!7289692 () Bool)

(assert (=> b!6502115 m!7289692))

(assert (=> b!6502116 m!7289674))

(assert (=> b!6502116 m!7289674))

(declare-fun m!7289694 () Bool)

(assert (=> b!6502116 m!7289694))

(assert (=> b!6502116 m!7289678))

(assert (=> b!6502116 m!7289694))

(assert (=> b!6502116 m!7289678))

(declare-fun m!7289696 () Bool)

(assert (=> b!6502116 m!7289696))

(assert (=> b!6502057 d!2040088))

(declare-fun b!6502128 () Bool)

(declare-fun e!3939900 () Bool)

(declare-fun lt!2392066 () List!65442)

(assert (=> b!6502128 (= e!3939900 (or (not (= lt!2392027 Nil!65318)) (= lt!2392066 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318))))))

(declare-fun b!6502127 () Bool)

(declare-fun res!2670285 () Bool)

(assert (=> b!6502127 (=> (not res!2670285) (not e!3939900))))

(declare-fun size!40437 (List!65442) Int)

(assert (=> b!6502127 (= res!2670285 (= (size!40437 lt!2392066) (+ (size!40437 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318)) (size!40437 lt!2392027))))))

(declare-fun b!6502126 () Bool)

(declare-fun e!3939901 () List!65442)

(assert (=> b!6502126 (= e!3939901 (Cons!65318 (h!71766 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318)) (++!14465 (t!379076 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318)) lt!2392027)))))

(declare-fun b!6502125 () Bool)

(assert (=> b!6502125 (= e!3939901 lt!2392027)))

(declare-fun d!2040090 () Bool)

(assert (=> d!2040090 e!3939900))

(declare-fun res!2670284 () Bool)

(assert (=> d!2040090 (=> (not res!2670284) (not e!3939900))))

(declare-fun content!12460 (List!65442) (InoxSet Regex!16381))

(assert (=> d!2040090 (= res!2670284 (= (content!12460 lt!2392066) ((_ map or) (content!12460 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318)) (content!12460 lt!2392027))))))

(assert (=> d!2040090 (= lt!2392066 e!3939901)))

(declare-fun c!1192208 () Bool)

(assert (=> d!2040090 (= c!1192208 ((_ is Nil!65318) (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318)))))

(assert (=> d!2040090 (= (++!14465 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318) lt!2392027) lt!2392066)))

(assert (= (and d!2040090 c!1192208) b!6502125))

(assert (= (and d!2040090 (not c!1192208)) b!6502126))

(assert (= (and d!2040090 res!2670284) b!6502127))

(assert (= (and b!6502127 res!2670285) b!6502128))

(declare-fun m!7289698 () Bool)

(assert (=> b!6502127 m!7289698))

(declare-fun m!7289700 () Bool)

(assert (=> b!6502127 m!7289700))

(declare-fun m!7289702 () Bool)

(assert (=> b!6502127 m!7289702))

(declare-fun m!7289704 () Bool)

(assert (=> b!6502126 m!7289704))

(declare-fun m!7289706 () Bool)

(assert (=> d!2040090 m!7289706))

(declare-fun m!7289708 () Bool)

(assert (=> d!2040090 m!7289708))

(declare-fun m!7289710 () Bool)

(assert (=> d!2040090 m!7289710))

(assert (=> b!6502077 d!2040090))

(declare-fun d!2040092 () Bool)

(declare-fun choose!48274 ((InoxSet Context!11530) Int) (InoxSet Context!11530))

(assert (=> d!2040092 (= (map!14880 lt!2392050 lambda!360403) (choose!48274 lt!2392050 lambda!360403))))

(declare-fun bs!1651498 () Bool)

(assert (= bs!1651498 d!2040092))

(declare-fun m!7289712 () Bool)

(assert (=> bs!1651498 m!7289712))

(assert (=> b!6502077 d!2040092))

(declare-fun bs!1651499 () Bool)

(declare-fun d!2040094 () Bool)

(assert (= bs!1651499 (and d!2040094 b!6502077)))

(declare-fun lambda!360411 () Int)

(assert (=> bs!1651499 (= lambda!360411 lambda!360404)))

(declare-fun bs!1651500 () Bool)

(assert (= bs!1651500 (and d!2040094 d!2040086)))

(assert (=> bs!1651500 (= lambda!360411 lambda!360410)))

(assert (=> d!2040094 (= (inv!84199 lt!2392056) (forall!15561 (exprs!6265 lt!2392056) lambda!360411))))

(declare-fun bs!1651501 () Bool)

(assert (= bs!1651501 d!2040094))

(declare-fun m!7289714 () Bool)

(assert (=> bs!1651501 m!7289714))

(assert (=> b!6502077 d!2040094))

(declare-fun d!2040096 () Bool)

(assert (=> d!2040096 (forall!15561 (++!14465 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318) lt!2392027) lambda!360404)))

(declare-fun lt!2392069 () Unit!158859)

(declare-fun choose!48275 (List!65442 List!65442 Int) Unit!158859)

(assert (=> d!2040096 (= lt!2392069 (choose!48275 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318) lt!2392027 lambda!360404))))

(assert (=> d!2040096 (forall!15561 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318) lambda!360404)))

(assert (=> d!2040096 (= (lemmaConcatPreservesForall!354 (Cons!65318 (reg!16710 (regOne!33274 r!7292)) Nil!65318) lt!2392027 lambda!360404) lt!2392069)))

(declare-fun bs!1651503 () Bool)

(assert (= bs!1651503 d!2040096))

(assert (=> bs!1651503 m!7289650))

(assert (=> bs!1651503 m!7289650))

(declare-fun m!7289718 () Bool)

(assert (=> bs!1651503 m!7289718))

(declare-fun m!7289720 () Bool)

(assert (=> bs!1651503 m!7289720))

(declare-fun m!7289722 () Bool)

(assert (=> bs!1651503 m!7289722))

(assert (=> b!6502077 d!2040096))

(declare-fun d!2040102 () Bool)

(declare-fun dynLambda!25947 (Int Context!11530) Context!11530)

(assert (=> d!2040102 (= (map!14880 lt!2392050 lambda!360403) (store ((as const (Array Context!11530 Bool)) false) (dynLambda!25947 lambda!360403 lt!2392028) true))))

(declare-fun lt!2392072 () Unit!158859)

(declare-fun choose!48276 ((InoxSet Context!11530) Context!11530 Int) Unit!158859)

(assert (=> d!2040102 (= lt!2392072 (choose!48276 lt!2392050 lt!2392028 lambda!360403))))

(assert (=> d!2040102 (= lt!2392050 (store ((as const (Array Context!11530 Bool)) false) lt!2392028 true))))

(assert (=> d!2040102 (= (lemmaMapOnSingletonSet!164 lt!2392050 lt!2392028 lambda!360403) lt!2392072)))

(declare-fun b_lambda!246139 () Bool)

(assert (=> (not b_lambda!246139) (not d!2040102)))

(declare-fun bs!1651504 () Bool)

(assert (= bs!1651504 d!2040102))

(declare-fun m!7289724 () Bool)

(assert (=> bs!1651504 m!7289724))

(declare-fun m!7289726 () Bool)

(assert (=> bs!1651504 m!7289726))

(declare-fun m!7289728 () Bool)

(assert (=> bs!1651504 m!7289728))

(assert (=> bs!1651504 m!7289726))

(assert (=> bs!1651504 m!7289620))

(assert (=> bs!1651504 m!7289646))

(assert (=> b!6502077 d!2040102))

(declare-fun d!2040104 () Bool)

(declare-fun c!1192209 () Bool)

(assert (=> d!2040104 (= c!1192209 (isEmpty!37523 s!2326))))

(declare-fun e!3939902 () Bool)

(assert (=> d!2040104 (= (matchZipper!2393 z!1189 s!2326) e!3939902)))

(declare-fun b!6502129 () Bool)

(assert (=> b!6502129 (= e!3939902 (nullableZipper!2135 z!1189))))

(declare-fun b!6502130 () Bool)

(assert (=> b!6502130 (= e!3939902 (matchZipper!2393 (derivationStepZipper!2347 z!1189 (head!13231 s!2326)) (tail!12316 s!2326)))))

(assert (= (and d!2040104 c!1192209) b!6502129))

(assert (= (and d!2040104 (not c!1192209)) b!6502130))

(declare-fun m!7289730 () Bool)

(assert (=> d!2040104 m!7289730))

(declare-fun m!7289732 () Bool)

(assert (=> b!6502129 m!7289732))

(declare-fun m!7289734 () Bool)

(assert (=> b!6502130 m!7289734))

(assert (=> b!6502130 m!7289734))

(declare-fun m!7289736 () Bool)

(assert (=> b!6502130 m!7289736))

(declare-fun m!7289738 () Bool)

(assert (=> b!6502130 m!7289738))

(assert (=> b!6502130 m!7289736))

(assert (=> b!6502130 m!7289738))

(declare-fun m!7289740 () Bool)

(assert (=> b!6502130 m!7289740))

(assert (=> b!6502058 d!2040104))

(declare-fun d!2040106 () Bool)

(declare-fun e!3939917 () Bool)

(assert (=> d!2040106 e!3939917))

(declare-fun res!2670292 () Bool)

(assert (=> d!2040106 (=> (not res!2670292) (not e!3939917))))

(declare-fun lt!2392077 () List!65443)

(declare-fun noDuplicate!2197 (List!65443) Bool)

(assert (=> d!2040106 (= res!2670292 (noDuplicate!2197 lt!2392077))))

(declare-fun choose!48277 ((InoxSet Context!11530)) List!65443)

(assert (=> d!2040106 (= lt!2392077 (choose!48277 z!1189))))

(assert (=> d!2040106 (= (toList!10165 z!1189) lt!2392077)))

(declare-fun b!6502153 () Bool)

(declare-fun content!12461 (List!65443) (InoxSet Context!11530))

(assert (=> b!6502153 (= e!3939917 (= (content!12461 lt!2392077) z!1189))))

(assert (= (and d!2040106 res!2670292) b!6502153))

(declare-fun m!7289742 () Bool)

(assert (=> d!2040106 m!7289742))

(declare-fun m!7289744 () Bool)

(assert (=> d!2040106 m!7289744))

(declare-fun m!7289746 () Bool)

(assert (=> b!6502153 m!7289746))

(assert (=> b!6502080 d!2040106))

(declare-fun bs!1651506 () Bool)

(declare-fun b!6502246 () Bool)

(assert (= bs!1651506 (and b!6502246 b!6502047)))

(declare-fun lambda!360419 () Int)

(assert (=> bs!1651506 (not (= lambda!360419 lambda!360400))))

(assert (=> bs!1651506 (not (= lambda!360419 lambda!360401))))

(assert (=> b!6502246 true))

(assert (=> b!6502246 true))

(declare-fun bs!1651507 () Bool)

(declare-fun b!6502244 () Bool)

(assert (= bs!1651507 (and b!6502244 b!6502047)))

(declare-fun lambda!360420 () Int)

(assert (=> bs!1651507 (not (= lambda!360420 lambda!360400))))

(assert (=> bs!1651507 (= lambda!360420 lambda!360401)))

(declare-fun bs!1651508 () Bool)

(assert (= bs!1651508 (and b!6502244 b!6502246)))

(assert (=> bs!1651508 (not (= lambda!360420 lambda!360419))))

(assert (=> b!6502244 true))

(assert (=> b!6502244 true))

(declare-fun b!6502238 () Bool)

(declare-fun e!3939964 () Bool)

(declare-fun e!3939966 () Bool)

(assert (=> b!6502238 (= e!3939964 e!3939966)))

(declare-fun res!2670337 () Bool)

(assert (=> b!6502238 (= res!2670337 (matchRSpec!3482 (regOne!33275 r!7292) s!2326))))

(assert (=> b!6502238 (=> res!2670337 e!3939966)))

(declare-fun d!2040108 () Bool)

(declare-fun c!1192240 () Bool)

(assert (=> d!2040108 (= c!1192240 ((_ is EmptyExpr!16381) r!7292))))

(declare-fun e!3939968 () Bool)

(assert (=> d!2040108 (= (matchRSpec!3482 r!7292 s!2326) e!3939968)))

(declare-fun bm!563407 () Bool)

(declare-fun call!563412 () Bool)

(assert (=> bm!563407 (= call!563412 (isEmpty!37523 s!2326))))

(declare-fun b!6502239 () Bool)

(declare-fun e!3939963 () Bool)

(assert (=> b!6502239 (= e!3939968 e!3939963)))

(declare-fun res!2670335 () Bool)

(assert (=> b!6502239 (= res!2670335 (not ((_ is EmptyLang!16381) r!7292)))))

(assert (=> b!6502239 (=> (not res!2670335) (not e!3939963))))

(declare-fun b!6502240 () Bool)

(assert (=> b!6502240 (= e!3939966 (matchRSpec!3482 (regTwo!33275 r!7292) s!2326))))

(declare-fun b!6502241 () Bool)

(declare-fun e!3939967 () Bool)

(assert (=> b!6502241 (= e!3939967 (= s!2326 (Cons!65320 (c!1192193 r!7292) Nil!65320)))))

(declare-fun b!6502242 () Bool)

(declare-fun res!2670336 () Bool)

(declare-fun e!3939965 () Bool)

(assert (=> b!6502242 (=> res!2670336 e!3939965)))

(assert (=> b!6502242 (= res!2670336 call!563412)))

(declare-fun e!3939969 () Bool)

(assert (=> b!6502242 (= e!3939969 e!3939965)))

(declare-fun b!6502243 () Bool)

(assert (=> b!6502243 (= e!3939964 e!3939969)))

(declare-fun c!1192242 () Bool)

(assert (=> b!6502243 (= c!1192242 ((_ is Star!16381) r!7292))))

(declare-fun call!563413 () Bool)

(assert (=> b!6502244 (= e!3939969 call!563413)))

(declare-fun b!6502245 () Bool)

(declare-fun c!1192241 () Bool)

(assert (=> b!6502245 (= c!1192241 ((_ is Union!16381) r!7292))))

(assert (=> b!6502245 (= e!3939967 e!3939964)))

(assert (=> b!6502246 (= e!3939965 call!563413)))

(declare-fun b!6502247 () Bool)

(declare-fun c!1192239 () Bool)

(assert (=> b!6502247 (= c!1192239 ((_ is ElementMatch!16381) r!7292))))

(assert (=> b!6502247 (= e!3939963 e!3939967)))

(declare-fun bm!563408 () Bool)

(assert (=> bm!563408 (= call!563413 (Exists!3451 (ite c!1192242 lambda!360419 lambda!360420)))))

(declare-fun b!6502248 () Bool)

(assert (=> b!6502248 (= e!3939968 call!563412)))

(assert (= (and d!2040108 c!1192240) b!6502248))

(assert (= (and d!2040108 (not c!1192240)) b!6502239))

(assert (= (and b!6502239 res!2670335) b!6502247))

(assert (= (and b!6502247 c!1192239) b!6502241))

(assert (= (and b!6502247 (not c!1192239)) b!6502245))

(assert (= (and b!6502245 c!1192241) b!6502238))

(assert (= (and b!6502245 (not c!1192241)) b!6502243))

(assert (= (and b!6502238 (not res!2670337)) b!6502240))

(assert (= (and b!6502243 c!1192242) b!6502242))

(assert (= (and b!6502243 (not c!1192242)) b!6502244))

(assert (= (and b!6502242 (not res!2670336)) b!6502246))

(assert (= (or b!6502246 b!6502244) bm!563408))

(assert (= (or b!6502248 b!6502242) bm!563407))

(declare-fun m!7289782 () Bool)

(assert (=> b!6502238 m!7289782))

(assert (=> bm!563407 m!7289730))

(declare-fun m!7289784 () Bool)

(assert (=> b!6502240 m!7289784))

(declare-fun m!7289786 () Bool)

(assert (=> bm!563408 m!7289786))

(assert (=> b!6502060 d!2040108))

(declare-fun b!6502309 () Bool)

(declare-fun res!2670372 () Bool)

(declare-fun e!3940003 () Bool)

(assert (=> b!6502309 (=> res!2670372 e!3940003)))

(assert (=> b!6502309 (= res!2670372 (not ((_ is ElementMatch!16381) r!7292)))))

(declare-fun e!3940008 () Bool)

(assert (=> b!6502309 (= e!3940008 e!3940003)))

(declare-fun b!6502310 () Bool)

(declare-fun res!2670376 () Bool)

(assert (=> b!6502310 (=> res!2670376 e!3940003)))

(declare-fun e!3940002 () Bool)

(assert (=> b!6502310 (= res!2670376 e!3940002)))

(declare-fun res!2670377 () Bool)

(assert (=> b!6502310 (=> (not res!2670377) (not e!3940002))))

(declare-fun lt!2392084 () Bool)

(assert (=> b!6502310 (= res!2670377 lt!2392084)))

(declare-fun b!6502311 () Bool)

(declare-fun res!2670375 () Bool)

(declare-fun e!3940005 () Bool)

(assert (=> b!6502311 (=> res!2670375 e!3940005)))

(assert (=> b!6502311 (= res!2670375 (not (isEmpty!37523 (tail!12316 s!2326))))))

(declare-fun b!6502312 () Bool)

(declare-fun e!3940007 () Bool)

(declare-fun call!563420 () Bool)

(assert (=> b!6502312 (= e!3940007 (= lt!2392084 call!563420))))

(declare-fun b!6502313 () Bool)

(declare-fun e!3940004 () Bool)

(assert (=> b!6502313 (= e!3940004 e!3940005)))

(declare-fun res!2670371 () Bool)

(assert (=> b!6502313 (=> res!2670371 e!3940005)))

(assert (=> b!6502313 (= res!2670371 call!563420)))

(declare-fun d!2040114 () Bool)

(assert (=> d!2040114 e!3940007))

(declare-fun c!1192258 () Bool)

(assert (=> d!2040114 (= c!1192258 ((_ is EmptyExpr!16381) r!7292))))

(declare-fun e!3940006 () Bool)

(assert (=> d!2040114 (= lt!2392084 e!3940006)))

(declare-fun c!1192259 () Bool)

(assert (=> d!2040114 (= c!1192259 (isEmpty!37523 s!2326))))

(assert (=> d!2040114 (validRegex!8117 r!7292)))

(assert (=> d!2040114 (= (matchR!8564 r!7292 s!2326) lt!2392084)))

(declare-fun b!6502314 () Bool)

(assert (=> b!6502314 (= e!3940006 (nullable!6374 r!7292))))

(declare-fun b!6502315 () Bool)

(declare-fun res!2670370 () Bool)

(assert (=> b!6502315 (=> (not res!2670370) (not e!3940002))))

(assert (=> b!6502315 (= res!2670370 (isEmpty!37523 (tail!12316 s!2326)))))

(declare-fun b!6502316 () Bool)

(assert (=> b!6502316 (= e!3940002 (= (head!13231 s!2326) (c!1192193 r!7292)))))

(declare-fun b!6502317 () Bool)

(assert (=> b!6502317 (= e!3940003 e!3940004)))

(declare-fun res!2670374 () Bool)

(assert (=> b!6502317 (=> (not res!2670374) (not e!3940004))))

(assert (=> b!6502317 (= res!2670374 (not lt!2392084))))

(declare-fun b!6502318 () Bool)

(assert (=> b!6502318 (= e!3940005 (not (= (head!13231 s!2326) (c!1192193 r!7292))))))

(declare-fun b!6502319 () Bool)

(assert (=> b!6502319 (= e!3940008 (not lt!2392084))))

(declare-fun b!6502320 () Bool)

(declare-fun derivativeStep!5075 (Regex!16381 C!33032) Regex!16381)

(assert (=> b!6502320 (= e!3940006 (matchR!8564 (derivativeStep!5075 r!7292 (head!13231 s!2326)) (tail!12316 s!2326)))))

(declare-fun bm!563415 () Bool)

(assert (=> bm!563415 (= call!563420 (isEmpty!37523 s!2326))))

(declare-fun b!6502321 () Bool)

(declare-fun res!2670373 () Bool)

(assert (=> b!6502321 (=> (not res!2670373) (not e!3940002))))

(assert (=> b!6502321 (= res!2670373 (not call!563420))))

(declare-fun b!6502322 () Bool)

(assert (=> b!6502322 (= e!3940007 e!3940008)))

(declare-fun c!1192257 () Bool)

(assert (=> b!6502322 (= c!1192257 ((_ is EmptyLang!16381) r!7292))))

(assert (= (and d!2040114 c!1192259) b!6502314))

(assert (= (and d!2040114 (not c!1192259)) b!6502320))

(assert (= (and d!2040114 c!1192258) b!6502312))

(assert (= (and d!2040114 (not c!1192258)) b!6502322))

(assert (= (and b!6502322 c!1192257) b!6502319))

(assert (= (and b!6502322 (not c!1192257)) b!6502309))

(assert (= (and b!6502309 (not res!2670372)) b!6502310))

(assert (= (and b!6502310 res!2670377) b!6502321))

(assert (= (and b!6502321 res!2670373) b!6502315))

(assert (= (and b!6502315 res!2670370) b!6502316))

(assert (= (and b!6502310 (not res!2670376)) b!6502317))

(assert (= (and b!6502317 res!2670374) b!6502313))

(assert (= (and b!6502313 (not res!2670371)) b!6502311))

(assert (= (and b!6502311 (not res!2670375)) b!6502318))

(assert (= (or b!6502312 b!6502313 b!6502321) bm!563415))

(assert (=> b!6502311 m!7289738))

(assert (=> b!6502311 m!7289738))

(declare-fun m!7289788 () Bool)

(assert (=> b!6502311 m!7289788))

(assert (=> d!2040114 m!7289730))

(assert (=> d!2040114 m!7289632))

(assert (=> bm!563415 m!7289730))

(declare-fun m!7289790 () Bool)

(assert (=> b!6502314 m!7289790))

(assert (=> b!6502316 m!7289734))

(assert (=> b!6502318 m!7289734))

(assert (=> b!6502320 m!7289734))

(assert (=> b!6502320 m!7289734))

(declare-fun m!7289792 () Bool)

(assert (=> b!6502320 m!7289792))

(assert (=> b!6502320 m!7289738))

(assert (=> b!6502320 m!7289792))

(assert (=> b!6502320 m!7289738))

(declare-fun m!7289794 () Bool)

(assert (=> b!6502320 m!7289794))

(assert (=> b!6502315 m!7289738))

(assert (=> b!6502315 m!7289738))

(assert (=> b!6502315 m!7289788))

(assert (=> b!6502060 d!2040114))

(declare-fun d!2040116 () Bool)

(assert (=> d!2040116 (= (matchR!8564 r!7292 s!2326) (matchRSpec!3482 r!7292 s!2326))))

(declare-fun lt!2392087 () Unit!158859)

(declare-fun choose!48278 (Regex!16381 List!65444) Unit!158859)

(assert (=> d!2040116 (= lt!2392087 (choose!48278 r!7292 s!2326))))

(assert (=> d!2040116 (validRegex!8117 r!7292)))

(assert (=> d!2040116 (= (mainMatchTheorem!3482 r!7292 s!2326) lt!2392087)))

(declare-fun bs!1651512 () Bool)

(assert (= bs!1651512 d!2040116))

(assert (=> bs!1651512 m!7289540))

(assert (=> bs!1651512 m!7289538))

(declare-fun m!7289802 () Bool)

(assert (=> bs!1651512 m!7289802))

(assert (=> bs!1651512 m!7289632))

(assert (=> b!6502060 d!2040116))

(declare-fun bs!1651513 () Bool)

(declare-fun d!2040120 () Bool)

(assert (= bs!1651513 (and d!2040120 b!6502077)))

(declare-fun lambda!360427 () Int)

(assert (=> bs!1651513 (= lambda!360427 lambda!360404)))

(declare-fun bs!1651514 () Bool)

(assert (= bs!1651514 (and d!2040120 d!2040086)))

(assert (=> bs!1651514 (= lambda!360427 lambda!360410)))

(declare-fun bs!1651515 () Bool)

(assert (= bs!1651515 (and d!2040120 d!2040094)))

(assert (=> bs!1651515 (= lambda!360427 lambda!360411)))

(assert (=> d!2040120 (= (inv!84199 (h!71767 zl!343)) (forall!15561 (exprs!6265 (h!71767 zl!343)) lambda!360427))))

(declare-fun bs!1651516 () Bool)

(assert (= bs!1651516 d!2040120))

(declare-fun m!7289804 () Bool)

(assert (=> bs!1651516 m!7289804))

(assert (=> b!6502059 d!2040120))

(declare-fun d!2040122 () Bool)

(declare-fun c!1192264 () Bool)

(assert (=> d!2040122 (= c!1192264 (isEmpty!37523 (t!379078 s!2326)))))

(declare-fun e!3940016 () Bool)

(assert (=> d!2040122 (= (matchZipper!2393 lt!2392053 (t!379078 s!2326)) e!3940016)))

(declare-fun b!6502334 () Bool)

(assert (=> b!6502334 (= e!3940016 (nullableZipper!2135 lt!2392053))))

(declare-fun b!6502335 () Bool)

(assert (=> b!6502335 (= e!3940016 (matchZipper!2393 (derivationStepZipper!2347 lt!2392053 (head!13231 (t!379078 s!2326))) (tail!12316 (t!379078 s!2326))))))

(assert (= (and d!2040122 c!1192264) b!6502334))

(assert (= (and d!2040122 (not c!1192264)) b!6502335))

(assert (=> d!2040122 m!7289670))

(declare-fun m!7289806 () Bool)

(assert (=> b!6502334 m!7289806))

(assert (=> b!6502335 m!7289674))

(assert (=> b!6502335 m!7289674))

(declare-fun m!7289808 () Bool)

(assert (=> b!6502335 m!7289808))

(assert (=> b!6502335 m!7289678))

(assert (=> b!6502335 m!7289808))

(assert (=> b!6502335 m!7289678))

(declare-fun m!7289810 () Bool)

(assert (=> b!6502335 m!7289810))

(assert (=> b!6502061 d!2040122))

(declare-fun d!2040124 () Bool)

(declare-fun c!1192265 () Bool)

(assert (=> d!2040124 (= c!1192265 (isEmpty!37523 s!2326))))

(declare-fun e!3940017 () Bool)

(assert (=> d!2040124 (= (matchZipper!2393 lt!2392043 s!2326) e!3940017)))

(declare-fun b!6502336 () Bool)

(assert (=> b!6502336 (= e!3940017 (nullableZipper!2135 lt!2392043))))

(declare-fun b!6502337 () Bool)

(assert (=> b!6502337 (= e!3940017 (matchZipper!2393 (derivationStepZipper!2347 lt!2392043 (head!13231 s!2326)) (tail!12316 s!2326)))))

(assert (= (and d!2040124 c!1192265) b!6502336))

(assert (= (and d!2040124 (not c!1192265)) b!6502337))

(assert (=> d!2040124 m!7289730))

(declare-fun m!7289812 () Bool)

(assert (=> b!6502336 m!7289812))

(assert (=> b!6502337 m!7289734))

(assert (=> b!6502337 m!7289734))

(declare-fun m!7289814 () Bool)

(assert (=> b!6502337 m!7289814))

(assert (=> b!6502337 m!7289738))

(assert (=> b!6502337 m!7289814))

(assert (=> b!6502337 m!7289738))

(declare-fun m!7289816 () Bool)

(assert (=> b!6502337 m!7289816))

(assert (=> b!6502061 d!2040124))

(assert (=> b!6502081 d!2040088))

(declare-fun d!2040126 () Bool)

(assert (=> d!2040126 (= (isEmpty!37522 (t!379077 zl!343)) ((_ is Nil!65319) (t!379077 zl!343)))))

(assert (=> b!6502072 d!2040126))

(declare-fun d!2040128 () Bool)

(assert (=> d!2040128 (= (flatMap!1886 lt!2392050 lambda!360402) (choose!48272 lt!2392050 lambda!360402))))

(declare-fun bs!1651517 () Bool)

(assert (= bs!1651517 d!2040128))

(declare-fun m!7289818 () Bool)

(assert (=> bs!1651517 m!7289818))

(assert (=> b!6502053 d!2040128))

(declare-fun b!6502338 () Bool)

(declare-fun e!3940019 () (InoxSet Context!11530))

(declare-fun e!3940018 () (InoxSet Context!11530))

(assert (=> b!6502338 (= e!3940019 e!3940018)))

(declare-fun c!1192266 () Bool)

(assert (=> b!6502338 (= c!1192266 ((_ is Cons!65318) (exprs!6265 lt!2392056)))))

(declare-fun b!6502339 () Bool)

(assert (=> b!6502339 (= e!3940018 ((as const (Array Context!11530 Bool)) false))))

(declare-fun d!2040130 () Bool)

(declare-fun c!1192267 () Bool)

(declare-fun e!3940020 () Bool)

(assert (=> d!2040130 (= c!1192267 e!3940020)))

(declare-fun res!2670381 () Bool)

(assert (=> d!2040130 (=> (not res!2670381) (not e!3940020))))

(assert (=> d!2040130 (= res!2670381 ((_ is Cons!65318) (exprs!6265 lt!2392056)))))

(assert (=> d!2040130 (= (derivationStepZipperUp!1555 lt!2392056 (h!71768 s!2326)) e!3940019)))

(declare-fun bm!563418 () Bool)

(declare-fun call!563423 () (InoxSet Context!11530))

(assert (=> bm!563418 (= call!563423 (derivationStepZipperDown!1629 (h!71766 (exprs!6265 lt!2392056)) (Context!11531 (t!379076 (exprs!6265 lt!2392056))) (h!71768 s!2326)))))

(declare-fun b!6502340 () Bool)

(assert (=> b!6502340 (= e!3940018 call!563423)))

(declare-fun b!6502341 () Bool)

(assert (=> b!6502341 (= e!3940020 (nullable!6374 (h!71766 (exprs!6265 lt!2392056))))))

(declare-fun b!6502342 () Bool)

(assert (=> b!6502342 (= e!3940019 ((_ map or) call!563423 (derivationStepZipperUp!1555 (Context!11531 (t!379076 (exprs!6265 lt!2392056))) (h!71768 s!2326))))))

(assert (= (and d!2040130 res!2670381) b!6502341))

(assert (= (and d!2040130 c!1192267) b!6502342))

(assert (= (and d!2040130 (not c!1192267)) b!6502338))

(assert (= (and b!6502338 c!1192266) b!6502340))

(assert (= (and b!6502338 (not c!1192266)) b!6502339))

(assert (= (or b!6502342 b!6502340) bm!563418))

(declare-fun m!7289822 () Bool)

(assert (=> bm!563418 m!7289822))

(declare-fun m!7289824 () Bool)

(assert (=> b!6502341 m!7289824))

(declare-fun m!7289826 () Bool)

(assert (=> b!6502342 m!7289826))

(assert (=> b!6502053 d!2040130))

(declare-fun d!2040134 () Bool)

(assert (=> d!2040134 (= (flatMap!1886 lt!2392021 lambda!360402) (choose!48272 lt!2392021 lambda!360402))))

(declare-fun bs!1651519 () Bool)

(assert (= bs!1651519 d!2040134))

(declare-fun m!7289828 () Bool)

(assert (=> bs!1651519 m!7289828))

(assert (=> b!6502053 d!2040134))

(declare-fun d!2040136 () Bool)

(declare-fun lt!2392091 () Regex!16381)

(assert (=> d!2040136 (validRegex!8117 lt!2392091)))

(assert (=> d!2040136 (= lt!2392091 (generalisedUnion!2225 (unfocusZipperList!1802 (Cons!65319 lt!2392028 Nil!65319))))))

(assert (=> d!2040136 (= (unfocusZipper!2123 (Cons!65319 lt!2392028 Nil!65319)) lt!2392091)))

(declare-fun bs!1651520 () Bool)

(assert (= bs!1651520 d!2040136))

(declare-fun m!7289830 () Bool)

(assert (=> bs!1651520 m!7289830))

(declare-fun m!7289832 () Bool)

(assert (=> bs!1651520 m!7289832))

(assert (=> bs!1651520 m!7289832))

(declare-fun m!7289834 () Bool)

(assert (=> bs!1651520 m!7289834))

(assert (=> b!6502053 d!2040136))

(declare-fun d!2040138 () Bool)

(assert (=> d!2040138 (= (flatMap!1886 lt!2392050 lambda!360402) (dynLambda!25946 lambda!360402 lt!2392028))))

(declare-fun lt!2392092 () Unit!158859)

(assert (=> d!2040138 (= lt!2392092 (choose!48273 lt!2392050 lt!2392028 lambda!360402))))

(assert (=> d!2040138 (= lt!2392050 (store ((as const (Array Context!11530 Bool)) false) lt!2392028 true))))

(assert (=> d!2040138 (= (lemmaFlatMapOnSingletonSet!1412 lt!2392050 lt!2392028 lambda!360402) lt!2392092)))

(declare-fun b_lambda!246141 () Bool)

(assert (=> (not b_lambda!246141) (not d!2040138)))

(declare-fun bs!1651521 () Bool)

(assert (= bs!1651521 d!2040138))

(assert (=> bs!1651521 m!7289624))

(declare-fun m!7289836 () Bool)

(assert (=> bs!1651521 m!7289836))

(declare-fun m!7289838 () Bool)

(assert (=> bs!1651521 m!7289838))

(assert (=> bs!1651521 m!7289620))

(assert (=> b!6502053 d!2040138))

(declare-fun b!6502343 () Bool)

(declare-fun e!3940022 () (InoxSet Context!11530))

(declare-fun e!3940021 () (InoxSet Context!11530))

(assert (=> b!6502343 (= e!3940022 e!3940021)))

(declare-fun c!1192268 () Bool)

(assert (=> b!6502343 (= c!1192268 ((_ is Cons!65318) (exprs!6265 lt!2392028)))))

(declare-fun b!6502344 () Bool)

(assert (=> b!6502344 (= e!3940021 ((as const (Array Context!11530 Bool)) false))))

(declare-fun d!2040140 () Bool)

(declare-fun c!1192269 () Bool)

(declare-fun e!3940023 () Bool)

(assert (=> d!2040140 (= c!1192269 e!3940023)))

(declare-fun res!2670382 () Bool)

(assert (=> d!2040140 (=> (not res!2670382) (not e!3940023))))

(assert (=> d!2040140 (= res!2670382 ((_ is Cons!65318) (exprs!6265 lt!2392028)))))

(assert (=> d!2040140 (= (derivationStepZipperUp!1555 lt!2392028 (h!71768 s!2326)) e!3940022)))

(declare-fun bm!563419 () Bool)

(declare-fun call!563424 () (InoxSet Context!11530))

(assert (=> bm!563419 (= call!563424 (derivationStepZipperDown!1629 (h!71766 (exprs!6265 lt!2392028)) (Context!11531 (t!379076 (exprs!6265 lt!2392028))) (h!71768 s!2326)))))

(declare-fun b!6502345 () Bool)

(assert (=> b!6502345 (= e!3940021 call!563424)))

(declare-fun b!6502346 () Bool)

(assert (=> b!6502346 (= e!3940023 (nullable!6374 (h!71766 (exprs!6265 lt!2392028))))))

(declare-fun b!6502347 () Bool)

(assert (=> b!6502347 (= e!3940022 ((_ map or) call!563424 (derivationStepZipperUp!1555 (Context!11531 (t!379076 (exprs!6265 lt!2392028))) (h!71768 s!2326))))))

(assert (= (and d!2040140 res!2670382) b!6502346))

(assert (= (and d!2040140 c!1192269) b!6502347))

(assert (= (and d!2040140 (not c!1192269)) b!6502343))

(assert (= (and b!6502343 c!1192268) b!6502345))

(assert (= (and b!6502343 (not c!1192268)) b!6502344))

(assert (= (or b!6502347 b!6502345) bm!563419))

(declare-fun m!7289840 () Bool)

(assert (=> bm!563419 m!7289840))

(declare-fun m!7289842 () Bool)

(assert (=> b!6502346 m!7289842))

(declare-fun m!7289844 () Bool)

(assert (=> b!6502347 m!7289844))

(assert (=> b!6502053 d!2040140))

(declare-fun d!2040142 () Bool)

(assert (=> d!2040142 (= (flatMap!1886 lt!2392021 lambda!360402) (dynLambda!25946 lambda!360402 lt!2392056))))

(declare-fun lt!2392093 () Unit!158859)

(assert (=> d!2040142 (= lt!2392093 (choose!48273 lt!2392021 lt!2392056 lambda!360402))))

(assert (=> d!2040142 (= lt!2392021 (store ((as const (Array Context!11530 Bool)) false) lt!2392056 true))))

(assert (=> d!2040142 (= (lemmaFlatMapOnSingletonSet!1412 lt!2392021 lt!2392056 lambda!360402) lt!2392093)))

(declare-fun b_lambda!246143 () Bool)

(assert (=> (not b_lambda!246143) (not d!2040142)))

(declare-fun bs!1651522 () Bool)

(assert (= bs!1651522 d!2040142))

(assert (=> bs!1651522 m!7289628))

(declare-fun m!7289846 () Bool)

(assert (=> bs!1651522 m!7289846))

(declare-fun m!7289848 () Bool)

(assert (=> bs!1651522 m!7289848))

(assert (=> bs!1651522 m!7289626))

(assert (=> b!6502053 d!2040142))

(declare-fun d!2040144 () Bool)

(declare-fun lt!2392094 () Regex!16381)

(assert (=> d!2040144 (validRegex!8117 lt!2392094)))

(assert (=> d!2040144 (= lt!2392094 (generalisedUnion!2225 (unfocusZipperList!1802 (Cons!65319 lt!2392056 Nil!65319))))))

(assert (=> d!2040144 (= (unfocusZipper!2123 (Cons!65319 lt!2392056 Nil!65319)) lt!2392094)))

(declare-fun bs!1651523 () Bool)

(assert (= bs!1651523 d!2040144))

(declare-fun m!7289850 () Bool)

(assert (=> bs!1651523 m!7289850))

(declare-fun m!7289852 () Bool)

(assert (=> bs!1651523 m!7289852))

(assert (=> bs!1651523 m!7289852))

(declare-fun m!7289854 () Bool)

(assert (=> bs!1651523 m!7289854))

(assert (=> b!6502052 d!2040144))

(declare-fun b!6502397 () Bool)

(declare-fun c!1192289 () Bool)

(declare-fun e!3940059 () Bool)

(assert (=> b!6502397 (= c!1192289 e!3940059)))

(declare-fun res!2670400 () Bool)

(assert (=> b!6502397 (=> (not res!2670400) (not e!3940059))))

(assert (=> b!6502397 (= res!2670400 ((_ is Concat!25226) (reg!16710 (regOne!33274 r!7292))))))

(declare-fun e!3940062 () (InoxSet Context!11530))

(declare-fun e!3940061 () (InoxSet Context!11530))

(assert (=> b!6502397 (= e!3940062 e!3940061)))

(declare-fun b!6502398 () Bool)

(declare-fun call!563448 () (InoxSet Context!11530))

(declare-fun call!563450 () (InoxSet Context!11530))

(assert (=> b!6502398 (= e!3940062 ((_ map or) call!563448 call!563450))))

(declare-fun b!6502399 () Bool)

(assert (=> b!6502399 (= e!3940059 (nullable!6374 (regOne!33274 (reg!16710 (regOne!33274 r!7292)))))))

(declare-fun b!6502400 () Bool)

(declare-fun e!3940060 () (InoxSet Context!11530))

(assert (=> b!6502400 (= e!3940060 ((as const (Array Context!11530 Bool)) false))))

(declare-fun c!1192288 () Bool)

(declare-fun c!1192287 () Bool)

(declare-fun call!563451 () List!65442)

(declare-fun bm!563441 () Bool)

(assert (=> bm!563441 (= call!563450 (derivationStepZipperDown!1629 (ite c!1192287 (regTwo!33275 (reg!16710 (regOne!33274 r!7292))) (ite c!1192289 (regTwo!33274 (reg!16710 (regOne!33274 r!7292))) (ite c!1192288 (regOne!33274 (reg!16710 (regOne!33274 r!7292))) (reg!16710 (reg!16710 (regOne!33274 r!7292)))))) (ite (or c!1192287 c!1192289) lt!2392056 (Context!11531 call!563451)) (h!71768 s!2326)))))

(declare-fun bm!563442 () Bool)

(declare-fun call!563447 () List!65442)

(assert (=> bm!563442 (= call!563451 call!563447)))

(declare-fun d!2040146 () Bool)

(declare-fun c!1192290 () Bool)

(assert (=> d!2040146 (= c!1192290 (and ((_ is ElementMatch!16381) (reg!16710 (regOne!33274 r!7292))) (= (c!1192193 (reg!16710 (regOne!33274 r!7292))) (h!71768 s!2326))))))

(declare-fun e!3940058 () (InoxSet Context!11530))

(assert (=> d!2040146 (= (derivationStepZipperDown!1629 (reg!16710 (regOne!33274 r!7292)) lt!2392056 (h!71768 s!2326)) e!3940058)))

(declare-fun b!6502401 () Bool)

(declare-fun call!563449 () (InoxSet Context!11530))

(assert (=> b!6502401 (= e!3940060 call!563449)))

(declare-fun b!6502402 () Bool)

(declare-fun e!3940057 () (InoxSet Context!11530))

(assert (=> b!6502402 (= e!3940057 call!563449)))

(declare-fun bm!563443 () Bool)

(declare-fun call!563446 () (InoxSet Context!11530))

(assert (=> bm!563443 (= call!563446 call!563450)))

(declare-fun b!6502403 () Bool)

(assert (=> b!6502403 (= e!3940058 (store ((as const (Array Context!11530 Bool)) false) lt!2392056 true))))

(declare-fun bm!563444 () Bool)

(assert (=> bm!563444 (= call!563448 (derivationStepZipperDown!1629 (ite c!1192287 (regOne!33275 (reg!16710 (regOne!33274 r!7292))) (regOne!33274 (reg!16710 (regOne!33274 r!7292)))) (ite c!1192287 lt!2392056 (Context!11531 call!563447)) (h!71768 s!2326)))))

(declare-fun b!6502404 () Bool)

(assert (=> b!6502404 (= e!3940058 e!3940062)))

(assert (=> b!6502404 (= c!1192287 ((_ is Union!16381) (reg!16710 (regOne!33274 r!7292))))))

(declare-fun b!6502405 () Bool)

(assert (=> b!6502405 (= e!3940061 ((_ map or) call!563448 call!563446))))

(declare-fun b!6502406 () Bool)

(assert (=> b!6502406 (= e!3940061 e!3940057)))

(assert (=> b!6502406 (= c!1192288 ((_ is Concat!25226) (reg!16710 (regOne!33274 r!7292))))))

(declare-fun bm!563445 () Bool)

(declare-fun $colon$colon!2231 (List!65442 Regex!16381) List!65442)

(assert (=> bm!563445 (= call!563447 ($colon$colon!2231 (exprs!6265 lt!2392056) (ite (or c!1192289 c!1192288) (regTwo!33274 (reg!16710 (regOne!33274 r!7292))) (reg!16710 (regOne!33274 r!7292)))))))

(declare-fun bm!563446 () Bool)

(assert (=> bm!563446 (= call!563449 call!563446)))

(declare-fun b!6502407 () Bool)

(declare-fun c!1192286 () Bool)

(assert (=> b!6502407 (= c!1192286 ((_ is Star!16381) (reg!16710 (regOne!33274 r!7292))))))

(assert (=> b!6502407 (= e!3940057 e!3940060)))

(assert (= (and d!2040146 c!1192290) b!6502403))

(assert (= (and d!2040146 (not c!1192290)) b!6502404))

(assert (= (and b!6502404 c!1192287) b!6502398))

(assert (= (and b!6502404 (not c!1192287)) b!6502397))

(assert (= (and b!6502397 res!2670400) b!6502399))

(assert (= (and b!6502397 c!1192289) b!6502405))

(assert (= (and b!6502397 (not c!1192289)) b!6502406))

(assert (= (and b!6502406 c!1192288) b!6502402))

(assert (= (and b!6502406 (not c!1192288)) b!6502407))

(assert (= (and b!6502407 c!1192286) b!6502401))

(assert (= (and b!6502407 (not c!1192286)) b!6502400))

(assert (= (or b!6502402 b!6502401) bm!563442))

(assert (= (or b!6502402 b!6502401) bm!563446))

(assert (= (or b!6502405 bm!563442) bm!563445))

(assert (= (or b!6502405 bm!563446) bm!563443))

(assert (= (or b!6502398 bm!563443) bm!563441))

(assert (= (or b!6502398 b!6502405) bm!563444))

(assert (=> b!6502403 m!7289626))

(declare-fun m!7289862 () Bool)

(assert (=> bm!563444 m!7289862))

(declare-fun m!7289864 () Bool)

(assert (=> bm!563441 m!7289864))

(declare-fun m!7289866 () Bool)

(assert (=> b!6502399 m!7289866))

(declare-fun m!7289868 () Bool)

(assert (=> bm!563445 m!7289868))

(assert (=> b!6502054 d!2040146))

(declare-fun e!3940075 () Bool)

(declare-fun d!2040150 () Bool)

(assert (=> d!2040150 (= (matchZipper!2393 ((_ map or) lt!2392044 lt!2392030) (t!379078 s!2326)) e!3940075)))

(declare-fun res!2670413 () Bool)

(assert (=> d!2040150 (=> res!2670413 e!3940075)))

(assert (=> d!2040150 (= res!2670413 (matchZipper!2393 lt!2392044 (t!379078 s!2326)))))

(declare-fun lt!2392103 () Unit!158859)

(declare-fun choose!48280 ((InoxSet Context!11530) (InoxSet Context!11530) List!65444) Unit!158859)

(assert (=> d!2040150 (= lt!2392103 (choose!48280 lt!2392044 lt!2392030 (t!379078 s!2326)))))

(assert (=> d!2040150 (= (lemmaZipperConcatMatchesSameAsBothZippers!1212 lt!2392044 lt!2392030 (t!379078 s!2326)) lt!2392103)))

(declare-fun b!6502428 () Bool)

(assert (=> b!6502428 (= e!3940075 (matchZipper!2393 lt!2392030 (t!379078 s!2326)))))

(assert (= (and d!2040150 (not res!2670413)) b!6502428))

(assert (=> d!2040150 m!7289548))

(assert (=> d!2040150 m!7289546))

(declare-fun m!7289870 () Bool)

(assert (=> d!2040150 m!7289870))

(assert (=> b!6502428 m!7289610))

(assert (=> b!6502073 d!2040150))

(assert (=> b!6502073 d!2040080))

(declare-fun d!2040152 () Bool)

(declare-fun c!1192295 () Bool)

(assert (=> d!2040152 (= c!1192295 (isEmpty!37523 (t!379078 s!2326)))))

(declare-fun e!3940076 () Bool)

(assert (=> d!2040152 (= (matchZipper!2393 ((_ map or) lt!2392044 lt!2392030) (t!379078 s!2326)) e!3940076)))

(declare-fun b!6502429 () Bool)

(assert (=> b!6502429 (= e!3940076 (nullableZipper!2135 ((_ map or) lt!2392044 lt!2392030)))))

(declare-fun b!6502430 () Bool)

(assert (=> b!6502430 (= e!3940076 (matchZipper!2393 (derivationStepZipper!2347 ((_ map or) lt!2392044 lt!2392030) (head!13231 (t!379078 s!2326))) (tail!12316 (t!379078 s!2326))))))

(assert (= (and d!2040152 c!1192295) b!6502429))

(assert (= (and d!2040152 (not c!1192295)) b!6502430))

(assert (=> d!2040152 m!7289670))

(declare-fun m!7289872 () Bool)

(assert (=> b!6502429 m!7289872))

(assert (=> b!6502430 m!7289674))

(assert (=> b!6502430 m!7289674))

(declare-fun m!7289874 () Bool)

(assert (=> b!6502430 m!7289874))

(assert (=> b!6502430 m!7289678))

(assert (=> b!6502430 m!7289874))

(assert (=> b!6502430 m!7289678))

(declare-fun m!7289876 () Bool)

(assert (=> b!6502430 m!7289876))

(assert (=> b!6502073 d!2040152))

(declare-fun bs!1651525 () Bool)

(declare-fun d!2040154 () Bool)

(assert (= bs!1651525 (and d!2040154 b!6502077)))

(declare-fun lambda!360430 () Int)

(assert (=> bs!1651525 (= lambda!360430 lambda!360404)))

(declare-fun bs!1651526 () Bool)

(assert (= bs!1651526 (and d!2040154 d!2040086)))

(assert (=> bs!1651526 (= lambda!360430 lambda!360410)))

(declare-fun bs!1651527 () Bool)

(assert (= bs!1651527 (and d!2040154 d!2040094)))

(assert (=> bs!1651527 (= lambda!360430 lambda!360411)))

(declare-fun bs!1651528 () Bool)

(assert (= bs!1651528 (and d!2040154 d!2040120)))

(assert (=> bs!1651528 (= lambda!360430 lambda!360427)))

(declare-fun b!6502460 () Bool)

(declare-fun e!3940094 () Bool)

(declare-fun lt!2392111 () Regex!16381)

(declare-fun head!13234 (List!65442) Regex!16381)

(assert (=> b!6502460 (= e!3940094 (= lt!2392111 (head!13234 (unfocusZipperList!1802 zl!343))))))

(declare-fun b!6502461 () Bool)

(declare-fun e!3940098 () Regex!16381)

(assert (=> b!6502461 (= e!3940098 (h!71766 (unfocusZipperList!1802 zl!343)))))

(declare-fun b!6502462 () Bool)

(declare-fun e!3940095 () Bool)

(declare-fun isEmptyLang!1778 (Regex!16381) Bool)

(assert (=> b!6502462 (= e!3940095 (isEmptyLang!1778 lt!2392111))))

(declare-fun e!3940097 () Bool)

(assert (=> d!2040154 e!3940097))

(declare-fun res!2670424 () Bool)

(assert (=> d!2040154 (=> (not res!2670424) (not e!3940097))))

(assert (=> d!2040154 (= res!2670424 (validRegex!8117 lt!2392111))))

(assert (=> d!2040154 (= lt!2392111 e!3940098)))

(declare-fun c!1192306 () Bool)

(declare-fun e!3940099 () Bool)

(assert (=> d!2040154 (= c!1192306 e!3940099)))

(declare-fun res!2670423 () Bool)

(assert (=> d!2040154 (=> (not res!2670423) (not e!3940099))))

(assert (=> d!2040154 (= res!2670423 ((_ is Cons!65318) (unfocusZipperList!1802 zl!343)))))

(assert (=> d!2040154 (forall!15561 (unfocusZipperList!1802 zl!343) lambda!360430)))

(assert (=> d!2040154 (= (generalisedUnion!2225 (unfocusZipperList!1802 zl!343)) lt!2392111)))

(declare-fun b!6502463 () Bool)

(declare-fun e!3940096 () Regex!16381)

(assert (=> b!6502463 (= e!3940098 e!3940096)))

(declare-fun c!1192307 () Bool)

(assert (=> b!6502463 (= c!1192307 ((_ is Cons!65318) (unfocusZipperList!1802 zl!343)))))

(declare-fun b!6502464 () Bool)

(assert (=> b!6502464 (= e!3940095 e!3940094)))

(declare-fun c!1192309 () Bool)

(declare-fun tail!12319 (List!65442) List!65442)

(assert (=> b!6502464 (= c!1192309 (isEmpty!37521 (tail!12319 (unfocusZipperList!1802 zl!343))))))

(declare-fun b!6502465 () Bool)

(assert (=> b!6502465 (= e!3940097 e!3940095)))

(declare-fun c!1192308 () Bool)

(assert (=> b!6502465 (= c!1192308 (isEmpty!37521 (unfocusZipperList!1802 zl!343)))))

(declare-fun b!6502466 () Bool)

(assert (=> b!6502466 (= e!3940096 EmptyLang!16381)))

(declare-fun b!6502467 () Bool)

(declare-fun isUnion!1208 (Regex!16381) Bool)

(assert (=> b!6502467 (= e!3940094 (isUnion!1208 lt!2392111))))

(declare-fun b!6502468 () Bool)

(assert (=> b!6502468 (= e!3940099 (isEmpty!37521 (t!379076 (unfocusZipperList!1802 zl!343))))))

(declare-fun b!6502469 () Bool)

(assert (=> b!6502469 (= e!3940096 (Union!16381 (h!71766 (unfocusZipperList!1802 zl!343)) (generalisedUnion!2225 (t!379076 (unfocusZipperList!1802 zl!343)))))))

(assert (= (and d!2040154 res!2670423) b!6502468))

(assert (= (and d!2040154 c!1192306) b!6502461))

(assert (= (and d!2040154 (not c!1192306)) b!6502463))

(assert (= (and b!6502463 c!1192307) b!6502469))

(assert (= (and b!6502463 (not c!1192307)) b!6502466))

(assert (= (and d!2040154 res!2670424) b!6502465))

(assert (= (and b!6502465 c!1192308) b!6502462))

(assert (= (and b!6502465 (not c!1192308)) b!6502464))

(assert (= (and b!6502464 c!1192309) b!6502460))

(assert (= (and b!6502464 (not c!1192309)) b!6502467))

(declare-fun m!7289904 () Bool)

(assert (=> b!6502467 m!7289904))

(assert (=> b!6502460 m!7289580))

(declare-fun m!7289906 () Bool)

(assert (=> b!6502460 m!7289906))

(declare-fun m!7289908 () Bool)

(assert (=> b!6502462 m!7289908))

(declare-fun m!7289910 () Bool)

(assert (=> b!6502468 m!7289910))

(assert (=> b!6502464 m!7289580))

(declare-fun m!7289912 () Bool)

(assert (=> b!6502464 m!7289912))

(assert (=> b!6502464 m!7289912))

(declare-fun m!7289914 () Bool)

(assert (=> b!6502464 m!7289914))

(declare-fun m!7289916 () Bool)

(assert (=> b!6502469 m!7289916))

(assert (=> b!6502465 m!7289580))

(declare-fun m!7289918 () Bool)

(assert (=> b!6502465 m!7289918))

(declare-fun m!7289920 () Bool)

(assert (=> d!2040154 m!7289920))

(assert (=> d!2040154 m!7289580))

(declare-fun m!7289922 () Bool)

(assert (=> d!2040154 m!7289922))

(assert (=> b!6502075 d!2040154))

(declare-fun bs!1651534 () Bool)

(declare-fun d!2040160 () Bool)

(assert (= bs!1651534 (and d!2040160 d!2040154)))

(declare-fun lambda!360436 () Int)

(assert (=> bs!1651534 (= lambda!360436 lambda!360430)))

(declare-fun bs!1651535 () Bool)

(assert (= bs!1651535 (and d!2040160 d!2040094)))

(assert (=> bs!1651535 (= lambda!360436 lambda!360411)))

(declare-fun bs!1651536 () Bool)

(assert (= bs!1651536 (and d!2040160 b!6502077)))

(assert (=> bs!1651536 (= lambda!360436 lambda!360404)))

(declare-fun bs!1651537 () Bool)

(assert (= bs!1651537 (and d!2040160 d!2040086)))

(assert (=> bs!1651537 (= lambda!360436 lambda!360410)))

(declare-fun bs!1651538 () Bool)

(assert (= bs!1651538 (and d!2040160 d!2040120)))

(assert (=> bs!1651538 (= lambda!360436 lambda!360427)))

(declare-fun lt!2392115 () List!65442)

(assert (=> d!2040160 (forall!15561 lt!2392115 lambda!360436)))

(declare-fun e!3940104 () List!65442)

(assert (=> d!2040160 (= lt!2392115 e!3940104)))

(declare-fun c!1192312 () Bool)

(assert (=> d!2040160 (= c!1192312 ((_ is Cons!65319) zl!343))))

(assert (=> d!2040160 (= (unfocusZipperList!1802 zl!343) lt!2392115)))

(declare-fun b!6502478 () Bool)

(assert (=> b!6502478 (= e!3940104 (Cons!65318 (generalisedConcat!1978 (exprs!6265 (h!71767 zl!343))) (unfocusZipperList!1802 (t!379077 zl!343))))))

(declare-fun b!6502479 () Bool)

(assert (=> b!6502479 (= e!3940104 Nil!65318)))

(assert (= (and d!2040160 c!1192312) b!6502478))

(assert (= (and d!2040160 (not c!1192312)) b!6502479))

(declare-fun m!7289930 () Bool)

(assert (=> d!2040160 m!7289930))

(assert (=> b!6502478 m!7289536))

(declare-fun m!7289932 () Bool)

(assert (=> b!6502478 m!7289932))

(assert (=> b!6502075 d!2040160))

(declare-fun b!6502480 () Bool)

(declare-fun res!2670431 () Bool)

(declare-fun e!3940106 () Bool)

(assert (=> b!6502480 (=> res!2670431 e!3940106)))

(assert (=> b!6502480 (= res!2670431 (not ((_ is ElementMatch!16381) lt!2392031)))))

(declare-fun e!3940111 () Bool)

(assert (=> b!6502480 (= e!3940111 e!3940106)))

(declare-fun b!6502481 () Bool)

(declare-fun res!2670435 () Bool)

(assert (=> b!6502481 (=> res!2670435 e!3940106)))

(declare-fun e!3940105 () Bool)

(assert (=> b!6502481 (= res!2670435 e!3940105)))

(declare-fun res!2670436 () Bool)

(assert (=> b!6502481 (=> (not res!2670436) (not e!3940105))))

(declare-fun lt!2392116 () Bool)

(assert (=> b!6502481 (= res!2670436 lt!2392116)))

(declare-fun b!6502482 () Bool)

(declare-fun res!2670434 () Bool)

(declare-fun e!3940108 () Bool)

(assert (=> b!6502482 (=> res!2670434 e!3940108)))

(assert (=> b!6502482 (= res!2670434 (not (isEmpty!37523 (tail!12316 s!2326))))))

(declare-fun b!6502483 () Bool)

(declare-fun e!3940110 () Bool)

(declare-fun call!563452 () Bool)

(assert (=> b!6502483 (= e!3940110 (= lt!2392116 call!563452))))

(declare-fun b!6502484 () Bool)

(declare-fun e!3940107 () Bool)

(assert (=> b!6502484 (= e!3940107 e!3940108)))

(declare-fun res!2670430 () Bool)

(assert (=> b!6502484 (=> res!2670430 e!3940108)))

(assert (=> b!6502484 (= res!2670430 call!563452)))

(declare-fun d!2040166 () Bool)

(assert (=> d!2040166 e!3940110))

(declare-fun c!1192314 () Bool)

(assert (=> d!2040166 (= c!1192314 ((_ is EmptyExpr!16381) lt!2392031))))

(declare-fun e!3940109 () Bool)

(assert (=> d!2040166 (= lt!2392116 e!3940109)))

(declare-fun c!1192315 () Bool)

(assert (=> d!2040166 (= c!1192315 (isEmpty!37523 s!2326))))

(assert (=> d!2040166 (validRegex!8117 lt!2392031)))

(assert (=> d!2040166 (= (matchR!8564 lt!2392031 s!2326) lt!2392116)))

(declare-fun b!6502485 () Bool)

(assert (=> b!6502485 (= e!3940109 (nullable!6374 lt!2392031))))

(declare-fun b!6502486 () Bool)

(declare-fun res!2670429 () Bool)

(assert (=> b!6502486 (=> (not res!2670429) (not e!3940105))))

(assert (=> b!6502486 (= res!2670429 (isEmpty!37523 (tail!12316 s!2326)))))

(declare-fun b!6502487 () Bool)

(assert (=> b!6502487 (= e!3940105 (= (head!13231 s!2326) (c!1192193 lt!2392031)))))

(declare-fun b!6502488 () Bool)

(assert (=> b!6502488 (= e!3940106 e!3940107)))

(declare-fun res!2670433 () Bool)

(assert (=> b!6502488 (=> (not res!2670433) (not e!3940107))))

(assert (=> b!6502488 (= res!2670433 (not lt!2392116))))

(declare-fun b!6502489 () Bool)

(assert (=> b!6502489 (= e!3940108 (not (= (head!13231 s!2326) (c!1192193 lt!2392031))))))

(declare-fun b!6502490 () Bool)

(assert (=> b!6502490 (= e!3940111 (not lt!2392116))))

(declare-fun b!6502491 () Bool)

(assert (=> b!6502491 (= e!3940109 (matchR!8564 (derivativeStep!5075 lt!2392031 (head!13231 s!2326)) (tail!12316 s!2326)))))

(declare-fun bm!563447 () Bool)

(assert (=> bm!563447 (= call!563452 (isEmpty!37523 s!2326))))

(declare-fun b!6502492 () Bool)

(declare-fun res!2670432 () Bool)

(assert (=> b!6502492 (=> (not res!2670432) (not e!3940105))))

(assert (=> b!6502492 (= res!2670432 (not call!563452))))

(declare-fun b!6502493 () Bool)

(assert (=> b!6502493 (= e!3940110 e!3940111)))

(declare-fun c!1192313 () Bool)

(assert (=> b!6502493 (= c!1192313 ((_ is EmptyLang!16381) lt!2392031))))

(assert (= (and d!2040166 c!1192315) b!6502485))

(assert (= (and d!2040166 (not c!1192315)) b!6502491))

(assert (= (and d!2040166 c!1192314) b!6502483))

(assert (= (and d!2040166 (not c!1192314)) b!6502493))

(assert (= (and b!6502493 c!1192313) b!6502490))

(assert (= (and b!6502493 (not c!1192313)) b!6502480))

(assert (= (and b!6502480 (not res!2670431)) b!6502481))

(assert (= (and b!6502481 res!2670436) b!6502492))

(assert (= (and b!6502492 res!2670432) b!6502486))

(assert (= (and b!6502486 res!2670429) b!6502487))

(assert (= (and b!6502481 (not res!2670435)) b!6502488))

(assert (= (and b!6502488 res!2670433) b!6502484))

(assert (= (and b!6502484 (not res!2670430)) b!6502482))

(assert (= (and b!6502482 (not res!2670434)) b!6502489))

(assert (= (or b!6502483 b!6502484 b!6502492) bm!563447))

(assert (=> b!6502482 m!7289738))

(assert (=> b!6502482 m!7289738))

(assert (=> b!6502482 m!7289788))

(assert (=> d!2040166 m!7289730))

(declare-fun m!7289934 () Bool)

(assert (=> d!2040166 m!7289934))

(assert (=> bm!563447 m!7289730))

(declare-fun m!7289936 () Bool)

(assert (=> b!6502485 m!7289936))

(assert (=> b!6502487 m!7289734))

(assert (=> b!6502489 m!7289734))

(assert (=> b!6502491 m!7289734))

(assert (=> b!6502491 m!7289734))

(declare-fun m!7289938 () Bool)

(assert (=> b!6502491 m!7289938))

(assert (=> b!6502491 m!7289738))

(assert (=> b!6502491 m!7289938))

(assert (=> b!6502491 m!7289738))

(declare-fun m!7289940 () Bool)

(assert (=> b!6502491 m!7289940))

(assert (=> b!6502486 m!7289738))

(assert (=> b!6502486 m!7289738))

(assert (=> b!6502486 m!7289788))

(assert (=> b!6502074 d!2040166))

(declare-fun bs!1651539 () Bool)

(declare-fun b!6502502 () Bool)

(assert (= bs!1651539 (and b!6502502 b!6502047)))

(declare-fun lambda!360437 () Int)

(assert (=> bs!1651539 (not (= lambda!360437 lambda!360400))))

(assert (=> bs!1651539 (not (= lambda!360437 lambda!360401))))

(declare-fun bs!1651540 () Bool)

(assert (= bs!1651540 (and b!6502502 b!6502246)))

(assert (=> bs!1651540 (= (and (= (reg!16710 lt!2392031) (reg!16710 r!7292)) (= lt!2392031 r!7292)) (= lambda!360437 lambda!360419))))

(declare-fun bs!1651541 () Bool)

(assert (= bs!1651541 (and b!6502502 b!6502244)))

(assert (=> bs!1651541 (not (= lambda!360437 lambda!360420))))

(assert (=> b!6502502 true))

(assert (=> b!6502502 true))

(declare-fun bs!1651542 () Bool)

(declare-fun b!6502500 () Bool)

(assert (= bs!1651542 (and b!6502500 b!6502246)))

(declare-fun lambda!360438 () Int)

(assert (=> bs!1651542 (not (= lambda!360438 lambda!360419))))

(declare-fun bs!1651543 () Bool)

(assert (= bs!1651543 (and b!6502500 b!6502047)))

(assert (=> bs!1651543 (= (and (= (regOne!33274 lt!2392031) (regOne!33274 r!7292)) (= (regTwo!33274 lt!2392031) (regTwo!33274 r!7292))) (= lambda!360438 lambda!360401))))

(declare-fun bs!1651544 () Bool)

(assert (= bs!1651544 (and b!6502500 b!6502244)))

(assert (=> bs!1651544 (= (and (= (regOne!33274 lt!2392031) (regOne!33274 r!7292)) (= (regTwo!33274 lt!2392031) (regTwo!33274 r!7292))) (= lambda!360438 lambda!360420))))

(declare-fun bs!1651545 () Bool)

(assert (= bs!1651545 (and b!6502500 b!6502502)))

(assert (=> bs!1651545 (not (= lambda!360438 lambda!360437))))

(assert (=> bs!1651543 (not (= lambda!360438 lambda!360400))))

(assert (=> b!6502500 true))

(assert (=> b!6502500 true))

(declare-fun b!6502494 () Bool)

(declare-fun e!3940113 () Bool)

(declare-fun e!3940115 () Bool)

(assert (=> b!6502494 (= e!3940113 e!3940115)))

(declare-fun res!2670439 () Bool)

(assert (=> b!6502494 (= res!2670439 (matchRSpec!3482 (regOne!33275 lt!2392031) s!2326))))

(assert (=> b!6502494 (=> res!2670439 e!3940115)))

(declare-fun d!2040168 () Bool)

(declare-fun c!1192317 () Bool)

(assert (=> d!2040168 (= c!1192317 ((_ is EmptyExpr!16381) lt!2392031))))

(declare-fun e!3940117 () Bool)

(assert (=> d!2040168 (= (matchRSpec!3482 lt!2392031 s!2326) e!3940117)))

(declare-fun bm!563448 () Bool)

(declare-fun call!563453 () Bool)

(assert (=> bm!563448 (= call!563453 (isEmpty!37523 s!2326))))

(declare-fun b!6502495 () Bool)

(declare-fun e!3940112 () Bool)

(assert (=> b!6502495 (= e!3940117 e!3940112)))

(declare-fun res!2670437 () Bool)

(assert (=> b!6502495 (= res!2670437 (not ((_ is EmptyLang!16381) lt!2392031)))))

(assert (=> b!6502495 (=> (not res!2670437) (not e!3940112))))

(declare-fun b!6502496 () Bool)

(assert (=> b!6502496 (= e!3940115 (matchRSpec!3482 (regTwo!33275 lt!2392031) s!2326))))

(declare-fun b!6502497 () Bool)

(declare-fun e!3940116 () Bool)

(assert (=> b!6502497 (= e!3940116 (= s!2326 (Cons!65320 (c!1192193 lt!2392031) Nil!65320)))))

(declare-fun b!6502498 () Bool)

(declare-fun res!2670438 () Bool)

(declare-fun e!3940114 () Bool)

(assert (=> b!6502498 (=> res!2670438 e!3940114)))

(assert (=> b!6502498 (= res!2670438 call!563453)))

(declare-fun e!3940118 () Bool)

(assert (=> b!6502498 (= e!3940118 e!3940114)))

(declare-fun b!6502499 () Bool)

(assert (=> b!6502499 (= e!3940113 e!3940118)))

(declare-fun c!1192319 () Bool)

(assert (=> b!6502499 (= c!1192319 ((_ is Star!16381) lt!2392031))))

(declare-fun call!563454 () Bool)

(assert (=> b!6502500 (= e!3940118 call!563454)))

(declare-fun b!6502501 () Bool)

(declare-fun c!1192318 () Bool)

(assert (=> b!6502501 (= c!1192318 ((_ is Union!16381) lt!2392031))))

(assert (=> b!6502501 (= e!3940116 e!3940113)))

(assert (=> b!6502502 (= e!3940114 call!563454)))

(declare-fun b!6502503 () Bool)

(declare-fun c!1192316 () Bool)

(assert (=> b!6502503 (= c!1192316 ((_ is ElementMatch!16381) lt!2392031))))

(assert (=> b!6502503 (= e!3940112 e!3940116)))

(declare-fun bm!563449 () Bool)

(assert (=> bm!563449 (= call!563454 (Exists!3451 (ite c!1192319 lambda!360437 lambda!360438)))))

(declare-fun b!6502504 () Bool)

(assert (=> b!6502504 (= e!3940117 call!563453)))

(assert (= (and d!2040168 c!1192317) b!6502504))

(assert (= (and d!2040168 (not c!1192317)) b!6502495))

(assert (= (and b!6502495 res!2670437) b!6502503))

(assert (= (and b!6502503 c!1192316) b!6502497))

(assert (= (and b!6502503 (not c!1192316)) b!6502501))

(assert (= (and b!6502501 c!1192318) b!6502494))

(assert (= (and b!6502501 (not c!1192318)) b!6502499))

(assert (= (and b!6502494 (not res!2670439)) b!6502496))

(assert (= (and b!6502499 c!1192319) b!6502498))

(assert (= (and b!6502499 (not c!1192319)) b!6502500))

(assert (= (and b!6502498 (not res!2670438)) b!6502502))

(assert (= (or b!6502502 b!6502500) bm!563449))

(assert (= (or b!6502504 b!6502498) bm!563448))

(declare-fun m!7289942 () Bool)

(assert (=> b!6502494 m!7289942))

(assert (=> bm!563448 m!7289730))

(declare-fun m!7289944 () Bool)

(assert (=> b!6502496 m!7289944))

(declare-fun m!7289946 () Bool)

(assert (=> bm!563449 m!7289946))

(assert (=> b!6502074 d!2040168))

(declare-fun d!2040170 () Bool)

(assert (=> d!2040170 (= (matchR!8564 lt!2392031 s!2326) (matchRSpec!3482 lt!2392031 s!2326))))

(declare-fun lt!2392119 () Unit!158859)

(assert (=> d!2040170 (= lt!2392119 (choose!48278 lt!2392031 s!2326))))

(assert (=> d!2040170 (validRegex!8117 lt!2392031)))

(assert (=> d!2040170 (= (mainMatchTheorem!3482 lt!2392031 s!2326) lt!2392119)))

(declare-fun bs!1651546 () Bool)

(assert (= bs!1651546 d!2040170))

(assert (=> bs!1651546 m!7289574))

(assert (=> bs!1651546 m!7289576))

(declare-fun m!7289948 () Bool)

(assert (=> bs!1651546 m!7289948))

(assert (=> bs!1651546 m!7289934))

(assert (=> b!6502074 d!2040170))

(declare-fun d!2040172 () Bool)

(assert (=> d!2040172 (= (isEmpty!37521 (t!379076 (exprs!6265 (h!71767 zl!343)))) ((_ is Nil!65318) (t!379076 (exprs!6265 (h!71767 zl!343)))))))

(assert (=> b!6502056 d!2040172))

(declare-fun bs!1651554 () Bool)

(declare-fun d!2040174 () Bool)

(assert (= bs!1651554 (and d!2040174 d!2040154)))

(declare-fun lambda!360447 () Int)

(assert (=> bs!1651554 (= lambda!360447 lambda!360430)))

(declare-fun bs!1651555 () Bool)

(assert (= bs!1651555 (and d!2040174 d!2040094)))

(assert (=> bs!1651555 (= lambda!360447 lambda!360411)))

(declare-fun bs!1651556 () Bool)

(assert (= bs!1651556 (and d!2040174 b!6502077)))

(assert (=> bs!1651556 (= lambda!360447 lambda!360404)))

(declare-fun bs!1651557 () Bool)

(assert (= bs!1651557 (and d!2040174 d!2040086)))

(assert (=> bs!1651557 (= lambda!360447 lambda!360410)))

(declare-fun bs!1651558 () Bool)

(assert (= bs!1651558 (and d!2040174 d!2040160)))

(assert (=> bs!1651558 (= lambda!360447 lambda!360436)))

(declare-fun bs!1651559 () Bool)

(assert (= bs!1651559 (and d!2040174 d!2040120)))

(assert (=> bs!1651559 (= lambda!360447 lambda!360427)))

(declare-fun b!6502533 () Bool)

(declare-fun e!3940138 () Bool)

(assert (=> b!6502533 (= e!3940138 (isEmpty!37521 (t!379076 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun b!6502534 () Bool)

(declare-fun e!3940139 () Bool)

(declare-fun lt!2392126 () Regex!16381)

(declare-fun isEmptyExpr!1770 (Regex!16381) Bool)

(assert (=> b!6502534 (= e!3940139 (isEmptyExpr!1770 lt!2392126))))

(declare-fun b!6502535 () Bool)

(declare-fun e!3940137 () Bool)

(assert (=> b!6502535 (= e!3940137 e!3940139)))

(declare-fun c!1192331 () Bool)

(assert (=> b!6502535 (= c!1192331 (isEmpty!37521 (exprs!6265 (h!71767 zl!343))))))

(declare-fun b!6502537 () Bool)

(declare-fun e!3940140 () Regex!16381)

(assert (=> b!6502537 (= e!3940140 (h!71766 (exprs!6265 (h!71767 zl!343))))))

(declare-fun b!6502538 () Bool)

(declare-fun e!3940135 () Regex!16381)

(assert (=> b!6502538 (= e!3940140 e!3940135)))

(declare-fun c!1192329 () Bool)

(assert (=> b!6502538 (= c!1192329 ((_ is Cons!65318) (exprs!6265 (h!71767 zl!343))))))

(declare-fun b!6502539 () Bool)

(declare-fun e!3940136 () Bool)

(declare-fun isConcat!1293 (Regex!16381) Bool)

(assert (=> b!6502539 (= e!3940136 (isConcat!1293 lt!2392126))))

(declare-fun b!6502540 () Bool)

(assert (=> b!6502540 (= e!3940135 EmptyExpr!16381)))

(declare-fun b!6502541 () Bool)

(assert (=> b!6502541 (= e!3940136 (= lt!2392126 (head!13234 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun b!6502542 () Bool)

(assert (=> b!6502542 (= e!3940135 (Concat!25226 (h!71766 (exprs!6265 (h!71767 zl!343))) (generalisedConcat!1978 (t!379076 (exprs!6265 (h!71767 zl!343))))))))

(declare-fun b!6502536 () Bool)

(assert (=> b!6502536 (= e!3940139 e!3940136)))

(declare-fun c!1192330 () Bool)

(assert (=> b!6502536 (= c!1192330 (isEmpty!37521 (tail!12319 (exprs!6265 (h!71767 zl!343)))))))

(assert (=> d!2040174 e!3940137))

(declare-fun res!2670453 () Bool)

(assert (=> d!2040174 (=> (not res!2670453) (not e!3940137))))

(assert (=> d!2040174 (= res!2670453 (validRegex!8117 lt!2392126))))

(assert (=> d!2040174 (= lt!2392126 e!3940140)))

(declare-fun c!1192328 () Bool)

(assert (=> d!2040174 (= c!1192328 e!3940138)))

(declare-fun res!2670452 () Bool)

(assert (=> d!2040174 (=> (not res!2670452) (not e!3940138))))

(assert (=> d!2040174 (= res!2670452 ((_ is Cons!65318) (exprs!6265 (h!71767 zl!343))))))

(assert (=> d!2040174 (forall!15561 (exprs!6265 (h!71767 zl!343)) lambda!360447)))

(assert (=> d!2040174 (= (generalisedConcat!1978 (exprs!6265 (h!71767 zl!343))) lt!2392126)))

(assert (= (and d!2040174 res!2670452) b!6502533))

(assert (= (and d!2040174 c!1192328) b!6502537))

(assert (= (and d!2040174 (not c!1192328)) b!6502538))

(assert (= (and b!6502538 c!1192329) b!6502542))

(assert (= (and b!6502538 (not c!1192329)) b!6502540))

(assert (= (and d!2040174 res!2670453) b!6502535))

(assert (= (and b!6502535 c!1192331) b!6502534))

(assert (= (and b!6502535 (not c!1192331)) b!6502536))

(assert (= (and b!6502536 c!1192330) b!6502541))

(assert (= (and b!6502536 (not c!1192330)) b!6502539))

(declare-fun m!7289964 () Bool)

(assert (=> b!6502534 m!7289964))

(declare-fun m!7289966 () Bool)

(assert (=> d!2040174 m!7289966))

(declare-fun m!7289968 () Bool)

(assert (=> d!2040174 m!7289968))

(assert (=> b!6502533 m!7289630))

(declare-fun m!7289970 () Bool)

(assert (=> b!6502536 m!7289970))

(assert (=> b!6502536 m!7289970))

(declare-fun m!7289972 () Bool)

(assert (=> b!6502536 m!7289972))

(declare-fun m!7289974 () Bool)

(assert (=> b!6502542 m!7289974))

(declare-fun m!7289976 () Bool)

(assert (=> b!6502539 m!7289976))

(declare-fun m!7289978 () Bool)

(assert (=> b!6502535 m!7289978))

(declare-fun m!7289980 () Bool)

(assert (=> b!6502541 m!7289980))

(assert (=> b!6502067 d!2040174))

(declare-fun b!6502604 () Bool)

(declare-fun res!2670482 () Bool)

(declare-fun e!3940177 () Bool)

(assert (=> b!6502604 (=> (not res!2670482) (not e!3940177))))

(declare-fun lt!2392144 () Option!16272)

(declare-fun get!22655 (Option!16272) tuple2!66720)

(assert (=> b!6502604 (= res!2670482 (matchR!8564 (regOne!33274 r!7292) (_1!36663 (get!22655 lt!2392144))))))

(declare-fun b!6502605 () Bool)

(declare-fun lt!2392143 () Unit!158859)

(declare-fun lt!2392142 () Unit!158859)

(assert (=> b!6502605 (= lt!2392143 lt!2392142)))

(declare-fun ++!14467 (List!65444 List!65444) List!65444)

(assert (=> b!6502605 (= (++!14467 (++!14467 Nil!65320 (Cons!65320 (h!71768 s!2326) Nil!65320)) (t!379078 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2534 (List!65444 C!33032 List!65444 List!65444) Unit!158859)

(assert (=> b!6502605 (= lt!2392142 (lemmaMoveElementToOtherListKeepsConcatEq!2534 Nil!65320 (h!71768 s!2326) (t!379078 s!2326) s!2326))))

(declare-fun e!3940178 () Option!16272)

(assert (=> b!6502605 (= e!3940178 (findConcatSeparation!2686 (regOne!33274 r!7292) (regTwo!33274 r!7292) (++!14467 Nil!65320 (Cons!65320 (h!71768 s!2326) Nil!65320)) (t!379078 s!2326) s!2326))))

(declare-fun b!6502606 () Bool)

(assert (=> b!6502606 (= e!3940178 None!16271)))

(declare-fun b!6502607 () Bool)

(declare-fun e!3940179 () Bool)

(assert (=> b!6502607 (= e!3940179 (not (isDefined!12975 lt!2392144)))))

(declare-fun b!6502608 () Bool)

(declare-fun e!3940181 () Bool)

(assert (=> b!6502608 (= e!3940181 (matchR!8564 (regTwo!33274 r!7292) s!2326))))

(declare-fun b!6502609 () Bool)

(declare-fun e!3940180 () Option!16272)

(assert (=> b!6502609 (= e!3940180 (Some!16271 (tuple2!66721 Nil!65320 s!2326)))))

(declare-fun b!6502610 () Bool)

(assert (=> b!6502610 (= e!3940180 e!3940178)))

(declare-fun c!1192350 () Bool)

(assert (=> b!6502610 (= c!1192350 ((_ is Nil!65320) s!2326))))

(declare-fun b!6502611 () Bool)

(declare-fun res!2670483 () Bool)

(assert (=> b!6502611 (=> (not res!2670483) (not e!3940177))))

(assert (=> b!6502611 (= res!2670483 (matchR!8564 (regTwo!33274 r!7292) (_2!36663 (get!22655 lt!2392144))))))

(declare-fun d!2040184 () Bool)

(assert (=> d!2040184 e!3940179))

(declare-fun res!2670484 () Bool)

(assert (=> d!2040184 (=> res!2670484 e!3940179)))

(assert (=> d!2040184 (= res!2670484 e!3940177)))

(declare-fun res!2670485 () Bool)

(assert (=> d!2040184 (=> (not res!2670485) (not e!3940177))))

(assert (=> d!2040184 (= res!2670485 (isDefined!12975 lt!2392144))))

(assert (=> d!2040184 (= lt!2392144 e!3940180)))

(declare-fun c!1192349 () Bool)

(assert (=> d!2040184 (= c!1192349 e!3940181)))

(declare-fun res!2670481 () Bool)

(assert (=> d!2040184 (=> (not res!2670481) (not e!3940181))))

(assert (=> d!2040184 (= res!2670481 (matchR!8564 (regOne!33274 r!7292) Nil!65320))))

(assert (=> d!2040184 (validRegex!8117 (regOne!33274 r!7292))))

(assert (=> d!2040184 (= (findConcatSeparation!2686 (regOne!33274 r!7292) (regTwo!33274 r!7292) Nil!65320 s!2326 s!2326) lt!2392144)))

(declare-fun b!6502612 () Bool)

(assert (=> b!6502612 (= e!3940177 (= (++!14467 (_1!36663 (get!22655 lt!2392144)) (_2!36663 (get!22655 lt!2392144))) s!2326))))

(assert (= (and d!2040184 res!2670481) b!6502608))

(assert (= (and d!2040184 c!1192349) b!6502609))

(assert (= (and d!2040184 (not c!1192349)) b!6502610))

(assert (= (and b!6502610 c!1192350) b!6502606))

(assert (= (and b!6502610 (not c!1192350)) b!6502605))

(assert (= (and d!2040184 res!2670485) b!6502604))

(assert (= (and b!6502604 res!2670482) b!6502611))

(assert (= (and b!6502611 res!2670483) b!6502612))

(assert (= (and d!2040184 (not res!2670484)) b!6502607))

(declare-fun m!7290032 () Bool)

(assert (=> b!6502607 m!7290032))

(assert (=> d!2040184 m!7290032))

(declare-fun m!7290034 () Bool)

(assert (=> d!2040184 m!7290034))

(declare-fun m!7290036 () Bool)

(assert (=> d!2040184 m!7290036))

(declare-fun m!7290038 () Bool)

(assert (=> b!6502608 m!7290038))

(declare-fun m!7290040 () Bool)

(assert (=> b!6502604 m!7290040))

(declare-fun m!7290042 () Bool)

(assert (=> b!6502604 m!7290042))

(assert (=> b!6502612 m!7290040))

(declare-fun m!7290044 () Bool)

(assert (=> b!6502612 m!7290044))

(declare-fun m!7290046 () Bool)

(assert (=> b!6502605 m!7290046))

(assert (=> b!6502605 m!7290046))

(declare-fun m!7290048 () Bool)

(assert (=> b!6502605 m!7290048))

(declare-fun m!7290050 () Bool)

(assert (=> b!6502605 m!7290050))

(assert (=> b!6502605 m!7290046))

(declare-fun m!7290052 () Bool)

(assert (=> b!6502605 m!7290052))

(assert (=> b!6502611 m!7290040))

(declare-fun m!7290054 () Bool)

(assert (=> b!6502611 m!7290054))

(assert (=> b!6502047 d!2040184))

(declare-fun d!2040208 () Bool)

(declare-fun choose!48285 (Int) Bool)

(assert (=> d!2040208 (= (Exists!3451 lambda!360401) (choose!48285 lambda!360401))))

(declare-fun bs!1651577 () Bool)

(assert (= bs!1651577 d!2040208))

(declare-fun m!7290056 () Bool)

(assert (=> bs!1651577 m!7290056))

(assert (=> b!6502047 d!2040208))

(declare-fun d!2040210 () Bool)

(assert (=> d!2040210 (= (Exists!3451 lambda!360400) (choose!48285 lambda!360400))))

(declare-fun bs!1651578 () Bool)

(assert (= bs!1651578 d!2040210))

(declare-fun m!7290058 () Bool)

(assert (=> bs!1651578 m!7290058))

(assert (=> b!6502047 d!2040210))

(declare-fun bs!1651579 () Bool)

(declare-fun d!2040212 () Bool)

(assert (= bs!1651579 (and d!2040212 b!6502246)))

(declare-fun lambda!360452 () Int)

(assert (=> bs!1651579 (not (= lambda!360452 lambda!360419))))

(declare-fun bs!1651580 () Bool)

(assert (= bs!1651580 (and d!2040212 b!6502047)))

(assert (=> bs!1651580 (not (= lambda!360452 lambda!360401))))

(declare-fun bs!1651581 () Bool)

(assert (= bs!1651581 (and d!2040212 b!6502500)))

(assert (=> bs!1651581 (not (= lambda!360452 lambda!360438))))

(declare-fun bs!1651582 () Bool)

(assert (= bs!1651582 (and d!2040212 b!6502244)))

(assert (=> bs!1651582 (not (= lambda!360452 lambda!360420))))

(declare-fun bs!1651583 () Bool)

(assert (= bs!1651583 (and d!2040212 b!6502502)))

(assert (=> bs!1651583 (not (= lambda!360452 lambda!360437))))

(assert (=> bs!1651580 (= lambda!360452 lambda!360400)))

(assert (=> d!2040212 true))

(assert (=> d!2040212 true))

(assert (=> d!2040212 true))

(assert (=> d!2040212 (= (isDefined!12975 (findConcatSeparation!2686 (regOne!33274 r!7292) (regTwo!33274 r!7292) Nil!65320 s!2326 s!2326)) (Exists!3451 lambda!360452))))

(declare-fun lt!2392148 () Unit!158859)

(declare-fun choose!48287 (Regex!16381 Regex!16381 List!65444) Unit!158859)

(assert (=> d!2040212 (= lt!2392148 (choose!48287 (regOne!33274 r!7292) (regTwo!33274 r!7292) s!2326))))

(assert (=> d!2040212 (validRegex!8117 (regOne!33274 r!7292))))

(assert (=> d!2040212 (= (lemmaFindConcatSeparationEquivalentToExists!2450 (regOne!33274 r!7292) (regTwo!33274 r!7292) s!2326) lt!2392148)))

(declare-fun bs!1651584 () Bool)

(assert (= bs!1651584 d!2040212))

(assert (=> bs!1651584 m!7290036))

(declare-fun m!7290072 () Bool)

(assert (=> bs!1651584 m!7290072))

(declare-fun m!7290074 () Bool)

(assert (=> bs!1651584 m!7290074))

(assert (=> bs!1651584 m!7289586))

(assert (=> bs!1651584 m!7289588))

(assert (=> bs!1651584 m!7289586))

(assert (=> b!6502047 d!2040212))

(declare-fun bs!1651586 () Bool)

(declare-fun d!2040216 () Bool)

(assert (= bs!1651586 (and d!2040216 b!6502246)))

(declare-fun lambda!360457 () Int)

(assert (=> bs!1651586 (not (= lambda!360457 lambda!360419))))

(declare-fun bs!1651587 () Bool)

(assert (= bs!1651587 (and d!2040216 b!6502500)))

(assert (=> bs!1651587 (not (= lambda!360457 lambda!360438))))

(declare-fun bs!1651588 () Bool)

(assert (= bs!1651588 (and d!2040216 b!6502244)))

(assert (=> bs!1651588 (not (= lambda!360457 lambda!360420))))

(declare-fun bs!1651589 () Bool)

(assert (= bs!1651589 (and d!2040216 b!6502502)))

(assert (=> bs!1651589 (not (= lambda!360457 lambda!360437))))

(declare-fun bs!1651591 () Bool)

(assert (= bs!1651591 (and d!2040216 b!6502047)))

(assert (=> bs!1651591 (= lambda!360457 lambda!360400)))

(assert (=> bs!1651591 (not (= lambda!360457 lambda!360401))))

(declare-fun bs!1651593 () Bool)

(assert (= bs!1651593 (and d!2040216 d!2040212)))

(assert (=> bs!1651593 (= lambda!360457 lambda!360452)))

(assert (=> d!2040216 true))

(assert (=> d!2040216 true))

(assert (=> d!2040216 true))

(declare-fun bs!1651594 () Bool)

(assert (= bs!1651594 d!2040216))

(declare-fun lambda!360458 () Int)

(assert (=> bs!1651594 (not (= lambda!360458 lambda!360457))))

(assert (=> bs!1651586 (not (= lambda!360458 lambda!360419))))

(assert (=> bs!1651587 (= (and (= (regOne!33274 r!7292) (regOne!33274 lt!2392031)) (= (regTwo!33274 r!7292) (regTwo!33274 lt!2392031))) (= lambda!360458 lambda!360438))))

(assert (=> bs!1651588 (= lambda!360458 lambda!360420)))

(assert (=> bs!1651589 (not (= lambda!360458 lambda!360437))))

(assert (=> bs!1651591 (not (= lambda!360458 lambda!360400))))

(assert (=> bs!1651591 (= lambda!360458 lambda!360401)))

(assert (=> bs!1651593 (not (= lambda!360458 lambda!360452))))

(assert (=> d!2040216 true))

(assert (=> d!2040216 true))

(assert (=> d!2040216 true))

(assert (=> d!2040216 (= (Exists!3451 lambda!360457) (Exists!3451 lambda!360458))))

(declare-fun lt!2392151 () Unit!158859)

(declare-fun choose!48289 (Regex!16381 Regex!16381 List!65444) Unit!158859)

(assert (=> d!2040216 (= lt!2392151 (choose!48289 (regOne!33274 r!7292) (regTwo!33274 r!7292) s!2326))))

(assert (=> d!2040216 (validRegex!8117 (regOne!33274 r!7292))))

(assert (=> d!2040216 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1988 (regOne!33274 r!7292) (regTwo!33274 r!7292) s!2326) lt!2392151)))

(declare-fun m!7290138 () Bool)

(assert (=> bs!1651594 m!7290138))

(declare-fun m!7290140 () Bool)

(assert (=> bs!1651594 m!7290140))

(declare-fun m!7290142 () Bool)

(assert (=> bs!1651594 m!7290142))

(assert (=> bs!1651594 m!7290036))

(assert (=> b!6502047 d!2040216))

(declare-fun d!2040242 () Bool)

(declare-fun isEmpty!37526 (Option!16272) Bool)

(assert (=> d!2040242 (= (isDefined!12975 (findConcatSeparation!2686 (regOne!33274 r!7292) (regTwo!33274 r!7292) Nil!65320 s!2326 s!2326)) (not (isEmpty!37526 (findConcatSeparation!2686 (regOne!33274 r!7292) (regTwo!33274 r!7292) Nil!65320 s!2326 s!2326))))))

(declare-fun bs!1651595 () Bool)

(assert (= bs!1651595 d!2040242))

(assert (=> bs!1651595 m!7289586))

(declare-fun m!7290144 () Bool)

(assert (=> bs!1651595 m!7290144))

(assert (=> b!6502047 d!2040242))

(declare-fun b!6502701 () Bool)

(declare-fun c!1192388 () Bool)

(declare-fun e!3940232 () Bool)

(assert (=> b!6502701 (= c!1192388 e!3940232)))

(declare-fun res!2670506 () Bool)

(assert (=> b!6502701 (=> (not res!2670506) (not e!3940232))))

(assert (=> b!6502701 (= res!2670506 ((_ is Concat!25226) (h!71766 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun e!3940235 () (InoxSet Context!11530))

(declare-fun e!3940234 () (InoxSet Context!11530))

(assert (=> b!6502701 (= e!3940235 e!3940234)))

(declare-fun b!6502702 () Bool)

(declare-fun call!563491 () (InoxSet Context!11530))

(declare-fun call!563493 () (InoxSet Context!11530))

(assert (=> b!6502702 (= e!3940235 ((_ map or) call!563491 call!563493))))

(declare-fun b!6502703 () Bool)

(assert (=> b!6502703 (= e!3940232 (nullable!6374 (regOne!33274 (h!71766 (exprs!6265 (h!71767 zl!343))))))))

(declare-fun b!6502704 () Bool)

(declare-fun e!3940233 () (InoxSet Context!11530))

(assert (=> b!6502704 (= e!3940233 ((as const (Array Context!11530 Bool)) false))))

(declare-fun bm!563484 () Bool)

(declare-fun c!1192386 () Bool)

(declare-fun call!563494 () List!65442)

(declare-fun c!1192387 () Bool)

(assert (=> bm!563484 (= call!563493 (derivationStepZipperDown!1629 (ite c!1192386 (regTwo!33275 (h!71766 (exprs!6265 (h!71767 zl!343)))) (ite c!1192388 (regTwo!33274 (h!71766 (exprs!6265 (h!71767 zl!343)))) (ite c!1192387 (regOne!33274 (h!71766 (exprs!6265 (h!71767 zl!343)))) (reg!16710 (h!71766 (exprs!6265 (h!71767 zl!343))))))) (ite (or c!1192386 c!1192388) lt!2392042 (Context!11531 call!563494)) (h!71768 s!2326)))))

(declare-fun bm!563485 () Bool)

(declare-fun call!563490 () List!65442)

(assert (=> bm!563485 (= call!563494 call!563490)))

(declare-fun d!2040244 () Bool)

(declare-fun c!1192389 () Bool)

(assert (=> d!2040244 (= c!1192389 (and ((_ is ElementMatch!16381) (h!71766 (exprs!6265 (h!71767 zl!343)))) (= (c!1192193 (h!71766 (exprs!6265 (h!71767 zl!343)))) (h!71768 s!2326))))))

(declare-fun e!3940231 () (InoxSet Context!11530))

(assert (=> d!2040244 (= (derivationStepZipperDown!1629 (h!71766 (exprs!6265 (h!71767 zl!343))) lt!2392042 (h!71768 s!2326)) e!3940231)))

(declare-fun b!6502705 () Bool)

(declare-fun call!563492 () (InoxSet Context!11530))

(assert (=> b!6502705 (= e!3940233 call!563492)))

(declare-fun b!6502706 () Bool)

(declare-fun e!3940230 () (InoxSet Context!11530))

(assert (=> b!6502706 (= e!3940230 call!563492)))

(declare-fun bm!563486 () Bool)

(declare-fun call!563489 () (InoxSet Context!11530))

(assert (=> bm!563486 (= call!563489 call!563493)))

(declare-fun b!6502707 () Bool)

(assert (=> b!6502707 (= e!3940231 (store ((as const (Array Context!11530 Bool)) false) lt!2392042 true))))

(declare-fun bm!563487 () Bool)

(assert (=> bm!563487 (= call!563491 (derivationStepZipperDown!1629 (ite c!1192386 (regOne!33275 (h!71766 (exprs!6265 (h!71767 zl!343)))) (regOne!33274 (h!71766 (exprs!6265 (h!71767 zl!343))))) (ite c!1192386 lt!2392042 (Context!11531 call!563490)) (h!71768 s!2326)))))

(declare-fun b!6502708 () Bool)

(assert (=> b!6502708 (= e!3940231 e!3940235)))

(assert (=> b!6502708 (= c!1192386 ((_ is Union!16381) (h!71766 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun b!6502709 () Bool)

(assert (=> b!6502709 (= e!3940234 ((_ map or) call!563491 call!563489))))

(declare-fun b!6502710 () Bool)

(assert (=> b!6502710 (= e!3940234 e!3940230)))

(assert (=> b!6502710 (= c!1192387 ((_ is Concat!25226) (h!71766 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun bm!563488 () Bool)

(assert (=> bm!563488 (= call!563490 ($colon$colon!2231 (exprs!6265 lt!2392042) (ite (or c!1192388 c!1192387) (regTwo!33274 (h!71766 (exprs!6265 (h!71767 zl!343)))) (h!71766 (exprs!6265 (h!71767 zl!343))))))))

(declare-fun bm!563489 () Bool)

(assert (=> bm!563489 (= call!563492 call!563489)))

(declare-fun b!6502711 () Bool)

(declare-fun c!1192385 () Bool)

(assert (=> b!6502711 (= c!1192385 ((_ is Star!16381) (h!71766 (exprs!6265 (h!71767 zl!343)))))))

(assert (=> b!6502711 (= e!3940230 e!3940233)))

(assert (= (and d!2040244 c!1192389) b!6502707))

(assert (= (and d!2040244 (not c!1192389)) b!6502708))

(assert (= (and b!6502708 c!1192386) b!6502702))

(assert (= (and b!6502708 (not c!1192386)) b!6502701))

(assert (= (and b!6502701 res!2670506) b!6502703))

(assert (= (and b!6502701 c!1192388) b!6502709))

(assert (= (and b!6502701 (not c!1192388)) b!6502710))

(assert (= (and b!6502710 c!1192387) b!6502706))

(assert (= (and b!6502710 (not c!1192387)) b!6502711))

(assert (= (and b!6502711 c!1192385) b!6502705))

(assert (= (and b!6502711 (not c!1192385)) b!6502704))

(assert (= (or b!6502706 b!6502705) bm!563485))

(assert (= (or b!6502706 b!6502705) bm!563489))

(assert (= (or b!6502709 bm!563485) bm!563488))

(assert (= (or b!6502709 bm!563489) bm!563486))

(assert (= (or b!6502702 bm!563486) bm!563484))

(assert (= (or b!6502702 b!6502709) bm!563487))

(declare-fun m!7290146 () Bool)

(assert (=> b!6502707 m!7290146))

(declare-fun m!7290148 () Bool)

(assert (=> bm!563487 m!7290148))

(declare-fun m!7290150 () Bool)

(assert (=> bm!563484 m!7290150))

(declare-fun m!7290152 () Bool)

(assert (=> b!6502703 m!7290152))

(declare-fun m!7290154 () Bool)

(assert (=> bm!563488 m!7290154))

(assert (=> b!6502049 d!2040244))

(declare-fun b!6502717 () Bool)

(declare-fun e!3940241 () (InoxSet Context!11530))

(declare-fun e!3940240 () (InoxSet Context!11530))

(assert (=> b!6502717 (= e!3940241 e!3940240)))

(declare-fun c!1192391 () Bool)

(assert (=> b!6502717 (= c!1192391 ((_ is Cons!65318) (exprs!6265 (Context!11531 (Cons!65318 (h!71766 (exprs!6265 (h!71767 zl!343))) (t!379076 (exprs!6265 (h!71767 zl!343))))))))))

(declare-fun b!6502718 () Bool)

(assert (=> b!6502718 (= e!3940240 ((as const (Array Context!11530 Bool)) false))))

(declare-fun d!2040246 () Bool)

(declare-fun c!1192392 () Bool)

(declare-fun e!3940242 () Bool)

(assert (=> d!2040246 (= c!1192392 e!3940242)))

(declare-fun res!2670510 () Bool)

(assert (=> d!2040246 (=> (not res!2670510) (not e!3940242))))

(assert (=> d!2040246 (= res!2670510 ((_ is Cons!65318) (exprs!6265 (Context!11531 (Cons!65318 (h!71766 (exprs!6265 (h!71767 zl!343))) (t!379076 (exprs!6265 (h!71767 zl!343))))))))))

(assert (=> d!2040246 (= (derivationStepZipperUp!1555 (Context!11531 (Cons!65318 (h!71766 (exprs!6265 (h!71767 zl!343))) (t!379076 (exprs!6265 (h!71767 zl!343))))) (h!71768 s!2326)) e!3940241)))

(declare-fun bm!563490 () Bool)

(declare-fun call!563495 () (InoxSet Context!11530))

(assert (=> bm!563490 (= call!563495 (derivationStepZipperDown!1629 (h!71766 (exprs!6265 (Context!11531 (Cons!65318 (h!71766 (exprs!6265 (h!71767 zl!343))) (t!379076 (exprs!6265 (h!71767 zl!343))))))) (Context!11531 (t!379076 (exprs!6265 (Context!11531 (Cons!65318 (h!71766 (exprs!6265 (h!71767 zl!343))) (t!379076 (exprs!6265 (h!71767 zl!343)))))))) (h!71768 s!2326)))))

(declare-fun b!6502719 () Bool)

(assert (=> b!6502719 (= e!3940240 call!563495)))

(declare-fun b!6502720 () Bool)

(assert (=> b!6502720 (= e!3940242 (nullable!6374 (h!71766 (exprs!6265 (Context!11531 (Cons!65318 (h!71766 (exprs!6265 (h!71767 zl!343))) (t!379076 (exprs!6265 (h!71767 zl!343)))))))))))

(declare-fun b!6502721 () Bool)

(assert (=> b!6502721 (= e!3940241 ((_ map or) call!563495 (derivationStepZipperUp!1555 (Context!11531 (t!379076 (exprs!6265 (Context!11531 (Cons!65318 (h!71766 (exprs!6265 (h!71767 zl!343))) (t!379076 (exprs!6265 (h!71767 zl!343)))))))) (h!71768 s!2326))))))

(assert (= (and d!2040246 res!2670510) b!6502720))

(assert (= (and d!2040246 c!1192392) b!6502721))

(assert (= (and d!2040246 (not c!1192392)) b!6502717))

(assert (= (and b!6502717 c!1192391) b!6502719))

(assert (= (and b!6502717 (not c!1192391)) b!6502718))

(assert (= (or b!6502721 b!6502719) bm!563490))

(declare-fun m!7290164 () Bool)

(assert (=> bm!563490 m!7290164))

(declare-fun m!7290166 () Bool)

(assert (=> b!6502720 m!7290166))

(declare-fun m!7290168 () Bool)

(assert (=> b!6502721 m!7290168))

(assert (=> b!6502049 d!2040246))

(declare-fun b!6502722 () Bool)

(declare-fun e!3940244 () (InoxSet Context!11530))

(declare-fun e!3940243 () (InoxSet Context!11530))

(assert (=> b!6502722 (= e!3940244 e!3940243)))

(declare-fun c!1192393 () Bool)

(assert (=> b!6502722 (= c!1192393 ((_ is Cons!65318) (exprs!6265 lt!2392042)))))

(declare-fun b!6502723 () Bool)

(assert (=> b!6502723 (= e!3940243 ((as const (Array Context!11530 Bool)) false))))

(declare-fun d!2040252 () Bool)

(declare-fun c!1192394 () Bool)

(declare-fun e!3940245 () Bool)

(assert (=> d!2040252 (= c!1192394 e!3940245)))

(declare-fun res!2670511 () Bool)

(assert (=> d!2040252 (=> (not res!2670511) (not e!3940245))))

(assert (=> d!2040252 (= res!2670511 ((_ is Cons!65318) (exprs!6265 lt!2392042)))))

(assert (=> d!2040252 (= (derivationStepZipperUp!1555 lt!2392042 (h!71768 s!2326)) e!3940244)))

(declare-fun bm!563491 () Bool)

(declare-fun call!563496 () (InoxSet Context!11530))

(assert (=> bm!563491 (= call!563496 (derivationStepZipperDown!1629 (h!71766 (exprs!6265 lt!2392042)) (Context!11531 (t!379076 (exprs!6265 lt!2392042))) (h!71768 s!2326)))))

(declare-fun b!6502724 () Bool)

(assert (=> b!6502724 (= e!3940243 call!563496)))

(declare-fun b!6502725 () Bool)

(assert (=> b!6502725 (= e!3940245 (nullable!6374 (h!71766 (exprs!6265 lt!2392042))))))

(declare-fun b!6502726 () Bool)

(assert (=> b!6502726 (= e!3940244 ((_ map or) call!563496 (derivationStepZipperUp!1555 (Context!11531 (t!379076 (exprs!6265 lt!2392042))) (h!71768 s!2326))))))

(assert (= (and d!2040252 res!2670511) b!6502725))

(assert (= (and d!2040252 c!1192394) b!6502726))

(assert (= (and d!2040252 (not c!1192394)) b!6502722))

(assert (= (and b!6502722 c!1192393) b!6502724))

(assert (= (and b!6502722 (not c!1192393)) b!6502723))

(assert (= (or b!6502726 b!6502724) bm!563491))

(declare-fun m!7290170 () Bool)

(assert (=> bm!563491 m!7290170))

(declare-fun m!7290172 () Bool)

(assert (=> b!6502725 m!7290172))

(declare-fun m!7290174 () Bool)

(assert (=> b!6502726 m!7290174))

(assert (=> b!6502049 d!2040252))

(declare-fun b!6502727 () Bool)

(declare-fun e!3940247 () (InoxSet Context!11530))

(declare-fun e!3940246 () (InoxSet Context!11530))

(assert (=> b!6502727 (= e!3940247 e!3940246)))

(declare-fun c!1192395 () Bool)

(assert (=> b!6502727 (= c!1192395 ((_ is Cons!65318) (exprs!6265 (h!71767 zl!343))))))

(declare-fun b!6502728 () Bool)

(assert (=> b!6502728 (= e!3940246 ((as const (Array Context!11530 Bool)) false))))

(declare-fun d!2040254 () Bool)

(declare-fun c!1192396 () Bool)

(declare-fun e!3940248 () Bool)

(assert (=> d!2040254 (= c!1192396 e!3940248)))

(declare-fun res!2670512 () Bool)

(assert (=> d!2040254 (=> (not res!2670512) (not e!3940248))))

(assert (=> d!2040254 (= res!2670512 ((_ is Cons!65318) (exprs!6265 (h!71767 zl!343))))))

(assert (=> d!2040254 (= (derivationStepZipperUp!1555 (h!71767 zl!343) (h!71768 s!2326)) e!3940247)))

(declare-fun bm!563492 () Bool)

(declare-fun call!563497 () (InoxSet Context!11530))

(assert (=> bm!563492 (= call!563497 (derivationStepZipperDown!1629 (h!71766 (exprs!6265 (h!71767 zl!343))) (Context!11531 (t!379076 (exprs!6265 (h!71767 zl!343)))) (h!71768 s!2326)))))

(declare-fun b!6502729 () Bool)

(assert (=> b!6502729 (= e!3940246 call!563497)))

(declare-fun b!6502730 () Bool)

(assert (=> b!6502730 (= e!3940248 (nullable!6374 (h!71766 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun b!6502731 () Bool)

(assert (=> b!6502731 (= e!3940247 ((_ map or) call!563497 (derivationStepZipperUp!1555 (Context!11531 (t!379076 (exprs!6265 (h!71767 zl!343)))) (h!71768 s!2326))))))

(assert (= (and d!2040254 res!2670512) b!6502730))

(assert (= (and d!2040254 c!1192396) b!6502731))

(assert (= (and d!2040254 (not c!1192396)) b!6502727))

(assert (= (and b!6502727 c!1192395) b!6502729))

(assert (= (and b!6502727 (not c!1192395)) b!6502728))

(assert (= (or b!6502731 b!6502729) bm!563492))

(declare-fun m!7290176 () Bool)

(assert (=> bm!563492 m!7290176))

(assert (=> b!6502730 m!7289564))

(declare-fun m!7290178 () Bool)

(assert (=> b!6502731 m!7290178))

(assert (=> b!6502049 d!2040254))

(declare-fun d!2040256 () Bool)

(assert (=> d!2040256 (= (flatMap!1886 z!1189 lambda!360402) (choose!48272 z!1189 lambda!360402))))

(declare-fun bs!1651596 () Bool)

(assert (= bs!1651596 d!2040256))

(declare-fun m!7290180 () Bool)

(assert (=> bs!1651596 m!7290180))

(assert (=> b!6502049 d!2040256))

(declare-fun d!2040258 () Bool)

(declare-fun nullableFct!2310 (Regex!16381) Bool)

(assert (=> d!2040258 (= (nullable!6374 (h!71766 (exprs!6265 (h!71767 zl!343)))) (nullableFct!2310 (h!71766 (exprs!6265 (h!71767 zl!343)))))))

(declare-fun bs!1651601 () Bool)

(assert (= bs!1651601 d!2040258))

(declare-fun m!7290184 () Bool)

(assert (=> bs!1651601 m!7290184))

(assert (=> b!6502049 d!2040258))

(declare-fun d!2040262 () Bool)

(assert (=> d!2040262 (= (flatMap!1886 z!1189 lambda!360402) (dynLambda!25946 lambda!360402 (h!71767 zl!343)))))

(declare-fun lt!2392156 () Unit!158859)

(assert (=> d!2040262 (= lt!2392156 (choose!48273 z!1189 (h!71767 zl!343) lambda!360402))))

(assert (=> d!2040262 (= z!1189 (store ((as const (Array Context!11530 Bool)) false) (h!71767 zl!343) true))))

(assert (=> d!2040262 (= (lemmaFlatMapOnSingletonSet!1412 z!1189 (h!71767 zl!343) lambda!360402) lt!2392156)))

(declare-fun b_lambda!246151 () Bool)

(assert (=> (not b_lambda!246151) (not d!2040262)))

(declare-fun bs!1651605 () Bool)

(assert (= bs!1651605 d!2040262))

(assert (=> bs!1651605 m!7289562))

(declare-fun m!7290190 () Bool)

(assert (=> bs!1651605 m!7290190))

(declare-fun m!7290192 () Bool)

(assert (=> bs!1651605 m!7290192))

(declare-fun m!7290194 () Bool)

(assert (=> bs!1651605 m!7290194))

(assert (=> b!6502049 d!2040262))

(declare-fun d!2040268 () Bool)

(assert (=> d!2040268 (= (nullable!6374 (regOne!33274 (regOne!33274 r!7292))) (nullableFct!2310 (regOne!33274 (regOne!33274 r!7292))))))

(declare-fun bs!1651607 () Bool)

(assert (= bs!1651607 d!2040268))

(declare-fun m!7290196 () Bool)

(assert (=> bs!1651607 m!7290196))

(assert (=> b!6502071 d!2040268))

(declare-fun b!6502770 () Bool)

(declare-fun e!3940275 () Bool)

(declare-fun call!563505 () Bool)

(assert (=> b!6502770 (= e!3940275 call!563505)))

(declare-fun d!2040270 () Bool)

(declare-fun res!2670530 () Bool)

(declare-fun e!3940276 () Bool)

(assert (=> d!2040270 (=> res!2670530 e!3940276)))

(assert (=> d!2040270 (= res!2670530 ((_ is ElementMatch!16381) r!7292))))

(assert (=> d!2040270 (= (validRegex!8117 r!7292) e!3940276)))

(declare-fun b!6502771 () Bool)

(declare-fun e!3940280 () Bool)

(declare-fun e!3940277 () Bool)

(assert (=> b!6502771 (= e!3940280 e!3940277)))

(declare-fun c!1192409 () Bool)

(assert (=> b!6502771 (= c!1192409 ((_ is Union!16381) r!7292))))

(declare-fun bm!563499 () Bool)

(declare-fun call!563504 () Bool)

(declare-fun call!563506 () Bool)

(assert (=> bm!563499 (= call!563504 call!563506)))

(declare-fun c!1192410 () Bool)

(declare-fun bm!563500 () Bool)

(assert (=> bm!563500 (= call!563506 (validRegex!8117 (ite c!1192410 (reg!16710 r!7292) (ite c!1192409 (regOne!33275 r!7292) (regOne!33274 r!7292)))))))

(declare-fun b!6502772 () Bool)

(assert (=> b!6502772 (= e!3940276 e!3940280)))

(assert (=> b!6502772 (= c!1192410 ((_ is Star!16381) r!7292))))

(declare-fun b!6502773 () Bool)

(declare-fun res!2670528 () Bool)

(declare-fun e!3940279 () Bool)

(assert (=> b!6502773 (=> res!2670528 e!3940279)))

(assert (=> b!6502773 (= res!2670528 (not ((_ is Concat!25226) r!7292)))))

(assert (=> b!6502773 (= e!3940277 e!3940279)))

(declare-fun bm!563501 () Bool)

(assert (=> bm!563501 (= call!563505 (validRegex!8117 (ite c!1192409 (regTwo!33275 r!7292) (regTwo!33274 r!7292))))))

(declare-fun b!6502774 () Bool)

(declare-fun res!2670527 () Bool)

(assert (=> b!6502774 (=> (not res!2670527) (not e!3940275))))

(assert (=> b!6502774 (= res!2670527 call!563504)))

(assert (=> b!6502774 (= e!3940277 e!3940275)))

(declare-fun b!6502775 () Bool)

(declare-fun e!3940278 () Bool)

(assert (=> b!6502775 (= e!3940280 e!3940278)))

(declare-fun res!2670529 () Bool)

(assert (=> b!6502775 (= res!2670529 (not (nullable!6374 (reg!16710 r!7292))))))

(assert (=> b!6502775 (=> (not res!2670529) (not e!3940278))))

(declare-fun b!6502776 () Bool)

(declare-fun e!3940281 () Bool)

(assert (=> b!6502776 (= e!3940279 e!3940281)))

(declare-fun res!2670531 () Bool)

(assert (=> b!6502776 (=> (not res!2670531) (not e!3940281))))

(assert (=> b!6502776 (= res!2670531 call!563504)))

(declare-fun b!6502777 () Bool)

(assert (=> b!6502777 (= e!3940281 call!563505)))

(declare-fun b!6502778 () Bool)

(assert (=> b!6502778 (= e!3940278 call!563506)))

(assert (= (and d!2040270 (not res!2670530)) b!6502772))

(assert (= (and b!6502772 c!1192410) b!6502775))

(assert (= (and b!6502772 (not c!1192410)) b!6502771))

(assert (= (and b!6502775 res!2670529) b!6502778))

(assert (= (and b!6502771 c!1192409) b!6502774))

(assert (= (and b!6502771 (not c!1192409)) b!6502773))

(assert (= (and b!6502774 res!2670527) b!6502770))

(assert (= (and b!6502773 (not res!2670528)) b!6502776))

(assert (= (and b!6502776 res!2670531) b!6502777))

(assert (= (or b!6502770 b!6502777) bm!563501))

(assert (= (or b!6502774 b!6502776) bm!563499))

(assert (= (or b!6502778 bm!563499) bm!563500))

(declare-fun m!7290198 () Bool)

(assert (=> bm!563500 m!7290198))

(declare-fun m!7290200 () Bool)

(assert (=> bm!563501 m!7290200))

(declare-fun m!7290202 () Bool)

(assert (=> b!6502775 m!7290202))

(assert (=> start!638822 d!2040270))

(declare-fun b!6502783 () Bool)

(declare-fun e!3940284 () Bool)

(declare-fun tp!1798645 () Bool)

(assert (=> b!6502783 (= e!3940284 (and tp_is_empty!42015 tp!1798645))))

(assert (=> b!6502082 (= tp!1798634 e!3940284)))

(assert (= (and b!6502082 ((_ is Cons!65320) (t!379078 s!2326))) b!6502783))

(declare-fun e!3940293 () Bool)

(assert (=> b!6502062 (= tp!1798641 e!3940293)))

(declare-fun b!6502806 () Bool)

(declare-fun tp!1798656 () Bool)

(assert (=> b!6502806 (= e!3940293 tp!1798656)))

(declare-fun b!6502805 () Bool)

(declare-fun tp!1798658 () Bool)

(declare-fun tp!1798660 () Bool)

(assert (=> b!6502805 (= e!3940293 (and tp!1798658 tp!1798660))))

(declare-fun b!6502807 () Bool)

(declare-fun tp!1798657 () Bool)

(declare-fun tp!1798659 () Bool)

(assert (=> b!6502807 (= e!3940293 (and tp!1798657 tp!1798659))))

(declare-fun b!6502804 () Bool)

(assert (=> b!6502804 (= e!3940293 tp_is_empty!42015)))

(assert (= (and b!6502062 ((_ is ElementMatch!16381) (regOne!33275 r!7292))) b!6502804))

(assert (= (and b!6502062 ((_ is Concat!25226) (regOne!33275 r!7292))) b!6502805))

(assert (= (and b!6502062 ((_ is Star!16381) (regOne!33275 r!7292))) b!6502806))

(assert (= (and b!6502062 ((_ is Union!16381) (regOne!33275 r!7292))) b!6502807))

(declare-fun e!3940294 () Bool)

(assert (=> b!6502062 (= tp!1798640 e!3940294)))

(declare-fun b!6502810 () Bool)

(declare-fun tp!1798661 () Bool)

(assert (=> b!6502810 (= e!3940294 tp!1798661)))

(declare-fun b!6502809 () Bool)

(declare-fun tp!1798663 () Bool)

(declare-fun tp!1798665 () Bool)

(assert (=> b!6502809 (= e!3940294 (and tp!1798663 tp!1798665))))

(declare-fun b!6502811 () Bool)

(declare-fun tp!1798662 () Bool)

(declare-fun tp!1798664 () Bool)

(assert (=> b!6502811 (= e!3940294 (and tp!1798662 tp!1798664))))

(declare-fun b!6502808 () Bool)

(assert (=> b!6502808 (= e!3940294 tp_is_empty!42015)))

(assert (= (and b!6502062 ((_ is ElementMatch!16381) (regTwo!33275 r!7292))) b!6502808))

(assert (= (and b!6502062 ((_ is Concat!25226) (regTwo!33275 r!7292))) b!6502809))

(assert (= (and b!6502062 ((_ is Star!16381) (regTwo!33275 r!7292))) b!6502810))

(assert (= (and b!6502062 ((_ is Union!16381) (regTwo!33275 r!7292))) b!6502811))

(declare-fun e!3940295 () Bool)

(assert (=> b!6502064 (= tp!1798633 e!3940295)))

(declare-fun b!6502814 () Bool)

(declare-fun tp!1798666 () Bool)

(assert (=> b!6502814 (= e!3940295 tp!1798666)))

(declare-fun b!6502813 () Bool)

(declare-fun tp!1798668 () Bool)

(declare-fun tp!1798670 () Bool)

(assert (=> b!6502813 (= e!3940295 (and tp!1798668 tp!1798670))))

(declare-fun b!6502815 () Bool)

(declare-fun tp!1798667 () Bool)

(declare-fun tp!1798669 () Bool)

(assert (=> b!6502815 (= e!3940295 (and tp!1798667 tp!1798669))))

(declare-fun b!6502812 () Bool)

(assert (=> b!6502812 (= e!3940295 tp_is_empty!42015)))

(assert (= (and b!6502064 ((_ is ElementMatch!16381) (regOne!33274 r!7292))) b!6502812))

(assert (= (and b!6502064 ((_ is Concat!25226) (regOne!33274 r!7292))) b!6502813))

(assert (= (and b!6502064 ((_ is Star!16381) (regOne!33274 r!7292))) b!6502814))

(assert (= (and b!6502064 ((_ is Union!16381) (regOne!33274 r!7292))) b!6502815))

(declare-fun e!3940296 () Bool)

(assert (=> b!6502064 (= tp!1798638 e!3940296)))

(declare-fun b!6502818 () Bool)

(declare-fun tp!1798671 () Bool)

(assert (=> b!6502818 (= e!3940296 tp!1798671)))

(declare-fun b!6502817 () Bool)

(declare-fun tp!1798673 () Bool)

(declare-fun tp!1798675 () Bool)

(assert (=> b!6502817 (= e!3940296 (and tp!1798673 tp!1798675))))

(declare-fun b!6502819 () Bool)

(declare-fun tp!1798672 () Bool)

(declare-fun tp!1798674 () Bool)

(assert (=> b!6502819 (= e!3940296 (and tp!1798672 tp!1798674))))

(declare-fun b!6502816 () Bool)

(assert (=> b!6502816 (= e!3940296 tp_is_empty!42015)))

(assert (= (and b!6502064 ((_ is ElementMatch!16381) (regTwo!33274 r!7292))) b!6502816))

(assert (= (and b!6502064 ((_ is Concat!25226) (regTwo!33274 r!7292))) b!6502817))

(assert (= (and b!6502064 ((_ is Star!16381) (regTwo!33274 r!7292))) b!6502818))

(assert (= (and b!6502064 ((_ is Union!16381) (regTwo!33274 r!7292))) b!6502819))

(declare-fun b!6502824 () Bool)

(declare-fun e!3940299 () Bool)

(declare-fun tp!1798680 () Bool)

(declare-fun tp!1798681 () Bool)

(assert (=> b!6502824 (= e!3940299 (and tp!1798680 tp!1798681))))

(assert (=> b!6502078 (= tp!1798636 e!3940299)))

(assert (= (and b!6502078 ((_ is Cons!65318) (exprs!6265 setElem!44327))) b!6502824))

(declare-fun b!6502825 () Bool)

(declare-fun e!3940300 () Bool)

(declare-fun tp!1798682 () Bool)

(declare-fun tp!1798683 () Bool)

(assert (=> b!6502825 (= e!3940300 (and tp!1798682 tp!1798683))))

(assert (=> b!6502045 (= tp!1798639 e!3940300)))

(assert (= (and b!6502045 ((_ is Cons!65318) (exprs!6265 (h!71767 zl!343)))) b!6502825))

(declare-fun b!6502833 () Bool)

(declare-fun e!3940306 () Bool)

(declare-fun tp!1798688 () Bool)

(assert (=> b!6502833 (= e!3940306 tp!1798688)))

(declare-fun e!3940305 () Bool)

(declare-fun b!6502832 () Bool)

(declare-fun tp!1798689 () Bool)

(assert (=> b!6502832 (= e!3940305 (and (inv!84199 (h!71767 (t!379077 zl!343))) e!3940306 tp!1798689))))

(assert (=> b!6502059 (= tp!1798637 e!3940305)))

(assert (= b!6502832 b!6502833))

(assert (= (and b!6502059 ((_ is Cons!65319) (t!379077 zl!343))) b!6502832))

(declare-fun m!7290224 () Bool)

(assert (=> b!6502832 m!7290224))

(declare-fun e!3940307 () Bool)

(assert (=> b!6502055 (= tp!1798642 e!3940307)))

(declare-fun b!6502836 () Bool)

(declare-fun tp!1798690 () Bool)

(assert (=> b!6502836 (= e!3940307 tp!1798690)))

(declare-fun b!6502835 () Bool)

(declare-fun tp!1798692 () Bool)

(declare-fun tp!1798694 () Bool)

(assert (=> b!6502835 (= e!3940307 (and tp!1798692 tp!1798694))))

(declare-fun b!6502837 () Bool)

(declare-fun tp!1798691 () Bool)

(declare-fun tp!1798693 () Bool)

(assert (=> b!6502837 (= e!3940307 (and tp!1798691 tp!1798693))))

(declare-fun b!6502834 () Bool)

(assert (=> b!6502834 (= e!3940307 tp_is_empty!42015)))

(assert (= (and b!6502055 ((_ is ElementMatch!16381) (reg!16710 r!7292))) b!6502834))

(assert (= (and b!6502055 ((_ is Concat!25226) (reg!16710 r!7292))) b!6502835))

(assert (= (and b!6502055 ((_ is Star!16381) (reg!16710 r!7292))) b!6502836))

(assert (= (and b!6502055 ((_ is Union!16381) (reg!16710 r!7292))) b!6502837))

(declare-fun condSetEmpty!44330 () Bool)

(assert (=> setNonEmpty!44327 (= condSetEmpty!44330 (= setRest!44327 ((as const (Array Context!11530 Bool)) false)))))

(declare-fun setRes!44330 () Bool)

(assert (=> setNonEmpty!44327 (= tp!1798635 setRes!44330)))

(declare-fun setIsEmpty!44330 () Bool)

(assert (=> setIsEmpty!44330 setRes!44330))

(declare-fun setElem!44330 () Context!11530)

(declare-fun setNonEmpty!44330 () Bool)

(declare-fun tp!1798700 () Bool)

(declare-fun e!3940312 () Bool)

(assert (=> setNonEmpty!44330 (= setRes!44330 (and tp!1798700 (inv!84199 setElem!44330) e!3940312))))

(declare-fun setRest!44330 () (InoxSet Context!11530))

(assert (=> setNonEmpty!44330 (= setRest!44327 ((_ map or) (store ((as const (Array Context!11530 Bool)) false) setElem!44330 true) setRest!44330))))

(declare-fun b!6502846 () Bool)

(declare-fun tp!1798699 () Bool)

(assert (=> b!6502846 (= e!3940312 tp!1798699)))

(assert (= (and setNonEmpty!44327 condSetEmpty!44330) setIsEmpty!44330))

(assert (= (and setNonEmpty!44327 (not condSetEmpty!44330)) setNonEmpty!44330))

(assert (= setNonEmpty!44330 b!6502846))

(declare-fun m!7290226 () Bool)

(assert (=> setNonEmpty!44330 m!7290226))

(declare-fun b_lambda!246153 () Bool)

(assert (= b_lambda!246141 (or b!6502049 b_lambda!246153)))

(declare-fun bs!1651612 () Bool)

(declare-fun d!2040274 () Bool)

(assert (= bs!1651612 (and d!2040274 b!6502049)))

(assert (=> bs!1651612 (= (dynLambda!25946 lambda!360402 lt!2392028) (derivationStepZipperUp!1555 lt!2392028 (h!71768 s!2326)))))

(assert (=> bs!1651612 m!7289614))

(assert (=> d!2040138 d!2040274))

(declare-fun b_lambda!246155 () Bool)

(assert (= b_lambda!246137 (or b!6502049 b_lambda!246155)))

(declare-fun bs!1651613 () Bool)

(declare-fun d!2040276 () Bool)

(assert (= bs!1651613 (and d!2040276 b!6502049)))

(assert (=> bs!1651613 (= (dynLambda!25946 lambda!360402 lt!2392024) (derivationStepZipperUp!1555 lt!2392024 (h!71768 s!2326)))))

(assert (=> bs!1651613 m!7289606))

(assert (=> d!2040076 d!2040276))

(declare-fun b_lambda!246157 () Bool)

(assert (= b_lambda!246139 (or b!6502077 b_lambda!246157)))

(declare-fun bs!1651614 () Bool)

(declare-fun d!2040278 () Bool)

(assert (= bs!1651614 (and d!2040278 b!6502077)))

(declare-fun lt!2392163 () Unit!158859)

(assert (=> bs!1651614 (= lt!2392163 (lemmaConcatPreservesForall!354 (exprs!6265 lt!2392028) lt!2392027 lambda!360404))))

(assert (=> bs!1651614 (= (dynLambda!25947 lambda!360403 lt!2392028) (Context!11531 (++!14465 (exprs!6265 lt!2392028) lt!2392027)))))

(declare-fun m!7290228 () Bool)

(assert (=> bs!1651614 m!7290228))

(declare-fun m!7290230 () Bool)

(assert (=> bs!1651614 m!7290230))

(assert (=> d!2040102 d!2040278))

(declare-fun b_lambda!246159 () Bool)

(assert (= b_lambda!246151 (or b!6502049 b_lambda!246159)))

(declare-fun bs!1651615 () Bool)

(declare-fun d!2040280 () Bool)

(assert (= bs!1651615 (and d!2040280 b!6502049)))

(assert (=> bs!1651615 (= (dynLambda!25946 lambda!360402 (h!71767 zl!343)) (derivationStepZipperUp!1555 (h!71767 zl!343) (h!71768 s!2326)))))

(assert (=> bs!1651615 m!7289570))

(assert (=> d!2040262 d!2040280))

(declare-fun b_lambda!246161 () Bool)

(assert (= b_lambda!246143 (or b!6502049 b_lambda!246161)))

(declare-fun bs!1651618 () Bool)

(declare-fun d!2040282 () Bool)

(assert (= bs!1651618 (and d!2040282 b!6502049)))

(assert (=> bs!1651618 (= (dynLambda!25946 lambda!360402 lt!2392056) (derivationStepZipperUp!1555 lt!2392056 (h!71768 s!2326)))))

(assert (=> bs!1651618 m!7289616))

(assert (=> d!2040142 d!2040282))

(check-sat (not bs!1651614) (not d!2040106) (not b!6502320) (not bm!563491) (not b!6502460) (not b!6502775) (not bm!563445) (not b!6502536) (not b!6502534) (not b!6502487) (not d!2040092) (not b!6502430) (not b!6502813) (not d!2040136) (not d!2040150) (not d!2040268) (not b!6502114) (not bs!1651612) (not bs!1651613) (not bm!563408) (not d!2040256) (not b!6502318) (not d!2040096) (not b!6502129) (not d!2040258) (not b_lambda!246155) (not bm!563488) (not b!6502311) (not b!6502833) (not b!6502347) (not d!2040142) (not b!6502494) (not b!6502810) (not bs!1651618) (not bm!563492) (not d!2040144) (not b!6502469) (not d!2040166) (not d!2040076) (not b!6502819) (not b_lambda!246157) (not b!6502105) (not d!2040134) (not b!6502604) (not d!2040210) (not b!6502542) (not b!6502730) (not bm!563449) (not b!6502113) (not b!6502485) (not b!6502335) (not b!6502130) (not d!2040116) (not bm!563418) (not b!6502611) (not b_lambda!246161) (not bm!563448) (not b!6502703) (not b!6502486) (not b!6502106) (not b!6502429) (not b!6502342) (not bm!563487) (not b!6502334) (not b!6502726) (not b!6502806) (not b!6502805) (not d!2040088) (not d!2040152) (not bs!1651615) (not b!6502468) (not d!2040208) (not d!2040212) (not bm!563501) (not bm!563441) (not b!6502731) (not b!6502721) (not b!6502533) (not b!6502807) (not b!6502612) (not bm!563447) (not b!6502496) (not d!2040090) (not d!2040080) (not b!6502337) (not b!6502725) (not d!2040242) (not b!6502539) (not d!2040120) (not bm!563500) (not b!6502720) (not d!2040216) tp_is_empty!42015 (not bm!563444) (not b!6502815) (not b!6502818) (not b!6502464) (not d!2040086) (not b!6502489) (not d!2040174) (not bm!563484) (not b!6502116) (not b!6502824) (not d!2040184) (not b!6502126) (not b!6502478) (not d!2040082) (not d!2040078) (not b!6502541) (not b!6502608) (not b!6502783) (not b!6502836) (not b!6502809) (not d!2040262) (not d!2040114) (not b!6502346) (not b!6502341) (not b!6502316) (not bm!563419) (not b!6502115) (not d!2040084) (not b!6502607) (not b!6502825) (not b!6502467) (not b!6502846) (not bm!563399) (not d!2040094) (not d!2040104) (not b!6502336) (not b!6502153) (not bm!563407) (not d!2040128) (not b!6502535) (not b!6502605) (not d!2040154) (not b!6502428) (not b!6502814) (not d!2040160) (not b!6502832) (not d!2040102) (not d!2040124) (not b!6502315) (not d!2040138) (not b!6502491) (not d!2040170) (not b!6502465) (not b_lambda!246153) (not b!6502462) (not b!6502817) (not d!2040072) (not b!6502837) (not b!6502399) (not b!6502127) (not b!6502811) (not b!6502482) (not bm!563415) (not b!6502240) (not setNonEmpty!44330) (not b!6502238) (not bm!563490) (not b!6502314) (not b_lambda!246159) (not d!2040122) (not b!6502835))
(check-sat)
