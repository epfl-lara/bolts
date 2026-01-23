; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!632402 () Bool)

(assert start!632402)

(declare-fun b!6383550 () Bool)

(assert (=> b!6383550 true))

(assert (=> b!6383550 true))

(declare-fun lambda!352236 () Int)

(declare-fun lambda!352235 () Int)

(assert (=> b!6383550 (not (= lambda!352236 lambda!352235))))

(assert (=> b!6383550 true))

(assert (=> b!6383550 true))

(declare-fun b!6383534 () Bool)

(assert (=> b!6383534 true))

(declare-fun bs!1597493 () Bool)

(declare-fun b!6383538 () Bool)

(assert (= bs!1597493 (and b!6383538 b!6383550)))

(declare-datatypes ((C!32872 0))(
  ( (C!32873 (val!26138 Int)) )
))
(declare-datatypes ((Regex!16301 0))(
  ( (ElementMatch!16301 (c!1163182 C!32872)) (Concat!25146 (regOne!33114 Regex!16301) (regTwo!33114 Regex!16301)) (EmptyExpr!16301) (Star!16301 (reg!16630 Regex!16301)) (EmptyLang!16301) (Union!16301 (regOne!33115 Regex!16301) (regTwo!33115 Regex!16301)) )
))
(declare-fun r!7292 () Regex!16301)

(declare-fun lambda!352238 () Int)

(declare-fun lt!2371171 () Regex!16301)

(assert (=> bs!1597493 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352238 lambda!352235))))

(assert (=> bs!1597493 (not (= lambda!352238 lambda!352236))))

(assert (=> b!6383538 true))

(assert (=> b!6383538 true))

(assert (=> b!6383538 true))

(declare-fun lambda!352239 () Int)

(assert (=> bs!1597493 (not (= lambda!352239 lambda!352235))))

(assert (=> bs!1597493 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352239 lambda!352236))))

(assert (=> b!6383538 (not (= lambda!352239 lambda!352238))))

(assert (=> b!6383538 true))

(assert (=> b!6383538 true))

(assert (=> b!6383538 true))

(declare-fun e!3874929 () Bool)

(declare-fun e!3874921 () Bool)

(assert (=> b!6383534 (= e!3874929 e!3874921)))

(declare-fun res!2625881 () Bool)

(assert (=> b!6383534 (=> res!2625881 e!3874921)))

(declare-datatypes ((List!65202 0))(
  ( (Nil!65078) (Cons!65078 (h!71526 C!32872) (t!378806 List!65202)) )
))
(declare-fun s!2326 () List!65202)

(get-info :version)

(assert (=> b!6383534 (= res!2625881 (or (and ((_ is ElementMatch!16301) (regOne!33114 r!7292)) (= (c!1163182 (regOne!33114 r!7292)) (h!71526 s!2326))) ((_ is Union!16301) (regOne!33114 r!7292))))))

(declare-datatypes ((Unit!158535 0))(
  ( (Unit!158536) )
))
(declare-fun lt!2371168 () Unit!158535)

(declare-fun e!3874926 () Unit!158535)

(assert (=> b!6383534 (= lt!2371168 e!3874926)))

(declare-fun c!1163181 () Bool)

(declare-datatypes ((List!65203 0))(
  ( (Nil!65079) (Cons!65079 (h!71527 Regex!16301) (t!378807 List!65203)) )
))
(declare-datatypes ((Context!11370 0))(
  ( (Context!11371 (exprs!6185 List!65203)) )
))
(declare-datatypes ((List!65204 0))(
  ( (Nil!65080) (Cons!65080 (h!71528 Context!11370) (t!378808 List!65204)) )
))
(declare-fun zl!343 () List!65204)

(declare-fun nullable!6294 (Regex!16301) Bool)

(assert (=> b!6383534 (= c!1163181 (nullable!6294 (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11370))

(declare-fun lambda!352237 () Int)

(declare-fun flatMap!1806 ((InoxSet Context!11370) Int) (InoxSet Context!11370))

(declare-fun derivationStepZipperUp!1475 (Context!11370 C!32872) (InoxSet Context!11370))

(assert (=> b!6383534 (= (flatMap!1806 z!1189 lambda!352237) (derivationStepZipperUp!1475 (h!71528 zl!343) (h!71526 s!2326)))))

(declare-fun lt!2371162 () Unit!158535)

(declare-fun lemmaFlatMapOnSingletonSet!1332 ((InoxSet Context!11370) Context!11370 Int) Unit!158535)

(assert (=> b!6383534 (= lt!2371162 (lemmaFlatMapOnSingletonSet!1332 z!1189 (h!71528 zl!343) lambda!352237))))

(declare-fun lt!2371179 () (InoxSet Context!11370))

(declare-fun lt!2371183 () Context!11370)

(assert (=> b!6383534 (= lt!2371179 (derivationStepZipperUp!1475 lt!2371183 (h!71526 s!2326)))))

(declare-fun lt!2371150 () (InoxSet Context!11370))

(declare-fun derivationStepZipperDown!1549 (Regex!16301 Context!11370 C!32872) (InoxSet Context!11370))

(assert (=> b!6383534 (= lt!2371150 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (h!71528 zl!343))) lt!2371183 (h!71526 s!2326)))))

(assert (=> b!6383534 (= lt!2371183 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun lt!2371170 () (InoxSet Context!11370))

(assert (=> b!6383534 (= lt!2371170 (derivationStepZipperUp!1475 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))) (h!71526 s!2326)))))

(declare-fun b!6383536 () Bool)

(declare-fun e!3874919 () Bool)

(declare-fun e!3874924 () Bool)

(assert (=> b!6383536 (= e!3874919 e!3874924)))

(declare-fun res!2625888 () Bool)

(assert (=> b!6383536 (=> res!2625888 e!3874924)))

(declare-fun lt!2371181 () Context!11370)

(declare-fun unfocusZipper!2043 (List!65204) Regex!16301)

(assert (=> b!6383536 (= res!2625888 (not (= (unfocusZipper!2043 (Cons!65080 lt!2371181 Nil!65080)) (reg!16630 (regOne!33114 r!7292)))))))

(declare-fun lt!2371169 () Context!11370)

(declare-fun lt!2371185 () (InoxSet Context!11370))

(assert (=> b!6383536 (= (flatMap!1806 lt!2371185 lambda!352237) (derivationStepZipperUp!1475 lt!2371169 (h!71526 s!2326)))))

(declare-fun lt!2371186 () Unit!158535)

(assert (=> b!6383536 (= lt!2371186 (lemmaFlatMapOnSingletonSet!1332 lt!2371185 lt!2371169 lambda!352237))))

(declare-fun lt!2371154 () (InoxSet Context!11370))

(assert (=> b!6383536 (= (flatMap!1806 lt!2371154 lambda!352237) (derivationStepZipperUp!1475 lt!2371181 (h!71526 s!2326)))))

(declare-fun lt!2371163 () Unit!158535)

(assert (=> b!6383536 (= lt!2371163 (lemmaFlatMapOnSingletonSet!1332 lt!2371154 lt!2371181 lambda!352237))))

(declare-fun lt!2371184 () (InoxSet Context!11370))

(assert (=> b!6383536 (= lt!2371184 (derivationStepZipperUp!1475 lt!2371169 (h!71526 s!2326)))))

(declare-fun lt!2371157 () (InoxSet Context!11370))

(assert (=> b!6383536 (= lt!2371157 (derivationStepZipperUp!1475 lt!2371181 (h!71526 s!2326)))))

(assert (=> b!6383536 (= lt!2371185 (store ((as const (Array Context!11370 Bool)) false) lt!2371169 true))))

(assert (=> b!6383536 (= lt!2371154 (store ((as const (Array Context!11370 Bool)) false) lt!2371181 true))))

(assert (=> b!6383536 (= lt!2371181 (Context!11371 (Cons!65079 (reg!16630 (regOne!33114 r!7292)) Nil!65079)))))

(declare-fun b!6383537 () Bool)

(declare-fun e!3874922 () Bool)

(assert (=> b!6383537 (= e!3874924 e!3874922)))

(declare-fun res!2625884 () Bool)

(assert (=> b!6383537 (=> res!2625884 e!3874922)))

(declare-fun lt!2371178 () Bool)

(assert (=> b!6383537 (= res!2625884 (not lt!2371178))))

(declare-fun e!3874934 () Bool)

(assert (=> b!6383537 e!3874934))

(declare-fun res!2625896 () Bool)

(assert (=> b!6383537 (=> (not res!2625896) (not e!3874934))))

(declare-fun lt!2371176 () Regex!16301)

(declare-fun matchR!8484 (Regex!16301 List!65202) Bool)

(declare-fun matchRSpec!3402 (Regex!16301 List!65202) Bool)

(assert (=> b!6383537 (= res!2625896 (= (matchR!8484 lt!2371176 s!2326) (matchRSpec!3402 lt!2371176 s!2326)))))

(declare-fun lt!2371164 () Unit!158535)

(declare-fun mainMatchTheorem!3402 (Regex!16301 List!65202) Unit!158535)

(assert (=> b!6383537 (= lt!2371164 (mainMatchTheorem!3402 lt!2371176 s!2326))))

(declare-fun e!3874932 () Bool)

(assert (=> b!6383538 (= e!3874922 e!3874932)))

(declare-fun res!2625900 () Bool)

(assert (=> b!6383538 (=> res!2625900 e!3874932)))

(declare-datatypes ((tuple2!66560 0))(
  ( (tuple2!66561 (_1!36583 List!65202) (_2!36583 List!65202)) )
))
(declare-fun lt!2371152 () tuple2!66560)

(declare-fun ++!14369 (List!65202 List!65202) List!65202)

(assert (=> b!6383538 (= res!2625900 (not (= (++!14369 (_1!36583 lt!2371152) (_2!36583 lt!2371152)) s!2326)))))

(declare-datatypes ((Option!16192 0))(
  ( (None!16191) (Some!16191 (v!52360 tuple2!66560)) )
))
(declare-fun lt!2371180 () Option!16192)

(declare-fun get!22535 (Option!16192) tuple2!66560)

(assert (=> b!6383538 (= lt!2371152 (get!22535 lt!2371180))))

(declare-fun Exists!3371 (Int) Bool)

(assert (=> b!6383538 (= (Exists!3371 lambda!352238) (Exists!3371 lambda!352239))))

(declare-fun lt!2371158 () Unit!158535)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1908 (Regex!16301 Regex!16301 List!65202) Unit!158535)

(assert (=> b!6383538 (= lt!2371158 (lemmaExistCutMatchRandMatchRSpecEquivalent!1908 lt!2371171 (regTwo!33114 r!7292) s!2326))))

(declare-fun isDefined!12895 (Option!16192) Bool)

(assert (=> b!6383538 (= (isDefined!12895 lt!2371180) (Exists!3371 lambda!352238))))

(declare-fun findConcatSeparation!2606 (Regex!16301 Regex!16301 List!65202 List!65202 List!65202) Option!16192)

(assert (=> b!6383538 (= lt!2371180 (findConcatSeparation!2606 lt!2371171 (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326))))

(declare-fun lt!2371159 () Unit!158535)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2370 (Regex!16301 Regex!16301 List!65202) Unit!158535)

(assert (=> b!6383538 (= lt!2371159 (lemmaFindConcatSeparationEquivalentToExists!2370 lt!2371171 (regTwo!33114 r!7292) s!2326))))

(declare-fun b!6383539 () Bool)

(declare-fun res!2625873 () Bool)

(assert (=> b!6383539 (=> res!2625873 e!3874921)))

(declare-fun e!3874920 () Bool)

(assert (=> b!6383539 (= res!2625873 e!3874920)))

(declare-fun res!2625887 () Bool)

(assert (=> b!6383539 (=> (not res!2625887) (not e!3874920))))

(assert (=> b!6383539 (= res!2625887 ((_ is Concat!25146) (regOne!33114 r!7292)))))

(declare-fun b!6383540 () Bool)

(declare-fun e!3874935 () Bool)

(declare-fun e!3874931 () Bool)

(assert (=> b!6383540 (= e!3874935 (not e!3874931))))

(declare-fun res!2625877 () Bool)

(assert (=> b!6383540 (=> res!2625877 e!3874931)))

(assert (=> b!6383540 (= res!2625877 (not ((_ is Cons!65080) zl!343)))))

(declare-fun lt!2371165 () Bool)

(assert (=> b!6383540 (= lt!2371178 lt!2371165)))

(assert (=> b!6383540 (= lt!2371165 (matchRSpec!3402 r!7292 s!2326))))

(assert (=> b!6383540 (= lt!2371178 (matchR!8484 r!7292 s!2326))))

(declare-fun lt!2371172 () Unit!158535)

(assert (=> b!6383540 (= lt!2371172 (mainMatchTheorem!3402 r!7292 s!2326))))

(declare-fun b!6383541 () Bool)

(declare-fun res!2625874 () Bool)

(assert (=> b!6383541 (=> res!2625874 e!3874931)))

(declare-fun generalisedUnion!2145 (List!65203) Regex!16301)

(declare-fun unfocusZipperList!1722 (List!65204) List!65203)

(assert (=> b!6383541 (= res!2625874 (not (= r!7292 (generalisedUnion!2145 (unfocusZipperList!1722 zl!343)))))))

(declare-fun b!6383542 () Bool)

(declare-fun res!2625889 () Bool)

(assert (=> b!6383542 (=> res!2625889 e!3874929)))

(declare-fun isEmpty!37212 (List!65203) Bool)

(assert (=> b!6383542 (= res!2625889 (isEmpty!37212 (t!378807 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun tp!1776136 () Bool)

(declare-fun e!3874917 () Bool)

(declare-fun b!6383543 () Bool)

(declare-fun e!3874936 () Bool)

(declare-fun inv!83999 (Context!11370) Bool)

(assert (=> b!6383543 (= e!3874917 (and (inv!83999 (h!71528 zl!343)) e!3874936 tp!1776136))))

(declare-fun setElem!43580 () Context!11370)

(declare-fun setRes!43580 () Bool)

(declare-fun setNonEmpty!43580 () Bool)

(declare-fun tp!1776142 () Bool)

(declare-fun e!3874928 () Bool)

(assert (=> setNonEmpty!43580 (= setRes!43580 (and tp!1776142 (inv!83999 setElem!43580) e!3874928))))

(declare-fun setRest!43580 () (InoxSet Context!11370))

(assert (=> setNonEmpty!43580 (= z!1189 ((_ map or) (store ((as const (Array Context!11370 Bool)) false) setElem!43580 true) setRest!43580))))

(declare-fun b!6383544 () Bool)

(declare-fun res!2625893 () Bool)

(assert (=> b!6383544 (=> res!2625893 e!3874932)))

(assert (=> b!6383544 (= res!2625893 (not (matchR!8484 (regTwo!33114 r!7292) (_2!36583 lt!2371152))))))

(declare-fun b!6383545 () Bool)

(declare-fun res!2625898 () Bool)

(assert (=> b!6383545 (=> res!2625898 e!3874931)))

(declare-fun isEmpty!37213 (List!65204) Bool)

(assert (=> b!6383545 (= res!2625898 (not (isEmpty!37213 (t!378808 zl!343))))))

(declare-fun b!6383546 () Bool)

(declare-fun e!3874927 () Bool)

(declare-fun tp!1776140 () Bool)

(declare-fun tp!1776137 () Bool)

(assert (=> b!6383546 (= e!3874927 (and tp!1776140 tp!1776137))))

(declare-fun b!6383547 () Bool)

(declare-fun Unit!158537 () Unit!158535)

(assert (=> b!6383547 (= e!3874926 Unit!158537)))

(declare-fun lt!2371155 () Unit!158535)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1132 ((InoxSet Context!11370) (InoxSet Context!11370) List!65202) Unit!158535)

(assert (=> b!6383547 (= lt!2371155 (lemmaZipperConcatMatchesSameAsBothZippers!1132 lt!2371150 lt!2371179 (t!378806 s!2326)))))

(declare-fun res!2625878 () Bool)

(declare-fun matchZipper!2313 ((InoxSet Context!11370) List!65202) Bool)

(assert (=> b!6383547 (= res!2625878 (matchZipper!2313 lt!2371150 (t!378806 s!2326)))))

(declare-fun e!3874923 () Bool)

(assert (=> b!6383547 (=> res!2625878 e!3874923)))

(assert (=> b!6383547 (= (matchZipper!2313 ((_ map or) lt!2371150 lt!2371179) (t!378806 s!2326)) e!3874923)))

(declare-fun b!6383548 () Bool)

(declare-fun e!3874925 () Bool)

(declare-fun tp_is_empty!41855 () Bool)

(declare-fun tp!1776139 () Bool)

(assert (=> b!6383548 (= e!3874925 (and tp_is_empty!41855 tp!1776139))))

(declare-fun b!6383549 () Bool)

(declare-fun res!2625880 () Bool)

(assert (=> b!6383549 (=> res!2625880 e!3874924)))

(declare-fun lt!2371167 () Regex!16301)

(assert (=> b!6383549 (= res!2625880 (not (= (unfocusZipper!2043 (Cons!65080 lt!2371169 Nil!65080)) lt!2371167)))))

(assert (=> b!6383550 (= e!3874931 e!3874929)))

(declare-fun res!2625876 () Bool)

(assert (=> b!6383550 (=> res!2625876 e!3874929)))

(declare-fun lt!2371177 () Bool)

(assert (=> b!6383550 (= res!2625876 (or (not (= lt!2371178 lt!2371177)) ((_ is Nil!65078) s!2326)))))

(assert (=> b!6383550 (= (Exists!3371 lambda!352235) (Exists!3371 lambda!352236))))

(declare-fun lt!2371151 () Unit!158535)

(assert (=> b!6383550 (= lt!2371151 (lemmaExistCutMatchRandMatchRSpecEquivalent!1908 (regOne!33114 r!7292) (regTwo!33114 r!7292) s!2326))))

(assert (=> b!6383550 (= lt!2371177 (Exists!3371 lambda!352235))))

(assert (=> b!6383550 (= lt!2371177 (isDefined!12895 (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326)))))

(declare-fun lt!2371182 () Unit!158535)

(assert (=> b!6383550 (= lt!2371182 (lemmaFindConcatSeparationEquivalentToExists!2370 (regOne!33114 r!7292) (regTwo!33114 r!7292) s!2326))))

(declare-fun b!6383551 () Bool)

(assert (=> b!6383551 (= e!3874920 (nullable!6294 (regOne!33114 (regOne!33114 r!7292))))))

(declare-fun res!2625875 () Bool)

(declare-fun e!3874933 () Bool)

(assert (=> start!632402 (=> (not res!2625875) (not e!3874933))))

(declare-fun validRegex!8037 (Regex!16301) Bool)

(assert (=> start!632402 (= res!2625875 (validRegex!8037 r!7292))))

(assert (=> start!632402 e!3874933))

(assert (=> start!632402 e!3874927))

(declare-fun condSetEmpty!43580 () Bool)

(assert (=> start!632402 (= condSetEmpty!43580 (= z!1189 ((as const (Array Context!11370 Bool)) false)))))

(assert (=> start!632402 setRes!43580))

(assert (=> start!632402 e!3874917))

(assert (=> start!632402 e!3874925))

(declare-fun b!6383535 () Bool)

(declare-fun res!2625891 () Bool)

(declare-fun e!3874930 () Bool)

(assert (=> b!6383535 (=> res!2625891 e!3874930)))

(declare-fun lt!2371175 () (InoxSet Context!11370))

(declare-fun lt!2371161 () (InoxSet Context!11370))

(assert (=> b!6383535 (= res!2625891 (not (= (matchZipper!2313 lt!2371175 s!2326) (matchZipper!2313 lt!2371161 (t!378806 s!2326)))))))

(declare-fun b!6383552 () Bool)

(declare-fun res!2625879 () Bool)

(assert (=> b!6383552 (=> res!2625879 e!3874930)))

(declare-fun lt!2371173 () Regex!16301)

(assert (=> b!6383552 (= res!2625879 (not (= lt!2371173 r!7292)))))

(declare-fun b!6383553 () Bool)

(declare-fun tp!1776135 () Bool)

(assert (=> b!6383553 (= e!3874927 tp!1776135)))

(declare-fun setIsEmpty!43580 () Bool)

(assert (=> setIsEmpty!43580 setRes!43580))

(declare-fun b!6383554 () Bool)

(declare-fun e!3874918 () Bool)

(assert (=> b!6383554 (= e!3874918 e!3874930)))

(declare-fun res!2625882 () Bool)

(assert (=> b!6383554 (=> res!2625882 e!3874930)))

(declare-fun lt!2371160 () (InoxSet Context!11370))

(assert (=> b!6383554 (= res!2625882 (not (= lt!2371161 lt!2371160)))))

(declare-fun lt!2371174 () Context!11370)

(assert (=> b!6383554 (= (flatMap!1806 lt!2371175 lambda!352237) (derivationStepZipperUp!1475 lt!2371174 (h!71526 s!2326)))))

(declare-fun lt!2371153 () Unit!158535)

(assert (=> b!6383554 (= lt!2371153 (lemmaFlatMapOnSingletonSet!1332 lt!2371175 lt!2371174 lambda!352237))))

(declare-fun lt!2371156 () (InoxSet Context!11370))

(assert (=> b!6383554 (= lt!2371156 (derivationStepZipperUp!1475 lt!2371174 (h!71526 s!2326)))))

(declare-fun derivationStepZipper!2267 ((InoxSet Context!11370) C!32872) (InoxSet Context!11370))

(assert (=> b!6383554 (= lt!2371161 (derivationStepZipper!2267 lt!2371175 (h!71526 s!2326)))))

(assert (=> b!6383554 (= lt!2371175 (store ((as const (Array Context!11370 Bool)) false) lt!2371174 true))))

(declare-fun lt!2371166 () List!65203)

(assert (=> b!6383554 (= lt!2371174 (Context!11371 (Cons!65079 (reg!16630 (regOne!33114 r!7292)) lt!2371166)))))

(declare-fun b!6383555 () Bool)

(assert (=> b!6383555 (= e!3874923 (matchZipper!2313 lt!2371179 (t!378806 s!2326)))))

(declare-fun b!6383556 () Bool)

(assert (=> b!6383556 (= e!3874927 tp_is_empty!41855)))

(declare-fun b!6383557 () Bool)

(assert (=> b!6383557 (= e!3874933 e!3874935)))

(declare-fun res!2625902 () Bool)

(assert (=> b!6383557 (=> (not res!2625902) (not e!3874935))))

(assert (=> b!6383557 (= res!2625902 (= r!7292 lt!2371173))))

(assert (=> b!6383557 (= lt!2371173 (unfocusZipper!2043 zl!343))))

(declare-fun b!6383558 () Bool)

(declare-fun res!2625897 () Bool)

(assert (=> b!6383558 (=> res!2625897 e!3874931)))

(assert (=> b!6383558 (= res!2625897 (not ((_ is Cons!65079) (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6383559 () Bool)

(declare-fun tp!1776141 () Bool)

(declare-fun tp!1776134 () Bool)

(assert (=> b!6383559 (= e!3874927 (and tp!1776141 tp!1776134))))

(declare-fun b!6383560 () Bool)

(declare-fun e!3874916 () Bool)

(assert (=> b!6383560 (= e!3874916 e!3874919)))

(declare-fun res!2625890 () Bool)

(assert (=> b!6383560 (=> res!2625890 e!3874919)))

(assert (=> b!6383560 (= res!2625890 (not (= (unfocusZipper!2043 (Cons!65080 lt!2371174 Nil!65080)) lt!2371176)))))

(assert (=> b!6383560 (= lt!2371176 (Concat!25146 (reg!16630 (regOne!33114 r!7292)) lt!2371167))))

(declare-fun b!6383561 () Bool)

(declare-fun res!2625895 () Bool)

(assert (=> b!6383561 (=> (not res!2625895) (not e!3874933))))

(declare-fun toList!10085 ((InoxSet Context!11370)) List!65204)

(assert (=> b!6383561 (= res!2625895 (= (toList!10085 z!1189) zl!343))))

(declare-fun b!6383562 () Bool)

(declare-fun res!2625883 () Bool)

(assert (=> b!6383562 (=> res!2625883 e!3874932)))

(assert (=> b!6383562 (= res!2625883 (not (matchR!8484 lt!2371171 (_1!36583 lt!2371152))))))

(declare-fun b!6383563 () Bool)

(assert (=> b!6383563 (= e!3874932 (inv!83999 lt!2371183))))

(declare-fun b!6383564 () Bool)

(declare-fun tp!1776138 () Bool)

(assert (=> b!6383564 (= e!3874936 tp!1776138)))

(declare-fun b!6383565 () Bool)

(assert (=> b!6383565 (= e!3874934 (or (not lt!2371178) lt!2371165))))

(declare-fun b!6383566 () Bool)

(assert (=> b!6383566 (= e!3874921 e!3874918)))

(declare-fun res!2625886 () Bool)

(assert (=> b!6383566 (=> res!2625886 e!3874918)))

(assert (=> b!6383566 (= res!2625886 (not (= lt!2371150 lt!2371160)))))

(assert (=> b!6383566 (= lt!2371160 (derivationStepZipperDown!1549 (reg!16630 (regOne!33114 r!7292)) lt!2371169 (h!71526 s!2326)))))

(assert (=> b!6383566 (= lt!2371169 (Context!11371 lt!2371166))))

(assert (=> b!6383566 (= lt!2371166 (Cons!65079 lt!2371171 (t!378807 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> b!6383566 (= lt!2371171 (Star!16301 (reg!16630 (regOne!33114 r!7292))))))

(declare-fun b!6383567 () Bool)

(declare-fun res!2625892 () Bool)

(assert (=> b!6383567 (=> res!2625892 e!3874921)))

(assert (=> b!6383567 (= res!2625892 (or ((_ is Concat!25146) (regOne!33114 r!7292)) (not ((_ is Star!16301) (regOne!33114 r!7292)))))))

(declare-fun b!6383568 () Bool)

(declare-fun res!2625894 () Bool)

(assert (=> b!6383568 (=> res!2625894 e!3874932)))

(declare-fun isEmpty!37214 (List!65202) Bool)

(assert (=> b!6383568 (= res!2625894 (not (isEmpty!37214 (_1!36583 lt!2371152))))))

(declare-fun b!6383569 () Bool)

(declare-fun tp!1776133 () Bool)

(assert (=> b!6383569 (= e!3874928 tp!1776133)))

(declare-fun b!6383570 () Bool)

(declare-fun res!2625885 () Bool)

(assert (=> b!6383570 (=> res!2625885 e!3874931)))

(declare-fun generalisedConcat!1898 (List!65203) Regex!16301)

(assert (=> b!6383570 (= res!2625885 (not (= r!7292 (generalisedConcat!1898 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun b!6383571 () Bool)

(assert (=> b!6383571 (= e!3874930 e!3874916)))

(declare-fun res!2625901 () Bool)

(assert (=> b!6383571 (=> res!2625901 e!3874916)))

(assert (=> b!6383571 (= res!2625901 (not (= r!7292 lt!2371167)))))

(assert (=> b!6383571 (= lt!2371167 (Concat!25146 lt!2371171 (regTwo!33114 r!7292)))))

(declare-fun b!6383572 () Bool)

(declare-fun res!2625899 () Bool)

(assert (=> b!6383572 (=> res!2625899 e!3874931)))

(assert (=> b!6383572 (= res!2625899 (or ((_ is EmptyExpr!16301) r!7292) ((_ is EmptyLang!16301) r!7292) ((_ is ElementMatch!16301) r!7292) ((_ is Union!16301) r!7292) (not ((_ is Concat!25146) r!7292))))))

(declare-fun b!6383573 () Bool)

(declare-fun Unit!158538 () Unit!158535)

(assert (=> b!6383573 (= e!3874926 Unit!158538)))

(assert (= (and start!632402 res!2625875) b!6383561))

(assert (= (and b!6383561 res!2625895) b!6383557))

(assert (= (and b!6383557 res!2625902) b!6383540))

(assert (= (and b!6383540 (not res!2625877)) b!6383545))

(assert (= (and b!6383545 (not res!2625898)) b!6383570))

(assert (= (and b!6383570 (not res!2625885)) b!6383558))

(assert (= (and b!6383558 (not res!2625897)) b!6383541))

(assert (= (and b!6383541 (not res!2625874)) b!6383572))

(assert (= (and b!6383572 (not res!2625899)) b!6383550))

(assert (= (and b!6383550 (not res!2625876)) b!6383542))

(assert (= (and b!6383542 (not res!2625889)) b!6383534))

(assert (= (and b!6383534 c!1163181) b!6383547))

(assert (= (and b!6383534 (not c!1163181)) b!6383573))

(assert (= (and b!6383547 (not res!2625878)) b!6383555))

(assert (= (and b!6383534 (not res!2625881)) b!6383539))

(assert (= (and b!6383539 res!2625887) b!6383551))

(assert (= (and b!6383539 (not res!2625873)) b!6383567))

(assert (= (and b!6383567 (not res!2625892)) b!6383566))

(assert (= (and b!6383566 (not res!2625886)) b!6383554))

(assert (= (and b!6383554 (not res!2625882)) b!6383535))

(assert (= (and b!6383535 (not res!2625891)) b!6383552))

(assert (= (and b!6383552 (not res!2625879)) b!6383571))

(assert (= (and b!6383571 (not res!2625901)) b!6383560))

(assert (= (and b!6383560 (not res!2625890)) b!6383536))

(assert (= (and b!6383536 (not res!2625888)) b!6383549))

(assert (= (and b!6383549 (not res!2625880)) b!6383537))

(assert (= (and b!6383537 res!2625896) b!6383565))

(assert (= (and b!6383537 (not res!2625884)) b!6383538))

(assert (= (and b!6383538 (not res!2625900)) b!6383562))

(assert (= (and b!6383562 (not res!2625883)) b!6383544))

(assert (= (and b!6383544 (not res!2625893)) b!6383568))

(assert (= (and b!6383568 (not res!2625894)) b!6383563))

(assert (= (and start!632402 ((_ is ElementMatch!16301) r!7292)) b!6383556))

(assert (= (and start!632402 ((_ is Concat!25146) r!7292)) b!6383546))

(assert (= (and start!632402 ((_ is Star!16301) r!7292)) b!6383553))

(assert (= (and start!632402 ((_ is Union!16301) r!7292)) b!6383559))

(assert (= (and start!632402 condSetEmpty!43580) setIsEmpty!43580))

(assert (= (and start!632402 (not condSetEmpty!43580)) setNonEmpty!43580))

(assert (= setNonEmpty!43580 b!6383569))

(assert (= b!6383543 b!6383564))

(assert (= (and start!632402 ((_ is Cons!65080) zl!343)) b!6383543))

(assert (= (and start!632402 ((_ is Cons!65078) s!2326)) b!6383548))

(declare-fun m!7183326 () Bool)

(assert (=> b!6383543 m!7183326))

(declare-fun m!7183328 () Bool)

(assert (=> b!6383541 m!7183328))

(assert (=> b!6383541 m!7183328))

(declare-fun m!7183330 () Bool)

(assert (=> b!6383541 m!7183330))

(declare-fun m!7183332 () Bool)

(assert (=> b!6383566 m!7183332))

(declare-fun m!7183334 () Bool)

(assert (=> b!6383535 m!7183334))

(declare-fun m!7183336 () Bool)

(assert (=> b!6383535 m!7183336))

(declare-fun m!7183338 () Bool)

(assert (=> b!6383542 m!7183338))

(declare-fun m!7183340 () Bool)

(assert (=> b!6383562 m!7183340))

(declare-fun m!7183342 () Bool)

(assert (=> b!6383536 m!7183342))

(declare-fun m!7183344 () Bool)

(assert (=> b!6383536 m!7183344))

(declare-fun m!7183346 () Bool)

(assert (=> b!6383536 m!7183346))

(declare-fun m!7183348 () Bool)

(assert (=> b!6383536 m!7183348))

(declare-fun m!7183350 () Bool)

(assert (=> b!6383536 m!7183350))

(declare-fun m!7183352 () Bool)

(assert (=> b!6383536 m!7183352))

(declare-fun m!7183354 () Bool)

(assert (=> b!6383536 m!7183354))

(declare-fun m!7183356 () Bool)

(assert (=> b!6383536 m!7183356))

(declare-fun m!7183358 () Bool)

(assert (=> b!6383536 m!7183358))

(declare-fun m!7183360 () Bool)

(assert (=> b!6383554 m!7183360))

(declare-fun m!7183362 () Bool)

(assert (=> b!6383554 m!7183362))

(declare-fun m!7183364 () Bool)

(assert (=> b!6383554 m!7183364))

(declare-fun m!7183366 () Bool)

(assert (=> b!6383554 m!7183366))

(declare-fun m!7183368 () Bool)

(assert (=> b!6383554 m!7183368))

(declare-fun m!7183370 () Bool)

(assert (=> b!6383537 m!7183370))

(declare-fun m!7183372 () Bool)

(assert (=> b!6383537 m!7183372))

(declare-fun m!7183374 () Bool)

(assert (=> b!6383537 m!7183374))

(declare-fun m!7183376 () Bool)

(assert (=> setNonEmpty!43580 m!7183376))

(declare-fun m!7183378 () Bool)

(assert (=> b!6383534 m!7183378))

(declare-fun m!7183380 () Bool)

(assert (=> b!6383534 m!7183380))

(declare-fun m!7183382 () Bool)

(assert (=> b!6383534 m!7183382))

(declare-fun m!7183384 () Bool)

(assert (=> b!6383534 m!7183384))

(declare-fun m!7183386 () Bool)

(assert (=> b!6383534 m!7183386))

(declare-fun m!7183388 () Bool)

(assert (=> b!6383534 m!7183388))

(declare-fun m!7183390 () Bool)

(assert (=> b!6383534 m!7183390))

(declare-fun m!7183392 () Bool)

(assert (=> b!6383557 m!7183392))

(declare-fun m!7183394 () Bool)

(assert (=> b!6383544 m!7183394))

(declare-fun m!7183396 () Bool)

(assert (=> b!6383568 m!7183396))

(declare-fun m!7183398 () Bool)

(assert (=> b!6383538 m!7183398))

(declare-fun m!7183400 () Bool)

(assert (=> b!6383538 m!7183400))

(declare-fun m!7183402 () Bool)

(assert (=> b!6383538 m!7183402))

(assert (=> b!6383538 m!7183402))

(declare-fun m!7183404 () Bool)

(assert (=> b!6383538 m!7183404))

(declare-fun m!7183406 () Bool)

(assert (=> b!6383538 m!7183406))

(declare-fun m!7183408 () Bool)

(assert (=> b!6383538 m!7183408))

(declare-fun m!7183410 () Bool)

(assert (=> b!6383538 m!7183410))

(declare-fun m!7183412 () Bool)

(assert (=> b!6383538 m!7183412))

(declare-fun m!7183414 () Bool)

(assert (=> b!6383545 m!7183414))

(declare-fun m!7183416 () Bool)

(assert (=> b!6383550 m!7183416))

(declare-fun m!7183418 () Bool)

(assert (=> b!6383550 m!7183418))

(declare-fun m!7183420 () Bool)

(assert (=> b!6383550 m!7183420))

(declare-fun m!7183422 () Bool)

(assert (=> b!6383550 m!7183422))

(assert (=> b!6383550 m!7183416))

(declare-fun m!7183424 () Bool)

(assert (=> b!6383550 m!7183424))

(declare-fun m!7183426 () Bool)

(assert (=> b!6383550 m!7183426))

(assert (=> b!6383550 m!7183426))

(declare-fun m!7183428 () Bool)

(assert (=> b!6383549 m!7183428))

(declare-fun m!7183430 () Bool)

(assert (=> b!6383540 m!7183430))

(declare-fun m!7183432 () Bool)

(assert (=> b!6383540 m!7183432))

(declare-fun m!7183434 () Bool)

(assert (=> b!6383540 m!7183434))

(declare-fun m!7183436 () Bool)

(assert (=> b!6383551 m!7183436))

(declare-fun m!7183438 () Bool)

(assert (=> b!6383547 m!7183438))

(declare-fun m!7183440 () Bool)

(assert (=> b!6383547 m!7183440))

(declare-fun m!7183442 () Bool)

(assert (=> b!6383547 m!7183442))

(declare-fun m!7183444 () Bool)

(assert (=> b!6383570 m!7183444))

(declare-fun m!7183446 () Bool)

(assert (=> b!6383555 m!7183446))

(declare-fun m!7183448 () Bool)

(assert (=> start!632402 m!7183448))

(declare-fun m!7183450 () Bool)

(assert (=> b!6383560 m!7183450))

(declare-fun m!7183452 () Bool)

(assert (=> b!6383563 m!7183452))

(declare-fun m!7183454 () Bool)

(assert (=> b!6383561 m!7183454))

(check-sat (not b!6383546) (not b!6383561) (not start!632402) (not b!6383549) (not b!6383559) tp_is_empty!41855 (not b!6383568) (not b!6383563) (not b!6383534) (not b!6383570) (not b!6383545) (not b!6383555) (not b!6383560) (not b!6383538) (not b!6383537) (not b!6383564) (not setNonEmpty!43580) (not b!6383557) (not b!6383550) (not b!6383542) (not b!6383547) (not b!6383535) (not b!6383551) (not b!6383541) (not b!6383540) (not b!6383536) (not b!6383554) (not b!6383548) (not b!6383569) (not b!6383553) (not b!6383562) (not b!6383566) (not b!6383543) (not b!6383544))
(check-sat)
(get-model)

(declare-fun b!6383936 () Bool)

(declare-fun e!3875143 () Regex!16301)

(assert (=> b!6383936 (= e!3875143 EmptyExpr!16301)))

(declare-fun b!6383937 () Bool)

(declare-fun e!3875144 () Regex!16301)

(assert (=> b!6383937 (= e!3875144 (h!71527 (exprs!6185 (h!71528 zl!343))))))

(declare-fun b!6383938 () Bool)

(declare-fun e!3875148 () Bool)

(declare-fun lt!2371243 () Regex!16301)

(declare-fun head!13093 (List!65203) Regex!16301)

(assert (=> b!6383938 (= e!3875148 (= lt!2371243 (head!13093 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6383939 () Bool)

(assert (=> b!6383939 (= e!3875143 (Concat!25146 (h!71527 (exprs!6185 (h!71528 zl!343))) (generalisedConcat!1898 (t!378807 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun b!6383940 () Bool)

(assert (=> b!6383940 (= e!3875144 e!3875143)))

(declare-fun c!1163294 () Bool)

(assert (=> b!6383940 (= c!1163294 ((_ is Cons!65079) (exprs!6185 (h!71528 zl!343))))))

(declare-fun b!6383941 () Bool)

(declare-fun e!3875145 () Bool)

(declare-fun isEmptyExpr!1701 (Regex!16301) Bool)

(assert (=> b!6383941 (= e!3875145 (isEmptyExpr!1701 lt!2371243))))

(declare-fun b!6383942 () Bool)

(declare-fun isConcat!1224 (Regex!16301) Bool)

(assert (=> b!6383942 (= e!3875148 (isConcat!1224 lt!2371243))))

(declare-fun b!6383944 () Bool)

(declare-fun e!3875146 () Bool)

(assert (=> b!6383944 (= e!3875146 (isEmpty!37212 (t!378807 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6383945 () Bool)

(assert (=> b!6383945 (= e!3875145 e!3875148)))

(declare-fun c!1163296 () Bool)

(declare-fun tail!12178 (List!65203) List!65203)

(assert (=> b!6383945 (= c!1163296 (isEmpty!37212 (tail!12178 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun d!2001302 () Bool)

(declare-fun e!3875147 () Bool)

(assert (=> d!2001302 e!3875147))

(declare-fun res!2626040 () Bool)

(assert (=> d!2001302 (=> (not res!2626040) (not e!3875147))))

(assert (=> d!2001302 (= res!2626040 (validRegex!8037 lt!2371243))))

(assert (=> d!2001302 (= lt!2371243 e!3875144)))

(declare-fun c!1163295 () Bool)

(assert (=> d!2001302 (= c!1163295 e!3875146)))

(declare-fun res!2626039 () Bool)

(assert (=> d!2001302 (=> (not res!2626039) (not e!3875146))))

(assert (=> d!2001302 (= res!2626039 ((_ is Cons!65079) (exprs!6185 (h!71528 zl!343))))))

(declare-fun lambda!352276 () Int)

(declare-fun forall!15479 (List!65203 Int) Bool)

(assert (=> d!2001302 (forall!15479 (exprs!6185 (h!71528 zl!343)) lambda!352276)))

(assert (=> d!2001302 (= (generalisedConcat!1898 (exprs!6185 (h!71528 zl!343))) lt!2371243)))

(declare-fun b!6383943 () Bool)

(assert (=> b!6383943 (= e!3875147 e!3875145)))

(declare-fun c!1163297 () Bool)

(assert (=> b!6383943 (= c!1163297 (isEmpty!37212 (exprs!6185 (h!71528 zl!343))))))

(assert (= (and d!2001302 res!2626039) b!6383944))

(assert (= (and d!2001302 c!1163295) b!6383937))

(assert (= (and d!2001302 (not c!1163295)) b!6383940))

(assert (= (and b!6383940 c!1163294) b!6383939))

(assert (= (and b!6383940 (not c!1163294)) b!6383936))

(assert (= (and d!2001302 res!2626040) b!6383943))

(assert (= (and b!6383943 c!1163297) b!6383941))

(assert (= (and b!6383943 (not c!1163297)) b!6383945))

(assert (= (and b!6383945 c!1163296) b!6383938))

(assert (= (and b!6383945 (not c!1163296)) b!6383942))

(declare-fun m!7183744 () Bool)

(assert (=> b!6383938 m!7183744))

(declare-fun m!7183746 () Bool)

(assert (=> b!6383941 m!7183746))

(declare-fun m!7183748 () Bool)

(assert (=> b!6383939 m!7183748))

(declare-fun m!7183750 () Bool)

(assert (=> b!6383943 m!7183750))

(declare-fun m!7183752 () Bool)

(assert (=> b!6383945 m!7183752))

(assert (=> b!6383945 m!7183752))

(declare-fun m!7183754 () Bool)

(assert (=> b!6383945 m!7183754))

(declare-fun m!7183756 () Bool)

(assert (=> b!6383942 m!7183756))

(declare-fun m!7183758 () Bool)

(assert (=> d!2001302 m!7183758))

(declare-fun m!7183760 () Bool)

(assert (=> d!2001302 m!7183760))

(assert (=> b!6383944 m!7183338))

(assert (=> b!6383570 d!2001302))

(declare-fun d!2001320 () Bool)

(declare-fun lt!2371247 () Regex!16301)

(assert (=> d!2001320 (validRegex!8037 lt!2371247)))

(assert (=> d!2001320 (= lt!2371247 (generalisedUnion!2145 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080))))))

(assert (=> d!2001320 (= (unfocusZipper!2043 (Cons!65080 lt!2371169 Nil!65080)) lt!2371247)))

(declare-fun bs!1597558 () Bool)

(assert (= bs!1597558 d!2001320))

(declare-fun m!7183778 () Bool)

(assert (=> bs!1597558 m!7183778))

(declare-fun m!7183784 () Bool)

(assert (=> bs!1597558 m!7183784))

(assert (=> bs!1597558 m!7183784))

(declare-fun m!7183788 () Bool)

(assert (=> bs!1597558 m!7183788))

(assert (=> b!6383549 d!2001320))

(declare-fun d!2001328 () Bool)

(assert (=> d!2001328 (= (isEmpty!37214 (_1!36583 lt!2371152)) ((_ is Nil!65078) (_1!36583 lt!2371152)))))

(assert (=> b!6383568 d!2001328))

(declare-fun d!2001330 () Bool)

(declare-fun e!3875177 () Bool)

(assert (=> d!2001330 (= (matchZipper!2313 ((_ map or) lt!2371150 lt!2371179) (t!378806 s!2326)) e!3875177)))

(declare-fun res!2626056 () Bool)

(assert (=> d!2001330 (=> res!2626056 e!3875177)))

(assert (=> d!2001330 (= res!2626056 (matchZipper!2313 lt!2371150 (t!378806 s!2326)))))

(declare-fun lt!2371253 () Unit!158535)

(declare-fun choose!47503 ((InoxSet Context!11370) (InoxSet Context!11370) List!65202) Unit!158535)

(assert (=> d!2001330 (= lt!2371253 (choose!47503 lt!2371150 lt!2371179 (t!378806 s!2326)))))

(assert (=> d!2001330 (= (lemmaZipperConcatMatchesSameAsBothZippers!1132 lt!2371150 lt!2371179 (t!378806 s!2326)) lt!2371253)))

(declare-fun b!6383995 () Bool)

(assert (=> b!6383995 (= e!3875177 (matchZipper!2313 lt!2371179 (t!378806 s!2326)))))

(assert (= (and d!2001330 (not res!2626056)) b!6383995))

(assert (=> d!2001330 m!7183442))

(assert (=> d!2001330 m!7183440))

(declare-fun m!7183828 () Bool)

(assert (=> d!2001330 m!7183828))

(assert (=> b!6383995 m!7183446))

(assert (=> b!6383547 d!2001330))

(declare-fun d!2001342 () Bool)

(declare-fun c!1163320 () Bool)

(assert (=> d!2001342 (= c!1163320 (isEmpty!37214 (t!378806 s!2326)))))

(declare-fun e!3875209 () Bool)

(assert (=> d!2001342 (= (matchZipper!2313 lt!2371150 (t!378806 s!2326)) e!3875209)))

(declare-fun b!6384064 () Bool)

(declare-fun nullableZipper!2066 ((InoxSet Context!11370)) Bool)

(assert (=> b!6384064 (= e!3875209 (nullableZipper!2066 lt!2371150))))

(declare-fun b!6384067 () Bool)

(declare-fun head!13094 (List!65202) C!32872)

(declare-fun tail!12179 (List!65202) List!65202)

(assert (=> b!6384067 (= e!3875209 (matchZipper!2313 (derivationStepZipper!2267 lt!2371150 (head!13094 (t!378806 s!2326))) (tail!12179 (t!378806 s!2326))))))

(assert (= (and d!2001342 c!1163320) b!6384064))

(assert (= (and d!2001342 (not c!1163320)) b!6384067))

(declare-fun m!7183842 () Bool)

(assert (=> d!2001342 m!7183842))

(declare-fun m!7183844 () Bool)

(assert (=> b!6384064 m!7183844))

(declare-fun m!7183846 () Bool)

(assert (=> b!6384067 m!7183846))

(assert (=> b!6384067 m!7183846))

(declare-fun m!7183848 () Bool)

(assert (=> b!6384067 m!7183848))

(declare-fun m!7183850 () Bool)

(assert (=> b!6384067 m!7183850))

(assert (=> b!6384067 m!7183848))

(assert (=> b!6384067 m!7183850))

(declare-fun m!7183852 () Bool)

(assert (=> b!6384067 m!7183852))

(assert (=> b!6383547 d!2001342))

(declare-fun d!2001354 () Bool)

(declare-fun c!1163321 () Bool)

(assert (=> d!2001354 (= c!1163321 (isEmpty!37214 (t!378806 s!2326)))))

(declare-fun e!3875211 () Bool)

(assert (=> d!2001354 (= (matchZipper!2313 ((_ map or) lt!2371150 lt!2371179) (t!378806 s!2326)) e!3875211)))

(declare-fun b!6384070 () Bool)

(assert (=> b!6384070 (= e!3875211 (nullableZipper!2066 ((_ map or) lt!2371150 lt!2371179)))))

(declare-fun b!6384071 () Bool)

(assert (=> b!6384071 (= e!3875211 (matchZipper!2313 (derivationStepZipper!2267 ((_ map or) lt!2371150 lt!2371179) (head!13094 (t!378806 s!2326))) (tail!12179 (t!378806 s!2326))))))

(assert (= (and d!2001354 c!1163321) b!6384070))

(assert (= (and d!2001354 (not c!1163321)) b!6384071))

(assert (=> d!2001354 m!7183842))

(declare-fun m!7183854 () Bool)

(assert (=> b!6384070 m!7183854))

(assert (=> b!6384071 m!7183846))

(assert (=> b!6384071 m!7183846))

(declare-fun m!7183856 () Bool)

(assert (=> b!6384071 m!7183856))

(assert (=> b!6384071 m!7183850))

(assert (=> b!6384071 m!7183856))

(assert (=> b!6384071 m!7183850))

(declare-fun m!7183858 () Bool)

(assert (=> b!6384071 m!7183858))

(assert (=> b!6383547 d!2001354))

(declare-fun b!6384094 () Bool)

(declare-fun e!3875229 () (InoxSet Context!11370))

(assert (=> b!6384094 (= e!3875229 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6384095 () Bool)

(declare-fun call!545588 () (InoxSet Context!11370))

(assert (=> b!6384095 (= e!3875229 call!545588)))

(declare-fun b!6384096 () Bool)

(declare-fun e!3875226 () (InoxSet Context!11370))

(declare-fun e!3875224 () (InoxSet Context!11370))

(assert (=> b!6384096 (= e!3875226 e!3875224)))

(declare-fun c!1163336 () Bool)

(assert (=> b!6384096 (= c!1163336 ((_ is Union!16301) (reg!16630 (regOne!33114 r!7292))))))

(declare-fun b!6384097 () Bool)

(declare-fun e!3875227 () (InoxSet Context!11370))

(declare-fun call!545587 () (InoxSet Context!11370))

(declare-fun call!545589 () (InoxSet Context!11370))

(assert (=> b!6384097 (= e!3875227 ((_ map or) call!545587 call!545589))))

(declare-fun b!6384098 () Bool)

(declare-fun call!545591 () (InoxSet Context!11370))

(assert (=> b!6384098 (= e!3875224 ((_ map or) call!545591 call!545587))))

(declare-fun bm!545581 () Bool)

(assert (=> bm!545581 (= call!545589 call!545591)))

(declare-fun c!1163335 () Bool)

(declare-fun call!545590 () List!65203)

(declare-fun bm!545582 () Bool)

(declare-fun c!1163332 () Bool)

(declare-fun $colon$colon!2161 (List!65203 Regex!16301) List!65203)

(assert (=> bm!545582 (= call!545590 ($colon$colon!2161 (exprs!6185 lt!2371169) (ite (or c!1163332 c!1163335) (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (regOne!33114 r!7292)))))))

(declare-fun b!6384099 () Bool)

(declare-fun e!3875225 () (InoxSet Context!11370))

(assert (=> b!6384099 (= e!3875225 call!545588)))

(declare-fun d!2001356 () Bool)

(declare-fun c!1163333 () Bool)

(assert (=> d!2001356 (= c!1163333 (and ((_ is ElementMatch!16301) (reg!16630 (regOne!33114 r!7292))) (= (c!1163182 (reg!16630 (regOne!33114 r!7292))) (h!71526 s!2326))))))

(assert (=> d!2001356 (= (derivationStepZipperDown!1549 (reg!16630 (regOne!33114 r!7292)) lt!2371169 (h!71526 s!2326)) e!3875226)))

(declare-fun bm!545583 () Bool)

(assert (=> bm!545583 (= call!545588 call!545589)))

(declare-fun bm!545584 () Bool)

(assert (=> bm!545584 (= call!545587 (derivationStepZipperDown!1549 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292)))) (ite c!1163336 lt!2371169 (Context!11371 call!545590)) (h!71526 s!2326)))))

(declare-fun b!6384100 () Bool)

(declare-fun e!3875228 () Bool)

(assert (=> b!6384100 (= c!1163332 e!3875228)))

(declare-fun res!2626067 () Bool)

(assert (=> b!6384100 (=> (not res!2626067) (not e!3875228))))

(assert (=> b!6384100 (= res!2626067 ((_ is Concat!25146) (reg!16630 (regOne!33114 r!7292))))))

(assert (=> b!6384100 (= e!3875224 e!3875227)))

(declare-fun bm!545585 () Bool)

(declare-fun call!545586 () List!65203)

(assert (=> bm!545585 (= call!545591 (derivationStepZipperDown!1549 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292)))))) (ite (or c!1163336 c!1163332) lt!2371169 (Context!11371 call!545586)) (h!71526 s!2326)))))

(declare-fun b!6384101 () Bool)

(assert (=> b!6384101 (= e!3875226 (store ((as const (Array Context!11370 Bool)) false) lt!2371169 true))))

(declare-fun bm!545586 () Bool)

(assert (=> bm!545586 (= call!545586 call!545590)))

(declare-fun b!6384102 () Bool)

(assert (=> b!6384102 (= e!3875228 (nullable!6294 (regOne!33114 (reg!16630 (regOne!33114 r!7292)))))))

(declare-fun b!6384103 () Bool)

(assert (=> b!6384103 (= e!3875227 e!3875225)))

(assert (=> b!6384103 (= c!1163335 ((_ is Concat!25146) (reg!16630 (regOne!33114 r!7292))))))

(declare-fun b!6384104 () Bool)

(declare-fun c!1163334 () Bool)

(assert (=> b!6384104 (= c!1163334 ((_ is Star!16301) (reg!16630 (regOne!33114 r!7292))))))

(assert (=> b!6384104 (= e!3875225 e!3875229)))

(assert (= (and d!2001356 c!1163333) b!6384101))

(assert (= (and d!2001356 (not c!1163333)) b!6384096))

(assert (= (and b!6384096 c!1163336) b!6384098))

(assert (= (and b!6384096 (not c!1163336)) b!6384100))

(assert (= (and b!6384100 res!2626067) b!6384102))

(assert (= (and b!6384100 c!1163332) b!6384097))

(assert (= (and b!6384100 (not c!1163332)) b!6384103))

(assert (= (and b!6384103 c!1163335) b!6384099))

(assert (= (and b!6384103 (not c!1163335)) b!6384104))

(assert (= (and b!6384104 c!1163334) b!6384095))

(assert (= (and b!6384104 (not c!1163334)) b!6384094))

(assert (= (or b!6384099 b!6384095) bm!545586))

(assert (= (or b!6384099 b!6384095) bm!545583))

(assert (= (or b!6384097 bm!545586) bm!545582))

(assert (= (or b!6384097 bm!545583) bm!545581))

(assert (= (or b!6384098 b!6384097) bm!545584))

(assert (= (or b!6384098 bm!545581) bm!545585))

(declare-fun m!7183860 () Bool)

(assert (=> bm!545584 m!7183860))

(assert (=> b!6384101 m!7183356))

(declare-fun m!7183862 () Bool)

(assert (=> bm!545585 m!7183862))

(declare-fun m!7183864 () Bool)

(assert (=> b!6384102 m!7183864))

(declare-fun m!7183866 () Bool)

(assert (=> bm!545582 m!7183866))

(assert (=> b!6383566 d!2001356))

(declare-fun d!2001358 () Bool)

(assert (=> d!2001358 (= (isEmpty!37213 (t!378808 zl!343)) ((_ is Nil!65080) (t!378808 zl!343)))))

(assert (=> b!6383545 d!2001358))

(declare-fun b!6384133 () Bool)

(declare-fun e!3875247 () Bool)

(declare-fun e!3875245 () Bool)

(assert (=> b!6384133 (= e!3875247 e!3875245)))

(declare-fun res!2626089 () Bool)

(assert (=> b!6384133 (=> res!2626089 e!3875245)))

(declare-fun call!545594 () Bool)

(assert (=> b!6384133 (= res!2626089 call!545594)))

(declare-fun b!6384134 () Bool)

(declare-fun res!2626088 () Bool)

(declare-fun e!3875249 () Bool)

(assert (=> b!6384134 (=> res!2626088 e!3875249)))

(assert (=> b!6384134 (= res!2626088 (not ((_ is ElementMatch!16301) (regTwo!33114 r!7292))))))

(declare-fun e!3875250 () Bool)

(assert (=> b!6384134 (= e!3875250 e!3875249)))

(declare-fun d!2001360 () Bool)

(declare-fun e!3875248 () Bool)

(assert (=> d!2001360 e!3875248))

(declare-fun c!1163343 () Bool)

(assert (=> d!2001360 (= c!1163343 ((_ is EmptyExpr!16301) (regTwo!33114 r!7292)))))

(declare-fun lt!2371258 () Bool)

(declare-fun e!3875246 () Bool)

(assert (=> d!2001360 (= lt!2371258 e!3875246)))

(declare-fun c!1163344 () Bool)

(assert (=> d!2001360 (= c!1163344 (isEmpty!37214 (_2!36583 lt!2371152)))))

(assert (=> d!2001360 (validRegex!8037 (regTwo!33114 r!7292))))

(assert (=> d!2001360 (= (matchR!8484 (regTwo!33114 r!7292) (_2!36583 lt!2371152)) lt!2371258)))

(declare-fun b!6384135 () Bool)

(declare-fun derivativeStep!5005 (Regex!16301 C!32872) Regex!16301)

(assert (=> b!6384135 (= e!3875246 (matchR!8484 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152))) (tail!12179 (_2!36583 lt!2371152))))))

(declare-fun b!6384136 () Bool)

(assert (=> b!6384136 (= e!3875248 e!3875250)))

(declare-fun c!1163345 () Bool)

(assert (=> b!6384136 (= c!1163345 ((_ is EmptyLang!16301) (regTwo!33114 r!7292)))))

(declare-fun b!6384137 () Bool)

(assert (=> b!6384137 (= e!3875248 (= lt!2371258 call!545594))))

(declare-fun b!6384138 () Bool)

(assert (=> b!6384138 (= e!3875249 e!3875247)))

(declare-fun res!2626090 () Bool)

(assert (=> b!6384138 (=> (not res!2626090) (not e!3875247))))

(assert (=> b!6384138 (= res!2626090 (not lt!2371258))))

(declare-fun b!6384139 () Bool)

(declare-fun res!2626091 () Bool)

(assert (=> b!6384139 (=> res!2626091 e!3875249)))

(declare-fun e!3875244 () Bool)

(assert (=> b!6384139 (= res!2626091 e!3875244)))

(declare-fun res!2626084 () Bool)

(assert (=> b!6384139 (=> (not res!2626084) (not e!3875244))))

(assert (=> b!6384139 (= res!2626084 lt!2371258)))

(declare-fun b!6384140 () Bool)

(declare-fun res!2626085 () Bool)

(assert (=> b!6384140 (=> (not res!2626085) (not e!3875244))))

(assert (=> b!6384140 (= res!2626085 (isEmpty!37214 (tail!12179 (_2!36583 lt!2371152))))))

(declare-fun bm!545589 () Bool)

(assert (=> bm!545589 (= call!545594 (isEmpty!37214 (_2!36583 lt!2371152)))))

(declare-fun b!6384141 () Bool)

(declare-fun res!2626086 () Bool)

(assert (=> b!6384141 (=> (not res!2626086) (not e!3875244))))

(assert (=> b!6384141 (= res!2626086 (not call!545594))))

(declare-fun b!6384142 () Bool)

(assert (=> b!6384142 (= e!3875246 (nullable!6294 (regTwo!33114 r!7292)))))

(declare-fun b!6384143 () Bool)

(assert (=> b!6384143 (= e!3875250 (not lt!2371258))))

(declare-fun b!6384144 () Bool)

(declare-fun res!2626087 () Bool)

(assert (=> b!6384144 (=> res!2626087 e!3875245)))

(assert (=> b!6384144 (= res!2626087 (not (isEmpty!37214 (tail!12179 (_2!36583 lt!2371152)))))))

(declare-fun b!6384145 () Bool)

(assert (=> b!6384145 (= e!3875244 (= (head!13094 (_2!36583 lt!2371152)) (c!1163182 (regTwo!33114 r!7292))))))

(declare-fun b!6384146 () Bool)

(assert (=> b!6384146 (= e!3875245 (not (= (head!13094 (_2!36583 lt!2371152)) (c!1163182 (regTwo!33114 r!7292)))))))

(assert (= (and d!2001360 c!1163344) b!6384142))

(assert (= (and d!2001360 (not c!1163344)) b!6384135))

(assert (= (and d!2001360 c!1163343) b!6384137))

(assert (= (and d!2001360 (not c!1163343)) b!6384136))

(assert (= (and b!6384136 c!1163345) b!6384143))

(assert (= (and b!6384136 (not c!1163345)) b!6384134))

(assert (= (and b!6384134 (not res!2626088)) b!6384139))

(assert (= (and b!6384139 res!2626084) b!6384141))

(assert (= (and b!6384141 res!2626086) b!6384140))

(assert (= (and b!6384140 res!2626085) b!6384145))

(assert (= (and b!6384139 (not res!2626091)) b!6384138))

(assert (= (and b!6384138 res!2626090) b!6384133))

(assert (= (and b!6384133 (not res!2626089)) b!6384144))

(assert (= (and b!6384144 (not res!2626087)) b!6384146))

(assert (= (or b!6384137 b!6384133 b!6384141) bm!545589))

(declare-fun m!7183868 () Bool)

(assert (=> b!6384135 m!7183868))

(assert (=> b!6384135 m!7183868))

(declare-fun m!7183870 () Bool)

(assert (=> b!6384135 m!7183870))

(declare-fun m!7183872 () Bool)

(assert (=> b!6384135 m!7183872))

(assert (=> b!6384135 m!7183870))

(assert (=> b!6384135 m!7183872))

(declare-fun m!7183874 () Bool)

(assert (=> b!6384135 m!7183874))

(declare-fun m!7183876 () Bool)

(assert (=> bm!545589 m!7183876))

(assert (=> b!6384140 m!7183872))

(assert (=> b!6384140 m!7183872))

(declare-fun m!7183878 () Bool)

(assert (=> b!6384140 m!7183878))

(declare-fun m!7183880 () Bool)

(assert (=> b!6384142 m!7183880))

(assert (=> b!6384145 m!7183868))

(assert (=> d!2001360 m!7183876))

(declare-fun m!7183882 () Bool)

(assert (=> d!2001360 m!7183882))

(assert (=> b!6384144 m!7183872))

(assert (=> b!6384144 m!7183872))

(assert (=> b!6384144 m!7183878))

(assert (=> b!6384146 m!7183868))

(assert (=> b!6383544 d!2001360))

(declare-fun bs!1597589 () Bool)

(declare-fun d!2001362 () Bool)

(assert (= bs!1597589 (and d!2001362 d!2001302)))

(declare-fun lambda!352282 () Int)

(assert (=> bs!1597589 (= lambda!352282 lambda!352276)))

(assert (=> d!2001362 (= (inv!83999 lt!2371183) (forall!15479 (exprs!6185 lt!2371183) lambda!352282))))

(declare-fun bs!1597590 () Bool)

(assert (= bs!1597590 d!2001362))

(declare-fun m!7183884 () Bool)

(assert (=> bs!1597590 m!7183884))

(assert (=> b!6383563 d!2001362))

(declare-fun bs!1597591 () Bool)

(declare-fun d!2001364 () Bool)

(assert (= bs!1597591 (and d!2001364 d!2001302)))

(declare-fun lambda!352283 () Int)

(assert (=> bs!1597591 (= lambda!352283 lambda!352276)))

(declare-fun bs!1597592 () Bool)

(assert (= bs!1597592 (and d!2001364 d!2001362)))

(assert (=> bs!1597592 (= lambda!352283 lambda!352282)))

(assert (=> d!2001364 (= (inv!83999 setElem!43580) (forall!15479 (exprs!6185 setElem!43580) lambda!352283))))

(declare-fun bs!1597593 () Bool)

(assert (= bs!1597593 d!2001364))

(declare-fun m!7183886 () Bool)

(assert (=> bs!1597593 m!7183886))

(assert (=> setNonEmpty!43580 d!2001364))

(declare-fun bs!1597594 () Bool)

(declare-fun d!2001366 () Bool)

(assert (= bs!1597594 (and d!2001366 d!2001302)))

(declare-fun lambda!352284 () Int)

(assert (=> bs!1597594 (= lambda!352284 lambda!352276)))

(declare-fun bs!1597595 () Bool)

(assert (= bs!1597595 (and d!2001366 d!2001362)))

(assert (=> bs!1597595 (= lambda!352284 lambda!352282)))

(declare-fun bs!1597596 () Bool)

(assert (= bs!1597596 (and d!2001366 d!2001364)))

(assert (=> bs!1597596 (= lambda!352284 lambda!352283)))

(assert (=> d!2001366 (= (inv!83999 (h!71528 zl!343)) (forall!15479 (exprs!6185 (h!71528 zl!343)) lambda!352284))))

(declare-fun bs!1597597 () Bool)

(assert (= bs!1597597 d!2001366))

(declare-fun m!7183888 () Bool)

(assert (=> bs!1597597 m!7183888))

(assert (=> b!6383543 d!2001366))

(declare-fun b!6384147 () Bool)

(declare-fun e!3875254 () Bool)

(declare-fun e!3875252 () Bool)

(assert (=> b!6384147 (= e!3875254 e!3875252)))

(declare-fun res!2626097 () Bool)

(assert (=> b!6384147 (=> res!2626097 e!3875252)))

(declare-fun call!545595 () Bool)

(assert (=> b!6384147 (= res!2626097 call!545595)))

(declare-fun b!6384148 () Bool)

(declare-fun res!2626096 () Bool)

(declare-fun e!3875256 () Bool)

(assert (=> b!6384148 (=> res!2626096 e!3875256)))

(assert (=> b!6384148 (= res!2626096 (not ((_ is ElementMatch!16301) lt!2371171)))))

(declare-fun e!3875257 () Bool)

(assert (=> b!6384148 (= e!3875257 e!3875256)))

(declare-fun d!2001368 () Bool)

(declare-fun e!3875255 () Bool)

(assert (=> d!2001368 e!3875255))

(declare-fun c!1163346 () Bool)

(assert (=> d!2001368 (= c!1163346 ((_ is EmptyExpr!16301) lt!2371171))))

(declare-fun lt!2371259 () Bool)

(declare-fun e!3875253 () Bool)

(assert (=> d!2001368 (= lt!2371259 e!3875253)))

(declare-fun c!1163347 () Bool)

(assert (=> d!2001368 (= c!1163347 (isEmpty!37214 (_1!36583 lt!2371152)))))

(assert (=> d!2001368 (validRegex!8037 lt!2371171)))

(assert (=> d!2001368 (= (matchR!8484 lt!2371171 (_1!36583 lt!2371152)) lt!2371259)))

(declare-fun b!6384149 () Bool)

(assert (=> b!6384149 (= e!3875253 (matchR!8484 (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152))) (tail!12179 (_1!36583 lt!2371152))))))

(declare-fun b!6384150 () Bool)

(assert (=> b!6384150 (= e!3875255 e!3875257)))

(declare-fun c!1163348 () Bool)

(assert (=> b!6384150 (= c!1163348 ((_ is EmptyLang!16301) lt!2371171))))

(declare-fun b!6384151 () Bool)

(assert (=> b!6384151 (= e!3875255 (= lt!2371259 call!545595))))

(declare-fun b!6384152 () Bool)

(assert (=> b!6384152 (= e!3875256 e!3875254)))

(declare-fun res!2626098 () Bool)

(assert (=> b!6384152 (=> (not res!2626098) (not e!3875254))))

(assert (=> b!6384152 (= res!2626098 (not lt!2371259))))

(declare-fun b!6384153 () Bool)

(declare-fun res!2626099 () Bool)

(assert (=> b!6384153 (=> res!2626099 e!3875256)))

(declare-fun e!3875251 () Bool)

(assert (=> b!6384153 (= res!2626099 e!3875251)))

(declare-fun res!2626092 () Bool)

(assert (=> b!6384153 (=> (not res!2626092) (not e!3875251))))

(assert (=> b!6384153 (= res!2626092 lt!2371259)))

(declare-fun b!6384154 () Bool)

(declare-fun res!2626093 () Bool)

(assert (=> b!6384154 (=> (not res!2626093) (not e!3875251))))

(assert (=> b!6384154 (= res!2626093 (isEmpty!37214 (tail!12179 (_1!36583 lt!2371152))))))

(declare-fun bm!545590 () Bool)

(assert (=> bm!545590 (= call!545595 (isEmpty!37214 (_1!36583 lt!2371152)))))

(declare-fun b!6384155 () Bool)

(declare-fun res!2626094 () Bool)

(assert (=> b!6384155 (=> (not res!2626094) (not e!3875251))))

(assert (=> b!6384155 (= res!2626094 (not call!545595))))

(declare-fun b!6384156 () Bool)

(assert (=> b!6384156 (= e!3875253 (nullable!6294 lt!2371171))))

(declare-fun b!6384157 () Bool)

(assert (=> b!6384157 (= e!3875257 (not lt!2371259))))

(declare-fun b!6384158 () Bool)

(declare-fun res!2626095 () Bool)

(assert (=> b!6384158 (=> res!2626095 e!3875252)))

(assert (=> b!6384158 (= res!2626095 (not (isEmpty!37214 (tail!12179 (_1!36583 lt!2371152)))))))

(declare-fun b!6384159 () Bool)

(assert (=> b!6384159 (= e!3875251 (= (head!13094 (_1!36583 lt!2371152)) (c!1163182 lt!2371171)))))

(declare-fun b!6384160 () Bool)

(assert (=> b!6384160 (= e!3875252 (not (= (head!13094 (_1!36583 lt!2371152)) (c!1163182 lt!2371171))))))

(assert (= (and d!2001368 c!1163347) b!6384156))

(assert (= (and d!2001368 (not c!1163347)) b!6384149))

(assert (= (and d!2001368 c!1163346) b!6384151))

(assert (= (and d!2001368 (not c!1163346)) b!6384150))

(assert (= (and b!6384150 c!1163348) b!6384157))

(assert (= (and b!6384150 (not c!1163348)) b!6384148))

(assert (= (and b!6384148 (not res!2626096)) b!6384153))

(assert (= (and b!6384153 res!2626092) b!6384155))

(assert (= (and b!6384155 res!2626094) b!6384154))

(assert (= (and b!6384154 res!2626093) b!6384159))

(assert (= (and b!6384153 (not res!2626099)) b!6384152))

(assert (= (and b!6384152 res!2626098) b!6384147))

(assert (= (and b!6384147 (not res!2626097)) b!6384158))

(assert (= (and b!6384158 (not res!2626095)) b!6384160))

(assert (= (or b!6384151 b!6384147 b!6384155) bm!545590))

(declare-fun m!7183890 () Bool)

(assert (=> b!6384149 m!7183890))

(assert (=> b!6384149 m!7183890))

(declare-fun m!7183892 () Bool)

(assert (=> b!6384149 m!7183892))

(declare-fun m!7183894 () Bool)

(assert (=> b!6384149 m!7183894))

(assert (=> b!6384149 m!7183892))

(assert (=> b!6384149 m!7183894))

(declare-fun m!7183896 () Bool)

(assert (=> b!6384149 m!7183896))

(assert (=> bm!545590 m!7183396))

(assert (=> b!6384154 m!7183894))

(assert (=> b!6384154 m!7183894))

(declare-fun m!7183898 () Bool)

(assert (=> b!6384154 m!7183898))

(declare-fun m!7183900 () Bool)

(assert (=> b!6384156 m!7183900))

(assert (=> b!6384159 m!7183890))

(assert (=> d!2001368 m!7183396))

(declare-fun m!7183902 () Bool)

(assert (=> d!2001368 m!7183902))

(assert (=> b!6384158 m!7183894))

(assert (=> b!6384158 m!7183894))

(assert (=> b!6384158 m!7183898))

(assert (=> b!6384160 m!7183890))

(assert (=> b!6383562 d!2001368))

(declare-fun d!2001370 () Bool)

(declare-fun e!3875260 () Bool)

(assert (=> d!2001370 e!3875260))

(declare-fun res!2626102 () Bool)

(assert (=> d!2001370 (=> (not res!2626102) (not e!3875260))))

(declare-fun lt!2371262 () List!65204)

(declare-fun noDuplicate!2130 (List!65204) Bool)

(assert (=> d!2001370 (= res!2626102 (noDuplicate!2130 lt!2371262))))

(declare-fun choose!47504 ((InoxSet Context!11370)) List!65204)

(assert (=> d!2001370 (= lt!2371262 (choose!47504 z!1189))))

(assert (=> d!2001370 (= (toList!10085 z!1189) lt!2371262)))

(declare-fun b!6384163 () Bool)

(declare-fun content!12316 (List!65204) (InoxSet Context!11370))

(assert (=> b!6384163 (= e!3875260 (= (content!12316 lt!2371262) z!1189))))

(assert (= (and d!2001370 res!2626102) b!6384163))

(declare-fun m!7183904 () Bool)

(assert (=> d!2001370 m!7183904))

(declare-fun m!7183906 () Bool)

(assert (=> d!2001370 m!7183906))

(declare-fun m!7183908 () Bool)

(assert (=> b!6384163 m!7183908))

(assert (=> b!6383561 d!2001370))

(declare-fun d!2001372 () Bool)

(assert (=> d!2001372 (= (isEmpty!37212 (t!378807 (exprs!6185 (h!71528 zl!343)))) ((_ is Nil!65079) (t!378807 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> b!6383542 d!2001372))

(declare-fun bs!1597598 () Bool)

(declare-fun d!2001374 () Bool)

(assert (= bs!1597598 (and d!2001374 d!2001302)))

(declare-fun lambda!352287 () Int)

(assert (=> bs!1597598 (= lambda!352287 lambda!352276)))

(declare-fun bs!1597599 () Bool)

(assert (= bs!1597599 (and d!2001374 d!2001362)))

(assert (=> bs!1597599 (= lambda!352287 lambda!352282)))

(declare-fun bs!1597600 () Bool)

(assert (= bs!1597600 (and d!2001374 d!2001364)))

(assert (=> bs!1597600 (= lambda!352287 lambda!352283)))

(declare-fun bs!1597601 () Bool)

(assert (= bs!1597601 (and d!2001374 d!2001366)))

(assert (=> bs!1597601 (= lambda!352287 lambda!352284)))

(declare-fun b!6384184 () Bool)

(declare-fun e!3875273 () Bool)

(declare-fun lt!2371265 () Regex!16301)

(declare-fun isEmptyLang!1709 (Regex!16301) Bool)

(assert (=> b!6384184 (= e!3875273 (isEmptyLang!1709 lt!2371265))))

(declare-fun b!6384185 () Bool)

(declare-fun e!3875275 () Bool)

(assert (=> b!6384185 (= e!3875275 e!3875273)))

(declare-fun c!1163358 () Bool)

(assert (=> b!6384185 (= c!1163358 (isEmpty!37212 (unfocusZipperList!1722 zl!343)))))

(declare-fun b!6384186 () Bool)

(declare-fun e!3875278 () Bool)

(assert (=> b!6384186 (= e!3875278 (= lt!2371265 (head!13093 (unfocusZipperList!1722 zl!343))))))

(declare-fun b!6384188 () Bool)

(declare-fun isUnion!1139 (Regex!16301) Bool)

(assert (=> b!6384188 (= e!3875278 (isUnion!1139 lt!2371265))))

(declare-fun b!6384189 () Bool)

(declare-fun e!3875277 () Regex!16301)

(assert (=> b!6384189 (= e!3875277 (Union!16301 (h!71527 (unfocusZipperList!1722 zl!343)) (generalisedUnion!2145 (t!378807 (unfocusZipperList!1722 zl!343)))))))

(declare-fun b!6384190 () Bool)

(declare-fun e!3875274 () Regex!16301)

(assert (=> b!6384190 (= e!3875274 (h!71527 (unfocusZipperList!1722 zl!343)))))

(declare-fun b!6384191 () Bool)

(declare-fun e!3875276 () Bool)

(assert (=> b!6384191 (= e!3875276 (isEmpty!37212 (t!378807 (unfocusZipperList!1722 zl!343))))))

(declare-fun b!6384187 () Bool)

(assert (=> b!6384187 (= e!3875273 e!3875278)))

(declare-fun c!1163357 () Bool)

(assert (=> b!6384187 (= c!1163357 (isEmpty!37212 (tail!12178 (unfocusZipperList!1722 zl!343))))))

(assert (=> d!2001374 e!3875275))

(declare-fun res!2626108 () Bool)

(assert (=> d!2001374 (=> (not res!2626108) (not e!3875275))))

(assert (=> d!2001374 (= res!2626108 (validRegex!8037 lt!2371265))))

(assert (=> d!2001374 (= lt!2371265 e!3875274)))

(declare-fun c!1163360 () Bool)

(assert (=> d!2001374 (= c!1163360 e!3875276)))

(declare-fun res!2626107 () Bool)

(assert (=> d!2001374 (=> (not res!2626107) (not e!3875276))))

(assert (=> d!2001374 (= res!2626107 ((_ is Cons!65079) (unfocusZipperList!1722 zl!343)))))

(assert (=> d!2001374 (forall!15479 (unfocusZipperList!1722 zl!343) lambda!352287)))

(assert (=> d!2001374 (= (generalisedUnion!2145 (unfocusZipperList!1722 zl!343)) lt!2371265)))

(declare-fun b!6384192 () Bool)

(assert (=> b!6384192 (= e!3875274 e!3875277)))

(declare-fun c!1163359 () Bool)

(assert (=> b!6384192 (= c!1163359 ((_ is Cons!65079) (unfocusZipperList!1722 zl!343)))))

(declare-fun b!6384193 () Bool)

(assert (=> b!6384193 (= e!3875277 EmptyLang!16301)))

(assert (= (and d!2001374 res!2626107) b!6384191))

(assert (= (and d!2001374 c!1163360) b!6384190))

(assert (= (and d!2001374 (not c!1163360)) b!6384192))

(assert (= (and b!6384192 c!1163359) b!6384189))

(assert (= (and b!6384192 (not c!1163359)) b!6384193))

(assert (= (and d!2001374 res!2626108) b!6384185))

(assert (= (and b!6384185 c!1163358) b!6384184))

(assert (= (and b!6384185 (not c!1163358)) b!6384187))

(assert (= (and b!6384187 c!1163357) b!6384186))

(assert (= (and b!6384187 (not c!1163357)) b!6384188))

(declare-fun m!7183910 () Bool)

(assert (=> b!6384189 m!7183910))

(declare-fun m!7183912 () Bool)

(assert (=> b!6384184 m!7183912))

(assert (=> b!6384187 m!7183328))

(declare-fun m!7183914 () Bool)

(assert (=> b!6384187 m!7183914))

(assert (=> b!6384187 m!7183914))

(declare-fun m!7183916 () Bool)

(assert (=> b!6384187 m!7183916))

(declare-fun m!7183918 () Bool)

(assert (=> b!6384188 m!7183918))

(assert (=> b!6384186 m!7183328))

(declare-fun m!7183920 () Bool)

(assert (=> b!6384186 m!7183920))

(assert (=> b!6384185 m!7183328))

(declare-fun m!7183922 () Bool)

(assert (=> b!6384185 m!7183922))

(declare-fun m!7183924 () Bool)

(assert (=> d!2001374 m!7183924))

(assert (=> d!2001374 m!7183328))

(declare-fun m!7183926 () Bool)

(assert (=> d!2001374 m!7183926))

(declare-fun m!7183928 () Bool)

(assert (=> b!6384191 m!7183928))

(assert (=> b!6383541 d!2001374))

(declare-fun bs!1597602 () Bool)

(declare-fun d!2001376 () Bool)

(assert (= bs!1597602 (and d!2001376 d!2001366)))

(declare-fun lambda!352290 () Int)

(assert (=> bs!1597602 (= lambda!352290 lambda!352284)))

(declare-fun bs!1597603 () Bool)

(assert (= bs!1597603 (and d!2001376 d!2001364)))

(assert (=> bs!1597603 (= lambda!352290 lambda!352283)))

(declare-fun bs!1597604 () Bool)

(assert (= bs!1597604 (and d!2001376 d!2001302)))

(assert (=> bs!1597604 (= lambda!352290 lambda!352276)))

(declare-fun bs!1597605 () Bool)

(assert (= bs!1597605 (and d!2001376 d!2001374)))

(assert (=> bs!1597605 (= lambda!352290 lambda!352287)))

(declare-fun bs!1597606 () Bool)

(assert (= bs!1597606 (and d!2001376 d!2001362)))

(assert (=> bs!1597606 (= lambda!352290 lambda!352282)))

(declare-fun lt!2371268 () List!65203)

(assert (=> d!2001376 (forall!15479 lt!2371268 lambda!352290)))

(declare-fun e!3875281 () List!65203)

(assert (=> d!2001376 (= lt!2371268 e!3875281)))

(declare-fun c!1163363 () Bool)

(assert (=> d!2001376 (= c!1163363 ((_ is Cons!65080) zl!343))))

(assert (=> d!2001376 (= (unfocusZipperList!1722 zl!343) lt!2371268)))

(declare-fun b!6384198 () Bool)

(assert (=> b!6384198 (= e!3875281 (Cons!65079 (generalisedConcat!1898 (exprs!6185 (h!71528 zl!343))) (unfocusZipperList!1722 (t!378808 zl!343))))))

(declare-fun b!6384199 () Bool)

(assert (=> b!6384199 (= e!3875281 Nil!65079)))

(assert (= (and d!2001376 c!1163363) b!6384198))

(assert (= (and d!2001376 (not c!1163363)) b!6384199))

(declare-fun m!7183930 () Bool)

(assert (=> d!2001376 m!7183930))

(assert (=> b!6384198 m!7183444))

(declare-fun m!7183932 () Bool)

(assert (=> b!6384198 m!7183932))

(assert (=> b!6383541 d!2001376))

(declare-fun b!6384218 () Bool)

(declare-fun e!3875300 () Bool)

(declare-fun e!3875297 () Bool)

(assert (=> b!6384218 (= e!3875300 e!3875297)))

(declare-fun c!1163369 () Bool)

(assert (=> b!6384218 (= c!1163369 ((_ is Union!16301) r!7292))))

(declare-fun b!6384219 () Bool)

(declare-fun e!3875298 () Bool)

(declare-fun call!545602 () Bool)

(assert (=> b!6384219 (= e!3875298 call!545602)))

(declare-fun b!6384220 () Bool)

(declare-fun e!3875302 () Bool)

(assert (=> b!6384220 (= e!3875300 e!3875302)))

(declare-fun res!2626123 () Bool)

(assert (=> b!6384220 (= res!2626123 (not (nullable!6294 (reg!16630 r!7292))))))

(assert (=> b!6384220 (=> (not res!2626123) (not e!3875302))))

(declare-fun bm!545597 () Bool)

(declare-fun call!545604 () Bool)

(assert (=> bm!545597 (= call!545604 (validRegex!8037 (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))))))

(declare-fun d!2001378 () Bool)

(declare-fun res!2626119 () Bool)

(declare-fun e!3875301 () Bool)

(assert (=> d!2001378 (=> res!2626119 e!3875301)))

(assert (=> d!2001378 (= res!2626119 ((_ is ElementMatch!16301) r!7292))))

(assert (=> d!2001378 (= (validRegex!8037 r!7292) e!3875301)))

(declare-fun b!6384221 () Bool)

(assert (=> b!6384221 (= e!3875301 e!3875300)))

(declare-fun c!1163368 () Bool)

(assert (=> b!6384221 (= c!1163368 ((_ is Star!16301) r!7292))))

(declare-fun b!6384222 () Bool)

(declare-fun e!3875296 () Bool)

(declare-fun e!3875299 () Bool)

(assert (=> b!6384222 (= e!3875296 e!3875299)))

(declare-fun res!2626120 () Bool)

(assert (=> b!6384222 (=> (not res!2626120) (not e!3875299))))

(assert (=> b!6384222 (= res!2626120 call!545604)))

(declare-fun bm!545598 () Bool)

(declare-fun call!545603 () Bool)

(assert (=> bm!545598 (= call!545602 call!545603)))

(declare-fun b!6384223 () Bool)

(assert (=> b!6384223 (= e!3875302 call!545603)))

(declare-fun bm!545599 () Bool)

(assert (=> bm!545599 (= call!545603 (validRegex!8037 (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))))))

(declare-fun b!6384224 () Bool)

(declare-fun res!2626121 () Bool)

(assert (=> b!6384224 (=> (not res!2626121) (not e!3875298))))

(assert (=> b!6384224 (= res!2626121 call!545604)))

(assert (=> b!6384224 (= e!3875297 e!3875298)))

(declare-fun b!6384225 () Bool)

(declare-fun res!2626122 () Bool)

(assert (=> b!6384225 (=> res!2626122 e!3875296)))

(assert (=> b!6384225 (= res!2626122 (not ((_ is Concat!25146) r!7292)))))

(assert (=> b!6384225 (= e!3875297 e!3875296)))

(declare-fun b!6384226 () Bool)

(assert (=> b!6384226 (= e!3875299 call!545602)))

(assert (= (and d!2001378 (not res!2626119)) b!6384221))

(assert (= (and b!6384221 c!1163368) b!6384220))

(assert (= (and b!6384221 (not c!1163368)) b!6384218))

(assert (= (and b!6384220 res!2626123) b!6384223))

(assert (= (and b!6384218 c!1163369) b!6384224))

(assert (= (and b!6384218 (not c!1163369)) b!6384225))

(assert (= (and b!6384224 res!2626121) b!6384219))

(assert (= (and b!6384225 (not res!2626122)) b!6384222))

(assert (= (and b!6384222 res!2626120) b!6384226))

(assert (= (or b!6384219 b!6384226) bm!545598))

(assert (= (or b!6384224 b!6384222) bm!545597))

(assert (= (or b!6384223 bm!545598) bm!545599))

(declare-fun m!7183934 () Bool)

(assert (=> b!6384220 m!7183934))

(declare-fun m!7183936 () Bool)

(assert (=> bm!545597 m!7183936))

(declare-fun m!7183938 () Bool)

(assert (=> bm!545599 m!7183938))

(assert (=> start!632402 d!2001378))

(declare-fun d!2001380 () Bool)

(declare-fun lt!2371269 () Regex!16301)

(assert (=> d!2001380 (validRegex!8037 lt!2371269)))

(assert (=> d!2001380 (= lt!2371269 (generalisedUnion!2145 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080))))))

(assert (=> d!2001380 (= (unfocusZipper!2043 (Cons!65080 lt!2371174 Nil!65080)) lt!2371269)))

(declare-fun bs!1597607 () Bool)

(assert (= bs!1597607 d!2001380))

(declare-fun m!7183940 () Bool)

(assert (=> bs!1597607 m!7183940))

(declare-fun m!7183942 () Bool)

(assert (=> bs!1597607 m!7183942))

(assert (=> bs!1597607 m!7183942))

(declare-fun m!7183944 () Bool)

(assert (=> bs!1597607 m!7183944))

(assert (=> b!6383560 d!2001380))

(declare-fun bs!1597608 () Bool)

(declare-fun b!6384262 () Bool)

(assert (= bs!1597608 (and b!6384262 b!6383550)))

(declare-fun lambda!352295 () Int)

(assert (=> bs!1597608 (not (= lambda!352295 lambda!352235))))

(assert (=> bs!1597608 (not (= lambda!352295 lambda!352236))))

(declare-fun bs!1597609 () Bool)

(assert (= bs!1597609 (and b!6384262 b!6383538)))

(assert (=> bs!1597609 (not (= lambda!352295 lambda!352238))))

(assert (=> bs!1597609 (not (= lambda!352295 lambda!352239))))

(assert (=> b!6384262 true))

(assert (=> b!6384262 true))

(declare-fun bs!1597610 () Bool)

(declare-fun b!6384269 () Bool)

(assert (= bs!1597610 (and b!6384269 b!6383550)))

(declare-fun lambda!352296 () Int)

(assert (=> bs!1597610 (not (= lambda!352296 lambda!352235))))

(declare-fun bs!1597611 () Bool)

(assert (= bs!1597611 (and b!6384269 b!6384262)))

(assert (=> bs!1597611 (not (= lambda!352296 lambda!352295))))

(declare-fun bs!1597612 () Bool)

(assert (= bs!1597612 (and b!6384269 b!6383538)))

(assert (=> bs!1597612 (not (= lambda!352296 lambda!352238))))

(assert (=> bs!1597612 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352296 lambda!352239))))

(assert (=> bs!1597610 (= lambda!352296 lambda!352236)))

(assert (=> b!6384269 true))

(assert (=> b!6384269 true))

(declare-fun bm!545604 () Bool)

(declare-fun call!545609 () Bool)

(assert (=> bm!545604 (= call!545609 (isEmpty!37214 s!2326))))

(declare-fun b!6384260 () Bool)

(declare-fun e!3875325 () Bool)

(declare-fun e!3875322 () Bool)

(assert (=> b!6384260 (= e!3875325 e!3875322)))

(declare-fun res!2626140 () Bool)

(assert (=> b!6384260 (= res!2626140 (not ((_ is EmptyLang!16301) r!7292)))))

(assert (=> b!6384260 (=> (not res!2626140) (not e!3875322))))

(declare-fun b!6384261 () Bool)

(declare-fun e!3875324 () Bool)

(assert (=> b!6384261 (= e!3875324 (= s!2326 (Cons!65078 (c!1163182 r!7292) Nil!65078)))))

(declare-fun e!3875326 () Bool)

(declare-fun call!545610 () Bool)

(assert (=> b!6384262 (= e!3875326 call!545610)))

(declare-fun b!6384263 () Bool)

(declare-fun e!3875327 () Bool)

(assert (=> b!6384263 (= e!3875327 (matchRSpec!3402 (regTwo!33115 r!7292) s!2326))))

(declare-fun b!6384264 () Bool)

(declare-fun e!3875321 () Bool)

(declare-fun e!3875323 () Bool)

(assert (=> b!6384264 (= e!3875321 e!3875323)))

(declare-fun c!1163378 () Bool)

(assert (=> b!6384264 (= c!1163378 ((_ is Star!16301) r!7292))))

(declare-fun b!6384265 () Bool)

(declare-fun res!2626142 () Bool)

(assert (=> b!6384265 (=> res!2626142 e!3875326)))

(assert (=> b!6384265 (= res!2626142 call!545609)))

(assert (=> b!6384265 (= e!3875323 e!3875326)))

(declare-fun bm!545605 () Bool)

(assert (=> bm!545605 (= call!545610 (Exists!3371 (ite c!1163378 lambda!352295 lambda!352296)))))

(declare-fun d!2001382 () Bool)

(declare-fun c!1163379 () Bool)

(assert (=> d!2001382 (= c!1163379 ((_ is EmptyExpr!16301) r!7292))))

(assert (=> d!2001382 (= (matchRSpec!3402 r!7292 s!2326) e!3875325)))

(declare-fun b!6384259 () Bool)

(assert (=> b!6384259 (= e!3875325 call!545609)))

(declare-fun b!6384266 () Bool)

(declare-fun c!1163380 () Bool)

(assert (=> b!6384266 (= c!1163380 ((_ is Union!16301) r!7292))))

(assert (=> b!6384266 (= e!3875324 e!3875321)))

(declare-fun b!6384267 () Bool)

(assert (=> b!6384267 (= e!3875321 e!3875327)))

(declare-fun res!2626141 () Bool)

(assert (=> b!6384267 (= res!2626141 (matchRSpec!3402 (regOne!33115 r!7292) s!2326))))

(assert (=> b!6384267 (=> res!2626141 e!3875327)))

(declare-fun b!6384268 () Bool)

(declare-fun c!1163381 () Bool)

(assert (=> b!6384268 (= c!1163381 ((_ is ElementMatch!16301) r!7292))))

(assert (=> b!6384268 (= e!3875322 e!3875324)))

(assert (=> b!6384269 (= e!3875323 call!545610)))

(assert (= (and d!2001382 c!1163379) b!6384259))

(assert (= (and d!2001382 (not c!1163379)) b!6384260))

(assert (= (and b!6384260 res!2626140) b!6384268))

(assert (= (and b!6384268 c!1163381) b!6384261))

(assert (= (and b!6384268 (not c!1163381)) b!6384266))

(assert (= (and b!6384266 c!1163380) b!6384267))

(assert (= (and b!6384266 (not c!1163380)) b!6384264))

(assert (= (and b!6384267 (not res!2626141)) b!6384263))

(assert (= (and b!6384264 c!1163378) b!6384265))

(assert (= (and b!6384264 (not c!1163378)) b!6384269))

(assert (= (and b!6384265 (not res!2626142)) b!6384262))

(assert (= (or b!6384262 b!6384269) bm!545605))

(assert (= (or b!6384259 b!6384265) bm!545604))

(declare-fun m!7183946 () Bool)

(assert (=> bm!545604 m!7183946))

(declare-fun m!7183948 () Bool)

(assert (=> b!6384263 m!7183948))

(declare-fun m!7183950 () Bool)

(assert (=> bm!545605 m!7183950))

(declare-fun m!7183952 () Bool)

(assert (=> b!6384267 m!7183952))

(assert (=> b!6383540 d!2001382))

(declare-fun b!6384270 () Bool)

(declare-fun e!3875331 () Bool)

(declare-fun e!3875329 () Bool)

(assert (=> b!6384270 (= e!3875331 e!3875329)))

(declare-fun res!2626148 () Bool)

(assert (=> b!6384270 (=> res!2626148 e!3875329)))

(declare-fun call!545611 () Bool)

(assert (=> b!6384270 (= res!2626148 call!545611)))

(declare-fun b!6384271 () Bool)

(declare-fun res!2626147 () Bool)

(declare-fun e!3875333 () Bool)

(assert (=> b!6384271 (=> res!2626147 e!3875333)))

(assert (=> b!6384271 (= res!2626147 (not ((_ is ElementMatch!16301) r!7292)))))

(declare-fun e!3875334 () Bool)

(assert (=> b!6384271 (= e!3875334 e!3875333)))

(declare-fun d!2001384 () Bool)

(declare-fun e!3875332 () Bool)

(assert (=> d!2001384 e!3875332))

(declare-fun c!1163382 () Bool)

(assert (=> d!2001384 (= c!1163382 ((_ is EmptyExpr!16301) r!7292))))

(declare-fun lt!2371270 () Bool)

(declare-fun e!3875330 () Bool)

(assert (=> d!2001384 (= lt!2371270 e!3875330)))

(declare-fun c!1163383 () Bool)

(assert (=> d!2001384 (= c!1163383 (isEmpty!37214 s!2326))))

(assert (=> d!2001384 (validRegex!8037 r!7292)))

(assert (=> d!2001384 (= (matchR!8484 r!7292 s!2326) lt!2371270)))

(declare-fun b!6384272 () Bool)

(assert (=> b!6384272 (= e!3875330 (matchR!8484 (derivativeStep!5005 r!7292 (head!13094 s!2326)) (tail!12179 s!2326)))))

(declare-fun b!6384273 () Bool)

(assert (=> b!6384273 (= e!3875332 e!3875334)))

(declare-fun c!1163384 () Bool)

(assert (=> b!6384273 (= c!1163384 ((_ is EmptyLang!16301) r!7292))))

(declare-fun b!6384274 () Bool)

(assert (=> b!6384274 (= e!3875332 (= lt!2371270 call!545611))))

(declare-fun b!6384275 () Bool)

(assert (=> b!6384275 (= e!3875333 e!3875331)))

(declare-fun res!2626149 () Bool)

(assert (=> b!6384275 (=> (not res!2626149) (not e!3875331))))

(assert (=> b!6384275 (= res!2626149 (not lt!2371270))))

(declare-fun b!6384276 () Bool)

(declare-fun res!2626150 () Bool)

(assert (=> b!6384276 (=> res!2626150 e!3875333)))

(declare-fun e!3875328 () Bool)

(assert (=> b!6384276 (= res!2626150 e!3875328)))

(declare-fun res!2626143 () Bool)

(assert (=> b!6384276 (=> (not res!2626143) (not e!3875328))))

(assert (=> b!6384276 (= res!2626143 lt!2371270)))

(declare-fun b!6384277 () Bool)

(declare-fun res!2626144 () Bool)

(assert (=> b!6384277 (=> (not res!2626144) (not e!3875328))))

(assert (=> b!6384277 (= res!2626144 (isEmpty!37214 (tail!12179 s!2326)))))

(declare-fun bm!545606 () Bool)

(assert (=> bm!545606 (= call!545611 (isEmpty!37214 s!2326))))

(declare-fun b!6384278 () Bool)

(declare-fun res!2626145 () Bool)

(assert (=> b!6384278 (=> (not res!2626145) (not e!3875328))))

(assert (=> b!6384278 (= res!2626145 (not call!545611))))

(declare-fun b!6384279 () Bool)

(assert (=> b!6384279 (= e!3875330 (nullable!6294 r!7292))))

(declare-fun b!6384280 () Bool)

(assert (=> b!6384280 (= e!3875334 (not lt!2371270))))

(declare-fun b!6384281 () Bool)

(declare-fun res!2626146 () Bool)

(assert (=> b!6384281 (=> res!2626146 e!3875329)))

(assert (=> b!6384281 (= res!2626146 (not (isEmpty!37214 (tail!12179 s!2326))))))

(declare-fun b!6384282 () Bool)

(assert (=> b!6384282 (= e!3875328 (= (head!13094 s!2326) (c!1163182 r!7292)))))

(declare-fun b!6384283 () Bool)

(assert (=> b!6384283 (= e!3875329 (not (= (head!13094 s!2326) (c!1163182 r!7292))))))

(assert (= (and d!2001384 c!1163383) b!6384279))

(assert (= (and d!2001384 (not c!1163383)) b!6384272))

(assert (= (and d!2001384 c!1163382) b!6384274))

(assert (= (and d!2001384 (not c!1163382)) b!6384273))

(assert (= (and b!6384273 c!1163384) b!6384280))

(assert (= (and b!6384273 (not c!1163384)) b!6384271))

(assert (= (and b!6384271 (not res!2626147)) b!6384276))

(assert (= (and b!6384276 res!2626143) b!6384278))

(assert (= (and b!6384278 res!2626145) b!6384277))

(assert (= (and b!6384277 res!2626144) b!6384282))

(assert (= (and b!6384276 (not res!2626150)) b!6384275))

(assert (= (and b!6384275 res!2626149) b!6384270))

(assert (= (and b!6384270 (not res!2626148)) b!6384281))

(assert (= (and b!6384281 (not res!2626146)) b!6384283))

(assert (= (or b!6384274 b!6384270 b!6384278) bm!545606))

(declare-fun m!7183954 () Bool)

(assert (=> b!6384272 m!7183954))

(assert (=> b!6384272 m!7183954))

(declare-fun m!7183956 () Bool)

(assert (=> b!6384272 m!7183956))

(declare-fun m!7183958 () Bool)

(assert (=> b!6384272 m!7183958))

(assert (=> b!6384272 m!7183956))

(assert (=> b!6384272 m!7183958))

(declare-fun m!7183960 () Bool)

(assert (=> b!6384272 m!7183960))

(assert (=> bm!545606 m!7183946))

(assert (=> b!6384277 m!7183958))

(assert (=> b!6384277 m!7183958))

(declare-fun m!7183962 () Bool)

(assert (=> b!6384277 m!7183962))

(declare-fun m!7183964 () Bool)

(assert (=> b!6384279 m!7183964))

(assert (=> b!6384282 m!7183954))

(assert (=> d!2001384 m!7183946))

(assert (=> d!2001384 m!7183448))

(assert (=> b!6384281 m!7183958))

(assert (=> b!6384281 m!7183958))

(assert (=> b!6384281 m!7183962))

(assert (=> b!6384283 m!7183954))

(assert (=> b!6383540 d!2001384))

(declare-fun d!2001386 () Bool)

(assert (=> d!2001386 (= (matchR!8484 r!7292 s!2326) (matchRSpec!3402 r!7292 s!2326))))

(declare-fun lt!2371273 () Unit!158535)

(declare-fun choose!47505 (Regex!16301 List!65202) Unit!158535)

(assert (=> d!2001386 (= lt!2371273 (choose!47505 r!7292 s!2326))))

(assert (=> d!2001386 (validRegex!8037 r!7292)))

(assert (=> d!2001386 (= (mainMatchTheorem!3402 r!7292 s!2326) lt!2371273)))

(declare-fun bs!1597613 () Bool)

(assert (= bs!1597613 d!2001386))

(assert (=> bs!1597613 m!7183432))

(assert (=> bs!1597613 m!7183430))

(declare-fun m!7183966 () Bool)

(assert (=> bs!1597613 m!7183966))

(assert (=> bs!1597613 m!7183448))

(assert (=> b!6383540 d!2001386))

(declare-fun d!2001388 () Bool)

(declare-fun lt!2371274 () Regex!16301)

(assert (=> d!2001388 (validRegex!8037 lt!2371274)))

(assert (=> d!2001388 (= lt!2371274 (generalisedUnion!2145 (unfocusZipperList!1722 zl!343)))))

(assert (=> d!2001388 (= (unfocusZipper!2043 zl!343) lt!2371274)))

(declare-fun bs!1597614 () Bool)

(assert (= bs!1597614 d!2001388))

(declare-fun m!7183968 () Bool)

(assert (=> bs!1597614 m!7183968))

(assert (=> bs!1597614 m!7183328))

(assert (=> bs!1597614 m!7183328))

(assert (=> bs!1597614 m!7183330))

(assert (=> b!6383557 d!2001388))

(declare-fun d!2001390 () Bool)

(declare-fun choose!47506 (Int) Bool)

(assert (=> d!2001390 (= (Exists!3371 lambda!352239) (choose!47506 lambda!352239))))

(declare-fun bs!1597615 () Bool)

(assert (= bs!1597615 d!2001390))

(declare-fun m!7183970 () Bool)

(assert (=> bs!1597615 m!7183970))

(assert (=> b!6383538 d!2001390))

(declare-fun d!2001392 () Bool)

(assert (=> d!2001392 (= (Exists!3371 lambda!352238) (choose!47506 lambda!352238))))

(declare-fun bs!1597616 () Bool)

(assert (= bs!1597616 d!2001392))

(declare-fun m!7183972 () Bool)

(assert (=> bs!1597616 m!7183972))

(assert (=> b!6383538 d!2001392))

(declare-fun d!2001394 () Bool)

(declare-fun isEmpty!37216 (Option!16192) Bool)

(assert (=> d!2001394 (= (isDefined!12895 lt!2371180) (not (isEmpty!37216 lt!2371180)))))

(declare-fun bs!1597617 () Bool)

(assert (= bs!1597617 d!2001394))

(declare-fun m!7183974 () Bool)

(assert (=> bs!1597617 m!7183974))

(assert (=> b!6383538 d!2001394))

(declare-fun d!2001396 () Bool)

(assert (=> d!2001396 (= (get!22535 lt!2371180) (v!52360 lt!2371180))))

(assert (=> b!6383538 d!2001396))

(declare-fun bs!1597618 () Bool)

(declare-fun d!2001398 () Bool)

(assert (= bs!1597618 (and d!2001398 b!6383550)))

(declare-fun lambda!352301 () Int)

(assert (=> bs!1597618 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352301 lambda!352235))))

(declare-fun bs!1597619 () Bool)

(assert (= bs!1597619 (and d!2001398 b!6384262)))

(assert (=> bs!1597619 (not (= lambda!352301 lambda!352295))))

(declare-fun bs!1597620 () Bool)

(assert (= bs!1597620 (and d!2001398 b!6384269)))

(assert (=> bs!1597620 (not (= lambda!352301 lambda!352296))))

(declare-fun bs!1597621 () Bool)

(assert (= bs!1597621 (and d!2001398 b!6383538)))

(assert (=> bs!1597621 (= lambda!352301 lambda!352238)))

(assert (=> bs!1597621 (not (= lambda!352301 lambda!352239))))

(assert (=> bs!1597618 (not (= lambda!352301 lambda!352236))))

(assert (=> d!2001398 true))

(assert (=> d!2001398 true))

(assert (=> d!2001398 true))

(declare-fun lambda!352302 () Int)

(assert (=> bs!1597618 (not (= lambda!352302 lambda!352235))))

(assert (=> bs!1597619 (not (= lambda!352302 lambda!352295))))

(assert (=> bs!1597620 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352302 lambda!352296))))

(assert (=> bs!1597621 (= lambda!352302 lambda!352239)))

(assert (=> bs!1597618 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352302 lambda!352236))))

(assert (=> bs!1597621 (not (= lambda!352302 lambda!352238))))

(declare-fun bs!1597622 () Bool)

(assert (= bs!1597622 d!2001398))

(assert (=> bs!1597622 (not (= lambda!352302 lambda!352301))))

(assert (=> d!2001398 true))

(assert (=> d!2001398 true))

(assert (=> d!2001398 true))

(assert (=> d!2001398 (= (Exists!3371 lambda!352301) (Exists!3371 lambda!352302))))

(declare-fun lt!2371277 () Unit!158535)

(declare-fun choose!47507 (Regex!16301 Regex!16301 List!65202) Unit!158535)

(assert (=> d!2001398 (= lt!2371277 (choose!47507 lt!2371171 (regTwo!33114 r!7292) s!2326))))

(assert (=> d!2001398 (validRegex!8037 lt!2371171)))

(assert (=> d!2001398 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1908 lt!2371171 (regTwo!33114 r!7292) s!2326) lt!2371277)))

(declare-fun m!7183976 () Bool)

(assert (=> bs!1597622 m!7183976))

(declare-fun m!7183978 () Bool)

(assert (=> bs!1597622 m!7183978))

(declare-fun m!7183980 () Bool)

(assert (=> bs!1597622 m!7183980))

(assert (=> bs!1597622 m!7183902))

(assert (=> b!6383538 d!2001398))

(declare-fun b!6384310 () Bool)

(declare-fun e!3875351 () Option!16192)

(assert (=> b!6384310 (= e!3875351 None!16191)))

(declare-fun b!6384311 () Bool)

(declare-fun e!3875353 () Option!16192)

(assert (=> b!6384311 (= e!3875353 e!3875351)))

(declare-fun c!1163390 () Bool)

(assert (=> b!6384311 (= c!1163390 ((_ is Nil!65078) s!2326))))

(declare-fun b!6384312 () Bool)

(declare-fun lt!2371285 () Unit!158535)

(declare-fun lt!2371284 () Unit!158535)

(assert (=> b!6384312 (= lt!2371285 lt!2371284)))

(assert (=> b!6384312 (= (++!14369 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2464 (List!65202 C!32872 List!65202 List!65202) Unit!158535)

(assert (=> b!6384312 (= lt!2371284 (lemmaMoveElementToOtherListKeepsConcatEq!2464 Nil!65078 (h!71526 s!2326) (t!378806 s!2326) s!2326))))

(assert (=> b!6384312 (= e!3875351 (findConcatSeparation!2606 lt!2371171 (regTwo!33114 r!7292) (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326) s!2326))))

(declare-fun b!6384313 () Bool)

(declare-fun e!3875350 () Bool)

(declare-fun lt!2371286 () Option!16192)

(assert (=> b!6384313 (= e!3875350 (not (isDefined!12895 lt!2371286)))))

(declare-fun d!2001400 () Bool)

(assert (=> d!2001400 e!3875350))

(declare-fun res!2626172 () Bool)

(assert (=> d!2001400 (=> res!2626172 e!3875350)))

(declare-fun e!3875349 () Bool)

(assert (=> d!2001400 (= res!2626172 e!3875349)))

(declare-fun res!2626171 () Bool)

(assert (=> d!2001400 (=> (not res!2626171) (not e!3875349))))

(assert (=> d!2001400 (= res!2626171 (isDefined!12895 lt!2371286))))

(assert (=> d!2001400 (= lt!2371286 e!3875353)))

(declare-fun c!1163389 () Bool)

(declare-fun e!3875352 () Bool)

(assert (=> d!2001400 (= c!1163389 e!3875352)))

(declare-fun res!2626173 () Bool)

(assert (=> d!2001400 (=> (not res!2626173) (not e!3875352))))

(assert (=> d!2001400 (= res!2626173 (matchR!8484 lt!2371171 Nil!65078))))

(assert (=> d!2001400 (validRegex!8037 lt!2371171)))

(assert (=> d!2001400 (= (findConcatSeparation!2606 lt!2371171 (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326) lt!2371286)))

(declare-fun b!6384314 () Bool)

(assert (=> b!6384314 (= e!3875353 (Some!16191 (tuple2!66561 Nil!65078 s!2326)))))

(declare-fun b!6384315 () Bool)

(declare-fun res!2626170 () Bool)

(assert (=> b!6384315 (=> (not res!2626170) (not e!3875349))))

(assert (=> b!6384315 (= res!2626170 (matchR!8484 (regTwo!33114 r!7292) (_2!36583 (get!22535 lt!2371286))))))

(declare-fun b!6384316 () Bool)

(assert (=> b!6384316 (= e!3875352 (matchR!8484 (regTwo!33114 r!7292) s!2326))))

(declare-fun b!6384317 () Bool)

(declare-fun res!2626169 () Bool)

(assert (=> b!6384317 (=> (not res!2626169) (not e!3875349))))

(assert (=> b!6384317 (= res!2626169 (matchR!8484 lt!2371171 (_1!36583 (get!22535 lt!2371286))))))

(declare-fun b!6384318 () Bool)

(assert (=> b!6384318 (= e!3875349 (= (++!14369 (_1!36583 (get!22535 lt!2371286)) (_2!36583 (get!22535 lt!2371286))) s!2326))))

(assert (= (and d!2001400 res!2626173) b!6384316))

(assert (= (and d!2001400 c!1163389) b!6384314))

(assert (= (and d!2001400 (not c!1163389)) b!6384311))

(assert (= (and b!6384311 c!1163390) b!6384310))

(assert (= (and b!6384311 (not c!1163390)) b!6384312))

(assert (= (and d!2001400 res!2626171) b!6384317))

(assert (= (and b!6384317 res!2626169) b!6384315))

(assert (= (and b!6384315 res!2626170) b!6384318))

(assert (= (and d!2001400 (not res!2626172)) b!6384313))

(declare-fun m!7183982 () Bool)

(assert (=> d!2001400 m!7183982))

(declare-fun m!7183984 () Bool)

(assert (=> d!2001400 m!7183984))

(assert (=> d!2001400 m!7183902))

(declare-fun m!7183986 () Bool)

(assert (=> b!6384315 m!7183986))

(declare-fun m!7183988 () Bool)

(assert (=> b!6384315 m!7183988))

(declare-fun m!7183990 () Bool)

(assert (=> b!6384316 m!7183990))

(assert (=> b!6384317 m!7183986))

(declare-fun m!7183992 () Bool)

(assert (=> b!6384317 m!7183992))

(assert (=> b!6384313 m!7183982))

(declare-fun m!7183994 () Bool)

(assert (=> b!6384312 m!7183994))

(assert (=> b!6384312 m!7183994))

(declare-fun m!7183996 () Bool)

(assert (=> b!6384312 m!7183996))

(declare-fun m!7183998 () Bool)

(assert (=> b!6384312 m!7183998))

(assert (=> b!6384312 m!7183994))

(declare-fun m!7184000 () Bool)

(assert (=> b!6384312 m!7184000))

(assert (=> b!6384318 m!7183986))

(declare-fun m!7184002 () Bool)

(assert (=> b!6384318 m!7184002))

(assert (=> b!6383538 d!2001400))

(declare-fun b!6384327 () Bool)

(declare-fun e!3875358 () List!65202)

(assert (=> b!6384327 (= e!3875358 (_2!36583 lt!2371152))))

(declare-fun b!6384328 () Bool)

(assert (=> b!6384328 (= e!3875358 (Cons!65078 (h!71526 (_1!36583 lt!2371152)) (++!14369 (t!378806 (_1!36583 lt!2371152)) (_2!36583 lt!2371152))))))

(declare-fun b!6384329 () Bool)

(declare-fun res!2626179 () Bool)

(declare-fun e!3875359 () Bool)

(assert (=> b!6384329 (=> (not res!2626179) (not e!3875359))))

(declare-fun lt!2371289 () List!65202)

(declare-fun size!40360 (List!65202) Int)

(assert (=> b!6384329 (= res!2626179 (= (size!40360 lt!2371289) (+ (size!40360 (_1!36583 lt!2371152)) (size!40360 (_2!36583 lt!2371152)))))))

(declare-fun d!2001402 () Bool)

(assert (=> d!2001402 e!3875359))

(declare-fun res!2626178 () Bool)

(assert (=> d!2001402 (=> (not res!2626178) (not e!3875359))))

(declare-fun content!12317 (List!65202) (InoxSet C!32872))

(assert (=> d!2001402 (= res!2626178 (= (content!12317 lt!2371289) ((_ map or) (content!12317 (_1!36583 lt!2371152)) (content!12317 (_2!36583 lt!2371152)))))))

(assert (=> d!2001402 (= lt!2371289 e!3875358)))

(declare-fun c!1163393 () Bool)

(assert (=> d!2001402 (= c!1163393 ((_ is Nil!65078) (_1!36583 lt!2371152)))))

(assert (=> d!2001402 (= (++!14369 (_1!36583 lt!2371152) (_2!36583 lt!2371152)) lt!2371289)))

(declare-fun b!6384330 () Bool)

(assert (=> b!6384330 (= e!3875359 (or (not (= (_2!36583 lt!2371152) Nil!65078)) (= lt!2371289 (_1!36583 lt!2371152))))))

(assert (= (and d!2001402 c!1163393) b!6384327))

(assert (= (and d!2001402 (not c!1163393)) b!6384328))

(assert (= (and d!2001402 res!2626178) b!6384329))

(assert (= (and b!6384329 res!2626179) b!6384330))

(declare-fun m!7184004 () Bool)

(assert (=> b!6384328 m!7184004))

(declare-fun m!7184006 () Bool)

(assert (=> b!6384329 m!7184006))

(declare-fun m!7184008 () Bool)

(assert (=> b!6384329 m!7184008))

(declare-fun m!7184010 () Bool)

(assert (=> b!6384329 m!7184010))

(declare-fun m!7184012 () Bool)

(assert (=> d!2001402 m!7184012))

(declare-fun m!7184014 () Bool)

(assert (=> d!2001402 m!7184014))

(declare-fun m!7184016 () Bool)

(assert (=> d!2001402 m!7184016))

(assert (=> b!6383538 d!2001402))

(declare-fun bs!1597623 () Bool)

(declare-fun d!2001404 () Bool)

(assert (= bs!1597623 (and d!2001404 b!6383550)))

(declare-fun lambda!352305 () Int)

(assert (=> bs!1597623 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352305 lambda!352235))))

(declare-fun bs!1597624 () Bool)

(assert (= bs!1597624 (and d!2001404 d!2001398)))

(assert (=> bs!1597624 (not (= lambda!352305 lambda!352302))))

(declare-fun bs!1597625 () Bool)

(assert (= bs!1597625 (and d!2001404 b!6384262)))

(assert (=> bs!1597625 (not (= lambda!352305 lambda!352295))))

(declare-fun bs!1597626 () Bool)

(assert (= bs!1597626 (and d!2001404 b!6384269)))

(assert (=> bs!1597626 (not (= lambda!352305 lambda!352296))))

(declare-fun bs!1597627 () Bool)

(assert (= bs!1597627 (and d!2001404 b!6383538)))

(assert (=> bs!1597627 (not (= lambda!352305 lambda!352239))))

(assert (=> bs!1597623 (not (= lambda!352305 lambda!352236))))

(assert (=> bs!1597627 (= lambda!352305 lambda!352238)))

(assert (=> bs!1597624 (= lambda!352305 lambda!352301)))

(assert (=> d!2001404 true))

(assert (=> d!2001404 true))

(assert (=> d!2001404 true))

(assert (=> d!2001404 (= (isDefined!12895 (findConcatSeparation!2606 lt!2371171 (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326)) (Exists!3371 lambda!352305))))

(declare-fun lt!2371292 () Unit!158535)

(declare-fun choose!47508 (Regex!16301 Regex!16301 List!65202) Unit!158535)

(assert (=> d!2001404 (= lt!2371292 (choose!47508 lt!2371171 (regTwo!33114 r!7292) s!2326))))

(assert (=> d!2001404 (validRegex!8037 lt!2371171)))

(assert (=> d!2001404 (= (lemmaFindConcatSeparationEquivalentToExists!2370 lt!2371171 (regTwo!33114 r!7292) s!2326) lt!2371292)))

(declare-fun bs!1597628 () Bool)

(assert (= bs!1597628 d!2001404))

(declare-fun m!7184018 () Bool)

(assert (=> bs!1597628 m!7184018))

(assert (=> bs!1597628 m!7183404))

(declare-fun m!7184020 () Bool)

(assert (=> bs!1597628 m!7184020))

(assert (=> bs!1597628 m!7183404))

(declare-fun m!7184022 () Bool)

(assert (=> bs!1597628 m!7184022))

(assert (=> bs!1597628 m!7183902))

(assert (=> b!6383538 d!2001404))

(declare-fun b!6384335 () Bool)

(declare-fun e!3875365 () Bool)

(declare-fun e!3875363 () Bool)

(assert (=> b!6384335 (= e!3875365 e!3875363)))

(declare-fun res!2626189 () Bool)

(assert (=> b!6384335 (=> res!2626189 e!3875363)))

(declare-fun call!545612 () Bool)

(assert (=> b!6384335 (= res!2626189 call!545612)))

(declare-fun b!6384336 () Bool)

(declare-fun res!2626188 () Bool)

(declare-fun e!3875367 () Bool)

(assert (=> b!6384336 (=> res!2626188 e!3875367)))

(assert (=> b!6384336 (= res!2626188 (not ((_ is ElementMatch!16301) lt!2371176)))))

(declare-fun e!3875368 () Bool)

(assert (=> b!6384336 (= e!3875368 e!3875367)))

(declare-fun d!2001406 () Bool)

(declare-fun e!3875366 () Bool)

(assert (=> d!2001406 e!3875366))

(declare-fun c!1163394 () Bool)

(assert (=> d!2001406 (= c!1163394 ((_ is EmptyExpr!16301) lt!2371176))))

(declare-fun lt!2371293 () Bool)

(declare-fun e!3875364 () Bool)

(assert (=> d!2001406 (= lt!2371293 e!3875364)))

(declare-fun c!1163395 () Bool)

(assert (=> d!2001406 (= c!1163395 (isEmpty!37214 s!2326))))

(assert (=> d!2001406 (validRegex!8037 lt!2371176)))

(assert (=> d!2001406 (= (matchR!8484 lt!2371176 s!2326) lt!2371293)))

(declare-fun b!6384337 () Bool)

(assert (=> b!6384337 (= e!3875364 (matchR!8484 (derivativeStep!5005 lt!2371176 (head!13094 s!2326)) (tail!12179 s!2326)))))

(declare-fun b!6384338 () Bool)

(assert (=> b!6384338 (= e!3875366 e!3875368)))

(declare-fun c!1163396 () Bool)

(assert (=> b!6384338 (= c!1163396 ((_ is EmptyLang!16301) lt!2371176))))

(declare-fun b!6384339 () Bool)

(assert (=> b!6384339 (= e!3875366 (= lt!2371293 call!545612))))

(declare-fun b!6384340 () Bool)

(assert (=> b!6384340 (= e!3875367 e!3875365)))

(declare-fun res!2626190 () Bool)

(assert (=> b!6384340 (=> (not res!2626190) (not e!3875365))))

(assert (=> b!6384340 (= res!2626190 (not lt!2371293))))

(declare-fun b!6384341 () Bool)

(declare-fun res!2626191 () Bool)

(assert (=> b!6384341 (=> res!2626191 e!3875367)))

(declare-fun e!3875362 () Bool)

(assert (=> b!6384341 (= res!2626191 e!3875362)))

(declare-fun res!2626184 () Bool)

(assert (=> b!6384341 (=> (not res!2626184) (not e!3875362))))

(assert (=> b!6384341 (= res!2626184 lt!2371293)))

(declare-fun b!6384342 () Bool)

(declare-fun res!2626185 () Bool)

(assert (=> b!6384342 (=> (not res!2626185) (not e!3875362))))

(assert (=> b!6384342 (= res!2626185 (isEmpty!37214 (tail!12179 s!2326)))))

(declare-fun bm!545607 () Bool)

(assert (=> bm!545607 (= call!545612 (isEmpty!37214 s!2326))))

(declare-fun b!6384343 () Bool)

(declare-fun res!2626186 () Bool)

(assert (=> b!6384343 (=> (not res!2626186) (not e!3875362))))

(assert (=> b!6384343 (= res!2626186 (not call!545612))))

(declare-fun b!6384344 () Bool)

(assert (=> b!6384344 (= e!3875364 (nullable!6294 lt!2371176))))

(declare-fun b!6384345 () Bool)

(assert (=> b!6384345 (= e!3875368 (not lt!2371293))))

(declare-fun b!6384346 () Bool)

(declare-fun res!2626187 () Bool)

(assert (=> b!6384346 (=> res!2626187 e!3875363)))

(assert (=> b!6384346 (= res!2626187 (not (isEmpty!37214 (tail!12179 s!2326))))))

(declare-fun b!6384347 () Bool)

(assert (=> b!6384347 (= e!3875362 (= (head!13094 s!2326) (c!1163182 lt!2371176)))))

(declare-fun b!6384348 () Bool)

(assert (=> b!6384348 (= e!3875363 (not (= (head!13094 s!2326) (c!1163182 lt!2371176))))))

(assert (= (and d!2001406 c!1163395) b!6384344))

(assert (= (and d!2001406 (not c!1163395)) b!6384337))

(assert (= (and d!2001406 c!1163394) b!6384339))

(assert (= (and d!2001406 (not c!1163394)) b!6384338))

(assert (= (and b!6384338 c!1163396) b!6384345))

(assert (= (and b!6384338 (not c!1163396)) b!6384336))

(assert (= (and b!6384336 (not res!2626188)) b!6384341))

(assert (= (and b!6384341 res!2626184) b!6384343))

(assert (= (and b!6384343 res!2626186) b!6384342))

(assert (= (and b!6384342 res!2626185) b!6384347))

(assert (= (and b!6384341 (not res!2626191)) b!6384340))

(assert (= (and b!6384340 res!2626190) b!6384335))

(assert (= (and b!6384335 (not res!2626189)) b!6384346))

(assert (= (and b!6384346 (not res!2626187)) b!6384348))

(assert (= (or b!6384339 b!6384335 b!6384343) bm!545607))

(assert (=> b!6384337 m!7183954))

(assert (=> b!6384337 m!7183954))

(declare-fun m!7184024 () Bool)

(assert (=> b!6384337 m!7184024))

(assert (=> b!6384337 m!7183958))

(assert (=> b!6384337 m!7184024))

(assert (=> b!6384337 m!7183958))

(declare-fun m!7184026 () Bool)

(assert (=> b!6384337 m!7184026))

(assert (=> bm!545607 m!7183946))

(assert (=> b!6384342 m!7183958))

(assert (=> b!6384342 m!7183958))

(assert (=> b!6384342 m!7183962))

(declare-fun m!7184028 () Bool)

(assert (=> b!6384344 m!7184028))

(assert (=> b!6384347 m!7183954))

(assert (=> d!2001406 m!7183946))

(declare-fun m!7184030 () Bool)

(assert (=> d!2001406 m!7184030))

(assert (=> b!6384346 m!7183958))

(assert (=> b!6384346 m!7183958))

(assert (=> b!6384346 m!7183962))

(assert (=> b!6384348 m!7183954))

(assert (=> b!6383537 d!2001406))

(declare-fun bs!1597629 () Bool)

(declare-fun b!6384352 () Bool)

(assert (= bs!1597629 (and b!6384352 b!6383550)))

(declare-fun lambda!352306 () Int)

(assert (=> bs!1597629 (not (= lambda!352306 lambda!352235))))

(declare-fun bs!1597630 () Bool)

(assert (= bs!1597630 (and b!6384352 d!2001398)))

(assert (=> bs!1597630 (not (= lambda!352306 lambda!352302))))

(declare-fun bs!1597631 () Bool)

(assert (= bs!1597631 (and b!6384352 b!6384262)))

(assert (=> bs!1597631 (= (and (= (reg!16630 lt!2371176) (reg!16630 r!7292)) (= lt!2371176 r!7292)) (= lambda!352306 lambda!352295))))

(declare-fun bs!1597632 () Bool)

(assert (= bs!1597632 (and b!6384352 b!6384269)))

(assert (=> bs!1597632 (not (= lambda!352306 lambda!352296))))

(declare-fun bs!1597633 () Bool)

(assert (= bs!1597633 (and b!6384352 d!2001404)))

(assert (=> bs!1597633 (not (= lambda!352306 lambda!352305))))

(declare-fun bs!1597634 () Bool)

(assert (= bs!1597634 (and b!6384352 b!6383538)))

(assert (=> bs!1597634 (not (= lambda!352306 lambda!352239))))

(assert (=> bs!1597629 (not (= lambda!352306 lambda!352236))))

(assert (=> bs!1597634 (not (= lambda!352306 lambda!352238))))

(assert (=> bs!1597630 (not (= lambda!352306 lambda!352301))))

(assert (=> b!6384352 true))

(assert (=> b!6384352 true))

(declare-fun bs!1597635 () Bool)

(declare-fun b!6384359 () Bool)

(assert (= bs!1597635 (and b!6384359 b!6383550)))

(declare-fun lambda!352307 () Int)

(assert (=> bs!1597635 (not (= lambda!352307 lambda!352235))))

(declare-fun bs!1597636 () Bool)

(assert (= bs!1597636 (and b!6384359 d!2001398)))

(assert (=> bs!1597636 (= (and (= (regOne!33114 lt!2371176) lt!2371171) (= (regTwo!33114 lt!2371176) (regTwo!33114 r!7292))) (= lambda!352307 lambda!352302))))

(declare-fun bs!1597637 () Bool)

(assert (= bs!1597637 (and b!6384359 b!6384352)))

(assert (=> bs!1597637 (not (= lambda!352307 lambda!352306))))

(declare-fun bs!1597638 () Bool)

(assert (= bs!1597638 (and b!6384359 b!6384262)))

(assert (=> bs!1597638 (not (= lambda!352307 lambda!352295))))

(declare-fun bs!1597639 () Bool)

(assert (= bs!1597639 (and b!6384359 b!6384269)))

(assert (=> bs!1597639 (= (and (= (regOne!33114 lt!2371176) (regOne!33114 r!7292)) (= (regTwo!33114 lt!2371176) (regTwo!33114 r!7292))) (= lambda!352307 lambda!352296))))

(declare-fun bs!1597640 () Bool)

(assert (= bs!1597640 (and b!6384359 d!2001404)))

(assert (=> bs!1597640 (not (= lambda!352307 lambda!352305))))

(declare-fun bs!1597641 () Bool)

(assert (= bs!1597641 (and b!6384359 b!6383538)))

(assert (=> bs!1597641 (= (and (= (regOne!33114 lt!2371176) lt!2371171) (= (regTwo!33114 lt!2371176) (regTwo!33114 r!7292))) (= lambda!352307 lambda!352239))))

(assert (=> bs!1597635 (= (and (= (regOne!33114 lt!2371176) (regOne!33114 r!7292)) (= (regTwo!33114 lt!2371176) (regTwo!33114 r!7292))) (= lambda!352307 lambda!352236))))

(assert (=> bs!1597641 (not (= lambda!352307 lambda!352238))))

(assert (=> bs!1597636 (not (= lambda!352307 lambda!352301))))

(assert (=> b!6384359 true))

(assert (=> b!6384359 true))

(declare-fun bm!545608 () Bool)

(declare-fun call!545613 () Bool)

(assert (=> bm!545608 (= call!545613 (isEmpty!37214 s!2326))))

(declare-fun b!6384350 () Bool)

(declare-fun e!3875373 () Bool)

(declare-fun e!3875370 () Bool)

(assert (=> b!6384350 (= e!3875373 e!3875370)))

(declare-fun res!2626192 () Bool)

(assert (=> b!6384350 (= res!2626192 (not ((_ is EmptyLang!16301) lt!2371176)))))

(assert (=> b!6384350 (=> (not res!2626192) (not e!3875370))))

(declare-fun b!6384351 () Bool)

(declare-fun e!3875372 () Bool)

(assert (=> b!6384351 (= e!3875372 (= s!2326 (Cons!65078 (c!1163182 lt!2371176) Nil!65078)))))

(declare-fun e!3875374 () Bool)

(declare-fun call!545614 () Bool)

(assert (=> b!6384352 (= e!3875374 call!545614)))

(declare-fun b!6384353 () Bool)

(declare-fun e!3875375 () Bool)

(assert (=> b!6384353 (= e!3875375 (matchRSpec!3402 (regTwo!33115 lt!2371176) s!2326))))

(declare-fun b!6384354 () Bool)

(declare-fun e!3875369 () Bool)

(declare-fun e!3875371 () Bool)

(assert (=> b!6384354 (= e!3875369 e!3875371)))

(declare-fun c!1163397 () Bool)

(assert (=> b!6384354 (= c!1163397 ((_ is Star!16301) lt!2371176))))

(declare-fun b!6384355 () Bool)

(declare-fun res!2626194 () Bool)

(assert (=> b!6384355 (=> res!2626194 e!3875374)))

(assert (=> b!6384355 (= res!2626194 call!545613)))

(assert (=> b!6384355 (= e!3875371 e!3875374)))

(declare-fun bm!545609 () Bool)

(assert (=> bm!545609 (= call!545614 (Exists!3371 (ite c!1163397 lambda!352306 lambda!352307)))))

(declare-fun d!2001408 () Bool)

(declare-fun c!1163398 () Bool)

(assert (=> d!2001408 (= c!1163398 ((_ is EmptyExpr!16301) lt!2371176))))

(assert (=> d!2001408 (= (matchRSpec!3402 lt!2371176 s!2326) e!3875373)))

(declare-fun b!6384349 () Bool)

(assert (=> b!6384349 (= e!3875373 call!545613)))

(declare-fun b!6384356 () Bool)

(declare-fun c!1163399 () Bool)

(assert (=> b!6384356 (= c!1163399 ((_ is Union!16301) lt!2371176))))

(assert (=> b!6384356 (= e!3875372 e!3875369)))

(declare-fun b!6384357 () Bool)

(assert (=> b!6384357 (= e!3875369 e!3875375)))

(declare-fun res!2626193 () Bool)

(assert (=> b!6384357 (= res!2626193 (matchRSpec!3402 (regOne!33115 lt!2371176) s!2326))))

(assert (=> b!6384357 (=> res!2626193 e!3875375)))

(declare-fun b!6384358 () Bool)

(declare-fun c!1163400 () Bool)

(assert (=> b!6384358 (= c!1163400 ((_ is ElementMatch!16301) lt!2371176))))

(assert (=> b!6384358 (= e!3875370 e!3875372)))

(assert (=> b!6384359 (= e!3875371 call!545614)))

(assert (= (and d!2001408 c!1163398) b!6384349))

(assert (= (and d!2001408 (not c!1163398)) b!6384350))

(assert (= (and b!6384350 res!2626192) b!6384358))

(assert (= (and b!6384358 c!1163400) b!6384351))

(assert (= (and b!6384358 (not c!1163400)) b!6384356))

(assert (= (and b!6384356 c!1163399) b!6384357))

(assert (= (and b!6384356 (not c!1163399)) b!6384354))

(assert (= (and b!6384357 (not res!2626193)) b!6384353))

(assert (= (and b!6384354 c!1163397) b!6384355))

(assert (= (and b!6384354 (not c!1163397)) b!6384359))

(assert (= (and b!6384355 (not res!2626194)) b!6384352))

(assert (= (or b!6384352 b!6384359) bm!545609))

(assert (= (or b!6384349 b!6384355) bm!545608))

(assert (=> bm!545608 m!7183946))

(declare-fun m!7184032 () Bool)

(assert (=> b!6384353 m!7184032))

(declare-fun m!7184034 () Bool)

(assert (=> bm!545609 m!7184034))

(declare-fun m!7184036 () Bool)

(assert (=> b!6384357 m!7184036))

(assert (=> b!6383537 d!2001408))

(declare-fun d!2001410 () Bool)

(assert (=> d!2001410 (= (matchR!8484 lt!2371176 s!2326) (matchRSpec!3402 lt!2371176 s!2326))))

(declare-fun lt!2371294 () Unit!158535)

(assert (=> d!2001410 (= lt!2371294 (choose!47505 lt!2371176 s!2326))))

(assert (=> d!2001410 (validRegex!8037 lt!2371176)))

(assert (=> d!2001410 (= (mainMatchTheorem!3402 lt!2371176 s!2326) lt!2371294)))

(declare-fun bs!1597642 () Bool)

(assert (= bs!1597642 d!2001410))

(assert (=> bs!1597642 m!7183370))

(assert (=> bs!1597642 m!7183372))

(declare-fun m!7184038 () Bool)

(assert (=> bs!1597642 m!7184038))

(assert (=> bs!1597642 m!7184030))

(assert (=> b!6383537 d!2001410))

(declare-fun d!2001412 () Bool)

(declare-fun c!1163401 () Bool)

(assert (=> d!2001412 (= c!1163401 (isEmpty!37214 (t!378806 s!2326)))))

(declare-fun e!3875376 () Bool)

(assert (=> d!2001412 (= (matchZipper!2313 lt!2371179 (t!378806 s!2326)) e!3875376)))

(declare-fun b!6384360 () Bool)

(assert (=> b!6384360 (= e!3875376 (nullableZipper!2066 lt!2371179))))

(declare-fun b!6384361 () Bool)

(assert (=> b!6384361 (= e!3875376 (matchZipper!2313 (derivationStepZipper!2267 lt!2371179 (head!13094 (t!378806 s!2326))) (tail!12179 (t!378806 s!2326))))))

(assert (= (and d!2001412 c!1163401) b!6384360))

(assert (= (and d!2001412 (not c!1163401)) b!6384361))

(assert (=> d!2001412 m!7183842))

(declare-fun m!7184040 () Bool)

(assert (=> b!6384360 m!7184040))

(assert (=> b!6384361 m!7183846))

(assert (=> b!6384361 m!7183846))

(declare-fun m!7184042 () Bool)

(assert (=> b!6384361 m!7184042))

(assert (=> b!6384361 m!7183850))

(assert (=> b!6384361 m!7184042))

(assert (=> b!6384361 m!7183850))

(declare-fun m!7184044 () Bool)

(assert (=> b!6384361 m!7184044))

(assert (=> b!6383555 d!2001412))

(declare-fun d!2001414 () Bool)

(declare-fun dynLambda!25819 (Int Context!11370) (InoxSet Context!11370))

(assert (=> d!2001414 (= (flatMap!1806 lt!2371154 lambda!352237) (dynLambda!25819 lambda!352237 lt!2371181))))

(declare-fun lt!2371297 () Unit!158535)

(declare-fun choose!47509 ((InoxSet Context!11370) Context!11370 Int) Unit!158535)

(assert (=> d!2001414 (= lt!2371297 (choose!47509 lt!2371154 lt!2371181 lambda!352237))))

(assert (=> d!2001414 (= lt!2371154 (store ((as const (Array Context!11370 Bool)) false) lt!2371181 true))))

(assert (=> d!2001414 (= (lemmaFlatMapOnSingletonSet!1332 lt!2371154 lt!2371181 lambda!352237) lt!2371297)))

(declare-fun b_lambda!242565 () Bool)

(assert (=> (not b_lambda!242565) (not d!2001414)))

(declare-fun bs!1597643 () Bool)

(assert (= bs!1597643 d!2001414))

(assert (=> bs!1597643 m!7183354))

(declare-fun m!7184046 () Bool)

(assert (=> bs!1597643 m!7184046))

(declare-fun m!7184048 () Bool)

(assert (=> bs!1597643 m!7184048))

(assert (=> bs!1597643 m!7183350))

(assert (=> b!6383536 d!2001414))

(declare-fun d!2001416 () Bool)

(declare-fun lt!2371298 () Regex!16301)

(assert (=> d!2001416 (validRegex!8037 lt!2371298)))

(assert (=> d!2001416 (= lt!2371298 (generalisedUnion!2145 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080))))))

(assert (=> d!2001416 (= (unfocusZipper!2043 (Cons!65080 lt!2371181 Nil!65080)) lt!2371298)))

(declare-fun bs!1597644 () Bool)

(assert (= bs!1597644 d!2001416))

(declare-fun m!7184050 () Bool)

(assert (=> bs!1597644 m!7184050))

(declare-fun m!7184052 () Bool)

(assert (=> bs!1597644 m!7184052))

(assert (=> bs!1597644 m!7184052))

(declare-fun m!7184054 () Bool)

(assert (=> bs!1597644 m!7184054))

(assert (=> b!6383536 d!2001416))

(declare-fun b!6384372 () Bool)

(declare-fun e!3875384 () (InoxSet Context!11370))

(declare-fun call!545617 () (InoxSet Context!11370))

(assert (=> b!6384372 (= e!3875384 call!545617)))

(declare-fun b!6384373 () Bool)

(declare-fun e!3875385 () Bool)

(assert (=> b!6384373 (= e!3875385 (nullable!6294 (h!71527 (exprs!6185 lt!2371169))))))

(declare-fun bm!545612 () Bool)

(assert (=> bm!545612 (= call!545617 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 lt!2371169)) (Context!11371 (t!378807 (exprs!6185 lt!2371169))) (h!71526 s!2326)))))

(declare-fun b!6384375 () Bool)

(declare-fun e!3875383 () (InoxSet Context!11370))

(assert (=> b!6384375 (= e!3875383 ((_ map or) call!545617 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 lt!2371169))) (h!71526 s!2326))))))

(declare-fun b!6384376 () Bool)

(assert (=> b!6384376 (= e!3875383 e!3875384)))

(declare-fun c!1163407 () Bool)

(assert (=> b!6384376 (= c!1163407 ((_ is Cons!65079) (exprs!6185 lt!2371169)))))

(declare-fun d!2001418 () Bool)

(declare-fun c!1163406 () Bool)

(assert (=> d!2001418 (= c!1163406 e!3875385)))

(declare-fun res!2626197 () Bool)

(assert (=> d!2001418 (=> (not res!2626197) (not e!3875385))))

(assert (=> d!2001418 (= res!2626197 ((_ is Cons!65079) (exprs!6185 lt!2371169)))))

(assert (=> d!2001418 (= (derivationStepZipperUp!1475 lt!2371169 (h!71526 s!2326)) e!3875383)))

(declare-fun b!6384374 () Bool)

(assert (=> b!6384374 (= e!3875384 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001418 res!2626197) b!6384373))

(assert (= (and d!2001418 c!1163406) b!6384375))

(assert (= (and d!2001418 (not c!1163406)) b!6384376))

(assert (= (and b!6384376 c!1163407) b!6384372))

(assert (= (and b!6384376 (not c!1163407)) b!6384374))

(assert (= (or b!6384375 b!6384372) bm!545612))

(declare-fun m!7184056 () Bool)

(assert (=> b!6384373 m!7184056))

(declare-fun m!7184058 () Bool)

(assert (=> bm!545612 m!7184058))

(declare-fun m!7184060 () Bool)

(assert (=> b!6384375 m!7184060))

(assert (=> b!6383536 d!2001418))

(declare-fun d!2001420 () Bool)

(declare-fun choose!47510 ((InoxSet Context!11370) Int) (InoxSet Context!11370))

(assert (=> d!2001420 (= (flatMap!1806 lt!2371154 lambda!352237) (choose!47510 lt!2371154 lambda!352237))))

(declare-fun bs!1597645 () Bool)

(assert (= bs!1597645 d!2001420))

(declare-fun m!7184062 () Bool)

(assert (=> bs!1597645 m!7184062))

(assert (=> b!6383536 d!2001420))

(declare-fun d!2001422 () Bool)

(assert (=> d!2001422 (= (flatMap!1806 lt!2371185 lambda!352237) (choose!47510 lt!2371185 lambda!352237))))

(declare-fun bs!1597646 () Bool)

(assert (= bs!1597646 d!2001422))

(declare-fun m!7184064 () Bool)

(assert (=> bs!1597646 m!7184064))

(assert (=> b!6383536 d!2001422))

(declare-fun d!2001424 () Bool)

(assert (=> d!2001424 (= (flatMap!1806 lt!2371185 lambda!352237) (dynLambda!25819 lambda!352237 lt!2371169))))

(declare-fun lt!2371299 () Unit!158535)

(assert (=> d!2001424 (= lt!2371299 (choose!47509 lt!2371185 lt!2371169 lambda!352237))))

(assert (=> d!2001424 (= lt!2371185 (store ((as const (Array Context!11370 Bool)) false) lt!2371169 true))))

(assert (=> d!2001424 (= (lemmaFlatMapOnSingletonSet!1332 lt!2371185 lt!2371169 lambda!352237) lt!2371299)))

(declare-fun b_lambda!242567 () Bool)

(assert (=> (not b_lambda!242567) (not d!2001424)))

(declare-fun bs!1597647 () Bool)

(assert (= bs!1597647 d!2001424))

(assert (=> bs!1597647 m!7183348))

(declare-fun m!7184066 () Bool)

(assert (=> bs!1597647 m!7184066))

(declare-fun m!7184068 () Bool)

(assert (=> bs!1597647 m!7184068))

(assert (=> bs!1597647 m!7183356))

(assert (=> b!6383536 d!2001424))

(declare-fun b!6384377 () Bool)

(declare-fun e!3875387 () (InoxSet Context!11370))

(declare-fun call!545618 () (InoxSet Context!11370))

(assert (=> b!6384377 (= e!3875387 call!545618)))

(declare-fun b!6384378 () Bool)

(declare-fun e!3875388 () Bool)

(assert (=> b!6384378 (= e!3875388 (nullable!6294 (h!71527 (exprs!6185 lt!2371181))))))

(declare-fun bm!545613 () Bool)

(assert (=> bm!545613 (= call!545618 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 lt!2371181)) (Context!11371 (t!378807 (exprs!6185 lt!2371181))) (h!71526 s!2326)))))

(declare-fun b!6384380 () Bool)

(declare-fun e!3875386 () (InoxSet Context!11370))

(assert (=> b!6384380 (= e!3875386 ((_ map or) call!545618 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 lt!2371181))) (h!71526 s!2326))))))

(declare-fun b!6384381 () Bool)

(assert (=> b!6384381 (= e!3875386 e!3875387)))

(declare-fun c!1163409 () Bool)

(assert (=> b!6384381 (= c!1163409 ((_ is Cons!65079) (exprs!6185 lt!2371181)))))

(declare-fun d!2001426 () Bool)

(declare-fun c!1163408 () Bool)

(assert (=> d!2001426 (= c!1163408 e!3875388)))

(declare-fun res!2626198 () Bool)

(assert (=> d!2001426 (=> (not res!2626198) (not e!3875388))))

(assert (=> d!2001426 (= res!2626198 ((_ is Cons!65079) (exprs!6185 lt!2371181)))))

(assert (=> d!2001426 (= (derivationStepZipperUp!1475 lt!2371181 (h!71526 s!2326)) e!3875386)))

(declare-fun b!6384379 () Bool)

(assert (=> b!6384379 (= e!3875387 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001426 res!2626198) b!6384378))

(assert (= (and d!2001426 c!1163408) b!6384380))

(assert (= (and d!2001426 (not c!1163408)) b!6384381))

(assert (= (and b!6384381 c!1163409) b!6384377))

(assert (= (and b!6384381 (not c!1163409)) b!6384379))

(assert (= (or b!6384380 b!6384377) bm!545613))

(declare-fun m!7184070 () Bool)

(assert (=> b!6384378 m!7184070))

(declare-fun m!7184072 () Bool)

(assert (=> bm!545613 m!7184072))

(declare-fun m!7184074 () Bool)

(assert (=> b!6384380 m!7184074))

(assert (=> b!6383536 d!2001426))

(declare-fun d!2001428 () Bool)

(declare-fun c!1163410 () Bool)

(assert (=> d!2001428 (= c!1163410 (isEmpty!37214 s!2326))))

(declare-fun e!3875389 () Bool)

(assert (=> d!2001428 (= (matchZipper!2313 lt!2371175 s!2326) e!3875389)))

(declare-fun b!6384382 () Bool)

(assert (=> b!6384382 (= e!3875389 (nullableZipper!2066 lt!2371175))))

(declare-fun b!6384383 () Bool)

(assert (=> b!6384383 (= e!3875389 (matchZipper!2313 (derivationStepZipper!2267 lt!2371175 (head!13094 s!2326)) (tail!12179 s!2326)))))

(assert (= (and d!2001428 c!1163410) b!6384382))

(assert (= (and d!2001428 (not c!1163410)) b!6384383))

(assert (=> d!2001428 m!7183946))

(declare-fun m!7184076 () Bool)

(assert (=> b!6384382 m!7184076))

(assert (=> b!6384383 m!7183954))

(assert (=> b!6384383 m!7183954))

(declare-fun m!7184078 () Bool)

(assert (=> b!6384383 m!7184078))

(assert (=> b!6384383 m!7183958))

(assert (=> b!6384383 m!7184078))

(assert (=> b!6384383 m!7183958))

(declare-fun m!7184080 () Bool)

(assert (=> b!6384383 m!7184080))

(assert (=> b!6383535 d!2001428))

(declare-fun d!2001430 () Bool)

(declare-fun c!1163411 () Bool)

(assert (=> d!2001430 (= c!1163411 (isEmpty!37214 (t!378806 s!2326)))))

(declare-fun e!3875390 () Bool)

(assert (=> d!2001430 (= (matchZipper!2313 lt!2371161 (t!378806 s!2326)) e!3875390)))

(declare-fun b!6384384 () Bool)

(assert (=> b!6384384 (= e!3875390 (nullableZipper!2066 lt!2371161))))

(declare-fun b!6384385 () Bool)

(assert (=> b!6384385 (= e!3875390 (matchZipper!2313 (derivationStepZipper!2267 lt!2371161 (head!13094 (t!378806 s!2326))) (tail!12179 (t!378806 s!2326))))))

(assert (= (and d!2001430 c!1163411) b!6384384))

(assert (= (and d!2001430 (not c!1163411)) b!6384385))

(assert (=> d!2001430 m!7183842))

(declare-fun m!7184082 () Bool)

(assert (=> b!6384384 m!7184082))

(assert (=> b!6384385 m!7183846))

(assert (=> b!6384385 m!7183846))

(declare-fun m!7184084 () Bool)

(assert (=> b!6384385 m!7184084))

(assert (=> b!6384385 m!7183850))

(assert (=> b!6384385 m!7184084))

(assert (=> b!6384385 m!7183850))

(declare-fun m!7184086 () Bool)

(assert (=> b!6384385 m!7184086))

(assert (=> b!6383535 d!2001430))

(declare-fun d!2001432 () Bool)

(assert (=> d!2001432 (= (flatMap!1806 lt!2371175 lambda!352237) (choose!47510 lt!2371175 lambda!352237))))

(declare-fun bs!1597648 () Bool)

(assert (= bs!1597648 d!2001432))

(declare-fun m!7184088 () Bool)

(assert (=> bs!1597648 m!7184088))

(assert (=> b!6383554 d!2001432))

(declare-fun b!6384386 () Bool)

(declare-fun e!3875392 () (InoxSet Context!11370))

(declare-fun call!545619 () (InoxSet Context!11370))

(assert (=> b!6384386 (= e!3875392 call!545619)))

(declare-fun b!6384387 () Bool)

(declare-fun e!3875393 () Bool)

(assert (=> b!6384387 (= e!3875393 (nullable!6294 (h!71527 (exprs!6185 lt!2371174))))))

(declare-fun bm!545614 () Bool)

(assert (=> bm!545614 (= call!545619 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 lt!2371174)) (Context!11371 (t!378807 (exprs!6185 lt!2371174))) (h!71526 s!2326)))))

(declare-fun b!6384389 () Bool)

(declare-fun e!3875391 () (InoxSet Context!11370))

(assert (=> b!6384389 (= e!3875391 ((_ map or) call!545619 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 lt!2371174))) (h!71526 s!2326))))))

(declare-fun b!6384390 () Bool)

(assert (=> b!6384390 (= e!3875391 e!3875392)))

(declare-fun c!1163413 () Bool)

(assert (=> b!6384390 (= c!1163413 ((_ is Cons!65079) (exprs!6185 lt!2371174)))))

(declare-fun d!2001434 () Bool)

(declare-fun c!1163412 () Bool)

(assert (=> d!2001434 (= c!1163412 e!3875393)))

(declare-fun res!2626199 () Bool)

(assert (=> d!2001434 (=> (not res!2626199) (not e!3875393))))

(assert (=> d!2001434 (= res!2626199 ((_ is Cons!65079) (exprs!6185 lt!2371174)))))

(assert (=> d!2001434 (= (derivationStepZipperUp!1475 lt!2371174 (h!71526 s!2326)) e!3875391)))

(declare-fun b!6384388 () Bool)

(assert (=> b!6384388 (= e!3875392 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001434 res!2626199) b!6384387))

(assert (= (and d!2001434 c!1163412) b!6384389))

(assert (= (and d!2001434 (not c!1163412)) b!6384390))

(assert (= (and b!6384390 c!1163413) b!6384386))

(assert (= (and b!6384390 (not c!1163413)) b!6384388))

(assert (= (or b!6384389 b!6384386) bm!545614))

(declare-fun m!7184090 () Bool)

(assert (=> b!6384387 m!7184090))

(declare-fun m!7184092 () Bool)

(assert (=> bm!545614 m!7184092))

(declare-fun m!7184094 () Bool)

(assert (=> b!6384389 m!7184094))

(assert (=> b!6383554 d!2001434))

(declare-fun d!2001436 () Bool)

(assert (=> d!2001436 (= (flatMap!1806 lt!2371175 lambda!352237) (dynLambda!25819 lambda!352237 lt!2371174))))

(declare-fun lt!2371300 () Unit!158535)

(assert (=> d!2001436 (= lt!2371300 (choose!47509 lt!2371175 lt!2371174 lambda!352237))))

(assert (=> d!2001436 (= lt!2371175 (store ((as const (Array Context!11370 Bool)) false) lt!2371174 true))))

(assert (=> d!2001436 (= (lemmaFlatMapOnSingletonSet!1332 lt!2371175 lt!2371174 lambda!352237) lt!2371300)))

(declare-fun b_lambda!242569 () Bool)

(assert (=> (not b_lambda!242569) (not d!2001436)))

(declare-fun bs!1597649 () Bool)

(assert (= bs!1597649 d!2001436))

(assert (=> bs!1597649 m!7183364))

(declare-fun m!7184096 () Bool)

(assert (=> bs!1597649 m!7184096))

(declare-fun m!7184098 () Bool)

(assert (=> bs!1597649 m!7184098))

(assert (=> bs!1597649 m!7183362))

(assert (=> b!6383554 d!2001436))

(declare-fun bs!1597650 () Bool)

(declare-fun d!2001438 () Bool)

(assert (= bs!1597650 (and d!2001438 b!6383534)))

(declare-fun lambda!352310 () Int)

(assert (=> bs!1597650 (= lambda!352310 lambda!352237)))

(assert (=> d!2001438 true))

(assert (=> d!2001438 (= (derivationStepZipper!2267 lt!2371175 (h!71526 s!2326)) (flatMap!1806 lt!2371175 lambda!352310))))

(declare-fun bs!1597651 () Bool)

(assert (= bs!1597651 d!2001438))

(declare-fun m!7184100 () Bool)

(assert (=> bs!1597651 m!7184100))

(assert (=> b!6383554 d!2001438))

(declare-fun b!6384393 () Bool)

(declare-fun e!3875399 () (InoxSet Context!11370))

(assert (=> b!6384393 (= e!3875399 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6384394 () Bool)

(declare-fun call!545622 () (InoxSet Context!11370))

(assert (=> b!6384394 (= e!3875399 call!545622)))

(declare-fun b!6384395 () Bool)

(declare-fun e!3875396 () (InoxSet Context!11370))

(declare-fun e!3875394 () (InoxSet Context!11370))

(assert (=> b!6384395 (= e!3875396 e!3875394)))

(declare-fun c!1163420 () Bool)

(assert (=> b!6384395 (= c!1163420 ((_ is Union!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6384396 () Bool)

(declare-fun e!3875397 () (InoxSet Context!11370))

(declare-fun call!545621 () (InoxSet Context!11370))

(declare-fun call!545623 () (InoxSet Context!11370))

(assert (=> b!6384396 (= e!3875397 ((_ map or) call!545621 call!545623))))

(declare-fun b!6384397 () Bool)

(declare-fun call!545625 () (InoxSet Context!11370))

(assert (=> b!6384397 (= e!3875394 ((_ map or) call!545625 call!545621))))

(declare-fun bm!545615 () Bool)

(assert (=> bm!545615 (= call!545623 call!545625)))

(declare-fun c!1163416 () Bool)

(declare-fun call!545624 () List!65203)

(declare-fun c!1163419 () Bool)

(declare-fun bm!545616 () Bool)

(assert (=> bm!545616 (= call!545624 ($colon$colon!2161 (exprs!6185 lt!2371183) (ite (or c!1163416 c!1163419) (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (h!71527 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun b!6384398 () Bool)

(declare-fun e!3875395 () (InoxSet Context!11370))

(assert (=> b!6384398 (= e!3875395 call!545622)))

(declare-fun d!2001440 () Bool)

(declare-fun c!1163417 () Bool)

(assert (=> d!2001440 (= c!1163417 (and ((_ is ElementMatch!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))) (= (c!1163182 (h!71527 (exprs!6185 (h!71528 zl!343)))) (h!71526 s!2326))))))

(assert (=> d!2001440 (= (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (h!71528 zl!343))) lt!2371183 (h!71526 s!2326)) e!3875396)))

(declare-fun bm!545617 () Bool)

(assert (=> bm!545617 (= call!545622 call!545623)))

(declare-fun bm!545618 () Bool)

(assert (=> bm!545618 (= call!545621 (derivationStepZipperDown!1549 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))) (ite c!1163420 lt!2371183 (Context!11371 call!545624)) (h!71526 s!2326)))))

(declare-fun b!6384399 () Bool)

(declare-fun e!3875398 () Bool)

(assert (=> b!6384399 (= c!1163416 e!3875398)))

(declare-fun res!2626200 () Bool)

(assert (=> b!6384399 (=> (not res!2626200) (not e!3875398))))

(assert (=> b!6384399 (= res!2626200 ((_ is Concat!25146) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> b!6384399 (= e!3875394 e!3875397)))

(declare-fun call!545620 () List!65203)

(declare-fun bm!545619 () Bool)

(assert (=> bm!545619 (= call!545625 (derivationStepZipperDown!1549 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343))))))) (ite (or c!1163420 c!1163416) lt!2371183 (Context!11371 call!545620)) (h!71526 s!2326)))))

(declare-fun b!6384400 () Bool)

(assert (=> b!6384400 (= e!3875396 (store ((as const (Array Context!11370 Bool)) false) lt!2371183 true))))

(declare-fun bm!545620 () Bool)

(assert (=> bm!545620 (= call!545620 call!545624)))

(declare-fun b!6384401 () Bool)

(assert (=> b!6384401 (= e!3875398 (nullable!6294 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun b!6384402 () Bool)

(assert (=> b!6384402 (= e!3875397 e!3875395)))

(assert (=> b!6384402 (= c!1163419 ((_ is Concat!25146) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6384403 () Bool)

(declare-fun c!1163418 () Bool)

(assert (=> b!6384403 (= c!1163418 ((_ is Star!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> b!6384403 (= e!3875395 e!3875399)))

(assert (= (and d!2001440 c!1163417) b!6384400))

(assert (= (and d!2001440 (not c!1163417)) b!6384395))

(assert (= (and b!6384395 c!1163420) b!6384397))

(assert (= (and b!6384395 (not c!1163420)) b!6384399))

(assert (= (and b!6384399 res!2626200) b!6384401))

(assert (= (and b!6384399 c!1163416) b!6384396))

(assert (= (and b!6384399 (not c!1163416)) b!6384402))

(assert (= (and b!6384402 c!1163419) b!6384398))

(assert (= (and b!6384402 (not c!1163419)) b!6384403))

(assert (= (and b!6384403 c!1163418) b!6384394))

(assert (= (and b!6384403 (not c!1163418)) b!6384393))

(assert (= (or b!6384398 b!6384394) bm!545620))

(assert (= (or b!6384398 b!6384394) bm!545617))

(assert (= (or b!6384396 bm!545620) bm!545616))

(assert (= (or b!6384396 bm!545617) bm!545615))

(assert (= (or b!6384397 b!6384396) bm!545618))

(assert (= (or b!6384397 bm!545615) bm!545619))

(declare-fun m!7184102 () Bool)

(assert (=> bm!545618 m!7184102))

(declare-fun m!7184104 () Bool)

(assert (=> b!6384400 m!7184104))

(declare-fun m!7184106 () Bool)

(assert (=> bm!545619 m!7184106))

(declare-fun m!7184108 () Bool)

(assert (=> b!6384401 m!7184108))

(declare-fun m!7184110 () Bool)

(assert (=> bm!545616 m!7184110))

(assert (=> b!6383534 d!2001440))

(declare-fun d!2001442 () Bool)

(assert (=> d!2001442 (= (flatMap!1806 z!1189 lambda!352237) (dynLambda!25819 lambda!352237 (h!71528 zl!343)))))

(declare-fun lt!2371301 () Unit!158535)

(assert (=> d!2001442 (= lt!2371301 (choose!47509 z!1189 (h!71528 zl!343) lambda!352237))))

(assert (=> d!2001442 (= z!1189 (store ((as const (Array Context!11370 Bool)) false) (h!71528 zl!343) true))))

(assert (=> d!2001442 (= (lemmaFlatMapOnSingletonSet!1332 z!1189 (h!71528 zl!343) lambda!352237) lt!2371301)))

(declare-fun b_lambda!242571 () Bool)

(assert (=> (not b_lambda!242571) (not d!2001442)))

(declare-fun bs!1597652 () Bool)

(assert (= bs!1597652 d!2001442))

(assert (=> bs!1597652 m!7183388))

(declare-fun m!7184112 () Bool)

(assert (=> bs!1597652 m!7184112))

(declare-fun m!7184114 () Bool)

(assert (=> bs!1597652 m!7184114))

(declare-fun m!7184116 () Bool)

(assert (=> bs!1597652 m!7184116))

(assert (=> b!6383534 d!2001442))

(declare-fun d!2001444 () Bool)

(assert (=> d!2001444 (= (flatMap!1806 z!1189 lambda!352237) (choose!47510 z!1189 lambda!352237))))

(declare-fun bs!1597653 () Bool)

(assert (= bs!1597653 d!2001444))

(declare-fun m!7184118 () Bool)

(assert (=> bs!1597653 m!7184118))

(assert (=> b!6383534 d!2001444))

(declare-fun d!2001446 () Bool)

(declare-fun nullableFct!2240 (Regex!16301) Bool)

(assert (=> d!2001446 (= (nullable!6294 (h!71527 (exprs!6185 (h!71528 zl!343)))) (nullableFct!2240 (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun bs!1597654 () Bool)

(assert (= bs!1597654 d!2001446))

(declare-fun m!7184120 () Bool)

(assert (=> bs!1597654 m!7184120))

(assert (=> b!6383534 d!2001446))

(declare-fun b!6384404 () Bool)

(declare-fun e!3875401 () (InoxSet Context!11370))

(declare-fun call!545626 () (InoxSet Context!11370))

(assert (=> b!6384404 (= e!3875401 call!545626)))

(declare-fun b!6384405 () Bool)

(declare-fun e!3875402 () Bool)

(assert (=> b!6384405 (= e!3875402 (nullable!6294 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))))))

(declare-fun bm!545621 () Bool)

(assert (=> bm!545621 (= call!545626 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (h!71526 s!2326)))))

(declare-fun e!3875400 () (InoxSet Context!11370))

(declare-fun b!6384407 () Bool)

(assert (=> b!6384407 (= e!3875400 ((_ map or) call!545626 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (h!71526 s!2326))))))

(declare-fun b!6384408 () Bool)

(assert (=> b!6384408 (= e!3875400 e!3875401)))

(declare-fun c!1163422 () Bool)

(assert (=> b!6384408 (= c!1163422 ((_ is Cons!65079) (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))))

(declare-fun d!2001448 () Bool)

(declare-fun c!1163421 () Bool)

(assert (=> d!2001448 (= c!1163421 e!3875402)))

(declare-fun res!2626201 () Bool)

(assert (=> d!2001448 (=> (not res!2626201) (not e!3875402))))

(assert (=> d!2001448 (= res!2626201 ((_ is Cons!65079) (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))))

(assert (=> d!2001448 (= (derivationStepZipperUp!1475 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))) (h!71526 s!2326)) e!3875400)))

(declare-fun b!6384406 () Bool)

(assert (=> b!6384406 (= e!3875401 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001448 res!2626201) b!6384405))

(assert (= (and d!2001448 c!1163421) b!6384407))

(assert (= (and d!2001448 (not c!1163421)) b!6384408))

(assert (= (and b!6384408 c!1163422) b!6384404))

(assert (= (and b!6384408 (not c!1163422)) b!6384406))

(assert (= (or b!6384407 b!6384404) bm!545621))

(declare-fun m!7184122 () Bool)

(assert (=> b!6384405 m!7184122))

(declare-fun m!7184124 () Bool)

(assert (=> bm!545621 m!7184124))

(declare-fun m!7184126 () Bool)

(assert (=> b!6384407 m!7184126))

(assert (=> b!6383534 d!2001448))

(declare-fun b!6384409 () Bool)

(declare-fun e!3875404 () (InoxSet Context!11370))

(declare-fun call!545627 () (InoxSet Context!11370))

(assert (=> b!6384409 (= e!3875404 call!545627)))

(declare-fun b!6384410 () Bool)

(declare-fun e!3875405 () Bool)

(assert (=> b!6384410 (= e!3875405 (nullable!6294 (h!71527 (exprs!6185 lt!2371183))))))

(declare-fun bm!545622 () Bool)

(assert (=> bm!545622 (= call!545627 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 lt!2371183)) (Context!11371 (t!378807 (exprs!6185 lt!2371183))) (h!71526 s!2326)))))

(declare-fun b!6384412 () Bool)

(declare-fun e!3875403 () (InoxSet Context!11370))

(assert (=> b!6384412 (= e!3875403 ((_ map or) call!545627 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 lt!2371183))) (h!71526 s!2326))))))

(declare-fun b!6384413 () Bool)

(assert (=> b!6384413 (= e!3875403 e!3875404)))

(declare-fun c!1163424 () Bool)

(assert (=> b!6384413 (= c!1163424 ((_ is Cons!65079) (exprs!6185 lt!2371183)))))

(declare-fun d!2001450 () Bool)

(declare-fun c!1163423 () Bool)

(assert (=> d!2001450 (= c!1163423 e!3875405)))

(declare-fun res!2626202 () Bool)

(assert (=> d!2001450 (=> (not res!2626202) (not e!3875405))))

(assert (=> d!2001450 (= res!2626202 ((_ is Cons!65079) (exprs!6185 lt!2371183)))))

(assert (=> d!2001450 (= (derivationStepZipperUp!1475 lt!2371183 (h!71526 s!2326)) e!3875403)))

(declare-fun b!6384411 () Bool)

(assert (=> b!6384411 (= e!3875404 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001450 res!2626202) b!6384410))

(assert (= (and d!2001450 c!1163423) b!6384412))

(assert (= (and d!2001450 (not c!1163423)) b!6384413))

(assert (= (and b!6384413 c!1163424) b!6384409))

(assert (= (and b!6384413 (not c!1163424)) b!6384411))

(assert (= (or b!6384412 b!6384409) bm!545622))

(declare-fun m!7184128 () Bool)

(assert (=> b!6384410 m!7184128))

(declare-fun m!7184130 () Bool)

(assert (=> bm!545622 m!7184130))

(declare-fun m!7184132 () Bool)

(assert (=> b!6384412 m!7184132))

(assert (=> b!6383534 d!2001450))

(declare-fun b!6384414 () Bool)

(declare-fun e!3875407 () (InoxSet Context!11370))

(declare-fun call!545628 () (InoxSet Context!11370))

(assert (=> b!6384414 (= e!3875407 call!545628)))

(declare-fun b!6384415 () Bool)

(declare-fun e!3875408 () Bool)

(assert (=> b!6384415 (= e!3875408 (nullable!6294 (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun bm!545623 () Bool)

(assert (=> bm!545623 (= call!545628 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (h!71528 zl!343))) (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))) (h!71526 s!2326)))))

(declare-fun e!3875406 () (InoxSet Context!11370))

(declare-fun b!6384417 () Bool)

(assert (=> b!6384417 (= e!3875406 ((_ map or) call!545628 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))) (h!71526 s!2326))))))

(declare-fun b!6384418 () Bool)

(assert (=> b!6384418 (= e!3875406 e!3875407)))

(declare-fun c!1163426 () Bool)

(assert (=> b!6384418 (= c!1163426 ((_ is Cons!65079) (exprs!6185 (h!71528 zl!343))))))

(declare-fun d!2001452 () Bool)

(declare-fun c!1163425 () Bool)

(assert (=> d!2001452 (= c!1163425 e!3875408)))

(declare-fun res!2626203 () Bool)

(assert (=> d!2001452 (=> (not res!2626203) (not e!3875408))))

(assert (=> d!2001452 (= res!2626203 ((_ is Cons!65079) (exprs!6185 (h!71528 zl!343))))))

(assert (=> d!2001452 (= (derivationStepZipperUp!1475 (h!71528 zl!343) (h!71526 s!2326)) e!3875406)))

(declare-fun b!6384416 () Bool)

(assert (=> b!6384416 (= e!3875407 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001452 res!2626203) b!6384415))

(assert (= (and d!2001452 c!1163425) b!6384417))

(assert (= (and d!2001452 (not c!1163425)) b!6384418))

(assert (= (and b!6384418 c!1163426) b!6384414))

(assert (= (and b!6384418 (not c!1163426)) b!6384416))

(assert (= (or b!6384417 b!6384414) bm!545623))

(assert (=> b!6384415 m!7183384))

(declare-fun m!7184134 () Bool)

(assert (=> bm!545623 m!7184134))

(declare-fun m!7184136 () Bool)

(assert (=> b!6384417 m!7184136))

(assert (=> b!6383534 d!2001452))

(declare-fun d!2001454 () Bool)

(assert (=> d!2001454 (= (nullable!6294 (regOne!33114 (regOne!33114 r!7292))) (nullableFct!2240 (regOne!33114 (regOne!33114 r!7292))))))

(declare-fun bs!1597655 () Bool)

(assert (= bs!1597655 d!2001454))

(declare-fun m!7184138 () Bool)

(assert (=> bs!1597655 m!7184138))

(assert (=> b!6383551 d!2001454))

(declare-fun b!6384419 () Bool)

(declare-fun e!3875411 () Option!16192)

(assert (=> b!6384419 (= e!3875411 None!16191)))

(declare-fun b!6384420 () Bool)

(declare-fun e!3875413 () Option!16192)

(assert (=> b!6384420 (= e!3875413 e!3875411)))

(declare-fun c!1163428 () Bool)

(assert (=> b!6384420 (= c!1163428 ((_ is Nil!65078) s!2326))))

(declare-fun b!6384421 () Bool)

(declare-fun lt!2371303 () Unit!158535)

(declare-fun lt!2371302 () Unit!158535)

(assert (=> b!6384421 (= lt!2371303 lt!2371302)))

(assert (=> b!6384421 (= (++!14369 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326)) s!2326)))

(assert (=> b!6384421 (= lt!2371302 (lemmaMoveElementToOtherListKeepsConcatEq!2464 Nil!65078 (h!71526 s!2326) (t!378806 s!2326) s!2326))))

(assert (=> b!6384421 (= e!3875411 (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326) s!2326))))

(declare-fun b!6384422 () Bool)

(declare-fun e!3875410 () Bool)

(declare-fun lt!2371304 () Option!16192)

(assert (=> b!6384422 (= e!3875410 (not (isDefined!12895 lt!2371304)))))

(declare-fun d!2001456 () Bool)

(assert (=> d!2001456 e!3875410))

(declare-fun res!2626207 () Bool)

(assert (=> d!2001456 (=> res!2626207 e!3875410)))

(declare-fun e!3875409 () Bool)

(assert (=> d!2001456 (= res!2626207 e!3875409)))

(declare-fun res!2626206 () Bool)

(assert (=> d!2001456 (=> (not res!2626206) (not e!3875409))))

(assert (=> d!2001456 (= res!2626206 (isDefined!12895 lt!2371304))))

(assert (=> d!2001456 (= lt!2371304 e!3875413)))

(declare-fun c!1163427 () Bool)

(declare-fun e!3875412 () Bool)

(assert (=> d!2001456 (= c!1163427 e!3875412)))

(declare-fun res!2626208 () Bool)

(assert (=> d!2001456 (=> (not res!2626208) (not e!3875412))))

(assert (=> d!2001456 (= res!2626208 (matchR!8484 (regOne!33114 r!7292) Nil!65078))))

(assert (=> d!2001456 (validRegex!8037 (regOne!33114 r!7292))))

(assert (=> d!2001456 (= (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326) lt!2371304)))

(declare-fun b!6384423 () Bool)

(assert (=> b!6384423 (= e!3875413 (Some!16191 (tuple2!66561 Nil!65078 s!2326)))))

(declare-fun b!6384424 () Bool)

(declare-fun res!2626205 () Bool)

(assert (=> b!6384424 (=> (not res!2626205) (not e!3875409))))

(assert (=> b!6384424 (= res!2626205 (matchR!8484 (regTwo!33114 r!7292) (_2!36583 (get!22535 lt!2371304))))))

(declare-fun b!6384425 () Bool)

(assert (=> b!6384425 (= e!3875412 (matchR!8484 (regTwo!33114 r!7292) s!2326))))

(declare-fun b!6384426 () Bool)

(declare-fun res!2626204 () Bool)

(assert (=> b!6384426 (=> (not res!2626204) (not e!3875409))))

(assert (=> b!6384426 (= res!2626204 (matchR!8484 (regOne!33114 r!7292) (_1!36583 (get!22535 lt!2371304))))))

(declare-fun b!6384427 () Bool)

(assert (=> b!6384427 (= e!3875409 (= (++!14369 (_1!36583 (get!22535 lt!2371304)) (_2!36583 (get!22535 lt!2371304))) s!2326))))

(assert (= (and d!2001456 res!2626208) b!6384425))

(assert (= (and d!2001456 c!1163427) b!6384423))

(assert (= (and d!2001456 (not c!1163427)) b!6384420))

(assert (= (and b!6384420 c!1163428) b!6384419))

(assert (= (and b!6384420 (not c!1163428)) b!6384421))

(assert (= (and d!2001456 res!2626206) b!6384426))

(assert (= (and b!6384426 res!2626204) b!6384424))

(assert (= (and b!6384424 res!2626205) b!6384427))

(assert (= (and d!2001456 (not res!2626207)) b!6384422))

(declare-fun m!7184140 () Bool)

(assert (=> d!2001456 m!7184140))

(declare-fun m!7184142 () Bool)

(assert (=> d!2001456 m!7184142))

(declare-fun m!7184144 () Bool)

(assert (=> d!2001456 m!7184144))

(declare-fun m!7184146 () Bool)

(assert (=> b!6384424 m!7184146))

(declare-fun m!7184148 () Bool)

(assert (=> b!6384424 m!7184148))

(assert (=> b!6384425 m!7183990))

(assert (=> b!6384426 m!7184146))

(declare-fun m!7184150 () Bool)

(assert (=> b!6384426 m!7184150))

(assert (=> b!6384422 m!7184140))

(assert (=> b!6384421 m!7183994))

(assert (=> b!6384421 m!7183994))

(assert (=> b!6384421 m!7183996))

(assert (=> b!6384421 m!7183998))

(assert (=> b!6384421 m!7183994))

(declare-fun m!7184152 () Bool)

(assert (=> b!6384421 m!7184152))

(assert (=> b!6384427 m!7184146))

(declare-fun m!7184154 () Bool)

(assert (=> b!6384427 m!7184154))

(assert (=> b!6383550 d!2001456))

(declare-fun d!2001458 () Bool)

(assert (=> d!2001458 (= (Exists!3371 lambda!352235) (choose!47506 lambda!352235))))

(declare-fun bs!1597656 () Bool)

(assert (= bs!1597656 d!2001458))

(declare-fun m!7184156 () Bool)

(assert (=> bs!1597656 m!7184156))

(assert (=> b!6383550 d!2001458))

(declare-fun d!2001460 () Bool)

(assert (=> d!2001460 (= (Exists!3371 lambda!352236) (choose!47506 lambda!352236))))

(declare-fun bs!1597657 () Bool)

(assert (= bs!1597657 d!2001460))

(declare-fun m!7184158 () Bool)

(assert (=> bs!1597657 m!7184158))

(assert (=> b!6383550 d!2001460))

(declare-fun bs!1597658 () Bool)

(declare-fun d!2001462 () Bool)

(assert (= bs!1597658 (and d!2001462 b!6383550)))

(declare-fun lambda!352311 () Int)

(assert (=> bs!1597658 (= lambda!352311 lambda!352235)))

(declare-fun bs!1597659 () Bool)

(assert (= bs!1597659 (and d!2001462 d!2001398)))

(assert (=> bs!1597659 (not (= lambda!352311 lambda!352302))))

(declare-fun bs!1597660 () Bool)

(assert (= bs!1597660 (and d!2001462 b!6384352)))

(assert (=> bs!1597660 (not (= lambda!352311 lambda!352306))))

(declare-fun bs!1597661 () Bool)

(assert (= bs!1597661 (and d!2001462 b!6384262)))

(assert (=> bs!1597661 (not (= lambda!352311 lambda!352295))))

(declare-fun bs!1597662 () Bool)

(assert (= bs!1597662 (and d!2001462 b!6384269)))

(assert (=> bs!1597662 (not (= lambda!352311 lambda!352296))))

(declare-fun bs!1597663 () Bool)

(assert (= bs!1597663 (and d!2001462 b!6384359)))

(assert (=> bs!1597663 (not (= lambda!352311 lambda!352307))))

(declare-fun bs!1597664 () Bool)

(assert (= bs!1597664 (and d!2001462 d!2001404)))

(assert (=> bs!1597664 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352311 lambda!352305))))

(declare-fun bs!1597665 () Bool)

(assert (= bs!1597665 (and d!2001462 b!6383538)))

(assert (=> bs!1597665 (not (= lambda!352311 lambda!352239))))

(assert (=> bs!1597658 (not (= lambda!352311 lambda!352236))))

(assert (=> bs!1597665 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352311 lambda!352238))))

(assert (=> bs!1597659 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352311 lambda!352301))))

(assert (=> d!2001462 true))

(assert (=> d!2001462 true))

(assert (=> d!2001462 true))

(assert (=> d!2001462 (= (isDefined!12895 (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326)) (Exists!3371 lambda!352311))))

(declare-fun lt!2371305 () Unit!158535)

(assert (=> d!2001462 (= lt!2371305 (choose!47508 (regOne!33114 r!7292) (regTwo!33114 r!7292) s!2326))))

(assert (=> d!2001462 (validRegex!8037 (regOne!33114 r!7292))))

(assert (=> d!2001462 (= (lemmaFindConcatSeparationEquivalentToExists!2370 (regOne!33114 r!7292) (regTwo!33114 r!7292) s!2326) lt!2371305)))

(declare-fun bs!1597666 () Bool)

(assert (= bs!1597666 d!2001462))

(declare-fun m!7184160 () Bool)

(assert (=> bs!1597666 m!7184160))

(assert (=> bs!1597666 m!7183416))

(declare-fun m!7184162 () Bool)

(assert (=> bs!1597666 m!7184162))

(assert (=> bs!1597666 m!7183416))

(assert (=> bs!1597666 m!7183418))

(assert (=> bs!1597666 m!7184144))

(assert (=> b!6383550 d!2001462))

(declare-fun bs!1597667 () Bool)

(declare-fun d!2001464 () Bool)

(assert (= bs!1597667 (and d!2001464 b!6383550)))

(declare-fun lambda!352312 () Int)

(assert (=> bs!1597667 (= lambda!352312 lambda!352235)))

(declare-fun bs!1597668 () Bool)

(assert (= bs!1597668 (and d!2001464 d!2001398)))

(assert (=> bs!1597668 (not (= lambda!352312 lambda!352302))))

(declare-fun bs!1597669 () Bool)

(assert (= bs!1597669 (and d!2001464 d!2001462)))

(assert (=> bs!1597669 (= lambda!352312 lambda!352311)))

(declare-fun bs!1597670 () Bool)

(assert (= bs!1597670 (and d!2001464 b!6384352)))

(assert (=> bs!1597670 (not (= lambda!352312 lambda!352306))))

(declare-fun bs!1597671 () Bool)

(assert (= bs!1597671 (and d!2001464 b!6384262)))

(assert (=> bs!1597671 (not (= lambda!352312 lambda!352295))))

(declare-fun bs!1597672 () Bool)

(assert (= bs!1597672 (and d!2001464 b!6384269)))

(assert (=> bs!1597672 (not (= lambda!352312 lambda!352296))))

(declare-fun bs!1597673 () Bool)

(assert (= bs!1597673 (and d!2001464 b!6384359)))

(assert (=> bs!1597673 (not (= lambda!352312 lambda!352307))))

(declare-fun bs!1597674 () Bool)

(assert (= bs!1597674 (and d!2001464 d!2001404)))

(assert (=> bs!1597674 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352312 lambda!352305))))

(declare-fun bs!1597675 () Bool)

(assert (= bs!1597675 (and d!2001464 b!6383538)))

(assert (=> bs!1597675 (not (= lambda!352312 lambda!352239))))

(assert (=> bs!1597667 (not (= lambda!352312 lambda!352236))))

(assert (=> bs!1597675 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352312 lambda!352238))))

(assert (=> bs!1597668 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352312 lambda!352301))))

(assert (=> d!2001464 true))

(assert (=> d!2001464 true))

(assert (=> d!2001464 true))

(declare-fun bs!1597676 () Bool)

(assert (= bs!1597676 d!2001464))

(declare-fun lambda!352313 () Int)

(assert (=> bs!1597676 (not (= lambda!352313 lambda!352312))))

(assert (=> bs!1597667 (not (= lambda!352313 lambda!352235))))

(assert (=> bs!1597668 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352313 lambda!352302))))

(assert (=> bs!1597669 (not (= lambda!352313 lambda!352311))))

(assert (=> bs!1597670 (not (= lambda!352313 lambda!352306))))

(assert (=> bs!1597671 (not (= lambda!352313 lambda!352295))))

(assert (=> bs!1597672 (= lambda!352313 lambda!352296)))

(assert (=> bs!1597673 (= (and (= (regOne!33114 r!7292) (regOne!33114 lt!2371176)) (= (regTwo!33114 r!7292) (regTwo!33114 lt!2371176))) (= lambda!352313 lambda!352307))))

(assert (=> bs!1597674 (not (= lambda!352313 lambda!352305))))

(assert (=> bs!1597675 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352313 lambda!352239))))

(assert (=> bs!1597667 (= lambda!352313 lambda!352236)))

(assert (=> bs!1597675 (not (= lambda!352313 lambda!352238))))

(assert (=> bs!1597668 (not (= lambda!352313 lambda!352301))))

(assert (=> d!2001464 true))

(assert (=> d!2001464 true))

(assert (=> d!2001464 true))

(assert (=> d!2001464 (= (Exists!3371 lambda!352312) (Exists!3371 lambda!352313))))

(declare-fun lt!2371306 () Unit!158535)

(assert (=> d!2001464 (= lt!2371306 (choose!47507 (regOne!33114 r!7292) (regTwo!33114 r!7292) s!2326))))

(assert (=> d!2001464 (validRegex!8037 (regOne!33114 r!7292))))

(assert (=> d!2001464 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1908 (regOne!33114 r!7292) (regTwo!33114 r!7292) s!2326) lt!2371306)))

(declare-fun m!7184164 () Bool)

(assert (=> bs!1597676 m!7184164))

(declare-fun m!7184166 () Bool)

(assert (=> bs!1597676 m!7184166))

(declare-fun m!7184168 () Bool)

(assert (=> bs!1597676 m!7184168))

(assert (=> bs!1597676 m!7184144))

(assert (=> b!6383550 d!2001464))

(declare-fun d!2001466 () Bool)

(assert (=> d!2001466 (= (isDefined!12895 (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326)) (not (isEmpty!37216 (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326))))))

(declare-fun bs!1597677 () Bool)

(assert (= bs!1597677 d!2001466))

(assert (=> bs!1597677 m!7183416))

(declare-fun m!7184170 () Bool)

(assert (=> bs!1597677 m!7184170))

(assert (=> b!6383550 d!2001466))

(declare-fun b!6384438 () Bool)

(declare-fun e!3875416 () Bool)

(assert (=> b!6384438 (= e!3875416 tp_is_empty!41855)))

(declare-fun b!6384440 () Bool)

(declare-fun tp!1776215 () Bool)

(assert (=> b!6384440 (= e!3875416 tp!1776215)))

(declare-fun b!6384439 () Bool)

(declare-fun tp!1776213 () Bool)

(declare-fun tp!1776211 () Bool)

(assert (=> b!6384439 (= e!3875416 (and tp!1776213 tp!1776211))))

(declare-fun b!6384441 () Bool)

(declare-fun tp!1776212 () Bool)

(declare-fun tp!1776214 () Bool)

(assert (=> b!6384441 (= e!3875416 (and tp!1776212 tp!1776214))))

(assert (=> b!6383559 (= tp!1776141 e!3875416)))

(assert (= (and b!6383559 ((_ is ElementMatch!16301) (regOne!33115 r!7292))) b!6384438))

(assert (= (and b!6383559 ((_ is Concat!25146) (regOne!33115 r!7292))) b!6384439))

(assert (= (and b!6383559 ((_ is Star!16301) (regOne!33115 r!7292))) b!6384440))

(assert (= (and b!6383559 ((_ is Union!16301) (regOne!33115 r!7292))) b!6384441))

(declare-fun b!6384442 () Bool)

(declare-fun e!3875417 () Bool)

(assert (=> b!6384442 (= e!3875417 tp_is_empty!41855)))

(declare-fun b!6384444 () Bool)

(declare-fun tp!1776220 () Bool)

(assert (=> b!6384444 (= e!3875417 tp!1776220)))

(declare-fun b!6384443 () Bool)

(declare-fun tp!1776218 () Bool)

(declare-fun tp!1776216 () Bool)

(assert (=> b!6384443 (= e!3875417 (and tp!1776218 tp!1776216))))

(declare-fun b!6384445 () Bool)

(declare-fun tp!1776217 () Bool)

(declare-fun tp!1776219 () Bool)

(assert (=> b!6384445 (= e!3875417 (and tp!1776217 tp!1776219))))

(assert (=> b!6383559 (= tp!1776134 e!3875417)))

(assert (= (and b!6383559 ((_ is ElementMatch!16301) (regTwo!33115 r!7292))) b!6384442))

(assert (= (and b!6383559 ((_ is Concat!25146) (regTwo!33115 r!7292))) b!6384443))

(assert (= (and b!6383559 ((_ is Star!16301) (regTwo!33115 r!7292))) b!6384444))

(assert (= (and b!6383559 ((_ is Union!16301) (regTwo!33115 r!7292))) b!6384445))

(declare-fun b!6384450 () Bool)

(declare-fun e!3875420 () Bool)

(declare-fun tp!1776225 () Bool)

(declare-fun tp!1776226 () Bool)

(assert (=> b!6384450 (= e!3875420 (and tp!1776225 tp!1776226))))

(assert (=> b!6383569 (= tp!1776133 e!3875420)))

(assert (= (and b!6383569 ((_ is Cons!65079) (exprs!6185 setElem!43580))) b!6384450))

(declare-fun b!6384451 () Bool)

(declare-fun e!3875421 () Bool)

(declare-fun tp!1776227 () Bool)

(declare-fun tp!1776228 () Bool)

(assert (=> b!6384451 (= e!3875421 (and tp!1776227 tp!1776228))))

(assert (=> b!6383564 (= tp!1776138 e!3875421)))

(assert (= (and b!6383564 ((_ is Cons!65079) (exprs!6185 (h!71528 zl!343)))) b!6384451))

(declare-fun b!6384456 () Bool)

(declare-fun e!3875424 () Bool)

(declare-fun tp!1776231 () Bool)

(assert (=> b!6384456 (= e!3875424 (and tp_is_empty!41855 tp!1776231))))

(assert (=> b!6383548 (= tp!1776139 e!3875424)))

(assert (= (and b!6383548 ((_ is Cons!65078) (t!378806 s!2326))) b!6384456))

(declare-fun condSetEmpty!43586 () Bool)

(assert (=> setNonEmpty!43580 (= condSetEmpty!43586 (= setRest!43580 ((as const (Array Context!11370 Bool)) false)))))

(declare-fun setRes!43586 () Bool)

(assert (=> setNonEmpty!43580 (= tp!1776142 setRes!43586)))

(declare-fun setIsEmpty!43586 () Bool)

(assert (=> setIsEmpty!43586 setRes!43586))

(declare-fun setElem!43586 () Context!11370)

(declare-fun e!3875427 () Bool)

(declare-fun tp!1776237 () Bool)

(declare-fun setNonEmpty!43586 () Bool)

(assert (=> setNonEmpty!43586 (= setRes!43586 (and tp!1776237 (inv!83999 setElem!43586) e!3875427))))

(declare-fun setRest!43586 () (InoxSet Context!11370))

(assert (=> setNonEmpty!43586 (= setRest!43580 ((_ map or) (store ((as const (Array Context!11370 Bool)) false) setElem!43586 true) setRest!43586))))

(declare-fun b!6384461 () Bool)

(declare-fun tp!1776236 () Bool)

(assert (=> b!6384461 (= e!3875427 tp!1776236)))

(assert (= (and setNonEmpty!43580 condSetEmpty!43586) setIsEmpty!43586))

(assert (= (and setNonEmpty!43580 (not condSetEmpty!43586)) setNonEmpty!43586))

(assert (= setNonEmpty!43586 b!6384461))

(declare-fun m!7184172 () Bool)

(assert (=> setNonEmpty!43586 m!7184172))

(declare-fun b!6384469 () Bool)

(declare-fun e!3875433 () Bool)

(declare-fun tp!1776242 () Bool)

(assert (=> b!6384469 (= e!3875433 tp!1776242)))

(declare-fun tp!1776243 () Bool)

(declare-fun e!3875432 () Bool)

(declare-fun b!6384468 () Bool)

(assert (=> b!6384468 (= e!3875432 (and (inv!83999 (h!71528 (t!378808 zl!343))) e!3875433 tp!1776243))))

(assert (=> b!6383543 (= tp!1776136 e!3875432)))

(assert (= b!6384468 b!6384469))

(assert (= (and b!6383543 ((_ is Cons!65080) (t!378808 zl!343))) b!6384468))

(declare-fun m!7184174 () Bool)

(assert (=> b!6384468 m!7184174))

(declare-fun b!6384470 () Bool)

(declare-fun e!3875434 () Bool)

(assert (=> b!6384470 (= e!3875434 tp_is_empty!41855)))

(declare-fun b!6384472 () Bool)

(declare-fun tp!1776248 () Bool)

(assert (=> b!6384472 (= e!3875434 tp!1776248)))

(declare-fun b!6384471 () Bool)

(declare-fun tp!1776246 () Bool)

(declare-fun tp!1776244 () Bool)

(assert (=> b!6384471 (= e!3875434 (and tp!1776246 tp!1776244))))

(declare-fun b!6384473 () Bool)

(declare-fun tp!1776245 () Bool)

(declare-fun tp!1776247 () Bool)

(assert (=> b!6384473 (= e!3875434 (and tp!1776245 tp!1776247))))

(assert (=> b!6383553 (= tp!1776135 e!3875434)))

(assert (= (and b!6383553 ((_ is ElementMatch!16301) (reg!16630 r!7292))) b!6384470))

(assert (= (and b!6383553 ((_ is Concat!25146) (reg!16630 r!7292))) b!6384471))

(assert (= (and b!6383553 ((_ is Star!16301) (reg!16630 r!7292))) b!6384472))

(assert (= (and b!6383553 ((_ is Union!16301) (reg!16630 r!7292))) b!6384473))

(declare-fun b!6384474 () Bool)

(declare-fun e!3875435 () Bool)

(assert (=> b!6384474 (= e!3875435 tp_is_empty!41855)))

(declare-fun b!6384476 () Bool)

(declare-fun tp!1776253 () Bool)

(assert (=> b!6384476 (= e!3875435 tp!1776253)))

(declare-fun b!6384475 () Bool)

(declare-fun tp!1776251 () Bool)

(declare-fun tp!1776249 () Bool)

(assert (=> b!6384475 (= e!3875435 (and tp!1776251 tp!1776249))))

(declare-fun b!6384477 () Bool)

(declare-fun tp!1776250 () Bool)

(declare-fun tp!1776252 () Bool)

(assert (=> b!6384477 (= e!3875435 (and tp!1776250 tp!1776252))))

(assert (=> b!6383546 (= tp!1776140 e!3875435)))

(assert (= (and b!6383546 ((_ is ElementMatch!16301) (regOne!33114 r!7292))) b!6384474))

(assert (= (and b!6383546 ((_ is Concat!25146) (regOne!33114 r!7292))) b!6384475))

(assert (= (and b!6383546 ((_ is Star!16301) (regOne!33114 r!7292))) b!6384476))

(assert (= (and b!6383546 ((_ is Union!16301) (regOne!33114 r!7292))) b!6384477))

(declare-fun b!6384478 () Bool)

(declare-fun e!3875436 () Bool)

(assert (=> b!6384478 (= e!3875436 tp_is_empty!41855)))

(declare-fun b!6384480 () Bool)

(declare-fun tp!1776258 () Bool)

(assert (=> b!6384480 (= e!3875436 tp!1776258)))

(declare-fun b!6384479 () Bool)

(declare-fun tp!1776256 () Bool)

(declare-fun tp!1776254 () Bool)

(assert (=> b!6384479 (= e!3875436 (and tp!1776256 tp!1776254))))

(declare-fun b!6384481 () Bool)

(declare-fun tp!1776255 () Bool)

(declare-fun tp!1776257 () Bool)

(assert (=> b!6384481 (= e!3875436 (and tp!1776255 tp!1776257))))

(assert (=> b!6383546 (= tp!1776137 e!3875436)))

(assert (= (and b!6383546 ((_ is ElementMatch!16301) (regTwo!33114 r!7292))) b!6384478))

(assert (= (and b!6383546 ((_ is Concat!25146) (regTwo!33114 r!7292))) b!6384479))

(assert (= (and b!6383546 ((_ is Star!16301) (regTwo!33114 r!7292))) b!6384480))

(assert (= (and b!6383546 ((_ is Union!16301) (regTwo!33114 r!7292))) b!6384481))

(declare-fun b_lambda!242573 () Bool)

(assert (= b_lambda!242565 (or b!6383534 b_lambda!242573)))

(declare-fun bs!1597678 () Bool)

(declare-fun d!2001468 () Bool)

(assert (= bs!1597678 (and d!2001468 b!6383534)))

(assert (=> bs!1597678 (= (dynLambda!25819 lambda!352237 lt!2371181) (derivationStepZipperUp!1475 lt!2371181 (h!71526 s!2326)))))

(assert (=> bs!1597678 m!7183342))

(assert (=> d!2001414 d!2001468))

(declare-fun b_lambda!242575 () Bool)

(assert (= b_lambda!242569 (or b!6383534 b_lambda!242575)))

(declare-fun bs!1597679 () Bool)

(declare-fun d!2001470 () Bool)

(assert (= bs!1597679 (and d!2001470 b!6383534)))

(assert (=> bs!1597679 (= (dynLambda!25819 lambda!352237 lt!2371174) (derivationStepZipperUp!1475 lt!2371174 (h!71526 s!2326)))))

(assert (=> bs!1597679 m!7183366))

(assert (=> d!2001436 d!2001470))

(declare-fun b_lambda!242577 () Bool)

(assert (= b_lambda!242567 (or b!6383534 b_lambda!242577)))

(declare-fun bs!1597680 () Bool)

(declare-fun d!2001472 () Bool)

(assert (= bs!1597680 (and d!2001472 b!6383534)))

(assert (=> bs!1597680 (= (dynLambda!25819 lambda!352237 lt!2371169) (derivationStepZipperUp!1475 lt!2371169 (h!71526 s!2326)))))

(assert (=> bs!1597680 m!7183344))

(assert (=> d!2001424 d!2001472))

(declare-fun b_lambda!242579 () Bool)

(assert (= b_lambda!242571 (or b!6383534 b_lambda!242579)))

(declare-fun bs!1597681 () Bool)

(declare-fun d!2001474 () Bool)

(assert (= bs!1597681 (and d!2001474 b!6383534)))

(assert (=> bs!1597681 (= (dynLambda!25819 lambda!352237 (h!71528 zl!343)) (derivationStepZipperUp!1475 (h!71528 zl!343) (h!71526 s!2326)))))

(assert (=> bs!1597681 m!7183380))

(assert (=> d!2001442 d!2001474))

(check-sat (not b!6384472) (not b!6384344) (not b!6384145) (not b!6384283) (not b!6383941) (not bm!545590) (not bm!545616) (not b!6384317) (not bm!545582) (not b!6384384) (not b!6384445) (not b!6384378) (not d!2001302) (not b!6384186) (not b!6384070) (not bm!545619) (not b!6384135) (not b!6384282) (not b!6384342) (not b!6384439) (not b!6384146) (not b!6384156) (not b!6384144) (not b!6384328) (not b!6384318) (not d!2001446) (not d!2001384) (not b!6384346) (not bm!545605) (not d!2001392) (not b!6384071) (not b!6384456) (not b!6384198) (not b!6384357) (not bm!545623) (not b!6384348) (not b!6384149) (not bm!545612) (not b!6384154) (not d!2001462) (not b!6384479) (not b!6384188) (not b!6384272) (not bm!545585) (not b!6384410) (not b!6384415) (not b!6384473) (not b!6384361) (not b!6384184) (not setNonEmpty!43586) (not bs!1597680) (not b!6384475) (not b!6383943) (not d!2001406) (not b!6384347) (not b!6384471) (not d!2001430) (not d!2001432) (not d!2001366) (not bm!545621) (not b!6384412) (not b!6384389) (not d!2001402) (not b!6384163) (not b!6384425) (not bm!545609) (not d!2001368) (not d!2001374) (not b!6384405) (not b!6384373) (not b!6384189) (not b!6384142) (not bm!545607) (not b!6384407) (not b!6384469) (not b!6384312) (not bs!1597681) (not d!2001436) (not bm!545589) (not d!2001320) (not d!2001370) (not b!6384375) (not b!6384417) (not b!6384281) (not b!6384315) (not b!6384422) (not bm!545614) (not b!6384443) (not d!2001456) (not d!2001420) (not b!6384451) (not b!6384329) tp_is_empty!41855 (not d!2001458) (not d!2001466) (not bs!1597678) (not d!2001442) (not b!6384426) (not b!6384476) (not b!6384380) (not b!6384277) (not b!6384421) (not b!6384450) (not d!2001428) (not b!6383944) (not bm!545608) (not b!6384477) (not b!6384461) (not b!6384279) (not d!2001354) (not d!2001376) (not bm!545622) (not d!2001404) (not bm!545604) (not b!6384427) (not d!2001342) (not bs!1597679) (not b!6384267) (not d!2001400) (not d!2001422) (not b_lambda!242575) (not d!2001416) (not b!6384064) (not b_lambda!242577) (not b!6384140) (not b!6383939) (not d!2001424) (not b!6384480) (not bm!545597) (not b!6384353) (not d!2001330) (not d!2001460) (not d!2001454) (not b!6384185) (not d!2001388) (not d!2001444) (not b!6384424) (not bm!545613) (not d!2001360) (not b!6383995) (not b!6384468) (not b!6384263) (not b!6383942) (not b!6384401) (not d!2001438) (not d!2001362) (not b!6384313) (not bm!545584) (not bm!545599) (not b!6384316) (not b!6384337) (not b_lambda!242579) (not b!6384160) (not b!6384444) (not b_lambda!242573) (not b!6384067) (not b!6384383) (not b!6384102) (not b!6384158) (not d!2001464) (not d!2001390) (not b!6384191) (not b!6383938) (not b!6384159) (not b!6384220) (not d!2001386) (not d!2001414) (not d!2001364) (not b!6384440) (not bm!545606) (not b!6384481) (not b!6383945) (not d!2001412) (not d!2001398) (not d!2001394) (not d!2001380) (not b!6384187) (not b!6384441) (not b!6384360) (not bm!545618) (not b!6384385) (not b!6384382) (not b!6384387) (not d!2001410))
(check-sat)
(get-model)

(declare-fun d!2001482 () Bool)

(declare-fun c!1163444 () Bool)

(assert (=> d!2001482 (= c!1163444 ((_ is Nil!65078) lt!2371289))))

(declare-fun e!3875456 () (InoxSet C!32872))

(assert (=> d!2001482 (= (content!12317 lt!2371289) e!3875456)))

(declare-fun b!6384520 () Bool)

(assert (=> b!6384520 (= e!3875456 ((as const (Array C!32872 Bool)) false))))

(declare-fun b!6384521 () Bool)

(assert (=> b!6384521 (= e!3875456 ((_ map or) (store ((as const (Array C!32872 Bool)) false) (h!71526 lt!2371289) true) (content!12317 (t!378806 lt!2371289))))))

(assert (= (and d!2001482 c!1163444) b!6384520))

(assert (= (and d!2001482 (not c!1163444)) b!6384521))

(declare-fun m!7184190 () Bool)

(assert (=> b!6384521 m!7184190))

(declare-fun m!7184192 () Bool)

(assert (=> b!6384521 m!7184192))

(assert (=> d!2001402 d!2001482))

(declare-fun d!2001484 () Bool)

(declare-fun c!1163445 () Bool)

(assert (=> d!2001484 (= c!1163445 ((_ is Nil!65078) (_1!36583 lt!2371152)))))

(declare-fun e!3875457 () (InoxSet C!32872))

(assert (=> d!2001484 (= (content!12317 (_1!36583 lt!2371152)) e!3875457)))

(declare-fun b!6384522 () Bool)

(assert (=> b!6384522 (= e!3875457 ((as const (Array C!32872 Bool)) false))))

(declare-fun b!6384523 () Bool)

(assert (=> b!6384523 (= e!3875457 ((_ map or) (store ((as const (Array C!32872 Bool)) false) (h!71526 (_1!36583 lt!2371152)) true) (content!12317 (t!378806 (_1!36583 lt!2371152)))))))

(assert (= (and d!2001484 c!1163445) b!6384522))

(assert (= (and d!2001484 (not c!1163445)) b!6384523))

(declare-fun m!7184194 () Bool)

(assert (=> b!6384523 m!7184194))

(declare-fun m!7184196 () Bool)

(assert (=> b!6384523 m!7184196))

(assert (=> d!2001402 d!2001484))

(declare-fun d!2001486 () Bool)

(declare-fun c!1163446 () Bool)

(assert (=> d!2001486 (= c!1163446 ((_ is Nil!65078) (_2!36583 lt!2371152)))))

(declare-fun e!3875458 () (InoxSet C!32872))

(assert (=> d!2001486 (= (content!12317 (_2!36583 lt!2371152)) e!3875458)))

(declare-fun b!6384524 () Bool)

(assert (=> b!6384524 (= e!3875458 ((as const (Array C!32872 Bool)) false))))

(declare-fun b!6384525 () Bool)

(assert (=> b!6384525 (= e!3875458 ((_ map or) (store ((as const (Array C!32872 Bool)) false) (h!71526 (_2!36583 lt!2371152)) true) (content!12317 (t!378806 (_2!36583 lt!2371152)))))))

(assert (= (and d!2001486 c!1163446) b!6384524))

(assert (= (and d!2001486 (not c!1163446)) b!6384525))

(declare-fun m!7184198 () Bool)

(assert (=> b!6384525 m!7184198))

(declare-fun m!7184200 () Bool)

(assert (=> b!6384525 m!7184200))

(assert (=> d!2001402 d!2001486))

(assert (=> d!2001436 d!2001432))

(declare-fun d!2001488 () Bool)

(assert (=> d!2001488 (= (flatMap!1806 lt!2371175 lambda!352237) (dynLambda!25819 lambda!352237 lt!2371174))))

(assert (=> d!2001488 true))

(declare-fun _$13!3567 () Unit!158535)

(assert (=> d!2001488 (= (choose!47509 lt!2371175 lt!2371174 lambda!352237) _$13!3567)))

(declare-fun b_lambda!242581 () Bool)

(assert (=> (not b_lambda!242581) (not d!2001488)))

(declare-fun bs!1597682 () Bool)

(assert (= bs!1597682 d!2001488))

(assert (=> bs!1597682 m!7183364))

(assert (=> bs!1597682 m!7184096))

(assert (=> d!2001436 d!2001488))

(declare-fun d!2001490 () Bool)

(assert (=> d!2001490 (= (isEmpty!37212 (t!378807 (unfocusZipperList!1722 zl!343))) ((_ is Nil!65079) (t!378807 (unfocusZipperList!1722 zl!343))))))

(assert (=> b!6384191 d!2001490))

(declare-fun d!2001492 () Bool)

(assert (=> d!2001492 (= (isEmpty!37214 (tail!12179 s!2326)) ((_ is Nil!65078) (tail!12179 s!2326)))))

(assert (=> b!6384346 d!2001492))

(declare-fun d!2001494 () Bool)

(assert (=> d!2001494 (= (tail!12179 s!2326) (t!378806 s!2326))))

(assert (=> b!6384346 d!2001494))

(declare-fun d!2001496 () Bool)

(assert (=> d!2001496 (= (isEmpty!37212 (tail!12178 (unfocusZipperList!1722 zl!343))) ((_ is Nil!65079) (tail!12178 (unfocusZipperList!1722 zl!343))))))

(assert (=> b!6384187 d!2001496))

(declare-fun d!2001498 () Bool)

(assert (=> d!2001498 (= (tail!12178 (unfocusZipperList!1722 zl!343)) (t!378807 (unfocusZipperList!1722 zl!343)))))

(assert (=> b!6384187 d!2001498))

(declare-fun d!2001500 () Bool)

(assert (=> d!2001500 (= (isDefined!12895 lt!2371304) (not (isEmpty!37216 lt!2371304)))))

(declare-fun bs!1597683 () Bool)

(assert (= bs!1597683 d!2001500))

(declare-fun m!7184202 () Bool)

(assert (=> bs!1597683 m!7184202))

(assert (=> b!6384422 d!2001500))

(declare-fun b!6384526 () Bool)

(declare-fun e!3875462 () Bool)

(declare-fun e!3875460 () Bool)

(assert (=> b!6384526 (= e!3875462 e!3875460)))

(declare-fun res!2626222 () Bool)

(assert (=> b!6384526 (=> res!2626222 e!3875460)))

(declare-fun call!545638 () Bool)

(assert (=> b!6384526 (= res!2626222 call!545638)))

(declare-fun b!6384527 () Bool)

(declare-fun res!2626221 () Bool)

(declare-fun e!3875464 () Bool)

(assert (=> b!6384527 (=> res!2626221 e!3875464)))

(assert (=> b!6384527 (= res!2626221 (not ((_ is ElementMatch!16301) (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152))))))))

(declare-fun e!3875465 () Bool)

(assert (=> b!6384527 (= e!3875465 e!3875464)))

(declare-fun d!2001502 () Bool)

(declare-fun e!3875463 () Bool)

(assert (=> d!2001502 e!3875463))

(declare-fun c!1163447 () Bool)

(assert (=> d!2001502 (= c!1163447 ((_ is EmptyExpr!16301) (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152)))))))

(declare-fun lt!2371310 () Bool)

(declare-fun e!3875461 () Bool)

(assert (=> d!2001502 (= lt!2371310 e!3875461)))

(declare-fun c!1163448 () Bool)

(assert (=> d!2001502 (= c!1163448 (isEmpty!37214 (tail!12179 (_1!36583 lt!2371152))))))

(assert (=> d!2001502 (validRegex!8037 (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152))))))

(assert (=> d!2001502 (= (matchR!8484 (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152))) (tail!12179 (_1!36583 lt!2371152))) lt!2371310)))

(declare-fun b!6384528 () Bool)

(assert (=> b!6384528 (= e!3875461 (matchR!8484 (derivativeStep!5005 (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152))) (head!13094 (tail!12179 (_1!36583 lt!2371152)))) (tail!12179 (tail!12179 (_1!36583 lt!2371152)))))))

(declare-fun b!6384529 () Bool)

(assert (=> b!6384529 (= e!3875463 e!3875465)))

(declare-fun c!1163449 () Bool)

(assert (=> b!6384529 (= c!1163449 ((_ is EmptyLang!16301) (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152)))))))

(declare-fun b!6384530 () Bool)

(assert (=> b!6384530 (= e!3875463 (= lt!2371310 call!545638))))

(declare-fun b!6384531 () Bool)

(assert (=> b!6384531 (= e!3875464 e!3875462)))

(declare-fun res!2626223 () Bool)

(assert (=> b!6384531 (=> (not res!2626223) (not e!3875462))))

(assert (=> b!6384531 (= res!2626223 (not lt!2371310))))

(declare-fun b!6384532 () Bool)

(declare-fun res!2626224 () Bool)

(assert (=> b!6384532 (=> res!2626224 e!3875464)))

(declare-fun e!3875459 () Bool)

(assert (=> b!6384532 (= res!2626224 e!3875459)))

(declare-fun res!2626217 () Bool)

(assert (=> b!6384532 (=> (not res!2626217) (not e!3875459))))

(assert (=> b!6384532 (= res!2626217 lt!2371310)))

(declare-fun b!6384533 () Bool)

(declare-fun res!2626218 () Bool)

(assert (=> b!6384533 (=> (not res!2626218) (not e!3875459))))

(assert (=> b!6384533 (= res!2626218 (isEmpty!37214 (tail!12179 (tail!12179 (_1!36583 lt!2371152)))))))

(declare-fun bm!545633 () Bool)

(assert (=> bm!545633 (= call!545638 (isEmpty!37214 (tail!12179 (_1!36583 lt!2371152))))))

(declare-fun b!6384534 () Bool)

(declare-fun res!2626219 () Bool)

(assert (=> b!6384534 (=> (not res!2626219) (not e!3875459))))

(assert (=> b!6384534 (= res!2626219 (not call!545638))))

(declare-fun b!6384535 () Bool)

(assert (=> b!6384535 (= e!3875461 (nullable!6294 (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152)))))))

(declare-fun b!6384536 () Bool)

(assert (=> b!6384536 (= e!3875465 (not lt!2371310))))

(declare-fun b!6384537 () Bool)

(declare-fun res!2626220 () Bool)

(assert (=> b!6384537 (=> res!2626220 e!3875460)))

(assert (=> b!6384537 (= res!2626220 (not (isEmpty!37214 (tail!12179 (tail!12179 (_1!36583 lt!2371152))))))))

(declare-fun b!6384538 () Bool)

(assert (=> b!6384538 (= e!3875459 (= (head!13094 (tail!12179 (_1!36583 lt!2371152))) (c!1163182 (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152))))))))

(declare-fun b!6384539 () Bool)

(assert (=> b!6384539 (= e!3875460 (not (= (head!13094 (tail!12179 (_1!36583 lt!2371152))) (c!1163182 (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152)))))))))

(assert (= (and d!2001502 c!1163448) b!6384535))

(assert (= (and d!2001502 (not c!1163448)) b!6384528))

(assert (= (and d!2001502 c!1163447) b!6384530))

(assert (= (and d!2001502 (not c!1163447)) b!6384529))

(assert (= (and b!6384529 c!1163449) b!6384536))

(assert (= (and b!6384529 (not c!1163449)) b!6384527))

(assert (= (and b!6384527 (not res!2626221)) b!6384532))

(assert (= (and b!6384532 res!2626217) b!6384534))

(assert (= (and b!6384534 res!2626219) b!6384533))

(assert (= (and b!6384533 res!2626218) b!6384538))

(assert (= (and b!6384532 (not res!2626224)) b!6384531))

(assert (= (and b!6384531 res!2626223) b!6384526))

(assert (= (and b!6384526 (not res!2626222)) b!6384537))

(assert (= (and b!6384537 (not res!2626220)) b!6384539))

(assert (= (or b!6384530 b!6384526 b!6384534) bm!545633))

(assert (=> b!6384528 m!7183894))

(declare-fun m!7184204 () Bool)

(assert (=> b!6384528 m!7184204))

(assert (=> b!6384528 m!7183892))

(assert (=> b!6384528 m!7184204))

(declare-fun m!7184206 () Bool)

(assert (=> b!6384528 m!7184206))

(assert (=> b!6384528 m!7183894))

(declare-fun m!7184208 () Bool)

(assert (=> b!6384528 m!7184208))

(assert (=> b!6384528 m!7184206))

(assert (=> b!6384528 m!7184208))

(declare-fun m!7184210 () Bool)

(assert (=> b!6384528 m!7184210))

(assert (=> bm!545633 m!7183894))

(assert (=> bm!545633 m!7183898))

(assert (=> b!6384533 m!7183894))

(assert (=> b!6384533 m!7184208))

(assert (=> b!6384533 m!7184208))

(declare-fun m!7184212 () Bool)

(assert (=> b!6384533 m!7184212))

(assert (=> b!6384535 m!7183892))

(declare-fun m!7184214 () Bool)

(assert (=> b!6384535 m!7184214))

(assert (=> b!6384538 m!7183894))

(assert (=> b!6384538 m!7184204))

(assert (=> d!2001502 m!7183894))

(assert (=> d!2001502 m!7183898))

(assert (=> d!2001502 m!7183892))

(declare-fun m!7184216 () Bool)

(assert (=> d!2001502 m!7184216))

(assert (=> b!6384537 m!7183894))

(assert (=> b!6384537 m!7184208))

(assert (=> b!6384537 m!7184208))

(assert (=> b!6384537 m!7184212))

(assert (=> b!6384539 m!7183894))

(assert (=> b!6384539 m!7184204))

(assert (=> b!6384149 d!2001502))

(declare-fun b!6384591 () Bool)

(declare-fun e!3875497 () Regex!16301)

(assert (=> b!6384591 (= e!3875497 EmptyLang!16301)))

(declare-fun b!6384592 () Bool)

(declare-fun e!3875496 () Regex!16301)

(declare-fun call!545654 () Regex!16301)

(assert (=> b!6384592 (= e!3875496 (Union!16301 (Concat!25146 call!545654 (regTwo!33114 lt!2371171)) EmptyLang!16301))))

(declare-fun call!545655 () Regex!16301)

(declare-fun b!6384593 () Bool)

(assert (=> b!6384593 (= e!3875496 (Union!16301 (Concat!25146 call!545655 (regTwo!33114 lt!2371171)) call!545654))))

(declare-fun b!6384594 () Bool)

(declare-fun e!3875498 () Regex!16301)

(declare-fun call!545657 () Regex!16301)

(declare-fun call!545656 () Regex!16301)

(assert (=> b!6384594 (= e!3875498 (Union!16301 call!545657 call!545656))))

(declare-fun b!6384595 () Bool)

(declare-fun e!3875495 () Regex!16301)

(assert (=> b!6384595 (= e!3875497 e!3875495)))

(declare-fun c!1163473 () Bool)

(assert (=> b!6384595 (= c!1163473 ((_ is ElementMatch!16301) lt!2371171))))

(declare-fun bm!545649 () Bool)

(assert (=> bm!545649 (= call!545655 call!545656)))

(declare-fun b!6384596 () Bool)

(declare-fun e!3875499 () Regex!16301)

(assert (=> b!6384596 (= e!3875499 (Concat!25146 call!545655 lt!2371171))))

(declare-fun b!6384597 () Bool)

(assert (=> b!6384597 (= e!3875495 (ite (= (head!13094 (_1!36583 lt!2371152)) (c!1163182 lt!2371171)) EmptyExpr!16301 EmptyLang!16301))))

(declare-fun b!6384598 () Bool)

(assert (=> b!6384598 (= e!3875498 e!3875499)))

(declare-fun c!1163472 () Bool)

(assert (=> b!6384598 (= c!1163472 ((_ is Star!16301) lt!2371171))))

(declare-fun c!1163475 () Bool)

(declare-fun bm!545650 () Bool)

(declare-fun c!1163476 () Bool)

(assert (=> bm!545650 (= call!545657 (derivativeStep!5005 (ite c!1163476 (regOne!33115 lt!2371171) (ite c!1163475 (regTwo!33114 lt!2371171) (regOne!33114 lt!2371171))) (head!13094 (_1!36583 lt!2371152))))))

(declare-fun bm!545651 () Bool)

(assert (=> bm!545651 (= call!545656 (derivativeStep!5005 (ite c!1163476 (regTwo!33115 lt!2371171) (ite c!1163472 (reg!16630 lt!2371171) (regOne!33114 lt!2371171))) (head!13094 (_1!36583 lt!2371152))))))

(declare-fun bm!545652 () Bool)

(assert (=> bm!545652 (= call!545654 call!545657)))

(declare-fun b!6384600 () Bool)

(assert (=> b!6384600 (= c!1163475 (nullable!6294 (regOne!33114 lt!2371171)))))

(assert (=> b!6384600 (= e!3875499 e!3875496)))

(declare-fun d!2001504 () Bool)

(declare-fun lt!2371316 () Regex!16301)

(assert (=> d!2001504 (validRegex!8037 lt!2371316)))

(assert (=> d!2001504 (= lt!2371316 e!3875497)))

(declare-fun c!1163474 () Bool)

(assert (=> d!2001504 (= c!1163474 (or ((_ is EmptyExpr!16301) lt!2371171) ((_ is EmptyLang!16301) lt!2371171)))))

(assert (=> d!2001504 (validRegex!8037 lt!2371171)))

(assert (=> d!2001504 (= (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 lt!2371152))) lt!2371316)))

(declare-fun b!6384599 () Bool)

(assert (=> b!6384599 (= c!1163476 ((_ is Union!16301) lt!2371171))))

(assert (=> b!6384599 (= e!3875495 e!3875498)))

(assert (= (and d!2001504 c!1163474) b!6384591))

(assert (= (and d!2001504 (not c!1163474)) b!6384595))

(assert (= (and b!6384595 c!1163473) b!6384597))

(assert (= (and b!6384595 (not c!1163473)) b!6384599))

(assert (= (and b!6384599 c!1163476) b!6384594))

(assert (= (and b!6384599 (not c!1163476)) b!6384598))

(assert (= (and b!6384598 c!1163472) b!6384596))

(assert (= (and b!6384598 (not c!1163472)) b!6384600))

(assert (= (and b!6384600 c!1163475) b!6384593))

(assert (= (and b!6384600 (not c!1163475)) b!6384592))

(assert (= (or b!6384593 b!6384592) bm!545652))

(assert (= (or b!6384596 b!6384593) bm!545649))

(assert (= (or b!6384594 bm!545649) bm!545651))

(assert (= (or b!6384594 bm!545652) bm!545650))

(assert (=> bm!545650 m!7183890))

(declare-fun m!7184258 () Bool)

(assert (=> bm!545650 m!7184258))

(assert (=> bm!545651 m!7183890))

(declare-fun m!7184260 () Bool)

(assert (=> bm!545651 m!7184260))

(declare-fun m!7184262 () Bool)

(assert (=> b!6384600 m!7184262))

(declare-fun m!7184264 () Bool)

(assert (=> d!2001504 m!7184264))

(assert (=> d!2001504 m!7183902))

(assert (=> b!6384149 d!2001504))

(declare-fun d!2001518 () Bool)

(assert (=> d!2001518 (= (head!13094 (_1!36583 lt!2371152)) (h!71526 (_1!36583 lt!2371152)))))

(assert (=> b!6384149 d!2001518))

(declare-fun d!2001520 () Bool)

(assert (=> d!2001520 (= (tail!12179 (_1!36583 lt!2371152)) (t!378806 (_1!36583 lt!2371152)))))

(assert (=> b!6384149 d!2001520))

(declare-fun d!2001522 () Bool)

(declare-fun c!1163477 () Bool)

(assert (=> d!2001522 (= c!1163477 (isEmpty!37214 (tail!12179 s!2326)))))

(declare-fun e!3875500 () Bool)

(assert (=> d!2001522 (= (matchZipper!2313 (derivationStepZipper!2267 lt!2371175 (head!13094 s!2326)) (tail!12179 s!2326)) e!3875500)))

(declare-fun b!6384601 () Bool)

(assert (=> b!6384601 (= e!3875500 (nullableZipper!2066 (derivationStepZipper!2267 lt!2371175 (head!13094 s!2326))))))

(declare-fun b!6384602 () Bool)

(assert (=> b!6384602 (= e!3875500 (matchZipper!2313 (derivationStepZipper!2267 (derivationStepZipper!2267 lt!2371175 (head!13094 s!2326)) (head!13094 (tail!12179 s!2326))) (tail!12179 (tail!12179 s!2326))))))

(assert (= (and d!2001522 c!1163477) b!6384601))

(assert (= (and d!2001522 (not c!1163477)) b!6384602))

(assert (=> d!2001522 m!7183958))

(assert (=> d!2001522 m!7183962))

(assert (=> b!6384601 m!7184078))

(declare-fun m!7184266 () Bool)

(assert (=> b!6384601 m!7184266))

(assert (=> b!6384602 m!7183958))

(declare-fun m!7184268 () Bool)

(assert (=> b!6384602 m!7184268))

(assert (=> b!6384602 m!7184078))

(assert (=> b!6384602 m!7184268))

(declare-fun m!7184270 () Bool)

(assert (=> b!6384602 m!7184270))

(assert (=> b!6384602 m!7183958))

(declare-fun m!7184272 () Bool)

(assert (=> b!6384602 m!7184272))

(assert (=> b!6384602 m!7184270))

(assert (=> b!6384602 m!7184272))

(declare-fun m!7184274 () Bool)

(assert (=> b!6384602 m!7184274))

(assert (=> b!6384383 d!2001522))

(declare-fun bs!1597697 () Bool)

(declare-fun d!2001528 () Bool)

(assert (= bs!1597697 (and d!2001528 b!6383534)))

(declare-fun lambda!352316 () Int)

(assert (=> bs!1597697 (= (= (head!13094 s!2326) (h!71526 s!2326)) (= lambda!352316 lambda!352237))))

(declare-fun bs!1597698 () Bool)

(assert (= bs!1597698 (and d!2001528 d!2001438)))

(assert (=> bs!1597698 (= (= (head!13094 s!2326) (h!71526 s!2326)) (= lambda!352316 lambda!352310))))

(assert (=> d!2001528 true))

(assert (=> d!2001528 (= (derivationStepZipper!2267 lt!2371175 (head!13094 s!2326)) (flatMap!1806 lt!2371175 lambda!352316))))

(declare-fun bs!1597699 () Bool)

(assert (= bs!1597699 d!2001528))

(declare-fun m!7184276 () Bool)

(assert (=> bs!1597699 m!7184276))

(assert (=> b!6384383 d!2001528))

(declare-fun d!2001530 () Bool)

(assert (=> d!2001530 (= (head!13094 s!2326) (h!71526 s!2326))))

(assert (=> b!6384383 d!2001530))

(assert (=> b!6384383 d!2001494))

(declare-fun d!2001532 () Bool)

(assert (=> d!2001532 (= (isEmpty!37214 s!2326) ((_ is Nil!65078) s!2326))))

(assert (=> d!2001428 d!2001532))

(declare-fun b!6384614 () Bool)

(declare-fun e!3875510 () Bool)

(declare-fun e!3875508 () Bool)

(assert (=> b!6384614 (= e!3875510 e!3875508)))

(declare-fun res!2626241 () Bool)

(assert (=> b!6384614 (=> res!2626241 e!3875508)))

(declare-fun call!545664 () Bool)

(assert (=> b!6384614 (= res!2626241 call!545664)))

(declare-fun b!6384615 () Bool)

(declare-fun res!2626240 () Bool)

(declare-fun e!3875512 () Bool)

(assert (=> b!6384615 (=> res!2626240 e!3875512)))

(assert (=> b!6384615 (= res!2626240 (not ((_ is ElementMatch!16301) lt!2371171)))))

(declare-fun e!3875513 () Bool)

(assert (=> b!6384615 (= e!3875513 e!3875512)))

(declare-fun d!2001534 () Bool)

(declare-fun e!3875511 () Bool)

(assert (=> d!2001534 e!3875511))

(declare-fun c!1163483 () Bool)

(assert (=> d!2001534 (= c!1163483 ((_ is EmptyExpr!16301) lt!2371171))))

(declare-fun lt!2371317 () Bool)

(declare-fun e!3875509 () Bool)

(assert (=> d!2001534 (= lt!2371317 e!3875509)))

(declare-fun c!1163484 () Bool)

(assert (=> d!2001534 (= c!1163484 (isEmpty!37214 (_1!36583 (get!22535 lt!2371286))))))

(assert (=> d!2001534 (validRegex!8037 lt!2371171)))

(assert (=> d!2001534 (= (matchR!8484 lt!2371171 (_1!36583 (get!22535 lt!2371286))) lt!2371317)))

(declare-fun b!6384616 () Bool)

(assert (=> b!6384616 (= e!3875509 (matchR!8484 (derivativeStep!5005 lt!2371171 (head!13094 (_1!36583 (get!22535 lt!2371286)))) (tail!12179 (_1!36583 (get!22535 lt!2371286)))))))

(declare-fun b!6384617 () Bool)

(assert (=> b!6384617 (= e!3875511 e!3875513)))

(declare-fun c!1163485 () Bool)

(assert (=> b!6384617 (= c!1163485 ((_ is EmptyLang!16301) lt!2371171))))

(declare-fun b!6384618 () Bool)

(assert (=> b!6384618 (= e!3875511 (= lt!2371317 call!545664))))

(declare-fun b!6384619 () Bool)

(assert (=> b!6384619 (= e!3875512 e!3875510)))

(declare-fun res!2626242 () Bool)

(assert (=> b!6384619 (=> (not res!2626242) (not e!3875510))))

(assert (=> b!6384619 (= res!2626242 (not lt!2371317))))

(declare-fun b!6384620 () Bool)

(declare-fun res!2626243 () Bool)

(assert (=> b!6384620 (=> res!2626243 e!3875512)))

(declare-fun e!3875507 () Bool)

(assert (=> b!6384620 (= res!2626243 e!3875507)))

(declare-fun res!2626236 () Bool)

(assert (=> b!6384620 (=> (not res!2626236) (not e!3875507))))

(assert (=> b!6384620 (= res!2626236 lt!2371317)))

(declare-fun b!6384621 () Bool)

(declare-fun res!2626237 () Bool)

(assert (=> b!6384621 (=> (not res!2626237) (not e!3875507))))

(assert (=> b!6384621 (= res!2626237 (isEmpty!37214 (tail!12179 (_1!36583 (get!22535 lt!2371286)))))))

(declare-fun bm!545659 () Bool)

(assert (=> bm!545659 (= call!545664 (isEmpty!37214 (_1!36583 (get!22535 lt!2371286))))))

(declare-fun b!6384622 () Bool)

(declare-fun res!2626238 () Bool)

(assert (=> b!6384622 (=> (not res!2626238) (not e!3875507))))

(assert (=> b!6384622 (= res!2626238 (not call!545664))))

(declare-fun b!6384623 () Bool)

(assert (=> b!6384623 (= e!3875509 (nullable!6294 lt!2371171))))

(declare-fun b!6384624 () Bool)

(assert (=> b!6384624 (= e!3875513 (not lt!2371317))))

(declare-fun b!6384625 () Bool)

(declare-fun res!2626239 () Bool)

(assert (=> b!6384625 (=> res!2626239 e!3875508)))

(assert (=> b!6384625 (= res!2626239 (not (isEmpty!37214 (tail!12179 (_1!36583 (get!22535 lt!2371286))))))))

(declare-fun b!6384626 () Bool)

(assert (=> b!6384626 (= e!3875507 (= (head!13094 (_1!36583 (get!22535 lt!2371286))) (c!1163182 lt!2371171)))))

(declare-fun b!6384627 () Bool)

(assert (=> b!6384627 (= e!3875508 (not (= (head!13094 (_1!36583 (get!22535 lt!2371286))) (c!1163182 lt!2371171))))))

(assert (= (and d!2001534 c!1163484) b!6384623))

(assert (= (and d!2001534 (not c!1163484)) b!6384616))

(assert (= (and d!2001534 c!1163483) b!6384618))

(assert (= (and d!2001534 (not c!1163483)) b!6384617))

(assert (= (and b!6384617 c!1163485) b!6384624))

(assert (= (and b!6384617 (not c!1163485)) b!6384615))

(assert (= (and b!6384615 (not res!2626240)) b!6384620))

(assert (= (and b!6384620 res!2626236) b!6384622))

(assert (= (and b!6384622 res!2626238) b!6384621))

(assert (= (and b!6384621 res!2626237) b!6384626))

(assert (= (and b!6384620 (not res!2626243)) b!6384619))

(assert (= (and b!6384619 res!2626242) b!6384614))

(assert (= (and b!6384614 (not res!2626241)) b!6384625))

(assert (= (and b!6384625 (not res!2626239)) b!6384627))

(assert (= (or b!6384618 b!6384614 b!6384622) bm!545659))

(declare-fun m!7184278 () Bool)

(assert (=> b!6384616 m!7184278))

(assert (=> b!6384616 m!7184278))

(declare-fun m!7184280 () Bool)

(assert (=> b!6384616 m!7184280))

(declare-fun m!7184282 () Bool)

(assert (=> b!6384616 m!7184282))

(assert (=> b!6384616 m!7184280))

(assert (=> b!6384616 m!7184282))

(declare-fun m!7184284 () Bool)

(assert (=> b!6384616 m!7184284))

(declare-fun m!7184286 () Bool)

(assert (=> bm!545659 m!7184286))

(assert (=> b!6384621 m!7184282))

(assert (=> b!6384621 m!7184282))

(declare-fun m!7184288 () Bool)

(assert (=> b!6384621 m!7184288))

(assert (=> b!6384623 m!7183900))

(assert (=> b!6384626 m!7184278))

(assert (=> d!2001534 m!7184286))

(assert (=> d!2001534 m!7183902))

(assert (=> b!6384625 m!7184282))

(assert (=> b!6384625 m!7184282))

(assert (=> b!6384625 m!7184288))

(assert (=> b!6384627 m!7184278))

(assert (=> b!6384317 d!2001534))

(declare-fun d!2001536 () Bool)

(assert (=> d!2001536 (= (get!22535 lt!2371286) (v!52360 lt!2371286))))

(assert (=> b!6384317 d!2001536))

(declare-fun bs!1597700 () Bool)

(declare-fun b!6384631 () Bool)

(assert (= bs!1597700 (and b!6384631 d!2001464)))

(declare-fun lambda!352317 () Int)

(assert (=> bs!1597700 (not (= lambda!352317 lambda!352312))))

(declare-fun bs!1597701 () Bool)

(assert (= bs!1597701 (and b!6384631 b!6383550)))

(assert (=> bs!1597701 (not (= lambda!352317 lambda!352235))))

(declare-fun bs!1597702 () Bool)

(assert (= bs!1597702 (and b!6384631 d!2001398)))

(assert (=> bs!1597702 (not (= lambda!352317 lambda!352302))))

(assert (=> bs!1597700 (not (= lambda!352317 lambda!352313))))

(declare-fun bs!1597703 () Bool)

(assert (= bs!1597703 (and b!6384631 d!2001462)))

(assert (=> bs!1597703 (not (= lambda!352317 lambda!352311))))

(declare-fun bs!1597704 () Bool)

(assert (= bs!1597704 (and b!6384631 b!6384352)))

(assert (=> bs!1597704 (= (and (= (reg!16630 (regTwo!33115 r!7292)) (reg!16630 lt!2371176)) (= (regTwo!33115 r!7292) lt!2371176)) (= lambda!352317 lambda!352306))))

(declare-fun bs!1597705 () Bool)

(assert (= bs!1597705 (and b!6384631 b!6384262)))

(assert (=> bs!1597705 (= (and (= (reg!16630 (regTwo!33115 r!7292)) (reg!16630 r!7292)) (= (regTwo!33115 r!7292) r!7292)) (= lambda!352317 lambda!352295))))

(declare-fun bs!1597706 () Bool)

(assert (= bs!1597706 (and b!6384631 b!6384269)))

(assert (=> bs!1597706 (not (= lambda!352317 lambda!352296))))

(declare-fun bs!1597707 () Bool)

(assert (= bs!1597707 (and b!6384631 b!6384359)))

(assert (=> bs!1597707 (not (= lambda!352317 lambda!352307))))

(declare-fun bs!1597708 () Bool)

(assert (= bs!1597708 (and b!6384631 d!2001404)))

(assert (=> bs!1597708 (not (= lambda!352317 lambda!352305))))

(declare-fun bs!1597709 () Bool)

(assert (= bs!1597709 (and b!6384631 b!6383538)))

(assert (=> bs!1597709 (not (= lambda!352317 lambda!352239))))

(assert (=> bs!1597701 (not (= lambda!352317 lambda!352236))))

(assert (=> bs!1597709 (not (= lambda!352317 lambda!352238))))

(assert (=> bs!1597702 (not (= lambda!352317 lambda!352301))))

(assert (=> b!6384631 true))

(assert (=> b!6384631 true))

(declare-fun bs!1597710 () Bool)

(declare-fun b!6384638 () Bool)

(assert (= bs!1597710 (and b!6384638 d!2001464)))

(declare-fun lambda!352318 () Int)

(assert (=> bs!1597710 (not (= lambda!352318 lambda!352312))))

(declare-fun bs!1597711 () Bool)

(assert (= bs!1597711 (and b!6384638 b!6383550)))

(assert (=> bs!1597711 (not (= lambda!352318 lambda!352235))))

(declare-fun bs!1597712 () Bool)

(assert (= bs!1597712 (and b!6384638 d!2001398)))

(assert (=> bs!1597712 (= (and (= (regOne!33114 (regTwo!33115 r!7292)) lt!2371171) (= (regTwo!33114 (regTwo!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352318 lambda!352302))))

(assert (=> bs!1597710 (= (and (= (regOne!33114 (regTwo!33115 r!7292)) (regOne!33114 r!7292)) (= (regTwo!33114 (regTwo!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352318 lambda!352313))))

(declare-fun bs!1597713 () Bool)

(assert (= bs!1597713 (and b!6384638 d!2001462)))

(assert (=> bs!1597713 (not (= lambda!352318 lambda!352311))))

(declare-fun bs!1597714 () Bool)

(assert (= bs!1597714 (and b!6384638 b!6384352)))

(assert (=> bs!1597714 (not (= lambda!352318 lambda!352306))))

(declare-fun bs!1597715 () Bool)

(assert (= bs!1597715 (and b!6384638 b!6384262)))

(assert (=> bs!1597715 (not (= lambda!352318 lambda!352295))))

(declare-fun bs!1597716 () Bool)

(assert (= bs!1597716 (and b!6384638 b!6384269)))

(assert (=> bs!1597716 (= (and (= (regOne!33114 (regTwo!33115 r!7292)) (regOne!33114 r!7292)) (= (regTwo!33114 (regTwo!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352318 lambda!352296))))

(declare-fun bs!1597717 () Bool)

(assert (= bs!1597717 (and b!6384638 b!6384359)))

(assert (=> bs!1597717 (= (and (= (regOne!33114 (regTwo!33115 r!7292)) (regOne!33114 lt!2371176)) (= (regTwo!33114 (regTwo!33115 r!7292)) (regTwo!33114 lt!2371176))) (= lambda!352318 lambda!352307))))

(declare-fun bs!1597718 () Bool)

(assert (= bs!1597718 (and b!6384638 d!2001404)))

(assert (=> bs!1597718 (not (= lambda!352318 lambda!352305))))

(declare-fun bs!1597719 () Bool)

(assert (= bs!1597719 (and b!6384638 b!6383538)))

(assert (=> bs!1597719 (= (and (= (regOne!33114 (regTwo!33115 r!7292)) lt!2371171) (= (regTwo!33114 (regTwo!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352318 lambda!352239))))

(assert (=> bs!1597711 (= (and (= (regOne!33114 (regTwo!33115 r!7292)) (regOne!33114 r!7292)) (= (regTwo!33114 (regTwo!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352318 lambda!352236))))

(declare-fun bs!1597720 () Bool)

(assert (= bs!1597720 (and b!6384638 b!6384631)))

(assert (=> bs!1597720 (not (= lambda!352318 lambda!352317))))

(assert (=> bs!1597719 (not (= lambda!352318 lambda!352238))))

(assert (=> bs!1597712 (not (= lambda!352318 lambda!352301))))

(assert (=> b!6384638 true))

(assert (=> b!6384638 true))

(declare-fun bm!545660 () Bool)

(declare-fun call!545665 () Bool)

(assert (=> bm!545660 (= call!545665 (isEmpty!37214 s!2326))))

(declare-fun b!6384629 () Bool)

(declare-fun e!3875518 () Bool)

(declare-fun e!3875515 () Bool)

(assert (=> b!6384629 (= e!3875518 e!3875515)))

(declare-fun res!2626244 () Bool)

(assert (=> b!6384629 (= res!2626244 (not ((_ is EmptyLang!16301) (regTwo!33115 r!7292))))))

(assert (=> b!6384629 (=> (not res!2626244) (not e!3875515))))

(declare-fun b!6384630 () Bool)

(declare-fun e!3875517 () Bool)

(assert (=> b!6384630 (= e!3875517 (= s!2326 (Cons!65078 (c!1163182 (regTwo!33115 r!7292)) Nil!65078)))))

(declare-fun e!3875519 () Bool)

(declare-fun call!545666 () Bool)

(assert (=> b!6384631 (= e!3875519 call!545666)))

(declare-fun b!6384632 () Bool)

(declare-fun e!3875520 () Bool)

(assert (=> b!6384632 (= e!3875520 (matchRSpec!3402 (regTwo!33115 (regTwo!33115 r!7292)) s!2326))))

(declare-fun b!6384633 () Bool)

(declare-fun e!3875514 () Bool)

(declare-fun e!3875516 () Bool)

(assert (=> b!6384633 (= e!3875514 e!3875516)))

(declare-fun c!1163486 () Bool)

(assert (=> b!6384633 (= c!1163486 ((_ is Star!16301) (regTwo!33115 r!7292)))))

(declare-fun b!6384634 () Bool)

(declare-fun res!2626246 () Bool)

(assert (=> b!6384634 (=> res!2626246 e!3875519)))

(assert (=> b!6384634 (= res!2626246 call!545665)))

(assert (=> b!6384634 (= e!3875516 e!3875519)))

(declare-fun bm!545661 () Bool)

(assert (=> bm!545661 (= call!545666 (Exists!3371 (ite c!1163486 lambda!352317 lambda!352318)))))

(declare-fun d!2001538 () Bool)

(declare-fun c!1163487 () Bool)

(assert (=> d!2001538 (= c!1163487 ((_ is EmptyExpr!16301) (regTwo!33115 r!7292)))))

(assert (=> d!2001538 (= (matchRSpec!3402 (regTwo!33115 r!7292) s!2326) e!3875518)))

(declare-fun b!6384628 () Bool)

(assert (=> b!6384628 (= e!3875518 call!545665)))

(declare-fun b!6384635 () Bool)

(declare-fun c!1163488 () Bool)

(assert (=> b!6384635 (= c!1163488 ((_ is Union!16301) (regTwo!33115 r!7292)))))

(assert (=> b!6384635 (= e!3875517 e!3875514)))

(declare-fun b!6384636 () Bool)

(assert (=> b!6384636 (= e!3875514 e!3875520)))

(declare-fun res!2626245 () Bool)

(assert (=> b!6384636 (= res!2626245 (matchRSpec!3402 (regOne!33115 (regTwo!33115 r!7292)) s!2326))))

(assert (=> b!6384636 (=> res!2626245 e!3875520)))

(declare-fun b!6384637 () Bool)

(declare-fun c!1163489 () Bool)

(assert (=> b!6384637 (= c!1163489 ((_ is ElementMatch!16301) (regTwo!33115 r!7292)))))

(assert (=> b!6384637 (= e!3875515 e!3875517)))

(assert (=> b!6384638 (= e!3875516 call!545666)))

(assert (= (and d!2001538 c!1163487) b!6384628))

(assert (= (and d!2001538 (not c!1163487)) b!6384629))

(assert (= (and b!6384629 res!2626244) b!6384637))

(assert (= (and b!6384637 c!1163489) b!6384630))

(assert (= (and b!6384637 (not c!1163489)) b!6384635))

(assert (= (and b!6384635 c!1163488) b!6384636))

(assert (= (and b!6384635 (not c!1163488)) b!6384633))

(assert (= (and b!6384636 (not res!2626245)) b!6384632))

(assert (= (and b!6384633 c!1163486) b!6384634))

(assert (= (and b!6384633 (not c!1163486)) b!6384638))

(assert (= (and b!6384634 (not res!2626246)) b!6384631))

(assert (= (or b!6384631 b!6384638) bm!545661))

(assert (= (or b!6384628 b!6384634) bm!545660))

(assert (=> bm!545660 m!7183946))

(declare-fun m!7184300 () Bool)

(assert (=> b!6384632 m!7184300))

(declare-fun m!7184302 () Bool)

(assert (=> bm!545661 m!7184302))

(declare-fun m!7184304 () Bool)

(assert (=> b!6384636 m!7184304))

(assert (=> b!6384263 d!2001538))

(assert (=> d!2001414 d!2001420))

(declare-fun d!2001544 () Bool)

(assert (=> d!2001544 (= (flatMap!1806 lt!2371154 lambda!352237) (dynLambda!25819 lambda!352237 lt!2371181))))

(assert (=> d!2001544 true))

(declare-fun _$13!3568 () Unit!158535)

(assert (=> d!2001544 (= (choose!47509 lt!2371154 lt!2371181 lambda!352237) _$13!3568)))

(declare-fun b_lambda!242583 () Bool)

(assert (=> (not b_lambda!242583) (not d!2001544)))

(declare-fun bs!1597721 () Bool)

(assert (= bs!1597721 d!2001544))

(assert (=> bs!1597721 m!7183354))

(assert (=> bs!1597721 m!7184046))

(assert (=> d!2001414 d!2001544))

(declare-fun d!2001546 () Bool)

(assert (=> d!2001546 (= (isDefined!12895 lt!2371286) (not (isEmpty!37216 lt!2371286)))))

(declare-fun bs!1597722 () Bool)

(assert (= bs!1597722 d!2001546))

(declare-fun m!7184306 () Bool)

(assert (=> bs!1597722 m!7184306))

(assert (=> b!6384313 d!2001546))

(assert (=> bm!545607 d!2001532))

(declare-fun d!2001548 () Bool)

(declare-fun lambda!352322 () Int)

(declare-fun exists!2584 ((InoxSet Context!11370) Int) Bool)

(assert (=> d!2001548 (= (nullableZipper!2066 ((_ map or) lt!2371150 lt!2371179)) (exists!2584 ((_ map or) lt!2371150 lt!2371179) lambda!352322))))

(declare-fun bs!1597723 () Bool)

(assert (= bs!1597723 d!2001548))

(declare-fun m!7184308 () Bool)

(assert (=> bs!1597723 m!7184308))

(assert (=> b!6384070 d!2001548))

(declare-fun bs!1597724 () Bool)

(declare-fun d!2001550 () Bool)

(assert (= bs!1597724 (and d!2001550 d!2001548)))

(declare-fun lambda!352324 () Int)

(assert (=> bs!1597724 (= lambda!352324 lambda!352322)))

(assert (=> d!2001550 (= (nullableZipper!2066 lt!2371150) (exists!2584 lt!2371150 lambda!352324))))

(declare-fun bs!1597725 () Bool)

(assert (= bs!1597725 d!2001550))

(declare-fun m!7184310 () Bool)

(assert (=> bs!1597725 m!7184310))

(assert (=> b!6384064 d!2001550))

(declare-fun d!2001552 () Bool)

(assert (=> d!2001552 (= (nullable!6294 (h!71527 (exprs!6185 lt!2371174))) (nullableFct!2240 (h!71527 (exprs!6185 lt!2371174))))))

(declare-fun bs!1597726 () Bool)

(assert (= bs!1597726 d!2001552))

(declare-fun m!7184312 () Bool)

(assert (=> bs!1597726 m!7184312))

(assert (=> b!6384387 d!2001552))

(declare-fun bs!1597727 () Bool)

(declare-fun b!6384646 () Bool)

(assert (= bs!1597727 (and b!6384646 d!2001464)))

(declare-fun lambda!352325 () Int)

(assert (=> bs!1597727 (not (= lambda!352325 lambda!352312))))

(declare-fun bs!1597728 () Bool)

(assert (= bs!1597728 (and b!6384646 b!6383550)))

(assert (=> bs!1597728 (not (= lambda!352325 lambda!352235))))

(declare-fun bs!1597729 () Bool)

(assert (= bs!1597729 (and b!6384646 d!2001398)))

(assert (=> bs!1597729 (not (= lambda!352325 lambda!352302))))

(declare-fun bs!1597730 () Bool)

(assert (= bs!1597730 (and b!6384646 d!2001462)))

(assert (=> bs!1597730 (not (= lambda!352325 lambda!352311))))

(declare-fun bs!1597731 () Bool)

(assert (= bs!1597731 (and b!6384646 b!6384352)))

(assert (=> bs!1597731 (= (and (= (reg!16630 (regTwo!33115 lt!2371176)) (reg!16630 lt!2371176)) (= (regTwo!33115 lt!2371176) lt!2371176)) (= lambda!352325 lambda!352306))))

(declare-fun bs!1597732 () Bool)

(assert (= bs!1597732 (and b!6384646 b!6384262)))

(assert (=> bs!1597732 (= (and (= (reg!16630 (regTwo!33115 lt!2371176)) (reg!16630 r!7292)) (= (regTwo!33115 lt!2371176) r!7292)) (= lambda!352325 lambda!352295))))

(declare-fun bs!1597733 () Bool)

(assert (= bs!1597733 (and b!6384646 b!6384269)))

(assert (=> bs!1597733 (not (= lambda!352325 lambda!352296))))

(declare-fun bs!1597734 () Bool)

(assert (= bs!1597734 (and b!6384646 b!6384359)))

(assert (=> bs!1597734 (not (= lambda!352325 lambda!352307))))

(declare-fun bs!1597735 () Bool)

(assert (= bs!1597735 (and b!6384646 d!2001404)))

(assert (=> bs!1597735 (not (= lambda!352325 lambda!352305))))

(declare-fun bs!1597736 () Bool)

(assert (= bs!1597736 (and b!6384646 b!6383538)))

(assert (=> bs!1597736 (not (= lambda!352325 lambda!352239))))

(assert (=> bs!1597728 (not (= lambda!352325 lambda!352236))))

(assert (=> bs!1597727 (not (= lambda!352325 lambda!352313))))

(declare-fun bs!1597737 () Bool)

(assert (= bs!1597737 (and b!6384646 b!6384638)))

(assert (=> bs!1597737 (not (= lambda!352325 lambda!352318))))

(declare-fun bs!1597738 () Bool)

(assert (= bs!1597738 (and b!6384646 b!6384631)))

(assert (=> bs!1597738 (= (and (= (reg!16630 (regTwo!33115 lt!2371176)) (reg!16630 (regTwo!33115 r!7292))) (= (regTwo!33115 lt!2371176) (regTwo!33115 r!7292))) (= lambda!352325 lambda!352317))))

(assert (=> bs!1597736 (not (= lambda!352325 lambda!352238))))

(assert (=> bs!1597729 (not (= lambda!352325 lambda!352301))))

(assert (=> b!6384646 true))

(assert (=> b!6384646 true))

(declare-fun bs!1597739 () Bool)

(declare-fun b!6384653 () Bool)

(assert (= bs!1597739 (and b!6384653 d!2001464)))

(declare-fun lambda!352326 () Int)

(assert (=> bs!1597739 (not (= lambda!352326 lambda!352312))))

(declare-fun bs!1597740 () Bool)

(assert (= bs!1597740 (and b!6384653 b!6383550)))

(assert (=> bs!1597740 (not (= lambda!352326 lambda!352235))))

(declare-fun bs!1597741 () Bool)

(assert (= bs!1597741 (and b!6384653 d!2001398)))

(assert (=> bs!1597741 (= (and (= (regOne!33114 (regTwo!33115 lt!2371176)) lt!2371171) (= (regTwo!33114 (regTwo!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352326 lambda!352302))))

(declare-fun bs!1597743 () Bool)

(assert (= bs!1597743 (and b!6384653 d!2001462)))

(assert (=> bs!1597743 (not (= lambda!352326 lambda!352311))))

(declare-fun bs!1597744 () Bool)

(assert (= bs!1597744 (and b!6384653 b!6384352)))

(assert (=> bs!1597744 (not (= lambda!352326 lambda!352306))))

(declare-fun bs!1597745 () Bool)

(assert (= bs!1597745 (and b!6384653 b!6384262)))

(assert (=> bs!1597745 (not (= lambda!352326 lambda!352295))))

(declare-fun bs!1597747 () Bool)

(assert (= bs!1597747 (and b!6384653 b!6384269)))

(assert (=> bs!1597747 (= (and (= (regOne!33114 (regTwo!33115 lt!2371176)) (regOne!33114 r!7292)) (= (regTwo!33114 (regTwo!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352326 lambda!352296))))

(declare-fun bs!1597748 () Bool)

(assert (= bs!1597748 (and b!6384653 b!6384359)))

(assert (=> bs!1597748 (= (and (= (regOne!33114 (regTwo!33115 lt!2371176)) (regOne!33114 lt!2371176)) (= (regTwo!33114 (regTwo!33115 lt!2371176)) (regTwo!33114 lt!2371176))) (= lambda!352326 lambda!352307))))

(declare-fun bs!1597749 () Bool)

(assert (= bs!1597749 (and b!6384653 b!6383538)))

(assert (=> bs!1597749 (= (and (= (regOne!33114 (regTwo!33115 lt!2371176)) lt!2371171) (= (regTwo!33114 (regTwo!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352326 lambda!352239))))

(assert (=> bs!1597740 (= (and (= (regOne!33114 (regTwo!33115 lt!2371176)) (regOne!33114 r!7292)) (= (regTwo!33114 (regTwo!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352326 lambda!352236))))

(assert (=> bs!1597739 (= (and (= (regOne!33114 (regTwo!33115 lt!2371176)) (regOne!33114 r!7292)) (= (regTwo!33114 (regTwo!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352326 lambda!352313))))

(declare-fun bs!1597752 () Bool)

(assert (= bs!1597752 (and b!6384653 b!6384638)))

(assert (=> bs!1597752 (= (and (= (regOne!33114 (regTwo!33115 lt!2371176)) (regOne!33114 (regTwo!33115 r!7292))) (= (regTwo!33114 (regTwo!33115 lt!2371176)) (regTwo!33114 (regTwo!33115 r!7292)))) (= lambda!352326 lambda!352318))))

(declare-fun bs!1597753 () Bool)

(assert (= bs!1597753 (and b!6384653 d!2001404)))

(assert (=> bs!1597753 (not (= lambda!352326 lambda!352305))))

(declare-fun bs!1597755 () Bool)

(assert (= bs!1597755 (and b!6384653 b!6384646)))

(assert (=> bs!1597755 (not (= lambda!352326 lambda!352325))))

(declare-fun bs!1597756 () Bool)

(assert (= bs!1597756 (and b!6384653 b!6384631)))

(assert (=> bs!1597756 (not (= lambda!352326 lambda!352317))))

(assert (=> bs!1597749 (not (= lambda!352326 lambda!352238))))

(assert (=> bs!1597741 (not (= lambda!352326 lambda!352301))))

(assert (=> b!6384653 true))

(assert (=> b!6384653 true))

(declare-fun bm!545662 () Bool)

(declare-fun call!545667 () Bool)

(assert (=> bm!545662 (= call!545667 (isEmpty!37214 s!2326))))

(declare-fun b!6384644 () Bool)

(declare-fun e!3875527 () Bool)

(declare-fun e!3875524 () Bool)

(assert (=> b!6384644 (= e!3875527 e!3875524)))

(declare-fun res!2626251 () Bool)

(assert (=> b!6384644 (= res!2626251 (not ((_ is EmptyLang!16301) (regTwo!33115 lt!2371176))))))

(assert (=> b!6384644 (=> (not res!2626251) (not e!3875524))))

(declare-fun b!6384645 () Bool)

(declare-fun e!3875526 () Bool)

(assert (=> b!6384645 (= e!3875526 (= s!2326 (Cons!65078 (c!1163182 (regTwo!33115 lt!2371176)) Nil!65078)))))

(declare-fun e!3875528 () Bool)

(declare-fun call!545668 () Bool)

(assert (=> b!6384646 (= e!3875528 call!545668)))

(declare-fun b!6384647 () Bool)

(declare-fun e!3875529 () Bool)

(assert (=> b!6384647 (= e!3875529 (matchRSpec!3402 (regTwo!33115 (regTwo!33115 lt!2371176)) s!2326))))

(declare-fun b!6384648 () Bool)

(declare-fun e!3875523 () Bool)

(declare-fun e!3875525 () Bool)

(assert (=> b!6384648 (= e!3875523 e!3875525)))

(declare-fun c!1163492 () Bool)

(assert (=> b!6384648 (= c!1163492 ((_ is Star!16301) (regTwo!33115 lt!2371176)))))

(declare-fun b!6384649 () Bool)

(declare-fun res!2626253 () Bool)

(assert (=> b!6384649 (=> res!2626253 e!3875528)))

(assert (=> b!6384649 (= res!2626253 call!545667)))

(assert (=> b!6384649 (= e!3875525 e!3875528)))

(declare-fun bm!545663 () Bool)

(assert (=> bm!545663 (= call!545668 (Exists!3371 (ite c!1163492 lambda!352325 lambda!352326)))))

(declare-fun d!2001554 () Bool)

(declare-fun c!1163493 () Bool)

(assert (=> d!2001554 (= c!1163493 ((_ is EmptyExpr!16301) (regTwo!33115 lt!2371176)))))

(assert (=> d!2001554 (= (matchRSpec!3402 (regTwo!33115 lt!2371176) s!2326) e!3875527)))

(declare-fun b!6384643 () Bool)

(assert (=> b!6384643 (= e!3875527 call!545667)))

(declare-fun b!6384650 () Bool)

(declare-fun c!1163494 () Bool)

(assert (=> b!6384650 (= c!1163494 ((_ is Union!16301) (regTwo!33115 lt!2371176)))))

(assert (=> b!6384650 (= e!3875526 e!3875523)))

(declare-fun b!6384651 () Bool)

(assert (=> b!6384651 (= e!3875523 e!3875529)))

(declare-fun res!2626252 () Bool)

(assert (=> b!6384651 (= res!2626252 (matchRSpec!3402 (regOne!33115 (regTwo!33115 lt!2371176)) s!2326))))

(assert (=> b!6384651 (=> res!2626252 e!3875529)))

(declare-fun b!6384652 () Bool)

(declare-fun c!1163495 () Bool)

(assert (=> b!6384652 (= c!1163495 ((_ is ElementMatch!16301) (regTwo!33115 lt!2371176)))))

(assert (=> b!6384652 (= e!3875524 e!3875526)))

(assert (=> b!6384653 (= e!3875525 call!545668)))

(assert (= (and d!2001554 c!1163493) b!6384643))

(assert (= (and d!2001554 (not c!1163493)) b!6384644))

(assert (= (and b!6384644 res!2626251) b!6384652))

(assert (= (and b!6384652 c!1163495) b!6384645))

(assert (= (and b!6384652 (not c!1163495)) b!6384650))

(assert (= (and b!6384650 c!1163494) b!6384651))

(assert (= (and b!6384650 (not c!1163494)) b!6384648))

(assert (= (and b!6384651 (not res!2626252)) b!6384647))

(assert (= (and b!6384648 c!1163492) b!6384649))

(assert (= (and b!6384648 (not c!1163492)) b!6384653))

(assert (= (and b!6384649 (not res!2626253)) b!6384646))

(assert (= (or b!6384646 b!6384653) bm!545663))

(assert (= (or b!6384643 b!6384649) bm!545662))

(assert (=> bm!545662 m!7183946))

(declare-fun m!7184314 () Bool)

(assert (=> b!6384647 m!7184314))

(declare-fun m!7184316 () Bool)

(assert (=> bm!545663 m!7184316))

(declare-fun m!7184318 () Bool)

(assert (=> b!6384651 m!7184318))

(assert (=> b!6384353 d!2001554))

(declare-fun d!2001556 () Bool)

(declare-fun lt!2371320 () Int)

(assert (=> d!2001556 (>= lt!2371320 0)))

(declare-fun e!3875539 () Int)

(assert (=> d!2001556 (= lt!2371320 e!3875539)))

(declare-fun c!1163500 () Bool)

(assert (=> d!2001556 (= c!1163500 ((_ is Nil!65078) lt!2371289))))

(assert (=> d!2001556 (= (size!40360 lt!2371289) lt!2371320)))

(declare-fun b!6384667 () Bool)

(assert (=> b!6384667 (= e!3875539 0)))

(declare-fun b!6384668 () Bool)

(assert (=> b!6384668 (= e!3875539 (+ 1 (size!40360 (t!378806 lt!2371289))))))

(assert (= (and d!2001556 c!1163500) b!6384667))

(assert (= (and d!2001556 (not c!1163500)) b!6384668))

(declare-fun m!7184322 () Bool)

(assert (=> b!6384668 m!7184322))

(assert (=> b!6384329 d!2001556))

(declare-fun d!2001560 () Bool)

(declare-fun lt!2371321 () Int)

(assert (=> d!2001560 (>= lt!2371321 0)))

(declare-fun e!3875540 () Int)

(assert (=> d!2001560 (= lt!2371321 e!3875540)))

(declare-fun c!1163501 () Bool)

(assert (=> d!2001560 (= c!1163501 ((_ is Nil!65078) (_1!36583 lt!2371152)))))

(assert (=> d!2001560 (= (size!40360 (_1!36583 lt!2371152)) lt!2371321)))

(declare-fun b!6384669 () Bool)

(assert (=> b!6384669 (= e!3875540 0)))

(declare-fun b!6384670 () Bool)

(assert (=> b!6384670 (= e!3875540 (+ 1 (size!40360 (t!378806 (_1!36583 lt!2371152)))))))

(assert (= (and d!2001560 c!1163501) b!6384669))

(assert (= (and d!2001560 (not c!1163501)) b!6384670))

(declare-fun m!7184324 () Bool)

(assert (=> b!6384670 m!7184324))

(assert (=> b!6384329 d!2001560))

(declare-fun d!2001562 () Bool)

(declare-fun lt!2371322 () Int)

(assert (=> d!2001562 (>= lt!2371322 0)))

(declare-fun e!3875541 () Int)

(assert (=> d!2001562 (= lt!2371322 e!3875541)))

(declare-fun c!1163502 () Bool)

(assert (=> d!2001562 (= c!1163502 ((_ is Nil!65078) (_2!36583 lt!2371152)))))

(assert (=> d!2001562 (= (size!40360 (_2!36583 lt!2371152)) lt!2371322)))

(declare-fun b!6384671 () Bool)

(assert (=> b!6384671 (= e!3875541 0)))

(declare-fun b!6384672 () Bool)

(assert (=> b!6384672 (= e!3875541 (+ 1 (size!40360 (t!378806 (_2!36583 lt!2371152)))))))

(assert (= (and d!2001562 c!1163502) b!6384671))

(assert (= (and d!2001562 (not c!1163502)) b!6384672))

(declare-fun m!7184326 () Bool)

(assert (=> b!6384672 m!7184326))

(assert (=> b!6384329 d!2001562))

(assert (=> b!6384283 d!2001530))

(declare-fun d!2001564 () Bool)

(assert (=> d!2001564 (= (nullable!6294 r!7292) (nullableFct!2240 r!7292))))

(declare-fun bs!1597763 () Bool)

(assert (= bs!1597763 d!2001564))

(declare-fun m!7184328 () Bool)

(assert (=> bs!1597763 m!7184328))

(assert (=> b!6384279 d!2001564))

(declare-fun d!2001566 () Bool)

(assert (=> d!2001566 (= (isEmpty!37214 (t!378806 s!2326)) ((_ is Nil!65078) (t!378806 s!2326)))))

(assert (=> d!2001354 d!2001566))

(declare-fun d!2001568 () Bool)

(assert (=> d!2001568 (= (isDefined!12895 (findConcatSeparation!2606 lt!2371171 (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326)) (not (isEmpty!37216 (findConcatSeparation!2606 lt!2371171 (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326))))))

(declare-fun bs!1597764 () Bool)

(assert (= bs!1597764 d!2001568))

(assert (=> bs!1597764 m!7183404))

(declare-fun m!7184336 () Bool)

(assert (=> bs!1597764 m!7184336))

(assert (=> d!2001404 d!2001568))

(assert (=> d!2001404 d!2001400))

(declare-fun d!2001572 () Bool)

(assert (=> d!2001572 (= (Exists!3371 lambda!352305) (choose!47506 lambda!352305))))

(declare-fun bs!1597766 () Bool)

(assert (= bs!1597766 d!2001572))

(declare-fun m!7184340 () Bool)

(assert (=> bs!1597766 m!7184340))

(assert (=> d!2001404 d!2001572))

(declare-fun bs!1597770 () Bool)

(declare-fun d!2001576 () Bool)

(assert (= bs!1597770 (and d!2001576 d!2001464)))

(declare-fun lambda!352330 () Int)

(assert (=> bs!1597770 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352330 lambda!352312))))

(declare-fun bs!1597771 () Bool)

(assert (= bs!1597771 (and d!2001576 b!6383550)))

(assert (=> bs!1597771 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352330 lambda!352235))))

(declare-fun bs!1597772 () Bool)

(assert (= bs!1597772 (and d!2001576 d!2001398)))

(assert (=> bs!1597772 (not (= lambda!352330 lambda!352302))))

(declare-fun bs!1597773 () Bool)

(assert (= bs!1597773 (and d!2001576 b!6384653)))

(assert (=> bs!1597773 (not (= lambda!352330 lambda!352326))))

(declare-fun bs!1597774 () Bool)

(assert (= bs!1597774 (and d!2001576 d!2001462)))

(assert (=> bs!1597774 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352330 lambda!352311))))

(declare-fun bs!1597775 () Bool)

(assert (= bs!1597775 (and d!2001576 b!6384352)))

(assert (=> bs!1597775 (not (= lambda!352330 lambda!352306))))

(declare-fun bs!1597776 () Bool)

(assert (= bs!1597776 (and d!2001576 b!6384262)))

(assert (=> bs!1597776 (not (= lambda!352330 lambda!352295))))

(declare-fun bs!1597777 () Bool)

(assert (= bs!1597777 (and d!2001576 b!6384269)))

(assert (=> bs!1597777 (not (= lambda!352330 lambda!352296))))

(declare-fun bs!1597778 () Bool)

(assert (= bs!1597778 (and d!2001576 b!6384359)))

(assert (=> bs!1597778 (not (= lambda!352330 lambda!352307))))

(declare-fun bs!1597779 () Bool)

(assert (= bs!1597779 (and d!2001576 b!6383538)))

(assert (=> bs!1597779 (not (= lambda!352330 lambda!352239))))

(assert (=> bs!1597771 (not (= lambda!352330 lambda!352236))))

(assert (=> bs!1597770 (not (= lambda!352330 lambda!352313))))

(declare-fun bs!1597780 () Bool)

(assert (= bs!1597780 (and d!2001576 b!6384638)))

(assert (=> bs!1597780 (not (= lambda!352330 lambda!352318))))

(declare-fun bs!1597781 () Bool)

(assert (= bs!1597781 (and d!2001576 d!2001404)))

(assert (=> bs!1597781 (= lambda!352330 lambda!352305)))

(declare-fun bs!1597782 () Bool)

(assert (= bs!1597782 (and d!2001576 b!6384646)))

(assert (=> bs!1597782 (not (= lambda!352330 lambda!352325))))

(declare-fun bs!1597783 () Bool)

(assert (= bs!1597783 (and d!2001576 b!6384631)))

(assert (=> bs!1597783 (not (= lambda!352330 lambda!352317))))

(assert (=> bs!1597779 (= lambda!352330 lambda!352238)))

(assert (=> bs!1597772 (= lambda!352330 lambda!352301)))

(assert (=> d!2001576 true))

(assert (=> d!2001576 true))

(assert (=> d!2001576 true))

(assert (=> d!2001576 (= (isDefined!12895 (findConcatSeparation!2606 lt!2371171 (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326)) (Exists!3371 lambda!352330))))

(assert (=> d!2001576 true))

(declare-fun _$89!2623 () Unit!158535)

(assert (=> d!2001576 (= (choose!47508 lt!2371171 (regTwo!33114 r!7292) s!2326) _$89!2623)))

(declare-fun bs!1597784 () Bool)

(assert (= bs!1597784 d!2001576))

(assert (=> bs!1597784 m!7183404))

(assert (=> bs!1597784 m!7183404))

(assert (=> bs!1597784 m!7184022))

(declare-fun m!7184366 () Bool)

(assert (=> bs!1597784 m!7184366))

(assert (=> d!2001404 d!2001576))

(declare-fun b!6384702 () Bool)

(declare-fun e!3875564 () Bool)

(declare-fun e!3875559 () Bool)

(assert (=> b!6384702 (= e!3875564 e!3875559)))

(declare-fun c!1163509 () Bool)

(assert (=> b!6384702 (= c!1163509 ((_ is Union!16301) lt!2371171))))

(declare-fun b!6384703 () Bool)

(declare-fun e!3875562 () Bool)

(declare-fun call!545676 () Bool)

(assert (=> b!6384703 (= e!3875562 call!545676)))

(declare-fun b!6384704 () Bool)

(declare-fun e!3875566 () Bool)

(assert (=> b!6384704 (= e!3875564 e!3875566)))

(declare-fun res!2626282 () Bool)

(assert (=> b!6384704 (= res!2626282 (not (nullable!6294 (reg!16630 lt!2371171))))))

(assert (=> b!6384704 (=> (not res!2626282) (not e!3875566))))

(declare-fun bm!545671 () Bool)

(declare-fun call!545678 () Bool)

(assert (=> bm!545671 (= call!545678 (validRegex!8037 (ite c!1163509 (regOne!33115 lt!2371171) (regOne!33114 lt!2371171))))))

(declare-fun d!2001590 () Bool)

(declare-fun res!2626276 () Bool)

(declare-fun e!3875565 () Bool)

(assert (=> d!2001590 (=> res!2626276 e!3875565)))

(assert (=> d!2001590 (= res!2626276 ((_ is ElementMatch!16301) lt!2371171))))

(assert (=> d!2001590 (= (validRegex!8037 lt!2371171) e!3875565)))

(declare-fun b!6384705 () Bool)

(assert (=> b!6384705 (= e!3875565 e!3875564)))

(declare-fun c!1163508 () Bool)

(assert (=> b!6384705 (= c!1163508 ((_ is Star!16301) lt!2371171))))

(declare-fun b!6384706 () Bool)

(declare-fun e!3875558 () Bool)

(declare-fun e!3875563 () Bool)

(assert (=> b!6384706 (= e!3875558 e!3875563)))

(declare-fun res!2626279 () Bool)

(assert (=> b!6384706 (=> (not res!2626279) (not e!3875563))))

(assert (=> b!6384706 (= res!2626279 call!545678)))

(declare-fun bm!545672 () Bool)

(declare-fun call!545677 () Bool)

(assert (=> bm!545672 (= call!545676 call!545677)))

(declare-fun b!6384707 () Bool)

(assert (=> b!6384707 (= e!3875566 call!545677)))

(declare-fun bm!545673 () Bool)

(assert (=> bm!545673 (= call!545677 (validRegex!8037 (ite c!1163508 (reg!16630 lt!2371171) (ite c!1163509 (regTwo!33115 lt!2371171) (regTwo!33114 lt!2371171)))))))

(declare-fun b!6384708 () Bool)

(declare-fun res!2626280 () Bool)

(assert (=> b!6384708 (=> (not res!2626280) (not e!3875562))))

(assert (=> b!6384708 (= res!2626280 call!545678)))

(assert (=> b!6384708 (= e!3875559 e!3875562)))

(declare-fun b!6384709 () Bool)

(declare-fun res!2626281 () Bool)

(assert (=> b!6384709 (=> res!2626281 e!3875558)))

(assert (=> b!6384709 (= res!2626281 (not ((_ is Concat!25146) lt!2371171)))))

(assert (=> b!6384709 (= e!3875559 e!3875558)))

(declare-fun b!6384710 () Bool)

(assert (=> b!6384710 (= e!3875563 call!545676)))

(assert (= (and d!2001590 (not res!2626276)) b!6384705))

(assert (= (and b!6384705 c!1163508) b!6384704))

(assert (= (and b!6384705 (not c!1163508)) b!6384702))

(assert (= (and b!6384704 res!2626282) b!6384707))

(assert (= (and b!6384702 c!1163509) b!6384708))

(assert (= (and b!6384702 (not c!1163509)) b!6384709))

(assert (= (and b!6384708 res!2626280) b!6384703))

(assert (= (and b!6384709 (not res!2626281)) b!6384706))

(assert (= (and b!6384706 res!2626279) b!6384710))

(assert (= (or b!6384703 b!6384710) bm!545672))

(assert (= (or b!6384708 b!6384706) bm!545671))

(assert (= (or b!6384707 bm!545672) bm!545673))

(declare-fun m!7184368 () Bool)

(assert (=> b!6384704 m!7184368))

(declare-fun m!7184370 () Bool)

(assert (=> bm!545671 m!7184370))

(declare-fun m!7184372 () Bool)

(assert (=> bm!545673 m!7184372))

(assert (=> d!2001404 d!2001590))

(declare-fun b!6384713 () Bool)

(declare-fun e!3875574 () (InoxSet Context!11370))

(assert (=> b!6384713 (= e!3875574 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6384714 () Bool)

(declare-fun call!545681 () (InoxSet Context!11370))

(assert (=> b!6384714 (= e!3875574 call!545681)))

(declare-fun b!6384715 () Bool)

(declare-fun e!3875571 () (InoxSet Context!11370))

(declare-fun e!3875569 () (InoxSet Context!11370))

(assert (=> b!6384715 (= e!3875571 e!3875569)))

(declare-fun c!1163514 () Bool)

(assert (=> b!6384715 (= c!1163514 ((_ is Union!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6384716 () Bool)

(declare-fun e!3875572 () (InoxSet Context!11370))

(declare-fun call!545680 () (InoxSet Context!11370))

(declare-fun call!545682 () (InoxSet Context!11370))

(assert (=> b!6384716 (= e!3875572 ((_ map or) call!545680 call!545682))))

(declare-fun b!6384717 () Bool)

(declare-fun call!545684 () (InoxSet Context!11370))

(assert (=> b!6384717 (= e!3875569 ((_ map or) call!545684 call!545680))))

(declare-fun bm!545674 () Bool)

(assert (=> bm!545674 (= call!545682 call!545684)))

(declare-fun c!1163510 () Bool)

(declare-fun c!1163513 () Bool)

(declare-fun bm!545675 () Bool)

(declare-fun call!545683 () List!65203)

(assert (=> bm!545675 (= call!545683 ($colon$colon!2161 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343))))) (ite (or c!1163510 c!1163513) (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (h!71527 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun b!6384718 () Bool)

(declare-fun e!3875570 () (InoxSet Context!11370))

(assert (=> b!6384718 (= e!3875570 call!545681)))

(declare-fun d!2001592 () Bool)

(declare-fun c!1163511 () Bool)

(assert (=> d!2001592 (= c!1163511 (and ((_ is ElementMatch!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))) (= (c!1163182 (h!71527 (exprs!6185 (h!71528 zl!343)))) (h!71526 s!2326))))))

(assert (=> d!2001592 (= (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (h!71528 zl!343))) (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))) (h!71526 s!2326)) e!3875571)))

(declare-fun bm!545676 () Bool)

(assert (=> bm!545676 (= call!545681 call!545682)))

(declare-fun bm!545677 () Bool)

(assert (=> bm!545677 (= call!545680 (derivationStepZipperDown!1549 (ite c!1163514 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))) (ite c!1163514 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))) (Context!11371 call!545683)) (h!71526 s!2326)))))

(declare-fun b!6384719 () Bool)

(declare-fun e!3875573 () Bool)

(assert (=> b!6384719 (= c!1163510 e!3875573)))

(declare-fun res!2626285 () Bool)

(assert (=> b!6384719 (=> (not res!2626285) (not e!3875573))))

(assert (=> b!6384719 (= res!2626285 ((_ is Concat!25146) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> b!6384719 (= e!3875569 e!3875572)))

(declare-fun call!545679 () List!65203)

(declare-fun bm!545678 () Bool)

(assert (=> bm!545678 (= call!545684 (derivationStepZipperDown!1549 (ite c!1163514 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163510 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163513 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343))))))) (ite (or c!1163514 c!1163510) (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))) (Context!11371 call!545679)) (h!71526 s!2326)))))

(declare-fun b!6384720 () Bool)

(assert (=> b!6384720 (= e!3875571 (store ((as const (Array Context!11370 Bool)) false) (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))) true))))

(declare-fun bm!545679 () Bool)

(assert (=> bm!545679 (= call!545679 call!545683)))

(declare-fun b!6384721 () Bool)

(assert (=> b!6384721 (= e!3875573 (nullable!6294 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun b!6384722 () Bool)

(assert (=> b!6384722 (= e!3875572 e!3875570)))

(assert (=> b!6384722 (= c!1163513 ((_ is Concat!25146) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6384723 () Bool)

(declare-fun c!1163512 () Bool)

(assert (=> b!6384723 (= c!1163512 ((_ is Star!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> b!6384723 (= e!3875570 e!3875574)))

(assert (= (and d!2001592 c!1163511) b!6384720))

(assert (= (and d!2001592 (not c!1163511)) b!6384715))

(assert (= (and b!6384715 c!1163514) b!6384717))

(assert (= (and b!6384715 (not c!1163514)) b!6384719))

(assert (= (and b!6384719 res!2626285) b!6384721))

(assert (= (and b!6384719 c!1163510) b!6384716))

(assert (= (and b!6384719 (not c!1163510)) b!6384722))

(assert (= (and b!6384722 c!1163513) b!6384718))

(assert (= (and b!6384722 (not c!1163513)) b!6384723))

(assert (= (and b!6384723 c!1163512) b!6384714))

(assert (= (and b!6384723 (not c!1163512)) b!6384713))

(assert (= (or b!6384718 b!6384714) bm!545679))

(assert (= (or b!6384718 b!6384714) bm!545676))

(assert (= (or b!6384716 bm!545679) bm!545675))

(assert (= (or b!6384716 bm!545676) bm!545674))

(assert (= (or b!6384717 b!6384716) bm!545677))

(assert (= (or b!6384717 bm!545674) bm!545678))

(declare-fun m!7184374 () Bool)

(assert (=> bm!545677 m!7184374))

(declare-fun m!7184376 () Bool)

(assert (=> b!6384720 m!7184376))

(declare-fun m!7184378 () Bool)

(assert (=> bm!545678 m!7184378))

(assert (=> b!6384721 m!7184108))

(declare-fun m!7184380 () Bool)

(assert (=> bm!545675 m!7184380))

(assert (=> bm!545623 d!2001592))

(assert (=> d!2001406 d!2001532))

(declare-fun b!6384726 () Bool)

(declare-fun e!3875581 () Bool)

(declare-fun e!3875578 () Bool)

(assert (=> b!6384726 (= e!3875581 e!3875578)))

(declare-fun c!1163516 () Bool)

(assert (=> b!6384726 (= c!1163516 ((_ is Union!16301) lt!2371176))))

(declare-fun b!6384727 () Bool)

(declare-fun e!3875579 () Bool)

(declare-fun call!545685 () Bool)

(assert (=> b!6384727 (= e!3875579 call!545685)))

(declare-fun b!6384728 () Bool)

(declare-fun e!3875583 () Bool)

(assert (=> b!6384728 (= e!3875581 e!3875583)))

(declare-fun res!2626292 () Bool)

(assert (=> b!6384728 (= res!2626292 (not (nullable!6294 (reg!16630 lt!2371176))))))

(assert (=> b!6384728 (=> (not res!2626292) (not e!3875583))))

(declare-fun bm!545680 () Bool)

(declare-fun call!545687 () Bool)

(assert (=> bm!545680 (= call!545687 (validRegex!8037 (ite c!1163516 (regOne!33115 lt!2371176) (regOne!33114 lt!2371176))))))

(declare-fun d!2001594 () Bool)

(declare-fun res!2626288 () Bool)

(declare-fun e!3875582 () Bool)

(assert (=> d!2001594 (=> res!2626288 e!3875582)))

(assert (=> d!2001594 (= res!2626288 ((_ is ElementMatch!16301) lt!2371176))))

(assert (=> d!2001594 (= (validRegex!8037 lt!2371176) e!3875582)))

(declare-fun b!6384729 () Bool)

(assert (=> b!6384729 (= e!3875582 e!3875581)))

(declare-fun c!1163515 () Bool)

(assert (=> b!6384729 (= c!1163515 ((_ is Star!16301) lt!2371176))))

(declare-fun b!6384730 () Bool)

(declare-fun e!3875577 () Bool)

(declare-fun e!3875580 () Bool)

(assert (=> b!6384730 (= e!3875577 e!3875580)))

(declare-fun res!2626289 () Bool)

(assert (=> b!6384730 (=> (not res!2626289) (not e!3875580))))

(assert (=> b!6384730 (= res!2626289 call!545687)))

(declare-fun bm!545681 () Bool)

(declare-fun call!545686 () Bool)

(assert (=> bm!545681 (= call!545685 call!545686)))

(declare-fun b!6384731 () Bool)

(assert (=> b!6384731 (= e!3875583 call!545686)))

(declare-fun bm!545682 () Bool)

(assert (=> bm!545682 (= call!545686 (validRegex!8037 (ite c!1163515 (reg!16630 lt!2371176) (ite c!1163516 (regTwo!33115 lt!2371176) (regTwo!33114 lt!2371176)))))))

(declare-fun b!6384732 () Bool)

(declare-fun res!2626290 () Bool)

(assert (=> b!6384732 (=> (not res!2626290) (not e!3875579))))

(assert (=> b!6384732 (= res!2626290 call!545687)))

(assert (=> b!6384732 (= e!3875578 e!3875579)))

(declare-fun b!6384733 () Bool)

(declare-fun res!2626291 () Bool)

(assert (=> b!6384733 (=> res!2626291 e!3875577)))

(assert (=> b!6384733 (= res!2626291 (not ((_ is Concat!25146) lt!2371176)))))

(assert (=> b!6384733 (= e!3875578 e!3875577)))

(declare-fun b!6384734 () Bool)

(assert (=> b!6384734 (= e!3875580 call!545685)))

(assert (= (and d!2001594 (not res!2626288)) b!6384729))

(assert (= (and b!6384729 c!1163515) b!6384728))

(assert (= (and b!6384729 (not c!1163515)) b!6384726))

(assert (= (and b!6384728 res!2626292) b!6384731))

(assert (= (and b!6384726 c!1163516) b!6384732))

(assert (= (and b!6384726 (not c!1163516)) b!6384733))

(assert (= (and b!6384732 res!2626290) b!6384727))

(assert (= (and b!6384733 (not res!2626291)) b!6384730))

(assert (= (and b!6384730 res!2626289) b!6384734))

(assert (= (or b!6384727 b!6384734) bm!545681))

(assert (= (or b!6384732 b!6384730) bm!545680))

(assert (= (or b!6384731 bm!545681) bm!545682))

(declare-fun m!7184388 () Bool)

(assert (=> b!6384728 m!7184388))

(declare-fun m!7184390 () Bool)

(assert (=> bm!545680 m!7184390))

(declare-fun m!7184392 () Bool)

(assert (=> bm!545682 m!7184392))

(assert (=> d!2001406 d!2001594))

(assert (=> bs!1597679 d!2001434))

(assert (=> d!2001330 d!2001354))

(assert (=> d!2001330 d!2001342))

(declare-fun e!3875589 () Bool)

(declare-fun d!2001600 () Bool)

(assert (=> d!2001600 (= (matchZipper!2313 ((_ map or) lt!2371150 lt!2371179) (t!378806 s!2326)) e!3875589)))

(declare-fun res!2626295 () Bool)

(assert (=> d!2001600 (=> res!2626295 e!3875589)))

(assert (=> d!2001600 (= res!2626295 (matchZipper!2313 lt!2371150 (t!378806 s!2326)))))

(assert (=> d!2001600 true))

(declare-fun _$48!2177 () Unit!158535)

(assert (=> d!2001600 (= (choose!47503 lt!2371150 lt!2371179 (t!378806 s!2326)) _$48!2177)))

(declare-fun b!6384743 () Bool)

(assert (=> b!6384743 (= e!3875589 (matchZipper!2313 lt!2371179 (t!378806 s!2326)))))

(assert (= (and d!2001600 (not res!2626295)) b!6384743))

(assert (=> d!2001600 m!7183442))

(assert (=> d!2001600 m!7183440))

(assert (=> b!6384743 m!7183446))

(assert (=> d!2001330 d!2001600))

(declare-fun d!2001604 () Bool)

(assert (=> d!2001604 (= (head!13094 (_2!36583 lt!2371152)) (h!71526 (_2!36583 lt!2371152)))))

(assert (=> b!6384145 d!2001604))

(declare-fun b!6384746 () Bool)

(declare-fun e!3875596 () (InoxSet Context!11370))

(assert (=> b!6384746 (= e!3875596 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6384747 () Bool)

(declare-fun call!545690 () (InoxSet Context!11370))

(assert (=> b!6384747 (= e!3875596 call!545690)))

(declare-fun b!6384748 () Bool)

(declare-fun e!3875593 () (InoxSet Context!11370))

(declare-fun e!3875591 () (InoxSet Context!11370))

(assert (=> b!6384748 (= e!3875593 e!3875591)))

(declare-fun c!1163525 () Bool)

(assert (=> b!6384748 (= c!1163525 ((_ is Union!16301) (h!71527 (exprs!6185 lt!2371183))))))

(declare-fun b!6384749 () Bool)

(declare-fun e!3875594 () (InoxSet Context!11370))

(declare-fun call!545689 () (InoxSet Context!11370))

(declare-fun call!545691 () (InoxSet Context!11370))

(assert (=> b!6384749 (= e!3875594 ((_ map or) call!545689 call!545691))))

(declare-fun b!6384750 () Bool)

(declare-fun call!545693 () (InoxSet Context!11370))

(assert (=> b!6384750 (= e!3875591 ((_ map or) call!545693 call!545689))))

(declare-fun bm!545683 () Bool)

(assert (=> bm!545683 (= call!545691 call!545693)))

(declare-fun c!1163524 () Bool)

(declare-fun c!1163521 () Bool)

(declare-fun call!545692 () List!65203)

(declare-fun bm!545684 () Bool)

(assert (=> bm!545684 (= call!545692 ($colon$colon!2161 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371183)))) (ite (or c!1163521 c!1163524) (regTwo!33114 (h!71527 (exprs!6185 lt!2371183))) (h!71527 (exprs!6185 lt!2371183)))))))

(declare-fun b!6384751 () Bool)

(declare-fun e!3875592 () (InoxSet Context!11370))

(assert (=> b!6384751 (= e!3875592 call!545690)))

(declare-fun d!2001606 () Bool)

(declare-fun c!1163522 () Bool)

(assert (=> d!2001606 (= c!1163522 (and ((_ is ElementMatch!16301) (h!71527 (exprs!6185 lt!2371183))) (= (c!1163182 (h!71527 (exprs!6185 lt!2371183))) (h!71526 s!2326))))))

(assert (=> d!2001606 (= (derivationStepZipperDown!1549 (h!71527 (exprs!6185 lt!2371183)) (Context!11371 (t!378807 (exprs!6185 lt!2371183))) (h!71526 s!2326)) e!3875593)))

(declare-fun bm!545685 () Bool)

(assert (=> bm!545685 (= call!545690 call!545691)))

(declare-fun bm!545686 () Bool)

(assert (=> bm!545686 (= call!545689 (derivationStepZipperDown!1549 (ite c!1163525 (regTwo!33115 (h!71527 (exprs!6185 lt!2371183))) (regOne!33114 (h!71527 (exprs!6185 lt!2371183)))) (ite c!1163525 (Context!11371 (t!378807 (exprs!6185 lt!2371183))) (Context!11371 call!545692)) (h!71526 s!2326)))))

(declare-fun b!6384752 () Bool)

(declare-fun e!3875595 () Bool)

(assert (=> b!6384752 (= c!1163521 e!3875595)))

(declare-fun res!2626296 () Bool)

(assert (=> b!6384752 (=> (not res!2626296) (not e!3875595))))

(assert (=> b!6384752 (= res!2626296 ((_ is Concat!25146) (h!71527 (exprs!6185 lt!2371183))))))

(assert (=> b!6384752 (= e!3875591 e!3875594)))

(declare-fun bm!545687 () Bool)

(declare-fun call!545688 () List!65203)

(assert (=> bm!545687 (= call!545693 (derivationStepZipperDown!1549 (ite c!1163525 (regOne!33115 (h!71527 (exprs!6185 lt!2371183))) (ite c!1163521 (regTwo!33114 (h!71527 (exprs!6185 lt!2371183))) (ite c!1163524 (regOne!33114 (h!71527 (exprs!6185 lt!2371183))) (reg!16630 (h!71527 (exprs!6185 lt!2371183)))))) (ite (or c!1163525 c!1163521) (Context!11371 (t!378807 (exprs!6185 lt!2371183))) (Context!11371 call!545688)) (h!71526 s!2326)))))

(declare-fun b!6384753 () Bool)

(assert (=> b!6384753 (= e!3875593 (store ((as const (Array Context!11370 Bool)) false) (Context!11371 (t!378807 (exprs!6185 lt!2371183))) true))))

(declare-fun bm!545688 () Bool)

(assert (=> bm!545688 (= call!545688 call!545692)))

(declare-fun b!6384754 () Bool)

(assert (=> b!6384754 (= e!3875595 (nullable!6294 (regOne!33114 (h!71527 (exprs!6185 lt!2371183)))))))

(declare-fun b!6384755 () Bool)

(assert (=> b!6384755 (= e!3875594 e!3875592)))

(assert (=> b!6384755 (= c!1163524 ((_ is Concat!25146) (h!71527 (exprs!6185 lt!2371183))))))

(declare-fun b!6384756 () Bool)

(declare-fun c!1163523 () Bool)

(assert (=> b!6384756 (= c!1163523 ((_ is Star!16301) (h!71527 (exprs!6185 lt!2371183))))))

(assert (=> b!6384756 (= e!3875592 e!3875596)))

(assert (= (and d!2001606 c!1163522) b!6384753))

(assert (= (and d!2001606 (not c!1163522)) b!6384748))

(assert (= (and b!6384748 c!1163525) b!6384750))

(assert (= (and b!6384748 (not c!1163525)) b!6384752))

(assert (= (and b!6384752 res!2626296) b!6384754))

(assert (= (and b!6384752 c!1163521) b!6384749))

(assert (= (and b!6384752 (not c!1163521)) b!6384755))

(assert (= (and b!6384755 c!1163524) b!6384751))

(assert (= (and b!6384755 (not c!1163524)) b!6384756))

(assert (= (and b!6384756 c!1163523) b!6384747))

(assert (= (and b!6384756 (not c!1163523)) b!6384746))

(assert (= (or b!6384751 b!6384747) bm!545688))

(assert (= (or b!6384751 b!6384747) bm!545685))

(assert (= (or b!6384749 bm!545688) bm!545684))

(assert (= (or b!6384749 bm!545685) bm!545683))

(assert (= (or b!6384750 b!6384749) bm!545686))

(assert (= (or b!6384750 bm!545683) bm!545687))

(declare-fun m!7184402 () Bool)

(assert (=> bm!545686 m!7184402))

(declare-fun m!7184404 () Bool)

(assert (=> b!6384753 m!7184404))

(declare-fun m!7184406 () Bool)

(assert (=> bm!545687 m!7184406))

(declare-fun m!7184408 () Bool)

(assert (=> b!6384754 m!7184408))

(declare-fun m!7184410 () Bool)

(assert (=> bm!545684 m!7184410))

(assert (=> bm!545622 d!2001606))

(declare-fun b!6384759 () Bool)

(declare-fun e!3875603 () (InoxSet Context!11370))

(assert (=> b!6384759 (= e!3875603 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6384760 () Bool)

(declare-fun call!545696 () (InoxSet Context!11370))

(assert (=> b!6384760 (= e!3875603 call!545696)))

(declare-fun b!6384761 () Bool)

(declare-fun e!3875600 () (InoxSet Context!11370))

(declare-fun e!3875598 () (InoxSet Context!11370))

(assert (=> b!6384761 (= e!3875600 e!3875598)))

(declare-fun c!1163531 () Bool)

(assert (=> b!6384761 (= c!1163531 ((_ is Union!16301) (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))))))

(declare-fun b!6384762 () Bool)

(declare-fun e!3875601 () (InoxSet Context!11370))

(declare-fun call!545695 () (InoxSet Context!11370))

(declare-fun call!545697 () (InoxSet Context!11370))

(assert (=> b!6384762 (= e!3875601 ((_ map or) call!545695 call!545697))))

(declare-fun b!6384763 () Bool)

(declare-fun call!545699 () (InoxSet Context!11370))

(assert (=> b!6384763 (= e!3875598 ((_ map or) call!545699 call!545695))))

(declare-fun bm!545689 () Bool)

(assert (=> bm!545689 (= call!545697 call!545699)))

(declare-fun bm!545690 () Bool)

(declare-fun c!1163527 () Bool)

(declare-fun c!1163530 () Bool)

(declare-fun call!545698 () List!65203)

(assert (=> bm!545690 (= call!545698 ($colon$colon!2161 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))) (ite (or c!1163527 c!1163530) (regTwo!33114 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))))))

(declare-fun b!6384764 () Bool)

(declare-fun e!3875599 () (InoxSet Context!11370))

(assert (=> b!6384764 (= e!3875599 call!545696)))

(declare-fun d!2001614 () Bool)

(declare-fun c!1163528 () Bool)

(assert (=> d!2001614 (= c!1163528 (and ((_ is ElementMatch!16301) (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (= (c!1163182 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (h!71526 s!2326))))))

(assert (=> d!2001614 (= (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (h!71526 s!2326)) e!3875600)))

(declare-fun bm!545691 () Bool)

(assert (=> bm!545691 (= call!545696 call!545697)))

(declare-fun bm!545692 () Bool)

(assert (=> bm!545692 (= call!545695 (derivationStepZipperDown!1549 (ite c!1163531 (regTwo!33115 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (regOne!33114 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))) (ite c!1163531 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (Context!11371 call!545698)) (h!71526 s!2326)))))

(declare-fun b!6384765 () Bool)

(declare-fun e!3875602 () Bool)

(assert (=> b!6384765 (= c!1163527 e!3875602)))

(declare-fun res!2626297 () Bool)

(assert (=> b!6384765 (=> (not res!2626297) (not e!3875602))))

(assert (=> b!6384765 (= res!2626297 ((_ is Concat!25146) (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))))))

(assert (=> b!6384765 (= e!3875598 e!3875601)))

(declare-fun call!545694 () List!65203)

(declare-fun bm!545693 () Bool)

(assert (=> bm!545693 (= call!545699 (derivationStepZipperDown!1549 (ite c!1163531 (regOne!33115 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (ite c!1163527 (regTwo!33114 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (ite c!1163530 (regOne!33114 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (reg!16630 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))))) (ite (or c!1163531 c!1163527) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (Context!11371 call!545694)) (h!71526 s!2326)))))

(declare-fun b!6384766 () Bool)

(assert (=> b!6384766 (= e!3875600 (store ((as const (Array Context!11370 Bool)) false) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) true))))

(declare-fun bm!545694 () Bool)

(assert (=> bm!545694 (= call!545694 call!545698)))

(declare-fun b!6384767 () Bool)

(assert (=> b!6384767 (= e!3875602 (nullable!6294 (regOne!33114 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))))))

(declare-fun b!6384768 () Bool)

(assert (=> b!6384768 (= e!3875601 e!3875599)))

(assert (=> b!6384768 (= c!1163530 ((_ is Concat!25146) (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))))))

(declare-fun b!6384769 () Bool)

(declare-fun c!1163529 () Bool)

(assert (=> b!6384769 (= c!1163529 ((_ is Star!16301) (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))))))

(assert (=> b!6384769 (= e!3875599 e!3875603)))

(assert (= (and d!2001614 c!1163528) b!6384766))

(assert (= (and d!2001614 (not c!1163528)) b!6384761))

(assert (= (and b!6384761 c!1163531) b!6384763))

(assert (= (and b!6384761 (not c!1163531)) b!6384765))

(assert (= (and b!6384765 res!2626297) b!6384767))

(assert (= (and b!6384765 c!1163527) b!6384762))

(assert (= (and b!6384765 (not c!1163527)) b!6384768))

(assert (= (and b!6384768 c!1163530) b!6384764))

(assert (= (and b!6384768 (not c!1163530)) b!6384769))

(assert (= (and b!6384769 c!1163529) b!6384760))

(assert (= (and b!6384769 (not c!1163529)) b!6384759))

(assert (= (or b!6384764 b!6384760) bm!545694))

(assert (= (or b!6384764 b!6384760) bm!545691))

(assert (= (or b!6384762 bm!545694) bm!545690))

(assert (= (or b!6384762 bm!545691) bm!545689))

(assert (= (or b!6384763 b!6384762) bm!545692))

(assert (= (or b!6384763 bm!545689) bm!545693))

(declare-fun m!7184412 () Bool)

(assert (=> bm!545692 m!7184412))

(declare-fun m!7184414 () Bool)

(assert (=> b!6384766 m!7184414))

(declare-fun m!7184416 () Bool)

(assert (=> bm!545693 m!7184416))

(declare-fun m!7184418 () Bool)

(assert (=> b!6384767 m!7184418))

(declare-fun m!7184420 () Bool)

(assert (=> bm!545690 m!7184420))

(assert (=> bm!545621 d!2001614))

(declare-fun d!2001616 () Bool)

(assert (=> d!2001616 (= (isEmpty!37212 (tail!12178 (exprs!6185 (h!71528 zl!343)))) ((_ is Nil!65079) (tail!12178 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> b!6383945 d!2001616))

(declare-fun d!2001618 () Bool)

(assert (=> d!2001618 (= (tail!12178 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))

(assert (=> b!6383945 d!2001618))

(declare-fun d!2001620 () Bool)

(assert (=> d!2001620 (= (nullable!6294 (regOne!33114 (reg!16630 (regOne!33114 r!7292)))) (nullableFct!2240 (regOne!33114 (reg!16630 (regOne!33114 r!7292)))))))

(declare-fun bs!1597791 () Bool)

(assert (= bs!1597791 d!2001620))

(declare-fun m!7184422 () Bool)

(assert (=> bs!1597791 m!7184422))

(assert (=> b!6384102 d!2001620))

(declare-fun b!6384770 () Bool)

(declare-fun e!3875608 () Bool)

(declare-fun e!3875605 () Bool)

(assert (=> b!6384770 (= e!3875608 e!3875605)))

(declare-fun c!1163533 () Bool)

(assert (=> b!6384770 (= c!1163533 ((_ is Union!16301) lt!2371247))))

(declare-fun b!6384771 () Bool)

(declare-fun e!3875606 () Bool)

(declare-fun call!545700 () Bool)

(assert (=> b!6384771 (= e!3875606 call!545700)))

(declare-fun b!6384772 () Bool)

(declare-fun e!3875610 () Bool)

(assert (=> b!6384772 (= e!3875608 e!3875610)))

(declare-fun res!2626302 () Bool)

(assert (=> b!6384772 (= res!2626302 (not (nullable!6294 (reg!16630 lt!2371247))))))

(assert (=> b!6384772 (=> (not res!2626302) (not e!3875610))))

(declare-fun bm!545695 () Bool)

(declare-fun call!545702 () Bool)

(assert (=> bm!545695 (= call!545702 (validRegex!8037 (ite c!1163533 (regOne!33115 lt!2371247) (regOne!33114 lt!2371247))))))

(declare-fun d!2001622 () Bool)

(declare-fun res!2626298 () Bool)

(declare-fun e!3875609 () Bool)

(assert (=> d!2001622 (=> res!2626298 e!3875609)))

(assert (=> d!2001622 (= res!2626298 ((_ is ElementMatch!16301) lt!2371247))))

(assert (=> d!2001622 (= (validRegex!8037 lt!2371247) e!3875609)))

(declare-fun b!6384773 () Bool)

(assert (=> b!6384773 (= e!3875609 e!3875608)))

(declare-fun c!1163532 () Bool)

(assert (=> b!6384773 (= c!1163532 ((_ is Star!16301) lt!2371247))))

(declare-fun b!6384774 () Bool)

(declare-fun e!3875604 () Bool)

(declare-fun e!3875607 () Bool)

(assert (=> b!6384774 (= e!3875604 e!3875607)))

(declare-fun res!2626299 () Bool)

(assert (=> b!6384774 (=> (not res!2626299) (not e!3875607))))

(assert (=> b!6384774 (= res!2626299 call!545702)))

(declare-fun bm!545696 () Bool)

(declare-fun call!545701 () Bool)

(assert (=> bm!545696 (= call!545700 call!545701)))

(declare-fun b!6384775 () Bool)

(assert (=> b!6384775 (= e!3875610 call!545701)))

(declare-fun bm!545697 () Bool)

(assert (=> bm!545697 (= call!545701 (validRegex!8037 (ite c!1163532 (reg!16630 lt!2371247) (ite c!1163533 (regTwo!33115 lt!2371247) (regTwo!33114 lt!2371247)))))))

(declare-fun b!6384776 () Bool)

(declare-fun res!2626300 () Bool)

(assert (=> b!6384776 (=> (not res!2626300) (not e!3875606))))

(assert (=> b!6384776 (= res!2626300 call!545702)))

(assert (=> b!6384776 (= e!3875605 e!3875606)))

(declare-fun b!6384777 () Bool)

(declare-fun res!2626301 () Bool)

(assert (=> b!6384777 (=> res!2626301 e!3875604)))

(assert (=> b!6384777 (= res!2626301 (not ((_ is Concat!25146) lt!2371247)))))

(assert (=> b!6384777 (= e!3875605 e!3875604)))

(declare-fun b!6384778 () Bool)

(assert (=> b!6384778 (= e!3875607 call!545700)))

(assert (= (and d!2001622 (not res!2626298)) b!6384773))

(assert (= (and b!6384773 c!1163532) b!6384772))

(assert (= (and b!6384773 (not c!1163532)) b!6384770))

(assert (= (and b!6384772 res!2626302) b!6384775))

(assert (= (and b!6384770 c!1163533) b!6384776))

(assert (= (and b!6384770 (not c!1163533)) b!6384777))

(assert (= (and b!6384776 res!2626300) b!6384771))

(assert (= (and b!6384777 (not res!2626301)) b!6384774))

(assert (= (and b!6384774 res!2626299) b!6384778))

(assert (= (or b!6384771 b!6384778) bm!545696))

(assert (= (or b!6384776 b!6384774) bm!545695))

(assert (= (or b!6384775 bm!545696) bm!545697))

(declare-fun m!7184424 () Bool)

(assert (=> b!6384772 m!7184424))

(declare-fun m!7184426 () Bool)

(assert (=> bm!545695 m!7184426))

(declare-fun m!7184428 () Bool)

(assert (=> bm!545697 m!7184428))

(assert (=> d!2001320 d!2001622))

(declare-fun bs!1597796 () Bool)

(declare-fun d!2001624 () Bool)

(assert (= bs!1597796 (and d!2001624 d!2001366)))

(declare-fun lambda!352332 () Int)

(assert (=> bs!1597796 (= lambda!352332 lambda!352284)))

(declare-fun bs!1597798 () Bool)

(assert (= bs!1597798 (and d!2001624 d!2001364)))

(assert (=> bs!1597798 (= lambda!352332 lambda!352283)))

(declare-fun bs!1597799 () Bool)

(assert (= bs!1597799 (and d!2001624 d!2001376)))

(assert (=> bs!1597799 (= lambda!352332 lambda!352290)))

(declare-fun bs!1597800 () Bool)

(assert (= bs!1597800 (and d!2001624 d!2001302)))

(assert (=> bs!1597800 (= lambda!352332 lambda!352276)))

(declare-fun bs!1597802 () Bool)

(assert (= bs!1597802 (and d!2001624 d!2001374)))

(assert (=> bs!1597802 (= lambda!352332 lambda!352287)))

(declare-fun bs!1597803 () Bool)

(assert (= bs!1597803 (and d!2001624 d!2001362)))

(assert (=> bs!1597803 (= lambda!352332 lambda!352282)))

(declare-fun b!6384779 () Bool)

(declare-fun e!3875611 () Bool)

(declare-fun lt!2371329 () Regex!16301)

(assert (=> b!6384779 (= e!3875611 (isEmptyLang!1709 lt!2371329))))

(declare-fun b!6384780 () Bool)

(declare-fun e!3875613 () Bool)

(assert (=> b!6384780 (= e!3875613 e!3875611)))

(declare-fun c!1163535 () Bool)

(assert (=> b!6384780 (= c!1163535 (isEmpty!37212 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080))))))

(declare-fun b!6384781 () Bool)

(declare-fun e!3875616 () Bool)

(assert (=> b!6384781 (= e!3875616 (= lt!2371329 (head!13093 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080)))))))

(declare-fun b!6384783 () Bool)

(assert (=> b!6384783 (= e!3875616 (isUnion!1139 lt!2371329))))

(declare-fun b!6384784 () Bool)

(declare-fun e!3875615 () Regex!16301)

(assert (=> b!6384784 (= e!3875615 (Union!16301 (h!71527 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080))) (generalisedUnion!2145 (t!378807 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080))))))))

(declare-fun b!6384785 () Bool)

(declare-fun e!3875612 () Regex!16301)

(assert (=> b!6384785 (= e!3875612 (h!71527 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080))))))

(declare-fun b!6384786 () Bool)

(declare-fun e!3875614 () Bool)

(assert (=> b!6384786 (= e!3875614 (isEmpty!37212 (t!378807 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080)))))))

(declare-fun b!6384782 () Bool)

(assert (=> b!6384782 (= e!3875611 e!3875616)))

(declare-fun c!1163534 () Bool)

(assert (=> b!6384782 (= c!1163534 (isEmpty!37212 (tail!12178 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080)))))))

(assert (=> d!2001624 e!3875613))

(declare-fun res!2626304 () Bool)

(assert (=> d!2001624 (=> (not res!2626304) (not e!3875613))))

(assert (=> d!2001624 (= res!2626304 (validRegex!8037 lt!2371329))))

(assert (=> d!2001624 (= lt!2371329 e!3875612)))

(declare-fun c!1163537 () Bool)

(assert (=> d!2001624 (= c!1163537 e!3875614)))

(declare-fun res!2626303 () Bool)

(assert (=> d!2001624 (=> (not res!2626303) (not e!3875614))))

(assert (=> d!2001624 (= res!2626303 ((_ is Cons!65079) (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080))))))

(assert (=> d!2001624 (forall!15479 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080)) lambda!352332)))

(assert (=> d!2001624 (= (generalisedUnion!2145 (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080))) lt!2371329)))

(declare-fun b!6384787 () Bool)

(assert (=> b!6384787 (= e!3875612 e!3875615)))

(declare-fun c!1163536 () Bool)

(assert (=> b!6384787 (= c!1163536 ((_ is Cons!65079) (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080))))))

(declare-fun b!6384788 () Bool)

(assert (=> b!6384788 (= e!3875615 EmptyLang!16301)))

(assert (= (and d!2001624 res!2626303) b!6384786))

(assert (= (and d!2001624 c!1163537) b!6384785))

(assert (= (and d!2001624 (not c!1163537)) b!6384787))

(assert (= (and b!6384787 c!1163536) b!6384784))

(assert (= (and b!6384787 (not c!1163536)) b!6384788))

(assert (= (and d!2001624 res!2626304) b!6384780))

(assert (= (and b!6384780 c!1163535) b!6384779))

(assert (= (and b!6384780 (not c!1163535)) b!6384782))

(assert (= (and b!6384782 c!1163534) b!6384781))

(assert (= (and b!6384782 (not c!1163534)) b!6384783))

(declare-fun m!7184430 () Bool)

(assert (=> b!6384784 m!7184430))

(declare-fun m!7184432 () Bool)

(assert (=> b!6384779 m!7184432))

(assert (=> b!6384782 m!7183784))

(declare-fun m!7184434 () Bool)

(assert (=> b!6384782 m!7184434))

(assert (=> b!6384782 m!7184434))

(declare-fun m!7184436 () Bool)

(assert (=> b!6384782 m!7184436))

(declare-fun m!7184438 () Bool)

(assert (=> b!6384783 m!7184438))

(assert (=> b!6384781 m!7183784))

(declare-fun m!7184440 () Bool)

(assert (=> b!6384781 m!7184440))

(assert (=> b!6384780 m!7183784))

(declare-fun m!7184442 () Bool)

(assert (=> b!6384780 m!7184442))

(declare-fun m!7184444 () Bool)

(assert (=> d!2001624 m!7184444))

(assert (=> d!2001624 m!7183784))

(declare-fun m!7184446 () Bool)

(assert (=> d!2001624 m!7184446))

(declare-fun m!7184448 () Bool)

(assert (=> b!6384786 m!7184448))

(assert (=> d!2001320 d!2001624))

(declare-fun bs!1597806 () Bool)

(declare-fun d!2001626 () Bool)

(assert (= bs!1597806 (and d!2001626 d!2001366)))

(declare-fun lambda!352333 () Int)

(assert (=> bs!1597806 (= lambda!352333 lambda!352284)))

(declare-fun bs!1597807 () Bool)

(assert (= bs!1597807 (and d!2001626 d!2001624)))

(assert (=> bs!1597807 (= lambda!352333 lambda!352332)))

(declare-fun bs!1597808 () Bool)

(assert (= bs!1597808 (and d!2001626 d!2001364)))

(assert (=> bs!1597808 (= lambda!352333 lambda!352283)))

(declare-fun bs!1597809 () Bool)

(assert (= bs!1597809 (and d!2001626 d!2001376)))

(assert (=> bs!1597809 (= lambda!352333 lambda!352290)))

(declare-fun bs!1597811 () Bool)

(assert (= bs!1597811 (and d!2001626 d!2001302)))

(assert (=> bs!1597811 (= lambda!352333 lambda!352276)))

(declare-fun bs!1597812 () Bool)

(assert (= bs!1597812 (and d!2001626 d!2001374)))

(assert (=> bs!1597812 (= lambda!352333 lambda!352287)))

(declare-fun bs!1597813 () Bool)

(assert (= bs!1597813 (and d!2001626 d!2001362)))

(assert (=> bs!1597813 (= lambda!352333 lambda!352282)))

(declare-fun lt!2371330 () List!65203)

(assert (=> d!2001626 (forall!15479 lt!2371330 lambda!352333)))

(declare-fun e!3875617 () List!65203)

(assert (=> d!2001626 (= lt!2371330 e!3875617)))

(declare-fun c!1163538 () Bool)

(assert (=> d!2001626 (= c!1163538 ((_ is Cons!65080) (Cons!65080 lt!2371169 Nil!65080)))))

(assert (=> d!2001626 (= (unfocusZipperList!1722 (Cons!65080 lt!2371169 Nil!65080)) lt!2371330)))

(declare-fun b!6384789 () Bool)

(assert (=> b!6384789 (= e!3875617 (Cons!65079 (generalisedConcat!1898 (exprs!6185 (h!71528 (Cons!65080 lt!2371169 Nil!65080)))) (unfocusZipperList!1722 (t!378808 (Cons!65080 lt!2371169 Nil!65080)))))))

(declare-fun b!6384790 () Bool)

(assert (=> b!6384790 (= e!3875617 Nil!65079)))

(assert (= (and d!2001626 c!1163538) b!6384789))

(assert (= (and d!2001626 (not c!1163538)) b!6384790))

(declare-fun m!7184454 () Bool)

(assert (=> d!2001626 m!7184454))

(declare-fun m!7184456 () Bool)

(assert (=> b!6384789 m!7184456))

(declare-fun m!7184458 () Bool)

(assert (=> b!6384789 m!7184458))

(assert (=> d!2001320 d!2001626))

(declare-fun d!2001632 () Bool)

(assert (=> d!2001632 (= (isEmptyExpr!1701 lt!2371243) ((_ is EmptyExpr!16301) lt!2371243))))

(assert (=> b!6383941 d!2001632))

(declare-fun b!6384800 () Bool)

(declare-fun e!3875626 () (InoxSet Context!11370))

(declare-fun call!545706 () (InoxSet Context!11370))

(assert (=> b!6384800 (= e!3875626 call!545706)))

(declare-fun b!6384801 () Bool)

(declare-fun e!3875627 () Bool)

(assert (=> b!6384801 (= e!3875627 (nullable!6294 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371169)))))))))

(declare-fun bm!545701 () Bool)

(assert (=> bm!545701 (= call!545706 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371169))))) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371169)))))) (h!71526 s!2326)))))

(declare-fun b!6384803 () Bool)

(declare-fun e!3875625 () (InoxSet Context!11370))

(assert (=> b!6384803 (= e!3875625 ((_ map or) call!545706 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371169)))))) (h!71526 s!2326))))))

(declare-fun b!6384804 () Bool)

(assert (=> b!6384804 (= e!3875625 e!3875626)))

(declare-fun c!1163542 () Bool)

(assert (=> b!6384804 (= c!1163542 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371169))))))))

(declare-fun d!2001634 () Bool)

(declare-fun c!1163541 () Bool)

(assert (=> d!2001634 (= c!1163541 e!3875627)))

(declare-fun res!2626310 () Bool)

(assert (=> d!2001634 (=> (not res!2626310) (not e!3875627))))

(assert (=> d!2001634 (= res!2626310 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371169))))))))

(assert (=> d!2001634 (= (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 lt!2371169))) (h!71526 s!2326)) e!3875625)))

(declare-fun b!6384802 () Bool)

(assert (=> b!6384802 (= e!3875626 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001634 res!2626310) b!6384801))

(assert (= (and d!2001634 c!1163541) b!6384803))

(assert (= (and d!2001634 (not c!1163541)) b!6384804))

(assert (= (and b!6384804 c!1163542) b!6384800))

(assert (= (and b!6384804 (not c!1163542)) b!6384802))

(assert (= (or b!6384803 b!6384800) bm!545701))

(declare-fun m!7184466 () Bool)

(assert (=> b!6384801 m!7184466))

(declare-fun m!7184468 () Bool)

(assert (=> bm!545701 m!7184468))

(declare-fun m!7184470 () Bool)

(assert (=> b!6384803 m!7184470))

(assert (=> b!6384375 d!2001634))

(declare-fun d!2001638 () Bool)

(assert (=> d!2001638 (= (isEmpty!37214 (tail!12179 (_1!36583 lt!2371152))) ((_ is Nil!65078) (tail!12179 (_1!36583 lt!2371152))))))

(assert (=> b!6384154 d!2001638))

(assert (=> b!6384154 d!2001520))

(declare-fun b!6384809 () Bool)

(declare-fun e!3875630 () List!65202)

(assert (=> b!6384809 (= e!3875630 (_2!36583 (get!22535 lt!2371304)))))

(declare-fun b!6384810 () Bool)

(assert (=> b!6384810 (= e!3875630 (Cons!65078 (h!71526 (_1!36583 (get!22535 lt!2371304))) (++!14369 (t!378806 (_1!36583 (get!22535 lt!2371304))) (_2!36583 (get!22535 lt!2371304)))))))

(declare-fun b!6384811 () Bool)

(declare-fun res!2626314 () Bool)

(declare-fun e!3875631 () Bool)

(assert (=> b!6384811 (=> (not res!2626314) (not e!3875631))))

(declare-fun lt!2371332 () List!65202)

(assert (=> b!6384811 (= res!2626314 (= (size!40360 lt!2371332) (+ (size!40360 (_1!36583 (get!22535 lt!2371304))) (size!40360 (_2!36583 (get!22535 lt!2371304))))))))

(declare-fun d!2001640 () Bool)

(assert (=> d!2001640 e!3875631))

(declare-fun res!2626313 () Bool)

(assert (=> d!2001640 (=> (not res!2626313) (not e!3875631))))

(assert (=> d!2001640 (= res!2626313 (= (content!12317 lt!2371332) ((_ map or) (content!12317 (_1!36583 (get!22535 lt!2371304))) (content!12317 (_2!36583 (get!22535 lt!2371304))))))))

(assert (=> d!2001640 (= lt!2371332 e!3875630)))

(declare-fun c!1163544 () Bool)

(assert (=> d!2001640 (= c!1163544 ((_ is Nil!65078) (_1!36583 (get!22535 lt!2371304))))))

(assert (=> d!2001640 (= (++!14369 (_1!36583 (get!22535 lt!2371304)) (_2!36583 (get!22535 lt!2371304))) lt!2371332)))

(declare-fun b!6384812 () Bool)

(assert (=> b!6384812 (= e!3875631 (or (not (= (_2!36583 (get!22535 lt!2371304)) Nil!65078)) (= lt!2371332 (_1!36583 (get!22535 lt!2371304)))))))

(assert (= (and d!2001640 c!1163544) b!6384809))

(assert (= (and d!2001640 (not c!1163544)) b!6384810))

(assert (= (and d!2001640 res!2626313) b!6384811))

(assert (= (and b!6384811 res!2626314) b!6384812))

(declare-fun m!7184478 () Bool)

(assert (=> b!6384810 m!7184478))

(declare-fun m!7184480 () Bool)

(assert (=> b!6384811 m!7184480))

(declare-fun m!7184484 () Bool)

(assert (=> b!6384811 m!7184484))

(declare-fun m!7184486 () Bool)

(assert (=> b!6384811 m!7184486))

(declare-fun m!7184490 () Bool)

(assert (=> d!2001640 m!7184490))

(declare-fun m!7184492 () Bool)

(assert (=> d!2001640 m!7184492))

(declare-fun m!7184496 () Bool)

(assert (=> d!2001640 m!7184496))

(assert (=> b!6384427 d!2001640))

(declare-fun d!2001642 () Bool)

(assert (=> d!2001642 (= (get!22535 lt!2371304) (v!52360 lt!2371304))))

(assert (=> b!6384427 d!2001642))

(declare-fun d!2001646 () Bool)

(assert (=> d!2001646 (= (nullable!6294 (h!71527 (exprs!6185 lt!2371181))) (nullableFct!2240 (h!71527 (exprs!6185 lt!2371181))))))

(declare-fun bs!1597814 () Bool)

(assert (= bs!1597814 d!2001646))

(declare-fun m!7184500 () Bool)

(assert (=> bs!1597814 m!7184500))

(assert (=> b!6384378 d!2001646))

(assert (=> d!2001400 d!2001546))

(declare-fun b!6384817 () Bool)

(declare-fun e!3875637 () Bool)

(declare-fun e!3875635 () Bool)

(assert (=> b!6384817 (= e!3875637 e!3875635)))

(declare-fun res!2626322 () Bool)

(assert (=> b!6384817 (=> res!2626322 e!3875635)))

(declare-fun call!545707 () Bool)

(assert (=> b!6384817 (= res!2626322 call!545707)))

(declare-fun b!6384818 () Bool)

(declare-fun res!2626321 () Bool)

(declare-fun e!3875639 () Bool)

(assert (=> b!6384818 (=> res!2626321 e!3875639)))

(assert (=> b!6384818 (= res!2626321 (not ((_ is ElementMatch!16301) lt!2371171)))))

(declare-fun e!3875640 () Bool)

(assert (=> b!6384818 (= e!3875640 e!3875639)))

(declare-fun d!2001648 () Bool)

(declare-fun e!3875638 () Bool)

(assert (=> d!2001648 e!3875638))

(declare-fun c!1163546 () Bool)

(assert (=> d!2001648 (= c!1163546 ((_ is EmptyExpr!16301) lt!2371171))))

(declare-fun lt!2371334 () Bool)

(declare-fun e!3875636 () Bool)

(assert (=> d!2001648 (= lt!2371334 e!3875636)))

(declare-fun c!1163547 () Bool)

(assert (=> d!2001648 (= c!1163547 (isEmpty!37214 Nil!65078))))

(assert (=> d!2001648 (validRegex!8037 lt!2371171)))

(assert (=> d!2001648 (= (matchR!8484 lt!2371171 Nil!65078) lt!2371334)))

(declare-fun b!6384819 () Bool)

(assert (=> b!6384819 (= e!3875636 (matchR!8484 (derivativeStep!5005 lt!2371171 (head!13094 Nil!65078)) (tail!12179 Nil!65078)))))

(declare-fun b!6384820 () Bool)

(assert (=> b!6384820 (= e!3875638 e!3875640)))

(declare-fun c!1163548 () Bool)

(assert (=> b!6384820 (= c!1163548 ((_ is EmptyLang!16301) lt!2371171))))

(declare-fun b!6384821 () Bool)

(assert (=> b!6384821 (= e!3875638 (= lt!2371334 call!545707))))

(declare-fun b!6384822 () Bool)

(assert (=> b!6384822 (= e!3875639 e!3875637)))

(declare-fun res!2626323 () Bool)

(assert (=> b!6384822 (=> (not res!2626323) (not e!3875637))))

(assert (=> b!6384822 (= res!2626323 (not lt!2371334))))

(declare-fun b!6384823 () Bool)

(declare-fun res!2626324 () Bool)

(assert (=> b!6384823 (=> res!2626324 e!3875639)))

(declare-fun e!3875634 () Bool)

(assert (=> b!6384823 (= res!2626324 e!3875634)))

(declare-fun res!2626317 () Bool)

(assert (=> b!6384823 (=> (not res!2626317) (not e!3875634))))

(assert (=> b!6384823 (= res!2626317 lt!2371334)))

(declare-fun b!6384824 () Bool)

(declare-fun res!2626318 () Bool)

(assert (=> b!6384824 (=> (not res!2626318) (not e!3875634))))

(assert (=> b!6384824 (= res!2626318 (isEmpty!37214 (tail!12179 Nil!65078)))))

(declare-fun bm!545702 () Bool)

(assert (=> bm!545702 (= call!545707 (isEmpty!37214 Nil!65078))))

(declare-fun b!6384825 () Bool)

(declare-fun res!2626319 () Bool)

(assert (=> b!6384825 (=> (not res!2626319) (not e!3875634))))

(assert (=> b!6384825 (= res!2626319 (not call!545707))))

(declare-fun b!6384826 () Bool)

(assert (=> b!6384826 (= e!3875636 (nullable!6294 lt!2371171))))

(declare-fun b!6384827 () Bool)

(assert (=> b!6384827 (= e!3875640 (not lt!2371334))))

(declare-fun b!6384828 () Bool)

(declare-fun res!2626320 () Bool)

(assert (=> b!6384828 (=> res!2626320 e!3875635)))

(assert (=> b!6384828 (= res!2626320 (not (isEmpty!37214 (tail!12179 Nil!65078))))))

(declare-fun b!6384829 () Bool)

(assert (=> b!6384829 (= e!3875634 (= (head!13094 Nil!65078) (c!1163182 lt!2371171)))))

(declare-fun b!6384830 () Bool)

(assert (=> b!6384830 (= e!3875635 (not (= (head!13094 Nil!65078) (c!1163182 lt!2371171))))))

(assert (= (and d!2001648 c!1163547) b!6384826))

(assert (= (and d!2001648 (not c!1163547)) b!6384819))

(assert (= (and d!2001648 c!1163546) b!6384821))

(assert (= (and d!2001648 (not c!1163546)) b!6384820))

(assert (= (and b!6384820 c!1163548) b!6384827))

(assert (= (and b!6384820 (not c!1163548)) b!6384818))

(assert (= (and b!6384818 (not res!2626321)) b!6384823))

(assert (= (and b!6384823 res!2626317) b!6384825))

(assert (= (and b!6384825 res!2626319) b!6384824))

(assert (= (and b!6384824 res!2626318) b!6384829))

(assert (= (and b!6384823 (not res!2626324)) b!6384822))

(assert (= (and b!6384822 res!2626323) b!6384817))

(assert (= (and b!6384817 (not res!2626322)) b!6384828))

(assert (= (and b!6384828 (not res!2626320)) b!6384830))

(assert (= (or b!6384821 b!6384817 b!6384825) bm!545702))

(declare-fun m!7184516 () Bool)

(assert (=> b!6384819 m!7184516))

(assert (=> b!6384819 m!7184516))

(declare-fun m!7184518 () Bool)

(assert (=> b!6384819 m!7184518))

(declare-fun m!7184520 () Bool)

(assert (=> b!6384819 m!7184520))

(assert (=> b!6384819 m!7184518))

(assert (=> b!6384819 m!7184520))

(declare-fun m!7184522 () Bool)

(assert (=> b!6384819 m!7184522))

(declare-fun m!7184524 () Bool)

(assert (=> bm!545702 m!7184524))

(assert (=> b!6384824 m!7184520))

(assert (=> b!6384824 m!7184520))

(declare-fun m!7184526 () Bool)

(assert (=> b!6384824 m!7184526))

(assert (=> b!6384826 m!7183900))

(assert (=> b!6384829 m!7184516))

(assert (=> d!2001648 m!7184524))

(assert (=> d!2001648 m!7183902))

(assert (=> b!6384828 m!7184520))

(assert (=> b!6384828 m!7184520))

(assert (=> b!6384828 m!7184526))

(assert (=> b!6384830 m!7184516))

(assert (=> d!2001400 d!2001648))

(assert (=> d!2001400 d!2001590))

(declare-fun b!6384831 () Bool)

(declare-fun e!3875646 () (InoxSet Context!11370))

(assert (=> b!6384831 (= e!3875646 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6384832 () Bool)

(declare-fun call!545710 () (InoxSet Context!11370))

(assert (=> b!6384832 (= e!3875646 call!545710)))

(declare-fun b!6384833 () Bool)

(declare-fun e!3875643 () (InoxSet Context!11370))

(declare-fun e!3875641 () (InoxSet Context!11370))

(assert (=> b!6384833 (= e!3875643 e!3875641)))

(declare-fun c!1163553 () Bool)

(assert (=> b!6384833 (= c!1163553 ((_ is Union!16301) (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))))

(declare-fun b!6384834 () Bool)

(declare-fun e!3875644 () (InoxSet Context!11370))

(declare-fun call!545709 () (InoxSet Context!11370))

(declare-fun call!545711 () (InoxSet Context!11370))

(assert (=> b!6384834 (= e!3875644 ((_ map or) call!545709 call!545711))))

(declare-fun b!6384835 () Bool)

(declare-fun call!545713 () (InoxSet Context!11370))

(assert (=> b!6384835 (= e!3875641 ((_ map or) call!545713 call!545709))))

(declare-fun bm!545703 () Bool)

(assert (=> bm!545703 (= call!545711 call!545713)))

(declare-fun bm!545704 () Bool)

(declare-fun call!545712 () List!65203)

(declare-fun c!1163549 () Bool)

(declare-fun c!1163552 () Bool)

(assert (=> bm!545704 (= call!545712 ($colon$colon!2161 (exprs!6185 (ite (or c!1163420 c!1163416) lt!2371183 (Context!11371 call!545620))) (ite (or c!1163549 c!1163552) (regTwo!33114 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))) (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343))))))))))))

(declare-fun b!6384836 () Bool)

(declare-fun e!3875642 () (InoxSet Context!11370))

(assert (=> b!6384836 (= e!3875642 call!545710)))

(declare-fun c!1163550 () Bool)

(declare-fun d!2001652 () Bool)

(assert (=> d!2001652 (= c!1163550 (and ((_ is ElementMatch!16301) (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))) (= (c!1163182 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))) (h!71526 s!2326))))))

(assert (=> d!2001652 (= (derivationStepZipperDown!1549 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343))))))) (ite (or c!1163420 c!1163416) lt!2371183 (Context!11371 call!545620)) (h!71526 s!2326)) e!3875643)))

(declare-fun bm!545705 () Bool)

(assert (=> bm!545705 (= call!545710 call!545711)))

(declare-fun bm!545706 () Bool)

(assert (=> bm!545706 (= call!545709 (derivationStepZipperDown!1549 (ite c!1163553 (regTwo!33115 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))) (regOne!33114 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343))))))))) (ite c!1163553 (ite (or c!1163420 c!1163416) lt!2371183 (Context!11371 call!545620)) (Context!11371 call!545712)) (h!71526 s!2326)))))

(declare-fun b!6384837 () Bool)

(declare-fun e!3875645 () Bool)

(assert (=> b!6384837 (= c!1163549 e!3875645)))

(declare-fun res!2626325 () Bool)

(assert (=> b!6384837 (=> (not res!2626325) (not e!3875645))))

(assert (=> b!6384837 (= res!2626325 ((_ is Concat!25146) (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))))

(assert (=> b!6384837 (= e!3875641 e!3875644)))

(declare-fun call!545708 () List!65203)

(declare-fun bm!545707 () Bool)

(assert (=> bm!545707 (= call!545713 (derivationStepZipperDown!1549 (ite c!1163553 (regOne!33115 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))) (ite c!1163549 (regTwo!33114 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))) (ite c!1163552 (regOne!33114 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))) (reg!16630 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343))))))))))) (ite (or c!1163553 c!1163549) (ite (or c!1163420 c!1163416) lt!2371183 (Context!11371 call!545620)) (Context!11371 call!545708)) (h!71526 s!2326)))))

(declare-fun b!6384838 () Bool)

(assert (=> b!6384838 (= e!3875643 (store ((as const (Array Context!11370 Bool)) false) (ite (or c!1163420 c!1163416) lt!2371183 (Context!11371 call!545620)) true))))

(declare-fun bm!545708 () Bool)

(assert (=> bm!545708 (= call!545708 call!545712)))

(declare-fun b!6384839 () Bool)

(assert (=> b!6384839 (= e!3875645 (nullable!6294 (regOne!33114 (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343))))))))))))

(declare-fun b!6384840 () Bool)

(assert (=> b!6384840 (= e!3875644 e!3875642)))

(assert (=> b!6384840 (= c!1163552 ((_ is Concat!25146) (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))))

(declare-fun b!6384841 () Bool)

(declare-fun c!1163551 () Bool)

(assert (=> b!6384841 (= c!1163551 ((_ is Star!16301) (ite c!1163420 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163416 (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (ite c!1163419 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (reg!16630 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))))

(assert (=> b!6384841 (= e!3875642 e!3875646)))

(assert (= (and d!2001652 c!1163550) b!6384838))

(assert (= (and d!2001652 (not c!1163550)) b!6384833))

(assert (= (and b!6384833 c!1163553) b!6384835))

(assert (= (and b!6384833 (not c!1163553)) b!6384837))

(assert (= (and b!6384837 res!2626325) b!6384839))

(assert (= (and b!6384837 c!1163549) b!6384834))

(assert (= (and b!6384837 (not c!1163549)) b!6384840))

(assert (= (and b!6384840 c!1163552) b!6384836))

(assert (= (and b!6384840 (not c!1163552)) b!6384841))

(assert (= (and b!6384841 c!1163551) b!6384832))

(assert (= (and b!6384841 (not c!1163551)) b!6384831))

(assert (= (or b!6384836 b!6384832) bm!545708))

(assert (= (or b!6384836 b!6384832) bm!545705))

(assert (= (or b!6384834 bm!545708) bm!545704))

(assert (= (or b!6384834 bm!545705) bm!545703))

(assert (= (or b!6384835 b!6384834) bm!545706))

(assert (= (or b!6384835 bm!545703) bm!545707))

(declare-fun m!7184528 () Bool)

(assert (=> bm!545706 m!7184528))

(declare-fun m!7184530 () Bool)

(assert (=> b!6384838 m!7184530))

(declare-fun m!7184532 () Bool)

(assert (=> bm!545707 m!7184532))

(declare-fun m!7184534 () Bool)

(assert (=> b!6384839 m!7184534))

(declare-fun m!7184536 () Bool)

(assert (=> bm!545704 m!7184536))

(assert (=> bm!545619 d!2001652))

(declare-fun d!2001654 () Bool)

(assert (=> d!2001654 true))

(assert (=> d!2001654 true))

(declare-fun res!2626328 () Bool)

(assert (=> d!2001654 (= (choose!47506 lambda!352239) res!2626328)))

(assert (=> d!2001390 d!2001654))

(declare-fun b!6384842 () Bool)

(declare-fun e!3875650 () Bool)

(declare-fun e!3875648 () Bool)

(assert (=> b!6384842 (= e!3875650 e!3875648)))

(declare-fun res!2626334 () Bool)

(assert (=> b!6384842 (=> res!2626334 e!3875648)))

(declare-fun call!545714 () Bool)

(assert (=> b!6384842 (= res!2626334 call!545714)))

(declare-fun b!6384843 () Bool)

(declare-fun res!2626333 () Bool)

(declare-fun e!3875652 () Bool)

(assert (=> b!6384843 (=> res!2626333 e!3875652)))

(assert (=> b!6384843 (= res!2626333 (not ((_ is ElementMatch!16301) (regTwo!33114 r!7292))))))

(declare-fun e!3875653 () Bool)

(assert (=> b!6384843 (= e!3875653 e!3875652)))

(declare-fun d!2001656 () Bool)

(declare-fun e!3875651 () Bool)

(assert (=> d!2001656 e!3875651))

(declare-fun c!1163554 () Bool)

(assert (=> d!2001656 (= c!1163554 ((_ is EmptyExpr!16301) (regTwo!33114 r!7292)))))

(declare-fun lt!2371335 () Bool)

(declare-fun e!3875649 () Bool)

(assert (=> d!2001656 (= lt!2371335 e!3875649)))

(declare-fun c!1163555 () Bool)

(assert (=> d!2001656 (= c!1163555 (isEmpty!37214 s!2326))))

(assert (=> d!2001656 (validRegex!8037 (regTwo!33114 r!7292))))

(assert (=> d!2001656 (= (matchR!8484 (regTwo!33114 r!7292) s!2326) lt!2371335)))

(declare-fun b!6384844 () Bool)

(assert (=> b!6384844 (= e!3875649 (matchR!8484 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 s!2326)) (tail!12179 s!2326)))))

(declare-fun b!6384845 () Bool)

(assert (=> b!6384845 (= e!3875651 e!3875653)))

(declare-fun c!1163556 () Bool)

(assert (=> b!6384845 (= c!1163556 ((_ is EmptyLang!16301) (regTwo!33114 r!7292)))))

(declare-fun b!6384846 () Bool)

(assert (=> b!6384846 (= e!3875651 (= lt!2371335 call!545714))))

(declare-fun b!6384847 () Bool)

(assert (=> b!6384847 (= e!3875652 e!3875650)))

(declare-fun res!2626335 () Bool)

(assert (=> b!6384847 (=> (not res!2626335) (not e!3875650))))

(assert (=> b!6384847 (= res!2626335 (not lt!2371335))))

(declare-fun b!6384848 () Bool)

(declare-fun res!2626336 () Bool)

(assert (=> b!6384848 (=> res!2626336 e!3875652)))

(declare-fun e!3875647 () Bool)

(assert (=> b!6384848 (= res!2626336 e!3875647)))

(declare-fun res!2626329 () Bool)

(assert (=> b!6384848 (=> (not res!2626329) (not e!3875647))))

(assert (=> b!6384848 (= res!2626329 lt!2371335)))

(declare-fun b!6384849 () Bool)

(declare-fun res!2626330 () Bool)

(assert (=> b!6384849 (=> (not res!2626330) (not e!3875647))))

(assert (=> b!6384849 (= res!2626330 (isEmpty!37214 (tail!12179 s!2326)))))

(declare-fun bm!545709 () Bool)

(assert (=> bm!545709 (= call!545714 (isEmpty!37214 s!2326))))

(declare-fun b!6384850 () Bool)

(declare-fun res!2626331 () Bool)

(assert (=> b!6384850 (=> (not res!2626331) (not e!3875647))))

(assert (=> b!6384850 (= res!2626331 (not call!545714))))

(declare-fun b!6384851 () Bool)

(assert (=> b!6384851 (= e!3875649 (nullable!6294 (regTwo!33114 r!7292)))))

(declare-fun b!6384852 () Bool)

(assert (=> b!6384852 (= e!3875653 (not lt!2371335))))

(declare-fun b!6384853 () Bool)

(declare-fun res!2626332 () Bool)

(assert (=> b!6384853 (=> res!2626332 e!3875648)))

(assert (=> b!6384853 (= res!2626332 (not (isEmpty!37214 (tail!12179 s!2326))))))

(declare-fun b!6384854 () Bool)

(assert (=> b!6384854 (= e!3875647 (= (head!13094 s!2326) (c!1163182 (regTwo!33114 r!7292))))))

(declare-fun b!6384855 () Bool)

(assert (=> b!6384855 (= e!3875648 (not (= (head!13094 s!2326) (c!1163182 (regTwo!33114 r!7292)))))))

(assert (= (and d!2001656 c!1163555) b!6384851))

(assert (= (and d!2001656 (not c!1163555)) b!6384844))

(assert (= (and d!2001656 c!1163554) b!6384846))

(assert (= (and d!2001656 (not c!1163554)) b!6384845))

(assert (= (and b!6384845 c!1163556) b!6384852))

(assert (= (and b!6384845 (not c!1163556)) b!6384843))

(assert (= (and b!6384843 (not res!2626333)) b!6384848))

(assert (= (and b!6384848 res!2626329) b!6384850))

(assert (= (and b!6384850 res!2626331) b!6384849))

(assert (= (and b!6384849 res!2626330) b!6384854))

(assert (= (and b!6384848 (not res!2626336)) b!6384847))

(assert (= (and b!6384847 res!2626335) b!6384842))

(assert (= (and b!6384842 (not res!2626334)) b!6384853))

(assert (= (and b!6384853 (not res!2626332)) b!6384855))

(assert (= (or b!6384846 b!6384842 b!6384850) bm!545709))

(assert (=> b!6384844 m!7183954))

(assert (=> b!6384844 m!7183954))

(declare-fun m!7184538 () Bool)

(assert (=> b!6384844 m!7184538))

(assert (=> b!6384844 m!7183958))

(assert (=> b!6384844 m!7184538))

(assert (=> b!6384844 m!7183958))

(declare-fun m!7184540 () Bool)

(assert (=> b!6384844 m!7184540))

(assert (=> bm!545709 m!7183946))

(assert (=> b!6384849 m!7183958))

(assert (=> b!6384849 m!7183958))

(assert (=> b!6384849 m!7183962))

(assert (=> b!6384851 m!7183880))

(assert (=> b!6384854 m!7183954))

(assert (=> d!2001656 m!7183946))

(assert (=> d!2001656 m!7183882))

(assert (=> b!6384853 m!7183958))

(assert (=> b!6384853 m!7183958))

(assert (=> b!6384853 m!7183962))

(assert (=> b!6384855 m!7183954))

(assert (=> b!6384425 d!2001656))

(declare-fun bs!1597815 () Bool)

(declare-fun d!2001658 () Bool)

(assert (= bs!1597815 (and d!2001658 d!2001366)))

(declare-fun lambda!352334 () Int)

(assert (=> bs!1597815 (= lambda!352334 lambda!352284)))

(declare-fun bs!1597816 () Bool)

(assert (= bs!1597816 (and d!2001658 d!2001624)))

(assert (=> bs!1597816 (= lambda!352334 lambda!352332)))

(declare-fun bs!1597817 () Bool)

(assert (= bs!1597817 (and d!2001658 d!2001364)))

(assert (=> bs!1597817 (= lambda!352334 lambda!352283)))

(declare-fun bs!1597818 () Bool)

(assert (= bs!1597818 (and d!2001658 d!2001376)))

(assert (=> bs!1597818 (= lambda!352334 lambda!352290)))

(declare-fun bs!1597819 () Bool)

(assert (= bs!1597819 (and d!2001658 d!2001626)))

(assert (=> bs!1597819 (= lambda!352334 lambda!352333)))

(declare-fun bs!1597820 () Bool)

(assert (= bs!1597820 (and d!2001658 d!2001302)))

(assert (=> bs!1597820 (= lambda!352334 lambda!352276)))

(declare-fun bs!1597821 () Bool)

(assert (= bs!1597821 (and d!2001658 d!2001374)))

(assert (=> bs!1597821 (= lambda!352334 lambda!352287)))

(declare-fun bs!1597822 () Bool)

(assert (= bs!1597822 (and d!2001658 d!2001362)))

(assert (=> bs!1597822 (= lambda!352334 lambda!352282)))

(declare-fun b!6384856 () Bool)

(declare-fun e!3875654 () Regex!16301)

(assert (=> b!6384856 (= e!3875654 EmptyExpr!16301)))

(declare-fun b!6384857 () Bool)

(declare-fun e!3875655 () Regex!16301)

(assert (=> b!6384857 (= e!3875655 (h!71527 (t!378807 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6384858 () Bool)

(declare-fun e!3875659 () Bool)

(declare-fun lt!2371338 () Regex!16301)

(assert (=> b!6384858 (= e!3875659 (= lt!2371338 (head!13093 (t!378807 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun b!6384859 () Bool)

(assert (=> b!6384859 (= e!3875654 (Concat!25146 (h!71527 (t!378807 (exprs!6185 (h!71528 zl!343)))) (generalisedConcat!1898 (t!378807 (t!378807 (exprs!6185 (h!71528 zl!343)))))))))

(declare-fun b!6384860 () Bool)

(assert (=> b!6384860 (= e!3875655 e!3875654)))

(declare-fun c!1163557 () Bool)

(assert (=> b!6384860 (= c!1163557 ((_ is Cons!65079) (t!378807 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6384861 () Bool)

(declare-fun e!3875656 () Bool)

(assert (=> b!6384861 (= e!3875656 (isEmptyExpr!1701 lt!2371338))))

(declare-fun b!6384862 () Bool)

(assert (=> b!6384862 (= e!3875659 (isConcat!1224 lt!2371338))))

(declare-fun b!6384864 () Bool)

(declare-fun e!3875657 () Bool)

(assert (=> b!6384864 (= e!3875657 (isEmpty!37212 (t!378807 (t!378807 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun b!6384865 () Bool)

(assert (=> b!6384865 (= e!3875656 e!3875659)))

(declare-fun c!1163559 () Bool)

(assert (=> b!6384865 (= c!1163559 (isEmpty!37212 (tail!12178 (t!378807 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun e!3875658 () Bool)

(assert (=> d!2001658 e!3875658))

(declare-fun res!2626338 () Bool)

(assert (=> d!2001658 (=> (not res!2626338) (not e!3875658))))

(assert (=> d!2001658 (= res!2626338 (validRegex!8037 lt!2371338))))

(assert (=> d!2001658 (= lt!2371338 e!3875655)))

(declare-fun c!1163558 () Bool)

(assert (=> d!2001658 (= c!1163558 e!3875657)))

(declare-fun res!2626337 () Bool)

(assert (=> d!2001658 (=> (not res!2626337) (not e!3875657))))

(assert (=> d!2001658 (= res!2626337 ((_ is Cons!65079) (t!378807 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> d!2001658 (forall!15479 (t!378807 (exprs!6185 (h!71528 zl!343))) lambda!352334)))

(assert (=> d!2001658 (= (generalisedConcat!1898 (t!378807 (exprs!6185 (h!71528 zl!343)))) lt!2371338)))

(declare-fun b!6384863 () Bool)

(assert (=> b!6384863 (= e!3875658 e!3875656)))

(declare-fun c!1163560 () Bool)

(assert (=> b!6384863 (= c!1163560 (isEmpty!37212 (t!378807 (exprs!6185 (h!71528 zl!343)))))))

(assert (= (and d!2001658 res!2626337) b!6384864))

(assert (= (and d!2001658 c!1163558) b!6384857))

(assert (= (and d!2001658 (not c!1163558)) b!6384860))

(assert (= (and b!6384860 c!1163557) b!6384859))

(assert (= (and b!6384860 (not c!1163557)) b!6384856))

(assert (= (and d!2001658 res!2626338) b!6384863))

(assert (= (and b!6384863 c!1163560) b!6384861))

(assert (= (and b!6384863 (not c!1163560)) b!6384865))

(assert (= (and b!6384865 c!1163559) b!6384858))

(assert (= (and b!6384865 (not c!1163559)) b!6384862))

(declare-fun m!7184546 () Bool)

(assert (=> b!6384858 m!7184546))

(declare-fun m!7184548 () Bool)

(assert (=> b!6384861 m!7184548))

(declare-fun m!7184550 () Bool)

(assert (=> b!6384859 m!7184550))

(assert (=> b!6384863 m!7183338))

(declare-fun m!7184552 () Bool)

(assert (=> b!6384865 m!7184552))

(assert (=> b!6384865 m!7184552))

(declare-fun m!7184554 () Bool)

(assert (=> b!6384865 m!7184554))

(declare-fun m!7184556 () Bool)

(assert (=> b!6384862 m!7184556))

(declare-fun m!7184558 () Bool)

(assert (=> d!2001658 m!7184558))

(declare-fun m!7184560 () Bool)

(assert (=> d!2001658 m!7184560))

(declare-fun m!7184562 () Bool)

(assert (=> b!6384864 m!7184562))

(assert (=> b!6383939 d!2001658))

(declare-fun bs!1597824 () Bool)

(declare-fun d!2001662 () Bool)

(assert (= bs!1597824 (and d!2001662 d!2001548)))

(declare-fun lambda!352335 () Int)

(assert (=> bs!1597824 (= lambda!352335 lambda!352322)))

(declare-fun bs!1597825 () Bool)

(assert (= bs!1597825 (and d!2001662 d!2001550)))

(assert (=> bs!1597825 (= lambda!352335 lambda!352324)))

(assert (=> d!2001662 (= (nullableZipper!2066 lt!2371175) (exists!2584 lt!2371175 lambda!352335))))

(declare-fun bs!1597826 () Bool)

(assert (= bs!1597826 d!2001662))

(declare-fun m!7184564 () Bool)

(assert (=> bs!1597826 m!7184564))

(assert (=> b!6384382 d!2001662))

(declare-fun b!6384875 () Bool)

(declare-fun e!3875669 () Bool)

(declare-fun e!3875666 () Bool)

(assert (=> b!6384875 (= e!3875669 e!3875666)))

(declare-fun c!1163564 () Bool)

(assert (=> b!6384875 (= c!1163564 ((_ is Union!16301) (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))))))

(declare-fun b!6384876 () Bool)

(declare-fun e!3875667 () Bool)

(declare-fun call!545715 () Bool)

(assert (=> b!6384876 (= e!3875667 call!545715)))

(declare-fun b!6384877 () Bool)

(declare-fun e!3875671 () Bool)

(assert (=> b!6384877 (= e!3875669 e!3875671)))

(declare-fun res!2626348 () Bool)

(assert (=> b!6384877 (= res!2626348 (not (nullable!6294 (reg!16630 (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))))))))

(assert (=> b!6384877 (=> (not res!2626348) (not e!3875671))))

(declare-fun bm!545710 () Bool)

(declare-fun call!545717 () Bool)

(assert (=> bm!545710 (= call!545717 (validRegex!8037 (ite c!1163564 (regOne!33115 (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))) (regOne!33114 (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))))))))

(declare-fun d!2001664 () Bool)

(declare-fun res!2626344 () Bool)

(declare-fun e!3875670 () Bool)

(assert (=> d!2001664 (=> res!2626344 e!3875670)))

(assert (=> d!2001664 (= res!2626344 ((_ is ElementMatch!16301) (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))))))

(assert (=> d!2001664 (= (validRegex!8037 (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))) e!3875670)))

(declare-fun b!6384878 () Bool)

(assert (=> b!6384878 (= e!3875670 e!3875669)))

(declare-fun c!1163563 () Bool)

(assert (=> b!6384878 (= c!1163563 ((_ is Star!16301) (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))))))

(declare-fun b!6384879 () Bool)

(declare-fun e!3875665 () Bool)

(declare-fun e!3875668 () Bool)

(assert (=> b!6384879 (= e!3875665 e!3875668)))

(declare-fun res!2626345 () Bool)

(assert (=> b!6384879 (=> (not res!2626345) (not e!3875668))))

(assert (=> b!6384879 (= res!2626345 call!545717)))

(declare-fun bm!545711 () Bool)

(declare-fun call!545716 () Bool)

(assert (=> bm!545711 (= call!545715 call!545716)))

(declare-fun b!6384880 () Bool)

(assert (=> b!6384880 (= e!3875671 call!545716)))

(declare-fun bm!545712 () Bool)

(assert (=> bm!545712 (= call!545716 (validRegex!8037 (ite c!1163563 (reg!16630 (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))) (ite c!1163564 (regTwo!33115 (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292))) (regTwo!33114 (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292)))))))))

(declare-fun b!6384881 () Bool)

(declare-fun res!2626346 () Bool)

(assert (=> b!6384881 (=> (not res!2626346) (not e!3875667))))

(assert (=> b!6384881 (= res!2626346 call!545717)))

(assert (=> b!6384881 (= e!3875666 e!3875667)))

(declare-fun b!6384882 () Bool)

(declare-fun res!2626347 () Bool)

(assert (=> b!6384882 (=> res!2626347 e!3875665)))

(assert (=> b!6384882 (= res!2626347 (not ((_ is Concat!25146) (ite c!1163369 (regOne!33115 r!7292) (regOne!33114 r!7292)))))))

(assert (=> b!6384882 (= e!3875666 e!3875665)))

(declare-fun b!6384883 () Bool)

(assert (=> b!6384883 (= e!3875668 call!545715)))

(assert (= (and d!2001664 (not res!2626344)) b!6384878))

(assert (= (and b!6384878 c!1163563) b!6384877))

(assert (= (and b!6384878 (not c!1163563)) b!6384875))

(assert (= (and b!6384877 res!2626348) b!6384880))

(assert (= (and b!6384875 c!1163564) b!6384881))

(assert (= (and b!6384875 (not c!1163564)) b!6384882))

(assert (= (and b!6384881 res!2626346) b!6384876))

(assert (= (and b!6384882 (not res!2626347)) b!6384879))

(assert (= (and b!6384879 res!2626345) b!6384883))

(assert (= (or b!6384876 b!6384883) bm!545711))

(assert (= (or b!6384881 b!6384879) bm!545710))

(assert (= (or b!6384880 bm!545711) bm!545712))

(declare-fun m!7184566 () Bool)

(assert (=> b!6384877 m!7184566))

(declare-fun m!7184568 () Bool)

(assert (=> bm!545710 m!7184568))

(declare-fun m!7184570 () Bool)

(assert (=> bm!545712 m!7184570))

(assert (=> bm!545597 d!2001664))

(declare-fun b!6384884 () Bool)

(declare-fun e!3875672 () List!65202)

(assert (=> b!6384884 (= e!3875672 (t!378806 s!2326))))

(declare-fun b!6384885 () Bool)

(assert (=> b!6384885 (= e!3875672 (Cons!65078 (h!71526 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078))) (++!14369 (t!378806 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078))) (t!378806 s!2326))))))

(declare-fun b!6384886 () Bool)

(declare-fun res!2626350 () Bool)

(declare-fun e!3875673 () Bool)

(assert (=> b!6384886 (=> (not res!2626350) (not e!3875673))))

(declare-fun lt!2371343 () List!65202)

(assert (=> b!6384886 (= res!2626350 (= (size!40360 lt!2371343) (+ (size!40360 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078))) (size!40360 (t!378806 s!2326)))))))

(declare-fun d!2001666 () Bool)

(assert (=> d!2001666 e!3875673))

(declare-fun res!2626349 () Bool)

(assert (=> d!2001666 (=> (not res!2626349) (not e!3875673))))

(assert (=> d!2001666 (= res!2626349 (= (content!12317 lt!2371343) ((_ map or) (content!12317 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078))) (content!12317 (t!378806 s!2326)))))))

(assert (=> d!2001666 (= lt!2371343 e!3875672)))

(declare-fun c!1163565 () Bool)

(assert (=> d!2001666 (= c!1163565 ((_ is Nil!65078) (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078))))))

(assert (=> d!2001666 (= (++!14369 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326)) lt!2371343)))

(declare-fun b!6384887 () Bool)

(assert (=> b!6384887 (= e!3875673 (or (not (= (t!378806 s!2326) Nil!65078)) (= lt!2371343 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)))))))

(assert (= (and d!2001666 c!1163565) b!6384884))

(assert (= (and d!2001666 (not c!1163565)) b!6384885))

(assert (= (and d!2001666 res!2626349) b!6384886))

(assert (= (and b!6384886 res!2626350) b!6384887))

(declare-fun m!7184572 () Bool)

(assert (=> b!6384885 m!7184572))

(declare-fun m!7184574 () Bool)

(assert (=> b!6384886 m!7184574))

(assert (=> b!6384886 m!7183994))

(declare-fun m!7184576 () Bool)

(assert (=> b!6384886 m!7184576))

(declare-fun m!7184578 () Bool)

(assert (=> b!6384886 m!7184578))

(declare-fun m!7184580 () Bool)

(assert (=> d!2001666 m!7184580))

(assert (=> d!2001666 m!7183994))

(declare-fun m!7184582 () Bool)

(assert (=> d!2001666 m!7184582))

(declare-fun m!7184584 () Bool)

(assert (=> d!2001666 m!7184584))

(assert (=> b!6384421 d!2001666))

(declare-fun b!6384888 () Bool)

(declare-fun e!3875674 () List!65202)

(assert (=> b!6384888 (= e!3875674 (Cons!65078 (h!71526 s!2326) Nil!65078))))

(declare-fun b!6384889 () Bool)

(assert (=> b!6384889 (= e!3875674 (Cons!65078 (h!71526 Nil!65078) (++!14369 (t!378806 Nil!65078) (Cons!65078 (h!71526 s!2326) Nil!65078))))))

(declare-fun b!6384890 () Bool)

(declare-fun res!2626352 () Bool)

(declare-fun e!3875675 () Bool)

(assert (=> b!6384890 (=> (not res!2626352) (not e!3875675))))

(declare-fun lt!2371344 () List!65202)

(assert (=> b!6384890 (= res!2626352 (= (size!40360 lt!2371344) (+ (size!40360 Nil!65078) (size!40360 (Cons!65078 (h!71526 s!2326) Nil!65078)))))))

(declare-fun d!2001668 () Bool)

(assert (=> d!2001668 e!3875675))

(declare-fun res!2626351 () Bool)

(assert (=> d!2001668 (=> (not res!2626351) (not e!3875675))))

(assert (=> d!2001668 (= res!2626351 (= (content!12317 lt!2371344) ((_ map or) (content!12317 Nil!65078) (content!12317 (Cons!65078 (h!71526 s!2326) Nil!65078)))))))

(assert (=> d!2001668 (= lt!2371344 e!3875674)))

(declare-fun c!1163566 () Bool)

(assert (=> d!2001668 (= c!1163566 ((_ is Nil!65078) Nil!65078))))

(assert (=> d!2001668 (= (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) lt!2371344)))

(declare-fun b!6384891 () Bool)

(assert (=> b!6384891 (= e!3875675 (or (not (= (Cons!65078 (h!71526 s!2326) Nil!65078) Nil!65078)) (= lt!2371344 Nil!65078)))))

(assert (= (and d!2001668 c!1163566) b!6384888))

(assert (= (and d!2001668 (not c!1163566)) b!6384889))

(assert (= (and d!2001668 res!2626351) b!6384890))

(assert (= (and b!6384890 res!2626352) b!6384891))

(declare-fun m!7184596 () Bool)

(assert (=> b!6384889 m!7184596))

(declare-fun m!7184598 () Bool)

(assert (=> b!6384890 m!7184598))

(declare-fun m!7184600 () Bool)

(assert (=> b!6384890 m!7184600))

(declare-fun m!7184602 () Bool)

(assert (=> b!6384890 m!7184602))

(declare-fun m!7184606 () Bool)

(assert (=> d!2001668 m!7184606))

(declare-fun m!7184608 () Bool)

(assert (=> d!2001668 m!7184608))

(declare-fun m!7184610 () Bool)

(assert (=> d!2001668 m!7184610))

(assert (=> b!6384421 d!2001668))

(declare-fun d!2001670 () Bool)

(assert (=> d!2001670 (= (++!14369 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326)) s!2326)))

(declare-fun lt!2371347 () Unit!158535)

(declare-fun choose!47512 (List!65202 C!32872 List!65202 List!65202) Unit!158535)

(assert (=> d!2001670 (= lt!2371347 (choose!47512 Nil!65078 (h!71526 s!2326) (t!378806 s!2326) s!2326))))

(assert (=> d!2001670 (= (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) (t!378806 s!2326))) s!2326)))

(assert (=> d!2001670 (= (lemmaMoveElementToOtherListKeepsConcatEq!2464 Nil!65078 (h!71526 s!2326) (t!378806 s!2326) s!2326) lt!2371347)))

(declare-fun bs!1597827 () Bool)

(assert (= bs!1597827 d!2001670))

(assert (=> bs!1597827 m!7183994))

(assert (=> bs!1597827 m!7183994))

(assert (=> bs!1597827 m!7183996))

(declare-fun m!7184634 () Bool)

(assert (=> bs!1597827 m!7184634))

(declare-fun m!7184636 () Bool)

(assert (=> bs!1597827 m!7184636))

(assert (=> b!6384421 d!2001670))

(declare-fun b!6384902 () Bool)

(declare-fun e!3875684 () Option!16192)

(assert (=> b!6384902 (= e!3875684 None!16191)))

(declare-fun b!6384903 () Bool)

(declare-fun e!3875686 () Option!16192)

(assert (=> b!6384903 (= e!3875686 e!3875684)))

(declare-fun c!1163572 () Bool)

(assert (=> b!6384903 (= c!1163572 ((_ is Nil!65078) (t!378806 s!2326)))))

(declare-fun b!6384904 () Bool)

(declare-fun lt!2371349 () Unit!158535)

(declare-fun lt!2371348 () Unit!158535)

(assert (=> b!6384904 (= lt!2371349 lt!2371348)))

(assert (=> b!6384904 (= (++!14369 (++!14369 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (Cons!65078 (h!71526 (t!378806 s!2326)) Nil!65078)) (t!378806 (t!378806 s!2326))) s!2326)))

(assert (=> b!6384904 (= lt!2371348 (lemmaMoveElementToOtherListKeepsConcatEq!2464 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (h!71526 (t!378806 s!2326)) (t!378806 (t!378806 s!2326)) s!2326))))

(assert (=> b!6384904 (= e!3875684 (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) (++!14369 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (Cons!65078 (h!71526 (t!378806 s!2326)) Nil!65078)) (t!378806 (t!378806 s!2326)) s!2326))))

(declare-fun b!6384905 () Bool)

(declare-fun e!3875683 () Bool)

(declare-fun lt!2371350 () Option!16192)

(assert (=> b!6384905 (= e!3875683 (not (isDefined!12895 lt!2371350)))))

(declare-fun d!2001680 () Bool)

(assert (=> d!2001680 e!3875683))

(declare-fun res!2626358 () Bool)

(assert (=> d!2001680 (=> res!2626358 e!3875683)))

(declare-fun e!3875682 () Bool)

(assert (=> d!2001680 (= res!2626358 e!3875682)))

(declare-fun res!2626357 () Bool)

(assert (=> d!2001680 (=> (not res!2626357) (not e!3875682))))

(assert (=> d!2001680 (= res!2626357 (isDefined!12895 lt!2371350))))

(assert (=> d!2001680 (= lt!2371350 e!3875686)))

(declare-fun c!1163571 () Bool)

(declare-fun e!3875685 () Bool)

(assert (=> d!2001680 (= c!1163571 e!3875685)))

(declare-fun res!2626359 () Bool)

(assert (=> d!2001680 (=> (not res!2626359) (not e!3875685))))

(assert (=> d!2001680 (= res!2626359 (matchR!8484 (regOne!33114 r!7292) (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078))))))

(assert (=> d!2001680 (validRegex!8037 (regOne!33114 r!7292))))

(assert (=> d!2001680 (= (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326) s!2326) lt!2371350)))

(declare-fun b!6384906 () Bool)

(assert (=> b!6384906 (= e!3875686 (Some!16191 (tuple2!66561 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326))))))

(declare-fun b!6384907 () Bool)

(declare-fun res!2626356 () Bool)

(assert (=> b!6384907 (=> (not res!2626356) (not e!3875682))))

(assert (=> b!6384907 (= res!2626356 (matchR!8484 (regTwo!33114 r!7292) (_2!36583 (get!22535 lt!2371350))))))

(declare-fun b!6384908 () Bool)

(assert (=> b!6384908 (= e!3875685 (matchR!8484 (regTwo!33114 r!7292) (t!378806 s!2326)))))

(declare-fun b!6384909 () Bool)

(declare-fun res!2626355 () Bool)

(assert (=> b!6384909 (=> (not res!2626355) (not e!3875682))))

(assert (=> b!6384909 (= res!2626355 (matchR!8484 (regOne!33114 r!7292) (_1!36583 (get!22535 lt!2371350))))))

(declare-fun b!6384910 () Bool)

(assert (=> b!6384910 (= e!3875682 (= (++!14369 (_1!36583 (get!22535 lt!2371350)) (_2!36583 (get!22535 lt!2371350))) s!2326))))

(assert (= (and d!2001680 res!2626359) b!6384908))

(assert (= (and d!2001680 c!1163571) b!6384906))

(assert (= (and d!2001680 (not c!1163571)) b!6384903))

(assert (= (and b!6384903 c!1163572) b!6384902))

(assert (= (and b!6384903 (not c!1163572)) b!6384904))

(assert (= (and d!2001680 res!2626357) b!6384909))

(assert (= (and b!6384909 res!2626355) b!6384907))

(assert (= (and b!6384907 res!2626356) b!6384910))

(assert (= (and d!2001680 (not res!2626358)) b!6384905))

(declare-fun m!7184646 () Bool)

(assert (=> d!2001680 m!7184646))

(assert (=> d!2001680 m!7183994))

(declare-fun m!7184648 () Bool)

(assert (=> d!2001680 m!7184648))

(assert (=> d!2001680 m!7184144))

(declare-fun m!7184652 () Bool)

(assert (=> b!6384907 m!7184652))

(declare-fun m!7184658 () Bool)

(assert (=> b!6384907 m!7184658))

(declare-fun m!7184660 () Bool)

(assert (=> b!6384908 m!7184660))

(assert (=> b!6384909 m!7184652))

(declare-fun m!7184662 () Bool)

(assert (=> b!6384909 m!7184662))

(assert (=> b!6384905 m!7184646))

(assert (=> b!6384904 m!7183994))

(declare-fun m!7184664 () Bool)

(assert (=> b!6384904 m!7184664))

(assert (=> b!6384904 m!7184664))

(declare-fun m!7184666 () Bool)

(assert (=> b!6384904 m!7184666))

(assert (=> b!6384904 m!7183994))

(declare-fun m!7184668 () Bool)

(assert (=> b!6384904 m!7184668))

(assert (=> b!6384904 m!7184664))

(declare-fun m!7184670 () Bool)

(assert (=> b!6384904 m!7184670))

(assert (=> b!6384910 m!7184652))

(declare-fun m!7184672 () Bool)

(assert (=> b!6384910 m!7184672))

(assert (=> b!6384421 d!2001680))

(declare-fun d!2001690 () Bool)

(assert (=> d!2001690 true))

(declare-fun setRes!43589 () Bool)

(assert (=> d!2001690 setRes!43589))

(declare-fun condSetEmpty!43589 () Bool)

(declare-fun res!2626375 () (InoxSet Context!11370))

(assert (=> d!2001690 (= condSetEmpty!43589 (= res!2626375 ((as const (Array Context!11370 Bool)) false)))))

(assert (=> d!2001690 (= (choose!47510 lt!2371175 lambda!352237) res!2626375)))

(declare-fun setIsEmpty!43589 () Bool)

(assert (=> setIsEmpty!43589 setRes!43589))

(declare-fun tp!1776263 () Bool)

(declare-fun e!3875703 () Bool)

(declare-fun setNonEmpty!43589 () Bool)

(declare-fun setElem!43589 () Context!11370)

(assert (=> setNonEmpty!43589 (= setRes!43589 (and tp!1776263 (inv!83999 setElem!43589) e!3875703))))

(declare-fun setRest!43589 () (InoxSet Context!11370))

(assert (=> setNonEmpty!43589 (= res!2626375 ((_ map or) (store ((as const (Array Context!11370 Bool)) false) setElem!43589 true) setRest!43589))))

(declare-fun b!6384936 () Bool)

(declare-fun tp!1776264 () Bool)

(assert (=> b!6384936 (= e!3875703 tp!1776264)))

(assert (= (and d!2001690 condSetEmpty!43589) setIsEmpty!43589))

(assert (= (and d!2001690 (not condSetEmpty!43589)) setNonEmpty!43589))

(assert (= setNonEmpty!43589 b!6384936))

(declare-fun m!7184682 () Bool)

(assert (=> setNonEmpty!43589 m!7184682))

(assert (=> d!2001432 d!2001690))

(declare-fun d!2001696 () Bool)

(assert (=> d!2001696 (= (Exists!3371 (ite c!1163378 lambda!352295 lambda!352296)) (choose!47506 (ite c!1163378 lambda!352295 lambda!352296)))))

(declare-fun bs!1597830 () Bool)

(assert (= bs!1597830 d!2001696))

(declare-fun m!7184684 () Bool)

(assert (=> bs!1597830 m!7184684))

(assert (=> bm!545605 d!2001696))

(declare-fun bs!1597831 () Bool)

(declare-fun d!2001698 () Bool)

(assert (= bs!1597831 (and d!2001698 d!2001366)))

(declare-fun lambda!352338 () Int)

(assert (=> bs!1597831 (= lambda!352338 lambda!352284)))

(declare-fun bs!1597832 () Bool)

(assert (= bs!1597832 (and d!2001698 d!2001658)))

(assert (=> bs!1597832 (= lambda!352338 lambda!352334)))

(declare-fun bs!1597833 () Bool)

(assert (= bs!1597833 (and d!2001698 d!2001624)))

(assert (=> bs!1597833 (= lambda!352338 lambda!352332)))

(declare-fun bs!1597834 () Bool)

(assert (= bs!1597834 (and d!2001698 d!2001364)))

(assert (=> bs!1597834 (= lambda!352338 lambda!352283)))

(declare-fun bs!1597835 () Bool)

(assert (= bs!1597835 (and d!2001698 d!2001376)))

(assert (=> bs!1597835 (= lambda!352338 lambda!352290)))

(declare-fun bs!1597836 () Bool)

(assert (= bs!1597836 (and d!2001698 d!2001626)))

(assert (=> bs!1597836 (= lambda!352338 lambda!352333)))

(declare-fun bs!1597837 () Bool)

(assert (= bs!1597837 (and d!2001698 d!2001302)))

(assert (=> bs!1597837 (= lambda!352338 lambda!352276)))

(declare-fun bs!1597839 () Bool)

(assert (= bs!1597839 (and d!2001698 d!2001374)))

(assert (=> bs!1597839 (= lambda!352338 lambda!352287)))

(declare-fun bs!1597840 () Bool)

(assert (= bs!1597840 (and d!2001698 d!2001362)))

(assert (=> bs!1597840 (= lambda!352338 lambda!352282)))

(assert (=> d!2001698 (= (inv!83999 setElem!43586) (forall!15479 (exprs!6185 setElem!43586) lambda!352338))))

(declare-fun bs!1597841 () Bool)

(assert (= bs!1597841 d!2001698))

(declare-fun m!7184688 () Bool)

(assert (=> bs!1597841 m!7184688))

(assert (=> setNonEmpty!43586 d!2001698))

(assert (=> d!2001384 d!2001532))

(assert (=> d!2001384 d!2001378))

(declare-fun d!2001702 () Bool)

(declare-fun c!1163585 () Bool)

(assert (=> d!2001702 (= c!1163585 (isEmpty!37214 (tail!12179 (t!378806 s!2326))))))

(declare-fun e!3875710 () Bool)

(assert (=> d!2001702 (= (matchZipper!2313 (derivationStepZipper!2267 lt!2371150 (head!13094 (t!378806 s!2326))) (tail!12179 (t!378806 s!2326))) e!3875710)))

(declare-fun b!6384948 () Bool)

(assert (=> b!6384948 (= e!3875710 (nullableZipper!2066 (derivationStepZipper!2267 lt!2371150 (head!13094 (t!378806 s!2326)))))))

(declare-fun b!6384949 () Bool)

(assert (=> b!6384949 (= e!3875710 (matchZipper!2313 (derivationStepZipper!2267 (derivationStepZipper!2267 lt!2371150 (head!13094 (t!378806 s!2326))) (head!13094 (tail!12179 (t!378806 s!2326)))) (tail!12179 (tail!12179 (t!378806 s!2326)))))))

(assert (= (and d!2001702 c!1163585) b!6384948))

(assert (= (and d!2001702 (not c!1163585)) b!6384949))

(assert (=> d!2001702 m!7183850))

(declare-fun m!7184690 () Bool)

(assert (=> d!2001702 m!7184690))

(assert (=> b!6384948 m!7183848))

(declare-fun m!7184692 () Bool)

(assert (=> b!6384948 m!7184692))

(assert (=> b!6384949 m!7183850))

(declare-fun m!7184694 () Bool)

(assert (=> b!6384949 m!7184694))

(assert (=> b!6384949 m!7183848))

(assert (=> b!6384949 m!7184694))

(declare-fun m!7184696 () Bool)

(assert (=> b!6384949 m!7184696))

(assert (=> b!6384949 m!7183850))

(declare-fun m!7184698 () Bool)

(assert (=> b!6384949 m!7184698))

(assert (=> b!6384949 m!7184696))

(assert (=> b!6384949 m!7184698))

(declare-fun m!7184700 () Bool)

(assert (=> b!6384949 m!7184700))

(assert (=> b!6384067 d!2001702))

(declare-fun bs!1597842 () Bool)

(declare-fun d!2001704 () Bool)

(assert (= bs!1597842 (and d!2001704 b!6383534)))

(declare-fun lambda!352340 () Int)

(assert (=> bs!1597842 (= (= (head!13094 (t!378806 s!2326)) (h!71526 s!2326)) (= lambda!352340 lambda!352237))))

(declare-fun bs!1597843 () Bool)

(assert (= bs!1597843 (and d!2001704 d!2001438)))

(assert (=> bs!1597843 (= (= (head!13094 (t!378806 s!2326)) (h!71526 s!2326)) (= lambda!352340 lambda!352310))))

(declare-fun bs!1597844 () Bool)

(assert (= bs!1597844 (and d!2001704 d!2001528)))

(assert (=> bs!1597844 (= (= (head!13094 (t!378806 s!2326)) (head!13094 s!2326)) (= lambda!352340 lambda!352316))))

(assert (=> d!2001704 true))

(assert (=> d!2001704 (= (derivationStepZipper!2267 lt!2371150 (head!13094 (t!378806 s!2326))) (flatMap!1806 lt!2371150 lambda!352340))))

(declare-fun bs!1597845 () Bool)

(assert (= bs!1597845 d!2001704))

(declare-fun m!7184712 () Bool)

(assert (=> bs!1597845 m!7184712))

(assert (=> b!6384067 d!2001704))

(declare-fun d!2001708 () Bool)

(assert (=> d!2001708 (= (head!13094 (t!378806 s!2326)) (h!71526 (t!378806 s!2326)))))

(assert (=> b!6384067 d!2001708))

(declare-fun d!2001710 () Bool)

(assert (=> d!2001710 (= (tail!12179 (t!378806 s!2326)) (t!378806 (t!378806 s!2326)))))

(assert (=> b!6384067 d!2001710))

(assert (=> b!6384316 d!2001656))

(declare-fun b!6384952 () Bool)

(declare-fun e!3875716 () Bool)

(declare-fun e!3875713 () Bool)

(assert (=> b!6384952 (= e!3875716 e!3875713)))

(declare-fun c!1163588 () Bool)

(assert (=> b!6384952 (= c!1163588 ((_ is Union!16301) lt!2371298))))

(declare-fun b!6384953 () Bool)

(declare-fun e!3875714 () Bool)

(declare-fun call!545730 () Bool)

(assert (=> b!6384953 (= e!3875714 call!545730)))

(declare-fun b!6384954 () Bool)

(declare-fun e!3875718 () Bool)

(assert (=> b!6384954 (= e!3875716 e!3875718)))

(declare-fun res!2626381 () Bool)

(assert (=> b!6384954 (= res!2626381 (not (nullable!6294 (reg!16630 lt!2371298))))))

(assert (=> b!6384954 (=> (not res!2626381) (not e!3875718))))

(declare-fun bm!545725 () Bool)

(declare-fun call!545732 () Bool)

(assert (=> bm!545725 (= call!545732 (validRegex!8037 (ite c!1163588 (regOne!33115 lt!2371298) (regOne!33114 lt!2371298))))))

(declare-fun d!2001712 () Bool)

(declare-fun res!2626377 () Bool)

(declare-fun e!3875717 () Bool)

(assert (=> d!2001712 (=> res!2626377 e!3875717)))

(assert (=> d!2001712 (= res!2626377 ((_ is ElementMatch!16301) lt!2371298))))

(assert (=> d!2001712 (= (validRegex!8037 lt!2371298) e!3875717)))

(declare-fun b!6384955 () Bool)

(assert (=> b!6384955 (= e!3875717 e!3875716)))

(declare-fun c!1163587 () Bool)

(assert (=> b!6384955 (= c!1163587 ((_ is Star!16301) lt!2371298))))

(declare-fun b!6384956 () Bool)

(declare-fun e!3875712 () Bool)

(declare-fun e!3875715 () Bool)

(assert (=> b!6384956 (= e!3875712 e!3875715)))

(declare-fun res!2626378 () Bool)

(assert (=> b!6384956 (=> (not res!2626378) (not e!3875715))))

(assert (=> b!6384956 (= res!2626378 call!545732)))

(declare-fun bm!545726 () Bool)

(declare-fun call!545731 () Bool)

(assert (=> bm!545726 (= call!545730 call!545731)))

(declare-fun b!6384957 () Bool)

(assert (=> b!6384957 (= e!3875718 call!545731)))

(declare-fun bm!545727 () Bool)

(assert (=> bm!545727 (= call!545731 (validRegex!8037 (ite c!1163587 (reg!16630 lt!2371298) (ite c!1163588 (regTwo!33115 lt!2371298) (regTwo!33114 lt!2371298)))))))

(declare-fun b!6384958 () Bool)

(declare-fun res!2626379 () Bool)

(assert (=> b!6384958 (=> (not res!2626379) (not e!3875714))))

(assert (=> b!6384958 (= res!2626379 call!545732)))

(assert (=> b!6384958 (= e!3875713 e!3875714)))

(declare-fun b!6384959 () Bool)

(declare-fun res!2626380 () Bool)

(assert (=> b!6384959 (=> res!2626380 e!3875712)))

(assert (=> b!6384959 (= res!2626380 (not ((_ is Concat!25146) lt!2371298)))))

(assert (=> b!6384959 (= e!3875713 e!3875712)))

(declare-fun b!6384960 () Bool)

(assert (=> b!6384960 (= e!3875715 call!545730)))

(assert (= (and d!2001712 (not res!2626377)) b!6384955))

(assert (= (and b!6384955 c!1163587) b!6384954))

(assert (= (and b!6384955 (not c!1163587)) b!6384952))

(assert (= (and b!6384954 res!2626381) b!6384957))

(assert (= (and b!6384952 c!1163588) b!6384958))

(assert (= (and b!6384952 (not c!1163588)) b!6384959))

(assert (= (and b!6384958 res!2626379) b!6384953))

(assert (= (and b!6384959 (not res!2626380)) b!6384956))

(assert (= (and b!6384956 res!2626378) b!6384960))

(assert (= (or b!6384953 b!6384960) bm!545726))

(assert (= (or b!6384958 b!6384956) bm!545725))

(assert (= (or b!6384957 bm!545726) bm!545727))

(declare-fun m!7184726 () Bool)

(assert (=> b!6384954 m!7184726))

(declare-fun m!7184728 () Bool)

(assert (=> bm!545725 m!7184728))

(declare-fun m!7184730 () Bool)

(assert (=> bm!545727 m!7184730))

(assert (=> d!2001416 d!2001712))

(declare-fun bs!1597849 () Bool)

(declare-fun d!2001716 () Bool)

(assert (= bs!1597849 (and d!2001716 d!2001366)))

(declare-fun lambda!352342 () Int)

(assert (=> bs!1597849 (= lambda!352342 lambda!352284)))

(declare-fun bs!1597850 () Bool)

(assert (= bs!1597850 (and d!2001716 d!2001698)))

(assert (=> bs!1597850 (= lambda!352342 lambda!352338)))

(declare-fun bs!1597851 () Bool)

(assert (= bs!1597851 (and d!2001716 d!2001658)))

(assert (=> bs!1597851 (= lambda!352342 lambda!352334)))

(declare-fun bs!1597852 () Bool)

(assert (= bs!1597852 (and d!2001716 d!2001624)))

(assert (=> bs!1597852 (= lambda!352342 lambda!352332)))

(declare-fun bs!1597853 () Bool)

(assert (= bs!1597853 (and d!2001716 d!2001364)))

(assert (=> bs!1597853 (= lambda!352342 lambda!352283)))

(declare-fun bs!1597854 () Bool)

(assert (= bs!1597854 (and d!2001716 d!2001376)))

(assert (=> bs!1597854 (= lambda!352342 lambda!352290)))

(declare-fun bs!1597855 () Bool)

(assert (= bs!1597855 (and d!2001716 d!2001626)))

(assert (=> bs!1597855 (= lambda!352342 lambda!352333)))

(declare-fun bs!1597856 () Bool)

(assert (= bs!1597856 (and d!2001716 d!2001302)))

(assert (=> bs!1597856 (= lambda!352342 lambda!352276)))

(declare-fun bs!1597857 () Bool)

(assert (= bs!1597857 (and d!2001716 d!2001374)))

(assert (=> bs!1597857 (= lambda!352342 lambda!352287)))

(declare-fun bs!1597858 () Bool)

(assert (= bs!1597858 (and d!2001716 d!2001362)))

(assert (=> bs!1597858 (= lambda!352342 lambda!352282)))

(declare-fun b!6384961 () Bool)

(declare-fun e!3875719 () Bool)

(declare-fun lt!2371352 () Regex!16301)

(assert (=> b!6384961 (= e!3875719 (isEmptyLang!1709 lt!2371352))))

(declare-fun b!6384962 () Bool)

(declare-fun e!3875721 () Bool)

(assert (=> b!6384962 (= e!3875721 e!3875719)))

(declare-fun c!1163590 () Bool)

(assert (=> b!6384962 (= c!1163590 (isEmpty!37212 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080))))))

(declare-fun b!6384963 () Bool)

(declare-fun e!3875724 () Bool)

(assert (=> b!6384963 (= e!3875724 (= lt!2371352 (head!13093 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080)))))))

(declare-fun b!6384965 () Bool)

(assert (=> b!6384965 (= e!3875724 (isUnion!1139 lt!2371352))))

(declare-fun b!6384966 () Bool)

(declare-fun e!3875723 () Regex!16301)

(assert (=> b!6384966 (= e!3875723 (Union!16301 (h!71527 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080))) (generalisedUnion!2145 (t!378807 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080))))))))

(declare-fun b!6384967 () Bool)

(declare-fun e!3875720 () Regex!16301)

(assert (=> b!6384967 (= e!3875720 (h!71527 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080))))))

(declare-fun b!6384968 () Bool)

(declare-fun e!3875722 () Bool)

(assert (=> b!6384968 (= e!3875722 (isEmpty!37212 (t!378807 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080)))))))

(declare-fun b!6384964 () Bool)

(assert (=> b!6384964 (= e!3875719 e!3875724)))

(declare-fun c!1163589 () Bool)

(assert (=> b!6384964 (= c!1163589 (isEmpty!37212 (tail!12178 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080)))))))

(assert (=> d!2001716 e!3875721))

(declare-fun res!2626383 () Bool)

(assert (=> d!2001716 (=> (not res!2626383) (not e!3875721))))

(assert (=> d!2001716 (= res!2626383 (validRegex!8037 lt!2371352))))

(assert (=> d!2001716 (= lt!2371352 e!3875720)))

(declare-fun c!1163592 () Bool)

(assert (=> d!2001716 (= c!1163592 e!3875722)))

(declare-fun res!2626382 () Bool)

(assert (=> d!2001716 (=> (not res!2626382) (not e!3875722))))

(assert (=> d!2001716 (= res!2626382 ((_ is Cons!65079) (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080))))))

(assert (=> d!2001716 (forall!15479 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080)) lambda!352342)))

(assert (=> d!2001716 (= (generalisedUnion!2145 (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080))) lt!2371352)))

(declare-fun b!6384969 () Bool)

(assert (=> b!6384969 (= e!3875720 e!3875723)))

(declare-fun c!1163591 () Bool)

(assert (=> b!6384969 (= c!1163591 ((_ is Cons!65079) (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080))))))

(declare-fun b!6384970 () Bool)

(assert (=> b!6384970 (= e!3875723 EmptyLang!16301)))

(assert (= (and d!2001716 res!2626382) b!6384968))

(assert (= (and d!2001716 c!1163592) b!6384967))

(assert (= (and d!2001716 (not c!1163592)) b!6384969))

(assert (= (and b!6384969 c!1163591) b!6384966))

(assert (= (and b!6384969 (not c!1163591)) b!6384970))

(assert (= (and d!2001716 res!2626383) b!6384962))

(assert (= (and b!6384962 c!1163590) b!6384961))

(assert (= (and b!6384962 (not c!1163590)) b!6384964))

(assert (= (and b!6384964 c!1163589) b!6384963))

(assert (= (and b!6384964 (not c!1163589)) b!6384965))

(declare-fun m!7184738 () Bool)

(assert (=> b!6384966 m!7184738))

(declare-fun m!7184740 () Bool)

(assert (=> b!6384961 m!7184740))

(assert (=> b!6384964 m!7184052))

(declare-fun m!7184742 () Bool)

(assert (=> b!6384964 m!7184742))

(assert (=> b!6384964 m!7184742))

(declare-fun m!7184744 () Bool)

(assert (=> b!6384964 m!7184744))

(declare-fun m!7184746 () Bool)

(assert (=> b!6384965 m!7184746))

(assert (=> b!6384963 m!7184052))

(declare-fun m!7184748 () Bool)

(assert (=> b!6384963 m!7184748))

(assert (=> b!6384962 m!7184052))

(declare-fun m!7184750 () Bool)

(assert (=> b!6384962 m!7184750))

(declare-fun m!7184752 () Bool)

(assert (=> d!2001716 m!7184752))

(assert (=> d!2001716 m!7184052))

(declare-fun m!7184754 () Bool)

(assert (=> d!2001716 m!7184754))

(declare-fun m!7184756 () Bool)

(assert (=> b!6384968 m!7184756))

(assert (=> d!2001416 d!2001716))

(declare-fun bs!1597862 () Bool)

(declare-fun d!2001726 () Bool)

(assert (= bs!1597862 (and d!2001726 d!2001366)))

(declare-fun lambda!352344 () Int)

(assert (=> bs!1597862 (= lambda!352344 lambda!352284)))

(declare-fun bs!1597863 () Bool)

(assert (= bs!1597863 (and d!2001726 d!2001698)))

(assert (=> bs!1597863 (= lambda!352344 lambda!352338)))

(declare-fun bs!1597864 () Bool)

(assert (= bs!1597864 (and d!2001726 d!2001658)))

(assert (=> bs!1597864 (= lambda!352344 lambda!352334)))

(declare-fun bs!1597866 () Bool)

(assert (= bs!1597866 (and d!2001726 d!2001624)))

(assert (=> bs!1597866 (= lambda!352344 lambda!352332)))

(declare-fun bs!1597867 () Bool)

(assert (= bs!1597867 (and d!2001726 d!2001716)))

(assert (=> bs!1597867 (= lambda!352344 lambda!352342)))

(declare-fun bs!1597869 () Bool)

(assert (= bs!1597869 (and d!2001726 d!2001364)))

(assert (=> bs!1597869 (= lambda!352344 lambda!352283)))

(declare-fun bs!1597870 () Bool)

(assert (= bs!1597870 (and d!2001726 d!2001376)))

(assert (=> bs!1597870 (= lambda!352344 lambda!352290)))

(declare-fun bs!1597872 () Bool)

(assert (= bs!1597872 (and d!2001726 d!2001626)))

(assert (=> bs!1597872 (= lambda!352344 lambda!352333)))

(declare-fun bs!1597873 () Bool)

(assert (= bs!1597873 (and d!2001726 d!2001302)))

(assert (=> bs!1597873 (= lambda!352344 lambda!352276)))

(declare-fun bs!1597874 () Bool)

(assert (= bs!1597874 (and d!2001726 d!2001374)))

(assert (=> bs!1597874 (= lambda!352344 lambda!352287)))

(declare-fun bs!1597876 () Bool)

(assert (= bs!1597876 (and d!2001726 d!2001362)))

(assert (=> bs!1597876 (= lambda!352344 lambda!352282)))

(declare-fun lt!2371353 () List!65203)

(assert (=> d!2001726 (forall!15479 lt!2371353 lambda!352344)))

(declare-fun e!3875734 () List!65203)

(assert (=> d!2001726 (= lt!2371353 e!3875734)))

(declare-fun c!1163597 () Bool)

(assert (=> d!2001726 (= c!1163597 ((_ is Cons!65080) (Cons!65080 lt!2371181 Nil!65080)))))

(assert (=> d!2001726 (= (unfocusZipperList!1722 (Cons!65080 lt!2371181 Nil!65080)) lt!2371353)))

(declare-fun b!6384984 () Bool)

(assert (=> b!6384984 (= e!3875734 (Cons!65079 (generalisedConcat!1898 (exprs!6185 (h!71528 (Cons!65080 lt!2371181 Nil!65080)))) (unfocusZipperList!1722 (t!378808 (Cons!65080 lt!2371181 Nil!65080)))))))

(declare-fun b!6384985 () Bool)

(assert (=> b!6384985 (= e!3875734 Nil!65079)))

(assert (= (and d!2001726 c!1163597) b!6384984))

(assert (= (and d!2001726 (not c!1163597)) b!6384985))

(declare-fun m!7184758 () Bool)

(assert (=> d!2001726 m!7184758))

(declare-fun m!7184760 () Bool)

(assert (=> b!6384984 m!7184760))

(declare-fun m!7184762 () Bool)

(assert (=> b!6384984 m!7184762))

(assert (=> d!2001416 d!2001726))

(declare-fun d!2001728 () Bool)

(assert (=> d!2001728 (= (head!13093 (unfocusZipperList!1722 zl!343)) (h!71527 (unfocusZipperList!1722 zl!343)))))

(assert (=> b!6384186 d!2001728))

(assert (=> d!2001442 d!2001444))

(declare-fun d!2001730 () Bool)

(assert (=> d!2001730 (= (flatMap!1806 z!1189 lambda!352237) (dynLambda!25819 lambda!352237 (h!71528 zl!343)))))

(assert (=> d!2001730 true))

(declare-fun _$13!3572 () Unit!158535)

(assert (=> d!2001730 (= (choose!47509 z!1189 (h!71528 zl!343) lambda!352237) _$13!3572)))

(declare-fun b_lambda!242591 () Bool)

(assert (=> (not b_lambda!242591) (not d!2001730)))

(declare-fun bs!1597882 () Bool)

(assert (= bs!1597882 d!2001730))

(assert (=> bs!1597882 m!7183388))

(assert (=> bs!1597882 m!7184112))

(assert (=> d!2001442 d!2001730))

(declare-fun d!2001732 () Bool)

(assert (=> d!2001732 (= (Exists!3371 (ite c!1163397 lambda!352306 lambda!352307)) (choose!47506 (ite c!1163397 lambda!352306 lambda!352307)))))

(declare-fun bs!1597883 () Bool)

(assert (= bs!1597883 d!2001732))

(declare-fun m!7184764 () Bool)

(assert (=> bs!1597883 m!7184764))

(assert (=> bm!545609 d!2001732))

(declare-fun d!2001734 () Bool)

(assert (=> d!2001734 (= (isEmpty!37216 lt!2371180) (not ((_ is Some!16191) lt!2371180)))))

(assert (=> d!2001394 d!2001734))

(declare-fun b!6384986 () Bool)

(declare-fun e!3875736 () (InoxSet Context!11370))

(declare-fun call!545735 () (InoxSet Context!11370))

(assert (=> b!6384986 (= e!3875736 call!545735)))

(declare-fun b!6384987 () Bool)

(declare-fun e!3875737 () Bool)

(assert (=> b!6384987 (= e!3875737 (nullable!6294 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371174)))))))))

(declare-fun bm!545730 () Bool)

(assert (=> bm!545730 (= call!545735 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371174))))) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371174)))))) (h!71526 s!2326)))))

(declare-fun e!3875735 () (InoxSet Context!11370))

(declare-fun b!6384989 () Bool)

(assert (=> b!6384989 (= e!3875735 ((_ map or) call!545735 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371174)))))) (h!71526 s!2326))))))

(declare-fun b!6384990 () Bool)

(assert (=> b!6384990 (= e!3875735 e!3875736)))

(declare-fun c!1163599 () Bool)

(assert (=> b!6384990 (= c!1163599 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371174))))))))

(declare-fun d!2001736 () Bool)

(declare-fun c!1163598 () Bool)

(assert (=> d!2001736 (= c!1163598 e!3875737)))

(declare-fun res!2626389 () Bool)

(assert (=> d!2001736 (=> (not res!2626389) (not e!3875737))))

(assert (=> d!2001736 (= res!2626389 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371174))))))))

(assert (=> d!2001736 (= (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 lt!2371174))) (h!71526 s!2326)) e!3875735)))

(declare-fun b!6384988 () Bool)

(assert (=> b!6384988 (= e!3875736 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001736 res!2626389) b!6384987))

(assert (= (and d!2001736 c!1163598) b!6384989))

(assert (= (and d!2001736 (not c!1163598)) b!6384990))

(assert (= (and b!6384990 c!1163599) b!6384986))

(assert (= (and b!6384990 (not c!1163599)) b!6384988))

(assert (= (or b!6384989 b!6384986) bm!545730))

(declare-fun m!7184766 () Bool)

(assert (=> b!6384987 m!7184766))

(declare-fun m!7184768 () Bool)

(assert (=> bm!545730 m!7184768))

(declare-fun m!7184770 () Bool)

(assert (=> b!6384989 m!7184770))

(assert (=> b!6384389 d!2001736))

(assert (=> b!6384342 d!2001492))

(assert (=> b!6384342 d!2001494))

(assert (=> bs!1597680 d!2001418))

(assert (=> b!6384160 d!2001518))

(declare-fun b!6384991 () Bool)

(declare-fun e!3875742 () Bool)

(declare-fun e!3875739 () Bool)

(assert (=> b!6384991 (= e!3875742 e!3875739)))

(declare-fun c!1163601 () Bool)

(assert (=> b!6384991 (= c!1163601 ((_ is Union!16301) (regOne!33114 r!7292)))))

(declare-fun b!6384992 () Bool)

(declare-fun e!3875740 () Bool)

(declare-fun call!545736 () Bool)

(assert (=> b!6384992 (= e!3875740 call!545736)))

(declare-fun b!6384993 () Bool)

(declare-fun e!3875744 () Bool)

(assert (=> b!6384993 (= e!3875742 e!3875744)))

(declare-fun res!2626394 () Bool)

(assert (=> b!6384993 (= res!2626394 (not (nullable!6294 (reg!16630 (regOne!33114 r!7292)))))))

(assert (=> b!6384993 (=> (not res!2626394) (not e!3875744))))

(declare-fun bm!545731 () Bool)

(declare-fun call!545738 () Bool)

(assert (=> bm!545731 (= call!545738 (validRegex!8037 (ite c!1163601 (regOne!33115 (regOne!33114 r!7292)) (regOne!33114 (regOne!33114 r!7292)))))))

(declare-fun d!2001738 () Bool)

(declare-fun res!2626390 () Bool)

(declare-fun e!3875743 () Bool)

(assert (=> d!2001738 (=> res!2626390 e!3875743)))

(assert (=> d!2001738 (= res!2626390 ((_ is ElementMatch!16301) (regOne!33114 r!7292)))))

(assert (=> d!2001738 (= (validRegex!8037 (regOne!33114 r!7292)) e!3875743)))

(declare-fun b!6384994 () Bool)

(assert (=> b!6384994 (= e!3875743 e!3875742)))

(declare-fun c!1163600 () Bool)

(assert (=> b!6384994 (= c!1163600 ((_ is Star!16301) (regOne!33114 r!7292)))))

(declare-fun b!6384995 () Bool)

(declare-fun e!3875738 () Bool)

(declare-fun e!3875741 () Bool)

(assert (=> b!6384995 (= e!3875738 e!3875741)))

(declare-fun res!2626391 () Bool)

(assert (=> b!6384995 (=> (not res!2626391) (not e!3875741))))

(assert (=> b!6384995 (= res!2626391 call!545738)))

(declare-fun bm!545732 () Bool)

(declare-fun call!545737 () Bool)

(assert (=> bm!545732 (= call!545736 call!545737)))

(declare-fun b!6384996 () Bool)

(assert (=> b!6384996 (= e!3875744 call!545737)))

(declare-fun bm!545733 () Bool)

(assert (=> bm!545733 (= call!545737 (validRegex!8037 (ite c!1163600 (reg!16630 (regOne!33114 r!7292)) (ite c!1163601 (regTwo!33115 (regOne!33114 r!7292)) (regTwo!33114 (regOne!33114 r!7292))))))))

(declare-fun b!6384997 () Bool)

(declare-fun res!2626392 () Bool)

(assert (=> b!6384997 (=> (not res!2626392) (not e!3875740))))

(assert (=> b!6384997 (= res!2626392 call!545738)))

(assert (=> b!6384997 (= e!3875739 e!3875740)))

(declare-fun b!6384998 () Bool)

(declare-fun res!2626393 () Bool)

(assert (=> b!6384998 (=> res!2626393 e!3875738)))

(assert (=> b!6384998 (= res!2626393 (not ((_ is Concat!25146) (regOne!33114 r!7292))))))

(assert (=> b!6384998 (= e!3875739 e!3875738)))

(declare-fun b!6384999 () Bool)

(assert (=> b!6384999 (= e!3875741 call!545736)))

(assert (= (and d!2001738 (not res!2626390)) b!6384994))

(assert (= (and b!6384994 c!1163600) b!6384993))

(assert (= (and b!6384994 (not c!1163600)) b!6384991))

(assert (= (and b!6384993 res!2626394) b!6384996))

(assert (= (and b!6384991 c!1163601) b!6384997))

(assert (= (and b!6384991 (not c!1163601)) b!6384998))

(assert (= (and b!6384997 res!2626392) b!6384992))

(assert (= (and b!6384998 (not res!2626393)) b!6384995))

(assert (= (and b!6384995 res!2626391) b!6384999))

(assert (= (or b!6384992 b!6384999) bm!545732))

(assert (= (or b!6384997 b!6384995) bm!545731))

(assert (= (or b!6384996 bm!545732) bm!545733))

(declare-fun m!7184772 () Bool)

(assert (=> b!6384993 m!7184772))

(declare-fun m!7184774 () Bool)

(assert (=> bm!545731 m!7184774))

(declare-fun m!7184776 () Bool)

(assert (=> bm!545733 m!7184776))

(assert (=> d!2001462 d!2001738))

(assert (=> d!2001462 d!2001466))

(declare-fun bs!1597897 () Bool)

(declare-fun d!2001740 () Bool)

(assert (= bs!1597897 (and d!2001740 d!2001464)))

(declare-fun lambda!352346 () Int)

(assert (=> bs!1597897 (= lambda!352346 lambda!352312)))

(declare-fun bs!1597898 () Bool)

(assert (= bs!1597898 (and d!2001740 d!2001576)))

(assert (=> bs!1597898 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352346 lambda!352330))))

(declare-fun bs!1597899 () Bool)

(assert (= bs!1597899 (and d!2001740 b!6383550)))

(assert (=> bs!1597899 (= lambda!352346 lambda!352235)))

(declare-fun bs!1597900 () Bool)

(assert (= bs!1597900 (and d!2001740 d!2001398)))

(assert (=> bs!1597900 (not (= lambda!352346 lambda!352302))))

(declare-fun bs!1597902 () Bool)

(assert (= bs!1597902 (and d!2001740 b!6384653)))

(assert (=> bs!1597902 (not (= lambda!352346 lambda!352326))))

(declare-fun bs!1597903 () Bool)

(assert (= bs!1597903 (and d!2001740 d!2001462)))

(assert (=> bs!1597903 (= lambda!352346 lambda!352311)))

(declare-fun bs!1597904 () Bool)

(assert (= bs!1597904 (and d!2001740 b!6384352)))

(assert (=> bs!1597904 (not (= lambda!352346 lambda!352306))))

(declare-fun bs!1597905 () Bool)

(assert (= bs!1597905 (and d!2001740 b!6384262)))

(assert (=> bs!1597905 (not (= lambda!352346 lambda!352295))))

(declare-fun bs!1597906 () Bool)

(assert (= bs!1597906 (and d!2001740 b!6384269)))

(assert (=> bs!1597906 (not (= lambda!352346 lambda!352296))))

(declare-fun bs!1597907 () Bool)

(assert (= bs!1597907 (and d!2001740 b!6384359)))

(assert (=> bs!1597907 (not (= lambda!352346 lambda!352307))))

(declare-fun bs!1597908 () Bool)

(assert (= bs!1597908 (and d!2001740 b!6383538)))

(assert (=> bs!1597908 (not (= lambda!352346 lambda!352239))))

(assert (=> bs!1597899 (not (= lambda!352346 lambda!352236))))

(assert (=> bs!1597897 (not (= lambda!352346 lambda!352313))))

(declare-fun bs!1597909 () Bool)

(assert (= bs!1597909 (and d!2001740 b!6384638)))

(assert (=> bs!1597909 (not (= lambda!352346 lambda!352318))))

(declare-fun bs!1597910 () Bool)

(assert (= bs!1597910 (and d!2001740 d!2001404)))

(assert (=> bs!1597910 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352346 lambda!352305))))

(declare-fun bs!1597911 () Bool)

(assert (= bs!1597911 (and d!2001740 b!6384646)))

(assert (=> bs!1597911 (not (= lambda!352346 lambda!352325))))

(declare-fun bs!1597912 () Bool)

(assert (= bs!1597912 (and d!2001740 b!6384631)))

(assert (=> bs!1597912 (not (= lambda!352346 lambda!352317))))

(assert (=> bs!1597908 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352346 lambda!352238))))

(assert (=> bs!1597900 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352346 lambda!352301))))

(assert (=> d!2001740 true))

(assert (=> d!2001740 true))

(assert (=> d!2001740 true))

(assert (=> d!2001740 (= (isDefined!12895 (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326)) (Exists!3371 lambda!352346))))

(assert (=> d!2001740 true))

(declare-fun _$89!2625 () Unit!158535)

(assert (=> d!2001740 (= (choose!47508 (regOne!33114 r!7292) (regTwo!33114 r!7292) s!2326) _$89!2625)))

(declare-fun bs!1597913 () Bool)

(assert (= bs!1597913 d!2001740))

(assert (=> bs!1597913 m!7183416))

(assert (=> bs!1597913 m!7183416))

(assert (=> bs!1597913 m!7183418))

(declare-fun m!7184790 () Bool)

(assert (=> bs!1597913 m!7184790))

(assert (=> d!2001462 d!2001740))

(declare-fun d!2001750 () Bool)

(assert (=> d!2001750 (= (Exists!3371 lambda!352311) (choose!47506 lambda!352311))))

(declare-fun bs!1597914 () Bool)

(assert (= bs!1597914 d!2001750))

(declare-fun m!7184792 () Bool)

(assert (=> bs!1597914 m!7184792))

(assert (=> d!2001462 d!2001750))

(assert (=> d!2001462 d!2001456))

(declare-fun d!2001752 () Bool)

(declare-fun c!1163602 () Bool)

(assert (=> d!2001752 (= c!1163602 (isEmpty!37214 (tail!12179 (t!378806 s!2326))))))

(declare-fun e!3875747 () Bool)

(assert (=> d!2001752 (= (matchZipper!2313 (derivationStepZipper!2267 lt!2371161 (head!13094 (t!378806 s!2326))) (tail!12179 (t!378806 s!2326))) e!3875747)))

(declare-fun b!6385002 () Bool)

(assert (=> b!6385002 (= e!3875747 (nullableZipper!2066 (derivationStepZipper!2267 lt!2371161 (head!13094 (t!378806 s!2326)))))))

(declare-fun b!6385003 () Bool)

(assert (=> b!6385003 (= e!3875747 (matchZipper!2313 (derivationStepZipper!2267 (derivationStepZipper!2267 lt!2371161 (head!13094 (t!378806 s!2326))) (head!13094 (tail!12179 (t!378806 s!2326)))) (tail!12179 (tail!12179 (t!378806 s!2326)))))))

(assert (= (and d!2001752 c!1163602) b!6385002))

(assert (= (and d!2001752 (not c!1163602)) b!6385003))

(assert (=> d!2001752 m!7183850))

(assert (=> d!2001752 m!7184690))

(assert (=> b!6385002 m!7184084))

(declare-fun m!7184794 () Bool)

(assert (=> b!6385002 m!7184794))

(assert (=> b!6385003 m!7183850))

(assert (=> b!6385003 m!7184694))

(assert (=> b!6385003 m!7184084))

(assert (=> b!6385003 m!7184694))

(declare-fun m!7184796 () Bool)

(assert (=> b!6385003 m!7184796))

(assert (=> b!6385003 m!7183850))

(assert (=> b!6385003 m!7184698))

(assert (=> b!6385003 m!7184796))

(assert (=> b!6385003 m!7184698))

(declare-fun m!7184798 () Bool)

(assert (=> b!6385003 m!7184798))

(assert (=> b!6384385 d!2001752))

(declare-fun bs!1597915 () Bool)

(declare-fun d!2001754 () Bool)

(assert (= bs!1597915 (and d!2001754 b!6383534)))

(declare-fun lambda!352347 () Int)

(assert (=> bs!1597915 (= (= (head!13094 (t!378806 s!2326)) (h!71526 s!2326)) (= lambda!352347 lambda!352237))))

(declare-fun bs!1597916 () Bool)

(assert (= bs!1597916 (and d!2001754 d!2001438)))

(assert (=> bs!1597916 (= (= (head!13094 (t!378806 s!2326)) (h!71526 s!2326)) (= lambda!352347 lambda!352310))))

(declare-fun bs!1597917 () Bool)

(assert (= bs!1597917 (and d!2001754 d!2001528)))

(assert (=> bs!1597917 (= (= (head!13094 (t!378806 s!2326)) (head!13094 s!2326)) (= lambda!352347 lambda!352316))))

(declare-fun bs!1597918 () Bool)

(assert (= bs!1597918 (and d!2001754 d!2001704)))

(assert (=> bs!1597918 (= lambda!352347 lambda!352340)))

(assert (=> d!2001754 true))

(assert (=> d!2001754 (= (derivationStepZipper!2267 lt!2371161 (head!13094 (t!378806 s!2326))) (flatMap!1806 lt!2371161 lambda!352347))))

(declare-fun bs!1597919 () Bool)

(assert (= bs!1597919 d!2001754))

(declare-fun m!7184800 () Bool)

(assert (=> bs!1597919 m!7184800))

(assert (=> b!6384385 d!2001754))

(assert (=> b!6384385 d!2001708))

(assert (=> b!6384385 d!2001710))

(assert (=> b!6384312 d!2001666))

(assert (=> b!6384312 d!2001668))

(assert (=> b!6384312 d!2001670))

(declare-fun b!6385006 () Bool)

(declare-fun e!3875752 () Option!16192)

(assert (=> b!6385006 (= e!3875752 None!16191)))

(declare-fun b!6385007 () Bool)

(declare-fun e!3875754 () Option!16192)

(assert (=> b!6385007 (= e!3875754 e!3875752)))

(declare-fun c!1163604 () Bool)

(assert (=> b!6385007 (= c!1163604 ((_ is Nil!65078) (t!378806 s!2326)))))

(declare-fun b!6385008 () Bool)

(declare-fun lt!2371355 () Unit!158535)

(declare-fun lt!2371354 () Unit!158535)

(assert (=> b!6385008 (= lt!2371355 lt!2371354)))

(assert (=> b!6385008 (= (++!14369 (++!14369 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (Cons!65078 (h!71526 (t!378806 s!2326)) Nil!65078)) (t!378806 (t!378806 s!2326))) s!2326)))

(assert (=> b!6385008 (= lt!2371354 (lemmaMoveElementToOtherListKeepsConcatEq!2464 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (h!71526 (t!378806 s!2326)) (t!378806 (t!378806 s!2326)) s!2326))))

(assert (=> b!6385008 (= e!3875752 (findConcatSeparation!2606 lt!2371171 (regTwo!33114 r!7292) (++!14369 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (Cons!65078 (h!71526 (t!378806 s!2326)) Nil!65078)) (t!378806 (t!378806 s!2326)) s!2326))))

(declare-fun b!6385009 () Bool)

(declare-fun e!3875751 () Bool)

(declare-fun lt!2371356 () Option!16192)

(assert (=> b!6385009 (= e!3875751 (not (isDefined!12895 lt!2371356)))))

(declare-fun d!2001756 () Bool)

(assert (=> d!2001756 e!3875751))

(declare-fun res!2626402 () Bool)

(assert (=> d!2001756 (=> res!2626402 e!3875751)))

(declare-fun e!3875750 () Bool)

(assert (=> d!2001756 (= res!2626402 e!3875750)))

(declare-fun res!2626401 () Bool)

(assert (=> d!2001756 (=> (not res!2626401) (not e!3875750))))

(assert (=> d!2001756 (= res!2626401 (isDefined!12895 lt!2371356))))

(assert (=> d!2001756 (= lt!2371356 e!3875754)))

(declare-fun c!1163603 () Bool)

(declare-fun e!3875753 () Bool)

(assert (=> d!2001756 (= c!1163603 e!3875753)))

(declare-fun res!2626403 () Bool)

(assert (=> d!2001756 (=> (not res!2626403) (not e!3875753))))

(assert (=> d!2001756 (= res!2626403 (matchR!8484 lt!2371171 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078))))))

(assert (=> d!2001756 (validRegex!8037 lt!2371171)))

(assert (=> d!2001756 (= (findConcatSeparation!2606 lt!2371171 (regTwo!33114 r!7292) (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326) s!2326) lt!2371356)))

(declare-fun b!6385010 () Bool)

(assert (=> b!6385010 (= e!3875754 (Some!16191 (tuple2!66561 (++!14369 Nil!65078 (Cons!65078 (h!71526 s!2326) Nil!65078)) (t!378806 s!2326))))))

(declare-fun b!6385011 () Bool)

(declare-fun res!2626400 () Bool)

(assert (=> b!6385011 (=> (not res!2626400) (not e!3875750))))

(assert (=> b!6385011 (= res!2626400 (matchR!8484 (regTwo!33114 r!7292) (_2!36583 (get!22535 lt!2371356))))))

(declare-fun b!6385012 () Bool)

(assert (=> b!6385012 (= e!3875753 (matchR!8484 (regTwo!33114 r!7292) (t!378806 s!2326)))))

(declare-fun b!6385013 () Bool)

(declare-fun res!2626399 () Bool)

(assert (=> b!6385013 (=> (not res!2626399) (not e!3875750))))

(assert (=> b!6385013 (= res!2626399 (matchR!8484 lt!2371171 (_1!36583 (get!22535 lt!2371356))))))

(declare-fun b!6385014 () Bool)

(assert (=> b!6385014 (= e!3875750 (= (++!14369 (_1!36583 (get!22535 lt!2371356)) (_2!36583 (get!22535 lt!2371356))) s!2326))))

(assert (= (and d!2001756 res!2626403) b!6385012))

(assert (= (and d!2001756 c!1163603) b!6385010))

(assert (= (and d!2001756 (not c!1163603)) b!6385007))

(assert (= (and b!6385007 c!1163604) b!6385006))

(assert (= (and b!6385007 (not c!1163604)) b!6385008))

(assert (= (and d!2001756 res!2626401) b!6385013))

(assert (= (and b!6385013 res!2626399) b!6385011))

(assert (= (and b!6385011 res!2626400) b!6385014))

(assert (= (and d!2001756 (not res!2626402)) b!6385009))

(declare-fun m!7184802 () Bool)

(assert (=> d!2001756 m!7184802))

(assert (=> d!2001756 m!7183994))

(declare-fun m!7184806 () Bool)

(assert (=> d!2001756 m!7184806))

(assert (=> d!2001756 m!7183902))

(declare-fun m!7184808 () Bool)

(assert (=> b!6385011 m!7184808))

(declare-fun m!7184810 () Bool)

(assert (=> b!6385011 m!7184810))

(assert (=> b!6385012 m!7184660))

(assert (=> b!6385013 m!7184808))

(declare-fun m!7184814 () Bool)

(assert (=> b!6385013 m!7184814))

(assert (=> b!6385009 m!7184802))

(assert (=> b!6385008 m!7183994))

(assert (=> b!6385008 m!7184664))

(assert (=> b!6385008 m!7184664))

(assert (=> b!6385008 m!7184666))

(assert (=> b!6385008 m!7183994))

(assert (=> b!6385008 m!7184668))

(assert (=> b!6385008 m!7184664))

(declare-fun m!7184816 () Bool)

(assert (=> b!6385008 m!7184816))

(assert (=> b!6385014 m!7184808))

(declare-fun m!7184818 () Bool)

(assert (=> b!6385014 m!7184818))

(assert (=> b!6384312 d!2001756))

(assert (=> bm!545604 d!2001532))

(declare-fun bm!545745 () Bool)

(declare-fun call!545750 () Bool)

(declare-fun c!1163615 () Bool)

(assert (=> bm!545745 (= call!545750 (nullable!6294 (ite c!1163615 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))

(declare-fun b!6385058 () Bool)

(declare-fun e!3875785 () Bool)

(declare-fun e!3875784 () Bool)

(assert (=> b!6385058 (= e!3875785 e!3875784)))

(declare-fun res!2626430 () Bool)

(declare-fun call!545751 () Bool)

(assert (=> b!6385058 (= res!2626430 call!545751)))

(assert (=> b!6385058 (=> (not res!2626430) (not e!3875784))))

(declare-fun bm!545746 () Bool)

(assert (=> bm!545746 (= call!545751 (nullable!6294 (ite c!1163615 (regOne!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))

(declare-fun b!6385059 () Bool)

(declare-fun e!3875787 () Bool)

(declare-fun e!3875789 () Bool)

(assert (=> b!6385059 (= e!3875787 e!3875789)))

(declare-fun res!2626428 () Bool)

(assert (=> b!6385059 (=> res!2626428 e!3875789)))

(assert (=> b!6385059 (= res!2626428 ((_ is Star!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6385060 () Bool)

(declare-fun e!3875788 () Bool)

(assert (=> b!6385060 (= e!3875788 e!3875787)))

(declare-fun res!2626427 () Bool)

(assert (=> b!6385060 (=> (not res!2626427) (not e!3875787))))

(assert (=> b!6385060 (= res!2626427 (and (not ((_ is EmptyLang!16301) (h!71527 (exprs!6185 (h!71528 zl!343))))) (not ((_ is ElementMatch!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))))))))

(declare-fun d!2001764 () Bool)

(declare-fun res!2626431 () Bool)

(assert (=> d!2001764 (=> res!2626431 e!3875788)))

(assert (=> d!2001764 (= res!2626431 ((_ is EmptyExpr!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> d!2001764 (= (nullableFct!2240 (h!71527 (exprs!6185 (h!71528 zl!343)))) e!3875788)))

(declare-fun b!6385061 () Bool)

(declare-fun e!3875786 () Bool)

(assert (=> b!6385061 (= e!3875785 e!3875786)))

(declare-fun res!2626429 () Bool)

(assert (=> b!6385061 (= res!2626429 call!545751)))

(assert (=> b!6385061 (=> res!2626429 e!3875786)))

(declare-fun b!6385062 () Bool)

(assert (=> b!6385062 (= e!3875786 call!545750)))

(declare-fun b!6385063 () Bool)

(assert (=> b!6385063 (= e!3875784 call!545750)))

(declare-fun b!6385064 () Bool)

(assert (=> b!6385064 (= e!3875789 e!3875785)))

(assert (=> b!6385064 (= c!1163615 ((_ is Union!16301) (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(assert (= (and d!2001764 (not res!2626431)) b!6385060))

(assert (= (and b!6385060 res!2626427) b!6385059))

(assert (= (and b!6385059 (not res!2626428)) b!6385064))

(assert (= (and b!6385064 c!1163615) b!6385061))

(assert (= (and b!6385064 (not c!1163615)) b!6385058))

(assert (= (and b!6385061 (not res!2626429)) b!6385062))

(assert (= (and b!6385058 res!2626430) b!6385063))

(assert (= (or b!6385062 b!6385063) bm!545745))

(assert (= (or b!6385061 b!6385058) bm!545746))

(declare-fun m!7184834 () Bool)

(assert (=> bm!545745 m!7184834))

(declare-fun m!7184838 () Bool)

(assert (=> bm!545746 m!7184838))

(assert (=> d!2001446 d!2001764))

(declare-fun b!6385065 () Bool)

(declare-fun e!3875790 () List!65202)

(assert (=> b!6385065 (= e!3875790 (_2!36583 lt!2371152))))

(declare-fun b!6385066 () Bool)

(assert (=> b!6385066 (= e!3875790 (Cons!65078 (h!71526 (t!378806 (_1!36583 lt!2371152))) (++!14369 (t!378806 (t!378806 (_1!36583 lt!2371152))) (_2!36583 lt!2371152))))))

(declare-fun b!6385067 () Bool)

(declare-fun res!2626433 () Bool)

(declare-fun e!3875791 () Bool)

(assert (=> b!6385067 (=> (not res!2626433) (not e!3875791))))

(declare-fun lt!2371358 () List!65202)

(assert (=> b!6385067 (= res!2626433 (= (size!40360 lt!2371358) (+ (size!40360 (t!378806 (_1!36583 lt!2371152))) (size!40360 (_2!36583 lt!2371152)))))))

(declare-fun d!2001776 () Bool)

(assert (=> d!2001776 e!3875791))

(declare-fun res!2626432 () Bool)

(assert (=> d!2001776 (=> (not res!2626432) (not e!3875791))))

(assert (=> d!2001776 (= res!2626432 (= (content!12317 lt!2371358) ((_ map or) (content!12317 (t!378806 (_1!36583 lt!2371152))) (content!12317 (_2!36583 lt!2371152)))))))

(assert (=> d!2001776 (= lt!2371358 e!3875790)))

(declare-fun c!1163616 () Bool)

(assert (=> d!2001776 (= c!1163616 ((_ is Nil!65078) (t!378806 (_1!36583 lt!2371152))))))

(assert (=> d!2001776 (= (++!14369 (t!378806 (_1!36583 lt!2371152)) (_2!36583 lt!2371152)) lt!2371358)))

(declare-fun b!6385068 () Bool)

(assert (=> b!6385068 (= e!3875791 (or (not (= (_2!36583 lt!2371152) Nil!65078)) (= lt!2371358 (t!378806 (_1!36583 lt!2371152)))))))

(assert (= (and d!2001776 c!1163616) b!6385065))

(assert (= (and d!2001776 (not c!1163616)) b!6385066))

(assert (= (and d!2001776 res!2626432) b!6385067))

(assert (= (and b!6385067 res!2626433) b!6385068))

(declare-fun m!7184842 () Bool)

(assert (=> b!6385066 m!7184842))

(declare-fun m!7184844 () Bool)

(assert (=> b!6385067 m!7184844))

(assert (=> b!6385067 m!7184324))

(assert (=> b!6385067 m!7184010))

(declare-fun m!7184846 () Bool)

(assert (=> d!2001776 m!7184846))

(assert (=> d!2001776 m!7184196))

(assert (=> d!2001776 m!7184016))

(assert (=> b!6384328 d!2001776))

(assert (=> b!6384282 d!2001530))

(declare-fun d!2001782 () Bool)

(declare-fun res!2626449 () Bool)

(declare-fun e!3875805 () Bool)

(assert (=> d!2001782 (=> res!2626449 e!3875805)))

(assert (=> d!2001782 (= res!2626449 ((_ is Nil!65079) lt!2371268))))

(assert (=> d!2001782 (= (forall!15479 lt!2371268 lambda!352290) e!3875805)))

(declare-fun b!6385091 () Bool)

(declare-fun e!3875806 () Bool)

(assert (=> b!6385091 (= e!3875805 e!3875806)))

(declare-fun res!2626450 () Bool)

(assert (=> b!6385091 (=> (not res!2626450) (not e!3875806))))

(declare-fun dynLambda!25821 (Int Regex!16301) Bool)

(assert (=> b!6385091 (= res!2626450 (dynLambda!25821 lambda!352290 (h!71527 lt!2371268)))))

(declare-fun b!6385092 () Bool)

(assert (=> b!6385092 (= e!3875806 (forall!15479 (t!378807 lt!2371268) lambda!352290))))

(assert (= (and d!2001782 (not res!2626449)) b!6385091))

(assert (= (and b!6385091 res!2626450) b!6385092))

(declare-fun b_lambda!242595 () Bool)

(assert (=> (not b_lambda!242595) (not b!6385091)))

(declare-fun m!7184866 () Bool)

(assert (=> b!6385091 m!7184866))

(declare-fun m!7184868 () Bool)

(assert (=> b!6385092 m!7184868))

(assert (=> d!2001376 d!2001782))

(declare-fun d!2001792 () Bool)

(assert (=> d!2001792 (= (nullable!6294 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (nullableFct!2240 (h!71527 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))))))

(declare-fun bs!1597923 () Bool)

(assert (= bs!1597923 d!2001792))

(declare-fun m!7184870 () Bool)

(assert (=> bs!1597923 m!7184870))

(assert (=> b!6384405 d!2001792))

(assert (=> b!6384198 d!2001302))

(declare-fun bs!1597924 () Bool)

(declare-fun d!2001794 () Bool)

(assert (= bs!1597924 (and d!2001794 d!2001726)))

(declare-fun lambda!352348 () Int)

(assert (=> bs!1597924 (= lambda!352348 lambda!352344)))

(declare-fun bs!1597925 () Bool)

(assert (= bs!1597925 (and d!2001794 d!2001366)))

(assert (=> bs!1597925 (= lambda!352348 lambda!352284)))

(declare-fun bs!1597926 () Bool)

(assert (= bs!1597926 (and d!2001794 d!2001698)))

(assert (=> bs!1597926 (= lambda!352348 lambda!352338)))

(declare-fun bs!1597927 () Bool)

(assert (= bs!1597927 (and d!2001794 d!2001658)))

(assert (=> bs!1597927 (= lambda!352348 lambda!352334)))

(declare-fun bs!1597928 () Bool)

(assert (= bs!1597928 (and d!2001794 d!2001624)))

(assert (=> bs!1597928 (= lambda!352348 lambda!352332)))

(declare-fun bs!1597929 () Bool)

(assert (= bs!1597929 (and d!2001794 d!2001716)))

(assert (=> bs!1597929 (= lambda!352348 lambda!352342)))

(declare-fun bs!1597930 () Bool)

(assert (= bs!1597930 (and d!2001794 d!2001364)))

(assert (=> bs!1597930 (= lambda!352348 lambda!352283)))

(declare-fun bs!1597931 () Bool)

(assert (= bs!1597931 (and d!2001794 d!2001376)))

(assert (=> bs!1597931 (= lambda!352348 lambda!352290)))

(declare-fun bs!1597932 () Bool)

(assert (= bs!1597932 (and d!2001794 d!2001626)))

(assert (=> bs!1597932 (= lambda!352348 lambda!352333)))

(declare-fun bs!1597933 () Bool)

(assert (= bs!1597933 (and d!2001794 d!2001302)))

(assert (=> bs!1597933 (= lambda!352348 lambda!352276)))

(declare-fun bs!1597934 () Bool)

(assert (= bs!1597934 (and d!2001794 d!2001374)))

(assert (=> bs!1597934 (= lambda!352348 lambda!352287)))

(declare-fun bs!1597935 () Bool)

(assert (= bs!1597935 (and d!2001794 d!2001362)))

(assert (=> bs!1597935 (= lambda!352348 lambda!352282)))

(declare-fun lt!2371361 () List!65203)

(assert (=> d!2001794 (forall!15479 lt!2371361 lambda!352348)))

(declare-fun e!3875809 () List!65203)

(assert (=> d!2001794 (= lt!2371361 e!3875809)))

(declare-fun c!1163623 () Bool)

(assert (=> d!2001794 (= c!1163623 ((_ is Cons!65080) (t!378808 zl!343)))))

(assert (=> d!2001794 (= (unfocusZipperList!1722 (t!378808 zl!343)) lt!2371361)))

(declare-fun b!6385097 () Bool)

(assert (=> b!6385097 (= e!3875809 (Cons!65079 (generalisedConcat!1898 (exprs!6185 (h!71528 (t!378808 zl!343)))) (unfocusZipperList!1722 (t!378808 (t!378808 zl!343)))))))

(declare-fun b!6385098 () Bool)

(assert (=> b!6385098 (= e!3875809 Nil!65079)))

(assert (= (and d!2001794 c!1163623) b!6385097))

(assert (= (and d!2001794 (not c!1163623)) b!6385098))

(declare-fun m!7184876 () Bool)

(assert (=> d!2001794 m!7184876))

(declare-fun m!7184878 () Bool)

(assert (=> b!6385097 m!7184878))

(declare-fun m!7184880 () Bool)

(assert (=> b!6385097 m!7184880))

(assert (=> b!6384198 d!2001794))

(declare-fun d!2001798 () Bool)

(assert (=> d!2001798 (= (isEmpty!37214 (tail!12179 (_2!36583 lt!2371152))) ((_ is Nil!65078) (tail!12179 (_2!36583 lt!2371152))))))

(assert (=> b!6384144 d!2001798))

(declare-fun d!2001800 () Bool)

(assert (=> d!2001800 (= (tail!12179 (_2!36583 lt!2371152)) (t!378806 (_2!36583 lt!2371152)))))

(assert (=> b!6384144 d!2001800))

(assert (=> b!6384415 d!2001446))

(declare-fun d!2001802 () Bool)

(assert (=> d!2001802 (= (nullable!6294 (h!71527 (exprs!6185 lt!2371183))) (nullableFct!2240 (h!71527 (exprs!6185 lt!2371183))))))

(declare-fun bs!1597936 () Bool)

(assert (= bs!1597936 d!2001802))

(declare-fun m!7184882 () Bool)

(assert (=> bs!1597936 m!7184882))

(assert (=> b!6384410 d!2001802))

(declare-fun d!2001804 () Bool)

(declare-fun c!1163627 () Bool)

(assert (=> d!2001804 (= c!1163627 (isEmpty!37214 (tail!12179 (t!378806 s!2326))))))

(declare-fun e!3875818 () Bool)

(assert (=> d!2001804 (= (matchZipper!2313 (derivationStepZipper!2267 lt!2371179 (head!13094 (t!378806 s!2326))) (tail!12179 (t!378806 s!2326))) e!3875818)))

(declare-fun b!6385110 () Bool)

(assert (=> b!6385110 (= e!3875818 (nullableZipper!2066 (derivationStepZipper!2267 lt!2371179 (head!13094 (t!378806 s!2326)))))))

(declare-fun b!6385111 () Bool)

(assert (=> b!6385111 (= e!3875818 (matchZipper!2313 (derivationStepZipper!2267 (derivationStepZipper!2267 lt!2371179 (head!13094 (t!378806 s!2326))) (head!13094 (tail!12179 (t!378806 s!2326)))) (tail!12179 (tail!12179 (t!378806 s!2326)))))))

(assert (= (and d!2001804 c!1163627) b!6385110))

(assert (= (and d!2001804 (not c!1163627)) b!6385111))

(assert (=> d!2001804 m!7183850))

(assert (=> d!2001804 m!7184690))

(assert (=> b!6385110 m!7184042))

(declare-fun m!7184888 () Bool)

(assert (=> b!6385110 m!7184888))

(assert (=> b!6385111 m!7183850))

(assert (=> b!6385111 m!7184694))

(assert (=> b!6385111 m!7184042))

(assert (=> b!6385111 m!7184694))

(declare-fun m!7184892 () Bool)

(assert (=> b!6385111 m!7184892))

(assert (=> b!6385111 m!7183850))

(assert (=> b!6385111 m!7184698))

(assert (=> b!6385111 m!7184892))

(assert (=> b!6385111 m!7184698))

(declare-fun m!7184894 () Bool)

(assert (=> b!6385111 m!7184894))

(assert (=> b!6384361 d!2001804))

(declare-fun bs!1597937 () Bool)

(declare-fun d!2001808 () Bool)

(assert (= bs!1597937 (and d!2001808 d!2001528)))

(declare-fun lambda!352349 () Int)

(assert (=> bs!1597937 (= (= (head!13094 (t!378806 s!2326)) (head!13094 s!2326)) (= lambda!352349 lambda!352316))))

(declare-fun bs!1597938 () Bool)

(assert (= bs!1597938 (and d!2001808 b!6383534)))

(assert (=> bs!1597938 (= (= (head!13094 (t!378806 s!2326)) (h!71526 s!2326)) (= lambda!352349 lambda!352237))))

(declare-fun bs!1597939 () Bool)

(assert (= bs!1597939 (and d!2001808 d!2001704)))

(assert (=> bs!1597939 (= lambda!352349 lambda!352340)))

(declare-fun bs!1597940 () Bool)

(assert (= bs!1597940 (and d!2001808 d!2001754)))

(assert (=> bs!1597940 (= lambda!352349 lambda!352347)))

(declare-fun bs!1597941 () Bool)

(assert (= bs!1597941 (and d!2001808 d!2001438)))

(assert (=> bs!1597941 (= (= (head!13094 (t!378806 s!2326)) (h!71526 s!2326)) (= lambda!352349 lambda!352310))))

(assert (=> d!2001808 true))

(assert (=> d!2001808 (= (derivationStepZipper!2267 lt!2371179 (head!13094 (t!378806 s!2326))) (flatMap!1806 lt!2371179 lambda!352349))))

(declare-fun bs!1597943 () Bool)

(assert (= bs!1597943 d!2001808))

(declare-fun m!7184902 () Bool)

(assert (=> bs!1597943 m!7184902))

(assert (=> b!6384361 d!2001808))

(assert (=> b!6384361 d!2001708))

(assert (=> b!6384361 d!2001710))

(assert (=> bm!545608 d!2001532))

(declare-fun d!2001812 () Bool)

(assert (=> d!2001812 (= (isEmpty!37216 (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326)) (not ((_ is Some!16191) (findConcatSeparation!2606 (regOne!33114 r!7292) (regTwo!33114 r!7292) Nil!65078 s!2326 s!2326))))))

(assert (=> d!2001466 d!2001812))

(assert (=> d!2001412 d!2001566))

(declare-fun b!6385114 () Bool)

(declare-fun e!3875821 () (InoxSet Context!11370))

(declare-fun call!545756 () (InoxSet Context!11370))

(assert (=> b!6385114 (= e!3875821 call!545756)))

(declare-fun b!6385115 () Bool)

(declare-fun e!3875822 () Bool)

(assert (=> b!6385115 (= e!3875822 (nullable!6294 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371181)))))))))

(declare-fun bm!545751 () Bool)

(assert (=> bm!545751 (= call!545756 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371181))))) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371181)))))) (h!71526 s!2326)))))

(declare-fun e!3875820 () (InoxSet Context!11370))

(declare-fun b!6385117 () Bool)

(assert (=> b!6385117 (= e!3875820 ((_ map or) call!545756 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371181)))))) (h!71526 s!2326))))))

(declare-fun b!6385118 () Bool)

(assert (=> b!6385118 (= e!3875820 e!3875821)))

(declare-fun c!1163630 () Bool)

(assert (=> b!6385118 (= c!1163630 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371181))))))))

(declare-fun d!2001814 () Bool)

(declare-fun c!1163629 () Bool)

(assert (=> d!2001814 (= c!1163629 e!3875822)))

(declare-fun res!2626456 () Bool)

(assert (=> d!2001814 (=> (not res!2626456) (not e!3875822))))

(assert (=> d!2001814 (= res!2626456 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371181))))))))

(assert (=> d!2001814 (= (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 lt!2371181))) (h!71526 s!2326)) e!3875820)))

(declare-fun b!6385116 () Bool)

(assert (=> b!6385116 (= e!3875821 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001814 res!2626456) b!6385115))

(assert (= (and d!2001814 c!1163629) b!6385117))

(assert (= (and d!2001814 (not c!1163629)) b!6385118))

(assert (= (and b!6385118 c!1163630) b!6385114))

(assert (= (and b!6385118 (not c!1163630)) b!6385116))

(assert (= (or b!6385117 b!6385114) bm!545751))

(declare-fun m!7184908 () Bool)

(assert (=> b!6385115 m!7184908))

(declare-fun m!7184910 () Bool)

(assert (=> bm!545751 m!7184910))

(declare-fun m!7184912 () Bool)

(assert (=> b!6385117 m!7184912))

(assert (=> b!6384380 d!2001814))

(assert (=> b!6383944 d!2001372))

(declare-fun d!2001820 () Bool)

(assert (=> d!2001820 (= (nullable!6294 lt!2371171) (nullableFct!2240 lt!2371171))))

(declare-fun bs!1597948 () Bool)

(assert (= bs!1597948 d!2001820))

(declare-fun m!7184918 () Bool)

(assert (=> bs!1597948 m!7184918))

(assert (=> b!6384156 d!2001820))

(declare-fun d!2001822 () Bool)

(assert (=> d!2001822 (= (Exists!3371 lambda!352301) (choose!47506 lambda!352301))))

(declare-fun bs!1597949 () Bool)

(assert (= bs!1597949 d!2001822))

(declare-fun m!7184924 () Bool)

(assert (=> bs!1597949 m!7184924))

(assert (=> d!2001398 d!2001822))

(declare-fun d!2001826 () Bool)

(assert (=> d!2001826 (= (Exists!3371 lambda!352302) (choose!47506 lambda!352302))))

(declare-fun bs!1597950 () Bool)

(assert (= bs!1597950 d!2001826))

(declare-fun m!7184926 () Bool)

(assert (=> bs!1597950 m!7184926))

(assert (=> d!2001398 d!2001826))

(declare-fun bs!1597986 () Bool)

(declare-fun d!2001832 () Bool)

(assert (= bs!1597986 (and d!2001832 d!2001464)))

(declare-fun lambda!352359 () Int)

(assert (=> bs!1597986 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352359 lambda!352312))))

(declare-fun bs!1597989 () Bool)

(assert (= bs!1597989 (and d!2001832 d!2001576)))

(assert (=> bs!1597989 (= lambda!352359 lambda!352330)))

(declare-fun bs!1597991 () Bool)

(assert (= bs!1597991 (and d!2001832 b!6383550)))

(assert (=> bs!1597991 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352359 lambda!352235))))

(declare-fun bs!1597993 () Bool)

(assert (= bs!1597993 (and d!2001832 d!2001740)))

(assert (=> bs!1597993 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352359 lambda!352346))))

(declare-fun bs!1597995 () Bool)

(assert (= bs!1597995 (and d!2001832 d!2001398)))

(assert (=> bs!1597995 (not (= lambda!352359 lambda!352302))))

(declare-fun bs!1597997 () Bool)

(assert (= bs!1597997 (and d!2001832 b!6384653)))

(assert (=> bs!1597997 (not (= lambda!352359 lambda!352326))))

(declare-fun bs!1597999 () Bool)

(assert (= bs!1597999 (and d!2001832 d!2001462)))

(assert (=> bs!1597999 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352359 lambda!352311))))

(declare-fun bs!1598000 () Bool)

(assert (= bs!1598000 (and d!2001832 b!6384352)))

(assert (=> bs!1598000 (not (= lambda!352359 lambda!352306))))

(declare-fun bs!1598002 () Bool)

(assert (= bs!1598002 (and d!2001832 b!6384262)))

(assert (=> bs!1598002 (not (= lambda!352359 lambda!352295))))

(declare-fun bs!1598004 () Bool)

(assert (= bs!1598004 (and d!2001832 b!6384269)))

(assert (=> bs!1598004 (not (= lambda!352359 lambda!352296))))

(declare-fun bs!1598006 () Bool)

(assert (= bs!1598006 (and d!2001832 b!6384359)))

(assert (=> bs!1598006 (not (= lambda!352359 lambda!352307))))

(declare-fun bs!1598008 () Bool)

(assert (= bs!1598008 (and d!2001832 b!6383538)))

(assert (=> bs!1598008 (not (= lambda!352359 lambda!352239))))

(assert (=> bs!1597991 (not (= lambda!352359 lambda!352236))))

(assert (=> bs!1597986 (not (= lambda!352359 lambda!352313))))

(declare-fun bs!1598011 () Bool)

(assert (= bs!1598011 (and d!2001832 b!6384638)))

(assert (=> bs!1598011 (not (= lambda!352359 lambda!352318))))

(declare-fun bs!1598012 () Bool)

(assert (= bs!1598012 (and d!2001832 d!2001404)))

(assert (=> bs!1598012 (= lambda!352359 lambda!352305)))

(declare-fun bs!1598013 () Bool)

(assert (= bs!1598013 (and d!2001832 b!6384646)))

(assert (=> bs!1598013 (not (= lambda!352359 lambda!352325))))

(declare-fun bs!1598015 () Bool)

(assert (= bs!1598015 (and d!2001832 b!6384631)))

(assert (=> bs!1598015 (not (= lambda!352359 lambda!352317))))

(assert (=> bs!1598008 (= lambda!352359 lambda!352238)))

(assert (=> bs!1597995 (= lambda!352359 lambda!352301)))

(assert (=> d!2001832 true))

(assert (=> d!2001832 true))

(assert (=> d!2001832 true))

(declare-fun lambda!352360 () Int)

(assert (=> bs!1597986 (not (= lambda!352360 lambda!352312))))

(assert (=> bs!1597989 (not (= lambda!352360 lambda!352330))))

(assert (=> bs!1597991 (not (= lambda!352360 lambda!352235))))

(assert (=> bs!1597993 (not (= lambda!352360 lambda!352346))))

(assert (=> bs!1597997 (= (and (= lt!2371171 (regOne!33114 (regTwo!33115 lt!2371176))) (= (regTwo!33114 r!7292) (regTwo!33114 (regTwo!33115 lt!2371176)))) (= lambda!352360 lambda!352326))))

(assert (=> bs!1597999 (not (= lambda!352360 lambda!352311))))

(assert (=> bs!1598000 (not (= lambda!352360 lambda!352306))))

(assert (=> bs!1598002 (not (= lambda!352360 lambda!352295))))

(assert (=> bs!1598004 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352360 lambda!352296))))

(assert (=> bs!1598006 (= (and (= lt!2371171 (regOne!33114 lt!2371176)) (= (regTwo!33114 r!7292) (regTwo!33114 lt!2371176))) (= lambda!352360 lambda!352307))))

(assert (=> bs!1598008 (= lambda!352360 lambda!352239)))

(assert (=> bs!1597991 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352360 lambda!352236))))

(assert (=> bs!1597995 (= lambda!352360 lambda!352302)))

(declare-fun bs!1598016 () Bool)

(assert (= bs!1598016 d!2001832))

(assert (=> bs!1598016 (not (= lambda!352360 lambda!352359))))

(assert (=> bs!1597986 (= (= lt!2371171 (regOne!33114 r!7292)) (= lambda!352360 lambda!352313))))

(assert (=> bs!1598011 (= (and (= lt!2371171 (regOne!33114 (regTwo!33115 r!7292))) (= (regTwo!33114 r!7292) (regTwo!33114 (regTwo!33115 r!7292)))) (= lambda!352360 lambda!352318))))

(assert (=> bs!1598012 (not (= lambda!352360 lambda!352305))))

(assert (=> bs!1598013 (not (= lambda!352360 lambda!352325))))

(assert (=> bs!1598015 (not (= lambda!352360 lambda!352317))))

(assert (=> bs!1598008 (not (= lambda!352360 lambda!352238))))

(assert (=> bs!1597995 (not (= lambda!352360 lambda!352301))))

(assert (=> d!2001832 true))

(assert (=> d!2001832 true))

(assert (=> d!2001832 true))

(assert (=> d!2001832 (= (Exists!3371 lambda!352359) (Exists!3371 lambda!352360))))

(assert (=> d!2001832 true))

(declare-fun _$90!2244 () Unit!158535)

(assert (=> d!2001832 (= (choose!47507 lt!2371171 (regTwo!33114 r!7292) s!2326) _$90!2244)))

(declare-fun m!7184972 () Bool)

(assert (=> bs!1598016 m!7184972))

(declare-fun m!7184976 () Bool)

(assert (=> bs!1598016 m!7184976))

(assert (=> d!2001398 d!2001832))

(assert (=> d!2001398 d!2001590))

(declare-fun d!2001858 () Bool)

(assert (=> d!2001858 (= (Exists!3371 lambda!352312) (choose!47506 lambda!352312))))

(declare-fun bs!1598017 () Bool)

(assert (= bs!1598017 d!2001858))

(declare-fun m!7184980 () Bool)

(assert (=> bs!1598017 m!7184980))

(assert (=> d!2001464 d!2001858))

(declare-fun d!2001860 () Bool)

(assert (=> d!2001860 (= (Exists!3371 lambda!352313) (choose!47506 lambda!352313))))

(declare-fun bs!1598018 () Bool)

(assert (= bs!1598018 d!2001860))

(declare-fun m!7184984 () Bool)

(assert (=> bs!1598018 m!7184984))

(assert (=> d!2001464 d!2001860))

(declare-fun bs!1598019 () Bool)

(declare-fun d!2001862 () Bool)

(assert (= bs!1598019 (and d!2001862 d!2001464)))

(declare-fun lambda!352361 () Int)

(assert (=> bs!1598019 (= lambda!352361 lambda!352312)))

(declare-fun bs!1598020 () Bool)

(assert (= bs!1598020 (and d!2001862 d!2001576)))

(assert (=> bs!1598020 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352361 lambda!352330))))

(declare-fun bs!1598021 () Bool)

(assert (= bs!1598021 (and d!2001862 b!6383550)))

(assert (=> bs!1598021 (= lambda!352361 lambda!352235)))

(declare-fun bs!1598022 () Bool)

(assert (= bs!1598022 (and d!2001862 d!2001740)))

(assert (=> bs!1598022 (= lambda!352361 lambda!352346)))

(declare-fun bs!1598024 () Bool)

(assert (= bs!1598024 (and d!2001862 b!6384653)))

(assert (=> bs!1598024 (not (= lambda!352361 lambda!352326))))

(declare-fun bs!1598026 () Bool)

(assert (= bs!1598026 (and d!2001862 d!2001832)))

(assert (=> bs!1598026 (not (= lambda!352361 lambda!352360))))

(declare-fun bs!1598027 () Bool)

(assert (= bs!1598027 (and d!2001862 d!2001462)))

(assert (=> bs!1598027 (= lambda!352361 lambda!352311)))

(declare-fun bs!1598028 () Bool)

(assert (= bs!1598028 (and d!2001862 b!6384352)))

(assert (=> bs!1598028 (not (= lambda!352361 lambda!352306))))

(declare-fun bs!1598029 () Bool)

(assert (= bs!1598029 (and d!2001862 b!6384262)))

(assert (=> bs!1598029 (not (= lambda!352361 lambda!352295))))

(declare-fun bs!1598030 () Bool)

(assert (= bs!1598030 (and d!2001862 b!6384269)))

(assert (=> bs!1598030 (not (= lambda!352361 lambda!352296))))

(declare-fun bs!1598031 () Bool)

(assert (= bs!1598031 (and d!2001862 b!6384359)))

(assert (=> bs!1598031 (not (= lambda!352361 lambda!352307))))

(declare-fun bs!1598032 () Bool)

(assert (= bs!1598032 (and d!2001862 b!6383538)))

(assert (=> bs!1598032 (not (= lambda!352361 lambda!352239))))

(assert (=> bs!1598021 (not (= lambda!352361 lambda!352236))))

(declare-fun bs!1598033 () Bool)

(assert (= bs!1598033 (and d!2001862 d!2001398)))

(assert (=> bs!1598033 (not (= lambda!352361 lambda!352302))))

(assert (=> bs!1598026 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352361 lambda!352359))))

(assert (=> bs!1598019 (not (= lambda!352361 lambda!352313))))

(declare-fun bs!1598034 () Bool)

(assert (= bs!1598034 (and d!2001862 b!6384638)))

(assert (=> bs!1598034 (not (= lambda!352361 lambda!352318))))

(declare-fun bs!1598035 () Bool)

(assert (= bs!1598035 (and d!2001862 d!2001404)))

(assert (=> bs!1598035 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352361 lambda!352305))))

(declare-fun bs!1598036 () Bool)

(assert (= bs!1598036 (and d!2001862 b!6384646)))

(assert (=> bs!1598036 (not (= lambda!352361 lambda!352325))))

(declare-fun bs!1598037 () Bool)

(assert (= bs!1598037 (and d!2001862 b!6384631)))

(assert (=> bs!1598037 (not (= lambda!352361 lambda!352317))))

(assert (=> bs!1598032 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352361 lambda!352238))))

(assert (=> bs!1598033 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352361 lambda!352301))))

(assert (=> d!2001862 true))

(assert (=> d!2001862 true))

(assert (=> d!2001862 true))

(declare-fun lambda!352363 () Int)

(assert (=> bs!1598019 (not (= lambda!352363 lambda!352312))))

(assert (=> bs!1598020 (not (= lambda!352363 lambda!352330))))

(assert (=> bs!1598021 (not (= lambda!352363 lambda!352235))))

(assert (=> bs!1598022 (not (= lambda!352363 lambda!352346))))

(assert (=> bs!1598024 (= (and (= (regOne!33114 r!7292) (regOne!33114 (regTwo!33115 lt!2371176))) (= (regTwo!33114 r!7292) (regTwo!33114 (regTwo!33115 lt!2371176)))) (= lambda!352363 lambda!352326))))

(assert (=> bs!1598026 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352363 lambda!352360))))

(assert (=> bs!1598027 (not (= lambda!352363 lambda!352311))))

(assert (=> bs!1598029 (not (= lambda!352363 lambda!352295))))

(assert (=> bs!1598030 (= lambda!352363 lambda!352296)))

(assert (=> bs!1598031 (= (and (= (regOne!33114 r!7292) (regOne!33114 lt!2371176)) (= (regTwo!33114 r!7292) (regTwo!33114 lt!2371176))) (= lambda!352363 lambda!352307))))

(assert (=> bs!1598032 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352363 lambda!352239))))

(assert (=> bs!1598021 (= lambda!352363 lambda!352236)))

(assert (=> bs!1598033 (= (= (regOne!33114 r!7292) lt!2371171) (= lambda!352363 lambda!352302))))

(assert (=> bs!1598026 (not (= lambda!352363 lambda!352359))))

(assert (=> bs!1598019 (= lambda!352363 lambda!352313)))

(assert (=> bs!1598034 (= (and (= (regOne!33114 r!7292) (regOne!33114 (regTwo!33115 r!7292))) (= (regTwo!33114 r!7292) (regTwo!33114 (regTwo!33115 r!7292)))) (= lambda!352363 lambda!352318))))

(assert (=> bs!1598028 (not (= lambda!352363 lambda!352306))))

(declare-fun bs!1598038 () Bool)

(assert (= bs!1598038 d!2001862))

(assert (=> bs!1598038 (not (= lambda!352363 lambda!352361))))

(assert (=> bs!1598035 (not (= lambda!352363 lambda!352305))))

(assert (=> bs!1598036 (not (= lambda!352363 lambda!352325))))

(assert (=> bs!1598037 (not (= lambda!352363 lambda!352317))))

(assert (=> bs!1598032 (not (= lambda!352363 lambda!352238))))

(assert (=> bs!1598033 (not (= lambda!352363 lambda!352301))))

(assert (=> d!2001862 true))

(assert (=> d!2001862 true))

(assert (=> d!2001862 true))

(assert (=> d!2001862 (= (Exists!3371 lambda!352361) (Exists!3371 lambda!352363))))

(assert (=> d!2001862 true))

(declare-fun _$90!2245 () Unit!158535)

(assert (=> d!2001862 (= (choose!47507 (regOne!33114 r!7292) (regTwo!33114 r!7292) s!2326) _$90!2245)))

(declare-fun m!7185030 () Bool)

(assert (=> bs!1598038 m!7185030))

(declare-fun m!7185032 () Bool)

(assert (=> bs!1598038 m!7185032))

(assert (=> d!2001464 d!2001862))

(assert (=> d!2001464 d!2001738))

(assert (=> d!2001430 d!2001566))

(declare-fun b!6385241 () Bool)

(declare-fun e!3875895 () Bool)

(declare-fun e!3875893 () Bool)

(assert (=> b!6385241 (= e!3875895 e!3875893)))

(declare-fun res!2626512 () Bool)

(assert (=> b!6385241 (=> res!2626512 e!3875893)))

(declare-fun call!545778 () Bool)

(assert (=> b!6385241 (= res!2626512 call!545778)))

(declare-fun b!6385242 () Bool)

(declare-fun res!2626511 () Bool)

(declare-fun e!3875897 () Bool)

(assert (=> b!6385242 (=> res!2626511 e!3875897)))

(assert (=> b!6385242 (= res!2626511 (not ((_ is ElementMatch!16301) (regOne!33114 r!7292))))))

(declare-fun e!3875898 () Bool)

(assert (=> b!6385242 (= e!3875898 e!3875897)))

(declare-fun d!2001884 () Bool)

(declare-fun e!3875896 () Bool)

(assert (=> d!2001884 e!3875896))

(declare-fun c!1163667 () Bool)

(assert (=> d!2001884 (= c!1163667 ((_ is EmptyExpr!16301) (regOne!33114 r!7292)))))

(declare-fun lt!2371368 () Bool)

(declare-fun e!3875894 () Bool)

(assert (=> d!2001884 (= lt!2371368 e!3875894)))

(declare-fun c!1163668 () Bool)

(assert (=> d!2001884 (= c!1163668 (isEmpty!37214 (_1!36583 (get!22535 lt!2371304))))))

(assert (=> d!2001884 (validRegex!8037 (regOne!33114 r!7292))))

(assert (=> d!2001884 (= (matchR!8484 (regOne!33114 r!7292) (_1!36583 (get!22535 lt!2371304))) lt!2371368)))

(declare-fun b!6385243 () Bool)

(assert (=> b!6385243 (= e!3875894 (matchR!8484 (derivativeStep!5005 (regOne!33114 r!7292) (head!13094 (_1!36583 (get!22535 lt!2371304)))) (tail!12179 (_1!36583 (get!22535 lt!2371304)))))))

(declare-fun b!6385244 () Bool)

(assert (=> b!6385244 (= e!3875896 e!3875898)))

(declare-fun c!1163669 () Bool)

(assert (=> b!6385244 (= c!1163669 ((_ is EmptyLang!16301) (regOne!33114 r!7292)))))

(declare-fun b!6385245 () Bool)

(assert (=> b!6385245 (= e!3875896 (= lt!2371368 call!545778))))

(declare-fun b!6385246 () Bool)

(assert (=> b!6385246 (= e!3875897 e!3875895)))

(declare-fun res!2626513 () Bool)

(assert (=> b!6385246 (=> (not res!2626513) (not e!3875895))))

(assert (=> b!6385246 (= res!2626513 (not lt!2371368))))

(declare-fun b!6385247 () Bool)

(declare-fun res!2626514 () Bool)

(assert (=> b!6385247 (=> res!2626514 e!3875897)))

(declare-fun e!3875892 () Bool)

(assert (=> b!6385247 (= res!2626514 e!3875892)))

(declare-fun res!2626507 () Bool)

(assert (=> b!6385247 (=> (not res!2626507) (not e!3875892))))

(assert (=> b!6385247 (= res!2626507 lt!2371368)))

(declare-fun b!6385248 () Bool)

(declare-fun res!2626508 () Bool)

(assert (=> b!6385248 (=> (not res!2626508) (not e!3875892))))

(assert (=> b!6385248 (= res!2626508 (isEmpty!37214 (tail!12179 (_1!36583 (get!22535 lt!2371304)))))))

(declare-fun bm!545773 () Bool)

(assert (=> bm!545773 (= call!545778 (isEmpty!37214 (_1!36583 (get!22535 lt!2371304))))))

(declare-fun b!6385249 () Bool)

(declare-fun res!2626509 () Bool)

(assert (=> b!6385249 (=> (not res!2626509) (not e!3875892))))

(assert (=> b!6385249 (= res!2626509 (not call!545778))))

(declare-fun b!6385250 () Bool)

(assert (=> b!6385250 (= e!3875894 (nullable!6294 (regOne!33114 r!7292)))))

(declare-fun b!6385251 () Bool)

(assert (=> b!6385251 (= e!3875898 (not lt!2371368))))

(declare-fun b!6385252 () Bool)

(declare-fun res!2626510 () Bool)

(assert (=> b!6385252 (=> res!2626510 e!3875893)))

(assert (=> b!6385252 (= res!2626510 (not (isEmpty!37214 (tail!12179 (_1!36583 (get!22535 lt!2371304))))))))

(declare-fun b!6385253 () Bool)

(assert (=> b!6385253 (= e!3875892 (= (head!13094 (_1!36583 (get!22535 lt!2371304))) (c!1163182 (regOne!33114 r!7292))))))

(declare-fun b!6385254 () Bool)

(assert (=> b!6385254 (= e!3875893 (not (= (head!13094 (_1!36583 (get!22535 lt!2371304))) (c!1163182 (regOne!33114 r!7292)))))))

(assert (= (and d!2001884 c!1163668) b!6385250))

(assert (= (and d!2001884 (not c!1163668)) b!6385243))

(assert (= (and d!2001884 c!1163667) b!6385245))

(assert (= (and d!2001884 (not c!1163667)) b!6385244))

(assert (= (and b!6385244 c!1163669) b!6385251))

(assert (= (and b!6385244 (not c!1163669)) b!6385242))

(assert (= (and b!6385242 (not res!2626511)) b!6385247))

(assert (= (and b!6385247 res!2626507) b!6385249))

(assert (= (and b!6385249 res!2626509) b!6385248))

(assert (= (and b!6385248 res!2626508) b!6385253))

(assert (= (and b!6385247 (not res!2626514)) b!6385246))

(assert (= (and b!6385246 res!2626513) b!6385241))

(assert (= (and b!6385241 (not res!2626512)) b!6385252))

(assert (= (and b!6385252 (not res!2626510)) b!6385254))

(assert (= (or b!6385245 b!6385241 b!6385249) bm!545773))

(declare-fun m!7185044 () Bool)

(assert (=> b!6385243 m!7185044))

(assert (=> b!6385243 m!7185044))

(declare-fun m!7185048 () Bool)

(assert (=> b!6385243 m!7185048))

(declare-fun m!7185050 () Bool)

(assert (=> b!6385243 m!7185050))

(assert (=> b!6385243 m!7185048))

(assert (=> b!6385243 m!7185050))

(declare-fun m!7185054 () Bool)

(assert (=> b!6385243 m!7185054))

(declare-fun m!7185056 () Bool)

(assert (=> bm!545773 m!7185056))

(assert (=> b!6385248 m!7185050))

(assert (=> b!6385248 m!7185050))

(declare-fun m!7185058 () Bool)

(assert (=> b!6385248 m!7185058))

(declare-fun m!7185060 () Bool)

(assert (=> b!6385250 m!7185060))

(assert (=> b!6385253 m!7185044))

(assert (=> d!2001884 m!7185056))

(assert (=> d!2001884 m!7184144))

(assert (=> b!6385252 m!7185050))

(assert (=> b!6385252 m!7185050))

(assert (=> b!6385252 m!7185058))

(assert (=> b!6385254 m!7185044))

(assert (=> b!6384426 d!2001884))

(assert (=> b!6384426 d!2001642))

(declare-fun b!6385265 () Bool)

(declare-fun e!3875908 () Bool)

(declare-fun e!3875905 () Bool)

(assert (=> b!6385265 (= e!3875908 e!3875905)))

(declare-fun c!1163676 () Bool)

(assert (=> b!6385265 (= c!1163676 ((_ is Union!16301) (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))))))

(declare-fun b!6385266 () Bool)

(declare-fun e!3875906 () Bool)

(declare-fun call!545783 () Bool)

(assert (=> b!6385266 (= e!3875906 call!545783)))

(declare-fun b!6385267 () Bool)

(declare-fun e!3875910 () Bool)

(assert (=> b!6385267 (= e!3875908 e!3875910)))

(declare-fun res!2626519 () Bool)

(assert (=> b!6385267 (= res!2626519 (not (nullable!6294 (reg!16630 (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))))))))

(assert (=> b!6385267 (=> (not res!2626519) (not e!3875910))))

(declare-fun bm!545778 () Bool)

(declare-fun call!545785 () Bool)

(assert (=> bm!545778 (= call!545785 (validRegex!8037 (ite c!1163676 (regOne!33115 (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))) (regOne!33114 (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))))))))

(declare-fun d!2001888 () Bool)

(declare-fun res!2626515 () Bool)

(declare-fun e!3875909 () Bool)

(assert (=> d!2001888 (=> res!2626515 e!3875909)))

(assert (=> d!2001888 (= res!2626515 ((_ is ElementMatch!16301) (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))))))

(assert (=> d!2001888 (= (validRegex!8037 (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))) e!3875909)))

(declare-fun b!6385268 () Bool)

(assert (=> b!6385268 (= e!3875909 e!3875908)))

(declare-fun c!1163675 () Bool)

(assert (=> b!6385268 (= c!1163675 ((_ is Star!16301) (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))))))

(declare-fun b!6385269 () Bool)

(declare-fun e!3875904 () Bool)

(declare-fun e!3875907 () Bool)

(assert (=> b!6385269 (= e!3875904 e!3875907)))

(declare-fun res!2626516 () Bool)

(assert (=> b!6385269 (=> (not res!2626516) (not e!3875907))))

(assert (=> b!6385269 (= res!2626516 call!545785)))

(declare-fun bm!545779 () Bool)

(declare-fun call!545784 () Bool)

(assert (=> bm!545779 (= call!545783 call!545784)))

(declare-fun b!6385270 () Bool)

(assert (=> b!6385270 (= e!3875910 call!545784)))

(declare-fun bm!545780 () Bool)

(assert (=> bm!545780 (= call!545784 (validRegex!8037 (ite c!1163675 (reg!16630 (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))) (ite c!1163676 (regTwo!33115 (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292)))) (regTwo!33114 (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292))))))))))

(declare-fun b!6385271 () Bool)

(declare-fun res!2626517 () Bool)

(assert (=> b!6385271 (=> (not res!2626517) (not e!3875906))))

(assert (=> b!6385271 (= res!2626517 call!545785)))

(assert (=> b!6385271 (= e!3875905 e!3875906)))

(declare-fun b!6385272 () Bool)

(declare-fun res!2626518 () Bool)

(assert (=> b!6385272 (=> res!2626518 e!3875904)))

(assert (=> b!6385272 (= res!2626518 (not ((_ is Concat!25146) (ite c!1163368 (reg!16630 r!7292) (ite c!1163369 (regTwo!33115 r!7292) (regTwo!33114 r!7292))))))))

(assert (=> b!6385272 (= e!3875905 e!3875904)))

(declare-fun b!6385273 () Bool)

(assert (=> b!6385273 (= e!3875907 call!545783)))

(assert (= (and d!2001888 (not res!2626515)) b!6385268))

(assert (= (and b!6385268 c!1163675) b!6385267))

(assert (= (and b!6385268 (not c!1163675)) b!6385265))

(assert (= (and b!6385267 res!2626519) b!6385270))

(assert (= (and b!6385265 c!1163676) b!6385271))

(assert (= (and b!6385265 (not c!1163676)) b!6385272))

(assert (= (and b!6385271 res!2626517) b!6385266))

(assert (= (and b!6385272 (not res!2626518)) b!6385269))

(assert (= (and b!6385269 res!2626516) b!6385273))

(assert (= (or b!6385266 b!6385273) bm!545779))

(assert (= (or b!6385271 b!6385269) bm!545778))

(assert (= (or b!6385270 bm!545779) bm!545780))

(declare-fun m!7185070 () Bool)

(assert (=> b!6385267 m!7185070))

(declare-fun m!7185072 () Bool)

(assert (=> bm!545778 m!7185072))

(declare-fun m!7185076 () Bool)

(assert (=> bm!545780 m!7185076))

(assert (=> bm!545599 d!2001888))

(declare-fun b!6385274 () Bool)

(declare-fun e!3875916 () (InoxSet Context!11370))

(assert (=> b!6385274 (= e!3875916 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6385275 () Bool)

(declare-fun call!545788 () (InoxSet Context!11370))

(assert (=> b!6385275 (= e!3875916 call!545788)))

(declare-fun b!6385276 () Bool)

(declare-fun e!3875913 () (InoxSet Context!11370))

(declare-fun e!3875911 () (InoxSet Context!11370))

(assert (=> b!6385276 (= e!3875913 e!3875911)))

(declare-fun c!1163681 () Bool)

(assert (=> b!6385276 (= c!1163681 ((_ is Union!16301) (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))))))

(declare-fun b!6385277 () Bool)

(declare-fun e!3875914 () (InoxSet Context!11370))

(declare-fun call!545787 () (InoxSet Context!11370))

(declare-fun call!545789 () (InoxSet Context!11370))

(assert (=> b!6385277 (= e!3875914 ((_ map or) call!545787 call!545789))))

(declare-fun b!6385278 () Bool)

(declare-fun call!545791 () (InoxSet Context!11370))

(assert (=> b!6385278 (= e!3875911 ((_ map or) call!545791 call!545787))))

(declare-fun bm!545781 () Bool)

(assert (=> bm!545781 (= call!545789 call!545791)))

(declare-fun c!1163677 () Bool)

(declare-fun bm!545782 () Bool)

(declare-fun c!1163680 () Bool)

(declare-fun call!545790 () List!65203)

(assert (=> bm!545782 (= call!545790 ($colon$colon!2161 (exprs!6185 (ite c!1163336 lt!2371169 (Context!11371 call!545590))) (ite (or c!1163677 c!1163680) (regTwo!33114 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))) (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292)))))))))

(declare-fun b!6385279 () Bool)

(declare-fun e!3875912 () (InoxSet Context!11370))

(assert (=> b!6385279 (= e!3875912 call!545788)))

(declare-fun d!2001894 () Bool)

(declare-fun c!1163678 () Bool)

(assert (=> d!2001894 (= c!1163678 (and ((_ is ElementMatch!16301) (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))) (= (c!1163182 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))) (h!71526 s!2326))))))

(assert (=> d!2001894 (= (derivationStepZipperDown!1549 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292)))) (ite c!1163336 lt!2371169 (Context!11371 call!545590)) (h!71526 s!2326)) e!3875913)))

(declare-fun bm!545783 () Bool)

(assert (=> bm!545783 (= call!545788 call!545789)))

(declare-fun bm!545784 () Bool)

(assert (=> bm!545784 (= call!545787 (derivationStepZipperDown!1549 (ite c!1163681 (regTwo!33115 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))) (regOne!33114 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292)))))) (ite c!1163681 (ite c!1163336 lt!2371169 (Context!11371 call!545590)) (Context!11371 call!545790)) (h!71526 s!2326)))))

(declare-fun b!6385280 () Bool)

(declare-fun e!3875915 () Bool)

(assert (=> b!6385280 (= c!1163677 e!3875915)))

(declare-fun res!2626520 () Bool)

(assert (=> b!6385280 (=> (not res!2626520) (not e!3875915))))

(assert (=> b!6385280 (= res!2626520 ((_ is Concat!25146) (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))))))

(assert (=> b!6385280 (= e!3875911 e!3875914)))

(declare-fun bm!545785 () Bool)

(declare-fun call!545786 () List!65203)

(assert (=> bm!545785 (= call!545791 (derivationStepZipperDown!1549 (ite c!1163681 (regOne!33115 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))) (ite c!1163677 (regTwo!33114 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))) (ite c!1163680 (regOne!33114 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))) (reg!16630 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292)))))))) (ite (or c!1163681 c!1163677) (ite c!1163336 lt!2371169 (Context!11371 call!545590)) (Context!11371 call!545786)) (h!71526 s!2326)))))

(declare-fun b!6385281 () Bool)

(assert (=> b!6385281 (= e!3875913 (store ((as const (Array Context!11370 Bool)) false) (ite c!1163336 lt!2371169 (Context!11371 call!545590)) true))))

(declare-fun bm!545786 () Bool)

(assert (=> bm!545786 (= call!545786 call!545790)))

(declare-fun b!6385282 () Bool)

(assert (=> b!6385282 (= e!3875915 (nullable!6294 (regOne!33114 (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292)))))))))

(declare-fun b!6385283 () Bool)

(assert (=> b!6385283 (= e!3875914 e!3875912)))

(assert (=> b!6385283 (= c!1163680 ((_ is Concat!25146) (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))))))

(declare-fun b!6385284 () Bool)

(declare-fun c!1163679 () Bool)

(assert (=> b!6385284 (= c!1163679 ((_ is Star!16301) (ite c!1163336 (regTwo!33115 (reg!16630 (regOne!33114 r!7292))) (regOne!33114 (reg!16630 (regOne!33114 r!7292))))))))

(assert (=> b!6385284 (= e!3875912 e!3875916)))

(assert (= (and d!2001894 c!1163678) b!6385281))

(assert (= (and d!2001894 (not c!1163678)) b!6385276))

(assert (= (and b!6385276 c!1163681) b!6385278))

(assert (= (and b!6385276 (not c!1163681)) b!6385280))

(assert (= (and b!6385280 res!2626520) b!6385282))

(assert (= (and b!6385280 c!1163677) b!6385277))

(assert (= (and b!6385280 (not c!1163677)) b!6385283))

(assert (= (and b!6385283 c!1163680) b!6385279))

(assert (= (and b!6385283 (not c!1163680)) b!6385284))

(assert (= (and b!6385284 c!1163679) b!6385275))

(assert (= (and b!6385284 (not c!1163679)) b!6385274))

(assert (= (or b!6385279 b!6385275) bm!545786))

(assert (= (or b!6385279 b!6385275) bm!545783))

(assert (= (or b!6385277 bm!545786) bm!545782))

(assert (= (or b!6385277 bm!545783) bm!545781))

(assert (= (or b!6385278 b!6385277) bm!545784))

(assert (= (or b!6385278 bm!545781) bm!545785))

(declare-fun m!7185080 () Bool)

(assert (=> bm!545784 m!7185080))

(declare-fun m!7185082 () Bool)

(assert (=> b!6385281 m!7185082))

(declare-fun m!7185084 () Bool)

(assert (=> bm!545785 m!7185084))

(declare-fun m!7185086 () Bool)

(assert (=> b!6385282 m!7185086))

(declare-fun m!7185088 () Bool)

(assert (=> bm!545782 m!7185088))

(assert (=> bm!545584 d!2001894))

(declare-fun d!2001898 () Bool)

(assert (=> d!2001898 (= (isEmpty!37214 (_2!36583 lt!2371152)) ((_ is Nil!65078) (_2!36583 lt!2371152)))))

(assert (=> bm!545589 d!2001898))

(declare-fun bs!1598041 () Bool)

(declare-fun d!2001900 () Bool)

(assert (= bs!1598041 (and d!2001900 d!2001726)))

(declare-fun lambda!352364 () Int)

(assert (=> bs!1598041 (= lambda!352364 lambda!352344)))

(declare-fun bs!1598042 () Bool)

(assert (= bs!1598042 (and d!2001900 d!2001366)))

(assert (=> bs!1598042 (= lambda!352364 lambda!352284)))

(declare-fun bs!1598043 () Bool)

(assert (= bs!1598043 (and d!2001900 d!2001698)))

(assert (=> bs!1598043 (= lambda!352364 lambda!352338)))

(declare-fun bs!1598044 () Bool)

(assert (= bs!1598044 (and d!2001900 d!2001794)))

(assert (=> bs!1598044 (= lambda!352364 lambda!352348)))

(declare-fun bs!1598045 () Bool)

(assert (= bs!1598045 (and d!2001900 d!2001658)))

(assert (=> bs!1598045 (= lambda!352364 lambda!352334)))

(declare-fun bs!1598046 () Bool)

(assert (= bs!1598046 (and d!2001900 d!2001624)))

(assert (=> bs!1598046 (= lambda!352364 lambda!352332)))

(declare-fun bs!1598047 () Bool)

(assert (= bs!1598047 (and d!2001900 d!2001716)))

(assert (=> bs!1598047 (= lambda!352364 lambda!352342)))

(declare-fun bs!1598048 () Bool)

(assert (= bs!1598048 (and d!2001900 d!2001364)))

(assert (=> bs!1598048 (= lambda!352364 lambda!352283)))

(declare-fun bs!1598049 () Bool)

(assert (= bs!1598049 (and d!2001900 d!2001376)))

(assert (=> bs!1598049 (= lambda!352364 lambda!352290)))

(declare-fun bs!1598050 () Bool)

(assert (= bs!1598050 (and d!2001900 d!2001626)))

(assert (=> bs!1598050 (= lambda!352364 lambda!352333)))

(declare-fun bs!1598051 () Bool)

(assert (= bs!1598051 (and d!2001900 d!2001302)))

(assert (=> bs!1598051 (= lambda!352364 lambda!352276)))

(declare-fun bs!1598052 () Bool)

(assert (= bs!1598052 (and d!2001900 d!2001374)))

(assert (=> bs!1598052 (= lambda!352364 lambda!352287)))

(declare-fun bs!1598053 () Bool)

(assert (= bs!1598053 (and d!2001900 d!2001362)))

(assert (=> bs!1598053 (= lambda!352364 lambda!352282)))

(assert (=> d!2001900 (= (inv!83999 (h!71528 (t!378808 zl!343))) (forall!15479 (exprs!6185 (h!71528 (t!378808 zl!343))) lambda!352364))))

(declare-fun bs!1598054 () Bool)

(assert (= bs!1598054 d!2001900))

(declare-fun m!7185090 () Bool)

(assert (=> bs!1598054 m!7185090))

(assert (=> b!6384468 d!2001900))

(declare-fun d!2001902 () Bool)

(assert (=> d!2001902 true))

(assert (=> d!2001902 true))

(declare-fun res!2626521 () Bool)

(assert (=> d!2001902 (= (choose!47506 lambda!352235) res!2626521)))

(assert (=> d!2001458 d!2001902))

(assert (=> b!6384348 d!2001530))

(declare-fun d!2001904 () Bool)

(assert (=> d!2001904 (= (nullable!6294 (h!71527 (exprs!6185 lt!2371169))) (nullableFct!2240 (h!71527 (exprs!6185 lt!2371169))))))

(declare-fun bs!1598055 () Bool)

(assert (= bs!1598055 d!2001904))

(declare-fun m!7185092 () Bool)

(assert (=> bs!1598055 m!7185092))

(assert (=> b!6384373 d!2001904))

(declare-fun d!2001906 () Bool)

(declare-fun res!2626522 () Bool)

(declare-fun e!3875917 () Bool)

(assert (=> d!2001906 (=> res!2626522 e!3875917)))

(assert (=> d!2001906 (= res!2626522 ((_ is Nil!65079) (exprs!6185 setElem!43580)))))

(assert (=> d!2001906 (= (forall!15479 (exprs!6185 setElem!43580) lambda!352283) e!3875917)))

(declare-fun b!6385285 () Bool)

(declare-fun e!3875918 () Bool)

(assert (=> b!6385285 (= e!3875917 e!3875918)))

(declare-fun res!2626523 () Bool)

(assert (=> b!6385285 (=> (not res!2626523) (not e!3875918))))

(assert (=> b!6385285 (= res!2626523 (dynLambda!25821 lambda!352283 (h!71527 (exprs!6185 setElem!43580))))))

(declare-fun b!6385286 () Bool)

(assert (=> b!6385286 (= e!3875918 (forall!15479 (t!378807 (exprs!6185 setElem!43580)) lambda!352283))))

(assert (= (and d!2001906 (not res!2626522)) b!6385285))

(assert (= (and b!6385285 res!2626523) b!6385286))

(declare-fun b_lambda!242601 () Bool)

(assert (=> (not b_lambda!242601) (not b!6385285)))

(declare-fun m!7185094 () Bool)

(assert (=> b!6385285 m!7185094))

(declare-fun m!7185096 () Bool)

(assert (=> b!6385286 m!7185096))

(assert (=> d!2001364 d!2001906))

(declare-fun b!6385287 () Bool)

(declare-fun e!3875922 () Bool)

(declare-fun e!3875920 () Bool)

(assert (=> b!6385287 (= e!3875922 e!3875920)))

(declare-fun res!2626529 () Bool)

(assert (=> b!6385287 (=> res!2626529 e!3875920)))

(declare-fun call!545792 () Bool)

(assert (=> b!6385287 (= res!2626529 call!545792)))

(declare-fun b!6385288 () Bool)

(declare-fun res!2626528 () Bool)

(declare-fun e!3875924 () Bool)

(assert (=> b!6385288 (=> res!2626528 e!3875924)))

(assert (=> b!6385288 (= res!2626528 (not ((_ is ElementMatch!16301) (regTwo!33114 r!7292))))))

(declare-fun e!3875925 () Bool)

(assert (=> b!6385288 (= e!3875925 e!3875924)))

(declare-fun d!2001908 () Bool)

(declare-fun e!3875923 () Bool)

(assert (=> d!2001908 e!3875923))

(declare-fun c!1163682 () Bool)

(assert (=> d!2001908 (= c!1163682 ((_ is EmptyExpr!16301) (regTwo!33114 r!7292)))))

(declare-fun lt!2371370 () Bool)

(declare-fun e!3875921 () Bool)

(assert (=> d!2001908 (= lt!2371370 e!3875921)))

(declare-fun c!1163683 () Bool)

(assert (=> d!2001908 (= c!1163683 (isEmpty!37214 (_2!36583 (get!22535 lt!2371304))))))

(assert (=> d!2001908 (validRegex!8037 (regTwo!33114 r!7292))))

(assert (=> d!2001908 (= (matchR!8484 (regTwo!33114 r!7292) (_2!36583 (get!22535 lt!2371304))) lt!2371370)))

(declare-fun b!6385289 () Bool)

(assert (=> b!6385289 (= e!3875921 (matchR!8484 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 (get!22535 lt!2371304)))) (tail!12179 (_2!36583 (get!22535 lt!2371304)))))))

(declare-fun b!6385290 () Bool)

(assert (=> b!6385290 (= e!3875923 e!3875925)))

(declare-fun c!1163684 () Bool)

(assert (=> b!6385290 (= c!1163684 ((_ is EmptyLang!16301) (regTwo!33114 r!7292)))))

(declare-fun b!6385291 () Bool)

(assert (=> b!6385291 (= e!3875923 (= lt!2371370 call!545792))))

(declare-fun b!6385292 () Bool)

(assert (=> b!6385292 (= e!3875924 e!3875922)))

(declare-fun res!2626530 () Bool)

(assert (=> b!6385292 (=> (not res!2626530) (not e!3875922))))

(assert (=> b!6385292 (= res!2626530 (not lt!2371370))))

(declare-fun b!6385293 () Bool)

(declare-fun res!2626531 () Bool)

(assert (=> b!6385293 (=> res!2626531 e!3875924)))

(declare-fun e!3875919 () Bool)

(assert (=> b!6385293 (= res!2626531 e!3875919)))

(declare-fun res!2626524 () Bool)

(assert (=> b!6385293 (=> (not res!2626524) (not e!3875919))))

(assert (=> b!6385293 (= res!2626524 lt!2371370)))

(declare-fun b!6385294 () Bool)

(declare-fun res!2626525 () Bool)

(assert (=> b!6385294 (=> (not res!2626525) (not e!3875919))))

(assert (=> b!6385294 (= res!2626525 (isEmpty!37214 (tail!12179 (_2!36583 (get!22535 lt!2371304)))))))

(declare-fun bm!545787 () Bool)

(assert (=> bm!545787 (= call!545792 (isEmpty!37214 (_2!36583 (get!22535 lt!2371304))))))

(declare-fun b!6385295 () Bool)

(declare-fun res!2626526 () Bool)

(assert (=> b!6385295 (=> (not res!2626526) (not e!3875919))))

(assert (=> b!6385295 (= res!2626526 (not call!545792))))

(declare-fun b!6385296 () Bool)

(assert (=> b!6385296 (= e!3875921 (nullable!6294 (regTwo!33114 r!7292)))))

(declare-fun b!6385297 () Bool)

(assert (=> b!6385297 (= e!3875925 (not lt!2371370))))

(declare-fun b!6385298 () Bool)

(declare-fun res!2626527 () Bool)

(assert (=> b!6385298 (=> res!2626527 e!3875920)))

(assert (=> b!6385298 (= res!2626527 (not (isEmpty!37214 (tail!12179 (_2!36583 (get!22535 lt!2371304))))))))

(declare-fun b!6385299 () Bool)

(assert (=> b!6385299 (= e!3875919 (= (head!13094 (_2!36583 (get!22535 lt!2371304))) (c!1163182 (regTwo!33114 r!7292))))))

(declare-fun b!6385300 () Bool)

(assert (=> b!6385300 (= e!3875920 (not (= (head!13094 (_2!36583 (get!22535 lt!2371304))) (c!1163182 (regTwo!33114 r!7292)))))))

(assert (= (and d!2001908 c!1163683) b!6385296))

(assert (= (and d!2001908 (not c!1163683)) b!6385289))

(assert (= (and d!2001908 c!1163682) b!6385291))

(assert (= (and d!2001908 (not c!1163682)) b!6385290))

(assert (= (and b!6385290 c!1163684) b!6385297))

(assert (= (and b!6385290 (not c!1163684)) b!6385288))

(assert (= (and b!6385288 (not res!2626528)) b!6385293))

(assert (= (and b!6385293 res!2626524) b!6385295))

(assert (= (and b!6385295 res!2626526) b!6385294))

(assert (= (and b!6385294 res!2626525) b!6385299))

(assert (= (and b!6385293 (not res!2626531)) b!6385292))

(assert (= (and b!6385292 res!2626530) b!6385287))

(assert (= (and b!6385287 (not res!2626529)) b!6385298))

(assert (= (and b!6385298 (not res!2626527)) b!6385300))

(assert (= (or b!6385291 b!6385287 b!6385295) bm!545787))

(declare-fun m!7185098 () Bool)

(assert (=> b!6385289 m!7185098))

(assert (=> b!6385289 m!7185098))

(declare-fun m!7185100 () Bool)

(assert (=> b!6385289 m!7185100))

(declare-fun m!7185102 () Bool)

(assert (=> b!6385289 m!7185102))

(assert (=> b!6385289 m!7185100))

(assert (=> b!6385289 m!7185102))

(declare-fun m!7185104 () Bool)

(assert (=> b!6385289 m!7185104))

(declare-fun m!7185106 () Bool)

(assert (=> bm!545787 m!7185106))

(assert (=> b!6385294 m!7185102))

(assert (=> b!6385294 m!7185102))

(declare-fun m!7185108 () Bool)

(assert (=> b!6385294 m!7185108))

(assert (=> b!6385296 m!7183880))

(assert (=> b!6385299 m!7185098))

(assert (=> d!2001908 m!7185106))

(assert (=> d!2001908 m!7183882))

(assert (=> b!6385298 m!7185102))

(assert (=> b!6385298 m!7185102))

(assert (=> b!6385298 m!7185108))

(assert (=> b!6385300 m!7185098))

(assert (=> b!6384424 d!2001908))

(assert (=> b!6384424 d!2001642))

(assert (=> d!2001456 d!2001500))

(declare-fun b!6385305 () Bool)

(declare-fun e!3875931 () Bool)

(declare-fun e!3875929 () Bool)

(assert (=> b!6385305 (= e!3875931 e!3875929)))

(declare-fun res!2626541 () Bool)

(assert (=> b!6385305 (=> res!2626541 e!3875929)))

(declare-fun call!545793 () Bool)

(assert (=> b!6385305 (= res!2626541 call!545793)))

(declare-fun b!6385306 () Bool)

(declare-fun res!2626540 () Bool)

(declare-fun e!3875933 () Bool)

(assert (=> b!6385306 (=> res!2626540 e!3875933)))

(assert (=> b!6385306 (= res!2626540 (not ((_ is ElementMatch!16301) (regOne!33114 r!7292))))))

(declare-fun e!3875934 () Bool)

(assert (=> b!6385306 (= e!3875934 e!3875933)))

(declare-fun d!2001910 () Bool)

(declare-fun e!3875932 () Bool)

(assert (=> d!2001910 e!3875932))

(declare-fun c!1163685 () Bool)

(assert (=> d!2001910 (= c!1163685 ((_ is EmptyExpr!16301) (regOne!33114 r!7292)))))

(declare-fun lt!2371371 () Bool)

(declare-fun e!3875930 () Bool)

(assert (=> d!2001910 (= lt!2371371 e!3875930)))

(declare-fun c!1163686 () Bool)

(assert (=> d!2001910 (= c!1163686 (isEmpty!37214 Nil!65078))))

(assert (=> d!2001910 (validRegex!8037 (regOne!33114 r!7292))))

(assert (=> d!2001910 (= (matchR!8484 (regOne!33114 r!7292) Nil!65078) lt!2371371)))

(declare-fun b!6385307 () Bool)

(assert (=> b!6385307 (= e!3875930 (matchR!8484 (derivativeStep!5005 (regOne!33114 r!7292) (head!13094 Nil!65078)) (tail!12179 Nil!65078)))))

(declare-fun b!6385308 () Bool)

(assert (=> b!6385308 (= e!3875932 e!3875934)))

(declare-fun c!1163687 () Bool)

(assert (=> b!6385308 (= c!1163687 ((_ is EmptyLang!16301) (regOne!33114 r!7292)))))

(declare-fun b!6385309 () Bool)

(assert (=> b!6385309 (= e!3875932 (= lt!2371371 call!545793))))

(declare-fun b!6385310 () Bool)

(assert (=> b!6385310 (= e!3875933 e!3875931)))

(declare-fun res!2626542 () Bool)

(assert (=> b!6385310 (=> (not res!2626542) (not e!3875931))))

(assert (=> b!6385310 (= res!2626542 (not lt!2371371))))

(declare-fun b!6385311 () Bool)

(declare-fun res!2626543 () Bool)

(assert (=> b!6385311 (=> res!2626543 e!3875933)))

(declare-fun e!3875928 () Bool)

(assert (=> b!6385311 (= res!2626543 e!3875928)))

(declare-fun res!2626536 () Bool)

(assert (=> b!6385311 (=> (not res!2626536) (not e!3875928))))

(assert (=> b!6385311 (= res!2626536 lt!2371371)))

(declare-fun b!6385312 () Bool)

(declare-fun res!2626537 () Bool)

(assert (=> b!6385312 (=> (not res!2626537) (not e!3875928))))

(assert (=> b!6385312 (= res!2626537 (isEmpty!37214 (tail!12179 Nil!65078)))))

(declare-fun bm!545788 () Bool)

(assert (=> bm!545788 (= call!545793 (isEmpty!37214 Nil!65078))))

(declare-fun b!6385313 () Bool)

(declare-fun res!2626538 () Bool)

(assert (=> b!6385313 (=> (not res!2626538) (not e!3875928))))

(assert (=> b!6385313 (= res!2626538 (not call!545793))))

(declare-fun b!6385314 () Bool)

(assert (=> b!6385314 (= e!3875930 (nullable!6294 (regOne!33114 r!7292)))))

(declare-fun b!6385315 () Bool)

(assert (=> b!6385315 (= e!3875934 (not lt!2371371))))

(declare-fun b!6385316 () Bool)

(declare-fun res!2626539 () Bool)

(assert (=> b!6385316 (=> res!2626539 e!3875929)))

(assert (=> b!6385316 (= res!2626539 (not (isEmpty!37214 (tail!12179 Nil!65078))))))

(declare-fun b!6385317 () Bool)

(assert (=> b!6385317 (= e!3875928 (= (head!13094 Nil!65078) (c!1163182 (regOne!33114 r!7292))))))

(declare-fun b!6385318 () Bool)

(assert (=> b!6385318 (= e!3875929 (not (= (head!13094 Nil!65078) (c!1163182 (regOne!33114 r!7292)))))))

(assert (= (and d!2001910 c!1163686) b!6385314))

(assert (= (and d!2001910 (not c!1163686)) b!6385307))

(assert (= (and d!2001910 c!1163685) b!6385309))

(assert (= (and d!2001910 (not c!1163685)) b!6385308))

(assert (= (and b!6385308 c!1163687) b!6385315))

(assert (= (and b!6385308 (not c!1163687)) b!6385306))

(assert (= (and b!6385306 (not res!2626540)) b!6385311))

(assert (= (and b!6385311 res!2626536) b!6385313))

(assert (= (and b!6385313 res!2626538) b!6385312))

(assert (= (and b!6385312 res!2626537) b!6385317))

(assert (= (and b!6385311 (not res!2626543)) b!6385310))

(assert (= (and b!6385310 res!2626542) b!6385305))

(assert (= (and b!6385305 (not res!2626541)) b!6385316))

(assert (= (and b!6385316 (not res!2626539)) b!6385318))

(assert (= (or b!6385309 b!6385305 b!6385313) bm!545788))

(assert (=> b!6385307 m!7184516))

(assert (=> b!6385307 m!7184516))

(declare-fun m!7185110 () Bool)

(assert (=> b!6385307 m!7185110))

(assert (=> b!6385307 m!7184520))

(assert (=> b!6385307 m!7185110))

(assert (=> b!6385307 m!7184520))

(declare-fun m!7185112 () Bool)

(assert (=> b!6385307 m!7185112))

(assert (=> bm!545788 m!7184524))

(assert (=> b!6385312 m!7184520))

(assert (=> b!6385312 m!7184520))

(assert (=> b!6385312 m!7184526))

(assert (=> b!6385314 m!7185060))

(assert (=> b!6385317 m!7184516))

(assert (=> d!2001910 m!7184524))

(assert (=> d!2001910 m!7184144))

(assert (=> b!6385316 m!7184520))

(assert (=> b!6385316 m!7184520))

(assert (=> b!6385316 m!7184526))

(assert (=> b!6385318 m!7184516))

(assert (=> d!2001456 d!2001910))

(assert (=> d!2001456 d!2001738))

(declare-fun d!2001912 () Bool)

(assert (=> d!2001912 true))

(declare-fun setRes!43593 () Bool)

(assert (=> d!2001912 setRes!43593))

(declare-fun condSetEmpty!43593 () Bool)

(declare-fun res!2626544 () (InoxSet Context!11370))

(assert (=> d!2001912 (= condSetEmpty!43593 (= res!2626544 ((as const (Array Context!11370 Bool)) false)))))

(assert (=> d!2001912 (= (choose!47510 lt!2371185 lambda!352237) res!2626544)))

(declare-fun setIsEmpty!43593 () Bool)

(assert (=> setIsEmpty!43593 setRes!43593))

(declare-fun e!3875935 () Bool)

(declare-fun setElem!43593 () Context!11370)

(declare-fun tp!1776271 () Bool)

(declare-fun setNonEmpty!43593 () Bool)

(assert (=> setNonEmpty!43593 (= setRes!43593 (and tp!1776271 (inv!83999 setElem!43593) e!3875935))))

(declare-fun setRest!43593 () (InoxSet Context!11370))

(assert (=> setNonEmpty!43593 (= res!2626544 ((_ map or) (store ((as const (Array Context!11370 Bool)) false) setElem!43593 true) setRest!43593))))

(declare-fun b!6385319 () Bool)

(declare-fun tp!1776272 () Bool)

(assert (=> b!6385319 (= e!3875935 tp!1776272)))

(assert (= (and d!2001912 condSetEmpty!43593) setIsEmpty!43593))

(assert (= (and d!2001912 (not condSetEmpty!43593)) setNonEmpty!43593))

(assert (= setNonEmpty!43593 b!6385319))

(declare-fun m!7185114 () Bool)

(assert (=> setNonEmpty!43593 m!7185114))

(assert (=> d!2001422 d!2001912))

(assert (=> d!2001368 d!2001328))

(assert (=> d!2001368 d!2001590))

(declare-fun d!2001914 () Bool)

(assert (=> d!2001914 (= (head!13093 (exprs!6185 (h!71528 zl!343))) (h!71527 (exprs!6185 (h!71528 zl!343))))))

(assert (=> b!6383938 d!2001914))

(assert (=> d!2001410 d!2001406))

(assert (=> d!2001410 d!2001408))

(declare-fun d!2001916 () Bool)

(assert (=> d!2001916 (= (matchR!8484 lt!2371176 s!2326) (matchRSpec!3402 lt!2371176 s!2326))))

(assert (=> d!2001916 true))

(declare-fun _$88!5074 () Unit!158535)

(assert (=> d!2001916 (= (choose!47505 lt!2371176 s!2326) _$88!5074)))

(declare-fun bs!1598058 () Bool)

(assert (= bs!1598058 d!2001916))

(assert (=> bs!1598058 m!7183370))

(assert (=> bs!1598058 m!7183372))

(assert (=> d!2001410 d!2001916))

(assert (=> d!2001410 d!2001594))

(declare-fun bs!1598063 () Bool)

(declare-fun d!2001918 () Bool)

(assert (= bs!1598063 (and d!2001918 d!2001726)))

(declare-fun lambda!352370 () Int)

(assert (=> bs!1598063 (= lambda!352370 lambda!352344)))

(declare-fun bs!1598065 () Bool)

(assert (= bs!1598065 (and d!2001918 d!2001366)))

(assert (=> bs!1598065 (= lambda!352370 lambda!352284)))

(declare-fun bs!1598066 () Bool)

(assert (= bs!1598066 (and d!2001918 d!2001698)))

(assert (=> bs!1598066 (= lambda!352370 lambda!352338)))

(declare-fun bs!1598068 () Bool)

(assert (= bs!1598068 (and d!2001918 d!2001794)))

(assert (=> bs!1598068 (= lambda!352370 lambda!352348)))

(declare-fun bs!1598069 () Bool)

(assert (= bs!1598069 (and d!2001918 d!2001658)))

(assert (=> bs!1598069 (= lambda!352370 lambda!352334)))

(declare-fun bs!1598070 () Bool)

(assert (= bs!1598070 (and d!2001918 d!2001624)))

(assert (=> bs!1598070 (= lambda!352370 lambda!352332)))

(declare-fun bs!1598071 () Bool)

(assert (= bs!1598071 (and d!2001918 d!2001716)))

(assert (=> bs!1598071 (= lambda!352370 lambda!352342)))

(declare-fun bs!1598073 () Bool)

(assert (= bs!1598073 (and d!2001918 d!2001364)))

(assert (=> bs!1598073 (= lambda!352370 lambda!352283)))

(declare-fun bs!1598074 () Bool)

(assert (= bs!1598074 (and d!2001918 d!2001626)))

(assert (=> bs!1598074 (= lambda!352370 lambda!352333)))

(declare-fun bs!1598076 () Bool)

(assert (= bs!1598076 (and d!2001918 d!2001302)))

(assert (=> bs!1598076 (= lambda!352370 lambda!352276)))

(declare-fun bs!1598078 () Bool)

(assert (= bs!1598078 (and d!2001918 d!2001374)))

(assert (=> bs!1598078 (= lambda!352370 lambda!352287)))

(declare-fun bs!1598079 () Bool)

(assert (= bs!1598079 (and d!2001918 d!2001362)))

(assert (=> bs!1598079 (= lambda!352370 lambda!352282)))

(declare-fun bs!1598081 () Bool)

(assert (= bs!1598081 (and d!2001918 d!2001376)))

(assert (=> bs!1598081 (= lambda!352370 lambda!352290)))

(declare-fun bs!1598082 () Bool)

(assert (= bs!1598082 (and d!2001918 d!2001900)))

(assert (=> bs!1598082 (= lambda!352370 lambda!352364)))

(declare-fun b!6385324 () Bool)

(declare-fun e!3875938 () Bool)

(declare-fun lt!2371372 () Regex!16301)

(assert (=> b!6385324 (= e!3875938 (isEmptyLang!1709 lt!2371372))))

(declare-fun b!6385325 () Bool)

(declare-fun e!3875940 () Bool)

(assert (=> b!6385325 (= e!3875940 e!3875938)))

(declare-fun c!1163689 () Bool)

(assert (=> b!6385325 (= c!1163689 (isEmpty!37212 (t!378807 (unfocusZipperList!1722 zl!343))))))

(declare-fun b!6385326 () Bool)

(declare-fun e!3875943 () Bool)

(assert (=> b!6385326 (= e!3875943 (= lt!2371372 (head!13093 (t!378807 (unfocusZipperList!1722 zl!343)))))))

(declare-fun b!6385328 () Bool)

(assert (=> b!6385328 (= e!3875943 (isUnion!1139 lt!2371372))))

(declare-fun b!6385329 () Bool)

(declare-fun e!3875942 () Regex!16301)

(assert (=> b!6385329 (= e!3875942 (Union!16301 (h!71527 (t!378807 (unfocusZipperList!1722 zl!343))) (generalisedUnion!2145 (t!378807 (t!378807 (unfocusZipperList!1722 zl!343))))))))

(declare-fun b!6385330 () Bool)

(declare-fun e!3875939 () Regex!16301)

(assert (=> b!6385330 (= e!3875939 (h!71527 (t!378807 (unfocusZipperList!1722 zl!343))))))

(declare-fun b!6385331 () Bool)

(declare-fun e!3875941 () Bool)

(assert (=> b!6385331 (= e!3875941 (isEmpty!37212 (t!378807 (t!378807 (unfocusZipperList!1722 zl!343)))))))

(declare-fun b!6385327 () Bool)

(assert (=> b!6385327 (= e!3875938 e!3875943)))

(declare-fun c!1163688 () Bool)

(assert (=> b!6385327 (= c!1163688 (isEmpty!37212 (tail!12178 (t!378807 (unfocusZipperList!1722 zl!343)))))))

(assert (=> d!2001918 e!3875940))

(declare-fun res!2626550 () Bool)

(assert (=> d!2001918 (=> (not res!2626550) (not e!3875940))))

(assert (=> d!2001918 (= res!2626550 (validRegex!8037 lt!2371372))))

(assert (=> d!2001918 (= lt!2371372 e!3875939)))

(declare-fun c!1163691 () Bool)

(assert (=> d!2001918 (= c!1163691 e!3875941)))

(declare-fun res!2626549 () Bool)

(assert (=> d!2001918 (=> (not res!2626549) (not e!3875941))))

(assert (=> d!2001918 (= res!2626549 ((_ is Cons!65079) (t!378807 (unfocusZipperList!1722 zl!343))))))

(assert (=> d!2001918 (forall!15479 (t!378807 (unfocusZipperList!1722 zl!343)) lambda!352370)))

(assert (=> d!2001918 (= (generalisedUnion!2145 (t!378807 (unfocusZipperList!1722 zl!343))) lt!2371372)))

(declare-fun b!6385332 () Bool)

(assert (=> b!6385332 (= e!3875939 e!3875942)))

(declare-fun c!1163690 () Bool)

(assert (=> b!6385332 (= c!1163690 ((_ is Cons!65079) (t!378807 (unfocusZipperList!1722 zl!343))))))

(declare-fun b!6385333 () Bool)

(assert (=> b!6385333 (= e!3875942 EmptyLang!16301)))

(assert (= (and d!2001918 res!2626549) b!6385331))

(assert (= (and d!2001918 c!1163691) b!6385330))

(assert (= (and d!2001918 (not c!1163691)) b!6385332))

(assert (= (and b!6385332 c!1163690) b!6385329))

(assert (= (and b!6385332 (not c!1163690)) b!6385333))

(assert (= (and d!2001918 res!2626550) b!6385325))

(assert (= (and b!6385325 c!1163689) b!6385324))

(assert (= (and b!6385325 (not c!1163689)) b!6385327))

(assert (= (and b!6385327 c!1163688) b!6385326))

(assert (= (and b!6385327 (not c!1163688)) b!6385328))

(declare-fun m!7185116 () Bool)

(assert (=> b!6385329 m!7185116))

(declare-fun m!7185118 () Bool)

(assert (=> b!6385324 m!7185118))

(declare-fun m!7185120 () Bool)

(assert (=> b!6385327 m!7185120))

(assert (=> b!6385327 m!7185120))

(declare-fun m!7185122 () Bool)

(assert (=> b!6385327 m!7185122))

(declare-fun m!7185124 () Bool)

(assert (=> b!6385328 m!7185124))

(declare-fun m!7185126 () Bool)

(assert (=> b!6385326 m!7185126))

(assert (=> b!6385325 m!7183928))

(declare-fun m!7185128 () Bool)

(assert (=> d!2001918 m!7185128))

(declare-fun m!7185130 () Bool)

(assert (=> d!2001918 m!7185130))

(declare-fun m!7185132 () Bool)

(assert (=> b!6385331 m!7185132))

(assert (=> b!6384189 d!2001918))

(declare-fun b!6385334 () Bool)

(declare-fun e!3875947 () Bool)

(declare-fun e!3875945 () Bool)

(assert (=> b!6385334 (= e!3875947 e!3875945)))

(declare-fun res!2626556 () Bool)

(assert (=> b!6385334 (=> res!2626556 e!3875945)))

(declare-fun call!545794 () Bool)

(assert (=> b!6385334 (= res!2626556 call!545794)))

(declare-fun b!6385335 () Bool)

(declare-fun res!2626555 () Bool)

(declare-fun e!3875949 () Bool)

(assert (=> b!6385335 (=> res!2626555 e!3875949)))

(assert (=> b!6385335 (= res!2626555 (not ((_ is ElementMatch!16301) (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152))))))))

(declare-fun e!3875950 () Bool)

(assert (=> b!6385335 (= e!3875950 e!3875949)))

(declare-fun d!2001920 () Bool)

(declare-fun e!3875948 () Bool)

(assert (=> d!2001920 e!3875948))

(declare-fun c!1163692 () Bool)

(assert (=> d!2001920 (= c!1163692 ((_ is EmptyExpr!16301) (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152)))))))

(declare-fun lt!2371373 () Bool)

(declare-fun e!3875946 () Bool)

(assert (=> d!2001920 (= lt!2371373 e!3875946)))

(declare-fun c!1163693 () Bool)

(assert (=> d!2001920 (= c!1163693 (isEmpty!37214 (tail!12179 (_2!36583 lt!2371152))))))

(assert (=> d!2001920 (validRegex!8037 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152))))))

(assert (=> d!2001920 (= (matchR!8484 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152))) (tail!12179 (_2!36583 lt!2371152))) lt!2371373)))

(declare-fun b!6385336 () Bool)

(assert (=> b!6385336 (= e!3875946 (matchR!8484 (derivativeStep!5005 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152))) (head!13094 (tail!12179 (_2!36583 lt!2371152)))) (tail!12179 (tail!12179 (_2!36583 lt!2371152)))))))

(declare-fun b!6385337 () Bool)

(assert (=> b!6385337 (= e!3875948 e!3875950)))

(declare-fun c!1163694 () Bool)

(assert (=> b!6385337 (= c!1163694 ((_ is EmptyLang!16301) (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152)))))))

(declare-fun b!6385338 () Bool)

(assert (=> b!6385338 (= e!3875948 (= lt!2371373 call!545794))))

(declare-fun b!6385339 () Bool)

(assert (=> b!6385339 (= e!3875949 e!3875947)))

(declare-fun res!2626557 () Bool)

(assert (=> b!6385339 (=> (not res!2626557) (not e!3875947))))

(assert (=> b!6385339 (= res!2626557 (not lt!2371373))))

(declare-fun b!6385340 () Bool)

(declare-fun res!2626558 () Bool)

(assert (=> b!6385340 (=> res!2626558 e!3875949)))

(declare-fun e!3875944 () Bool)

(assert (=> b!6385340 (= res!2626558 e!3875944)))

(declare-fun res!2626551 () Bool)

(assert (=> b!6385340 (=> (not res!2626551) (not e!3875944))))

(assert (=> b!6385340 (= res!2626551 lt!2371373)))

(declare-fun b!6385341 () Bool)

(declare-fun res!2626552 () Bool)

(assert (=> b!6385341 (=> (not res!2626552) (not e!3875944))))

(assert (=> b!6385341 (= res!2626552 (isEmpty!37214 (tail!12179 (tail!12179 (_2!36583 lt!2371152)))))))

(declare-fun bm!545789 () Bool)

(assert (=> bm!545789 (= call!545794 (isEmpty!37214 (tail!12179 (_2!36583 lt!2371152))))))

(declare-fun b!6385342 () Bool)

(declare-fun res!2626553 () Bool)

(assert (=> b!6385342 (=> (not res!2626553) (not e!3875944))))

(assert (=> b!6385342 (= res!2626553 (not call!545794))))

(declare-fun b!6385343 () Bool)

(assert (=> b!6385343 (= e!3875946 (nullable!6294 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152)))))))

(declare-fun b!6385344 () Bool)

(assert (=> b!6385344 (= e!3875950 (not lt!2371373))))

(declare-fun b!6385345 () Bool)

(declare-fun res!2626554 () Bool)

(assert (=> b!6385345 (=> res!2626554 e!3875945)))

(assert (=> b!6385345 (= res!2626554 (not (isEmpty!37214 (tail!12179 (tail!12179 (_2!36583 lt!2371152))))))))

(declare-fun b!6385346 () Bool)

(assert (=> b!6385346 (= e!3875944 (= (head!13094 (tail!12179 (_2!36583 lt!2371152))) (c!1163182 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152))))))))

(declare-fun b!6385347 () Bool)

(assert (=> b!6385347 (= e!3875945 (not (= (head!13094 (tail!12179 (_2!36583 lt!2371152))) (c!1163182 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152)))))))))

(assert (= (and d!2001920 c!1163693) b!6385343))

(assert (= (and d!2001920 (not c!1163693)) b!6385336))

(assert (= (and d!2001920 c!1163692) b!6385338))

(assert (= (and d!2001920 (not c!1163692)) b!6385337))

(assert (= (and b!6385337 c!1163694) b!6385344))

(assert (= (and b!6385337 (not c!1163694)) b!6385335))

(assert (= (and b!6385335 (not res!2626555)) b!6385340))

(assert (= (and b!6385340 res!2626551) b!6385342))

(assert (= (and b!6385342 res!2626553) b!6385341))

(assert (= (and b!6385341 res!2626552) b!6385346))

(assert (= (and b!6385340 (not res!2626558)) b!6385339))

(assert (= (and b!6385339 res!2626557) b!6385334))

(assert (= (and b!6385334 (not res!2626556)) b!6385345))

(assert (= (and b!6385345 (not res!2626554)) b!6385347))

(assert (= (or b!6385338 b!6385334 b!6385342) bm!545789))

(assert (=> b!6385336 m!7183872))

(declare-fun m!7185134 () Bool)

(assert (=> b!6385336 m!7185134))

(assert (=> b!6385336 m!7183870))

(assert (=> b!6385336 m!7185134))

(declare-fun m!7185136 () Bool)

(assert (=> b!6385336 m!7185136))

(assert (=> b!6385336 m!7183872))

(declare-fun m!7185138 () Bool)

(assert (=> b!6385336 m!7185138))

(assert (=> b!6385336 m!7185136))

(assert (=> b!6385336 m!7185138))

(declare-fun m!7185140 () Bool)

(assert (=> b!6385336 m!7185140))

(assert (=> bm!545789 m!7183872))

(assert (=> bm!545789 m!7183878))

(assert (=> b!6385341 m!7183872))

(assert (=> b!6385341 m!7185138))

(assert (=> b!6385341 m!7185138))

(declare-fun m!7185142 () Bool)

(assert (=> b!6385341 m!7185142))

(assert (=> b!6385343 m!7183870))

(declare-fun m!7185144 () Bool)

(assert (=> b!6385343 m!7185144))

(assert (=> b!6385346 m!7183872))

(assert (=> b!6385346 m!7185134))

(assert (=> d!2001920 m!7183872))

(assert (=> d!2001920 m!7183878))

(assert (=> d!2001920 m!7183870))

(declare-fun m!7185146 () Bool)

(assert (=> d!2001920 m!7185146))

(assert (=> b!6385345 m!7183872))

(assert (=> b!6385345 m!7185138))

(assert (=> b!6385345 m!7185138))

(assert (=> b!6385345 m!7185142))

(assert (=> b!6385347 m!7183872))

(assert (=> b!6385347 m!7185134))

(assert (=> b!6384135 d!2001920))

(declare-fun b!6385348 () Bool)

(declare-fun e!3875953 () Regex!16301)

(assert (=> b!6385348 (= e!3875953 EmptyLang!16301)))

(declare-fun b!6385349 () Bool)

(declare-fun e!3875952 () Regex!16301)

(declare-fun call!545795 () Regex!16301)

(assert (=> b!6385349 (= e!3875952 (Union!16301 (Concat!25146 call!545795 (regTwo!33114 (regTwo!33114 r!7292))) EmptyLang!16301))))

(declare-fun b!6385350 () Bool)

(declare-fun call!545796 () Regex!16301)

(assert (=> b!6385350 (= e!3875952 (Union!16301 (Concat!25146 call!545796 (regTwo!33114 (regTwo!33114 r!7292))) call!545795))))

(declare-fun b!6385351 () Bool)

(declare-fun e!3875954 () Regex!16301)

(declare-fun call!545798 () Regex!16301)

(declare-fun call!545797 () Regex!16301)

(assert (=> b!6385351 (= e!3875954 (Union!16301 call!545798 call!545797))))

(declare-fun b!6385352 () Bool)

(declare-fun e!3875951 () Regex!16301)

(assert (=> b!6385352 (= e!3875953 e!3875951)))

(declare-fun c!1163696 () Bool)

(assert (=> b!6385352 (= c!1163696 ((_ is ElementMatch!16301) (regTwo!33114 r!7292)))))

(declare-fun bm!545790 () Bool)

(assert (=> bm!545790 (= call!545796 call!545797)))

(declare-fun b!6385353 () Bool)

(declare-fun e!3875955 () Regex!16301)

(assert (=> b!6385353 (= e!3875955 (Concat!25146 call!545796 (regTwo!33114 r!7292)))))

(declare-fun b!6385354 () Bool)

(assert (=> b!6385354 (= e!3875951 (ite (= (head!13094 (_2!36583 lt!2371152)) (c!1163182 (regTwo!33114 r!7292))) EmptyExpr!16301 EmptyLang!16301))))

(declare-fun b!6385355 () Bool)

(assert (=> b!6385355 (= e!3875954 e!3875955)))

(declare-fun c!1163695 () Bool)

(assert (=> b!6385355 (= c!1163695 ((_ is Star!16301) (regTwo!33114 r!7292)))))

(declare-fun c!1163699 () Bool)

(declare-fun c!1163698 () Bool)

(declare-fun bm!545791 () Bool)

(assert (=> bm!545791 (= call!545798 (derivativeStep!5005 (ite c!1163699 (regOne!33115 (regTwo!33114 r!7292)) (ite c!1163698 (regTwo!33114 (regTwo!33114 r!7292)) (regOne!33114 (regTwo!33114 r!7292)))) (head!13094 (_2!36583 lt!2371152))))))

(declare-fun bm!545792 () Bool)

(assert (=> bm!545792 (= call!545797 (derivativeStep!5005 (ite c!1163699 (regTwo!33115 (regTwo!33114 r!7292)) (ite c!1163695 (reg!16630 (regTwo!33114 r!7292)) (regOne!33114 (regTwo!33114 r!7292)))) (head!13094 (_2!36583 lt!2371152))))))

(declare-fun bm!545793 () Bool)

(assert (=> bm!545793 (= call!545795 call!545798)))

(declare-fun b!6385357 () Bool)

(assert (=> b!6385357 (= c!1163698 (nullable!6294 (regOne!33114 (regTwo!33114 r!7292))))))

(assert (=> b!6385357 (= e!3875955 e!3875952)))

(declare-fun d!2001922 () Bool)

(declare-fun lt!2371374 () Regex!16301)

(assert (=> d!2001922 (validRegex!8037 lt!2371374)))

(assert (=> d!2001922 (= lt!2371374 e!3875953)))

(declare-fun c!1163697 () Bool)

(assert (=> d!2001922 (= c!1163697 (or ((_ is EmptyExpr!16301) (regTwo!33114 r!7292)) ((_ is EmptyLang!16301) (regTwo!33114 r!7292))))))

(assert (=> d!2001922 (validRegex!8037 (regTwo!33114 r!7292))))

(assert (=> d!2001922 (= (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 lt!2371152))) lt!2371374)))

(declare-fun b!6385356 () Bool)

(assert (=> b!6385356 (= c!1163699 ((_ is Union!16301) (regTwo!33114 r!7292)))))

(assert (=> b!6385356 (= e!3875951 e!3875954)))

(assert (= (and d!2001922 c!1163697) b!6385348))

(assert (= (and d!2001922 (not c!1163697)) b!6385352))

(assert (= (and b!6385352 c!1163696) b!6385354))

(assert (= (and b!6385352 (not c!1163696)) b!6385356))

(assert (= (and b!6385356 c!1163699) b!6385351))

(assert (= (and b!6385356 (not c!1163699)) b!6385355))

(assert (= (and b!6385355 c!1163695) b!6385353))

(assert (= (and b!6385355 (not c!1163695)) b!6385357))

(assert (= (and b!6385357 c!1163698) b!6385350))

(assert (= (and b!6385357 (not c!1163698)) b!6385349))

(assert (= (or b!6385350 b!6385349) bm!545793))

(assert (= (or b!6385353 b!6385350) bm!545790))

(assert (= (or b!6385351 bm!545790) bm!545792))

(assert (= (or b!6385351 bm!545793) bm!545791))

(assert (=> bm!545791 m!7183868))

(declare-fun m!7185148 () Bool)

(assert (=> bm!545791 m!7185148))

(assert (=> bm!545792 m!7183868))

(declare-fun m!7185150 () Bool)

(assert (=> bm!545792 m!7185150))

(declare-fun m!7185152 () Bool)

(assert (=> b!6385357 m!7185152))

(declare-fun m!7185154 () Bool)

(assert (=> d!2001922 m!7185154))

(assert (=> d!2001922 m!7183882))

(assert (=> b!6384135 d!2001922))

(assert (=> b!6384135 d!2001604))

(assert (=> b!6384135 d!2001800))

(declare-fun d!2001924 () Bool)

(assert (=> d!2001924 (= ($colon$colon!2161 (exprs!6185 lt!2371183) (ite (or c!1163416 c!1163419) (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (h!71527 (exprs!6185 (h!71528 zl!343))))) (Cons!65079 (ite (or c!1163416 c!1163419) (regTwo!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))) (h!71527 (exprs!6185 (h!71528 zl!343)))) (exprs!6185 lt!2371183)))))

(assert (=> bm!545616 d!2001924))

(declare-fun d!2001930 () Bool)

(assert (=> d!2001930 (= (isEmpty!37212 (unfocusZipperList!1722 zl!343)) ((_ is Nil!65079) (unfocusZipperList!1722 zl!343)))))

(assert (=> b!6384185 d!2001930))

(declare-fun b!6385360 () Bool)

(declare-fun e!3875961 () Bool)

(declare-fun e!3875958 () Bool)

(assert (=> b!6385360 (= e!3875961 e!3875958)))

(declare-fun c!1163702 () Bool)

(assert (=> b!6385360 (= c!1163702 ((_ is Union!16301) lt!2371243))))

(declare-fun b!6385361 () Bool)

(declare-fun e!3875959 () Bool)

(declare-fun call!545799 () Bool)

(assert (=> b!6385361 (= e!3875959 call!545799)))

(declare-fun b!6385362 () Bool)

(declare-fun e!3875963 () Bool)

(assert (=> b!6385362 (= e!3875961 e!3875963)))

(declare-fun res!2626563 () Bool)

(assert (=> b!6385362 (= res!2626563 (not (nullable!6294 (reg!16630 lt!2371243))))))

(assert (=> b!6385362 (=> (not res!2626563) (not e!3875963))))

(declare-fun bm!545794 () Bool)

(declare-fun call!545801 () Bool)

(assert (=> bm!545794 (= call!545801 (validRegex!8037 (ite c!1163702 (regOne!33115 lt!2371243) (regOne!33114 lt!2371243))))))

(declare-fun d!2001932 () Bool)

(declare-fun res!2626559 () Bool)

(declare-fun e!3875962 () Bool)

(assert (=> d!2001932 (=> res!2626559 e!3875962)))

(assert (=> d!2001932 (= res!2626559 ((_ is ElementMatch!16301) lt!2371243))))

(assert (=> d!2001932 (= (validRegex!8037 lt!2371243) e!3875962)))

(declare-fun b!6385363 () Bool)

(assert (=> b!6385363 (= e!3875962 e!3875961)))

(declare-fun c!1163701 () Bool)

(assert (=> b!6385363 (= c!1163701 ((_ is Star!16301) lt!2371243))))

(declare-fun b!6385364 () Bool)

(declare-fun e!3875957 () Bool)

(declare-fun e!3875960 () Bool)

(assert (=> b!6385364 (= e!3875957 e!3875960)))

(declare-fun res!2626560 () Bool)

(assert (=> b!6385364 (=> (not res!2626560) (not e!3875960))))

(assert (=> b!6385364 (= res!2626560 call!545801)))

(declare-fun bm!545795 () Bool)

(declare-fun call!545800 () Bool)

(assert (=> bm!545795 (= call!545799 call!545800)))

(declare-fun b!6385365 () Bool)

(assert (=> b!6385365 (= e!3875963 call!545800)))

(declare-fun bm!545796 () Bool)

(assert (=> bm!545796 (= call!545800 (validRegex!8037 (ite c!1163701 (reg!16630 lt!2371243) (ite c!1163702 (regTwo!33115 lt!2371243) (regTwo!33114 lt!2371243)))))))

(declare-fun b!6385366 () Bool)

(declare-fun res!2626561 () Bool)

(assert (=> b!6385366 (=> (not res!2626561) (not e!3875959))))

(assert (=> b!6385366 (= res!2626561 call!545801)))

(assert (=> b!6385366 (= e!3875958 e!3875959)))

(declare-fun b!6385367 () Bool)

(declare-fun res!2626562 () Bool)

(assert (=> b!6385367 (=> res!2626562 e!3875957)))

(assert (=> b!6385367 (= res!2626562 (not ((_ is Concat!25146) lt!2371243)))))

(assert (=> b!6385367 (= e!3875958 e!3875957)))

(declare-fun b!6385368 () Bool)

(assert (=> b!6385368 (= e!3875960 call!545799)))

(assert (= (and d!2001932 (not res!2626559)) b!6385363))

(assert (= (and b!6385363 c!1163701) b!6385362))

(assert (= (and b!6385363 (not c!1163701)) b!6385360))

(assert (= (and b!6385362 res!2626563) b!6385365))

(assert (= (and b!6385360 c!1163702) b!6385366))

(assert (= (and b!6385360 (not c!1163702)) b!6385367))

(assert (= (and b!6385366 res!2626561) b!6385361))

(assert (= (and b!6385367 (not res!2626562)) b!6385364))

(assert (= (and b!6385364 res!2626560) b!6385368))

(assert (= (or b!6385361 b!6385368) bm!545795))

(assert (= (or b!6385366 b!6385364) bm!545794))

(assert (= (or b!6385365 bm!545795) bm!545796))

(declare-fun m!7185168 () Bool)

(assert (=> b!6385362 m!7185168))

(declare-fun m!7185170 () Bool)

(assert (=> bm!545794 m!7185170))

(declare-fun m!7185172 () Bool)

(assert (=> bm!545796 m!7185172))

(assert (=> d!2001302 d!2001932))

(declare-fun d!2001936 () Bool)

(declare-fun res!2626564 () Bool)

(declare-fun e!3875964 () Bool)

(assert (=> d!2001936 (=> res!2626564 e!3875964)))

(assert (=> d!2001936 (= res!2626564 ((_ is Nil!65079) (exprs!6185 (h!71528 zl!343))))))

(assert (=> d!2001936 (= (forall!15479 (exprs!6185 (h!71528 zl!343)) lambda!352276) e!3875964)))

(declare-fun b!6385369 () Bool)

(declare-fun e!3875965 () Bool)

(assert (=> b!6385369 (= e!3875964 e!3875965)))

(declare-fun res!2626565 () Bool)

(assert (=> b!6385369 (=> (not res!2626565) (not e!3875965))))

(assert (=> b!6385369 (= res!2626565 (dynLambda!25821 lambda!352276 (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6385370 () Bool)

(assert (=> b!6385370 (= e!3875965 (forall!15479 (t!378807 (exprs!6185 (h!71528 zl!343))) lambda!352276))))

(assert (= (and d!2001936 (not res!2626564)) b!6385369))

(assert (= (and b!6385369 res!2626565) b!6385370))

(declare-fun b_lambda!242603 () Bool)

(assert (=> (not b_lambda!242603) (not b!6385369)))

(declare-fun m!7185174 () Bool)

(assert (=> b!6385369 m!7185174))

(declare-fun m!7185178 () Bool)

(assert (=> b!6385370 m!7185178))

(assert (=> d!2001302 d!2001936))

(declare-fun b!6385371 () Bool)

(declare-fun e!3875969 () Bool)

(declare-fun e!3875967 () Bool)

(assert (=> b!6385371 (= e!3875969 e!3875967)))

(declare-fun res!2626571 () Bool)

(assert (=> b!6385371 (=> res!2626571 e!3875967)))

(declare-fun call!545802 () Bool)

(assert (=> b!6385371 (= res!2626571 call!545802)))

(declare-fun b!6385372 () Bool)

(declare-fun res!2626570 () Bool)

(declare-fun e!3875971 () Bool)

(assert (=> b!6385372 (=> res!2626570 e!3875971)))

(assert (=> b!6385372 (= res!2626570 (not ((_ is ElementMatch!16301) (regTwo!33114 r!7292))))))

(declare-fun e!3875972 () Bool)

(assert (=> b!6385372 (= e!3875972 e!3875971)))

(declare-fun d!2001938 () Bool)

(declare-fun e!3875970 () Bool)

(assert (=> d!2001938 e!3875970))

(declare-fun c!1163703 () Bool)

(assert (=> d!2001938 (= c!1163703 ((_ is EmptyExpr!16301) (regTwo!33114 r!7292)))))

(declare-fun lt!2371375 () Bool)

(declare-fun e!3875968 () Bool)

(assert (=> d!2001938 (= lt!2371375 e!3875968)))

(declare-fun c!1163704 () Bool)

(assert (=> d!2001938 (= c!1163704 (isEmpty!37214 (_2!36583 (get!22535 lt!2371286))))))

(assert (=> d!2001938 (validRegex!8037 (regTwo!33114 r!7292))))

(assert (=> d!2001938 (= (matchR!8484 (regTwo!33114 r!7292) (_2!36583 (get!22535 lt!2371286))) lt!2371375)))

(declare-fun b!6385373 () Bool)

(assert (=> b!6385373 (= e!3875968 (matchR!8484 (derivativeStep!5005 (regTwo!33114 r!7292) (head!13094 (_2!36583 (get!22535 lt!2371286)))) (tail!12179 (_2!36583 (get!22535 lt!2371286)))))))

(declare-fun b!6385374 () Bool)

(assert (=> b!6385374 (= e!3875970 e!3875972)))

(declare-fun c!1163705 () Bool)

(assert (=> b!6385374 (= c!1163705 ((_ is EmptyLang!16301) (regTwo!33114 r!7292)))))

(declare-fun b!6385375 () Bool)

(assert (=> b!6385375 (= e!3875970 (= lt!2371375 call!545802))))

(declare-fun b!6385376 () Bool)

(assert (=> b!6385376 (= e!3875971 e!3875969)))

(declare-fun res!2626572 () Bool)

(assert (=> b!6385376 (=> (not res!2626572) (not e!3875969))))

(assert (=> b!6385376 (= res!2626572 (not lt!2371375))))

(declare-fun b!6385377 () Bool)

(declare-fun res!2626573 () Bool)

(assert (=> b!6385377 (=> res!2626573 e!3875971)))

(declare-fun e!3875966 () Bool)

(assert (=> b!6385377 (= res!2626573 e!3875966)))

(declare-fun res!2626566 () Bool)

(assert (=> b!6385377 (=> (not res!2626566) (not e!3875966))))

(assert (=> b!6385377 (= res!2626566 lt!2371375)))

(declare-fun b!6385378 () Bool)

(declare-fun res!2626567 () Bool)

(assert (=> b!6385378 (=> (not res!2626567) (not e!3875966))))

(assert (=> b!6385378 (= res!2626567 (isEmpty!37214 (tail!12179 (_2!36583 (get!22535 lt!2371286)))))))

(declare-fun bm!545797 () Bool)

(assert (=> bm!545797 (= call!545802 (isEmpty!37214 (_2!36583 (get!22535 lt!2371286))))))

(declare-fun b!6385379 () Bool)

(declare-fun res!2626568 () Bool)

(assert (=> b!6385379 (=> (not res!2626568) (not e!3875966))))

(assert (=> b!6385379 (= res!2626568 (not call!545802))))

(declare-fun b!6385380 () Bool)

(assert (=> b!6385380 (= e!3875968 (nullable!6294 (regTwo!33114 r!7292)))))

(declare-fun b!6385381 () Bool)

(assert (=> b!6385381 (= e!3875972 (not lt!2371375))))

(declare-fun b!6385382 () Bool)

(declare-fun res!2626569 () Bool)

(assert (=> b!6385382 (=> res!2626569 e!3875967)))

(assert (=> b!6385382 (= res!2626569 (not (isEmpty!37214 (tail!12179 (_2!36583 (get!22535 lt!2371286))))))))

(declare-fun b!6385383 () Bool)

(assert (=> b!6385383 (= e!3875966 (= (head!13094 (_2!36583 (get!22535 lt!2371286))) (c!1163182 (regTwo!33114 r!7292))))))

(declare-fun b!6385384 () Bool)

(assert (=> b!6385384 (= e!3875967 (not (= (head!13094 (_2!36583 (get!22535 lt!2371286))) (c!1163182 (regTwo!33114 r!7292)))))))

(assert (= (and d!2001938 c!1163704) b!6385380))

(assert (= (and d!2001938 (not c!1163704)) b!6385373))

(assert (= (and d!2001938 c!1163703) b!6385375))

(assert (= (and d!2001938 (not c!1163703)) b!6385374))

(assert (= (and b!6385374 c!1163705) b!6385381))

(assert (= (and b!6385374 (not c!1163705)) b!6385372))

(assert (= (and b!6385372 (not res!2626570)) b!6385377))

(assert (= (and b!6385377 res!2626566) b!6385379))

(assert (= (and b!6385379 res!2626568) b!6385378))

(assert (= (and b!6385378 res!2626567) b!6385383))

(assert (= (and b!6385377 (not res!2626573)) b!6385376))

(assert (= (and b!6385376 res!2626572) b!6385371))

(assert (= (and b!6385371 (not res!2626571)) b!6385382))

(assert (= (and b!6385382 (not res!2626569)) b!6385384))

(assert (= (or b!6385375 b!6385371 b!6385379) bm!545797))

(declare-fun m!7185180 () Bool)

(assert (=> b!6385373 m!7185180))

(assert (=> b!6385373 m!7185180))

(declare-fun m!7185182 () Bool)

(assert (=> b!6385373 m!7185182))

(declare-fun m!7185184 () Bool)

(assert (=> b!6385373 m!7185184))

(assert (=> b!6385373 m!7185182))

(assert (=> b!6385373 m!7185184))

(declare-fun m!7185186 () Bool)

(assert (=> b!6385373 m!7185186))

(declare-fun m!7185188 () Bool)

(assert (=> bm!545797 m!7185188))

(assert (=> b!6385378 m!7185184))

(assert (=> b!6385378 m!7185184))

(declare-fun m!7185190 () Bool)

(assert (=> b!6385378 m!7185190))

(assert (=> b!6385380 m!7183880))

(assert (=> b!6385383 m!7185180))

(assert (=> d!2001938 m!7185188))

(assert (=> d!2001938 m!7183882))

(assert (=> b!6385382 m!7185184))

(assert (=> b!6385382 m!7185184))

(assert (=> b!6385382 m!7185190))

(assert (=> b!6385384 m!7185180))

(assert (=> b!6384315 d!2001938))

(assert (=> b!6384315 d!2001536))

(declare-fun d!2001942 () Bool)

(assert (=> d!2001942 (= (nullable!6294 (reg!16630 r!7292)) (nullableFct!2240 (reg!16630 r!7292)))))

(declare-fun bs!1598094 () Bool)

(assert (= bs!1598094 d!2001942))

(declare-fun m!7185192 () Bool)

(assert (=> bs!1598094 m!7185192))

(assert (=> b!6384220 d!2001942))

(declare-fun d!2001944 () Bool)

(assert (=> d!2001944 (= (nullable!6294 lt!2371176) (nullableFct!2240 lt!2371176))))

(declare-fun bs!1598095 () Bool)

(assert (= bs!1598095 d!2001944))

(declare-fun m!7185194 () Bool)

(assert (=> bs!1598095 m!7185194))

(assert (=> b!6384344 d!2001944))

(declare-fun b!6385385 () Bool)

(declare-fun e!3875977 () Bool)

(declare-fun e!3875974 () Bool)

(assert (=> b!6385385 (= e!3875977 e!3875974)))

(declare-fun c!1163707 () Bool)

(assert (=> b!6385385 (= c!1163707 ((_ is Union!16301) lt!2371269))))

(declare-fun b!6385386 () Bool)

(declare-fun e!3875975 () Bool)

(declare-fun call!545803 () Bool)

(assert (=> b!6385386 (= e!3875975 call!545803)))

(declare-fun b!6385387 () Bool)

(declare-fun e!3875979 () Bool)

(assert (=> b!6385387 (= e!3875977 e!3875979)))

(declare-fun res!2626578 () Bool)

(assert (=> b!6385387 (= res!2626578 (not (nullable!6294 (reg!16630 lt!2371269))))))

(assert (=> b!6385387 (=> (not res!2626578) (not e!3875979))))

(declare-fun bm!545798 () Bool)

(declare-fun call!545805 () Bool)

(assert (=> bm!545798 (= call!545805 (validRegex!8037 (ite c!1163707 (regOne!33115 lt!2371269) (regOne!33114 lt!2371269))))))

(declare-fun d!2001946 () Bool)

(declare-fun res!2626574 () Bool)

(declare-fun e!3875978 () Bool)

(assert (=> d!2001946 (=> res!2626574 e!3875978)))

(assert (=> d!2001946 (= res!2626574 ((_ is ElementMatch!16301) lt!2371269))))

(assert (=> d!2001946 (= (validRegex!8037 lt!2371269) e!3875978)))

(declare-fun b!6385388 () Bool)

(assert (=> b!6385388 (= e!3875978 e!3875977)))

(declare-fun c!1163706 () Bool)

(assert (=> b!6385388 (= c!1163706 ((_ is Star!16301) lt!2371269))))

(declare-fun b!6385389 () Bool)

(declare-fun e!3875973 () Bool)

(declare-fun e!3875976 () Bool)

(assert (=> b!6385389 (= e!3875973 e!3875976)))

(declare-fun res!2626575 () Bool)

(assert (=> b!6385389 (=> (not res!2626575) (not e!3875976))))

(assert (=> b!6385389 (= res!2626575 call!545805)))

(declare-fun bm!545799 () Bool)

(declare-fun call!545804 () Bool)

(assert (=> bm!545799 (= call!545803 call!545804)))

(declare-fun b!6385390 () Bool)

(assert (=> b!6385390 (= e!3875979 call!545804)))

(declare-fun bm!545800 () Bool)

(assert (=> bm!545800 (= call!545804 (validRegex!8037 (ite c!1163706 (reg!16630 lt!2371269) (ite c!1163707 (regTwo!33115 lt!2371269) (regTwo!33114 lt!2371269)))))))

(declare-fun b!6385391 () Bool)

(declare-fun res!2626576 () Bool)

(assert (=> b!6385391 (=> (not res!2626576) (not e!3875975))))

(assert (=> b!6385391 (= res!2626576 call!545805)))

(assert (=> b!6385391 (= e!3875974 e!3875975)))

(declare-fun b!6385392 () Bool)

(declare-fun res!2626577 () Bool)

(assert (=> b!6385392 (=> res!2626577 e!3875973)))

(assert (=> b!6385392 (= res!2626577 (not ((_ is Concat!25146) lt!2371269)))))

(assert (=> b!6385392 (= e!3875974 e!3875973)))

(declare-fun b!6385393 () Bool)

(assert (=> b!6385393 (= e!3875976 call!545803)))

(assert (= (and d!2001946 (not res!2626574)) b!6385388))

(assert (= (and b!6385388 c!1163706) b!6385387))

(assert (= (and b!6385388 (not c!1163706)) b!6385385))

(assert (= (and b!6385387 res!2626578) b!6385390))

(assert (= (and b!6385385 c!1163707) b!6385391))

(assert (= (and b!6385385 (not c!1163707)) b!6385392))

(assert (= (and b!6385391 res!2626576) b!6385386))

(assert (= (and b!6385392 (not res!2626577)) b!6385389))

(assert (= (and b!6385389 res!2626575) b!6385393))

(assert (= (or b!6385386 b!6385393) bm!545799))

(assert (= (or b!6385391 b!6385389) bm!545798))

(assert (= (or b!6385390 bm!545799) bm!545800))

(declare-fun m!7185196 () Bool)

(assert (=> b!6385387 m!7185196))

(declare-fun m!7185198 () Bool)

(assert (=> bm!545798 m!7185198))

(declare-fun m!7185200 () Bool)

(assert (=> bm!545800 m!7185200))

(assert (=> d!2001380 d!2001946))

(declare-fun bs!1598097 () Bool)

(declare-fun d!2001948 () Bool)

(assert (= bs!1598097 (and d!2001948 d!2001726)))

(declare-fun lambda!352373 () Int)

(assert (=> bs!1598097 (= lambda!352373 lambda!352344)))

(declare-fun bs!1598098 () Bool)

(assert (= bs!1598098 (and d!2001948 d!2001366)))

(assert (=> bs!1598098 (= lambda!352373 lambda!352284)))

(declare-fun bs!1598099 () Bool)

(assert (= bs!1598099 (and d!2001948 d!2001698)))

(assert (=> bs!1598099 (= lambda!352373 lambda!352338)))

(declare-fun bs!1598100 () Bool)

(assert (= bs!1598100 (and d!2001948 d!2001794)))

(assert (=> bs!1598100 (= lambda!352373 lambda!352348)))

(declare-fun bs!1598101 () Bool)

(assert (= bs!1598101 (and d!2001948 d!2001658)))

(assert (=> bs!1598101 (= lambda!352373 lambda!352334)))

(declare-fun bs!1598102 () Bool)

(assert (= bs!1598102 (and d!2001948 d!2001624)))

(assert (=> bs!1598102 (= lambda!352373 lambda!352332)))

(declare-fun bs!1598103 () Bool)

(assert (= bs!1598103 (and d!2001948 d!2001716)))

(assert (=> bs!1598103 (= lambda!352373 lambda!352342)))

(declare-fun bs!1598104 () Bool)

(assert (= bs!1598104 (and d!2001948 d!2001364)))

(assert (=> bs!1598104 (= lambda!352373 lambda!352283)))

(declare-fun bs!1598105 () Bool)

(assert (= bs!1598105 (and d!2001948 d!2001918)))

(assert (=> bs!1598105 (= lambda!352373 lambda!352370)))

(declare-fun bs!1598106 () Bool)

(assert (= bs!1598106 (and d!2001948 d!2001626)))

(assert (=> bs!1598106 (= lambda!352373 lambda!352333)))

(declare-fun bs!1598107 () Bool)

(assert (= bs!1598107 (and d!2001948 d!2001302)))

(assert (=> bs!1598107 (= lambda!352373 lambda!352276)))

(declare-fun bs!1598108 () Bool)

(assert (= bs!1598108 (and d!2001948 d!2001374)))

(assert (=> bs!1598108 (= lambda!352373 lambda!352287)))

(declare-fun bs!1598109 () Bool)

(assert (= bs!1598109 (and d!2001948 d!2001362)))

(assert (=> bs!1598109 (= lambda!352373 lambda!352282)))

(declare-fun bs!1598110 () Bool)

(assert (= bs!1598110 (and d!2001948 d!2001376)))

(assert (=> bs!1598110 (= lambda!352373 lambda!352290)))

(declare-fun bs!1598111 () Bool)

(assert (= bs!1598111 (and d!2001948 d!2001900)))

(assert (=> bs!1598111 (= lambda!352373 lambda!352364)))

(declare-fun b!6385401 () Bool)

(declare-fun e!3875985 () Bool)

(declare-fun lt!2371376 () Regex!16301)

(assert (=> b!6385401 (= e!3875985 (isEmptyLang!1709 lt!2371376))))

(declare-fun b!6385402 () Bool)

(declare-fun e!3875987 () Bool)

(assert (=> b!6385402 (= e!3875987 e!3875985)))

(declare-fun c!1163710 () Bool)

(assert (=> b!6385402 (= c!1163710 (isEmpty!37212 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080))))))

(declare-fun b!6385403 () Bool)

(declare-fun e!3875992 () Bool)

(assert (=> b!6385403 (= e!3875992 (= lt!2371376 (head!13093 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080)))))))

(declare-fun b!6385405 () Bool)

(assert (=> b!6385405 (= e!3875992 (isUnion!1139 lt!2371376))))

(declare-fun b!6385406 () Bool)

(declare-fun e!3875991 () Regex!16301)

(assert (=> b!6385406 (= e!3875991 (Union!16301 (h!71527 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080))) (generalisedUnion!2145 (t!378807 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080))))))))

(declare-fun b!6385407 () Bool)

(declare-fun e!3875986 () Regex!16301)

(assert (=> b!6385407 (= e!3875986 (h!71527 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080))))))

(declare-fun b!6385408 () Bool)

(declare-fun e!3875990 () Bool)

(assert (=> b!6385408 (= e!3875990 (isEmpty!37212 (t!378807 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080)))))))

(declare-fun b!6385404 () Bool)

(assert (=> b!6385404 (= e!3875985 e!3875992)))

(declare-fun c!1163709 () Bool)

(assert (=> b!6385404 (= c!1163709 (isEmpty!37212 (tail!12178 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080)))))))

(assert (=> d!2001948 e!3875987))

(declare-fun res!2626584 () Bool)

(assert (=> d!2001948 (=> (not res!2626584) (not e!3875987))))

(assert (=> d!2001948 (= res!2626584 (validRegex!8037 lt!2371376))))

(assert (=> d!2001948 (= lt!2371376 e!3875986)))

(declare-fun c!1163713 () Bool)

(assert (=> d!2001948 (= c!1163713 e!3875990)))

(declare-fun res!2626583 () Bool)

(assert (=> d!2001948 (=> (not res!2626583) (not e!3875990))))

(assert (=> d!2001948 (= res!2626583 ((_ is Cons!65079) (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080))))))

(assert (=> d!2001948 (forall!15479 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080)) lambda!352373)))

(assert (=> d!2001948 (= (generalisedUnion!2145 (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080))) lt!2371376)))

(declare-fun b!6385409 () Bool)

(assert (=> b!6385409 (= e!3875986 e!3875991)))

(declare-fun c!1163711 () Bool)

(assert (=> b!6385409 (= c!1163711 ((_ is Cons!65079) (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080))))))

(declare-fun b!6385410 () Bool)

(assert (=> b!6385410 (= e!3875991 EmptyLang!16301)))

(assert (= (and d!2001948 res!2626583) b!6385408))

(assert (= (and d!2001948 c!1163713) b!6385407))

(assert (= (and d!2001948 (not c!1163713)) b!6385409))

(assert (= (and b!6385409 c!1163711) b!6385406))

(assert (= (and b!6385409 (not c!1163711)) b!6385410))

(assert (= (and d!2001948 res!2626584) b!6385402))

(assert (= (and b!6385402 c!1163710) b!6385401))

(assert (= (and b!6385402 (not c!1163710)) b!6385404))

(assert (= (and b!6385404 c!1163709) b!6385403))

(assert (= (and b!6385404 (not c!1163709)) b!6385405))

(declare-fun m!7185214 () Bool)

(assert (=> b!6385406 m!7185214))

(declare-fun m!7185216 () Bool)

(assert (=> b!6385401 m!7185216))

(assert (=> b!6385404 m!7183942))

(declare-fun m!7185218 () Bool)

(assert (=> b!6385404 m!7185218))

(assert (=> b!6385404 m!7185218))

(declare-fun m!7185220 () Bool)

(assert (=> b!6385404 m!7185220))

(declare-fun m!7185222 () Bool)

(assert (=> b!6385405 m!7185222))

(assert (=> b!6385403 m!7183942))

(declare-fun m!7185226 () Bool)

(assert (=> b!6385403 m!7185226))

(assert (=> b!6385402 m!7183942))

(declare-fun m!7185228 () Bool)

(assert (=> b!6385402 m!7185228))

(declare-fun m!7185230 () Bool)

(assert (=> d!2001948 m!7185230))

(assert (=> d!2001948 m!7183942))

(declare-fun m!7185232 () Bool)

(assert (=> d!2001948 m!7185232))

(declare-fun m!7185234 () Bool)

(assert (=> b!6385408 m!7185234))

(assert (=> d!2001380 d!2001948))

(declare-fun bs!1598118 () Bool)

(declare-fun d!2001958 () Bool)

(assert (= bs!1598118 (and d!2001958 d!2001726)))

(declare-fun lambda!352375 () Int)

(assert (=> bs!1598118 (= lambda!352375 lambda!352344)))

(declare-fun bs!1598119 () Bool)

(assert (= bs!1598119 (and d!2001958 d!2001366)))

(assert (=> bs!1598119 (= lambda!352375 lambda!352284)))

(declare-fun bs!1598120 () Bool)

(assert (= bs!1598120 (and d!2001958 d!2001698)))

(assert (=> bs!1598120 (= lambda!352375 lambda!352338)))

(declare-fun bs!1598121 () Bool)

(assert (= bs!1598121 (and d!2001958 d!2001794)))

(assert (=> bs!1598121 (= lambda!352375 lambda!352348)))

(declare-fun bs!1598122 () Bool)

(assert (= bs!1598122 (and d!2001958 d!2001948)))

(assert (=> bs!1598122 (= lambda!352375 lambda!352373)))

(declare-fun bs!1598123 () Bool)

(assert (= bs!1598123 (and d!2001958 d!2001658)))

(assert (=> bs!1598123 (= lambda!352375 lambda!352334)))

(declare-fun bs!1598124 () Bool)

(assert (= bs!1598124 (and d!2001958 d!2001624)))

(assert (=> bs!1598124 (= lambda!352375 lambda!352332)))

(declare-fun bs!1598126 () Bool)

(assert (= bs!1598126 (and d!2001958 d!2001716)))

(assert (=> bs!1598126 (= lambda!352375 lambda!352342)))

(declare-fun bs!1598127 () Bool)

(assert (= bs!1598127 (and d!2001958 d!2001364)))

(assert (=> bs!1598127 (= lambda!352375 lambda!352283)))

(declare-fun bs!1598129 () Bool)

(assert (= bs!1598129 (and d!2001958 d!2001918)))

(assert (=> bs!1598129 (= lambda!352375 lambda!352370)))

(declare-fun bs!1598130 () Bool)

(assert (= bs!1598130 (and d!2001958 d!2001626)))

(assert (=> bs!1598130 (= lambda!352375 lambda!352333)))

(declare-fun bs!1598132 () Bool)

(assert (= bs!1598132 (and d!2001958 d!2001302)))

(assert (=> bs!1598132 (= lambda!352375 lambda!352276)))

(declare-fun bs!1598133 () Bool)

(assert (= bs!1598133 (and d!2001958 d!2001374)))

(assert (=> bs!1598133 (= lambda!352375 lambda!352287)))

(declare-fun bs!1598135 () Bool)

(assert (= bs!1598135 (and d!2001958 d!2001362)))

(assert (=> bs!1598135 (= lambda!352375 lambda!352282)))

(declare-fun bs!1598137 () Bool)

(assert (= bs!1598137 (and d!2001958 d!2001376)))

(assert (=> bs!1598137 (= lambda!352375 lambda!352290)))

(declare-fun bs!1598138 () Bool)

(assert (= bs!1598138 (and d!2001958 d!2001900)))

(assert (=> bs!1598138 (= lambda!352375 lambda!352364)))

(declare-fun lt!2371377 () List!65203)

(assert (=> d!2001958 (forall!15479 lt!2371377 lambda!352375)))

(declare-fun e!3876001 () List!65203)

(assert (=> d!2001958 (= lt!2371377 e!3876001)))

(declare-fun c!1163719 () Bool)

(assert (=> d!2001958 (= c!1163719 ((_ is Cons!65080) (Cons!65080 lt!2371174 Nil!65080)))))

(assert (=> d!2001958 (= (unfocusZipperList!1722 (Cons!65080 lt!2371174 Nil!65080)) lt!2371377)))

(declare-fun b!6385426 () Bool)

(assert (=> b!6385426 (= e!3876001 (Cons!65079 (generalisedConcat!1898 (exprs!6185 (h!71528 (Cons!65080 lt!2371174 Nil!65080)))) (unfocusZipperList!1722 (t!378808 (Cons!65080 lt!2371174 Nil!65080)))))))

(declare-fun b!6385427 () Bool)

(assert (=> b!6385427 (= e!3876001 Nil!65079)))

(assert (= (and d!2001958 c!1163719) b!6385426))

(assert (= (and d!2001958 (not c!1163719)) b!6385427))

(declare-fun m!7185236 () Bool)

(assert (=> d!2001958 m!7185236))

(declare-fun m!7185238 () Bool)

(assert (=> b!6385426 m!7185238))

(declare-fun m!7185240 () Bool)

(assert (=> b!6385426 m!7185240))

(assert (=> d!2001380 d!2001958))

(assert (=> bs!1597681 d!2001452))

(declare-fun b!6385428 () Bool)

(declare-fun e!3876003 () (InoxSet Context!11370))

(declare-fun call!545811 () (InoxSet Context!11370))

(assert (=> b!6385428 (= e!3876003 call!545811)))

(declare-fun b!6385429 () Bool)

(declare-fun e!3876004 () Bool)

(assert (=> b!6385429 (= e!3876004 (nullable!6294 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371183)))))))))

(declare-fun bm!545806 () Bool)

(assert (=> bm!545806 (= call!545811 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371183))))) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371183)))))) (h!71526 s!2326)))))

(declare-fun e!3876002 () (InoxSet Context!11370))

(declare-fun b!6385431 () Bool)

(assert (=> b!6385431 (= e!3876002 ((_ map or) call!545811 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371183)))))) (h!71526 s!2326))))))

(declare-fun b!6385432 () Bool)

(assert (=> b!6385432 (= e!3876002 e!3876003)))

(declare-fun c!1163721 () Bool)

(assert (=> b!6385432 (= c!1163721 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371183))))))))

(declare-fun d!2001960 () Bool)

(declare-fun c!1163720 () Bool)

(assert (=> d!2001960 (= c!1163720 e!3876004)))

(declare-fun res!2626589 () Bool)

(assert (=> d!2001960 (=> (not res!2626589) (not e!3876004))))

(assert (=> d!2001960 (= res!2626589 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371183))))))))

(assert (=> d!2001960 (= (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 lt!2371183))) (h!71526 s!2326)) e!3876002)))

(declare-fun b!6385430 () Bool)

(assert (=> b!6385430 (= e!3876003 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001960 res!2626589) b!6385429))

(assert (= (and d!2001960 c!1163720) b!6385431))

(assert (= (and d!2001960 (not c!1163720)) b!6385432))

(assert (= (and b!6385432 c!1163721) b!6385428))

(assert (= (and b!6385432 (not c!1163721)) b!6385430))

(assert (= (or b!6385431 b!6385428) bm!545806))

(declare-fun m!7185242 () Bool)

(assert (=> b!6385429 m!7185242))

(declare-fun m!7185244 () Bool)

(assert (=> bm!545806 m!7185244))

(declare-fun m!7185246 () Bool)

(assert (=> b!6385431 m!7185246))

(assert (=> b!6384412 d!2001960))

(declare-fun b!6385433 () Bool)

(declare-fun e!3876006 () (InoxSet Context!11370))

(declare-fun call!545812 () (InoxSet Context!11370))

(assert (=> b!6385433 (= e!3876006 call!545812)))

(declare-fun b!6385434 () Bool)

(declare-fun e!3876007 () Bool)

(assert (=> b!6385434 (= e!3876007 (nullable!6294 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))))))))

(declare-fun bm!545807 () Bool)

(assert (=> bm!545807 (= call!545812 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))))) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))))) (h!71526 s!2326)))))

(declare-fun e!3876005 () (InoxSet Context!11370))

(declare-fun b!6385436 () Bool)

(assert (=> b!6385436 (= e!3876005 ((_ map or) call!545812 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343))))))))))) (h!71526 s!2326))))))

(declare-fun b!6385437 () Bool)

(assert (=> b!6385437 (= e!3876005 e!3876006)))

(declare-fun c!1163723 () Bool)

(assert (=> b!6385437 (= c!1163723 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))))))))

(declare-fun d!2001962 () Bool)

(declare-fun c!1163722 () Bool)

(assert (=> d!2001962 (= c!1163722 e!3876007)))

(declare-fun res!2626590 () Bool)

(assert (=> d!2001962 (=> (not res!2626590) (not e!3876007))))

(assert (=> d!2001962 (= res!2626590 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))))))))

(assert (=> d!2001962 (= (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (Cons!65079 (h!71527 (exprs!6185 (h!71528 zl!343))) (t!378807 (exprs!6185 (h!71528 zl!343)))))))) (h!71526 s!2326)) e!3876005)))

(declare-fun b!6385435 () Bool)

(assert (=> b!6385435 (= e!3876006 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001962 res!2626590) b!6385434))

(assert (= (and d!2001962 c!1163722) b!6385436))

(assert (= (and d!2001962 (not c!1163722)) b!6385437))

(assert (= (and b!6385437 c!1163723) b!6385433))

(assert (= (and b!6385437 (not c!1163723)) b!6385435))

(assert (= (or b!6385436 b!6385433) bm!545807))

(declare-fun m!7185248 () Bool)

(assert (=> b!6385434 m!7185248))

(declare-fun m!7185250 () Bool)

(assert (=> bm!545807 m!7185250))

(declare-fun m!7185252 () Bool)

(assert (=> b!6385436 m!7185252))

(assert (=> b!6384407 d!2001962))

(assert (=> b!6384281 d!2001492))

(assert (=> b!6384281 d!2001494))

(declare-fun b!6385438 () Bool)

(declare-fun e!3876009 () (InoxSet Context!11370))

(declare-fun call!545813 () (InoxSet Context!11370))

(assert (=> b!6385438 (= e!3876009 call!545813)))

(declare-fun b!6385439 () Bool)

(declare-fun e!3876010 () Bool)

(assert (=> b!6385439 (= e!3876010 (nullable!6294 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343))))))))))

(declare-fun bm!545808 () Bool)

(assert (=> bm!545808 (= call!545813 (derivationStepZipperDown!1549 (h!71527 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))))) (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343))))))) (h!71526 s!2326)))))

(declare-fun b!6385441 () Bool)

(declare-fun e!3876008 () (InoxSet Context!11370))

(assert (=> b!6385441 (= e!3876008 ((_ map or) call!545813 (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343))))))) (h!71526 s!2326))))))

(declare-fun b!6385442 () Bool)

(assert (=> b!6385442 (= e!3876008 e!3876009)))

(declare-fun c!1163725 () Bool)

(assert (=> b!6385442 (= c!1163725 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))))))))

(declare-fun d!2001964 () Bool)

(declare-fun c!1163724 () Bool)

(assert (=> d!2001964 (= c!1163724 e!3876010)))

(declare-fun res!2626591 () Bool)

(assert (=> d!2001964 (=> (not res!2626591) (not e!3876010))))

(assert (=> d!2001964 (= res!2626591 ((_ is Cons!65079) (exprs!6185 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))))))))

(assert (=> d!2001964 (= (derivationStepZipperUp!1475 (Context!11371 (t!378807 (exprs!6185 (h!71528 zl!343)))) (h!71526 s!2326)) e!3876008)))

(declare-fun b!6385440 () Bool)

(assert (=> b!6385440 (= e!3876009 ((as const (Array Context!11370 Bool)) false))))

(assert (= (and d!2001964 res!2626591) b!6385439))

(assert (= (and d!2001964 c!1163724) b!6385441))

(assert (= (and d!2001964 (not c!1163724)) b!6385442))

(assert (= (and b!6385442 c!1163725) b!6385438))

(assert (= (and b!6385442 (not c!1163725)) b!6385440))

(assert (= (or b!6385441 b!6385438) bm!545808))

(declare-fun m!7185254 () Bool)

(assert (=> b!6385439 m!7185254))

(declare-fun m!7185256 () Bool)

(assert (=> bm!545808 m!7185256))

(declare-fun m!7185258 () Bool)

(assert (=> b!6385441 m!7185258))

(assert (=> b!6384417 d!2001964))

(declare-fun d!2001966 () Bool)

(assert (=> d!2001966 true))

(declare-fun setRes!43594 () Bool)

(assert (=> d!2001966 setRes!43594))

(declare-fun condSetEmpty!43594 () Bool)

(declare-fun res!2626592 () (InoxSet Context!11370))

(assert (=> d!2001966 (= condSetEmpty!43594 (= res!2626592 ((as const (Array Context!11370 Bool)) false)))))

(assert (=> d!2001966 (= (choose!47510 z!1189 lambda!352237) res!2626592)))

(declare-fun setIsEmpty!43594 () Bool)

(assert (=> setIsEmpty!43594 setRes!43594))

(declare-fun setNonEmpty!43594 () Bool)

(declare-fun setElem!43594 () Context!11370)

(declare-fun tp!1776273 () Bool)

(declare-fun e!3876011 () Bool)

(assert (=> setNonEmpty!43594 (= setRes!43594 (and tp!1776273 (inv!83999 setElem!43594) e!3876011))))

(declare-fun setRest!43594 () (InoxSet Context!11370))

(assert (=> setNonEmpty!43594 (= res!2626592 ((_ map or) (store ((as const (Array Context!11370 Bool)) false) setElem!43594 true) setRest!43594))))

(declare-fun b!6385443 () Bool)

(declare-fun tp!1776274 () Bool)

(assert (=> b!6385443 (= e!3876011 tp!1776274)))

(assert (= (and d!2001966 condSetEmpty!43594) setIsEmpty!43594))

(assert (= (and d!2001966 (not condSetEmpty!43594)) setNonEmpty!43594))

(assert (= setNonEmpty!43594 b!6385443))

(declare-fun m!7185260 () Bool)

(assert (=> setNonEmpty!43594 m!7185260))

(assert (=> d!2001444 d!2001966))

(declare-fun bs!1598153 () Bool)

(declare-fun d!2001968 () Bool)

(assert (= bs!1598153 (and d!2001968 d!2001548)))

(declare-fun lambda!352378 () Int)

(assert (=> bs!1598153 (= lambda!352378 lambda!352322)))

(declare-fun bs!1598155 () Bool)

(assert (= bs!1598155 (and d!2001968 d!2001550)))

(assert (=> bs!1598155 (= lambda!352378 lambda!352324)))

(declare-fun bs!1598156 () Bool)

(assert (= bs!1598156 (and d!2001968 d!2001662)))

(assert (=> bs!1598156 (= lambda!352378 lambda!352335)))

(assert (=> d!2001968 (= (nullableZipper!2066 lt!2371179) (exists!2584 lt!2371179 lambda!352378))))

(declare-fun bs!1598158 () Bool)

(assert (= bs!1598158 d!2001968))

(declare-fun m!7185262 () Bool)

(assert (=> bs!1598158 m!7185262))

(assert (=> b!6384360 d!2001968))

(assert (=> b!6383995 d!2001412))

(assert (=> b!6384159 d!2001518))

(declare-fun d!2001970 () Bool)

(assert (=> d!2001970 true))

(assert (=> d!2001970 true))

(declare-fun res!2626593 () Bool)

(assert (=> d!2001970 (= (choose!47506 lambda!352238) res!2626593)))

(assert (=> d!2001392 d!2001970))

(declare-fun bs!1598163 () Bool)

(declare-fun d!2001972 () Bool)

(assert (= bs!1598163 (and d!2001972 d!2001548)))

(declare-fun lambda!352379 () Int)

(assert (=> bs!1598163 (= lambda!352379 lambda!352322)))

(declare-fun bs!1598164 () Bool)

(assert (= bs!1598164 (and d!2001972 d!2001550)))

(assert (=> bs!1598164 (= lambda!352379 lambda!352324)))

(declare-fun bs!1598166 () Bool)

(assert (= bs!1598166 (and d!2001972 d!2001662)))

(assert (=> bs!1598166 (= lambda!352379 lambda!352335)))

(declare-fun bs!1598167 () Bool)

(assert (= bs!1598167 (and d!2001972 d!2001968)))

(assert (=> bs!1598167 (= lambda!352379 lambda!352378)))

(assert (=> d!2001972 (= (nullableZipper!2066 lt!2371161) (exists!2584 lt!2371161 lambda!352379))))

(declare-fun bs!1598170 () Bool)

(assert (= bs!1598170 d!2001972))

(declare-fun m!7185264 () Bool)

(assert (=> bs!1598170 m!7185264))

(assert (=> b!6384384 d!2001972))

(declare-fun b!6385444 () Bool)

(declare-fun e!3876015 () Bool)

(declare-fun e!3876013 () Bool)

(assert (=> b!6385444 (= e!3876015 e!3876013)))

(declare-fun res!2626599 () Bool)

(assert (=> b!6385444 (=> res!2626599 e!3876013)))

(declare-fun call!545814 () Bool)

(assert (=> b!6385444 (= res!2626599 call!545814)))

(declare-fun b!6385445 () Bool)

(declare-fun res!2626598 () Bool)

(declare-fun e!3876017 () Bool)

(assert (=> b!6385445 (=> res!2626598 e!3876017)))

(assert (=> b!6385445 (= res!2626598 (not ((_ is ElementMatch!16301) (derivativeStep!5005 lt!2371176 (head!13094 s!2326)))))))

(declare-fun e!3876018 () Bool)

(assert (=> b!6385445 (= e!3876018 e!3876017)))

(declare-fun d!2001974 () Bool)

(declare-fun e!3876016 () Bool)

(assert (=> d!2001974 e!3876016))

(declare-fun c!1163726 () Bool)

(assert (=> d!2001974 (= c!1163726 ((_ is EmptyExpr!16301) (derivativeStep!5005 lt!2371176 (head!13094 s!2326))))))

(declare-fun lt!2371378 () Bool)

(declare-fun e!3876014 () Bool)

(assert (=> d!2001974 (= lt!2371378 e!3876014)))

(declare-fun c!1163727 () Bool)

(assert (=> d!2001974 (= c!1163727 (isEmpty!37214 (tail!12179 s!2326)))))

(assert (=> d!2001974 (validRegex!8037 (derivativeStep!5005 lt!2371176 (head!13094 s!2326)))))

(assert (=> d!2001974 (= (matchR!8484 (derivativeStep!5005 lt!2371176 (head!13094 s!2326)) (tail!12179 s!2326)) lt!2371378)))

(declare-fun b!6385446 () Bool)

(assert (=> b!6385446 (= e!3876014 (matchR!8484 (derivativeStep!5005 (derivativeStep!5005 lt!2371176 (head!13094 s!2326)) (head!13094 (tail!12179 s!2326))) (tail!12179 (tail!12179 s!2326))))))

(declare-fun b!6385447 () Bool)

(assert (=> b!6385447 (= e!3876016 e!3876018)))

(declare-fun c!1163728 () Bool)

(assert (=> b!6385447 (= c!1163728 ((_ is EmptyLang!16301) (derivativeStep!5005 lt!2371176 (head!13094 s!2326))))))

(declare-fun b!6385448 () Bool)

(assert (=> b!6385448 (= e!3876016 (= lt!2371378 call!545814))))

(declare-fun b!6385449 () Bool)

(assert (=> b!6385449 (= e!3876017 e!3876015)))

(declare-fun res!2626600 () Bool)

(assert (=> b!6385449 (=> (not res!2626600) (not e!3876015))))

(assert (=> b!6385449 (= res!2626600 (not lt!2371378))))

(declare-fun b!6385450 () Bool)

(declare-fun res!2626601 () Bool)

(assert (=> b!6385450 (=> res!2626601 e!3876017)))

(declare-fun e!3876012 () Bool)

(assert (=> b!6385450 (= res!2626601 e!3876012)))

(declare-fun res!2626594 () Bool)

(assert (=> b!6385450 (=> (not res!2626594) (not e!3876012))))

(assert (=> b!6385450 (= res!2626594 lt!2371378)))

(declare-fun b!6385451 () Bool)

(declare-fun res!2626595 () Bool)

(assert (=> b!6385451 (=> (not res!2626595) (not e!3876012))))

(assert (=> b!6385451 (= res!2626595 (isEmpty!37214 (tail!12179 (tail!12179 s!2326))))))

(declare-fun bm!545809 () Bool)

(assert (=> bm!545809 (= call!545814 (isEmpty!37214 (tail!12179 s!2326)))))

(declare-fun b!6385452 () Bool)

(declare-fun res!2626596 () Bool)

(assert (=> b!6385452 (=> (not res!2626596) (not e!3876012))))

(assert (=> b!6385452 (= res!2626596 (not call!545814))))

(declare-fun b!6385453 () Bool)

(assert (=> b!6385453 (= e!3876014 (nullable!6294 (derivativeStep!5005 lt!2371176 (head!13094 s!2326))))))

(declare-fun b!6385454 () Bool)

(assert (=> b!6385454 (= e!3876018 (not lt!2371378))))

(declare-fun b!6385455 () Bool)

(declare-fun res!2626597 () Bool)

(assert (=> b!6385455 (=> res!2626597 e!3876013)))

(assert (=> b!6385455 (= res!2626597 (not (isEmpty!37214 (tail!12179 (tail!12179 s!2326)))))))

(declare-fun b!6385456 () Bool)

(assert (=> b!6385456 (= e!3876012 (= (head!13094 (tail!12179 s!2326)) (c!1163182 (derivativeStep!5005 lt!2371176 (head!13094 s!2326)))))))

(declare-fun b!6385457 () Bool)

(assert (=> b!6385457 (= e!3876013 (not (= (head!13094 (tail!12179 s!2326)) (c!1163182 (derivativeStep!5005 lt!2371176 (head!13094 s!2326))))))))

(assert (= (and d!2001974 c!1163727) b!6385453))

(assert (= (and d!2001974 (not c!1163727)) b!6385446))

(assert (= (and d!2001974 c!1163726) b!6385448))

(assert (= (and d!2001974 (not c!1163726)) b!6385447))

(assert (= (and b!6385447 c!1163728) b!6385454))

(assert (= (and b!6385447 (not c!1163728)) b!6385445))

(assert (= (and b!6385445 (not res!2626598)) b!6385450))

(assert (= (and b!6385450 res!2626594) b!6385452))

(assert (= (and b!6385452 res!2626596) b!6385451))

(assert (= (and b!6385451 res!2626595) b!6385456))

(assert (= (and b!6385450 (not res!2626601)) b!6385449))

(assert (= (and b!6385449 res!2626600) b!6385444))

(assert (= (and b!6385444 (not res!2626599)) b!6385455))

(assert (= (and b!6385455 (not res!2626597)) b!6385457))

(assert (= (or b!6385448 b!6385444 b!6385452) bm!545809))

(assert (=> b!6385446 m!7183958))

(assert (=> b!6385446 m!7184268))

(assert (=> b!6385446 m!7184024))

(assert (=> b!6385446 m!7184268))

(declare-fun m!7185266 () Bool)

(assert (=> b!6385446 m!7185266))

(assert (=> b!6385446 m!7183958))

(assert (=> b!6385446 m!7184272))

(assert (=> b!6385446 m!7185266))

(assert (=> b!6385446 m!7184272))

(declare-fun m!7185268 () Bool)

(assert (=> b!6385446 m!7185268))

(assert (=> bm!545809 m!7183958))

(assert (=> bm!545809 m!7183962))

(assert (=> b!6385451 m!7183958))

(assert (=> b!6385451 m!7184272))

(assert (=> b!6385451 m!7184272))

(declare-fun m!7185270 () Bool)

(assert (=> b!6385451 m!7185270))

(assert (=> b!6385453 m!7184024))

(declare-fun m!7185272 () Bool)

(assert (=> b!6385453 m!7185272))

(assert (=> b!6385456 m!7183958))

(assert (=> b!6385456 m!7184268))

(assert (=> d!2001974 m!7183958))

(assert (=> d!2001974 m!7183962))

(assert (=> d!2001974 m!7184024))

(declare-fun m!7185274 () Bool)

(assert (=> d!2001974 m!7185274))

(assert (=> b!6385455 m!7183958))

(assert (=> b!6385455 m!7184272))

(assert (=> b!6385455 m!7184272))

(assert (=> b!6385455 m!7185270))

(assert (=> b!6385457 m!7183958))

(assert (=> b!6385457 m!7184268))

(assert (=> b!6384337 d!2001974))

(declare-fun b!6385458 () Bool)

(declare-fun e!3876021 () Regex!16301)

(assert (=> b!6385458 (= e!3876021 EmptyLang!16301)))

(declare-fun b!6385459 () Bool)

(declare-fun e!3876020 () Regex!16301)

(declare-fun call!545815 () Regex!16301)

(assert (=> b!6385459 (= e!3876020 (Union!16301 (Concat!25146 call!545815 (regTwo!33114 lt!2371176)) EmptyLang!16301))))

(declare-fun call!545816 () Regex!16301)

(declare-fun b!6385460 () Bool)

(assert (=> b!6385460 (= e!3876020 (Union!16301 (Concat!25146 call!545816 (regTwo!33114 lt!2371176)) call!545815))))

(declare-fun b!6385461 () Bool)

(declare-fun e!3876022 () Regex!16301)

(declare-fun call!545818 () Regex!16301)

(declare-fun call!545817 () Regex!16301)

(assert (=> b!6385461 (= e!3876022 (Union!16301 call!545818 call!545817))))

(declare-fun b!6385462 () Bool)

(declare-fun e!3876019 () Regex!16301)

(assert (=> b!6385462 (= e!3876021 e!3876019)))

(declare-fun c!1163730 () Bool)

(assert (=> b!6385462 (= c!1163730 ((_ is ElementMatch!16301) lt!2371176))))

(declare-fun bm!545810 () Bool)

(assert (=> bm!545810 (= call!545816 call!545817)))

(declare-fun b!6385463 () Bool)

(declare-fun e!3876023 () Regex!16301)

(assert (=> b!6385463 (= e!3876023 (Concat!25146 call!545816 lt!2371176))))

(declare-fun b!6385464 () Bool)

(assert (=> b!6385464 (= e!3876019 (ite (= (head!13094 s!2326) (c!1163182 lt!2371176)) EmptyExpr!16301 EmptyLang!16301))))

(declare-fun b!6385465 () Bool)

(assert (=> b!6385465 (= e!3876022 e!3876023)))

(declare-fun c!1163729 () Bool)

(assert (=> b!6385465 (= c!1163729 ((_ is Star!16301) lt!2371176))))

(declare-fun c!1163733 () Bool)

(declare-fun c!1163732 () Bool)

(declare-fun bm!545811 () Bool)

(assert (=> bm!545811 (= call!545818 (derivativeStep!5005 (ite c!1163733 (regOne!33115 lt!2371176) (ite c!1163732 (regTwo!33114 lt!2371176) (regOne!33114 lt!2371176))) (head!13094 s!2326)))))

(declare-fun bm!545812 () Bool)

(assert (=> bm!545812 (= call!545817 (derivativeStep!5005 (ite c!1163733 (regTwo!33115 lt!2371176) (ite c!1163729 (reg!16630 lt!2371176) (regOne!33114 lt!2371176))) (head!13094 s!2326)))))

(declare-fun bm!545813 () Bool)

(assert (=> bm!545813 (= call!545815 call!545818)))

(declare-fun b!6385467 () Bool)

(assert (=> b!6385467 (= c!1163732 (nullable!6294 (regOne!33114 lt!2371176)))))

(assert (=> b!6385467 (= e!3876023 e!3876020)))

(declare-fun d!2001976 () Bool)

(declare-fun lt!2371379 () Regex!16301)

(assert (=> d!2001976 (validRegex!8037 lt!2371379)))

(assert (=> d!2001976 (= lt!2371379 e!3876021)))

(declare-fun c!1163731 () Bool)

(assert (=> d!2001976 (= c!1163731 (or ((_ is EmptyExpr!16301) lt!2371176) ((_ is EmptyLang!16301) lt!2371176)))))

(assert (=> d!2001976 (validRegex!8037 lt!2371176)))

(assert (=> d!2001976 (= (derivativeStep!5005 lt!2371176 (head!13094 s!2326)) lt!2371379)))

(declare-fun b!6385466 () Bool)

(assert (=> b!6385466 (= c!1163733 ((_ is Union!16301) lt!2371176))))

(assert (=> b!6385466 (= e!3876019 e!3876022)))

(assert (= (and d!2001976 c!1163731) b!6385458))

(assert (= (and d!2001976 (not c!1163731)) b!6385462))

(assert (= (and b!6385462 c!1163730) b!6385464))

(assert (= (and b!6385462 (not c!1163730)) b!6385466))

(assert (= (and b!6385466 c!1163733) b!6385461))

(assert (= (and b!6385466 (not c!1163733)) b!6385465))

(assert (= (and b!6385465 c!1163729) b!6385463))

(assert (= (and b!6385465 (not c!1163729)) b!6385467))

(assert (= (and b!6385467 c!1163732) b!6385460))

(assert (= (and b!6385467 (not c!1163732)) b!6385459))

(assert (= (or b!6385460 b!6385459) bm!545813))

(assert (= (or b!6385463 b!6385460) bm!545810))

(assert (= (or b!6385461 bm!545810) bm!545812))

(assert (= (or b!6385461 bm!545813) bm!545811))

(assert (=> bm!545811 m!7183954))

(declare-fun m!7185282 () Bool)

(assert (=> bm!545811 m!7185282))

(assert (=> bm!545812 m!7183954))

(declare-fun m!7185284 () Bool)

(assert (=> bm!545812 m!7185284))

(declare-fun m!7185286 () Bool)

(assert (=> b!6385467 m!7185286))

(declare-fun m!7185288 () Bool)

(assert (=> d!2001976 m!7185288))

(assert (=> d!2001976 m!7184030))

(assert (=> b!6384337 d!2001976))

(assert (=> b!6384337 d!2001530))

(assert (=> b!6384337 d!2001494))

(declare-fun d!2001982 () Bool)

(assert (=> d!2001982 true))

(assert (=> d!2001982 true))

(declare-fun res!2626607 () Bool)

(assert (=> d!2001982 (= (choose!47506 lambda!352236) res!2626607)))

(assert (=> d!2001460 d!2001982))

(declare-fun d!2001984 () Bool)

(declare-fun res!2626613 () Bool)

(declare-fun e!3876041 () Bool)

(assert (=> d!2001984 (=> res!2626613 e!3876041)))

(assert (=> d!2001984 (= res!2626613 ((_ is Nil!65080) lt!2371262))))

(assert (=> d!2001984 (= (noDuplicate!2130 lt!2371262) e!3876041)))

(declare-fun b!6385492 () Bool)

(declare-fun e!3876042 () Bool)

(assert (=> b!6385492 (= e!3876041 e!3876042)))

(declare-fun res!2626614 () Bool)

(assert (=> b!6385492 (=> (not res!2626614) (not e!3876042))))

(declare-fun contains!20169 (List!65204 Context!11370) Bool)

(assert (=> b!6385492 (= res!2626614 (not (contains!20169 (t!378808 lt!2371262) (h!71528 lt!2371262))))))

(declare-fun b!6385493 () Bool)

(assert (=> b!6385493 (= e!3876042 (noDuplicate!2130 (t!378808 lt!2371262)))))

(assert (= (and d!2001984 (not res!2626613)) b!6385492))

(assert (= (and b!6385492 res!2626614) b!6385493))

(declare-fun m!7185306 () Bool)

(assert (=> b!6385492 m!7185306))

(declare-fun m!7185308 () Bool)

(assert (=> b!6385493 m!7185308))

(assert (=> d!2001370 d!2001984))

(declare-fun d!2001992 () Bool)

(declare-fun e!3876050 () Bool)

(assert (=> d!2001992 e!3876050))

(declare-fun res!2626620 () Bool)

(assert (=> d!2001992 (=> (not res!2626620) (not e!3876050))))

(declare-fun res!2626621 () List!65204)

(assert (=> d!2001992 (= res!2626620 (noDuplicate!2130 res!2626621))))

(declare-fun e!3876051 () Bool)

(assert (=> d!2001992 e!3876051))

(assert (=> d!2001992 (= (choose!47504 z!1189) res!2626621)))

(declare-fun b!6385501 () Bool)

(declare-fun e!3876049 () Bool)

(declare-fun tp!1776280 () Bool)

(assert (=> b!6385501 (= e!3876049 tp!1776280)))

(declare-fun tp!1776279 () Bool)

(declare-fun b!6385500 () Bool)

(assert (=> b!6385500 (= e!3876051 (and (inv!83999 (h!71528 res!2626621)) e!3876049 tp!1776279))))

(declare-fun b!6385502 () Bool)

(assert (=> b!6385502 (= e!3876050 (= (content!12316 res!2626621) z!1189))))

(assert (= b!6385500 b!6385501))

(assert (= (and d!2001992 ((_ is Cons!65080) res!2626621)) b!6385500))

(assert (= (and d!2001992 res!2626620) b!6385502))

(declare-fun m!7185314 () Bool)

(assert (=> d!2001992 m!7185314))

(declare-fun m!7185316 () Bool)

(assert (=> b!6385500 m!7185316))

(declare-fun m!7185320 () Bool)

(assert (=> b!6385502 m!7185320))

(assert (=> d!2001370 d!2001992))

(assert (=> d!2001360 d!2001898))

(declare-fun b!6385503 () Bool)

(declare-fun e!3876056 () Bool)

(declare-fun e!3876053 () Bool)

(assert (=> b!6385503 (= e!3876056 e!3876053)))

(declare-fun c!1163742 () Bool)

(assert (=> b!6385503 (= c!1163742 ((_ is Union!16301) (regTwo!33114 r!7292)))))

(declare-fun b!6385504 () Bool)

(declare-fun e!3876054 () Bool)

(declare-fun call!545828 () Bool)

(assert (=> b!6385504 (= e!3876054 call!545828)))

(declare-fun b!6385505 () Bool)

(declare-fun e!3876058 () Bool)

(assert (=> b!6385505 (= e!3876056 e!3876058)))

(declare-fun res!2626627 () Bool)

(assert (=> b!6385505 (= res!2626627 (not (nullable!6294 (reg!16630 (regTwo!33114 r!7292)))))))

(assert (=> b!6385505 (=> (not res!2626627) (not e!3876058))))

(declare-fun bm!545823 () Bool)

(declare-fun call!545830 () Bool)

(assert (=> bm!545823 (= call!545830 (validRegex!8037 (ite c!1163742 (regOne!33115 (regTwo!33114 r!7292)) (regOne!33114 (regTwo!33114 r!7292)))))))

(declare-fun d!2002004 () Bool)

(declare-fun res!2626623 () Bool)

(declare-fun e!3876057 () Bool)

(assert (=> d!2002004 (=> res!2626623 e!3876057)))

(assert (=> d!2002004 (= res!2626623 ((_ is ElementMatch!16301) (regTwo!33114 r!7292)))))

(assert (=> d!2002004 (= (validRegex!8037 (regTwo!33114 r!7292)) e!3876057)))

(declare-fun b!6385506 () Bool)

(assert (=> b!6385506 (= e!3876057 e!3876056)))

(declare-fun c!1163741 () Bool)

(assert (=> b!6385506 (= c!1163741 ((_ is Star!16301) (regTwo!33114 r!7292)))))

(declare-fun b!6385507 () Bool)

(declare-fun e!3876052 () Bool)

(declare-fun e!3876055 () Bool)

(assert (=> b!6385507 (= e!3876052 e!3876055)))

(declare-fun res!2626624 () Bool)

(assert (=> b!6385507 (=> (not res!2626624) (not e!3876055))))

(assert (=> b!6385507 (= res!2626624 call!545830)))

(declare-fun bm!545824 () Bool)

(declare-fun call!545829 () Bool)

(assert (=> bm!545824 (= call!545828 call!545829)))

(declare-fun b!6385508 () Bool)

(assert (=> b!6385508 (= e!3876058 call!545829)))

(declare-fun bm!545825 () Bool)

(assert (=> bm!545825 (= call!545829 (validRegex!8037 (ite c!1163741 (reg!16630 (regTwo!33114 r!7292)) (ite c!1163742 (regTwo!33115 (regTwo!33114 r!7292)) (regTwo!33114 (regTwo!33114 r!7292))))))))

(declare-fun b!6385509 () Bool)

(declare-fun res!2626625 () Bool)

(assert (=> b!6385509 (=> (not res!2626625) (not e!3876054))))

(assert (=> b!6385509 (= res!2626625 call!545830)))

(assert (=> b!6385509 (= e!3876053 e!3876054)))

(declare-fun b!6385510 () Bool)

(declare-fun res!2626626 () Bool)

(assert (=> b!6385510 (=> res!2626626 e!3876052)))

(assert (=> b!6385510 (= res!2626626 (not ((_ is Concat!25146) (regTwo!33114 r!7292))))))

(assert (=> b!6385510 (= e!3876053 e!3876052)))

(declare-fun b!6385511 () Bool)

(assert (=> b!6385511 (= e!3876055 call!545828)))

(assert (= (and d!2002004 (not res!2626623)) b!6385506))

(assert (= (and b!6385506 c!1163741) b!6385505))

(assert (= (and b!6385506 (not c!1163741)) b!6385503))

(assert (= (and b!6385505 res!2626627) b!6385508))

(assert (= (and b!6385503 c!1163742) b!6385509))

(assert (= (and b!6385503 (not c!1163742)) b!6385510))

(assert (= (and b!6385509 res!2626625) b!6385504))

(assert (= (and b!6385510 (not res!2626626)) b!6385507))

(assert (= (and b!6385507 res!2626624) b!6385511))

(assert (= (or b!6385504 b!6385511) bm!545824))

(assert (= (or b!6385509 b!6385507) bm!545823))

(assert (= (or b!6385508 bm!545824) bm!545825))

(declare-fun m!7185324 () Bool)

(assert (=> b!6385505 m!7185324))

(declare-fun m!7185326 () Bool)

(assert (=> bm!545823 m!7185326))

(declare-fun m!7185328 () Bool)

(assert (=> bm!545825 m!7185328))

(assert (=> d!2001360 d!2002004))

(declare-fun d!2002008 () Bool)

(declare-fun res!2626628 () Bool)

(declare-fun e!3876059 () Bool)

(assert (=> d!2002008 (=> res!2626628 e!3876059)))

(assert (=> d!2002008 (= res!2626628 ((_ is Nil!65079) (exprs!6185 lt!2371183)))))

(assert (=> d!2002008 (= (forall!15479 (exprs!6185 lt!2371183) lambda!352282) e!3876059)))

(declare-fun b!6385512 () Bool)

(declare-fun e!3876060 () Bool)

(assert (=> b!6385512 (= e!3876059 e!3876060)))

(declare-fun res!2626629 () Bool)

(assert (=> b!6385512 (=> (not res!2626629) (not e!3876060))))

(assert (=> b!6385512 (= res!2626629 (dynLambda!25821 lambda!352282 (h!71527 (exprs!6185 lt!2371183))))))

(declare-fun b!6385513 () Bool)

(assert (=> b!6385513 (= e!3876060 (forall!15479 (t!378807 (exprs!6185 lt!2371183)) lambda!352282))))

(assert (= (and d!2002008 (not res!2626628)) b!6385512))

(assert (= (and b!6385512 res!2626629) b!6385513))

(declare-fun b_lambda!242607 () Bool)

(assert (=> (not b_lambda!242607) (not b!6385512)))

(declare-fun m!7185330 () Bool)

(assert (=> b!6385512 m!7185330))

(declare-fun m!7185332 () Bool)

(assert (=> b!6385513 m!7185332))

(assert (=> d!2001362 d!2002008))

(assert (=> bm!545606 d!2001532))

(assert (=> d!2001424 d!2001422))

(declare-fun d!2002010 () Bool)

(assert (=> d!2002010 (= (flatMap!1806 lt!2371185 lambda!352237) (dynLambda!25819 lambda!352237 lt!2371169))))

(assert (=> d!2002010 true))

(declare-fun _$13!3575 () Unit!158535)

(assert (=> d!2002010 (= (choose!47509 lt!2371185 lt!2371169 lambda!352237) _$13!3575)))

(declare-fun b_lambda!242609 () Bool)

(assert (=> (not b_lambda!242609) (not d!2002010)))

(declare-fun bs!1598202 () Bool)

(assert (= bs!1598202 d!2002010))

(assert (=> bs!1598202 m!7183348))

(assert (=> bs!1598202 m!7184066))

(assert (=> d!2001424 d!2002010))

(assert (=> b!6384140 d!2001798))

(assert (=> b!6384140 d!2001800))

(declare-fun d!2002012 () Bool)

(assert (=> d!2002012 (= (isEmpty!37212 (exprs!6185 (h!71528 zl!343))) ((_ is Nil!65079) (exprs!6185 (h!71528 zl!343))))))

(assert (=> b!6383943 d!2002012))

(declare-fun b!6385514 () Bool)

(declare-fun e!3876066 () (InoxSet Context!11370))

(assert (=> b!6385514 (= e!3876066 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6385515 () Bool)

(declare-fun call!545833 () (InoxSet Context!11370))

(assert (=> b!6385515 (= e!3876066 call!545833)))

(declare-fun b!6385516 () Bool)

(declare-fun e!3876063 () (InoxSet Context!11370))

(declare-fun e!3876061 () (InoxSet Context!11370))

(assert (=> b!6385516 (= e!3876063 e!3876061)))

(declare-fun c!1163747 () Bool)

(assert (=> b!6385516 (= c!1163747 ((_ is Union!16301) (h!71527 (exprs!6185 lt!2371169))))))

(declare-fun b!6385517 () Bool)

(declare-fun e!3876064 () (InoxSet Context!11370))

(declare-fun call!545832 () (InoxSet Context!11370))

(declare-fun call!545834 () (InoxSet Context!11370))

(assert (=> b!6385517 (= e!3876064 ((_ map or) call!545832 call!545834))))

(declare-fun b!6385518 () Bool)

(declare-fun call!545836 () (InoxSet Context!11370))

(assert (=> b!6385518 (= e!3876061 ((_ map or) call!545836 call!545832))))

(declare-fun bm!545826 () Bool)

(assert (=> bm!545826 (= call!545834 call!545836)))

(declare-fun c!1163746 () Bool)

(declare-fun c!1163743 () Bool)

(declare-fun call!545835 () List!65203)

(declare-fun bm!545827 () Bool)

(assert (=> bm!545827 (= call!545835 ($colon$colon!2161 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371169)))) (ite (or c!1163743 c!1163746) (regTwo!33114 (h!71527 (exprs!6185 lt!2371169))) (h!71527 (exprs!6185 lt!2371169)))))))

(declare-fun b!6385519 () Bool)

(declare-fun e!3876062 () (InoxSet Context!11370))

(assert (=> b!6385519 (= e!3876062 call!545833)))

(declare-fun d!2002014 () Bool)

(declare-fun c!1163744 () Bool)

(assert (=> d!2002014 (= c!1163744 (and ((_ is ElementMatch!16301) (h!71527 (exprs!6185 lt!2371169))) (= (c!1163182 (h!71527 (exprs!6185 lt!2371169))) (h!71526 s!2326))))))

(assert (=> d!2002014 (= (derivationStepZipperDown!1549 (h!71527 (exprs!6185 lt!2371169)) (Context!11371 (t!378807 (exprs!6185 lt!2371169))) (h!71526 s!2326)) e!3876063)))

(declare-fun bm!545828 () Bool)

(assert (=> bm!545828 (= call!545833 call!545834)))

(declare-fun bm!545829 () Bool)

(assert (=> bm!545829 (= call!545832 (derivationStepZipperDown!1549 (ite c!1163747 (regTwo!33115 (h!71527 (exprs!6185 lt!2371169))) (regOne!33114 (h!71527 (exprs!6185 lt!2371169)))) (ite c!1163747 (Context!11371 (t!378807 (exprs!6185 lt!2371169))) (Context!11371 call!545835)) (h!71526 s!2326)))))

(declare-fun b!6385520 () Bool)

(declare-fun e!3876065 () Bool)

(assert (=> b!6385520 (= c!1163743 e!3876065)))

(declare-fun res!2626630 () Bool)

(assert (=> b!6385520 (=> (not res!2626630) (not e!3876065))))

(assert (=> b!6385520 (= res!2626630 ((_ is Concat!25146) (h!71527 (exprs!6185 lt!2371169))))))

(assert (=> b!6385520 (= e!3876061 e!3876064)))

(declare-fun call!545831 () List!65203)

(declare-fun bm!545830 () Bool)

(assert (=> bm!545830 (= call!545836 (derivationStepZipperDown!1549 (ite c!1163747 (regOne!33115 (h!71527 (exprs!6185 lt!2371169))) (ite c!1163743 (regTwo!33114 (h!71527 (exprs!6185 lt!2371169))) (ite c!1163746 (regOne!33114 (h!71527 (exprs!6185 lt!2371169))) (reg!16630 (h!71527 (exprs!6185 lt!2371169)))))) (ite (or c!1163747 c!1163743) (Context!11371 (t!378807 (exprs!6185 lt!2371169))) (Context!11371 call!545831)) (h!71526 s!2326)))))

(declare-fun b!6385521 () Bool)

(assert (=> b!6385521 (= e!3876063 (store ((as const (Array Context!11370 Bool)) false) (Context!11371 (t!378807 (exprs!6185 lt!2371169))) true))))

(declare-fun bm!545831 () Bool)

(assert (=> bm!545831 (= call!545831 call!545835)))

(declare-fun b!6385522 () Bool)

(assert (=> b!6385522 (= e!3876065 (nullable!6294 (regOne!33114 (h!71527 (exprs!6185 lt!2371169)))))))

(declare-fun b!6385523 () Bool)

(assert (=> b!6385523 (= e!3876064 e!3876062)))

(assert (=> b!6385523 (= c!1163746 ((_ is Concat!25146) (h!71527 (exprs!6185 lt!2371169))))))

(declare-fun b!6385524 () Bool)

(declare-fun c!1163745 () Bool)

(assert (=> b!6385524 (= c!1163745 ((_ is Star!16301) (h!71527 (exprs!6185 lt!2371169))))))

(assert (=> b!6385524 (= e!3876062 e!3876066)))

(assert (= (and d!2002014 c!1163744) b!6385521))

(assert (= (and d!2002014 (not c!1163744)) b!6385516))

(assert (= (and b!6385516 c!1163747) b!6385518))

(assert (= (and b!6385516 (not c!1163747)) b!6385520))

(assert (= (and b!6385520 res!2626630) b!6385522))

(assert (= (and b!6385520 c!1163743) b!6385517))

(assert (= (and b!6385520 (not c!1163743)) b!6385523))

(assert (= (and b!6385523 c!1163746) b!6385519))

(assert (= (and b!6385523 (not c!1163746)) b!6385524))

(assert (= (and b!6385524 c!1163745) b!6385515))

(assert (= (and b!6385524 (not c!1163745)) b!6385514))

(assert (= (or b!6385519 b!6385515) bm!545831))

(assert (= (or b!6385519 b!6385515) bm!545828))

(assert (= (or b!6385517 bm!545831) bm!545827))

(assert (= (or b!6385517 bm!545828) bm!545826))

(assert (= (or b!6385518 b!6385517) bm!545829))

(assert (= (or b!6385518 bm!545826) bm!545830))

(declare-fun m!7185334 () Bool)

(assert (=> bm!545829 m!7185334))

(declare-fun m!7185336 () Bool)

(assert (=> b!6385521 m!7185336))

(declare-fun m!7185338 () Bool)

(assert (=> bm!545830 m!7185338))

(declare-fun m!7185340 () Bool)

(assert (=> b!6385522 m!7185340))

(declare-fun m!7185342 () Bool)

(assert (=> bm!545827 m!7185342))

(assert (=> bm!545612 d!2002014))

(declare-fun b!6385525 () Bool)

(declare-fun e!3876070 () Bool)

(declare-fun e!3876068 () Bool)

(assert (=> b!6385525 (= e!3876070 e!3876068)))

(declare-fun res!2626636 () Bool)

(assert (=> b!6385525 (=> res!2626636 e!3876068)))

(declare-fun call!545837 () Bool)

(assert (=> b!6385525 (= res!2626636 call!545837)))

(declare-fun b!6385526 () Bool)

(declare-fun res!2626635 () Bool)

(declare-fun e!3876072 () Bool)

(assert (=> b!6385526 (=> res!2626635 e!3876072)))

(assert (=> b!6385526 (= res!2626635 (not ((_ is ElementMatch!16301) (derivativeStep!5005 r!7292 (head!13094 s!2326)))))))

(declare-fun e!3876073 () Bool)

(assert (=> b!6385526 (= e!3876073 e!3876072)))

(declare-fun d!2002016 () Bool)

(declare-fun e!3876071 () Bool)

(assert (=> d!2002016 e!3876071))

(declare-fun c!1163748 () Bool)

(assert (=> d!2002016 (= c!1163748 ((_ is EmptyExpr!16301) (derivativeStep!5005 r!7292 (head!13094 s!2326))))))

(declare-fun lt!2371380 () Bool)

(declare-fun e!3876069 () Bool)

(assert (=> d!2002016 (= lt!2371380 e!3876069)))

(declare-fun c!1163749 () Bool)

(assert (=> d!2002016 (= c!1163749 (isEmpty!37214 (tail!12179 s!2326)))))

(assert (=> d!2002016 (validRegex!8037 (derivativeStep!5005 r!7292 (head!13094 s!2326)))))

(assert (=> d!2002016 (= (matchR!8484 (derivativeStep!5005 r!7292 (head!13094 s!2326)) (tail!12179 s!2326)) lt!2371380)))

(declare-fun b!6385527 () Bool)

(assert (=> b!6385527 (= e!3876069 (matchR!8484 (derivativeStep!5005 (derivativeStep!5005 r!7292 (head!13094 s!2326)) (head!13094 (tail!12179 s!2326))) (tail!12179 (tail!12179 s!2326))))))

(declare-fun b!6385528 () Bool)

(assert (=> b!6385528 (= e!3876071 e!3876073)))

(declare-fun c!1163750 () Bool)

(assert (=> b!6385528 (= c!1163750 ((_ is EmptyLang!16301) (derivativeStep!5005 r!7292 (head!13094 s!2326))))))

(declare-fun b!6385529 () Bool)

(assert (=> b!6385529 (= e!3876071 (= lt!2371380 call!545837))))

(declare-fun b!6385530 () Bool)

(assert (=> b!6385530 (= e!3876072 e!3876070)))

(declare-fun res!2626637 () Bool)

(assert (=> b!6385530 (=> (not res!2626637) (not e!3876070))))

(assert (=> b!6385530 (= res!2626637 (not lt!2371380))))

(declare-fun b!6385531 () Bool)

(declare-fun res!2626638 () Bool)

(assert (=> b!6385531 (=> res!2626638 e!3876072)))

(declare-fun e!3876067 () Bool)

(assert (=> b!6385531 (= res!2626638 e!3876067)))

(declare-fun res!2626631 () Bool)

(assert (=> b!6385531 (=> (not res!2626631) (not e!3876067))))

(assert (=> b!6385531 (= res!2626631 lt!2371380)))

(declare-fun b!6385532 () Bool)

(declare-fun res!2626632 () Bool)

(assert (=> b!6385532 (=> (not res!2626632) (not e!3876067))))

(assert (=> b!6385532 (= res!2626632 (isEmpty!37214 (tail!12179 (tail!12179 s!2326))))))

(declare-fun bm!545832 () Bool)

(assert (=> bm!545832 (= call!545837 (isEmpty!37214 (tail!12179 s!2326)))))

(declare-fun b!6385533 () Bool)

(declare-fun res!2626633 () Bool)

(assert (=> b!6385533 (=> (not res!2626633) (not e!3876067))))

(assert (=> b!6385533 (= res!2626633 (not call!545837))))

(declare-fun b!6385534 () Bool)

(assert (=> b!6385534 (= e!3876069 (nullable!6294 (derivativeStep!5005 r!7292 (head!13094 s!2326))))))

(declare-fun b!6385535 () Bool)

(assert (=> b!6385535 (= e!3876073 (not lt!2371380))))

(declare-fun b!6385536 () Bool)

(declare-fun res!2626634 () Bool)

(assert (=> b!6385536 (=> res!2626634 e!3876068)))

(assert (=> b!6385536 (= res!2626634 (not (isEmpty!37214 (tail!12179 (tail!12179 s!2326)))))))

(declare-fun b!6385537 () Bool)

(assert (=> b!6385537 (= e!3876067 (= (head!13094 (tail!12179 s!2326)) (c!1163182 (derivativeStep!5005 r!7292 (head!13094 s!2326)))))))

(declare-fun b!6385538 () Bool)

(assert (=> b!6385538 (= e!3876068 (not (= (head!13094 (tail!12179 s!2326)) (c!1163182 (derivativeStep!5005 r!7292 (head!13094 s!2326))))))))

(assert (= (and d!2002016 c!1163749) b!6385534))

(assert (= (and d!2002016 (not c!1163749)) b!6385527))

(assert (= (and d!2002016 c!1163748) b!6385529))

(assert (= (and d!2002016 (not c!1163748)) b!6385528))

(assert (= (and b!6385528 c!1163750) b!6385535))

(assert (= (and b!6385528 (not c!1163750)) b!6385526))

(assert (= (and b!6385526 (not res!2626635)) b!6385531))

(assert (= (and b!6385531 res!2626631) b!6385533))

(assert (= (and b!6385533 res!2626633) b!6385532))

(assert (= (and b!6385532 res!2626632) b!6385537))

(assert (= (and b!6385531 (not res!2626638)) b!6385530))

(assert (= (and b!6385530 res!2626637) b!6385525))

(assert (= (and b!6385525 (not res!2626636)) b!6385536))

(assert (= (and b!6385536 (not res!2626634)) b!6385538))

(assert (= (or b!6385529 b!6385525 b!6385533) bm!545832))

(assert (=> b!6385527 m!7183958))

(assert (=> b!6385527 m!7184268))

(assert (=> b!6385527 m!7183956))

(assert (=> b!6385527 m!7184268))

(declare-fun m!7185344 () Bool)

(assert (=> b!6385527 m!7185344))

(assert (=> b!6385527 m!7183958))

(assert (=> b!6385527 m!7184272))

(assert (=> b!6385527 m!7185344))

(assert (=> b!6385527 m!7184272))

(declare-fun m!7185346 () Bool)

(assert (=> b!6385527 m!7185346))

(assert (=> bm!545832 m!7183958))

(assert (=> bm!545832 m!7183962))

(assert (=> b!6385532 m!7183958))

(assert (=> b!6385532 m!7184272))

(assert (=> b!6385532 m!7184272))

(assert (=> b!6385532 m!7185270))

(assert (=> b!6385534 m!7183956))

(declare-fun m!7185348 () Bool)

(assert (=> b!6385534 m!7185348))

(assert (=> b!6385537 m!7183958))

(assert (=> b!6385537 m!7184268))

(assert (=> d!2002016 m!7183958))

(assert (=> d!2002016 m!7183962))

(assert (=> d!2002016 m!7183956))

(declare-fun m!7185350 () Bool)

(assert (=> d!2002016 m!7185350))

(assert (=> b!6385536 m!7183958))

(assert (=> b!6385536 m!7184272))

(assert (=> b!6385536 m!7184272))

(assert (=> b!6385536 m!7185270))

(assert (=> b!6385538 m!7183958))

(assert (=> b!6385538 m!7184268))

(assert (=> b!6384272 d!2002016))

(declare-fun b!6385539 () Bool)

(declare-fun e!3876076 () Regex!16301)

(assert (=> b!6385539 (= e!3876076 EmptyLang!16301)))

(declare-fun b!6385540 () Bool)

(declare-fun e!3876075 () Regex!16301)

(declare-fun call!545838 () Regex!16301)

(assert (=> b!6385540 (= e!3876075 (Union!16301 (Concat!25146 call!545838 (regTwo!33114 r!7292)) EmptyLang!16301))))

(declare-fun b!6385541 () Bool)

(declare-fun call!545839 () Regex!16301)

(assert (=> b!6385541 (= e!3876075 (Union!16301 (Concat!25146 call!545839 (regTwo!33114 r!7292)) call!545838))))

(declare-fun b!6385542 () Bool)

(declare-fun e!3876077 () Regex!16301)

(declare-fun call!545841 () Regex!16301)

(declare-fun call!545840 () Regex!16301)

(assert (=> b!6385542 (= e!3876077 (Union!16301 call!545841 call!545840))))

(declare-fun b!6385543 () Bool)

(declare-fun e!3876074 () Regex!16301)

(assert (=> b!6385543 (= e!3876076 e!3876074)))

(declare-fun c!1163752 () Bool)

(assert (=> b!6385543 (= c!1163752 ((_ is ElementMatch!16301) r!7292))))

(declare-fun bm!545833 () Bool)

(assert (=> bm!545833 (= call!545839 call!545840)))

(declare-fun b!6385544 () Bool)

(declare-fun e!3876078 () Regex!16301)

(assert (=> b!6385544 (= e!3876078 (Concat!25146 call!545839 r!7292))))

(declare-fun b!6385545 () Bool)

(assert (=> b!6385545 (= e!3876074 (ite (= (head!13094 s!2326) (c!1163182 r!7292)) EmptyExpr!16301 EmptyLang!16301))))

(declare-fun b!6385546 () Bool)

(assert (=> b!6385546 (= e!3876077 e!3876078)))

(declare-fun c!1163751 () Bool)

(assert (=> b!6385546 (= c!1163751 ((_ is Star!16301) r!7292))))

(declare-fun bm!545834 () Bool)

(declare-fun c!1163754 () Bool)

(declare-fun c!1163755 () Bool)

(assert (=> bm!545834 (= call!545841 (derivativeStep!5005 (ite c!1163755 (regOne!33115 r!7292) (ite c!1163754 (regTwo!33114 r!7292) (regOne!33114 r!7292))) (head!13094 s!2326)))))

(declare-fun bm!545835 () Bool)

(assert (=> bm!545835 (= call!545840 (derivativeStep!5005 (ite c!1163755 (regTwo!33115 r!7292) (ite c!1163751 (reg!16630 r!7292) (regOne!33114 r!7292))) (head!13094 s!2326)))))

(declare-fun bm!545836 () Bool)

(assert (=> bm!545836 (= call!545838 call!545841)))

(declare-fun b!6385548 () Bool)

(assert (=> b!6385548 (= c!1163754 (nullable!6294 (regOne!33114 r!7292)))))

(assert (=> b!6385548 (= e!3876078 e!3876075)))

(declare-fun d!2002018 () Bool)

(declare-fun lt!2371381 () Regex!16301)

(assert (=> d!2002018 (validRegex!8037 lt!2371381)))

(assert (=> d!2002018 (= lt!2371381 e!3876076)))

(declare-fun c!1163753 () Bool)

(assert (=> d!2002018 (= c!1163753 (or ((_ is EmptyExpr!16301) r!7292) ((_ is EmptyLang!16301) r!7292)))))

(assert (=> d!2002018 (validRegex!8037 r!7292)))

(assert (=> d!2002018 (= (derivativeStep!5005 r!7292 (head!13094 s!2326)) lt!2371381)))

(declare-fun b!6385547 () Bool)

(assert (=> b!6385547 (= c!1163755 ((_ is Union!16301) r!7292))))

(assert (=> b!6385547 (= e!3876074 e!3876077)))

(assert (= (and d!2002018 c!1163753) b!6385539))

(assert (= (and d!2002018 (not c!1163753)) b!6385543))

(assert (= (and b!6385543 c!1163752) b!6385545))

(assert (= (and b!6385543 (not c!1163752)) b!6385547))

(assert (= (and b!6385547 c!1163755) b!6385542))

(assert (= (and b!6385547 (not c!1163755)) b!6385546))

(assert (= (and b!6385546 c!1163751) b!6385544))

(assert (= (and b!6385546 (not c!1163751)) b!6385548))

(assert (= (and b!6385548 c!1163754) b!6385541))

(assert (= (and b!6385548 (not c!1163754)) b!6385540))

(assert (= (or b!6385541 b!6385540) bm!545836))

(assert (= (or b!6385544 b!6385541) bm!545833))

(assert (= (or b!6385542 bm!545833) bm!545835))

(assert (= (or b!6385542 bm!545836) bm!545834))

(assert (=> bm!545834 m!7183954))

(declare-fun m!7185352 () Bool)

(assert (=> bm!545834 m!7185352))

(assert (=> bm!545835 m!7183954))

(declare-fun m!7185354 () Bool)

(assert (=> bm!545835 m!7185354))

(assert (=> b!6385548 m!7185060))

(declare-fun m!7185356 () Bool)

(assert (=> d!2002018 m!7185356))

(assert (=> d!2002018 m!7183448))

(assert (=> b!6384272 d!2002018))

(assert (=> b!6384272 d!2001530))

(assert (=> b!6384272 d!2001494))

(declare-fun bs!1598216 () Bool)

(declare-fun b!6385552 () Bool)

(assert (= bs!1598216 (and b!6385552 d!2001464)))

(declare-fun lambda!352384 () Int)

(assert (=> bs!1598216 (not (= lambda!352384 lambda!352312))))

(declare-fun bs!1598217 () Bool)

(assert (= bs!1598217 (and b!6385552 d!2001576)))

(assert (=> bs!1598217 (not (= lambda!352384 lambda!352330))))

(declare-fun bs!1598218 () Bool)

(assert (= bs!1598218 (and b!6385552 b!6383550)))

(assert (=> bs!1598218 (not (= lambda!352384 lambda!352235))))

(declare-fun bs!1598219 () Bool)

(assert (= bs!1598219 (and b!6385552 d!2001740)))

(assert (=> bs!1598219 (not (= lambda!352384 lambda!352346))))

(declare-fun bs!1598220 () Bool)

(assert (= bs!1598220 (and b!6385552 d!2001862)))

(assert (=> bs!1598220 (not (= lambda!352384 lambda!352363))))

(declare-fun bs!1598221 () Bool)

(assert (= bs!1598221 (and b!6385552 b!6384653)))

(assert (=> bs!1598221 (not (= lambda!352384 lambda!352326))))

(declare-fun bs!1598222 () Bool)

(assert (= bs!1598222 (and b!6385552 d!2001832)))

(assert (=> bs!1598222 (not (= lambda!352384 lambda!352360))))

(declare-fun bs!1598223 () Bool)

(assert (= bs!1598223 (and b!6385552 d!2001462)))

(assert (=> bs!1598223 (not (= lambda!352384 lambda!352311))))

(declare-fun bs!1598224 () Bool)

(assert (= bs!1598224 (and b!6385552 b!6384262)))

(assert (=> bs!1598224 (= (and (= (reg!16630 (regOne!33115 r!7292)) (reg!16630 r!7292)) (= (regOne!33115 r!7292) r!7292)) (= lambda!352384 lambda!352295))))

(declare-fun bs!1598225 () Bool)

(assert (= bs!1598225 (and b!6385552 b!6384269)))

(assert (=> bs!1598225 (not (= lambda!352384 lambda!352296))))

(declare-fun bs!1598226 () Bool)

(assert (= bs!1598226 (and b!6385552 b!6384359)))

(assert (=> bs!1598226 (not (= lambda!352384 lambda!352307))))

(declare-fun bs!1598227 () Bool)

(assert (= bs!1598227 (and b!6385552 b!6383538)))

(assert (=> bs!1598227 (not (= lambda!352384 lambda!352239))))

(assert (=> bs!1598218 (not (= lambda!352384 lambda!352236))))

(declare-fun bs!1598228 () Bool)

(assert (= bs!1598228 (and b!6385552 d!2001398)))

(assert (=> bs!1598228 (not (= lambda!352384 lambda!352302))))

(assert (=> bs!1598222 (not (= lambda!352384 lambda!352359))))

(assert (=> bs!1598216 (not (= lambda!352384 lambda!352313))))

(declare-fun bs!1598229 () Bool)

(assert (= bs!1598229 (and b!6385552 b!6384638)))

(assert (=> bs!1598229 (not (= lambda!352384 lambda!352318))))

(declare-fun bs!1598230 () Bool)

(assert (= bs!1598230 (and b!6385552 b!6384352)))

(assert (=> bs!1598230 (= (and (= (reg!16630 (regOne!33115 r!7292)) (reg!16630 lt!2371176)) (= (regOne!33115 r!7292) lt!2371176)) (= lambda!352384 lambda!352306))))

(assert (=> bs!1598220 (not (= lambda!352384 lambda!352361))))

(declare-fun bs!1598231 () Bool)

(assert (= bs!1598231 (and b!6385552 d!2001404)))

(assert (=> bs!1598231 (not (= lambda!352384 lambda!352305))))

(declare-fun bs!1598232 () Bool)

(assert (= bs!1598232 (and b!6385552 b!6384646)))

(assert (=> bs!1598232 (= (and (= (reg!16630 (regOne!33115 r!7292)) (reg!16630 (regTwo!33115 lt!2371176))) (= (regOne!33115 r!7292) (regTwo!33115 lt!2371176))) (= lambda!352384 lambda!352325))))

(declare-fun bs!1598233 () Bool)

(assert (= bs!1598233 (and b!6385552 b!6384631)))

(assert (=> bs!1598233 (= (and (= (reg!16630 (regOne!33115 r!7292)) (reg!16630 (regTwo!33115 r!7292))) (= (regOne!33115 r!7292) (regTwo!33115 r!7292))) (= lambda!352384 lambda!352317))))

(assert (=> bs!1598227 (not (= lambda!352384 lambda!352238))))

(assert (=> bs!1598228 (not (= lambda!352384 lambda!352301))))

(assert (=> b!6385552 true))

(assert (=> b!6385552 true))

(declare-fun bs!1598235 () Bool)

(declare-fun b!6385559 () Bool)

(assert (= bs!1598235 (and b!6385559 d!2001464)))

(declare-fun lambda!352385 () Int)

(assert (=> bs!1598235 (not (= lambda!352385 lambda!352312))))

(declare-fun bs!1598236 () Bool)

(assert (= bs!1598236 (and b!6385559 d!2001576)))

(assert (=> bs!1598236 (not (= lambda!352385 lambda!352330))))

(declare-fun bs!1598237 () Bool)

(assert (= bs!1598237 (and b!6385559 b!6385552)))

(assert (=> bs!1598237 (not (= lambda!352385 lambda!352384))))

(declare-fun bs!1598239 () Bool)

(assert (= bs!1598239 (and b!6385559 b!6383550)))

(assert (=> bs!1598239 (not (= lambda!352385 lambda!352235))))

(declare-fun bs!1598242 () Bool)

(assert (= bs!1598242 (and b!6385559 d!2001740)))

(assert (=> bs!1598242 (not (= lambda!352385 lambda!352346))))

(declare-fun bs!1598244 () Bool)

(assert (= bs!1598244 (and b!6385559 d!2001862)))

(assert (=> bs!1598244 (= (and (= (regOne!33114 (regOne!33115 r!7292)) (regOne!33114 r!7292)) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352385 lambda!352363))))

(declare-fun bs!1598247 () Bool)

(assert (= bs!1598247 (and b!6385559 b!6384653)))

(assert (=> bs!1598247 (= (and (= (regOne!33114 (regOne!33115 r!7292)) (regOne!33114 (regTwo!33115 lt!2371176))) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 (regTwo!33115 lt!2371176)))) (= lambda!352385 lambda!352326))))

(declare-fun bs!1598250 () Bool)

(assert (= bs!1598250 (and b!6385559 d!2001832)))

(assert (=> bs!1598250 (= (and (= (regOne!33114 (regOne!33115 r!7292)) lt!2371171) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352385 lambda!352360))))

(declare-fun bs!1598253 () Bool)

(assert (= bs!1598253 (and b!6385559 d!2001462)))

(assert (=> bs!1598253 (not (= lambda!352385 lambda!352311))))

(declare-fun bs!1598255 () Bool)

(assert (= bs!1598255 (and b!6385559 b!6384262)))

(assert (=> bs!1598255 (not (= lambda!352385 lambda!352295))))

(declare-fun bs!1598256 () Bool)

(assert (= bs!1598256 (and b!6385559 b!6384269)))

(assert (=> bs!1598256 (= (and (= (regOne!33114 (regOne!33115 r!7292)) (regOne!33114 r!7292)) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352385 lambda!352296))))

(declare-fun bs!1598257 () Bool)

(assert (= bs!1598257 (and b!6385559 b!6384359)))

(assert (=> bs!1598257 (= (and (= (regOne!33114 (regOne!33115 r!7292)) (regOne!33114 lt!2371176)) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 lt!2371176))) (= lambda!352385 lambda!352307))))

(declare-fun bs!1598258 () Bool)

(assert (= bs!1598258 (and b!6385559 b!6383538)))

(assert (=> bs!1598258 (= (and (= (regOne!33114 (regOne!33115 r!7292)) lt!2371171) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352385 lambda!352239))))

(assert (=> bs!1598239 (= (and (= (regOne!33114 (regOne!33115 r!7292)) (regOne!33114 r!7292)) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352385 lambda!352236))))

(declare-fun bs!1598259 () Bool)

(assert (= bs!1598259 (and b!6385559 d!2001398)))

(assert (=> bs!1598259 (= (and (= (regOne!33114 (regOne!33115 r!7292)) lt!2371171) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352385 lambda!352302))))

(assert (=> bs!1598250 (not (= lambda!352385 lambda!352359))))

(assert (=> bs!1598235 (= (and (= (regOne!33114 (regOne!33115 r!7292)) (regOne!33114 r!7292)) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 r!7292))) (= lambda!352385 lambda!352313))))

(declare-fun bs!1598260 () Bool)

(assert (= bs!1598260 (and b!6385559 b!6384638)))

(assert (=> bs!1598260 (= (and (= (regOne!33114 (regOne!33115 r!7292)) (regOne!33114 (regTwo!33115 r!7292))) (= (regTwo!33114 (regOne!33115 r!7292)) (regTwo!33114 (regTwo!33115 r!7292)))) (= lambda!352385 lambda!352318))))

(declare-fun bs!1598261 () Bool)

(assert (= bs!1598261 (and b!6385559 b!6384352)))

(assert (=> bs!1598261 (not (= lambda!352385 lambda!352306))))

(assert (=> bs!1598244 (not (= lambda!352385 lambda!352361))))

(declare-fun bs!1598262 () Bool)

(assert (= bs!1598262 (and b!6385559 d!2001404)))

(assert (=> bs!1598262 (not (= lambda!352385 lambda!352305))))

(declare-fun bs!1598263 () Bool)

(assert (= bs!1598263 (and b!6385559 b!6384646)))

(assert (=> bs!1598263 (not (= lambda!352385 lambda!352325))))

(declare-fun bs!1598264 () Bool)

(assert (= bs!1598264 (and b!6385559 b!6384631)))

(assert (=> bs!1598264 (not (= lambda!352385 lambda!352317))))

(assert (=> bs!1598258 (not (= lambda!352385 lambda!352238))))

(assert (=> bs!1598259 (not (= lambda!352385 lambda!352301))))

(assert (=> b!6385559 true))

(assert (=> b!6385559 true))

(declare-fun bm!545837 () Bool)

(declare-fun call!545842 () Bool)

(assert (=> bm!545837 (= call!545842 (isEmpty!37214 s!2326))))

(declare-fun b!6385550 () Bool)

(declare-fun e!3876083 () Bool)

(declare-fun e!3876080 () Bool)

(assert (=> b!6385550 (= e!3876083 e!3876080)))

(declare-fun res!2626639 () Bool)

(assert (=> b!6385550 (= res!2626639 (not ((_ is EmptyLang!16301) (regOne!33115 r!7292))))))

(assert (=> b!6385550 (=> (not res!2626639) (not e!3876080))))

(declare-fun b!6385551 () Bool)

(declare-fun e!3876082 () Bool)

(assert (=> b!6385551 (= e!3876082 (= s!2326 (Cons!65078 (c!1163182 (regOne!33115 r!7292)) Nil!65078)))))

(declare-fun e!3876084 () Bool)

(declare-fun call!545843 () Bool)

(assert (=> b!6385552 (= e!3876084 call!545843)))

(declare-fun b!6385553 () Bool)

(declare-fun e!3876085 () Bool)

(assert (=> b!6385553 (= e!3876085 (matchRSpec!3402 (regTwo!33115 (regOne!33115 r!7292)) s!2326))))

(declare-fun b!6385554 () Bool)

(declare-fun e!3876079 () Bool)

(declare-fun e!3876081 () Bool)

(assert (=> b!6385554 (= e!3876079 e!3876081)))

(declare-fun c!1163756 () Bool)

(assert (=> b!6385554 (= c!1163756 ((_ is Star!16301) (regOne!33115 r!7292)))))

(declare-fun b!6385555 () Bool)

(declare-fun res!2626641 () Bool)

(assert (=> b!6385555 (=> res!2626641 e!3876084)))

(assert (=> b!6385555 (= res!2626641 call!545842)))

(assert (=> b!6385555 (= e!3876081 e!3876084)))

(declare-fun bm!545838 () Bool)

(assert (=> bm!545838 (= call!545843 (Exists!3371 (ite c!1163756 lambda!352384 lambda!352385)))))

(declare-fun d!2002020 () Bool)

(declare-fun c!1163757 () Bool)

(assert (=> d!2002020 (= c!1163757 ((_ is EmptyExpr!16301) (regOne!33115 r!7292)))))

(assert (=> d!2002020 (= (matchRSpec!3402 (regOne!33115 r!7292) s!2326) e!3876083)))

(declare-fun b!6385549 () Bool)

(assert (=> b!6385549 (= e!3876083 call!545842)))

(declare-fun b!6385556 () Bool)

(declare-fun c!1163758 () Bool)

(assert (=> b!6385556 (= c!1163758 ((_ is Union!16301) (regOne!33115 r!7292)))))

(assert (=> b!6385556 (= e!3876082 e!3876079)))

(declare-fun b!6385557 () Bool)

(assert (=> b!6385557 (= e!3876079 e!3876085)))

(declare-fun res!2626640 () Bool)

(assert (=> b!6385557 (= res!2626640 (matchRSpec!3402 (regOne!33115 (regOne!33115 r!7292)) s!2326))))

(assert (=> b!6385557 (=> res!2626640 e!3876085)))

(declare-fun b!6385558 () Bool)

(declare-fun c!1163759 () Bool)

(assert (=> b!6385558 (= c!1163759 ((_ is ElementMatch!16301) (regOne!33115 r!7292)))))

(assert (=> b!6385558 (= e!3876080 e!3876082)))

(assert (=> b!6385559 (= e!3876081 call!545843)))

(assert (= (and d!2002020 c!1163757) b!6385549))

(assert (= (and d!2002020 (not c!1163757)) b!6385550))

(assert (= (and b!6385550 res!2626639) b!6385558))

(assert (= (and b!6385558 c!1163759) b!6385551))

(assert (= (and b!6385558 (not c!1163759)) b!6385556))

(assert (= (and b!6385556 c!1163758) b!6385557))

(assert (= (and b!6385556 (not c!1163758)) b!6385554))

(assert (= (and b!6385557 (not res!2626640)) b!6385553))

(assert (= (and b!6385554 c!1163756) b!6385555))

(assert (= (and b!6385554 (not c!1163756)) b!6385559))

(assert (= (and b!6385555 (not res!2626641)) b!6385552))

(assert (= (or b!6385552 b!6385559) bm!545838))

(assert (= (or b!6385549 b!6385555) bm!545837))

(assert (=> bm!545837 m!7183946))

(declare-fun m!7185424 () Bool)

(assert (=> b!6385553 m!7185424))

(declare-fun m!7185426 () Bool)

(assert (=> bm!545838 m!7185426))

(declare-fun m!7185428 () Bool)

(assert (=> b!6385557 m!7185428))

(assert (=> b!6384267 d!2002020))

(declare-fun d!2002036 () Bool)

(assert (=> d!2002036 (= (isUnion!1139 lt!2371265) ((_ is Union!16301) lt!2371265))))

(assert (=> b!6384188 d!2002036))

(declare-fun b!6385617 () Bool)

(declare-fun e!3876124 () (InoxSet Context!11370))

(assert (=> b!6385617 (= e!3876124 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6385618 () Bool)

(declare-fun call!545854 () (InoxSet Context!11370))

(assert (=> b!6385618 (= e!3876124 call!545854)))

(declare-fun b!6385619 () Bool)

(declare-fun e!3876121 () (InoxSet Context!11370))

(declare-fun e!3876119 () (InoxSet Context!11370))

(assert (=> b!6385619 (= e!3876121 e!3876119)))

(declare-fun c!1163783 () Bool)

(assert (=> b!6385619 (= c!1163783 ((_ is Union!16301) (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))

(declare-fun b!6385620 () Bool)

(declare-fun e!3876122 () (InoxSet Context!11370))

(declare-fun call!545853 () (InoxSet Context!11370))

(declare-fun call!545855 () (InoxSet Context!11370))

(assert (=> b!6385620 (= e!3876122 ((_ map or) call!545853 call!545855))))

(declare-fun b!6385621 () Bool)

(declare-fun call!545857 () (InoxSet Context!11370))

(assert (=> b!6385621 (= e!3876119 ((_ map or) call!545857 call!545853))))

(declare-fun bm!545847 () Bool)

(assert (=> bm!545847 (= call!545855 call!545857)))

(declare-fun call!545856 () List!65203)

(declare-fun bm!545848 () Bool)

(declare-fun c!1163782 () Bool)

(declare-fun c!1163779 () Bool)

(assert (=> bm!545848 (= call!545856 ($colon$colon!2161 (exprs!6185 (ite c!1163420 lt!2371183 (Context!11371 call!545624))) (ite (or c!1163779 c!1163782) (regTwo!33114 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))) (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))))))))

(declare-fun b!6385622 () Bool)

(declare-fun e!3876120 () (InoxSet Context!11370))

(assert (=> b!6385622 (= e!3876120 call!545854)))

(declare-fun c!1163780 () Bool)

(declare-fun d!2002038 () Bool)

(assert (=> d!2002038 (= c!1163780 (and ((_ is ElementMatch!16301) (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))) (= (c!1163182 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))) (h!71526 s!2326))))))

(assert (=> d!2002038 (= (derivationStepZipperDown!1549 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))) (ite c!1163420 lt!2371183 (Context!11371 call!545624)) (h!71526 s!2326)) e!3876121)))

(declare-fun bm!545849 () Bool)

(assert (=> bm!545849 (= call!545854 call!545855)))

(declare-fun bm!545850 () Bool)

(assert (=> bm!545850 (= call!545853 (derivationStepZipperDown!1549 (ite c!1163783 (regTwo!33115 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))) (regOne!33114 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))))) (ite c!1163783 (ite c!1163420 lt!2371183 (Context!11371 call!545624)) (Context!11371 call!545856)) (h!71526 s!2326)))))

(declare-fun b!6385623 () Bool)

(declare-fun e!3876123 () Bool)

(assert (=> b!6385623 (= c!1163779 e!3876123)))

(declare-fun res!2626661 () Bool)

(assert (=> b!6385623 (=> (not res!2626661) (not e!3876123))))

(assert (=> b!6385623 (= res!2626661 ((_ is Concat!25146) (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))

(assert (=> b!6385623 (= e!3876119 e!3876122)))

(declare-fun call!545852 () List!65203)

(declare-fun bm!545851 () Bool)

(assert (=> bm!545851 (= call!545857 (derivationStepZipperDown!1549 (ite c!1163783 (regOne!33115 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))) (ite c!1163779 (regTwo!33114 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))) (ite c!1163782 (regOne!33114 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))) (reg!16630 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))))))) (ite (or c!1163783 c!1163779) (ite c!1163420 lt!2371183 (Context!11371 call!545624)) (Context!11371 call!545852)) (h!71526 s!2326)))))

(declare-fun b!6385624 () Bool)

(assert (=> b!6385624 (= e!3876121 (store ((as const (Array Context!11370 Bool)) false) (ite c!1163420 lt!2371183 (Context!11371 call!545624)) true))))

(declare-fun bm!545852 () Bool)

(assert (=> bm!545852 (= call!545852 call!545856)))

(declare-fun b!6385625 () Bool)

(assert (=> b!6385625 (= e!3876123 (nullable!6294 (regOne!33114 (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))))))))

(declare-fun b!6385626 () Bool)

(assert (=> b!6385626 (= e!3876122 e!3876120)))

(assert (=> b!6385626 (= c!1163782 ((_ is Concat!25146) (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))

(declare-fun b!6385627 () Bool)

(declare-fun c!1163781 () Bool)

(assert (=> b!6385627 (= c!1163781 ((_ is Star!16301) (ite c!1163420 (regTwo!33115 (h!71527 (exprs!6185 (h!71528 zl!343)))) (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343)))))))))

(assert (=> b!6385627 (= e!3876120 e!3876124)))

(assert (= (and d!2002038 c!1163780) b!6385624))

(assert (= (and d!2002038 (not c!1163780)) b!6385619))

(assert (= (and b!6385619 c!1163783) b!6385621))

(assert (= (and b!6385619 (not c!1163783)) b!6385623))

(assert (= (and b!6385623 res!2626661) b!6385625))

(assert (= (and b!6385623 c!1163779) b!6385620))

(assert (= (and b!6385623 (not c!1163779)) b!6385626))

(assert (= (and b!6385626 c!1163782) b!6385622))

(assert (= (and b!6385626 (not c!1163782)) b!6385627))

(assert (= (and b!6385627 c!1163781) b!6385618))

(assert (= (and b!6385627 (not c!1163781)) b!6385617))

(assert (= (or b!6385622 b!6385618) bm!545852))

(assert (= (or b!6385622 b!6385618) bm!545849))

(assert (= (or b!6385620 bm!545852) bm!545848))

(assert (= (or b!6385620 bm!545849) bm!545847))

(assert (= (or b!6385621 b!6385620) bm!545850))

(assert (= (or b!6385621 bm!545847) bm!545851))

(declare-fun m!7185450 () Bool)

(assert (=> bm!545850 m!7185450))

(declare-fun m!7185452 () Bool)

(assert (=> b!6385624 m!7185452))

(declare-fun m!7185454 () Bool)

(assert (=> bm!545851 m!7185454))

(declare-fun m!7185456 () Bool)

(assert (=> b!6385625 m!7185456))

(declare-fun m!7185458 () Bool)

(assert (=> bm!545848 m!7185458))

(assert (=> bm!545618 d!2002038))

(declare-fun b!6385630 () Bool)

(declare-fun e!3876126 () List!65202)

(assert (=> b!6385630 (= e!3876126 (_2!36583 (get!22535 lt!2371286)))))

(declare-fun b!6385631 () Bool)

(assert (=> b!6385631 (= e!3876126 (Cons!65078 (h!71526 (_1!36583 (get!22535 lt!2371286))) (++!14369 (t!378806 (_1!36583 (get!22535 lt!2371286))) (_2!36583 (get!22535 lt!2371286)))))))

(declare-fun b!6385632 () Bool)

(declare-fun res!2626663 () Bool)

(declare-fun e!3876127 () Bool)

(assert (=> b!6385632 (=> (not res!2626663) (not e!3876127))))

(declare-fun lt!2371388 () List!65202)

(assert (=> b!6385632 (= res!2626663 (= (size!40360 lt!2371388) (+ (size!40360 (_1!36583 (get!22535 lt!2371286))) (size!40360 (_2!36583 (get!22535 lt!2371286))))))))

(declare-fun d!2002042 () Bool)

(assert (=> d!2002042 e!3876127))

(declare-fun res!2626662 () Bool)

(assert (=> d!2002042 (=> (not res!2626662) (not e!3876127))))

(assert (=> d!2002042 (= res!2626662 (= (content!12317 lt!2371388) ((_ map or) (content!12317 (_1!36583 (get!22535 lt!2371286))) (content!12317 (_2!36583 (get!22535 lt!2371286))))))))

(assert (=> d!2002042 (= lt!2371388 e!3876126)))

(declare-fun c!1163785 () Bool)

(assert (=> d!2002042 (= c!1163785 ((_ is Nil!65078) (_1!36583 (get!22535 lt!2371286))))))

(assert (=> d!2002042 (= (++!14369 (_1!36583 (get!22535 lt!2371286)) (_2!36583 (get!22535 lt!2371286))) lt!2371388)))

(declare-fun b!6385633 () Bool)

(assert (=> b!6385633 (= e!3876127 (or (not (= (_2!36583 (get!22535 lt!2371286)) Nil!65078)) (= lt!2371388 (_1!36583 (get!22535 lt!2371286)))))))

(assert (= (and d!2002042 c!1163785) b!6385630))

(assert (= (and d!2002042 (not c!1163785)) b!6385631))

(assert (= (and d!2002042 res!2626662) b!6385632))

(assert (= (and b!6385632 res!2626663) b!6385633))

(declare-fun m!7185460 () Bool)

(assert (=> b!6385631 m!7185460))

(declare-fun m!7185462 () Bool)

(assert (=> b!6385632 m!7185462))

(declare-fun m!7185464 () Bool)

(assert (=> b!6385632 m!7185464))

(declare-fun m!7185466 () Bool)

(assert (=> b!6385632 m!7185466))

(declare-fun m!7185468 () Bool)

(assert (=> d!2002042 m!7185468))

(declare-fun m!7185470 () Bool)

(assert (=> d!2002042 m!7185470))

(declare-fun m!7185472 () Bool)

(assert (=> d!2002042 m!7185472))

(assert (=> b!6384318 d!2002042))

(assert (=> b!6384318 d!2001536))

(declare-fun d!2002044 () Bool)

(assert (=> d!2002044 (= ($colon$colon!2161 (exprs!6185 lt!2371169) (ite (or c!1163332 c!1163335) (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (regOne!33114 r!7292)))) (Cons!65079 (ite (or c!1163332 c!1163335) (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (regOne!33114 r!7292))) (exprs!6185 lt!2371169)))))

(assert (=> bm!545582 d!2002044))

(declare-fun d!2002046 () Bool)

(declare-fun c!1163793 () Bool)

(assert (=> d!2002046 (= c!1163793 ((_ is Nil!65080) lt!2371262))))

(declare-fun e!3876136 () (InoxSet Context!11370))

(assert (=> d!2002046 (= (content!12316 lt!2371262) e!3876136)))

(declare-fun b!6385649 () Bool)

(assert (=> b!6385649 (= e!3876136 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6385650 () Bool)

(assert (=> b!6385650 (= e!3876136 ((_ map or) (store ((as const (Array Context!11370 Bool)) false) (h!71528 lt!2371262) true) (content!12316 (t!378808 lt!2371262))))))

(assert (= (and d!2002046 c!1163793) b!6385649))

(assert (= (and d!2002046 (not c!1163793)) b!6385650))

(declare-fun m!7185488 () Bool)

(assert (=> b!6385650 m!7185488))

(declare-fun m!7185490 () Bool)

(assert (=> b!6385650 m!7185490))

(assert (=> b!6384163 d!2002046))

(assert (=> b!6384347 d!2001530))

(declare-fun bs!1598290 () Bool)

(declare-fun b!6385665 () Bool)

(assert (= bs!1598290 (and b!6385665 d!2001464)))

(declare-fun lambda!352389 () Int)

(assert (=> bs!1598290 (not (= lambda!352389 lambda!352312))))

(declare-fun bs!1598291 () Bool)

(assert (= bs!1598291 (and b!6385665 d!2001576)))

(assert (=> bs!1598291 (not (= lambda!352389 lambda!352330))))

(declare-fun bs!1598292 () Bool)

(assert (= bs!1598292 (and b!6385665 b!6385552)))

(assert (=> bs!1598292 (= (and (= (reg!16630 (regOne!33115 lt!2371176)) (reg!16630 (regOne!33115 r!7292))) (= (regOne!33115 lt!2371176) (regOne!33115 r!7292))) (= lambda!352389 lambda!352384))))

(declare-fun bs!1598293 () Bool)

(assert (= bs!1598293 (and b!6385665 b!6383550)))

(assert (=> bs!1598293 (not (= lambda!352389 lambda!352235))))

(declare-fun bs!1598294 () Bool)

(assert (= bs!1598294 (and b!6385665 d!2001740)))

(assert (=> bs!1598294 (not (= lambda!352389 lambda!352346))))

(declare-fun bs!1598295 () Bool)

(assert (= bs!1598295 (and b!6385665 d!2001862)))

(assert (=> bs!1598295 (not (= lambda!352389 lambda!352363))))

(declare-fun bs!1598296 () Bool)

(assert (= bs!1598296 (and b!6385665 b!6384653)))

(assert (=> bs!1598296 (not (= lambda!352389 lambda!352326))))

(declare-fun bs!1598297 () Bool)

(assert (= bs!1598297 (and b!6385665 d!2001832)))

(assert (=> bs!1598297 (not (= lambda!352389 lambda!352360))))

(declare-fun bs!1598298 () Bool)

(assert (= bs!1598298 (and b!6385665 d!2001462)))

(assert (=> bs!1598298 (not (= lambda!352389 lambda!352311))))

(declare-fun bs!1598299 () Bool)

(assert (= bs!1598299 (and b!6385665 b!6384262)))

(assert (=> bs!1598299 (= (and (= (reg!16630 (regOne!33115 lt!2371176)) (reg!16630 r!7292)) (= (regOne!33115 lt!2371176) r!7292)) (= lambda!352389 lambda!352295))))

(declare-fun bs!1598300 () Bool)

(assert (= bs!1598300 (and b!6385665 b!6384269)))

(assert (=> bs!1598300 (not (= lambda!352389 lambda!352296))))

(declare-fun bs!1598301 () Bool)

(assert (= bs!1598301 (and b!6385665 b!6384359)))

(assert (=> bs!1598301 (not (= lambda!352389 lambda!352307))))

(declare-fun bs!1598302 () Bool)

(assert (= bs!1598302 (and b!6385665 b!6383538)))

(assert (=> bs!1598302 (not (= lambda!352389 lambda!352239))))

(assert (=> bs!1598293 (not (= lambda!352389 lambda!352236))))

(declare-fun bs!1598303 () Bool)

(assert (= bs!1598303 (and b!6385665 d!2001398)))

(assert (=> bs!1598303 (not (= lambda!352389 lambda!352302))))

(assert (=> bs!1598297 (not (= lambda!352389 lambda!352359))))

(assert (=> bs!1598290 (not (= lambda!352389 lambda!352313))))

(declare-fun bs!1598304 () Bool)

(assert (= bs!1598304 (and b!6385665 b!6384638)))

(assert (=> bs!1598304 (not (= lambda!352389 lambda!352318))))

(declare-fun bs!1598305 () Bool)

(assert (= bs!1598305 (and b!6385665 b!6384352)))

(assert (=> bs!1598305 (= (and (= (reg!16630 (regOne!33115 lt!2371176)) (reg!16630 lt!2371176)) (= (regOne!33115 lt!2371176) lt!2371176)) (= lambda!352389 lambda!352306))))

(assert (=> bs!1598295 (not (= lambda!352389 lambda!352361))))

(declare-fun bs!1598306 () Bool)

(assert (= bs!1598306 (and b!6385665 d!2001404)))

(assert (=> bs!1598306 (not (= lambda!352389 lambda!352305))))

(declare-fun bs!1598307 () Bool)

(assert (= bs!1598307 (and b!6385665 b!6384646)))

(assert (=> bs!1598307 (= (and (= (reg!16630 (regOne!33115 lt!2371176)) (reg!16630 (regTwo!33115 lt!2371176))) (= (regOne!33115 lt!2371176) (regTwo!33115 lt!2371176))) (= lambda!352389 lambda!352325))))

(declare-fun bs!1598308 () Bool)

(assert (= bs!1598308 (and b!6385665 b!6385559)))

(assert (=> bs!1598308 (not (= lambda!352389 lambda!352385))))

(declare-fun bs!1598309 () Bool)

(assert (= bs!1598309 (and b!6385665 b!6384631)))

(assert (=> bs!1598309 (= (and (= (reg!16630 (regOne!33115 lt!2371176)) (reg!16630 (regTwo!33115 r!7292))) (= (regOne!33115 lt!2371176) (regTwo!33115 r!7292))) (= lambda!352389 lambda!352317))))

(assert (=> bs!1598302 (not (= lambda!352389 lambda!352238))))

(assert (=> bs!1598303 (not (= lambda!352389 lambda!352301))))

(assert (=> b!6385665 true))

(assert (=> b!6385665 true))

(declare-fun bs!1598310 () Bool)

(declare-fun b!6385672 () Bool)

(assert (= bs!1598310 (and b!6385672 d!2001464)))

(declare-fun lambda!352390 () Int)

(assert (=> bs!1598310 (not (= lambda!352390 lambda!352312))))

(declare-fun bs!1598311 () Bool)

(assert (= bs!1598311 (and b!6385672 d!2001576)))

(assert (=> bs!1598311 (not (= lambda!352390 lambda!352330))))

(declare-fun bs!1598312 () Bool)

(assert (= bs!1598312 (and b!6385672 b!6385552)))

(assert (=> bs!1598312 (not (= lambda!352390 lambda!352384))))

(declare-fun bs!1598313 () Bool)

(assert (= bs!1598313 (and b!6385672 b!6383550)))

(assert (=> bs!1598313 (not (= lambda!352390 lambda!352235))))

(declare-fun bs!1598314 () Bool)

(assert (= bs!1598314 (and b!6385672 d!2001740)))

(assert (=> bs!1598314 (not (= lambda!352390 lambda!352346))))

(declare-fun bs!1598315 () Bool)

(assert (= bs!1598315 (and b!6385672 d!2001862)))

(assert (=> bs!1598315 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) (regOne!33114 r!7292)) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352390 lambda!352363))))

(declare-fun bs!1598316 () Bool)

(assert (= bs!1598316 (and b!6385672 b!6384653)))

(assert (=> bs!1598316 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) (regOne!33114 (regTwo!33115 lt!2371176))) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 (regTwo!33115 lt!2371176)))) (= lambda!352390 lambda!352326))))

(declare-fun bs!1598317 () Bool)

(assert (= bs!1598317 (and b!6385672 d!2001832)))

(assert (=> bs!1598317 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) lt!2371171) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352390 lambda!352360))))

(declare-fun bs!1598318 () Bool)

(assert (= bs!1598318 (and b!6385672 d!2001462)))

(assert (=> bs!1598318 (not (= lambda!352390 lambda!352311))))

(declare-fun bs!1598319 () Bool)

(assert (= bs!1598319 (and b!6385672 b!6384262)))

(assert (=> bs!1598319 (not (= lambda!352390 lambda!352295))))

(declare-fun bs!1598320 () Bool)

(assert (= bs!1598320 (and b!6385672 b!6385665)))

(assert (=> bs!1598320 (not (= lambda!352390 lambda!352389))))

(declare-fun bs!1598321 () Bool)

(assert (= bs!1598321 (and b!6385672 b!6384269)))

(assert (=> bs!1598321 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) (regOne!33114 r!7292)) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352390 lambda!352296))))

(declare-fun bs!1598322 () Bool)

(assert (= bs!1598322 (and b!6385672 b!6384359)))

(assert (=> bs!1598322 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) (regOne!33114 lt!2371176)) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 lt!2371176))) (= lambda!352390 lambda!352307))))

(declare-fun bs!1598323 () Bool)

(assert (= bs!1598323 (and b!6385672 b!6383538)))

(assert (=> bs!1598323 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) lt!2371171) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352390 lambda!352239))))

(assert (=> bs!1598313 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) (regOne!33114 r!7292)) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352390 lambda!352236))))

(declare-fun bs!1598324 () Bool)

(assert (= bs!1598324 (and b!6385672 d!2001398)))

(assert (=> bs!1598324 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) lt!2371171) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352390 lambda!352302))))

(assert (=> bs!1598317 (not (= lambda!352390 lambda!352359))))

(assert (=> bs!1598310 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) (regOne!33114 r!7292)) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 r!7292))) (= lambda!352390 lambda!352313))))

(declare-fun bs!1598325 () Bool)

(assert (= bs!1598325 (and b!6385672 b!6384638)))

(assert (=> bs!1598325 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) (regOne!33114 (regTwo!33115 r!7292))) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 (regTwo!33115 r!7292)))) (= lambda!352390 lambda!352318))))

(declare-fun bs!1598326 () Bool)

(assert (= bs!1598326 (and b!6385672 b!6384352)))

(assert (=> bs!1598326 (not (= lambda!352390 lambda!352306))))

(assert (=> bs!1598315 (not (= lambda!352390 lambda!352361))))

(declare-fun bs!1598327 () Bool)

(assert (= bs!1598327 (and b!6385672 d!2001404)))

(assert (=> bs!1598327 (not (= lambda!352390 lambda!352305))))

(declare-fun bs!1598328 () Bool)

(assert (= bs!1598328 (and b!6385672 b!6384646)))

(assert (=> bs!1598328 (not (= lambda!352390 lambda!352325))))

(declare-fun bs!1598329 () Bool)

(assert (= bs!1598329 (and b!6385672 b!6385559)))

(assert (=> bs!1598329 (= (and (= (regOne!33114 (regOne!33115 lt!2371176)) (regOne!33114 (regOne!33115 r!7292))) (= (regTwo!33114 (regOne!33115 lt!2371176)) (regTwo!33114 (regOne!33115 r!7292)))) (= lambda!352390 lambda!352385))))

(declare-fun bs!1598330 () Bool)

(assert (= bs!1598330 (and b!6385672 b!6384631)))

(assert (=> bs!1598330 (not (= lambda!352390 lambda!352317))))

(assert (=> bs!1598323 (not (= lambda!352390 lambda!352238))))

(assert (=> bs!1598324 (not (= lambda!352390 lambda!352301))))

(assert (=> b!6385672 true))

(assert (=> b!6385672 true))

(declare-fun bm!545865 () Bool)

(declare-fun call!545870 () Bool)

(assert (=> bm!545865 (= call!545870 (isEmpty!37214 s!2326))))

(declare-fun b!6385663 () Bool)

(declare-fun e!3876147 () Bool)

(declare-fun e!3876144 () Bool)

(assert (=> b!6385663 (= e!3876147 e!3876144)))

(declare-fun res!2626666 () Bool)

(assert (=> b!6385663 (= res!2626666 (not ((_ is EmptyLang!16301) (regOne!33115 lt!2371176))))))

(assert (=> b!6385663 (=> (not res!2626666) (not e!3876144))))

(declare-fun b!6385664 () Bool)

(declare-fun e!3876146 () Bool)

(assert (=> b!6385664 (= e!3876146 (= s!2326 (Cons!65078 (c!1163182 (regOne!33115 lt!2371176)) Nil!65078)))))

(declare-fun e!3876148 () Bool)

(declare-fun call!545871 () Bool)

(assert (=> b!6385665 (= e!3876148 call!545871)))

(declare-fun b!6385666 () Bool)

(declare-fun e!3876149 () Bool)

(assert (=> b!6385666 (= e!3876149 (matchRSpec!3402 (regTwo!33115 (regOne!33115 lt!2371176)) s!2326))))

(declare-fun b!6385667 () Bool)

(declare-fun e!3876143 () Bool)

(declare-fun e!3876145 () Bool)

(assert (=> b!6385667 (= e!3876143 e!3876145)))

(declare-fun c!1163799 () Bool)

(assert (=> b!6385667 (= c!1163799 ((_ is Star!16301) (regOne!33115 lt!2371176)))))

(declare-fun b!6385668 () Bool)

(declare-fun res!2626668 () Bool)

(assert (=> b!6385668 (=> res!2626668 e!3876148)))

(assert (=> b!6385668 (= res!2626668 call!545870)))

(assert (=> b!6385668 (= e!3876145 e!3876148)))

(declare-fun bm!545866 () Bool)

(assert (=> bm!545866 (= call!545871 (Exists!3371 (ite c!1163799 lambda!352389 lambda!352390)))))

(declare-fun d!2002052 () Bool)

(declare-fun c!1163800 () Bool)

(assert (=> d!2002052 (= c!1163800 ((_ is EmptyExpr!16301) (regOne!33115 lt!2371176)))))

(assert (=> d!2002052 (= (matchRSpec!3402 (regOne!33115 lt!2371176) s!2326) e!3876147)))

(declare-fun b!6385662 () Bool)

(assert (=> b!6385662 (= e!3876147 call!545870)))

(declare-fun b!6385669 () Bool)

(declare-fun c!1163801 () Bool)

(assert (=> b!6385669 (= c!1163801 ((_ is Union!16301) (regOne!33115 lt!2371176)))))

(assert (=> b!6385669 (= e!3876146 e!3876143)))

(declare-fun b!6385670 () Bool)

(assert (=> b!6385670 (= e!3876143 e!3876149)))

(declare-fun res!2626667 () Bool)

(assert (=> b!6385670 (= res!2626667 (matchRSpec!3402 (regOne!33115 (regOne!33115 lt!2371176)) s!2326))))

(assert (=> b!6385670 (=> res!2626667 e!3876149)))

(declare-fun b!6385671 () Bool)

(declare-fun c!1163802 () Bool)

(assert (=> b!6385671 (= c!1163802 ((_ is ElementMatch!16301) (regOne!33115 lt!2371176)))))

(assert (=> b!6385671 (= e!3876144 e!3876146)))

(assert (=> b!6385672 (= e!3876145 call!545871)))

(assert (= (and d!2002052 c!1163800) b!6385662))

(assert (= (and d!2002052 (not c!1163800)) b!6385663))

(assert (= (and b!6385663 res!2626666) b!6385671))

(assert (= (and b!6385671 c!1163802) b!6385664))

(assert (= (and b!6385671 (not c!1163802)) b!6385669))

(assert (= (and b!6385669 c!1163801) b!6385670))

(assert (= (and b!6385669 (not c!1163801)) b!6385667))

(assert (= (and b!6385670 (not res!2626667)) b!6385666))

(assert (= (and b!6385667 c!1163799) b!6385668))

(assert (= (and b!6385667 (not c!1163799)) b!6385672))

(assert (= (and b!6385668 (not res!2626668)) b!6385665))

(assert (= (or b!6385665 b!6385672) bm!545866))

(assert (= (or b!6385662 b!6385668) bm!545865))

(assert (=> bm!545865 m!7183946))

(declare-fun m!7185520 () Bool)

(assert (=> b!6385666 m!7185520))

(declare-fun m!7185522 () Bool)

(assert (=> bm!545866 m!7185522))

(declare-fun m!7185524 () Bool)

(assert (=> b!6385670 m!7185524))

(assert (=> b!6384357 d!2002052))

(declare-fun bm!545868 () Bool)

(declare-fun call!545873 () Bool)

(declare-fun c!1163807 () Bool)

(assert (=> bm!545868 (= call!545873 (nullable!6294 (ite c!1163807 (regTwo!33115 (regOne!33114 (regOne!33114 r!7292))) (regTwo!33114 (regOne!33114 (regOne!33114 r!7292))))))))

(declare-fun b!6385698 () Bool)

(declare-fun e!3876172 () Bool)

(declare-fun e!3876171 () Bool)

(assert (=> b!6385698 (= e!3876172 e!3876171)))

(declare-fun res!2626686 () Bool)

(declare-fun call!545874 () Bool)

(assert (=> b!6385698 (= res!2626686 call!545874)))

(assert (=> b!6385698 (=> (not res!2626686) (not e!3876171))))

(declare-fun bm!545869 () Bool)

(assert (=> bm!545869 (= call!545874 (nullable!6294 (ite c!1163807 (regOne!33115 (regOne!33114 (regOne!33114 r!7292))) (regOne!33114 (regOne!33114 (regOne!33114 r!7292))))))))

(declare-fun b!6385699 () Bool)

(declare-fun e!3876174 () Bool)

(declare-fun e!3876176 () Bool)

(assert (=> b!6385699 (= e!3876174 e!3876176)))

(declare-fun res!2626684 () Bool)

(assert (=> b!6385699 (=> res!2626684 e!3876176)))

(assert (=> b!6385699 (= res!2626684 ((_ is Star!16301) (regOne!33114 (regOne!33114 r!7292))))))

(declare-fun b!6385700 () Bool)

(declare-fun e!3876175 () Bool)

(assert (=> b!6385700 (= e!3876175 e!3876174)))

(declare-fun res!2626683 () Bool)

(assert (=> b!6385700 (=> (not res!2626683) (not e!3876174))))

(assert (=> b!6385700 (= res!2626683 (and (not ((_ is EmptyLang!16301) (regOne!33114 (regOne!33114 r!7292)))) (not ((_ is ElementMatch!16301) (regOne!33114 (regOne!33114 r!7292))))))))

(declare-fun d!2002064 () Bool)

(declare-fun res!2626687 () Bool)

(assert (=> d!2002064 (=> res!2626687 e!3876175)))

(assert (=> d!2002064 (= res!2626687 ((_ is EmptyExpr!16301) (regOne!33114 (regOne!33114 r!7292))))))

(assert (=> d!2002064 (= (nullableFct!2240 (regOne!33114 (regOne!33114 r!7292))) e!3876175)))

(declare-fun b!6385701 () Bool)

(declare-fun e!3876173 () Bool)

(assert (=> b!6385701 (= e!3876172 e!3876173)))

(declare-fun res!2626685 () Bool)

(assert (=> b!6385701 (= res!2626685 call!545874)))

(assert (=> b!6385701 (=> res!2626685 e!3876173)))

(declare-fun b!6385702 () Bool)

(assert (=> b!6385702 (= e!3876173 call!545873)))

(declare-fun b!6385703 () Bool)

(assert (=> b!6385703 (= e!3876171 call!545873)))

(declare-fun b!6385704 () Bool)

(assert (=> b!6385704 (= e!3876176 e!3876172)))

(assert (=> b!6385704 (= c!1163807 ((_ is Union!16301) (regOne!33114 (regOne!33114 r!7292))))))

(assert (= (and d!2002064 (not res!2626687)) b!6385700))

(assert (= (and b!6385700 res!2626683) b!6385699))

(assert (= (and b!6385699 (not res!2626684)) b!6385704))

(assert (= (and b!6385704 c!1163807) b!6385701))

(assert (= (and b!6385704 (not c!1163807)) b!6385698))

(assert (= (and b!6385701 (not res!2626685)) b!6385702))

(assert (= (and b!6385698 res!2626686) b!6385703))

(assert (= (or b!6385702 b!6385703) bm!545868))

(assert (= (or b!6385701 b!6385698) bm!545869))

(declare-fun m!7185528 () Bool)

(assert (=> bm!545868 m!7185528))

(declare-fun m!7185532 () Bool)

(assert (=> bm!545869 m!7185532))

(assert (=> d!2001454 d!2002064))

(declare-fun b!6385709 () Bool)

(declare-fun e!3876183 () Bool)

(declare-fun e!3876180 () Bool)

(assert (=> b!6385709 (= e!3876183 e!3876180)))

(declare-fun c!1163811 () Bool)

(assert (=> b!6385709 (= c!1163811 ((_ is Union!16301) lt!2371274))))

(declare-fun b!6385710 () Bool)

(declare-fun e!3876181 () Bool)

(declare-fun call!545875 () Bool)

(assert (=> b!6385710 (= e!3876181 call!545875)))

(declare-fun b!6385711 () Bool)

(declare-fun e!3876185 () Bool)

(assert (=> b!6385711 (= e!3876183 e!3876185)))

(declare-fun res!2626692 () Bool)

(assert (=> b!6385711 (= res!2626692 (not (nullable!6294 (reg!16630 lt!2371274))))))

(assert (=> b!6385711 (=> (not res!2626692) (not e!3876185))))

(declare-fun bm!545870 () Bool)

(declare-fun call!545877 () Bool)

(assert (=> bm!545870 (= call!545877 (validRegex!8037 (ite c!1163811 (regOne!33115 lt!2371274) (regOne!33114 lt!2371274))))))

(declare-fun d!2002068 () Bool)

(declare-fun res!2626688 () Bool)

(declare-fun e!3876184 () Bool)

(assert (=> d!2002068 (=> res!2626688 e!3876184)))

(assert (=> d!2002068 (= res!2626688 ((_ is ElementMatch!16301) lt!2371274))))

(assert (=> d!2002068 (= (validRegex!8037 lt!2371274) e!3876184)))

(declare-fun b!6385712 () Bool)

(assert (=> b!6385712 (= e!3876184 e!3876183)))

(declare-fun c!1163810 () Bool)

(assert (=> b!6385712 (= c!1163810 ((_ is Star!16301) lt!2371274))))

(declare-fun b!6385713 () Bool)

(declare-fun e!3876178 () Bool)

(declare-fun e!3876182 () Bool)

(assert (=> b!6385713 (= e!3876178 e!3876182)))

(declare-fun res!2626689 () Bool)

(assert (=> b!6385713 (=> (not res!2626689) (not e!3876182))))

(assert (=> b!6385713 (= res!2626689 call!545877)))

(declare-fun bm!545871 () Bool)

(declare-fun call!545876 () Bool)

(assert (=> bm!545871 (= call!545875 call!545876)))

(declare-fun b!6385714 () Bool)

(assert (=> b!6385714 (= e!3876185 call!545876)))

(declare-fun bm!545872 () Bool)

(assert (=> bm!545872 (= call!545876 (validRegex!8037 (ite c!1163810 (reg!16630 lt!2371274) (ite c!1163811 (regTwo!33115 lt!2371274) (regTwo!33114 lt!2371274)))))))

(declare-fun b!6385715 () Bool)

(declare-fun res!2626690 () Bool)

(assert (=> b!6385715 (=> (not res!2626690) (not e!3876181))))

(assert (=> b!6385715 (= res!2626690 call!545877)))

(assert (=> b!6385715 (= e!3876180 e!3876181)))

(declare-fun b!6385716 () Bool)

(declare-fun res!2626691 () Bool)

(assert (=> b!6385716 (=> res!2626691 e!3876178)))

(assert (=> b!6385716 (= res!2626691 (not ((_ is Concat!25146) lt!2371274)))))

(assert (=> b!6385716 (= e!3876180 e!3876178)))

(declare-fun b!6385717 () Bool)

(assert (=> b!6385717 (= e!3876182 call!545875)))

(assert (= (and d!2002068 (not res!2626688)) b!6385712))

(assert (= (and b!6385712 c!1163810) b!6385711))

(assert (= (and b!6385712 (not c!1163810)) b!6385709))

(assert (= (and b!6385711 res!2626692) b!6385714))

(assert (= (and b!6385709 c!1163811) b!6385715))

(assert (= (and b!6385709 (not c!1163811)) b!6385716))

(assert (= (and b!6385715 res!2626690) b!6385710))

(assert (= (and b!6385716 (not res!2626691)) b!6385713))

(assert (= (and b!6385713 res!2626689) b!6385717))

(assert (= (or b!6385710 b!6385717) bm!545871))

(assert (= (or b!6385715 b!6385713) bm!545870))

(assert (= (or b!6385714 bm!545871) bm!545872))

(declare-fun m!7185540 () Bool)

(assert (=> b!6385711 m!7185540))

(declare-fun m!7185542 () Bool)

(assert (=> bm!545870 m!7185542))

(declare-fun m!7185544 () Bool)

(assert (=> bm!545872 m!7185544))

(assert (=> d!2001388 d!2002068))

(assert (=> d!2001388 d!2001374))

(assert (=> d!2001388 d!2001376))

(declare-fun d!2002076 () Bool)

(declare-fun c!1163815 () Bool)

(assert (=> d!2002076 (= c!1163815 (isEmpty!37214 (tail!12179 (t!378806 s!2326))))))

(declare-fun e!3876194 () Bool)

(assert (=> d!2002076 (= (matchZipper!2313 (derivationStepZipper!2267 ((_ map or) lt!2371150 lt!2371179) (head!13094 (t!378806 s!2326))) (tail!12179 (t!378806 s!2326))) e!3876194)))

(declare-fun b!6385729 () Bool)

(assert (=> b!6385729 (= e!3876194 (nullableZipper!2066 (derivationStepZipper!2267 ((_ map or) lt!2371150 lt!2371179) (head!13094 (t!378806 s!2326)))))))

(declare-fun b!6385730 () Bool)

(assert (=> b!6385730 (= e!3876194 (matchZipper!2313 (derivationStepZipper!2267 (derivationStepZipper!2267 ((_ map or) lt!2371150 lt!2371179) (head!13094 (t!378806 s!2326))) (head!13094 (tail!12179 (t!378806 s!2326)))) (tail!12179 (tail!12179 (t!378806 s!2326)))))))

(assert (= (and d!2002076 c!1163815) b!6385729))

(assert (= (and d!2002076 (not c!1163815)) b!6385730))

(assert (=> d!2002076 m!7183850))

(assert (=> d!2002076 m!7184690))

(assert (=> b!6385729 m!7183856))

(declare-fun m!7185546 () Bool)

(assert (=> b!6385729 m!7185546))

(assert (=> b!6385730 m!7183850))

(assert (=> b!6385730 m!7184694))

(assert (=> b!6385730 m!7183856))

(assert (=> b!6385730 m!7184694))

(declare-fun m!7185548 () Bool)

(assert (=> b!6385730 m!7185548))

(assert (=> b!6385730 m!7183850))

(assert (=> b!6385730 m!7184698))

(assert (=> b!6385730 m!7185548))

(assert (=> b!6385730 m!7184698))

(declare-fun m!7185550 () Bool)

(assert (=> b!6385730 m!7185550))

(assert (=> b!6384071 d!2002076))

(declare-fun bs!1598331 () Bool)

(declare-fun d!2002078 () Bool)

(assert (= bs!1598331 (and d!2002078 d!2001528)))

(declare-fun lambda!352391 () Int)

(assert (=> bs!1598331 (= (= (head!13094 (t!378806 s!2326)) (head!13094 s!2326)) (= lambda!352391 lambda!352316))))

(declare-fun bs!1598332 () Bool)

(assert (= bs!1598332 (and d!2002078 b!6383534)))

(assert (=> bs!1598332 (= (= (head!13094 (t!378806 s!2326)) (h!71526 s!2326)) (= lambda!352391 lambda!352237))))

(declare-fun bs!1598333 () Bool)

(assert (= bs!1598333 (and d!2002078 d!2001704)))

(assert (=> bs!1598333 (= lambda!352391 lambda!352340)))

(declare-fun bs!1598334 () Bool)

(assert (= bs!1598334 (and d!2002078 d!2001754)))

(assert (=> bs!1598334 (= lambda!352391 lambda!352347)))

(declare-fun bs!1598335 () Bool)

(assert (= bs!1598335 (and d!2002078 d!2001808)))

(assert (=> bs!1598335 (= lambda!352391 lambda!352349)))

(declare-fun bs!1598336 () Bool)

(assert (= bs!1598336 (and d!2002078 d!2001438)))

(assert (=> bs!1598336 (= (= (head!13094 (t!378806 s!2326)) (h!71526 s!2326)) (= lambda!352391 lambda!352310))))

(assert (=> d!2002078 true))

(assert (=> d!2002078 (= (derivationStepZipper!2267 ((_ map or) lt!2371150 lt!2371179) (head!13094 (t!378806 s!2326))) (flatMap!1806 ((_ map or) lt!2371150 lt!2371179) lambda!352391))))

(declare-fun bs!1598337 () Bool)

(assert (= bs!1598337 d!2002078))

(declare-fun m!7185560 () Bool)

(assert (=> bs!1598337 m!7185560))

(assert (=> b!6384071 d!2002078))

(assert (=> b!6384071 d!2001708))

(assert (=> b!6384071 d!2001710))

(declare-fun d!2002088 () Bool)

(assert (=> d!2002088 true))

(declare-fun setRes!43597 () Bool)

(assert (=> d!2002088 setRes!43597))

(declare-fun condSetEmpty!43597 () Bool)

(declare-fun res!2626704 () (InoxSet Context!11370))

(assert (=> d!2002088 (= condSetEmpty!43597 (= res!2626704 ((as const (Array Context!11370 Bool)) false)))))

(assert (=> d!2002088 (= (choose!47510 lt!2371154 lambda!352237) res!2626704)))

(declare-fun setIsEmpty!43597 () Bool)

(assert (=> setIsEmpty!43597 setRes!43597))

(declare-fun setNonEmpty!43597 () Bool)

(declare-fun setElem!43597 () Context!11370)

(declare-fun tp!1776291 () Bool)

(declare-fun e!3876201 () Bool)

(assert (=> setNonEmpty!43597 (= setRes!43597 (and tp!1776291 (inv!83999 setElem!43597) e!3876201))))

(declare-fun setRest!43597 () (InoxSet Context!11370))

(assert (=> setNonEmpty!43597 (= res!2626704 ((_ map or) (store ((as const (Array Context!11370 Bool)) false) setElem!43597 true) setRest!43597))))

(declare-fun b!6385741 () Bool)

(declare-fun tp!1776292 () Bool)

(assert (=> b!6385741 (= e!3876201 tp!1776292)))

(assert (= (and d!2002088 condSetEmpty!43597) setIsEmpty!43597))

(assert (= (and d!2002088 (not condSetEmpty!43597)) setNonEmpty!43597))

(assert (= setNonEmpty!43597 b!6385741))

(declare-fun m!7185562 () Bool)

(assert (=> setNonEmpty!43597 m!7185562))

(assert (=> d!2001420 d!2002088))

(declare-fun d!2002090 () Bool)

(assert (=> d!2002090 (= (isEmptyLang!1709 lt!2371265) ((_ is EmptyLang!16301) lt!2371265))))

(assert (=> b!6384184 d!2002090))

(assert (=> b!6384146 d!2001604))

(declare-fun b!6385742 () Bool)

(declare-fun e!3876207 () (InoxSet Context!11370))

(assert (=> b!6385742 (= e!3876207 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6385743 () Bool)

(declare-fun call!545883 () (InoxSet Context!11370))

(assert (=> b!6385743 (= e!3876207 call!545883)))

(declare-fun b!6385744 () Bool)

(declare-fun e!3876204 () (InoxSet Context!11370))

(declare-fun e!3876202 () (InoxSet Context!11370))

(assert (=> b!6385744 (= e!3876204 e!3876202)))

(declare-fun c!1163822 () Bool)

(assert (=> b!6385744 (= c!1163822 ((_ is Union!16301) (h!71527 (exprs!6185 lt!2371174))))))

(declare-fun b!6385745 () Bool)

(declare-fun e!3876205 () (InoxSet Context!11370))

(declare-fun call!545882 () (InoxSet Context!11370))

(declare-fun call!545884 () (InoxSet Context!11370))

(assert (=> b!6385745 (= e!3876205 ((_ map or) call!545882 call!545884))))

(declare-fun b!6385746 () Bool)

(declare-fun call!545886 () (InoxSet Context!11370))

(assert (=> b!6385746 (= e!3876202 ((_ map or) call!545886 call!545882))))

(declare-fun bm!545876 () Bool)

(assert (=> bm!545876 (= call!545884 call!545886)))

(declare-fun c!1163821 () Bool)

(declare-fun c!1163818 () Bool)

(declare-fun call!545885 () List!65203)

(declare-fun bm!545877 () Bool)

(assert (=> bm!545877 (= call!545885 ($colon$colon!2161 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371174)))) (ite (or c!1163818 c!1163821) (regTwo!33114 (h!71527 (exprs!6185 lt!2371174))) (h!71527 (exprs!6185 lt!2371174)))))))

(declare-fun b!6385747 () Bool)

(declare-fun e!3876203 () (InoxSet Context!11370))

(assert (=> b!6385747 (= e!3876203 call!545883)))

(declare-fun d!2002092 () Bool)

(declare-fun c!1163819 () Bool)

(assert (=> d!2002092 (= c!1163819 (and ((_ is ElementMatch!16301) (h!71527 (exprs!6185 lt!2371174))) (= (c!1163182 (h!71527 (exprs!6185 lt!2371174))) (h!71526 s!2326))))))

(assert (=> d!2002092 (= (derivationStepZipperDown!1549 (h!71527 (exprs!6185 lt!2371174)) (Context!11371 (t!378807 (exprs!6185 lt!2371174))) (h!71526 s!2326)) e!3876204)))

(declare-fun bm!545878 () Bool)

(assert (=> bm!545878 (= call!545883 call!545884)))

(declare-fun bm!545879 () Bool)

(assert (=> bm!545879 (= call!545882 (derivationStepZipperDown!1549 (ite c!1163822 (regTwo!33115 (h!71527 (exprs!6185 lt!2371174))) (regOne!33114 (h!71527 (exprs!6185 lt!2371174)))) (ite c!1163822 (Context!11371 (t!378807 (exprs!6185 lt!2371174))) (Context!11371 call!545885)) (h!71526 s!2326)))))

(declare-fun b!6385748 () Bool)

(declare-fun e!3876206 () Bool)

(assert (=> b!6385748 (= c!1163818 e!3876206)))

(declare-fun res!2626705 () Bool)

(assert (=> b!6385748 (=> (not res!2626705) (not e!3876206))))

(assert (=> b!6385748 (= res!2626705 ((_ is Concat!25146) (h!71527 (exprs!6185 lt!2371174))))))

(assert (=> b!6385748 (= e!3876202 e!3876205)))

(declare-fun call!545881 () List!65203)

(declare-fun bm!545880 () Bool)

(assert (=> bm!545880 (= call!545886 (derivationStepZipperDown!1549 (ite c!1163822 (regOne!33115 (h!71527 (exprs!6185 lt!2371174))) (ite c!1163818 (regTwo!33114 (h!71527 (exprs!6185 lt!2371174))) (ite c!1163821 (regOne!33114 (h!71527 (exprs!6185 lt!2371174))) (reg!16630 (h!71527 (exprs!6185 lt!2371174)))))) (ite (or c!1163822 c!1163818) (Context!11371 (t!378807 (exprs!6185 lt!2371174))) (Context!11371 call!545881)) (h!71526 s!2326)))))

(declare-fun b!6385749 () Bool)

(assert (=> b!6385749 (= e!3876204 (store ((as const (Array Context!11370 Bool)) false) (Context!11371 (t!378807 (exprs!6185 lt!2371174))) true))))

(declare-fun bm!545881 () Bool)

(assert (=> bm!545881 (= call!545881 call!545885)))

(declare-fun b!6385750 () Bool)

(assert (=> b!6385750 (= e!3876206 (nullable!6294 (regOne!33114 (h!71527 (exprs!6185 lt!2371174)))))))

(declare-fun b!6385751 () Bool)

(assert (=> b!6385751 (= e!3876205 e!3876203)))

(assert (=> b!6385751 (= c!1163821 ((_ is Concat!25146) (h!71527 (exprs!6185 lt!2371174))))))

(declare-fun b!6385752 () Bool)

(declare-fun c!1163820 () Bool)

(assert (=> b!6385752 (= c!1163820 ((_ is Star!16301) (h!71527 (exprs!6185 lt!2371174))))))

(assert (=> b!6385752 (= e!3876203 e!3876207)))

(assert (= (and d!2002092 c!1163819) b!6385749))

(assert (= (and d!2002092 (not c!1163819)) b!6385744))

(assert (= (and b!6385744 c!1163822) b!6385746))

(assert (= (and b!6385744 (not c!1163822)) b!6385748))

(assert (= (and b!6385748 res!2626705) b!6385750))

(assert (= (and b!6385748 c!1163818) b!6385745))

(assert (= (and b!6385748 (not c!1163818)) b!6385751))

(assert (= (and b!6385751 c!1163821) b!6385747))

(assert (= (and b!6385751 (not c!1163821)) b!6385752))

(assert (= (and b!6385752 c!1163820) b!6385743))

(assert (= (and b!6385752 (not c!1163820)) b!6385742))

(assert (= (or b!6385747 b!6385743) bm!545881))

(assert (= (or b!6385747 b!6385743) bm!545878))

(assert (= (or b!6385745 bm!545881) bm!545877))

(assert (= (or b!6385745 bm!545878) bm!545876))

(assert (= (or b!6385746 b!6385745) bm!545879))

(assert (= (or b!6385746 bm!545876) bm!545880))

(declare-fun m!7185580 () Bool)

(assert (=> bm!545879 m!7185580))

(declare-fun m!7185582 () Bool)

(assert (=> b!6385749 m!7185582))

(declare-fun m!7185584 () Bool)

(assert (=> bm!545880 m!7185584))

(declare-fun m!7185586 () Bool)

(assert (=> b!6385750 m!7185586))

(declare-fun m!7185588 () Bool)

(assert (=> bm!545877 m!7185588))

(assert (=> bm!545614 d!2002092))

(declare-fun b!6385765 () Bool)

(declare-fun e!3876220 () Bool)

(declare-fun e!3876217 () Bool)

(assert (=> b!6385765 (= e!3876220 e!3876217)))

(declare-fun c!1163828 () Bool)

(assert (=> b!6385765 (= c!1163828 ((_ is Union!16301) lt!2371265))))

(declare-fun b!6385766 () Bool)

(declare-fun e!3876218 () Bool)

(declare-fun call!545889 () Bool)

(assert (=> b!6385766 (= e!3876218 call!545889)))

(declare-fun b!6385767 () Bool)

(declare-fun e!3876222 () Bool)

(assert (=> b!6385767 (= e!3876220 e!3876222)))

(declare-fun res!2626714 () Bool)

(assert (=> b!6385767 (= res!2626714 (not (nullable!6294 (reg!16630 lt!2371265))))))

(assert (=> b!6385767 (=> (not res!2626714) (not e!3876222))))

(declare-fun bm!545884 () Bool)

(declare-fun call!545891 () Bool)

(assert (=> bm!545884 (= call!545891 (validRegex!8037 (ite c!1163828 (regOne!33115 lt!2371265) (regOne!33114 lt!2371265))))))

(declare-fun d!2002098 () Bool)

(declare-fun res!2626710 () Bool)

(declare-fun e!3876221 () Bool)

(assert (=> d!2002098 (=> res!2626710 e!3876221)))

(assert (=> d!2002098 (= res!2626710 ((_ is ElementMatch!16301) lt!2371265))))

(assert (=> d!2002098 (= (validRegex!8037 lt!2371265) e!3876221)))

(declare-fun b!6385768 () Bool)

(assert (=> b!6385768 (= e!3876221 e!3876220)))

(declare-fun c!1163827 () Bool)

(assert (=> b!6385768 (= c!1163827 ((_ is Star!16301) lt!2371265))))

(declare-fun b!6385769 () Bool)

(declare-fun e!3876216 () Bool)

(declare-fun e!3876219 () Bool)

(assert (=> b!6385769 (= e!3876216 e!3876219)))

(declare-fun res!2626711 () Bool)

(assert (=> b!6385769 (=> (not res!2626711) (not e!3876219))))

(assert (=> b!6385769 (= res!2626711 call!545891)))

(declare-fun bm!545885 () Bool)

(declare-fun call!545890 () Bool)

(assert (=> bm!545885 (= call!545889 call!545890)))

(declare-fun b!6385770 () Bool)

(assert (=> b!6385770 (= e!3876222 call!545890)))

(declare-fun bm!545886 () Bool)

(assert (=> bm!545886 (= call!545890 (validRegex!8037 (ite c!1163827 (reg!16630 lt!2371265) (ite c!1163828 (regTwo!33115 lt!2371265) (regTwo!33114 lt!2371265)))))))

(declare-fun b!6385771 () Bool)

(declare-fun res!2626712 () Bool)

(assert (=> b!6385771 (=> (not res!2626712) (not e!3876218))))

(assert (=> b!6385771 (= res!2626712 call!545891)))

(assert (=> b!6385771 (= e!3876217 e!3876218)))

(declare-fun b!6385772 () Bool)

(declare-fun res!2626713 () Bool)

(assert (=> b!6385772 (=> res!2626713 e!3876216)))

(assert (=> b!6385772 (= res!2626713 (not ((_ is Concat!25146) lt!2371265)))))

(assert (=> b!6385772 (= e!3876217 e!3876216)))

(declare-fun b!6385773 () Bool)

(assert (=> b!6385773 (= e!3876219 call!545889)))

(assert (= (and d!2002098 (not res!2626710)) b!6385768))

(assert (= (and b!6385768 c!1163827) b!6385767))

(assert (= (and b!6385768 (not c!1163827)) b!6385765))

(assert (= (and b!6385767 res!2626714) b!6385770))

(assert (= (and b!6385765 c!1163828) b!6385771))

(assert (= (and b!6385765 (not c!1163828)) b!6385772))

(assert (= (and b!6385771 res!2626712) b!6385766))

(assert (= (and b!6385772 (not res!2626713)) b!6385769))

(assert (= (and b!6385769 res!2626711) b!6385773))

(assert (= (or b!6385766 b!6385773) bm!545885))

(assert (= (or b!6385771 b!6385769) bm!545884))

(assert (= (or b!6385770 bm!545885) bm!545886))

(declare-fun m!7185590 () Bool)

(assert (=> b!6385767 m!7185590))

(declare-fun m!7185592 () Bool)

(assert (=> bm!545884 m!7185592))

(declare-fun m!7185594 () Bool)

(assert (=> bm!545886 m!7185594))

(assert (=> d!2001374 d!2002098))

(declare-fun d!2002100 () Bool)

(declare-fun res!2626715 () Bool)

(declare-fun e!3876223 () Bool)

(assert (=> d!2002100 (=> res!2626715 e!3876223)))

(assert (=> d!2002100 (= res!2626715 ((_ is Nil!65079) (unfocusZipperList!1722 zl!343)))))

(assert (=> d!2002100 (= (forall!15479 (unfocusZipperList!1722 zl!343) lambda!352287) e!3876223)))

(declare-fun b!6385774 () Bool)

(declare-fun e!3876224 () Bool)

(assert (=> b!6385774 (= e!3876223 e!3876224)))

(declare-fun res!2626716 () Bool)

(assert (=> b!6385774 (=> (not res!2626716) (not e!3876224))))

(assert (=> b!6385774 (= res!2626716 (dynLambda!25821 lambda!352287 (h!71527 (unfocusZipperList!1722 zl!343))))))

(declare-fun b!6385775 () Bool)

(assert (=> b!6385775 (= e!3876224 (forall!15479 (t!378807 (unfocusZipperList!1722 zl!343)) lambda!352287))))

(assert (= (and d!2002100 (not res!2626715)) b!6385774))

(assert (= (and b!6385774 res!2626716) b!6385775))

(declare-fun b_lambda!242611 () Bool)

(assert (=> (not b_lambda!242611) (not b!6385774)))

(declare-fun m!7185596 () Bool)

(assert (=> b!6385774 m!7185596))

(declare-fun m!7185598 () Bool)

(assert (=> b!6385775 m!7185598))

(assert (=> d!2001374 d!2002100))

(declare-fun d!2002102 () Bool)

(assert (=> d!2002102 (= (flatMap!1806 lt!2371175 lambda!352310) (choose!47510 lt!2371175 lambda!352310))))

(declare-fun bs!1598343 () Bool)

(assert (= bs!1598343 d!2002102))

(declare-fun m!7185600 () Bool)

(assert (=> bs!1598343 m!7185600))

(assert (=> d!2001438 d!2002102))

(declare-fun d!2002104 () Bool)

(declare-fun res!2626717 () Bool)

(declare-fun e!3876225 () Bool)

(assert (=> d!2002104 (=> res!2626717 e!3876225)))

(assert (=> d!2002104 (= res!2626717 ((_ is Nil!65079) (exprs!6185 (h!71528 zl!343))))))

(assert (=> d!2002104 (= (forall!15479 (exprs!6185 (h!71528 zl!343)) lambda!352284) e!3876225)))

(declare-fun b!6385776 () Bool)

(declare-fun e!3876226 () Bool)

(assert (=> b!6385776 (= e!3876225 e!3876226)))

(declare-fun res!2626718 () Bool)

(assert (=> b!6385776 (=> (not res!2626718) (not e!3876226))))

(assert (=> b!6385776 (= res!2626718 (dynLambda!25821 lambda!352284 (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun b!6385777 () Bool)

(assert (=> b!6385777 (= e!3876226 (forall!15479 (t!378807 (exprs!6185 (h!71528 zl!343))) lambda!352284))))

(assert (= (and d!2002104 (not res!2626717)) b!6385776))

(assert (= (and b!6385776 res!2626718) b!6385777))

(declare-fun b_lambda!242613 () Bool)

(assert (=> (not b_lambda!242613) (not b!6385776)))

(declare-fun m!7185602 () Bool)

(assert (=> b!6385776 m!7185602))

(declare-fun m!7185604 () Bool)

(assert (=> b!6385777 m!7185604))

(assert (=> d!2001366 d!2002104))

(assert (=> b!6384158 d!2001638))

(assert (=> b!6384158 d!2001520))

(assert (=> b!6384277 d!2001492))

(assert (=> b!6384277 d!2001494))

(assert (=> d!2001386 d!2001384))

(assert (=> d!2001386 d!2001382))

(declare-fun d!2002106 () Bool)

(assert (=> d!2002106 (= (matchR!8484 r!7292 s!2326) (matchRSpec!3402 r!7292 s!2326))))

(assert (=> d!2002106 true))

(declare-fun _$88!5078 () Unit!158535)

(assert (=> d!2002106 (= (choose!47505 r!7292 s!2326) _$88!5078)))

(declare-fun bs!1598348 () Bool)

(assert (= bs!1598348 d!2002106))

(assert (=> bs!1598348 m!7183432))

(assert (=> bs!1598348 m!7183430))

(assert (=> d!2001386 d!2002106))

(assert (=> d!2001386 d!2001378))

(declare-fun b!6385778 () Bool)

(declare-fun e!3876232 () (InoxSet Context!11370))

(assert (=> b!6385778 (= e!3876232 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6385779 () Bool)

(declare-fun call!545894 () (InoxSet Context!11370))

(assert (=> b!6385779 (= e!3876232 call!545894)))

(declare-fun b!6385780 () Bool)

(declare-fun e!3876229 () (InoxSet Context!11370))

(declare-fun e!3876227 () (InoxSet Context!11370))

(assert (=> b!6385780 (= e!3876229 e!3876227)))

(declare-fun c!1163833 () Bool)

(assert (=> b!6385780 (= c!1163833 ((_ is Union!16301) (h!71527 (exprs!6185 lt!2371181))))))

(declare-fun b!6385781 () Bool)

(declare-fun e!3876230 () (InoxSet Context!11370))

(declare-fun call!545893 () (InoxSet Context!11370))

(declare-fun call!545895 () (InoxSet Context!11370))

(assert (=> b!6385781 (= e!3876230 ((_ map or) call!545893 call!545895))))

(declare-fun b!6385782 () Bool)

(declare-fun call!545897 () (InoxSet Context!11370))

(assert (=> b!6385782 (= e!3876227 ((_ map or) call!545897 call!545893))))

(declare-fun bm!545887 () Bool)

(assert (=> bm!545887 (= call!545895 call!545897)))

(declare-fun c!1163832 () Bool)

(declare-fun call!545896 () List!65203)

(declare-fun bm!545888 () Bool)

(declare-fun c!1163829 () Bool)

(assert (=> bm!545888 (= call!545896 ($colon$colon!2161 (exprs!6185 (Context!11371 (t!378807 (exprs!6185 lt!2371181)))) (ite (or c!1163829 c!1163832) (regTwo!33114 (h!71527 (exprs!6185 lt!2371181))) (h!71527 (exprs!6185 lt!2371181)))))))

(declare-fun b!6385783 () Bool)

(declare-fun e!3876228 () (InoxSet Context!11370))

(assert (=> b!6385783 (= e!3876228 call!545894)))

(declare-fun d!2002108 () Bool)

(declare-fun c!1163830 () Bool)

(assert (=> d!2002108 (= c!1163830 (and ((_ is ElementMatch!16301) (h!71527 (exprs!6185 lt!2371181))) (= (c!1163182 (h!71527 (exprs!6185 lt!2371181))) (h!71526 s!2326))))))

(assert (=> d!2002108 (= (derivationStepZipperDown!1549 (h!71527 (exprs!6185 lt!2371181)) (Context!11371 (t!378807 (exprs!6185 lt!2371181))) (h!71526 s!2326)) e!3876229)))

(declare-fun bm!545889 () Bool)

(assert (=> bm!545889 (= call!545894 call!545895)))

(declare-fun bm!545890 () Bool)

(assert (=> bm!545890 (= call!545893 (derivationStepZipperDown!1549 (ite c!1163833 (regTwo!33115 (h!71527 (exprs!6185 lt!2371181))) (regOne!33114 (h!71527 (exprs!6185 lt!2371181)))) (ite c!1163833 (Context!11371 (t!378807 (exprs!6185 lt!2371181))) (Context!11371 call!545896)) (h!71526 s!2326)))))

(declare-fun b!6385784 () Bool)

(declare-fun e!3876231 () Bool)

(assert (=> b!6385784 (= c!1163829 e!3876231)))

(declare-fun res!2626719 () Bool)

(assert (=> b!6385784 (=> (not res!2626719) (not e!3876231))))

(assert (=> b!6385784 (= res!2626719 ((_ is Concat!25146) (h!71527 (exprs!6185 lt!2371181))))))

(assert (=> b!6385784 (= e!3876227 e!3876230)))

(declare-fun call!545892 () List!65203)

(declare-fun bm!545891 () Bool)

(assert (=> bm!545891 (= call!545897 (derivationStepZipperDown!1549 (ite c!1163833 (regOne!33115 (h!71527 (exprs!6185 lt!2371181))) (ite c!1163829 (regTwo!33114 (h!71527 (exprs!6185 lt!2371181))) (ite c!1163832 (regOne!33114 (h!71527 (exprs!6185 lt!2371181))) (reg!16630 (h!71527 (exprs!6185 lt!2371181)))))) (ite (or c!1163833 c!1163829) (Context!11371 (t!378807 (exprs!6185 lt!2371181))) (Context!11371 call!545892)) (h!71526 s!2326)))))

(declare-fun b!6385785 () Bool)

(assert (=> b!6385785 (= e!3876229 (store ((as const (Array Context!11370 Bool)) false) (Context!11371 (t!378807 (exprs!6185 lt!2371181))) true))))

(declare-fun bm!545892 () Bool)

(assert (=> bm!545892 (= call!545892 call!545896)))

(declare-fun b!6385786 () Bool)

(assert (=> b!6385786 (= e!3876231 (nullable!6294 (regOne!33114 (h!71527 (exprs!6185 lt!2371181)))))))

(declare-fun b!6385787 () Bool)

(assert (=> b!6385787 (= e!3876230 e!3876228)))

(assert (=> b!6385787 (= c!1163832 ((_ is Concat!25146) (h!71527 (exprs!6185 lt!2371181))))))

(declare-fun b!6385788 () Bool)

(declare-fun c!1163831 () Bool)

(assert (=> b!6385788 (= c!1163831 ((_ is Star!16301) (h!71527 (exprs!6185 lt!2371181))))))

(assert (=> b!6385788 (= e!3876228 e!3876232)))

(assert (= (and d!2002108 c!1163830) b!6385785))

(assert (= (and d!2002108 (not c!1163830)) b!6385780))

(assert (= (and b!6385780 c!1163833) b!6385782))

(assert (= (and b!6385780 (not c!1163833)) b!6385784))

(assert (= (and b!6385784 res!2626719) b!6385786))

(assert (= (and b!6385784 c!1163829) b!6385781))

(assert (= (and b!6385784 (not c!1163829)) b!6385787))

(assert (= (and b!6385787 c!1163832) b!6385783))

(assert (= (and b!6385787 (not c!1163832)) b!6385788))

(assert (= (and b!6385788 c!1163831) b!6385779))

(assert (= (and b!6385788 (not c!1163831)) b!6385778))

(assert (= (or b!6385783 b!6385779) bm!545892))

(assert (= (or b!6385783 b!6385779) bm!545889))

(assert (= (or b!6385781 bm!545892) bm!545888))

(assert (= (or b!6385781 bm!545889) bm!545887))

(assert (= (or b!6385782 b!6385781) bm!545890))

(assert (= (or b!6385782 bm!545887) bm!545891))

(declare-fun m!7185606 () Bool)

(assert (=> bm!545890 m!7185606))

(declare-fun m!7185608 () Bool)

(assert (=> b!6385785 m!7185608))

(declare-fun m!7185610 () Bool)

(assert (=> bm!545891 m!7185610))

(declare-fun m!7185612 () Bool)

(assert (=> b!6385786 m!7185612))

(declare-fun m!7185614 () Bool)

(assert (=> bm!545888 m!7185614))

(assert (=> bm!545613 d!2002108))

(assert (=> bs!1597678 d!2001426))

(assert (=> bm!545590 d!2001328))

(assert (=> d!2001342 d!2001566))

(declare-fun d!2002110 () Bool)

(assert (=> d!2002110 (= (nullable!6294 (regTwo!33114 r!7292)) (nullableFct!2240 (regTwo!33114 r!7292)))))

(declare-fun bs!1598356 () Bool)

(assert (= bs!1598356 d!2002110))

(declare-fun m!7185616 () Bool)

(assert (=> bs!1598356 m!7185616))

(assert (=> b!6384142 d!2002110))

(declare-fun d!2002112 () Bool)

(assert (=> d!2002112 (= (nullable!6294 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))) (nullableFct!2240 (regOne!33114 (h!71527 (exprs!6185 (h!71528 zl!343))))))))

(declare-fun bs!1598358 () Bool)

(assert (= bs!1598358 d!2002112))

(declare-fun m!7185618 () Bool)

(assert (=> bs!1598358 m!7185618))

(assert (=> b!6384401 d!2002112))

(declare-fun b!6385789 () Bool)

(declare-fun e!3876238 () (InoxSet Context!11370))

(assert (=> b!6385789 (= e!3876238 ((as const (Array Context!11370 Bool)) false))))

(declare-fun b!6385790 () Bool)

(declare-fun call!545900 () (InoxSet Context!11370))

(assert (=> b!6385790 (= e!3876238 call!545900)))

(declare-fun b!6385791 () Bool)

(declare-fun e!3876235 () (InoxSet Context!11370))

(declare-fun e!3876233 () (InoxSet Context!11370))

(assert (=> b!6385791 (= e!3876235 e!3876233)))

(declare-fun c!1163838 () Bool)

(assert (=> b!6385791 (= c!1163838 ((_ is Union!16301) (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))))))

(declare-fun b!6385792 () Bool)

(declare-fun e!3876236 () (InoxSet Context!11370))

(declare-fun call!545899 () (InoxSet Context!11370))

(declare-fun call!545901 () (InoxSet Context!11370))

(assert (=> b!6385792 (= e!3876236 ((_ map or) call!545899 call!545901))))

(declare-fun b!6385793 () Bool)

(declare-fun call!545903 () (InoxSet Context!11370))

(assert (=> b!6385793 (= e!3876233 ((_ map or) call!545903 call!545899))))

(declare-fun bm!545893 () Bool)

(assert (=> bm!545893 (= call!545901 call!545903)))

(declare-fun bm!545894 () Bool)

(declare-fun c!1163834 () Bool)

(declare-fun call!545902 () List!65203)

(declare-fun c!1163837 () Bool)

(assert (=> bm!545894 (= call!545902 ($colon$colon!2161 (exprs!6185 (ite (or c!1163336 c!1163332) lt!2371169 (Context!11371 call!545586))) (ite (or c!1163834 c!1163837) (regTwo!33114 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))) (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292)))))))))))

(declare-fun b!6385794 () Bool)

(declare-fun e!3876234 () (InoxSet Context!11370))

(assert (=> b!6385794 (= e!3876234 call!545900)))

(declare-fun c!1163835 () Bool)

(declare-fun d!2002114 () Bool)

(assert (=> d!2002114 (= c!1163835 (and ((_ is ElementMatch!16301) (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))) (= (c!1163182 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))) (h!71526 s!2326))))))

(assert (=> d!2002114 (= (derivationStepZipperDown!1549 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292)))))) (ite (or c!1163336 c!1163332) lt!2371169 (Context!11371 call!545586)) (h!71526 s!2326)) e!3876235)))

(declare-fun bm!545895 () Bool)

(assert (=> bm!545895 (= call!545900 call!545901)))

(declare-fun bm!545896 () Bool)

(assert (=> bm!545896 (= call!545899 (derivationStepZipperDown!1549 (ite c!1163838 (regTwo!33115 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))) (regOne!33114 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292)))))))) (ite c!1163838 (ite (or c!1163336 c!1163332) lt!2371169 (Context!11371 call!545586)) (Context!11371 call!545902)) (h!71526 s!2326)))))

(declare-fun b!6385795 () Bool)

(declare-fun e!3876237 () Bool)

(assert (=> b!6385795 (= c!1163834 e!3876237)))

(declare-fun res!2626720 () Bool)

(assert (=> b!6385795 (=> (not res!2626720) (not e!3876237))))

(assert (=> b!6385795 (= res!2626720 ((_ is Concat!25146) (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))))))

(assert (=> b!6385795 (= e!3876233 e!3876236)))

(declare-fun bm!545897 () Bool)

(declare-fun call!545898 () List!65203)

(assert (=> bm!545897 (= call!545903 (derivationStepZipperDown!1549 (ite c!1163838 (regOne!33115 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))) (ite c!1163834 (regTwo!33114 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))) (ite c!1163837 (regOne!33114 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))) (reg!16630 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292)))))))))) (ite (or c!1163838 c!1163834) (ite (or c!1163336 c!1163332) lt!2371169 (Context!11371 call!545586)) (Context!11371 call!545898)) (h!71526 s!2326)))))

(declare-fun b!6385796 () Bool)

(assert (=> b!6385796 (= e!3876235 (store ((as const (Array Context!11370 Bool)) false) (ite (or c!1163336 c!1163332) lt!2371169 (Context!11371 call!545586)) true))))

(declare-fun bm!545898 () Bool)

(assert (=> bm!545898 (= call!545898 call!545902)))

(declare-fun b!6385797 () Bool)

(assert (=> b!6385797 (= e!3876237 (nullable!6294 (regOne!33114 (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292)))))))))))

(declare-fun b!6385798 () Bool)

(assert (=> b!6385798 (= e!3876236 e!3876234)))

(assert (=> b!6385798 (= c!1163837 ((_ is Concat!25146) (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))))))

(declare-fun b!6385799 () Bool)

(declare-fun c!1163836 () Bool)

(assert (=> b!6385799 (= c!1163836 ((_ is Star!16301) (ite c!1163336 (regOne!33115 (reg!16630 (regOne!33114 r!7292))) (ite c!1163332 (regTwo!33114 (reg!16630 (regOne!33114 r!7292))) (ite c!1163335 (regOne!33114 (reg!16630 (regOne!33114 r!7292))) (reg!16630 (reg!16630 (regOne!33114 r!7292))))))))))

(assert (=> b!6385799 (= e!3876234 e!3876238)))

(assert (= (and d!2002114 c!1163835) b!6385796))

(assert (= (and d!2002114 (not c!1163835)) b!6385791))

(assert (= (and b!6385791 c!1163838) b!6385793))

(assert (= (and b!6385791 (not c!1163838)) b!6385795))

(assert (= (and b!6385795 res!2626720) b!6385797))

(assert (= (and b!6385795 c!1163834) b!6385792))

(assert (= (and b!6385795 (not c!1163834)) b!6385798))

(assert (= (and b!6385798 c!1163837) b!6385794))

(assert (= (and b!6385798 (not c!1163837)) b!6385799))

(assert (= (and b!6385799 c!1163836) b!6385790))

(assert (= (and b!6385799 (not c!1163836)) b!6385789))

(assert (= (or b!6385794 b!6385790) bm!545898))

(assert (= (or b!6385794 b!6385790) bm!545895))

(assert (= (or b!6385792 bm!545898) bm!545894))

(assert (= (or b!6385792 bm!545895) bm!545893))

(assert (= (or b!6385793 b!6385792) bm!545896))

(assert (= (or b!6385793 bm!545893) bm!545897))

(declare-fun m!7185620 () Bool)

(assert (=> bm!545896 m!7185620))

(declare-fun m!7185622 () Bool)

(assert (=> b!6385796 m!7185622))

(declare-fun m!7185624 () Bool)

(assert (=> bm!545897 m!7185624))

(declare-fun m!7185626 () Bool)

(assert (=> b!6385797 m!7185626))

(declare-fun m!7185628 () Bool)

(assert (=> bm!545894 m!7185628))

(assert (=> bm!545585 d!2002114))

(declare-fun d!2002116 () Bool)

(assert (=> d!2002116 (= (isConcat!1224 lt!2371243) ((_ is Concat!25146) lt!2371243))))

(assert (=> b!6383942 d!2002116))

(declare-fun b!6385800 () Bool)

(declare-fun e!3876239 () Bool)

(assert (=> b!6385800 (= e!3876239 tp_is_empty!41855)))

(declare-fun b!6385802 () Bool)

(declare-fun tp!1776299 () Bool)

(assert (=> b!6385802 (= e!3876239 tp!1776299)))

(declare-fun b!6385801 () Bool)

(declare-fun tp!1776297 () Bool)

(declare-fun tp!1776295 () Bool)

(assert (=> b!6385801 (= e!3876239 (and tp!1776297 tp!1776295))))

(declare-fun b!6385803 () Bool)

(declare-fun tp!1776296 () Bool)

(declare-fun tp!1776298 () Bool)

(assert (=> b!6385803 (= e!3876239 (and tp!1776296 tp!1776298))))

(assert (=> b!6384439 (= tp!1776213 e!3876239)))

(assert (= (and b!6384439 ((_ is ElementMatch!16301) (regOne!33114 (regOne!33115 r!7292)))) b!6385800))

(assert (= (and b!6384439 ((_ is Concat!25146) (regOne!33114 (regOne!33115 r!7292)))) b!6385801))

(assert (= (and b!6384439 ((_ is Star!16301) (regOne!33114 (regOne!33115 r!7292)))) b!6385802))

(assert (= (and b!6384439 ((_ is Union!16301) (regOne!33114 (regOne!33115 r!7292)))) b!6385803))

(declare-fun b!6385804 () Bool)

(declare-fun e!3876240 () Bool)

(assert (=> b!6385804 (= e!3876240 tp_is_empty!41855)))

(declare-fun b!6385806 () Bool)

(declare-fun tp!1776304 () Bool)

(assert (=> b!6385806 (= e!3876240 tp!1776304)))

(declare-fun b!6385805 () Bool)

(declare-fun tp!1776302 () Bool)

(declare-fun tp!1776300 () Bool)

(assert (=> b!6385805 (= e!3876240 (and tp!1776302 tp!1776300))))

(declare-fun b!6385807 () Bool)

(declare-fun tp!1776301 () Bool)

(declare-fun tp!1776303 () Bool)

(assert (=> b!6385807 (= e!3876240 (and tp!1776301 tp!1776303))))

(assert (=> b!6384439 (= tp!1776211 e!3876240)))

(assert (= (and b!6384439 ((_ is ElementMatch!16301) (regTwo!33114 (regOne!33115 r!7292)))) b!6385804))

(assert (= (and b!6384439 ((_ is Concat!25146) (regTwo!33114 (regOne!33115 r!7292)))) b!6385805))

(assert (= (and b!6384439 ((_ is Star!16301) (regTwo!33114 (regOne!33115 r!7292)))) b!6385806))

(assert (= (and b!6384439 ((_ is Union!16301) (regTwo!33114 (regOne!33115 r!7292)))) b!6385807))

(declare-fun b!6385808 () Bool)

(declare-fun e!3876241 () Bool)

(declare-fun tp!1776305 () Bool)

(declare-fun tp!1776306 () Bool)

(assert (=> b!6385808 (= e!3876241 (and tp!1776305 tp!1776306))))

(assert (=> b!6384461 (= tp!1776236 e!3876241)))

(assert (= (and b!6384461 ((_ is Cons!65079) (exprs!6185 setElem!43586))) b!6385808))

(declare-fun b!6385809 () Bool)

(declare-fun e!3876242 () Bool)

(assert (=> b!6385809 (= e!3876242 tp_is_empty!41855)))

(declare-fun b!6385811 () Bool)

(declare-fun tp!1776311 () Bool)

(assert (=> b!6385811 (= e!3876242 tp!1776311)))

(declare-fun b!6385810 () Bool)

(declare-fun tp!1776309 () Bool)

(declare-fun tp!1776307 () Bool)

(assert (=> b!6385810 (= e!3876242 (and tp!1776309 tp!1776307))))

(declare-fun b!6385812 () Bool)

(declare-fun tp!1776308 () Bool)

(declare-fun tp!1776310 () Bool)

(assert (=> b!6385812 (= e!3876242 (and tp!1776308 tp!1776310))))

(assert (=> b!6384440 (= tp!1776215 e!3876242)))

(assert (= (and b!6384440 ((_ is ElementMatch!16301) (reg!16630 (regOne!33115 r!7292)))) b!6385809))

(assert (= (and b!6384440 ((_ is Concat!25146) (reg!16630 (regOne!33115 r!7292)))) b!6385810))

(assert (= (and b!6384440 ((_ is Star!16301) (reg!16630 (regOne!33115 r!7292)))) b!6385811))

(assert (= (and b!6384440 ((_ is Union!16301) (reg!16630 (regOne!33115 r!7292)))) b!6385812))

(declare-fun condSetEmpty!43599 () Bool)

(assert (=> setNonEmpty!43586 (= condSetEmpty!43599 (= setRest!43586 ((as const (Array Context!11370 Bool)) false)))))

(declare-fun setRes!43599 () Bool)

(assert (=> setNonEmpty!43586 (= tp!1776237 setRes!43599)))

(declare-fun setIsEmpty!43599 () Bool)

(assert (=> setIsEmpty!43599 setRes!43599))

(declare-fun setElem!43599 () Context!11370)

(declare-fun setNonEmpty!43599 () Bool)

(declare-fun tp!1776313 () Bool)

(declare-fun e!3876243 () Bool)

(assert (=> setNonEmpty!43599 (= setRes!43599 (and tp!1776313 (inv!83999 setElem!43599) e!3876243))))

(declare-fun setRest!43599 () (InoxSet Context!11370))

(assert (=> setNonEmpty!43599 (= setRest!43586 ((_ map or) (store ((as const (Array Context!11370 Bool)) false) setElem!43599 true) setRest!43599))))

(declare-fun b!6385813 () Bool)

(declare-fun tp!1776312 () Bool)

(assert (=> b!6385813 (= e!3876243 tp!1776312)))

(assert (= (and setNonEmpty!43586 condSetEmpty!43599) setIsEmpty!43599))

(assert (= (and setNonEmpty!43586 (not condSetEmpty!43599)) setNonEmpty!43599))

(assert (= setNonEmpty!43599 b!6385813))

(declare-fun m!7185630 () Bool)

(assert (=> setNonEmpty!43599 m!7185630))

(declare-fun b!6385814 () Bool)

(declare-fun e!3876244 () Bool)

(assert (=> b!6385814 (= e!3876244 tp_is_empty!41855)))

(declare-fun b!6385816 () Bool)

(declare-fun tp!1776318 () Bool)

(assert (=> b!6385816 (= e!3876244 tp!1776318)))

(declare-fun b!6385815 () Bool)

(declare-fun tp!1776316 () Bool)

(declare-fun tp!1776314 () Bool)

(assert (=> b!6385815 (= e!3876244 (and tp!1776316 tp!1776314))))

(declare-fun b!6385817 () Bool)

(declare-fun tp!1776315 () Bool)

(declare-fun tp!1776317 () Bool)

(assert (=> b!6385817 (= e!3876244 (and tp!1776315 tp!1776317))))

(assert (=> b!6384473 (= tp!1776245 e!3876244)))

(assert (= (and b!6384473 ((_ is ElementMatch!16301) (regOne!33115 (reg!16630 r!7292)))) b!6385814))

(assert (= (and b!6384473 ((_ is Concat!25146) (regOne!33115 (reg!16630 r!7292)))) b!6385815))

(assert (= (and b!6384473 ((_ is Star!16301) (regOne!33115 (reg!16630 r!7292)))) b!6385816))

(assert (= (and b!6384473 ((_ is Union!16301) (regOne!33115 (reg!16630 r!7292)))) b!6385817))

(declare-fun b!6385818 () Bool)

(declare-fun e!3876245 () Bool)

(assert (=> b!6385818 (= e!3876245 tp_is_empty!41855)))

(declare-fun b!6385820 () Bool)

(declare-fun tp!1776323 () Bool)

(assert (=> b!6385820 (= e!3876245 tp!1776323)))

(declare-fun b!6385819 () Bool)

(declare-fun tp!1776321 () Bool)

(declare-fun tp!1776319 () Bool)

(assert (=> b!6385819 (= e!3876245 (and tp!1776321 tp!1776319))))

(declare-fun b!6385821 () Bool)

(declare-fun tp!1776320 () Bool)

(declare-fun tp!1776322 () Bool)

(assert (=> b!6385821 (= e!3876245 (and tp!1776320 tp!1776322))))

(assert (=> b!6384473 (= tp!1776247 e!3876245)))

(assert (= (and b!6384473 ((_ is ElementMatch!16301) (regTwo!33115 (reg!16630 r!7292)))) b!6385818))

(assert (= (and b!6384473 ((_ is Concat!25146) (regTwo!33115 (reg!16630 r!7292)))) b!6385819))

(assert (= (and b!6384473 ((_ is Star!16301) (regTwo!33115 (reg!16630 r!7292)))) b!6385820))

(assert (= (and b!6384473 ((_ is Union!16301) (regTwo!33115 (reg!16630 r!7292)))) b!6385821))

(declare-fun b!6385822 () Bool)

(declare-fun e!3876246 () Bool)

(assert (=> b!6385822 (= e!3876246 tp_is_empty!41855)))

(declare-fun b!6385824 () Bool)

(declare-fun tp!1776328 () Bool)

(assert (=> b!6385824 (= e!3876246 tp!1776328)))

(declare-fun b!6385823 () Bool)

(declare-fun tp!1776326 () Bool)

(declare-fun tp!1776324 () Bool)

(assert (=> b!6385823 (= e!3876246 (and tp!1776326 tp!1776324))))

(declare-fun b!6385825 () Bool)

(declare-fun tp!1776325 () Bool)

(declare-fun tp!1776327 () Bool)

(assert (=> b!6385825 (= e!3876246 (and tp!1776325 tp!1776327))))

(assert (=> b!6384472 (= tp!1776248 e!3876246)))

(assert (= (and b!6384472 ((_ is ElementMatch!16301) (reg!16630 (reg!16630 r!7292)))) b!6385822))

(assert (= (and b!6384472 ((_ is Concat!25146) (reg!16630 (reg!16630 r!7292)))) b!6385823))

(assert (= (and b!6384472 ((_ is Star!16301) (reg!16630 (reg!16630 r!7292)))) b!6385824))

(assert (= (and b!6384472 ((_ is Union!16301) (reg!16630 (reg!16630 r!7292)))) b!6385825))

(declare-fun b!6385826 () Bool)

(declare-fun e!3876247 () Bool)

(assert (=> b!6385826 (= e!3876247 tp_is_empty!41855)))

(declare-fun b!6385828 () Bool)

(declare-fun tp!1776333 () Bool)

(assert (=> b!6385828 (= e!3876247 tp!1776333)))

(declare-fun b!6385827 () Bool)

(declare-fun tp!1776331 () Bool)

(declare-fun tp!1776329 () Bool)

(assert (=> b!6385827 (= e!3876247 (and tp!1776331 tp!1776329))))

(declare-fun b!6385829 () Bool)

(declare-fun tp!1776330 () Bool)

(declare-fun tp!1776332 () Bool)

(assert (=> b!6385829 (= e!3876247 (and tp!1776330 tp!1776332))))

(assert (=> b!6384451 (= tp!1776227 e!3876247)))

(assert (= (and b!6384451 ((_ is ElementMatch!16301) (h!71527 (exprs!6185 (h!71528 zl!343))))) b!6385826))

(assert (= (and b!6384451 ((_ is Concat!25146) (h!71527 (exprs!6185 (h!71528 zl!343))))) b!6385827))

(assert (= (and b!6384451 ((_ is Star!16301) (h!71527 (exprs!6185 (h!71528 zl!343))))) b!6385828))

(assert (= (and b!6384451 ((_ is Union!16301) (h!71527 (exprs!6185 (h!71528 zl!343))))) b!6385829))

(declare-fun b!6385830 () Bool)

(declare-fun e!3876248 () Bool)

(declare-fun tp!1776334 () Bool)

(declare-fun tp!1776335 () Bool)

(assert (=> b!6385830 (= e!3876248 (and tp!1776334 tp!1776335))))

(assert (=> b!6384451 (= tp!1776228 e!3876248)))

(assert (= (and b!6384451 ((_ is Cons!65079) (t!378807 (exprs!6185 (h!71528 zl!343))))) b!6385830))

(declare-fun b!6385831 () Bool)

(declare-fun e!3876249 () Bool)

(assert (=> b!6385831 (= e!3876249 tp_is_empty!41855)))

(declare-fun b!6385833 () Bool)

(declare-fun tp!1776340 () Bool)

(assert (=> b!6385833 (= e!3876249 tp!1776340)))

(declare-fun b!6385832 () Bool)

(declare-fun tp!1776338 () Bool)

(declare-fun tp!1776336 () Bool)

(assert (=> b!6385832 (= e!3876249 (and tp!1776338 tp!1776336))))

(declare-fun b!6385834 () Bool)

(declare-fun tp!1776337 () Bool)

(declare-fun tp!1776339 () Bool)

(assert (=> b!6385834 (= e!3876249 (and tp!1776337 tp!1776339))))

(assert (=> b!6384479 (= tp!1776256 e!3876249)))

(assert (= (and b!6384479 ((_ is ElementMatch!16301) (regOne!33114 (regTwo!33114 r!7292)))) b!6385831))

(assert (= (and b!6384479 ((_ is Concat!25146) (regOne!33114 (regTwo!33114 r!7292)))) b!6385832))

(assert (= (and b!6384479 ((_ is Star!16301) (regOne!33114 (regTwo!33114 r!7292)))) b!6385833))

(assert (= (and b!6384479 ((_ is Union!16301) (regOne!33114 (regTwo!33114 r!7292)))) b!6385834))

(declare-fun b!6385835 () Bool)

(declare-fun e!3876250 () Bool)

(assert (=> b!6385835 (= e!3876250 tp_is_empty!41855)))

(declare-fun b!6385837 () Bool)

(declare-fun tp!1776345 () Bool)

(assert (=> b!6385837 (= e!3876250 tp!1776345)))

(declare-fun b!6385836 () Bool)

(declare-fun tp!1776343 () Bool)

(declare-fun tp!1776341 () Bool)

(assert (=> b!6385836 (= e!3876250 (and tp!1776343 tp!1776341))))

(declare-fun b!6385838 () Bool)

(declare-fun tp!1776342 () Bool)

(declare-fun tp!1776344 () Bool)

(assert (=> b!6385838 (= e!3876250 (and tp!1776342 tp!1776344))))

(assert (=> b!6384479 (= tp!1776254 e!3876250)))

(assert (= (and b!6384479 ((_ is ElementMatch!16301) (regTwo!33114 (regTwo!33114 r!7292)))) b!6385835))

(assert (= (and b!6384479 ((_ is Concat!25146) (regTwo!33114 (regTwo!33114 r!7292)))) b!6385836))

(assert (= (and b!6384479 ((_ is Star!16301) (regTwo!33114 (regTwo!33114 r!7292)))) b!6385837))

(assert (= (and b!6384479 ((_ is Union!16301) (regTwo!33114 (regTwo!33114 r!7292)))) b!6385838))

(declare-fun b!6385839 () Bool)

(declare-fun e!3876251 () Bool)

(assert (=> b!6385839 (= e!3876251 tp_is_empty!41855)))

(declare-fun b!6385841 () Bool)

(declare-fun tp!1776350 () Bool)

(assert (=> b!6385841 (= e!3876251 tp!1776350)))

(declare-fun b!6385840 () Bool)

(declare-fun tp!1776348 () Bool)

(declare-fun tp!1776346 () Bool)

(assert (=> b!6385840 (= e!3876251 (and tp!1776348 tp!1776346))))

(declare-fun b!6385842 () Bool)

(declare-fun tp!1776347 () Bool)

(declare-fun tp!1776349 () Bool)

(assert (=> b!6385842 (= e!3876251 (and tp!1776347 tp!1776349))))

(assert (=> b!6384481 (= tp!1776255 e!3876251)))

(assert (= (and b!6384481 ((_ is ElementMatch!16301) (regOne!33115 (regTwo!33114 r!7292)))) b!6385839))

(assert (= (and b!6384481 ((_ is Concat!25146) (regOne!33115 (regTwo!33114 r!7292)))) b!6385840))

(assert (= (and b!6384481 ((_ is Star!16301) (regOne!33115 (regTwo!33114 r!7292)))) b!6385841))

(assert (= (and b!6384481 ((_ is Union!16301) (regOne!33115 (regTwo!33114 r!7292)))) b!6385842))

(declare-fun b!6385843 () Bool)

(declare-fun e!3876252 () Bool)

(assert (=> b!6385843 (= e!3876252 tp_is_empty!41855)))

(declare-fun b!6385845 () Bool)

(declare-fun tp!1776355 () Bool)

(assert (=> b!6385845 (= e!3876252 tp!1776355)))

(declare-fun b!6385844 () Bool)

(declare-fun tp!1776353 () Bool)

(declare-fun tp!1776351 () Bool)

(assert (=> b!6385844 (= e!3876252 (and tp!1776353 tp!1776351))))

(declare-fun b!6385846 () Bool)

(declare-fun tp!1776352 () Bool)

(declare-fun tp!1776354 () Bool)

(assert (=> b!6385846 (= e!3876252 (and tp!1776352 tp!1776354))))

(assert (=> b!6384481 (= tp!1776257 e!3876252)))

(assert (= (and b!6384481 ((_ is ElementMatch!16301) (regTwo!33115 (regTwo!33114 r!7292)))) b!6385843))

(assert (= (and b!6384481 ((_ is Concat!25146) (regTwo!33115 (regTwo!33114 r!7292)))) b!6385844))

(assert (= (and b!6384481 ((_ is Star!16301) (regTwo!33115 (regTwo!33114 r!7292)))) b!6385845))

(assert (= (and b!6384481 ((_ is Union!16301) (regTwo!33115 (regTwo!33114 r!7292)))) b!6385846))

(declare-fun b!6385847 () Bool)

(declare-fun e!3876253 () Bool)

(assert (=> b!6385847 (= e!3876253 tp_is_empty!41855)))

(declare-fun b!6385849 () Bool)

(declare-fun tp!1776360 () Bool)

(assert (=> b!6385849 (= e!3876253 tp!1776360)))

(declare-fun b!6385848 () Bool)

(declare-fun tp!1776358 () Bool)

(declare-fun tp!1776356 () Bool)

(assert (=> b!6385848 (= e!3876253 (and tp!1776358 tp!1776356))))

(declare-fun b!6385850 () Bool)

(declare-fun tp!1776357 () Bool)

(declare-fun tp!1776359 () Bool)

(assert (=> b!6385850 (= e!3876253 (and tp!1776357 tp!1776359))))

(assert (=> b!6384480 (= tp!1776258 e!3876253)))

(assert (= (and b!6384480 ((_ is ElementMatch!16301) (reg!16630 (regTwo!33114 r!7292)))) b!6385847))

(assert (= (and b!6384480 ((_ is Concat!25146) (reg!16630 (regTwo!33114 r!7292)))) b!6385848))

(assert (= (and b!6384480 ((_ is Star!16301) (reg!16630 (regTwo!33114 r!7292)))) b!6385849))

(assert (= (and b!6384480 ((_ is Union!16301) (reg!16630 (regTwo!33114 r!7292)))) b!6385850))

(declare-fun b!6385851 () Bool)

(declare-fun e!3876254 () Bool)

(assert (=> b!6385851 (= e!3876254 tp_is_empty!41855)))

(declare-fun b!6385853 () Bool)

(declare-fun tp!1776365 () Bool)

(assert (=> b!6385853 (= e!3876254 tp!1776365)))

(declare-fun b!6385852 () Bool)

(declare-fun tp!1776363 () Bool)

(declare-fun tp!1776361 () Bool)

(assert (=> b!6385852 (= e!3876254 (and tp!1776363 tp!1776361))))

(declare-fun b!6385854 () Bool)

(declare-fun tp!1776362 () Bool)

(declare-fun tp!1776364 () Bool)

(assert (=> b!6385854 (= e!3876254 (and tp!1776362 tp!1776364))))

(assert (=> b!6384471 (= tp!1776246 e!3876254)))

(assert (= (and b!6384471 ((_ is ElementMatch!16301) (regOne!33114 (reg!16630 r!7292)))) b!6385851))

(assert (= (and b!6384471 ((_ is Concat!25146) (regOne!33114 (reg!16630 r!7292)))) b!6385852))

(assert (= (and b!6384471 ((_ is Star!16301) (regOne!33114 (reg!16630 r!7292)))) b!6385853))

(assert (= (and b!6384471 ((_ is Union!16301) (regOne!33114 (reg!16630 r!7292)))) b!6385854))

(declare-fun b!6385869 () Bool)

(declare-fun e!3876262 () Bool)

(assert (=> b!6385869 (= e!3876262 tp_is_empty!41855)))

(declare-fun b!6385871 () Bool)

(declare-fun tp!1776370 () Bool)

(assert (=> b!6385871 (= e!3876262 tp!1776370)))

(declare-fun b!6385870 () Bool)

(declare-fun tp!1776368 () Bool)

(declare-fun tp!1776366 () Bool)

(assert (=> b!6385870 (= e!3876262 (and tp!1776368 tp!1776366))))

(declare-fun b!6385872 () Bool)

(declare-fun tp!1776367 () Bool)

(declare-fun tp!1776369 () Bool)

(assert (=> b!6385872 (= e!3876262 (and tp!1776367 tp!1776369))))

(assert (=> b!6384471 (= tp!1776244 e!3876262)))

(assert (= (and b!6384471 ((_ is ElementMatch!16301) (regTwo!33114 (reg!16630 r!7292)))) b!6385869))

(assert (= (and b!6384471 ((_ is Concat!25146) (regTwo!33114 (reg!16630 r!7292)))) b!6385870))

(assert (= (and b!6384471 ((_ is Star!16301) (regTwo!33114 (reg!16630 r!7292)))) b!6385871))

(assert (= (and b!6384471 ((_ is Union!16301) (regTwo!33114 (reg!16630 r!7292)))) b!6385872))

(declare-fun b!6385873 () Bool)

(declare-fun e!3876263 () Bool)

(assert (=> b!6385873 (= e!3876263 tp_is_empty!41855)))

(declare-fun b!6385875 () Bool)

(declare-fun tp!1776375 () Bool)

(assert (=> b!6385875 (= e!3876263 tp!1776375)))

(declare-fun b!6385874 () Bool)

(declare-fun tp!1776373 () Bool)

(declare-fun tp!1776371 () Bool)

(assert (=> b!6385874 (= e!3876263 (and tp!1776373 tp!1776371))))

(declare-fun b!6385876 () Bool)

(declare-fun tp!1776372 () Bool)

(declare-fun tp!1776374 () Bool)

(assert (=> b!6385876 (= e!3876263 (and tp!1776372 tp!1776374))))

(assert (=> b!6384444 (= tp!1776220 e!3876263)))

(assert (= (and b!6384444 ((_ is ElementMatch!16301) (reg!16630 (regTwo!33115 r!7292)))) b!6385873))

(assert (= (and b!6384444 ((_ is Concat!25146) (reg!16630 (regTwo!33115 r!7292)))) b!6385874))

(assert (= (and b!6384444 ((_ is Star!16301) (reg!16630 (regTwo!33115 r!7292)))) b!6385875))

(assert (= (and b!6384444 ((_ is Union!16301) (reg!16630 (regTwo!33115 r!7292)))) b!6385876))

(declare-fun b!6385877 () Bool)

(declare-fun e!3876264 () Bool)

(assert (=> b!6385877 (= e!3876264 tp_is_empty!41855)))

(declare-fun b!6385879 () Bool)

(declare-fun tp!1776380 () Bool)

(assert (=> b!6385879 (= e!3876264 tp!1776380)))

(declare-fun b!6385878 () Bool)

(declare-fun tp!1776378 () Bool)

(declare-fun tp!1776376 () Bool)

(assert (=> b!6385878 (= e!3876264 (and tp!1776378 tp!1776376))))

(declare-fun b!6385880 () Bool)

(declare-fun tp!1776377 () Bool)

(declare-fun tp!1776379 () Bool)

(assert (=> b!6385880 (= e!3876264 (and tp!1776377 tp!1776379))))

(assert (=> b!6384443 (= tp!1776218 e!3876264)))

(assert (= (and b!6384443 ((_ is ElementMatch!16301) (regOne!33114 (regTwo!33115 r!7292)))) b!6385877))

(assert (= (and b!6384443 ((_ is Concat!25146) (regOne!33114 (regTwo!33115 r!7292)))) b!6385878))

(assert (= (and b!6384443 ((_ is Star!16301) (regOne!33114 (regTwo!33115 r!7292)))) b!6385879))

(assert (= (and b!6384443 ((_ is Union!16301) (regOne!33114 (regTwo!33115 r!7292)))) b!6385880))

(declare-fun b!6385881 () Bool)

(declare-fun e!3876265 () Bool)

(assert (=> b!6385881 (= e!3876265 tp_is_empty!41855)))

(declare-fun b!6385883 () Bool)

(declare-fun tp!1776385 () Bool)

(assert (=> b!6385883 (= e!3876265 tp!1776385)))

(declare-fun b!6385882 () Bool)

(declare-fun tp!1776383 () Bool)

(declare-fun tp!1776381 () Bool)

(assert (=> b!6385882 (= e!3876265 (and tp!1776383 tp!1776381))))

(declare-fun b!6385884 () Bool)

(declare-fun tp!1776382 () Bool)

(declare-fun tp!1776384 () Bool)

(assert (=> b!6385884 (= e!3876265 (and tp!1776382 tp!1776384))))

(assert (=> b!6384443 (= tp!1776216 e!3876265)))

(assert (= (and b!6384443 ((_ is ElementMatch!16301) (regTwo!33114 (regTwo!33115 r!7292)))) b!6385881))

(assert (= (and b!6384443 ((_ is Concat!25146) (regTwo!33114 (regTwo!33115 r!7292)))) b!6385882))

(assert (= (and b!6384443 ((_ is Star!16301) (regTwo!33114 (regTwo!33115 r!7292)))) b!6385883))

(assert (= (and b!6384443 ((_ is Union!16301) (regTwo!33114 (regTwo!33115 r!7292)))) b!6385884))

(declare-fun b!6385885 () Bool)

(declare-fun e!3876266 () Bool)

(assert (=> b!6385885 (= e!3876266 tp_is_empty!41855)))

(declare-fun b!6385887 () Bool)

(declare-fun tp!1776390 () Bool)

(assert (=> b!6385887 (= e!3876266 tp!1776390)))

(declare-fun b!6385886 () Bool)

(declare-fun tp!1776388 () Bool)

(declare-fun tp!1776386 () Bool)

(assert (=> b!6385886 (= e!3876266 (and tp!1776388 tp!1776386))))

(declare-fun b!6385888 () Bool)

(declare-fun tp!1776387 () Bool)

(declare-fun tp!1776389 () Bool)

(assert (=> b!6385888 (= e!3876266 (and tp!1776387 tp!1776389))))

(assert (=> b!6384445 (= tp!1776217 e!3876266)))

(assert (= (and b!6384445 ((_ is ElementMatch!16301) (regOne!33115 (regTwo!33115 r!7292)))) b!6385885))

(assert (= (and b!6384445 ((_ is Concat!25146) (regOne!33115 (regTwo!33115 r!7292)))) b!6385886))

(assert (= (and b!6384445 ((_ is Star!16301) (regOne!33115 (regTwo!33115 r!7292)))) b!6385887))

(assert (= (and b!6384445 ((_ is Union!16301) (regOne!33115 (regTwo!33115 r!7292)))) b!6385888))

(declare-fun b!6385889 () Bool)

(declare-fun e!3876267 () Bool)

(assert (=> b!6385889 (= e!3876267 tp_is_empty!41855)))

(declare-fun b!6385891 () Bool)

(declare-fun tp!1776395 () Bool)

(assert (=> b!6385891 (= e!3876267 tp!1776395)))

(declare-fun b!6385890 () Bool)

(declare-fun tp!1776393 () Bool)

(declare-fun tp!1776391 () Bool)

(assert (=> b!6385890 (= e!3876267 (and tp!1776393 tp!1776391))))

(declare-fun b!6385892 () Bool)

(declare-fun tp!1776392 () Bool)

(declare-fun tp!1776394 () Bool)

(assert (=> b!6385892 (= e!3876267 (and tp!1776392 tp!1776394))))

(assert (=> b!6384445 (= tp!1776219 e!3876267)))

(assert (= (and b!6384445 ((_ is ElementMatch!16301) (regTwo!33115 (regTwo!33115 r!7292)))) b!6385889))

(assert (= (and b!6384445 ((_ is Concat!25146) (regTwo!33115 (regTwo!33115 r!7292)))) b!6385890))

(assert (= (and b!6384445 ((_ is Star!16301) (regTwo!33115 (regTwo!33115 r!7292)))) b!6385891))

(assert (= (and b!6384445 ((_ is Union!16301) (regTwo!33115 (regTwo!33115 r!7292)))) b!6385892))

(declare-fun b!6385893 () Bool)

(declare-fun e!3876268 () Bool)

(assert (=> b!6385893 (= e!3876268 tp_is_empty!41855)))

(declare-fun b!6385895 () Bool)

(declare-fun tp!1776400 () Bool)

(assert (=> b!6385895 (= e!3876268 tp!1776400)))

(declare-fun b!6385894 () Bool)

(declare-fun tp!1776398 () Bool)

(declare-fun tp!1776396 () Bool)

(assert (=> b!6385894 (= e!3876268 (and tp!1776398 tp!1776396))))

(declare-fun b!6385896 () Bool)

(declare-fun tp!1776397 () Bool)

(declare-fun tp!1776399 () Bool)

(assert (=> b!6385896 (= e!3876268 (and tp!1776397 tp!1776399))))

(assert (=> b!6384450 (= tp!1776225 e!3876268)))

(assert (= (and b!6384450 ((_ is ElementMatch!16301) (h!71527 (exprs!6185 setElem!43580)))) b!6385893))

(assert (= (and b!6384450 ((_ is Concat!25146) (h!71527 (exprs!6185 setElem!43580)))) b!6385894))

(assert (= (and b!6384450 ((_ is Star!16301) (h!71527 (exprs!6185 setElem!43580)))) b!6385895))

(assert (= (and b!6384450 ((_ is Union!16301) (h!71527 (exprs!6185 setElem!43580)))) b!6385896))

(declare-fun b!6385897 () Bool)

(declare-fun e!3876269 () Bool)

(declare-fun tp!1776401 () Bool)

(declare-fun tp!1776402 () Bool)

(assert (=> b!6385897 (= e!3876269 (and tp!1776401 tp!1776402))))

(assert (=> b!6384450 (= tp!1776226 e!3876269)))

(assert (= (and b!6384450 ((_ is Cons!65079) (t!378807 (exprs!6185 setElem!43580)))) b!6385897))

(declare-fun b!6385898 () Bool)

(declare-fun e!3876270 () Bool)

(assert (=> b!6385898 (= e!3876270 tp_is_empty!41855)))

(declare-fun b!6385900 () Bool)

(declare-fun tp!1776407 () Bool)

(assert (=> b!6385900 (= e!3876270 tp!1776407)))

(declare-fun b!6385899 () Bool)

(declare-fun tp!1776405 () Bool)

(declare-fun tp!1776403 () Bool)

(assert (=> b!6385899 (= e!3876270 (and tp!1776405 tp!1776403))))

(declare-fun b!6385901 () Bool)

(declare-fun tp!1776404 () Bool)

(declare-fun tp!1776406 () Bool)

(assert (=> b!6385901 (= e!3876270 (and tp!1776404 tp!1776406))))

(assert (=> b!6384477 (= tp!1776250 e!3876270)))

(assert (= (and b!6384477 ((_ is ElementMatch!16301) (regOne!33115 (regOne!33114 r!7292)))) b!6385898))

(assert (= (and b!6384477 ((_ is Concat!25146) (regOne!33115 (regOne!33114 r!7292)))) b!6385899))

(assert (= (and b!6384477 ((_ is Star!16301) (regOne!33115 (regOne!33114 r!7292)))) b!6385900))

(assert (= (and b!6384477 ((_ is Union!16301) (regOne!33115 (regOne!33114 r!7292)))) b!6385901))

(declare-fun b!6385902 () Bool)

(declare-fun e!3876271 () Bool)

(assert (=> b!6385902 (= e!3876271 tp_is_empty!41855)))

(declare-fun b!6385904 () Bool)

(declare-fun tp!1776412 () Bool)

(assert (=> b!6385904 (= e!3876271 tp!1776412)))

(declare-fun b!6385903 () Bool)

(declare-fun tp!1776410 () Bool)

(declare-fun tp!1776408 () Bool)

(assert (=> b!6385903 (= e!3876271 (and tp!1776410 tp!1776408))))

(declare-fun b!6385905 () Bool)

(declare-fun tp!1776409 () Bool)

(declare-fun tp!1776411 () Bool)

(assert (=> b!6385905 (= e!3876271 (and tp!1776409 tp!1776411))))

(assert (=> b!6384477 (= tp!1776252 e!3876271)))

(assert (= (and b!6384477 ((_ is ElementMatch!16301) (regTwo!33115 (regOne!33114 r!7292)))) b!6385902))

(assert (= (and b!6384477 ((_ is Concat!25146) (regTwo!33115 (regOne!33114 r!7292)))) b!6385903))

(assert (= (and b!6384477 ((_ is Star!16301) (regTwo!33115 (regOne!33114 r!7292)))) b!6385904))

(assert (= (and b!6384477 ((_ is Union!16301) (regTwo!33115 (regOne!33114 r!7292)))) b!6385905))

(declare-fun b!6385906 () Bool)

(declare-fun e!3876272 () Bool)

(declare-fun tp!1776413 () Bool)

(assert (=> b!6385906 (= e!3876272 (and tp_is_empty!41855 tp!1776413))))

(assert (=> b!6384456 (= tp!1776231 e!3876272)))

(assert (= (and b!6384456 ((_ is Cons!65078) (t!378806 (t!378806 s!2326)))) b!6385906))

(declare-fun b!6385907 () Bool)

(declare-fun e!3876273 () Bool)

(assert (=> b!6385907 (= e!3876273 tp_is_empty!41855)))

(declare-fun b!6385909 () Bool)

(declare-fun tp!1776418 () Bool)

(assert (=> b!6385909 (= e!3876273 tp!1776418)))

(declare-fun b!6385908 () Bool)

(declare-fun tp!1776416 () Bool)

(declare-fun tp!1776414 () Bool)

(assert (=> b!6385908 (= e!3876273 (and tp!1776416 tp!1776414))))

(declare-fun b!6385910 () Bool)

(declare-fun tp!1776415 () Bool)

(declare-fun tp!1776417 () Bool)

(assert (=> b!6385910 (= e!3876273 (and tp!1776415 tp!1776417))))

(assert (=> b!6384475 (= tp!1776251 e!3876273)))

(assert (= (and b!6384475 ((_ is ElementMatch!16301) (regOne!33114 (regOne!33114 r!7292)))) b!6385907))

(assert (= (and b!6384475 ((_ is Concat!25146) (regOne!33114 (regOne!33114 r!7292)))) b!6385908))

(assert (= (and b!6384475 ((_ is Star!16301) (regOne!33114 (regOne!33114 r!7292)))) b!6385909))

(assert (= (and b!6384475 ((_ is Union!16301) (regOne!33114 (regOne!33114 r!7292)))) b!6385910))

(declare-fun b!6385911 () Bool)

(declare-fun e!3876274 () Bool)

(assert (=> b!6385911 (= e!3876274 tp_is_empty!41855)))

(declare-fun b!6385913 () Bool)

(declare-fun tp!1776423 () Bool)

(assert (=> b!6385913 (= e!3876274 tp!1776423)))

(declare-fun b!6385912 () Bool)

(declare-fun tp!1776421 () Bool)

(declare-fun tp!1776419 () Bool)

(assert (=> b!6385912 (= e!3876274 (and tp!1776421 tp!1776419))))

(declare-fun b!6385914 () Bool)

(declare-fun tp!1776420 () Bool)

(declare-fun tp!1776422 () Bool)

(assert (=> b!6385914 (= e!3876274 (and tp!1776420 tp!1776422))))

(assert (=> b!6384475 (= tp!1776249 e!3876274)))

(assert (= (and b!6384475 ((_ is ElementMatch!16301) (regTwo!33114 (regOne!33114 r!7292)))) b!6385911))

(assert (= (and b!6384475 ((_ is Concat!25146) (regTwo!33114 (regOne!33114 r!7292)))) b!6385912))

(assert (= (and b!6384475 ((_ is Star!16301) (regTwo!33114 (regOne!33114 r!7292)))) b!6385913))

(assert (= (and b!6384475 ((_ is Union!16301) (regTwo!33114 (regOne!33114 r!7292)))) b!6385914))

(declare-fun b!6385915 () Bool)

(declare-fun e!3876275 () Bool)

(assert (=> b!6385915 (= e!3876275 tp_is_empty!41855)))

(declare-fun b!6385917 () Bool)

(declare-fun tp!1776428 () Bool)

(assert (=> b!6385917 (= e!3876275 tp!1776428)))

(declare-fun b!6385916 () Bool)

(declare-fun tp!1776426 () Bool)

(declare-fun tp!1776424 () Bool)

(assert (=> b!6385916 (= e!3876275 (and tp!1776426 tp!1776424))))

(declare-fun b!6385918 () Bool)

(declare-fun tp!1776425 () Bool)

(declare-fun tp!1776427 () Bool)

(assert (=> b!6385918 (= e!3876275 (and tp!1776425 tp!1776427))))

(assert (=> b!6384441 (= tp!1776212 e!3876275)))

(assert (= (and b!6384441 ((_ is ElementMatch!16301) (regOne!33115 (regOne!33115 r!7292)))) b!6385915))

(assert (= (and b!6384441 ((_ is Concat!25146) (regOne!33115 (regOne!33115 r!7292)))) b!6385916))

(assert (= (and b!6384441 ((_ is Star!16301) (regOne!33115 (regOne!33115 r!7292)))) b!6385917))

(assert (= (and b!6384441 ((_ is Union!16301) (regOne!33115 (regOne!33115 r!7292)))) b!6385918))

(declare-fun b!6385919 () Bool)

(declare-fun e!3876276 () Bool)

(assert (=> b!6385919 (= e!3876276 tp_is_empty!41855)))

(declare-fun b!6385921 () Bool)

(declare-fun tp!1776433 () Bool)

(assert (=> b!6385921 (= e!3876276 tp!1776433)))

(declare-fun b!6385920 () Bool)

(declare-fun tp!1776431 () Bool)

(declare-fun tp!1776429 () Bool)

(assert (=> b!6385920 (= e!3876276 (and tp!1776431 tp!1776429))))

(declare-fun b!6385922 () Bool)

(declare-fun tp!1776430 () Bool)

(declare-fun tp!1776432 () Bool)

(assert (=> b!6385922 (= e!3876276 (and tp!1776430 tp!1776432))))

(assert (=> b!6384441 (= tp!1776214 e!3876276)))

(assert (= (and b!6384441 ((_ is ElementMatch!16301) (regTwo!33115 (regOne!33115 r!7292)))) b!6385919))

(assert (= (and b!6384441 ((_ is Concat!25146) (regTwo!33115 (regOne!33115 r!7292)))) b!6385920))

(assert (= (and b!6384441 ((_ is Star!16301) (regTwo!33115 (regOne!33115 r!7292)))) b!6385921))

(assert (= (and b!6384441 ((_ is Union!16301) (regTwo!33115 (regOne!33115 r!7292)))) b!6385922))

(declare-fun b!6385923 () Bool)

(declare-fun e!3876277 () Bool)

(assert (=> b!6385923 (= e!3876277 tp_is_empty!41855)))

(declare-fun b!6385925 () Bool)

(declare-fun tp!1776438 () Bool)

(assert (=> b!6385925 (= e!3876277 tp!1776438)))

(declare-fun b!6385924 () Bool)

(declare-fun tp!1776436 () Bool)

(declare-fun tp!1776434 () Bool)

(assert (=> b!6385924 (= e!3876277 (and tp!1776436 tp!1776434))))

(declare-fun b!6385926 () Bool)

(declare-fun tp!1776435 () Bool)

(declare-fun tp!1776437 () Bool)

(assert (=> b!6385926 (= e!3876277 (and tp!1776435 tp!1776437))))

(assert (=> b!6384476 (= tp!1776253 e!3876277)))

(assert (= (and b!6384476 ((_ is ElementMatch!16301) (reg!16630 (regOne!33114 r!7292)))) b!6385923))

(assert (= (and b!6384476 ((_ is Concat!25146) (reg!16630 (regOne!33114 r!7292)))) b!6385924))

(assert (= (and b!6384476 ((_ is Star!16301) (reg!16630 (regOne!33114 r!7292)))) b!6385925))

(assert (= (and b!6384476 ((_ is Union!16301) (reg!16630 (regOne!33114 r!7292)))) b!6385926))

(declare-fun b!6385927 () Bool)

(declare-fun e!3876278 () Bool)

(declare-fun tp!1776439 () Bool)

(declare-fun tp!1776440 () Bool)

(assert (=> b!6385927 (= e!3876278 (and tp!1776439 tp!1776440))))

(assert (=> b!6384469 (= tp!1776242 e!3876278)))

(assert (= (and b!6384469 ((_ is Cons!65079) (exprs!6185 (h!71528 (t!378808 zl!343))))) b!6385927))

(declare-fun b!6385931 () Bool)

(declare-fun e!3876282 () Bool)

(declare-fun tp!1776441 () Bool)

(assert (=> b!6385931 (= e!3876282 tp!1776441)))

(declare-fun tp!1776442 () Bool)

(declare-fun b!6385930 () Bool)

(declare-fun e!3876281 () Bool)

(assert (=> b!6385930 (= e!3876281 (and (inv!83999 (h!71528 (t!378808 (t!378808 zl!343)))) e!3876282 tp!1776442))))

(assert (=> b!6384468 (= tp!1776243 e!3876281)))

(assert (= b!6385930 b!6385931))

(assert (= (and b!6384468 ((_ is Cons!65080) (t!378808 (t!378808 zl!343)))) b!6385930))

(declare-fun m!7185650 () Bool)

(assert (=> b!6385930 m!7185650))

(declare-fun b_lambda!242617 () Bool)

(assert (= b_lambda!242609 (or b!6383534 b_lambda!242617)))

(assert (=> d!2002010 d!2001472))

(declare-fun b_lambda!242619 () Bool)

(assert (= b_lambda!242601 (or d!2001364 b_lambda!242619)))

(declare-fun bs!1598384 () Bool)

(declare-fun d!2002124 () Bool)

(assert (= bs!1598384 (and d!2002124 d!2001364)))

(assert (=> bs!1598384 (= (dynLambda!25821 lambda!352283 (h!71527 (exprs!6185 setElem!43580))) (validRegex!8037 (h!71527 (exprs!6185 setElem!43580))))))

(declare-fun m!7185652 () Bool)

(assert (=> bs!1598384 m!7185652))

(assert (=> b!6385285 d!2002124))

(declare-fun b_lambda!242621 () Bool)

(assert (= b_lambda!242613 (or d!2001366 b_lambda!242621)))

(declare-fun bs!1598385 () Bool)

(declare-fun d!2002126 () Bool)

(assert (= bs!1598385 (and d!2002126 d!2001366)))

(assert (=> bs!1598385 (= (dynLambda!25821 lambda!352284 (h!71527 (exprs!6185 (h!71528 zl!343)))) (validRegex!8037 (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(declare-fun m!7185654 () Bool)

(assert (=> bs!1598385 m!7185654))

(assert (=> b!6385776 d!2002126))

(declare-fun b_lambda!242623 () Bool)

(assert (= b_lambda!242583 (or b!6383534 b_lambda!242623)))

(assert (=> d!2001544 d!2001468))

(declare-fun b_lambda!242625 () Bool)

(assert (= b_lambda!242603 (or d!2001302 b_lambda!242625)))

(declare-fun bs!1598386 () Bool)

(declare-fun d!2002128 () Bool)

(assert (= bs!1598386 (and d!2002128 d!2001302)))

(assert (=> bs!1598386 (= (dynLambda!25821 lambda!352276 (h!71527 (exprs!6185 (h!71528 zl!343)))) (validRegex!8037 (h!71527 (exprs!6185 (h!71528 zl!343)))))))

(assert (=> bs!1598386 m!7185654))

(assert (=> b!6385369 d!2002128))

(declare-fun b_lambda!242627 () Bool)

(assert (= b_lambda!242607 (or d!2001362 b_lambda!242627)))

(declare-fun bs!1598387 () Bool)

(declare-fun d!2002130 () Bool)

(assert (= bs!1598387 (and d!2002130 d!2001362)))

(assert (=> bs!1598387 (= (dynLambda!25821 lambda!352282 (h!71527 (exprs!6185 lt!2371183))) (validRegex!8037 (h!71527 (exprs!6185 lt!2371183))))))

(declare-fun m!7185656 () Bool)

(assert (=> bs!1598387 m!7185656))

(assert (=> b!6385512 d!2002130))

(declare-fun b_lambda!242629 () Bool)

(assert (= b_lambda!242591 (or b!6383534 b_lambda!242629)))

(assert (=> d!2001730 d!2001474))

(declare-fun b_lambda!242631 () Bool)

(assert (= b_lambda!242611 (or d!2001374 b_lambda!242631)))

(declare-fun bs!1598388 () Bool)

(declare-fun d!2002132 () Bool)

(assert (= bs!1598388 (and d!2002132 d!2001374)))

(assert (=> bs!1598388 (= (dynLambda!25821 lambda!352287 (h!71527 (unfocusZipperList!1722 zl!343))) (validRegex!8037 (h!71527 (unfocusZipperList!1722 zl!343))))))

(declare-fun m!7185658 () Bool)

(assert (=> bs!1598388 m!7185658))

(assert (=> b!6385774 d!2002132))

(declare-fun b_lambda!242633 () Bool)

(assert (= b_lambda!242581 (or b!6383534 b_lambda!242633)))

(assert (=> d!2001488 d!2001470))

(declare-fun b_lambda!242635 () Bool)

(assert (= b_lambda!242595 (or d!2001376 b_lambda!242635)))

(declare-fun bs!1598389 () Bool)

(declare-fun d!2002134 () Bool)

(assert (= bs!1598389 (and d!2002134 d!2001376)))

(assert (=> bs!1598389 (= (dynLambda!25821 lambda!352290 (h!71527 lt!2371268)) (validRegex!8037 (h!71527 lt!2371268)))))

(declare-fun m!7185660 () Bool)

(assert (=> bs!1598389 m!7185660))

(assert (=> b!6385091 d!2002134))

(check-sat (not b!6384786) (not b!6385557) (not d!2001862) (not b!6385326) (not bm!545886) (not b!6385625) (not b!6385002) (not b!6384621) (not b!6385921) (not b!6384854) (not b!6384728) (not bm!545796) (not b!6384623) (not d!2001908) (not b!6385299) (not b!6384830) (not bm!545850) (not bm!545693) (not d!2001646) (not b!6385382) (not setNonEmpty!43597) (not b!6385314) (not bm!545697) (not d!2001958) (not b!6385067) (not b!6384647) (not b!6385811) (not bm!545800) (not bm!545896) (not d!2001752) (not d!2001992) (not d!2002042) (not b!6385926) (not b!6384784) (not b!6385248) (not b!6385253) (not bm!545884) (not d!2001668) (not bm!545806) (not bm!545794) (not b!6384521) (not bm!545673) (not b!6385307) (not b!6384782) (not b!6384968) (not d!2001822) (not b!6385850) (not bm!545835) (not b!6384885) (not b!6384858) (not b!6385316) (not b!6385729) (not bm!545746) (not d!2001792) (not b!6384904) (not bs!1598385) (not b!6385111) (not b!6385527) (not b!6385318) (not b!6384636) (not b!6385879) (not b!6385896) (not d!2001910) (not b!6385887) (not b!6385886) (not b!6385012) (not b!6384908) (not bm!545690) (not d!2001670) (not b!6384864) (not b!6385741) (not bm!545707) (not b!6385387) (not b!6385097) (not b!6384855) (not b!6385457) (not bm!545891) (not d!2001500) (not b!6385505) (not b!6385913) (not d!2001522) (not b!6385501) (not b!6384907) (not bm!545877) (not bm!545897) (not b!6384909) (not b!6385922) (not d!2001546) (not b!6385878) (not b!6384993) (not d!2001716) (not d!2001942) (not bm!545812) (not d!2001544) (not bm!545785) (not b!6385319) (not b!6385331) (not d!2001568) (not b!6385513) (not b!6384819) (not b!6384828) (not b!6385914) (not b!6384528) (not bm!545832) (not b!6384625) (not b!6385500) (not d!2001974) (not bm!545838) (not bm!545797) (not b!6385325) (not b!6384672) (not bm!545702) (not bm!545773) (not bm!545677) (not b!6384949) (not b!6385357) (not setNonEmpty!43599) (not b!6385810) (not b!6384626) (not setNonEmpty!43589) (not bm!545811) (not b!6385453) (not b!6385336) (not bm!545733) (not b!6384810) (not b!6384772) (not b!6385812) (not d!2002076) (not b!6384537) (not bm!545879) (not bm!545782) (not b!6385801) (not bm!545682) (not b!6385401) (not bs!1598384) (not b!6384668) (not d!2001504) (not bm!545659) (not setNonEmpty!43593) (not bm!545808) (not b!6385920) (not b!6384859) (not b!6384839) (not b!6385300) (not bm!545662) (not d!2001740) (not b!6385844) (not b!6384961) (not b!6385875) (not d!2001648) (not b!6385439) (not b!6385008) (not bm!545778) (not d!2001920) (not b_lambda!242617) (not b!6384780) (not b!6385666) (not bm!545890) (not b!6385821) (not b!6385434) (not b!6385900) (not bs!1598387) (not b!6384865) (not d!2001696) (not bm!545865) (not b!6384651) (not d!2001754) (not bm!545710) (not b!6385532) (not b!6385930) (not d!2001804) (not b!6385003) (not bm!545692) (not b!6385066) (not b!6384600) (not b!6385243) (not d!2002102) (not bm!545868) (not b_lambda!242623) (not d!2001658) (not bs!1598386) (not b!6385803) (not b!6385443) (not b!6385347) (not bm!545701) (not b!6384863) (not d!2001666) (not b!6384984) (not bm!545751) (not b!6385917) (not d!2001640) (not d!2001918) (not d!2001552) (not b!6385380) (not b!6385267) (not bm!545633) (not b!6384861) (not b!6385925) (not b!6385650) (not b!6385362) (not b!6384963) (not bm!545789) (not b!6385806) (not bm!545680) (not b!6385446) (not b!6385820) (not bm!545731) (not b!6385250) (not b!6385832) (not d!2001626) (not bm!545880) (not d!2001600) (not b!6384966) (not bm!545684) (not b!6385830) (not b!6384632) (not d!2002018) (not b!6384538) (not b!6385890) (not d!2001548) (not b!6385833) (not b!6385888) (not d!2001922) (not b!6385548) (not b!6385841) (not b!6385853) (not b!6385536) (not b!6385110) (not bm!545660) (not b_lambda!242621) (not d!2001726) (not b!6384670) (not b!6385825) (not bm!545661) (not d!2001884) (not b!6385384) (not b!6385493) (not bm!545745) (not b!6385327) (not d!2001944) (not b!6384936) (not bm!545725) (not bm!545650) (not b!6385901) (not d!2002010) (not b!6385631) (not b!6385014) (not d!2001732) (not b!6385467) (not b!6385823) (not bm!545704) (not b!6385408) (not b!6385670) (not d!2001820) (not d!2002016) tp_is_empty!41855 (not bm!545671) (not b!6385115) (not bm!545807) (not bm!545872) (not b!6384964) (not d!2001794) (not b!6384849) (not b!6385805) (not b!6384844) (not b!6384811) (not b!6385252) (not d!2001572) (not b!6385343) (not d!2001976) (not bm!545675) (not b!6384781) (not bm!545834) (not b!6384533) (not b!6384601) (not d!2001702) (not b!6385842) (not bm!545727) (not b!6384962) (not d!2001576) (not b!6384948) (not b!6385852) (not b!6385312) (not bm!545866) (not b!6385815) (not b!6385296) (not b!6384987) (not b!6385405) (not b!6385916) (not b!6385341) (not b!6385884) (not b!6385502) (not d!2002106) (not b!6385828) (not b!6384602) (not bm!545686) (not b!6385632) (not b!6385346) (not b!6385456) (not bm!545827) (not d!2001502) (not b_lambda!242631) (not b!6384890) (not b!6385880) (not b!6385871) (not d!2001802) (not b!6385294) (not b!6385816) (not b!6385903) (not b!6385870) (not b!6384910) (not bm!545787) (not b!6385383) (not d!2002112) (not b!6384954) (not d!2001900) (not d!2001808) (not b!6385767) (not bm!545780) (not b!6385837) (not b!6385711) (not b!6385537) (not b!6384801) (not bm!545730) (not b!6385282) (not d!2002110) (not b!6385451) (not b_lambda!242629) (not bm!545678) (not b!6385918) (not b!6384862) (not b!6385775) (not d!2001750) (not b_lambda!242633) (not d!2001826) (not b!6385845) (not b!6385882) (not b_lambda!242577) (not d!2001832) (not b!6384704) (not b!6385931) (not b!6385840) (not b!6385431) (not bm!545851) (not b!6384767) (not b!6385750) (not bm!545651) (not b_lambda!242575) (not b!6385824) (not bm!545695) (not b!6385370) (not b!6385808) (not b!6385441) (not b!6385912) (not b!6385011) (not b!6385406) (not b!6385522) (not b!6385883) (not bm!545809) (not b!6385286) (not b!6385904) (not bm!545888) (not d!2001756) (not b!6384525) (not b!6385117) (not b!6385846) (not d!2001656) (not d!2001972) (not b!6385899) (not bm!545823) (not d!2001858) (not b!6384523) (not d!2001948) (not b!6384889) (not b_lambda!242635) (not b!6385819) (not b!6385910) (not d!2001620) (not b!6385403) (not b!6385553) (not b!6384721) (not b!6385786) (not b!6384779) (not b!6384616) (not b!6385429) (not b!6384754) (not b!6385924) (not b!6385324) (not bm!545869) (not b!6385345) (not bm!545825) (not b!6385797) (not d!2001776) (not b!6384743) (not d!2001528) (not b!6384783) (not b!6385492) (not b!6385807) (not b!6385317) (not d!2001704) (not b!6385891) (not bm!545837) (not b!6385534) (not b!6385854) (not b!6385538) (not b!6385848) (not bm!545830) (not b!6384535) (not b!6384826) (not b!6385092) (not b_lambda!242579) (not d!2001564) (not d!2001904) (not bm!545706) (not b!6385827) (not b!6385838) (not b!6384803) (not b_lambda!242573) (not b!6385906) (not b!6384627) (not b!6384905) (not b!6385436) (not b!6384789) (not b_lambda!242619) (not bm!545792) (not bm!545788) (not d!2001968) (not b!6385402) (not bs!1598389) (not d!2001680) (not bm!545709) (not bs!1598388) (not bm!545791) (not b!6384877) (not b!6385254) (not b!6385455) (not d!2001938) (not b!6385897) (not b!6385872) (not b!6384989) (not d!2001698) (not b_lambda!242625) (not b!6385404) (not b!6385298) (not bm!545784) (not b!6385849) (not d!2001550) (not b!6384965) (not d!2001730) (not b!6385834) (not b!6385009) (not b!6385777) (not b!6384851) (not b!6385927) (not bm!545687) (not b!6385373) (not b!6385894) (not b!6385426) (not b!6385829) (not d!2001488) (not d!2002078) (not d!2001662) (not bm!545870) (not b_lambda!242627) (not b!6385905) (not b!6385378) (not d!2001916) (not bm!545894) (not bm!545829) (not b!6384886) (not bm!545848) (not b!6385730) (not b!6385876) (not b!6385817) (not d!2001534) (not b!6384824) (not setNonEmpty!43594) (not b!6385328) (not bm!545712) (not b!6385289) (not b!6385013) (not d!2001624) (not b!6385813) (not d!2001860) (not b!6385909) (not b!6385892) (not b!6385329) (not b!6385908) (not b!6384829) (not b!6385836) (not b!6385874) (not b!6385802) (not b!6384539) (not b!6384853) (not b!6385895) (not bm!545798) (not bm!545663))
(check-sat)
