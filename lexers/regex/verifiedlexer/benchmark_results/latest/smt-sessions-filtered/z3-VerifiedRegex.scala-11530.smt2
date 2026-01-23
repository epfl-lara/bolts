; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!632870 () Bool)

(assert start!632870)

(declare-fun b!6389208 () Bool)

(assert (=> b!6389208 true))

(assert (=> b!6389208 true))

(declare-fun lambda!352738 () Int)

(declare-fun lambda!352737 () Int)

(assert (=> b!6389208 (not (= lambda!352738 lambda!352737))))

(assert (=> b!6389208 true))

(assert (=> b!6389208 true))

(declare-fun b!6389217 () Bool)

(assert (=> b!6389217 true))

(declare-fun bs!1598909 () Bool)

(declare-fun b!6389199 () Bool)

(assert (= bs!1598909 (and b!6389199 b!6389208)))

(declare-datatypes ((C!32884 0))(
  ( (C!32885 (val!26144 Int)) )
))
(declare-datatypes ((Regex!16307 0))(
  ( (ElementMatch!16307 (c!1164602 C!32884)) (Concat!25152 (regOne!33126 Regex!16307) (regTwo!33126 Regex!16307)) (EmptyExpr!16307) (Star!16307 (reg!16636 Regex!16307)) (EmptyLang!16307) (Union!16307 (regOne!33127 Regex!16307) (regTwo!33127 Regex!16307)) )
))
(declare-fun lt!2372394 () Regex!16307)

(declare-fun lambda!352740 () Int)

(declare-fun r!7292 () Regex!16307)

(assert (=> bs!1598909 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352740 lambda!352737))))

(assert (=> bs!1598909 (not (= lambda!352740 lambda!352738))))

(assert (=> b!6389199 true))

(assert (=> b!6389199 true))

(assert (=> b!6389199 true))

(declare-fun lambda!352741 () Int)

(assert (=> bs!1598909 (not (= lambda!352741 lambda!352737))))

(assert (=> bs!1598909 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352741 lambda!352738))))

(assert (=> b!6389199 (not (= lambda!352741 lambda!352740))))

(assert (=> b!6389199 true))

(assert (=> b!6389199 true))

(assert (=> b!6389199 true))

(declare-fun b!6389193 () Bool)

(declare-fun res!2628155 () Bool)

(declare-fun e!3878037 () Bool)

(assert (=> b!6389193 (=> (not res!2628155) (not e!3878037))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65220 0))(
  ( (Nil!65096) (Cons!65096 (h!71544 Regex!16307) (t!378826 List!65220)) )
))
(declare-datatypes ((Context!11382 0))(
  ( (Context!11383 (exprs!6191 List!65220)) )
))
(declare-fun z!1189 () (InoxSet Context!11382))

(declare-datatypes ((List!65221 0))(
  ( (Nil!65097) (Cons!65097 (h!71545 Context!11382) (t!378827 List!65221)) )
))
(declare-fun zl!343 () List!65221)

(declare-fun toList!10091 ((InoxSet Context!11382)) List!65221)

(assert (=> b!6389193 (= res!2628155 (= (toList!10091 z!1189) zl!343))))

(declare-fun b!6389194 () Bool)

(declare-fun e!3878043 () Bool)

(declare-fun lt!2372367 () Bool)

(declare-fun lt!2372392 () Bool)

(assert (=> b!6389194 (= e!3878043 (or (not lt!2372367) lt!2372392))))

(declare-fun b!6389195 () Bool)

(declare-fun e!3878045 () Bool)

(declare-fun e!3878048 () Bool)

(assert (=> b!6389195 (= e!3878045 (not e!3878048))))

(declare-fun res!2628150 () Bool)

(assert (=> b!6389195 (=> res!2628150 e!3878048)))

(get-info :version)

(assert (=> b!6389195 (= res!2628150 (not ((_ is Cons!65097) zl!343)))))

(assert (=> b!6389195 (= lt!2372367 lt!2372392)))

(declare-datatypes ((List!65222 0))(
  ( (Nil!65098) (Cons!65098 (h!71546 C!32884) (t!378828 List!65222)) )
))
(declare-fun s!2326 () List!65222)

(declare-fun matchRSpec!3408 (Regex!16307 List!65222) Bool)

(assert (=> b!6389195 (= lt!2372392 (matchRSpec!3408 r!7292 s!2326))))

(declare-fun matchR!8490 (Regex!16307 List!65222) Bool)

(assert (=> b!6389195 (= lt!2372367 (matchR!8490 r!7292 s!2326))))

(declare-datatypes ((Unit!158559 0))(
  ( (Unit!158560) )
))
(declare-fun lt!2372396 () Unit!158559)

(declare-fun mainMatchTheorem!3408 (Regex!16307 List!65222) Unit!158559)

(assert (=> b!6389195 (= lt!2372396 (mainMatchTheorem!3408 r!7292 s!2326))))

(declare-fun b!6389196 () Bool)

(declare-fun e!3878049 () Bool)

(declare-fun nullable!6300 (Regex!16307) Bool)

(assert (=> b!6389196 (= e!3878049 (nullable!6300 (regOne!33126 (regOne!33126 r!7292))))))

(declare-fun b!6389197 () Bool)

(assert (=> b!6389197 (= e!3878037 e!3878045)))

(declare-fun res!2628172 () Bool)

(assert (=> b!6389197 (=> (not res!2628172) (not e!3878045))))

(declare-fun lt!2372370 () Regex!16307)

(assert (=> b!6389197 (= res!2628172 (= r!7292 lt!2372370))))

(declare-fun unfocusZipper!2049 (List!65221) Regex!16307)

(assert (=> b!6389197 (= lt!2372370 (unfocusZipper!2049 zl!343))))

(declare-fun res!2628158 () Bool)

(assert (=> start!632870 (=> (not res!2628158) (not e!3878037))))

(declare-fun validRegex!8043 (Regex!16307) Bool)

(assert (=> start!632870 (= res!2628158 (validRegex!8043 r!7292))))

(assert (=> start!632870 e!3878037))

(declare-fun e!3878042 () Bool)

(assert (=> start!632870 e!3878042))

(declare-fun condSetEmpty!43630 () Bool)

(assert (=> start!632870 (= condSetEmpty!43630 (= z!1189 ((as const (Array Context!11382 Bool)) false)))))

(declare-fun setRes!43630 () Bool)

(assert (=> start!632870 setRes!43630))

(declare-fun e!3878052 () Bool)

(assert (=> start!632870 e!3878052))

(declare-fun e!3878046 () Bool)

(assert (=> start!632870 e!3878046))

(declare-fun b!6389198 () Bool)

(declare-fun res!2628170 () Bool)

(declare-fun e!3878057 () Bool)

(assert (=> b!6389198 (=> res!2628170 e!3878057)))

(declare-fun lt!2372375 () (InoxSet Context!11382))

(declare-fun lt!2372368 () (InoxSet Context!11382))

(declare-fun matchZipper!2319 ((InoxSet Context!11382) List!65222) Bool)

(assert (=> b!6389198 (= res!2628170 (not (= (matchZipper!2319 lt!2372375 s!2326) (matchZipper!2319 lt!2372368 (t!378828 s!2326)))))))

(declare-fun setNonEmpty!43630 () Bool)

(declare-fun setElem!43630 () Context!11382)

(declare-fun tp!1777000 () Bool)

(declare-fun e!3878055 () Bool)

(declare-fun inv!84014 (Context!11382) Bool)

(assert (=> setNonEmpty!43630 (= setRes!43630 (and tp!1777000 (inv!84014 setElem!43630) e!3878055))))

(declare-fun setRest!43630 () (InoxSet Context!11382))

(assert (=> setNonEmpty!43630 (= z!1189 ((_ map or) (store ((as const (Array Context!11382 Bool)) false) setElem!43630 true) setRest!43630))))

(declare-fun e!3878051 () Bool)

(declare-fun e!3878041 () Bool)

(assert (=> b!6389199 (= e!3878051 e!3878041)))

(declare-fun res!2628178 () Bool)

(assert (=> b!6389199 (=> res!2628178 e!3878041)))

(declare-datatypes ((tuple2!66572 0))(
  ( (tuple2!66573 (_1!36589 List!65222) (_2!36589 List!65222)) )
))
(declare-fun lt!2372384 () tuple2!66572)

(declare-fun ++!14375 (List!65222 List!65222) List!65222)

(assert (=> b!6389199 (= res!2628178 (not (= (++!14375 (_1!36589 lt!2372384) (_2!36589 lt!2372384)) s!2326)))))

(declare-datatypes ((Option!16198 0))(
  ( (None!16197) (Some!16197 (v!52366 tuple2!66572)) )
))
(declare-fun lt!2372398 () Option!16198)

(declare-fun get!22544 (Option!16198) tuple2!66572)

(assert (=> b!6389199 (= lt!2372384 (get!22544 lt!2372398))))

(declare-fun Exists!3377 (Int) Bool)

(assert (=> b!6389199 (= (Exists!3377 lambda!352740) (Exists!3377 lambda!352741))))

(declare-fun lt!2372380 () Unit!158559)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1914 (Regex!16307 Regex!16307 List!65222) Unit!158559)

(assert (=> b!6389199 (= lt!2372380 (lemmaExistCutMatchRandMatchRSpecEquivalent!1914 lt!2372394 (regTwo!33126 r!7292) s!2326))))

(declare-fun isDefined!12901 (Option!16198) Bool)

(assert (=> b!6389199 (= (isDefined!12901 lt!2372398) (Exists!3377 lambda!352740))))

(declare-fun findConcatSeparation!2612 (Regex!16307 Regex!16307 List!65222 List!65222 List!65222) Option!16198)

(assert (=> b!6389199 (= lt!2372398 (findConcatSeparation!2612 lt!2372394 (regTwo!33126 r!7292) Nil!65098 s!2326 s!2326))))

(declare-fun lt!2372376 () Unit!158559)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2376 (Regex!16307 Regex!16307 List!65222) Unit!158559)

(assert (=> b!6389199 (= lt!2372376 (lemmaFindConcatSeparationEquivalentToExists!2376 lt!2372394 (regTwo!33126 r!7292) s!2326))))

(declare-fun b!6389200 () Bool)

(declare-fun tp!1776994 () Bool)

(assert (=> b!6389200 (= e!3878042 tp!1776994)))

(declare-fun b!6389201 () Bool)

(declare-fun tp!1776996 () Bool)

(assert (=> b!6389201 (= e!3878055 tp!1776996)))

(declare-fun b!6389202 () Bool)

(declare-fun e!3878054 () Bool)

(declare-fun e!3878040 () Bool)

(assert (=> b!6389202 (= e!3878054 e!3878040)))

(declare-fun res!2628174 () Bool)

(assert (=> b!6389202 (=> res!2628174 e!3878040)))

(declare-fun lt!2372391 () (InoxSet Context!11382))

(declare-fun lt!2372363 () (InoxSet Context!11382))

(assert (=> b!6389202 (= res!2628174 (not (= lt!2372391 lt!2372363)))))

(declare-fun lt!2372373 () Context!11382)

(declare-fun derivationStepZipperDown!1555 (Regex!16307 Context!11382 C!32884) (InoxSet Context!11382))

(assert (=> b!6389202 (= lt!2372363 (derivationStepZipperDown!1555 (reg!16636 (regOne!33126 r!7292)) lt!2372373 (h!71546 s!2326)))))

(declare-fun lt!2372390 () List!65220)

(assert (=> b!6389202 (= lt!2372373 (Context!11383 lt!2372390))))

(assert (=> b!6389202 (= lt!2372390 (Cons!65096 lt!2372394 (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(assert (=> b!6389202 (= lt!2372394 (Star!16307 (reg!16636 (regOne!33126 r!7292))))))

(declare-fun b!6389203 () Bool)

(declare-fun e!3878036 () Bool)

(assert (=> b!6389203 (= e!3878036 e!3878051)))

(declare-fun res!2628156 () Bool)

(assert (=> b!6389203 (=> res!2628156 e!3878051)))

(assert (=> b!6389203 (= res!2628156 (not lt!2372367))))

(assert (=> b!6389203 e!3878043))

(declare-fun res!2628146 () Bool)

(assert (=> b!6389203 (=> (not res!2628146) (not e!3878043))))

(declare-fun lt!2372395 () Regex!16307)

(assert (=> b!6389203 (= res!2628146 (= (matchR!8490 lt!2372395 s!2326) (matchRSpec!3408 lt!2372395 s!2326)))))

(declare-fun lt!2372378 () Unit!158559)

(assert (=> b!6389203 (= lt!2372378 (mainMatchTheorem!3408 lt!2372395 s!2326))))

(declare-fun b!6389204 () Bool)

(declare-fun tp!1776997 () Bool)

(declare-fun tp!1777002 () Bool)

(assert (=> b!6389204 (= e!3878042 (and tp!1776997 tp!1777002))))

(declare-fun b!6389205 () Bool)

(declare-fun e!3878050 () Bool)

(declare-fun tp!1776995 () Bool)

(assert (=> b!6389205 (= e!3878052 (and (inv!84014 (h!71545 zl!343)) e!3878050 tp!1776995))))

(declare-fun setIsEmpty!43630 () Bool)

(assert (=> setIsEmpty!43630 setRes!43630))

(declare-fun b!6389206 () Bool)

(declare-fun res!2628161 () Bool)

(declare-fun e!3878038 () Bool)

(assert (=> b!6389206 (=> res!2628161 e!3878038)))

(declare-fun isEmpty!37236 (List!65220) Bool)

(assert (=> b!6389206 (= res!2628161 (isEmpty!37236 (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun b!6389207 () Bool)

(declare-fun res!2628153 () Bool)

(assert (=> b!6389207 (=> res!2628153 e!3878048)))

(declare-fun isEmpty!37237 (List!65221) Bool)

(assert (=> b!6389207 (= res!2628153 (not (isEmpty!37237 (t!378827 zl!343))))))

(assert (=> b!6389208 (= e!3878048 e!3878038)))

(declare-fun res!2628152 () Bool)

(assert (=> b!6389208 (=> res!2628152 e!3878038)))

(declare-fun lt!2372364 () Bool)

(assert (=> b!6389208 (= res!2628152 (or (not (= lt!2372367 lt!2372364)) ((_ is Nil!65098) s!2326)))))

(assert (=> b!6389208 (= (Exists!3377 lambda!352737) (Exists!3377 lambda!352738))))

(declare-fun lt!2372382 () Unit!158559)

(assert (=> b!6389208 (= lt!2372382 (lemmaExistCutMatchRandMatchRSpecEquivalent!1914 (regOne!33126 r!7292) (regTwo!33126 r!7292) s!2326))))

(assert (=> b!6389208 (= lt!2372364 (Exists!3377 lambda!352737))))

(assert (=> b!6389208 (= lt!2372364 (isDefined!12901 (findConcatSeparation!2612 (regOne!33126 r!7292) (regTwo!33126 r!7292) Nil!65098 s!2326 s!2326)))))

(declare-fun lt!2372386 () Unit!158559)

(assert (=> b!6389208 (= lt!2372386 (lemmaFindConcatSeparationEquivalentToExists!2376 (regOne!33126 r!7292) (regTwo!33126 r!7292) s!2326))))

(declare-fun b!6389209 () Bool)

(declare-fun res!2628169 () Bool)

(assert (=> b!6389209 (=> res!2628169 e!3878057)))

(assert (=> b!6389209 (= res!2628169 (not (= lt!2372370 r!7292)))))

(declare-fun b!6389210 () Bool)

(declare-fun tp!1777001 () Bool)

(assert (=> b!6389210 (= e!3878050 tp!1777001)))

(declare-fun b!6389211 () Bool)

(declare-fun e!3878056 () Bool)

(declare-fun e!3878047 () Bool)

(assert (=> b!6389211 (= e!3878056 e!3878047)))

(declare-fun res!2628165 () Bool)

(assert (=> b!6389211 (=> res!2628165 e!3878047)))

(declare-fun lt!2372365 () Regex!16307)

(declare-fun regexDepth!334 (Regex!16307) Int)

(assert (=> b!6389211 (= res!2628165 (< (regexDepth!334 r!7292) (regexDepth!334 lt!2372365)))))

(declare-fun generalisedConcat!1904 (List!65220) Regex!16307)

(assert (=> b!6389211 (= lt!2372365 (generalisedConcat!1904 (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun b!6389212 () Bool)

(declare-fun res!2628147 () Bool)

(assert (=> b!6389212 (=> res!2628147 e!3878036)))

(declare-fun lt!2372379 () Regex!16307)

(assert (=> b!6389212 (= res!2628147 (not (= (unfocusZipper!2049 (Cons!65097 lt!2372373 Nil!65097)) lt!2372379)))))

(declare-fun b!6389213 () Bool)

(declare-fun res!2628173 () Bool)

(assert (=> b!6389213 (=> res!2628173 e!3878047)))

(declare-fun lt!2372361 () Context!11382)

(declare-fun zipperDepth!376 (List!65221) Int)

(assert (=> b!6389213 (= res!2628173 (< (zipperDepth!376 zl!343) (zipperDepth!376 (Cons!65097 lt!2372361 Nil!65097))))))

(declare-fun b!6389214 () Bool)

(declare-fun e!3878039 () Unit!158559)

(declare-fun Unit!158561 () Unit!158559)

(assert (=> b!6389214 (= e!3878039 Unit!158561)))

(declare-fun b!6389215 () Bool)

(declare-fun e!3878058 () Bool)

(assert (=> b!6389215 (= e!3878058 e!3878036)))

(declare-fun res!2628171 () Bool)

(assert (=> b!6389215 (=> res!2628171 e!3878036)))

(declare-fun lt!2372383 () Context!11382)

(assert (=> b!6389215 (= res!2628171 (not (= (unfocusZipper!2049 (Cons!65097 lt!2372383 Nil!65097)) (reg!16636 (regOne!33126 r!7292)))))))

(declare-fun lt!2372393 () (InoxSet Context!11382))

(declare-fun lambda!352739 () Int)

(declare-fun flatMap!1812 ((InoxSet Context!11382) Int) (InoxSet Context!11382))

(declare-fun derivationStepZipperUp!1481 (Context!11382 C!32884) (InoxSet Context!11382))

(assert (=> b!6389215 (= (flatMap!1812 lt!2372393 lambda!352739) (derivationStepZipperUp!1481 lt!2372373 (h!71546 s!2326)))))

(declare-fun lt!2372374 () Unit!158559)

(declare-fun lemmaFlatMapOnSingletonSet!1338 ((InoxSet Context!11382) Context!11382 Int) Unit!158559)

(assert (=> b!6389215 (= lt!2372374 (lemmaFlatMapOnSingletonSet!1338 lt!2372393 lt!2372373 lambda!352739))))

(declare-fun lt!2372387 () (InoxSet Context!11382))

(assert (=> b!6389215 (= (flatMap!1812 lt!2372387 lambda!352739) (derivationStepZipperUp!1481 lt!2372383 (h!71546 s!2326)))))

(declare-fun lt!2372371 () Unit!158559)

(assert (=> b!6389215 (= lt!2372371 (lemmaFlatMapOnSingletonSet!1338 lt!2372387 lt!2372383 lambda!352739))))

(declare-fun lt!2372399 () (InoxSet Context!11382))

(assert (=> b!6389215 (= lt!2372399 (derivationStepZipperUp!1481 lt!2372373 (h!71546 s!2326)))))

(declare-fun lt!2372362 () (InoxSet Context!11382))

(assert (=> b!6389215 (= lt!2372362 (derivationStepZipperUp!1481 lt!2372383 (h!71546 s!2326)))))

(assert (=> b!6389215 (= lt!2372393 (store ((as const (Array Context!11382 Bool)) false) lt!2372373 true))))

(assert (=> b!6389215 (= lt!2372387 (store ((as const (Array Context!11382 Bool)) false) lt!2372383 true))))

(assert (=> b!6389215 (= lt!2372383 (Context!11383 (Cons!65096 (reg!16636 (regOne!33126 r!7292)) Nil!65096)))))

(declare-fun b!6389216 () Bool)

(declare-fun res!2628164 () Bool)

(assert (=> b!6389216 (=> res!2628164 e!3878048)))

(assert (=> b!6389216 (= res!2628164 (not (= r!7292 (generalisedConcat!1904 (exprs!6191 (h!71545 zl!343))))))))

(assert (=> b!6389217 (= e!3878038 e!3878054)))

(declare-fun res!2628159 () Bool)

(assert (=> b!6389217 (=> res!2628159 e!3878054)))

(assert (=> b!6389217 (= res!2628159 (or (and ((_ is ElementMatch!16307) (regOne!33126 r!7292)) (= (c!1164602 (regOne!33126 r!7292)) (h!71546 s!2326))) ((_ is Union!16307) (regOne!33126 r!7292))))))

(declare-fun lt!2372381 () Unit!158559)

(assert (=> b!6389217 (= lt!2372381 e!3878039)))

(declare-fun c!1164601 () Bool)

(assert (=> b!6389217 (= c!1164601 (nullable!6300 (h!71544 (exprs!6191 (h!71545 zl!343)))))))

(assert (=> b!6389217 (= (flatMap!1812 z!1189 lambda!352739) (derivationStepZipperUp!1481 (h!71545 zl!343) (h!71546 s!2326)))))

(declare-fun lt!2372385 () Unit!158559)

(assert (=> b!6389217 (= lt!2372385 (lemmaFlatMapOnSingletonSet!1338 z!1189 (h!71545 zl!343) lambda!352739))))

(declare-fun lt!2372366 () (InoxSet Context!11382))

(assert (=> b!6389217 (= lt!2372366 (derivationStepZipperUp!1481 lt!2372361 (h!71546 s!2326)))))

(assert (=> b!6389217 (= lt!2372391 (derivationStepZipperDown!1555 (h!71544 (exprs!6191 (h!71545 zl!343))) lt!2372361 (h!71546 s!2326)))))

(assert (=> b!6389217 (= lt!2372361 (Context!11383 (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun lt!2372377 () (InoxSet Context!11382))

(assert (=> b!6389217 (= lt!2372377 (derivationStepZipperUp!1481 (Context!11383 (Cons!65096 (h!71544 (exprs!6191 (h!71545 zl!343))) (t!378826 (exprs!6191 (h!71545 zl!343))))) (h!71546 s!2326)))))

(declare-fun b!6389218 () Bool)

(assert (=> b!6389218 (= e!3878047 (validRegex!8043 lt!2372365))))

(declare-fun b!6389219 () Bool)

(declare-fun res!2628160 () Bool)

(assert (=> b!6389219 (=> res!2628160 e!3878048)))

(assert (=> b!6389219 (= res!2628160 (or ((_ is EmptyExpr!16307) r!7292) ((_ is EmptyLang!16307) r!7292) ((_ is ElementMatch!16307) r!7292) ((_ is Union!16307) r!7292) (not ((_ is Concat!25152) r!7292))))))

(declare-fun b!6389220 () Bool)

(declare-fun tp!1776993 () Bool)

(declare-fun tp!1776999 () Bool)

(assert (=> b!6389220 (= e!3878042 (and tp!1776993 tp!1776999))))

(declare-fun b!6389221 () Bool)

(declare-fun res!2628163 () Bool)

(assert (=> b!6389221 (=> res!2628163 e!3878041)))

(assert (=> b!6389221 (= res!2628163 (not (matchR!8490 (regTwo!33126 r!7292) (_2!36589 lt!2372384))))))

(declare-fun b!6389222 () Bool)

(declare-fun res!2628166 () Bool)

(assert (=> b!6389222 (=> res!2628166 e!3878041)))

(declare-fun isEmpty!37238 (List!65222) Bool)

(assert (=> b!6389222 (= res!2628166 (not (isEmpty!37238 (_1!36589 lt!2372384))))))

(declare-fun b!6389223 () Bool)

(declare-fun tp_is_empty!41867 () Bool)

(declare-fun tp!1776998 () Bool)

(assert (=> b!6389223 (= e!3878046 (and tp_is_empty!41867 tp!1776998))))

(declare-fun b!6389224 () Bool)

(declare-fun res!2628162 () Bool)

(assert (=> b!6389224 (=> res!2628162 e!3878054)))

(assert (=> b!6389224 (= res!2628162 (or ((_ is Concat!25152) (regOne!33126 r!7292)) (not ((_ is Star!16307) (regOne!33126 r!7292)))))))

(declare-fun b!6389225 () Bool)

(assert (=> b!6389225 (= e!3878040 e!3878057)))

(declare-fun res!2628168 () Bool)

(assert (=> b!6389225 (=> res!2628168 e!3878057)))

(assert (=> b!6389225 (= res!2628168 (not (= lt!2372368 lt!2372363)))))

(declare-fun lt!2372397 () Context!11382)

(assert (=> b!6389225 (= (flatMap!1812 lt!2372375 lambda!352739) (derivationStepZipperUp!1481 lt!2372397 (h!71546 s!2326)))))

(declare-fun lt!2372372 () Unit!158559)

(assert (=> b!6389225 (= lt!2372372 (lemmaFlatMapOnSingletonSet!1338 lt!2372375 lt!2372397 lambda!352739))))

(declare-fun lt!2372388 () (InoxSet Context!11382))

(assert (=> b!6389225 (= lt!2372388 (derivationStepZipperUp!1481 lt!2372397 (h!71546 s!2326)))))

(declare-fun derivationStepZipper!2273 ((InoxSet Context!11382) C!32884) (InoxSet Context!11382))

(assert (=> b!6389225 (= lt!2372368 (derivationStepZipper!2273 lt!2372375 (h!71546 s!2326)))))

(assert (=> b!6389225 (= lt!2372375 (store ((as const (Array Context!11382 Bool)) false) lt!2372397 true))))

(assert (=> b!6389225 (= lt!2372397 (Context!11383 (Cons!65096 (reg!16636 (regOne!33126 r!7292)) lt!2372390)))))

(declare-fun b!6389226 () Bool)

(declare-fun e!3878053 () Bool)

(assert (=> b!6389226 (= e!3878057 e!3878053)))

(declare-fun res!2628167 () Bool)

(assert (=> b!6389226 (=> res!2628167 e!3878053)))

(assert (=> b!6389226 (= res!2628167 (not (= r!7292 lt!2372379)))))

(assert (=> b!6389226 (= lt!2372379 (Concat!25152 lt!2372394 (regTwo!33126 r!7292)))))

(declare-fun b!6389227 () Bool)

(assert (=> b!6389227 (= e!3878042 tp_is_empty!41867)))

(declare-fun b!6389228 () Bool)

(declare-fun res!2628157 () Bool)

(assert (=> b!6389228 (=> res!2628157 e!3878054)))

(assert (=> b!6389228 (= res!2628157 e!3878049)))

(declare-fun res!2628148 () Bool)

(assert (=> b!6389228 (=> (not res!2628148) (not e!3878049))))

(assert (=> b!6389228 (= res!2628148 ((_ is Concat!25152) (regOne!33126 r!7292)))))

(declare-fun b!6389229 () Bool)

(declare-fun Unit!158562 () Unit!158559)

(assert (=> b!6389229 (= e!3878039 Unit!158562)))

(declare-fun lt!2372369 () Unit!158559)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1138 ((InoxSet Context!11382) (InoxSet Context!11382) List!65222) Unit!158559)

(assert (=> b!6389229 (= lt!2372369 (lemmaZipperConcatMatchesSameAsBothZippers!1138 lt!2372391 lt!2372366 (t!378828 s!2326)))))

(declare-fun res!2628176 () Bool)

(assert (=> b!6389229 (= res!2628176 (matchZipper!2319 lt!2372391 (t!378828 s!2326)))))

(declare-fun e!3878044 () Bool)

(assert (=> b!6389229 (=> res!2628176 e!3878044)))

(assert (=> b!6389229 (= (matchZipper!2319 ((_ map or) lt!2372391 lt!2372366) (t!378828 s!2326)) e!3878044)))

(declare-fun b!6389230 () Bool)

(assert (=> b!6389230 (= e!3878041 e!3878056)))

(declare-fun res!2628175 () Bool)

(assert (=> b!6389230 (=> res!2628175 e!3878056)))

(declare-fun lt!2372400 () (InoxSet Context!11382))

(assert (=> b!6389230 (= res!2628175 (not (= lt!2372366 (derivationStepZipper!2273 lt!2372400 (h!71546 s!2326)))))))

(assert (=> b!6389230 (= (flatMap!1812 lt!2372400 lambda!352739) (derivationStepZipperUp!1481 lt!2372361 (h!71546 s!2326)))))

(declare-fun lt!2372389 () Unit!158559)

(assert (=> b!6389230 (= lt!2372389 (lemmaFlatMapOnSingletonSet!1338 lt!2372400 lt!2372361 lambda!352739))))

(assert (=> b!6389230 (= lt!2372400 (store ((as const (Array Context!11382 Bool)) false) lt!2372361 true))))

(declare-fun b!6389231 () Bool)

(declare-fun res!2628149 () Bool)

(assert (=> b!6389231 (=> res!2628149 e!3878041)))

(assert (=> b!6389231 (= res!2628149 (not (matchR!8490 lt!2372394 (_1!36589 lt!2372384))))))

(declare-fun b!6389232 () Bool)

(declare-fun res!2628151 () Bool)

(assert (=> b!6389232 (=> res!2628151 e!3878048)))

(declare-fun generalisedUnion!2151 (List!65220) Regex!16307)

(declare-fun unfocusZipperList!1728 (List!65221) List!65220)

(assert (=> b!6389232 (= res!2628151 (not (= r!7292 (generalisedUnion!2151 (unfocusZipperList!1728 zl!343)))))))

(declare-fun b!6389233 () Bool)

(assert (=> b!6389233 (= e!3878044 (matchZipper!2319 lt!2372366 (t!378828 s!2326)))))

(declare-fun b!6389234 () Bool)

(assert (=> b!6389234 (= e!3878053 e!3878058)))

(declare-fun res!2628154 () Bool)

(assert (=> b!6389234 (=> res!2628154 e!3878058)))

(assert (=> b!6389234 (= res!2628154 (not (= (unfocusZipper!2049 (Cons!65097 lt!2372397 Nil!65097)) lt!2372395)))))

(assert (=> b!6389234 (= lt!2372395 (Concat!25152 (reg!16636 (regOne!33126 r!7292)) lt!2372379))))

(declare-fun b!6389235 () Bool)

(declare-fun res!2628177 () Bool)

(assert (=> b!6389235 (=> res!2628177 e!3878048)))

(assert (=> b!6389235 (= res!2628177 (not ((_ is Cons!65096) (exprs!6191 (h!71545 zl!343)))))))

(assert (= (and start!632870 res!2628158) b!6389193))

(assert (= (and b!6389193 res!2628155) b!6389197))

(assert (= (and b!6389197 res!2628172) b!6389195))

(assert (= (and b!6389195 (not res!2628150)) b!6389207))

(assert (= (and b!6389207 (not res!2628153)) b!6389216))

(assert (= (and b!6389216 (not res!2628164)) b!6389235))

(assert (= (and b!6389235 (not res!2628177)) b!6389232))

(assert (= (and b!6389232 (not res!2628151)) b!6389219))

(assert (= (and b!6389219 (not res!2628160)) b!6389208))

(assert (= (and b!6389208 (not res!2628152)) b!6389206))

(assert (= (and b!6389206 (not res!2628161)) b!6389217))

(assert (= (and b!6389217 c!1164601) b!6389229))

(assert (= (and b!6389217 (not c!1164601)) b!6389214))

(assert (= (and b!6389229 (not res!2628176)) b!6389233))

(assert (= (and b!6389217 (not res!2628159)) b!6389228))

(assert (= (and b!6389228 res!2628148) b!6389196))

(assert (= (and b!6389228 (not res!2628157)) b!6389224))

(assert (= (and b!6389224 (not res!2628162)) b!6389202))

(assert (= (and b!6389202 (not res!2628174)) b!6389225))

(assert (= (and b!6389225 (not res!2628168)) b!6389198))

(assert (= (and b!6389198 (not res!2628170)) b!6389209))

(assert (= (and b!6389209 (not res!2628169)) b!6389226))

(assert (= (and b!6389226 (not res!2628167)) b!6389234))

(assert (= (and b!6389234 (not res!2628154)) b!6389215))

(assert (= (and b!6389215 (not res!2628171)) b!6389212))

(assert (= (and b!6389212 (not res!2628147)) b!6389203))

(assert (= (and b!6389203 res!2628146) b!6389194))

(assert (= (and b!6389203 (not res!2628156)) b!6389199))

(assert (= (and b!6389199 (not res!2628178)) b!6389231))

(assert (= (and b!6389231 (not res!2628149)) b!6389221))

(assert (= (and b!6389221 (not res!2628163)) b!6389222))

(assert (= (and b!6389222 (not res!2628166)) b!6389230))

(assert (= (and b!6389230 (not res!2628175)) b!6389211))

(assert (= (and b!6389211 (not res!2628165)) b!6389213))

(assert (= (and b!6389213 (not res!2628173)) b!6389218))

(assert (= (and start!632870 ((_ is ElementMatch!16307) r!7292)) b!6389227))

(assert (= (and start!632870 ((_ is Concat!25152) r!7292)) b!6389220))

(assert (= (and start!632870 ((_ is Star!16307) r!7292)) b!6389200))

(assert (= (and start!632870 ((_ is Union!16307) r!7292)) b!6389204))

(assert (= (and start!632870 condSetEmpty!43630) setIsEmpty!43630))

(assert (= (and start!632870 (not condSetEmpty!43630)) setNonEmpty!43630))

(assert (= setNonEmpty!43630 b!6389201))

(assert (= b!6389205 b!6389210))

(assert (= (and start!632870 ((_ is Cons!65097) zl!343)) b!6389205))

(assert (= (and start!632870 ((_ is Cons!65098) s!2326)) b!6389223))

(declare-fun m!7188180 () Bool)

(assert (=> b!6389213 m!7188180))

(declare-fun m!7188182 () Bool)

(assert (=> b!6389213 m!7188182))

(declare-fun m!7188184 () Bool)

(assert (=> b!6389208 m!7188184))

(declare-fun m!7188186 () Bool)

(assert (=> b!6389208 m!7188186))

(declare-fun m!7188188 () Bool)

(assert (=> b!6389208 m!7188188))

(assert (=> b!6389208 m!7188188))

(declare-fun m!7188190 () Bool)

(assert (=> b!6389208 m!7188190))

(declare-fun m!7188192 () Bool)

(assert (=> b!6389208 m!7188192))

(assert (=> b!6389208 m!7188184))

(declare-fun m!7188194 () Bool)

(assert (=> b!6389208 m!7188194))

(declare-fun m!7188196 () Bool)

(assert (=> b!6389195 m!7188196))

(declare-fun m!7188198 () Bool)

(assert (=> b!6389195 m!7188198))

(declare-fun m!7188200 () Bool)

(assert (=> b!6389195 m!7188200))

(declare-fun m!7188202 () Bool)

(assert (=> b!6389216 m!7188202))

(declare-fun m!7188204 () Bool)

(assert (=> b!6389215 m!7188204))

(declare-fun m!7188206 () Bool)

(assert (=> b!6389215 m!7188206))

(declare-fun m!7188208 () Bool)

(assert (=> b!6389215 m!7188208))

(declare-fun m!7188210 () Bool)

(assert (=> b!6389215 m!7188210))

(declare-fun m!7188212 () Bool)

(assert (=> b!6389215 m!7188212))

(declare-fun m!7188214 () Bool)

(assert (=> b!6389215 m!7188214))

(declare-fun m!7188216 () Bool)

(assert (=> b!6389215 m!7188216))

(declare-fun m!7188218 () Bool)

(assert (=> b!6389215 m!7188218))

(declare-fun m!7188220 () Bool)

(assert (=> b!6389215 m!7188220))

(declare-fun m!7188222 () Bool)

(assert (=> b!6389196 m!7188222))

(declare-fun m!7188224 () Bool)

(assert (=> b!6389230 m!7188224))

(declare-fun m!7188226 () Bool)

(assert (=> b!6389230 m!7188226))

(declare-fun m!7188228 () Bool)

(assert (=> b!6389230 m!7188228))

(declare-fun m!7188230 () Bool)

(assert (=> b!6389230 m!7188230))

(declare-fun m!7188232 () Bool)

(assert (=> b!6389230 m!7188232))

(declare-fun m!7188234 () Bool)

(assert (=> b!6389221 m!7188234))

(declare-fun m!7188236 () Bool)

(assert (=> b!6389206 m!7188236))

(declare-fun m!7188238 () Bool)

(assert (=> b!6389234 m!7188238))

(declare-fun m!7188240 () Bool)

(assert (=> b!6389231 m!7188240))

(declare-fun m!7188242 () Bool)

(assert (=> setNonEmpty!43630 m!7188242))

(declare-fun m!7188244 () Bool)

(assert (=> b!6389232 m!7188244))

(assert (=> b!6389232 m!7188244))

(declare-fun m!7188246 () Bool)

(assert (=> b!6389232 m!7188246))

(declare-fun m!7188248 () Bool)

(assert (=> b!6389202 m!7188248))

(declare-fun m!7188250 () Bool)

(assert (=> b!6389233 m!7188250))

(declare-fun m!7188252 () Bool)

(assert (=> b!6389205 m!7188252))

(declare-fun m!7188254 () Bool)

(assert (=> b!6389199 m!7188254))

(declare-fun m!7188256 () Bool)

(assert (=> b!6389199 m!7188256))

(declare-fun m!7188258 () Bool)

(assert (=> b!6389199 m!7188258))

(declare-fun m!7188260 () Bool)

(assert (=> b!6389199 m!7188260))

(declare-fun m!7188262 () Bool)

(assert (=> b!6389199 m!7188262))

(declare-fun m!7188264 () Bool)

(assert (=> b!6389199 m!7188264))

(declare-fun m!7188266 () Bool)

(assert (=> b!6389199 m!7188266))

(assert (=> b!6389199 m!7188262))

(declare-fun m!7188268 () Bool)

(assert (=> b!6389199 m!7188268))

(declare-fun m!7188270 () Bool)

(assert (=> b!6389212 m!7188270))

(declare-fun m!7188272 () Bool)

(assert (=> b!6389222 m!7188272))

(declare-fun m!7188274 () Bool)

(assert (=> b!6389197 m!7188274))

(declare-fun m!7188276 () Bool)

(assert (=> b!6389225 m!7188276))

(declare-fun m!7188278 () Bool)

(assert (=> b!6389225 m!7188278))

(declare-fun m!7188280 () Bool)

(assert (=> b!6389225 m!7188280))

(declare-fun m!7188282 () Bool)

(assert (=> b!6389225 m!7188282))

(declare-fun m!7188284 () Bool)

(assert (=> b!6389225 m!7188284))

(declare-fun m!7188286 () Bool)

(assert (=> b!6389207 m!7188286))

(declare-fun m!7188288 () Bool)

(assert (=> b!6389203 m!7188288))

(declare-fun m!7188290 () Bool)

(assert (=> b!6389203 m!7188290))

(declare-fun m!7188292 () Bool)

(assert (=> b!6389203 m!7188292))

(declare-fun m!7188294 () Bool)

(assert (=> b!6389211 m!7188294))

(declare-fun m!7188296 () Bool)

(assert (=> b!6389211 m!7188296))

(declare-fun m!7188298 () Bool)

(assert (=> b!6389211 m!7188298))

(declare-fun m!7188300 () Bool)

(assert (=> b!6389198 m!7188300))

(declare-fun m!7188302 () Bool)

(assert (=> b!6389198 m!7188302))

(declare-fun m!7188304 () Bool)

(assert (=> b!6389229 m!7188304))

(declare-fun m!7188306 () Bool)

(assert (=> b!6389229 m!7188306))

(declare-fun m!7188308 () Bool)

(assert (=> b!6389229 m!7188308))

(declare-fun m!7188310 () Bool)

(assert (=> start!632870 m!7188310))

(declare-fun m!7188312 () Bool)

(assert (=> b!6389193 m!7188312))

(declare-fun m!7188314 () Bool)

(assert (=> b!6389218 m!7188314))

(declare-fun m!7188316 () Bool)

(assert (=> b!6389217 m!7188316))

(declare-fun m!7188318 () Bool)

(assert (=> b!6389217 m!7188318))

(declare-fun m!7188320 () Bool)

(assert (=> b!6389217 m!7188320))

(assert (=> b!6389217 m!7188230))

(declare-fun m!7188322 () Bool)

(assert (=> b!6389217 m!7188322))

(declare-fun m!7188324 () Bool)

(assert (=> b!6389217 m!7188324))

(declare-fun m!7188326 () Bool)

(assert (=> b!6389217 m!7188326))

(check-sat (not b!6389234) (not b!6389230) (not b!6389229) (not b!6389196) (not b!6389204) (not b!6389217) (not b!6389216) (not b!6389223) (not b!6389212) (not b!6389233) (not setNonEmpty!43630) (not b!6389220) (not b!6389205) (not b!6389208) (not b!6389206) (not start!632870) (not b!6389199) (not b!6389202) (not b!6389222) (not b!6389203) (not b!6389225) (not b!6389218) (not b!6389221) (not b!6389213) (not b!6389200) (not b!6389207) (not b!6389215) (not b!6389232) (not b!6389198) (not b!6389210) (not b!6389197) (not b!6389211) tp_is_empty!41867 (not b!6389201) (not b!6389195) (not b!6389231) (not b!6389193))
(check-sat)
(get-model)

(declare-fun d!2002791 () Bool)

(assert (=> d!2002791 (= (isEmpty!37236 (t!378826 (exprs!6191 (h!71545 zl!343)))) ((_ is Nil!65096) (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(assert (=> b!6389206 d!2002791))

(declare-fun d!2002793 () Bool)

(assert (=> d!2002793 (= (isEmpty!37237 (t!378827 zl!343)) ((_ is Nil!65097) (t!378827 zl!343)))))

(assert (=> b!6389207 d!2002793))

(declare-fun b!6389260 () Bool)

(declare-fun e!3878078 () Bool)

(declare-fun e!3878075 () Bool)

(assert (=> b!6389260 (= e!3878078 e!3878075)))

(declare-fun c!1164608 () Bool)

(assert (=> b!6389260 (= c!1164608 ((_ is Star!16307) r!7292))))

(declare-fun b!6389261 () Bool)

(declare-fun e!3878073 () Bool)

(declare-fun call!546275 () Bool)

(assert (=> b!6389261 (= e!3878073 call!546275)))

(declare-fun b!6389262 () Bool)

(declare-fun e!3878076 () Bool)

(declare-fun call!546273 () Bool)

(assert (=> b!6389262 (= e!3878076 call!546273)))

(declare-fun b!6389264 () Bool)

(declare-fun e!3878079 () Bool)

(assert (=> b!6389264 (= e!3878075 e!3878079)))

(declare-fun c!1164607 () Bool)

(assert (=> b!6389264 (= c!1164607 ((_ is Union!16307) r!7292))))

(declare-fun bm!546268 () Bool)

(assert (=> bm!546268 (= call!546273 (validRegex!8043 (ite c!1164608 (reg!16636 r!7292) (ite c!1164607 (regTwo!33127 r!7292) (regTwo!33126 r!7292)))))))

(declare-fun b!6389265 () Bool)

(assert (=> b!6389265 (= e!3878075 e!3878076)))

(declare-fun res!2628191 () Bool)

(assert (=> b!6389265 (= res!2628191 (not (nullable!6300 (reg!16636 r!7292))))))

(assert (=> b!6389265 (=> (not res!2628191) (not e!3878076))))

(declare-fun b!6389266 () Bool)

(declare-fun res!2628190 () Bool)

(declare-fun e!3878074 () Bool)

(assert (=> b!6389266 (=> res!2628190 e!3878074)))

(assert (=> b!6389266 (= res!2628190 (not ((_ is Concat!25152) r!7292)))))

(assert (=> b!6389266 (= e!3878079 e!3878074)))

(declare-fun bm!546269 () Bool)

(assert (=> bm!546269 (= call!546275 call!546273)))

(declare-fun b!6389267 () Bool)

(declare-fun res!2628193 () Bool)

(declare-fun e!3878077 () Bool)

(assert (=> b!6389267 (=> (not res!2628193) (not e!3878077))))

(declare-fun call!546274 () Bool)

(assert (=> b!6389267 (= res!2628193 call!546274)))

(assert (=> b!6389267 (= e!3878079 e!3878077)))

(declare-fun bm!546270 () Bool)

(assert (=> bm!546270 (= call!546274 (validRegex!8043 (ite c!1164607 (regOne!33127 r!7292) (regOne!33126 r!7292))))))

(declare-fun b!6389268 () Bool)

(assert (=> b!6389268 (= e!3878077 call!546275)))

(declare-fun b!6389263 () Bool)

(assert (=> b!6389263 (= e!3878074 e!3878073)))

(declare-fun res!2628192 () Bool)

(assert (=> b!6389263 (=> (not res!2628192) (not e!3878073))))

(assert (=> b!6389263 (= res!2628192 call!546274)))

(declare-fun d!2002795 () Bool)

(declare-fun res!2628189 () Bool)

(assert (=> d!2002795 (=> res!2628189 e!3878078)))

(assert (=> d!2002795 (= res!2628189 ((_ is ElementMatch!16307) r!7292))))

(assert (=> d!2002795 (= (validRegex!8043 r!7292) e!3878078)))

(assert (= (and d!2002795 (not res!2628189)) b!6389260))

(assert (= (and b!6389260 c!1164608) b!6389265))

(assert (= (and b!6389260 (not c!1164608)) b!6389264))

(assert (= (and b!6389265 res!2628191) b!6389262))

(assert (= (and b!6389264 c!1164607) b!6389267))

(assert (= (and b!6389264 (not c!1164607)) b!6389266))

(assert (= (and b!6389267 res!2628193) b!6389268))

(assert (= (and b!6389266 (not res!2628190)) b!6389263))

(assert (= (and b!6389263 res!2628192) b!6389261))

(assert (= (or b!6389268 b!6389261) bm!546269))

(assert (= (or b!6389267 b!6389263) bm!546270))

(assert (= (or b!6389262 bm!546269) bm!546268))

(declare-fun m!7188328 () Bool)

(assert (=> bm!546268 m!7188328))

(declare-fun m!7188330 () Bool)

(assert (=> b!6389265 m!7188330))

(declare-fun m!7188332 () Bool)

(assert (=> bm!546270 m!7188332))

(assert (=> start!632870 d!2002795))

(declare-fun bs!1598910 () Bool)

(declare-fun d!2002797 () Bool)

(assert (= bs!1598910 (and d!2002797 b!6389217)))

(declare-fun lambda!352744 () Int)

(assert (=> bs!1598910 (= lambda!352744 lambda!352739)))

(assert (=> d!2002797 true))

(assert (=> d!2002797 (= (derivationStepZipper!2273 lt!2372400 (h!71546 s!2326)) (flatMap!1812 lt!2372400 lambda!352744))))

(declare-fun bs!1598911 () Bool)

(assert (= bs!1598911 d!2002797))

(declare-fun m!7188334 () Bool)

(assert (=> bs!1598911 m!7188334))

(assert (=> b!6389230 d!2002797))

(declare-fun d!2002799 () Bool)

(declare-fun choose!47545 ((InoxSet Context!11382) Int) (InoxSet Context!11382))

(assert (=> d!2002799 (= (flatMap!1812 lt!2372400 lambda!352739) (choose!47545 lt!2372400 lambda!352739))))

(declare-fun bs!1598912 () Bool)

(assert (= bs!1598912 d!2002799))

(declare-fun m!7188336 () Bool)

(assert (=> bs!1598912 m!7188336))

(assert (=> b!6389230 d!2002799))

(declare-fun b!6389281 () Bool)

(declare-fun e!3878086 () (InoxSet Context!11382))

(declare-fun call!546278 () (InoxSet Context!11382))

(assert (=> b!6389281 (= e!3878086 call!546278)))

(declare-fun b!6389282 () Bool)

(declare-fun e!3878088 () Bool)

(assert (=> b!6389282 (= e!3878088 (nullable!6300 (h!71544 (exprs!6191 lt!2372361))))))

(declare-fun b!6389283 () Bool)

(assert (=> b!6389283 (= e!3878086 ((as const (Array Context!11382 Bool)) false))))

(declare-fun b!6389284 () Bool)

(declare-fun e!3878087 () (InoxSet Context!11382))

(assert (=> b!6389284 (= e!3878087 ((_ map or) call!546278 (derivationStepZipperUp!1481 (Context!11383 (t!378826 (exprs!6191 lt!2372361))) (h!71546 s!2326))))))

(declare-fun bm!546273 () Bool)

(assert (=> bm!546273 (= call!546278 (derivationStepZipperDown!1555 (h!71544 (exprs!6191 lt!2372361)) (Context!11383 (t!378826 (exprs!6191 lt!2372361))) (h!71546 s!2326)))))

(declare-fun b!6389285 () Bool)

(assert (=> b!6389285 (= e!3878087 e!3878086)))

(declare-fun c!1164615 () Bool)

(assert (=> b!6389285 (= c!1164615 ((_ is Cons!65096) (exprs!6191 lt!2372361)))))

(declare-fun d!2002801 () Bool)

(declare-fun c!1164616 () Bool)

(assert (=> d!2002801 (= c!1164616 e!3878088)))

(declare-fun res!2628196 () Bool)

(assert (=> d!2002801 (=> (not res!2628196) (not e!3878088))))

(assert (=> d!2002801 (= res!2628196 ((_ is Cons!65096) (exprs!6191 lt!2372361)))))

(assert (=> d!2002801 (= (derivationStepZipperUp!1481 lt!2372361 (h!71546 s!2326)) e!3878087)))

(assert (= (and d!2002801 res!2628196) b!6389282))

(assert (= (and d!2002801 c!1164616) b!6389284))

(assert (= (and d!2002801 (not c!1164616)) b!6389285))

(assert (= (and b!6389285 c!1164615) b!6389281))

(assert (= (and b!6389285 (not c!1164615)) b!6389283))

(assert (= (or b!6389284 b!6389281) bm!546273))

(declare-fun m!7188338 () Bool)

(assert (=> b!6389282 m!7188338))

(declare-fun m!7188340 () Bool)

(assert (=> b!6389284 m!7188340))

(declare-fun m!7188342 () Bool)

(assert (=> bm!546273 m!7188342))

(assert (=> b!6389230 d!2002801))

(declare-fun d!2002803 () Bool)

(declare-fun dynLambda!25826 (Int Context!11382) (InoxSet Context!11382))

(assert (=> d!2002803 (= (flatMap!1812 lt!2372400 lambda!352739) (dynLambda!25826 lambda!352739 lt!2372361))))

(declare-fun lt!2372403 () Unit!158559)

(declare-fun choose!47546 ((InoxSet Context!11382) Context!11382 Int) Unit!158559)

(assert (=> d!2002803 (= lt!2372403 (choose!47546 lt!2372400 lt!2372361 lambda!352739))))

(assert (=> d!2002803 (= lt!2372400 (store ((as const (Array Context!11382 Bool)) false) lt!2372361 true))))

(assert (=> d!2002803 (= (lemmaFlatMapOnSingletonSet!1338 lt!2372400 lt!2372361 lambda!352739) lt!2372403)))

(declare-fun b_lambda!242741 () Bool)

(assert (=> (not b_lambda!242741) (not d!2002803)))

(declare-fun bs!1598913 () Bool)

(assert (= bs!1598913 d!2002803))

(assert (=> bs!1598913 m!7188224))

(declare-fun m!7188344 () Bool)

(assert (=> bs!1598913 m!7188344))

(declare-fun m!7188346 () Bool)

(assert (=> bs!1598913 m!7188346))

(assert (=> bs!1598913 m!7188226))

(assert (=> b!6389230 d!2002803))

(declare-fun b!6389314 () Bool)

(declare-fun e!3878105 () Bool)

(declare-fun e!3878103 () Bool)

(assert (=> b!6389314 (= e!3878105 e!3878103)))

(declare-fun res!2628219 () Bool)

(assert (=> b!6389314 (=> res!2628219 e!3878103)))

(declare-fun call!546281 () Bool)

(assert (=> b!6389314 (= res!2628219 call!546281)))

(declare-fun b!6389315 () Bool)

(declare-fun e!3878109 () Bool)

(assert (=> b!6389315 (= e!3878109 e!3878105)))

(declare-fun res!2628215 () Bool)

(assert (=> b!6389315 (=> (not res!2628215) (not e!3878105))))

(declare-fun lt!2372406 () Bool)

(assert (=> b!6389315 (= res!2628215 (not lt!2372406))))

(declare-fun b!6389316 () Bool)

(declare-fun e!3878107 () Bool)

(declare-fun head!13104 (List!65222) C!32884)

(assert (=> b!6389316 (= e!3878107 (= (head!13104 (_1!36589 lt!2372384)) (c!1164602 lt!2372394)))))

(declare-fun b!6389317 () Bool)

(declare-fun e!3878106 () Bool)

(declare-fun derivativeStep!5011 (Regex!16307 C!32884) Regex!16307)

(declare-fun tail!12189 (List!65222) List!65222)

(assert (=> b!6389317 (= e!3878106 (matchR!8490 (derivativeStep!5011 lt!2372394 (head!13104 (_1!36589 lt!2372384))) (tail!12189 (_1!36589 lt!2372384))))))

(declare-fun b!6389318 () Bool)

(assert (=> b!6389318 (= e!3878103 (not (= (head!13104 (_1!36589 lt!2372384)) (c!1164602 lt!2372394))))))

(declare-fun bm!546276 () Bool)

(assert (=> bm!546276 (= call!546281 (isEmpty!37238 (_1!36589 lt!2372384)))))

(declare-fun b!6389319 () Bool)

(declare-fun e!3878104 () Bool)

(assert (=> b!6389319 (= e!3878104 (not lt!2372406))))

(declare-fun b!6389320 () Bool)

(declare-fun res!2628213 () Bool)

(assert (=> b!6389320 (=> (not res!2628213) (not e!3878107))))

(assert (=> b!6389320 (= res!2628213 (isEmpty!37238 (tail!12189 (_1!36589 lt!2372384))))))

(declare-fun b!6389321 () Bool)

(declare-fun res!2628218 () Bool)

(assert (=> b!6389321 (=> res!2628218 e!3878103)))

(assert (=> b!6389321 (= res!2628218 (not (isEmpty!37238 (tail!12189 (_1!36589 lt!2372384)))))))

(declare-fun b!6389322 () Bool)

(declare-fun e!3878108 () Bool)

(assert (=> b!6389322 (= e!3878108 e!3878104)))

(declare-fun c!1164623 () Bool)

(assert (=> b!6389322 (= c!1164623 ((_ is EmptyLang!16307) lt!2372394))))

(declare-fun b!6389323 () Bool)

(declare-fun res!2628217 () Bool)

(assert (=> b!6389323 (=> res!2628217 e!3878109)))

(assert (=> b!6389323 (= res!2628217 e!3878107)))

(declare-fun res!2628216 () Bool)

(assert (=> b!6389323 (=> (not res!2628216) (not e!3878107))))

(assert (=> b!6389323 (= res!2628216 lt!2372406)))

(declare-fun b!6389324 () Bool)

(assert (=> b!6389324 (= e!3878106 (nullable!6300 lt!2372394))))

(declare-fun d!2002805 () Bool)

(assert (=> d!2002805 e!3878108))

(declare-fun c!1164625 () Bool)

(assert (=> d!2002805 (= c!1164625 ((_ is EmptyExpr!16307) lt!2372394))))

(assert (=> d!2002805 (= lt!2372406 e!3878106)))

(declare-fun c!1164624 () Bool)

(assert (=> d!2002805 (= c!1164624 (isEmpty!37238 (_1!36589 lt!2372384)))))

(assert (=> d!2002805 (validRegex!8043 lt!2372394)))

(assert (=> d!2002805 (= (matchR!8490 lt!2372394 (_1!36589 lt!2372384)) lt!2372406)))

(declare-fun b!6389325 () Bool)

(declare-fun res!2628220 () Bool)

(assert (=> b!6389325 (=> (not res!2628220) (not e!3878107))))

(assert (=> b!6389325 (= res!2628220 (not call!546281))))

(declare-fun b!6389326 () Bool)

(declare-fun res!2628214 () Bool)

(assert (=> b!6389326 (=> res!2628214 e!3878109)))

(assert (=> b!6389326 (= res!2628214 (not ((_ is ElementMatch!16307) lt!2372394)))))

(assert (=> b!6389326 (= e!3878104 e!3878109)))

(declare-fun b!6389327 () Bool)

(assert (=> b!6389327 (= e!3878108 (= lt!2372406 call!546281))))

(assert (= (and d!2002805 c!1164624) b!6389324))

(assert (= (and d!2002805 (not c!1164624)) b!6389317))

(assert (= (and d!2002805 c!1164625) b!6389327))

(assert (= (and d!2002805 (not c!1164625)) b!6389322))

(assert (= (and b!6389322 c!1164623) b!6389319))

(assert (= (and b!6389322 (not c!1164623)) b!6389326))

(assert (= (and b!6389326 (not res!2628214)) b!6389323))

(assert (= (and b!6389323 res!2628216) b!6389325))

(assert (= (and b!6389325 res!2628220) b!6389320))

(assert (= (and b!6389320 res!2628213) b!6389316))

(assert (= (and b!6389323 (not res!2628217)) b!6389315))

(assert (= (and b!6389315 res!2628215) b!6389314))

(assert (= (and b!6389314 (not res!2628219)) b!6389321))

(assert (= (and b!6389321 (not res!2628218)) b!6389318))

(assert (= (or b!6389327 b!6389314 b!6389325) bm!546276))

(declare-fun m!7188348 () Bool)

(assert (=> b!6389316 m!7188348))

(assert (=> d!2002805 m!7188272))

(declare-fun m!7188350 () Bool)

(assert (=> d!2002805 m!7188350))

(declare-fun m!7188352 () Bool)

(assert (=> b!6389320 m!7188352))

(assert (=> b!6389320 m!7188352))

(declare-fun m!7188354 () Bool)

(assert (=> b!6389320 m!7188354))

(declare-fun m!7188356 () Bool)

(assert (=> b!6389324 m!7188356))

(assert (=> bm!546276 m!7188272))

(assert (=> b!6389317 m!7188348))

(assert (=> b!6389317 m!7188348))

(declare-fun m!7188358 () Bool)

(assert (=> b!6389317 m!7188358))

(assert (=> b!6389317 m!7188352))

(assert (=> b!6389317 m!7188358))

(assert (=> b!6389317 m!7188352))

(declare-fun m!7188360 () Bool)

(assert (=> b!6389317 m!7188360))

(assert (=> b!6389318 m!7188348))

(assert (=> b!6389321 m!7188352))

(assert (=> b!6389321 m!7188352))

(assert (=> b!6389321 m!7188354))

(assert (=> b!6389231 d!2002805))

(declare-fun e!3878112 () Bool)

(declare-fun d!2002807 () Bool)

(assert (=> d!2002807 (= (matchZipper!2319 ((_ map or) lt!2372391 lt!2372366) (t!378828 s!2326)) e!3878112)))

(declare-fun res!2628223 () Bool)

(assert (=> d!2002807 (=> res!2628223 e!3878112)))

(assert (=> d!2002807 (= res!2628223 (matchZipper!2319 lt!2372391 (t!378828 s!2326)))))

(declare-fun lt!2372409 () Unit!158559)

(declare-fun choose!47548 ((InoxSet Context!11382) (InoxSet Context!11382) List!65222) Unit!158559)

(assert (=> d!2002807 (= lt!2372409 (choose!47548 lt!2372391 lt!2372366 (t!378828 s!2326)))))

(assert (=> d!2002807 (= (lemmaZipperConcatMatchesSameAsBothZippers!1138 lt!2372391 lt!2372366 (t!378828 s!2326)) lt!2372409)))

(declare-fun b!6389330 () Bool)

(assert (=> b!6389330 (= e!3878112 (matchZipper!2319 lt!2372366 (t!378828 s!2326)))))

(assert (= (and d!2002807 (not res!2628223)) b!6389330))

(assert (=> d!2002807 m!7188308))

(assert (=> d!2002807 m!7188306))

(declare-fun m!7188362 () Bool)

(assert (=> d!2002807 m!7188362))

(assert (=> b!6389330 m!7188250))

(assert (=> b!6389229 d!2002807))

(declare-fun d!2002809 () Bool)

(declare-fun c!1164628 () Bool)

(assert (=> d!2002809 (= c!1164628 (isEmpty!37238 (t!378828 s!2326)))))

(declare-fun e!3878115 () Bool)

(assert (=> d!2002809 (= (matchZipper!2319 lt!2372391 (t!378828 s!2326)) e!3878115)))

(declare-fun b!6389335 () Bool)

(declare-fun nullableZipper!2071 ((InoxSet Context!11382)) Bool)

(assert (=> b!6389335 (= e!3878115 (nullableZipper!2071 lt!2372391))))

(declare-fun b!6389336 () Bool)

(assert (=> b!6389336 (= e!3878115 (matchZipper!2319 (derivationStepZipper!2273 lt!2372391 (head!13104 (t!378828 s!2326))) (tail!12189 (t!378828 s!2326))))))

(assert (= (and d!2002809 c!1164628) b!6389335))

(assert (= (and d!2002809 (not c!1164628)) b!6389336))

(declare-fun m!7188364 () Bool)

(assert (=> d!2002809 m!7188364))

(declare-fun m!7188366 () Bool)

(assert (=> b!6389335 m!7188366))

(declare-fun m!7188368 () Bool)

(assert (=> b!6389336 m!7188368))

(assert (=> b!6389336 m!7188368))

(declare-fun m!7188370 () Bool)

(assert (=> b!6389336 m!7188370))

(declare-fun m!7188372 () Bool)

(assert (=> b!6389336 m!7188372))

(assert (=> b!6389336 m!7188370))

(assert (=> b!6389336 m!7188372))

(declare-fun m!7188374 () Bool)

(assert (=> b!6389336 m!7188374))

(assert (=> b!6389229 d!2002809))

(declare-fun d!2002813 () Bool)

(declare-fun c!1164629 () Bool)

(assert (=> d!2002813 (= c!1164629 (isEmpty!37238 (t!378828 s!2326)))))

(declare-fun e!3878116 () Bool)

(assert (=> d!2002813 (= (matchZipper!2319 ((_ map or) lt!2372391 lt!2372366) (t!378828 s!2326)) e!3878116)))

(declare-fun b!6389337 () Bool)

(assert (=> b!6389337 (= e!3878116 (nullableZipper!2071 ((_ map or) lt!2372391 lt!2372366)))))

(declare-fun b!6389338 () Bool)

(assert (=> b!6389338 (= e!3878116 (matchZipper!2319 (derivationStepZipper!2273 ((_ map or) lt!2372391 lt!2372366) (head!13104 (t!378828 s!2326))) (tail!12189 (t!378828 s!2326))))))

(assert (= (and d!2002813 c!1164629) b!6389337))

(assert (= (and d!2002813 (not c!1164629)) b!6389338))

(assert (=> d!2002813 m!7188364))

(declare-fun m!7188376 () Bool)

(assert (=> b!6389337 m!7188376))

(assert (=> b!6389338 m!7188368))

(assert (=> b!6389338 m!7188368))

(declare-fun m!7188378 () Bool)

(assert (=> b!6389338 m!7188378))

(assert (=> b!6389338 m!7188372))

(assert (=> b!6389338 m!7188378))

(assert (=> b!6389338 m!7188372))

(declare-fun m!7188380 () Bool)

(assert (=> b!6389338 m!7188380))

(assert (=> b!6389229 d!2002813))

(declare-fun bs!1598914 () Bool)

(declare-fun d!2002815 () Bool)

(assert (= bs!1598914 (and d!2002815 b!6389208)))

(declare-fun lambda!352751 () Int)

(assert (=> bs!1598914 (= lambda!352751 lambda!352737)))

(assert (=> bs!1598914 (not (= lambda!352751 lambda!352738))))

(declare-fun bs!1598915 () Bool)

(assert (= bs!1598915 (and d!2002815 b!6389199)))

(assert (=> bs!1598915 (= (= (regOne!33126 r!7292) lt!2372394) (= lambda!352751 lambda!352740))))

(assert (=> bs!1598915 (not (= lambda!352751 lambda!352741))))

(assert (=> d!2002815 true))

(assert (=> d!2002815 true))

(assert (=> d!2002815 true))

(assert (=> d!2002815 (= (isDefined!12901 (findConcatSeparation!2612 (regOne!33126 r!7292) (regTwo!33126 r!7292) Nil!65098 s!2326 s!2326)) (Exists!3377 lambda!352751))))

(declare-fun lt!2372415 () Unit!158559)

(declare-fun choose!47550 (Regex!16307 Regex!16307 List!65222) Unit!158559)

(assert (=> d!2002815 (= lt!2372415 (choose!47550 (regOne!33126 r!7292) (regTwo!33126 r!7292) s!2326))))

(assert (=> d!2002815 (validRegex!8043 (regOne!33126 r!7292))))

(assert (=> d!2002815 (= (lemmaFindConcatSeparationEquivalentToExists!2376 (regOne!33126 r!7292) (regTwo!33126 r!7292) s!2326) lt!2372415)))

(declare-fun bs!1598916 () Bool)

(assert (= bs!1598916 d!2002815))

(assert (=> bs!1598916 m!7188184))

(assert (=> bs!1598916 m!7188186))

(declare-fun m!7188398 () Bool)

(assert (=> bs!1598916 m!7188398))

(assert (=> bs!1598916 m!7188184))

(declare-fun m!7188400 () Bool)

(assert (=> bs!1598916 m!7188400))

(declare-fun m!7188402 () Bool)

(assert (=> bs!1598916 m!7188402))

(assert (=> b!6389208 d!2002815))

(declare-fun b!6389480 () Bool)

(declare-fun e!3878196 () Bool)

(declare-fun lt!2372432 () Option!16198)

(assert (=> b!6389480 (= e!3878196 (= (++!14375 (_1!36589 (get!22544 lt!2372432)) (_2!36589 (get!22544 lt!2372432))) s!2326))))

(declare-fun b!6389481 () Bool)

(declare-fun e!3878198 () Option!16198)

(assert (=> b!6389481 (= e!3878198 (Some!16197 (tuple2!66573 Nil!65098 s!2326)))))

(declare-fun b!6389482 () Bool)

(declare-fun e!3878195 () Option!16198)

(assert (=> b!6389482 (= e!3878198 e!3878195)))

(declare-fun c!1164666 () Bool)

(assert (=> b!6389482 (= c!1164666 ((_ is Nil!65098) s!2326))))

(declare-fun d!2002819 () Bool)

(declare-fun e!3878194 () Bool)

(assert (=> d!2002819 e!3878194))

(declare-fun res!2628297 () Bool)

(assert (=> d!2002819 (=> res!2628297 e!3878194)))

(assert (=> d!2002819 (= res!2628297 e!3878196)))

(declare-fun res!2628295 () Bool)

(assert (=> d!2002819 (=> (not res!2628295) (not e!3878196))))

(assert (=> d!2002819 (= res!2628295 (isDefined!12901 lt!2372432))))

(assert (=> d!2002819 (= lt!2372432 e!3878198)))

(declare-fun c!1164667 () Bool)

(declare-fun e!3878197 () Bool)

(assert (=> d!2002819 (= c!1164667 e!3878197)))

(declare-fun res!2628298 () Bool)

(assert (=> d!2002819 (=> (not res!2628298) (not e!3878197))))

(assert (=> d!2002819 (= res!2628298 (matchR!8490 (regOne!33126 r!7292) Nil!65098))))

(assert (=> d!2002819 (validRegex!8043 (regOne!33126 r!7292))))

(assert (=> d!2002819 (= (findConcatSeparation!2612 (regOne!33126 r!7292) (regTwo!33126 r!7292) Nil!65098 s!2326 s!2326) lt!2372432)))

(declare-fun b!6389483 () Bool)

(assert (=> b!6389483 (= e!3878195 None!16197)))

(declare-fun b!6389484 () Bool)

(declare-fun res!2628299 () Bool)

(assert (=> b!6389484 (=> (not res!2628299) (not e!3878196))))

(assert (=> b!6389484 (= res!2628299 (matchR!8490 (regOne!33126 r!7292) (_1!36589 (get!22544 lt!2372432))))))

(declare-fun b!6389485 () Bool)

(declare-fun res!2628296 () Bool)

(assert (=> b!6389485 (=> (not res!2628296) (not e!3878196))))

(assert (=> b!6389485 (= res!2628296 (matchR!8490 (regTwo!33126 r!7292) (_2!36589 (get!22544 lt!2372432))))))

(declare-fun b!6389486 () Bool)

(assert (=> b!6389486 (= e!3878194 (not (isDefined!12901 lt!2372432)))))

(declare-fun b!6389487 () Bool)

(declare-fun lt!2372434 () Unit!158559)

(declare-fun lt!2372433 () Unit!158559)

(assert (=> b!6389487 (= lt!2372434 lt!2372433)))

(assert (=> b!6389487 (= (++!14375 (++!14375 Nil!65098 (Cons!65098 (h!71546 s!2326) Nil!65098)) (t!378828 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2469 (List!65222 C!32884 List!65222 List!65222) Unit!158559)

(assert (=> b!6389487 (= lt!2372433 (lemmaMoveElementToOtherListKeepsConcatEq!2469 Nil!65098 (h!71546 s!2326) (t!378828 s!2326) s!2326))))

(assert (=> b!6389487 (= e!3878195 (findConcatSeparation!2612 (regOne!33126 r!7292) (regTwo!33126 r!7292) (++!14375 Nil!65098 (Cons!65098 (h!71546 s!2326) Nil!65098)) (t!378828 s!2326) s!2326))))

(declare-fun b!6389488 () Bool)

(assert (=> b!6389488 (= e!3878197 (matchR!8490 (regTwo!33126 r!7292) s!2326))))

(assert (= (and d!2002819 res!2628298) b!6389488))

(assert (= (and d!2002819 c!1164667) b!6389481))

(assert (= (and d!2002819 (not c!1164667)) b!6389482))

(assert (= (and b!6389482 c!1164666) b!6389483))

(assert (= (and b!6389482 (not c!1164666)) b!6389487))

(assert (= (and d!2002819 res!2628295) b!6389484))

(assert (= (and b!6389484 res!2628299) b!6389485))

(assert (= (and b!6389485 res!2628296) b!6389480))

(assert (= (and d!2002819 (not res!2628297)) b!6389486))

(declare-fun m!7188444 () Bool)

(assert (=> b!6389480 m!7188444))

(declare-fun m!7188446 () Bool)

(assert (=> b!6389480 m!7188446))

(declare-fun m!7188448 () Bool)

(assert (=> d!2002819 m!7188448))

(declare-fun m!7188450 () Bool)

(assert (=> d!2002819 m!7188450))

(assert (=> d!2002819 m!7188398))

(declare-fun m!7188452 () Bool)

(assert (=> b!6389488 m!7188452))

(declare-fun m!7188454 () Bool)

(assert (=> b!6389487 m!7188454))

(assert (=> b!6389487 m!7188454))

(declare-fun m!7188462 () Bool)

(assert (=> b!6389487 m!7188462))

(declare-fun m!7188468 () Bool)

(assert (=> b!6389487 m!7188468))

(assert (=> b!6389487 m!7188454))

(declare-fun m!7188472 () Bool)

(assert (=> b!6389487 m!7188472))

(assert (=> b!6389485 m!7188444))

(declare-fun m!7188474 () Bool)

(assert (=> b!6389485 m!7188474))

(assert (=> b!6389486 m!7188448))

(assert (=> b!6389484 m!7188444))

(declare-fun m!7188478 () Bool)

(assert (=> b!6389484 m!7188478))

(assert (=> b!6389208 d!2002819))

(declare-fun d!2002839 () Bool)

(declare-fun choose!47553 (Int) Bool)

(assert (=> d!2002839 (= (Exists!3377 lambda!352737) (choose!47553 lambda!352737))))

(declare-fun bs!1598928 () Bool)

(assert (= bs!1598928 d!2002839))

(declare-fun m!7188486 () Bool)

(assert (=> bs!1598928 m!7188486))

(assert (=> b!6389208 d!2002839))

(declare-fun bs!1598932 () Bool)

(declare-fun d!2002845 () Bool)

(assert (= bs!1598932 (and d!2002845 b!6389199)))

(declare-fun lambda!352761 () Int)

(assert (=> bs!1598932 (not (= lambda!352761 lambda!352741))))

(declare-fun bs!1598933 () Bool)

(assert (= bs!1598933 (and d!2002845 b!6389208)))

(assert (=> bs!1598933 (not (= lambda!352761 lambda!352738))))

(assert (=> bs!1598933 (= lambda!352761 lambda!352737)))

(declare-fun bs!1598934 () Bool)

(assert (= bs!1598934 (and d!2002845 d!2002815)))

(assert (=> bs!1598934 (= lambda!352761 lambda!352751)))

(assert (=> bs!1598932 (= (= (regOne!33126 r!7292) lt!2372394) (= lambda!352761 lambda!352740))))

(assert (=> d!2002845 true))

(assert (=> d!2002845 true))

(assert (=> d!2002845 true))

(declare-fun lambda!352762 () Int)

(assert (=> bs!1598932 (= (= (regOne!33126 r!7292) lt!2372394) (= lambda!352762 lambda!352741))))

(assert (=> bs!1598933 (= lambda!352762 lambda!352738)))

(assert (=> bs!1598933 (not (= lambda!352762 lambda!352737))))

(assert (=> bs!1598934 (not (= lambda!352762 lambda!352751))))

(assert (=> bs!1598932 (not (= lambda!352762 lambda!352740))))

(declare-fun bs!1598935 () Bool)

(assert (= bs!1598935 d!2002845))

(assert (=> bs!1598935 (not (= lambda!352762 lambda!352761))))

(assert (=> d!2002845 true))

(assert (=> d!2002845 true))

(assert (=> d!2002845 true))

(assert (=> d!2002845 (= (Exists!3377 lambda!352761) (Exists!3377 lambda!352762))))

(declare-fun lt!2372441 () Unit!158559)

(declare-fun choose!47554 (Regex!16307 Regex!16307 List!65222) Unit!158559)

(assert (=> d!2002845 (= lt!2372441 (choose!47554 (regOne!33126 r!7292) (regTwo!33126 r!7292) s!2326))))

(assert (=> d!2002845 (validRegex!8043 (regOne!33126 r!7292))))

(assert (=> d!2002845 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1914 (regOne!33126 r!7292) (regTwo!33126 r!7292) s!2326) lt!2372441)))

(declare-fun m!7188526 () Bool)

(assert (=> bs!1598935 m!7188526))

(declare-fun m!7188528 () Bool)

(assert (=> bs!1598935 m!7188528))

(declare-fun m!7188530 () Bool)

(assert (=> bs!1598935 m!7188530))

(assert (=> bs!1598935 m!7188398))

(assert (=> b!6389208 d!2002845))

(declare-fun d!2002861 () Bool)

(declare-fun isEmpty!37239 (Option!16198) Bool)

(assert (=> d!2002861 (= (isDefined!12901 (findConcatSeparation!2612 (regOne!33126 r!7292) (regTwo!33126 r!7292) Nil!65098 s!2326 s!2326)) (not (isEmpty!37239 (findConcatSeparation!2612 (regOne!33126 r!7292) (regTwo!33126 r!7292) Nil!65098 s!2326 s!2326))))))

(declare-fun bs!1598936 () Bool)

(assert (= bs!1598936 d!2002861))

(assert (=> bs!1598936 m!7188184))

(declare-fun m!7188532 () Bool)

(assert (=> bs!1598936 m!7188532))

(assert (=> b!6389208 d!2002861))

(declare-fun d!2002863 () Bool)

(assert (=> d!2002863 (= (Exists!3377 lambda!352738) (choose!47553 lambda!352738))))

(declare-fun bs!1598937 () Bool)

(assert (= bs!1598937 d!2002863))

(declare-fun m!7188534 () Bool)

(assert (=> bs!1598937 m!7188534))

(assert (=> b!6389208 d!2002863))

(declare-fun d!2002865 () Bool)

(declare-fun c!1164701 () Bool)

(assert (=> d!2002865 (= c!1164701 (isEmpty!37238 (t!378828 s!2326)))))

(declare-fun e!3878246 () Bool)

(assert (=> d!2002865 (= (matchZipper!2319 lt!2372366 (t!378828 s!2326)) e!3878246)))

(declare-fun b!6389573 () Bool)

(assert (=> b!6389573 (= e!3878246 (nullableZipper!2071 lt!2372366))))

(declare-fun b!6389574 () Bool)

(assert (=> b!6389574 (= e!3878246 (matchZipper!2319 (derivationStepZipper!2273 lt!2372366 (head!13104 (t!378828 s!2326))) (tail!12189 (t!378828 s!2326))))))

(assert (= (and d!2002865 c!1164701) b!6389573))

(assert (= (and d!2002865 (not c!1164701)) b!6389574))

(assert (=> d!2002865 m!7188364))

(declare-fun m!7188536 () Bool)

(assert (=> b!6389573 m!7188536))

(assert (=> b!6389574 m!7188368))

(assert (=> b!6389574 m!7188368))

(declare-fun m!7188538 () Bool)

(assert (=> b!6389574 m!7188538))

(assert (=> b!6389574 m!7188372))

(assert (=> b!6389574 m!7188538))

(assert (=> b!6389574 m!7188372))

(declare-fun m!7188540 () Bool)

(assert (=> b!6389574 m!7188540))

(assert (=> b!6389233 d!2002865))

(declare-fun d!2002867 () Bool)

(declare-fun lt!2372447 () Regex!16307)

(assert (=> d!2002867 (validRegex!8043 lt!2372447)))

(assert (=> d!2002867 (= lt!2372447 (generalisedUnion!2151 (unfocusZipperList!1728 (Cons!65097 lt!2372373 Nil!65097))))))

(assert (=> d!2002867 (= (unfocusZipper!2049 (Cons!65097 lt!2372373 Nil!65097)) lt!2372447)))

(declare-fun bs!1598938 () Bool)

(assert (= bs!1598938 d!2002867))

(declare-fun m!7188558 () Bool)

(assert (=> bs!1598938 m!7188558))

(declare-fun m!7188560 () Bool)

(assert (=> bs!1598938 m!7188560))

(assert (=> bs!1598938 m!7188560))

(declare-fun m!7188562 () Bool)

(assert (=> bs!1598938 m!7188562))

(assert (=> b!6389212 d!2002867))

(declare-fun d!2002871 () Bool)

(declare-fun e!3878255 () Bool)

(assert (=> d!2002871 e!3878255))

(declare-fun res!2628322 () Bool)

(assert (=> d!2002871 (=> (not res!2628322) (not e!3878255))))

(declare-fun lt!2372450 () List!65221)

(declare-fun noDuplicate!2135 (List!65221) Bool)

(assert (=> d!2002871 (= res!2628322 (noDuplicate!2135 lt!2372450))))

(declare-fun choose!47555 ((InoxSet Context!11382)) List!65221)

(assert (=> d!2002871 (= lt!2372450 (choose!47555 z!1189))))

(assert (=> d!2002871 (= (toList!10091 z!1189) lt!2372450)))

(declare-fun b!6389587 () Bool)

(declare-fun content!12326 (List!65221) (InoxSet Context!11382))

(assert (=> b!6389587 (= e!3878255 (= (content!12326 lt!2372450) z!1189))))

(assert (= (and d!2002871 res!2628322) b!6389587))

(declare-fun m!7188564 () Bool)

(assert (=> d!2002871 m!7188564))

(declare-fun m!7188566 () Bool)

(assert (=> d!2002871 m!7188566))

(declare-fun m!7188568 () Bool)

(assert (=> b!6389587 m!7188568))

(assert (=> b!6389193 d!2002871))

(declare-fun b!6389622 () Bool)

(declare-fun e!3878281 () Bool)

(assert (=> b!6389622 (= e!3878281 (isEmpty!37236 (t!378826 (unfocusZipperList!1728 zl!343))))))

(declare-fun b!6389623 () Bool)

(declare-fun e!3878279 () Bool)

(declare-fun lt!2372469 () Regex!16307)

(declare-fun isEmptyLang!1714 (Regex!16307) Bool)

(assert (=> b!6389623 (= e!3878279 (isEmptyLang!1714 lt!2372469))))

(declare-fun b!6389624 () Bool)

(declare-fun e!3878276 () Regex!16307)

(assert (=> b!6389624 (= e!3878276 EmptyLang!16307)))

(declare-fun b!6389625 () Bool)

(declare-fun e!3878278 () Regex!16307)

(assert (=> b!6389625 (= e!3878278 e!3878276)))

(declare-fun c!1164725 () Bool)

(assert (=> b!6389625 (= c!1164725 ((_ is Cons!65096) (unfocusZipperList!1728 zl!343)))))

(declare-fun d!2002873 () Bool)

(declare-fun e!3878277 () Bool)

(assert (=> d!2002873 e!3878277))

(declare-fun res!2628332 () Bool)

(assert (=> d!2002873 (=> (not res!2628332) (not e!3878277))))

(assert (=> d!2002873 (= res!2628332 (validRegex!8043 lt!2372469))))

(assert (=> d!2002873 (= lt!2372469 e!3878278)))

(declare-fun c!1164727 () Bool)

(assert (=> d!2002873 (= c!1164727 e!3878281)))

(declare-fun res!2628331 () Bool)

(assert (=> d!2002873 (=> (not res!2628331) (not e!3878281))))

(assert (=> d!2002873 (= res!2628331 ((_ is Cons!65096) (unfocusZipperList!1728 zl!343)))))

(declare-fun lambda!352780 () Int)

(declare-fun forall!15486 (List!65220 Int) Bool)

(assert (=> d!2002873 (forall!15486 (unfocusZipperList!1728 zl!343) lambda!352780)))

(assert (=> d!2002873 (= (generalisedUnion!2151 (unfocusZipperList!1728 zl!343)) lt!2372469)))

(declare-fun b!6389626 () Bool)

(assert (=> b!6389626 (= e!3878277 e!3878279)))

(declare-fun c!1164726 () Bool)

(assert (=> b!6389626 (= c!1164726 (isEmpty!37236 (unfocusZipperList!1728 zl!343)))))

(declare-fun b!6389627 () Bool)

(declare-fun e!3878280 () Bool)

(declare-fun isUnion!1144 (Regex!16307) Bool)

(assert (=> b!6389627 (= e!3878280 (isUnion!1144 lt!2372469))))

(declare-fun b!6389628 () Bool)

(assert (=> b!6389628 (= e!3878279 e!3878280)))

(declare-fun c!1164724 () Bool)

(declare-fun tail!12190 (List!65220) List!65220)

(assert (=> b!6389628 (= c!1164724 (isEmpty!37236 (tail!12190 (unfocusZipperList!1728 zl!343))))))

(declare-fun b!6389629 () Bool)

(assert (=> b!6389629 (= e!3878276 (Union!16307 (h!71544 (unfocusZipperList!1728 zl!343)) (generalisedUnion!2151 (t!378826 (unfocusZipperList!1728 zl!343)))))))

(declare-fun b!6389630 () Bool)

(declare-fun head!13105 (List!65220) Regex!16307)

(assert (=> b!6389630 (= e!3878280 (= lt!2372469 (head!13105 (unfocusZipperList!1728 zl!343))))))

(declare-fun b!6389631 () Bool)

(assert (=> b!6389631 (= e!3878278 (h!71544 (unfocusZipperList!1728 zl!343)))))

(assert (= (and d!2002873 res!2628331) b!6389622))

(assert (= (and d!2002873 c!1164727) b!6389631))

(assert (= (and d!2002873 (not c!1164727)) b!6389625))

(assert (= (and b!6389625 c!1164725) b!6389629))

(assert (= (and b!6389625 (not c!1164725)) b!6389624))

(assert (= (and d!2002873 res!2628332) b!6389626))

(assert (= (and b!6389626 c!1164726) b!6389623))

(assert (= (and b!6389626 (not c!1164726)) b!6389628))

(assert (= (and b!6389628 c!1164724) b!6389630))

(assert (= (and b!6389628 (not c!1164724)) b!6389627))

(declare-fun m!7188594 () Bool)

(assert (=> b!6389623 m!7188594))

(declare-fun m!7188596 () Bool)

(assert (=> b!6389627 m!7188596))

(assert (=> b!6389630 m!7188244))

(declare-fun m!7188598 () Bool)

(assert (=> b!6389630 m!7188598))

(assert (=> b!6389628 m!7188244))

(declare-fun m!7188600 () Bool)

(assert (=> b!6389628 m!7188600))

(assert (=> b!6389628 m!7188600))

(declare-fun m!7188602 () Bool)

(assert (=> b!6389628 m!7188602))

(declare-fun m!7188604 () Bool)

(assert (=> b!6389622 m!7188604))

(declare-fun m!7188606 () Bool)

(assert (=> b!6389629 m!7188606))

(assert (=> b!6389626 m!7188244))

(declare-fun m!7188608 () Bool)

(assert (=> b!6389626 m!7188608))

(declare-fun m!7188610 () Bool)

(assert (=> d!2002873 m!7188610))

(assert (=> d!2002873 m!7188244))

(declare-fun m!7188612 () Bool)

(assert (=> d!2002873 m!7188612))

(assert (=> b!6389232 d!2002873))

(declare-fun bs!1598945 () Bool)

(declare-fun d!2002881 () Bool)

(assert (= bs!1598945 (and d!2002881 d!2002873)))

(declare-fun lambda!352783 () Int)

(assert (=> bs!1598945 (= lambda!352783 lambda!352780)))

(declare-fun lt!2372475 () List!65220)

(assert (=> d!2002881 (forall!15486 lt!2372475 lambda!352783)))

(declare-fun e!3878287 () List!65220)

(assert (=> d!2002881 (= lt!2372475 e!3878287)))

(declare-fun c!1164730 () Bool)

(assert (=> d!2002881 (= c!1164730 ((_ is Cons!65097) zl!343))))

(assert (=> d!2002881 (= (unfocusZipperList!1728 zl!343) lt!2372475)))

(declare-fun b!6389639 () Bool)

(assert (=> b!6389639 (= e!3878287 (Cons!65096 (generalisedConcat!1904 (exprs!6191 (h!71545 zl!343))) (unfocusZipperList!1728 (t!378827 zl!343))))))

(declare-fun b!6389640 () Bool)

(assert (=> b!6389640 (= e!3878287 Nil!65096)))

(assert (= (and d!2002881 c!1164730) b!6389639))

(assert (= (and d!2002881 (not c!1164730)) b!6389640))

(declare-fun m!7188620 () Bool)

(assert (=> d!2002881 m!7188620))

(assert (=> b!6389639 m!7188202))

(declare-fun m!7188622 () Bool)

(assert (=> b!6389639 m!7188622))

(assert (=> b!6389232 d!2002881))

(declare-fun b!6389717 () Bool)

(declare-fun e!3878336 () Bool)

(declare-fun lt!2372484 () Int)

(declare-fun call!546331 () Int)

(assert (=> b!6389717 (= e!3878336 (> lt!2372484 call!546331))))

(declare-fun bm!546325 () Bool)

(declare-fun call!546332 () Int)

(assert (=> bm!546325 (= call!546331 call!546332)))

(declare-fun c!1164767 () Bool)

(declare-fun call!546333 () Int)

(declare-fun call!546335 () Int)

(declare-fun call!546336 () Int)

(declare-fun bm!546326 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!546326 (= call!546336 (maxBigInt!0 (ite c!1164767 call!546335 call!546333) (ite c!1164767 call!546333 call!546335)))))

(declare-fun b!6389718 () Bool)

(declare-fun e!3878341 () Bool)

(declare-fun call!546334 () Int)

(assert (=> b!6389718 (= e!3878341 (> lt!2372484 call!546334))))

(declare-fun b!6389719 () Bool)

(declare-fun res!2628349 () Bool)

(declare-fun e!3878332 () Bool)

(assert (=> b!6389719 (=> (not res!2628349) (not e!3878332))))

(assert (=> b!6389719 (= res!2628349 (> lt!2372484 call!546331))))

(declare-fun e!3878337 () Bool)

(assert (=> b!6389719 (= e!3878337 e!3878332)))

(declare-fun bm!546327 () Bool)

(assert (=> bm!546327 (= call!546333 (regexDepth!334 (ite c!1164767 (regTwo!33127 r!7292) (regOne!33126 r!7292))))))

(declare-fun b!6389720 () Bool)

(declare-fun e!3878339 () Int)

(declare-fun call!546330 () Int)

(assert (=> b!6389720 (= e!3878339 (+ 1 call!546330))))

(declare-fun b!6389721 () Bool)

(declare-fun e!3878340 () Int)

(assert (=> b!6389721 (= e!3878340 1)))

(declare-fun b!6389722 () Bool)

(declare-fun e!3878338 () Int)

(assert (=> b!6389722 (= e!3878338 (+ 1 call!546336))))

(declare-fun b!6389723 () Bool)

(declare-fun e!3878334 () Bool)

(assert (=> b!6389723 (= e!3878334 e!3878341)))

(declare-fun res!2628350 () Bool)

(assert (=> b!6389723 (= res!2628350 (> lt!2372484 call!546332))))

(assert (=> b!6389723 (=> (not res!2628350) (not e!3878341))))

(declare-fun b!6389724 () Bool)

(assert (=> b!6389724 (= e!3878336 (= lt!2372484 1))))

(declare-fun b!6389725 () Bool)

(assert (=> b!6389725 (= e!3878338 e!3878340)))

(declare-fun c!1164765 () Bool)

(assert (=> b!6389725 (= c!1164765 ((_ is Concat!25152) r!7292))))

(declare-fun b!6389726 () Bool)

(assert (=> b!6389726 (= e!3878334 e!3878337)))

(declare-fun c!1164764 () Bool)

(assert (=> b!6389726 (= c!1164764 ((_ is Concat!25152) r!7292))))

(declare-fun bm!546328 () Bool)

(declare-fun c!1164763 () Bool)

(assert (=> bm!546328 (= call!546334 (regexDepth!334 (ite c!1164763 (regTwo!33127 r!7292) (regTwo!33126 r!7292))))))

(declare-fun b!6389727 () Bool)

(declare-fun e!3878335 () Bool)

(assert (=> b!6389727 (= e!3878335 e!3878334)))

(assert (=> b!6389727 (= c!1164763 ((_ is Union!16307) r!7292))))

(declare-fun b!6389728 () Bool)

(assert (=> b!6389728 (= c!1164767 ((_ is Union!16307) r!7292))))

(assert (=> b!6389728 (= e!3878339 e!3878338)))

(declare-fun b!6389729 () Bool)

(assert (=> b!6389729 (= e!3878340 (+ 1 call!546336))))

(declare-fun bm!546329 () Bool)

(assert (=> bm!546329 (= call!546332 (regexDepth!334 (ite c!1164763 (regOne!33127 r!7292) (ite c!1164764 (regOne!33126 r!7292) (reg!16636 r!7292)))))))

(declare-fun b!6389730 () Bool)

(assert (=> b!6389730 (= e!3878332 (> lt!2372484 call!546334))))

(declare-fun b!6389731 () Bool)

(declare-fun e!3878333 () Int)

(assert (=> b!6389731 (= e!3878333 1)))

(declare-fun d!2002885 () Bool)

(assert (=> d!2002885 e!3878335))

(declare-fun res!2628348 () Bool)

(assert (=> d!2002885 (=> (not res!2628348) (not e!3878335))))

(assert (=> d!2002885 (= res!2628348 (> lt!2372484 0))))

(assert (=> d!2002885 (= lt!2372484 e!3878333)))

(declare-fun c!1164766 () Bool)

(assert (=> d!2002885 (= c!1164766 ((_ is ElementMatch!16307) r!7292))))

(assert (=> d!2002885 (= (regexDepth!334 r!7292) lt!2372484)))

(declare-fun b!6389732 () Bool)

(assert (=> b!6389732 (= e!3878333 e!3878339)))

(declare-fun c!1164769 () Bool)

(assert (=> b!6389732 (= c!1164769 ((_ is Star!16307) r!7292))))

(declare-fun bm!546330 () Bool)

(assert (=> bm!546330 (= call!546335 call!546330)))

(declare-fun bm!546331 () Bool)

(assert (=> bm!546331 (= call!546330 (regexDepth!334 (ite c!1164769 (reg!16636 r!7292) (ite c!1164767 (regOne!33127 r!7292) (regTwo!33126 r!7292)))))))

(declare-fun b!6389733 () Bool)

(declare-fun c!1164768 () Bool)

(assert (=> b!6389733 (= c!1164768 ((_ is Star!16307) r!7292))))

(assert (=> b!6389733 (= e!3878337 e!3878336)))

(assert (= (and d!2002885 c!1164766) b!6389731))

(assert (= (and d!2002885 (not c!1164766)) b!6389732))

(assert (= (and b!6389732 c!1164769) b!6389720))

(assert (= (and b!6389732 (not c!1164769)) b!6389728))

(assert (= (and b!6389728 c!1164767) b!6389722))

(assert (= (and b!6389728 (not c!1164767)) b!6389725))

(assert (= (and b!6389725 c!1164765) b!6389729))

(assert (= (and b!6389725 (not c!1164765)) b!6389721))

(assert (= (or b!6389722 b!6389729) bm!546327))

(assert (= (or b!6389722 b!6389729) bm!546330))

(assert (= (or b!6389722 b!6389729) bm!546326))

(assert (= (or b!6389720 bm!546330) bm!546331))

(assert (= (and d!2002885 res!2628348) b!6389727))

(assert (= (and b!6389727 c!1164763) b!6389723))

(assert (= (and b!6389727 (not c!1164763)) b!6389726))

(assert (= (and b!6389723 res!2628350) b!6389718))

(assert (= (and b!6389726 c!1164764) b!6389719))

(assert (= (and b!6389726 (not c!1164764)) b!6389733))

(assert (= (and b!6389719 res!2628349) b!6389730))

(assert (= (and b!6389733 c!1164768) b!6389717))

(assert (= (and b!6389733 (not c!1164768)) b!6389724))

(assert (= (or b!6389719 b!6389717) bm!546325))

(assert (= (or b!6389718 b!6389730) bm!546328))

(assert (= (or b!6389723 bm!546325) bm!546329))

(declare-fun m!7188666 () Bool)

(assert (=> bm!546327 m!7188666))

(declare-fun m!7188668 () Bool)

(assert (=> bm!546326 m!7188668))

(declare-fun m!7188670 () Bool)

(assert (=> bm!546329 m!7188670))

(declare-fun m!7188672 () Bool)

(assert (=> bm!546331 m!7188672))

(declare-fun m!7188674 () Bool)

(assert (=> bm!546328 m!7188674))

(assert (=> b!6389211 d!2002885))

(declare-fun b!6389734 () Bool)

(declare-fun e!3878346 () Bool)

(declare-fun lt!2372485 () Int)

(declare-fun call!546338 () Int)

(assert (=> b!6389734 (= e!3878346 (> lt!2372485 call!546338))))

(declare-fun bm!546332 () Bool)

(declare-fun call!546339 () Int)

(assert (=> bm!546332 (= call!546338 call!546339)))

(declare-fun c!1164774 () Bool)

(declare-fun call!546342 () Int)

(declare-fun call!546340 () Int)

(declare-fun bm!546333 () Bool)

(declare-fun call!546343 () Int)

(assert (=> bm!546333 (= call!546343 (maxBigInt!0 (ite c!1164774 call!546342 call!546340) (ite c!1164774 call!546340 call!546342)))))

(declare-fun b!6389735 () Bool)

(declare-fun e!3878351 () Bool)

(declare-fun call!546341 () Int)

(assert (=> b!6389735 (= e!3878351 (> lt!2372485 call!546341))))

(declare-fun b!6389736 () Bool)

(declare-fun res!2628352 () Bool)

(declare-fun e!3878342 () Bool)

(assert (=> b!6389736 (=> (not res!2628352) (not e!3878342))))

(assert (=> b!6389736 (= res!2628352 (> lt!2372485 call!546338))))

(declare-fun e!3878347 () Bool)

(assert (=> b!6389736 (= e!3878347 e!3878342)))

(declare-fun bm!546334 () Bool)

(assert (=> bm!546334 (= call!546340 (regexDepth!334 (ite c!1164774 (regTwo!33127 lt!2372365) (regOne!33126 lt!2372365))))))

(declare-fun b!6389737 () Bool)

(declare-fun e!3878349 () Int)

(declare-fun call!546337 () Int)

(assert (=> b!6389737 (= e!3878349 (+ 1 call!546337))))

(declare-fun b!6389738 () Bool)

(declare-fun e!3878350 () Int)

(assert (=> b!6389738 (= e!3878350 1)))

(declare-fun b!6389739 () Bool)

(declare-fun e!3878348 () Int)

(assert (=> b!6389739 (= e!3878348 (+ 1 call!546343))))

(declare-fun b!6389740 () Bool)

(declare-fun e!3878344 () Bool)

(assert (=> b!6389740 (= e!3878344 e!3878351)))

(declare-fun res!2628353 () Bool)

(assert (=> b!6389740 (= res!2628353 (> lt!2372485 call!546339))))

(assert (=> b!6389740 (=> (not res!2628353) (not e!3878351))))

(declare-fun b!6389741 () Bool)

(assert (=> b!6389741 (= e!3878346 (= lt!2372485 1))))

(declare-fun b!6389742 () Bool)

(assert (=> b!6389742 (= e!3878348 e!3878350)))

(declare-fun c!1164772 () Bool)

(assert (=> b!6389742 (= c!1164772 ((_ is Concat!25152) lt!2372365))))

(declare-fun b!6389743 () Bool)

(assert (=> b!6389743 (= e!3878344 e!3878347)))

(declare-fun c!1164771 () Bool)

(assert (=> b!6389743 (= c!1164771 ((_ is Concat!25152) lt!2372365))))

(declare-fun bm!546335 () Bool)

(declare-fun c!1164770 () Bool)

(assert (=> bm!546335 (= call!546341 (regexDepth!334 (ite c!1164770 (regTwo!33127 lt!2372365) (regTwo!33126 lt!2372365))))))

(declare-fun b!6389744 () Bool)

(declare-fun e!3878345 () Bool)

(assert (=> b!6389744 (= e!3878345 e!3878344)))

(assert (=> b!6389744 (= c!1164770 ((_ is Union!16307) lt!2372365))))

(declare-fun b!6389745 () Bool)

(assert (=> b!6389745 (= c!1164774 ((_ is Union!16307) lt!2372365))))

(assert (=> b!6389745 (= e!3878349 e!3878348)))

(declare-fun b!6389746 () Bool)

(assert (=> b!6389746 (= e!3878350 (+ 1 call!546343))))

(declare-fun bm!546336 () Bool)

(assert (=> bm!546336 (= call!546339 (regexDepth!334 (ite c!1164770 (regOne!33127 lt!2372365) (ite c!1164771 (regOne!33126 lt!2372365) (reg!16636 lt!2372365)))))))

(declare-fun b!6389747 () Bool)

(assert (=> b!6389747 (= e!3878342 (> lt!2372485 call!546341))))

(declare-fun b!6389748 () Bool)

(declare-fun e!3878343 () Int)

(assert (=> b!6389748 (= e!3878343 1)))

(declare-fun d!2002897 () Bool)

(assert (=> d!2002897 e!3878345))

(declare-fun res!2628351 () Bool)

(assert (=> d!2002897 (=> (not res!2628351) (not e!3878345))))

(assert (=> d!2002897 (= res!2628351 (> lt!2372485 0))))

(assert (=> d!2002897 (= lt!2372485 e!3878343)))

(declare-fun c!1164773 () Bool)

(assert (=> d!2002897 (= c!1164773 ((_ is ElementMatch!16307) lt!2372365))))

(assert (=> d!2002897 (= (regexDepth!334 lt!2372365) lt!2372485)))

(declare-fun b!6389749 () Bool)

(assert (=> b!6389749 (= e!3878343 e!3878349)))

(declare-fun c!1164776 () Bool)

(assert (=> b!6389749 (= c!1164776 ((_ is Star!16307) lt!2372365))))

(declare-fun bm!546337 () Bool)

(assert (=> bm!546337 (= call!546342 call!546337)))

(declare-fun bm!546338 () Bool)

(assert (=> bm!546338 (= call!546337 (regexDepth!334 (ite c!1164776 (reg!16636 lt!2372365) (ite c!1164774 (regOne!33127 lt!2372365) (regTwo!33126 lt!2372365)))))))

(declare-fun b!6389750 () Bool)

(declare-fun c!1164775 () Bool)

(assert (=> b!6389750 (= c!1164775 ((_ is Star!16307) lt!2372365))))

(assert (=> b!6389750 (= e!3878347 e!3878346)))

(assert (= (and d!2002897 c!1164773) b!6389748))

(assert (= (and d!2002897 (not c!1164773)) b!6389749))

(assert (= (and b!6389749 c!1164776) b!6389737))

(assert (= (and b!6389749 (not c!1164776)) b!6389745))

(assert (= (and b!6389745 c!1164774) b!6389739))

(assert (= (and b!6389745 (not c!1164774)) b!6389742))

(assert (= (and b!6389742 c!1164772) b!6389746))

(assert (= (and b!6389742 (not c!1164772)) b!6389738))

(assert (= (or b!6389739 b!6389746) bm!546334))

(assert (= (or b!6389739 b!6389746) bm!546337))

(assert (= (or b!6389739 b!6389746) bm!546333))

(assert (= (or b!6389737 bm!546337) bm!546338))

(assert (= (and d!2002897 res!2628351) b!6389744))

(assert (= (and b!6389744 c!1164770) b!6389740))

(assert (= (and b!6389744 (not c!1164770)) b!6389743))

(assert (= (and b!6389740 res!2628353) b!6389735))

(assert (= (and b!6389743 c!1164771) b!6389736))

(assert (= (and b!6389743 (not c!1164771)) b!6389750))

(assert (= (and b!6389736 res!2628352) b!6389747))

(assert (= (and b!6389750 c!1164775) b!6389734))

(assert (= (and b!6389750 (not c!1164775)) b!6389741))

(assert (= (or b!6389736 b!6389734) bm!546332))

(assert (= (or b!6389735 b!6389747) bm!546335))

(assert (= (or b!6389740 bm!546332) bm!546336))

(declare-fun m!7188678 () Bool)

(assert (=> bm!546334 m!7188678))

(declare-fun m!7188680 () Bool)

(assert (=> bm!546333 m!7188680))

(declare-fun m!7188682 () Bool)

(assert (=> bm!546336 m!7188682))

(declare-fun m!7188684 () Bool)

(assert (=> bm!546338 m!7188684))

(declare-fun m!7188686 () Bool)

(assert (=> bm!546335 m!7188686))

(assert (=> b!6389211 d!2002897))

(declare-fun bs!1598955 () Bool)

(declare-fun d!2002901 () Bool)

(assert (= bs!1598955 (and d!2002901 d!2002873)))

(declare-fun lambda!352795 () Int)

(assert (=> bs!1598955 (= lambda!352795 lambda!352780)))

(declare-fun bs!1598956 () Bool)

(assert (= bs!1598956 (and d!2002901 d!2002881)))

(assert (=> bs!1598956 (= lambda!352795 lambda!352783)))

(declare-fun b!6389798 () Bool)

(declare-fun e!3878389 () Bool)

(declare-fun lt!2372489 () Regex!16307)

(declare-fun isEmptyExpr!1708 (Regex!16307) Bool)

(assert (=> b!6389798 (= e!3878389 (isEmptyExpr!1708 lt!2372489))))

(declare-fun b!6389799 () Bool)

(declare-fun e!3878386 () Regex!16307)

(assert (=> b!6389799 (= e!3878386 EmptyExpr!16307)))

(declare-fun b!6389800 () Bool)

(declare-fun e!3878385 () Regex!16307)

(assert (=> b!6389800 (= e!3878385 (h!71544 (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun b!6389801 () Bool)

(assert (=> b!6389801 (= e!3878385 e!3878386)))

(declare-fun c!1164794 () Bool)

(assert (=> b!6389801 (= c!1164794 ((_ is Cons!65096) (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun b!6389802 () Bool)

(declare-fun e!3878388 () Bool)

(assert (=> b!6389802 (= e!3878389 e!3878388)))

(declare-fun c!1164792 () Bool)

(assert (=> b!6389802 (= c!1164792 (isEmpty!37236 (tail!12190 (t!378826 (exprs!6191 (h!71545 zl!343))))))))

(declare-fun b!6389803 () Bool)

(assert (=> b!6389803 (= e!3878388 (= lt!2372489 (head!13105 (t!378826 (exprs!6191 (h!71545 zl!343))))))))

(declare-fun b!6389804 () Bool)

(declare-fun e!3878390 () Bool)

(assert (=> b!6389804 (= e!3878390 e!3878389)))

(declare-fun c!1164791 () Bool)

(assert (=> b!6389804 (= c!1164791 (isEmpty!37236 (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(assert (=> d!2002901 e!3878390))

(declare-fun res!2628373 () Bool)

(assert (=> d!2002901 (=> (not res!2628373) (not e!3878390))))

(assert (=> d!2002901 (= res!2628373 (validRegex!8043 lt!2372489))))

(assert (=> d!2002901 (= lt!2372489 e!3878385)))

(declare-fun c!1164793 () Bool)

(declare-fun e!3878387 () Bool)

(assert (=> d!2002901 (= c!1164793 e!3878387)))

(declare-fun res!2628374 () Bool)

(assert (=> d!2002901 (=> (not res!2628374) (not e!3878387))))

(assert (=> d!2002901 (= res!2628374 ((_ is Cons!65096) (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(assert (=> d!2002901 (forall!15486 (t!378826 (exprs!6191 (h!71545 zl!343))) lambda!352795)))

(assert (=> d!2002901 (= (generalisedConcat!1904 (t!378826 (exprs!6191 (h!71545 zl!343)))) lt!2372489)))

(declare-fun b!6389805 () Bool)

(assert (=> b!6389805 (= e!3878387 (isEmpty!37236 (t!378826 (t!378826 (exprs!6191 (h!71545 zl!343))))))))

(declare-fun b!6389806 () Bool)

(assert (=> b!6389806 (= e!3878386 (Concat!25152 (h!71544 (t!378826 (exprs!6191 (h!71545 zl!343)))) (generalisedConcat!1904 (t!378826 (t!378826 (exprs!6191 (h!71545 zl!343)))))))))

(declare-fun b!6389807 () Bool)

(declare-fun isConcat!1231 (Regex!16307) Bool)

(assert (=> b!6389807 (= e!3878388 (isConcat!1231 lt!2372489))))

(assert (= (and d!2002901 res!2628374) b!6389805))

(assert (= (and d!2002901 c!1164793) b!6389800))

(assert (= (and d!2002901 (not c!1164793)) b!6389801))

(assert (= (and b!6389801 c!1164794) b!6389806))

(assert (= (and b!6389801 (not c!1164794)) b!6389799))

(assert (= (and d!2002901 res!2628373) b!6389804))

(assert (= (and b!6389804 c!1164791) b!6389798))

(assert (= (and b!6389804 (not c!1164791)) b!6389802))

(assert (= (and b!6389802 c!1164792) b!6389803))

(assert (= (and b!6389802 (not c!1164792)) b!6389807))

(declare-fun m!7188698 () Bool)

(assert (=> d!2002901 m!7188698))

(declare-fun m!7188700 () Bool)

(assert (=> d!2002901 m!7188700))

(declare-fun m!7188702 () Bool)

(assert (=> b!6389798 m!7188702))

(declare-fun m!7188704 () Bool)

(assert (=> b!6389802 m!7188704))

(assert (=> b!6389802 m!7188704))

(declare-fun m!7188706 () Bool)

(assert (=> b!6389802 m!7188706))

(declare-fun m!7188708 () Bool)

(assert (=> b!6389807 m!7188708))

(declare-fun m!7188710 () Bool)

(assert (=> b!6389806 m!7188710))

(declare-fun m!7188712 () Bool)

(assert (=> b!6389803 m!7188712))

(declare-fun m!7188714 () Bool)

(assert (=> b!6389805 m!7188714))

(assert (=> b!6389804 m!7188236))

(assert (=> b!6389211 d!2002901))

(declare-fun bs!1598966 () Bool)

(declare-fun b!6389931 () Bool)

(assert (= bs!1598966 (and b!6389931 b!6389199)))

(declare-fun lambda!352803 () Int)

(assert (=> bs!1598966 (not (= lambda!352803 lambda!352741))))

(declare-fun bs!1598968 () Bool)

(assert (= bs!1598968 (and b!6389931 b!6389208)))

(assert (=> bs!1598968 (not (= lambda!352803 lambda!352738))))

(assert (=> bs!1598968 (not (= lambda!352803 lambda!352737))))

(assert (=> bs!1598966 (not (= lambda!352803 lambda!352740))))

(declare-fun bs!1598972 () Bool)

(assert (= bs!1598972 (and b!6389931 d!2002845)))

(assert (=> bs!1598972 (not (= lambda!352803 lambda!352761))))

(assert (=> bs!1598972 (not (= lambda!352803 lambda!352762))))

(declare-fun bs!1598973 () Bool)

(assert (= bs!1598973 (and b!6389931 d!2002815)))

(assert (=> bs!1598973 (not (= lambda!352803 lambda!352751))))

(assert (=> b!6389931 true))

(assert (=> b!6389931 true))

(declare-fun bs!1598974 () Bool)

(declare-fun b!6389933 () Bool)

(assert (= bs!1598974 (and b!6389933 b!6389199)))

(declare-fun lambda!352804 () Int)

(assert (=> bs!1598974 (= (= (regOne!33126 r!7292) lt!2372394) (= lambda!352804 lambda!352741))))

(declare-fun bs!1598975 () Bool)

(assert (= bs!1598975 (and b!6389933 b!6389208)))

(assert (=> bs!1598975 (= lambda!352804 lambda!352738)))

(assert (=> bs!1598975 (not (= lambda!352804 lambda!352737))))

(declare-fun bs!1598976 () Bool)

(assert (= bs!1598976 (and b!6389933 d!2002845)))

(assert (=> bs!1598976 (not (= lambda!352804 lambda!352761))))

(assert (=> bs!1598976 (= lambda!352804 lambda!352762)))

(declare-fun bs!1598977 () Bool)

(assert (= bs!1598977 (and b!6389933 d!2002815)))

(assert (=> bs!1598977 (not (= lambda!352804 lambda!352751))))

(declare-fun bs!1598978 () Bool)

(assert (= bs!1598978 (and b!6389933 b!6389931)))

(assert (=> bs!1598978 (not (= lambda!352804 lambda!352803))))

(assert (=> bs!1598974 (not (= lambda!352804 lambda!352740))))

(assert (=> b!6389933 true))

(assert (=> b!6389933 true))

(declare-fun b!6389929 () Bool)

(declare-fun e!3878466 () Bool)

(declare-fun e!3878465 () Bool)

(assert (=> b!6389929 (= e!3878466 e!3878465)))

(declare-fun c!1164841 () Bool)

(assert (=> b!6389929 (= c!1164841 ((_ is Star!16307) r!7292))))

(declare-fun b!6389930 () Bool)

(declare-fun e!3878462 () Bool)

(declare-fun call!546388 () Bool)

(assert (=> b!6389930 (= e!3878462 call!546388)))

(declare-fun e!3878463 () Bool)

(declare-fun call!546387 () Bool)

(assert (=> b!6389931 (= e!3878463 call!546387)))

(declare-fun b!6389932 () Bool)

(declare-fun res!2628408 () Bool)

(assert (=> b!6389932 (=> res!2628408 e!3878463)))

(assert (=> b!6389932 (= res!2628408 call!546388)))

(assert (=> b!6389932 (= e!3878465 e!3878463)))

(declare-fun d!2002909 () Bool)

(declare-fun c!1164842 () Bool)

(assert (=> d!2002909 (= c!1164842 ((_ is EmptyExpr!16307) r!7292))))

(assert (=> d!2002909 (= (matchRSpec!3408 r!7292 s!2326) e!3878462)))

(assert (=> b!6389933 (= e!3878465 call!546387)))

(declare-fun b!6389934 () Bool)

(declare-fun e!3878464 () Bool)

(assert (=> b!6389934 (= e!3878464 (= s!2326 (Cons!65098 (c!1164602 r!7292) Nil!65098)))))

(declare-fun b!6389935 () Bool)

(declare-fun c!1164839 () Bool)

(assert (=> b!6389935 (= c!1164839 ((_ is ElementMatch!16307) r!7292))))

(declare-fun e!3878467 () Bool)

(assert (=> b!6389935 (= e!3878467 e!3878464)))

(declare-fun bm!546382 () Bool)

(assert (=> bm!546382 (= call!546387 (Exists!3377 (ite c!1164841 lambda!352803 lambda!352804)))))

(declare-fun b!6389936 () Bool)

(declare-fun e!3878468 () Bool)

(assert (=> b!6389936 (= e!3878468 (matchRSpec!3408 (regTwo!33127 r!7292) s!2326))))

(declare-fun b!6389937 () Bool)

(assert (=> b!6389937 (= e!3878466 e!3878468)))

(declare-fun res!2628410 () Bool)

(assert (=> b!6389937 (= res!2628410 (matchRSpec!3408 (regOne!33127 r!7292) s!2326))))

(assert (=> b!6389937 (=> res!2628410 e!3878468)))

(declare-fun b!6389938 () Bool)

(declare-fun c!1164840 () Bool)

(assert (=> b!6389938 (= c!1164840 ((_ is Union!16307) r!7292))))

(assert (=> b!6389938 (= e!3878464 e!3878466)))

(declare-fun bm!546383 () Bool)

(assert (=> bm!546383 (= call!546388 (isEmpty!37238 s!2326))))

(declare-fun b!6389939 () Bool)

(assert (=> b!6389939 (= e!3878462 e!3878467)))

(declare-fun res!2628409 () Bool)

(assert (=> b!6389939 (= res!2628409 (not ((_ is EmptyLang!16307) r!7292)))))

(assert (=> b!6389939 (=> (not res!2628409) (not e!3878467))))

(assert (= (and d!2002909 c!1164842) b!6389930))

(assert (= (and d!2002909 (not c!1164842)) b!6389939))

(assert (= (and b!6389939 res!2628409) b!6389935))

(assert (= (and b!6389935 c!1164839) b!6389934))

(assert (= (and b!6389935 (not c!1164839)) b!6389938))

(assert (= (and b!6389938 c!1164840) b!6389937))

(assert (= (and b!6389938 (not c!1164840)) b!6389929))

(assert (= (and b!6389937 (not res!2628410)) b!6389936))

(assert (= (and b!6389929 c!1164841) b!6389932))

(assert (= (and b!6389929 (not c!1164841)) b!6389933))

(assert (= (and b!6389932 (not res!2628408)) b!6389931))

(assert (= (or b!6389931 b!6389933) bm!546382))

(assert (= (or b!6389930 b!6389932) bm!546383))

(declare-fun m!7188768 () Bool)

(assert (=> bm!546382 m!7188768))

(declare-fun m!7188770 () Bool)

(assert (=> b!6389936 m!7188770))

(declare-fun m!7188772 () Bool)

(assert (=> b!6389937 m!7188772))

(declare-fun m!7188774 () Bool)

(assert (=> bm!546383 m!7188774))

(assert (=> b!6389195 d!2002909))

(declare-fun b!6389954 () Bool)

(declare-fun e!3878478 () Bool)

(declare-fun e!3878476 () Bool)

(assert (=> b!6389954 (= e!3878478 e!3878476)))

(declare-fun res!2628425 () Bool)

(assert (=> b!6389954 (=> res!2628425 e!3878476)))

(declare-fun call!546390 () Bool)

(assert (=> b!6389954 (= res!2628425 call!546390)))

(declare-fun b!6389955 () Bool)

(declare-fun e!3878482 () Bool)

(assert (=> b!6389955 (= e!3878482 e!3878478)))

(declare-fun res!2628421 () Bool)

(assert (=> b!6389955 (=> (not res!2628421) (not e!3878478))))

(declare-fun lt!2372497 () Bool)

(assert (=> b!6389955 (= res!2628421 (not lt!2372497))))

(declare-fun b!6389956 () Bool)

(declare-fun e!3878480 () Bool)

(assert (=> b!6389956 (= e!3878480 (= (head!13104 s!2326) (c!1164602 r!7292)))))

(declare-fun b!6389957 () Bool)

(declare-fun e!3878479 () Bool)

(assert (=> b!6389957 (= e!3878479 (matchR!8490 (derivativeStep!5011 r!7292 (head!13104 s!2326)) (tail!12189 s!2326)))))

(declare-fun b!6389958 () Bool)

(assert (=> b!6389958 (= e!3878476 (not (= (head!13104 s!2326) (c!1164602 r!7292))))))

(declare-fun bm!546385 () Bool)

(assert (=> bm!546385 (= call!546390 (isEmpty!37238 s!2326))))

(declare-fun b!6389959 () Bool)

(declare-fun e!3878477 () Bool)

(assert (=> b!6389959 (= e!3878477 (not lt!2372497))))

(declare-fun b!6389960 () Bool)

(declare-fun res!2628419 () Bool)

(assert (=> b!6389960 (=> (not res!2628419) (not e!3878480))))

(assert (=> b!6389960 (= res!2628419 (isEmpty!37238 (tail!12189 s!2326)))))

(declare-fun b!6389961 () Bool)

(declare-fun res!2628424 () Bool)

(assert (=> b!6389961 (=> res!2628424 e!3878476)))

(assert (=> b!6389961 (= res!2628424 (not (isEmpty!37238 (tail!12189 s!2326))))))

(declare-fun b!6389962 () Bool)

(declare-fun e!3878481 () Bool)

(assert (=> b!6389962 (= e!3878481 e!3878477)))

(declare-fun c!1164846 () Bool)

(assert (=> b!6389962 (= c!1164846 ((_ is EmptyLang!16307) r!7292))))

(declare-fun b!6389963 () Bool)

(declare-fun res!2628423 () Bool)

(assert (=> b!6389963 (=> res!2628423 e!3878482)))

(assert (=> b!6389963 (= res!2628423 e!3878480)))

(declare-fun res!2628422 () Bool)

(assert (=> b!6389963 (=> (not res!2628422) (not e!3878480))))

(assert (=> b!6389963 (= res!2628422 lt!2372497)))

(declare-fun b!6389964 () Bool)

(assert (=> b!6389964 (= e!3878479 (nullable!6300 r!7292))))

(declare-fun d!2002923 () Bool)

(assert (=> d!2002923 e!3878481))

(declare-fun c!1164848 () Bool)

(assert (=> d!2002923 (= c!1164848 ((_ is EmptyExpr!16307) r!7292))))

(assert (=> d!2002923 (= lt!2372497 e!3878479)))

(declare-fun c!1164847 () Bool)

(assert (=> d!2002923 (= c!1164847 (isEmpty!37238 s!2326))))

(assert (=> d!2002923 (validRegex!8043 r!7292)))

(assert (=> d!2002923 (= (matchR!8490 r!7292 s!2326) lt!2372497)))

(declare-fun b!6389965 () Bool)

(declare-fun res!2628426 () Bool)

(assert (=> b!6389965 (=> (not res!2628426) (not e!3878480))))

(assert (=> b!6389965 (= res!2628426 (not call!546390))))

(declare-fun b!6389966 () Bool)

(declare-fun res!2628420 () Bool)

(assert (=> b!6389966 (=> res!2628420 e!3878482)))

(assert (=> b!6389966 (= res!2628420 (not ((_ is ElementMatch!16307) r!7292)))))

(assert (=> b!6389966 (= e!3878477 e!3878482)))

(declare-fun b!6389967 () Bool)

(assert (=> b!6389967 (= e!3878481 (= lt!2372497 call!546390))))

(assert (= (and d!2002923 c!1164847) b!6389964))

(assert (= (and d!2002923 (not c!1164847)) b!6389957))

(assert (= (and d!2002923 c!1164848) b!6389967))

(assert (= (and d!2002923 (not c!1164848)) b!6389962))

(assert (= (and b!6389962 c!1164846) b!6389959))

(assert (= (and b!6389962 (not c!1164846)) b!6389966))

(assert (= (and b!6389966 (not res!2628420)) b!6389963))

(assert (= (and b!6389963 res!2628422) b!6389965))

(assert (= (and b!6389965 res!2628426) b!6389960))

(assert (= (and b!6389960 res!2628419) b!6389956))

(assert (= (and b!6389963 (not res!2628423)) b!6389955))

(assert (= (and b!6389955 res!2628421) b!6389954))

(assert (= (and b!6389954 (not res!2628425)) b!6389961))

(assert (= (and b!6389961 (not res!2628424)) b!6389958))

(assert (= (or b!6389967 b!6389954 b!6389965) bm!546385))

(declare-fun m!7188784 () Bool)

(assert (=> b!6389956 m!7188784))

(assert (=> d!2002923 m!7188774))

(assert (=> d!2002923 m!7188310))

(declare-fun m!7188786 () Bool)

(assert (=> b!6389960 m!7188786))

(assert (=> b!6389960 m!7188786))

(declare-fun m!7188788 () Bool)

(assert (=> b!6389960 m!7188788))

(declare-fun m!7188790 () Bool)

(assert (=> b!6389964 m!7188790))

(assert (=> bm!546385 m!7188774))

(assert (=> b!6389957 m!7188784))

(assert (=> b!6389957 m!7188784))

(declare-fun m!7188792 () Bool)

(assert (=> b!6389957 m!7188792))

(assert (=> b!6389957 m!7188786))

(assert (=> b!6389957 m!7188792))

(assert (=> b!6389957 m!7188786))

(declare-fun m!7188794 () Bool)

(assert (=> b!6389957 m!7188794))

(assert (=> b!6389958 m!7188784))

(assert (=> b!6389961 m!7188786))

(assert (=> b!6389961 m!7188786))

(assert (=> b!6389961 m!7188788))

(assert (=> b!6389195 d!2002923))

(declare-fun d!2002931 () Bool)

(assert (=> d!2002931 (= (matchR!8490 r!7292 s!2326) (matchRSpec!3408 r!7292 s!2326))))

(declare-fun lt!2372504 () Unit!158559)

(declare-fun choose!47557 (Regex!16307 List!65222) Unit!158559)

(assert (=> d!2002931 (= lt!2372504 (choose!47557 r!7292 s!2326))))

(assert (=> d!2002931 (validRegex!8043 r!7292)))

(assert (=> d!2002931 (= (mainMatchTheorem!3408 r!7292 s!2326) lt!2372504)))

(declare-fun bs!1598990 () Bool)

(assert (= bs!1598990 d!2002931))

(assert (=> bs!1598990 m!7188198))

(assert (=> bs!1598990 m!7188196))

(declare-fun m!7188832 () Bool)

(assert (=> bs!1598990 m!7188832))

(assert (=> bs!1598990 m!7188310))

(assert (=> b!6389195 d!2002931))

(declare-fun d!2002949 () Bool)

(declare-fun lt!2372505 () Regex!16307)

(assert (=> d!2002949 (validRegex!8043 lt!2372505)))

(assert (=> d!2002949 (= lt!2372505 (generalisedUnion!2151 (unfocusZipperList!1728 (Cons!65097 lt!2372383 Nil!65097))))))

(assert (=> d!2002949 (= (unfocusZipper!2049 (Cons!65097 lt!2372383 Nil!65097)) lt!2372505)))

(declare-fun bs!1598991 () Bool)

(assert (= bs!1598991 d!2002949))

(declare-fun m!7188834 () Bool)

(assert (=> bs!1598991 m!7188834))

(declare-fun m!7188836 () Bool)

(assert (=> bs!1598991 m!7188836))

(assert (=> bs!1598991 m!7188836))

(declare-fun m!7188838 () Bool)

(assert (=> bs!1598991 m!7188838))

(assert (=> b!6389215 d!2002949))

(declare-fun d!2002951 () Bool)

(assert (=> d!2002951 (= (flatMap!1812 lt!2372393 lambda!352739) (dynLambda!25826 lambda!352739 lt!2372373))))

(declare-fun lt!2372506 () Unit!158559)

(assert (=> d!2002951 (= lt!2372506 (choose!47546 lt!2372393 lt!2372373 lambda!352739))))

(assert (=> d!2002951 (= lt!2372393 (store ((as const (Array Context!11382 Bool)) false) lt!2372373 true))))

(assert (=> d!2002951 (= (lemmaFlatMapOnSingletonSet!1338 lt!2372393 lt!2372373 lambda!352739) lt!2372506)))

(declare-fun b_lambda!242753 () Bool)

(assert (=> (not b_lambda!242753) (not d!2002951)))

(declare-fun bs!1598992 () Bool)

(assert (= bs!1598992 d!2002951))

(assert (=> bs!1598992 m!7188206))

(declare-fun m!7188840 () Bool)

(assert (=> bs!1598992 m!7188840))

(declare-fun m!7188842 () Bool)

(assert (=> bs!1598992 m!7188842))

(assert (=> bs!1598992 m!7188218))

(assert (=> b!6389215 d!2002951))

(declare-fun d!2002953 () Bool)

(assert (=> d!2002953 (= (flatMap!1812 lt!2372387 lambda!352739) (dynLambda!25826 lambda!352739 lt!2372383))))

(declare-fun lt!2372507 () Unit!158559)

(assert (=> d!2002953 (= lt!2372507 (choose!47546 lt!2372387 lt!2372383 lambda!352739))))

(assert (=> d!2002953 (= lt!2372387 (store ((as const (Array Context!11382 Bool)) false) lt!2372383 true))))

(assert (=> d!2002953 (= (lemmaFlatMapOnSingletonSet!1338 lt!2372387 lt!2372383 lambda!352739) lt!2372507)))

(declare-fun b_lambda!242755 () Bool)

(assert (=> (not b_lambda!242755) (not d!2002953)))

(declare-fun bs!1598993 () Bool)

(assert (= bs!1598993 d!2002953))

(assert (=> bs!1598993 m!7188220))

(declare-fun m!7188844 () Bool)

(assert (=> bs!1598993 m!7188844))

(declare-fun m!7188846 () Bool)

(assert (=> bs!1598993 m!7188846))

(assert (=> bs!1598993 m!7188212))

(assert (=> b!6389215 d!2002953))

(declare-fun d!2002955 () Bool)

(assert (=> d!2002955 (= (flatMap!1812 lt!2372393 lambda!352739) (choose!47545 lt!2372393 lambda!352739))))

(declare-fun bs!1598994 () Bool)

(assert (= bs!1598994 d!2002955))

(declare-fun m!7188848 () Bool)

(assert (=> bs!1598994 m!7188848))

(assert (=> b!6389215 d!2002955))

(declare-fun d!2002957 () Bool)

(assert (=> d!2002957 (= (flatMap!1812 lt!2372387 lambda!352739) (choose!47545 lt!2372387 lambda!352739))))

(declare-fun bs!1598995 () Bool)

(assert (= bs!1598995 d!2002957))

(declare-fun m!7188850 () Bool)

(assert (=> bs!1598995 m!7188850))

(assert (=> b!6389215 d!2002957))

(declare-fun b!6389987 () Bool)

(declare-fun e!3878496 () (InoxSet Context!11382))

(declare-fun call!546396 () (InoxSet Context!11382))

(assert (=> b!6389987 (= e!3878496 call!546396)))

(declare-fun b!6389988 () Bool)

(declare-fun e!3878498 () Bool)

(assert (=> b!6389988 (= e!3878498 (nullable!6300 (h!71544 (exprs!6191 lt!2372373))))))

(declare-fun b!6389989 () Bool)

(assert (=> b!6389989 (= e!3878496 ((as const (Array Context!11382 Bool)) false))))

(declare-fun e!3878497 () (InoxSet Context!11382))

(declare-fun b!6389990 () Bool)

(assert (=> b!6389990 (= e!3878497 ((_ map or) call!546396 (derivationStepZipperUp!1481 (Context!11383 (t!378826 (exprs!6191 lt!2372373))) (h!71546 s!2326))))))

(declare-fun bm!546391 () Bool)

(assert (=> bm!546391 (= call!546396 (derivationStepZipperDown!1555 (h!71544 (exprs!6191 lt!2372373)) (Context!11383 (t!378826 (exprs!6191 lt!2372373))) (h!71546 s!2326)))))

(declare-fun b!6389991 () Bool)

(assert (=> b!6389991 (= e!3878497 e!3878496)))

(declare-fun c!1164855 () Bool)

(assert (=> b!6389991 (= c!1164855 ((_ is Cons!65096) (exprs!6191 lt!2372373)))))

(declare-fun d!2002959 () Bool)

(declare-fun c!1164856 () Bool)

(assert (=> d!2002959 (= c!1164856 e!3878498)))

(declare-fun res!2628434 () Bool)

(assert (=> d!2002959 (=> (not res!2628434) (not e!3878498))))

(assert (=> d!2002959 (= res!2628434 ((_ is Cons!65096) (exprs!6191 lt!2372373)))))

(assert (=> d!2002959 (= (derivationStepZipperUp!1481 lt!2372373 (h!71546 s!2326)) e!3878497)))

(assert (= (and d!2002959 res!2628434) b!6389988))

(assert (= (and d!2002959 c!1164856) b!6389990))

(assert (= (and d!2002959 (not c!1164856)) b!6389991))

(assert (= (and b!6389991 c!1164855) b!6389987))

(assert (= (and b!6389991 (not c!1164855)) b!6389989))

(assert (= (or b!6389990 b!6389987) bm!546391))

(declare-fun m!7188852 () Bool)

(assert (=> b!6389988 m!7188852))

(declare-fun m!7188854 () Bool)

(assert (=> b!6389990 m!7188854))

(declare-fun m!7188856 () Bool)

(assert (=> bm!546391 m!7188856))

(assert (=> b!6389215 d!2002959))

(declare-fun b!6389992 () Bool)

(declare-fun e!3878499 () (InoxSet Context!11382))

(declare-fun call!546397 () (InoxSet Context!11382))

(assert (=> b!6389992 (= e!3878499 call!546397)))

(declare-fun b!6389993 () Bool)

(declare-fun e!3878501 () Bool)

(assert (=> b!6389993 (= e!3878501 (nullable!6300 (h!71544 (exprs!6191 lt!2372383))))))

(declare-fun b!6389994 () Bool)

(assert (=> b!6389994 (= e!3878499 ((as const (Array Context!11382 Bool)) false))))

(declare-fun e!3878500 () (InoxSet Context!11382))

(declare-fun b!6389995 () Bool)

(assert (=> b!6389995 (= e!3878500 ((_ map or) call!546397 (derivationStepZipperUp!1481 (Context!11383 (t!378826 (exprs!6191 lt!2372383))) (h!71546 s!2326))))))

(declare-fun bm!546392 () Bool)

(assert (=> bm!546392 (= call!546397 (derivationStepZipperDown!1555 (h!71544 (exprs!6191 lt!2372383)) (Context!11383 (t!378826 (exprs!6191 lt!2372383))) (h!71546 s!2326)))))

(declare-fun b!6389996 () Bool)

(assert (=> b!6389996 (= e!3878500 e!3878499)))

(declare-fun c!1164857 () Bool)

(assert (=> b!6389996 (= c!1164857 ((_ is Cons!65096) (exprs!6191 lt!2372383)))))

(declare-fun d!2002961 () Bool)

(declare-fun c!1164858 () Bool)

(assert (=> d!2002961 (= c!1164858 e!3878501)))

(declare-fun res!2628435 () Bool)

(assert (=> d!2002961 (=> (not res!2628435) (not e!3878501))))

(assert (=> d!2002961 (= res!2628435 ((_ is Cons!65096) (exprs!6191 lt!2372383)))))

(assert (=> d!2002961 (= (derivationStepZipperUp!1481 lt!2372383 (h!71546 s!2326)) e!3878500)))

(assert (= (and d!2002961 res!2628435) b!6389993))

(assert (= (and d!2002961 c!1164858) b!6389995))

(assert (= (and d!2002961 (not c!1164858)) b!6389996))

(assert (= (and b!6389996 c!1164857) b!6389992))

(assert (= (and b!6389996 (not c!1164857)) b!6389994))

(assert (= (or b!6389995 b!6389992) bm!546392))

(declare-fun m!7188858 () Bool)

(assert (=> b!6389993 m!7188858))

(declare-fun m!7188860 () Bool)

(assert (=> b!6389995 m!7188860))

(declare-fun m!7188862 () Bool)

(assert (=> bm!546392 m!7188862))

(assert (=> b!6389215 d!2002961))

(declare-fun d!2002963 () Bool)

(declare-fun lt!2372508 () Regex!16307)

(assert (=> d!2002963 (validRegex!8043 lt!2372508)))

(assert (=> d!2002963 (= lt!2372508 (generalisedUnion!2151 (unfocusZipperList!1728 (Cons!65097 lt!2372397 Nil!65097))))))

(assert (=> d!2002963 (= (unfocusZipper!2049 (Cons!65097 lt!2372397 Nil!65097)) lt!2372508)))

(declare-fun bs!1598996 () Bool)

(assert (= bs!1598996 d!2002963))

(declare-fun m!7188864 () Bool)

(assert (=> bs!1598996 m!7188864))

(declare-fun m!7188866 () Bool)

(assert (=> bs!1598996 m!7188866))

(assert (=> bs!1598996 m!7188866))

(declare-fun m!7188868 () Bool)

(assert (=> bs!1598996 m!7188868))

(assert (=> b!6389234 d!2002963))

(declare-fun b!6390021 () Bool)

(assert (=> b!6390021 true))

(declare-fun bs!1598997 () Bool)

(declare-fun b!6390023 () Bool)

(assert (= bs!1598997 (and b!6390023 b!6390021)))

(declare-fun lt!2372526 () Int)

(declare-fun lambda!352814 () Int)

(declare-fun lambda!352813 () Int)

(declare-fun lt!2372524 () Int)

(assert (=> bs!1598997 (= (= lt!2372524 lt!2372526) (= lambda!352814 lambda!352813))))

(assert (=> b!6390023 true))

(declare-fun d!2002965 () Bool)

(declare-fun e!3878517 () Bool)

(assert (=> d!2002965 e!3878517))

(declare-fun res!2628448 () Bool)

(assert (=> d!2002965 (=> (not res!2628448) (not e!3878517))))

(assert (=> d!2002965 (= res!2628448 (>= lt!2372524 0))))

(declare-fun e!3878516 () Int)

(assert (=> d!2002965 (= lt!2372524 e!3878516)))

(declare-fun c!1164871 () Bool)

(assert (=> d!2002965 (= c!1164871 ((_ is Cons!65097) zl!343))))

(assert (=> d!2002965 (= (zipperDepth!376 zl!343) lt!2372524)))

(assert (=> b!6390021 (= e!3878516 lt!2372526)))

(declare-fun contextDepth!265 (Context!11382) Int)

(assert (=> b!6390021 (= lt!2372526 (maxBigInt!0 (contextDepth!265 (h!71545 zl!343)) (zipperDepth!376 (t!378827 zl!343))))))

(declare-fun lambda!352812 () Int)

(declare-fun lt!2372523 () Unit!158559)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!249 (List!65221 Int Int Int) Unit!158559)

(assert (=> b!6390021 (= lt!2372523 (lemmaForallContextDepthBiggerThanTransitive!249 (t!378827 zl!343) lt!2372526 (zipperDepth!376 (t!378827 zl!343)) lambda!352812))))

(declare-fun forall!15489 (List!65221 Int) Bool)

(assert (=> b!6390021 (forall!15489 (t!378827 zl!343) lambda!352813)))

(declare-fun lt!2372525 () Unit!158559)

(assert (=> b!6390021 (= lt!2372525 lt!2372523)))

(declare-fun b!6390022 () Bool)

(assert (=> b!6390022 (= e!3878516 0)))

(assert (=> b!6390023 (= e!3878517 (forall!15489 zl!343 lambda!352814))))

(assert (= (and d!2002965 c!1164871) b!6390021))

(assert (= (and d!2002965 (not c!1164871)) b!6390022))

(assert (= (and d!2002965 res!2628448) b!6390023))

(declare-fun m!7188870 () Bool)

(assert (=> b!6390021 m!7188870))

(assert (=> b!6390021 m!7188870))

(declare-fun m!7188872 () Bool)

(assert (=> b!6390021 m!7188872))

(declare-fun m!7188874 () Bool)

(assert (=> b!6390021 m!7188874))

(declare-fun m!7188876 () Bool)

(assert (=> b!6390021 m!7188876))

(assert (=> b!6390021 m!7188870))

(declare-fun m!7188878 () Bool)

(assert (=> b!6390021 m!7188878))

(assert (=> b!6390021 m!7188876))

(declare-fun m!7188880 () Bool)

(assert (=> b!6390023 m!7188880))

(assert (=> b!6389213 d!2002965))

(declare-fun bs!1598998 () Bool)

(declare-fun b!6390035 () Bool)

(assert (= bs!1598998 (and b!6390035 b!6390021)))

(declare-fun lambda!352815 () Int)

(assert (=> bs!1598998 (= lambda!352815 lambda!352812)))

(declare-fun lambda!352816 () Int)

(declare-fun lt!2372533 () Int)

(assert (=> bs!1598998 (= (= lt!2372533 lt!2372526) (= lambda!352816 lambda!352813))))

(declare-fun bs!1598999 () Bool)

(assert (= bs!1598999 (and b!6390035 b!6390023)))

(assert (=> bs!1598999 (= (= lt!2372533 lt!2372524) (= lambda!352816 lambda!352814))))

(assert (=> b!6390035 true))

(declare-fun bs!1599000 () Bool)

(declare-fun b!6390037 () Bool)

(assert (= bs!1599000 (and b!6390037 b!6390021)))

(declare-fun lt!2372531 () Int)

(declare-fun lambda!352817 () Int)

(assert (=> bs!1599000 (= (= lt!2372531 lt!2372526) (= lambda!352817 lambda!352813))))

(declare-fun bs!1599001 () Bool)

(assert (= bs!1599001 (and b!6390037 b!6390023)))

(assert (=> bs!1599001 (= (= lt!2372531 lt!2372524) (= lambda!352817 lambda!352814))))

(declare-fun bs!1599002 () Bool)

(assert (= bs!1599002 (and b!6390037 b!6390035)))

(assert (=> bs!1599002 (= (= lt!2372531 lt!2372533) (= lambda!352817 lambda!352816))))

(assert (=> b!6390037 true))

(declare-fun d!2002967 () Bool)

(declare-fun e!3878524 () Bool)

(assert (=> d!2002967 e!3878524))

(declare-fun res!2628454 () Bool)

(assert (=> d!2002967 (=> (not res!2628454) (not e!3878524))))

(assert (=> d!2002967 (= res!2628454 (>= lt!2372531 0))))

(declare-fun e!3878523 () Int)

(assert (=> d!2002967 (= lt!2372531 e!3878523)))

(declare-fun c!1164874 () Bool)

(assert (=> d!2002967 (= c!1164874 ((_ is Cons!65097) (Cons!65097 lt!2372361 Nil!65097)))))

(assert (=> d!2002967 (= (zipperDepth!376 (Cons!65097 lt!2372361 Nil!65097)) lt!2372531)))

(assert (=> b!6390035 (= e!3878523 lt!2372533)))

(assert (=> b!6390035 (= lt!2372533 (maxBigInt!0 (contextDepth!265 (h!71545 (Cons!65097 lt!2372361 Nil!65097))) (zipperDepth!376 (t!378827 (Cons!65097 lt!2372361 Nil!65097)))))))

(declare-fun lt!2372530 () Unit!158559)

(assert (=> b!6390035 (= lt!2372530 (lemmaForallContextDepthBiggerThanTransitive!249 (t!378827 (Cons!65097 lt!2372361 Nil!65097)) lt!2372533 (zipperDepth!376 (t!378827 (Cons!65097 lt!2372361 Nil!65097))) lambda!352815))))

(assert (=> b!6390035 (forall!15489 (t!378827 (Cons!65097 lt!2372361 Nil!65097)) lambda!352816)))

(declare-fun lt!2372532 () Unit!158559)

(assert (=> b!6390035 (= lt!2372532 lt!2372530)))

(declare-fun b!6390036 () Bool)

(assert (=> b!6390036 (= e!3878523 0)))

(assert (=> b!6390037 (= e!3878524 (forall!15489 (Cons!65097 lt!2372361 Nil!65097) lambda!352817))))

(assert (= (and d!2002967 c!1164874) b!6390035))

(assert (= (and d!2002967 (not c!1164874)) b!6390036))

(assert (= (and d!2002967 res!2628454) b!6390037))

(declare-fun m!7188900 () Bool)

(assert (=> b!6390035 m!7188900))

(assert (=> b!6390035 m!7188900))

(declare-fun m!7188906 () Bool)

(assert (=> b!6390035 m!7188906))

(declare-fun m!7188910 () Bool)

(assert (=> b!6390035 m!7188910))

(declare-fun m!7188912 () Bool)

(assert (=> b!6390035 m!7188912))

(assert (=> b!6390035 m!7188900))

(declare-fun m!7188914 () Bool)

(assert (=> b!6390035 m!7188914))

(assert (=> b!6390035 m!7188912))

(declare-fun m!7188916 () Bool)

(assert (=> b!6390037 m!7188916))

(assert (=> b!6389213 d!2002967))

(assert (=> b!6389217 d!2002801))

(declare-fun d!2002971 () Bool)

(declare-fun nullableFct!2246 (Regex!16307) Bool)

(assert (=> d!2002971 (= (nullable!6300 (h!71544 (exprs!6191 (h!71545 zl!343)))) (nullableFct!2246 (h!71544 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun bs!1599004 () Bool)

(assert (= bs!1599004 d!2002971))

(declare-fun m!7188920 () Bool)

(assert (=> bs!1599004 m!7188920))

(assert (=> b!6389217 d!2002971))

(declare-fun b!6390038 () Bool)

(declare-fun e!3878525 () (InoxSet Context!11382))

(declare-fun call!546398 () (InoxSet Context!11382))

(assert (=> b!6390038 (= e!3878525 call!546398)))

(declare-fun b!6390039 () Bool)

(declare-fun e!3878527 () Bool)

(assert (=> b!6390039 (= e!3878527 (nullable!6300 (h!71544 (exprs!6191 (Context!11383 (Cons!65096 (h!71544 (exprs!6191 (h!71545 zl!343))) (t!378826 (exprs!6191 (h!71545 zl!343)))))))))))

(declare-fun b!6390040 () Bool)

(assert (=> b!6390040 (= e!3878525 ((as const (Array Context!11382 Bool)) false))))

(declare-fun b!6390041 () Bool)

(declare-fun e!3878526 () (InoxSet Context!11382))

(assert (=> b!6390041 (= e!3878526 ((_ map or) call!546398 (derivationStepZipperUp!1481 (Context!11383 (t!378826 (exprs!6191 (Context!11383 (Cons!65096 (h!71544 (exprs!6191 (h!71545 zl!343))) (t!378826 (exprs!6191 (h!71545 zl!343)))))))) (h!71546 s!2326))))))

(declare-fun bm!546393 () Bool)

(assert (=> bm!546393 (= call!546398 (derivationStepZipperDown!1555 (h!71544 (exprs!6191 (Context!11383 (Cons!65096 (h!71544 (exprs!6191 (h!71545 zl!343))) (t!378826 (exprs!6191 (h!71545 zl!343))))))) (Context!11383 (t!378826 (exprs!6191 (Context!11383 (Cons!65096 (h!71544 (exprs!6191 (h!71545 zl!343))) (t!378826 (exprs!6191 (h!71545 zl!343)))))))) (h!71546 s!2326)))))

(declare-fun b!6390042 () Bool)

(assert (=> b!6390042 (= e!3878526 e!3878525)))

(declare-fun c!1164875 () Bool)

(assert (=> b!6390042 (= c!1164875 ((_ is Cons!65096) (exprs!6191 (Context!11383 (Cons!65096 (h!71544 (exprs!6191 (h!71545 zl!343))) (t!378826 (exprs!6191 (h!71545 zl!343))))))))))

(declare-fun d!2002975 () Bool)

(declare-fun c!1164876 () Bool)

(assert (=> d!2002975 (= c!1164876 e!3878527)))

(declare-fun res!2628455 () Bool)

(assert (=> d!2002975 (=> (not res!2628455) (not e!3878527))))

(assert (=> d!2002975 (= res!2628455 ((_ is Cons!65096) (exprs!6191 (Context!11383 (Cons!65096 (h!71544 (exprs!6191 (h!71545 zl!343))) (t!378826 (exprs!6191 (h!71545 zl!343))))))))))

(assert (=> d!2002975 (= (derivationStepZipperUp!1481 (Context!11383 (Cons!65096 (h!71544 (exprs!6191 (h!71545 zl!343))) (t!378826 (exprs!6191 (h!71545 zl!343))))) (h!71546 s!2326)) e!3878526)))

(assert (= (and d!2002975 res!2628455) b!6390039))

(assert (= (and d!2002975 c!1164876) b!6390041))

(assert (= (and d!2002975 (not c!1164876)) b!6390042))

(assert (= (and b!6390042 c!1164875) b!6390038))

(assert (= (and b!6390042 (not c!1164875)) b!6390040))

(assert (= (or b!6390041 b!6390038) bm!546393))

(declare-fun m!7188922 () Bool)

(assert (=> b!6390039 m!7188922))

(declare-fun m!7188924 () Bool)

(assert (=> b!6390041 m!7188924))

(declare-fun m!7188926 () Bool)

(assert (=> bm!546393 m!7188926))

(assert (=> b!6389217 d!2002975))

(declare-fun d!2002977 () Bool)

(assert (=> d!2002977 (= (flatMap!1812 z!1189 lambda!352739) (choose!47545 z!1189 lambda!352739))))

(declare-fun bs!1599005 () Bool)

(assert (= bs!1599005 d!2002977))

(declare-fun m!7188928 () Bool)

(assert (=> bs!1599005 m!7188928))

(assert (=> b!6389217 d!2002977))

(declare-fun b!6390043 () Bool)

(declare-fun e!3878528 () (InoxSet Context!11382))

(declare-fun call!546399 () (InoxSet Context!11382))

(assert (=> b!6390043 (= e!3878528 call!546399)))

(declare-fun b!6390044 () Bool)

(declare-fun e!3878530 () Bool)

(assert (=> b!6390044 (= e!3878530 (nullable!6300 (h!71544 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun b!6390045 () Bool)

(assert (=> b!6390045 (= e!3878528 ((as const (Array Context!11382 Bool)) false))))

(declare-fun b!6390046 () Bool)

(declare-fun e!3878529 () (InoxSet Context!11382))

(assert (=> b!6390046 (= e!3878529 ((_ map or) call!546399 (derivationStepZipperUp!1481 (Context!11383 (t!378826 (exprs!6191 (h!71545 zl!343)))) (h!71546 s!2326))))))

(declare-fun bm!546394 () Bool)

(assert (=> bm!546394 (= call!546399 (derivationStepZipperDown!1555 (h!71544 (exprs!6191 (h!71545 zl!343))) (Context!11383 (t!378826 (exprs!6191 (h!71545 zl!343)))) (h!71546 s!2326)))))

(declare-fun b!6390047 () Bool)

(assert (=> b!6390047 (= e!3878529 e!3878528)))

(declare-fun c!1164877 () Bool)

(assert (=> b!6390047 (= c!1164877 ((_ is Cons!65096) (exprs!6191 (h!71545 zl!343))))))

(declare-fun d!2002979 () Bool)

(declare-fun c!1164878 () Bool)

(assert (=> d!2002979 (= c!1164878 e!3878530)))

(declare-fun res!2628456 () Bool)

(assert (=> d!2002979 (=> (not res!2628456) (not e!3878530))))

(assert (=> d!2002979 (= res!2628456 ((_ is Cons!65096) (exprs!6191 (h!71545 zl!343))))))

(assert (=> d!2002979 (= (derivationStepZipperUp!1481 (h!71545 zl!343) (h!71546 s!2326)) e!3878529)))

(assert (= (and d!2002979 res!2628456) b!6390044))

(assert (= (and d!2002979 c!1164878) b!6390046))

(assert (= (and d!2002979 (not c!1164878)) b!6390047))

(assert (= (and b!6390047 c!1164877) b!6390043))

(assert (= (and b!6390047 (not c!1164877)) b!6390045))

(assert (= (or b!6390046 b!6390043) bm!546394))

(assert (=> b!6390044 m!7188324))

(declare-fun m!7188930 () Bool)

(assert (=> b!6390046 m!7188930))

(declare-fun m!7188932 () Bool)

(assert (=> bm!546394 m!7188932))

(assert (=> b!6389217 d!2002979))

(declare-fun d!2002981 () Bool)

(declare-fun c!1164889 () Bool)

(assert (=> d!2002981 (= c!1164889 (and ((_ is ElementMatch!16307) (h!71544 (exprs!6191 (h!71545 zl!343)))) (= (c!1164602 (h!71544 (exprs!6191 (h!71545 zl!343)))) (h!71546 s!2326))))))

(declare-fun e!3878546 () (InoxSet Context!11382))

(assert (=> d!2002981 (= (derivationStepZipperDown!1555 (h!71544 (exprs!6191 (h!71545 zl!343))) lt!2372361 (h!71546 s!2326)) e!3878546)))

(declare-fun b!6390074 () Bool)

(declare-fun c!1164892 () Bool)

(declare-fun e!3878545 () Bool)

(assert (=> b!6390074 (= c!1164892 e!3878545)))

(declare-fun res!2628463 () Bool)

(assert (=> b!6390074 (=> (not res!2628463) (not e!3878545))))

(assert (=> b!6390074 (= res!2628463 ((_ is Concat!25152) (h!71544 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun e!3878548 () (InoxSet Context!11382))

(declare-fun e!3878547 () (InoxSet Context!11382))

(assert (=> b!6390074 (= e!3878548 e!3878547)))

(declare-fun b!6390075 () Bool)

(declare-fun c!1164891 () Bool)

(assert (=> b!6390075 (= c!1164891 ((_ is Star!16307) (h!71544 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun e!3878550 () (InoxSet Context!11382))

(declare-fun e!3878549 () (InoxSet Context!11382))

(assert (=> b!6390075 (= e!3878550 e!3878549)))

(declare-fun b!6390076 () Bool)

(declare-fun call!546414 () (InoxSet Context!11382))

(declare-fun call!546415 () (InoxSet Context!11382))

(assert (=> b!6390076 (= e!3878547 ((_ map or) call!546414 call!546415))))

(declare-fun c!1164893 () Bool)

(declare-fun c!1164890 () Bool)

(declare-fun call!546417 () List!65220)

(declare-fun call!546412 () (InoxSet Context!11382))

(declare-fun bm!546407 () Bool)

(assert (=> bm!546407 (= call!546412 (derivationStepZipperDown!1555 (ite c!1164890 (regTwo!33127 (h!71544 (exprs!6191 (h!71545 zl!343)))) (ite c!1164892 (regTwo!33126 (h!71544 (exprs!6191 (h!71545 zl!343)))) (ite c!1164893 (regOne!33126 (h!71544 (exprs!6191 (h!71545 zl!343)))) (reg!16636 (h!71544 (exprs!6191 (h!71545 zl!343))))))) (ite (or c!1164890 c!1164892) lt!2372361 (Context!11383 call!546417)) (h!71546 s!2326)))))

(declare-fun b!6390077 () Bool)

(assert (=> b!6390077 (= e!3878549 ((as const (Array Context!11382 Bool)) false))))

(declare-fun b!6390078 () Bool)

(assert (=> b!6390078 (= e!3878547 e!3878550)))

(assert (=> b!6390078 (= c!1164893 ((_ is Concat!25152) (h!71544 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun bm!546408 () Bool)

(declare-fun call!546416 () (InoxSet Context!11382))

(assert (=> bm!546408 (= call!546416 call!546415)))

(declare-fun b!6390079 () Bool)

(assert (=> b!6390079 (= e!3878549 call!546416)))

(declare-fun b!6390080 () Bool)

(assert (=> b!6390080 (= e!3878546 (store ((as const (Array Context!11382 Bool)) false) lt!2372361 true))))

(declare-fun b!6390081 () Bool)

(assert (=> b!6390081 (= e!3878546 e!3878548)))

(assert (=> b!6390081 (= c!1164890 ((_ is Union!16307) (h!71544 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun b!6390082 () Bool)

(assert (=> b!6390082 (= e!3878548 ((_ map or) call!546414 call!546412))))

(declare-fun bm!546409 () Bool)

(declare-fun call!546413 () List!65220)

(declare-fun $colon$colon!2168 (List!65220 Regex!16307) List!65220)

(assert (=> bm!546409 (= call!546413 ($colon$colon!2168 (exprs!6191 lt!2372361) (ite (or c!1164892 c!1164893) (regTwo!33126 (h!71544 (exprs!6191 (h!71545 zl!343)))) (h!71544 (exprs!6191 (h!71545 zl!343))))))))

(declare-fun b!6390083 () Bool)

(assert (=> b!6390083 (= e!3878550 call!546416)))

(declare-fun bm!546410 () Bool)

(assert (=> bm!546410 (= call!546415 call!546412)))

(declare-fun bm!546411 () Bool)

(assert (=> bm!546411 (= call!546417 call!546413)))

(declare-fun bm!546412 () Bool)

(assert (=> bm!546412 (= call!546414 (derivationStepZipperDown!1555 (ite c!1164890 (regOne!33127 (h!71544 (exprs!6191 (h!71545 zl!343)))) (regOne!33126 (h!71544 (exprs!6191 (h!71545 zl!343))))) (ite c!1164890 lt!2372361 (Context!11383 call!546413)) (h!71546 s!2326)))))

(declare-fun b!6390084 () Bool)

(assert (=> b!6390084 (= e!3878545 (nullable!6300 (regOne!33126 (h!71544 (exprs!6191 (h!71545 zl!343))))))))

(assert (= (and d!2002981 c!1164889) b!6390080))

(assert (= (and d!2002981 (not c!1164889)) b!6390081))

(assert (= (and b!6390081 c!1164890) b!6390082))

(assert (= (and b!6390081 (not c!1164890)) b!6390074))

(assert (= (and b!6390074 res!2628463) b!6390084))

(assert (= (and b!6390074 c!1164892) b!6390076))

(assert (= (and b!6390074 (not c!1164892)) b!6390078))

(assert (= (and b!6390078 c!1164893) b!6390083))

(assert (= (and b!6390078 (not c!1164893)) b!6390075))

(assert (= (and b!6390075 c!1164891) b!6390079))

(assert (= (and b!6390075 (not c!1164891)) b!6390077))

(assert (= (or b!6390083 b!6390079) bm!546411))

(assert (= (or b!6390083 b!6390079) bm!546408))

(assert (= (or b!6390076 bm!546411) bm!546409))

(assert (= (or b!6390076 bm!546408) bm!546410))

(assert (= (or b!6390082 bm!546410) bm!546407))

(assert (= (or b!6390082 b!6390076) bm!546412))

(declare-fun m!7188938 () Bool)

(assert (=> bm!546407 m!7188938))

(declare-fun m!7188940 () Bool)

(assert (=> bm!546409 m!7188940))

(declare-fun m!7188942 () Bool)

(assert (=> bm!546412 m!7188942))

(assert (=> b!6390080 m!7188226))

(declare-fun m!7188944 () Bool)

(assert (=> b!6390084 m!7188944))

(assert (=> b!6389217 d!2002981))

(declare-fun d!2002985 () Bool)

(assert (=> d!2002985 (= (flatMap!1812 z!1189 lambda!352739) (dynLambda!25826 lambda!352739 (h!71545 zl!343)))))

(declare-fun lt!2372537 () Unit!158559)

(assert (=> d!2002985 (= lt!2372537 (choose!47546 z!1189 (h!71545 zl!343) lambda!352739))))

(assert (=> d!2002985 (= z!1189 (store ((as const (Array Context!11382 Bool)) false) (h!71545 zl!343) true))))

(assert (=> d!2002985 (= (lemmaFlatMapOnSingletonSet!1338 z!1189 (h!71545 zl!343) lambda!352739) lt!2372537)))

(declare-fun b_lambda!242757 () Bool)

(assert (=> (not b_lambda!242757) (not d!2002985)))

(declare-fun bs!1599013 () Bool)

(assert (= bs!1599013 d!2002985))

(assert (=> bs!1599013 m!7188326))

(declare-fun m!7188946 () Bool)

(assert (=> bs!1599013 m!7188946))

(declare-fun m!7188948 () Bool)

(assert (=> bs!1599013 m!7188948))

(declare-fun m!7188950 () Bool)

(assert (=> bs!1599013 m!7188950))

(assert (=> b!6389217 d!2002985))

(declare-fun d!2002987 () Bool)

(declare-fun c!1164894 () Bool)

(assert (=> d!2002987 (= c!1164894 (isEmpty!37238 s!2326))))

(declare-fun e!3878551 () Bool)

(assert (=> d!2002987 (= (matchZipper!2319 lt!2372375 s!2326) e!3878551)))

(declare-fun b!6390085 () Bool)

(assert (=> b!6390085 (= e!3878551 (nullableZipper!2071 lt!2372375))))

(declare-fun b!6390086 () Bool)

(assert (=> b!6390086 (= e!3878551 (matchZipper!2319 (derivationStepZipper!2273 lt!2372375 (head!13104 s!2326)) (tail!12189 s!2326)))))

(assert (= (and d!2002987 c!1164894) b!6390085))

(assert (= (and d!2002987 (not c!1164894)) b!6390086))

(assert (=> d!2002987 m!7188774))

(declare-fun m!7188952 () Bool)

(assert (=> b!6390085 m!7188952))

(assert (=> b!6390086 m!7188784))

(assert (=> b!6390086 m!7188784))

(declare-fun m!7188954 () Bool)

(assert (=> b!6390086 m!7188954))

(assert (=> b!6390086 m!7188786))

(assert (=> b!6390086 m!7188954))

(assert (=> b!6390086 m!7188786))

(declare-fun m!7188956 () Bool)

(assert (=> b!6390086 m!7188956))

(assert (=> b!6389198 d!2002987))

(declare-fun d!2002989 () Bool)

(declare-fun c!1164895 () Bool)

(assert (=> d!2002989 (= c!1164895 (isEmpty!37238 (t!378828 s!2326)))))

(declare-fun e!3878552 () Bool)

(assert (=> d!2002989 (= (matchZipper!2319 lt!2372368 (t!378828 s!2326)) e!3878552)))

(declare-fun b!6390087 () Bool)

(assert (=> b!6390087 (= e!3878552 (nullableZipper!2071 lt!2372368))))

(declare-fun b!6390088 () Bool)

(assert (=> b!6390088 (= e!3878552 (matchZipper!2319 (derivationStepZipper!2273 lt!2372368 (head!13104 (t!378828 s!2326))) (tail!12189 (t!378828 s!2326))))))

(assert (= (and d!2002989 c!1164895) b!6390087))

(assert (= (and d!2002989 (not c!1164895)) b!6390088))

(assert (=> d!2002989 m!7188364))

(declare-fun m!7188958 () Bool)

(assert (=> b!6390087 m!7188958))

(assert (=> b!6390088 m!7188368))

(assert (=> b!6390088 m!7188368))

(declare-fun m!7188960 () Bool)

(assert (=> b!6390088 m!7188960))

(assert (=> b!6390088 m!7188372))

(assert (=> b!6390088 m!7188960))

(assert (=> b!6390088 m!7188372))

(declare-fun m!7188962 () Bool)

(assert (=> b!6390088 m!7188962))

(assert (=> b!6389198 d!2002989))

(declare-fun d!2002991 () Bool)

(assert (=> d!2002991 (= (nullable!6300 (regOne!33126 (regOne!33126 r!7292))) (nullableFct!2246 (regOne!33126 (regOne!33126 r!7292))))))

(declare-fun bs!1599014 () Bool)

(assert (= bs!1599014 d!2002991))

(declare-fun m!7188964 () Bool)

(assert (=> bs!1599014 m!7188964))

(assert (=> b!6389196 d!2002991))

(declare-fun bs!1599015 () Bool)

(declare-fun d!2002993 () Bool)

(assert (= bs!1599015 (and d!2002993 d!2002873)))

(declare-fun lambda!352823 () Int)

(assert (=> bs!1599015 (= lambda!352823 lambda!352780)))

(declare-fun bs!1599016 () Bool)

(assert (= bs!1599016 (and d!2002993 d!2002881)))

(assert (=> bs!1599016 (= lambda!352823 lambda!352783)))

(declare-fun bs!1599017 () Bool)

(assert (= bs!1599017 (and d!2002993 d!2002901)))

(assert (=> bs!1599017 (= lambda!352823 lambda!352795)))

(declare-fun b!6390093 () Bool)

(declare-fun e!3878559 () Bool)

(declare-fun lt!2372540 () Regex!16307)

(assert (=> b!6390093 (= e!3878559 (isEmptyExpr!1708 lt!2372540))))

(declare-fun b!6390094 () Bool)

(declare-fun e!3878556 () Regex!16307)

(assert (=> b!6390094 (= e!3878556 EmptyExpr!16307)))

(declare-fun b!6390095 () Bool)

(declare-fun e!3878555 () Regex!16307)

(assert (=> b!6390095 (= e!3878555 (h!71544 (exprs!6191 (h!71545 zl!343))))))

(declare-fun b!6390096 () Bool)

(assert (=> b!6390096 (= e!3878555 e!3878556)))

(declare-fun c!1164899 () Bool)

(assert (=> b!6390096 (= c!1164899 ((_ is Cons!65096) (exprs!6191 (h!71545 zl!343))))))

(declare-fun b!6390097 () Bool)

(declare-fun e!3878558 () Bool)

(assert (=> b!6390097 (= e!3878559 e!3878558)))

(declare-fun c!1164897 () Bool)

(assert (=> b!6390097 (= c!1164897 (isEmpty!37236 (tail!12190 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun b!6390098 () Bool)

(assert (=> b!6390098 (= e!3878558 (= lt!2372540 (head!13105 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun b!6390099 () Bool)

(declare-fun e!3878560 () Bool)

(assert (=> b!6390099 (= e!3878560 e!3878559)))

(declare-fun c!1164896 () Bool)

(assert (=> b!6390099 (= c!1164896 (isEmpty!37236 (exprs!6191 (h!71545 zl!343))))))

(assert (=> d!2002993 e!3878560))

(declare-fun res!2628466 () Bool)

(assert (=> d!2002993 (=> (not res!2628466) (not e!3878560))))

(assert (=> d!2002993 (= res!2628466 (validRegex!8043 lt!2372540))))

(assert (=> d!2002993 (= lt!2372540 e!3878555)))

(declare-fun c!1164898 () Bool)

(declare-fun e!3878557 () Bool)

(assert (=> d!2002993 (= c!1164898 e!3878557)))

(declare-fun res!2628469 () Bool)

(assert (=> d!2002993 (=> (not res!2628469) (not e!3878557))))

(assert (=> d!2002993 (= res!2628469 ((_ is Cons!65096) (exprs!6191 (h!71545 zl!343))))))

(assert (=> d!2002993 (forall!15486 (exprs!6191 (h!71545 zl!343)) lambda!352823)))

(assert (=> d!2002993 (= (generalisedConcat!1904 (exprs!6191 (h!71545 zl!343))) lt!2372540)))

(declare-fun b!6390100 () Bool)

(assert (=> b!6390100 (= e!3878557 (isEmpty!37236 (t!378826 (exprs!6191 (h!71545 zl!343)))))))

(declare-fun b!6390101 () Bool)

(assert (=> b!6390101 (= e!3878556 (Concat!25152 (h!71544 (exprs!6191 (h!71545 zl!343))) (generalisedConcat!1904 (t!378826 (exprs!6191 (h!71545 zl!343))))))))

(declare-fun b!6390102 () Bool)

(assert (=> b!6390102 (= e!3878558 (isConcat!1231 lt!2372540))))

(assert (= (and d!2002993 res!2628469) b!6390100))

(assert (= (and d!2002993 c!1164898) b!6390095))

(assert (= (and d!2002993 (not c!1164898)) b!6390096))

(assert (= (and b!6390096 c!1164899) b!6390101))

(assert (= (and b!6390096 (not c!1164899)) b!6390094))

(assert (= (and d!2002993 res!2628466) b!6390099))

(assert (= (and b!6390099 c!1164896) b!6390093))

(assert (= (and b!6390099 (not c!1164896)) b!6390097))

(assert (= (and b!6390097 c!1164897) b!6390098))

(assert (= (and b!6390097 (not c!1164897)) b!6390102))

(declare-fun m!7188966 () Bool)

(assert (=> d!2002993 m!7188966))

(declare-fun m!7188968 () Bool)

(assert (=> d!2002993 m!7188968))

(declare-fun m!7188970 () Bool)

(assert (=> b!6390093 m!7188970))

(declare-fun m!7188972 () Bool)

(assert (=> b!6390097 m!7188972))

(assert (=> b!6390097 m!7188972))

(declare-fun m!7188974 () Bool)

(assert (=> b!6390097 m!7188974))

(declare-fun m!7188976 () Bool)

(assert (=> b!6390102 m!7188976))

(assert (=> b!6390101 m!7188298))

(declare-fun m!7188978 () Bool)

(assert (=> b!6390098 m!7188978))

(assert (=> b!6390100 m!7188236))

(declare-fun m!7188980 () Bool)

(assert (=> b!6390099 m!7188980))

(assert (=> b!6389216 d!2002993))

(declare-fun d!2002995 () Bool)

(declare-fun lt!2372541 () Regex!16307)

(assert (=> d!2002995 (validRegex!8043 lt!2372541)))

(assert (=> d!2002995 (= lt!2372541 (generalisedUnion!2151 (unfocusZipperList!1728 zl!343)))))

(assert (=> d!2002995 (= (unfocusZipper!2049 zl!343) lt!2372541)))

(declare-fun bs!1599018 () Bool)

(assert (= bs!1599018 d!2002995))

(declare-fun m!7188982 () Bool)

(assert (=> bs!1599018 m!7188982))

(assert (=> bs!1599018 m!7188244))

(assert (=> bs!1599018 m!7188244))

(assert (=> bs!1599018 m!7188246))

(assert (=> b!6389197 d!2002995))

(declare-fun b!6390103 () Bool)

(declare-fun e!3878563 () Bool)

(declare-fun lt!2372542 () Option!16198)

(assert (=> b!6390103 (= e!3878563 (= (++!14375 (_1!36589 (get!22544 lt!2372542)) (_2!36589 (get!22544 lt!2372542))) s!2326))))

(declare-fun b!6390104 () Bool)

(declare-fun e!3878565 () Option!16198)

(assert (=> b!6390104 (= e!3878565 (Some!16197 (tuple2!66573 Nil!65098 s!2326)))))

(declare-fun b!6390105 () Bool)

(declare-fun e!3878562 () Option!16198)

(assert (=> b!6390105 (= e!3878565 e!3878562)))

(declare-fun c!1164900 () Bool)

(assert (=> b!6390105 (= c!1164900 ((_ is Nil!65098) s!2326))))

(declare-fun d!2002997 () Bool)

(declare-fun e!3878561 () Bool)

(assert (=> d!2002997 e!3878561))

(declare-fun res!2628472 () Bool)

(assert (=> d!2002997 (=> res!2628472 e!3878561)))

(assert (=> d!2002997 (= res!2628472 e!3878563)))

(declare-fun res!2628470 () Bool)

(assert (=> d!2002997 (=> (not res!2628470) (not e!3878563))))

(assert (=> d!2002997 (= res!2628470 (isDefined!12901 lt!2372542))))

(assert (=> d!2002997 (= lt!2372542 e!3878565)))

(declare-fun c!1164901 () Bool)

(declare-fun e!3878564 () Bool)

(assert (=> d!2002997 (= c!1164901 e!3878564)))

(declare-fun res!2628473 () Bool)

(assert (=> d!2002997 (=> (not res!2628473) (not e!3878564))))

(assert (=> d!2002997 (= res!2628473 (matchR!8490 lt!2372394 Nil!65098))))

(assert (=> d!2002997 (validRegex!8043 lt!2372394)))

(assert (=> d!2002997 (= (findConcatSeparation!2612 lt!2372394 (regTwo!33126 r!7292) Nil!65098 s!2326 s!2326) lt!2372542)))

(declare-fun b!6390106 () Bool)

(assert (=> b!6390106 (= e!3878562 None!16197)))

(declare-fun b!6390107 () Bool)

(declare-fun res!2628474 () Bool)

(assert (=> b!6390107 (=> (not res!2628474) (not e!3878563))))

(assert (=> b!6390107 (= res!2628474 (matchR!8490 lt!2372394 (_1!36589 (get!22544 lt!2372542))))))

(declare-fun b!6390108 () Bool)

(declare-fun res!2628471 () Bool)

(assert (=> b!6390108 (=> (not res!2628471) (not e!3878563))))

(assert (=> b!6390108 (= res!2628471 (matchR!8490 (regTwo!33126 r!7292) (_2!36589 (get!22544 lt!2372542))))))

(declare-fun b!6390109 () Bool)

(assert (=> b!6390109 (= e!3878561 (not (isDefined!12901 lt!2372542)))))

(declare-fun b!6390110 () Bool)

(declare-fun lt!2372544 () Unit!158559)

(declare-fun lt!2372543 () Unit!158559)

(assert (=> b!6390110 (= lt!2372544 lt!2372543)))

(assert (=> b!6390110 (= (++!14375 (++!14375 Nil!65098 (Cons!65098 (h!71546 s!2326) Nil!65098)) (t!378828 s!2326)) s!2326)))

(assert (=> b!6390110 (= lt!2372543 (lemmaMoveElementToOtherListKeepsConcatEq!2469 Nil!65098 (h!71546 s!2326) (t!378828 s!2326) s!2326))))

(assert (=> b!6390110 (= e!3878562 (findConcatSeparation!2612 lt!2372394 (regTwo!33126 r!7292) (++!14375 Nil!65098 (Cons!65098 (h!71546 s!2326) Nil!65098)) (t!378828 s!2326) s!2326))))

(declare-fun b!6390111 () Bool)

(assert (=> b!6390111 (= e!3878564 (matchR!8490 (regTwo!33126 r!7292) s!2326))))

(assert (= (and d!2002997 res!2628473) b!6390111))

(assert (= (and d!2002997 c!1164901) b!6390104))

(assert (= (and d!2002997 (not c!1164901)) b!6390105))

(assert (= (and b!6390105 c!1164900) b!6390106))

(assert (= (and b!6390105 (not c!1164900)) b!6390110))

(assert (= (and d!2002997 res!2628470) b!6390107))

(assert (= (and b!6390107 res!2628474) b!6390108))

(assert (= (and b!6390108 res!2628471) b!6390103))

(assert (= (and d!2002997 (not res!2628472)) b!6390109))

(declare-fun m!7188984 () Bool)

(assert (=> b!6390103 m!7188984))

(declare-fun m!7188986 () Bool)

(assert (=> b!6390103 m!7188986))

(declare-fun m!7188988 () Bool)

(assert (=> d!2002997 m!7188988))

(declare-fun m!7188990 () Bool)

(assert (=> d!2002997 m!7188990))

(assert (=> d!2002997 m!7188350))

(assert (=> b!6390111 m!7188452))

(assert (=> b!6390110 m!7188454))

(assert (=> b!6390110 m!7188454))

(assert (=> b!6390110 m!7188462))

(assert (=> b!6390110 m!7188468))

(assert (=> b!6390110 m!7188454))

(declare-fun m!7188992 () Bool)

(assert (=> b!6390110 m!7188992))

(assert (=> b!6390108 m!7188984))

(declare-fun m!7188994 () Bool)

(assert (=> b!6390108 m!7188994))

(assert (=> b!6390109 m!7188988))

(assert (=> b!6390107 m!7188984))

(declare-fun m!7188996 () Bool)

(assert (=> b!6390107 m!7188996))

(assert (=> b!6389199 d!2002997))

(declare-fun d!2002999 () Bool)

(assert (=> d!2002999 (= (Exists!3377 lambda!352740) (choose!47553 lambda!352740))))

(declare-fun bs!1599019 () Bool)

(assert (= bs!1599019 d!2002999))

(declare-fun m!7188998 () Bool)

(assert (=> bs!1599019 m!7188998))

(assert (=> b!6389199 d!2002999))

(declare-fun d!2003001 () Bool)

(assert (=> d!2003001 (= (isDefined!12901 lt!2372398) (not (isEmpty!37239 lt!2372398)))))

(declare-fun bs!1599020 () Bool)

(assert (= bs!1599020 d!2003001))

(declare-fun m!7189000 () Bool)

(assert (=> bs!1599020 m!7189000))

(assert (=> b!6389199 d!2003001))

(declare-fun d!2003003 () Bool)

(assert (=> d!2003003 (= (get!22544 lt!2372398) (v!52366 lt!2372398))))

(assert (=> b!6389199 d!2003003))

(declare-fun bs!1599025 () Bool)

(declare-fun d!2003005 () Bool)

(assert (= bs!1599025 (and d!2003005 b!6389199)))

(declare-fun lambda!352827 () Int)

(assert (=> bs!1599025 (not (= lambda!352827 lambda!352741))))

(declare-fun bs!1599027 () Bool)

(assert (= bs!1599027 (and d!2003005 b!6389933)))

(assert (=> bs!1599027 (not (= lambda!352827 lambda!352804))))

(declare-fun bs!1599029 () Bool)

(assert (= bs!1599029 (and d!2003005 b!6389208)))

(assert (=> bs!1599029 (not (= lambda!352827 lambda!352738))))

(assert (=> bs!1599029 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352827 lambda!352737))))

(declare-fun bs!1599031 () Bool)

(assert (= bs!1599031 (and d!2003005 d!2002845)))

(assert (=> bs!1599031 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352827 lambda!352761))))

(assert (=> bs!1599031 (not (= lambda!352827 lambda!352762))))

(declare-fun bs!1599032 () Bool)

(assert (= bs!1599032 (and d!2003005 d!2002815)))

(assert (=> bs!1599032 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352827 lambda!352751))))

(declare-fun bs!1599033 () Bool)

(assert (= bs!1599033 (and d!2003005 b!6389931)))

(assert (=> bs!1599033 (not (= lambda!352827 lambda!352803))))

(assert (=> bs!1599025 (= lambda!352827 lambda!352740)))

(assert (=> d!2003005 true))

(assert (=> d!2003005 true))

(assert (=> d!2003005 true))

(assert (=> d!2003005 (= (isDefined!12901 (findConcatSeparation!2612 lt!2372394 (regTwo!33126 r!7292) Nil!65098 s!2326 s!2326)) (Exists!3377 lambda!352827))))

(declare-fun lt!2372546 () Unit!158559)

(assert (=> d!2003005 (= lt!2372546 (choose!47550 lt!2372394 (regTwo!33126 r!7292) s!2326))))

(assert (=> d!2003005 (validRegex!8043 lt!2372394)))

(assert (=> d!2003005 (= (lemmaFindConcatSeparationEquivalentToExists!2376 lt!2372394 (regTwo!33126 r!7292) s!2326) lt!2372546)))

(declare-fun bs!1599034 () Bool)

(assert (= bs!1599034 d!2003005))

(assert (=> bs!1599034 m!7188266))

(declare-fun m!7189002 () Bool)

(assert (=> bs!1599034 m!7189002))

(assert (=> bs!1599034 m!7188350))

(assert (=> bs!1599034 m!7188266))

(declare-fun m!7189004 () Bool)

(assert (=> bs!1599034 m!7189004))

(declare-fun m!7189006 () Bool)

(assert (=> bs!1599034 m!7189006))

(assert (=> b!6389199 d!2003005))

(declare-fun d!2003007 () Bool)

(assert (=> d!2003007 (= (Exists!3377 lambda!352741) (choose!47553 lambda!352741))))

(declare-fun bs!1599036 () Bool)

(assert (= bs!1599036 d!2003007))

(declare-fun m!7189008 () Bool)

(assert (=> bs!1599036 m!7189008))

(assert (=> b!6389199 d!2003007))

(declare-fun b!6390126 () Bool)

(declare-fun res!2628484 () Bool)

(declare-fun e!3878572 () Bool)

(assert (=> b!6390126 (=> (not res!2628484) (not e!3878572))))

(declare-fun lt!2372550 () List!65222)

(declare-fun size!40365 (List!65222) Int)

(assert (=> b!6390126 (= res!2628484 (= (size!40365 lt!2372550) (+ (size!40365 (_1!36589 lt!2372384)) (size!40365 (_2!36589 lt!2372384)))))))

(declare-fun b!6390124 () Bool)

(declare-fun e!3878573 () List!65222)

(assert (=> b!6390124 (= e!3878573 (_2!36589 lt!2372384))))

(declare-fun b!6390127 () Bool)

(assert (=> b!6390127 (= e!3878572 (or (not (= (_2!36589 lt!2372384) Nil!65098)) (= lt!2372550 (_1!36589 lt!2372384))))))

(declare-fun b!6390125 () Bool)

(assert (=> b!6390125 (= e!3878573 (Cons!65098 (h!71546 (_1!36589 lt!2372384)) (++!14375 (t!378828 (_1!36589 lt!2372384)) (_2!36589 lt!2372384))))))

(declare-fun d!2003009 () Bool)

(assert (=> d!2003009 e!3878572))

(declare-fun res!2628483 () Bool)

(assert (=> d!2003009 (=> (not res!2628483) (not e!3878572))))

(declare-fun content!12328 (List!65222) (InoxSet C!32884))

(assert (=> d!2003009 (= res!2628483 (= (content!12328 lt!2372550) ((_ map or) (content!12328 (_1!36589 lt!2372384)) (content!12328 (_2!36589 lt!2372384)))))))

(assert (=> d!2003009 (= lt!2372550 e!3878573)))

(declare-fun c!1164904 () Bool)

(assert (=> d!2003009 (= c!1164904 ((_ is Nil!65098) (_1!36589 lt!2372384)))))

(assert (=> d!2003009 (= (++!14375 (_1!36589 lt!2372384) (_2!36589 lt!2372384)) lt!2372550)))

(assert (= (and d!2003009 c!1164904) b!6390124))

(assert (= (and d!2003009 (not c!1164904)) b!6390125))

(assert (= (and d!2003009 res!2628483) b!6390126))

(assert (= (and b!6390126 res!2628484) b!6390127))

(declare-fun m!7189032 () Bool)

(assert (=> b!6390126 m!7189032))

(declare-fun m!7189034 () Bool)

(assert (=> b!6390126 m!7189034))

(declare-fun m!7189036 () Bool)

(assert (=> b!6390126 m!7189036))

(declare-fun m!7189040 () Bool)

(assert (=> b!6390125 m!7189040))

(declare-fun m!7189042 () Bool)

(assert (=> d!2003009 m!7189042))

(declare-fun m!7189044 () Bool)

(assert (=> d!2003009 m!7189044))

(declare-fun m!7189046 () Bool)

(assert (=> d!2003009 m!7189046))

(assert (=> b!6389199 d!2003009))

(declare-fun bs!1599056 () Bool)

(declare-fun d!2003025 () Bool)

(assert (= bs!1599056 (and d!2003025 b!6389199)))

(declare-fun lambda!352831 () Int)

(assert (=> bs!1599056 (not (= lambda!352831 lambda!352741))))

(declare-fun bs!1599057 () Bool)

(assert (= bs!1599057 (and d!2003025 b!6389933)))

(assert (=> bs!1599057 (not (= lambda!352831 lambda!352804))))

(declare-fun bs!1599058 () Bool)

(assert (= bs!1599058 (and d!2003025 b!6389208)))

(assert (=> bs!1599058 (not (= lambda!352831 lambda!352738))))

(assert (=> bs!1599058 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352831 lambda!352737))))

(declare-fun bs!1599061 () Bool)

(assert (= bs!1599061 (and d!2003025 d!2003005)))

(assert (=> bs!1599061 (= lambda!352831 lambda!352827)))

(declare-fun bs!1599063 () Bool)

(assert (= bs!1599063 (and d!2003025 d!2002845)))

(assert (=> bs!1599063 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352831 lambda!352761))))

(assert (=> bs!1599063 (not (= lambda!352831 lambda!352762))))

(declare-fun bs!1599065 () Bool)

(assert (= bs!1599065 (and d!2003025 d!2002815)))

(assert (=> bs!1599065 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352831 lambda!352751))))

(declare-fun bs!1599067 () Bool)

(assert (= bs!1599067 (and d!2003025 b!6389931)))

(assert (=> bs!1599067 (not (= lambda!352831 lambda!352803))))

(assert (=> bs!1599056 (= lambda!352831 lambda!352740)))

(assert (=> d!2003025 true))

(assert (=> d!2003025 true))

(assert (=> d!2003025 true))

(declare-fun lambda!352833 () Int)

(assert (=> bs!1599056 (= lambda!352833 lambda!352741)))

(assert (=> bs!1599057 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352833 lambda!352804))))

(assert (=> bs!1599058 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352833 lambda!352738))))

(assert (=> bs!1599058 (not (= lambda!352833 lambda!352737))))

(assert (=> bs!1599061 (not (= lambda!352833 lambda!352827))))

(assert (=> bs!1599063 (not (= lambda!352833 lambda!352761))))

(declare-fun bs!1599072 () Bool)

(assert (= bs!1599072 d!2003025))

(assert (=> bs!1599072 (not (= lambda!352833 lambda!352831))))

(assert (=> bs!1599063 (= (= lt!2372394 (regOne!33126 r!7292)) (= lambda!352833 lambda!352762))))

(assert (=> bs!1599065 (not (= lambda!352833 lambda!352751))))

(assert (=> bs!1599067 (not (= lambda!352833 lambda!352803))))

(assert (=> bs!1599056 (not (= lambda!352833 lambda!352740))))

(assert (=> d!2003025 true))

(assert (=> d!2003025 true))

(assert (=> d!2003025 true))

(assert (=> d!2003025 (= (Exists!3377 lambda!352831) (Exists!3377 lambda!352833))))

(declare-fun lt!2372551 () Unit!158559)

(assert (=> d!2003025 (= lt!2372551 (choose!47554 lt!2372394 (regTwo!33126 r!7292) s!2326))))

(assert (=> d!2003025 (validRegex!8043 lt!2372394)))

(assert (=> d!2003025 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1914 lt!2372394 (regTwo!33126 r!7292) s!2326) lt!2372551)))

(declare-fun m!7189048 () Bool)

(assert (=> bs!1599072 m!7189048))

(declare-fun m!7189050 () Bool)

(assert (=> bs!1599072 m!7189050))

(declare-fun m!7189052 () Bool)

(assert (=> bs!1599072 m!7189052))

(assert (=> bs!1599072 m!7188350))

(assert (=> b!6389199 d!2003025))

(declare-fun b!6390128 () Bool)

(declare-fun e!3878579 () Bool)

(declare-fun e!3878576 () Bool)

(assert (=> b!6390128 (= e!3878579 e!3878576)))

(declare-fun c!1164906 () Bool)

(assert (=> b!6390128 (= c!1164906 ((_ is Star!16307) lt!2372365))))

(declare-fun b!6390129 () Bool)

(declare-fun e!3878574 () Bool)

(declare-fun call!546420 () Bool)

(assert (=> b!6390129 (= e!3878574 call!546420)))

(declare-fun b!6390130 () Bool)

(declare-fun e!3878577 () Bool)

(declare-fun call!546418 () Bool)

(assert (=> b!6390130 (= e!3878577 call!546418)))

(declare-fun b!6390132 () Bool)

(declare-fun e!3878580 () Bool)

(assert (=> b!6390132 (= e!3878576 e!3878580)))

(declare-fun c!1164905 () Bool)

(assert (=> b!6390132 (= c!1164905 ((_ is Union!16307) lt!2372365))))

(declare-fun bm!546413 () Bool)

(assert (=> bm!546413 (= call!546418 (validRegex!8043 (ite c!1164906 (reg!16636 lt!2372365) (ite c!1164905 (regTwo!33127 lt!2372365) (regTwo!33126 lt!2372365)))))))

(declare-fun b!6390133 () Bool)

(assert (=> b!6390133 (= e!3878576 e!3878577)))

(declare-fun res!2628487 () Bool)

(assert (=> b!6390133 (= res!2628487 (not (nullable!6300 (reg!16636 lt!2372365))))))

(assert (=> b!6390133 (=> (not res!2628487) (not e!3878577))))

(declare-fun b!6390134 () Bool)

(declare-fun res!2628486 () Bool)

(declare-fun e!3878575 () Bool)

(assert (=> b!6390134 (=> res!2628486 e!3878575)))

(assert (=> b!6390134 (= res!2628486 (not ((_ is Concat!25152) lt!2372365)))))

(assert (=> b!6390134 (= e!3878580 e!3878575)))

(declare-fun bm!546414 () Bool)

(assert (=> bm!546414 (= call!546420 call!546418)))

(declare-fun b!6390135 () Bool)

(declare-fun res!2628489 () Bool)

(declare-fun e!3878578 () Bool)

(assert (=> b!6390135 (=> (not res!2628489) (not e!3878578))))

(declare-fun call!546419 () Bool)

(assert (=> b!6390135 (= res!2628489 call!546419)))

(assert (=> b!6390135 (= e!3878580 e!3878578)))

(declare-fun bm!546415 () Bool)

(assert (=> bm!546415 (= call!546419 (validRegex!8043 (ite c!1164905 (regOne!33127 lt!2372365) (regOne!33126 lt!2372365))))))

(declare-fun b!6390136 () Bool)

(assert (=> b!6390136 (= e!3878578 call!546420)))

(declare-fun b!6390131 () Bool)

(assert (=> b!6390131 (= e!3878575 e!3878574)))

(declare-fun res!2628488 () Bool)

(assert (=> b!6390131 (=> (not res!2628488) (not e!3878574))))

(assert (=> b!6390131 (= res!2628488 call!546419)))

(declare-fun d!2003029 () Bool)

(declare-fun res!2628485 () Bool)

(assert (=> d!2003029 (=> res!2628485 e!3878579)))

(assert (=> d!2003029 (= res!2628485 ((_ is ElementMatch!16307) lt!2372365))))

(assert (=> d!2003029 (= (validRegex!8043 lt!2372365) e!3878579)))

(assert (= (and d!2003029 (not res!2628485)) b!6390128))

(assert (= (and b!6390128 c!1164906) b!6390133))

(assert (= (and b!6390128 (not c!1164906)) b!6390132))

(assert (= (and b!6390133 res!2628487) b!6390130))

(assert (= (and b!6390132 c!1164905) b!6390135))

(assert (= (and b!6390132 (not c!1164905)) b!6390134))

(assert (= (and b!6390135 res!2628489) b!6390136))

(assert (= (and b!6390134 (not res!2628486)) b!6390131))

(assert (= (and b!6390131 res!2628488) b!6390129))

(assert (= (or b!6390136 b!6390129) bm!546414))

(assert (= (or b!6390135 b!6390131) bm!546415))

(assert (= (or b!6390130 bm!546414) bm!546413))

(declare-fun m!7189056 () Bool)

(assert (=> bm!546413 m!7189056))

(declare-fun m!7189060 () Bool)

(assert (=> b!6390133 m!7189060))

(declare-fun m!7189064 () Bool)

(assert (=> bm!546415 m!7189064))

(assert (=> b!6389218 d!2003029))

(declare-fun bs!1599074 () Bool)

(declare-fun d!2003031 () Bool)

(assert (= bs!1599074 (and d!2003031 d!2002873)))

(declare-fun lambda!352837 () Int)

(assert (=> bs!1599074 (= lambda!352837 lambda!352780)))

(declare-fun bs!1599075 () Bool)

(assert (= bs!1599075 (and d!2003031 d!2002881)))

(assert (=> bs!1599075 (= lambda!352837 lambda!352783)))

(declare-fun bs!1599076 () Bool)

(assert (= bs!1599076 (and d!2003031 d!2002901)))

(assert (=> bs!1599076 (= lambda!352837 lambda!352795)))

(declare-fun bs!1599077 () Bool)

(assert (= bs!1599077 (and d!2003031 d!2002993)))

(assert (=> bs!1599077 (= lambda!352837 lambda!352823)))

(assert (=> d!2003031 (= (inv!84014 setElem!43630) (forall!15486 (exprs!6191 setElem!43630) lambda!352837))))

(declare-fun bs!1599078 () Bool)

(assert (= bs!1599078 d!2003031))

(declare-fun m!7189066 () Bool)

(assert (=> bs!1599078 m!7189066))

(assert (=> setNonEmpty!43630 d!2003031))

(declare-fun d!2003035 () Bool)

(assert (=> d!2003035 (= (isEmpty!37238 (_1!36589 lt!2372384)) ((_ is Nil!65098) (_1!36589 lt!2372384)))))

(assert (=> b!6389222 d!2003035))

(declare-fun d!2003037 () Bool)

(declare-fun c!1164909 () Bool)

(assert (=> d!2003037 (= c!1164909 (and ((_ is ElementMatch!16307) (reg!16636 (regOne!33126 r!7292))) (= (c!1164602 (reg!16636 (regOne!33126 r!7292))) (h!71546 s!2326))))))

(declare-fun e!3878584 () (InoxSet Context!11382))

(assert (=> d!2003037 (= (derivationStepZipperDown!1555 (reg!16636 (regOne!33126 r!7292)) lt!2372373 (h!71546 s!2326)) e!3878584)))

(declare-fun b!6390141 () Bool)

(declare-fun c!1164912 () Bool)

(declare-fun e!3878583 () Bool)

(assert (=> b!6390141 (= c!1164912 e!3878583)))

(declare-fun res!2628490 () Bool)

(assert (=> b!6390141 (=> (not res!2628490) (not e!3878583))))

(assert (=> b!6390141 (= res!2628490 ((_ is Concat!25152) (reg!16636 (regOne!33126 r!7292))))))

(declare-fun e!3878586 () (InoxSet Context!11382))

(declare-fun e!3878585 () (InoxSet Context!11382))

(assert (=> b!6390141 (= e!3878586 e!3878585)))

(declare-fun b!6390142 () Bool)

(declare-fun c!1164911 () Bool)

(assert (=> b!6390142 (= c!1164911 ((_ is Star!16307) (reg!16636 (regOne!33126 r!7292))))))

(declare-fun e!3878588 () (InoxSet Context!11382))

(declare-fun e!3878587 () (InoxSet Context!11382))

(assert (=> b!6390142 (= e!3878588 e!3878587)))

(declare-fun b!6390143 () Bool)

(declare-fun call!546423 () (InoxSet Context!11382))

(declare-fun call!546424 () (InoxSet Context!11382))

(assert (=> b!6390143 (= e!3878585 ((_ map or) call!546423 call!546424))))

(declare-fun call!546421 () (InoxSet Context!11382))

(declare-fun c!1164910 () Bool)

(declare-fun bm!546416 () Bool)

(declare-fun call!546426 () List!65220)

(declare-fun c!1164913 () Bool)

(assert (=> bm!546416 (= call!546421 (derivationStepZipperDown!1555 (ite c!1164910 (regTwo!33127 (reg!16636 (regOne!33126 r!7292))) (ite c!1164912 (regTwo!33126 (reg!16636 (regOne!33126 r!7292))) (ite c!1164913 (regOne!33126 (reg!16636 (regOne!33126 r!7292))) (reg!16636 (reg!16636 (regOne!33126 r!7292)))))) (ite (or c!1164910 c!1164912) lt!2372373 (Context!11383 call!546426)) (h!71546 s!2326)))))

(declare-fun b!6390144 () Bool)

(assert (=> b!6390144 (= e!3878587 ((as const (Array Context!11382 Bool)) false))))

(declare-fun b!6390145 () Bool)

(assert (=> b!6390145 (= e!3878585 e!3878588)))

(assert (=> b!6390145 (= c!1164913 ((_ is Concat!25152) (reg!16636 (regOne!33126 r!7292))))))

(declare-fun bm!546417 () Bool)

(declare-fun call!546425 () (InoxSet Context!11382))

(assert (=> bm!546417 (= call!546425 call!546424)))

(declare-fun b!6390146 () Bool)

(assert (=> b!6390146 (= e!3878587 call!546425)))

(declare-fun b!6390147 () Bool)

(assert (=> b!6390147 (= e!3878584 (store ((as const (Array Context!11382 Bool)) false) lt!2372373 true))))

(declare-fun b!6390148 () Bool)

(assert (=> b!6390148 (= e!3878584 e!3878586)))

(assert (=> b!6390148 (= c!1164910 ((_ is Union!16307) (reg!16636 (regOne!33126 r!7292))))))

(declare-fun b!6390149 () Bool)

(assert (=> b!6390149 (= e!3878586 ((_ map or) call!546423 call!546421))))

(declare-fun bm!546418 () Bool)

(declare-fun call!546422 () List!65220)

(assert (=> bm!546418 (= call!546422 ($colon$colon!2168 (exprs!6191 lt!2372373) (ite (or c!1164912 c!1164913) (regTwo!33126 (reg!16636 (regOne!33126 r!7292))) (reg!16636 (regOne!33126 r!7292)))))))

(declare-fun b!6390150 () Bool)

(assert (=> b!6390150 (= e!3878588 call!546425)))

(declare-fun bm!546419 () Bool)

(assert (=> bm!546419 (= call!546424 call!546421)))

(declare-fun bm!546420 () Bool)

(assert (=> bm!546420 (= call!546426 call!546422)))

(declare-fun bm!546421 () Bool)

(assert (=> bm!546421 (= call!546423 (derivationStepZipperDown!1555 (ite c!1164910 (regOne!33127 (reg!16636 (regOne!33126 r!7292))) (regOne!33126 (reg!16636 (regOne!33126 r!7292)))) (ite c!1164910 lt!2372373 (Context!11383 call!546422)) (h!71546 s!2326)))))

(declare-fun b!6390151 () Bool)

(assert (=> b!6390151 (= e!3878583 (nullable!6300 (regOne!33126 (reg!16636 (regOne!33126 r!7292)))))))

(assert (= (and d!2003037 c!1164909) b!6390147))

(assert (= (and d!2003037 (not c!1164909)) b!6390148))

(assert (= (and b!6390148 c!1164910) b!6390149))

(assert (= (and b!6390148 (not c!1164910)) b!6390141))

(assert (= (and b!6390141 res!2628490) b!6390151))

(assert (= (and b!6390141 c!1164912) b!6390143))

(assert (= (and b!6390141 (not c!1164912)) b!6390145))

(assert (= (and b!6390145 c!1164913) b!6390150))

(assert (= (and b!6390145 (not c!1164913)) b!6390142))

(assert (= (and b!6390142 c!1164911) b!6390146))

(assert (= (and b!6390142 (not c!1164911)) b!6390144))

(assert (= (or b!6390150 b!6390146) bm!546420))

(assert (= (or b!6390150 b!6390146) bm!546417))

(assert (= (or b!6390143 bm!546420) bm!546418))

(assert (= (or b!6390143 bm!546417) bm!546419))

(assert (= (or b!6390149 bm!546419) bm!546416))

(assert (= (or b!6390149 b!6390143) bm!546421))

(declare-fun m!7189068 () Bool)

(assert (=> bm!546416 m!7189068))

(declare-fun m!7189070 () Bool)

(assert (=> bm!546418 m!7189070))

(declare-fun m!7189072 () Bool)

(assert (=> bm!546421 m!7189072))

(assert (=> b!6390147 m!7188218))

(declare-fun m!7189074 () Bool)

(assert (=> b!6390151 m!7189074))

(assert (=> b!6389202 d!2003037))

(declare-fun b!6390156 () Bool)

(declare-fun e!3878593 () Bool)

(declare-fun e!3878591 () Bool)

(assert (=> b!6390156 (= e!3878593 e!3878591)))

(declare-fun res!2628501 () Bool)

(assert (=> b!6390156 (=> res!2628501 e!3878591)))

(declare-fun call!546427 () Bool)

(assert (=> b!6390156 (= res!2628501 call!546427)))

(declare-fun b!6390157 () Bool)

(declare-fun e!3878597 () Bool)

(assert (=> b!6390157 (= e!3878597 e!3878593)))

(declare-fun res!2628497 () Bool)

(assert (=> b!6390157 (=> (not res!2628497) (not e!3878593))))

(declare-fun lt!2372555 () Bool)

(assert (=> b!6390157 (= res!2628497 (not lt!2372555))))

(declare-fun b!6390158 () Bool)

(declare-fun e!3878595 () Bool)

(assert (=> b!6390158 (= e!3878595 (= (head!13104 (_2!36589 lt!2372384)) (c!1164602 (regTwo!33126 r!7292))))))

(declare-fun b!6390159 () Bool)

(declare-fun e!3878594 () Bool)

(assert (=> b!6390159 (= e!3878594 (matchR!8490 (derivativeStep!5011 (regTwo!33126 r!7292) (head!13104 (_2!36589 lt!2372384))) (tail!12189 (_2!36589 lt!2372384))))))

(declare-fun b!6390160 () Bool)

(assert (=> b!6390160 (= e!3878591 (not (= (head!13104 (_2!36589 lt!2372384)) (c!1164602 (regTwo!33126 r!7292)))))))

(declare-fun bm!546422 () Bool)

(assert (=> bm!546422 (= call!546427 (isEmpty!37238 (_2!36589 lt!2372384)))))

(declare-fun b!6390161 () Bool)

(declare-fun e!3878592 () Bool)

(assert (=> b!6390161 (= e!3878592 (not lt!2372555))))

(declare-fun b!6390162 () Bool)

(declare-fun res!2628495 () Bool)

(assert (=> b!6390162 (=> (not res!2628495) (not e!3878595))))

(assert (=> b!6390162 (= res!2628495 (isEmpty!37238 (tail!12189 (_2!36589 lt!2372384))))))

(declare-fun b!6390163 () Bool)

(declare-fun res!2628500 () Bool)

(assert (=> b!6390163 (=> res!2628500 e!3878591)))

(assert (=> b!6390163 (= res!2628500 (not (isEmpty!37238 (tail!12189 (_2!36589 lt!2372384)))))))

(declare-fun b!6390164 () Bool)

(declare-fun e!3878596 () Bool)

(assert (=> b!6390164 (= e!3878596 e!3878592)))

(declare-fun c!1164914 () Bool)

(assert (=> b!6390164 (= c!1164914 ((_ is EmptyLang!16307) (regTwo!33126 r!7292)))))

(declare-fun b!6390165 () Bool)

(declare-fun res!2628499 () Bool)

(assert (=> b!6390165 (=> res!2628499 e!3878597)))

(assert (=> b!6390165 (= res!2628499 e!3878595)))

(declare-fun res!2628498 () Bool)

(assert (=> b!6390165 (=> (not res!2628498) (not e!3878595))))

(assert (=> b!6390165 (= res!2628498 lt!2372555)))

(declare-fun b!6390166 () Bool)

(assert (=> b!6390166 (= e!3878594 (nullable!6300 (regTwo!33126 r!7292)))))

(declare-fun d!2003039 () Bool)

(assert (=> d!2003039 e!3878596))

(declare-fun c!1164916 () Bool)

(assert (=> d!2003039 (= c!1164916 ((_ is EmptyExpr!16307) (regTwo!33126 r!7292)))))

(assert (=> d!2003039 (= lt!2372555 e!3878594)))

(declare-fun c!1164915 () Bool)

(assert (=> d!2003039 (= c!1164915 (isEmpty!37238 (_2!36589 lt!2372384)))))

(assert (=> d!2003039 (validRegex!8043 (regTwo!33126 r!7292))))

(assert (=> d!2003039 (= (matchR!8490 (regTwo!33126 r!7292) (_2!36589 lt!2372384)) lt!2372555)))

(declare-fun b!6390167 () Bool)

(declare-fun res!2628502 () Bool)

(assert (=> b!6390167 (=> (not res!2628502) (not e!3878595))))

(assert (=> b!6390167 (= res!2628502 (not call!546427))))

(declare-fun b!6390168 () Bool)

(declare-fun res!2628496 () Bool)

(assert (=> b!6390168 (=> res!2628496 e!3878597)))

(assert (=> b!6390168 (= res!2628496 (not ((_ is ElementMatch!16307) (regTwo!33126 r!7292))))))

(assert (=> b!6390168 (= e!3878592 e!3878597)))

(declare-fun b!6390169 () Bool)

(assert (=> b!6390169 (= e!3878596 (= lt!2372555 call!546427))))

(assert (= (and d!2003039 c!1164915) b!6390166))

(assert (= (and d!2003039 (not c!1164915)) b!6390159))

(assert (= (and d!2003039 c!1164916) b!6390169))

(assert (= (and d!2003039 (not c!1164916)) b!6390164))

(assert (= (and b!6390164 c!1164914) b!6390161))

(assert (= (and b!6390164 (not c!1164914)) b!6390168))

(assert (= (and b!6390168 (not res!2628496)) b!6390165))

(assert (= (and b!6390165 res!2628498) b!6390167))

(assert (= (and b!6390167 res!2628502) b!6390162))

(assert (= (and b!6390162 res!2628495) b!6390158))

(assert (= (and b!6390165 (not res!2628499)) b!6390157))

(assert (= (and b!6390157 res!2628497) b!6390156))

(assert (= (and b!6390156 (not res!2628501)) b!6390163))

(assert (= (and b!6390163 (not res!2628500)) b!6390160))

(assert (= (or b!6390169 b!6390156 b!6390167) bm!546422))

(declare-fun m!7189076 () Bool)

(assert (=> b!6390158 m!7189076))

(declare-fun m!7189078 () Bool)

(assert (=> d!2003039 m!7189078))

(declare-fun m!7189080 () Bool)

(assert (=> d!2003039 m!7189080))

(declare-fun m!7189082 () Bool)

(assert (=> b!6390162 m!7189082))

(assert (=> b!6390162 m!7189082))

(declare-fun m!7189084 () Bool)

(assert (=> b!6390162 m!7189084))

(declare-fun m!7189086 () Bool)

(assert (=> b!6390166 m!7189086))

(assert (=> bm!546422 m!7189078))

(assert (=> b!6390159 m!7189076))

(assert (=> b!6390159 m!7189076))

(declare-fun m!7189088 () Bool)

(assert (=> b!6390159 m!7189088))

(assert (=> b!6390159 m!7189082))

(assert (=> b!6390159 m!7189088))

(assert (=> b!6390159 m!7189082))

(declare-fun m!7189092 () Bool)

(assert (=> b!6390159 m!7189092))

(assert (=> b!6390160 m!7189076))

(assert (=> b!6390163 m!7189082))

(assert (=> b!6390163 m!7189082))

(assert (=> b!6390163 m!7189084))

(assert (=> b!6389221 d!2003039))

(declare-fun d!2003043 () Bool)

(assert (=> d!2003043 (= (flatMap!1812 lt!2372375 lambda!352739) (choose!47545 lt!2372375 lambda!352739))))

(declare-fun bs!1599079 () Bool)

(assert (= bs!1599079 d!2003043))

(declare-fun m!7189106 () Bool)

(assert (=> bs!1599079 m!7189106))

(assert (=> b!6389225 d!2003043))

(declare-fun b!6390183 () Bool)

(declare-fun e!3878605 () (InoxSet Context!11382))

(declare-fun call!546428 () (InoxSet Context!11382))

(assert (=> b!6390183 (= e!3878605 call!546428)))

(declare-fun b!6390184 () Bool)

(declare-fun e!3878607 () Bool)

(assert (=> b!6390184 (= e!3878607 (nullable!6300 (h!71544 (exprs!6191 lt!2372397))))))

(declare-fun b!6390185 () Bool)

(assert (=> b!6390185 (= e!3878605 ((as const (Array Context!11382 Bool)) false))))

(declare-fun b!6390186 () Bool)

(declare-fun e!3878606 () (InoxSet Context!11382))

(assert (=> b!6390186 (= e!3878606 ((_ map or) call!546428 (derivationStepZipperUp!1481 (Context!11383 (t!378826 (exprs!6191 lt!2372397))) (h!71546 s!2326))))))

(declare-fun bm!546423 () Bool)

(assert (=> bm!546423 (= call!546428 (derivationStepZipperDown!1555 (h!71544 (exprs!6191 lt!2372397)) (Context!11383 (t!378826 (exprs!6191 lt!2372397))) (h!71546 s!2326)))))

(declare-fun b!6390187 () Bool)

(assert (=> b!6390187 (= e!3878606 e!3878605)))

(declare-fun c!1164920 () Bool)

(assert (=> b!6390187 (= c!1164920 ((_ is Cons!65096) (exprs!6191 lt!2372397)))))

(declare-fun d!2003045 () Bool)

(declare-fun c!1164921 () Bool)

(assert (=> d!2003045 (= c!1164921 e!3878607)))

(declare-fun res!2628510 () Bool)

(assert (=> d!2003045 (=> (not res!2628510) (not e!3878607))))

(assert (=> d!2003045 (= res!2628510 ((_ is Cons!65096) (exprs!6191 lt!2372397)))))

(assert (=> d!2003045 (= (derivationStepZipperUp!1481 lt!2372397 (h!71546 s!2326)) e!3878606)))

(assert (= (and d!2003045 res!2628510) b!6390184))

(assert (= (and d!2003045 c!1164921) b!6390186))

(assert (= (and d!2003045 (not c!1164921)) b!6390187))

(assert (= (and b!6390187 c!1164920) b!6390183))

(assert (= (and b!6390187 (not c!1164920)) b!6390185))

(assert (= (or b!6390186 b!6390183) bm!546423))

(declare-fun m!7189108 () Bool)

(assert (=> b!6390184 m!7189108))

(declare-fun m!7189110 () Bool)

(assert (=> b!6390186 m!7189110))

(declare-fun m!7189112 () Bool)

(assert (=> bm!546423 m!7189112))

(assert (=> b!6389225 d!2003045))

(declare-fun d!2003047 () Bool)

(assert (=> d!2003047 (= (flatMap!1812 lt!2372375 lambda!352739) (dynLambda!25826 lambda!352739 lt!2372397))))

(declare-fun lt!2372560 () Unit!158559)

(assert (=> d!2003047 (= lt!2372560 (choose!47546 lt!2372375 lt!2372397 lambda!352739))))

(assert (=> d!2003047 (= lt!2372375 (store ((as const (Array Context!11382 Bool)) false) lt!2372397 true))))

(assert (=> d!2003047 (= (lemmaFlatMapOnSingletonSet!1338 lt!2372375 lt!2372397 lambda!352739) lt!2372560)))

(declare-fun b_lambda!242759 () Bool)

(assert (=> (not b_lambda!242759) (not d!2003047)))

(declare-fun bs!1599080 () Bool)

(assert (= bs!1599080 d!2003047))

(assert (=> bs!1599080 m!7188282))

(declare-fun m!7189114 () Bool)

(assert (=> bs!1599080 m!7189114))

(declare-fun m!7189116 () Bool)

(assert (=> bs!1599080 m!7189116))

(assert (=> bs!1599080 m!7188284))

(assert (=> b!6389225 d!2003047))

(declare-fun bs!1599081 () Bool)

(declare-fun d!2003049 () Bool)

(assert (= bs!1599081 (and d!2003049 b!6389217)))

(declare-fun lambda!352838 () Int)

(assert (=> bs!1599081 (= lambda!352838 lambda!352739)))

(declare-fun bs!1599082 () Bool)

(assert (= bs!1599082 (and d!2003049 d!2002797)))

(assert (=> bs!1599082 (= lambda!352838 lambda!352744)))

(assert (=> d!2003049 true))

(assert (=> d!2003049 (= (derivationStepZipper!2273 lt!2372375 (h!71546 s!2326)) (flatMap!1812 lt!2372375 lambda!352838))))

(declare-fun bs!1599083 () Bool)

(assert (= bs!1599083 d!2003049))

(declare-fun m!7189128 () Bool)

(assert (=> bs!1599083 m!7189128))

(assert (=> b!6389225 d!2003049))

(declare-fun bs!1599084 () Bool)

(declare-fun d!2003051 () Bool)

(assert (= bs!1599084 (and d!2003051 d!2002873)))

(declare-fun lambda!352839 () Int)

(assert (=> bs!1599084 (= lambda!352839 lambda!352780)))

(declare-fun bs!1599085 () Bool)

(assert (= bs!1599085 (and d!2003051 d!2002901)))

(assert (=> bs!1599085 (= lambda!352839 lambda!352795)))

(declare-fun bs!1599087 () Bool)

(assert (= bs!1599087 (and d!2003051 d!2002993)))

(assert (=> bs!1599087 (= lambda!352839 lambda!352823)))

(declare-fun bs!1599088 () Bool)

(assert (= bs!1599088 (and d!2003051 d!2003031)))

(assert (=> bs!1599088 (= lambda!352839 lambda!352837)))

(declare-fun bs!1599089 () Bool)

(assert (= bs!1599089 (and d!2003051 d!2002881)))

(assert (=> bs!1599089 (= lambda!352839 lambda!352783)))

(assert (=> d!2003051 (= (inv!84014 (h!71545 zl!343)) (forall!15486 (exprs!6191 (h!71545 zl!343)) lambda!352839))))

(declare-fun bs!1599090 () Bool)

(assert (= bs!1599090 d!2003051))

(declare-fun m!7189136 () Bool)

(assert (=> bs!1599090 m!7189136))

(assert (=> b!6389205 d!2003051))

(declare-fun b!6390188 () Bool)

(declare-fun e!3878610 () Bool)

(declare-fun e!3878608 () Bool)

(assert (=> b!6390188 (= e!3878610 e!3878608)))

(declare-fun res!2628517 () Bool)

(assert (=> b!6390188 (=> res!2628517 e!3878608)))

(declare-fun call!546429 () Bool)

(assert (=> b!6390188 (= res!2628517 call!546429)))

(declare-fun b!6390189 () Bool)

(declare-fun e!3878614 () Bool)

(assert (=> b!6390189 (= e!3878614 e!3878610)))

(declare-fun res!2628513 () Bool)

(assert (=> b!6390189 (=> (not res!2628513) (not e!3878610))))

(declare-fun lt!2372561 () Bool)

(assert (=> b!6390189 (= res!2628513 (not lt!2372561))))

(declare-fun b!6390190 () Bool)

(declare-fun e!3878612 () Bool)

(assert (=> b!6390190 (= e!3878612 (= (head!13104 s!2326) (c!1164602 lt!2372395)))))

(declare-fun b!6390191 () Bool)

(declare-fun e!3878611 () Bool)

(assert (=> b!6390191 (= e!3878611 (matchR!8490 (derivativeStep!5011 lt!2372395 (head!13104 s!2326)) (tail!12189 s!2326)))))

(declare-fun b!6390192 () Bool)

(assert (=> b!6390192 (= e!3878608 (not (= (head!13104 s!2326) (c!1164602 lt!2372395))))))

(declare-fun bm!546424 () Bool)

(assert (=> bm!546424 (= call!546429 (isEmpty!37238 s!2326))))

(declare-fun b!6390193 () Bool)

(declare-fun e!3878609 () Bool)

(assert (=> b!6390193 (= e!3878609 (not lt!2372561))))

(declare-fun b!6390194 () Bool)

(declare-fun res!2628511 () Bool)

(assert (=> b!6390194 (=> (not res!2628511) (not e!3878612))))

(assert (=> b!6390194 (= res!2628511 (isEmpty!37238 (tail!12189 s!2326)))))

(declare-fun b!6390195 () Bool)

(declare-fun res!2628516 () Bool)

(assert (=> b!6390195 (=> res!2628516 e!3878608)))

(assert (=> b!6390195 (= res!2628516 (not (isEmpty!37238 (tail!12189 s!2326))))))

(declare-fun b!6390196 () Bool)

(declare-fun e!3878613 () Bool)

(assert (=> b!6390196 (= e!3878613 e!3878609)))

(declare-fun c!1164922 () Bool)

(assert (=> b!6390196 (= c!1164922 ((_ is EmptyLang!16307) lt!2372395))))

(declare-fun b!6390197 () Bool)

(declare-fun res!2628515 () Bool)

(assert (=> b!6390197 (=> res!2628515 e!3878614)))

(assert (=> b!6390197 (= res!2628515 e!3878612)))

(declare-fun res!2628514 () Bool)

(assert (=> b!6390197 (=> (not res!2628514) (not e!3878612))))

(assert (=> b!6390197 (= res!2628514 lt!2372561)))

(declare-fun b!6390198 () Bool)

(assert (=> b!6390198 (= e!3878611 (nullable!6300 lt!2372395))))

(declare-fun d!2003057 () Bool)

(assert (=> d!2003057 e!3878613))

(declare-fun c!1164924 () Bool)

(assert (=> d!2003057 (= c!1164924 ((_ is EmptyExpr!16307) lt!2372395))))

(assert (=> d!2003057 (= lt!2372561 e!3878611)))

(declare-fun c!1164923 () Bool)

(assert (=> d!2003057 (= c!1164923 (isEmpty!37238 s!2326))))

(assert (=> d!2003057 (validRegex!8043 lt!2372395)))

(assert (=> d!2003057 (= (matchR!8490 lt!2372395 s!2326) lt!2372561)))

(declare-fun b!6390199 () Bool)

(declare-fun res!2628518 () Bool)

(assert (=> b!6390199 (=> (not res!2628518) (not e!3878612))))

(assert (=> b!6390199 (= res!2628518 (not call!546429))))

(declare-fun b!6390200 () Bool)

(declare-fun res!2628512 () Bool)

(assert (=> b!6390200 (=> res!2628512 e!3878614)))

(assert (=> b!6390200 (= res!2628512 (not ((_ is ElementMatch!16307) lt!2372395)))))

(assert (=> b!6390200 (= e!3878609 e!3878614)))

(declare-fun b!6390201 () Bool)

(assert (=> b!6390201 (= e!3878613 (= lt!2372561 call!546429))))

(assert (= (and d!2003057 c!1164923) b!6390198))

(assert (= (and d!2003057 (not c!1164923)) b!6390191))

(assert (= (and d!2003057 c!1164924) b!6390201))

(assert (= (and d!2003057 (not c!1164924)) b!6390196))

(assert (= (and b!6390196 c!1164922) b!6390193))

(assert (= (and b!6390196 (not c!1164922)) b!6390200))

(assert (= (and b!6390200 (not res!2628512)) b!6390197))

(assert (= (and b!6390197 res!2628514) b!6390199))

(assert (= (and b!6390199 res!2628518) b!6390194))

(assert (= (and b!6390194 res!2628511) b!6390190))

(assert (= (and b!6390197 (not res!2628515)) b!6390189))

(assert (= (and b!6390189 res!2628513) b!6390188))

(assert (= (and b!6390188 (not res!2628517)) b!6390195))

(assert (= (and b!6390195 (not res!2628516)) b!6390192))

(assert (= (or b!6390201 b!6390188 b!6390199) bm!546424))

(assert (=> b!6390190 m!7188784))

(assert (=> d!2003057 m!7188774))

(declare-fun m!7189138 () Bool)

(assert (=> d!2003057 m!7189138))

(assert (=> b!6390194 m!7188786))

(assert (=> b!6390194 m!7188786))

(assert (=> b!6390194 m!7188788))

(declare-fun m!7189140 () Bool)

(assert (=> b!6390198 m!7189140))

(assert (=> bm!546424 m!7188774))

(assert (=> b!6390191 m!7188784))

(assert (=> b!6390191 m!7188784))

(declare-fun m!7189142 () Bool)

(assert (=> b!6390191 m!7189142))

(assert (=> b!6390191 m!7188786))

(assert (=> b!6390191 m!7189142))

(assert (=> b!6390191 m!7188786))

(declare-fun m!7189144 () Bool)

(assert (=> b!6390191 m!7189144))

(assert (=> b!6390192 m!7188784))

(assert (=> b!6390195 m!7188786))

(assert (=> b!6390195 m!7188786))

(assert (=> b!6390195 m!7188788))

(assert (=> b!6389203 d!2003057))

(declare-fun bs!1599091 () Bool)

(declare-fun b!6390215 () Bool)

(assert (= bs!1599091 (and b!6390215 b!6389199)))

(declare-fun lambda!352840 () Int)

(assert (=> bs!1599091 (not (= lambda!352840 lambda!352741))))

(declare-fun bs!1599092 () Bool)

(assert (= bs!1599092 (and b!6390215 d!2003025)))

(assert (=> bs!1599092 (not (= lambda!352840 lambda!352833))))

(declare-fun bs!1599094 () Bool)

(assert (= bs!1599094 (and b!6390215 b!6389933)))

(assert (=> bs!1599094 (not (= lambda!352840 lambda!352804))))

(declare-fun bs!1599095 () Bool)

(assert (= bs!1599095 (and b!6390215 b!6389208)))

(assert (=> bs!1599095 (not (= lambda!352840 lambda!352738))))

(assert (=> bs!1599095 (not (= lambda!352840 lambda!352737))))

(declare-fun bs!1599096 () Bool)

(assert (= bs!1599096 (and b!6390215 d!2003005)))

(assert (=> bs!1599096 (not (= lambda!352840 lambda!352827))))

(declare-fun bs!1599097 () Bool)

(assert (= bs!1599097 (and b!6390215 d!2002845)))

(assert (=> bs!1599097 (not (= lambda!352840 lambda!352761))))

(assert (=> bs!1599092 (not (= lambda!352840 lambda!352831))))

(assert (=> bs!1599097 (not (= lambda!352840 lambda!352762))))

(declare-fun bs!1599098 () Bool)

(assert (= bs!1599098 (and b!6390215 d!2002815)))

(assert (=> bs!1599098 (not (= lambda!352840 lambda!352751))))

(declare-fun bs!1599099 () Bool)

(assert (= bs!1599099 (and b!6390215 b!6389931)))

(assert (=> bs!1599099 (= (and (= (reg!16636 lt!2372395) (reg!16636 r!7292)) (= lt!2372395 r!7292)) (= lambda!352840 lambda!352803))))

(assert (=> bs!1599091 (not (= lambda!352840 lambda!352740))))

(assert (=> b!6390215 true))

(assert (=> b!6390215 true))

(declare-fun bs!1599100 () Bool)

(declare-fun b!6390217 () Bool)

(assert (= bs!1599100 (and b!6390217 b!6389199)))

(declare-fun lambda!352841 () Int)

(assert (=> bs!1599100 (= (and (= (regOne!33126 lt!2372395) lt!2372394) (= (regTwo!33126 lt!2372395) (regTwo!33126 r!7292))) (= lambda!352841 lambda!352741))))

(declare-fun bs!1599101 () Bool)

(assert (= bs!1599101 (and b!6390217 d!2003025)))

(assert (=> bs!1599101 (= (and (= (regOne!33126 lt!2372395) lt!2372394) (= (regTwo!33126 lt!2372395) (regTwo!33126 r!7292))) (= lambda!352841 lambda!352833))))

(declare-fun bs!1599102 () Bool)

(assert (= bs!1599102 (and b!6390217 b!6389933)))

(assert (=> bs!1599102 (= (and (= (regOne!33126 lt!2372395) (regOne!33126 r!7292)) (= (regTwo!33126 lt!2372395) (regTwo!33126 r!7292))) (= lambda!352841 lambda!352804))))

(declare-fun bs!1599103 () Bool)

(assert (= bs!1599103 (and b!6390217 b!6389208)))

(assert (=> bs!1599103 (= (and (= (regOne!33126 lt!2372395) (regOne!33126 r!7292)) (= (regTwo!33126 lt!2372395) (regTwo!33126 r!7292))) (= lambda!352841 lambda!352738))))

(assert (=> bs!1599103 (not (= lambda!352841 lambda!352737))))

(declare-fun bs!1599104 () Bool)

(assert (= bs!1599104 (and b!6390217 b!6390215)))

(assert (=> bs!1599104 (not (= lambda!352841 lambda!352840))))

(declare-fun bs!1599105 () Bool)

(assert (= bs!1599105 (and b!6390217 d!2003005)))

(assert (=> bs!1599105 (not (= lambda!352841 lambda!352827))))

(declare-fun bs!1599106 () Bool)

(assert (= bs!1599106 (and b!6390217 d!2002845)))

(assert (=> bs!1599106 (not (= lambda!352841 lambda!352761))))

(assert (=> bs!1599101 (not (= lambda!352841 lambda!352831))))

(assert (=> bs!1599106 (= (and (= (regOne!33126 lt!2372395) (regOne!33126 r!7292)) (= (regTwo!33126 lt!2372395) (regTwo!33126 r!7292))) (= lambda!352841 lambda!352762))))

(declare-fun bs!1599107 () Bool)

(assert (= bs!1599107 (and b!6390217 d!2002815)))

(assert (=> bs!1599107 (not (= lambda!352841 lambda!352751))))

(declare-fun bs!1599108 () Bool)

(assert (= bs!1599108 (and b!6390217 b!6389931)))

(assert (=> bs!1599108 (not (= lambda!352841 lambda!352803))))

(assert (=> bs!1599100 (not (= lambda!352841 lambda!352740))))

(assert (=> b!6390217 true))

(assert (=> b!6390217 true))

(declare-fun b!6390213 () Bool)

(declare-fun e!3878625 () Bool)

(declare-fun e!3878624 () Bool)

(assert (=> b!6390213 (= e!3878625 e!3878624)))

(declare-fun c!1164932 () Bool)

(assert (=> b!6390213 (= c!1164932 ((_ is Star!16307) lt!2372395))))

(declare-fun b!6390214 () Bool)

(declare-fun e!3878621 () Bool)

(declare-fun call!546437 () Bool)

(assert (=> b!6390214 (= e!3878621 call!546437)))

(declare-fun e!3878622 () Bool)

(declare-fun call!546436 () Bool)

(assert (=> b!6390215 (= e!3878622 call!546436)))

(declare-fun b!6390216 () Bool)

(declare-fun res!2628520 () Bool)

(assert (=> b!6390216 (=> res!2628520 e!3878622)))

(assert (=> b!6390216 (= res!2628520 call!546437)))

(assert (=> b!6390216 (= e!3878624 e!3878622)))

(declare-fun d!2003061 () Bool)

(declare-fun c!1164933 () Bool)

(assert (=> d!2003061 (= c!1164933 ((_ is EmptyExpr!16307) lt!2372395))))

(assert (=> d!2003061 (= (matchRSpec!3408 lt!2372395 s!2326) e!3878621)))

(assert (=> b!6390217 (= e!3878624 call!546436)))

(declare-fun b!6390218 () Bool)

(declare-fun e!3878623 () Bool)

(assert (=> b!6390218 (= e!3878623 (= s!2326 (Cons!65098 (c!1164602 lt!2372395) Nil!65098)))))

(declare-fun b!6390219 () Bool)

(declare-fun c!1164930 () Bool)

(assert (=> b!6390219 (= c!1164930 ((_ is ElementMatch!16307) lt!2372395))))

(declare-fun e!3878626 () Bool)

(assert (=> b!6390219 (= e!3878626 e!3878623)))

(declare-fun bm!546431 () Bool)

(assert (=> bm!546431 (= call!546436 (Exists!3377 (ite c!1164932 lambda!352840 lambda!352841)))))

(declare-fun b!6390220 () Bool)

(declare-fun e!3878627 () Bool)

(assert (=> b!6390220 (= e!3878627 (matchRSpec!3408 (regTwo!33127 lt!2372395) s!2326))))

(declare-fun b!6390221 () Bool)

(assert (=> b!6390221 (= e!3878625 e!3878627)))

(declare-fun res!2628522 () Bool)

(assert (=> b!6390221 (= res!2628522 (matchRSpec!3408 (regOne!33127 lt!2372395) s!2326))))

(assert (=> b!6390221 (=> res!2628522 e!3878627)))

(declare-fun b!6390222 () Bool)

(declare-fun c!1164931 () Bool)

(assert (=> b!6390222 (= c!1164931 ((_ is Union!16307) lt!2372395))))

(assert (=> b!6390222 (= e!3878623 e!3878625)))

(declare-fun bm!546432 () Bool)

(assert (=> bm!546432 (= call!546437 (isEmpty!37238 s!2326))))

(declare-fun b!6390223 () Bool)

(assert (=> b!6390223 (= e!3878621 e!3878626)))

(declare-fun res!2628521 () Bool)

(assert (=> b!6390223 (= res!2628521 (not ((_ is EmptyLang!16307) lt!2372395)))))

(assert (=> b!6390223 (=> (not res!2628521) (not e!3878626))))

(assert (= (and d!2003061 c!1164933) b!6390214))

(assert (= (and d!2003061 (not c!1164933)) b!6390223))

(assert (= (and b!6390223 res!2628521) b!6390219))

(assert (= (and b!6390219 c!1164930) b!6390218))

(assert (= (and b!6390219 (not c!1164930)) b!6390222))

(assert (= (and b!6390222 c!1164931) b!6390221))

(assert (= (and b!6390222 (not c!1164931)) b!6390213))

(assert (= (and b!6390221 (not res!2628522)) b!6390220))

(assert (= (and b!6390213 c!1164932) b!6390216))

(assert (= (and b!6390213 (not c!1164932)) b!6390217))

(assert (= (and b!6390216 (not res!2628520)) b!6390215))

(assert (= (or b!6390215 b!6390217) bm!546431))

(assert (= (or b!6390214 b!6390216) bm!546432))

(declare-fun m!7189172 () Bool)

(assert (=> bm!546431 m!7189172))

(declare-fun m!7189174 () Bool)

(assert (=> b!6390220 m!7189174))

(declare-fun m!7189176 () Bool)

(assert (=> b!6390221 m!7189176))

(assert (=> bm!546432 m!7188774))

(assert (=> b!6389203 d!2003061))

(declare-fun d!2003069 () Bool)

(assert (=> d!2003069 (= (matchR!8490 lt!2372395 s!2326) (matchRSpec!3408 lt!2372395 s!2326))))

(declare-fun lt!2372564 () Unit!158559)

(assert (=> d!2003069 (= lt!2372564 (choose!47557 lt!2372395 s!2326))))

(assert (=> d!2003069 (validRegex!8043 lt!2372395)))

(assert (=> d!2003069 (= (mainMatchTheorem!3408 lt!2372395 s!2326) lt!2372564)))

(declare-fun bs!1599109 () Bool)

(assert (= bs!1599109 d!2003069))

(assert (=> bs!1599109 m!7188288))

(assert (=> bs!1599109 m!7188290))

(declare-fun m!7189178 () Bool)

(assert (=> bs!1599109 m!7189178))

(assert (=> bs!1599109 m!7189138))

(assert (=> b!6389203 d!2003069))

(declare-fun b!6390285 () Bool)

(declare-fun e!3878654 () Bool)

(declare-fun tp!1777048 () Bool)

(assert (=> b!6390285 (= e!3878654 (and tp_is_empty!41867 tp!1777048))))

(assert (=> b!6389223 (= tp!1776998 e!3878654)))

(assert (= (and b!6389223 ((_ is Cons!65098) (t!378828 s!2326))) b!6390285))

(declare-fun b!6390295 () Bool)

(declare-fun e!3878660 () Bool)

(declare-fun tp!1777059 () Bool)

(declare-fun tp!1777060 () Bool)

(assert (=> b!6390295 (= e!3878660 (and tp!1777059 tp!1777060))))

(assert (=> b!6389210 (= tp!1777001 e!3878660)))

(assert (= (and b!6389210 ((_ is Cons!65096) (exprs!6191 (h!71545 zl!343)))) b!6390295))

(declare-fun b!6390296 () Bool)

(declare-fun e!3878661 () Bool)

(declare-fun tp!1777061 () Bool)

(declare-fun tp!1777062 () Bool)

(assert (=> b!6390296 (= e!3878661 (and tp!1777061 tp!1777062))))

(assert (=> b!6389201 (= tp!1776996 e!3878661)))

(assert (= (and b!6389201 ((_ is Cons!65096) (exprs!6191 setElem!43630))) b!6390296))

(declare-fun b!6390314 () Bool)

(declare-fun e!3878667 () Bool)

(declare-fun tp!1777082 () Bool)

(declare-fun tp!1777084 () Bool)

(assert (=> b!6390314 (= e!3878667 (and tp!1777082 tp!1777084))))

(declare-fun b!6390316 () Bool)

(declare-fun tp!1777083 () Bool)

(declare-fun tp!1777085 () Bool)

(assert (=> b!6390316 (= e!3878667 (and tp!1777083 tp!1777085))))

(assert (=> b!6389220 (= tp!1776993 e!3878667)))

(declare-fun b!6390315 () Bool)

(declare-fun tp!1777086 () Bool)

(assert (=> b!6390315 (= e!3878667 tp!1777086)))

(declare-fun b!6390313 () Bool)

(assert (=> b!6390313 (= e!3878667 tp_is_empty!41867)))

(assert (= (and b!6389220 ((_ is ElementMatch!16307) (regOne!33126 r!7292))) b!6390313))

(assert (= (and b!6389220 ((_ is Concat!25152) (regOne!33126 r!7292))) b!6390314))

(assert (= (and b!6389220 ((_ is Star!16307) (regOne!33126 r!7292))) b!6390315))

(assert (= (and b!6389220 ((_ is Union!16307) (regOne!33126 r!7292))) b!6390316))

(declare-fun b!6390318 () Bool)

(declare-fun e!3878668 () Bool)

(declare-fun tp!1777087 () Bool)

(declare-fun tp!1777089 () Bool)

(assert (=> b!6390318 (= e!3878668 (and tp!1777087 tp!1777089))))

(declare-fun b!6390320 () Bool)

(declare-fun tp!1777088 () Bool)

(declare-fun tp!1777090 () Bool)

(assert (=> b!6390320 (= e!3878668 (and tp!1777088 tp!1777090))))

(assert (=> b!6389220 (= tp!1776999 e!3878668)))

(declare-fun b!6390319 () Bool)

(declare-fun tp!1777091 () Bool)

(assert (=> b!6390319 (= e!3878668 tp!1777091)))

(declare-fun b!6390317 () Bool)

(assert (=> b!6390317 (= e!3878668 tp_is_empty!41867)))

(assert (= (and b!6389220 ((_ is ElementMatch!16307) (regTwo!33126 r!7292))) b!6390317))

(assert (= (and b!6389220 ((_ is Concat!25152) (regTwo!33126 r!7292))) b!6390318))

(assert (= (and b!6389220 ((_ is Star!16307) (regTwo!33126 r!7292))) b!6390319))

(assert (= (and b!6389220 ((_ is Union!16307) (regTwo!33126 r!7292))) b!6390320))

(declare-fun b!6390328 () Bool)

(declare-fun e!3878674 () Bool)

(declare-fun tp!1777096 () Bool)

(assert (=> b!6390328 (= e!3878674 tp!1777096)))

(declare-fun b!6390327 () Bool)

(declare-fun e!3878673 () Bool)

(declare-fun tp!1777097 () Bool)

(assert (=> b!6390327 (= e!3878673 (and (inv!84014 (h!71545 (t!378827 zl!343))) e!3878674 tp!1777097))))

(assert (=> b!6389205 (= tp!1776995 e!3878673)))

(assert (= b!6390327 b!6390328))

(assert (= (and b!6389205 ((_ is Cons!65097) (t!378827 zl!343))) b!6390327))

(declare-fun m!7189184 () Bool)

(assert (=> b!6390327 m!7189184))

(declare-fun b!6390330 () Bool)

(declare-fun e!3878675 () Bool)

(declare-fun tp!1777098 () Bool)

(declare-fun tp!1777100 () Bool)

(assert (=> b!6390330 (= e!3878675 (and tp!1777098 tp!1777100))))

(declare-fun b!6390332 () Bool)

(declare-fun tp!1777099 () Bool)

(declare-fun tp!1777101 () Bool)

(assert (=> b!6390332 (= e!3878675 (and tp!1777099 tp!1777101))))

(assert (=> b!6389200 (= tp!1776994 e!3878675)))

(declare-fun b!6390331 () Bool)

(declare-fun tp!1777102 () Bool)

(assert (=> b!6390331 (= e!3878675 tp!1777102)))

(declare-fun b!6390329 () Bool)

(assert (=> b!6390329 (= e!3878675 tp_is_empty!41867)))

(assert (= (and b!6389200 ((_ is ElementMatch!16307) (reg!16636 r!7292))) b!6390329))

(assert (= (and b!6389200 ((_ is Concat!25152) (reg!16636 r!7292))) b!6390330))

(assert (= (and b!6389200 ((_ is Star!16307) (reg!16636 r!7292))) b!6390331))

(assert (= (and b!6389200 ((_ is Union!16307) (reg!16636 r!7292))) b!6390332))

(declare-fun condSetEmpty!43636 () Bool)

(assert (=> setNonEmpty!43630 (= condSetEmpty!43636 (= setRest!43630 ((as const (Array Context!11382 Bool)) false)))))

(declare-fun setRes!43636 () Bool)

(assert (=> setNonEmpty!43630 (= tp!1777000 setRes!43636)))

(declare-fun setIsEmpty!43636 () Bool)

(assert (=> setIsEmpty!43636 setRes!43636))

(declare-fun setNonEmpty!43636 () Bool)

(declare-fun tp!1777107 () Bool)

(declare-fun setElem!43636 () Context!11382)

(declare-fun e!3878678 () Bool)

(assert (=> setNonEmpty!43636 (= setRes!43636 (and tp!1777107 (inv!84014 setElem!43636) e!3878678))))

(declare-fun setRest!43636 () (InoxSet Context!11382))

(assert (=> setNonEmpty!43636 (= setRest!43630 ((_ map or) (store ((as const (Array Context!11382 Bool)) false) setElem!43636 true) setRest!43636))))

(declare-fun b!6390337 () Bool)

(declare-fun tp!1777108 () Bool)

(assert (=> b!6390337 (= e!3878678 tp!1777108)))

(assert (= (and setNonEmpty!43630 condSetEmpty!43636) setIsEmpty!43636))

(assert (= (and setNonEmpty!43630 (not condSetEmpty!43636)) setNonEmpty!43636))

(assert (= setNonEmpty!43636 b!6390337))

(declare-fun m!7189186 () Bool)

(assert (=> setNonEmpty!43636 m!7189186))

(declare-fun b!6390339 () Bool)

(declare-fun e!3878679 () Bool)

(declare-fun tp!1777109 () Bool)

(declare-fun tp!1777111 () Bool)

(assert (=> b!6390339 (= e!3878679 (and tp!1777109 tp!1777111))))

(declare-fun b!6390341 () Bool)

(declare-fun tp!1777110 () Bool)

(declare-fun tp!1777112 () Bool)

(assert (=> b!6390341 (= e!3878679 (and tp!1777110 tp!1777112))))

(assert (=> b!6389204 (= tp!1776997 e!3878679)))

(declare-fun b!6390340 () Bool)

(declare-fun tp!1777113 () Bool)

(assert (=> b!6390340 (= e!3878679 tp!1777113)))

(declare-fun b!6390338 () Bool)

(assert (=> b!6390338 (= e!3878679 tp_is_empty!41867)))

(assert (= (and b!6389204 ((_ is ElementMatch!16307) (regOne!33127 r!7292))) b!6390338))

(assert (= (and b!6389204 ((_ is Concat!25152) (regOne!33127 r!7292))) b!6390339))

(assert (= (and b!6389204 ((_ is Star!16307) (regOne!33127 r!7292))) b!6390340))

(assert (= (and b!6389204 ((_ is Union!16307) (regOne!33127 r!7292))) b!6390341))

(declare-fun b!6390343 () Bool)

(declare-fun e!3878680 () Bool)

(declare-fun tp!1777114 () Bool)

(declare-fun tp!1777116 () Bool)

(assert (=> b!6390343 (= e!3878680 (and tp!1777114 tp!1777116))))

(declare-fun b!6390345 () Bool)

(declare-fun tp!1777115 () Bool)

(declare-fun tp!1777117 () Bool)

(assert (=> b!6390345 (= e!3878680 (and tp!1777115 tp!1777117))))

(assert (=> b!6389204 (= tp!1777002 e!3878680)))

(declare-fun b!6390344 () Bool)

(declare-fun tp!1777118 () Bool)

(assert (=> b!6390344 (= e!3878680 tp!1777118)))

(declare-fun b!6390342 () Bool)

(assert (=> b!6390342 (= e!3878680 tp_is_empty!41867)))

(assert (= (and b!6389204 ((_ is ElementMatch!16307) (regTwo!33127 r!7292))) b!6390342))

(assert (= (and b!6389204 ((_ is Concat!25152) (regTwo!33127 r!7292))) b!6390343))

(assert (= (and b!6389204 ((_ is Star!16307) (regTwo!33127 r!7292))) b!6390344))

(assert (= (and b!6389204 ((_ is Union!16307) (regTwo!33127 r!7292))) b!6390345))

(declare-fun b_lambda!242771 () Bool)

(assert (= b_lambda!242755 (or b!6389217 b_lambda!242771)))

(declare-fun bs!1599115 () Bool)

(declare-fun d!2003081 () Bool)

(assert (= bs!1599115 (and d!2003081 b!6389217)))

(assert (=> bs!1599115 (= (dynLambda!25826 lambda!352739 lt!2372383) (derivationStepZipperUp!1481 lt!2372383 (h!71546 s!2326)))))

(assert (=> bs!1599115 m!7188204))

(assert (=> d!2002953 d!2003081))

(declare-fun b_lambda!242773 () Bool)

(assert (= b_lambda!242759 (or b!6389217 b_lambda!242773)))

(declare-fun bs!1599116 () Bool)

(declare-fun d!2003083 () Bool)

(assert (= bs!1599116 (and d!2003083 b!6389217)))

(assert (=> bs!1599116 (= (dynLambda!25826 lambda!352739 lt!2372397) (derivationStepZipperUp!1481 lt!2372397 (h!71546 s!2326)))))

(assert (=> bs!1599116 m!7188278))

(assert (=> d!2003047 d!2003083))

(declare-fun b_lambda!242775 () Bool)

(assert (= b_lambda!242741 (or b!6389217 b_lambda!242775)))

(declare-fun bs!1599117 () Bool)

(declare-fun d!2003085 () Bool)

(assert (= bs!1599117 (and d!2003085 b!6389217)))

(assert (=> bs!1599117 (= (dynLambda!25826 lambda!352739 lt!2372361) (derivationStepZipperUp!1481 lt!2372361 (h!71546 s!2326)))))

(assert (=> bs!1599117 m!7188230))

(assert (=> d!2002803 d!2003085))

(declare-fun b_lambda!242777 () Bool)

(assert (= b_lambda!242757 (or b!6389217 b_lambda!242777)))

(declare-fun bs!1599118 () Bool)

(declare-fun d!2003087 () Bool)

(assert (= bs!1599118 (and d!2003087 b!6389217)))

(assert (=> bs!1599118 (= (dynLambda!25826 lambda!352739 (h!71545 zl!343)) (derivationStepZipperUp!1481 (h!71545 zl!343) (h!71546 s!2326)))))

(assert (=> bs!1599118 m!7188320))

(assert (=> d!2002985 d!2003087))

(declare-fun b_lambda!242779 () Bool)

(assert (= b_lambda!242753 (or b!6389217 b_lambda!242779)))

(declare-fun bs!1599119 () Bool)

(declare-fun d!2003089 () Bool)

(assert (= bs!1599119 (and d!2003089 b!6389217)))

(assert (=> bs!1599119 (= (dynLambda!25826 lambda!352739 lt!2372373) (derivationStepZipperUp!1481 lt!2372373 (h!71546 s!2326)))))

(assert (=> bs!1599119 m!7188210))

(assert (=> d!2002951 d!2003089))

(check-sat (not d!2002971) (not b_lambda!242773) (not b!6390331) (not b!6389937) (not b!6389335) (not b!6389806) (not b!6390093) (not b!6390319) (not b!6389988) (not b!6390085) (not b!6389993) (not bm!546421) (not b!6389627) (not b!6389488) (not b!6389485) (not b!6390194) (not bs!1599115) (not b!6390158) (not b!6389487) (not b!6389964) (not bs!1599116) (not bm!546392) (not b!6390295) (not b!6389320) (not d!2003057) (not b!6390108) (not b!6390101) (not b!6390339) (not b!6389958) (not d!2003001) (not b!6390021) (not b!6389265) (not b!6390037) (not b!6390318) (not b!6389284) (not b!6389574) (not d!2003009) (not b!6390160) (not d!2002931) (not b!6390332) (not b!6390192) (not b!6390133) (not b!6390102) (not b!6390159) (not b!6389630) (not d!2002955) (not b!6389798) (not bm!546335) (not bm!546385) (not bm!546326) (not d!2002873) (not b!6390328) (not bm!546416) (not d!2002813) (not b!6390151) (not b!6389282) (not b!6390087) (not b!6390162) (not b!6390285) (not b!6389623) (not b!6389321) (not b!6390166) (not b!6389587) (not d!2002865) (not b_lambda!242779) (not b!6390035) (not d!2002863) (not b!6390125) (not d!2002803) (not b!6389936) (not bm!546409) (not b!6389805) (not d!2002901) (not b_lambda!242775) (not d!2002953) (not b!6390330) (not d!2003031) (not bm!546424) (not d!2002995) (not d!2002805) (not b!6389990) (not d!2002951) (not bm!546423) (not d!2002807) (not b!6389337) (not bm!546407) (not bm!546329) (not b!6390344) (not b!6390110) (not b!6389338) (not d!2002799) (not d!2002881) (not d!2002815) (not b!6390327) (not bm!546327) (not b!6390221) (not d!2003049) (not b!6389960) (not b!6389480) (not d!2002923) (not b!6390184) (not b!6390109) (not b!6390320) (not b!6390088) (not b!6389807) (not d!2003007) (not d!2002993) (not d!2002997) (not b!6389628) (not d!2002999) (not b!6390098) (not bm!546331) (not b!6390086) (not b!6389336) (not d!2003069) (not bs!1599117) (not b!6389573) (not b!6390126) (not d!2002977) (not b_lambda!242777) (not d!2003047) (not b!6390340) (not d!2002987) (not b!6389484) (not bm!546336) (not bm!546418) (not b!6390099) (not bm!546334) (not d!2003043) (not bm!546412) (not b!6390343) (not b!6390314) (not b!6390046) (not b!6390041) (not b!6390097) (not b!6389804) (not bm!546333) (not bs!1599118) (not b!6390198) (not bm!546394) (not b!6389802) (not d!2002861) (not b!6389330) (not d!2002957) (not setNonEmpty!43636) (not b!6389961) (not b!6389486) (not b!6389626) (not b!6390190) (not d!2002819) (not b!6390315) (not b!6390191) (not bm!546431) (not b!6390100) (not b!6389316) (not b!6389803) (not b!6390195) (not d!2003039) (not d!2002989) (not bm!546382) (not d!2002867) (not bm!546328) (not d!2003025) (not d!2002985) (not b!6390044) (not bm!546270) (not b!6390023) (not d!2002963) (not d!2003005) (not bs!1599119) (not b!6390337) (not bm!546422) (not b!6389324) (not b!6390220) (not b!6390296) (not b!6390186) (not d!2002871) (not d!2002809) (not bm!546432) (not d!2003051) tp_is_empty!41867 (not d!2002949) (not b_lambda!242771) (not b!6390316) (not b!6390163) (not bm!546393) (not b!6390341) (not b!6390107) (not bm!546273) (not b!6389956) (not b!6390111) (not b!6390103) (not b!6389318) (not d!2002797) (not b!6389639) (not b!6389957) (not b!6389317) (not b!6389629) (not bm!546413) (not bm!546383) (not d!2002991) (not d!2002839) (not b!6390084) (not bm!546268) (not bm!546415) (not b!6390345) (not bm!546391) (not b!6390039) (not d!2002845) (not bm!546338) (not bm!546276) (not b!6389995) (not b!6389622))
(check-sat)
