; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!655548 () Bool)

(assert start!655548)

(declare-fun b!6768233 () Bool)

(assert (=> b!6768233 true))

(assert (=> b!6768233 true))

(declare-fun lambda!380801 () Int)

(declare-fun lambda!380800 () Int)

(assert (=> b!6768233 (not (= lambda!380801 lambda!380800))))

(assert (=> b!6768233 true))

(assert (=> b!6768233 true))

(declare-fun lambda!380802 () Int)

(assert (=> b!6768233 (not (= lambda!380802 lambda!380800))))

(assert (=> b!6768233 (not (= lambda!380802 lambda!380801))))

(assert (=> b!6768233 true))

(assert (=> b!6768233 true))

(declare-fun b!6768235 () Bool)

(assert (=> b!6768235 true))

(declare-fun e!4086495 () Bool)

(declare-fun e!4086493 () Bool)

(assert (=> b!6768233 (= e!4086495 e!4086493)))

(declare-fun res!2767431 () Bool)

(assert (=> b!6768233 (=> res!2767431 e!4086493)))

(declare-fun lt!2443185 () Bool)

(declare-fun e!4086490 () Bool)

(assert (=> b!6768233 (= res!2767431 (not (= lt!2443185 e!4086490)))))

(declare-fun res!2767419 () Bool)

(assert (=> b!6768233 (=> res!2767419 e!4086490)))

(declare-datatypes ((C!33460 0))(
  ( (C!33461 (val!26432 Int)) )
))
(declare-datatypes ((List!66084 0))(
  ( (Nil!65960) (Cons!65960 (h!72408 C!33460) (t!379793 List!66084)) )
))
(declare-fun s!2326 () List!66084)

(declare-fun isEmpty!38317 (List!66084) Bool)

(assert (=> b!6768233 (= res!2767419 (isEmpty!38317 s!2326))))

(declare-fun Exists!3663 (Int) Bool)

(assert (=> b!6768233 (= (Exists!3663 lambda!380800) (Exists!3663 lambda!380802))))

(declare-datatypes ((Unit!159881 0))(
  ( (Unit!159882) )
))
(declare-fun lt!2443201 () Unit!159881)

(declare-datatypes ((Regex!16595 0))(
  ( (ElementMatch!16595 (c!1256657 C!33460)) (Concat!25440 (regOne!33702 Regex!16595) (regTwo!33702 Regex!16595)) (EmptyExpr!16595) (Star!16595 (reg!16924 Regex!16595)) (EmptyLang!16595) (Union!16595 (regOne!33703 Regex!16595) (regTwo!33703 Regex!16595)) )
))
(declare-fun r!7292 () Regex!16595)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2190 (Regex!16595 Regex!16595 List!66084) Unit!159881)

(assert (=> b!6768233 (= lt!2443201 (lemmaExistCutMatchRandMatchRSpecEquivalent!2190 (reg!16924 r!7292) r!7292 s!2326))))

(assert (=> b!6768233 (= (Exists!3663 lambda!380800) (Exists!3663 lambda!380801))))

(declare-fun lt!2443199 () Unit!159881)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!754 (Regex!16595 List!66084) Unit!159881)

(assert (=> b!6768233 (= lt!2443199 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!754 (reg!16924 r!7292) s!2326))))

(declare-fun lt!2443189 () Bool)

(assert (=> b!6768233 (= lt!2443189 (Exists!3663 lambda!380800))))

(declare-datatypes ((tuple2!67140 0))(
  ( (tuple2!67141 (_1!36873 List!66084) (_2!36873 List!66084)) )
))
(declare-datatypes ((Option!16482 0))(
  ( (None!16481) (Some!16481 (v!52685 tuple2!67140)) )
))
(declare-fun lt!2443181 () Option!16482)

(declare-fun isDefined!13185 (Option!16482) Bool)

(assert (=> b!6768233 (= lt!2443189 (isDefined!13185 lt!2443181))))

(declare-fun findConcatSeparation!2896 (Regex!16595 Regex!16595 List!66084 List!66084 List!66084) Option!16482)

(assert (=> b!6768233 (= lt!2443181 (findConcatSeparation!2896 (reg!16924 r!7292) r!7292 Nil!65960 s!2326 s!2326))))

(declare-fun lt!2443202 () Unit!159881)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2660 (Regex!16595 Regex!16595 List!66084) Unit!159881)

(assert (=> b!6768233 (= lt!2443202 (lemmaFindConcatSeparationEquivalentToExists!2660 (reg!16924 r!7292) r!7292 s!2326))))

(declare-fun b!6768234 () Bool)

(declare-fun res!2767426 () Bool)

(declare-fun e!4086477 () Bool)

(assert (=> b!6768234 (=> res!2767426 e!4086477)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!66085 0))(
  ( (Nil!65961) (Cons!65961 (h!72409 Regex!16595) (t!379794 List!66085)) )
))
(declare-datatypes ((Context!11958 0))(
  ( (Context!11959 (exprs!6479 List!66085)) )
))
(declare-fun lt!2443188 () (InoxSet Context!11958))

(declare-fun matchZipper!2581 ((InoxSet Context!11958) List!66084) Bool)

(declare-fun derivationStepZipper!2539 ((InoxSet Context!11958) C!33460) (InoxSet Context!11958))

(assert (=> b!6768234 (= res!2767426 (not (= (matchZipper!2581 lt!2443188 s!2326) (matchZipper!2581 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) (t!379793 s!2326)))))))

(declare-fun e!4086487 () Bool)

(declare-fun e!4086492 () Bool)

(assert (=> b!6768235 (= e!4086487 e!4086492)))

(declare-fun res!2767437 () Bool)

(assert (=> b!6768235 (=> res!2767437 e!4086492)))

(declare-fun lt!2443205 () (InoxSet Context!11958))

(declare-fun lt!2443187 () (InoxSet Context!11958))

(assert (=> b!6768235 (= res!2767437 (not (= lt!2443205 lt!2443187)))))

(declare-fun z!1189 () (InoxSet Context!11958))

(declare-datatypes ((List!66086 0))(
  ( (Nil!65962) (Cons!65962 (h!72410 Context!11958) (t!379795 List!66086)) )
))
(declare-fun zl!343 () List!66086)

(declare-fun lambda!380803 () Int)

(declare-fun flatMap!2076 ((InoxSet Context!11958) Int) (InoxSet Context!11958))

(declare-fun derivationStepZipperUp!1749 (Context!11958 C!33460) (InoxSet Context!11958))

(assert (=> b!6768235 (= (flatMap!2076 z!1189 lambda!380803) (derivationStepZipperUp!1749 (h!72410 zl!343) (h!72408 s!2326)))))

(declare-fun lt!2443190 () Unit!159881)

(declare-fun lemmaFlatMapOnSingletonSet!1602 ((InoxSet Context!11958) Context!11958 Int) Unit!159881)

(assert (=> b!6768235 (= lt!2443190 (lemmaFlatMapOnSingletonSet!1602 z!1189 (h!72410 zl!343) lambda!380803))))

(declare-fun b!6768236 () Bool)

(declare-fun e!4086476 () Bool)

(assert (=> b!6768236 (= e!4086477 e!4086476)))

(declare-fun res!2767436 () Bool)

(assert (=> b!6768236 (=> res!2767436 e!4086476)))

(declare-fun lt!2443194 () Context!11958)

(declare-fun lt!2443204 () Regex!16595)

(declare-fun unfocusZipper!2337 (List!66086) Regex!16595)

(assert (=> b!6768236 (= res!2767436 (not (= (unfocusZipper!2337 (Cons!65962 lt!2443194 Nil!65962)) lt!2443204)))))

(assert (=> b!6768236 (= lt!2443204 (Concat!25440 (reg!16924 r!7292) r!7292))))

(declare-fun b!6768237 () Bool)

(declare-fun e!4086489 () Bool)

(declare-fun tp!1854734 () Bool)

(assert (=> b!6768237 (= e!4086489 tp!1854734)))

(declare-fun b!6768238 () Bool)

(declare-fun e!4086478 () Bool)

(declare-fun tp!1854733 () Bool)

(assert (=> b!6768238 (= e!4086478 tp!1854733)))

(declare-fun b!6768239 () Bool)

(declare-fun res!2767430 () Bool)

(declare-fun e!4086488 () Bool)

(assert (=> b!6768239 (=> (not res!2767430) (not e!4086488))))

(declare-fun toList!10379 ((InoxSet Context!11958)) List!66086)

(assert (=> b!6768239 (= res!2767430 (= (toList!10379 z!1189) zl!343))))

(declare-fun b!6768240 () Bool)

(declare-fun e!4086480 () Bool)

(declare-fun e!4086491 () Bool)

(assert (=> b!6768240 (= e!4086480 e!4086491)))

(declare-fun res!2767425 () Bool)

(assert (=> b!6768240 (=> res!2767425 e!4086491)))

(declare-fun lt!2443197 () Bool)

(assert (=> b!6768240 (= res!2767425 (not lt!2443197))))

(declare-fun res!2767442 () Bool)

(assert (=> start!655548 (=> (not res!2767442) (not e!4086488))))

(declare-fun validRegex!8331 (Regex!16595) Bool)

(assert (=> start!655548 (= res!2767442 (validRegex!8331 r!7292))))

(assert (=> start!655548 e!4086488))

(assert (=> start!655548 e!4086489))

(declare-fun condSetEmpty!46277 () Bool)

(assert (=> start!655548 (= condSetEmpty!46277 (= z!1189 ((as const (Array Context!11958 Bool)) false)))))

(declare-fun setRes!46277 () Bool)

(assert (=> start!655548 setRes!46277))

(declare-fun e!4086484 () Bool)

(assert (=> start!655548 e!4086484))

(declare-fun e!4086486 () Bool)

(assert (=> start!655548 e!4086486))

(declare-fun b!6768241 () Bool)

(declare-fun e!4086485 () Bool)

(assert (=> b!6768241 (= e!4086491 e!4086485)))

(declare-fun res!2767427 () Bool)

(assert (=> b!6768241 (=> (not res!2767427) (not e!4086485))))

(assert (=> b!6768241 (= res!2767427 (= (Exists!3663 lambda!380800) (Exists!3663 lambda!380801)))))

(declare-fun b!6768242 () Bool)

(declare-fun res!2767438 () Bool)

(declare-fun e!4086479 () Bool)

(assert (=> b!6768242 (=> res!2767438 e!4086479)))

(declare-fun lt!2443186 () tuple2!67140)

(declare-fun matchR!8778 (Regex!16595 List!66084) Bool)

(assert (=> b!6768242 (= res!2767438 (not (matchR!8778 r!7292 (_2!36873 lt!2443186))))))

(declare-fun b!6768243 () Bool)

(declare-fun res!2767423 () Bool)

(assert (=> b!6768243 (=> res!2767423 e!4086495)))

(get-info :version)

(assert (=> b!6768243 (= res!2767423 (not ((_ is Cons!65961) (exprs!6479 (h!72410 zl!343)))))))

(declare-fun b!6768244 () Bool)

(assert (=> b!6768244 (= e!4086485 (= lt!2443189 (Exists!3663 lambda!380800)))))

(declare-fun b!6768245 () Bool)

(declare-fun tp_is_empty!42443 () Bool)

(declare-fun tp!1854736 () Bool)

(assert (=> b!6768245 (= e!4086486 (and tp_is_empty!42443 tp!1854736))))

(declare-fun b!6768246 () Bool)

(assert (=> b!6768246 (= e!4086490 lt!2443189)))

(declare-fun b!6768247 () Bool)

(declare-fun e!4086481 () Bool)

(assert (=> b!6768247 (= e!4086481 (not e!4086495))))

(declare-fun res!2767429 () Bool)

(assert (=> b!6768247 (=> res!2767429 e!4086495)))

(assert (=> b!6768247 (= res!2767429 (not ((_ is Cons!65962) zl!343)))))

(declare-fun matchRSpec!3696 (Regex!16595 List!66084) Bool)

(assert (=> b!6768247 (= lt!2443185 (matchRSpec!3696 r!7292 s!2326))))

(assert (=> b!6768247 (= lt!2443185 (matchR!8778 r!7292 s!2326))))

(declare-fun lt!2443184 () Unit!159881)

(declare-fun mainMatchTheorem!3696 (Regex!16595 List!66084) Unit!159881)

(assert (=> b!6768247 (= lt!2443184 (mainMatchTheorem!3696 r!7292 s!2326))))

(declare-fun b!6768248 () Bool)

(assert (=> b!6768248 (= e!4086488 e!4086481)))

(declare-fun res!2767439 () Bool)

(assert (=> b!6768248 (=> (not res!2767439) (not e!4086481))))

(declare-fun lt!2443182 () Regex!16595)

(assert (=> b!6768248 (= res!2767439 (= r!7292 lt!2443182))))

(assert (=> b!6768248 (= lt!2443182 (unfocusZipper!2337 zl!343))))

(declare-fun b!6768249 () Bool)

(declare-fun e!4086497 () Bool)

(declare-fun e!4086498 () Bool)

(assert (=> b!6768249 (= e!4086497 e!4086498)))

(declare-fun res!2767432 () Bool)

(assert (=> b!6768249 (=> res!2767432 e!4086498)))

(declare-fun lt!2443179 () List!66086)

(assert (=> b!6768249 (= res!2767432 (not (= (unfocusZipper!2337 lt!2443179) r!7292)))))

(declare-fun lt!2443210 () Context!11958)

(assert (=> b!6768249 (= lt!2443179 (Cons!65962 lt!2443210 Nil!65962))))

(declare-fun b!6768250 () Bool)

(declare-fun e!4086496 () Bool)

(assert (=> b!6768250 (= e!4086479 e!4086496)))

(declare-fun res!2767418 () Bool)

(assert (=> b!6768250 (=> res!2767418 e!4086496)))

(assert (=> b!6768250 (= res!2767418 (not (validRegex!8331 r!7292)))))

(declare-fun lt!2443198 () (InoxSet Context!11958))

(assert (=> b!6768250 (matchZipper!2581 lt!2443198 (_1!36873 lt!2443186))))

(declare-fun lt!2443209 () List!66086)

(declare-fun lt!2443192 () Unit!159881)

(declare-fun theoremZipperRegexEquiv!925 ((InoxSet Context!11958) List!66086 Regex!16595 List!66084) Unit!159881)

(assert (=> b!6768250 (= lt!2443192 (theoremZipperRegexEquiv!925 lt!2443198 lt!2443209 (reg!16924 r!7292) (_1!36873 lt!2443186)))))

(declare-fun b!6768251 () Bool)

(declare-fun tp!1854737 () Bool)

(declare-fun tp!1854738 () Bool)

(assert (=> b!6768251 (= e!4086489 (and tp!1854737 tp!1854738))))

(declare-fun b!6768252 () Bool)

(declare-fun tp!1854732 () Bool)

(declare-fun inv!84734 (Context!11958) Bool)

(assert (=> b!6768252 (= e!4086484 (and (inv!84734 (h!72410 zl!343)) e!4086478 tp!1854732))))

(declare-fun b!6768253 () Bool)

(assert (=> b!6768253 (= e!4086489 tp_is_empty!42443)))

(declare-fun b!6768254 () Bool)

(declare-fun e!4086494 () Bool)

(declare-fun tp!1854735 () Bool)

(assert (=> b!6768254 (= e!4086494 tp!1854735)))

(declare-fun b!6768255 () Bool)

(declare-fun res!2767421 () Bool)

(assert (=> b!6768255 (=> res!2767421 e!4086493)))

(assert (=> b!6768255 (= res!2767421 ((_ is Nil!65960) s!2326))))

(declare-fun b!6768256 () Bool)

(declare-fun e!4086483 () Bool)

(assert (=> b!6768256 (= e!4086483 e!4086497)))

(declare-fun res!2767415 () Bool)

(assert (=> b!6768256 (=> res!2767415 e!4086497)))

(assert (=> b!6768256 (= res!2767415 (not (= (unfocusZipper!2337 lt!2443209) (reg!16924 r!7292))))))

(declare-fun lt!2443180 () Context!11958)

(assert (=> b!6768256 (= lt!2443209 (Cons!65962 lt!2443180 Nil!65962))))

(declare-fun b!6768257 () Bool)

(declare-fun e!4086482 () Bool)

(assert (=> b!6768257 (= e!4086482 e!4086479)))

(declare-fun res!2767420 () Bool)

(assert (=> b!6768257 (=> res!2767420 e!4086479)))

(declare-fun ++!14749 (List!66084 List!66084) List!66084)

(assert (=> b!6768257 (= res!2767420 (not (= s!2326 (++!14749 (_1!36873 lt!2443186) (_2!36873 lt!2443186)))))))

(declare-fun get!22962 (Option!16482) tuple2!67140)

(assert (=> b!6768257 (= lt!2443186 (get!22962 lt!2443181))))

(declare-fun b!6768258 () Bool)

(declare-fun lt!2443206 () (InoxSet Context!11958))

(assert (=> b!6768258 (= e!4086496 (= (toList!10379 lt!2443206) lt!2443179))))

(declare-fun b!6768259 () Bool)

(declare-fun res!2767422 () Bool)

(assert (=> b!6768259 (=> res!2767422 e!4086495)))

(declare-fun generalisedUnion!2439 (List!66085) Regex!16595)

(declare-fun unfocusZipperList!2016 (List!66086) List!66085)

(assert (=> b!6768259 (= res!2767422 (not (= r!7292 (generalisedUnion!2439 (unfocusZipperList!2016 zl!343)))))))

(declare-fun b!6768260 () Bool)

(assert (=> b!6768260 (= e!4086492 e!4086477)))

(declare-fun res!2767428 () Bool)

(assert (=> b!6768260 (=> res!2767428 e!4086477)))

(declare-fun derivationStepZipperDown!1823 (Regex!16595 Context!11958 C!33460) (InoxSet Context!11958))

(assert (=> b!6768260 (= res!2767428 (not (= lt!2443205 (derivationStepZipperDown!1823 (reg!16924 r!7292) lt!2443210 (h!72408 s!2326)))))))

(declare-fun lt!2443183 () List!66085)

(assert (=> b!6768260 (= lt!2443210 (Context!11959 lt!2443183))))

(assert (=> b!6768260 (= (flatMap!2076 lt!2443188 lambda!380803) (derivationStepZipperUp!1749 lt!2443194 (h!72408 s!2326)))))

(declare-fun lt!2443203 () Unit!159881)

(assert (=> b!6768260 (= lt!2443203 (lemmaFlatMapOnSingletonSet!1602 lt!2443188 lt!2443194 lambda!380803))))

(declare-fun lt!2443195 () (InoxSet Context!11958))

(assert (=> b!6768260 (= lt!2443195 (derivationStepZipperUp!1749 lt!2443194 (h!72408 s!2326)))))

(assert (=> b!6768260 (= lt!2443188 (store ((as const (Array Context!11958 Bool)) false) lt!2443194 true))))

(assert (=> b!6768260 (= lt!2443194 (Context!11959 (Cons!65961 (reg!16924 r!7292) lt!2443183)))))

(assert (=> b!6768260 (= lt!2443183 (Cons!65961 r!7292 Nil!65961))))

(declare-fun b!6768261 () Bool)

(declare-fun res!2767441 () Bool)

(assert (=> b!6768261 (=> res!2767441 e!4086495)))

(declare-fun isEmpty!38318 (List!66086) Bool)

(assert (=> b!6768261 (= res!2767441 (not (isEmpty!38318 (t!379795 zl!343))))))

(declare-fun b!6768262 () Bool)

(declare-fun res!2767416 () Bool)

(assert (=> b!6768262 (=> res!2767416 e!4086495)))

(assert (=> b!6768262 (= res!2767416 (or ((_ is EmptyExpr!16595) r!7292) ((_ is EmptyLang!16595) r!7292) ((_ is ElementMatch!16595) r!7292) ((_ is Union!16595) r!7292) ((_ is Concat!25440) r!7292)))))

(declare-fun b!6768263 () Bool)

(declare-fun res!2767417 () Bool)

(assert (=> b!6768263 (=> res!2767417 e!4086495)))

(declare-fun generalisedConcat!2192 (List!66085) Regex!16595)

(assert (=> b!6768263 (= res!2767417 (not (= r!7292 (generalisedConcat!2192 (exprs!6479 (h!72410 zl!343))))))))

(declare-fun b!6768264 () Bool)

(declare-fun res!2767440 () Bool)

(assert (=> b!6768264 (=> res!2767440 e!4086479)))

(assert (=> b!6768264 (= res!2767440 (not (matchR!8778 (reg!16924 r!7292) (_1!36873 lt!2443186))))))

(declare-fun b!6768265 () Bool)

(declare-fun tp!1854739 () Bool)

(declare-fun tp!1854741 () Bool)

(assert (=> b!6768265 (= e!4086489 (and tp!1854739 tp!1854741))))

(declare-fun setIsEmpty!46277 () Bool)

(assert (=> setIsEmpty!46277 setRes!46277))

(declare-fun b!6768266 () Bool)

(assert (=> b!6768266 (= e!4086476 e!4086483)))

(declare-fun res!2767433 () Bool)

(assert (=> b!6768266 (=> res!2767433 e!4086483)))

(assert (=> b!6768266 (= res!2767433 (not (= lt!2443205 (derivationStepZipper!2539 lt!2443206 (h!72408 s!2326)))))))

(assert (=> b!6768266 (= (flatMap!2076 lt!2443206 lambda!380803) (derivationStepZipperUp!1749 lt!2443210 (h!72408 s!2326)))))

(declare-fun lt!2443208 () Unit!159881)

(assert (=> b!6768266 (= lt!2443208 (lemmaFlatMapOnSingletonSet!1602 lt!2443206 lt!2443210 lambda!380803))))

(assert (=> b!6768266 (= (flatMap!2076 lt!2443198 lambda!380803) (derivationStepZipperUp!1749 lt!2443180 (h!72408 s!2326)))))

(declare-fun lt!2443207 () Unit!159881)

(assert (=> b!6768266 (= lt!2443207 (lemmaFlatMapOnSingletonSet!1602 lt!2443198 lt!2443180 lambda!380803))))

(declare-fun lt!2443193 () (InoxSet Context!11958))

(assert (=> b!6768266 (= lt!2443193 (derivationStepZipperUp!1749 lt!2443210 (h!72408 s!2326)))))

(declare-fun lt!2443196 () (InoxSet Context!11958))

(assert (=> b!6768266 (= lt!2443196 (derivationStepZipperUp!1749 lt!2443180 (h!72408 s!2326)))))

(assert (=> b!6768266 (= lt!2443206 (store ((as const (Array Context!11958 Bool)) false) lt!2443210 true))))

(assert (=> b!6768266 (= lt!2443198 (store ((as const (Array Context!11958 Bool)) false) lt!2443180 true))))

(assert (=> b!6768266 (= lt!2443180 (Context!11959 (Cons!65961 (reg!16924 r!7292) Nil!65961)))))

(declare-fun b!6768267 () Bool)

(assert (=> b!6768267 (= e!4086493 e!4086487)))

(declare-fun res!2767424 () Bool)

(assert (=> b!6768267 (=> res!2767424 e!4086487)))

(declare-fun lt!2443191 () (InoxSet Context!11958))

(assert (=> b!6768267 (= res!2767424 (not (= lt!2443191 lt!2443187)))))

(assert (=> b!6768267 (= lt!2443187 (derivationStepZipperDown!1823 r!7292 (Context!11959 Nil!65961) (h!72408 s!2326)))))

(assert (=> b!6768267 (= lt!2443191 (derivationStepZipperUp!1749 (Context!11959 (Cons!65961 r!7292 Nil!65961)) (h!72408 s!2326)))))

(assert (=> b!6768267 (= lt!2443205 (derivationStepZipper!2539 z!1189 (h!72408 s!2326)))))

(declare-fun tp!1854740 () Bool)

(declare-fun setNonEmpty!46277 () Bool)

(declare-fun setElem!46277 () Context!11958)

(assert (=> setNonEmpty!46277 (= setRes!46277 (and tp!1854740 (inv!84734 setElem!46277) e!4086494))))

(declare-fun setRest!46277 () (InoxSet Context!11958))

(assert (=> setNonEmpty!46277 (= z!1189 ((_ map or) (store ((as const (Array Context!11958 Bool)) false) setElem!46277 true) setRest!46277))))

(declare-fun b!6768268 () Bool)

(assert (=> b!6768268 (= e!4086498 e!4086482)))

(declare-fun res!2767434 () Bool)

(assert (=> b!6768268 (=> res!2767434 e!4086482)))

(assert (=> b!6768268 (= res!2767434 (not lt!2443197))))

(assert (=> b!6768268 e!4086480))

(declare-fun res!2767435 () Bool)

(assert (=> b!6768268 (=> (not res!2767435) (not e!4086480))))

(assert (=> b!6768268 (= res!2767435 (= lt!2443197 (matchRSpec!3696 lt!2443204 s!2326)))))

(assert (=> b!6768268 (= lt!2443197 (matchR!8778 lt!2443204 s!2326))))

(declare-fun lt!2443200 () Unit!159881)

(assert (=> b!6768268 (= lt!2443200 (mainMatchTheorem!3696 lt!2443204 s!2326))))

(declare-fun b!6768269 () Bool)

(declare-fun res!2767414 () Bool)

(assert (=> b!6768269 (=> res!2767414 e!4086477)))

(assert (=> b!6768269 (= res!2767414 (or (not (= lt!2443182 r!7292)) (not (= r!7292 r!7292))))))

(assert (= (and start!655548 res!2767442) b!6768239))

(assert (= (and b!6768239 res!2767430) b!6768248))

(assert (= (and b!6768248 res!2767439) b!6768247))

(assert (= (and b!6768247 (not res!2767429)) b!6768261))

(assert (= (and b!6768261 (not res!2767441)) b!6768263))

(assert (= (and b!6768263 (not res!2767417)) b!6768243))

(assert (= (and b!6768243 (not res!2767423)) b!6768259))

(assert (= (and b!6768259 (not res!2767422)) b!6768262))

(assert (= (and b!6768262 (not res!2767416)) b!6768233))

(assert (= (and b!6768233 (not res!2767419)) b!6768246))

(assert (= (and b!6768233 (not res!2767431)) b!6768255))

(assert (= (and b!6768255 (not res!2767421)) b!6768267))

(assert (= (and b!6768267 (not res!2767424)) b!6768235))

(assert (= (and b!6768235 (not res!2767437)) b!6768260))

(assert (= (and b!6768260 (not res!2767428)) b!6768234))

(assert (= (and b!6768234 (not res!2767426)) b!6768269))

(assert (= (and b!6768269 (not res!2767414)) b!6768236))

(assert (= (and b!6768236 (not res!2767436)) b!6768266))

(assert (= (and b!6768266 (not res!2767433)) b!6768256))

(assert (= (and b!6768256 (not res!2767415)) b!6768249))

(assert (= (and b!6768249 (not res!2767432)) b!6768268))

(assert (= (and b!6768268 res!2767435) b!6768240))

(assert (= (and b!6768240 (not res!2767425)) b!6768241))

(assert (= (and b!6768241 res!2767427) b!6768244))

(assert (= (and b!6768268 (not res!2767434)) b!6768257))

(assert (= (and b!6768257 (not res!2767420)) b!6768264))

(assert (= (and b!6768264 (not res!2767440)) b!6768242))

(assert (= (and b!6768242 (not res!2767438)) b!6768250))

(assert (= (and b!6768250 (not res!2767418)) b!6768258))

(assert (= (and start!655548 ((_ is ElementMatch!16595) r!7292)) b!6768253))

(assert (= (and start!655548 ((_ is Concat!25440) r!7292)) b!6768251))

(assert (= (and start!655548 ((_ is Star!16595) r!7292)) b!6768237))

(assert (= (and start!655548 ((_ is Union!16595) r!7292)) b!6768265))

(assert (= (and start!655548 condSetEmpty!46277) setIsEmpty!46277))

(assert (= (and start!655548 (not condSetEmpty!46277)) setNonEmpty!46277))

(assert (= setNonEmpty!46277 b!6768254))

(assert (= b!6768252 b!6768238))

(assert (= (and start!655548 ((_ is Cons!65962) zl!343)) b!6768252))

(assert (= (and start!655548 ((_ is Cons!65960) s!2326)) b!6768245))

(declare-fun m!7518982 () Bool)

(assert (=> b!6768235 m!7518982))

(declare-fun m!7518984 () Bool)

(assert (=> b!6768235 m!7518984))

(declare-fun m!7518986 () Bool)

(assert (=> b!6768235 m!7518986))

(declare-fun m!7518988 () Bool)

(assert (=> b!6768256 m!7518988))

(declare-fun m!7518990 () Bool)

(assert (=> b!6768249 m!7518990))

(declare-fun m!7518992 () Bool)

(assert (=> b!6768261 m!7518992))

(declare-fun m!7518994 () Bool)

(assert (=> b!6768242 m!7518994))

(declare-fun m!7518996 () Bool)

(assert (=> b!6768241 m!7518996))

(declare-fun m!7518998 () Bool)

(assert (=> b!6768241 m!7518998))

(declare-fun m!7519000 () Bool)

(assert (=> b!6768264 m!7519000))

(declare-fun m!7519002 () Bool)

(assert (=> b!6768248 m!7519002))

(declare-fun m!7519004 () Bool)

(assert (=> b!6768252 m!7519004))

(declare-fun m!7519006 () Bool)

(assert (=> start!655548 m!7519006))

(declare-fun m!7519008 () Bool)

(assert (=> b!6768260 m!7519008))

(declare-fun m!7519010 () Bool)

(assert (=> b!6768260 m!7519010))

(declare-fun m!7519012 () Bool)

(assert (=> b!6768260 m!7519012))

(declare-fun m!7519014 () Bool)

(assert (=> b!6768260 m!7519014))

(declare-fun m!7519016 () Bool)

(assert (=> b!6768260 m!7519016))

(declare-fun m!7519018 () Bool)

(assert (=> b!6768234 m!7519018))

(declare-fun m!7519020 () Bool)

(assert (=> b!6768234 m!7519020))

(assert (=> b!6768234 m!7519020))

(declare-fun m!7519022 () Bool)

(assert (=> b!6768234 m!7519022))

(declare-fun m!7519024 () Bool)

(assert (=> b!6768236 m!7519024))

(declare-fun m!7519026 () Bool)

(assert (=> b!6768263 m!7519026))

(assert (=> b!6768244 m!7518996))

(declare-fun m!7519028 () Bool)

(assert (=> b!6768247 m!7519028))

(declare-fun m!7519030 () Bool)

(assert (=> b!6768247 m!7519030))

(declare-fun m!7519032 () Bool)

(assert (=> b!6768247 m!7519032))

(declare-fun m!7519034 () Bool)

(assert (=> b!6768233 m!7519034))

(declare-fun m!7519036 () Bool)

(assert (=> b!6768233 m!7519036))

(declare-fun m!7519038 () Bool)

(assert (=> b!6768233 m!7519038))

(assert (=> b!6768233 m!7518996))

(assert (=> b!6768233 m!7518998))

(declare-fun m!7519040 () Bool)

(assert (=> b!6768233 m!7519040))

(declare-fun m!7519042 () Bool)

(assert (=> b!6768233 m!7519042))

(assert (=> b!6768233 m!7518996))

(declare-fun m!7519044 () Bool)

(assert (=> b!6768233 m!7519044))

(assert (=> b!6768233 m!7518996))

(declare-fun m!7519046 () Bool)

(assert (=> b!6768233 m!7519046))

(declare-fun m!7519048 () Bool)

(assert (=> b!6768257 m!7519048))

(declare-fun m!7519050 () Bool)

(assert (=> b!6768257 m!7519050))

(declare-fun m!7519052 () Bool)

(assert (=> b!6768268 m!7519052))

(declare-fun m!7519054 () Bool)

(assert (=> b!6768268 m!7519054))

(declare-fun m!7519056 () Bool)

(assert (=> b!6768268 m!7519056))

(declare-fun m!7519058 () Bool)

(assert (=> b!6768259 m!7519058))

(assert (=> b!6768259 m!7519058))

(declare-fun m!7519060 () Bool)

(assert (=> b!6768259 m!7519060))

(assert (=> b!6768250 m!7519006))

(declare-fun m!7519062 () Bool)

(assert (=> b!6768250 m!7519062))

(declare-fun m!7519064 () Bool)

(assert (=> b!6768250 m!7519064))

(declare-fun m!7519066 () Bool)

(assert (=> b!6768239 m!7519066))

(declare-fun m!7519068 () Bool)

(assert (=> b!6768267 m!7519068))

(declare-fun m!7519070 () Bool)

(assert (=> b!6768267 m!7519070))

(declare-fun m!7519072 () Bool)

(assert (=> b!6768267 m!7519072))

(declare-fun m!7519074 () Bool)

(assert (=> setNonEmpty!46277 m!7519074))

(declare-fun m!7519076 () Bool)

(assert (=> b!6768266 m!7519076))

(declare-fun m!7519078 () Bool)

(assert (=> b!6768266 m!7519078))

(declare-fun m!7519080 () Bool)

(assert (=> b!6768266 m!7519080))

(declare-fun m!7519082 () Bool)

(assert (=> b!6768266 m!7519082))

(declare-fun m!7519084 () Bool)

(assert (=> b!6768266 m!7519084))

(declare-fun m!7519086 () Bool)

(assert (=> b!6768266 m!7519086))

(declare-fun m!7519088 () Bool)

(assert (=> b!6768266 m!7519088))

(declare-fun m!7519090 () Bool)

(assert (=> b!6768266 m!7519090))

(declare-fun m!7519092 () Bool)

(assert (=> b!6768266 m!7519092))

(declare-fun m!7519094 () Bool)

(assert (=> b!6768258 m!7519094))

(check-sat (not b!6768265) (not b!6768254) (not b!6768257) (not b!6768241) (not b!6768245) (not b!6768266) (not b!6768268) (not b!6768256) (not b!6768261) (not b!6768239) (not b!6768264) tp_is_empty!42443 (not setNonEmpty!46277) (not b!6768233) (not b!6768267) (not b!6768258) (not b!6768247) (not b!6768250) (not b!6768260) (not b!6768248) (not b!6768249) (not b!6768242) (not b!6768244) (not b!6768259) (not b!6768252) (not b!6768237) (not b!6768263) (not b!6768238) (not b!6768251) (not b!6768235) (not start!655548) (not b!6768236) (not b!6768234))
(check-sat)
(get-model)

(declare-fun d!2126099 () Bool)

(declare-fun c!1256662 () Bool)

(assert (=> d!2126099 (= c!1256662 (isEmpty!38317 s!2326))))

(declare-fun e!4086503 () Bool)

(assert (=> d!2126099 (= (matchZipper!2581 lt!2443188 s!2326) e!4086503)))

(declare-fun b!6768284 () Bool)

(declare-fun nullableZipper!2303 ((InoxSet Context!11958)) Bool)

(assert (=> b!6768284 (= e!4086503 (nullableZipper!2303 lt!2443188))))

(declare-fun b!6768285 () Bool)

(declare-fun head!13605 (List!66084) C!33460)

(declare-fun tail!12690 (List!66084) List!66084)

(assert (=> b!6768285 (= e!4086503 (matchZipper!2581 (derivationStepZipper!2539 lt!2443188 (head!13605 s!2326)) (tail!12690 s!2326)))))

(assert (= (and d!2126099 c!1256662) b!6768284))

(assert (= (and d!2126099 (not c!1256662)) b!6768285))

(assert (=> d!2126099 m!7519036))

(declare-fun m!7519098 () Bool)

(assert (=> b!6768284 m!7519098))

(declare-fun m!7519100 () Bool)

(assert (=> b!6768285 m!7519100))

(assert (=> b!6768285 m!7519100))

(declare-fun m!7519102 () Bool)

(assert (=> b!6768285 m!7519102))

(declare-fun m!7519104 () Bool)

(assert (=> b!6768285 m!7519104))

(assert (=> b!6768285 m!7519102))

(assert (=> b!6768285 m!7519104))

(declare-fun m!7519106 () Bool)

(assert (=> b!6768285 m!7519106))

(assert (=> b!6768234 d!2126099))

(declare-fun d!2126105 () Bool)

(declare-fun c!1256665 () Bool)

(assert (=> d!2126105 (= c!1256665 (isEmpty!38317 (t!379793 s!2326)))))

(declare-fun e!4086508 () Bool)

(assert (=> d!2126105 (= (matchZipper!2581 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) (t!379793 s!2326)) e!4086508)))

(declare-fun b!6768292 () Bool)

(assert (=> b!6768292 (= e!4086508 (nullableZipper!2303 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326))))))

(declare-fun b!6768293 () Bool)

(assert (=> b!6768293 (= e!4086508 (matchZipper!2581 (derivationStepZipper!2539 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) (head!13605 (t!379793 s!2326))) (tail!12690 (t!379793 s!2326))))))

(assert (= (and d!2126105 c!1256665) b!6768292))

(assert (= (and d!2126105 (not c!1256665)) b!6768293))

(declare-fun m!7519108 () Bool)

(assert (=> d!2126105 m!7519108))

(assert (=> b!6768292 m!7519020))

(declare-fun m!7519110 () Bool)

(assert (=> b!6768292 m!7519110))

(declare-fun m!7519112 () Bool)

(assert (=> b!6768293 m!7519112))

(assert (=> b!6768293 m!7519020))

(assert (=> b!6768293 m!7519112))

(declare-fun m!7519114 () Bool)

(assert (=> b!6768293 m!7519114))

(declare-fun m!7519116 () Bool)

(assert (=> b!6768293 m!7519116))

(assert (=> b!6768293 m!7519114))

(assert (=> b!6768293 m!7519116))

(declare-fun m!7519118 () Bool)

(assert (=> b!6768293 m!7519118))

(assert (=> b!6768234 d!2126105))

(declare-fun bs!1801182 () Bool)

(declare-fun d!2126107 () Bool)

(assert (= bs!1801182 (and d!2126107 b!6768235)))

(declare-fun lambda!380806 () Int)

(assert (=> bs!1801182 (= lambda!380806 lambda!380803)))

(assert (=> d!2126107 true))

(assert (=> d!2126107 (= (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) (flatMap!2076 lt!2443188 lambda!380806))))

(declare-fun bs!1801183 () Bool)

(assert (= bs!1801183 d!2126107))

(declare-fun m!7519132 () Bool)

(assert (=> bs!1801183 m!7519132))

(assert (=> b!6768234 d!2126107))

(declare-fun d!2126113 () Bool)

(declare-fun lt!2443219 () Regex!16595)

(assert (=> d!2126113 (validRegex!8331 lt!2443219)))

(assert (=> d!2126113 (= lt!2443219 (generalisedUnion!2439 (unfocusZipperList!2016 lt!2443209)))))

(assert (=> d!2126113 (= (unfocusZipper!2337 lt!2443209) lt!2443219)))

(declare-fun bs!1801185 () Bool)

(assert (= bs!1801185 d!2126113))

(declare-fun m!7519136 () Bool)

(assert (=> bs!1801185 m!7519136))

(declare-fun m!7519138 () Bool)

(assert (=> bs!1801185 m!7519138))

(assert (=> bs!1801185 m!7519138))

(declare-fun m!7519140 () Bool)

(assert (=> bs!1801185 m!7519140))

(assert (=> b!6768256 d!2126113))

(declare-fun d!2126117 () Bool)

(declare-fun choose!50434 ((InoxSet Context!11958) Int) (InoxSet Context!11958))

(assert (=> d!2126117 (= (flatMap!2076 z!1189 lambda!380803) (choose!50434 z!1189 lambda!380803))))

(declare-fun bs!1801186 () Bool)

(assert (= bs!1801186 d!2126117))

(declare-fun m!7519142 () Bool)

(assert (=> bs!1801186 m!7519142))

(assert (=> b!6768235 d!2126117))

(declare-fun b!6768351 () Bool)

(declare-fun e!4086541 () (InoxSet Context!11958))

(assert (=> b!6768351 (= e!4086541 ((as const (Array Context!11958 Bool)) false))))

(declare-fun e!4086539 () (InoxSet Context!11958))

(declare-fun call!613290 () (InoxSet Context!11958))

(declare-fun b!6768352 () Bool)

(assert (=> b!6768352 (= e!4086539 ((_ map or) call!613290 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))) (h!72408 s!2326))))))

(declare-fun b!6768353 () Bool)

(declare-fun e!4086540 () Bool)

(declare-fun nullable!6576 (Regex!16595) Bool)

(assert (=> b!6768353 (= e!4086540 (nullable!6576 (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun d!2126119 () Bool)

(declare-fun c!1256693 () Bool)

(assert (=> d!2126119 (= c!1256693 e!4086540)))

(declare-fun res!2767452 () Bool)

(assert (=> d!2126119 (=> (not res!2767452) (not e!4086540))))

(assert (=> d!2126119 (= res!2767452 ((_ is Cons!65961) (exprs!6479 (h!72410 zl!343))))))

(assert (=> d!2126119 (= (derivationStepZipperUp!1749 (h!72410 zl!343) (h!72408 s!2326)) e!4086539)))

(declare-fun bm!613285 () Bool)

(assert (=> bm!613285 (= call!613290 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 (h!72410 zl!343))) (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))) (h!72408 s!2326)))))

(declare-fun b!6768354 () Bool)

(assert (=> b!6768354 (= e!4086539 e!4086541)))

(declare-fun c!1256694 () Bool)

(assert (=> b!6768354 (= c!1256694 ((_ is Cons!65961) (exprs!6479 (h!72410 zl!343))))))

(declare-fun b!6768355 () Bool)

(assert (=> b!6768355 (= e!4086541 call!613290)))

(assert (= (and d!2126119 res!2767452) b!6768353))

(assert (= (and d!2126119 c!1256693) b!6768352))

(assert (= (and d!2126119 (not c!1256693)) b!6768354))

(assert (= (and b!6768354 c!1256694) b!6768355))

(assert (= (and b!6768354 (not c!1256694)) b!6768351))

(assert (= (or b!6768352 b!6768355) bm!613285))

(declare-fun m!7519162 () Bool)

(assert (=> b!6768352 m!7519162))

(declare-fun m!7519164 () Bool)

(assert (=> b!6768353 m!7519164))

(declare-fun m!7519166 () Bool)

(assert (=> bm!613285 m!7519166))

(assert (=> b!6768235 d!2126119))

(declare-fun d!2126127 () Bool)

(declare-fun dynLambda!26318 (Int Context!11958) (InoxSet Context!11958))

(assert (=> d!2126127 (= (flatMap!2076 z!1189 lambda!380803) (dynLambda!26318 lambda!380803 (h!72410 zl!343)))))

(declare-fun lt!2443225 () Unit!159881)

(declare-fun choose!50435 ((InoxSet Context!11958) Context!11958 Int) Unit!159881)

(assert (=> d!2126127 (= lt!2443225 (choose!50435 z!1189 (h!72410 zl!343) lambda!380803))))

(assert (=> d!2126127 (= z!1189 (store ((as const (Array Context!11958 Bool)) false) (h!72410 zl!343) true))))

(assert (=> d!2126127 (= (lemmaFlatMapOnSingletonSet!1602 z!1189 (h!72410 zl!343) lambda!380803) lt!2443225)))

(declare-fun b_lambda!254863 () Bool)

(assert (=> (not b_lambda!254863) (not d!2126127)))

(declare-fun bs!1801191 () Bool)

(assert (= bs!1801191 d!2126127))

(assert (=> bs!1801191 m!7518982))

(declare-fun m!7519202 () Bool)

(assert (=> bs!1801191 m!7519202))

(declare-fun m!7519204 () Bool)

(assert (=> bs!1801191 m!7519204))

(declare-fun m!7519206 () Bool)

(assert (=> bs!1801191 m!7519206))

(assert (=> b!6768235 d!2126127))

(declare-fun d!2126141 () Bool)

(declare-fun choose!50436 (Int) Bool)

(assert (=> d!2126141 (= (Exists!3663 lambda!380800) (choose!50436 lambda!380800))))

(declare-fun bs!1801193 () Bool)

(assert (= bs!1801193 d!2126141))

(declare-fun m!7519210 () Bool)

(assert (=> bs!1801193 m!7519210))

(assert (=> b!6768233 d!2126141))

(declare-fun bs!1801200 () Bool)

(declare-fun d!2126145 () Bool)

(assert (= bs!1801200 (and d!2126145 b!6768233)))

(declare-fun lambda!380829 () Int)

(assert (=> bs!1801200 (= (= (Star!16595 (reg!16924 r!7292)) r!7292) (= lambda!380829 lambda!380800))))

(assert (=> bs!1801200 (not (= lambda!380829 lambda!380801))))

(assert (=> bs!1801200 (not (= lambda!380829 lambda!380802))))

(assert (=> d!2126145 true))

(assert (=> d!2126145 true))

(declare-fun lambda!380830 () Int)

(assert (=> bs!1801200 (not (= lambda!380830 lambda!380800))))

(assert (=> bs!1801200 (= (= (Star!16595 (reg!16924 r!7292)) r!7292) (= lambda!380830 lambda!380801))))

(assert (=> bs!1801200 (not (= lambda!380830 lambda!380802))))

(declare-fun bs!1801201 () Bool)

(assert (= bs!1801201 d!2126145))

(assert (=> bs!1801201 (not (= lambda!380830 lambda!380829))))

(assert (=> d!2126145 true))

(assert (=> d!2126145 true))

(assert (=> d!2126145 (= (Exists!3663 lambda!380829) (Exists!3663 lambda!380830))))

(declare-fun lt!2443238 () Unit!159881)

(declare-fun choose!50439 (Regex!16595 List!66084) Unit!159881)

(assert (=> d!2126145 (= lt!2443238 (choose!50439 (reg!16924 r!7292) s!2326))))

(assert (=> d!2126145 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126145 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!754 (reg!16924 r!7292) s!2326) lt!2443238)))

(declare-fun m!7519246 () Bool)

(assert (=> bs!1801201 m!7519246))

(declare-fun m!7519248 () Bool)

(assert (=> bs!1801201 m!7519248))

(declare-fun m!7519250 () Bool)

(assert (=> bs!1801201 m!7519250))

(declare-fun m!7519252 () Bool)

(assert (=> bs!1801201 m!7519252))

(assert (=> b!6768233 d!2126145))

(declare-fun d!2126155 () Bool)

(assert (=> d!2126155 (= (Exists!3663 lambda!380802) (choose!50436 lambda!380802))))

(declare-fun bs!1801202 () Bool)

(assert (= bs!1801202 d!2126155))

(declare-fun m!7519254 () Bool)

(assert (=> bs!1801202 m!7519254))

(assert (=> b!6768233 d!2126155))

(declare-fun d!2126157 () Bool)

(assert (=> d!2126157 (= (isEmpty!38317 s!2326) ((_ is Nil!65960) s!2326))))

(assert (=> b!6768233 d!2126157))

(declare-fun d!2126159 () Bool)

(assert (=> d!2126159 (= (Exists!3663 lambda!380801) (choose!50436 lambda!380801))))

(declare-fun bs!1801203 () Bool)

(assert (= bs!1801203 d!2126159))

(declare-fun m!7519256 () Bool)

(assert (=> bs!1801203 m!7519256))

(assert (=> b!6768233 d!2126159))

(declare-fun d!2126161 () Bool)

(declare-fun isEmpty!38321 (Option!16482) Bool)

(assert (=> d!2126161 (= (isDefined!13185 lt!2443181) (not (isEmpty!38321 lt!2443181)))))

(declare-fun bs!1801204 () Bool)

(assert (= bs!1801204 d!2126161))

(declare-fun m!7519258 () Bool)

(assert (=> bs!1801204 m!7519258))

(assert (=> b!6768233 d!2126161))

(declare-fun bs!1801211 () Bool)

(declare-fun d!2126163 () Bool)

(assert (= bs!1801211 (and d!2126163 d!2126145)))

(declare-fun lambda!380841 () Int)

(assert (=> bs!1801211 (= (= r!7292 (Star!16595 (reg!16924 r!7292))) (= lambda!380841 lambda!380829))))

(declare-fun bs!1801212 () Bool)

(assert (= bs!1801212 (and d!2126163 b!6768233)))

(assert (=> bs!1801212 (= lambda!380841 lambda!380800)))

(assert (=> bs!1801212 (not (= lambda!380841 lambda!380802))))

(assert (=> bs!1801212 (not (= lambda!380841 lambda!380801))))

(assert (=> bs!1801211 (not (= lambda!380841 lambda!380830))))

(assert (=> d!2126163 true))

(assert (=> d!2126163 true))

(assert (=> d!2126163 true))

(declare-fun lambda!380842 () Int)

(assert (=> bs!1801211 (not (= lambda!380842 lambda!380829))))

(assert (=> bs!1801212 (not (= lambda!380842 lambda!380800))))

(assert (=> bs!1801212 (= lambda!380842 lambda!380802)))

(assert (=> bs!1801212 (not (= lambda!380842 lambda!380801))))

(assert (=> bs!1801211 (not (= lambda!380842 lambda!380830))))

(declare-fun bs!1801213 () Bool)

(assert (= bs!1801213 d!2126163))

(assert (=> bs!1801213 (not (= lambda!380842 lambda!380841))))

(assert (=> d!2126163 true))

(assert (=> d!2126163 true))

(assert (=> d!2126163 true))

(assert (=> d!2126163 (= (Exists!3663 lambda!380841) (Exists!3663 lambda!380842))))

(declare-fun lt!2443253 () Unit!159881)

(declare-fun choose!50440 (Regex!16595 Regex!16595 List!66084) Unit!159881)

(assert (=> d!2126163 (= lt!2443253 (choose!50440 (reg!16924 r!7292) r!7292 s!2326))))

(assert (=> d!2126163 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126163 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2190 (reg!16924 r!7292) r!7292 s!2326) lt!2443253)))

(declare-fun m!7519292 () Bool)

(assert (=> bs!1801213 m!7519292))

(declare-fun m!7519294 () Bool)

(assert (=> bs!1801213 m!7519294))

(declare-fun m!7519296 () Bool)

(assert (=> bs!1801213 m!7519296))

(assert (=> bs!1801213 m!7519252))

(assert (=> b!6768233 d!2126163))

(declare-fun b!6768605 () Bool)

(declare-fun e!4086678 () Bool)

(assert (=> b!6768605 (= e!4086678 (matchR!8778 r!7292 s!2326))))

(declare-fun b!6768606 () Bool)

(declare-fun e!4086676 () Option!16482)

(assert (=> b!6768606 (= e!4086676 None!16481)))

(declare-fun b!6768607 () Bool)

(declare-fun e!4086677 () Bool)

(declare-fun lt!2443272 () Option!16482)

(assert (=> b!6768607 (= e!4086677 (= (++!14749 (_1!36873 (get!22962 lt!2443272)) (_2!36873 (get!22962 lt!2443272))) s!2326))))

(declare-fun b!6768608 () Bool)

(declare-fun res!2767577 () Bool)

(assert (=> b!6768608 (=> (not res!2767577) (not e!4086677))))

(assert (=> b!6768608 (= res!2767577 (matchR!8778 (reg!16924 r!7292) (_1!36873 (get!22962 lt!2443272))))))

(declare-fun d!2126177 () Bool)

(declare-fun e!4086680 () Bool)

(assert (=> d!2126177 e!4086680))

(declare-fun res!2767578 () Bool)

(assert (=> d!2126177 (=> res!2767578 e!4086680)))

(assert (=> d!2126177 (= res!2767578 e!4086677)))

(declare-fun res!2767576 () Bool)

(assert (=> d!2126177 (=> (not res!2767576) (not e!4086677))))

(assert (=> d!2126177 (= res!2767576 (isDefined!13185 lt!2443272))))

(declare-fun e!4086679 () Option!16482)

(assert (=> d!2126177 (= lt!2443272 e!4086679)))

(declare-fun c!1256759 () Bool)

(assert (=> d!2126177 (= c!1256759 e!4086678)))

(declare-fun res!2767575 () Bool)

(assert (=> d!2126177 (=> (not res!2767575) (not e!4086678))))

(assert (=> d!2126177 (= res!2767575 (matchR!8778 (reg!16924 r!7292) Nil!65960))))

(assert (=> d!2126177 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126177 (= (findConcatSeparation!2896 (reg!16924 r!7292) r!7292 Nil!65960 s!2326 s!2326) lt!2443272)))

(declare-fun b!6768609 () Bool)

(assert (=> b!6768609 (= e!4086679 e!4086676)))

(declare-fun c!1256760 () Bool)

(assert (=> b!6768609 (= c!1256760 ((_ is Nil!65960) s!2326))))

(declare-fun b!6768610 () Bool)

(assert (=> b!6768610 (= e!4086679 (Some!16481 (tuple2!67141 Nil!65960 s!2326)))))

(declare-fun b!6768611 () Bool)

(declare-fun res!2767574 () Bool)

(assert (=> b!6768611 (=> (not res!2767574) (not e!4086677))))

(assert (=> b!6768611 (= res!2767574 (matchR!8778 r!7292 (_2!36873 (get!22962 lt!2443272))))))

(declare-fun b!6768612 () Bool)

(declare-fun lt!2443270 () Unit!159881)

(declare-fun lt!2443271 () Unit!159881)

(assert (=> b!6768612 (= lt!2443270 lt!2443271)))

(assert (=> b!6768612 (= (++!14749 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) (t!379793 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2718 (List!66084 C!33460 List!66084 List!66084) Unit!159881)

(assert (=> b!6768612 (= lt!2443271 (lemmaMoveElementToOtherListKeepsConcatEq!2718 Nil!65960 (h!72408 s!2326) (t!379793 s!2326) s!2326))))

(assert (=> b!6768612 (= e!4086676 (findConcatSeparation!2896 (reg!16924 r!7292) r!7292 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) (t!379793 s!2326) s!2326))))

(declare-fun b!6768613 () Bool)

(assert (=> b!6768613 (= e!4086680 (not (isDefined!13185 lt!2443272)))))

(assert (= (and d!2126177 res!2767575) b!6768605))

(assert (= (and d!2126177 c!1256759) b!6768610))

(assert (= (and d!2126177 (not c!1256759)) b!6768609))

(assert (= (and b!6768609 c!1256760) b!6768606))

(assert (= (and b!6768609 (not c!1256760)) b!6768612))

(assert (= (and d!2126177 res!2767576) b!6768608))

(assert (= (and b!6768608 res!2767577) b!6768611))

(assert (= (and b!6768611 res!2767574) b!6768607))

(assert (= (and d!2126177 (not res!2767578)) b!6768613))

(declare-fun m!7519344 () Bool)

(assert (=> d!2126177 m!7519344))

(declare-fun m!7519346 () Bool)

(assert (=> d!2126177 m!7519346))

(assert (=> d!2126177 m!7519252))

(declare-fun m!7519348 () Bool)

(assert (=> b!6768611 m!7519348))

(declare-fun m!7519350 () Bool)

(assert (=> b!6768611 m!7519350))

(declare-fun m!7519352 () Bool)

(assert (=> b!6768612 m!7519352))

(assert (=> b!6768612 m!7519352))

(declare-fun m!7519354 () Bool)

(assert (=> b!6768612 m!7519354))

(declare-fun m!7519356 () Bool)

(assert (=> b!6768612 m!7519356))

(assert (=> b!6768612 m!7519352))

(declare-fun m!7519358 () Bool)

(assert (=> b!6768612 m!7519358))

(assert (=> b!6768608 m!7519348))

(declare-fun m!7519360 () Bool)

(assert (=> b!6768608 m!7519360))

(assert (=> b!6768613 m!7519344))

(assert (=> b!6768605 m!7519030))

(assert (=> b!6768607 m!7519348))

(declare-fun m!7519362 () Bool)

(assert (=> b!6768607 m!7519362))

(assert (=> b!6768233 d!2126177))

(declare-fun bs!1801232 () Bool)

(declare-fun d!2126187 () Bool)

(assert (= bs!1801232 (and d!2126187 d!2126163)))

(declare-fun lambda!380857 () Int)

(assert (=> bs!1801232 (not (= lambda!380857 lambda!380842))))

(declare-fun bs!1801233 () Bool)

(assert (= bs!1801233 (and d!2126187 d!2126145)))

(assert (=> bs!1801233 (= (= r!7292 (Star!16595 (reg!16924 r!7292))) (= lambda!380857 lambda!380829))))

(declare-fun bs!1801236 () Bool)

(assert (= bs!1801236 (and d!2126187 b!6768233)))

(assert (=> bs!1801236 (= lambda!380857 lambda!380800)))

(assert (=> bs!1801236 (not (= lambda!380857 lambda!380802))))

(assert (=> bs!1801236 (not (= lambda!380857 lambda!380801))))

(assert (=> bs!1801233 (not (= lambda!380857 lambda!380830))))

(assert (=> bs!1801232 (= lambda!380857 lambda!380841)))

(assert (=> d!2126187 true))

(assert (=> d!2126187 true))

(assert (=> d!2126187 true))

(assert (=> d!2126187 (= (isDefined!13185 (findConcatSeparation!2896 (reg!16924 r!7292) r!7292 Nil!65960 s!2326 s!2326)) (Exists!3663 lambda!380857))))

(declare-fun lt!2443281 () Unit!159881)

(declare-fun choose!50441 (Regex!16595 Regex!16595 List!66084) Unit!159881)

(assert (=> d!2126187 (= lt!2443281 (choose!50441 (reg!16924 r!7292) r!7292 s!2326))))

(assert (=> d!2126187 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126187 (= (lemmaFindConcatSeparationEquivalentToExists!2660 (reg!16924 r!7292) r!7292 s!2326) lt!2443281)))

(declare-fun bs!1801241 () Bool)

(assert (= bs!1801241 d!2126187))

(assert (=> bs!1801241 m!7519042))

(declare-fun m!7519388 () Bool)

(assert (=> bs!1801241 m!7519388))

(assert (=> bs!1801241 m!7519252))

(assert (=> bs!1801241 m!7519042))

(declare-fun m!7519390 () Bool)

(assert (=> bs!1801241 m!7519390))

(declare-fun m!7519392 () Bool)

(assert (=> bs!1801241 m!7519392))

(assert (=> b!6768233 d!2126187))

(declare-fun d!2126197 () Bool)

(declare-fun e!4086718 () Bool)

(assert (=> d!2126197 e!4086718))

(declare-fun res!2767614 () Bool)

(assert (=> d!2126197 (=> (not res!2767614) (not e!4086718))))

(declare-fun lt!2443287 () List!66086)

(declare-fun noDuplicate!2382 (List!66086) Bool)

(assert (=> d!2126197 (= res!2767614 (noDuplicate!2382 lt!2443287))))

(declare-fun choose!50442 ((InoxSet Context!11958)) List!66086)

(assert (=> d!2126197 (= lt!2443287 (choose!50442 lt!2443206))))

(assert (=> d!2126197 (= (toList!10379 lt!2443206) lt!2443287)))

(declare-fun b!6768677 () Bool)

(declare-fun content!12840 (List!66086) (InoxSet Context!11958))

(assert (=> b!6768677 (= e!4086718 (= (content!12840 lt!2443287) lt!2443206))))

(assert (= (and d!2126197 res!2767614) b!6768677))

(declare-fun m!7519410 () Bool)

(assert (=> d!2126197 m!7519410))

(declare-fun m!7519412 () Bool)

(assert (=> d!2126197 m!7519412))

(declare-fun m!7519414 () Bool)

(assert (=> b!6768677 m!7519414))

(assert (=> b!6768258 d!2126197))

(declare-fun b!6768756 () Bool)

(declare-fun e!4086774 () Regex!16595)

(assert (=> b!6768756 (= e!4086774 (h!72409 (unfocusZipperList!2016 zl!343)))))

(declare-fun b!6768757 () Bool)

(declare-fun e!4086772 () Bool)

(declare-fun e!4086769 () Bool)

(assert (=> b!6768757 (= e!4086772 e!4086769)))

(declare-fun c!1256799 () Bool)

(declare-fun isEmpty!38322 (List!66085) Bool)

(assert (=> b!6768757 (= c!1256799 (isEmpty!38322 (unfocusZipperList!2016 zl!343)))))

(declare-fun b!6768758 () Bool)

(declare-fun e!4086770 () Regex!16595)

(assert (=> b!6768758 (= e!4086770 EmptyLang!16595)))

(declare-fun b!6768759 () Bool)

(declare-fun lt!2443296 () Regex!16595)

(declare-fun isEmptyLang!1963 (Regex!16595) Bool)

(assert (=> b!6768759 (= e!4086769 (isEmptyLang!1963 lt!2443296))))

(declare-fun b!6768760 () Bool)

(assert (=> b!6768760 (= e!4086770 (Union!16595 (h!72409 (unfocusZipperList!2016 zl!343)) (generalisedUnion!2439 (t!379794 (unfocusZipperList!2016 zl!343)))))))

(declare-fun b!6768761 () Bool)

(declare-fun e!4086771 () Bool)

(declare-fun isUnion!1393 (Regex!16595) Bool)

(assert (=> b!6768761 (= e!4086771 (isUnion!1393 lt!2443296))))

(declare-fun b!6768762 () Bool)

(declare-fun e!4086773 () Bool)

(assert (=> b!6768762 (= e!4086773 (isEmpty!38322 (t!379794 (unfocusZipperList!2016 zl!343))))))

(declare-fun b!6768764 () Bool)

(assert (=> b!6768764 (= e!4086774 e!4086770)))

(declare-fun c!1256801 () Bool)

(assert (=> b!6768764 (= c!1256801 ((_ is Cons!65961) (unfocusZipperList!2016 zl!343)))))

(declare-fun b!6768765 () Bool)

(declare-fun head!13606 (List!66085) Regex!16595)

(assert (=> b!6768765 (= e!4086771 (= lt!2443296 (head!13606 (unfocusZipperList!2016 zl!343))))))

(declare-fun b!6768763 () Bool)

(assert (=> b!6768763 (= e!4086769 e!4086771)))

(declare-fun c!1256802 () Bool)

(declare-fun tail!12691 (List!66085) List!66085)

(assert (=> b!6768763 (= c!1256802 (isEmpty!38322 (tail!12691 (unfocusZipperList!2016 zl!343))))))

(declare-fun d!2126205 () Bool)

(assert (=> d!2126205 e!4086772))

(declare-fun res!2767645 () Bool)

(assert (=> d!2126205 (=> (not res!2767645) (not e!4086772))))

(assert (=> d!2126205 (= res!2767645 (validRegex!8331 lt!2443296))))

(assert (=> d!2126205 (= lt!2443296 e!4086774)))

(declare-fun c!1256800 () Bool)

(assert (=> d!2126205 (= c!1256800 e!4086773)))

(declare-fun res!2767646 () Bool)

(assert (=> d!2126205 (=> (not res!2767646) (not e!4086773))))

(assert (=> d!2126205 (= res!2767646 ((_ is Cons!65961) (unfocusZipperList!2016 zl!343)))))

(declare-fun lambda!380863 () Int)

(declare-fun forall!15789 (List!66085 Int) Bool)

(assert (=> d!2126205 (forall!15789 (unfocusZipperList!2016 zl!343) lambda!380863)))

(assert (=> d!2126205 (= (generalisedUnion!2439 (unfocusZipperList!2016 zl!343)) lt!2443296)))

(assert (= (and d!2126205 res!2767646) b!6768762))

(assert (= (and d!2126205 c!1256800) b!6768756))

(assert (= (and d!2126205 (not c!1256800)) b!6768764))

(assert (= (and b!6768764 c!1256801) b!6768760))

(assert (= (and b!6768764 (not c!1256801)) b!6768758))

(assert (= (and d!2126205 res!2767645) b!6768757))

(assert (= (and b!6768757 c!1256799) b!6768759))

(assert (= (and b!6768757 (not c!1256799)) b!6768763))

(assert (= (and b!6768763 c!1256802) b!6768765))

(assert (= (and b!6768763 (not c!1256802)) b!6768761))

(assert (=> b!6768757 m!7519058))

(declare-fun m!7519484 () Bool)

(assert (=> b!6768757 m!7519484))

(declare-fun m!7519486 () Bool)

(assert (=> b!6768759 m!7519486))

(declare-fun m!7519488 () Bool)

(assert (=> b!6768761 m!7519488))

(assert (=> b!6768765 m!7519058))

(declare-fun m!7519490 () Bool)

(assert (=> b!6768765 m!7519490))

(declare-fun m!7519492 () Bool)

(assert (=> b!6768762 m!7519492))

(declare-fun m!7519494 () Bool)

(assert (=> b!6768760 m!7519494))

(declare-fun m!7519496 () Bool)

(assert (=> d!2126205 m!7519496))

(assert (=> d!2126205 m!7519058))

(declare-fun m!7519498 () Bool)

(assert (=> d!2126205 m!7519498))

(assert (=> b!6768763 m!7519058))

(declare-fun m!7519500 () Bool)

(assert (=> b!6768763 m!7519500))

(assert (=> b!6768763 m!7519500))

(declare-fun m!7519502 () Bool)

(assert (=> b!6768763 m!7519502))

(assert (=> b!6768259 d!2126205))

(declare-fun bs!1801269 () Bool)

(declare-fun d!2126233 () Bool)

(assert (= bs!1801269 (and d!2126233 d!2126205)))

(declare-fun lambda!380868 () Int)

(assert (=> bs!1801269 (= lambda!380868 lambda!380863)))

(declare-fun lt!2443302 () List!66085)

(assert (=> d!2126233 (forall!15789 lt!2443302 lambda!380868)))

(declare-fun e!4086793 () List!66085)

(assert (=> d!2126233 (= lt!2443302 e!4086793)))

(declare-fun c!1256807 () Bool)

(assert (=> d!2126233 (= c!1256807 ((_ is Cons!65962) zl!343))))

(assert (=> d!2126233 (= (unfocusZipperList!2016 zl!343) lt!2443302)))

(declare-fun b!6768802 () Bool)

(assert (=> b!6768802 (= e!4086793 (Cons!65961 (generalisedConcat!2192 (exprs!6479 (h!72410 zl!343))) (unfocusZipperList!2016 (t!379795 zl!343))))))

(declare-fun b!6768803 () Bool)

(assert (=> b!6768803 (= e!4086793 Nil!65961)))

(assert (= (and d!2126233 c!1256807) b!6768802))

(assert (= (and d!2126233 (not c!1256807)) b!6768803))

(declare-fun m!7519532 () Bool)

(assert (=> d!2126233 m!7519532))

(assert (=> b!6768802 m!7519026))

(declare-fun m!7519534 () Bool)

(assert (=> b!6768802 m!7519534))

(assert (=> b!6768259 d!2126233))

(declare-fun c!1256812 () Bool)

(declare-fun c!1256813 () Bool)

(declare-fun call!613331 () Bool)

(declare-fun bm!613324 () Bool)

(assert (=> bm!613324 (= call!613331 (validRegex!8331 (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))))))

(declare-fun b!6768849 () Bool)

(declare-fun res!2767661 () Bool)

(declare-fun e!4086818 () Bool)

(assert (=> b!6768849 (=> res!2767661 e!4086818)))

(assert (=> b!6768849 (= res!2767661 (not ((_ is Concat!25440) r!7292)))))

(declare-fun e!4086821 () Bool)

(assert (=> b!6768849 (= e!4086821 e!4086818)))

(declare-fun b!6768850 () Bool)

(declare-fun e!4086822 () Bool)

(assert (=> b!6768850 (= e!4086818 e!4086822)))

(declare-fun res!2767657 () Bool)

(assert (=> b!6768850 (=> (not res!2767657) (not e!4086822))))

(declare-fun call!613329 () Bool)

(assert (=> b!6768850 (= res!2767657 call!613329)))

(declare-fun b!6768851 () Bool)

(declare-fun res!2767659 () Bool)

(declare-fun e!4086817 () Bool)

(assert (=> b!6768851 (=> (not res!2767659) (not e!4086817))))

(assert (=> b!6768851 (= res!2767659 call!613329)))

(assert (=> b!6768851 (= e!4086821 e!4086817)))

(declare-fun b!6768852 () Bool)

(declare-fun call!613330 () Bool)

(assert (=> b!6768852 (= e!4086822 call!613330)))

(declare-fun b!6768853 () Bool)

(declare-fun e!4086820 () Bool)

(assert (=> b!6768853 (= e!4086820 e!4086821)))

(assert (=> b!6768853 (= c!1256812 ((_ is Union!16595) r!7292))))

(declare-fun b!6768854 () Bool)

(assert (=> b!6768854 (= e!4086817 call!613330)))

(declare-fun bm!613325 () Bool)

(assert (=> bm!613325 (= call!613330 (validRegex!8331 (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))))))

(declare-fun b!6768855 () Bool)

(declare-fun e!4086823 () Bool)

(assert (=> b!6768855 (= e!4086823 call!613331)))

(declare-fun bm!613326 () Bool)

(assert (=> bm!613326 (= call!613329 call!613331)))

(declare-fun b!6768856 () Bool)

(declare-fun e!4086819 () Bool)

(assert (=> b!6768856 (= e!4086819 e!4086820)))

(assert (=> b!6768856 (= c!1256813 ((_ is Star!16595) r!7292))))

(declare-fun b!6768848 () Bool)

(assert (=> b!6768848 (= e!4086820 e!4086823)))

(declare-fun res!2767660 () Bool)

(assert (=> b!6768848 (= res!2767660 (not (nullable!6576 (reg!16924 r!7292))))))

(assert (=> b!6768848 (=> (not res!2767660) (not e!4086823))))

(declare-fun d!2126245 () Bool)

(declare-fun res!2767658 () Bool)

(assert (=> d!2126245 (=> res!2767658 e!4086819)))

(assert (=> d!2126245 (= res!2767658 ((_ is ElementMatch!16595) r!7292))))

(assert (=> d!2126245 (= (validRegex!8331 r!7292) e!4086819)))

(assert (= (and d!2126245 (not res!2767658)) b!6768856))

(assert (= (and b!6768856 c!1256813) b!6768848))

(assert (= (and b!6768856 (not c!1256813)) b!6768853))

(assert (= (and b!6768848 res!2767660) b!6768855))

(assert (= (and b!6768853 c!1256812) b!6768851))

(assert (= (and b!6768853 (not c!1256812)) b!6768849))

(assert (= (and b!6768851 res!2767659) b!6768854))

(assert (= (and b!6768849 (not res!2767661)) b!6768850))

(assert (= (and b!6768850 res!2767657) b!6768852))

(assert (= (or b!6768854 b!6768852) bm!613325))

(assert (= (or b!6768851 b!6768850) bm!613326))

(assert (= (or b!6768855 bm!613326) bm!613324))

(declare-fun m!7519536 () Bool)

(assert (=> bm!613324 m!7519536))

(declare-fun m!7519538 () Bool)

(assert (=> bm!613325 m!7519538))

(declare-fun m!7519540 () Bool)

(assert (=> b!6768848 m!7519540))

(assert (=> start!655548 d!2126245))

(declare-fun b!6768865 () Bool)

(declare-fun e!4086828 () List!66084)

(assert (=> b!6768865 (= e!4086828 (_2!36873 lt!2443186))))

(declare-fun d!2126255 () Bool)

(declare-fun e!4086829 () Bool)

(assert (=> d!2126255 e!4086829))

(declare-fun res!2767666 () Bool)

(assert (=> d!2126255 (=> (not res!2767666) (not e!4086829))))

(declare-fun lt!2443305 () List!66084)

(declare-fun content!12841 (List!66084) (InoxSet C!33460))

(assert (=> d!2126255 (= res!2767666 (= (content!12841 lt!2443305) ((_ map or) (content!12841 (_1!36873 lt!2443186)) (content!12841 (_2!36873 lt!2443186)))))))

(assert (=> d!2126255 (= lt!2443305 e!4086828)))

(declare-fun c!1256816 () Bool)

(assert (=> d!2126255 (= c!1256816 ((_ is Nil!65960) (_1!36873 lt!2443186)))))

(assert (=> d!2126255 (= (++!14749 (_1!36873 lt!2443186) (_2!36873 lt!2443186)) lt!2443305)))

(declare-fun b!6768868 () Bool)

(assert (=> b!6768868 (= e!4086829 (or (not (= (_2!36873 lt!2443186) Nil!65960)) (= lt!2443305 (_1!36873 lt!2443186))))))

(declare-fun b!6768867 () Bool)

(declare-fun res!2767667 () Bool)

(assert (=> b!6768867 (=> (not res!2767667) (not e!4086829))))

(declare-fun size!40631 (List!66084) Int)

(assert (=> b!6768867 (= res!2767667 (= (size!40631 lt!2443305) (+ (size!40631 (_1!36873 lt!2443186)) (size!40631 (_2!36873 lt!2443186)))))))

(declare-fun b!6768866 () Bool)

(assert (=> b!6768866 (= e!4086828 (Cons!65960 (h!72408 (_1!36873 lt!2443186)) (++!14749 (t!379793 (_1!36873 lt!2443186)) (_2!36873 lt!2443186))))))

(assert (= (and d!2126255 c!1256816) b!6768865))

(assert (= (and d!2126255 (not c!1256816)) b!6768866))

(assert (= (and d!2126255 res!2767666) b!6768867))

(assert (= (and b!6768867 res!2767667) b!6768868))

(declare-fun m!7519542 () Bool)

(assert (=> d!2126255 m!7519542))

(declare-fun m!7519544 () Bool)

(assert (=> d!2126255 m!7519544))

(declare-fun m!7519546 () Bool)

(assert (=> d!2126255 m!7519546))

(declare-fun m!7519548 () Bool)

(assert (=> b!6768867 m!7519548))

(declare-fun m!7519550 () Bool)

(assert (=> b!6768867 m!7519550))

(declare-fun m!7519552 () Bool)

(assert (=> b!6768867 m!7519552))

(declare-fun m!7519554 () Bool)

(assert (=> b!6768866 m!7519554))

(assert (=> b!6768257 d!2126255))

(declare-fun d!2126257 () Bool)

(assert (=> d!2126257 (= (get!22962 lt!2443181) (v!52685 lt!2443181))))

(assert (=> b!6768257 d!2126257))

(declare-fun d!2126259 () Bool)

(declare-fun lt!2443306 () Regex!16595)

(assert (=> d!2126259 (validRegex!8331 lt!2443306)))

(assert (=> d!2126259 (= lt!2443306 (generalisedUnion!2439 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962))))))

(assert (=> d!2126259 (= (unfocusZipper!2337 (Cons!65962 lt!2443194 Nil!65962)) lt!2443306)))

(declare-fun bs!1801274 () Bool)

(assert (= bs!1801274 d!2126259))

(declare-fun m!7519556 () Bool)

(assert (=> bs!1801274 m!7519556))

(declare-fun m!7519558 () Bool)

(assert (=> bs!1801274 m!7519558))

(assert (=> bs!1801274 m!7519558))

(declare-fun m!7519560 () Bool)

(assert (=> bs!1801274 m!7519560))

(assert (=> b!6768236 d!2126259))

(assert (=> b!6768250 d!2126245))

(declare-fun d!2126261 () Bool)

(declare-fun c!1256817 () Bool)

(assert (=> d!2126261 (= c!1256817 (isEmpty!38317 (_1!36873 lt!2443186)))))

(declare-fun e!4086830 () Bool)

(assert (=> d!2126261 (= (matchZipper!2581 lt!2443198 (_1!36873 lt!2443186)) e!4086830)))

(declare-fun b!6768869 () Bool)

(assert (=> b!6768869 (= e!4086830 (nullableZipper!2303 lt!2443198))))

(declare-fun b!6768870 () Bool)

(assert (=> b!6768870 (= e!4086830 (matchZipper!2581 (derivationStepZipper!2539 lt!2443198 (head!13605 (_1!36873 lt!2443186))) (tail!12690 (_1!36873 lt!2443186))))))

(assert (= (and d!2126261 c!1256817) b!6768869))

(assert (= (and d!2126261 (not c!1256817)) b!6768870))

(declare-fun m!7519562 () Bool)

(assert (=> d!2126261 m!7519562))

(declare-fun m!7519564 () Bool)

(assert (=> b!6768869 m!7519564))

(declare-fun m!7519566 () Bool)

(assert (=> b!6768870 m!7519566))

(assert (=> b!6768870 m!7519566))

(declare-fun m!7519568 () Bool)

(assert (=> b!6768870 m!7519568))

(declare-fun m!7519570 () Bool)

(assert (=> b!6768870 m!7519570))

(assert (=> b!6768870 m!7519568))

(assert (=> b!6768870 m!7519570))

(declare-fun m!7519572 () Bool)

(assert (=> b!6768870 m!7519572))

(assert (=> b!6768250 d!2126261))

(declare-fun d!2126263 () Bool)

(assert (=> d!2126263 (= (matchR!8778 (reg!16924 r!7292) (_1!36873 lt!2443186)) (matchZipper!2581 lt!2443198 (_1!36873 lt!2443186)))))

(declare-fun lt!2443309 () Unit!159881)

(declare-fun choose!50444 ((InoxSet Context!11958) List!66086 Regex!16595 List!66084) Unit!159881)

(assert (=> d!2126263 (= lt!2443309 (choose!50444 lt!2443198 lt!2443209 (reg!16924 r!7292) (_1!36873 lt!2443186)))))

(assert (=> d!2126263 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126263 (= (theoremZipperRegexEquiv!925 lt!2443198 lt!2443209 (reg!16924 r!7292) (_1!36873 lt!2443186)) lt!2443309)))

(declare-fun bs!1801275 () Bool)

(assert (= bs!1801275 d!2126263))

(assert (=> bs!1801275 m!7519000))

(assert (=> bs!1801275 m!7519062))

(declare-fun m!7519574 () Bool)

(assert (=> bs!1801275 m!7519574))

(assert (=> bs!1801275 m!7519252))

(assert (=> b!6768250 d!2126263))

(declare-fun bs!1801276 () Bool)

(declare-fun b!6768912 () Bool)

(assert (= bs!1801276 (and b!6768912 d!2126163)))

(declare-fun lambda!380873 () Int)

(assert (=> bs!1801276 (not (= lambda!380873 lambda!380842))))

(declare-fun bs!1801277 () Bool)

(assert (= bs!1801277 (and b!6768912 d!2126145)))

(assert (=> bs!1801277 (not (= lambda!380873 lambda!380829))))

(declare-fun bs!1801278 () Bool)

(assert (= bs!1801278 (and b!6768912 d!2126187)))

(assert (=> bs!1801278 (not (= lambda!380873 lambda!380857))))

(declare-fun bs!1801279 () Bool)

(assert (= bs!1801279 (and b!6768912 b!6768233)))

(assert (=> bs!1801279 (not (= lambda!380873 lambda!380800))))

(assert (=> bs!1801279 (not (= lambda!380873 lambda!380802))))

(assert (=> bs!1801279 (= (and (= (reg!16924 lt!2443204) (reg!16924 r!7292)) (= lt!2443204 r!7292)) (= lambda!380873 lambda!380801))))

(assert (=> bs!1801277 (= (and (= (reg!16924 lt!2443204) (reg!16924 r!7292)) (= lt!2443204 (Star!16595 (reg!16924 r!7292)))) (= lambda!380873 lambda!380830))))

(assert (=> bs!1801276 (not (= lambda!380873 lambda!380841))))

(assert (=> b!6768912 true))

(assert (=> b!6768912 true))

(declare-fun bs!1801280 () Bool)

(declare-fun b!6768909 () Bool)

(assert (= bs!1801280 (and b!6768909 d!2126163)))

(declare-fun lambda!380874 () Int)

(assert (=> bs!1801280 (= (and (= (regOne!33702 lt!2443204) (reg!16924 r!7292)) (= (regTwo!33702 lt!2443204) r!7292)) (= lambda!380874 lambda!380842))))

(declare-fun bs!1801281 () Bool)

(assert (= bs!1801281 (and b!6768909 d!2126145)))

(assert (=> bs!1801281 (not (= lambda!380874 lambda!380829))))

(declare-fun bs!1801282 () Bool)

(assert (= bs!1801282 (and b!6768909 b!6768233)))

(assert (=> bs!1801282 (not (= lambda!380874 lambda!380800))))

(assert (=> bs!1801282 (= (and (= (regOne!33702 lt!2443204) (reg!16924 r!7292)) (= (regTwo!33702 lt!2443204) r!7292)) (= lambda!380874 lambda!380802))))

(assert (=> bs!1801282 (not (= lambda!380874 lambda!380801))))

(assert (=> bs!1801281 (not (= lambda!380874 lambda!380830))))

(assert (=> bs!1801280 (not (= lambda!380874 lambda!380841))))

(declare-fun bs!1801283 () Bool)

(assert (= bs!1801283 (and b!6768909 b!6768912)))

(assert (=> bs!1801283 (not (= lambda!380874 lambda!380873))))

(declare-fun bs!1801284 () Bool)

(assert (= bs!1801284 (and b!6768909 d!2126187)))

(assert (=> bs!1801284 (not (= lambda!380874 lambda!380857))))

(assert (=> b!6768909 true))

(assert (=> b!6768909 true))

(declare-fun c!1256829 () Bool)

(declare-fun call!613336 () Bool)

(declare-fun bm!613331 () Bool)

(assert (=> bm!613331 (= call!613336 (Exists!3663 (ite c!1256829 lambda!380873 lambda!380874)))))

(declare-fun b!6768903 () Bool)

(declare-fun res!2767686 () Bool)

(declare-fun e!4086850 () Bool)

(assert (=> b!6768903 (=> res!2767686 e!4086850)))

(declare-fun call!613337 () Bool)

(assert (=> b!6768903 (= res!2767686 call!613337)))

(declare-fun e!4086852 () Bool)

(assert (=> b!6768903 (= e!4086852 e!4086850)))

(declare-fun d!2126265 () Bool)

(declare-fun c!1256826 () Bool)

(assert (=> d!2126265 (= c!1256826 ((_ is EmptyExpr!16595) lt!2443204))))

(declare-fun e!4086854 () Bool)

(assert (=> d!2126265 (= (matchRSpec!3696 lt!2443204 s!2326) e!4086854)))

(declare-fun b!6768904 () Bool)

(declare-fun c!1256828 () Bool)

(assert (=> b!6768904 (= c!1256828 ((_ is Union!16595) lt!2443204))))

(declare-fun e!4086853 () Bool)

(declare-fun e!4086855 () Bool)

(assert (=> b!6768904 (= e!4086853 e!4086855)))

(declare-fun b!6768905 () Bool)

(declare-fun e!4086849 () Bool)

(assert (=> b!6768905 (= e!4086849 (matchRSpec!3696 (regTwo!33703 lt!2443204) s!2326))))

(declare-fun b!6768906 () Bool)

(declare-fun e!4086851 () Bool)

(assert (=> b!6768906 (= e!4086854 e!4086851)))

(declare-fun res!2767684 () Bool)

(assert (=> b!6768906 (= res!2767684 (not ((_ is EmptyLang!16595) lt!2443204)))))

(assert (=> b!6768906 (=> (not res!2767684) (not e!4086851))))

(declare-fun b!6768907 () Bool)

(assert (=> b!6768907 (= e!4086855 e!4086849)))

(declare-fun res!2767685 () Bool)

(assert (=> b!6768907 (= res!2767685 (matchRSpec!3696 (regOne!33703 lt!2443204) s!2326))))

(assert (=> b!6768907 (=> res!2767685 e!4086849)))

(declare-fun b!6768908 () Bool)

(assert (=> b!6768908 (= e!4086855 e!4086852)))

(assert (=> b!6768908 (= c!1256829 ((_ is Star!16595) lt!2443204))))

(declare-fun bm!613332 () Bool)

(assert (=> bm!613332 (= call!613337 (isEmpty!38317 s!2326))))

(assert (=> b!6768909 (= e!4086852 call!613336)))

(declare-fun b!6768910 () Bool)

(assert (=> b!6768910 (= e!4086853 (= s!2326 (Cons!65960 (c!1256657 lt!2443204) Nil!65960)))))

(declare-fun b!6768911 () Bool)

(declare-fun c!1256827 () Bool)

(assert (=> b!6768911 (= c!1256827 ((_ is ElementMatch!16595) lt!2443204))))

(assert (=> b!6768911 (= e!4086851 e!4086853)))

(assert (=> b!6768912 (= e!4086850 call!613336)))

(declare-fun b!6768913 () Bool)

(assert (=> b!6768913 (= e!4086854 call!613337)))

(assert (= (and d!2126265 c!1256826) b!6768913))

(assert (= (and d!2126265 (not c!1256826)) b!6768906))

(assert (= (and b!6768906 res!2767684) b!6768911))

(assert (= (and b!6768911 c!1256827) b!6768910))

(assert (= (and b!6768911 (not c!1256827)) b!6768904))

(assert (= (and b!6768904 c!1256828) b!6768907))

(assert (= (and b!6768904 (not c!1256828)) b!6768908))

(assert (= (and b!6768907 (not res!2767685)) b!6768905))

(assert (= (and b!6768908 c!1256829) b!6768903))

(assert (= (and b!6768908 (not c!1256829)) b!6768909))

(assert (= (and b!6768903 (not res!2767686)) b!6768912))

(assert (= (or b!6768912 b!6768909) bm!613331))

(assert (= (or b!6768913 b!6768903) bm!613332))

(declare-fun m!7519576 () Bool)

(assert (=> bm!613331 m!7519576))

(declare-fun m!7519578 () Bool)

(assert (=> b!6768905 m!7519578))

(declare-fun m!7519580 () Bool)

(assert (=> b!6768907 m!7519580))

(assert (=> bm!613332 m!7519036))

(assert (=> b!6768268 d!2126265))

(declare-fun b!6768942 () Bool)

(declare-fun res!2767706 () Bool)

(declare-fun e!4086872 () Bool)

(assert (=> b!6768942 (=> (not res!2767706) (not e!4086872))))

(declare-fun call!613340 () Bool)

(assert (=> b!6768942 (= res!2767706 (not call!613340))))

(declare-fun b!6768943 () Bool)

(declare-fun res!2767708 () Bool)

(assert (=> b!6768943 (=> (not res!2767708) (not e!4086872))))

(assert (=> b!6768943 (= res!2767708 (isEmpty!38317 (tail!12690 s!2326)))))

(declare-fun b!6768944 () Bool)

(declare-fun res!2767705 () Bool)

(declare-fun e!4086874 () Bool)

(assert (=> b!6768944 (=> res!2767705 e!4086874)))

(assert (=> b!6768944 (= res!2767705 (not (isEmpty!38317 (tail!12690 s!2326))))))

(declare-fun b!6768945 () Bool)

(declare-fun e!4086873 () Bool)

(declare-fun lt!2443312 () Bool)

(assert (=> b!6768945 (= e!4086873 (not lt!2443312))))

(declare-fun b!6768946 () Bool)

(assert (=> b!6768946 (= e!4086872 (= (head!13605 s!2326) (c!1256657 lt!2443204)))))

(declare-fun b!6768947 () Bool)

(declare-fun e!4086876 () Bool)

(assert (=> b!6768947 (= e!4086876 e!4086874)))

(declare-fun res!2767703 () Bool)

(assert (=> b!6768947 (=> res!2767703 e!4086874)))

(assert (=> b!6768947 (= res!2767703 call!613340)))

(declare-fun b!6768948 () Bool)

(declare-fun e!4086870 () Bool)

(assert (=> b!6768948 (= e!4086870 (nullable!6576 lt!2443204))))

(declare-fun b!6768949 () Bool)

(declare-fun res!2767704 () Bool)

(declare-fun e!4086871 () Bool)

(assert (=> b!6768949 (=> res!2767704 e!4086871)))

(assert (=> b!6768949 (= res!2767704 (not ((_ is ElementMatch!16595) lt!2443204)))))

(assert (=> b!6768949 (= e!4086873 e!4086871)))

(declare-fun b!6768951 () Bool)

(assert (=> b!6768951 (= e!4086871 e!4086876)))

(declare-fun res!2767707 () Bool)

(assert (=> b!6768951 (=> (not res!2767707) (not e!4086876))))

(assert (=> b!6768951 (= res!2767707 (not lt!2443312))))

(declare-fun b!6768952 () Bool)

(declare-fun e!4086875 () Bool)

(assert (=> b!6768952 (= e!4086875 (= lt!2443312 call!613340))))

(declare-fun bm!613335 () Bool)

(assert (=> bm!613335 (= call!613340 (isEmpty!38317 s!2326))))

(declare-fun b!6768953 () Bool)

(declare-fun res!2767709 () Bool)

(assert (=> b!6768953 (=> res!2767709 e!4086871)))

(assert (=> b!6768953 (= res!2767709 e!4086872)))

(declare-fun res!2767710 () Bool)

(assert (=> b!6768953 (=> (not res!2767710) (not e!4086872))))

(assert (=> b!6768953 (= res!2767710 lt!2443312)))

(declare-fun b!6768954 () Bool)

(declare-fun derivativeStep!5261 (Regex!16595 C!33460) Regex!16595)

(assert (=> b!6768954 (= e!4086870 (matchR!8778 (derivativeStep!5261 lt!2443204 (head!13605 s!2326)) (tail!12690 s!2326)))))

(declare-fun b!6768955 () Bool)

(assert (=> b!6768955 (= e!4086874 (not (= (head!13605 s!2326) (c!1256657 lt!2443204))))))

(declare-fun d!2126267 () Bool)

(assert (=> d!2126267 e!4086875))

(declare-fun c!1256836 () Bool)

(assert (=> d!2126267 (= c!1256836 ((_ is EmptyExpr!16595) lt!2443204))))

(assert (=> d!2126267 (= lt!2443312 e!4086870)))

(declare-fun c!1256838 () Bool)

(assert (=> d!2126267 (= c!1256838 (isEmpty!38317 s!2326))))

(assert (=> d!2126267 (validRegex!8331 lt!2443204)))

(assert (=> d!2126267 (= (matchR!8778 lt!2443204 s!2326) lt!2443312)))

(declare-fun b!6768950 () Bool)

(assert (=> b!6768950 (= e!4086875 e!4086873)))

(declare-fun c!1256837 () Bool)

(assert (=> b!6768950 (= c!1256837 ((_ is EmptyLang!16595) lt!2443204))))

(assert (= (and d!2126267 c!1256838) b!6768948))

(assert (= (and d!2126267 (not c!1256838)) b!6768954))

(assert (= (and d!2126267 c!1256836) b!6768952))

(assert (= (and d!2126267 (not c!1256836)) b!6768950))

(assert (= (and b!6768950 c!1256837) b!6768945))

(assert (= (and b!6768950 (not c!1256837)) b!6768949))

(assert (= (and b!6768949 (not res!2767704)) b!6768953))

(assert (= (and b!6768953 res!2767710) b!6768942))

(assert (= (and b!6768942 res!2767706) b!6768943))

(assert (= (and b!6768943 res!2767708) b!6768946))

(assert (= (and b!6768953 (not res!2767709)) b!6768951))

(assert (= (and b!6768951 res!2767707) b!6768947))

(assert (= (and b!6768947 (not res!2767703)) b!6768944))

(assert (= (and b!6768944 (not res!2767705)) b!6768955))

(assert (= (or b!6768952 b!6768942 b!6768947) bm!613335))

(assert (=> b!6768955 m!7519100))

(assert (=> bm!613335 m!7519036))

(assert (=> b!6768944 m!7519104))

(assert (=> b!6768944 m!7519104))

(declare-fun m!7519582 () Bool)

(assert (=> b!6768944 m!7519582))

(assert (=> b!6768954 m!7519100))

(assert (=> b!6768954 m!7519100))

(declare-fun m!7519584 () Bool)

(assert (=> b!6768954 m!7519584))

(assert (=> b!6768954 m!7519104))

(assert (=> b!6768954 m!7519584))

(assert (=> b!6768954 m!7519104))

(declare-fun m!7519586 () Bool)

(assert (=> b!6768954 m!7519586))

(declare-fun m!7519588 () Bool)

(assert (=> b!6768948 m!7519588))

(assert (=> b!6768943 m!7519104))

(assert (=> b!6768943 m!7519104))

(assert (=> b!6768943 m!7519582))

(assert (=> b!6768946 m!7519100))

(assert (=> d!2126267 m!7519036))

(declare-fun m!7519590 () Bool)

(assert (=> d!2126267 m!7519590))

(assert (=> b!6768268 d!2126267))

(declare-fun d!2126269 () Bool)

(assert (=> d!2126269 (= (matchR!8778 lt!2443204 s!2326) (matchRSpec!3696 lt!2443204 s!2326))))

(declare-fun lt!2443315 () Unit!159881)

(declare-fun choose!50445 (Regex!16595 List!66084) Unit!159881)

(assert (=> d!2126269 (= lt!2443315 (choose!50445 lt!2443204 s!2326))))

(assert (=> d!2126269 (validRegex!8331 lt!2443204)))

(assert (=> d!2126269 (= (mainMatchTheorem!3696 lt!2443204 s!2326) lt!2443315)))

(declare-fun bs!1801285 () Bool)

(assert (= bs!1801285 d!2126269))

(assert (=> bs!1801285 m!7519054))

(assert (=> bs!1801285 m!7519052))

(declare-fun m!7519592 () Bool)

(assert (=> bs!1801285 m!7519592))

(assert (=> bs!1801285 m!7519590))

(assert (=> b!6768268 d!2126269))

(declare-fun d!2126271 () Bool)

(declare-fun lt!2443316 () Regex!16595)

(assert (=> d!2126271 (validRegex!8331 lt!2443316)))

(assert (=> d!2126271 (= lt!2443316 (generalisedUnion!2439 (unfocusZipperList!2016 lt!2443179)))))

(assert (=> d!2126271 (= (unfocusZipper!2337 lt!2443179) lt!2443316)))

(declare-fun bs!1801286 () Bool)

(assert (= bs!1801286 d!2126271))

(declare-fun m!7519594 () Bool)

(assert (=> bs!1801286 m!7519594))

(declare-fun m!7519596 () Bool)

(assert (=> bs!1801286 m!7519596))

(assert (=> bs!1801286 m!7519596))

(declare-fun m!7519598 () Bool)

(assert (=> bs!1801286 m!7519598))

(assert (=> b!6768249 d!2126271))

(declare-fun bs!1801287 () Bool)

(declare-fun d!2126273 () Bool)

(assert (= bs!1801287 (and d!2126273 d!2126205)))

(declare-fun lambda!380877 () Int)

(assert (=> bs!1801287 (= lambda!380877 lambda!380863)))

(declare-fun bs!1801288 () Bool)

(assert (= bs!1801288 (and d!2126273 d!2126233)))

(assert (=> bs!1801288 (= lambda!380877 lambda!380868)))

(assert (=> d!2126273 (= (inv!84734 (h!72410 zl!343)) (forall!15789 (exprs!6479 (h!72410 zl!343)) lambda!380877))))

(declare-fun bs!1801289 () Bool)

(assert (= bs!1801289 d!2126273))

(declare-fun m!7519600 () Bool)

(assert (=> bs!1801289 m!7519600))

(assert (=> b!6768252 d!2126273))

(declare-fun b!6768956 () Bool)

(declare-fun e!4086879 () (InoxSet Context!11958))

(assert (=> b!6768956 (= e!4086879 ((as const (Array Context!11958 Bool)) false))))

(declare-fun e!4086877 () (InoxSet Context!11958))

(declare-fun b!6768957 () Bool)

(declare-fun call!613341 () (InoxSet Context!11958))

(assert (=> b!6768957 (= e!4086877 ((_ map or) call!613341 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 lt!2443180))) (h!72408 s!2326))))))

(declare-fun b!6768958 () Bool)

(declare-fun e!4086878 () Bool)

(assert (=> b!6768958 (= e!4086878 (nullable!6576 (h!72409 (exprs!6479 lt!2443180))))))

(declare-fun d!2126275 () Bool)

(declare-fun c!1256839 () Bool)

(assert (=> d!2126275 (= c!1256839 e!4086878)))

(declare-fun res!2767711 () Bool)

(assert (=> d!2126275 (=> (not res!2767711) (not e!4086878))))

(assert (=> d!2126275 (= res!2767711 ((_ is Cons!65961) (exprs!6479 lt!2443180)))))

(assert (=> d!2126275 (= (derivationStepZipperUp!1749 lt!2443180 (h!72408 s!2326)) e!4086877)))

(declare-fun bm!613336 () Bool)

(assert (=> bm!613336 (= call!613341 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 lt!2443180)) (Context!11959 (t!379794 (exprs!6479 lt!2443180))) (h!72408 s!2326)))))

(declare-fun b!6768959 () Bool)

(assert (=> b!6768959 (= e!4086877 e!4086879)))

(declare-fun c!1256840 () Bool)

(assert (=> b!6768959 (= c!1256840 ((_ is Cons!65961) (exprs!6479 lt!2443180)))))

(declare-fun b!6768960 () Bool)

(assert (=> b!6768960 (= e!4086879 call!613341)))

(assert (= (and d!2126275 res!2767711) b!6768958))

(assert (= (and d!2126275 c!1256839) b!6768957))

(assert (= (and d!2126275 (not c!1256839)) b!6768959))

(assert (= (and b!6768959 c!1256840) b!6768960))

(assert (= (and b!6768959 (not c!1256840)) b!6768956))

(assert (= (or b!6768957 b!6768960) bm!613336))

(declare-fun m!7519602 () Bool)

(assert (=> b!6768957 m!7519602))

(declare-fun m!7519604 () Bool)

(assert (=> b!6768958 m!7519604))

(declare-fun m!7519606 () Bool)

(assert (=> bm!613336 m!7519606))

(assert (=> b!6768266 d!2126275))

(declare-fun bs!1801290 () Bool)

(declare-fun d!2126277 () Bool)

(assert (= bs!1801290 (and d!2126277 b!6768235)))

(declare-fun lambda!380878 () Int)

(assert (=> bs!1801290 (= lambda!380878 lambda!380803)))

(declare-fun bs!1801291 () Bool)

(assert (= bs!1801291 (and d!2126277 d!2126107)))

(assert (=> bs!1801291 (= lambda!380878 lambda!380806)))

(assert (=> d!2126277 true))

(assert (=> d!2126277 (= (derivationStepZipper!2539 lt!2443206 (h!72408 s!2326)) (flatMap!2076 lt!2443206 lambda!380878))))

(declare-fun bs!1801292 () Bool)

(assert (= bs!1801292 d!2126277))

(declare-fun m!7519608 () Bool)

(assert (=> bs!1801292 m!7519608))

(assert (=> b!6768266 d!2126277))

(declare-fun d!2126279 () Bool)

(assert (=> d!2126279 (= (flatMap!2076 lt!2443206 lambda!380803) (dynLambda!26318 lambda!380803 lt!2443210))))

(declare-fun lt!2443317 () Unit!159881)

(assert (=> d!2126279 (= lt!2443317 (choose!50435 lt!2443206 lt!2443210 lambda!380803))))

(assert (=> d!2126279 (= lt!2443206 (store ((as const (Array Context!11958 Bool)) false) lt!2443210 true))))

(assert (=> d!2126279 (= (lemmaFlatMapOnSingletonSet!1602 lt!2443206 lt!2443210 lambda!380803) lt!2443317)))

(declare-fun b_lambda!254877 () Bool)

(assert (=> (not b_lambda!254877) (not d!2126279)))

(declare-fun bs!1801293 () Bool)

(assert (= bs!1801293 d!2126279))

(assert (=> bs!1801293 m!7519078))

(declare-fun m!7519610 () Bool)

(assert (=> bs!1801293 m!7519610))

(declare-fun m!7519612 () Bool)

(assert (=> bs!1801293 m!7519612))

(assert (=> bs!1801293 m!7519092))

(assert (=> b!6768266 d!2126279))

(declare-fun b!6768961 () Bool)

(declare-fun e!4086882 () (InoxSet Context!11958))

(assert (=> b!6768961 (= e!4086882 ((as const (Array Context!11958 Bool)) false))))

(declare-fun e!4086880 () (InoxSet Context!11958))

(declare-fun call!613342 () (InoxSet Context!11958))

(declare-fun b!6768962 () Bool)

(assert (=> b!6768962 (= e!4086880 ((_ map or) call!613342 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 lt!2443210))) (h!72408 s!2326))))))

(declare-fun b!6768963 () Bool)

(declare-fun e!4086881 () Bool)

(assert (=> b!6768963 (= e!4086881 (nullable!6576 (h!72409 (exprs!6479 lt!2443210))))))

(declare-fun d!2126281 () Bool)

(declare-fun c!1256841 () Bool)

(assert (=> d!2126281 (= c!1256841 e!4086881)))

(declare-fun res!2767712 () Bool)

(assert (=> d!2126281 (=> (not res!2767712) (not e!4086881))))

(assert (=> d!2126281 (= res!2767712 ((_ is Cons!65961) (exprs!6479 lt!2443210)))))

(assert (=> d!2126281 (= (derivationStepZipperUp!1749 lt!2443210 (h!72408 s!2326)) e!4086880)))

(declare-fun bm!613337 () Bool)

(assert (=> bm!613337 (= call!613342 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 lt!2443210)) (Context!11959 (t!379794 (exprs!6479 lt!2443210))) (h!72408 s!2326)))))

(declare-fun b!6768964 () Bool)

(assert (=> b!6768964 (= e!4086880 e!4086882)))

(declare-fun c!1256842 () Bool)

(assert (=> b!6768964 (= c!1256842 ((_ is Cons!65961) (exprs!6479 lt!2443210)))))

(declare-fun b!6768965 () Bool)

(assert (=> b!6768965 (= e!4086882 call!613342)))

(assert (= (and d!2126281 res!2767712) b!6768963))

(assert (= (and d!2126281 c!1256841) b!6768962))

(assert (= (and d!2126281 (not c!1256841)) b!6768964))

(assert (= (and b!6768964 c!1256842) b!6768965))

(assert (= (and b!6768964 (not c!1256842)) b!6768961))

(assert (= (or b!6768962 b!6768965) bm!613337))

(declare-fun m!7519614 () Bool)

(assert (=> b!6768962 m!7519614))

(declare-fun m!7519616 () Bool)

(assert (=> b!6768963 m!7519616))

(declare-fun m!7519618 () Bool)

(assert (=> bm!613337 m!7519618))

(assert (=> b!6768266 d!2126281))

(declare-fun d!2126283 () Bool)

(assert (=> d!2126283 (= (flatMap!2076 lt!2443206 lambda!380803) (choose!50434 lt!2443206 lambda!380803))))

(declare-fun bs!1801294 () Bool)

(assert (= bs!1801294 d!2126283))

(declare-fun m!7519620 () Bool)

(assert (=> bs!1801294 m!7519620))

(assert (=> b!6768266 d!2126283))

(declare-fun d!2126285 () Bool)

(assert (=> d!2126285 (= (flatMap!2076 lt!2443198 lambda!380803) (dynLambda!26318 lambda!380803 lt!2443180))))

(declare-fun lt!2443318 () Unit!159881)

(assert (=> d!2126285 (= lt!2443318 (choose!50435 lt!2443198 lt!2443180 lambda!380803))))

(assert (=> d!2126285 (= lt!2443198 (store ((as const (Array Context!11958 Bool)) false) lt!2443180 true))))

(assert (=> d!2126285 (= (lemmaFlatMapOnSingletonSet!1602 lt!2443198 lt!2443180 lambda!380803) lt!2443318)))

(declare-fun b_lambda!254879 () Bool)

(assert (=> (not b_lambda!254879) (not d!2126285)))

(declare-fun bs!1801295 () Bool)

(assert (= bs!1801295 d!2126285))

(assert (=> bs!1801295 m!7519088))

(declare-fun m!7519622 () Bool)

(assert (=> bs!1801295 m!7519622))

(declare-fun m!7519624 () Bool)

(assert (=> bs!1801295 m!7519624))

(assert (=> bs!1801295 m!7519090))

(assert (=> b!6768266 d!2126285))

(declare-fun d!2126287 () Bool)

(assert (=> d!2126287 (= (flatMap!2076 lt!2443198 lambda!380803) (choose!50434 lt!2443198 lambda!380803))))

(declare-fun bs!1801296 () Bool)

(assert (= bs!1801296 d!2126287))

(declare-fun m!7519626 () Bool)

(assert (=> bs!1801296 m!7519626))

(assert (=> b!6768266 d!2126287))

(assert (=> b!6768244 d!2126141))

(declare-fun bs!1801297 () Bool)

(declare-fun d!2126289 () Bool)

(assert (= bs!1801297 (and d!2126289 d!2126205)))

(declare-fun lambda!380879 () Int)

(assert (=> bs!1801297 (= lambda!380879 lambda!380863)))

(declare-fun bs!1801298 () Bool)

(assert (= bs!1801298 (and d!2126289 d!2126233)))

(assert (=> bs!1801298 (= lambda!380879 lambda!380868)))

(declare-fun bs!1801299 () Bool)

(assert (= bs!1801299 (and d!2126289 d!2126273)))

(assert (=> bs!1801299 (= lambda!380879 lambda!380877)))

(assert (=> d!2126289 (= (inv!84734 setElem!46277) (forall!15789 (exprs!6479 setElem!46277) lambda!380879))))

(declare-fun bs!1801300 () Bool)

(assert (= bs!1801300 d!2126289))

(declare-fun m!7519628 () Bool)

(assert (=> bs!1801300 m!7519628))

(assert (=> setNonEmpty!46277 d!2126289))

(declare-fun d!2126291 () Bool)

(declare-fun lt!2443319 () Regex!16595)

(assert (=> d!2126291 (validRegex!8331 lt!2443319)))

(assert (=> d!2126291 (= lt!2443319 (generalisedUnion!2439 (unfocusZipperList!2016 zl!343)))))

(assert (=> d!2126291 (= (unfocusZipper!2337 zl!343) lt!2443319)))

(declare-fun bs!1801301 () Bool)

(assert (= bs!1801301 d!2126291))

(declare-fun m!7519630 () Bool)

(assert (=> bs!1801301 m!7519630))

(assert (=> bs!1801301 m!7519058))

(assert (=> bs!1801301 m!7519058))

(assert (=> bs!1801301 m!7519060))

(assert (=> b!6768248 d!2126291))

(declare-fun b!6768988 () Bool)

(declare-fun c!1256855 () Bool)

(assert (=> b!6768988 (= c!1256855 ((_ is Star!16595) r!7292))))

(declare-fun e!4086896 () (InoxSet Context!11958))

(declare-fun e!4086897 () (InoxSet Context!11958))

(assert (=> b!6768988 (= e!4086896 e!4086897)))

(declare-fun b!6768989 () Bool)

(declare-fun e!4086899 () (InoxSet Context!11958))

(declare-fun call!613359 () (InoxSet Context!11958))

(declare-fun call!613357 () (InoxSet Context!11958))

(assert (=> b!6768989 (= e!4086899 ((_ map or) call!613359 call!613357))))

(declare-fun b!6768990 () Bool)

(declare-fun e!4086898 () (InoxSet Context!11958))

(assert (=> b!6768990 (= e!4086898 (store ((as const (Array Context!11958 Bool)) false) (Context!11959 Nil!65961) true))))

(declare-fun b!6768991 () Bool)

(declare-fun call!613356 () (InoxSet Context!11958))

(assert (=> b!6768991 (= e!4086897 call!613356)))

(declare-fun bm!613350 () Bool)

(declare-fun call!613360 () (InoxSet Context!11958))

(assert (=> bm!613350 (= call!613360 call!613359)))

(declare-fun bm!613351 () Bool)

(assert (=> bm!613351 (= call!613356 call!613360)))

(declare-fun b!6768992 () Bool)

(declare-fun e!4086900 () (InoxSet Context!11958))

(assert (=> b!6768992 (= e!4086900 ((_ map or) call!613357 call!613360))))

(declare-fun b!6768993 () Bool)

(declare-fun e!4086895 () Bool)

(assert (=> b!6768993 (= e!4086895 (nullable!6576 (regOne!33702 r!7292)))))

(declare-fun d!2126293 () Bool)

(declare-fun c!1256856 () Bool)

(assert (=> d!2126293 (= c!1256856 (and ((_ is ElementMatch!16595) r!7292) (= (c!1256657 r!7292) (h!72408 s!2326))))))

(assert (=> d!2126293 (= (derivationStepZipperDown!1823 r!7292 (Context!11959 Nil!65961) (h!72408 s!2326)) e!4086898)))

(declare-fun b!6768994 () Bool)

(assert (=> b!6768994 (= e!4086897 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6768995 () Bool)

(assert (=> b!6768995 (= e!4086896 call!613356)))

(declare-fun b!6768996 () Bool)

(declare-fun c!1256854 () Bool)

(assert (=> b!6768996 (= c!1256854 e!4086895)))

(declare-fun res!2767715 () Bool)

(assert (=> b!6768996 (=> (not res!2767715) (not e!4086895))))

(assert (=> b!6768996 (= res!2767715 ((_ is Concat!25440) r!7292))))

(assert (=> b!6768996 (= e!4086899 e!4086900)))

(declare-fun bm!613352 () Bool)

(declare-fun call!613355 () List!66085)

(declare-fun call!613358 () List!66085)

(assert (=> bm!613352 (= call!613355 call!613358)))

(declare-fun bm!613353 () Bool)

(declare-fun c!1256857 () Bool)

(declare-fun c!1256853 () Bool)

(assert (=> bm!613353 (= call!613359 (derivationStepZipperDown!1823 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292)))) (ite (or c!1256853 c!1256854) (Context!11959 Nil!65961) (Context!11959 call!613355)) (h!72408 s!2326)))))

(declare-fun b!6768997 () Bool)

(assert (=> b!6768997 (= e!4086900 e!4086896)))

(assert (=> b!6768997 (= c!1256857 ((_ is Concat!25440) r!7292))))

(declare-fun b!6768998 () Bool)

(assert (=> b!6768998 (= e!4086898 e!4086899)))

(assert (=> b!6768998 (= c!1256853 ((_ is Union!16595) r!7292))))

(declare-fun bm!613354 () Bool)

(assert (=> bm!613354 (= call!613357 (derivationStepZipperDown!1823 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292)) (ite c!1256853 (Context!11959 Nil!65961) (Context!11959 call!613358)) (h!72408 s!2326)))))

(declare-fun bm!613355 () Bool)

(declare-fun $colon$colon!2406 (List!66085 Regex!16595) List!66085)

(assert (=> bm!613355 (= call!613358 ($colon$colon!2406 (exprs!6479 (Context!11959 Nil!65961)) (ite (or c!1256854 c!1256857) (regTwo!33702 r!7292) r!7292)))))

(assert (= (and d!2126293 c!1256856) b!6768990))

(assert (= (and d!2126293 (not c!1256856)) b!6768998))

(assert (= (and b!6768998 c!1256853) b!6768989))

(assert (= (and b!6768998 (not c!1256853)) b!6768996))

(assert (= (and b!6768996 res!2767715) b!6768993))

(assert (= (and b!6768996 c!1256854) b!6768992))

(assert (= (and b!6768996 (not c!1256854)) b!6768997))

(assert (= (and b!6768997 c!1256857) b!6768995))

(assert (= (and b!6768997 (not c!1256857)) b!6768988))

(assert (= (and b!6768988 c!1256855) b!6768991))

(assert (= (and b!6768988 (not c!1256855)) b!6768994))

(assert (= (or b!6768995 b!6768991) bm!613352))

(assert (= (or b!6768995 b!6768991) bm!613351))

(assert (= (or b!6768992 bm!613352) bm!613355))

(assert (= (or b!6768992 bm!613351) bm!613350))

(assert (= (or b!6768989 b!6768992) bm!613354))

(assert (= (or b!6768989 bm!613350) bm!613353))

(declare-fun m!7519632 () Bool)

(assert (=> bm!613355 m!7519632))

(declare-fun m!7519634 () Bool)

(assert (=> bm!613354 m!7519634))

(declare-fun m!7519636 () Bool)

(assert (=> bm!613353 m!7519636))

(declare-fun m!7519638 () Bool)

(assert (=> b!6768990 m!7519638))

(declare-fun m!7519640 () Bool)

(assert (=> b!6768993 m!7519640))

(assert (=> b!6768267 d!2126293))

(declare-fun b!6768999 () Bool)

(declare-fun e!4086903 () (InoxSet Context!11958))

(assert (=> b!6768999 (= e!4086903 ((as const (Array Context!11958 Bool)) false))))

(declare-fun call!613361 () (InoxSet Context!11958))

(declare-fun b!6769000 () Bool)

(declare-fun e!4086901 () (InoxSet Context!11958))

(assert (=> b!6769000 (= e!4086901 ((_ map or) call!613361 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (h!72408 s!2326))))))

(declare-fun b!6769001 () Bool)

(declare-fun e!4086902 () Bool)

(assert (=> b!6769001 (= e!4086902 (nullable!6576 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))))))

(declare-fun d!2126295 () Bool)

(declare-fun c!1256858 () Bool)

(assert (=> d!2126295 (= c!1256858 e!4086902)))

(declare-fun res!2767716 () Bool)

(assert (=> d!2126295 (=> (not res!2767716) (not e!4086902))))

(assert (=> d!2126295 (= res!2767716 ((_ is Cons!65961) (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))))

(assert (=> d!2126295 (= (derivationStepZipperUp!1749 (Context!11959 (Cons!65961 r!7292 Nil!65961)) (h!72408 s!2326)) e!4086901)))

(declare-fun bm!613356 () Bool)

(assert (=> bm!613356 (= call!613361 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))) (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (h!72408 s!2326)))))

(declare-fun b!6769002 () Bool)

(assert (=> b!6769002 (= e!4086901 e!4086903)))

(declare-fun c!1256859 () Bool)

(assert (=> b!6769002 (= c!1256859 ((_ is Cons!65961) (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))))

(declare-fun b!6769003 () Bool)

(assert (=> b!6769003 (= e!4086903 call!613361)))

(assert (= (and d!2126295 res!2767716) b!6769001))

(assert (= (and d!2126295 c!1256858) b!6769000))

(assert (= (and d!2126295 (not c!1256858)) b!6769002))

(assert (= (and b!6769002 c!1256859) b!6769003))

(assert (= (and b!6769002 (not c!1256859)) b!6768999))

(assert (= (or b!6769000 b!6769003) bm!613356))

(declare-fun m!7519642 () Bool)

(assert (=> b!6769000 m!7519642))

(declare-fun m!7519644 () Bool)

(assert (=> b!6769001 m!7519644))

(declare-fun m!7519646 () Bool)

(assert (=> bm!613356 m!7519646))

(assert (=> b!6768267 d!2126295))

(declare-fun bs!1801302 () Bool)

(declare-fun d!2126297 () Bool)

(assert (= bs!1801302 (and d!2126297 b!6768235)))

(declare-fun lambda!380880 () Int)

(assert (=> bs!1801302 (= lambda!380880 lambda!380803)))

(declare-fun bs!1801303 () Bool)

(assert (= bs!1801303 (and d!2126297 d!2126107)))

(assert (=> bs!1801303 (= lambda!380880 lambda!380806)))

(declare-fun bs!1801304 () Bool)

(assert (= bs!1801304 (and d!2126297 d!2126277)))

(assert (=> bs!1801304 (= lambda!380880 lambda!380878)))

(assert (=> d!2126297 true))

(assert (=> d!2126297 (= (derivationStepZipper!2539 z!1189 (h!72408 s!2326)) (flatMap!2076 z!1189 lambda!380880))))

(declare-fun bs!1801305 () Bool)

(assert (= bs!1801305 d!2126297))

(declare-fun m!7519648 () Bool)

(assert (=> bs!1801305 m!7519648))

(assert (=> b!6768267 d!2126297))

(declare-fun bs!1801306 () Bool)

(declare-fun b!6769013 () Bool)

(assert (= bs!1801306 (and b!6769013 d!2126163)))

(declare-fun lambda!380881 () Int)

(assert (=> bs!1801306 (not (= lambda!380881 lambda!380842))))

(declare-fun bs!1801307 () Bool)

(assert (= bs!1801307 (and b!6769013 d!2126145)))

(assert (=> bs!1801307 (not (= lambda!380881 lambda!380829))))

(declare-fun bs!1801308 () Bool)

(assert (= bs!1801308 (and b!6769013 b!6768233)))

(assert (=> bs!1801308 (not (= lambda!380881 lambda!380800))))

(assert (=> bs!1801308 (not (= lambda!380881 lambda!380802))))

(assert (=> bs!1801308 (= lambda!380881 lambda!380801)))

(assert (=> bs!1801307 (= (= r!7292 (Star!16595 (reg!16924 r!7292))) (= lambda!380881 lambda!380830))))

(declare-fun bs!1801309 () Bool)

(assert (= bs!1801309 (and b!6769013 b!6768909)))

(assert (=> bs!1801309 (not (= lambda!380881 lambda!380874))))

(assert (=> bs!1801306 (not (= lambda!380881 lambda!380841))))

(declare-fun bs!1801310 () Bool)

(assert (= bs!1801310 (and b!6769013 b!6768912)))

(assert (=> bs!1801310 (= (and (= (reg!16924 r!7292) (reg!16924 lt!2443204)) (= r!7292 lt!2443204)) (= lambda!380881 lambda!380873))))

(declare-fun bs!1801311 () Bool)

(assert (= bs!1801311 (and b!6769013 d!2126187)))

(assert (=> bs!1801311 (not (= lambda!380881 lambda!380857))))

(assert (=> b!6769013 true))

(assert (=> b!6769013 true))

(declare-fun bs!1801312 () Bool)

(declare-fun b!6769010 () Bool)

(assert (= bs!1801312 (and b!6769010 d!2126163)))

(declare-fun lambda!380882 () Int)

(assert (=> bs!1801312 (= (and (= (regOne!33702 r!7292) (reg!16924 r!7292)) (= (regTwo!33702 r!7292) r!7292)) (= lambda!380882 lambda!380842))))

(declare-fun bs!1801313 () Bool)

(assert (= bs!1801313 (and b!6769010 d!2126145)))

(assert (=> bs!1801313 (not (= lambda!380882 lambda!380829))))

(declare-fun bs!1801314 () Bool)

(assert (= bs!1801314 (and b!6769010 b!6768233)))

(assert (=> bs!1801314 (not (= lambda!380882 lambda!380800))))

(assert (=> bs!1801314 (= (and (= (regOne!33702 r!7292) (reg!16924 r!7292)) (= (regTwo!33702 r!7292) r!7292)) (= lambda!380882 lambda!380802))))

(assert (=> bs!1801314 (not (= lambda!380882 lambda!380801))))

(declare-fun bs!1801315 () Bool)

(assert (= bs!1801315 (and b!6769010 b!6769013)))

(assert (=> bs!1801315 (not (= lambda!380882 lambda!380881))))

(assert (=> bs!1801313 (not (= lambda!380882 lambda!380830))))

(declare-fun bs!1801316 () Bool)

(assert (= bs!1801316 (and b!6769010 b!6768909)))

(assert (=> bs!1801316 (= (and (= (regOne!33702 r!7292) (regOne!33702 lt!2443204)) (= (regTwo!33702 r!7292) (regTwo!33702 lt!2443204))) (= lambda!380882 lambda!380874))))

(assert (=> bs!1801312 (not (= lambda!380882 lambda!380841))))

(declare-fun bs!1801317 () Bool)

(assert (= bs!1801317 (and b!6769010 b!6768912)))

(assert (=> bs!1801317 (not (= lambda!380882 lambda!380873))))

(declare-fun bs!1801318 () Bool)

(assert (= bs!1801318 (and b!6769010 d!2126187)))

(assert (=> bs!1801318 (not (= lambda!380882 lambda!380857))))

(assert (=> b!6769010 true))

(assert (=> b!6769010 true))

(declare-fun c!1256863 () Bool)

(declare-fun bm!613357 () Bool)

(declare-fun call!613362 () Bool)

(assert (=> bm!613357 (= call!613362 (Exists!3663 (ite c!1256863 lambda!380881 lambda!380882)))))

(declare-fun b!6769004 () Bool)

(declare-fun res!2767719 () Bool)

(declare-fun e!4086905 () Bool)

(assert (=> b!6769004 (=> res!2767719 e!4086905)))

(declare-fun call!613363 () Bool)

(assert (=> b!6769004 (= res!2767719 call!613363)))

(declare-fun e!4086907 () Bool)

(assert (=> b!6769004 (= e!4086907 e!4086905)))

(declare-fun d!2126299 () Bool)

(declare-fun c!1256860 () Bool)

(assert (=> d!2126299 (= c!1256860 ((_ is EmptyExpr!16595) r!7292))))

(declare-fun e!4086909 () Bool)

(assert (=> d!2126299 (= (matchRSpec!3696 r!7292 s!2326) e!4086909)))

(declare-fun b!6769005 () Bool)

(declare-fun c!1256862 () Bool)

(assert (=> b!6769005 (= c!1256862 ((_ is Union!16595) r!7292))))

(declare-fun e!4086908 () Bool)

(declare-fun e!4086910 () Bool)

(assert (=> b!6769005 (= e!4086908 e!4086910)))

(declare-fun b!6769006 () Bool)

(declare-fun e!4086904 () Bool)

(assert (=> b!6769006 (= e!4086904 (matchRSpec!3696 (regTwo!33703 r!7292) s!2326))))

(declare-fun b!6769007 () Bool)

(declare-fun e!4086906 () Bool)

(assert (=> b!6769007 (= e!4086909 e!4086906)))

(declare-fun res!2767717 () Bool)

(assert (=> b!6769007 (= res!2767717 (not ((_ is EmptyLang!16595) r!7292)))))

(assert (=> b!6769007 (=> (not res!2767717) (not e!4086906))))

(declare-fun b!6769008 () Bool)

(assert (=> b!6769008 (= e!4086910 e!4086904)))

(declare-fun res!2767718 () Bool)

(assert (=> b!6769008 (= res!2767718 (matchRSpec!3696 (regOne!33703 r!7292) s!2326))))

(assert (=> b!6769008 (=> res!2767718 e!4086904)))

(declare-fun b!6769009 () Bool)

(assert (=> b!6769009 (= e!4086910 e!4086907)))

(assert (=> b!6769009 (= c!1256863 ((_ is Star!16595) r!7292))))

(declare-fun bm!613358 () Bool)

(assert (=> bm!613358 (= call!613363 (isEmpty!38317 s!2326))))

(assert (=> b!6769010 (= e!4086907 call!613362)))

(declare-fun b!6769011 () Bool)

(assert (=> b!6769011 (= e!4086908 (= s!2326 (Cons!65960 (c!1256657 r!7292) Nil!65960)))))

(declare-fun b!6769012 () Bool)

(declare-fun c!1256861 () Bool)

(assert (=> b!6769012 (= c!1256861 ((_ is ElementMatch!16595) r!7292))))

(assert (=> b!6769012 (= e!4086906 e!4086908)))

(assert (=> b!6769013 (= e!4086905 call!613362)))

(declare-fun b!6769014 () Bool)

(assert (=> b!6769014 (= e!4086909 call!613363)))

(assert (= (and d!2126299 c!1256860) b!6769014))

(assert (= (and d!2126299 (not c!1256860)) b!6769007))

(assert (= (and b!6769007 res!2767717) b!6769012))

(assert (= (and b!6769012 c!1256861) b!6769011))

(assert (= (and b!6769012 (not c!1256861)) b!6769005))

(assert (= (and b!6769005 c!1256862) b!6769008))

(assert (= (and b!6769005 (not c!1256862)) b!6769009))

(assert (= (and b!6769008 (not res!2767718)) b!6769006))

(assert (= (and b!6769009 c!1256863) b!6769004))

(assert (= (and b!6769009 (not c!1256863)) b!6769010))

(assert (= (and b!6769004 (not res!2767719)) b!6769013))

(assert (= (or b!6769013 b!6769010) bm!613357))

(assert (= (or b!6769014 b!6769004) bm!613358))

(declare-fun m!7519650 () Bool)

(assert (=> bm!613357 m!7519650))

(declare-fun m!7519652 () Bool)

(assert (=> b!6769006 m!7519652))

(declare-fun m!7519654 () Bool)

(assert (=> b!6769008 m!7519654))

(assert (=> bm!613358 m!7519036))

(assert (=> b!6768247 d!2126299))

(declare-fun b!6769015 () Bool)

(declare-fun res!2767723 () Bool)

(declare-fun e!4086913 () Bool)

(assert (=> b!6769015 (=> (not res!2767723) (not e!4086913))))

(declare-fun call!613364 () Bool)

(assert (=> b!6769015 (= res!2767723 (not call!613364))))

(declare-fun b!6769016 () Bool)

(declare-fun res!2767725 () Bool)

(assert (=> b!6769016 (=> (not res!2767725) (not e!4086913))))

(assert (=> b!6769016 (= res!2767725 (isEmpty!38317 (tail!12690 s!2326)))))

(declare-fun b!6769017 () Bool)

(declare-fun res!2767722 () Bool)

(declare-fun e!4086915 () Bool)

(assert (=> b!6769017 (=> res!2767722 e!4086915)))

(assert (=> b!6769017 (= res!2767722 (not (isEmpty!38317 (tail!12690 s!2326))))))

(declare-fun b!6769018 () Bool)

(declare-fun e!4086914 () Bool)

(declare-fun lt!2443320 () Bool)

(assert (=> b!6769018 (= e!4086914 (not lt!2443320))))

(declare-fun b!6769019 () Bool)

(assert (=> b!6769019 (= e!4086913 (= (head!13605 s!2326) (c!1256657 r!7292)))))

(declare-fun b!6769020 () Bool)

(declare-fun e!4086917 () Bool)

(assert (=> b!6769020 (= e!4086917 e!4086915)))

(declare-fun res!2767720 () Bool)

(assert (=> b!6769020 (=> res!2767720 e!4086915)))

(assert (=> b!6769020 (= res!2767720 call!613364)))

(declare-fun b!6769021 () Bool)

(declare-fun e!4086911 () Bool)

(assert (=> b!6769021 (= e!4086911 (nullable!6576 r!7292))))

(declare-fun b!6769022 () Bool)

(declare-fun res!2767721 () Bool)

(declare-fun e!4086912 () Bool)

(assert (=> b!6769022 (=> res!2767721 e!4086912)))

(assert (=> b!6769022 (= res!2767721 (not ((_ is ElementMatch!16595) r!7292)))))

(assert (=> b!6769022 (= e!4086914 e!4086912)))

(declare-fun b!6769024 () Bool)

(assert (=> b!6769024 (= e!4086912 e!4086917)))

(declare-fun res!2767724 () Bool)

(assert (=> b!6769024 (=> (not res!2767724) (not e!4086917))))

(assert (=> b!6769024 (= res!2767724 (not lt!2443320))))

(declare-fun b!6769025 () Bool)

(declare-fun e!4086916 () Bool)

(assert (=> b!6769025 (= e!4086916 (= lt!2443320 call!613364))))

(declare-fun bm!613359 () Bool)

(assert (=> bm!613359 (= call!613364 (isEmpty!38317 s!2326))))

(declare-fun b!6769026 () Bool)

(declare-fun res!2767726 () Bool)

(assert (=> b!6769026 (=> res!2767726 e!4086912)))

(assert (=> b!6769026 (= res!2767726 e!4086913)))

(declare-fun res!2767727 () Bool)

(assert (=> b!6769026 (=> (not res!2767727) (not e!4086913))))

(assert (=> b!6769026 (= res!2767727 lt!2443320)))

(declare-fun b!6769027 () Bool)

(assert (=> b!6769027 (= e!4086911 (matchR!8778 (derivativeStep!5261 r!7292 (head!13605 s!2326)) (tail!12690 s!2326)))))

(declare-fun b!6769028 () Bool)

(assert (=> b!6769028 (= e!4086915 (not (= (head!13605 s!2326) (c!1256657 r!7292))))))

(declare-fun d!2126301 () Bool)

(assert (=> d!2126301 e!4086916))

(declare-fun c!1256864 () Bool)

(assert (=> d!2126301 (= c!1256864 ((_ is EmptyExpr!16595) r!7292))))

(assert (=> d!2126301 (= lt!2443320 e!4086911)))

(declare-fun c!1256866 () Bool)

(assert (=> d!2126301 (= c!1256866 (isEmpty!38317 s!2326))))

(assert (=> d!2126301 (validRegex!8331 r!7292)))

(assert (=> d!2126301 (= (matchR!8778 r!7292 s!2326) lt!2443320)))

(declare-fun b!6769023 () Bool)

(assert (=> b!6769023 (= e!4086916 e!4086914)))

(declare-fun c!1256865 () Bool)

(assert (=> b!6769023 (= c!1256865 ((_ is EmptyLang!16595) r!7292))))

(assert (= (and d!2126301 c!1256866) b!6769021))

(assert (= (and d!2126301 (not c!1256866)) b!6769027))

(assert (= (and d!2126301 c!1256864) b!6769025))

(assert (= (and d!2126301 (not c!1256864)) b!6769023))

(assert (= (and b!6769023 c!1256865) b!6769018))

(assert (= (and b!6769023 (not c!1256865)) b!6769022))

(assert (= (and b!6769022 (not res!2767721)) b!6769026))

(assert (= (and b!6769026 res!2767727) b!6769015))

(assert (= (and b!6769015 res!2767723) b!6769016))

(assert (= (and b!6769016 res!2767725) b!6769019))

(assert (= (and b!6769026 (not res!2767726)) b!6769024))

(assert (= (and b!6769024 res!2767724) b!6769020))

(assert (= (and b!6769020 (not res!2767720)) b!6769017))

(assert (= (and b!6769017 (not res!2767722)) b!6769028))

(assert (= (or b!6769025 b!6769015 b!6769020) bm!613359))

(assert (=> b!6769028 m!7519100))

(assert (=> bm!613359 m!7519036))

(assert (=> b!6769017 m!7519104))

(assert (=> b!6769017 m!7519104))

(assert (=> b!6769017 m!7519582))

(assert (=> b!6769027 m!7519100))

(assert (=> b!6769027 m!7519100))

(declare-fun m!7519656 () Bool)

(assert (=> b!6769027 m!7519656))

(assert (=> b!6769027 m!7519104))

(assert (=> b!6769027 m!7519656))

(assert (=> b!6769027 m!7519104))

(declare-fun m!7519658 () Bool)

(assert (=> b!6769027 m!7519658))

(declare-fun m!7519660 () Bool)

(assert (=> b!6769021 m!7519660))

(assert (=> b!6769016 m!7519104))

(assert (=> b!6769016 m!7519104))

(assert (=> b!6769016 m!7519582))

(assert (=> b!6769019 m!7519100))

(assert (=> d!2126301 m!7519036))

(assert (=> d!2126301 m!7519006))

(assert (=> b!6768247 d!2126301))

(declare-fun d!2126303 () Bool)

(assert (=> d!2126303 (= (matchR!8778 r!7292 s!2326) (matchRSpec!3696 r!7292 s!2326))))

(declare-fun lt!2443321 () Unit!159881)

(assert (=> d!2126303 (= lt!2443321 (choose!50445 r!7292 s!2326))))

(assert (=> d!2126303 (validRegex!8331 r!7292)))

(assert (=> d!2126303 (= (mainMatchTheorem!3696 r!7292 s!2326) lt!2443321)))

(declare-fun bs!1801319 () Bool)

(assert (= bs!1801319 d!2126303))

(assert (=> bs!1801319 m!7519030))

(assert (=> bs!1801319 m!7519028))

(declare-fun m!7519662 () Bool)

(assert (=> bs!1801319 m!7519662))

(assert (=> bs!1801319 m!7519006))

(assert (=> b!6768247 d!2126303))

(declare-fun d!2126305 () Bool)

(assert (=> d!2126305 (= (isEmpty!38318 (t!379795 zl!343)) ((_ is Nil!65962) (t!379795 zl!343)))))

(assert (=> b!6768261 d!2126305))

(declare-fun b!6769029 () Bool)

(declare-fun c!1256869 () Bool)

(assert (=> b!6769029 (= c!1256869 ((_ is Star!16595) (reg!16924 r!7292)))))

(declare-fun e!4086919 () (InoxSet Context!11958))

(declare-fun e!4086920 () (InoxSet Context!11958))

(assert (=> b!6769029 (= e!4086919 e!4086920)))

(declare-fun b!6769030 () Bool)

(declare-fun e!4086922 () (InoxSet Context!11958))

(declare-fun call!613369 () (InoxSet Context!11958))

(declare-fun call!613367 () (InoxSet Context!11958))

(assert (=> b!6769030 (= e!4086922 ((_ map or) call!613369 call!613367))))

(declare-fun b!6769031 () Bool)

(declare-fun e!4086921 () (InoxSet Context!11958))

(assert (=> b!6769031 (= e!4086921 (store ((as const (Array Context!11958 Bool)) false) lt!2443210 true))))

(declare-fun b!6769032 () Bool)

(declare-fun call!613366 () (InoxSet Context!11958))

(assert (=> b!6769032 (= e!4086920 call!613366)))

(declare-fun bm!613360 () Bool)

(declare-fun call!613370 () (InoxSet Context!11958))

(assert (=> bm!613360 (= call!613370 call!613369)))

(declare-fun bm!613361 () Bool)

(assert (=> bm!613361 (= call!613366 call!613370)))

(declare-fun b!6769033 () Bool)

(declare-fun e!4086923 () (InoxSet Context!11958))

(assert (=> b!6769033 (= e!4086923 ((_ map or) call!613367 call!613370))))

(declare-fun b!6769034 () Bool)

(declare-fun e!4086918 () Bool)

(assert (=> b!6769034 (= e!4086918 (nullable!6576 (regOne!33702 (reg!16924 r!7292))))))

(declare-fun d!2126307 () Bool)

(declare-fun c!1256870 () Bool)

(assert (=> d!2126307 (= c!1256870 (and ((_ is ElementMatch!16595) (reg!16924 r!7292)) (= (c!1256657 (reg!16924 r!7292)) (h!72408 s!2326))))))

(assert (=> d!2126307 (= (derivationStepZipperDown!1823 (reg!16924 r!7292) lt!2443210 (h!72408 s!2326)) e!4086921)))

(declare-fun b!6769035 () Bool)

(assert (=> b!6769035 (= e!4086920 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6769036 () Bool)

(assert (=> b!6769036 (= e!4086919 call!613366)))

(declare-fun b!6769037 () Bool)

(declare-fun c!1256868 () Bool)

(assert (=> b!6769037 (= c!1256868 e!4086918)))

(declare-fun res!2767728 () Bool)

(assert (=> b!6769037 (=> (not res!2767728) (not e!4086918))))

(assert (=> b!6769037 (= res!2767728 ((_ is Concat!25440) (reg!16924 r!7292)))))

(assert (=> b!6769037 (= e!4086922 e!4086923)))

(declare-fun bm!613362 () Bool)

(declare-fun call!613365 () List!66085)

(declare-fun call!613368 () List!66085)

(assert (=> bm!613362 (= call!613365 call!613368)))

(declare-fun c!1256867 () Bool)

(declare-fun c!1256871 () Bool)

(declare-fun bm!613363 () Bool)

(assert (=> bm!613363 (= call!613369 (derivationStepZipperDown!1823 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292))))) (ite (or c!1256867 c!1256868) lt!2443210 (Context!11959 call!613365)) (h!72408 s!2326)))))

(declare-fun b!6769038 () Bool)

(assert (=> b!6769038 (= e!4086923 e!4086919)))

(assert (=> b!6769038 (= c!1256871 ((_ is Concat!25440) (reg!16924 r!7292)))))

(declare-fun b!6769039 () Bool)

(assert (=> b!6769039 (= e!4086921 e!4086922)))

(assert (=> b!6769039 (= c!1256867 ((_ is Union!16595) (reg!16924 r!7292)))))

(declare-fun bm!613364 () Bool)

(assert (=> bm!613364 (= call!613367 (derivationStepZipperDown!1823 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292))) (ite c!1256867 lt!2443210 (Context!11959 call!613368)) (h!72408 s!2326)))))

(declare-fun bm!613365 () Bool)

(assert (=> bm!613365 (= call!613368 ($colon$colon!2406 (exprs!6479 lt!2443210) (ite (or c!1256868 c!1256871) (regTwo!33702 (reg!16924 r!7292)) (reg!16924 r!7292))))))

(assert (= (and d!2126307 c!1256870) b!6769031))

(assert (= (and d!2126307 (not c!1256870)) b!6769039))

(assert (= (and b!6769039 c!1256867) b!6769030))

(assert (= (and b!6769039 (not c!1256867)) b!6769037))

(assert (= (and b!6769037 res!2767728) b!6769034))

(assert (= (and b!6769037 c!1256868) b!6769033))

(assert (= (and b!6769037 (not c!1256868)) b!6769038))

(assert (= (and b!6769038 c!1256871) b!6769036))

(assert (= (and b!6769038 (not c!1256871)) b!6769029))

(assert (= (and b!6769029 c!1256869) b!6769032))

(assert (= (and b!6769029 (not c!1256869)) b!6769035))

(assert (= (or b!6769036 b!6769032) bm!613362))

(assert (= (or b!6769036 b!6769032) bm!613361))

(assert (= (or b!6769033 bm!613362) bm!613365))

(assert (= (or b!6769033 bm!613361) bm!613360))

(assert (= (or b!6769030 b!6769033) bm!613364))

(assert (= (or b!6769030 bm!613360) bm!613363))

(declare-fun m!7519664 () Bool)

(assert (=> bm!613365 m!7519664))

(declare-fun m!7519666 () Bool)

(assert (=> bm!613364 m!7519666))

(declare-fun m!7519668 () Bool)

(assert (=> bm!613363 m!7519668))

(assert (=> b!6769031 m!7519092))

(declare-fun m!7519670 () Bool)

(assert (=> b!6769034 m!7519670))

(assert (=> b!6768260 d!2126307))

(declare-fun d!2126309 () Bool)

(assert (=> d!2126309 (= (flatMap!2076 lt!2443188 lambda!380803) (choose!50434 lt!2443188 lambda!380803))))

(declare-fun bs!1801320 () Bool)

(assert (= bs!1801320 d!2126309))

(declare-fun m!7519672 () Bool)

(assert (=> bs!1801320 m!7519672))

(assert (=> b!6768260 d!2126309))

(declare-fun b!6769040 () Bool)

(declare-fun e!4086926 () (InoxSet Context!11958))

(assert (=> b!6769040 (= e!4086926 ((as const (Array Context!11958 Bool)) false))))

(declare-fun e!4086924 () (InoxSet Context!11958))

(declare-fun b!6769041 () Bool)

(declare-fun call!613371 () (InoxSet Context!11958))

(assert (=> b!6769041 (= e!4086924 ((_ map or) call!613371 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 lt!2443194))) (h!72408 s!2326))))))

(declare-fun b!6769042 () Bool)

(declare-fun e!4086925 () Bool)

(assert (=> b!6769042 (= e!4086925 (nullable!6576 (h!72409 (exprs!6479 lt!2443194))))))

(declare-fun d!2126311 () Bool)

(declare-fun c!1256872 () Bool)

(assert (=> d!2126311 (= c!1256872 e!4086925)))

(declare-fun res!2767729 () Bool)

(assert (=> d!2126311 (=> (not res!2767729) (not e!4086925))))

(assert (=> d!2126311 (= res!2767729 ((_ is Cons!65961) (exprs!6479 lt!2443194)))))

(assert (=> d!2126311 (= (derivationStepZipperUp!1749 lt!2443194 (h!72408 s!2326)) e!4086924)))

(declare-fun bm!613366 () Bool)

(assert (=> bm!613366 (= call!613371 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 lt!2443194)) (Context!11959 (t!379794 (exprs!6479 lt!2443194))) (h!72408 s!2326)))))

(declare-fun b!6769043 () Bool)

(assert (=> b!6769043 (= e!4086924 e!4086926)))

(declare-fun c!1256873 () Bool)

(assert (=> b!6769043 (= c!1256873 ((_ is Cons!65961) (exprs!6479 lt!2443194)))))

(declare-fun b!6769044 () Bool)

(assert (=> b!6769044 (= e!4086926 call!613371)))

(assert (= (and d!2126311 res!2767729) b!6769042))

(assert (= (and d!2126311 c!1256872) b!6769041))

(assert (= (and d!2126311 (not c!1256872)) b!6769043))

(assert (= (and b!6769043 c!1256873) b!6769044))

(assert (= (and b!6769043 (not c!1256873)) b!6769040))

(assert (= (or b!6769041 b!6769044) bm!613366))

(declare-fun m!7519674 () Bool)

(assert (=> b!6769041 m!7519674))

(declare-fun m!7519676 () Bool)

(assert (=> b!6769042 m!7519676))

(declare-fun m!7519678 () Bool)

(assert (=> bm!613366 m!7519678))

(assert (=> b!6768260 d!2126311))

(declare-fun d!2126313 () Bool)

(assert (=> d!2126313 (= (flatMap!2076 lt!2443188 lambda!380803) (dynLambda!26318 lambda!380803 lt!2443194))))

(declare-fun lt!2443322 () Unit!159881)

(assert (=> d!2126313 (= lt!2443322 (choose!50435 lt!2443188 lt!2443194 lambda!380803))))

(assert (=> d!2126313 (= lt!2443188 (store ((as const (Array Context!11958 Bool)) false) lt!2443194 true))))

(assert (=> d!2126313 (= (lemmaFlatMapOnSingletonSet!1602 lt!2443188 lt!2443194 lambda!380803) lt!2443322)))

(declare-fun b_lambda!254881 () Bool)

(assert (=> (not b_lambda!254881) (not d!2126313)))

(declare-fun bs!1801321 () Bool)

(assert (= bs!1801321 d!2126313))

(assert (=> bs!1801321 m!7519012))

(declare-fun m!7519680 () Bool)

(assert (=> bs!1801321 m!7519680))

(declare-fun m!7519682 () Bool)

(assert (=> bs!1801321 m!7519682))

(assert (=> bs!1801321 m!7519014))

(assert (=> b!6768260 d!2126313))

(declare-fun d!2126315 () Bool)

(declare-fun e!4086927 () Bool)

(assert (=> d!2126315 e!4086927))

(declare-fun res!2767730 () Bool)

(assert (=> d!2126315 (=> (not res!2767730) (not e!4086927))))

(declare-fun lt!2443323 () List!66086)

(assert (=> d!2126315 (= res!2767730 (noDuplicate!2382 lt!2443323))))

(assert (=> d!2126315 (= lt!2443323 (choose!50442 z!1189))))

(assert (=> d!2126315 (= (toList!10379 z!1189) lt!2443323)))

(declare-fun b!6769045 () Bool)

(assert (=> b!6769045 (= e!4086927 (= (content!12840 lt!2443323) z!1189))))

(assert (= (and d!2126315 res!2767730) b!6769045))

(declare-fun m!7519684 () Bool)

(assert (=> d!2126315 m!7519684))

(declare-fun m!7519686 () Bool)

(assert (=> d!2126315 m!7519686))

(declare-fun m!7519688 () Bool)

(assert (=> b!6769045 m!7519688))

(assert (=> b!6768239 d!2126315))

(declare-fun b!6769046 () Bool)

(declare-fun res!2767734 () Bool)

(declare-fun e!4086930 () Bool)

(assert (=> b!6769046 (=> (not res!2767734) (not e!4086930))))

(declare-fun call!613372 () Bool)

(assert (=> b!6769046 (= res!2767734 (not call!613372))))

(declare-fun b!6769047 () Bool)

(declare-fun res!2767736 () Bool)

(assert (=> b!6769047 (=> (not res!2767736) (not e!4086930))))

(assert (=> b!6769047 (= res!2767736 (isEmpty!38317 (tail!12690 (_2!36873 lt!2443186))))))

(declare-fun b!6769048 () Bool)

(declare-fun res!2767733 () Bool)

(declare-fun e!4086932 () Bool)

(assert (=> b!6769048 (=> res!2767733 e!4086932)))

(assert (=> b!6769048 (= res!2767733 (not (isEmpty!38317 (tail!12690 (_2!36873 lt!2443186)))))))

(declare-fun b!6769049 () Bool)

(declare-fun e!4086931 () Bool)

(declare-fun lt!2443324 () Bool)

(assert (=> b!6769049 (= e!4086931 (not lt!2443324))))

(declare-fun b!6769050 () Bool)

(assert (=> b!6769050 (= e!4086930 (= (head!13605 (_2!36873 lt!2443186)) (c!1256657 r!7292)))))

(declare-fun b!6769051 () Bool)

(declare-fun e!4086934 () Bool)

(assert (=> b!6769051 (= e!4086934 e!4086932)))

(declare-fun res!2767731 () Bool)

(assert (=> b!6769051 (=> res!2767731 e!4086932)))

(assert (=> b!6769051 (= res!2767731 call!613372)))

(declare-fun b!6769052 () Bool)

(declare-fun e!4086928 () Bool)

(assert (=> b!6769052 (= e!4086928 (nullable!6576 r!7292))))

(declare-fun b!6769053 () Bool)

(declare-fun res!2767732 () Bool)

(declare-fun e!4086929 () Bool)

(assert (=> b!6769053 (=> res!2767732 e!4086929)))

(assert (=> b!6769053 (= res!2767732 (not ((_ is ElementMatch!16595) r!7292)))))

(assert (=> b!6769053 (= e!4086931 e!4086929)))

(declare-fun b!6769055 () Bool)

(assert (=> b!6769055 (= e!4086929 e!4086934)))

(declare-fun res!2767735 () Bool)

(assert (=> b!6769055 (=> (not res!2767735) (not e!4086934))))

(assert (=> b!6769055 (= res!2767735 (not lt!2443324))))

(declare-fun b!6769056 () Bool)

(declare-fun e!4086933 () Bool)

(assert (=> b!6769056 (= e!4086933 (= lt!2443324 call!613372))))

(declare-fun bm!613367 () Bool)

(assert (=> bm!613367 (= call!613372 (isEmpty!38317 (_2!36873 lt!2443186)))))

(declare-fun b!6769057 () Bool)

(declare-fun res!2767737 () Bool)

(assert (=> b!6769057 (=> res!2767737 e!4086929)))

(assert (=> b!6769057 (= res!2767737 e!4086930)))

(declare-fun res!2767738 () Bool)

(assert (=> b!6769057 (=> (not res!2767738) (not e!4086930))))

(assert (=> b!6769057 (= res!2767738 lt!2443324)))

(declare-fun b!6769058 () Bool)

(assert (=> b!6769058 (= e!4086928 (matchR!8778 (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186))) (tail!12690 (_2!36873 lt!2443186))))))

(declare-fun b!6769059 () Bool)

(assert (=> b!6769059 (= e!4086932 (not (= (head!13605 (_2!36873 lt!2443186)) (c!1256657 r!7292))))))

(declare-fun d!2126317 () Bool)

(assert (=> d!2126317 e!4086933))

(declare-fun c!1256874 () Bool)

(assert (=> d!2126317 (= c!1256874 ((_ is EmptyExpr!16595) r!7292))))

(assert (=> d!2126317 (= lt!2443324 e!4086928)))

(declare-fun c!1256876 () Bool)

(assert (=> d!2126317 (= c!1256876 (isEmpty!38317 (_2!36873 lt!2443186)))))

(assert (=> d!2126317 (validRegex!8331 r!7292)))

(assert (=> d!2126317 (= (matchR!8778 r!7292 (_2!36873 lt!2443186)) lt!2443324)))

(declare-fun b!6769054 () Bool)

(assert (=> b!6769054 (= e!4086933 e!4086931)))

(declare-fun c!1256875 () Bool)

(assert (=> b!6769054 (= c!1256875 ((_ is EmptyLang!16595) r!7292))))

(assert (= (and d!2126317 c!1256876) b!6769052))

(assert (= (and d!2126317 (not c!1256876)) b!6769058))

(assert (= (and d!2126317 c!1256874) b!6769056))

(assert (= (and d!2126317 (not c!1256874)) b!6769054))

(assert (= (and b!6769054 c!1256875) b!6769049))

(assert (= (and b!6769054 (not c!1256875)) b!6769053))

(assert (= (and b!6769053 (not res!2767732)) b!6769057))

(assert (= (and b!6769057 res!2767738) b!6769046))

(assert (= (and b!6769046 res!2767734) b!6769047))

(assert (= (and b!6769047 res!2767736) b!6769050))

(assert (= (and b!6769057 (not res!2767737)) b!6769055))

(assert (= (and b!6769055 res!2767735) b!6769051))

(assert (= (and b!6769051 (not res!2767731)) b!6769048))

(assert (= (and b!6769048 (not res!2767733)) b!6769059))

(assert (= (or b!6769056 b!6769046 b!6769051) bm!613367))

(declare-fun m!7519690 () Bool)

(assert (=> b!6769059 m!7519690))

(declare-fun m!7519692 () Bool)

(assert (=> bm!613367 m!7519692))

(declare-fun m!7519694 () Bool)

(assert (=> b!6769048 m!7519694))

(assert (=> b!6769048 m!7519694))

(declare-fun m!7519696 () Bool)

(assert (=> b!6769048 m!7519696))

(assert (=> b!6769058 m!7519690))

(assert (=> b!6769058 m!7519690))

(declare-fun m!7519698 () Bool)

(assert (=> b!6769058 m!7519698))

(assert (=> b!6769058 m!7519694))

(assert (=> b!6769058 m!7519698))

(assert (=> b!6769058 m!7519694))

(declare-fun m!7519700 () Bool)

(assert (=> b!6769058 m!7519700))

(assert (=> b!6769052 m!7519660))

(assert (=> b!6769047 m!7519694))

(assert (=> b!6769047 m!7519694))

(assert (=> b!6769047 m!7519696))

(assert (=> b!6769050 m!7519690))

(assert (=> d!2126317 m!7519692))

(assert (=> d!2126317 m!7519006))

(assert (=> b!6768242 d!2126317))

(declare-fun b!6769060 () Bool)

(declare-fun res!2767742 () Bool)

(declare-fun e!4086937 () Bool)

(assert (=> b!6769060 (=> (not res!2767742) (not e!4086937))))

(declare-fun call!613373 () Bool)

(assert (=> b!6769060 (= res!2767742 (not call!613373))))

(declare-fun b!6769061 () Bool)

(declare-fun res!2767744 () Bool)

(assert (=> b!6769061 (=> (not res!2767744) (not e!4086937))))

(assert (=> b!6769061 (= res!2767744 (isEmpty!38317 (tail!12690 (_1!36873 lt!2443186))))))

(declare-fun b!6769062 () Bool)

(declare-fun res!2767741 () Bool)

(declare-fun e!4086939 () Bool)

(assert (=> b!6769062 (=> res!2767741 e!4086939)))

(assert (=> b!6769062 (= res!2767741 (not (isEmpty!38317 (tail!12690 (_1!36873 lt!2443186)))))))

(declare-fun b!6769063 () Bool)

(declare-fun e!4086938 () Bool)

(declare-fun lt!2443325 () Bool)

(assert (=> b!6769063 (= e!4086938 (not lt!2443325))))

(declare-fun b!6769064 () Bool)

(assert (=> b!6769064 (= e!4086937 (= (head!13605 (_1!36873 lt!2443186)) (c!1256657 (reg!16924 r!7292))))))

(declare-fun b!6769065 () Bool)

(declare-fun e!4086941 () Bool)

(assert (=> b!6769065 (= e!4086941 e!4086939)))

(declare-fun res!2767739 () Bool)

(assert (=> b!6769065 (=> res!2767739 e!4086939)))

(assert (=> b!6769065 (= res!2767739 call!613373)))

(declare-fun b!6769066 () Bool)

(declare-fun e!4086935 () Bool)

(assert (=> b!6769066 (= e!4086935 (nullable!6576 (reg!16924 r!7292)))))

(declare-fun b!6769067 () Bool)

(declare-fun res!2767740 () Bool)

(declare-fun e!4086936 () Bool)

(assert (=> b!6769067 (=> res!2767740 e!4086936)))

(assert (=> b!6769067 (= res!2767740 (not ((_ is ElementMatch!16595) (reg!16924 r!7292))))))

(assert (=> b!6769067 (= e!4086938 e!4086936)))

(declare-fun b!6769069 () Bool)

(assert (=> b!6769069 (= e!4086936 e!4086941)))

(declare-fun res!2767743 () Bool)

(assert (=> b!6769069 (=> (not res!2767743) (not e!4086941))))

(assert (=> b!6769069 (= res!2767743 (not lt!2443325))))

(declare-fun b!6769070 () Bool)

(declare-fun e!4086940 () Bool)

(assert (=> b!6769070 (= e!4086940 (= lt!2443325 call!613373))))

(declare-fun bm!613368 () Bool)

(assert (=> bm!613368 (= call!613373 (isEmpty!38317 (_1!36873 lt!2443186)))))

(declare-fun b!6769071 () Bool)

(declare-fun res!2767745 () Bool)

(assert (=> b!6769071 (=> res!2767745 e!4086936)))

(assert (=> b!6769071 (= res!2767745 e!4086937)))

(declare-fun res!2767746 () Bool)

(assert (=> b!6769071 (=> (not res!2767746) (not e!4086937))))

(assert (=> b!6769071 (= res!2767746 lt!2443325)))

(declare-fun b!6769072 () Bool)

(assert (=> b!6769072 (= e!4086935 (matchR!8778 (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186))) (tail!12690 (_1!36873 lt!2443186))))))

(declare-fun b!6769073 () Bool)

(assert (=> b!6769073 (= e!4086939 (not (= (head!13605 (_1!36873 lt!2443186)) (c!1256657 (reg!16924 r!7292)))))))

(declare-fun d!2126319 () Bool)

(assert (=> d!2126319 e!4086940))

(declare-fun c!1256877 () Bool)

(assert (=> d!2126319 (= c!1256877 ((_ is EmptyExpr!16595) (reg!16924 r!7292)))))

(assert (=> d!2126319 (= lt!2443325 e!4086935)))

(declare-fun c!1256879 () Bool)

(assert (=> d!2126319 (= c!1256879 (isEmpty!38317 (_1!36873 lt!2443186)))))

(assert (=> d!2126319 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126319 (= (matchR!8778 (reg!16924 r!7292) (_1!36873 lt!2443186)) lt!2443325)))

(declare-fun b!6769068 () Bool)

(assert (=> b!6769068 (= e!4086940 e!4086938)))

(declare-fun c!1256878 () Bool)

(assert (=> b!6769068 (= c!1256878 ((_ is EmptyLang!16595) (reg!16924 r!7292)))))

(assert (= (and d!2126319 c!1256879) b!6769066))

(assert (= (and d!2126319 (not c!1256879)) b!6769072))

(assert (= (and d!2126319 c!1256877) b!6769070))

(assert (= (and d!2126319 (not c!1256877)) b!6769068))

(assert (= (and b!6769068 c!1256878) b!6769063))

(assert (= (and b!6769068 (not c!1256878)) b!6769067))

(assert (= (and b!6769067 (not res!2767740)) b!6769071))

(assert (= (and b!6769071 res!2767746) b!6769060))

(assert (= (and b!6769060 res!2767742) b!6769061))

(assert (= (and b!6769061 res!2767744) b!6769064))

(assert (= (and b!6769071 (not res!2767745)) b!6769069))

(assert (= (and b!6769069 res!2767743) b!6769065))

(assert (= (and b!6769065 (not res!2767739)) b!6769062))

(assert (= (and b!6769062 (not res!2767741)) b!6769073))

(assert (= (or b!6769070 b!6769060 b!6769065) bm!613368))

(assert (=> b!6769073 m!7519566))

(assert (=> bm!613368 m!7519562))

(assert (=> b!6769062 m!7519570))

(assert (=> b!6769062 m!7519570))

(declare-fun m!7519702 () Bool)

(assert (=> b!6769062 m!7519702))

(assert (=> b!6769072 m!7519566))

(assert (=> b!6769072 m!7519566))

(declare-fun m!7519704 () Bool)

(assert (=> b!6769072 m!7519704))

(assert (=> b!6769072 m!7519570))

(assert (=> b!6769072 m!7519704))

(assert (=> b!6769072 m!7519570))

(declare-fun m!7519706 () Bool)

(assert (=> b!6769072 m!7519706))

(assert (=> b!6769066 m!7519540))

(assert (=> b!6769061 m!7519570))

(assert (=> b!6769061 m!7519570))

(assert (=> b!6769061 m!7519702))

(assert (=> b!6769064 m!7519566))

(assert (=> d!2126319 m!7519562))

(assert (=> d!2126319 m!7519252))

(assert (=> b!6768264 d!2126319))

(assert (=> b!6768241 d!2126141))

(assert (=> b!6768241 d!2126159))

(declare-fun bs!1801322 () Bool)

(declare-fun d!2126321 () Bool)

(assert (= bs!1801322 (and d!2126321 d!2126205)))

(declare-fun lambda!380885 () Int)

(assert (=> bs!1801322 (= lambda!380885 lambda!380863)))

(declare-fun bs!1801323 () Bool)

(assert (= bs!1801323 (and d!2126321 d!2126233)))

(assert (=> bs!1801323 (= lambda!380885 lambda!380868)))

(declare-fun bs!1801324 () Bool)

(assert (= bs!1801324 (and d!2126321 d!2126273)))

(assert (=> bs!1801324 (= lambda!380885 lambda!380877)))

(declare-fun bs!1801325 () Bool)

(assert (= bs!1801325 (and d!2126321 d!2126289)))

(assert (=> bs!1801325 (= lambda!380885 lambda!380879)))

(declare-fun b!6769094 () Bool)

(declare-fun e!4086959 () Bool)

(declare-fun lt!2443328 () Regex!16595)

(assert (=> b!6769094 (= e!4086959 (= lt!2443328 (head!13606 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun b!6769095 () Bool)

(declare-fun e!4086958 () Bool)

(declare-fun e!4086955 () Bool)

(assert (=> b!6769095 (= e!4086958 e!4086955)))

(declare-fun c!1256888 () Bool)

(assert (=> b!6769095 (= c!1256888 (isEmpty!38322 (exprs!6479 (h!72410 zl!343))))))

(declare-fun b!6769096 () Bool)

(declare-fun isConcat!1478 (Regex!16595) Bool)

(assert (=> b!6769096 (= e!4086959 (isConcat!1478 lt!2443328))))

(declare-fun b!6769097 () Bool)

(declare-fun e!4086957 () Bool)

(assert (=> b!6769097 (= e!4086957 (isEmpty!38322 (t!379794 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun b!6769098 () Bool)

(declare-fun e!4086956 () Regex!16595)

(assert (=> b!6769098 (= e!4086956 (Concat!25440 (h!72409 (exprs!6479 (h!72410 zl!343))) (generalisedConcat!2192 (t!379794 (exprs!6479 (h!72410 zl!343))))))))

(declare-fun b!6769099 () Bool)

(declare-fun isEmptyExpr!1955 (Regex!16595) Bool)

(assert (=> b!6769099 (= e!4086955 (isEmptyExpr!1955 lt!2443328))))

(assert (=> d!2126321 e!4086958))

(declare-fun res!2767752 () Bool)

(assert (=> d!2126321 (=> (not res!2767752) (not e!4086958))))

(assert (=> d!2126321 (= res!2767752 (validRegex!8331 lt!2443328))))

(declare-fun e!4086954 () Regex!16595)

(assert (=> d!2126321 (= lt!2443328 e!4086954)))

(declare-fun c!1256891 () Bool)

(assert (=> d!2126321 (= c!1256891 e!4086957)))

(declare-fun res!2767751 () Bool)

(assert (=> d!2126321 (=> (not res!2767751) (not e!4086957))))

(assert (=> d!2126321 (= res!2767751 ((_ is Cons!65961) (exprs!6479 (h!72410 zl!343))))))

(assert (=> d!2126321 (forall!15789 (exprs!6479 (h!72410 zl!343)) lambda!380885)))

(assert (=> d!2126321 (= (generalisedConcat!2192 (exprs!6479 (h!72410 zl!343))) lt!2443328)))

(declare-fun b!6769100 () Bool)

(assert (=> b!6769100 (= e!4086956 EmptyExpr!16595)))

(declare-fun b!6769101 () Bool)

(assert (=> b!6769101 (= e!4086954 e!4086956)))

(declare-fun c!1256890 () Bool)

(assert (=> b!6769101 (= c!1256890 ((_ is Cons!65961) (exprs!6479 (h!72410 zl!343))))))

(declare-fun b!6769102 () Bool)

(assert (=> b!6769102 (= e!4086955 e!4086959)))

(declare-fun c!1256889 () Bool)

(assert (=> b!6769102 (= c!1256889 (isEmpty!38322 (tail!12691 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun b!6769103 () Bool)

(assert (=> b!6769103 (= e!4086954 (h!72409 (exprs!6479 (h!72410 zl!343))))))

(assert (= (and d!2126321 res!2767751) b!6769097))

(assert (= (and d!2126321 c!1256891) b!6769103))

(assert (= (and d!2126321 (not c!1256891)) b!6769101))

(assert (= (and b!6769101 c!1256890) b!6769098))

(assert (= (and b!6769101 (not c!1256890)) b!6769100))

(assert (= (and d!2126321 res!2767752) b!6769095))

(assert (= (and b!6769095 c!1256888) b!6769099))

(assert (= (and b!6769095 (not c!1256888)) b!6769102))

(assert (= (and b!6769102 c!1256889) b!6769094))

(assert (= (and b!6769102 (not c!1256889)) b!6769096))

(declare-fun m!7519708 () Bool)

(assert (=> b!6769096 m!7519708))

(declare-fun m!7519710 () Bool)

(assert (=> b!6769097 m!7519710))

(declare-fun m!7519712 () Bool)

(assert (=> b!6769099 m!7519712))

(declare-fun m!7519714 () Bool)

(assert (=> b!6769102 m!7519714))

(assert (=> b!6769102 m!7519714))

(declare-fun m!7519716 () Bool)

(assert (=> b!6769102 m!7519716))

(declare-fun m!7519718 () Bool)

(assert (=> b!6769095 m!7519718))

(declare-fun m!7519720 () Bool)

(assert (=> b!6769094 m!7519720))

(declare-fun m!7519722 () Bool)

(assert (=> b!6769098 m!7519722))

(declare-fun m!7519724 () Bool)

(assert (=> d!2126321 m!7519724))

(declare-fun m!7519726 () Bool)

(assert (=> d!2126321 m!7519726))

(assert (=> b!6768263 d!2126321))

(declare-fun b!6769108 () Bool)

(declare-fun e!4086962 () Bool)

(declare-fun tp!1854802 () Bool)

(assert (=> b!6769108 (= e!4086962 (and tp_is_empty!42443 tp!1854802))))

(assert (=> b!6768245 (= tp!1854736 e!4086962)))

(assert (= (and b!6768245 ((_ is Cons!65960) (t!379793 s!2326))) b!6769108))

(declare-fun b!6769122 () Bool)

(declare-fun e!4086965 () Bool)

(declare-fun tp!1854817 () Bool)

(declare-fun tp!1854813 () Bool)

(assert (=> b!6769122 (= e!4086965 (and tp!1854817 tp!1854813))))

(declare-fun b!6769120 () Bool)

(declare-fun tp!1854815 () Bool)

(declare-fun tp!1854816 () Bool)

(assert (=> b!6769120 (= e!4086965 (and tp!1854815 tp!1854816))))

(declare-fun b!6769119 () Bool)

(assert (=> b!6769119 (= e!4086965 tp_is_empty!42443)))

(declare-fun b!6769121 () Bool)

(declare-fun tp!1854814 () Bool)

(assert (=> b!6769121 (= e!4086965 tp!1854814)))

(assert (=> b!6768251 (= tp!1854737 e!4086965)))

(assert (= (and b!6768251 ((_ is ElementMatch!16595) (regOne!33702 r!7292))) b!6769119))

(assert (= (and b!6768251 ((_ is Concat!25440) (regOne!33702 r!7292))) b!6769120))

(assert (= (and b!6768251 ((_ is Star!16595) (regOne!33702 r!7292))) b!6769121))

(assert (= (and b!6768251 ((_ is Union!16595) (regOne!33702 r!7292))) b!6769122))

(declare-fun b!6769126 () Bool)

(declare-fun e!4086966 () Bool)

(declare-fun tp!1854822 () Bool)

(declare-fun tp!1854818 () Bool)

(assert (=> b!6769126 (= e!4086966 (and tp!1854822 tp!1854818))))

(declare-fun b!6769124 () Bool)

(declare-fun tp!1854820 () Bool)

(declare-fun tp!1854821 () Bool)

(assert (=> b!6769124 (= e!4086966 (and tp!1854820 tp!1854821))))

(declare-fun b!6769123 () Bool)

(assert (=> b!6769123 (= e!4086966 tp_is_empty!42443)))

(declare-fun b!6769125 () Bool)

(declare-fun tp!1854819 () Bool)

(assert (=> b!6769125 (= e!4086966 tp!1854819)))

(assert (=> b!6768251 (= tp!1854738 e!4086966)))

(assert (= (and b!6768251 ((_ is ElementMatch!16595) (regTwo!33702 r!7292))) b!6769123))

(assert (= (and b!6768251 ((_ is Concat!25440) (regTwo!33702 r!7292))) b!6769124))

(assert (= (and b!6768251 ((_ is Star!16595) (regTwo!33702 r!7292))) b!6769125))

(assert (= (and b!6768251 ((_ is Union!16595) (regTwo!33702 r!7292))) b!6769126))

(declare-fun b!6769131 () Bool)

(declare-fun e!4086969 () Bool)

(declare-fun tp!1854827 () Bool)

(declare-fun tp!1854828 () Bool)

(assert (=> b!6769131 (= e!4086969 (and tp!1854827 tp!1854828))))

(assert (=> b!6768238 (= tp!1854733 e!4086969)))

(assert (= (and b!6768238 ((_ is Cons!65961) (exprs!6479 (h!72410 zl!343)))) b!6769131))

(declare-fun b!6769132 () Bool)

(declare-fun e!4086970 () Bool)

(declare-fun tp!1854829 () Bool)

(declare-fun tp!1854830 () Bool)

(assert (=> b!6769132 (= e!4086970 (and tp!1854829 tp!1854830))))

(assert (=> b!6768254 (= tp!1854735 e!4086970)))

(assert (= (and b!6768254 ((_ is Cons!65961) (exprs!6479 setElem!46277))) b!6769132))

(declare-fun b!6769136 () Bool)

(declare-fun e!4086971 () Bool)

(declare-fun tp!1854835 () Bool)

(declare-fun tp!1854831 () Bool)

(assert (=> b!6769136 (= e!4086971 (and tp!1854835 tp!1854831))))

(declare-fun b!6769134 () Bool)

(declare-fun tp!1854833 () Bool)

(declare-fun tp!1854834 () Bool)

(assert (=> b!6769134 (= e!4086971 (and tp!1854833 tp!1854834))))

(declare-fun b!6769133 () Bool)

(assert (=> b!6769133 (= e!4086971 tp_is_empty!42443)))

(declare-fun b!6769135 () Bool)

(declare-fun tp!1854832 () Bool)

(assert (=> b!6769135 (= e!4086971 tp!1854832)))

(assert (=> b!6768265 (= tp!1854739 e!4086971)))

(assert (= (and b!6768265 ((_ is ElementMatch!16595) (regOne!33703 r!7292))) b!6769133))

(assert (= (and b!6768265 ((_ is Concat!25440) (regOne!33703 r!7292))) b!6769134))

(assert (= (and b!6768265 ((_ is Star!16595) (regOne!33703 r!7292))) b!6769135))

(assert (= (and b!6768265 ((_ is Union!16595) (regOne!33703 r!7292))) b!6769136))

(declare-fun b!6769140 () Bool)

(declare-fun e!4086972 () Bool)

(declare-fun tp!1854840 () Bool)

(declare-fun tp!1854836 () Bool)

(assert (=> b!6769140 (= e!4086972 (and tp!1854840 tp!1854836))))

(declare-fun b!6769138 () Bool)

(declare-fun tp!1854838 () Bool)

(declare-fun tp!1854839 () Bool)

(assert (=> b!6769138 (= e!4086972 (and tp!1854838 tp!1854839))))

(declare-fun b!6769137 () Bool)

(assert (=> b!6769137 (= e!4086972 tp_is_empty!42443)))

(declare-fun b!6769139 () Bool)

(declare-fun tp!1854837 () Bool)

(assert (=> b!6769139 (= e!4086972 tp!1854837)))

(assert (=> b!6768265 (= tp!1854741 e!4086972)))

(assert (= (and b!6768265 ((_ is ElementMatch!16595) (regTwo!33703 r!7292))) b!6769137))

(assert (= (and b!6768265 ((_ is Concat!25440) (regTwo!33703 r!7292))) b!6769138))

(assert (= (and b!6768265 ((_ is Star!16595) (regTwo!33703 r!7292))) b!6769139))

(assert (= (and b!6768265 ((_ is Union!16595) (regTwo!33703 r!7292))) b!6769140))

(declare-fun b!6769144 () Bool)

(declare-fun e!4086973 () Bool)

(declare-fun tp!1854845 () Bool)

(declare-fun tp!1854841 () Bool)

(assert (=> b!6769144 (= e!4086973 (and tp!1854845 tp!1854841))))

(declare-fun b!6769142 () Bool)

(declare-fun tp!1854843 () Bool)

(declare-fun tp!1854844 () Bool)

(assert (=> b!6769142 (= e!4086973 (and tp!1854843 tp!1854844))))

(declare-fun b!6769141 () Bool)

(assert (=> b!6769141 (= e!4086973 tp_is_empty!42443)))

(declare-fun b!6769143 () Bool)

(declare-fun tp!1854842 () Bool)

(assert (=> b!6769143 (= e!4086973 tp!1854842)))

(assert (=> b!6768237 (= tp!1854734 e!4086973)))

(assert (= (and b!6768237 ((_ is ElementMatch!16595) (reg!16924 r!7292))) b!6769141))

(assert (= (and b!6768237 ((_ is Concat!25440) (reg!16924 r!7292))) b!6769142))

(assert (= (and b!6768237 ((_ is Star!16595) (reg!16924 r!7292))) b!6769143))

(assert (= (and b!6768237 ((_ is Union!16595) (reg!16924 r!7292))) b!6769144))

(declare-fun condSetEmpty!46283 () Bool)

(assert (=> setNonEmpty!46277 (= condSetEmpty!46283 (= setRest!46277 ((as const (Array Context!11958 Bool)) false)))))

(declare-fun setRes!46283 () Bool)

(assert (=> setNonEmpty!46277 (= tp!1854740 setRes!46283)))

(declare-fun setIsEmpty!46283 () Bool)

(assert (=> setIsEmpty!46283 setRes!46283))

(declare-fun setNonEmpty!46283 () Bool)

(declare-fun tp!1854851 () Bool)

(declare-fun e!4086976 () Bool)

(declare-fun setElem!46283 () Context!11958)

(assert (=> setNonEmpty!46283 (= setRes!46283 (and tp!1854851 (inv!84734 setElem!46283) e!4086976))))

(declare-fun setRest!46283 () (InoxSet Context!11958))

(assert (=> setNonEmpty!46283 (= setRest!46277 ((_ map or) (store ((as const (Array Context!11958 Bool)) false) setElem!46283 true) setRest!46283))))

(declare-fun b!6769149 () Bool)

(declare-fun tp!1854850 () Bool)

(assert (=> b!6769149 (= e!4086976 tp!1854850)))

(assert (= (and setNonEmpty!46277 condSetEmpty!46283) setIsEmpty!46283))

(assert (= (and setNonEmpty!46277 (not condSetEmpty!46283)) setNonEmpty!46283))

(assert (= setNonEmpty!46283 b!6769149))

(declare-fun m!7519728 () Bool)

(assert (=> setNonEmpty!46283 m!7519728))

(declare-fun b!6769157 () Bool)

(declare-fun e!4086982 () Bool)

(declare-fun tp!1854856 () Bool)

(assert (=> b!6769157 (= e!4086982 tp!1854856)))

(declare-fun tp!1854857 () Bool)

(declare-fun b!6769156 () Bool)

(declare-fun e!4086981 () Bool)

(assert (=> b!6769156 (= e!4086981 (and (inv!84734 (h!72410 (t!379795 zl!343))) e!4086982 tp!1854857))))

(assert (=> b!6768252 (= tp!1854732 e!4086981)))

(assert (= b!6769156 b!6769157))

(assert (= (and b!6768252 ((_ is Cons!65962) (t!379795 zl!343))) b!6769156))

(declare-fun m!7519730 () Bool)

(assert (=> b!6769156 m!7519730))

(declare-fun b_lambda!254883 () Bool)

(assert (= b_lambda!254881 (or b!6768235 b_lambda!254883)))

(declare-fun bs!1801326 () Bool)

(declare-fun d!2126323 () Bool)

(assert (= bs!1801326 (and d!2126323 b!6768235)))

(assert (=> bs!1801326 (= (dynLambda!26318 lambda!380803 lt!2443194) (derivationStepZipperUp!1749 lt!2443194 (h!72408 s!2326)))))

(assert (=> bs!1801326 m!7519016))

(assert (=> d!2126313 d!2126323))

(declare-fun b_lambda!254885 () Bool)

(assert (= b_lambda!254863 (or b!6768235 b_lambda!254885)))

(declare-fun bs!1801327 () Bool)

(declare-fun d!2126325 () Bool)

(assert (= bs!1801327 (and d!2126325 b!6768235)))

(assert (=> bs!1801327 (= (dynLambda!26318 lambda!380803 (h!72410 zl!343)) (derivationStepZipperUp!1749 (h!72410 zl!343) (h!72408 s!2326)))))

(assert (=> bs!1801327 m!7518984))

(assert (=> d!2126127 d!2126325))

(declare-fun b_lambda!254887 () Bool)

(assert (= b_lambda!254879 (or b!6768235 b_lambda!254887)))

(declare-fun bs!1801328 () Bool)

(declare-fun d!2126327 () Bool)

(assert (= bs!1801328 (and d!2126327 b!6768235)))

(assert (=> bs!1801328 (= (dynLambda!26318 lambda!380803 lt!2443180) (derivationStepZipperUp!1749 lt!2443180 (h!72408 s!2326)))))

(assert (=> bs!1801328 m!7519082))

(assert (=> d!2126285 d!2126327))

(declare-fun b_lambda!254889 () Bool)

(assert (= b_lambda!254877 (or b!6768235 b_lambda!254889)))

(declare-fun bs!1801329 () Bool)

(declare-fun d!2126329 () Bool)

(assert (= bs!1801329 (and d!2126329 b!6768235)))

(assert (=> bs!1801329 (= (dynLambda!26318 lambda!380803 lt!2443210) (derivationStepZipperUp!1749 lt!2443210 (h!72408 s!2326)))))

(assert (=> bs!1801329 m!7519084))

(assert (=> d!2126279 d!2126329))

(check-sat (not b!6769048) (not b!6768293) (not b!6769149) (not b!6769142) (not b!6769050) (not b!6769120) (not b!6768605) (not b!6769064) (not d!2126105) (not d!2126277) (not d!2126301) (not b!6769059) (not b!6769108) (not b!6769139) (not b!6769144) (not b!6769017) (not bm!613331) (not b!6769052) (not b!6768762) (not bs!1801328) (not d!2126255) (not b!6769102) (not d!2126283) (not bm!613358) (not bm!613332) (not b!6768962) (not b!6768993) (not b!6768763) (not d!2126321) (not b!6768608) (not b!6768765) (not d!2126141) (not d!2126297) (not bm!613355) (not b!6768954) (not b!6769136) (not b!6769134) (not d!2126113) (not d!2126303) (not d!2126155) (not bm!613285) (not b!6769095) (not b!6769045) (not bm!613357) (not b!6769034) (not b!6768946) (not b!6768869) (not b!6769062) (not b_lambda!254885) (not b!6769016) (not b!6768757) (not b!6769132) (not d!2126233) (not bm!613336) (not b!6769042) (not b!6768761) (not d!2126273) (not d!2126313) (not b!6769098) (not b!6769157) (not bm!613335) (not d!2126263) (not b!6769021) (not bm!613368) (not b!6769027) (not b!6768963) (not d!2126205) (not d!2126163) (not bm!613354) (not bm!613367) (not b!6769047) tp_is_empty!42443 (not d!2126285) (not b!6768944) (not d!2126291) (not b!6769131) (not d!2126261) (not b!6769143) (not b!6769097) (not b!6769126) (not b!6769073) (not b!6769140) (not bm!613365) (not b!6768955) (not b!6768867) (not d!2126145) (not bs!1801329) (not d!2126269) (not d!2126271) (not b!6769096) (not d!2126289) (not b!6769125) (not b!6769006) (not b!6768760) (not bm!613364) (not b!6769156) (not d!2126159) (not setNonEmpty!46283) (not b!6768948) (not b!6768353) (not b!6769008) (not b!6768802) (not d!2126177) (not b!6769122) (not b!6768284) (not bm!613353) (not d!2126099) (not d!2126107) (not b!6769072) (not bs!1801326) (not bm!613325) (not b!6769121) (not d!2126267) (not b!6769000) (not b!6768607) (not b!6768958) (not b!6768957) (not b!6769124) (not b!6769138) (not b!6768870) (not b!6768677) (not bm!613356) (not b!6768285) (not b!6768866) (not b!6769066) (not d!2126319) (not b_lambda!254887) (not d!2126197) (not d!2126309) (not b!6768292) (not d!2126259) (not b!6768848) (not b!6769058) (not b!6768907) (not bm!613337) (not b!6769094) (not b!6768943) (not b_lambda!254889) (not b!6769041) (not bm!613359) (not d!2126187) (not d!2126117) (not b!6768905) (not b!6768611) (not d!2126127) (not b_lambda!254883) (not b!6769019) (not b!6768612) (not b!6769099) (not b!6769028) (not d!2126317) (not d!2126287) (not b!6768613) (not d!2126161) (not bs!1801327) (not b!6769135) (not b!6768352) (not b!6768759) (not b!6769061) (not b!6769001) (not d!2126315) (not d!2126279) (not bm!613324) (not bm!613363) (not bm!613366))
(check-sat)
(get-model)

(assert (=> d!2126263 d!2126319))

(assert (=> d!2126263 d!2126261))

(declare-fun d!2126647 () Bool)

(assert (=> d!2126647 (= (matchR!8778 (reg!16924 r!7292) (_1!36873 lt!2443186)) (matchZipper!2581 lt!2443198 (_1!36873 lt!2443186)))))

(assert (=> d!2126647 true))

(declare-fun _$44!1754 () Unit!159881)

(assert (=> d!2126647 (= (choose!50444 lt!2443198 lt!2443209 (reg!16924 r!7292) (_1!36873 lt!2443186)) _$44!1754)))

(declare-fun bs!1801647 () Bool)

(assert (= bs!1801647 d!2126647))

(assert (=> bs!1801647 m!7519000))

(assert (=> bs!1801647 m!7519062))

(assert (=> d!2126263 d!2126647))

(declare-fun c!1257084 () Bool)

(declare-fun call!613504 () Bool)

(declare-fun c!1257083 () Bool)

(declare-fun bm!613497 () Bool)

(assert (=> bm!613497 (= call!613504 (validRegex!8331 (ite c!1257084 (reg!16924 (reg!16924 r!7292)) (ite c!1257083 (regOne!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292))))))))

(declare-fun b!6769870 () Bool)

(declare-fun res!2767975 () Bool)

(declare-fun e!4087379 () Bool)

(assert (=> b!6769870 (=> res!2767975 e!4087379)))

(assert (=> b!6769870 (= res!2767975 (not ((_ is Concat!25440) (reg!16924 r!7292))))))

(declare-fun e!4087382 () Bool)

(assert (=> b!6769870 (= e!4087382 e!4087379)))

(declare-fun b!6769871 () Bool)

(declare-fun e!4087383 () Bool)

(assert (=> b!6769871 (= e!4087379 e!4087383)))

(declare-fun res!2767971 () Bool)

(assert (=> b!6769871 (=> (not res!2767971) (not e!4087383))))

(declare-fun call!613502 () Bool)

(assert (=> b!6769871 (= res!2767971 call!613502)))

(declare-fun b!6769872 () Bool)

(declare-fun res!2767973 () Bool)

(declare-fun e!4087378 () Bool)

(assert (=> b!6769872 (=> (not res!2767973) (not e!4087378))))

(assert (=> b!6769872 (= res!2767973 call!613502)))

(assert (=> b!6769872 (= e!4087382 e!4087378)))

(declare-fun b!6769873 () Bool)

(declare-fun call!613503 () Bool)

(assert (=> b!6769873 (= e!4087383 call!613503)))

(declare-fun b!6769874 () Bool)

(declare-fun e!4087381 () Bool)

(assert (=> b!6769874 (= e!4087381 e!4087382)))

(assert (=> b!6769874 (= c!1257083 ((_ is Union!16595) (reg!16924 r!7292)))))

(declare-fun b!6769875 () Bool)

(assert (=> b!6769875 (= e!4087378 call!613503)))

(declare-fun bm!613498 () Bool)

(assert (=> bm!613498 (= call!613503 (validRegex!8331 (ite c!1257083 (regTwo!33703 (reg!16924 r!7292)) (regTwo!33702 (reg!16924 r!7292)))))))

(declare-fun b!6769876 () Bool)

(declare-fun e!4087384 () Bool)

(assert (=> b!6769876 (= e!4087384 call!613504)))

(declare-fun bm!613499 () Bool)

(assert (=> bm!613499 (= call!613502 call!613504)))

(declare-fun b!6769877 () Bool)

(declare-fun e!4087380 () Bool)

(assert (=> b!6769877 (= e!4087380 e!4087381)))

(assert (=> b!6769877 (= c!1257084 ((_ is Star!16595) (reg!16924 r!7292)))))

(declare-fun b!6769869 () Bool)

(assert (=> b!6769869 (= e!4087381 e!4087384)))

(declare-fun res!2767974 () Bool)

(assert (=> b!6769869 (= res!2767974 (not (nullable!6576 (reg!16924 (reg!16924 r!7292)))))))

(assert (=> b!6769869 (=> (not res!2767974) (not e!4087384))))

(declare-fun d!2126649 () Bool)

(declare-fun res!2767972 () Bool)

(assert (=> d!2126649 (=> res!2767972 e!4087380)))

(assert (=> d!2126649 (= res!2767972 ((_ is ElementMatch!16595) (reg!16924 r!7292)))))

(assert (=> d!2126649 (= (validRegex!8331 (reg!16924 r!7292)) e!4087380)))

(assert (= (and d!2126649 (not res!2767972)) b!6769877))

(assert (= (and b!6769877 c!1257084) b!6769869))

(assert (= (and b!6769877 (not c!1257084)) b!6769874))

(assert (= (and b!6769869 res!2767974) b!6769876))

(assert (= (and b!6769874 c!1257083) b!6769872))

(assert (= (and b!6769874 (not c!1257083)) b!6769870))

(assert (= (and b!6769872 res!2767973) b!6769875))

(assert (= (and b!6769870 (not res!2767975)) b!6769871))

(assert (= (and b!6769871 res!2767971) b!6769873))

(assert (= (or b!6769875 b!6769873) bm!613498))

(assert (= (or b!6769872 b!6769871) bm!613499))

(assert (= (or b!6769876 bm!613499) bm!613497))

(declare-fun m!7520422 () Bool)

(assert (=> bm!613497 m!7520422))

(declare-fun m!7520424 () Bool)

(assert (=> bm!613498 m!7520424))

(declare-fun m!7520426 () Bool)

(assert (=> b!6769869 m!7520426))

(assert (=> d!2126263 d!2126649))

(declare-fun d!2126651 () Bool)

(assert (=> d!2126651 (= (flatMap!2076 lt!2443188 lambda!380806) (choose!50434 lt!2443188 lambda!380806))))

(declare-fun bs!1801648 () Bool)

(assert (= bs!1801648 d!2126651))

(declare-fun m!7520428 () Bool)

(assert (=> bs!1801648 m!7520428))

(assert (=> d!2126107 d!2126651))

(declare-fun d!2126653 () Bool)

(declare-fun res!2767980 () Bool)

(declare-fun e!4087389 () Bool)

(assert (=> d!2126653 (=> res!2767980 e!4087389)))

(assert (=> d!2126653 (= res!2767980 ((_ is Nil!65961) lt!2443302))))

(assert (=> d!2126653 (= (forall!15789 lt!2443302 lambda!380868) e!4087389)))

(declare-fun b!6769882 () Bool)

(declare-fun e!4087390 () Bool)

(assert (=> b!6769882 (= e!4087389 e!4087390)))

(declare-fun res!2767981 () Bool)

(assert (=> b!6769882 (=> (not res!2767981) (not e!4087390))))

(declare-fun dynLambda!26320 (Int Regex!16595) Bool)

(assert (=> b!6769882 (= res!2767981 (dynLambda!26320 lambda!380868 (h!72409 lt!2443302)))))

(declare-fun b!6769883 () Bool)

(assert (=> b!6769883 (= e!4087390 (forall!15789 (t!379794 lt!2443302) lambda!380868))))

(assert (= (and d!2126653 (not res!2767980)) b!6769882))

(assert (= (and b!6769882 res!2767981) b!6769883))

(declare-fun b_lambda!254927 () Bool)

(assert (=> (not b_lambda!254927) (not b!6769882)))

(declare-fun m!7520430 () Bool)

(assert (=> b!6769882 m!7520430))

(declare-fun m!7520432 () Bool)

(assert (=> b!6769883 m!7520432))

(assert (=> d!2126233 d!2126653))

(declare-fun d!2126655 () Bool)

(declare-fun nullableFct!2482 (Regex!16595) Bool)

(assert (=> d!2126655 (= (nullable!6576 r!7292) (nullableFct!2482 r!7292))))

(declare-fun bs!1801649 () Bool)

(assert (= bs!1801649 d!2126655))

(declare-fun m!7520434 () Bool)

(assert (=> bs!1801649 m!7520434))

(assert (=> b!6769021 d!2126655))

(declare-fun d!2126657 () Bool)

(assert (=> d!2126657 (= (Exists!3663 (ite c!1256863 lambda!380881 lambda!380882)) (choose!50436 (ite c!1256863 lambda!380881 lambda!380882)))))

(declare-fun bs!1801650 () Bool)

(assert (= bs!1801650 d!2126657))

(declare-fun m!7520436 () Bool)

(assert (=> bs!1801650 m!7520436))

(assert (=> bm!613357 d!2126657))

(declare-fun d!2126659 () Bool)

(assert (=> d!2126659 (= (isEmpty!38317 (tail!12690 (_1!36873 lt!2443186))) ((_ is Nil!65960) (tail!12690 (_1!36873 lt!2443186))))))

(assert (=> b!6769062 d!2126659))

(declare-fun d!2126661 () Bool)

(assert (=> d!2126661 (= (tail!12690 (_1!36873 lt!2443186)) (t!379793 (_1!36873 lt!2443186)))))

(assert (=> b!6769062 d!2126661))

(declare-fun d!2126663 () Bool)

(declare-fun res!2767986 () Bool)

(declare-fun e!4087395 () Bool)

(assert (=> d!2126663 (=> res!2767986 e!4087395)))

(assert (=> d!2126663 (= res!2767986 ((_ is Nil!65962) lt!2443323))))

(assert (=> d!2126663 (= (noDuplicate!2382 lt!2443323) e!4087395)))

(declare-fun b!6769888 () Bool)

(declare-fun e!4087396 () Bool)

(assert (=> b!6769888 (= e!4087395 e!4087396)))

(declare-fun res!2767987 () Bool)

(assert (=> b!6769888 (=> (not res!2767987) (not e!4087396))))

(declare-fun contains!20277 (List!66086 Context!11958) Bool)

(assert (=> b!6769888 (= res!2767987 (not (contains!20277 (t!379795 lt!2443323) (h!72410 lt!2443323))))))

(declare-fun b!6769889 () Bool)

(assert (=> b!6769889 (= e!4087396 (noDuplicate!2382 (t!379795 lt!2443323)))))

(assert (= (and d!2126663 (not res!2767986)) b!6769888))

(assert (= (and b!6769888 res!2767987) b!6769889))

(declare-fun m!7520438 () Bool)

(assert (=> b!6769888 m!7520438))

(declare-fun m!7520440 () Bool)

(assert (=> b!6769889 m!7520440))

(assert (=> d!2126315 d!2126663))

(declare-fun d!2126665 () Bool)

(declare-fun e!4087404 () Bool)

(assert (=> d!2126665 e!4087404))

(declare-fun res!2767993 () Bool)

(assert (=> d!2126665 (=> (not res!2767993) (not e!4087404))))

(declare-fun res!2767992 () List!66086)

(assert (=> d!2126665 (= res!2767993 (noDuplicate!2382 res!2767992))))

(declare-fun e!4087405 () Bool)

(assert (=> d!2126665 e!4087405))

(assert (=> d!2126665 (= (choose!50442 z!1189) res!2767992)))

(declare-fun b!6769897 () Bool)

(declare-fun e!4087403 () Bool)

(declare-fun tp!1855031 () Bool)

(assert (=> b!6769897 (= e!4087403 tp!1855031)))

(declare-fun tp!1855030 () Bool)

(declare-fun b!6769896 () Bool)

(assert (=> b!6769896 (= e!4087405 (and (inv!84734 (h!72410 res!2767992)) e!4087403 tp!1855030))))

(declare-fun b!6769898 () Bool)

(assert (=> b!6769898 (= e!4087404 (= (content!12840 res!2767992) z!1189))))

(assert (= b!6769896 b!6769897))

(assert (= (and d!2126665 ((_ is Cons!65962) res!2767992)) b!6769896))

(assert (= (and d!2126665 res!2767993) b!6769898))

(declare-fun m!7520442 () Bool)

(assert (=> d!2126665 m!7520442))

(declare-fun m!7520444 () Bool)

(assert (=> b!6769896 m!7520444))

(declare-fun m!7520446 () Bool)

(assert (=> b!6769898 m!7520446))

(assert (=> d!2126315 d!2126665))

(assert (=> b!6768605 d!2126301))

(declare-fun c!1257087 () Bool)

(declare-fun b!6769899 () Bool)

(assert (=> b!6769899 (= c!1257087 ((_ is Star!16595) (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))))))

(declare-fun e!4087407 () (InoxSet Context!11958))

(declare-fun e!4087408 () (InoxSet Context!11958))

(assert (=> b!6769899 (= e!4087407 e!4087408)))

(declare-fun b!6769900 () Bool)

(declare-fun e!4087410 () (InoxSet Context!11958))

(declare-fun call!613509 () (InoxSet Context!11958))

(declare-fun call!613507 () (InoxSet Context!11958))

(assert (=> b!6769900 (= e!4087410 ((_ map or) call!613509 call!613507))))

(declare-fun b!6769901 () Bool)

(declare-fun e!4087409 () (InoxSet Context!11958))

(assert (=> b!6769901 (= e!4087409 (store ((as const (Array Context!11958 Bool)) false) (ite (or c!1256853 c!1256854) (Context!11959 Nil!65961) (Context!11959 call!613355)) true))))

(declare-fun b!6769902 () Bool)

(declare-fun call!613506 () (InoxSet Context!11958))

(assert (=> b!6769902 (= e!4087408 call!613506)))

(declare-fun bm!613500 () Bool)

(declare-fun call!613510 () (InoxSet Context!11958))

(assert (=> bm!613500 (= call!613510 call!613509)))

(declare-fun bm!613501 () Bool)

(assert (=> bm!613501 (= call!613506 call!613510)))

(declare-fun b!6769903 () Bool)

(declare-fun e!4087411 () (InoxSet Context!11958))

(assert (=> b!6769903 (= e!4087411 ((_ map or) call!613507 call!613510))))

(declare-fun e!4087406 () Bool)

(declare-fun b!6769904 () Bool)

(assert (=> b!6769904 (= e!4087406 (nullable!6576 (regOne!33702 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292)))))))))

(declare-fun d!2126667 () Bool)

(declare-fun c!1257088 () Bool)

(assert (=> d!2126667 (= c!1257088 (and ((_ is ElementMatch!16595) (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))) (= (c!1256657 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))) (h!72408 s!2326))))))

(assert (=> d!2126667 (= (derivationStepZipperDown!1823 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292)))) (ite (or c!1256853 c!1256854) (Context!11959 Nil!65961) (Context!11959 call!613355)) (h!72408 s!2326)) e!4087409)))

(declare-fun b!6769905 () Bool)

(assert (=> b!6769905 (= e!4087408 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6769906 () Bool)

(assert (=> b!6769906 (= e!4087407 call!613506)))

(declare-fun b!6769907 () Bool)

(declare-fun c!1257086 () Bool)

(assert (=> b!6769907 (= c!1257086 e!4087406)))

(declare-fun res!2767994 () Bool)

(assert (=> b!6769907 (=> (not res!2767994) (not e!4087406))))

(assert (=> b!6769907 (= res!2767994 ((_ is Concat!25440) (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))))))

(assert (=> b!6769907 (= e!4087410 e!4087411)))

(declare-fun bm!613502 () Bool)

(declare-fun call!613505 () List!66085)

(declare-fun call!613508 () List!66085)

(assert (=> bm!613502 (= call!613505 call!613508)))

(declare-fun bm!613503 () Bool)

(declare-fun c!1257085 () Bool)

(declare-fun c!1257089 () Bool)

(assert (=> bm!613503 (= call!613509 (derivationStepZipperDown!1823 (ite c!1257085 (regOne!33703 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))) (ite c!1257086 (regTwo!33702 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))) (ite c!1257089 (regOne!33702 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))) (reg!16924 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292)))))))) (ite (or c!1257085 c!1257086) (ite (or c!1256853 c!1256854) (Context!11959 Nil!65961) (Context!11959 call!613355)) (Context!11959 call!613505)) (h!72408 s!2326)))))

(declare-fun b!6769908 () Bool)

(assert (=> b!6769908 (= e!4087411 e!4087407)))

(assert (=> b!6769908 (= c!1257089 ((_ is Concat!25440) (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))))))

(declare-fun b!6769909 () Bool)

(assert (=> b!6769909 (= e!4087409 e!4087410)))

(assert (=> b!6769909 (= c!1257085 ((_ is Union!16595) (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))))))

(declare-fun bm!613504 () Bool)

(assert (=> bm!613504 (= call!613507 (derivationStepZipperDown!1823 (ite c!1257085 (regTwo!33703 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))) (regOne!33702 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292)))))) (ite c!1257085 (ite (or c!1256853 c!1256854) (Context!11959 Nil!65961) (Context!11959 call!613355)) (Context!11959 call!613508)) (h!72408 s!2326)))))

(declare-fun bm!613505 () Bool)

(assert (=> bm!613505 (= call!613508 ($colon$colon!2406 (exprs!6479 (ite (or c!1256853 c!1256854) (Context!11959 Nil!65961) (Context!11959 call!613355))) (ite (or c!1257086 c!1257089) (regTwo!33702 (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292))))) (ite c!1256853 (regOne!33703 r!7292) (ite c!1256854 (regTwo!33702 r!7292) (ite c!1256857 (regOne!33702 r!7292) (reg!16924 r!7292)))))))))

(assert (= (and d!2126667 c!1257088) b!6769901))

(assert (= (and d!2126667 (not c!1257088)) b!6769909))

(assert (= (and b!6769909 c!1257085) b!6769900))

(assert (= (and b!6769909 (not c!1257085)) b!6769907))

(assert (= (and b!6769907 res!2767994) b!6769904))

(assert (= (and b!6769907 c!1257086) b!6769903))

(assert (= (and b!6769907 (not c!1257086)) b!6769908))

(assert (= (and b!6769908 c!1257089) b!6769906))

(assert (= (and b!6769908 (not c!1257089)) b!6769899))

(assert (= (and b!6769899 c!1257087) b!6769902))

(assert (= (and b!6769899 (not c!1257087)) b!6769905))

(assert (= (or b!6769906 b!6769902) bm!613502))

(assert (= (or b!6769906 b!6769902) bm!613501))

(assert (= (or b!6769903 bm!613502) bm!613505))

(assert (= (or b!6769903 bm!613501) bm!613500))

(assert (= (or b!6769900 b!6769903) bm!613504))

(assert (= (or b!6769900 bm!613500) bm!613503))

(declare-fun m!7520448 () Bool)

(assert (=> bm!613505 m!7520448))

(declare-fun m!7520450 () Bool)

(assert (=> bm!613504 m!7520450))

(declare-fun m!7520452 () Bool)

(assert (=> bm!613503 m!7520452))

(declare-fun m!7520454 () Bool)

(assert (=> b!6769901 m!7520454))

(declare-fun m!7520456 () Bool)

(assert (=> b!6769904 m!7520456))

(assert (=> bm!613353 d!2126667))

(declare-fun d!2126669 () Bool)

(assert (=> d!2126669 (= (nullable!6576 (h!72409 (exprs!6479 lt!2443210))) (nullableFct!2482 (h!72409 (exprs!6479 lt!2443210))))))

(declare-fun bs!1801651 () Bool)

(assert (= bs!1801651 d!2126669))

(declare-fun m!7520458 () Bool)

(assert (=> bs!1801651 m!7520458))

(assert (=> b!6768963 d!2126669))

(declare-fun d!2126671 () Bool)

(assert (=> d!2126671 (= (isEmpty!38317 (tail!12690 (_2!36873 lt!2443186))) ((_ is Nil!65960) (tail!12690 (_2!36873 lt!2443186))))))

(assert (=> b!6769047 d!2126671))

(declare-fun d!2126673 () Bool)

(assert (=> d!2126673 (= (tail!12690 (_2!36873 lt!2443186)) (t!379793 (_2!36873 lt!2443186)))))

(assert (=> b!6769047 d!2126673))

(declare-fun d!2126675 () Bool)

(assert (=> d!2126675 (= (isEmpty!38317 (tail!12690 s!2326)) ((_ is Nil!65960) (tail!12690 s!2326)))))

(assert (=> b!6769017 d!2126675))

(declare-fun d!2126677 () Bool)

(assert (=> d!2126677 (= (tail!12690 s!2326) (t!379793 s!2326))))

(assert (=> b!6769017 d!2126677))

(declare-fun b!6769910 () Bool)

(declare-fun c!1257092 () Bool)

(assert (=> b!6769910 (= c!1257092 ((_ is Star!16595) (h!72409 (exprs!6479 lt!2443180))))))

(declare-fun e!4087413 () (InoxSet Context!11958))

(declare-fun e!4087414 () (InoxSet Context!11958))

(assert (=> b!6769910 (= e!4087413 e!4087414)))

(declare-fun b!6769911 () Bool)

(declare-fun e!4087416 () (InoxSet Context!11958))

(declare-fun call!613515 () (InoxSet Context!11958))

(declare-fun call!613513 () (InoxSet Context!11958))

(assert (=> b!6769911 (= e!4087416 ((_ map or) call!613515 call!613513))))

(declare-fun b!6769912 () Bool)

(declare-fun e!4087415 () (InoxSet Context!11958))

(assert (=> b!6769912 (= e!4087415 (store ((as const (Array Context!11958 Bool)) false) (Context!11959 (t!379794 (exprs!6479 lt!2443180))) true))))

(declare-fun b!6769913 () Bool)

(declare-fun call!613512 () (InoxSet Context!11958))

(assert (=> b!6769913 (= e!4087414 call!613512)))

(declare-fun bm!613506 () Bool)

(declare-fun call!613516 () (InoxSet Context!11958))

(assert (=> bm!613506 (= call!613516 call!613515)))

(declare-fun bm!613507 () Bool)

(assert (=> bm!613507 (= call!613512 call!613516)))

(declare-fun b!6769914 () Bool)

(declare-fun e!4087417 () (InoxSet Context!11958))

(assert (=> b!6769914 (= e!4087417 ((_ map or) call!613513 call!613516))))

(declare-fun b!6769915 () Bool)

(declare-fun e!4087412 () Bool)

(assert (=> b!6769915 (= e!4087412 (nullable!6576 (regOne!33702 (h!72409 (exprs!6479 lt!2443180)))))))

(declare-fun d!2126679 () Bool)

(declare-fun c!1257093 () Bool)

(assert (=> d!2126679 (= c!1257093 (and ((_ is ElementMatch!16595) (h!72409 (exprs!6479 lt!2443180))) (= (c!1256657 (h!72409 (exprs!6479 lt!2443180))) (h!72408 s!2326))))))

(assert (=> d!2126679 (= (derivationStepZipperDown!1823 (h!72409 (exprs!6479 lt!2443180)) (Context!11959 (t!379794 (exprs!6479 lt!2443180))) (h!72408 s!2326)) e!4087415)))

(declare-fun b!6769916 () Bool)

(assert (=> b!6769916 (= e!4087414 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6769917 () Bool)

(assert (=> b!6769917 (= e!4087413 call!613512)))

(declare-fun b!6769918 () Bool)

(declare-fun c!1257091 () Bool)

(assert (=> b!6769918 (= c!1257091 e!4087412)))

(declare-fun res!2767995 () Bool)

(assert (=> b!6769918 (=> (not res!2767995) (not e!4087412))))

(assert (=> b!6769918 (= res!2767995 ((_ is Concat!25440) (h!72409 (exprs!6479 lt!2443180))))))

(assert (=> b!6769918 (= e!4087416 e!4087417)))

(declare-fun bm!613508 () Bool)

(declare-fun call!613511 () List!66085)

(declare-fun call!613514 () List!66085)

(assert (=> bm!613508 (= call!613511 call!613514)))

(declare-fun c!1257094 () Bool)

(declare-fun c!1257090 () Bool)

(declare-fun bm!613509 () Bool)

(assert (=> bm!613509 (= call!613515 (derivationStepZipperDown!1823 (ite c!1257090 (regOne!33703 (h!72409 (exprs!6479 lt!2443180))) (ite c!1257091 (regTwo!33702 (h!72409 (exprs!6479 lt!2443180))) (ite c!1257094 (regOne!33702 (h!72409 (exprs!6479 lt!2443180))) (reg!16924 (h!72409 (exprs!6479 lt!2443180)))))) (ite (or c!1257090 c!1257091) (Context!11959 (t!379794 (exprs!6479 lt!2443180))) (Context!11959 call!613511)) (h!72408 s!2326)))))

(declare-fun b!6769919 () Bool)

(assert (=> b!6769919 (= e!4087417 e!4087413)))

(assert (=> b!6769919 (= c!1257094 ((_ is Concat!25440) (h!72409 (exprs!6479 lt!2443180))))))

(declare-fun b!6769920 () Bool)

(assert (=> b!6769920 (= e!4087415 e!4087416)))

(assert (=> b!6769920 (= c!1257090 ((_ is Union!16595) (h!72409 (exprs!6479 lt!2443180))))))

(declare-fun bm!613510 () Bool)

(assert (=> bm!613510 (= call!613513 (derivationStepZipperDown!1823 (ite c!1257090 (regTwo!33703 (h!72409 (exprs!6479 lt!2443180))) (regOne!33702 (h!72409 (exprs!6479 lt!2443180)))) (ite c!1257090 (Context!11959 (t!379794 (exprs!6479 lt!2443180))) (Context!11959 call!613514)) (h!72408 s!2326)))))

(declare-fun bm!613511 () Bool)

(assert (=> bm!613511 (= call!613514 ($colon$colon!2406 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443180)))) (ite (or c!1257091 c!1257094) (regTwo!33702 (h!72409 (exprs!6479 lt!2443180))) (h!72409 (exprs!6479 lt!2443180)))))))

(assert (= (and d!2126679 c!1257093) b!6769912))

(assert (= (and d!2126679 (not c!1257093)) b!6769920))

(assert (= (and b!6769920 c!1257090) b!6769911))

(assert (= (and b!6769920 (not c!1257090)) b!6769918))

(assert (= (and b!6769918 res!2767995) b!6769915))

(assert (= (and b!6769918 c!1257091) b!6769914))

(assert (= (and b!6769918 (not c!1257091)) b!6769919))

(assert (= (and b!6769919 c!1257094) b!6769917))

(assert (= (and b!6769919 (not c!1257094)) b!6769910))

(assert (= (and b!6769910 c!1257092) b!6769913))

(assert (= (and b!6769910 (not c!1257092)) b!6769916))

(assert (= (or b!6769917 b!6769913) bm!613508))

(assert (= (or b!6769917 b!6769913) bm!613507))

(assert (= (or b!6769914 bm!613508) bm!613511))

(assert (= (or b!6769914 bm!613507) bm!613506))

(assert (= (or b!6769911 b!6769914) bm!613510))

(assert (= (or b!6769911 bm!613506) bm!613509))

(declare-fun m!7520460 () Bool)

(assert (=> bm!613511 m!7520460))

(declare-fun m!7520462 () Bool)

(assert (=> bm!613510 m!7520462))

(declare-fun m!7520464 () Bool)

(assert (=> bm!613509 m!7520464))

(declare-fun m!7520466 () Bool)

(assert (=> b!6769912 m!7520466))

(declare-fun m!7520468 () Bool)

(assert (=> b!6769915 m!7520468))

(assert (=> bm!613336 d!2126679))

(declare-fun c!1257096 () Bool)

(declare-fun bm!613512 () Bool)

(declare-fun call!613519 () Bool)

(declare-fun c!1257095 () Bool)

(assert (=> bm!613512 (= call!613519 (validRegex!8331 (ite c!1257096 (reg!16924 (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))) (ite c!1257095 (regOne!33703 (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))) (regOne!33702 (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292)))))))))

(declare-fun b!6769922 () Bool)

(declare-fun res!2768000 () Bool)

(declare-fun e!4087419 () Bool)

(assert (=> b!6769922 (=> res!2768000 e!4087419)))

(assert (=> b!6769922 (= res!2768000 (not ((_ is Concat!25440) (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292)))))))

(declare-fun e!4087422 () Bool)

(assert (=> b!6769922 (= e!4087422 e!4087419)))

(declare-fun b!6769923 () Bool)

(declare-fun e!4087423 () Bool)

(assert (=> b!6769923 (= e!4087419 e!4087423)))

(declare-fun res!2767996 () Bool)

(assert (=> b!6769923 (=> (not res!2767996) (not e!4087423))))

(declare-fun call!613517 () Bool)

(assert (=> b!6769923 (= res!2767996 call!613517)))

(declare-fun b!6769924 () Bool)

(declare-fun res!2767998 () Bool)

(declare-fun e!4087418 () Bool)

(assert (=> b!6769924 (=> (not res!2767998) (not e!4087418))))

(assert (=> b!6769924 (= res!2767998 call!613517)))

(assert (=> b!6769924 (= e!4087422 e!4087418)))

(declare-fun b!6769925 () Bool)

(declare-fun call!613518 () Bool)

(assert (=> b!6769925 (= e!4087423 call!613518)))

(declare-fun b!6769926 () Bool)

(declare-fun e!4087421 () Bool)

(assert (=> b!6769926 (= e!4087421 e!4087422)))

(assert (=> b!6769926 (= c!1257095 ((_ is Union!16595) (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))))))

(declare-fun b!6769927 () Bool)

(assert (=> b!6769927 (= e!4087418 call!613518)))

(declare-fun bm!613513 () Bool)

(assert (=> bm!613513 (= call!613518 (validRegex!8331 (ite c!1257095 (regTwo!33703 (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))) (regTwo!33702 (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))))))))

(declare-fun b!6769928 () Bool)

(declare-fun e!4087424 () Bool)

(assert (=> b!6769928 (= e!4087424 call!613519)))

(declare-fun bm!613514 () Bool)

(assert (=> bm!613514 (= call!613517 call!613519)))

(declare-fun b!6769929 () Bool)

(declare-fun e!4087420 () Bool)

(assert (=> b!6769929 (= e!4087420 e!4087421)))

(assert (=> b!6769929 (= c!1257096 ((_ is Star!16595) (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))))))

(declare-fun b!6769921 () Bool)

(assert (=> b!6769921 (= e!4087421 e!4087424)))

(declare-fun res!2767999 () Bool)

(assert (=> b!6769921 (= res!2767999 (not (nullable!6576 (reg!16924 (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))))))))

(assert (=> b!6769921 (=> (not res!2767999) (not e!4087424))))

(declare-fun d!2126681 () Bool)

(declare-fun res!2767997 () Bool)

(assert (=> d!2126681 (=> res!2767997 e!4087420)))

(assert (=> d!2126681 (= res!2767997 ((_ is ElementMatch!16595) (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))))))

(assert (=> d!2126681 (= (validRegex!8331 (ite c!1256812 (regTwo!33703 r!7292) (regTwo!33702 r!7292))) e!4087420)))

(assert (= (and d!2126681 (not res!2767997)) b!6769929))

(assert (= (and b!6769929 c!1257096) b!6769921))

(assert (= (and b!6769929 (not c!1257096)) b!6769926))

(assert (= (and b!6769921 res!2767999) b!6769928))

(assert (= (and b!6769926 c!1257095) b!6769924))

(assert (= (and b!6769926 (not c!1257095)) b!6769922))

(assert (= (and b!6769924 res!2767998) b!6769927))

(assert (= (and b!6769922 (not res!2768000)) b!6769923))

(assert (= (and b!6769923 res!2767996) b!6769925))

(assert (= (or b!6769927 b!6769925) bm!613513))

(assert (= (or b!6769924 b!6769923) bm!613514))

(assert (= (or b!6769928 bm!613514) bm!613512))

(declare-fun m!7520470 () Bool)

(assert (=> bm!613512 m!7520470))

(declare-fun m!7520472 () Bool)

(assert (=> bm!613513 m!7520472))

(declare-fun m!7520474 () Bool)

(assert (=> b!6769921 m!7520474))

(assert (=> bm!613325 d!2126681))

(declare-fun c!1257097 () Bool)

(declare-fun call!613522 () Bool)

(declare-fun c!1257098 () Bool)

(declare-fun bm!613515 () Bool)

(assert (=> bm!613515 (= call!613522 (validRegex!8331 (ite c!1257098 (reg!16924 lt!2443296) (ite c!1257097 (regOne!33703 lt!2443296) (regOne!33702 lt!2443296)))))))

(declare-fun b!6769931 () Bool)

(declare-fun res!2768005 () Bool)

(declare-fun e!4087426 () Bool)

(assert (=> b!6769931 (=> res!2768005 e!4087426)))

(assert (=> b!6769931 (= res!2768005 (not ((_ is Concat!25440) lt!2443296)))))

(declare-fun e!4087429 () Bool)

(assert (=> b!6769931 (= e!4087429 e!4087426)))

(declare-fun b!6769932 () Bool)

(declare-fun e!4087430 () Bool)

(assert (=> b!6769932 (= e!4087426 e!4087430)))

(declare-fun res!2768001 () Bool)

(assert (=> b!6769932 (=> (not res!2768001) (not e!4087430))))

(declare-fun call!613520 () Bool)

(assert (=> b!6769932 (= res!2768001 call!613520)))

(declare-fun b!6769933 () Bool)

(declare-fun res!2768003 () Bool)

(declare-fun e!4087425 () Bool)

(assert (=> b!6769933 (=> (not res!2768003) (not e!4087425))))

(assert (=> b!6769933 (= res!2768003 call!613520)))

(assert (=> b!6769933 (= e!4087429 e!4087425)))

(declare-fun b!6769934 () Bool)

(declare-fun call!613521 () Bool)

(assert (=> b!6769934 (= e!4087430 call!613521)))

(declare-fun b!6769935 () Bool)

(declare-fun e!4087428 () Bool)

(assert (=> b!6769935 (= e!4087428 e!4087429)))

(assert (=> b!6769935 (= c!1257097 ((_ is Union!16595) lt!2443296))))

(declare-fun b!6769936 () Bool)

(assert (=> b!6769936 (= e!4087425 call!613521)))

(declare-fun bm!613516 () Bool)

(assert (=> bm!613516 (= call!613521 (validRegex!8331 (ite c!1257097 (regTwo!33703 lt!2443296) (regTwo!33702 lt!2443296))))))

(declare-fun b!6769937 () Bool)

(declare-fun e!4087431 () Bool)

(assert (=> b!6769937 (= e!4087431 call!613522)))

(declare-fun bm!613517 () Bool)

(assert (=> bm!613517 (= call!613520 call!613522)))

(declare-fun b!6769938 () Bool)

(declare-fun e!4087427 () Bool)

(assert (=> b!6769938 (= e!4087427 e!4087428)))

(assert (=> b!6769938 (= c!1257098 ((_ is Star!16595) lt!2443296))))

(declare-fun b!6769930 () Bool)

(assert (=> b!6769930 (= e!4087428 e!4087431)))

(declare-fun res!2768004 () Bool)

(assert (=> b!6769930 (= res!2768004 (not (nullable!6576 (reg!16924 lt!2443296))))))

(assert (=> b!6769930 (=> (not res!2768004) (not e!4087431))))

(declare-fun d!2126683 () Bool)

(declare-fun res!2768002 () Bool)

(assert (=> d!2126683 (=> res!2768002 e!4087427)))

(assert (=> d!2126683 (= res!2768002 ((_ is ElementMatch!16595) lt!2443296))))

(assert (=> d!2126683 (= (validRegex!8331 lt!2443296) e!4087427)))

(assert (= (and d!2126683 (not res!2768002)) b!6769938))

(assert (= (and b!6769938 c!1257098) b!6769930))

(assert (= (and b!6769938 (not c!1257098)) b!6769935))

(assert (= (and b!6769930 res!2768004) b!6769937))

(assert (= (and b!6769935 c!1257097) b!6769933))

(assert (= (and b!6769935 (not c!1257097)) b!6769931))

(assert (= (and b!6769933 res!2768003) b!6769936))

(assert (= (and b!6769931 (not res!2768005)) b!6769932))

(assert (= (and b!6769932 res!2768001) b!6769934))

(assert (= (or b!6769936 b!6769934) bm!613516))

(assert (= (or b!6769933 b!6769932) bm!613517))

(assert (= (or b!6769937 bm!613517) bm!613515))

(declare-fun m!7520476 () Bool)

(assert (=> bm!613515 m!7520476))

(declare-fun m!7520478 () Bool)

(assert (=> bm!613516 m!7520478))

(declare-fun m!7520480 () Bool)

(assert (=> b!6769930 m!7520480))

(assert (=> d!2126205 d!2126683))

(declare-fun d!2126685 () Bool)

(declare-fun res!2768006 () Bool)

(declare-fun e!4087432 () Bool)

(assert (=> d!2126685 (=> res!2768006 e!4087432)))

(assert (=> d!2126685 (= res!2768006 ((_ is Nil!65961) (unfocusZipperList!2016 zl!343)))))

(assert (=> d!2126685 (= (forall!15789 (unfocusZipperList!2016 zl!343) lambda!380863) e!4087432)))

(declare-fun b!6769939 () Bool)

(declare-fun e!4087433 () Bool)

(assert (=> b!6769939 (= e!4087432 e!4087433)))

(declare-fun res!2768007 () Bool)

(assert (=> b!6769939 (=> (not res!2768007) (not e!4087433))))

(assert (=> b!6769939 (= res!2768007 (dynLambda!26320 lambda!380863 (h!72409 (unfocusZipperList!2016 zl!343))))))

(declare-fun b!6769940 () Bool)

(assert (=> b!6769940 (= e!4087433 (forall!15789 (t!379794 (unfocusZipperList!2016 zl!343)) lambda!380863))))

(assert (= (and d!2126685 (not res!2768006)) b!6769939))

(assert (= (and b!6769939 res!2768007) b!6769940))

(declare-fun b_lambda!254929 () Bool)

(assert (=> (not b_lambda!254929) (not b!6769939)))

(declare-fun m!7520482 () Bool)

(assert (=> b!6769939 m!7520482))

(declare-fun m!7520484 () Bool)

(assert (=> b!6769940 m!7520484))

(assert (=> d!2126205 d!2126685))

(declare-fun d!2126687 () Bool)

(assert (=> d!2126687 true))

(declare-fun setRes!46293 () Bool)

(assert (=> d!2126687 setRes!46293))

(declare-fun condSetEmpty!46293 () Bool)

(declare-fun res!2768010 () (InoxSet Context!11958))

(assert (=> d!2126687 (= condSetEmpty!46293 (= res!2768010 ((as const (Array Context!11958 Bool)) false)))))

(assert (=> d!2126687 (= (choose!50434 lt!2443188 lambda!380803) res!2768010)))

(declare-fun setIsEmpty!46293 () Bool)

(assert (=> setIsEmpty!46293 setRes!46293))

(declare-fun tp!1855036 () Bool)

(declare-fun e!4087436 () Bool)

(declare-fun setElem!46293 () Context!11958)

(declare-fun setNonEmpty!46293 () Bool)

(assert (=> setNonEmpty!46293 (= setRes!46293 (and tp!1855036 (inv!84734 setElem!46293) e!4087436))))

(declare-fun setRest!46293 () (InoxSet Context!11958))

(assert (=> setNonEmpty!46293 (= res!2768010 ((_ map or) (store ((as const (Array Context!11958 Bool)) false) setElem!46293 true) setRest!46293))))

(declare-fun b!6769943 () Bool)

(declare-fun tp!1855037 () Bool)

(assert (=> b!6769943 (= e!4087436 tp!1855037)))

(assert (= (and d!2126687 condSetEmpty!46293) setIsEmpty!46293))

(assert (= (and d!2126687 (not condSetEmpty!46293)) setNonEmpty!46293))

(assert (= setNonEmpty!46293 b!6769943))

(declare-fun m!7520486 () Bool)

(assert (=> setNonEmpty!46293 m!7520486))

(assert (=> d!2126309 d!2126687))

(declare-fun bs!1801652 () Bool)

(declare-fun d!2126689 () Bool)

(assert (= bs!1801652 (and d!2126689 d!2126273)))

(declare-fun lambda!380928 () Int)

(assert (=> bs!1801652 (= lambda!380928 lambda!380877)))

(declare-fun bs!1801653 () Bool)

(assert (= bs!1801653 (and d!2126689 d!2126233)))

(assert (=> bs!1801653 (= lambda!380928 lambda!380868)))

(declare-fun bs!1801654 () Bool)

(assert (= bs!1801654 (and d!2126689 d!2126205)))

(assert (=> bs!1801654 (= lambda!380928 lambda!380863)))

(declare-fun bs!1801655 () Bool)

(assert (= bs!1801655 (and d!2126689 d!2126289)))

(assert (=> bs!1801655 (= lambda!380928 lambda!380879)))

(declare-fun bs!1801656 () Bool)

(assert (= bs!1801656 (and d!2126689 d!2126321)))

(assert (=> bs!1801656 (= lambda!380928 lambda!380885)))

(declare-fun b!6769944 () Bool)

(declare-fun e!4087442 () Bool)

(declare-fun lt!2443366 () Regex!16595)

(assert (=> b!6769944 (= e!4087442 (= lt!2443366 (head!13606 (t!379794 (exprs!6479 (h!72410 zl!343))))))))

(declare-fun b!6769945 () Bool)

(declare-fun e!4087441 () Bool)

(declare-fun e!4087438 () Bool)

(assert (=> b!6769945 (= e!4087441 e!4087438)))

(declare-fun c!1257099 () Bool)

(assert (=> b!6769945 (= c!1257099 (isEmpty!38322 (t!379794 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun b!6769946 () Bool)

(assert (=> b!6769946 (= e!4087442 (isConcat!1478 lt!2443366))))

(declare-fun b!6769947 () Bool)

(declare-fun e!4087440 () Bool)

(assert (=> b!6769947 (= e!4087440 (isEmpty!38322 (t!379794 (t!379794 (exprs!6479 (h!72410 zl!343))))))))

(declare-fun b!6769948 () Bool)

(declare-fun e!4087439 () Regex!16595)

(assert (=> b!6769948 (= e!4087439 (Concat!25440 (h!72409 (t!379794 (exprs!6479 (h!72410 zl!343)))) (generalisedConcat!2192 (t!379794 (t!379794 (exprs!6479 (h!72410 zl!343)))))))))

(declare-fun b!6769949 () Bool)

(assert (=> b!6769949 (= e!4087438 (isEmptyExpr!1955 lt!2443366))))

(assert (=> d!2126689 e!4087441))

(declare-fun res!2768012 () Bool)

(assert (=> d!2126689 (=> (not res!2768012) (not e!4087441))))

(assert (=> d!2126689 (= res!2768012 (validRegex!8331 lt!2443366))))

(declare-fun e!4087437 () Regex!16595)

(assert (=> d!2126689 (= lt!2443366 e!4087437)))

(declare-fun c!1257102 () Bool)

(assert (=> d!2126689 (= c!1257102 e!4087440)))

(declare-fun res!2768011 () Bool)

(assert (=> d!2126689 (=> (not res!2768011) (not e!4087440))))

(assert (=> d!2126689 (= res!2768011 ((_ is Cons!65961) (t!379794 (exprs!6479 (h!72410 zl!343)))))))

(assert (=> d!2126689 (forall!15789 (t!379794 (exprs!6479 (h!72410 zl!343))) lambda!380928)))

(assert (=> d!2126689 (= (generalisedConcat!2192 (t!379794 (exprs!6479 (h!72410 zl!343)))) lt!2443366)))

(declare-fun b!6769950 () Bool)

(assert (=> b!6769950 (= e!4087439 EmptyExpr!16595)))

(declare-fun b!6769951 () Bool)

(assert (=> b!6769951 (= e!4087437 e!4087439)))

(declare-fun c!1257101 () Bool)

(assert (=> b!6769951 (= c!1257101 ((_ is Cons!65961) (t!379794 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun b!6769952 () Bool)

(assert (=> b!6769952 (= e!4087438 e!4087442)))

(declare-fun c!1257100 () Bool)

(assert (=> b!6769952 (= c!1257100 (isEmpty!38322 (tail!12691 (t!379794 (exprs!6479 (h!72410 zl!343))))))))

(declare-fun b!6769953 () Bool)

(assert (=> b!6769953 (= e!4087437 (h!72409 (t!379794 (exprs!6479 (h!72410 zl!343)))))))

(assert (= (and d!2126689 res!2768011) b!6769947))

(assert (= (and d!2126689 c!1257102) b!6769953))

(assert (= (and d!2126689 (not c!1257102)) b!6769951))

(assert (= (and b!6769951 c!1257101) b!6769948))

(assert (= (and b!6769951 (not c!1257101)) b!6769950))

(assert (= (and d!2126689 res!2768012) b!6769945))

(assert (= (and b!6769945 c!1257099) b!6769949))

(assert (= (and b!6769945 (not c!1257099)) b!6769952))

(assert (= (and b!6769952 c!1257100) b!6769944))

(assert (= (and b!6769952 (not c!1257100)) b!6769946))

(declare-fun m!7520488 () Bool)

(assert (=> b!6769946 m!7520488))

(declare-fun m!7520490 () Bool)

(assert (=> b!6769947 m!7520490))

(declare-fun m!7520492 () Bool)

(assert (=> b!6769949 m!7520492))

(declare-fun m!7520494 () Bool)

(assert (=> b!6769952 m!7520494))

(assert (=> b!6769952 m!7520494))

(declare-fun m!7520496 () Bool)

(assert (=> b!6769952 m!7520496))

(assert (=> b!6769945 m!7519710))

(declare-fun m!7520498 () Bool)

(assert (=> b!6769944 m!7520498))

(declare-fun m!7520500 () Bool)

(assert (=> b!6769948 m!7520500))

(declare-fun m!7520502 () Bool)

(assert (=> d!2126689 m!7520502))

(declare-fun m!7520504 () Bool)

(assert (=> d!2126689 m!7520504))

(assert (=> b!6769098 d!2126689))

(declare-fun bs!1801657 () Bool)

(declare-fun b!6769963 () Bool)

(assert (= bs!1801657 (and b!6769963 d!2126163)))

(declare-fun lambda!380929 () Int)

(assert (=> bs!1801657 (not (= lambda!380929 lambda!380842))))

(declare-fun bs!1801658 () Bool)

(assert (= bs!1801658 (and b!6769963 d!2126145)))

(assert (=> bs!1801658 (not (= lambda!380929 lambda!380829))))

(declare-fun bs!1801659 () Bool)

(assert (= bs!1801659 (and b!6769963 b!6768233)))

(assert (=> bs!1801659 (not (= lambda!380929 lambda!380800))))

(assert (=> bs!1801659 (not (= lambda!380929 lambda!380802))))

(assert (=> bs!1801659 (= (and (= (reg!16924 (regOne!33703 lt!2443204)) (reg!16924 r!7292)) (= (regOne!33703 lt!2443204) r!7292)) (= lambda!380929 lambda!380801))))

(declare-fun bs!1801660 () Bool)

(assert (= bs!1801660 (and b!6769963 b!6769013)))

(assert (=> bs!1801660 (= (and (= (reg!16924 (regOne!33703 lt!2443204)) (reg!16924 r!7292)) (= (regOne!33703 lt!2443204) r!7292)) (= lambda!380929 lambda!380881))))

(assert (=> bs!1801658 (= (and (= (reg!16924 (regOne!33703 lt!2443204)) (reg!16924 r!7292)) (= (regOne!33703 lt!2443204) (Star!16595 (reg!16924 r!7292)))) (= lambda!380929 lambda!380830))))

(declare-fun bs!1801661 () Bool)

(assert (= bs!1801661 (and b!6769963 b!6768909)))

(assert (=> bs!1801661 (not (= lambda!380929 lambda!380874))))

(declare-fun bs!1801662 () Bool)

(assert (= bs!1801662 (and b!6769963 b!6768912)))

(assert (=> bs!1801662 (= (and (= (reg!16924 (regOne!33703 lt!2443204)) (reg!16924 lt!2443204)) (= (regOne!33703 lt!2443204) lt!2443204)) (= lambda!380929 lambda!380873))))

(declare-fun bs!1801663 () Bool)

(assert (= bs!1801663 (and b!6769963 d!2126187)))

(assert (=> bs!1801663 (not (= lambda!380929 lambda!380857))))

(declare-fun bs!1801664 () Bool)

(assert (= bs!1801664 (and b!6769963 b!6769010)))

(assert (=> bs!1801664 (not (= lambda!380929 lambda!380882))))

(assert (=> bs!1801657 (not (= lambda!380929 lambda!380841))))

(assert (=> b!6769963 true))

(assert (=> b!6769963 true))

(declare-fun bs!1801665 () Bool)

(declare-fun b!6769960 () Bool)

(assert (= bs!1801665 (and b!6769960 d!2126163)))

(declare-fun lambda!380930 () Int)

(assert (=> bs!1801665 (= (and (= (regOne!33702 (regOne!33703 lt!2443204)) (reg!16924 r!7292)) (= (regTwo!33702 (regOne!33703 lt!2443204)) r!7292)) (= lambda!380930 lambda!380842))))

(declare-fun bs!1801666 () Bool)

(assert (= bs!1801666 (and b!6769960 d!2126145)))

(assert (=> bs!1801666 (not (= lambda!380930 lambda!380829))))

(declare-fun bs!1801667 () Bool)

(assert (= bs!1801667 (and b!6769960 b!6768233)))

(assert (=> bs!1801667 (not (= lambda!380930 lambda!380800))))

(assert (=> bs!1801667 (= (and (= (regOne!33702 (regOne!33703 lt!2443204)) (reg!16924 r!7292)) (= (regTwo!33702 (regOne!33703 lt!2443204)) r!7292)) (= lambda!380930 lambda!380802))))

(assert (=> bs!1801667 (not (= lambda!380930 lambda!380801))))

(declare-fun bs!1801668 () Bool)

(assert (= bs!1801668 (and b!6769960 b!6769013)))

(assert (=> bs!1801668 (not (= lambda!380930 lambda!380881))))

(assert (=> bs!1801666 (not (= lambda!380930 lambda!380830))))

(declare-fun bs!1801669 () Bool)

(assert (= bs!1801669 (and b!6769960 b!6768909)))

(assert (=> bs!1801669 (= (and (= (regOne!33702 (regOne!33703 lt!2443204)) (regOne!33702 lt!2443204)) (= (regTwo!33702 (regOne!33703 lt!2443204)) (regTwo!33702 lt!2443204))) (= lambda!380930 lambda!380874))))

(declare-fun bs!1801670 () Bool)

(assert (= bs!1801670 (and b!6769960 b!6769963)))

(assert (=> bs!1801670 (not (= lambda!380930 lambda!380929))))

(declare-fun bs!1801671 () Bool)

(assert (= bs!1801671 (and b!6769960 b!6768912)))

(assert (=> bs!1801671 (not (= lambda!380930 lambda!380873))))

(declare-fun bs!1801672 () Bool)

(assert (= bs!1801672 (and b!6769960 d!2126187)))

(assert (=> bs!1801672 (not (= lambda!380930 lambda!380857))))

(declare-fun bs!1801673 () Bool)

(assert (= bs!1801673 (and b!6769960 b!6769010)))

(assert (=> bs!1801673 (= (and (= (regOne!33702 (regOne!33703 lt!2443204)) (regOne!33702 r!7292)) (= (regTwo!33702 (regOne!33703 lt!2443204)) (regTwo!33702 r!7292))) (= lambda!380930 lambda!380882))))

(assert (=> bs!1801665 (not (= lambda!380930 lambda!380841))))

(assert (=> b!6769960 true))

(assert (=> b!6769960 true))

(declare-fun call!613523 () Bool)

(declare-fun c!1257106 () Bool)

(declare-fun bm!613518 () Bool)

(assert (=> bm!613518 (= call!613523 (Exists!3663 (ite c!1257106 lambda!380929 lambda!380930)))))

(declare-fun b!6769954 () Bool)

(declare-fun res!2768015 () Bool)

(declare-fun e!4087444 () Bool)

(assert (=> b!6769954 (=> res!2768015 e!4087444)))

(declare-fun call!613524 () Bool)

(assert (=> b!6769954 (= res!2768015 call!613524)))

(declare-fun e!4087446 () Bool)

(assert (=> b!6769954 (= e!4087446 e!4087444)))

(declare-fun d!2126691 () Bool)

(declare-fun c!1257103 () Bool)

(assert (=> d!2126691 (= c!1257103 ((_ is EmptyExpr!16595) (regOne!33703 lt!2443204)))))

(declare-fun e!4087448 () Bool)

(assert (=> d!2126691 (= (matchRSpec!3696 (regOne!33703 lt!2443204) s!2326) e!4087448)))

(declare-fun b!6769955 () Bool)

(declare-fun c!1257105 () Bool)

(assert (=> b!6769955 (= c!1257105 ((_ is Union!16595) (regOne!33703 lt!2443204)))))

(declare-fun e!4087447 () Bool)

(declare-fun e!4087449 () Bool)

(assert (=> b!6769955 (= e!4087447 e!4087449)))

(declare-fun b!6769956 () Bool)

(declare-fun e!4087443 () Bool)

(assert (=> b!6769956 (= e!4087443 (matchRSpec!3696 (regTwo!33703 (regOne!33703 lt!2443204)) s!2326))))

(declare-fun b!6769957 () Bool)

(declare-fun e!4087445 () Bool)

(assert (=> b!6769957 (= e!4087448 e!4087445)))

(declare-fun res!2768013 () Bool)

(assert (=> b!6769957 (= res!2768013 (not ((_ is EmptyLang!16595) (regOne!33703 lt!2443204))))))

(assert (=> b!6769957 (=> (not res!2768013) (not e!4087445))))

(declare-fun b!6769958 () Bool)

(assert (=> b!6769958 (= e!4087449 e!4087443)))

(declare-fun res!2768014 () Bool)

(assert (=> b!6769958 (= res!2768014 (matchRSpec!3696 (regOne!33703 (regOne!33703 lt!2443204)) s!2326))))

(assert (=> b!6769958 (=> res!2768014 e!4087443)))

(declare-fun b!6769959 () Bool)

(assert (=> b!6769959 (= e!4087449 e!4087446)))

(assert (=> b!6769959 (= c!1257106 ((_ is Star!16595) (regOne!33703 lt!2443204)))))

(declare-fun bm!613519 () Bool)

(assert (=> bm!613519 (= call!613524 (isEmpty!38317 s!2326))))

(assert (=> b!6769960 (= e!4087446 call!613523)))

(declare-fun b!6769961 () Bool)

(assert (=> b!6769961 (= e!4087447 (= s!2326 (Cons!65960 (c!1256657 (regOne!33703 lt!2443204)) Nil!65960)))))

(declare-fun b!6769962 () Bool)

(declare-fun c!1257104 () Bool)

(assert (=> b!6769962 (= c!1257104 ((_ is ElementMatch!16595) (regOne!33703 lt!2443204)))))

(assert (=> b!6769962 (= e!4087445 e!4087447)))

(assert (=> b!6769963 (= e!4087444 call!613523)))

(declare-fun b!6769964 () Bool)

(assert (=> b!6769964 (= e!4087448 call!613524)))

(assert (= (and d!2126691 c!1257103) b!6769964))

(assert (= (and d!2126691 (not c!1257103)) b!6769957))

(assert (= (and b!6769957 res!2768013) b!6769962))

(assert (= (and b!6769962 c!1257104) b!6769961))

(assert (= (and b!6769962 (not c!1257104)) b!6769955))

(assert (= (and b!6769955 c!1257105) b!6769958))

(assert (= (and b!6769955 (not c!1257105)) b!6769959))

(assert (= (and b!6769958 (not res!2768014)) b!6769956))

(assert (= (and b!6769959 c!1257106) b!6769954))

(assert (= (and b!6769959 (not c!1257106)) b!6769960))

(assert (= (and b!6769954 (not res!2768015)) b!6769963))

(assert (= (or b!6769963 b!6769960) bm!613518))

(assert (= (or b!6769964 b!6769954) bm!613519))

(declare-fun m!7520506 () Bool)

(assert (=> bm!613518 m!7520506))

(declare-fun m!7520508 () Bool)

(assert (=> b!6769956 m!7520508))

(declare-fun m!7520510 () Bool)

(assert (=> b!6769958 m!7520510))

(assert (=> bm!613519 m!7519036))

(assert (=> b!6768907 d!2126691))

(declare-fun d!2126693 () Bool)

(assert (=> d!2126693 (= (isEmpty!38317 (_1!36873 lt!2443186)) ((_ is Nil!65960) (_1!36873 lt!2443186)))))

(assert (=> bm!613368 d!2126693))

(declare-fun d!2126695 () Bool)

(declare-fun lt!2443369 () Int)

(assert (=> d!2126695 (>= lt!2443369 0)))

(declare-fun e!4087452 () Int)

(assert (=> d!2126695 (= lt!2443369 e!4087452)))

(declare-fun c!1257109 () Bool)

(assert (=> d!2126695 (= c!1257109 ((_ is Nil!65960) lt!2443305))))

(assert (=> d!2126695 (= (size!40631 lt!2443305) lt!2443369)))

(declare-fun b!6769969 () Bool)

(assert (=> b!6769969 (= e!4087452 0)))

(declare-fun b!6769970 () Bool)

(assert (=> b!6769970 (= e!4087452 (+ 1 (size!40631 (t!379793 lt!2443305))))))

(assert (= (and d!2126695 c!1257109) b!6769969))

(assert (= (and d!2126695 (not c!1257109)) b!6769970))

(declare-fun m!7520512 () Bool)

(assert (=> b!6769970 m!7520512))

(assert (=> b!6768867 d!2126695))

(declare-fun d!2126697 () Bool)

(declare-fun lt!2443370 () Int)

(assert (=> d!2126697 (>= lt!2443370 0)))

(declare-fun e!4087453 () Int)

(assert (=> d!2126697 (= lt!2443370 e!4087453)))

(declare-fun c!1257110 () Bool)

(assert (=> d!2126697 (= c!1257110 ((_ is Nil!65960) (_1!36873 lt!2443186)))))

(assert (=> d!2126697 (= (size!40631 (_1!36873 lt!2443186)) lt!2443370)))

(declare-fun b!6769971 () Bool)

(assert (=> b!6769971 (= e!4087453 0)))

(declare-fun b!6769972 () Bool)

(assert (=> b!6769972 (= e!4087453 (+ 1 (size!40631 (t!379793 (_1!36873 lt!2443186)))))))

(assert (= (and d!2126697 c!1257110) b!6769971))

(assert (= (and d!2126697 (not c!1257110)) b!6769972))

(declare-fun m!7520514 () Bool)

(assert (=> b!6769972 m!7520514))

(assert (=> b!6768867 d!2126697))

(declare-fun d!2126699 () Bool)

(declare-fun lt!2443371 () Int)

(assert (=> d!2126699 (>= lt!2443371 0)))

(declare-fun e!4087454 () Int)

(assert (=> d!2126699 (= lt!2443371 e!4087454)))

(declare-fun c!1257111 () Bool)

(assert (=> d!2126699 (= c!1257111 ((_ is Nil!65960) (_2!36873 lt!2443186)))))

(assert (=> d!2126699 (= (size!40631 (_2!36873 lt!2443186)) lt!2443371)))

(declare-fun b!6769973 () Bool)

(assert (=> b!6769973 (= e!4087454 0)))

(declare-fun b!6769974 () Bool)

(assert (=> b!6769974 (= e!4087454 (+ 1 (size!40631 (t!379793 (_2!36873 lt!2443186)))))))

(assert (= (and d!2126699 c!1257111) b!6769973))

(assert (= (and d!2126699 (not c!1257111)) b!6769974))

(declare-fun m!7520516 () Bool)

(assert (=> b!6769974 m!7520516))

(assert (=> b!6768867 d!2126699))

(declare-fun d!2126701 () Bool)

(assert (=> d!2126701 (= (isEmpty!38322 (tail!12691 (exprs!6479 (h!72410 zl!343)))) ((_ is Nil!65961) (tail!12691 (exprs!6479 (h!72410 zl!343)))))))

(assert (=> b!6769102 d!2126701))

(declare-fun d!2126703 () Bool)

(assert (=> d!2126703 (= (tail!12691 (exprs!6479 (h!72410 zl!343))) (t!379794 (exprs!6479 (h!72410 zl!343))))))

(assert (=> b!6769102 d!2126703))

(declare-fun d!2126705 () Bool)

(assert (=> d!2126705 (= (isEmptyLang!1963 lt!2443296) ((_ is EmptyLang!16595) lt!2443296))))

(assert (=> b!6768759 d!2126705))

(declare-fun c!1257112 () Bool)

(declare-fun c!1257113 () Bool)

(declare-fun bm!613520 () Bool)

(declare-fun call!613527 () Bool)

(assert (=> bm!613520 (= call!613527 (validRegex!8331 (ite c!1257113 (reg!16924 lt!2443316) (ite c!1257112 (regOne!33703 lt!2443316) (regOne!33702 lt!2443316)))))))

(declare-fun b!6769976 () Bool)

(declare-fun res!2768020 () Bool)

(declare-fun e!4087456 () Bool)

(assert (=> b!6769976 (=> res!2768020 e!4087456)))

(assert (=> b!6769976 (= res!2768020 (not ((_ is Concat!25440) lt!2443316)))))

(declare-fun e!4087459 () Bool)

(assert (=> b!6769976 (= e!4087459 e!4087456)))

(declare-fun b!6769977 () Bool)

(declare-fun e!4087460 () Bool)

(assert (=> b!6769977 (= e!4087456 e!4087460)))

(declare-fun res!2768016 () Bool)

(assert (=> b!6769977 (=> (not res!2768016) (not e!4087460))))

(declare-fun call!613525 () Bool)

(assert (=> b!6769977 (= res!2768016 call!613525)))

(declare-fun b!6769978 () Bool)

(declare-fun res!2768018 () Bool)

(declare-fun e!4087455 () Bool)

(assert (=> b!6769978 (=> (not res!2768018) (not e!4087455))))

(assert (=> b!6769978 (= res!2768018 call!613525)))

(assert (=> b!6769978 (= e!4087459 e!4087455)))

(declare-fun b!6769979 () Bool)

(declare-fun call!613526 () Bool)

(assert (=> b!6769979 (= e!4087460 call!613526)))

(declare-fun b!6769980 () Bool)

(declare-fun e!4087458 () Bool)

(assert (=> b!6769980 (= e!4087458 e!4087459)))

(assert (=> b!6769980 (= c!1257112 ((_ is Union!16595) lt!2443316))))

(declare-fun b!6769981 () Bool)

(assert (=> b!6769981 (= e!4087455 call!613526)))

(declare-fun bm!613521 () Bool)

(assert (=> bm!613521 (= call!613526 (validRegex!8331 (ite c!1257112 (regTwo!33703 lt!2443316) (regTwo!33702 lt!2443316))))))

(declare-fun b!6769982 () Bool)

(declare-fun e!4087461 () Bool)

(assert (=> b!6769982 (= e!4087461 call!613527)))

(declare-fun bm!613522 () Bool)

(assert (=> bm!613522 (= call!613525 call!613527)))

(declare-fun b!6769983 () Bool)

(declare-fun e!4087457 () Bool)

(assert (=> b!6769983 (= e!4087457 e!4087458)))

(assert (=> b!6769983 (= c!1257113 ((_ is Star!16595) lt!2443316))))

(declare-fun b!6769975 () Bool)

(assert (=> b!6769975 (= e!4087458 e!4087461)))

(declare-fun res!2768019 () Bool)

(assert (=> b!6769975 (= res!2768019 (not (nullable!6576 (reg!16924 lt!2443316))))))

(assert (=> b!6769975 (=> (not res!2768019) (not e!4087461))))

(declare-fun d!2126707 () Bool)

(declare-fun res!2768017 () Bool)

(assert (=> d!2126707 (=> res!2768017 e!4087457)))

(assert (=> d!2126707 (= res!2768017 ((_ is ElementMatch!16595) lt!2443316))))

(assert (=> d!2126707 (= (validRegex!8331 lt!2443316) e!4087457)))

(assert (= (and d!2126707 (not res!2768017)) b!6769983))

(assert (= (and b!6769983 c!1257113) b!6769975))

(assert (= (and b!6769983 (not c!1257113)) b!6769980))

(assert (= (and b!6769975 res!2768019) b!6769982))

(assert (= (and b!6769980 c!1257112) b!6769978))

(assert (= (and b!6769980 (not c!1257112)) b!6769976))

(assert (= (and b!6769978 res!2768018) b!6769981))

(assert (= (and b!6769976 (not res!2768020)) b!6769977))

(assert (= (and b!6769977 res!2768016) b!6769979))

(assert (= (or b!6769981 b!6769979) bm!613521))

(assert (= (or b!6769978 b!6769977) bm!613522))

(assert (= (or b!6769982 bm!613522) bm!613520))

(declare-fun m!7520518 () Bool)

(assert (=> bm!613520 m!7520518))

(declare-fun m!7520520 () Bool)

(assert (=> bm!613521 m!7520520))

(declare-fun m!7520522 () Bool)

(assert (=> b!6769975 m!7520522))

(assert (=> d!2126271 d!2126707))

(declare-fun bs!1801674 () Bool)

(declare-fun d!2126709 () Bool)

(assert (= bs!1801674 (and d!2126709 d!2126273)))

(declare-fun lambda!380931 () Int)

(assert (=> bs!1801674 (= lambda!380931 lambda!380877)))

(declare-fun bs!1801675 () Bool)

(assert (= bs!1801675 (and d!2126709 d!2126205)))

(assert (=> bs!1801675 (= lambda!380931 lambda!380863)))

(declare-fun bs!1801676 () Bool)

(assert (= bs!1801676 (and d!2126709 d!2126289)))

(assert (=> bs!1801676 (= lambda!380931 lambda!380879)))

(declare-fun bs!1801677 () Bool)

(assert (= bs!1801677 (and d!2126709 d!2126321)))

(assert (=> bs!1801677 (= lambda!380931 lambda!380885)))

(declare-fun bs!1801678 () Bool)

(assert (= bs!1801678 (and d!2126709 d!2126689)))

(assert (=> bs!1801678 (= lambda!380931 lambda!380928)))

(declare-fun bs!1801679 () Bool)

(assert (= bs!1801679 (and d!2126709 d!2126233)))

(assert (=> bs!1801679 (= lambda!380931 lambda!380868)))

(declare-fun b!6769984 () Bool)

(declare-fun e!4087467 () Regex!16595)

(assert (=> b!6769984 (= e!4087467 (h!72409 (unfocusZipperList!2016 lt!2443179)))))

(declare-fun b!6769985 () Bool)

(declare-fun e!4087465 () Bool)

(declare-fun e!4087462 () Bool)

(assert (=> b!6769985 (= e!4087465 e!4087462)))

(declare-fun c!1257114 () Bool)

(assert (=> b!6769985 (= c!1257114 (isEmpty!38322 (unfocusZipperList!2016 lt!2443179)))))

(declare-fun b!6769986 () Bool)

(declare-fun e!4087463 () Regex!16595)

(assert (=> b!6769986 (= e!4087463 EmptyLang!16595)))

(declare-fun b!6769987 () Bool)

(declare-fun lt!2443372 () Regex!16595)

(assert (=> b!6769987 (= e!4087462 (isEmptyLang!1963 lt!2443372))))

(declare-fun b!6769988 () Bool)

(assert (=> b!6769988 (= e!4087463 (Union!16595 (h!72409 (unfocusZipperList!2016 lt!2443179)) (generalisedUnion!2439 (t!379794 (unfocusZipperList!2016 lt!2443179)))))))

(declare-fun b!6769989 () Bool)

(declare-fun e!4087464 () Bool)

(assert (=> b!6769989 (= e!4087464 (isUnion!1393 lt!2443372))))

(declare-fun b!6769990 () Bool)

(declare-fun e!4087466 () Bool)

(assert (=> b!6769990 (= e!4087466 (isEmpty!38322 (t!379794 (unfocusZipperList!2016 lt!2443179))))))

(declare-fun b!6769992 () Bool)

(assert (=> b!6769992 (= e!4087467 e!4087463)))

(declare-fun c!1257116 () Bool)

(assert (=> b!6769992 (= c!1257116 ((_ is Cons!65961) (unfocusZipperList!2016 lt!2443179)))))

(declare-fun b!6769993 () Bool)

(assert (=> b!6769993 (= e!4087464 (= lt!2443372 (head!13606 (unfocusZipperList!2016 lt!2443179))))))

(declare-fun b!6769991 () Bool)

(assert (=> b!6769991 (= e!4087462 e!4087464)))

(declare-fun c!1257117 () Bool)

(assert (=> b!6769991 (= c!1257117 (isEmpty!38322 (tail!12691 (unfocusZipperList!2016 lt!2443179))))))

(assert (=> d!2126709 e!4087465))

(declare-fun res!2768021 () Bool)

(assert (=> d!2126709 (=> (not res!2768021) (not e!4087465))))

(assert (=> d!2126709 (= res!2768021 (validRegex!8331 lt!2443372))))

(assert (=> d!2126709 (= lt!2443372 e!4087467)))

(declare-fun c!1257115 () Bool)

(assert (=> d!2126709 (= c!1257115 e!4087466)))

(declare-fun res!2768022 () Bool)

(assert (=> d!2126709 (=> (not res!2768022) (not e!4087466))))

(assert (=> d!2126709 (= res!2768022 ((_ is Cons!65961) (unfocusZipperList!2016 lt!2443179)))))

(assert (=> d!2126709 (forall!15789 (unfocusZipperList!2016 lt!2443179) lambda!380931)))

(assert (=> d!2126709 (= (generalisedUnion!2439 (unfocusZipperList!2016 lt!2443179)) lt!2443372)))

(assert (= (and d!2126709 res!2768022) b!6769990))

(assert (= (and d!2126709 c!1257115) b!6769984))

(assert (= (and d!2126709 (not c!1257115)) b!6769992))

(assert (= (and b!6769992 c!1257116) b!6769988))

(assert (= (and b!6769992 (not c!1257116)) b!6769986))

(assert (= (and d!2126709 res!2768021) b!6769985))

(assert (= (and b!6769985 c!1257114) b!6769987))

(assert (= (and b!6769985 (not c!1257114)) b!6769991))

(assert (= (and b!6769991 c!1257117) b!6769993))

(assert (= (and b!6769991 (not c!1257117)) b!6769989))

(assert (=> b!6769985 m!7519596))

(declare-fun m!7520524 () Bool)

(assert (=> b!6769985 m!7520524))

(declare-fun m!7520526 () Bool)

(assert (=> b!6769987 m!7520526))

(declare-fun m!7520528 () Bool)

(assert (=> b!6769989 m!7520528))

(assert (=> b!6769993 m!7519596))

(declare-fun m!7520530 () Bool)

(assert (=> b!6769993 m!7520530))

(declare-fun m!7520532 () Bool)

(assert (=> b!6769990 m!7520532))

(declare-fun m!7520534 () Bool)

(assert (=> b!6769988 m!7520534))

(declare-fun m!7520536 () Bool)

(assert (=> d!2126709 m!7520536))

(assert (=> d!2126709 m!7519596))

(declare-fun m!7520538 () Bool)

(assert (=> d!2126709 m!7520538))

(assert (=> b!6769991 m!7519596))

(declare-fun m!7520540 () Bool)

(assert (=> b!6769991 m!7520540))

(assert (=> b!6769991 m!7520540))

(declare-fun m!7520542 () Bool)

(assert (=> b!6769991 m!7520542))

(assert (=> d!2126271 d!2126709))

(declare-fun bs!1801680 () Bool)

(declare-fun d!2126711 () Bool)

(assert (= bs!1801680 (and d!2126711 d!2126273)))

(declare-fun lambda!380932 () Int)

(assert (=> bs!1801680 (= lambda!380932 lambda!380877)))

(declare-fun bs!1801681 () Bool)

(assert (= bs!1801681 (and d!2126711 d!2126709)))

(assert (=> bs!1801681 (= lambda!380932 lambda!380931)))

(declare-fun bs!1801682 () Bool)

(assert (= bs!1801682 (and d!2126711 d!2126205)))

(assert (=> bs!1801682 (= lambda!380932 lambda!380863)))

(declare-fun bs!1801683 () Bool)

(assert (= bs!1801683 (and d!2126711 d!2126289)))

(assert (=> bs!1801683 (= lambda!380932 lambda!380879)))

(declare-fun bs!1801684 () Bool)

(assert (= bs!1801684 (and d!2126711 d!2126321)))

(assert (=> bs!1801684 (= lambda!380932 lambda!380885)))

(declare-fun bs!1801685 () Bool)

(assert (= bs!1801685 (and d!2126711 d!2126689)))

(assert (=> bs!1801685 (= lambda!380932 lambda!380928)))

(declare-fun bs!1801686 () Bool)

(assert (= bs!1801686 (and d!2126711 d!2126233)))

(assert (=> bs!1801686 (= lambda!380932 lambda!380868)))

(declare-fun lt!2443373 () List!66085)

(assert (=> d!2126711 (forall!15789 lt!2443373 lambda!380932)))

(declare-fun e!4087468 () List!66085)

(assert (=> d!2126711 (= lt!2443373 e!4087468)))

(declare-fun c!1257118 () Bool)

(assert (=> d!2126711 (= c!1257118 ((_ is Cons!65962) lt!2443179))))

(assert (=> d!2126711 (= (unfocusZipperList!2016 lt!2443179) lt!2443373)))

(declare-fun b!6769994 () Bool)

(assert (=> b!6769994 (= e!4087468 (Cons!65961 (generalisedConcat!2192 (exprs!6479 (h!72410 lt!2443179))) (unfocusZipperList!2016 (t!379795 lt!2443179))))))

(declare-fun b!6769995 () Bool)

(assert (=> b!6769995 (= e!4087468 Nil!65961)))

(assert (= (and d!2126711 c!1257118) b!6769994))

(assert (= (and d!2126711 (not c!1257118)) b!6769995))

(declare-fun m!7520544 () Bool)

(assert (=> d!2126711 m!7520544))

(declare-fun m!7520546 () Bool)

(assert (=> b!6769994 m!7520546))

(declare-fun m!7520548 () Bool)

(assert (=> b!6769994 m!7520548))

(assert (=> d!2126271 d!2126711))

(declare-fun b!6769996 () Bool)

(declare-fun c!1257121 () Bool)

(assert (=> b!6769996 (= c!1257121 ((_ is Star!16595) (h!72409 (exprs!6479 lt!2443194))))))

(declare-fun e!4087470 () (InoxSet Context!11958))

(declare-fun e!4087471 () (InoxSet Context!11958))

(assert (=> b!6769996 (= e!4087470 e!4087471)))

(declare-fun b!6769997 () Bool)

(declare-fun e!4087473 () (InoxSet Context!11958))

(declare-fun call!613532 () (InoxSet Context!11958))

(declare-fun call!613530 () (InoxSet Context!11958))

(assert (=> b!6769997 (= e!4087473 ((_ map or) call!613532 call!613530))))

(declare-fun b!6769998 () Bool)

(declare-fun e!4087472 () (InoxSet Context!11958))

(assert (=> b!6769998 (= e!4087472 (store ((as const (Array Context!11958 Bool)) false) (Context!11959 (t!379794 (exprs!6479 lt!2443194))) true))))

(declare-fun b!6769999 () Bool)

(declare-fun call!613529 () (InoxSet Context!11958))

(assert (=> b!6769999 (= e!4087471 call!613529)))

(declare-fun bm!613523 () Bool)

(declare-fun call!613533 () (InoxSet Context!11958))

(assert (=> bm!613523 (= call!613533 call!613532)))

(declare-fun bm!613524 () Bool)

(assert (=> bm!613524 (= call!613529 call!613533)))

(declare-fun b!6770000 () Bool)

(declare-fun e!4087474 () (InoxSet Context!11958))

(assert (=> b!6770000 (= e!4087474 ((_ map or) call!613530 call!613533))))

(declare-fun b!6770001 () Bool)

(declare-fun e!4087469 () Bool)

(assert (=> b!6770001 (= e!4087469 (nullable!6576 (regOne!33702 (h!72409 (exprs!6479 lt!2443194)))))))

(declare-fun d!2126713 () Bool)

(declare-fun c!1257122 () Bool)

(assert (=> d!2126713 (= c!1257122 (and ((_ is ElementMatch!16595) (h!72409 (exprs!6479 lt!2443194))) (= (c!1256657 (h!72409 (exprs!6479 lt!2443194))) (h!72408 s!2326))))))

(assert (=> d!2126713 (= (derivationStepZipperDown!1823 (h!72409 (exprs!6479 lt!2443194)) (Context!11959 (t!379794 (exprs!6479 lt!2443194))) (h!72408 s!2326)) e!4087472)))

(declare-fun b!6770002 () Bool)

(assert (=> b!6770002 (= e!4087471 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770003 () Bool)

(assert (=> b!6770003 (= e!4087470 call!613529)))

(declare-fun b!6770004 () Bool)

(declare-fun c!1257120 () Bool)

(assert (=> b!6770004 (= c!1257120 e!4087469)))

(declare-fun res!2768023 () Bool)

(assert (=> b!6770004 (=> (not res!2768023) (not e!4087469))))

(assert (=> b!6770004 (= res!2768023 ((_ is Concat!25440) (h!72409 (exprs!6479 lt!2443194))))))

(assert (=> b!6770004 (= e!4087473 e!4087474)))

(declare-fun bm!613525 () Bool)

(declare-fun call!613528 () List!66085)

(declare-fun call!613531 () List!66085)

(assert (=> bm!613525 (= call!613528 call!613531)))

(declare-fun bm!613526 () Bool)

(declare-fun c!1257119 () Bool)

(declare-fun c!1257123 () Bool)

(assert (=> bm!613526 (= call!613532 (derivationStepZipperDown!1823 (ite c!1257119 (regOne!33703 (h!72409 (exprs!6479 lt!2443194))) (ite c!1257120 (regTwo!33702 (h!72409 (exprs!6479 lt!2443194))) (ite c!1257123 (regOne!33702 (h!72409 (exprs!6479 lt!2443194))) (reg!16924 (h!72409 (exprs!6479 lt!2443194)))))) (ite (or c!1257119 c!1257120) (Context!11959 (t!379794 (exprs!6479 lt!2443194))) (Context!11959 call!613528)) (h!72408 s!2326)))))

(declare-fun b!6770005 () Bool)

(assert (=> b!6770005 (= e!4087474 e!4087470)))

(assert (=> b!6770005 (= c!1257123 ((_ is Concat!25440) (h!72409 (exprs!6479 lt!2443194))))))

(declare-fun b!6770006 () Bool)

(assert (=> b!6770006 (= e!4087472 e!4087473)))

(assert (=> b!6770006 (= c!1257119 ((_ is Union!16595) (h!72409 (exprs!6479 lt!2443194))))))

(declare-fun bm!613527 () Bool)

(assert (=> bm!613527 (= call!613530 (derivationStepZipperDown!1823 (ite c!1257119 (regTwo!33703 (h!72409 (exprs!6479 lt!2443194))) (regOne!33702 (h!72409 (exprs!6479 lt!2443194)))) (ite c!1257119 (Context!11959 (t!379794 (exprs!6479 lt!2443194))) (Context!11959 call!613531)) (h!72408 s!2326)))))

(declare-fun bm!613528 () Bool)

(assert (=> bm!613528 (= call!613531 ($colon$colon!2406 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443194)))) (ite (or c!1257120 c!1257123) (regTwo!33702 (h!72409 (exprs!6479 lt!2443194))) (h!72409 (exprs!6479 lt!2443194)))))))

(assert (= (and d!2126713 c!1257122) b!6769998))

(assert (= (and d!2126713 (not c!1257122)) b!6770006))

(assert (= (and b!6770006 c!1257119) b!6769997))

(assert (= (and b!6770006 (not c!1257119)) b!6770004))

(assert (= (and b!6770004 res!2768023) b!6770001))

(assert (= (and b!6770004 c!1257120) b!6770000))

(assert (= (and b!6770004 (not c!1257120)) b!6770005))

(assert (= (and b!6770005 c!1257123) b!6770003))

(assert (= (and b!6770005 (not c!1257123)) b!6769996))

(assert (= (and b!6769996 c!1257121) b!6769999))

(assert (= (and b!6769996 (not c!1257121)) b!6770002))

(assert (= (or b!6770003 b!6769999) bm!613525))

(assert (= (or b!6770003 b!6769999) bm!613524))

(assert (= (or b!6770000 bm!613525) bm!613528))

(assert (= (or b!6770000 bm!613524) bm!613523))

(assert (= (or b!6769997 b!6770000) bm!613527))

(assert (= (or b!6769997 bm!613523) bm!613526))

(declare-fun m!7520550 () Bool)

(assert (=> bm!613528 m!7520550))

(declare-fun m!7520552 () Bool)

(assert (=> bm!613527 m!7520552))

(declare-fun m!7520554 () Bool)

(assert (=> bm!613526 m!7520554))

(declare-fun m!7520556 () Bool)

(assert (=> b!6769998 m!7520556))

(declare-fun m!7520558 () Bool)

(assert (=> b!6770001 m!7520558))

(assert (=> bm!613366 d!2126713))

(declare-fun d!2126715 () Bool)

(assert (=> d!2126715 (= (Exists!3663 lambda!380829) (choose!50436 lambda!380829))))

(declare-fun bs!1801687 () Bool)

(assert (= bs!1801687 d!2126715))

(declare-fun m!7520560 () Bool)

(assert (=> bs!1801687 m!7520560))

(assert (=> d!2126145 d!2126715))

(declare-fun d!2126717 () Bool)

(assert (=> d!2126717 (= (Exists!3663 lambda!380830) (choose!50436 lambda!380830))))

(declare-fun bs!1801688 () Bool)

(assert (= bs!1801688 d!2126717))

(declare-fun m!7520562 () Bool)

(assert (=> bs!1801688 m!7520562))

(assert (=> d!2126145 d!2126717))

(declare-fun bs!1801689 () Bool)

(declare-fun d!2126719 () Bool)

(assert (= bs!1801689 (and d!2126719 d!2126163)))

(declare-fun lambda!380937 () Int)

(assert (=> bs!1801689 (not (= lambda!380937 lambda!380842))))

(declare-fun bs!1801690 () Bool)

(assert (= bs!1801690 (and d!2126719 b!6769960)))

(assert (=> bs!1801690 (not (= lambda!380937 lambda!380930))))

(declare-fun bs!1801691 () Bool)

(assert (= bs!1801691 (and d!2126719 d!2126145)))

(assert (=> bs!1801691 (= lambda!380937 lambda!380829)))

(declare-fun bs!1801692 () Bool)

(assert (= bs!1801692 (and d!2126719 b!6768233)))

(assert (=> bs!1801692 (= (= (Star!16595 (reg!16924 r!7292)) r!7292) (= lambda!380937 lambda!380800))))

(assert (=> bs!1801692 (not (= lambda!380937 lambda!380802))))

(assert (=> bs!1801692 (not (= lambda!380937 lambda!380801))))

(declare-fun bs!1801693 () Bool)

(assert (= bs!1801693 (and d!2126719 b!6769013)))

(assert (=> bs!1801693 (not (= lambda!380937 lambda!380881))))

(assert (=> bs!1801691 (not (= lambda!380937 lambda!380830))))

(declare-fun bs!1801694 () Bool)

(assert (= bs!1801694 (and d!2126719 b!6768909)))

(assert (=> bs!1801694 (not (= lambda!380937 lambda!380874))))

(declare-fun bs!1801695 () Bool)

(assert (= bs!1801695 (and d!2126719 b!6769963)))

(assert (=> bs!1801695 (not (= lambda!380937 lambda!380929))))

(declare-fun bs!1801696 () Bool)

(assert (= bs!1801696 (and d!2126719 b!6768912)))

(assert (=> bs!1801696 (not (= lambda!380937 lambda!380873))))

(declare-fun bs!1801697 () Bool)

(assert (= bs!1801697 (and d!2126719 d!2126187)))

(assert (=> bs!1801697 (= (= (Star!16595 (reg!16924 r!7292)) r!7292) (= lambda!380937 lambda!380857))))

(declare-fun bs!1801698 () Bool)

(assert (= bs!1801698 (and d!2126719 b!6769010)))

(assert (=> bs!1801698 (not (= lambda!380937 lambda!380882))))

(assert (=> bs!1801689 (= (= (Star!16595 (reg!16924 r!7292)) r!7292) (= lambda!380937 lambda!380841))))

(assert (=> d!2126719 true))

(assert (=> d!2126719 true))

(declare-fun lambda!380938 () Int)

(assert (=> bs!1801689 (not (= lambda!380938 lambda!380842))))

(declare-fun bs!1801699 () Bool)

(assert (= bs!1801699 d!2126719))

(assert (=> bs!1801699 (not (= lambda!380938 lambda!380937))))

(assert (=> bs!1801690 (not (= lambda!380938 lambda!380930))))

(assert (=> bs!1801691 (not (= lambda!380938 lambda!380829))))

(assert (=> bs!1801692 (not (= lambda!380938 lambda!380800))))

(assert (=> bs!1801692 (not (= lambda!380938 lambda!380802))))

(assert (=> bs!1801692 (= (= (Star!16595 (reg!16924 r!7292)) r!7292) (= lambda!380938 lambda!380801))))

(assert (=> bs!1801693 (= (= (Star!16595 (reg!16924 r!7292)) r!7292) (= lambda!380938 lambda!380881))))

(assert (=> bs!1801691 (= lambda!380938 lambda!380830)))

(assert (=> bs!1801694 (not (= lambda!380938 lambda!380874))))

(assert (=> bs!1801695 (= (and (= (reg!16924 r!7292) (reg!16924 (regOne!33703 lt!2443204))) (= (Star!16595 (reg!16924 r!7292)) (regOne!33703 lt!2443204))) (= lambda!380938 lambda!380929))))

(assert (=> bs!1801696 (= (and (= (reg!16924 r!7292) (reg!16924 lt!2443204)) (= (Star!16595 (reg!16924 r!7292)) lt!2443204)) (= lambda!380938 lambda!380873))))

(assert (=> bs!1801697 (not (= lambda!380938 lambda!380857))))

(assert (=> bs!1801698 (not (= lambda!380938 lambda!380882))))

(assert (=> bs!1801689 (not (= lambda!380938 lambda!380841))))

(assert (=> d!2126719 true))

(assert (=> d!2126719 true))

(assert (=> d!2126719 (= (Exists!3663 lambda!380937) (Exists!3663 lambda!380938))))

(assert (=> d!2126719 true))

(declare-fun _$91!758 () Unit!159881)

(assert (=> d!2126719 (= (choose!50439 (reg!16924 r!7292) s!2326) _$91!758)))

(declare-fun m!7520564 () Bool)

(assert (=> bs!1801699 m!7520564))

(declare-fun m!7520566 () Bool)

(assert (=> bs!1801699 m!7520566))

(assert (=> d!2126145 d!2126719))

(assert (=> d!2126145 d!2126649))

(assert (=> bm!613359 d!2126157))

(declare-fun d!2126721 () Bool)

(assert (=> d!2126721 (= (head!13606 (exprs!6479 (h!72410 zl!343))) (h!72409 (exprs!6479 (h!72410 zl!343))))))

(assert (=> b!6769094 d!2126721))

(declare-fun d!2126723 () Bool)

(assert (=> d!2126723 (= (isDefined!13185 (findConcatSeparation!2896 (reg!16924 r!7292) r!7292 Nil!65960 s!2326 s!2326)) (not (isEmpty!38321 (findConcatSeparation!2896 (reg!16924 r!7292) r!7292 Nil!65960 s!2326 s!2326))))))

(declare-fun bs!1801700 () Bool)

(assert (= bs!1801700 d!2126723))

(assert (=> bs!1801700 m!7519042))

(declare-fun m!7520568 () Bool)

(assert (=> bs!1801700 m!7520568))

(assert (=> d!2126187 d!2126723))

(declare-fun bs!1801701 () Bool)

(declare-fun d!2126725 () Bool)

(assert (= bs!1801701 (and d!2126725 d!2126163)))

(declare-fun lambda!380941 () Int)

(assert (=> bs!1801701 (not (= lambda!380941 lambda!380842))))

(declare-fun bs!1801702 () Bool)

(assert (= bs!1801702 (and d!2126725 d!2126719)))

(assert (=> bs!1801702 (= (= r!7292 (Star!16595 (reg!16924 r!7292))) (= lambda!380941 lambda!380937))))

(declare-fun bs!1801703 () Bool)

(assert (= bs!1801703 (and d!2126725 b!6769960)))

(assert (=> bs!1801703 (not (= lambda!380941 lambda!380930))))

(declare-fun bs!1801704 () Bool)

(assert (= bs!1801704 (and d!2126725 d!2126145)))

(assert (=> bs!1801704 (= (= r!7292 (Star!16595 (reg!16924 r!7292))) (= lambda!380941 lambda!380829))))

(declare-fun bs!1801705 () Bool)

(assert (= bs!1801705 (and d!2126725 b!6768233)))

(assert (=> bs!1801705 (= lambda!380941 lambda!380800)))

(assert (=> bs!1801705 (not (= lambda!380941 lambda!380802))))

(assert (=> bs!1801705 (not (= lambda!380941 lambda!380801))))

(declare-fun bs!1801706 () Bool)

(assert (= bs!1801706 (and d!2126725 b!6769013)))

(assert (=> bs!1801706 (not (= lambda!380941 lambda!380881))))

(assert (=> bs!1801704 (not (= lambda!380941 lambda!380830))))

(assert (=> bs!1801702 (not (= lambda!380941 lambda!380938))))

(declare-fun bs!1801707 () Bool)

(assert (= bs!1801707 (and d!2126725 b!6768909)))

(assert (=> bs!1801707 (not (= lambda!380941 lambda!380874))))

(declare-fun bs!1801708 () Bool)

(assert (= bs!1801708 (and d!2126725 b!6769963)))

(assert (=> bs!1801708 (not (= lambda!380941 lambda!380929))))

(declare-fun bs!1801709 () Bool)

(assert (= bs!1801709 (and d!2126725 b!6768912)))

(assert (=> bs!1801709 (not (= lambda!380941 lambda!380873))))

(declare-fun bs!1801710 () Bool)

(assert (= bs!1801710 (and d!2126725 d!2126187)))

(assert (=> bs!1801710 (= lambda!380941 lambda!380857)))

(declare-fun bs!1801711 () Bool)

(assert (= bs!1801711 (and d!2126725 b!6769010)))

(assert (=> bs!1801711 (not (= lambda!380941 lambda!380882))))

(assert (=> bs!1801701 (= lambda!380941 lambda!380841)))

(assert (=> d!2126725 true))

(assert (=> d!2126725 true))

(assert (=> d!2126725 true))

(assert (=> d!2126725 (= (isDefined!13185 (findConcatSeparation!2896 (reg!16924 r!7292) r!7292 Nil!65960 s!2326 s!2326)) (Exists!3663 lambda!380941))))

(assert (=> d!2126725 true))

(declare-fun _$89!3016 () Unit!159881)

(assert (=> d!2126725 (= (choose!50441 (reg!16924 r!7292) r!7292 s!2326) _$89!3016)))

(declare-fun bs!1801712 () Bool)

(assert (= bs!1801712 d!2126725))

(assert (=> bs!1801712 m!7519042))

(assert (=> bs!1801712 m!7519042))

(assert (=> bs!1801712 m!7519390))

(declare-fun m!7520570 () Bool)

(assert (=> bs!1801712 m!7520570))

(assert (=> d!2126187 d!2126725))

(declare-fun d!2126727 () Bool)

(assert (=> d!2126727 (= (Exists!3663 lambda!380857) (choose!50436 lambda!380857))))

(declare-fun bs!1801713 () Bool)

(assert (= bs!1801713 d!2126727))

(declare-fun m!7520572 () Bool)

(assert (=> bs!1801713 m!7520572))

(assert (=> d!2126187 d!2126727))

(assert (=> d!2126187 d!2126177))

(assert (=> d!2126187 d!2126649))

(declare-fun bs!1801714 () Bool)

(declare-fun b!6770030 () Bool)

(assert (= bs!1801714 (and b!6770030 d!2126719)))

(declare-fun lambda!380942 () Int)

(assert (=> bs!1801714 (not (= lambda!380942 lambda!380937))))

(declare-fun bs!1801715 () Bool)

(assert (= bs!1801715 (and b!6770030 b!6769960)))

(assert (=> bs!1801715 (not (= lambda!380942 lambda!380930))))

(declare-fun bs!1801716 () Bool)

(assert (= bs!1801716 (and b!6770030 d!2126145)))

(assert (=> bs!1801716 (not (= lambda!380942 lambda!380829))))

(declare-fun bs!1801717 () Bool)

(assert (= bs!1801717 (and b!6770030 b!6768233)))

(assert (=> bs!1801717 (not (= lambda!380942 lambda!380800))))

(assert (=> bs!1801717 (not (= lambda!380942 lambda!380802))))

(assert (=> bs!1801717 (= (and (= (reg!16924 (regOne!33703 r!7292)) (reg!16924 r!7292)) (= (regOne!33703 r!7292) r!7292)) (= lambda!380942 lambda!380801))))

(declare-fun bs!1801718 () Bool)

(assert (= bs!1801718 (and b!6770030 b!6769013)))

(assert (=> bs!1801718 (= (and (= (reg!16924 (regOne!33703 r!7292)) (reg!16924 r!7292)) (= (regOne!33703 r!7292) r!7292)) (= lambda!380942 lambda!380881))))

(assert (=> bs!1801716 (= (and (= (reg!16924 (regOne!33703 r!7292)) (reg!16924 r!7292)) (= (regOne!33703 r!7292) (Star!16595 (reg!16924 r!7292)))) (= lambda!380942 lambda!380830))))

(assert (=> bs!1801714 (= (and (= (reg!16924 (regOne!33703 r!7292)) (reg!16924 r!7292)) (= (regOne!33703 r!7292) (Star!16595 (reg!16924 r!7292)))) (= lambda!380942 lambda!380938))))

(declare-fun bs!1801719 () Bool)

(assert (= bs!1801719 (and b!6770030 b!6768909)))

(assert (=> bs!1801719 (not (= lambda!380942 lambda!380874))))

(declare-fun bs!1801720 () Bool)

(assert (= bs!1801720 (and b!6770030 b!6769963)))

(assert (=> bs!1801720 (= (and (= (reg!16924 (regOne!33703 r!7292)) (reg!16924 (regOne!33703 lt!2443204))) (= (regOne!33703 r!7292) (regOne!33703 lt!2443204))) (= lambda!380942 lambda!380929))))

(declare-fun bs!1801721 () Bool)

(assert (= bs!1801721 (and b!6770030 d!2126163)))

(assert (=> bs!1801721 (not (= lambda!380942 lambda!380842))))

(declare-fun bs!1801722 () Bool)

(assert (= bs!1801722 (and b!6770030 d!2126725)))

(assert (=> bs!1801722 (not (= lambda!380942 lambda!380941))))

(declare-fun bs!1801723 () Bool)

(assert (= bs!1801723 (and b!6770030 b!6768912)))

(assert (=> bs!1801723 (= (and (= (reg!16924 (regOne!33703 r!7292)) (reg!16924 lt!2443204)) (= (regOne!33703 r!7292) lt!2443204)) (= lambda!380942 lambda!380873))))

(declare-fun bs!1801724 () Bool)

(assert (= bs!1801724 (and b!6770030 d!2126187)))

(assert (=> bs!1801724 (not (= lambda!380942 lambda!380857))))

(declare-fun bs!1801725 () Bool)

(assert (= bs!1801725 (and b!6770030 b!6769010)))

(assert (=> bs!1801725 (not (= lambda!380942 lambda!380882))))

(assert (=> bs!1801721 (not (= lambda!380942 lambda!380841))))

(assert (=> b!6770030 true))

(assert (=> b!6770030 true))

(declare-fun bs!1801726 () Bool)

(declare-fun b!6770027 () Bool)

(assert (= bs!1801726 (and b!6770027 d!2126719)))

(declare-fun lambda!380943 () Int)

(assert (=> bs!1801726 (not (= lambda!380943 lambda!380937))))

(declare-fun bs!1801727 () Bool)

(assert (= bs!1801727 (and b!6770027 b!6769960)))

(assert (=> bs!1801727 (= (and (= (regOne!33702 (regOne!33703 r!7292)) (regOne!33702 (regOne!33703 lt!2443204))) (= (regTwo!33702 (regOne!33703 r!7292)) (regTwo!33702 (regOne!33703 lt!2443204)))) (= lambda!380943 lambda!380930))))

(declare-fun bs!1801728 () Bool)

(assert (= bs!1801728 (and b!6770027 d!2126145)))

(assert (=> bs!1801728 (not (= lambda!380943 lambda!380829))))

(declare-fun bs!1801729 () Bool)

(assert (= bs!1801729 (and b!6770027 b!6768233)))

(assert (=> bs!1801729 (not (= lambda!380943 lambda!380800))))

(assert (=> bs!1801729 (= (and (= (regOne!33702 (regOne!33703 r!7292)) (reg!16924 r!7292)) (= (regTwo!33702 (regOne!33703 r!7292)) r!7292)) (= lambda!380943 lambda!380802))))

(assert (=> bs!1801729 (not (= lambda!380943 lambda!380801))))

(declare-fun bs!1801730 () Bool)

(assert (= bs!1801730 (and b!6770027 b!6769013)))

(assert (=> bs!1801730 (not (= lambda!380943 lambda!380881))))

(assert (=> bs!1801728 (not (= lambda!380943 lambda!380830))))

(assert (=> bs!1801726 (not (= lambda!380943 lambda!380938))))

(declare-fun bs!1801731 () Bool)

(assert (= bs!1801731 (and b!6770027 b!6768909)))

(assert (=> bs!1801731 (= (and (= (regOne!33702 (regOne!33703 r!7292)) (regOne!33702 lt!2443204)) (= (regTwo!33702 (regOne!33703 r!7292)) (regTwo!33702 lt!2443204))) (= lambda!380943 lambda!380874))))

(declare-fun bs!1801732 () Bool)

(assert (= bs!1801732 (and b!6770027 b!6769963)))

(assert (=> bs!1801732 (not (= lambda!380943 lambda!380929))))

(declare-fun bs!1801733 () Bool)

(assert (= bs!1801733 (and b!6770027 b!6770030)))

(assert (=> bs!1801733 (not (= lambda!380943 lambda!380942))))

(declare-fun bs!1801734 () Bool)

(assert (= bs!1801734 (and b!6770027 d!2126163)))

(assert (=> bs!1801734 (= (and (= (regOne!33702 (regOne!33703 r!7292)) (reg!16924 r!7292)) (= (regTwo!33702 (regOne!33703 r!7292)) r!7292)) (= lambda!380943 lambda!380842))))

(declare-fun bs!1801735 () Bool)

(assert (= bs!1801735 (and b!6770027 d!2126725)))

(assert (=> bs!1801735 (not (= lambda!380943 lambda!380941))))

(declare-fun bs!1801736 () Bool)

(assert (= bs!1801736 (and b!6770027 b!6768912)))

(assert (=> bs!1801736 (not (= lambda!380943 lambda!380873))))

(declare-fun bs!1801737 () Bool)

(assert (= bs!1801737 (and b!6770027 d!2126187)))

(assert (=> bs!1801737 (not (= lambda!380943 lambda!380857))))

(declare-fun bs!1801738 () Bool)

(assert (= bs!1801738 (and b!6770027 b!6769010)))

(assert (=> bs!1801738 (= (and (= (regOne!33702 (regOne!33703 r!7292)) (regOne!33702 r!7292)) (= (regTwo!33702 (regOne!33703 r!7292)) (regTwo!33702 r!7292))) (= lambda!380943 lambda!380882))))

(assert (=> bs!1801734 (not (= lambda!380943 lambda!380841))))

(assert (=> b!6770027 true))

(assert (=> b!6770027 true))

(declare-fun c!1257127 () Bool)

(declare-fun call!613534 () Bool)

(declare-fun bm!613529 () Bool)

(assert (=> bm!613529 (= call!613534 (Exists!3663 (ite c!1257127 lambda!380942 lambda!380943)))))

(declare-fun b!6770021 () Bool)

(declare-fun res!2768040 () Bool)

(declare-fun e!4087482 () Bool)

(assert (=> b!6770021 (=> res!2768040 e!4087482)))

(declare-fun call!613535 () Bool)

(assert (=> b!6770021 (= res!2768040 call!613535)))

(declare-fun e!4087484 () Bool)

(assert (=> b!6770021 (= e!4087484 e!4087482)))

(declare-fun d!2126729 () Bool)

(declare-fun c!1257124 () Bool)

(assert (=> d!2126729 (= c!1257124 ((_ is EmptyExpr!16595) (regOne!33703 r!7292)))))

(declare-fun e!4087486 () Bool)

(assert (=> d!2126729 (= (matchRSpec!3696 (regOne!33703 r!7292) s!2326) e!4087486)))

(declare-fun b!6770022 () Bool)

(declare-fun c!1257126 () Bool)

(assert (=> b!6770022 (= c!1257126 ((_ is Union!16595) (regOne!33703 r!7292)))))

(declare-fun e!4087485 () Bool)

(declare-fun e!4087487 () Bool)

(assert (=> b!6770022 (= e!4087485 e!4087487)))

(declare-fun b!6770023 () Bool)

(declare-fun e!4087481 () Bool)

(assert (=> b!6770023 (= e!4087481 (matchRSpec!3696 (regTwo!33703 (regOne!33703 r!7292)) s!2326))))

(declare-fun b!6770024 () Bool)

(declare-fun e!4087483 () Bool)

(assert (=> b!6770024 (= e!4087486 e!4087483)))

(declare-fun res!2768038 () Bool)

(assert (=> b!6770024 (= res!2768038 (not ((_ is EmptyLang!16595) (regOne!33703 r!7292))))))

(assert (=> b!6770024 (=> (not res!2768038) (not e!4087483))))

(declare-fun b!6770025 () Bool)

(assert (=> b!6770025 (= e!4087487 e!4087481)))

(declare-fun res!2768039 () Bool)

(assert (=> b!6770025 (= res!2768039 (matchRSpec!3696 (regOne!33703 (regOne!33703 r!7292)) s!2326))))

(assert (=> b!6770025 (=> res!2768039 e!4087481)))

(declare-fun b!6770026 () Bool)

(assert (=> b!6770026 (= e!4087487 e!4087484)))

(assert (=> b!6770026 (= c!1257127 ((_ is Star!16595) (regOne!33703 r!7292)))))

(declare-fun bm!613530 () Bool)

(assert (=> bm!613530 (= call!613535 (isEmpty!38317 s!2326))))

(assert (=> b!6770027 (= e!4087484 call!613534)))

(declare-fun b!6770028 () Bool)

(assert (=> b!6770028 (= e!4087485 (= s!2326 (Cons!65960 (c!1256657 (regOne!33703 r!7292)) Nil!65960)))))

(declare-fun b!6770029 () Bool)

(declare-fun c!1257125 () Bool)

(assert (=> b!6770029 (= c!1257125 ((_ is ElementMatch!16595) (regOne!33703 r!7292)))))

(assert (=> b!6770029 (= e!4087483 e!4087485)))

(assert (=> b!6770030 (= e!4087482 call!613534)))

(declare-fun b!6770031 () Bool)

(assert (=> b!6770031 (= e!4087486 call!613535)))

(assert (= (and d!2126729 c!1257124) b!6770031))

(assert (= (and d!2126729 (not c!1257124)) b!6770024))

(assert (= (and b!6770024 res!2768038) b!6770029))

(assert (= (and b!6770029 c!1257125) b!6770028))

(assert (= (and b!6770029 (not c!1257125)) b!6770022))

(assert (= (and b!6770022 c!1257126) b!6770025))

(assert (= (and b!6770022 (not c!1257126)) b!6770026))

(assert (= (and b!6770025 (not res!2768039)) b!6770023))

(assert (= (and b!6770026 c!1257127) b!6770021))

(assert (= (and b!6770026 (not c!1257127)) b!6770027))

(assert (= (and b!6770021 (not res!2768040)) b!6770030))

(assert (= (or b!6770030 b!6770027) bm!613529))

(assert (= (or b!6770031 b!6770021) bm!613530))

(declare-fun m!7520574 () Bool)

(assert (=> bm!613529 m!7520574))

(declare-fun m!7520576 () Bool)

(assert (=> b!6770023 m!7520576))

(declare-fun m!7520578 () Bool)

(assert (=> b!6770025 m!7520578))

(assert (=> bm!613530 m!7519036))

(assert (=> b!6769008 d!2126729))

(declare-fun d!2126731 () Bool)

(assert (=> d!2126731 (= (isEmpty!38322 (tail!12691 (unfocusZipperList!2016 zl!343))) ((_ is Nil!65961) (tail!12691 (unfocusZipperList!2016 zl!343))))))

(assert (=> b!6768763 d!2126731))

(declare-fun d!2126733 () Bool)

(assert (=> d!2126733 (= (tail!12691 (unfocusZipperList!2016 zl!343)) (t!379794 (unfocusZipperList!2016 zl!343)))))

(assert (=> b!6768763 d!2126733))

(declare-fun d!2126735 () Bool)

(assert (=> d!2126735 (= (nullable!6576 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (nullableFct!2482 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))))))

(declare-fun bs!1801739 () Bool)

(assert (= bs!1801739 d!2126735))

(declare-fun m!7520580 () Bool)

(assert (=> bs!1801739 m!7520580))

(assert (=> b!6769001 d!2126735))

(declare-fun d!2126737 () Bool)

(assert (=> d!2126737 (= (head!13605 (_2!36873 lt!2443186)) (h!72408 (_2!36873 lt!2443186)))))

(assert (=> b!6769059 d!2126737))

(declare-fun d!2126739 () Bool)

(assert (=> d!2126739 (= (head!13605 s!2326) (h!72408 s!2326))))

(assert (=> b!6768946 d!2126739))

(declare-fun bs!1801740 () Bool)

(declare-fun d!2126741 () Bool)

(assert (= bs!1801740 (and d!2126741 d!2126273)))

(declare-fun lambda!380944 () Int)

(assert (=> bs!1801740 (= lambda!380944 lambda!380877)))

(declare-fun bs!1801741 () Bool)

(assert (= bs!1801741 (and d!2126741 d!2126205)))

(assert (=> bs!1801741 (= lambda!380944 lambda!380863)))

(declare-fun bs!1801742 () Bool)

(assert (= bs!1801742 (and d!2126741 d!2126289)))

(assert (=> bs!1801742 (= lambda!380944 lambda!380879)))

(declare-fun bs!1801743 () Bool)

(assert (= bs!1801743 (and d!2126741 d!2126321)))

(assert (=> bs!1801743 (= lambda!380944 lambda!380885)))

(declare-fun bs!1801744 () Bool)

(assert (= bs!1801744 (and d!2126741 d!2126709)))

(assert (=> bs!1801744 (= lambda!380944 lambda!380931)))

(declare-fun bs!1801745 () Bool)

(assert (= bs!1801745 (and d!2126741 d!2126711)))

(assert (=> bs!1801745 (= lambda!380944 lambda!380932)))

(declare-fun bs!1801746 () Bool)

(assert (= bs!1801746 (and d!2126741 d!2126689)))

(assert (=> bs!1801746 (= lambda!380944 lambda!380928)))

(declare-fun bs!1801747 () Bool)

(assert (= bs!1801747 (and d!2126741 d!2126233)))

(assert (=> bs!1801747 (= lambda!380944 lambda!380868)))

(assert (=> d!2126741 (= (inv!84734 setElem!46283) (forall!15789 (exprs!6479 setElem!46283) lambda!380944))))

(declare-fun bs!1801748 () Bool)

(assert (= bs!1801748 d!2126741))

(declare-fun m!7520582 () Bool)

(assert (=> bs!1801748 m!7520582))

(assert (=> setNonEmpty!46283 d!2126741))

(assert (=> b!6769052 d!2126655))

(declare-fun c!1257128 () Bool)

(declare-fun bm!613531 () Bool)

(declare-fun c!1257129 () Bool)

(declare-fun call!613538 () Bool)

(assert (=> bm!613531 (= call!613538 (validRegex!8331 (ite c!1257129 (reg!16924 (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))) (ite c!1257128 (regOne!33703 (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))) (regOne!33702 (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292))))))))))

(declare-fun b!6770033 () Bool)

(declare-fun res!2768045 () Bool)

(declare-fun e!4087489 () Bool)

(assert (=> b!6770033 (=> res!2768045 e!4087489)))

(assert (=> b!6770033 (= res!2768045 (not ((_ is Concat!25440) (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292))))))))

(declare-fun e!4087492 () Bool)

(assert (=> b!6770033 (= e!4087492 e!4087489)))

(declare-fun b!6770034 () Bool)

(declare-fun e!4087493 () Bool)

(assert (=> b!6770034 (= e!4087489 e!4087493)))

(declare-fun res!2768041 () Bool)

(assert (=> b!6770034 (=> (not res!2768041) (not e!4087493))))

(declare-fun call!613536 () Bool)

(assert (=> b!6770034 (= res!2768041 call!613536)))

(declare-fun b!6770035 () Bool)

(declare-fun res!2768043 () Bool)

(declare-fun e!4087488 () Bool)

(assert (=> b!6770035 (=> (not res!2768043) (not e!4087488))))

(assert (=> b!6770035 (= res!2768043 call!613536)))

(assert (=> b!6770035 (= e!4087492 e!4087488)))

(declare-fun b!6770036 () Bool)

(declare-fun call!613537 () Bool)

(assert (=> b!6770036 (= e!4087493 call!613537)))

(declare-fun b!6770037 () Bool)

(declare-fun e!4087491 () Bool)

(assert (=> b!6770037 (= e!4087491 e!4087492)))

(assert (=> b!6770037 (= c!1257128 ((_ is Union!16595) (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))))))

(declare-fun b!6770038 () Bool)

(assert (=> b!6770038 (= e!4087488 call!613537)))

(declare-fun bm!613532 () Bool)

(assert (=> bm!613532 (= call!613537 (validRegex!8331 (ite c!1257128 (regTwo!33703 (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))) (regTwo!33702 (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))))))))

(declare-fun b!6770039 () Bool)

(declare-fun e!4087494 () Bool)

(assert (=> b!6770039 (= e!4087494 call!613538)))

(declare-fun bm!613533 () Bool)

(assert (=> bm!613533 (= call!613536 call!613538)))

(declare-fun b!6770040 () Bool)

(declare-fun e!4087490 () Bool)

(assert (=> b!6770040 (= e!4087490 e!4087491)))

(assert (=> b!6770040 (= c!1257129 ((_ is Star!16595) (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))))))

(declare-fun b!6770032 () Bool)

(assert (=> b!6770032 (= e!4087491 e!4087494)))

(declare-fun res!2768044 () Bool)

(assert (=> b!6770032 (= res!2768044 (not (nullable!6576 (reg!16924 (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))))))))

(assert (=> b!6770032 (=> (not res!2768044) (not e!4087494))))

(declare-fun d!2126743 () Bool)

(declare-fun res!2768042 () Bool)

(assert (=> d!2126743 (=> res!2768042 e!4087490)))

(assert (=> d!2126743 (= res!2768042 ((_ is ElementMatch!16595) (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))))))

(assert (=> d!2126743 (= (validRegex!8331 (ite c!1256813 (reg!16924 r!7292) (ite c!1256812 (regOne!33703 r!7292) (regOne!33702 r!7292)))) e!4087490)))

(assert (= (and d!2126743 (not res!2768042)) b!6770040))

(assert (= (and b!6770040 c!1257129) b!6770032))

(assert (= (and b!6770040 (not c!1257129)) b!6770037))

(assert (= (and b!6770032 res!2768044) b!6770039))

(assert (= (and b!6770037 c!1257128) b!6770035))

(assert (= (and b!6770037 (not c!1257128)) b!6770033))

(assert (= (and b!6770035 res!2768043) b!6770038))

(assert (= (and b!6770033 (not res!2768045)) b!6770034))

(assert (= (and b!6770034 res!2768041) b!6770036))

(assert (= (or b!6770038 b!6770036) bm!613532))

(assert (= (or b!6770035 b!6770034) bm!613533))

(assert (= (or b!6770039 bm!613533) bm!613531))

(declare-fun m!7520584 () Bool)

(assert (=> bm!613531 m!7520584))

(declare-fun m!7520586 () Bool)

(assert (=> bm!613532 m!7520586))

(declare-fun m!7520588 () Bool)

(assert (=> b!6770032 m!7520588))

(assert (=> bm!613324 d!2126743))

(declare-fun d!2126745 () Bool)

(declare-fun c!1257132 () Bool)

(assert (=> d!2126745 (= c!1257132 ((_ is Nil!65962) lt!2443287))))

(declare-fun e!4087497 () (InoxSet Context!11958))

(assert (=> d!2126745 (= (content!12840 lt!2443287) e!4087497)))

(declare-fun b!6770045 () Bool)

(assert (=> b!6770045 (= e!4087497 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770046 () Bool)

(assert (=> b!6770046 (= e!4087497 ((_ map or) (store ((as const (Array Context!11958 Bool)) false) (h!72410 lt!2443287) true) (content!12840 (t!379795 lt!2443287))))))

(assert (= (and d!2126745 c!1257132) b!6770045))

(assert (= (and d!2126745 (not c!1257132)) b!6770046))

(declare-fun m!7520590 () Bool)

(assert (=> b!6770046 m!7520590))

(declare-fun m!7520592 () Bool)

(assert (=> b!6770046 m!7520592))

(assert (=> b!6768677 d!2126745))

(assert (=> bs!1801328 d!2126275))

(declare-fun d!2126747 () Bool)

(assert (=> d!2126747 true))

(assert (=> d!2126747 true))

(declare-fun res!2768048 () Bool)

(assert (=> d!2126747 (= (choose!50436 lambda!380800) res!2768048)))

(assert (=> d!2126141 d!2126747))

(declare-fun d!2126749 () Bool)

(declare-fun lambda!380947 () Int)

(declare-fun exists!2717 ((InoxSet Context!11958) Int) Bool)

(assert (=> d!2126749 (= (nullableZipper!2303 lt!2443188) (exists!2717 lt!2443188 lambda!380947))))

(declare-fun bs!1801749 () Bool)

(assert (= bs!1801749 d!2126749))

(declare-fun m!7520594 () Bool)

(assert (=> bs!1801749 m!7520594))

(assert (=> b!6768284 d!2126749))

(assert (=> d!2126099 d!2126157))

(assert (=> d!2126267 d!2126157))

(declare-fun c!1257136 () Bool)

(declare-fun c!1257135 () Bool)

(declare-fun call!613541 () Bool)

(declare-fun bm!613534 () Bool)

(assert (=> bm!613534 (= call!613541 (validRegex!8331 (ite c!1257136 (reg!16924 lt!2443204) (ite c!1257135 (regOne!33703 lt!2443204) (regOne!33702 lt!2443204)))))))

(declare-fun b!6770048 () Bool)

(declare-fun res!2768053 () Bool)

(declare-fun e!4087499 () Bool)

(assert (=> b!6770048 (=> res!2768053 e!4087499)))

(assert (=> b!6770048 (= res!2768053 (not ((_ is Concat!25440) lt!2443204)))))

(declare-fun e!4087502 () Bool)

(assert (=> b!6770048 (= e!4087502 e!4087499)))

(declare-fun b!6770049 () Bool)

(declare-fun e!4087503 () Bool)

(assert (=> b!6770049 (= e!4087499 e!4087503)))

(declare-fun res!2768049 () Bool)

(assert (=> b!6770049 (=> (not res!2768049) (not e!4087503))))

(declare-fun call!613539 () Bool)

(assert (=> b!6770049 (= res!2768049 call!613539)))

(declare-fun b!6770050 () Bool)

(declare-fun res!2768051 () Bool)

(declare-fun e!4087498 () Bool)

(assert (=> b!6770050 (=> (not res!2768051) (not e!4087498))))

(assert (=> b!6770050 (= res!2768051 call!613539)))

(assert (=> b!6770050 (= e!4087502 e!4087498)))

(declare-fun b!6770051 () Bool)

(declare-fun call!613540 () Bool)

(assert (=> b!6770051 (= e!4087503 call!613540)))

(declare-fun b!6770052 () Bool)

(declare-fun e!4087501 () Bool)

(assert (=> b!6770052 (= e!4087501 e!4087502)))

(assert (=> b!6770052 (= c!1257135 ((_ is Union!16595) lt!2443204))))

(declare-fun b!6770053 () Bool)

(assert (=> b!6770053 (= e!4087498 call!613540)))

(declare-fun bm!613535 () Bool)

(assert (=> bm!613535 (= call!613540 (validRegex!8331 (ite c!1257135 (regTwo!33703 lt!2443204) (regTwo!33702 lt!2443204))))))

(declare-fun b!6770054 () Bool)

(declare-fun e!4087504 () Bool)

(assert (=> b!6770054 (= e!4087504 call!613541)))

(declare-fun bm!613536 () Bool)

(assert (=> bm!613536 (= call!613539 call!613541)))

(declare-fun b!6770055 () Bool)

(declare-fun e!4087500 () Bool)

(assert (=> b!6770055 (= e!4087500 e!4087501)))

(assert (=> b!6770055 (= c!1257136 ((_ is Star!16595) lt!2443204))))

(declare-fun b!6770047 () Bool)

(assert (=> b!6770047 (= e!4087501 e!4087504)))

(declare-fun res!2768052 () Bool)

(assert (=> b!6770047 (= res!2768052 (not (nullable!6576 (reg!16924 lt!2443204))))))

(assert (=> b!6770047 (=> (not res!2768052) (not e!4087504))))

(declare-fun d!2126751 () Bool)

(declare-fun res!2768050 () Bool)

(assert (=> d!2126751 (=> res!2768050 e!4087500)))

(assert (=> d!2126751 (= res!2768050 ((_ is ElementMatch!16595) lt!2443204))))

(assert (=> d!2126751 (= (validRegex!8331 lt!2443204) e!4087500)))

(assert (= (and d!2126751 (not res!2768050)) b!6770055))

(assert (= (and b!6770055 c!1257136) b!6770047))

(assert (= (and b!6770055 (not c!1257136)) b!6770052))

(assert (= (and b!6770047 res!2768052) b!6770054))

(assert (= (and b!6770052 c!1257135) b!6770050))

(assert (= (and b!6770052 (not c!1257135)) b!6770048))

(assert (= (and b!6770050 res!2768051) b!6770053))

(assert (= (and b!6770048 (not res!2768053)) b!6770049))

(assert (= (and b!6770049 res!2768049) b!6770051))

(assert (= (or b!6770053 b!6770051) bm!613535))

(assert (= (or b!6770050 b!6770049) bm!613536))

(assert (= (or b!6770054 bm!613536) bm!613534))

(declare-fun m!7520596 () Bool)

(assert (=> bm!613534 m!7520596))

(declare-fun m!7520598 () Bool)

(assert (=> bm!613535 m!7520598))

(declare-fun m!7520600 () Bool)

(assert (=> b!6770047 m!7520600))

(assert (=> d!2126267 d!2126751))

(assert (=> d!2126279 d!2126283))

(declare-fun d!2126753 () Bool)

(assert (=> d!2126753 (= (flatMap!2076 lt!2443206 lambda!380803) (dynLambda!26318 lambda!380803 lt!2443210))))

(assert (=> d!2126753 true))

(declare-fun _$13!4154 () Unit!159881)

(assert (=> d!2126753 (= (choose!50435 lt!2443206 lt!2443210 lambda!380803) _$13!4154)))

(declare-fun b_lambda!254931 () Bool)

(assert (=> (not b_lambda!254931) (not d!2126753)))

(declare-fun bs!1801750 () Bool)

(assert (= bs!1801750 d!2126753))

(assert (=> bs!1801750 m!7519078))

(assert (=> bs!1801750 m!7519610))

(assert (=> d!2126279 d!2126753))

(declare-fun b!6770056 () Bool)

(declare-fun c!1257139 () Bool)

(assert (=> b!6770056 (= c!1257139 ((_ is Star!16595) (h!72409 (exprs!6479 lt!2443210))))))

(declare-fun e!4087506 () (InoxSet Context!11958))

(declare-fun e!4087507 () (InoxSet Context!11958))

(assert (=> b!6770056 (= e!4087506 e!4087507)))

(declare-fun b!6770057 () Bool)

(declare-fun e!4087509 () (InoxSet Context!11958))

(declare-fun call!613546 () (InoxSet Context!11958))

(declare-fun call!613544 () (InoxSet Context!11958))

(assert (=> b!6770057 (= e!4087509 ((_ map or) call!613546 call!613544))))

(declare-fun b!6770058 () Bool)

(declare-fun e!4087508 () (InoxSet Context!11958))

(assert (=> b!6770058 (= e!4087508 (store ((as const (Array Context!11958 Bool)) false) (Context!11959 (t!379794 (exprs!6479 lt!2443210))) true))))

(declare-fun b!6770059 () Bool)

(declare-fun call!613543 () (InoxSet Context!11958))

(assert (=> b!6770059 (= e!4087507 call!613543)))

(declare-fun bm!613537 () Bool)

(declare-fun call!613547 () (InoxSet Context!11958))

(assert (=> bm!613537 (= call!613547 call!613546)))

(declare-fun bm!613538 () Bool)

(assert (=> bm!613538 (= call!613543 call!613547)))

(declare-fun b!6770060 () Bool)

(declare-fun e!4087510 () (InoxSet Context!11958))

(assert (=> b!6770060 (= e!4087510 ((_ map or) call!613544 call!613547))))

(declare-fun b!6770061 () Bool)

(declare-fun e!4087505 () Bool)

(assert (=> b!6770061 (= e!4087505 (nullable!6576 (regOne!33702 (h!72409 (exprs!6479 lt!2443210)))))))

(declare-fun d!2126755 () Bool)

(declare-fun c!1257140 () Bool)

(assert (=> d!2126755 (= c!1257140 (and ((_ is ElementMatch!16595) (h!72409 (exprs!6479 lt!2443210))) (= (c!1256657 (h!72409 (exprs!6479 lt!2443210))) (h!72408 s!2326))))))

(assert (=> d!2126755 (= (derivationStepZipperDown!1823 (h!72409 (exprs!6479 lt!2443210)) (Context!11959 (t!379794 (exprs!6479 lt!2443210))) (h!72408 s!2326)) e!4087508)))

(declare-fun b!6770062 () Bool)

(assert (=> b!6770062 (= e!4087507 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770063 () Bool)

(assert (=> b!6770063 (= e!4087506 call!613543)))

(declare-fun b!6770064 () Bool)

(declare-fun c!1257138 () Bool)

(assert (=> b!6770064 (= c!1257138 e!4087505)))

(declare-fun res!2768054 () Bool)

(assert (=> b!6770064 (=> (not res!2768054) (not e!4087505))))

(assert (=> b!6770064 (= res!2768054 ((_ is Concat!25440) (h!72409 (exprs!6479 lt!2443210))))))

(assert (=> b!6770064 (= e!4087509 e!4087510)))

(declare-fun bm!613539 () Bool)

(declare-fun call!613542 () List!66085)

(declare-fun call!613545 () List!66085)

(assert (=> bm!613539 (= call!613542 call!613545)))

(declare-fun c!1257137 () Bool)

(declare-fun bm!613540 () Bool)

(declare-fun c!1257141 () Bool)

(assert (=> bm!613540 (= call!613546 (derivationStepZipperDown!1823 (ite c!1257137 (regOne!33703 (h!72409 (exprs!6479 lt!2443210))) (ite c!1257138 (regTwo!33702 (h!72409 (exprs!6479 lt!2443210))) (ite c!1257141 (regOne!33702 (h!72409 (exprs!6479 lt!2443210))) (reg!16924 (h!72409 (exprs!6479 lt!2443210)))))) (ite (or c!1257137 c!1257138) (Context!11959 (t!379794 (exprs!6479 lt!2443210))) (Context!11959 call!613542)) (h!72408 s!2326)))))

(declare-fun b!6770065 () Bool)

(assert (=> b!6770065 (= e!4087510 e!4087506)))

(assert (=> b!6770065 (= c!1257141 ((_ is Concat!25440) (h!72409 (exprs!6479 lt!2443210))))))

(declare-fun b!6770066 () Bool)

(assert (=> b!6770066 (= e!4087508 e!4087509)))

(assert (=> b!6770066 (= c!1257137 ((_ is Union!16595) (h!72409 (exprs!6479 lt!2443210))))))

(declare-fun bm!613541 () Bool)

(assert (=> bm!613541 (= call!613544 (derivationStepZipperDown!1823 (ite c!1257137 (regTwo!33703 (h!72409 (exprs!6479 lt!2443210))) (regOne!33702 (h!72409 (exprs!6479 lt!2443210)))) (ite c!1257137 (Context!11959 (t!379794 (exprs!6479 lt!2443210))) (Context!11959 call!613545)) (h!72408 s!2326)))))

(declare-fun bm!613542 () Bool)

(assert (=> bm!613542 (= call!613545 ($colon$colon!2406 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443210)))) (ite (or c!1257138 c!1257141) (regTwo!33702 (h!72409 (exprs!6479 lt!2443210))) (h!72409 (exprs!6479 lt!2443210)))))))

(assert (= (and d!2126755 c!1257140) b!6770058))

(assert (= (and d!2126755 (not c!1257140)) b!6770066))

(assert (= (and b!6770066 c!1257137) b!6770057))

(assert (= (and b!6770066 (not c!1257137)) b!6770064))

(assert (= (and b!6770064 res!2768054) b!6770061))

(assert (= (and b!6770064 c!1257138) b!6770060))

(assert (= (and b!6770064 (not c!1257138)) b!6770065))

(assert (= (and b!6770065 c!1257141) b!6770063))

(assert (= (and b!6770065 (not c!1257141)) b!6770056))

(assert (= (and b!6770056 c!1257139) b!6770059))

(assert (= (and b!6770056 (not c!1257139)) b!6770062))

(assert (= (or b!6770063 b!6770059) bm!613539))

(assert (= (or b!6770063 b!6770059) bm!613538))

(assert (= (or b!6770060 bm!613539) bm!613542))

(assert (= (or b!6770060 bm!613538) bm!613537))

(assert (= (or b!6770057 b!6770060) bm!613541))

(assert (= (or b!6770057 bm!613537) bm!613540))

(declare-fun m!7520602 () Bool)

(assert (=> bm!613542 m!7520602))

(declare-fun m!7520604 () Bool)

(assert (=> bm!613541 m!7520604))

(declare-fun m!7520606 () Bool)

(assert (=> bm!613540 m!7520606))

(declare-fun m!7520608 () Bool)

(assert (=> b!6770058 m!7520608))

(declare-fun m!7520610 () Bool)

(assert (=> b!6770061 m!7520610))

(assert (=> bm!613337 d!2126755))

(declare-fun b!6770067 () Bool)

(declare-fun res!2768058 () Bool)

(declare-fun e!4087513 () Bool)

(assert (=> b!6770067 (=> (not res!2768058) (not e!4087513))))

(declare-fun call!613548 () Bool)

(assert (=> b!6770067 (= res!2768058 (not call!613548))))

(declare-fun b!6770068 () Bool)

(declare-fun res!2768060 () Bool)

(assert (=> b!6770068 (=> (not res!2768060) (not e!4087513))))

(assert (=> b!6770068 (= res!2768060 (isEmpty!38317 (tail!12690 (tail!12690 s!2326))))))

(declare-fun b!6770069 () Bool)

(declare-fun res!2768057 () Bool)

(declare-fun e!4087515 () Bool)

(assert (=> b!6770069 (=> res!2768057 e!4087515)))

(assert (=> b!6770069 (= res!2768057 (not (isEmpty!38317 (tail!12690 (tail!12690 s!2326)))))))

(declare-fun b!6770070 () Bool)

(declare-fun e!4087514 () Bool)

(declare-fun lt!2443374 () Bool)

(assert (=> b!6770070 (= e!4087514 (not lt!2443374))))

(declare-fun b!6770071 () Bool)

(assert (=> b!6770071 (= e!4087513 (= (head!13605 (tail!12690 s!2326)) (c!1256657 (derivativeStep!5261 lt!2443204 (head!13605 s!2326)))))))

(declare-fun b!6770072 () Bool)

(declare-fun e!4087517 () Bool)

(assert (=> b!6770072 (= e!4087517 e!4087515)))

(declare-fun res!2768055 () Bool)

(assert (=> b!6770072 (=> res!2768055 e!4087515)))

(assert (=> b!6770072 (= res!2768055 call!613548)))

(declare-fun b!6770073 () Bool)

(declare-fun e!4087511 () Bool)

(assert (=> b!6770073 (= e!4087511 (nullable!6576 (derivativeStep!5261 lt!2443204 (head!13605 s!2326))))))

(declare-fun b!6770074 () Bool)

(declare-fun res!2768056 () Bool)

(declare-fun e!4087512 () Bool)

(assert (=> b!6770074 (=> res!2768056 e!4087512)))

(assert (=> b!6770074 (= res!2768056 (not ((_ is ElementMatch!16595) (derivativeStep!5261 lt!2443204 (head!13605 s!2326)))))))

(assert (=> b!6770074 (= e!4087514 e!4087512)))

(declare-fun b!6770076 () Bool)

(assert (=> b!6770076 (= e!4087512 e!4087517)))

(declare-fun res!2768059 () Bool)

(assert (=> b!6770076 (=> (not res!2768059) (not e!4087517))))

(assert (=> b!6770076 (= res!2768059 (not lt!2443374))))

(declare-fun b!6770077 () Bool)

(declare-fun e!4087516 () Bool)

(assert (=> b!6770077 (= e!4087516 (= lt!2443374 call!613548))))

(declare-fun bm!613543 () Bool)

(assert (=> bm!613543 (= call!613548 (isEmpty!38317 (tail!12690 s!2326)))))

(declare-fun b!6770078 () Bool)

(declare-fun res!2768061 () Bool)

(assert (=> b!6770078 (=> res!2768061 e!4087512)))

(assert (=> b!6770078 (= res!2768061 e!4087513)))

(declare-fun res!2768062 () Bool)

(assert (=> b!6770078 (=> (not res!2768062) (not e!4087513))))

(assert (=> b!6770078 (= res!2768062 lt!2443374)))

(declare-fun b!6770079 () Bool)

(assert (=> b!6770079 (= e!4087511 (matchR!8778 (derivativeStep!5261 (derivativeStep!5261 lt!2443204 (head!13605 s!2326)) (head!13605 (tail!12690 s!2326))) (tail!12690 (tail!12690 s!2326))))))

(declare-fun b!6770080 () Bool)

(assert (=> b!6770080 (= e!4087515 (not (= (head!13605 (tail!12690 s!2326)) (c!1256657 (derivativeStep!5261 lt!2443204 (head!13605 s!2326))))))))

(declare-fun d!2126757 () Bool)

(assert (=> d!2126757 e!4087516))

(declare-fun c!1257142 () Bool)

(assert (=> d!2126757 (= c!1257142 ((_ is EmptyExpr!16595) (derivativeStep!5261 lt!2443204 (head!13605 s!2326))))))

(assert (=> d!2126757 (= lt!2443374 e!4087511)))

(declare-fun c!1257144 () Bool)

(assert (=> d!2126757 (= c!1257144 (isEmpty!38317 (tail!12690 s!2326)))))

(assert (=> d!2126757 (validRegex!8331 (derivativeStep!5261 lt!2443204 (head!13605 s!2326)))))

(assert (=> d!2126757 (= (matchR!8778 (derivativeStep!5261 lt!2443204 (head!13605 s!2326)) (tail!12690 s!2326)) lt!2443374)))

(declare-fun b!6770075 () Bool)

(assert (=> b!6770075 (= e!4087516 e!4087514)))

(declare-fun c!1257143 () Bool)

(assert (=> b!6770075 (= c!1257143 ((_ is EmptyLang!16595) (derivativeStep!5261 lt!2443204 (head!13605 s!2326))))))

(assert (= (and d!2126757 c!1257144) b!6770073))

(assert (= (and d!2126757 (not c!1257144)) b!6770079))

(assert (= (and d!2126757 c!1257142) b!6770077))

(assert (= (and d!2126757 (not c!1257142)) b!6770075))

(assert (= (and b!6770075 c!1257143) b!6770070))

(assert (= (and b!6770075 (not c!1257143)) b!6770074))

(assert (= (and b!6770074 (not res!2768056)) b!6770078))

(assert (= (and b!6770078 res!2768062) b!6770067))

(assert (= (and b!6770067 res!2768058) b!6770068))

(assert (= (and b!6770068 res!2768060) b!6770071))

(assert (= (and b!6770078 (not res!2768061)) b!6770076))

(assert (= (and b!6770076 res!2768059) b!6770072))

(assert (= (and b!6770072 (not res!2768055)) b!6770069))

(assert (= (and b!6770069 (not res!2768057)) b!6770080))

(assert (= (or b!6770077 b!6770067 b!6770072) bm!613543))

(assert (=> b!6770080 m!7519104))

(declare-fun m!7520612 () Bool)

(assert (=> b!6770080 m!7520612))

(assert (=> bm!613543 m!7519104))

(assert (=> bm!613543 m!7519582))

(assert (=> b!6770069 m!7519104))

(declare-fun m!7520614 () Bool)

(assert (=> b!6770069 m!7520614))

(assert (=> b!6770069 m!7520614))

(declare-fun m!7520616 () Bool)

(assert (=> b!6770069 m!7520616))

(assert (=> b!6770079 m!7519104))

(assert (=> b!6770079 m!7520612))

(assert (=> b!6770079 m!7519584))

(assert (=> b!6770079 m!7520612))

(declare-fun m!7520618 () Bool)

(assert (=> b!6770079 m!7520618))

(assert (=> b!6770079 m!7519104))

(assert (=> b!6770079 m!7520614))

(assert (=> b!6770079 m!7520618))

(assert (=> b!6770079 m!7520614))

(declare-fun m!7520620 () Bool)

(assert (=> b!6770079 m!7520620))

(assert (=> b!6770073 m!7519584))

(declare-fun m!7520622 () Bool)

(assert (=> b!6770073 m!7520622))

(assert (=> b!6770068 m!7519104))

(assert (=> b!6770068 m!7520614))

(assert (=> b!6770068 m!7520614))

(assert (=> b!6770068 m!7520616))

(assert (=> b!6770071 m!7519104))

(assert (=> b!6770071 m!7520612))

(assert (=> d!2126757 m!7519104))

(assert (=> d!2126757 m!7519582))

(assert (=> d!2126757 m!7519584))

(declare-fun m!7520624 () Bool)

(assert (=> d!2126757 m!7520624))

(assert (=> b!6768954 d!2126757))

(declare-fun b!6770101 () Bool)

(declare-fun e!4087530 () Regex!16595)

(declare-fun e!4087531 () Regex!16595)

(assert (=> b!6770101 (= e!4087530 e!4087531)))

(declare-fun c!1257157 () Bool)

(assert (=> b!6770101 (= c!1257157 ((_ is Star!16595) lt!2443204))))

(declare-fun b!6770102 () Bool)

(declare-fun e!4087528 () Regex!16595)

(assert (=> b!6770102 (= e!4087528 (ite (= (head!13605 s!2326) (c!1256657 lt!2443204)) EmptyExpr!16595 EmptyLang!16595))))

(declare-fun bm!613552 () Bool)

(declare-fun call!613559 () Regex!16595)

(declare-fun call!613558 () Regex!16595)

(assert (=> bm!613552 (= call!613559 call!613558)))

(declare-fun e!4087532 () Regex!16595)

(declare-fun call!613560 () Regex!16595)

(declare-fun call!613557 () Regex!16595)

(declare-fun b!6770103 () Bool)

(assert (=> b!6770103 (= e!4087532 (Union!16595 (Concat!25440 call!613557 (regTwo!33702 lt!2443204)) call!613560))))

(declare-fun b!6770104 () Bool)

(assert (=> b!6770104 (= e!4087530 (Union!16595 call!613557 call!613558))))

(declare-fun b!6770105 () Bool)

(declare-fun c!1257159 () Bool)

(assert (=> b!6770105 (= c!1257159 (nullable!6576 (regOne!33702 lt!2443204)))))

(assert (=> b!6770105 (= e!4087531 e!4087532)))

(declare-fun b!6770106 () Bool)

(declare-fun c!1257158 () Bool)

(assert (=> b!6770106 (= c!1257158 ((_ is Union!16595) lt!2443204))))

(assert (=> b!6770106 (= e!4087528 e!4087530)))

(declare-fun b!6770107 () Bool)

(assert (=> b!6770107 (= e!4087532 (Union!16595 (Concat!25440 call!613560 (regTwo!33702 lt!2443204)) EmptyLang!16595))))

(declare-fun bm!613553 () Bool)

(assert (=> bm!613553 (= call!613558 (derivativeStep!5261 (ite c!1257158 (regTwo!33703 lt!2443204) (ite c!1257157 (reg!16924 lt!2443204) (ite c!1257159 (regTwo!33702 lt!2443204) (regOne!33702 lt!2443204)))) (head!13605 s!2326)))))

(declare-fun b!6770108 () Bool)

(assert (=> b!6770108 (= e!4087531 (Concat!25440 call!613559 lt!2443204))))

(declare-fun d!2126759 () Bool)

(declare-fun lt!2443377 () Regex!16595)

(assert (=> d!2126759 (validRegex!8331 lt!2443377)))

(declare-fun e!4087529 () Regex!16595)

(assert (=> d!2126759 (= lt!2443377 e!4087529)))

(declare-fun c!1257155 () Bool)

(assert (=> d!2126759 (= c!1257155 (or ((_ is EmptyExpr!16595) lt!2443204) ((_ is EmptyLang!16595) lt!2443204)))))

(assert (=> d!2126759 (validRegex!8331 lt!2443204)))

(assert (=> d!2126759 (= (derivativeStep!5261 lt!2443204 (head!13605 s!2326)) lt!2443377)))

(declare-fun b!6770109 () Bool)

(assert (=> b!6770109 (= e!4087529 EmptyLang!16595)))

(declare-fun b!6770110 () Bool)

(assert (=> b!6770110 (= e!4087529 e!4087528)))

(declare-fun c!1257156 () Bool)

(assert (=> b!6770110 (= c!1257156 ((_ is ElementMatch!16595) lt!2443204))))

(declare-fun bm!613554 () Bool)

(assert (=> bm!613554 (= call!613560 call!613559)))

(declare-fun bm!613555 () Bool)

(assert (=> bm!613555 (= call!613557 (derivativeStep!5261 (ite c!1257158 (regOne!33703 lt!2443204) (regOne!33702 lt!2443204)) (head!13605 s!2326)))))

(assert (= (and d!2126759 c!1257155) b!6770109))

(assert (= (and d!2126759 (not c!1257155)) b!6770110))

(assert (= (and b!6770110 c!1257156) b!6770102))

(assert (= (and b!6770110 (not c!1257156)) b!6770106))

(assert (= (and b!6770106 c!1257158) b!6770104))

(assert (= (and b!6770106 (not c!1257158)) b!6770101))

(assert (= (and b!6770101 c!1257157) b!6770108))

(assert (= (and b!6770101 (not c!1257157)) b!6770105))

(assert (= (and b!6770105 c!1257159) b!6770103))

(assert (= (and b!6770105 (not c!1257159)) b!6770107))

(assert (= (or b!6770103 b!6770107) bm!613554))

(assert (= (or b!6770108 bm!613554) bm!613552))

(assert (= (or b!6770104 bm!613552) bm!613553))

(assert (= (or b!6770104 b!6770103) bm!613555))

(declare-fun m!7520626 () Bool)

(assert (=> b!6770105 m!7520626))

(assert (=> bm!613553 m!7519100))

(declare-fun m!7520628 () Bool)

(assert (=> bm!613553 m!7520628))

(declare-fun m!7520630 () Bool)

(assert (=> d!2126759 m!7520630))

(assert (=> d!2126759 m!7519590))

(assert (=> bm!613555 m!7519100))

(declare-fun m!7520632 () Bool)

(assert (=> bm!613555 m!7520632))

(assert (=> b!6768954 d!2126759))

(assert (=> b!6768954 d!2126739))

(assert (=> b!6768954 d!2126677))

(assert (=> b!6769048 d!2126671))

(assert (=> b!6769048 d!2126673))

(declare-fun d!2126761 () Bool)

(assert (=> d!2126761 true))

(declare-fun setRes!46294 () Bool)

(assert (=> d!2126761 setRes!46294))

(declare-fun condSetEmpty!46294 () Bool)

(declare-fun res!2768063 () (InoxSet Context!11958))

(assert (=> d!2126761 (= condSetEmpty!46294 (= res!2768063 ((as const (Array Context!11958 Bool)) false)))))

(assert (=> d!2126761 (= (choose!50434 lt!2443198 lambda!380803) res!2768063)))

(declare-fun setIsEmpty!46294 () Bool)

(assert (=> setIsEmpty!46294 setRes!46294))

(declare-fun setElem!46294 () Context!11958)

(declare-fun setNonEmpty!46294 () Bool)

(declare-fun tp!1855038 () Bool)

(declare-fun e!4087533 () Bool)

(assert (=> setNonEmpty!46294 (= setRes!46294 (and tp!1855038 (inv!84734 setElem!46294) e!4087533))))

(declare-fun setRest!46294 () (InoxSet Context!11958))

(assert (=> setNonEmpty!46294 (= res!2768063 ((_ map or) (store ((as const (Array Context!11958 Bool)) false) setElem!46294 true) setRest!46294))))

(declare-fun b!6770111 () Bool)

(declare-fun tp!1855039 () Bool)

(assert (=> b!6770111 (= e!4087533 tp!1855039)))

(assert (= (and d!2126761 condSetEmpty!46294) setIsEmpty!46294))

(assert (= (and d!2126761 (not condSetEmpty!46294)) setNonEmpty!46294))

(assert (= setNonEmpty!46294 b!6770111))

(declare-fun m!7520634 () Bool)

(assert (=> setNonEmpty!46294 m!7520634))

(assert (=> d!2126287 d!2126761))

(assert (=> d!2126127 d!2126117))

(declare-fun d!2126763 () Bool)

(assert (=> d!2126763 (= (flatMap!2076 z!1189 lambda!380803) (dynLambda!26318 lambda!380803 (h!72410 zl!343)))))

(assert (=> d!2126763 true))

(declare-fun _$13!4155 () Unit!159881)

(assert (=> d!2126763 (= (choose!50435 z!1189 (h!72410 zl!343) lambda!380803) _$13!4155)))

(declare-fun b_lambda!254933 () Bool)

(assert (=> (not b_lambda!254933) (not d!2126763)))

(declare-fun bs!1801751 () Bool)

(assert (= bs!1801751 d!2126763))

(assert (=> bs!1801751 m!7518982))

(assert (=> bs!1801751 m!7519202))

(assert (=> d!2126127 d!2126763))

(assert (=> d!2126269 d!2126267))

(assert (=> d!2126269 d!2126265))

(declare-fun d!2126765 () Bool)

(assert (=> d!2126765 (= (matchR!8778 lt!2443204 s!2326) (matchRSpec!3696 lt!2443204 s!2326))))

(assert (=> d!2126765 true))

(declare-fun _$88!5549 () Unit!159881)

(assert (=> d!2126765 (= (choose!50445 lt!2443204 s!2326) _$88!5549)))

(declare-fun bs!1801752 () Bool)

(assert (= bs!1801752 d!2126765))

(assert (=> bs!1801752 m!7519054))

(assert (=> bs!1801752 m!7519052))

(assert (=> d!2126269 d!2126765))

(assert (=> d!2126269 d!2126751))

(declare-fun d!2126767 () Bool)

(assert (=> d!2126767 (= (isEmptyExpr!1955 lt!2443328) ((_ is EmptyExpr!16595) lt!2443328))))

(assert (=> b!6769099 d!2126767))

(declare-fun c!1257160 () Bool)

(declare-fun c!1257161 () Bool)

(declare-fun call!613563 () Bool)

(declare-fun bm!613556 () Bool)

(assert (=> bm!613556 (= call!613563 (validRegex!8331 (ite c!1257161 (reg!16924 lt!2443306) (ite c!1257160 (regOne!33703 lt!2443306) (regOne!33702 lt!2443306)))))))

(declare-fun b!6770113 () Bool)

(declare-fun res!2768068 () Bool)

(declare-fun e!4087535 () Bool)

(assert (=> b!6770113 (=> res!2768068 e!4087535)))

(assert (=> b!6770113 (= res!2768068 (not ((_ is Concat!25440) lt!2443306)))))

(declare-fun e!4087538 () Bool)

(assert (=> b!6770113 (= e!4087538 e!4087535)))

(declare-fun b!6770114 () Bool)

(declare-fun e!4087539 () Bool)

(assert (=> b!6770114 (= e!4087535 e!4087539)))

(declare-fun res!2768064 () Bool)

(assert (=> b!6770114 (=> (not res!2768064) (not e!4087539))))

(declare-fun call!613561 () Bool)

(assert (=> b!6770114 (= res!2768064 call!613561)))

(declare-fun b!6770115 () Bool)

(declare-fun res!2768066 () Bool)

(declare-fun e!4087534 () Bool)

(assert (=> b!6770115 (=> (not res!2768066) (not e!4087534))))

(assert (=> b!6770115 (= res!2768066 call!613561)))

(assert (=> b!6770115 (= e!4087538 e!4087534)))

(declare-fun b!6770116 () Bool)

(declare-fun call!613562 () Bool)

(assert (=> b!6770116 (= e!4087539 call!613562)))

(declare-fun b!6770117 () Bool)

(declare-fun e!4087537 () Bool)

(assert (=> b!6770117 (= e!4087537 e!4087538)))

(assert (=> b!6770117 (= c!1257160 ((_ is Union!16595) lt!2443306))))

(declare-fun b!6770118 () Bool)

(assert (=> b!6770118 (= e!4087534 call!613562)))

(declare-fun bm!613557 () Bool)

(assert (=> bm!613557 (= call!613562 (validRegex!8331 (ite c!1257160 (regTwo!33703 lt!2443306) (regTwo!33702 lt!2443306))))))

(declare-fun b!6770119 () Bool)

(declare-fun e!4087540 () Bool)

(assert (=> b!6770119 (= e!4087540 call!613563)))

(declare-fun bm!613558 () Bool)

(assert (=> bm!613558 (= call!613561 call!613563)))

(declare-fun b!6770120 () Bool)

(declare-fun e!4087536 () Bool)

(assert (=> b!6770120 (= e!4087536 e!4087537)))

(assert (=> b!6770120 (= c!1257161 ((_ is Star!16595) lt!2443306))))

(declare-fun b!6770112 () Bool)

(assert (=> b!6770112 (= e!4087537 e!4087540)))

(declare-fun res!2768067 () Bool)

(assert (=> b!6770112 (= res!2768067 (not (nullable!6576 (reg!16924 lt!2443306))))))

(assert (=> b!6770112 (=> (not res!2768067) (not e!4087540))))

(declare-fun d!2126769 () Bool)

(declare-fun res!2768065 () Bool)

(assert (=> d!2126769 (=> res!2768065 e!4087536)))

(assert (=> d!2126769 (= res!2768065 ((_ is ElementMatch!16595) lt!2443306))))

(assert (=> d!2126769 (= (validRegex!8331 lt!2443306) e!4087536)))

(assert (= (and d!2126769 (not res!2768065)) b!6770120))

(assert (= (and b!6770120 c!1257161) b!6770112))

(assert (= (and b!6770120 (not c!1257161)) b!6770117))

(assert (= (and b!6770112 res!2768067) b!6770119))

(assert (= (and b!6770117 c!1257160) b!6770115))

(assert (= (and b!6770117 (not c!1257160)) b!6770113))

(assert (= (and b!6770115 res!2768066) b!6770118))

(assert (= (and b!6770113 (not res!2768068)) b!6770114))

(assert (= (and b!6770114 res!2768064) b!6770116))

(assert (= (or b!6770118 b!6770116) bm!613557))

(assert (= (or b!6770115 b!6770114) bm!613558))

(assert (= (or b!6770119 bm!613558) bm!613556))

(declare-fun m!7520636 () Bool)

(assert (=> bm!613556 m!7520636))

(declare-fun m!7520638 () Bool)

(assert (=> bm!613557 m!7520638))

(declare-fun m!7520640 () Bool)

(assert (=> b!6770112 m!7520640))

(assert (=> d!2126259 d!2126769))

(declare-fun bs!1801753 () Bool)

(declare-fun d!2126771 () Bool)

(assert (= bs!1801753 (and d!2126771 d!2126273)))

(declare-fun lambda!380948 () Int)

(assert (=> bs!1801753 (= lambda!380948 lambda!380877)))

(declare-fun bs!1801754 () Bool)

(assert (= bs!1801754 (and d!2126771 d!2126741)))

(assert (=> bs!1801754 (= lambda!380948 lambda!380944)))

(declare-fun bs!1801755 () Bool)

(assert (= bs!1801755 (and d!2126771 d!2126205)))

(assert (=> bs!1801755 (= lambda!380948 lambda!380863)))

(declare-fun bs!1801756 () Bool)

(assert (= bs!1801756 (and d!2126771 d!2126289)))

(assert (=> bs!1801756 (= lambda!380948 lambda!380879)))

(declare-fun bs!1801757 () Bool)

(assert (= bs!1801757 (and d!2126771 d!2126321)))

(assert (=> bs!1801757 (= lambda!380948 lambda!380885)))

(declare-fun bs!1801758 () Bool)

(assert (= bs!1801758 (and d!2126771 d!2126709)))

(assert (=> bs!1801758 (= lambda!380948 lambda!380931)))

(declare-fun bs!1801759 () Bool)

(assert (= bs!1801759 (and d!2126771 d!2126711)))

(assert (=> bs!1801759 (= lambda!380948 lambda!380932)))

(declare-fun bs!1801760 () Bool)

(assert (= bs!1801760 (and d!2126771 d!2126689)))

(assert (=> bs!1801760 (= lambda!380948 lambda!380928)))

(declare-fun bs!1801761 () Bool)

(assert (= bs!1801761 (and d!2126771 d!2126233)))

(assert (=> bs!1801761 (= lambda!380948 lambda!380868)))

(declare-fun b!6770121 () Bool)

(declare-fun e!4087546 () Regex!16595)

(assert (=> b!6770121 (= e!4087546 (h!72409 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962))))))

(declare-fun b!6770122 () Bool)

(declare-fun e!4087544 () Bool)

(declare-fun e!4087541 () Bool)

(assert (=> b!6770122 (= e!4087544 e!4087541)))

(declare-fun c!1257162 () Bool)

(assert (=> b!6770122 (= c!1257162 (isEmpty!38322 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962))))))

(declare-fun b!6770123 () Bool)

(declare-fun e!4087542 () Regex!16595)

(assert (=> b!6770123 (= e!4087542 EmptyLang!16595)))

(declare-fun b!6770124 () Bool)

(declare-fun lt!2443378 () Regex!16595)

(assert (=> b!6770124 (= e!4087541 (isEmptyLang!1963 lt!2443378))))

(declare-fun b!6770125 () Bool)

(assert (=> b!6770125 (= e!4087542 (Union!16595 (h!72409 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962))) (generalisedUnion!2439 (t!379794 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962))))))))

(declare-fun b!6770126 () Bool)

(declare-fun e!4087543 () Bool)

(assert (=> b!6770126 (= e!4087543 (isUnion!1393 lt!2443378))))

(declare-fun b!6770127 () Bool)

(declare-fun e!4087545 () Bool)

(assert (=> b!6770127 (= e!4087545 (isEmpty!38322 (t!379794 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962)))))))

(declare-fun b!6770129 () Bool)

(assert (=> b!6770129 (= e!4087546 e!4087542)))

(declare-fun c!1257164 () Bool)

(assert (=> b!6770129 (= c!1257164 ((_ is Cons!65961) (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962))))))

(declare-fun b!6770130 () Bool)

(assert (=> b!6770130 (= e!4087543 (= lt!2443378 (head!13606 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962)))))))

(declare-fun b!6770128 () Bool)

(assert (=> b!6770128 (= e!4087541 e!4087543)))

(declare-fun c!1257165 () Bool)

(assert (=> b!6770128 (= c!1257165 (isEmpty!38322 (tail!12691 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962)))))))

(assert (=> d!2126771 e!4087544))

(declare-fun res!2768069 () Bool)

(assert (=> d!2126771 (=> (not res!2768069) (not e!4087544))))

(assert (=> d!2126771 (= res!2768069 (validRegex!8331 lt!2443378))))

(assert (=> d!2126771 (= lt!2443378 e!4087546)))

(declare-fun c!1257163 () Bool)

(assert (=> d!2126771 (= c!1257163 e!4087545)))

(declare-fun res!2768070 () Bool)

(assert (=> d!2126771 (=> (not res!2768070) (not e!4087545))))

(assert (=> d!2126771 (= res!2768070 ((_ is Cons!65961) (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962))))))

(assert (=> d!2126771 (forall!15789 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962)) lambda!380948)))

(assert (=> d!2126771 (= (generalisedUnion!2439 (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962))) lt!2443378)))

(assert (= (and d!2126771 res!2768070) b!6770127))

(assert (= (and d!2126771 c!1257163) b!6770121))

(assert (= (and d!2126771 (not c!1257163)) b!6770129))

(assert (= (and b!6770129 c!1257164) b!6770125))

(assert (= (and b!6770129 (not c!1257164)) b!6770123))

(assert (= (and d!2126771 res!2768069) b!6770122))

(assert (= (and b!6770122 c!1257162) b!6770124))

(assert (= (and b!6770122 (not c!1257162)) b!6770128))

(assert (= (and b!6770128 c!1257165) b!6770130))

(assert (= (and b!6770128 (not c!1257165)) b!6770126))

(assert (=> b!6770122 m!7519558))

(declare-fun m!7520642 () Bool)

(assert (=> b!6770122 m!7520642))

(declare-fun m!7520644 () Bool)

(assert (=> b!6770124 m!7520644))

(declare-fun m!7520646 () Bool)

(assert (=> b!6770126 m!7520646))

(assert (=> b!6770130 m!7519558))

(declare-fun m!7520648 () Bool)

(assert (=> b!6770130 m!7520648))

(declare-fun m!7520650 () Bool)

(assert (=> b!6770127 m!7520650))

(declare-fun m!7520652 () Bool)

(assert (=> b!6770125 m!7520652))

(declare-fun m!7520654 () Bool)

(assert (=> d!2126771 m!7520654))

(assert (=> d!2126771 m!7519558))

(declare-fun m!7520656 () Bool)

(assert (=> d!2126771 m!7520656))

(assert (=> b!6770128 m!7519558))

(declare-fun m!7520658 () Bool)

(assert (=> b!6770128 m!7520658))

(assert (=> b!6770128 m!7520658))

(declare-fun m!7520660 () Bool)

(assert (=> b!6770128 m!7520660))

(assert (=> d!2126259 d!2126771))

(declare-fun bs!1801762 () Bool)

(declare-fun d!2126773 () Bool)

(assert (= bs!1801762 (and d!2126773 d!2126273)))

(declare-fun lambda!380949 () Int)

(assert (=> bs!1801762 (= lambda!380949 lambda!380877)))

(declare-fun bs!1801763 () Bool)

(assert (= bs!1801763 (and d!2126773 d!2126741)))

(assert (=> bs!1801763 (= lambda!380949 lambda!380944)))

(declare-fun bs!1801764 () Bool)

(assert (= bs!1801764 (and d!2126773 d!2126205)))

(assert (=> bs!1801764 (= lambda!380949 lambda!380863)))

(declare-fun bs!1801765 () Bool)

(assert (= bs!1801765 (and d!2126773 d!2126289)))

(assert (=> bs!1801765 (= lambda!380949 lambda!380879)))

(declare-fun bs!1801766 () Bool)

(assert (= bs!1801766 (and d!2126773 d!2126771)))

(assert (=> bs!1801766 (= lambda!380949 lambda!380948)))

(declare-fun bs!1801767 () Bool)

(assert (= bs!1801767 (and d!2126773 d!2126321)))

(assert (=> bs!1801767 (= lambda!380949 lambda!380885)))

(declare-fun bs!1801768 () Bool)

(assert (= bs!1801768 (and d!2126773 d!2126709)))

(assert (=> bs!1801768 (= lambda!380949 lambda!380931)))

(declare-fun bs!1801769 () Bool)

(assert (= bs!1801769 (and d!2126773 d!2126711)))

(assert (=> bs!1801769 (= lambda!380949 lambda!380932)))

(declare-fun bs!1801770 () Bool)

(assert (= bs!1801770 (and d!2126773 d!2126689)))

(assert (=> bs!1801770 (= lambda!380949 lambda!380928)))

(declare-fun bs!1801771 () Bool)

(assert (= bs!1801771 (and d!2126773 d!2126233)))

(assert (=> bs!1801771 (= lambda!380949 lambda!380868)))

(declare-fun lt!2443379 () List!66085)

(assert (=> d!2126773 (forall!15789 lt!2443379 lambda!380949)))

(declare-fun e!4087547 () List!66085)

(assert (=> d!2126773 (= lt!2443379 e!4087547)))

(declare-fun c!1257166 () Bool)

(assert (=> d!2126773 (= c!1257166 ((_ is Cons!65962) (Cons!65962 lt!2443194 Nil!65962)))))

(assert (=> d!2126773 (= (unfocusZipperList!2016 (Cons!65962 lt!2443194 Nil!65962)) lt!2443379)))

(declare-fun b!6770131 () Bool)

(assert (=> b!6770131 (= e!4087547 (Cons!65961 (generalisedConcat!2192 (exprs!6479 (h!72410 (Cons!65962 lt!2443194 Nil!65962)))) (unfocusZipperList!2016 (t!379795 (Cons!65962 lt!2443194 Nil!65962)))))))

(declare-fun b!6770132 () Bool)

(assert (=> b!6770132 (= e!4087547 Nil!65961)))

(assert (= (and d!2126773 c!1257166) b!6770131))

(assert (= (and d!2126773 (not c!1257166)) b!6770132))

(declare-fun m!7520662 () Bool)

(assert (=> d!2126773 m!7520662))

(declare-fun m!7520664 () Bool)

(assert (=> b!6770131 m!7520664))

(declare-fun m!7520666 () Bool)

(assert (=> b!6770131 m!7520666))

(assert (=> d!2126259 d!2126773))

(declare-fun d!2126775 () Bool)

(assert (=> d!2126775 (= (head!13605 (_1!36873 lt!2443186)) (h!72408 (_1!36873 lt!2443186)))))

(assert (=> b!6769064 d!2126775))

(declare-fun b!6770133 () Bool)

(declare-fun e!4087548 () List!66084)

(assert (=> b!6770133 (= e!4087548 (_2!36873 (get!22962 lt!2443272)))))

(declare-fun d!2126777 () Bool)

(declare-fun e!4087549 () Bool)

(assert (=> d!2126777 e!4087549))

(declare-fun res!2768071 () Bool)

(assert (=> d!2126777 (=> (not res!2768071) (not e!4087549))))

(declare-fun lt!2443380 () List!66084)

(assert (=> d!2126777 (= res!2768071 (= (content!12841 lt!2443380) ((_ map or) (content!12841 (_1!36873 (get!22962 lt!2443272))) (content!12841 (_2!36873 (get!22962 lt!2443272))))))))

(assert (=> d!2126777 (= lt!2443380 e!4087548)))

(declare-fun c!1257167 () Bool)

(assert (=> d!2126777 (= c!1257167 ((_ is Nil!65960) (_1!36873 (get!22962 lt!2443272))))))

(assert (=> d!2126777 (= (++!14749 (_1!36873 (get!22962 lt!2443272)) (_2!36873 (get!22962 lt!2443272))) lt!2443380)))

(declare-fun b!6770136 () Bool)

(assert (=> b!6770136 (= e!4087549 (or (not (= (_2!36873 (get!22962 lt!2443272)) Nil!65960)) (= lt!2443380 (_1!36873 (get!22962 lt!2443272)))))))

(declare-fun b!6770135 () Bool)

(declare-fun res!2768072 () Bool)

(assert (=> b!6770135 (=> (not res!2768072) (not e!4087549))))

(assert (=> b!6770135 (= res!2768072 (= (size!40631 lt!2443380) (+ (size!40631 (_1!36873 (get!22962 lt!2443272))) (size!40631 (_2!36873 (get!22962 lt!2443272))))))))

(declare-fun b!6770134 () Bool)

(assert (=> b!6770134 (= e!4087548 (Cons!65960 (h!72408 (_1!36873 (get!22962 lt!2443272))) (++!14749 (t!379793 (_1!36873 (get!22962 lt!2443272))) (_2!36873 (get!22962 lt!2443272)))))))

(assert (= (and d!2126777 c!1257167) b!6770133))

(assert (= (and d!2126777 (not c!1257167)) b!6770134))

(assert (= (and d!2126777 res!2768071) b!6770135))

(assert (= (and b!6770135 res!2768072) b!6770136))

(declare-fun m!7520668 () Bool)

(assert (=> d!2126777 m!7520668))

(declare-fun m!7520670 () Bool)

(assert (=> d!2126777 m!7520670))

(declare-fun m!7520672 () Bool)

(assert (=> d!2126777 m!7520672))

(declare-fun m!7520674 () Bool)

(assert (=> b!6770135 m!7520674))

(declare-fun m!7520676 () Bool)

(assert (=> b!6770135 m!7520676))

(declare-fun m!7520678 () Bool)

(assert (=> b!6770135 m!7520678))

(declare-fun m!7520680 () Bool)

(assert (=> b!6770134 m!7520680))

(assert (=> b!6768607 d!2126777))

(declare-fun d!2126779 () Bool)

(assert (=> d!2126779 (= (get!22962 lt!2443272) (v!52685 lt!2443272))))

(assert (=> b!6768607 d!2126779))

(declare-fun d!2126781 () Bool)

(assert (=> d!2126781 (= (isEmpty!38317 (_2!36873 lt!2443186)) ((_ is Nil!65960) (_2!36873 lt!2443186)))))

(assert (=> bm!613367 d!2126781))

(declare-fun b!6770137 () Bool)

(declare-fun e!4087552 () (InoxSet Context!11958))

(assert (=> b!6770137 (= e!4087552 ((as const (Array Context!11958 Bool)) false))))

(declare-fun call!613564 () (InoxSet Context!11958))

(declare-fun e!4087550 () (InoxSet Context!11958))

(declare-fun b!6770138 () Bool)

(assert (=> b!6770138 (= e!4087550 ((_ map or) call!613564 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343))))))) (h!72408 s!2326))))))

(declare-fun b!6770139 () Bool)

(declare-fun e!4087551 () Bool)

(assert (=> b!6770139 (= e!4087551 (nullable!6576 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343))))))))))

(declare-fun d!2126783 () Bool)

(declare-fun c!1257168 () Bool)

(assert (=> d!2126783 (= c!1257168 e!4087551)))

(declare-fun res!2768073 () Bool)

(assert (=> d!2126783 (=> (not res!2768073) (not e!4087551))))

(assert (=> d!2126783 (= res!2768073 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))))))))

(assert (=> d!2126783 (= (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))) (h!72408 s!2326)) e!4087550)))

(declare-fun bm!613559 () Bool)

(assert (=> bm!613559 (= call!613564 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))))) (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343))))))) (h!72408 s!2326)))))

(declare-fun b!6770140 () Bool)

(assert (=> b!6770140 (= e!4087550 e!4087552)))

(declare-fun c!1257169 () Bool)

(assert (=> b!6770140 (= c!1257169 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))))))))

(declare-fun b!6770141 () Bool)

(assert (=> b!6770141 (= e!4087552 call!613564)))

(assert (= (and d!2126783 res!2768073) b!6770139))

(assert (= (and d!2126783 c!1257168) b!6770138))

(assert (= (and d!2126783 (not c!1257168)) b!6770140))

(assert (= (and b!6770140 c!1257169) b!6770141))

(assert (= (and b!6770140 (not c!1257169)) b!6770137))

(assert (= (or b!6770138 b!6770141) bm!613559))

(declare-fun m!7520682 () Bool)

(assert (=> b!6770138 m!7520682))

(declare-fun m!7520684 () Bool)

(assert (=> b!6770139 m!7520684))

(declare-fun m!7520686 () Bool)

(assert (=> bm!613559 m!7520686))

(assert (=> b!6768352 d!2126783))

(assert (=> b!6768943 d!2126675))

(assert (=> b!6768943 d!2126677))

(declare-fun bs!1801772 () Bool)

(declare-fun d!2126785 () Bool)

(assert (= bs!1801772 (and d!2126785 d!2126273)))

(declare-fun lambda!380950 () Int)

(assert (=> bs!1801772 (= lambda!380950 lambda!380877)))

(declare-fun bs!1801773 () Bool)

(assert (= bs!1801773 (and d!2126785 d!2126741)))

(assert (=> bs!1801773 (= lambda!380950 lambda!380944)))

(declare-fun bs!1801774 () Bool)

(assert (= bs!1801774 (and d!2126785 d!2126205)))

(assert (=> bs!1801774 (= lambda!380950 lambda!380863)))

(declare-fun bs!1801775 () Bool)

(assert (= bs!1801775 (and d!2126785 d!2126289)))

(assert (=> bs!1801775 (= lambda!380950 lambda!380879)))

(declare-fun bs!1801776 () Bool)

(assert (= bs!1801776 (and d!2126785 d!2126771)))

(assert (=> bs!1801776 (= lambda!380950 lambda!380948)))

(declare-fun bs!1801777 () Bool)

(assert (= bs!1801777 (and d!2126785 d!2126321)))

(assert (=> bs!1801777 (= lambda!380950 lambda!380885)))

(declare-fun bs!1801778 () Bool)

(assert (= bs!1801778 (and d!2126785 d!2126773)))

(assert (=> bs!1801778 (= lambda!380950 lambda!380949)))

(declare-fun bs!1801779 () Bool)

(assert (= bs!1801779 (and d!2126785 d!2126709)))

(assert (=> bs!1801779 (= lambda!380950 lambda!380931)))

(declare-fun bs!1801780 () Bool)

(assert (= bs!1801780 (and d!2126785 d!2126711)))

(assert (=> bs!1801780 (= lambda!380950 lambda!380932)))

(declare-fun bs!1801781 () Bool)

(assert (= bs!1801781 (and d!2126785 d!2126689)))

(assert (=> bs!1801781 (= lambda!380950 lambda!380928)))

(declare-fun bs!1801782 () Bool)

(assert (= bs!1801782 (and d!2126785 d!2126233)))

(assert (=> bs!1801782 (= lambda!380950 lambda!380868)))

(declare-fun b!6770142 () Bool)

(declare-fun e!4087558 () Regex!16595)

(assert (=> b!6770142 (= e!4087558 (h!72409 (t!379794 (unfocusZipperList!2016 zl!343))))))

(declare-fun b!6770143 () Bool)

(declare-fun e!4087556 () Bool)

(declare-fun e!4087553 () Bool)

(assert (=> b!6770143 (= e!4087556 e!4087553)))

(declare-fun c!1257170 () Bool)

(assert (=> b!6770143 (= c!1257170 (isEmpty!38322 (t!379794 (unfocusZipperList!2016 zl!343))))))

(declare-fun b!6770144 () Bool)

(declare-fun e!4087554 () Regex!16595)

(assert (=> b!6770144 (= e!4087554 EmptyLang!16595)))

(declare-fun b!6770145 () Bool)

(declare-fun lt!2443381 () Regex!16595)

(assert (=> b!6770145 (= e!4087553 (isEmptyLang!1963 lt!2443381))))

(declare-fun b!6770146 () Bool)

(assert (=> b!6770146 (= e!4087554 (Union!16595 (h!72409 (t!379794 (unfocusZipperList!2016 zl!343))) (generalisedUnion!2439 (t!379794 (t!379794 (unfocusZipperList!2016 zl!343))))))))

(declare-fun b!6770147 () Bool)

(declare-fun e!4087555 () Bool)

(assert (=> b!6770147 (= e!4087555 (isUnion!1393 lt!2443381))))

(declare-fun b!6770148 () Bool)

(declare-fun e!4087557 () Bool)

(assert (=> b!6770148 (= e!4087557 (isEmpty!38322 (t!379794 (t!379794 (unfocusZipperList!2016 zl!343)))))))

(declare-fun b!6770150 () Bool)

(assert (=> b!6770150 (= e!4087558 e!4087554)))

(declare-fun c!1257172 () Bool)

(assert (=> b!6770150 (= c!1257172 ((_ is Cons!65961) (t!379794 (unfocusZipperList!2016 zl!343))))))

(declare-fun b!6770151 () Bool)

(assert (=> b!6770151 (= e!4087555 (= lt!2443381 (head!13606 (t!379794 (unfocusZipperList!2016 zl!343)))))))

(declare-fun b!6770149 () Bool)

(assert (=> b!6770149 (= e!4087553 e!4087555)))

(declare-fun c!1257173 () Bool)

(assert (=> b!6770149 (= c!1257173 (isEmpty!38322 (tail!12691 (t!379794 (unfocusZipperList!2016 zl!343)))))))

(assert (=> d!2126785 e!4087556))

(declare-fun res!2768074 () Bool)

(assert (=> d!2126785 (=> (not res!2768074) (not e!4087556))))

(assert (=> d!2126785 (= res!2768074 (validRegex!8331 lt!2443381))))

(assert (=> d!2126785 (= lt!2443381 e!4087558)))

(declare-fun c!1257171 () Bool)

(assert (=> d!2126785 (= c!1257171 e!4087557)))

(declare-fun res!2768075 () Bool)

(assert (=> d!2126785 (=> (not res!2768075) (not e!4087557))))

(assert (=> d!2126785 (= res!2768075 ((_ is Cons!65961) (t!379794 (unfocusZipperList!2016 zl!343))))))

(assert (=> d!2126785 (forall!15789 (t!379794 (unfocusZipperList!2016 zl!343)) lambda!380950)))

(assert (=> d!2126785 (= (generalisedUnion!2439 (t!379794 (unfocusZipperList!2016 zl!343))) lt!2443381)))

(assert (= (and d!2126785 res!2768075) b!6770148))

(assert (= (and d!2126785 c!1257171) b!6770142))

(assert (= (and d!2126785 (not c!1257171)) b!6770150))

(assert (= (and b!6770150 c!1257172) b!6770146))

(assert (= (and b!6770150 (not c!1257172)) b!6770144))

(assert (= (and d!2126785 res!2768074) b!6770143))

(assert (= (and b!6770143 c!1257170) b!6770145))

(assert (= (and b!6770143 (not c!1257170)) b!6770149))

(assert (= (and b!6770149 c!1257173) b!6770151))

(assert (= (and b!6770149 (not c!1257173)) b!6770147))

(assert (=> b!6770143 m!7519492))

(declare-fun m!7520688 () Bool)

(assert (=> b!6770145 m!7520688))

(declare-fun m!7520690 () Bool)

(assert (=> b!6770147 m!7520690))

(declare-fun m!7520692 () Bool)

(assert (=> b!6770151 m!7520692))

(declare-fun m!7520694 () Bool)

(assert (=> b!6770148 m!7520694))

(declare-fun m!7520696 () Bool)

(assert (=> b!6770146 m!7520696))

(declare-fun m!7520698 () Bool)

(assert (=> d!2126785 m!7520698))

(declare-fun m!7520700 () Bool)

(assert (=> d!2126785 m!7520700))

(declare-fun m!7520702 () Bool)

(assert (=> b!6770149 m!7520702))

(assert (=> b!6770149 m!7520702))

(declare-fun m!7520704 () Bool)

(assert (=> b!6770149 m!7520704))

(assert (=> b!6768760 d!2126785))

(declare-fun bs!1801783 () Bool)

(declare-fun d!2126787 () Bool)

(assert (= bs!1801783 (and d!2126787 d!2126749)))

(declare-fun lambda!380951 () Int)

(assert (=> bs!1801783 (= lambda!380951 lambda!380947)))

(assert (=> d!2126787 (= (nullableZipper!2303 lt!2443198) (exists!2717 lt!2443198 lambda!380951))))

(declare-fun bs!1801784 () Bool)

(assert (= bs!1801784 d!2126787))

(declare-fun m!7520706 () Bool)

(assert (=> bs!1801784 m!7520706))

(assert (=> b!6768869 d!2126787))

(declare-fun d!2126789 () Bool)

(assert (=> d!2126789 (= (isEmpty!38322 (exprs!6479 (h!72410 zl!343))) ((_ is Nil!65961) (exprs!6479 (h!72410 zl!343))))))

(assert (=> b!6769095 d!2126789))

(declare-fun d!2126791 () Bool)

(assert (=> d!2126791 (= (flatMap!2076 lt!2443206 lambda!380878) (choose!50434 lt!2443206 lambda!380878))))

(declare-fun bs!1801785 () Bool)

(assert (= bs!1801785 d!2126791))

(declare-fun m!7520708 () Bool)

(assert (=> bs!1801785 m!7520708))

(assert (=> d!2126277 d!2126791))

(declare-fun b!6770152 () Bool)

(declare-fun res!2768079 () Bool)

(declare-fun e!4087561 () Bool)

(assert (=> b!6770152 (=> (not res!2768079) (not e!4087561))))

(declare-fun call!613565 () Bool)

(assert (=> b!6770152 (= res!2768079 (not call!613565))))

(declare-fun b!6770153 () Bool)

(declare-fun res!2768081 () Bool)

(assert (=> b!6770153 (=> (not res!2768081) (not e!4087561))))

(assert (=> b!6770153 (= res!2768081 (isEmpty!38317 (tail!12690 (_2!36873 (get!22962 lt!2443272)))))))

(declare-fun b!6770154 () Bool)

(declare-fun res!2768078 () Bool)

(declare-fun e!4087563 () Bool)

(assert (=> b!6770154 (=> res!2768078 e!4087563)))

(assert (=> b!6770154 (= res!2768078 (not (isEmpty!38317 (tail!12690 (_2!36873 (get!22962 lt!2443272))))))))

(declare-fun b!6770155 () Bool)

(declare-fun e!4087562 () Bool)

(declare-fun lt!2443382 () Bool)

(assert (=> b!6770155 (= e!4087562 (not lt!2443382))))

(declare-fun b!6770156 () Bool)

(assert (=> b!6770156 (= e!4087561 (= (head!13605 (_2!36873 (get!22962 lt!2443272))) (c!1256657 r!7292)))))

(declare-fun b!6770157 () Bool)

(declare-fun e!4087565 () Bool)

(assert (=> b!6770157 (= e!4087565 e!4087563)))

(declare-fun res!2768076 () Bool)

(assert (=> b!6770157 (=> res!2768076 e!4087563)))

(assert (=> b!6770157 (= res!2768076 call!613565)))

(declare-fun b!6770158 () Bool)

(declare-fun e!4087559 () Bool)

(assert (=> b!6770158 (= e!4087559 (nullable!6576 r!7292))))

(declare-fun b!6770159 () Bool)

(declare-fun res!2768077 () Bool)

(declare-fun e!4087560 () Bool)

(assert (=> b!6770159 (=> res!2768077 e!4087560)))

(assert (=> b!6770159 (= res!2768077 (not ((_ is ElementMatch!16595) r!7292)))))

(assert (=> b!6770159 (= e!4087562 e!4087560)))

(declare-fun b!6770161 () Bool)

(assert (=> b!6770161 (= e!4087560 e!4087565)))

(declare-fun res!2768080 () Bool)

(assert (=> b!6770161 (=> (not res!2768080) (not e!4087565))))

(assert (=> b!6770161 (= res!2768080 (not lt!2443382))))

(declare-fun b!6770162 () Bool)

(declare-fun e!4087564 () Bool)

(assert (=> b!6770162 (= e!4087564 (= lt!2443382 call!613565))))

(declare-fun bm!613560 () Bool)

(assert (=> bm!613560 (= call!613565 (isEmpty!38317 (_2!36873 (get!22962 lt!2443272))))))

(declare-fun b!6770163 () Bool)

(declare-fun res!2768082 () Bool)

(assert (=> b!6770163 (=> res!2768082 e!4087560)))

(assert (=> b!6770163 (= res!2768082 e!4087561)))

(declare-fun res!2768083 () Bool)

(assert (=> b!6770163 (=> (not res!2768083) (not e!4087561))))

(assert (=> b!6770163 (= res!2768083 lt!2443382)))

(declare-fun b!6770164 () Bool)

(assert (=> b!6770164 (= e!4087559 (matchR!8778 (derivativeStep!5261 r!7292 (head!13605 (_2!36873 (get!22962 lt!2443272)))) (tail!12690 (_2!36873 (get!22962 lt!2443272)))))))

(declare-fun b!6770165 () Bool)

(assert (=> b!6770165 (= e!4087563 (not (= (head!13605 (_2!36873 (get!22962 lt!2443272))) (c!1256657 r!7292))))))

(declare-fun d!2126793 () Bool)

(assert (=> d!2126793 e!4087564))

(declare-fun c!1257174 () Bool)

(assert (=> d!2126793 (= c!1257174 ((_ is EmptyExpr!16595) r!7292))))

(assert (=> d!2126793 (= lt!2443382 e!4087559)))

(declare-fun c!1257176 () Bool)

(assert (=> d!2126793 (= c!1257176 (isEmpty!38317 (_2!36873 (get!22962 lt!2443272))))))

(assert (=> d!2126793 (validRegex!8331 r!7292)))

(assert (=> d!2126793 (= (matchR!8778 r!7292 (_2!36873 (get!22962 lt!2443272))) lt!2443382)))

(declare-fun b!6770160 () Bool)

(assert (=> b!6770160 (= e!4087564 e!4087562)))

(declare-fun c!1257175 () Bool)

(assert (=> b!6770160 (= c!1257175 ((_ is EmptyLang!16595) r!7292))))

(assert (= (and d!2126793 c!1257176) b!6770158))

(assert (= (and d!2126793 (not c!1257176)) b!6770164))

(assert (= (and d!2126793 c!1257174) b!6770162))

(assert (= (and d!2126793 (not c!1257174)) b!6770160))

(assert (= (and b!6770160 c!1257175) b!6770155))

(assert (= (and b!6770160 (not c!1257175)) b!6770159))

(assert (= (and b!6770159 (not res!2768077)) b!6770163))

(assert (= (and b!6770163 res!2768083) b!6770152))

(assert (= (and b!6770152 res!2768079) b!6770153))

(assert (= (and b!6770153 res!2768081) b!6770156))

(assert (= (and b!6770163 (not res!2768082)) b!6770161))

(assert (= (and b!6770161 res!2768080) b!6770157))

(assert (= (and b!6770157 (not res!2768076)) b!6770154))

(assert (= (and b!6770154 (not res!2768078)) b!6770165))

(assert (= (or b!6770162 b!6770152 b!6770157) bm!613560))

(declare-fun m!7520710 () Bool)

(assert (=> b!6770165 m!7520710))

(declare-fun m!7520712 () Bool)

(assert (=> bm!613560 m!7520712))

(declare-fun m!7520714 () Bool)

(assert (=> b!6770154 m!7520714))

(assert (=> b!6770154 m!7520714))

(declare-fun m!7520716 () Bool)

(assert (=> b!6770154 m!7520716))

(assert (=> b!6770164 m!7520710))

(assert (=> b!6770164 m!7520710))

(declare-fun m!7520718 () Bool)

(assert (=> b!6770164 m!7520718))

(assert (=> b!6770164 m!7520714))

(assert (=> b!6770164 m!7520718))

(assert (=> b!6770164 m!7520714))

(declare-fun m!7520720 () Bool)

(assert (=> b!6770164 m!7520720))

(assert (=> b!6770158 m!7519660))

(assert (=> b!6770153 m!7520714))

(assert (=> b!6770153 m!7520714))

(assert (=> b!6770153 m!7520716))

(assert (=> b!6770156 m!7520710))

(assert (=> d!2126793 m!7520712))

(assert (=> d!2126793 m!7519006))

(assert (=> b!6768611 d!2126793))

(assert (=> b!6768611 d!2126779))

(declare-fun bs!1801786 () Bool)

(declare-fun d!2126795 () Bool)

(assert (= bs!1801786 (and d!2126795 d!2126749)))

(declare-fun lambda!380952 () Int)

(assert (=> bs!1801786 (= lambda!380952 lambda!380947)))

(declare-fun bs!1801787 () Bool)

(assert (= bs!1801787 (and d!2126795 d!2126787)))

(assert (=> bs!1801787 (= lambda!380952 lambda!380951)))

(assert (=> d!2126795 (= (nullableZipper!2303 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326))) (exists!2717 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) lambda!380952))))

(declare-fun bs!1801788 () Bool)

(assert (= bs!1801788 d!2126795))

(assert (=> bs!1801788 m!7519020))

(declare-fun m!7520722 () Bool)

(assert (=> bs!1801788 m!7520722))

(assert (=> b!6768292 d!2126795))

(declare-fun b!6770166 () Bool)

(declare-fun c!1257179 () Bool)

(assert (=> b!6770166 (= c!1257179 ((_ is Star!16595) (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))))))

(declare-fun e!4087567 () (InoxSet Context!11958))

(declare-fun e!4087568 () (InoxSet Context!11958))

(assert (=> b!6770166 (= e!4087567 e!4087568)))

(declare-fun b!6770167 () Bool)

(declare-fun e!4087570 () (InoxSet Context!11958))

(declare-fun call!613570 () (InoxSet Context!11958))

(declare-fun call!613568 () (InoxSet Context!11958))

(assert (=> b!6770167 (= e!4087570 ((_ map or) call!613570 call!613568))))

(declare-fun b!6770168 () Bool)

(declare-fun e!4087569 () (InoxSet Context!11958))

(assert (=> b!6770168 (= e!4087569 (store ((as const (Array Context!11958 Bool)) false) (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) true))))

(declare-fun b!6770169 () Bool)

(declare-fun call!613567 () (InoxSet Context!11958))

(assert (=> b!6770169 (= e!4087568 call!613567)))

(declare-fun bm!613561 () Bool)

(declare-fun call!613571 () (InoxSet Context!11958))

(assert (=> bm!613561 (= call!613571 call!613570)))

(declare-fun bm!613562 () Bool)

(assert (=> bm!613562 (= call!613567 call!613571)))

(declare-fun b!6770170 () Bool)

(declare-fun e!4087571 () (InoxSet Context!11958))

(assert (=> b!6770170 (= e!4087571 ((_ map or) call!613568 call!613571))))

(declare-fun b!6770171 () Bool)

(declare-fun e!4087566 () Bool)

(assert (=> b!6770171 (= e!4087566 (nullable!6576 (regOne!33702 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))))))

(declare-fun d!2126797 () Bool)

(declare-fun c!1257180 () Bool)

(assert (=> d!2126797 (= c!1257180 (and ((_ is ElementMatch!16595) (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (= (c!1256657 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (h!72408 s!2326))))))

(assert (=> d!2126797 (= (derivationStepZipperDown!1823 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))) (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (h!72408 s!2326)) e!4087569)))

(declare-fun b!6770172 () Bool)

(assert (=> b!6770172 (= e!4087568 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770173 () Bool)

(assert (=> b!6770173 (= e!4087567 call!613567)))

(declare-fun b!6770174 () Bool)

(declare-fun c!1257178 () Bool)

(assert (=> b!6770174 (= c!1257178 e!4087566)))

(declare-fun res!2768084 () Bool)

(assert (=> b!6770174 (=> (not res!2768084) (not e!4087566))))

(assert (=> b!6770174 (= res!2768084 ((_ is Concat!25440) (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))))))

(assert (=> b!6770174 (= e!4087570 e!4087571)))

(declare-fun bm!613563 () Bool)

(declare-fun call!613566 () List!66085)

(declare-fun call!613569 () List!66085)

(assert (=> bm!613563 (= call!613566 call!613569)))

(declare-fun c!1257181 () Bool)

(declare-fun bm!613564 () Bool)

(declare-fun c!1257177 () Bool)

(assert (=> bm!613564 (= call!613570 (derivationStepZipperDown!1823 (ite c!1257177 (regOne!33703 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (ite c!1257178 (regTwo!33702 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (ite c!1257181 (regOne!33702 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (reg!16924 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))))) (ite (or c!1257177 c!1257178) (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (Context!11959 call!613566)) (h!72408 s!2326)))))

(declare-fun b!6770175 () Bool)

(assert (=> b!6770175 (= e!4087571 e!4087567)))

(assert (=> b!6770175 (= c!1257181 ((_ is Concat!25440) (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))))))

(declare-fun b!6770176 () Bool)

(assert (=> b!6770176 (= e!4087569 e!4087570)))

(assert (=> b!6770176 (= c!1257177 ((_ is Union!16595) (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))))))

(declare-fun bm!613565 () Bool)

(assert (=> bm!613565 (= call!613568 (derivationStepZipperDown!1823 (ite c!1257177 (regTwo!33703 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (regOne!33702 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))) (ite c!1257177 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (Context!11959 call!613569)) (h!72408 s!2326)))))

(declare-fun bm!613566 () Bool)

(assert (=> bm!613566 (= call!613569 ($colon$colon!2406 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))) (ite (or c!1257178 c!1257181) (regTwo!33702 (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (h!72409 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))))))

(assert (= (and d!2126797 c!1257180) b!6770168))

(assert (= (and d!2126797 (not c!1257180)) b!6770176))

(assert (= (and b!6770176 c!1257177) b!6770167))

(assert (= (and b!6770176 (not c!1257177)) b!6770174))

(assert (= (and b!6770174 res!2768084) b!6770171))

(assert (= (and b!6770174 c!1257178) b!6770170))

(assert (= (and b!6770174 (not c!1257178)) b!6770175))

(assert (= (and b!6770175 c!1257181) b!6770173))

(assert (= (and b!6770175 (not c!1257181)) b!6770166))

(assert (= (and b!6770166 c!1257179) b!6770169))

(assert (= (and b!6770166 (not c!1257179)) b!6770172))

(assert (= (or b!6770173 b!6770169) bm!613563))

(assert (= (or b!6770173 b!6770169) bm!613562))

(assert (= (or b!6770170 bm!613563) bm!613566))

(assert (= (or b!6770170 bm!613562) bm!613561))

(assert (= (or b!6770167 b!6770170) bm!613565))

(assert (= (or b!6770167 bm!613561) bm!613564))

(declare-fun m!7520724 () Bool)

(assert (=> bm!613566 m!7520724))

(declare-fun m!7520726 () Bool)

(assert (=> bm!613565 m!7520726))

(declare-fun m!7520728 () Bool)

(assert (=> bm!613564 m!7520728))

(declare-fun m!7520730 () Bool)

(assert (=> b!6770168 m!7520730))

(declare-fun m!7520732 () Bool)

(assert (=> b!6770171 m!7520732))

(assert (=> bm!613356 d!2126797))

(assert (=> bs!1801327 d!2126119))

(assert (=> b!6769019 d!2126739))

(assert (=> d!2126319 d!2126693))

(assert (=> d!2126319 d!2126649))

(declare-fun d!2126799 () Bool)

(assert (=> d!2126799 (= (nullable!6576 (reg!16924 r!7292)) (nullableFct!2482 (reg!16924 r!7292)))))

(declare-fun bs!1801789 () Bool)

(assert (= bs!1801789 d!2126799))

(declare-fun m!7520734 () Bool)

(assert (=> bs!1801789 m!7520734))

(assert (=> b!6768848 d!2126799))

(declare-fun d!2126801 () Bool)

(declare-fun res!2768085 () Bool)

(declare-fun e!4087572 () Bool)

(assert (=> d!2126801 (=> res!2768085 e!4087572)))

(assert (=> d!2126801 (= res!2768085 ((_ is Nil!65961) (exprs!6479 setElem!46277)))))

(assert (=> d!2126801 (= (forall!15789 (exprs!6479 setElem!46277) lambda!380879) e!4087572)))

(declare-fun b!6770177 () Bool)

(declare-fun e!4087573 () Bool)

(assert (=> b!6770177 (= e!4087572 e!4087573)))

(declare-fun res!2768086 () Bool)

(assert (=> b!6770177 (=> (not res!2768086) (not e!4087573))))

(assert (=> b!6770177 (= res!2768086 (dynLambda!26320 lambda!380879 (h!72409 (exprs!6479 setElem!46277))))))

(declare-fun b!6770178 () Bool)

(assert (=> b!6770178 (= e!4087573 (forall!15789 (t!379794 (exprs!6479 setElem!46277)) lambda!380879))))

(assert (= (and d!2126801 (not res!2768085)) b!6770177))

(assert (= (and b!6770177 res!2768086) b!6770178))

(declare-fun b_lambda!254935 () Bool)

(assert (=> (not b_lambda!254935) (not b!6770177)))

(declare-fun m!7520736 () Bool)

(assert (=> b!6770177 m!7520736))

(declare-fun m!7520738 () Bool)

(assert (=> b!6770178 m!7520738))

(assert (=> d!2126289 d!2126801))

(declare-fun bs!1801790 () Bool)

(declare-fun d!2126803 () Bool)

(assert (= bs!1801790 (and d!2126803 d!2126273)))

(declare-fun lambda!380953 () Int)

(assert (=> bs!1801790 (= lambda!380953 lambda!380877)))

(declare-fun bs!1801791 () Bool)

(assert (= bs!1801791 (and d!2126803 d!2126741)))

(assert (=> bs!1801791 (= lambda!380953 lambda!380944)))

(declare-fun bs!1801792 () Bool)

(assert (= bs!1801792 (and d!2126803 d!2126205)))

(assert (=> bs!1801792 (= lambda!380953 lambda!380863)))

(declare-fun bs!1801793 () Bool)

(assert (= bs!1801793 (and d!2126803 d!2126289)))

(assert (=> bs!1801793 (= lambda!380953 lambda!380879)))

(declare-fun bs!1801794 () Bool)

(assert (= bs!1801794 (and d!2126803 d!2126771)))

(assert (=> bs!1801794 (= lambda!380953 lambda!380948)))

(declare-fun bs!1801795 () Bool)

(assert (= bs!1801795 (and d!2126803 d!2126321)))

(assert (=> bs!1801795 (= lambda!380953 lambda!380885)))

(declare-fun bs!1801796 () Bool)

(assert (= bs!1801796 (and d!2126803 d!2126785)))

(assert (=> bs!1801796 (= lambda!380953 lambda!380950)))

(declare-fun bs!1801797 () Bool)

(assert (= bs!1801797 (and d!2126803 d!2126773)))

(assert (=> bs!1801797 (= lambda!380953 lambda!380949)))

(declare-fun bs!1801798 () Bool)

(assert (= bs!1801798 (and d!2126803 d!2126709)))

(assert (=> bs!1801798 (= lambda!380953 lambda!380931)))

(declare-fun bs!1801799 () Bool)

(assert (= bs!1801799 (and d!2126803 d!2126711)))

(assert (=> bs!1801799 (= lambda!380953 lambda!380932)))

(declare-fun bs!1801800 () Bool)

(assert (= bs!1801800 (and d!2126803 d!2126689)))

(assert (=> bs!1801800 (= lambda!380953 lambda!380928)))

(declare-fun bs!1801801 () Bool)

(assert (= bs!1801801 (and d!2126803 d!2126233)))

(assert (=> bs!1801801 (= lambda!380953 lambda!380868)))

(assert (=> d!2126803 (= (inv!84734 (h!72410 (t!379795 zl!343))) (forall!15789 (exprs!6479 (h!72410 (t!379795 zl!343))) lambda!380953))))

(declare-fun bs!1801802 () Bool)

(assert (= bs!1801802 d!2126803))

(declare-fun m!7520740 () Bool)

(assert (=> bs!1801802 m!7520740))

(assert (=> b!6769156 d!2126803))

(assert (=> d!2126313 d!2126309))

(declare-fun d!2126805 () Bool)

(assert (=> d!2126805 (= (flatMap!2076 lt!2443188 lambda!380803) (dynLambda!26318 lambda!380803 lt!2443194))))

(assert (=> d!2126805 true))

(declare-fun _$13!4156 () Unit!159881)

(assert (=> d!2126805 (= (choose!50435 lt!2443188 lt!2443194 lambda!380803) _$13!4156)))

(declare-fun b_lambda!254937 () Bool)

(assert (=> (not b_lambda!254937) (not d!2126805)))

(declare-fun bs!1801803 () Bool)

(assert (= bs!1801803 d!2126805))

(assert (=> bs!1801803 m!7519012))

(assert (=> bs!1801803 m!7519680))

(assert (=> d!2126313 d!2126805))

(declare-fun d!2126807 () Bool)

(declare-fun c!1257182 () Bool)

(assert (=> d!2126807 (= c!1257182 (isEmpty!38317 (tail!12690 s!2326)))))

(declare-fun e!4087574 () Bool)

(assert (=> d!2126807 (= (matchZipper!2581 (derivationStepZipper!2539 lt!2443188 (head!13605 s!2326)) (tail!12690 s!2326)) e!4087574)))

(declare-fun b!6770179 () Bool)

(assert (=> b!6770179 (= e!4087574 (nullableZipper!2303 (derivationStepZipper!2539 lt!2443188 (head!13605 s!2326))))))

(declare-fun b!6770180 () Bool)

(assert (=> b!6770180 (= e!4087574 (matchZipper!2581 (derivationStepZipper!2539 (derivationStepZipper!2539 lt!2443188 (head!13605 s!2326)) (head!13605 (tail!12690 s!2326))) (tail!12690 (tail!12690 s!2326))))))

(assert (= (and d!2126807 c!1257182) b!6770179))

(assert (= (and d!2126807 (not c!1257182)) b!6770180))

(assert (=> d!2126807 m!7519104))

(assert (=> d!2126807 m!7519582))

(assert (=> b!6770179 m!7519102))

(declare-fun m!7520742 () Bool)

(assert (=> b!6770179 m!7520742))

(assert (=> b!6770180 m!7519104))

(assert (=> b!6770180 m!7520612))

(assert (=> b!6770180 m!7519102))

(assert (=> b!6770180 m!7520612))

(declare-fun m!7520744 () Bool)

(assert (=> b!6770180 m!7520744))

(assert (=> b!6770180 m!7519104))

(assert (=> b!6770180 m!7520614))

(assert (=> b!6770180 m!7520744))

(assert (=> b!6770180 m!7520614))

(declare-fun m!7520746 () Bool)

(assert (=> b!6770180 m!7520746))

(assert (=> b!6768285 d!2126807))

(declare-fun bs!1801804 () Bool)

(declare-fun d!2126809 () Bool)

(assert (= bs!1801804 (and d!2126809 b!6768235)))

(declare-fun lambda!380954 () Int)

(assert (=> bs!1801804 (= (= (head!13605 s!2326) (h!72408 s!2326)) (= lambda!380954 lambda!380803))))

(declare-fun bs!1801805 () Bool)

(assert (= bs!1801805 (and d!2126809 d!2126107)))

(assert (=> bs!1801805 (= (= (head!13605 s!2326) (h!72408 s!2326)) (= lambda!380954 lambda!380806))))

(declare-fun bs!1801806 () Bool)

(assert (= bs!1801806 (and d!2126809 d!2126277)))

(assert (=> bs!1801806 (= (= (head!13605 s!2326) (h!72408 s!2326)) (= lambda!380954 lambda!380878))))

(declare-fun bs!1801807 () Bool)

(assert (= bs!1801807 (and d!2126809 d!2126297)))

(assert (=> bs!1801807 (= (= (head!13605 s!2326) (h!72408 s!2326)) (= lambda!380954 lambda!380880))))

(assert (=> d!2126809 true))

(assert (=> d!2126809 (= (derivationStepZipper!2539 lt!2443188 (head!13605 s!2326)) (flatMap!2076 lt!2443188 lambda!380954))))

(declare-fun bs!1801808 () Bool)

(assert (= bs!1801808 d!2126809))

(declare-fun m!7520748 () Bool)

(assert (=> bs!1801808 m!7520748))

(assert (=> b!6768285 d!2126809))

(assert (=> b!6768285 d!2126739))

(assert (=> b!6768285 d!2126677))

(assert (=> d!2126301 d!2126157))

(assert (=> d!2126301 d!2126245))

(declare-fun d!2126811 () Bool)

(assert (=> d!2126811 true))

(assert (=> d!2126811 true))

(declare-fun res!2768087 () Bool)

(assert (=> d!2126811 (= (choose!50436 lambda!380801) res!2768087)))

(assert (=> d!2126159 d!2126811))

(declare-fun b!6770181 () Bool)

(declare-fun e!4087577 () (InoxSet Context!11958))

(assert (=> b!6770181 (= e!4087577 ((as const (Array Context!11958 Bool)) false))))

(declare-fun call!613572 () (InoxSet Context!11958))

(declare-fun e!4087575 () (InoxSet Context!11958))

(declare-fun b!6770182 () Bool)

(assert (=> b!6770182 (= e!4087575 ((_ map or) call!613572 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443180)))))) (h!72408 s!2326))))))

(declare-fun b!6770183 () Bool)

(declare-fun e!4087576 () Bool)

(assert (=> b!6770183 (= e!4087576 (nullable!6576 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443180)))))))))

(declare-fun d!2126813 () Bool)

(declare-fun c!1257183 () Bool)

(assert (=> d!2126813 (= c!1257183 e!4087576)))

(declare-fun res!2768088 () Bool)

(assert (=> d!2126813 (=> (not res!2768088) (not e!4087576))))

(assert (=> d!2126813 (= res!2768088 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443180))))))))

(assert (=> d!2126813 (= (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 lt!2443180))) (h!72408 s!2326)) e!4087575)))

(declare-fun bm!613567 () Bool)

(assert (=> bm!613567 (= call!613572 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443180))))) (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443180)))))) (h!72408 s!2326)))))

(declare-fun b!6770184 () Bool)

(assert (=> b!6770184 (= e!4087575 e!4087577)))

(declare-fun c!1257184 () Bool)

(assert (=> b!6770184 (= c!1257184 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443180))))))))

(declare-fun b!6770185 () Bool)

(assert (=> b!6770185 (= e!4087577 call!613572)))

(assert (= (and d!2126813 res!2768088) b!6770183))

(assert (= (and d!2126813 c!1257183) b!6770182))

(assert (= (and d!2126813 (not c!1257183)) b!6770184))

(assert (= (and b!6770184 c!1257184) b!6770185))

(assert (= (and b!6770184 (not c!1257184)) b!6770181))

(assert (= (or b!6770182 b!6770185) bm!613567))

(declare-fun m!7520750 () Bool)

(assert (=> b!6770182 m!7520750))

(declare-fun m!7520752 () Bool)

(assert (=> b!6770183 m!7520752))

(declare-fun m!7520754 () Bool)

(assert (=> bm!613567 m!7520754))

(assert (=> b!6768957 d!2126813))

(declare-fun d!2126815 () Bool)

(assert (=> d!2126815 (= (Exists!3663 lambda!380841) (choose!50436 lambda!380841))))

(declare-fun bs!1801809 () Bool)

(assert (= bs!1801809 d!2126815))

(declare-fun m!7520756 () Bool)

(assert (=> bs!1801809 m!7520756))

(assert (=> d!2126163 d!2126815))

(declare-fun d!2126817 () Bool)

(assert (=> d!2126817 (= (Exists!3663 lambda!380842) (choose!50436 lambda!380842))))

(declare-fun bs!1801810 () Bool)

(assert (= bs!1801810 d!2126817))

(declare-fun m!7520758 () Bool)

(assert (=> bs!1801810 m!7520758))

(assert (=> d!2126163 d!2126817))

(declare-fun bs!1801811 () Bool)

(declare-fun d!2126819 () Bool)

(assert (= bs!1801811 (and d!2126819 d!2126719)))

(declare-fun lambda!380959 () Int)

(assert (=> bs!1801811 (= (= r!7292 (Star!16595 (reg!16924 r!7292))) (= lambda!380959 lambda!380937))))

(declare-fun bs!1801812 () Bool)

(assert (= bs!1801812 (and d!2126819 b!6769960)))

(assert (=> bs!1801812 (not (= lambda!380959 lambda!380930))))

(declare-fun bs!1801813 () Bool)

(assert (= bs!1801813 (and d!2126819 d!2126145)))

(assert (=> bs!1801813 (= (= r!7292 (Star!16595 (reg!16924 r!7292))) (= lambda!380959 lambda!380829))))

(declare-fun bs!1801814 () Bool)

(assert (= bs!1801814 (and d!2126819 b!6768233)))

(assert (=> bs!1801814 (= lambda!380959 lambda!380800)))

(assert (=> bs!1801814 (not (= lambda!380959 lambda!380802))))

(assert (=> bs!1801814 (not (= lambda!380959 lambda!380801))))

(declare-fun bs!1801815 () Bool)

(assert (= bs!1801815 (and d!2126819 b!6769013)))

(assert (=> bs!1801815 (not (= lambda!380959 lambda!380881))))

(assert (=> bs!1801813 (not (= lambda!380959 lambda!380830))))

(assert (=> bs!1801811 (not (= lambda!380959 lambda!380938))))

(declare-fun bs!1801816 () Bool)

(assert (= bs!1801816 (and d!2126819 b!6768909)))

(assert (=> bs!1801816 (not (= lambda!380959 lambda!380874))))

(declare-fun bs!1801817 () Bool)

(assert (= bs!1801817 (and d!2126819 b!6769963)))

(assert (=> bs!1801817 (not (= lambda!380959 lambda!380929))))

(declare-fun bs!1801818 () Bool)

(assert (= bs!1801818 (and d!2126819 d!2126163)))

(assert (=> bs!1801818 (not (= lambda!380959 lambda!380842))))

(declare-fun bs!1801819 () Bool)

(assert (= bs!1801819 (and d!2126819 d!2126725)))

(assert (=> bs!1801819 (= lambda!380959 lambda!380941)))

(declare-fun bs!1801820 () Bool)

(assert (= bs!1801820 (and d!2126819 b!6768912)))

(assert (=> bs!1801820 (not (= lambda!380959 lambda!380873))))

(declare-fun bs!1801821 () Bool)

(assert (= bs!1801821 (and d!2126819 d!2126187)))

(assert (=> bs!1801821 (= lambda!380959 lambda!380857)))

(declare-fun bs!1801822 () Bool)

(assert (= bs!1801822 (and d!2126819 b!6770030)))

(assert (=> bs!1801822 (not (= lambda!380959 lambda!380942))))

(declare-fun bs!1801823 () Bool)

(assert (= bs!1801823 (and d!2126819 b!6770027)))

(assert (=> bs!1801823 (not (= lambda!380959 lambda!380943))))

(declare-fun bs!1801824 () Bool)

(assert (= bs!1801824 (and d!2126819 b!6769010)))

(assert (=> bs!1801824 (not (= lambda!380959 lambda!380882))))

(assert (=> bs!1801818 (= lambda!380959 lambda!380841)))

(assert (=> d!2126819 true))

(assert (=> d!2126819 true))

(assert (=> d!2126819 true))

(declare-fun lambda!380960 () Int)

(assert (=> bs!1801811 (not (= lambda!380960 lambda!380937))))

(assert (=> bs!1801812 (= (and (= (reg!16924 r!7292) (regOne!33702 (regOne!33703 lt!2443204))) (= r!7292 (regTwo!33702 (regOne!33703 lt!2443204)))) (= lambda!380960 lambda!380930))))

(assert (=> bs!1801813 (not (= lambda!380960 lambda!380829))))

(assert (=> bs!1801814 (not (= lambda!380960 lambda!380800))))

(assert (=> bs!1801814 (= lambda!380960 lambda!380802)))

(assert (=> bs!1801814 (not (= lambda!380960 lambda!380801))))

(declare-fun bs!1801825 () Bool)

(assert (= bs!1801825 d!2126819))

(assert (=> bs!1801825 (not (= lambda!380960 lambda!380959))))

(assert (=> bs!1801815 (not (= lambda!380960 lambda!380881))))

(assert (=> bs!1801813 (not (= lambda!380960 lambda!380830))))

(assert (=> bs!1801811 (not (= lambda!380960 lambda!380938))))

(assert (=> bs!1801816 (= (and (= (reg!16924 r!7292) (regOne!33702 lt!2443204)) (= r!7292 (regTwo!33702 lt!2443204))) (= lambda!380960 lambda!380874))))

(assert (=> bs!1801817 (not (= lambda!380960 lambda!380929))))

(assert (=> bs!1801818 (= lambda!380960 lambda!380842)))

(assert (=> bs!1801819 (not (= lambda!380960 lambda!380941))))

(assert (=> bs!1801820 (not (= lambda!380960 lambda!380873))))

(assert (=> bs!1801821 (not (= lambda!380960 lambda!380857))))

(assert (=> bs!1801822 (not (= lambda!380960 lambda!380942))))

(assert (=> bs!1801823 (= (and (= (reg!16924 r!7292) (regOne!33702 (regOne!33703 r!7292))) (= r!7292 (regTwo!33702 (regOne!33703 r!7292)))) (= lambda!380960 lambda!380943))))

(assert (=> bs!1801824 (= (and (= (reg!16924 r!7292) (regOne!33702 r!7292)) (= r!7292 (regTwo!33702 r!7292))) (= lambda!380960 lambda!380882))))

(assert (=> bs!1801818 (not (= lambda!380960 lambda!380841))))

(assert (=> d!2126819 true))

(assert (=> d!2126819 true))

(assert (=> d!2126819 true))

(assert (=> d!2126819 (= (Exists!3663 lambda!380959) (Exists!3663 lambda!380960))))

(assert (=> d!2126819 true))

(declare-fun _$90!2638 () Unit!159881)

(assert (=> d!2126819 (= (choose!50440 (reg!16924 r!7292) r!7292 s!2326) _$90!2638)))

(declare-fun m!7520760 () Bool)

(assert (=> bs!1801825 m!7520760))

(declare-fun m!7520762 () Bool)

(assert (=> bs!1801825 m!7520762))

(assert (=> d!2126163 d!2126819))

(assert (=> d!2126163 d!2126649))

(assert (=> b!6768955 d!2126739))

(declare-fun b!6770194 () Bool)

(declare-fun c!1257187 () Bool)

(assert (=> b!6770194 (= c!1257187 ((_ is Star!16595) (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))))))

(declare-fun e!4087583 () (InoxSet Context!11958))

(declare-fun e!4087584 () (InoxSet Context!11958))

(assert (=> b!6770194 (= e!4087583 e!4087584)))

(declare-fun b!6770195 () Bool)

(declare-fun e!4087586 () (InoxSet Context!11958))

(declare-fun call!613577 () (InoxSet Context!11958))

(declare-fun call!613575 () (InoxSet Context!11958))

(assert (=> b!6770195 (= e!4087586 ((_ map or) call!613577 call!613575))))

(declare-fun b!6770196 () Bool)

(declare-fun e!4087585 () (InoxSet Context!11958))

(assert (=> b!6770196 (= e!4087585 (store ((as const (Array Context!11958 Bool)) false) (ite c!1256867 lt!2443210 (Context!11959 call!613368)) true))))

(declare-fun b!6770197 () Bool)

(declare-fun call!613574 () (InoxSet Context!11958))

(assert (=> b!6770197 (= e!4087584 call!613574)))

(declare-fun bm!613568 () Bool)

(declare-fun call!613578 () (InoxSet Context!11958))

(assert (=> bm!613568 (= call!613578 call!613577)))

(declare-fun bm!613569 () Bool)

(assert (=> bm!613569 (= call!613574 call!613578)))

(declare-fun b!6770198 () Bool)

(declare-fun e!4087587 () (InoxSet Context!11958))

(assert (=> b!6770198 (= e!4087587 ((_ map or) call!613575 call!613578))))

(declare-fun b!6770199 () Bool)

(declare-fun e!4087582 () Bool)

(assert (=> b!6770199 (= e!4087582 (nullable!6576 (regOne!33702 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292))))))))

(declare-fun d!2126821 () Bool)

(declare-fun c!1257188 () Bool)

(assert (=> d!2126821 (= c!1257188 (and ((_ is ElementMatch!16595) (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))) (= (c!1256657 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))) (h!72408 s!2326))))))

(assert (=> d!2126821 (= (derivationStepZipperDown!1823 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292))) (ite c!1256867 lt!2443210 (Context!11959 call!613368)) (h!72408 s!2326)) e!4087585)))

(declare-fun b!6770200 () Bool)

(assert (=> b!6770200 (= e!4087584 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770201 () Bool)

(assert (=> b!6770201 (= e!4087583 call!613574)))

(declare-fun b!6770202 () Bool)

(declare-fun c!1257186 () Bool)

(assert (=> b!6770202 (= c!1257186 e!4087582)))

(declare-fun res!2768097 () Bool)

(assert (=> b!6770202 (=> (not res!2768097) (not e!4087582))))

(assert (=> b!6770202 (= res!2768097 ((_ is Concat!25440) (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))))))

(assert (=> b!6770202 (= e!4087586 e!4087587)))

(declare-fun bm!613570 () Bool)

(declare-fun call!613573 () List!66085)

(declare-fun call!613576 () List!66085)

(assert (=> bm!613570 (= call!613573 call!613576)))

(declare-fun bm!613571 () Bool)

(declare-fun c!1257189 () Bool)

(declare-fun c!1257185 () Bool)

(assert (=> bm!613571 (= call!613577 (derivationStepZipperDown!1823 (ite c!1257185 (regOne!33703 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))) (ite c!1257186 (regTwo!33702 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))) (ite c!1257189 (regOne!33702 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))) (reg!16924 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292))))))) (ite (or c!1257185 c!1257186) (ite c!1256867 lt!2443210 (Context!11959 call!613368)) (Context!11959 call!613573)) (h!72408 s!2326)))))

(declare-fun b!6770203 () Bool)

(assert (=> b!6770203 (= e!4087587 e!4087583)))

(assert (=> b!6770203 (= c!1257189 ((_ is Concat!25440) (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))))))

(declare-fun b!6770204 () Bool)

(assert (=> b!6770204 (= e!4087585 e!4087586)))

(assert (=> b!6770204 (= c!1257185 ((_ is Union!16595) (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))))))

(declare-fun bm!613572 () Bool)

(assert (=> bm!613572 (= call!613575 (derivationStepZipperDown!1823 (ite c!1257185 (regTwo!33703 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))) (regOne!33702 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292))))) (ite c!1257185 (ite c!1256867 lt!2443210 (Context!11959 call!613368)) (Context!11959 call!613576)) (h!72408 s!2326)))))

(declare-fun bm!613573 () Bool)

(assert (=> bm!613573 (= call!613576 ($colon$colon!2406 (exprs!6479 (ite c!1256867 lt!2443210 (Context!11959 call!613368))) (ite (or c!1257186 c!1257189) (regTwo!33702 (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292)))) (ite c!1256867 (regTwo!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292))))))))

(assert (= (and d!2126821 c!1257188) b!6770196))

(assert (= (and d!2126821 (not c!1257188)) b!6770204))

(assert (= (and b!6770204 c!1257185) b!6770195))

(assert (= (and b!6770204 (not c!1257185)) b!6770202))

(assert (= (and b!6770202 res!2768097) b!6770199))

(assert (= (and b!6770202 c!1257186) b!6770198))

(assert (= (and b!6770202 (not c!1257186)) b!6770203))

(assert (= (and b!6770203 c!1257189) b!6770201))

(assert (= (and b!6770203 (not c!1257189)) b!6770194))

(assert (= (and b!6770194 c!1257187) b!6770197))

(assert (= (and b!6770194 (not c!1257187)) b!6770200))

(assert (= (or b!6770201 b!6770197) bm!613570))

(assert (= (or b!6770201 b!6770197) bm!613569))

(assert (= (or b!6770198 bm!613570) bm!613573))

(assert (= (or b!6770198 bm!613569) bm!613568))

(assert (= (or b!6770195 b!6770198) bm!613572))

(assert (= (or b!6770195 bm!613568) bm!613571))

(declare-fun m!7520764 () Bool)

(assert (=> bm!613573 m!7520764))

(declare-fun m!7520766 () Bool)

(assert (=> bm!613572 m!7520766))

(declare-fun m!7520768 () Bool)

(assert (=> bm!613571 m!7520768))

(declare-fun m!7520770 () Bool)

(assert (=> b!6770196 m!7520770))

(declare-fun m!7520772 () Bool)

(assert (=> b!6770199 m!7520772))

(assert (=> bm!613364 d!2126821))

(assert (=> bm!613358 d!2126157))

(declare-fun b!6770205 () Bool)

(declare-fun e!4087588 () List!66084)

(assert (=> b!6770205 (= e!4087588 (t!379793 s!2326))))

(declare-fun d!2126823 () Bool)

(declare-fun e!4087589 () Bool)

(assert (=> d!2126823 e!4087589))

(declare-fun res!2768098 () Bool)

(assert (=> d!2126823 (=> (not res!2768098) (not e!4087589))))

(declare-fun lt!2443383 () List!66084)

(assert (=> d!2126823 (= res!2768098 (= (content!12841 lt!2443383) ((_ map or) (content!12841 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960))) (content!12841 (t!379793 s!2326)))))))

(assert (=> d!2126823 (= lt!2443383 e!4087588)))

(declare-fun c!1257190 () Bool)

(assert (=> d!2126823 (= c!1257190 ((_ is Nil!65960) (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960))))))

(assert (=> d!2126823 (= (++!14749 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) (t!379793 s!2326)) lt!2443383)))

(declare-fun b!6770208 () Bool)

(assert (=> b!6770208 (= e!4087589 (or (not (= (t!379793 s!2326) Nil!65960)) (= lt!2443383 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)))))))

(declare-fun b!6770207 () Bool)

(declare-fun res!2768099 () Bool)

(assert (=> b!6770207 (=> (not res!2768099) (not e!4087589))))

(assert (=> b!6770207 (= res!2768099 (= (size!40631 lt!2443383) (+ (size!40631 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960))) (size!40631 (t!379793 s!2326)))))))

(declare-fun b!6770206 () Bool)

(assert (=> b!6770206 (= e!4087588 (Cons!65960 (h!72408 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960))) (++!14749 (t!379793 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960))) (t!379793 s!2326))))))

(assert (= (and d!2126823 c!1257190) b!6770205))

(assert (= (and d!2126823 (not c!1257190)) b!6770206))

(assert (= (and d!2126823 res!2768098) b!6770207))

(assert (= (and b!6770207 res!2768099) b!6770208))

(declare-fun m!7520774 () Bool)

(assert (=> d!2126823 m!7520774))

(assert (=> d!2126823 m!7519352))

(declare-fun m!7520776 () Bool)

(assert (=> d!2126823 m!7520776))

(declare-fun m!7520778 () Bool)

(assert (=> d!2126823 m!7520778))

(declare-fun m!7520780 () Bool)

(assert (=> b!6770207 m!7520780))

(assert (=> b!6770207 m!7519352))

(declare-fun m!7520782 () Bool)

(assert (=> b!6770207 m!7520782))

(declare-fun m!7520784 () Bool)

(assert (=> b!6770207 m!7520784))

(declare-fun m!7520786 () Bool)

(assert (=> b!6770206 m!7520786))

(assert (=> b!6768612 d!2126823))

(declare-fun b!6770209 () Bool)

(declare-fun e!4087590 () List!66084)

(assert (=> b!6770209 (= e!4087590 (Cons!65960 (h!72408 s!2326) Nil!65960))))

(declare-fun d!2126825 () Bool)

(declare-fun e!4087591 () Bool)

(assert (=> d!2126825 e!4087591))

(declare-fun res!2768100 () Bool)

(assert (=> d!2126825 (=> (not res!2768100) (not e!4087591))))

(declare-fun lt!2443384 () List!66084)

(assert (=> d!2126825 (= res!2768100 (= (content!12841 lt!2443384) ((_ map or) (content!12841 Nil!65960) (content!12841 (Cons!65960 (h!72408 s!2326) Nil!65960)))))))

(assert (=> d!2126825 (= lt!2443384 e!4087590)))

(declare-fun c!1257191 () Bool)

(assert (=> d!2126825 (= c!1257191 ((_ is Nil!65960) Nil!65960))))

(assert (=> d!2126825 (= (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) lt!2443384)))

(declare-fun b!6770212 () Bool)

(assert (=> b!6770212 (= e!4087591 (or (not (= (Cons!65960 (h!72408 s!2326) Nil!65960) Nil!65960)) (= lt!2443384 Nil!65960)))))

(declare-fun b!6770211 () Bool)

(declare-fun res!2768101 () Bool)

(assert (=> b!6770211 (=> (not res!2768101) (not e!4087591))))

(assert (=> b!6770211 (= res!2768101 (= (size!40631 lt!2443384) (+ (size!40631 Nil!65960) (size!40631 (Cons!65960 (h!72408 s!2326) Nil!65960)))))))

(declare-fun b!6770210 () Bool)

(assert (=> b!6770210 (= e!4087590 (Cons!65960 (h!72408 Nil!65960) (++!14749 (t!379793 Nil!65960) (Cons!65960 (h!72408 s!2326) Nil!65960))))))

(assert (= (and d!2126825 c!1257191) b!6770209))

(assert (= (and d!2126825 (not c!1257191)) b!6770210))

(assert (= (and d!2126825 res!2768100) b!6770211))

(assert (= (and b!6770211 res!2768101) b!6770212))

(declare-fun m!7520788 () Bool)

(assert (=> d!2126825 m!7520788))

(declare-fun m!7520790 () Bool)

(assert (=> d!2126825 m!7520790))

(declare-fun m!7520792 () Bool)

(assert (=> d!2126825 m!7520792))

(declare-fun m!7520794 () Bool)

(assert (=> b!6770211 m!7520794))

(declare-fun m!7520796 () Bool)

(assert (=> b!6770211 m!7520796))

(declare-fun m!7520798 () Bool)

(assert (=> b!6770211 m!7520798))

(declare-fun m!7520800 () Bool)

(assert (=> b!6770210 m!7520800))

(assert (=> b!6768612 d!2126825))

(declare-fun d!2126827 () Bool)

(assert (=> d!2126827 (= (++!14749 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) (t!379793 s!2326)) s!2326)))

(declare-fun lt!2443387 () Unit!159881)

(declare-fun choose!50447 (List!66084 C!33460 List!66084 List!66084) Unit!159881)

(assert (=> d!2126827 (= lt!2443387 (choose!50447 Nil!65960 (h!72408 s!2326) (t!379793 s!2326) s!2326))))

(assert (=> d!2126827 (= (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) (t!379793 s!2326))) s!2326)))

(assert (=> d!2126827 (= (lemmaMoveElementToOtherListKeepsConcatEq!2718 Nil!65960 (h!72408 s!2326) (t!379793 s!2326) s!2326) lt!2443387)))

(declare-fun bs!1801826 () Bool)

(assert (= bs!1801826 d!2126827))

(assert (=> bs!1801826 m!7519352))

(assert (=> bs!1801826 m!7519352))

(assert (=> bs!1801826 m!7519354))

(declare-fun m!7520802 () Bool)

(assert (=> bs!1801826 m!7520802))

(declare-fun m!7520804 () Bool)

(assert (=> bs!1801826 m!7520804))

(assert (=> b!6768612 d!2126827))

(declare-fun b!6770213 () Bool)

(declare-fun e!4087594 () Bool)

(assert (=> b!6770213 (= e!4087594 (matchR!8778 r!7292 (t!379793 s!2326)))))

(declare-fun b!6770214 () Bool)

(declare-fun e!4087592 () Option!16482)

(assert (=> b!6770214 (= e!4087592 None!16481)))

(declare-fun b!6770215 () Bool)

(declare-fun e!4087593 () Bool)

(declare-fun lt!2443390 () Option!16482)

(assert (=> b!6770215 (= e!4087593 (= (++!14749 (_1!36873 (get!22962 lt!2443390)) (_2!36873 (get!22962 lt!2443390))) s!2326))))

(declare-fun b!6770216 () Bool)

(declare-fun res!2768105 () Bool)

(assert (=> b!6770216 (=> (not res!2768105) (not e!4087593))))

(assert (=> b!6770216 (= res!2768105 (matchR!8778 (reg!16924 r!7292) (_1!36873 (get!22962 lt!2443390))))))

(declare-fun d!2126829 () Bool)

(declare-fun e!4087596 () Bool)

(assert (=> d!2126829 e!4087596))

(declare-fun res!2768106 () Bool)

(assert (=> d!2126829 (=> res!2768106 e!4087596)))

(assert (=> d!2126829 (= res!2768106 e!4087593)))

(declare-fun res!2768104 () Bool)

(assert (=> d!2126829 (=> (not res!2768104) (not e!4087593))))

(assert (=> d!2126829 (= res!2768104 (isDefined!13185 lt!2443390))))

(declare-fun e!4087595 () Option!16482)

(assert (=> d!2126829 (= lt!2443390 e!4087595)))

(declare-fun c!1257192 () Bool)

(assert (=> d!2126829 (= c!1257192 e!4087594)))

(declare-fun res!2768103 () Bool)

(assert (=> d!2126829 (=> (not res!2768103) (not e!4087594))))

(assert (=> d!2126829 (= res!2768103 (matchR!8778 (reg!16924 r!7292) (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960))))))

(assert (=> d!2126829 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126829 (= (findConcatSeparation!2896 (reg!16924 r!7292) r!7292 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) (t!379793 s!2326) s!2326) lt!2443390)))

(declare-fun b!6770217 () Bool)

(assert (=> b!6770217 (= e!4087595 e!4087592)))

(declare-fun c!1257193 () Bool)

(assert (=> b!6770217 (= c!1257193 ((_ is Nil!65960) (t!379793 s!2326)))))

(declare-fun b!6770218 () Bool)

(assert (=> b!6770218 (= e!4087595 (Some!16481 (tuple2!67141 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) (t!379793 s!2326))))))

(declare-fun b!6770219 () Bool)

(declare-fun res!2768102 () Bool)

(assert (=> b!6770219 (=> (not res!2768102) (not e!4087593))))

(assert (=> b!6770219 (= res!2768102 (matchR!8778 r!7292 (_2!36873 (get!22962 lt!2443390))))))

(declare-fun b!6770220 () Bool)

(declare-fun lt!2443388 () Unit!159881)

(declare-fun lt!2443389 () Unit!159881)

(assert (=> b!6770220 (= lt!2443388 lt!2443389)))

(assert (=> b!6770220 (= (++!14749 (++!14749 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) (Cons!65960 (h!72408 (t!379793 s!2326)) Nil!65960)) (t!379793 (t!379793 s!2326))) s!2326)))

(assert (=> b!6770220 (= lt!2443389 (lemmaMoveElementToOtherListKeepsConcatEq!2718 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) (h!72408 (t!379793 s!2326)) (t!379793 (t!379793 s!2326)) s!2326))))

(assert (=> b!6770220 (= e!4087592 (findConcatSeparation!2896 (reg!16924 r!7292) r!7292 (++!14749 (++!14749 Nil!65960 (Cons!65960 (h!72408 s!2326) Nil!65960)) (Cons!65960 (h!72408 (t!379793 s!2326)) Nil!65960)) (t!379793 (t!379793 s!2326)) s!2326))))

(declare-fun b!6770221 () Bool)

(assert (=> b!6770221 (= e!4087596 (not (isDefined!13185 lt!2443390)))))

(assert (= (and d!2126829 res!2768103) b!6770213))

(assert (= (and d!2126829 c!1257192) b!6770218))

(assert (= (and d!2126829 (not c!1257192)) b!6770217))

(assert (= (and b!6770217 c!1257193) b!6770214))

(assert (= (and b!6770217 (not c!1257193)) b!6770220))

(assert (= (and d!2126829 res!2768104) b!6770216))

(assert (= (and b!6770216 res!2768105) b!6770219))

(assert (= (and b!6770219 res!2768102) b!6770215))

(assert (= (and d!2126829 (not res!2768106)) b!6770221))

(declare-fun m!7520806 () Bool)

(assert (=> d!2126829 m!7520806))

(assert (=> d!2126829 m!7519352))

(declare-fun m!7520808 () Bool)

(assert (=> d!2126829 m!7520808))

(assert (=> d!2126829 m!7519252))

(declare-fun m!7520810 () Bool)

(assert (=> b!6770219 m!7520810))

(declare-fun m!7520812 () Bool)

(assert (=> b!6770219 m!7520812))

(assert (=> b!6770220 m!7519352))

(declare-fun m!7520814 () Bool)

(assert (=> b!6770220 m!7520814))

(assert (=> b!6770220 m!7520814))

(declare-fun m!7520816 () Bool)

(assert (=> b!6770220 m!7520816))

(assert (=> b!6770220 m!7519352))

(declare-fun m!7520818 () Bool)

(assert (=> b!6770220 m!7520818))

(assert (=> b!6770220 m!7520814))

(declare-fun m!7520820 () Bool)

(assert (=> b!6770220 m!7520820))

(assert (=> b!6770216 m!7520810))

(declare-fun m!7520822 () Bool)

(assert (=> b!6770216 m!7520822))

(assert (=> b!6770221 m!7520806))

(declare-fun m!7520824 () Bool)

(assert (=> b!6770213 m!7520824))

(assert (=> b!6770215 m!7520810))

(declare-fun m!7520826 () Bool)

(assert (=> b!6770215 m!7520826))

(assert (=> b!6768612 d!2126829))

(declare-fun d!2126831 () Bool)

(declare-fun res!2768107 () Bool)

(declare-fun e!4087597 () Bool)

(assert (=> d!2126831 (=> res!2768107 e!4087597)))

(assert (=> d!2126831 (= res!2768107 ((_ is Nil!65962) lt!2443287))))

(assert (=> d!2126831 (= (noDuplicate!2382 lt!2443287) e!4087597)))

(declare-fun b!6770222 () Bool)

(declare-fun e!4087598 () Bool)

(assert (=> b!6770222 (= e!4087597 e!4087598)))

(declare-fun res!2768108 () Bool)

(assert (=> b!6770222 (=> (not res!2768108) (not e!4087598))))

(assert (=> b!6770222 (= res!2768108 (not (contains!20277 (t!379795 lt!2443287) (h!72410 lt!2443287))))))

(declare-fun b!6770223 () Bool)

(assert (=> b!6770223 (= e!4087598 (noDuplicate!2382 (t!379795 lt!2443287)))))

(assert (= (and d!2126831 (not res!2768107)) b!6770222))

(assert (= (and b!6770222 res!2768108) b!6770223))

(declare-fun m!7520828 () Bool)

(assert (=> b!6770222 m!7520828))

(declare-fun m!7520830 () Bool)

(assert (=> b!6770223 m!7520830))

(assert (=> d!2126197 d!2126831))

(declare-fun d!2126833 () Bool)

(declare-fun e!4087600 () Bool)

(assert (=> d!2126833 e!4087600))

(declare-fun res!2768110 () Bool)

(assert (=> d!2126833 (=> (not res!2768110) (not e!4087600))))

(declare-fun res!2768109 () List!66086)

(assert (=> d!2126833 (= res!2768110 (noDuplicate!2382 res!2768109))))

(declare-fun e!4087601 () Bool)

(assert (=> d!2126833 e!4087601))

(assert (=> d!2126833 (= (choose!50442 lt!2443206) res!2768109)))

(declare-fun b!6770225 () Bool)

(declare-fun e!4087599 () Bool)

(declare-fun tp!1855041 () Bool)

(assert (=> b!6770225 (= e!4087599 tp!1855041)))

(declare-fun tp!1855040 () Bool)

(declare-fun b!6770224 () Bool)

(assert (=> b!6770224 (= e!4087601 (and (inv!84734 (h!72410 res!2768109)) e!4087599 tp!1855040))))

(declare-fun b!6770226 () Bool)

(assert (=> b!6770226 (= e!4087600 (= (content!12840 res!2768109) lt!2443206))))

(assert (= b!6770224 b!6770225))

(assert (= (and d!2126833 ((_ is Cons!65962) res!2768109)) b!6770224))

(assert (= (and d!2126833 res!2768110) b!6770226))

(declare-fun m!7520832 () Bool)

(assert (=> d!2126833 m!7520832))

(declare-fun m!7520834 () Bool)

(assert (=> b!6770224 m!7520834))

(declare-fun m!7520836 () Bool)

(assert (=> b!6770226 m!7520836))

(assert (=> d!2126197 d!2126833))

(declare-fun d!2126835 () Bool)

(assert (=> d!2126835 (= (nullable!6576 lt!2443204) (nullableFct!2482 lt!2443204))))

(declare-fun bs!1801827 () Bool)

(assert (= bs!1801827 d!2126835))

(declare-fun m!7520838 () Bool)

(assert (=> bs!1801827 m!7520838))

(assert (=> b!6768948 d!2126835))

(declare-fun d!2126837 () Bool)

(assert (=> d!2126837 (= (head!13606 (unfocusZipperList!2016 zl!343)) (h!72409 (unfocusZipperList!2016 zl!343)))))

(assert (=> b!6768765 d!2126837))

(declare-fun d!2126839 () Bool)

(assert (=> d!2126839 (= (nullable!6576 (regOne!33702 (reg!16924 r!7292))) (nullableFct!2482 (regOne!33702 (reg!16924 r!7292))))))

(declare-fun bs!1801828 () Bool)

(assert (= bs!1801828 d!2126839))

(declare-fun m!7520840 () Bool)

(assert (=> bs!1801828 m!7520840))

(assert (=> b!6769034 d!2126839))

(declare-fun c!1257195 () Bool)

(declare-fun bm!613574 () Bool)

(declare-fun c!1257194 () Bool)

(declare-fun call!613581 () Bool)

(assert (=> bm!613574 (= call!613581 (validRegex!8331 (ite c!1257195 (reg!16924 lt!2443319) (ite c!1257194 (regOne!33703 lt!2443319) (regOne!33702 lt!2443319)))))))

(declare-fun b!6770228 () Bool)

(declare-fun res!2768115 () Bool)

(declare-fun e!4087603 () Bool)

(assert (=> b!6770228 (=> res!2768115 e!4087603)))

(assert (=> b!6770228 (= res!2768115 (not ((_ is Concat!25440) lt!2443319)))))

(declare-fun e!4087606 () Bool)

(assert (=> b!6770228 (= e!4087606 e!4087603)))

(declare-fun b!6770229 () Bool)

(declare-fun e!4087607 () Bool)

(assert (=> b!6770229 (= e!4087603 e!4087607)))

(declare-fun res!2768111 () Bool)

(assert (=> b!6770229 (=> (not res!2768111) (not e!4087607))))

(declare-fun call!613579 () Bool)

(assert (=> b!6770229 (= res!2768111 call!613579)))

(declare-fun b!6770230 () Bool)

(declare-fun res!2768113 () Bool)

(declare-fun e!4087602 () Bool)

(assert (=> b!6770230 (=> (not res!2768113) (not e!4087602))))

(assert (=> b!6770230 (= res!2768113 call!613579)))

(assert (=> b!6770230 (= e!4087606 e!4087602)))

(declare-fun b!6770231 () Bool)

(declare-fun call!613580 () Bool)

(assert (=> b!6770231 (= e!4087607 call!613580)))

(declare-fun b!6770232 () Bool)

(declare-fun e!4087605 () Bool)

(assert (=> b!6770232 (= e!4087605 e!4087606)))

(assert (=> b!6770232 (= c!1257194 ((_ is Union!16595) lt!2443319))))

(declare-fun b!6770233 () Bool)

(assert (=> b!6770233 (= e!4087602 call!613580)))

(declare-fun bm!613575 () Bool)

(assert (=> bm!613575 (= call!613580 (validRegex!8331 (ite c!1257194 (regTwo!33703 lt!2443319) (regTwo!33702 lt!2443319))))))

(declare-fun b!6770234 () Bool)

(declare-fun e!4087608 () Bool)

(assert (=> b!6770234 (= e!4087608 call!613581)))

(declare-fun bm!613576 () Bool)

(assert (=> bm!613576 (= call!613579 call!613581)))

(declare-fun b!6770235 () Bool)

(declare-fun e!4087604 () Bool)

(assert (=> b!6770235 (= e!4087604 e!4087605)))

(assert (=> b!6770235 (= c!1257195 ((_ is Star!16595) lt!2443319))))

(declare-fun b!6770227 () Bool)

(assert (=> b!6770227 (= e!4087605 e!4087608)))

(declare-fun res!2768114 () Bool)

(assert (=> b!6770227 (= res!2768114 (not (nullable!6576 (reg!16924 lt!2443319))))))

(assert (=> b!6770227 (=> (not res!2768114) (not e!4087608))))

(declare-fun d!2126841 () Bool)

(declare-fun res!2768112 () Bool)

(assert (=> d!2126841 (=> res!2768112 e!4087604)))

(assert (=> d!2126841 (= res!2768112 ((_ is ElementMatch!16595) lt!2443319))))

(assert (=> d!2126841 (= (validRegex!8331 lt!2443319) e!4087604)))

(assert (= (and d!2126841 (not res!2768112)) b!6770235))

(assert (= (and b!6770235 c!1257195) b!6770227))

(assert (= (and b!6770235 (not c!1257195)) b!6770232))

(assert (= (and b!6770227 res!2768114) b!6770234))

(assert (= (and b!6770232 c!1257194) b!6770230))

(assert (= (and b!6770232 (not c!1257194)) b!6770228))

(assert (= (and b!6770230 res!2768113) b!6770233))

(assert (= (and b!6770228 (not res!2768115)) b!6770229))

(assert (= (and b!6770229 res!2768111) b!6770231))

(assert (= (or b!6770233 b!6770231) bm!613575))

(assert (= (or b!6770230 b!6770229) bm!613576))

(assert (= (or b!6770234 bm!613576) bm!613574))

(declare-fun m!7520842 () Bool)

(assert (=> bm!613574 m!7520842))

(declare-fun m!7520844 () Bool)

(assert (=> bm!613575 m!7520844))

(declare-fun m!7520846 () Bool)

(assert (=> b!6770227 m!7520846))

(assert (=> d!2126291 d!2126841))

(assert (=> d!2126291 d!2126205))

(assert (=> d!2126291 d!2126233))

(declare-fun d!2126843 () Bool)

(assert (=> d!2126843 true))

(assert (=> d!2126843 true))

(declare-fun res!2768116 () Bool)

(assert (=> d!2126843 (= (choose!50436 lambda!380802) res!2768116)))

(assert (=> d!2126155 d!2126843))

(declare-fun d!2126845 () Bool)

(assert (=> d!2126845 (= (isDefined!13185 lt!2443272) (not (isEmpty!38321 lt!2443272)))))

(declare-fun bs!1801829 () Bool)

(assert (= bs!1801829 d!2126845))

(declare-fun m!7520848 () Bool)

(assert (=> bs!1801829 m!7520848))

(assert (=> d!2126177 d!2126845))

(declare-fun b!6770236 () Bool)

(declare-fun res!2768120 () Bool)

(declare-fun e!4087611 () Bool)

(assert (=> b!6770236 (=> (not res!2768120) (not e!4087611))))

(declare-fun call!613582 () Bool)

(assert (=> b!6770236 (= res!2768120 (not call!613582))))

(declare-fun b!6770237 () Bool)

(declare-fun res!2768122 () Bool)

(assert (=> b!6770237 (=> (not res!2768122) (not e!4087611))))

(assert (=> b!6770237 (= res!2768122 (isEmpty!38317 (tail!12690 Nil!65960)))))

(declare-fun b!6770238 () Bool)

(declare-fun res!2768119 () Bool)

(declare-fun e!4087613 () Bool)

(assert (=> b!6770238 (=> res!2768119 e!4087613)))

(assert (=> b!6770238 (= res!2768119 (not (isEmpty!38317 (tail!12690 Nil!65960))))))

(declare-fun b!6770239 () Bool)

(declare-fun e!4087612 () Bool)

(declare-fun lt!2443391 () Bool)

(assert (=> b!6770239 (= e!4087612 (not lt!2443391))))

(declare-fun b!6770240 () Bool)

(assert (=> b!6770240 (= e!4087611 (= (head!13605 Nil!65960) (c!1256657 (reg!16924 r!7292))))))

(declare-fun b!6770241 () Bool)

(declare-fun e!4087615 () Bool)

(assert (=> b!6770241 (= e!4087615 e!4087613)))

(declare-fun res!2768117 () Bool)

(assert (=> b!6770241 (=> res!2768117 e!4087613)))

(assert (=> b!6770241 (= res!2768117 call!613582)))

(declare-fun b!6770242 () Bool)

(declare-fun e!4087609 () Bool)

(assert (=> b!6770242 (= e!4087609 (nullable!6576 (reg!16924 r!7292)))))

(declare-fun b!6770243 () Bool)

(declare-fun res!2768118 () Bool)

(declare-fun e!4087610 () Bool)

(assert (=> b!6770243 (=> res!2768118 e!4087610)))

(assert (=> b!6770243 (= res!2768118 (not ((_ is ElementMatch!16595) (reg!16924 r!7292))))))

(assert (=> b!6770243 (= e!4087612 e!4087610)))

(declare-fun b!6770245 () Bool)

(assert (=> b!6770245 (= e!4087610 e!4087615)))

(declare-fun res!2768121 () Bool)

(assert (=> b!6770245 (=> (not res!2768121) (not e!4087615))))

(assert (=> b!6770245 (= res!2768121 (not lt!2443391))))

(declare-fun b!6770246 () Bool)

(declare-fun e!4087614 () Bool)

(assert (=> b!6770246 (= e!4087614 (= lt!2443391 call!613582))))

(declare-fun bm!613577 () Bool)

(assert (=> bm!613577 (= call!613582 (isEmpty!38317 Nil!65960))))

(declare-fun b!6770247 () Bool)

(declare-fun res!2768123 () Bool)

(assert (=> b!6770247 (=> res!2768123 e!4087610)))

(assert (=> b!6770247 (= res!2768123 e!4087611)))

(declare-fun res!2768124 () Bool)

(assert (=> b!6770247 (=> (not res!2768124) (not e!4087611))))

(assert (=> b!6770247 (= res!2768124 lt!2443391)))

(declare-fun b!6770248 () Bool)

(assert (=> b!6770248 (= e!4087609 (matchR!8778 (derivativeStep!5261 (reg!16924 r!7292) (head!13605 Nil!65960)) (tail!12690 Nil!65960)))))

(declare-fun b!6770249 () Bool)

(assert (=> b!6770249 (= e!4087613 (not (= (head!13605 Nil!65960) (c!1256657 (reg!16924 r!7292)))))))

(declare-fun d!2126847 () Bool)

(assert (=> d!2126847 e!4087614))

(declare-fun c!1257196 () Bool)

(assert (=> d!2126847 (= c!1257196 ((_ is EmptyExpr!16595) (reg!16924 r!7292)))))

(assert (=> d!2126847 (= lt!2443391 e!4087609)))

(declare-fun c!1257198 () Bool)

(assert (=> d!2126847 (= c!1257198 (isEmpty!38317 Nil!65960))))

(assert (=> d!2126847 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126847 (= (matchR!8778 (reg!16924 r!7292) Nil!65960) lt!2443391)))

(declare-fun b!6770244 () Bool)

(assert (=> b!6770244 (= e!4087614 e!4087612)))

(declare-fun c!1257197 () Bool)

(assert (=> b!6770244 (= c!1257197 ((_ is EmptyLang!16595) (reg!16924 r!7292)))))

(assert (= (and d!2126847 c!1257198) b!6770242))

(assert (= (and d!2126847 (not c!1257198)) b!6770248))

(assert (= (and d!2126847 c!1257196) b!6770246))

(assert (= (and d!2126847 (not c!1257196)) b!6770244))

(assert (= (and b!6770244 c!1257197) b!6770239))

(assert (= (and b!6770244 (not c!1257197)) b!6770243))

(assert (= (and b!6770243 (not res!2768118)) b!6770247))

(assert (= (and b!6770247 res!2768124) b!6770236))

(assert (= (and b!6770236 res!2768120) b!6770237))

(assert (= (and b!6770237 res!2768122) b!6770240))

(assert (= (and b!6770247 (not res!2768123)) b!6770245))

(assert (= (and b!6770245 res!2768121) b!6770241))

(assert (= (and b!6770241 (not res!2768117)) b!6770238))

(assert (= (and b!6770238 (not res!2768119)) b!6770249))

(assert (= (or b!6770246 b!6770236 b!6770241) bm!613577))

(declare-fun m!7520850 () Bool)

(assert (=> b!6770249 m!7520850))

(declare-fun m!7520852 () Bool)

(assert (=> bm!613577 m!7520852))

(declare-fun m!7520854 () Bool)

(assert (=> b!6770238 m!7520854))

(assert (=> b!6770238 m!7520854))

(declare-fun m!7520856 () Bool)

(assert (=> b!6770238 m!7520856))

(assert (=> b!6770248 m!7520850))

(assert (=> b!6770248 m!7520850))

(declare-fun m!7520858 () Bool)

(assert (=> b!6770248 m!7520858))

(assert (=> b!6770248 m!7520854))

(assert (=> b!6770248 m!7520858))

(assert (=> b!6770248 m!7520854))

(declare-fun m!7520860 () Bool)

(assert (=> b!6770248 m!7520860))

(assert (=> b!6770242 m!7519540))

(assert (=> b!6770237 m!7520854))

(assert (=> b!6770237 m!7520854))

(assert (=> b!6770237 m!7520856))

(assert (=> b!6770240 m!7520850))

(assert (=> d!2126847 m!7520852))

(assert (=> d!2126847 m!7519252))

(assert (=> d!2126177 d!2126847))

(assert (=> d!2126177 d!2126649))

(assert (=> bm!613332 d!2126157))

(declare-fun b!6770250 () Bool)

(declare-fun res!2768128 () Bool)

(declare-fun e!4087618 () Bool)

(assert (=> b!6770250 (=> (not res!2768128) (not e!4087618))))

(declare-fun call!613583 () Bool)

(assert (=> b!6770250 (= res!2768128 (not call!613583))))

(declare-fun b!6770251 () Bool)

(declare-fun res!2768130 () Bool)

(assert (=> b!6770251 (=> (not res!2768130) (not e!4087618))))

(assert (=> b!6770251 (= res!2768130 (isEmpty!38317 (tail!12690 (tail!12690 (_1!36873 lt!2443186)))))))

(declare-fun b!6770252 () Bool)

(declare-fun res!2768127 () Bool)

(declare-fun e!4087620 () Bool)

(assert (=> b!6770252 (=> res!2768127 e!4087620)))

(assert (=> b!6770252 (= res!2768127 (not (isEmpty!38317 (tail!12690 (tail!12690 (_1!36873 lt!2443186))))))))

(declare-fun b!6770253 () Bool)

(declare-fun e!4087619 () Bool)

(declare-fun lt!2443392 () Bool)

(assert (=> b!6770253 (= e!4087619 (not lt!2443392))))

(declare-fun b!6770254 () Bool)

(assert (=> b!6770254 (= e!4087618 (= (head!13605 (tail!12690 (_1!36873 lt!2443186))) (c!1256657 (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186))))))))

(declare-fun b!6770255 () Bool)

(declare-fun e!4087622 () Bool)

(assert (=> b!6770255 (= e!4087622 e!4087620)))

(declare-fun res!2768125 () Bool)

(assert (=> b!6770255 (=> res!2768125 e!4087620)))

(assert (=> b!6770255 (= res!2768125 call!613583)))

(declare-fun b!6770256 () Bool)

(declare-fun e!4087616 () Bool)

(assert (=> b!6770256 (= e!4087616 (nullable!6576 (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186)))))))

(declare-fun b!6770257 () Bool)

(declare-fun res!2768126 () Bool)

(declare-fun e!4087617 () Bool)

(assert (=> b!6770257 (=> res!2768126 e!4087617)))

(assert (=> b!6770257 (= res!2768126 (not ((_ is ElementMatch!16595) (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186))))))))

(assert (=> b!6770257 (= e!4087619 e!4087617)))

(declare-fun b!6770259 () Bool)

(assert (=> b!6770259 (= e!4087617 e!4087622)))

(declare-fun res!2768129 () Bool)

(assert (=> b!6770259 (=> (not res!2768129) (not e!4087622))))

(assert (=> b!6770259 (= res!2768129 (not lt!2443392))))

(declare-fun b!6770260 () Bool)

(declare-fun e!4087621 () Bool)

(assert (=> b!6770260 (= e!4087621 (= lt!2443392 call!613583))))

(declare-fun bm!613578 () Bool)

(assert (=> bm!613578 (= call!613583 (isEmpty!38317 (tail!12690 (_1!36873 lt!2443186))))))

(declare-fun b!6770261 () Bool)

(declare-fun res!2768131 () Bool)

(assert (=> b!6770261 (=> res!2768131 e!4087617)))

(assert (=> b!6770261 (= res!2768131 e!4087618)))

(declare-fun res!2768132 () Bool)

(assert (=> b!6770261 (=> (not res!2768132) (not e!4087618))))

(assert (=> b!6770261 (= res!2768132 lt!2443392)))

(declare-fun b!6770262 () Bool)

(assert (=> b!6770262 (= e!4087616 (matchR!8778 (derivativeStep!5261 (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186))) (head!13605 (tail!12690 (_1!36873 lt!2443186)))) (tail!12690 (tail!12690 (_1!36873 lt!2443186)))))))

(declare-fun b!6770263 () Bool)

(assert (=> b!6770263 (= e!4087620 (not (= (head!13605 (tail!12690 (_1!36873 lt!2443186))) (c!1256657 (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186)))))))))

(declare-fun d!2126849 () Bool)

(assert (=> d!2126849 e!4087621))

(declare-fun c!1257199 () Bool)

(assert (=> d!2126849 (= c!1257199 ((_ is EmptyExpr!16595) (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186)))))))

(assert (=> d!2126849 (= lt!2443392 e!4087616)))

(declare-fun c!1257201 () Bool)

(assert (=> d!2126849 (= c!1257201 (isEmpty!38317 (tail!12690 (_1!36873 lt!2443186))))))

(assert (=> d!2126849 (validRegex!8331 (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186))))))

(assert (=> d!2126849 (= (matchR!8778 (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186))) (tail!12690 (_1!36873 lt!2443186))) lt!2443392)))

(declare-fun b!6770258 () Bool)

(assert (=> b!6770258 (= e!4087621 e!4087619)))

(declare-fun c!1257200 () Bool)

(assert (=> b!6770258 (= c!1257200 ((_ is EmptyLang!16595) (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186)))))))

(assert (= (and d!2126849 c!1257201) b!6770256))

(assert (= (and d!2126849 (not c!1257201)) b!6770262))

(assert (= (and d!2126849 c!1257199) b!6770260))

(assert (= (and d!2126849 (not c!1257199)) b!6770258))

(assert (= (and b!6770258 c!1257200) b!6770253))

(assert (= (and b!6770258 (not c!1257200)) b!6770257))

(assert (= (and b!6770257 (not res!2768126)) b!6770261))

(assert (= (and b!6770261 res!2768132) b!6770250))

(assert (= (and b!6770250 res!2768128) b!6770251))

(assert (= (and b!6770251 res!2768130) b!6770254))

(assert (= (and b!6770261 (not res!2768131)) b!6770259))

(assert (= (and b!6770259 res!2768129) b!6770255))

(assert (= (and b!6770255 (not res!2768125)) b!6770252))

(assert (= (and b!6770252 (not res!2768127)) b!6770263))

(assert (= (or b!6770260 b!6770250 b!6770255) bm!613578))

(assert (=> b!6770263 m!7519570))

(declare-fun m!7520862 () Bool)

(assert (=> b!6770263 m!7520862))

(assert (=> bm!613578 m!7519570))

(assert (=> bm!613578 m!7519702))

(assert (=> b!6770252 m!7519570))

(declare-fun m!7520864 () Bool)

(assert (=> b!6770252 m!7520864))

(assert (=> b!6770252 m!7520864))

(declare-fun m!7520866 () Bool)

(assert (=> b!6770252 m!7520866))

(assert (=> b!6770262 m!7519570))

(assert (=> b!6770262 m!7520862))

(assert (=> b!6770262 m!7519704))

(assert (=> b!6770262 m!7520862))

(declare-fun m!7520868 () Bool)

(assert (=> b!6770262 m!7520868))

(assert (=> b!6770262 m!7519570))

(assert (=> b!6770262 m!7520864))

(assert (=> b!6770262 m!7520868))

(assert (=> b!6770262 m!7520864))

(declare-fun m!7520870 () Bool)

(assert (=> b!6770262 m!7520870))

(assert (=> b!6770256 m!7519704))

(declare-fun m!7520872 () Bool)

(assert (=> b!6770256 m!7520872))

(assert (=> b!6770251 m!7519570))

(assert (=> b!6770251 m!7520864))

(assert (=> b!6770251 m!7520864))

(assert (=> b!6770251 m!7520866))

(assert (=> b!6770254 m!7519570))

(assert (=> b!6770254 m!7520862))

(assert (=> d!2126849 m!7519570))

(assert (=> d!2126849 m!7519702))

(assert (=> d!2126849 m!7519704))

(declare-fun m!7520874 () Bool)

(assert (=> d!2126849 m!7520874))

(assert (=> b!6769072 d!2126849))

(declare-fun b!6770264 () Bool)

(declare-fun e!4087625 () Regex!16595)

(declare-fun e!4087626 () Regex!16595)

(assert (=> b!6770264 (= e!4087625 e!4087626)))

(declare-fun c!1257204 () Bool)

(assert (=> b!6770264 (= c!1257204 ((_ is Star!16595) (reg!16924 r!7292)))))

(declare-fun b!6770265 () Bool)

(declare-fun e!4087623 () Regex!16595)

(assert (=> b!6770265 (= e!4087623 (ite (= (head!13605 (_1!36873 lt!2443186)) (c!1256657 (reg!16924 r!7292))) EmptyExpr!16595 EmptyLang!16595))))

(declare-fun bm!613579 () Bool)

(declare-fun call!613586 () Regex!16595)

(declare-fun call!613585 () Regex!16595)

(assert (=> bm!613579 (= call!613586 call!613585)))

(declare-fun e!4087627 () Regex!16595)

(declare-fun call!613587 () Regex!16595)

(declare-fun b!6770266 () Bool)

(declare-fun call!613584 () Regex!16595)

(assert (=> b!6770266 (= e!4087627 (Union!16595 (Concat!25440 call!613584 (regTwo!33702 (reg!16924 r!7292))) call!613587))))

(declare-fun b!6770267 () Bool)

(assert (=> b!6770267 (= e!4087625 (Union!16595 call!613584 call!613585))))

(declare-fun b!6770268 () Bool)

(declare-fun c!1257206 () Bool)

(assert (=> b!6770268 (= c!1257206 (nullable!6576 (regOne!33702 (reg!16924 r!7292))))))

(assert (=> b!6770268 (= e!4087626 e!4087627)))

(declare-fun b!6770269 () Bool)

(declare-fun c!1257205 () Bool)

(assert (=> b!6770269 (= c!1257205 ((_ is Union!16595) (reg!16924 r!7292)))))

(assert (=> b!6770269 (= e!4087623 e!4087625)))

(declare-fun b!6770270 () Bool)

(assert (=> b!6770270 (= e!4087627 (Union!16595 (Concat!25440 call!613587 (regTwo!33702 (reg!16924 r!7292))) EmptyLang!16595))))

(declare-fun bm!613580 () Bool)

(assert (=> bm!613580 (= call!613585 (derivativeStep!5261 (ite c!1257205 (regTwo!33703 (reg!16924 r!7292)) (ite c!1257204 (reg!16924 (reg!16924 r!7292)) (ite c!1257206 (regTwo!33702 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292))))) (head!13605 (_1!36873 lt!2443186))))))

(declare-fun b!6770271 () Bool)

(assert (=> b!6770271 (= e!4087626 (Concat!25440 call!613586 (reg!16924 r!7292)))))

(declare-fun d!2126851 () Bool)

(declare-fun lt!2443393 () Regex!16595)

(assert (=> d!2126851 (validRegex!8331 lt!2443393)))

(declare-fun e!4087624 () Regex!16595)

(assert (=> d!2126851 (= lt!2443393 e!4087624)))

(declare-fun c!1257202 () Bool)

(assert (=> d!2126851 (= c!1257202 (or ((_ is EmptyExpr!16595) (reg!16924 r!7292)) ((_ is EmptyLang!16595) (reg!16924 r!7292))))))

(assert (=> d!2126851 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126851 (= (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 lt!2443186))) lt!2443393)))

(declare-fun b!6770272 () Bool)

(assert (=> b!6770272 (= e!4087624 EmptyLang!16595)))

(declare-fun b!6770273 () Bool)

(assert (=> b!6770273 (= e!4087624 e!4087623)))

(declare-fun c!1257203 () Bool)

(assert (=> b!6770273 (= c!1257203 ((_ is ElementMatch!16595) (reg!16924 r!7292)))))

(declare-fun bm!613581 () Bool)

(assert (=> bm!613581 (= call!613587 call!613586)))

(declare-fun bm!613582 () Bool)

(assert (=> bm!613582 (= call!613584 (derivativeStep!5261 (ite c!1257205 (regOne!33703 (reg!16924 r!7292)) (regOne!33702 (reg!16924 r!7292))) (head!13605 (_1!36873 lt!2443186))))))

(assert (= (and d!2126851 c!1257202) b!6770272))

(assert (= (and d!2126851 (not c!1257202)) b!6770273))

(assert (= (and b!6770273 c!1257203) b!6770265))

(assert (= (and b!6770273 (not c!1257203)) b!6770269))

(assert (= (and b!6770269 c!1257205) b!6770267))

(assert (= (and b!6770269 (not c!1257205)) b!6770264))

(assert (= (and b!6770264 c!1257204) b!6770271))

(assert (= (and b!6770264 (not c!1257204)) b!6770268))

(assert (= (and b!6770268 c!1257206) b!6770266))

(assert (= (and b!6770268 (not c!1257206)) b!6770270))

(assert (= (or b!6770266 b!6770270) bm!613581))

(assert (= (or b!6770271 bm!613581) bm!613579))

(assert (= (or b!6770267 bm!613579) bm!613580))

(assert (= (or b!6770267 b!6770266) bm!613582))

(assert (=> b!6770268 m!7519670))

(assert (=> bm!613580 m!7519566))

(declare-fun m!7520876 () Bool)

(assert (=> bm!613580 m!7520876))

(declare-fun m!7520878 () Bool)

(assert (=> d!2126851 m!7520878))

(assert (=> d!2126851 m!7519252))

(assert (=> bm!613582 m!7519566))

(declare-fun m!7520880 () Bool)

(assert (=> bm!613582 m!7520880))

(assert (=> b!6769072 d!2126851))

(assert (=> b!6769072 d!2126775))

(assert (=> b!6769072 d!2126661))

(declare-fun d!2126853 () Bool)

(declare-fun res!2768133 () Bool)

(declare-fun e!4087628 () Bool)

(assert (=> d!2126853 (=> res!2768133 e!4087628)))

(assert (=> d!2126853 (= res!2768133 ((_ is Nil!65961) (exprs!6479 (h!72410 zl!343))))))

(assert (=> d!2126853 (= (forall!15789 (exprs!6479 (h!72410 zl!343)) lambda!380877) e!4087628)))

(declare-fun b!6770274 () Bool)

(declare-fun e!4087629 () Bool)

(assert (=> b!6770274 (= e!4087628 e!4087629)))

(declare-fun res!2768134 () Bool)

(assert (=> b!6770274 (=> (not res!2768134) (not e!4087629))))

(assert (=> b!6770274 (= res!2768134 (dynLambda!26320 lambda!380877 (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun b!6770275 () Bool)

(assert (=> b!6770275 (= e!4087629 (forall!15789 (t!379794 (exprs!6479 (h!72410 zl!343))) lambda!380877))))

(assert (= (and d!2126853 (not res!2768133)) b!6770274))

(assert (= (and b!6770274 res!2768134) b!6770275))

(declare-fun b_lambda!254939 () Bool)

(assert (=> (not b_lambda!254939) (not b!6770274)))

(declare-fun m!7520882 () Bool)

(assert (=> b!6770274 m!7520882))

(declare-fun m!7520884 () Bool)

(assert (=> b!6770275 m!7520884))

(assert (=> d!2126273 d!2126853))

(declare-fun d!2126855 () Bool)

(assert (=> d!2126855 true))

(declare-fun setRes!46295 () Bool)

(assert (=> d!2126855 setRes!46295))

(declare-fun condSetEmpty!46295 () Bool)

(declare-fun res!2768135 () (InoxSet Context!11958))

(assert (=> d!2126855 (= condSetEmpty!46295 (= res!2768135 ((as const (Array Context!11958 Bool)) false)))))

(assert (=> d!2126855 (= (choose!50434 lt!2443206 lambda!380803) res!2768135)))

(declare-fun setIsEmpty!46295 () Bool)

(assert (=> setIsEmpty!46295 setRes!46295))

(declare-fun tp!1855042 () Bool)

(declare-fun setNonEmpty!46295 () Bool)

(declare-fun setElem!46295 () Context!11958)

(declare-fun e!4087630 () Bool)

(assert (=> setNonEmpty!46295 (= setRes!46295 (and tp!1855042 (inv!84734 setElem!46295) e!4087630))))

(declare-fun setRest!46295 () (InoxSet Context!11958))

(assert (=> setNonEmpty!46295 (= res!2768135 ((_ map or) (store ((as const (Array Context!11958 Bool)) false) setElem!46295 true) setRest!46295))))

(declare-fun b!6770276 () Bool)

(declare-fun tp!1855043 () Bool)

(assert (=> b!6770276 (= e!4087630 tp!1855043)))

(assert (= (and d!2126855 condSetEmpty!46295) setIsEmpty!46295))

(assert (= (and d!2126855 (not condSetEmpty!46295)) setNonEmpty!46295))

(assert (= setNonEmpty!46295 b!6770276))

(declare-fun m!7520886 () Bool)

(assert (=> setNonEmpty!46295 m!7520886))

(assert (=> d!2126283 d!2126855))

(declare-fun d!2126857 () Bool)

(assert (=> d!2126857 (= (isEmpty!38317 (t!379793 s!2326)) ((_ is Nil!65960) (t!379793 s!2326)))))

(assert (=> d!2126105 d!2126857))

(declare-fun bs!1801830 () Bool)

(declare-fun b!6770286 () Bool)

(assert (= bs!1801830 (and b!6770286 d!2126719)))

(declare-fun lambda!380961 () Int)

(assert (=> bs!1801830 (not (= lambda!380961 lambda!380937))))

(declare-fun bs!1801831 () Bool)

(assert (= bs!1801831 (and b!6770286 b!6769960)))

(assert (=> bs!1801831 (not (= lambda!380961 lambda!380930))))

(declare-fun bs!1801832 () Bool)

(assert (= bs!1801832 (and b!6770286 d!2126145)))

(assert (=> bs!1801832 (not (= lambda!380961 lambda!380829))))

(declare-fun bs!1801833 () Bool)

(assert (= bs!1801833 (and b!6770286 b!6768233)))

(assert (=> bs!1801833 (not (= lambda!380961 lambda!380800))))

(assert (=> bs!1801833 (not (= lambda!380961 lambda!380802))))

(assert (=> bs!1801833 (= (and (= (reg!16924 (regTwo!33703 r!7292)) (reg!16924 r!7292)) (= (regTwo!33703 r!7292) r!7292)) (= lambda!380961 lambda!380801))))

(declare-fun bs!1801834 () Bool)

(assert (= bs!1801834 (and b!6770286 d!2126819)))

(assert (=> bs!1801834 (not (= lambda!380961 lambda!380959))))

(assert (=> bs!1801832 (= (and (= (reg!16924 (regTwo!33703 r!7292)) (reg!16924 r!7292)) (= (regTwo!33703 r!7292) (Star!16595 (reg!16924 r!7292)))) (= lambda!380961 lambda!380830))))

(assert (=> bs!1801830 (= (and (= (reg!16924 (regTwo!33703 r!7292)) (reg!16924 r!7292)) (= (regTwo!33703 r!7292) (Star!16595 (reg!16924 r!7292)))) (= lambda!380961 lambda!380938))))

(declare-fun bs!1801835 () Bool)

(assert (= bs!1801835 (and b!6770286 b!6768909)))

(assert (=> bs!1801835 (not (= lambda!380961 lambda!380874))))

(declare-fun bs!1801836 () Bool)

(assert (= bs!1801836 (and b!6770286 b!6769963)))

(assert (=> bs!1801836 (= (and (= (reg!16924 (regTwo!33703 r!7292)) (reg!16924 (regOne!33703 lt!2443204))) (= (regTwo!33703 r!7292) (regOne!33703 lt!2443204))) (= lambda!380961 lambda!380929))))

(declare-fun bs!1801837 () Bool)

(assert (= bs!1801837 (and b!6770286 d!2126163)))

(assert (=> bs!1801837 (not (= lambda!380961 lambda!380842))))

(declare-fun bs!1801838 () Bool)

(assert (= bs!1801838 (and b!6770286 d!2126725)))

(assert (=> bs!1801838 (not (= lambda!380961 lambda!380941))))

(declare-fun bs!1801839 () Bool)

(assert (= bs!1801839 (and b!6770286 b!6768912)))

(assert (=> bs!1801839 (= (and (= (reg!16924 (regTwo!33703 r!7292)) (reg!16924 lt!2443204)) (= (regTwo!33703 r!7292) lt!2443204)) (= lambda!380961 lambda!380873))))

(declare-fun bs!1801840 () Bool)

(assert (= bs!1801840 (and b!6770286 d!2126187)))

(assert (=> bs!1801840 (not (= lambda!380961 lambda!380857))))

(declare-fun bs!1801841 () Bool)

(assert (= bs!1801841 (and b!6770286 b!6769013)))

(assert (=> bs!1801841 (= (and (= (reg!16924 (regTwo!33703 r!7292)) (reg!16924 r!7292)) (= (regTwo!33703 r!7292) r!7292)) (= lambda!380961 lambda!380881))))

(assert (=> bs!1801834 (not (= lambda!380961 lambda!380960))))

(declare-fun bs!1801842 () Bool)

(assert (= bs!1801842 (and b!6770286 b!6770030)))

(assert (=> bs!1801842 (= (and (= (reg!16924 (regTwo!33703 r!7292)) (reg!16924 (regOne!33703 r!7292))) (= (regTwo!33703 r!7292) (regOne!33703 r!7292))) (= lambda!380961 lambda!380942))))

(declare-fun bs!1801843 () Bool)

(assert (= bs!1801843 (and b!6770286 b!6770027)))

(assert (=> bs!1801843 (not (= lambda!380961 lambda!380943))))

(declare-fun bs!1801844 () Bool)

(assert (= bs!1801844 (and b!6770286 b!6769010)))

(assert (=> bs!1801844 (not (= lambda!380961 lambda!380882))))

(assert (=> bs!1801837 (not (= lambda!380961 lambda!380841))))

(assert (=> b!6770286 true))

(assert (=> b!6770286 true))

(declare-fun bs!1801845 () Bool)

(declare-fun b!6770283 () Bool)

(assert (= bs!1801845 (and b!6770283 b!6770286)))

(declare-fun lambda!380962 () Int)

(assert (=> bs!1801845 (not (= lambda!380962 lambda!380961))))

(declare-fun bs!1801846 () Bool)

(assert (= bs!1801846 (and b!6770283 d!2126719)))

(assert (=> bs!1801846 (not (= lambda!380962 lambda!380937))))

(declare-fun bs!1801847 () Bool)

(assert (= bs!1801847 (and b!6770283 b!6769960)))

(assert (=> bs!1801847 (= (and (= (regOne!33702 (regTwo!33703 r!7292)) (regOne!33702 (regOne!33703 lt!2443204))) (= (regTwo!33702 (regTwo!33703 r!7292)) (regTwo!33702 (regOne!33703 lt!2443204)))) (= lambda!380962 lambda!380930))))

(declare-fun bs!1801848 () Bool)

(assert (= bs!1801848 (and b!6770283 d!2126145)))

(assert (=> bs!1801848 (not (= lambda!380962 lambda!380829))))

(declare-fun bs!1801849 () Bool)

(assert (= bs!1801849 (and b!6770283 b!6768233)))

(assert (=> bs!1801849 (not (= lambda!380962 lambda!380800))))

(assert (=> bs!1801849 (= (and (= (regOne!33702 (regTwo!33703 r!7292)) (reg!16924 r!7292)) (= (regTwo!33702 (regTwo!33703 r!7292)) r!7292)) (= lambda!380962 lambda!380802))))

(assert (=> bs!1801849 (not (= lambda!380962 lambda!380801))))

(declare-fun bs!1801850 () Bool)

(assert (= bs!1801850 (and b!6770283 d!2126819)))

(assert (=> bs!1801850 (not (= lambda!380962 lambda!380959))))

(assert (=> bs!1801848 (not (= lambda!380962 lambda!380830))))

(assert (=> bs!1801846 (not (= lambda!380962 lambda!380938))))

(declare-fun bs!1801851 () Bool)

(assert (= bs!1801851 (and b!6770283 b!6768909)))

(assert (=> bs!1801851 (= (and (= (regOne!33702 (regTwo!33703 r!7292)) (regOne!33702 lt!2443204)) (= (regTwo!33702 (regTwo!33703 r!7292)) (regTwo!33702 lt!2443204))) (= lambda!380962 lambda!380874))))

(declare-fun bs!1801852 () Bool)

(assert (= bs!1801852 (and b!6770283 b!6769963)))

(assert (=> bs!1801852 (not (= lambda!380962 lambda!380929))))

(declare-fun bs!1801853 () Bool)

(assert (= bs!1801853 (and b!6770283 d!2126163)))

(assert (=> bs!1801853 (= (and (= (regOne!33702 (regTwo!33703 r!7292)) (reg!16924 r!7292)) (= (regTwo!33702 (regTwo!33703 r!7292)) r!7292)) (= lambda!380962 lambda!380842))))

(declare-fun bs!1801854 () Bool)

(assert (= bs!1801854 (and b!6770283 d!2126725)))

(assert (=> bs!1801854 (not (= lambda!380962 lambda!380941))))

(declare-fun bs!1801855 () Bool)

(assert (= bs!1801855 (and b!6770283 b!6768912)))

(assert (=> bs!1801855 (not (= lambda!380962 lambda!380873))))

(declare-fun bs!1801856 () Bool)

(assert (= bs!1801856 (and b!6770283 d!2126187)))

(assert (=> bs!1801856 (not (= lambda!380962 lambda!380857))))

(declare-fun bs!1801857 () Bool)

(assert (= bs!1801857 (and b!6770283 b!6769013)))

(assert (=> bs!1801857 (not (= lambda!380962 lambda!380881))))

(assert (=> bs!1801850 (= (and (= (regOne!33702 (regTwo!33703 r!7292)) (reg!16924 r!7292)) (= (regTwo!33702 (regTwo!33703 r!7292)) r!7292)) (= lambda!380962 lambda!380960))))

(declare-fun bs!1801858 () Bool)

(assert (= bs!1801858 (and b!6770283 b!6770030)))

(assert (=> bs!1801858 (not (= lambda!380962 lambda!380942))))

(declare-fun bs!1801859 () Bool)

(assert (= bs!1801859 (and b!6770283 b!6770027)))

(assert (=> bs!1801859 (= (and (= (regOne!33702 (regTwo!33703 r!7292)) (regOne!33702 (regOne!33703 r!7292))) (= (regTwo!33702 (regTwo!33703 r!7292)) (regTwo!33702 (regOne!33703 r!7292)))) (= lambda!380962 lambda!380943))))

(declare-fun bs!1801860 () Bool)

(assert (= bs!1801860 (and b!6770283 b!6769010)))

(assert (=> bs!1801860 (= (and (= (regOne!33702 (regTwo!33703 r!7292)) (regOne!33702 r!7292)) (= (regTwo!33702 (regTwo!33703 r!7292)) (regTwo!33702 r!7292))) (= lambda!380962 lambda!380882))))

(assert (=> bs!1801853 (not (= lambda!380962 lambda!380841))))

(assert (=> b!6770283 true))

(assert (=> b!6770283 true))

(declare-fun call!613588 () Bool)

(declare-fun bm!613583 () Bool)

(declare-fun c!1257210 () Bool)

(assert (=> bm!613583 (= call!613588 (Exists!3663 (ite c!1257210 lambda!380961 lambda!380962)))))

(declare-fun b!6770277 () Bool)

(declare-fun res!2768138 () Bool)

(declare-fun e!4087632 () Bool)

(assert (=> b!6770277 (=> res!2768138 e!4087632)))

(declare-fun call!613589 () Bool)

(assert (=> b!6770277 (= res!2768138 call!613589)))

(declare-fun e!4087634 () Bool)

(assert (=> b!6770277 (= e!4087634 e!4087632)))

(declare-fun d!2126859 () Bool)

(declare-fun c!1257207 () Bool)

(assert (=> d!2126859 (= c!1257207 ((_ is EmptyExpr!16595) (regTwo!33703 r!7292)))))

(declare-fun e!4087636 () Bool)

(assert (=> d!2126859 (= (matchRSpec!3696 (regTwo!33703 r!7292) s!2326) e!4087636)))

(declare-fun b!6770278 () Bool)

(declare-fun c!1257209 () Bool)

(assert (=> b!6770278 (= c!1257209 ((_ is Union!16595) (regTwo!33703 r!7292)))))

(declare-fun e!4087635 () Bool)

(declare-fun e!4087637 () Bool)

(assert (=> b!6770278 (= e!4087635 e!4087637)))

(declare-fun b!6770279 () Bool)

(declare-fun e!4087631 () Bool)

(assert (=> b!6770279 (= e!4087631 (matchRSpec!3696 (regTwo!33703 (regTwo!33703 r!7292)) s!2326))))

(declare-fun b!6770280 () Bool)

(declare-fun e!4087633 () Bool)

(assert (=> b!6770280 (= e!4087636 e!4087633)))

(declare-fun res!2768136 () Bool)

(assert (=> b!6770280 (= res!2768136 (not ((_ is EmptyLang!16595) (regTwo!33703 r!7292))))))

(assert (=> b!6770280 (=> (not res!2768136) (not e!4087633))))

(declare-fun b!6770281 () Bool)

(assert (=> b!6770281 (= e!4087637 e!4087631)))

(declare-fun res!2768137 () Bool)

(assert (=> b!6770281 (= res!2768137 (matchRSpec!3696 (regOne!33703 (regTwo!33703 r!7292)) s!2326))))

(assert (=> b!6770281 (=> res!2768137 e!4087631)))

(declare-fun b!6770282 () Bool)

(assert (=> b!6770282 (= e!4087637 e!4087634)))

(assert (=> b!6770282 (= c!1257210 ((_ is Star!16595) (regTwo!33703 r!7292)))))

(declare-fun bm!613584 () Bool)

(assert (=> bm!613584 (= call!613589 (isEmpty!38317 s!2326))))

(assert (=> b!6770283 (= e!4087634 call!613588)))

(declare-fun b!6770284 () Bool)

(assert (=> b!6770284 (= e!4087635 (= s!2326 (Cons!65960 (c!1256657 (regTwo!33703 r!7292)) Nil!65960)))))

(declare-fun b!6770285 () Bool)

(declare-fun c!1257208 () Bool)

(assert (=> b!6770285 (= c!1257208 ((_ is ElementMatch!16595) (regTwo!33703 r!7292)))))

(assert (=> b!6770285 (= e!4087633 e!4087635)))

(assert (=> b!6770286 (= e!4087632 call!613588)))

(declare-fun b!6770287 () Bool)

(assert (=> b!6770287 (= e!4087636 call!613589)))

(assert (= (and d!2126859 c!1257207) b!6770287))

(assert (= (and d!2126859 (not c!1257207)) b!6770280))

(assert (= (and b!6770280 res!2768136) b!6770285))

(assert (= (and b!6770285 c!1257208) b!6770284))

(assert (= (and b!6770285 (not c!1257208)) b!6770278))

(assert (= (and b!6770278 c!1257209) b!6770281))

(assert (= (and b!6770278 (not c!1257209)) b!6770282))

(assert (= (and b!6770281 (not res!2768137)) b!6770279))

(assert (= (and b!6770282 c!1257210) b!6770277))

(assert (= (and b!6770282 (not c!1257210)) b!6770283))

(assert (= (and b!6770277 (not res!2768138)) b!6770286))

(assert (= (or b!6770286 b!6770283) bm!613583))

(assert (= (or b!6770287 b!6770277) bm!613584))

(declare-fun m!7520888 () Bool)

(assert (=> bm!613583 m!7520888))

(declare-fun m!7520890 () Bool)

(assert (=> b!6770279 m!7520890))

(declare-fun m!7520892 () Bool)

(assert (=> b!6770281 m!7520892))

(assert (=> bm!613584 m!7519036))

(assert (=> b!6769006 d!2126859))

(declare-fun b!6770288 () Bool)

(declare-fun res!2768142 () Bool)

(declare-fun e!4087640 () Bool)

(assert (=> b!6770288 (=> (not res!2768142) (not e!4087640))))

(declare-fun call!613590 () Bool)

(assert (=> b!6770288 (= res!2768142 (not call!613590))))

(declare-fun b!6770289 () Bool)

(declare-fun res!2768144 () Bool)

(assert (=> b!6770289 (=> (not res!2768144) (not e!4087640))))

(assert (=> b!6770289 (= res!2768144 (isEmpty!38317 (tail!12690 (_1!36873 (get!22962 lt!2443272)))))))

(declare-fun b!6770290 () Bool)

(declare-fun res!2768141 () Bool)

(declare-fun e!4087642 () Bool)

(assert (=> b!6770290 (=> res!2768141 e!4087642)))

(assert (=> b!6770290 (= res!2768141 (not (isEmpty!38317 (tail!12690 (_1!36873 (get!22962 lt!2443272))))))))

(declare-fun b!6770291 () Bool)

(declare-fun e!4087641 () Bool)

(declare-fun lt!2443394 () Bool)

(assert (=> b!6770291 (= e!4087641 (not lt!2443394))))

(declare-fun b!6770292 () Bool)

(assert (=> b!6770292 (= e!4087640 (= (head!13605 (_1!36873 (get!22962 lt!2443272))) (c!1256657 (reg!16924 r!7292))))))

(declare-fun b!6770293 () Bool)

(declare-fun e!4087644 () Bool)

(assert (=> b!6770293 (= e!4087644 e!4087642)))

(declare-fun res!2768139 () Bool)

(assert (=> b!6770293 (=> res!2768139 e!4087642)))

(assert (=> b!6770293 (= res!2768139 call!613590)))

(declare-fun b!6770294 () Bool)

(declare-fun e!4087638 () Bool)

(assert (=> b!6770294 (= e!4087638 (nullable!6576 (reg!16924 r!7292)))))

(declare-fun b!6770295 () Bool)

(declare-fun res!2768140 () Bool)

(declare-fun e!4087639 () Bool)

(assert (=> b!6770295 (=> res!2768140 e!4087639)))

(assert (=> b!6770295 (= res!2768140 (not ((_ is ElementMatch!16595) (reg!16924 r!7292))))))

(assert (=> b!6770295 (= e!4087641 e!4087639)))

(declare-fun b!6770297 () Bool)

(assert (=> b!6770297 (= e!4087639 e!4087644)))

(declare-fun res!2768143 () Bool)

(assert (=> b!6770297 (=> (not res!2768143) (not e!4087644))))

(assert (=> b!6770297 (= res!2768143 (not lt!2443394))))

(declare-fun b!6770298 () Bool)

(declare-fun e!4087643 () Bool)

(assert (=> b!6770298 (= e!4087643 (= lt!2443394 call!613590))))

(declare-fun bm!613585 () Bool)

(assert (=> bm!613585 (= call!613590 (isEmpty!38317 (_1!36873 (get!22962 lt!2443272))))))

(declare-fun b!6770299 () Bool)

(declare-fun res!2768145 () Bool)

(assert (=> b!6770299 (=> res!2768145 e!4087639)))

(assert (=> b!6770299 (= res!2768145 e!4087640)))

(declare-fun res!2768146 () Bool)

(assert (=> b!6770299 (=> (not res!2768146) (not e!4087640))))

(assert (=> b!6770299 (= res!2768146 lt!2443394)))

(declare-fun b!6770300 () Bool)

(assert (=> b!6770300 (= e!4087638 (matchR!8778 (derivativeStep!5261 (reg!16924 r!7292) (head!13605 (_1!36873 (get!22962 lt!2443272)))) (tail!12690 (_1!36873 (get!22962 lt!2443272)))))))

(declare-fun b!6770301 () Bool)

(assert (=> b!6770301 (= e!4087642 (not (= (head!13605 (_1!36873 (get!22962 lt!2443272))) (c!1256657 (reg!16924 r!7292)))))))

(declare-fun d!2126861 () Bool)

(assert (=> d!2126861 e!4087643))

(declare-fun c!1257211 () Bool)

(assert (=> d!2126861 (= c!1257211 ((_ is EmptyExpr!16595) (reg!16924 r!7292)))))

(assert (=> d!2126861 (= lt!2443394 e!4087638)))

(declare-fun c!1257213 () Bool)

(assert (=> d!2126861 (= c!1257213 (isEmpty!38317 (_1!36873 (get!22962 lt!2443272))))))

(assert (=> d!2126861 (validRegex!8331 (reg!16924 r!7292))))

(assert (=> d!2126861 (= (matchR!8778 (reg!16924 r!7292) (_1!36873 (get!22962 lt!2443272))) lt!2443394)))

(declare-fun b!6770296 () Bool)

(assert (=> b!6770296 (= e!4087643 e!4087641)))

(declare-fun c!1257212 () Bool)

(assert (=> b!6770296 (= c!1257212 ((_ is EmptyLang!16595) (reg!16924 r!7292)))))

(assert (= (and d!2126861 c!1257213) b!6770294))

(assert (= (and d!2126861 (not c!1257213)) b!6770300))

(assert (= (and d!2126861 c!1257211) b!6770298))

(assert (= (and d!2126861 (not c!1257211)) b!6770296))

(assert (= (and b!6770296 c!1257212) b!6770291))

(assert (= (and b!6770296 (not c!1257212)) b!6770295))

(assert (= (and b!6770295 (not res!2768140)) b!6770299))

(assert (= (and b!6770299 res!2768146) b!6770288))

(assert (= (and b!6770288 res!2768142) b!6770289))

(assert (= (and b!6770289 res!2768144) b!6770292))

(assert (= (and b!6770299 (not res!2768145)) b!6770297))

(assert (= (and b!6770297 res!2768143) b!6770293))

(assert (= (and b!6770293 (not res!2768139)) b!6770290))

(assert (= (and b!6770290 (not res!2768141)) b!6770301))

(assert (= (or b!6770298 b!6770288 b!6770293) bm!613585))

(declare-fun m!7520894 () Bool)

(assert (=> b!6770301 m!7520894))

(declare-fun m!7520896 () Bool)

(assert (=> bm!613585 m!7520896))

(declare-fun m!7520898 () Bool)

(assert (=> b!6770290 m!7520898))

(assert (=> b!6770290 m!7520898))

(declare-fun m!7520900 () Bool)

(assert (=> b!6770290 m!7520900))

(assert (=> b!6770300 m!7520894))

(assert (=> b!6770300 m!7520894))

(declare-fun m!7520902 () Bool)

(assert (=> b!6770300 m!7520902))

(assert (=> b!6770300 m!7520898))

(assert (=> b!6770300 m!7520902))

(assert (=> b!6770300 m!7520898))

(declare-fun m!7520904 () Bool)

(assert (=> b!6770300 m!7520904))

(assert (=> b!6770294 m!7519540))

(assert (=> b!6770289 m!7520898))

(assert (=> b!6770289 m!7520898))

(assert (=> b!6770289 m!7520900))

(assert (=> b!6770292 m!7520894))

(assert (=> d!2126861 m!7520896))

(assert (=> d!2126861 m!7519252))

(assert (=> b!6768608 d!2126861))

(assert (=> b!6768608 d!2126779))

(declare-fun b!6770302 () Bool)

(declare-fun c!1257216 () Bool)

(assert (=> b!6770302 (= c!1257216 ((_ is Star!16595) (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))))))

(declare-fun e!4087646 () (InoxSet Context!11958))

(declare-fun e!4087647 () (InoxSet Context!11958))

(assert (=> b!6770302 (= e!4087646 e!4087647)))

(declare-fun b!6770303 () Bool)

(declare-fun e!4087649 () (InoxSet Context!11958))

(declare-fun call!613595 () (InoxSet Context!11958))

(declare-fun call!613593 () (InoxSet Context!11958))

(assert (=> b!6770303 (= e!4087649 ((_ map or) call!613595 call!613593))))

(declare-fun b!6770304 () Bool)

(declare-fun e!4087648 () (InoxSet Context!11958))

(assert (=> b!6770304 (= e!4087648 (store ((as const (Array Context!11958 Bool)) false) (ite c!1256853 (Context!11959 Nil!65961) (Context!11959 call!613358)) true))))

(declare-fun b!6770305 () Bool)

(declare-fun call!613592 () (InoxSet Context!11958))

(assert (=> b!6770305 (= e!4087647 call!613592)))

(declare-fun bm!613586 () Bool)

(declare-fun call!613596 () (InoxSet Context!11958))

(assert (=> bm!613586 (= call!613596 call!613595)))

(declare-fun bm!613587 () Bool)

(assert (=> bm!613587 (= call!613592 call!613596)))

(declare-fun b!6770306 () Bool)

(declare-fun e!4087650 () (InoxSet Context!11958))

(assert (=> b!6770306 (= e!4087650 ((_ map or) call!613593 call!613596))))

(declare-fun b!6770307 () Bool)

(declare-fun e!4087645 () Bool)

(assert (=> b!6770307 (= e!4087645 (nullable!6576 (regOne!33702 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292)))))))

(declare-fun c!1257217 () Bool)

(declare-fun d!2126863 () Bool)

(assert (=> d!2126863 (= c!1257217 (and ((_ is ElementMatch!16595) (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))) (= (c!1256657 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))) (h!72408 s!2326))))))

(assert (=> d!2126863 (= (derivationStepZipperDown!1823 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292)) (ite c!1256853 (Context!11959 Nil!65961) (Context!11959 call!613358)) (h!72408 s!2326)) e!4087648)))

(declare-fun b!6770308 () Bool)

(assert (=> b!6770308 (= e!4087647 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770309 () Bool)

(assert (=> b!6770309 (= e!4087646 call!613592)))

(declare-fun b!6770310 () Bool)

(declare-fun c!1257215 () Bool)

(assert (=> b!6770310 (= c!1257215 e!4087645)))

(declare-fun res!2768147 () Bool)

(assert (=> b!6770310 (=> (not res!2768147) (not e!4087645))))

(assert (=> b!6770310 (= res!2768147 ((_ is Concat!25440) (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))))))

(assert (=> b!6770310 (= e!4087649 e!4087650)))

(declare-fun bm!613588 () Bool)

(declare-fun call!613591 () List!66085)

(declare-fun call!613594 () List!66085)

(assert (=> bm!613588 (= call!613591 call!613594)))

(declare-fun c!1257218 () Bool)

(declare-fun c!1257214 () Bool)

(declare-fun bm!613589 () Bool)

(assert (=> bm!613589 (= call!613595 (derivationStepZipperDown!1823 (ite c!1257214 (regOne!33703 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))) (ite c!1257215 (regTwo!33702 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))) (ite c!1257218 (regOne!33702 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))) (reg!16924 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292)))))) (ite (or c!1257214 c!1257215) (ite c!1256853 (Context!11959 Nil!65961) (Context!11959 call!613358)) (Context!11959 call!613591)) (h!72408 s!2326)))))

(declare-fun b!6770311 () Bool)

(assert (=> b!6770311 (= e!4087650 e!4087646)))

(assert (=> b!6770311 (= c!1257218 ((_ is Concat!25440) (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))))))

(declare-fun b!6770312 () Bool)

(assert (=> b!6770312 (= e!4087648 e!4087649)))

(assert (=> b!6770312 (= c!1257214 ((_ is Union!16595) (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))))))

(declare-fun bm!613590 () Bool)

(assert (=> bm!613590 (= call!613593 (derivationStepZipperDown!1823 (ite c!1257214 (regTwo!33703 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))) (regOne!33702 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292)))) (ite c!1257214 (ite c!1256853 (Context!11959 Nil!65961) (Context!11959 call!613358)) (Context!11959 call!613594)) (h!72408 s!2326)))))

(declare-fun bm!613591 () Bool)

(assert (=> bm!613591 (= call!613594 ($colon$colon!2406 (exprs!6479 (ite c!1256853 (Context!11959 Nil!65961) (Context!11959 call!613358))) (ite (or c!1257215 c!1257218) (regTwo!33702 (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292))) (ite c!1256853 (regTwo!33703 r!7292) (regOne!33702 r!7292)))))))

(assert (= (and d!2126863 c!1257217) b!6770304))

(assert (= (and d!2126863 (not c!1257217)) b!6770312))

(assert (= (and b!6770312 c!1257214) b!6770303))

(assert (= (and b!6770312 (not c!1257214)) b!6770310))

(assert (= (and b!6770310 res!2768147) b!6770307))

(assert (= (and b!6770310 c!1257215) b!6770306))

(assert (= (and b!6770310 (not c!1257215)) b!6770311))

(assert (= (and b!6770311 c!1257218) b!6770309))

(assert (= (and b!6770311 (not c!1257218)) b!6770302))

(assert (= (and b!6770302 c!1257216) b!6770305))

(assert (= (and b!6770302 (not c!1257216)) b!6770308))

(assert (= (or b!6770309 b!6770305) bm!613588))

(assert (= (or b!6770309 b!6770305) bm!613587))

(assert (= (or b!6770306 bm!613588) bm!613591))

(assert (= (or b!6770306 bm!613587) bm!613586))

(assert (= (or b!6770303 b!6770306) bm!613590))

(assert (= (or b!6770303 bm!613586) bm!613589))

(declare-fun m!7520906 () Bool)

(assert (=> bm!613591 m!7520906))

(declare-fun m!7520908 () Bool)

(assert (=> bm!613590 m!7520908))

(declare-fun m!7520910 () Bool)

(assert (=> bm!613589 m!7520910))

(declare-fun m!7520912 () Bool)

(assert (=> b!6770304 m!7520912))

(declare-fun m!7520914 () Bool)

(assert (=> b!6770307 m!7520914))

(assert (=> bm!613354 d!2126863))

(declare-fun d!2126865 () Bool)

(declare-fun c!1257219 () Bool)

(assert (=> d!2126865 (= c!1257219 (isEmpty!38317 (tail!12690 (_1!36873 lt!2443186))))))

(declare-fun e!4087651 () Bool)

(assert (=> d!2126865 (= (matchZipper!2581 (derivationStepZipper!2539 lt!2443198 (head!13605 (_1!36873 lt!2443186))) (tail!12690 (_1!36873 lt!2443186))) e!4087651)))

(declare-fun b!6770313 () Bool)

(assert (=> b!6770313 (= e!4087651 (nullableZipper!2303 (derivationStepZipper!2539 lt!2443198 (head!13605 (_1!36873 lt!2443186)))))))

(declare-fun b!6770314 () Bool)

(assert (=> b!6770314 (= e!4087651 (matchZipper!2581 (derivationStepZipper!2539 (derivationStepZipper!2539 lt!2443198 (head!13605 (_1!36873 lt!2443186))) (head!13605 (tail!12690 (_1!36873 lt!2443186)))) (tail!12690 (tail!12690 (_1!36873 lt!2443186)))))))

(assert (= (and d!2126865 c!1257219) b!6770313))

(assert (= (and d!2126865 (not c!1257219)) b!6770314))

(assert (=> d!2126865 m!7519570))

(assert (=> d!2126865 m!7519702))

(assert (=> b!6770313 m!7519568))

(declare-fun m!7520916 () Bool)

(assert (=> b!6770313 m!7520916))

(assert (=> b!6770314 m!7519570))

(assert (=> b!6770314 m!7520862))

(assert (=> b!6770314 m!7519568))

(assert (=> b!6770314 m!7520862))

(declare-fun m!7520918 () Bool)

(assert (=> b!6770314 m!7520918))

(assert (=> b!6770314 m!7519570))

(assert (=> b!6770314 m!7520864))

(assert (=> b!6770314 m!7520918))

(assert (=> b!6770314 m!7520864))

(declare-fun m!7520920 () Bool)

(assert (=> b!6770314 m!7520920))

(assert (=> b!6768870 d!2126865))

(declare-fun bs!1801861 () Bool)

(declare-fun d!2126867 () Bool)

(assert (= bs!1801861 (and d!2126867 b!6768235)))

(declare-fun lambda!380963 () Int)

(assert (=> bs!1801861 (= (= (head!13605 (_1!36873 lt!2443186)) (h!72408 s!2326)) (= lambda!380963 lambda!380803))))

(declare-fun bs!1801862 () Bool)

(assert (= bs!1801862 (and d!2126867 d!2126809)))

(assert (=> bs!1801862 (= (= (head!13605 (_1!36873 lt!2443186)) (head!13605 s!2326)) (= lambda!380963 lambda!380954))))

(declare-fun bs!1801863 () Bool)

(assert (= bs!1801863 (and d!2126867 d!2126297)))

(assert (=> bs!1801863 (= (= (head!13605 (_1!36873 lt!2443186)) (h!72408 s!2326)) (= lambda!380963 lambda!380880))))

(declare-fun bs!1801864 () Bool)

(assert (= bs!1801864 (and d!2126867 d!2126277)))

(assert (=> bs!1801864 (= (= (head!13605 (_1!36873 lt!2443186)) (h!72408 s!2326)) (= lambda!380963 lambda!380878))))

(declare-fun bs!1801865 () Bool)

(assert (= bs!1801865 (and d!2126867 d!2126107)))

(assert (=> bs!1801865 (= (= (head!13605 (_1!36873 lt!2443186)) (h!72408 s!2326)) (= lambda!380963 lambda!380806))))

(assert (=> d!2126867 true))

(assert (=> d!2126867 (= (derivationStepZipper!2539 lt!2443198 (head!13605 (_1!36873 lt!2443186))) (flatMap!2076 lt!2443198 lambda!380963))))

(declare-fun bs!1801866 () Bool)

(assert (= bs!1801866 d!2126867))

(declare-fun m!7520922 () Bool)

(assert (=> bs!1801866 m!7520922))

(assert (=> b!6768870 d!2126867))

(assert (=> b!6768870 d!2126775))

(assert (=> b!6768870 d!2126661))

(declare-fun d!2126869 () Bool)

(declare-fun c!1257220 () Bool)

(assert (=> d!2126869 (= c!1257220 (isEmpty!38317 (tail!12690 (t!379793 s!2326))))))

(declare-fun e!4087652 () Bool)

(assert (=> d!2126869 (= (matchZipper!2581 (derivationStepZipper!2539 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) (head!13605 (t!379793 s!2326))) (tail!12690 (t!379793 s!2326))) e!4087652)))

(declare-fun b!6770315 () Bool)

(assert (=> b!6770315 (= e!4087652 (nullableZipper!2303 (derivationStepZipper!2539 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) (head!13605 (t!379793 s!2326)))))))

(declare-fun b!6770316 () Bool)

(assert (=> b!6770316 (= e!4087652 (matchZipper!2581 (derivationStepZipper!2539 (derivationStepZipper!2539 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) (head!13605 (t!379793 s!2326))) (head!13605 (tail!12690 (t!379793 s!2326)))) (tail!12690 (tail!12690 (t!379793 s!2326)))))))

(assert (= (and d!2126869 c!1257220) b!6770315))

(assert (= (and d!2126869 (not c!1257220)) b!6770316))

(assert (=> d!2126869 m!7519116))

(declare-fun m!7520924 () Bool)

(assert (=> d!2126869 m!7520924))

(assert (=> b!6770315 m!7519114))

(declare-fun m!7520926 () Bool)

(assert (=> b!6770315 m!7520926))

(assert (=> b!6770316 m!7519116))

(declare-fun m!7520928 () Bool)

(assert (=> b!6770316 m!7520928))

(assert (=> b!6770316 m!7519114))

(assert (=> b!6770316 m!7520928))

(declare-fun m!7520930 () Bool)

(assert (=> b!6770316 m!7520930))

(assert (=> b!6770316 m!7519116))

(declare-fun m!7520932 () Bool)

(assert (=> b!6770316 m!7520932))

(assert (=> b!6770316 m!7520930))

(assert (=> b!6770316 m!7520932))

(declare-fun m!7520934 () Bool)

(assert (=> b!6770316 m!7520934))

(assert (=> b!6768293 d!2126869))

(declare-fun bs!1801867 () Bool)

(declare-fun d!2126871 () Bool)

(assert (= bs!1801867 (and d!2126871 d!2126867)))

(declare-fun lambda!380964 () Int)

(assert (=> bs!1801867 (= (= (head!13605 (t!379793 s!2326)) (head!13605 (_1!36873 lt!2443186))) (= lambda!380964 lambda!380963))))

(declare-fun bs!1801868 () Bool)

(assert (= bs!1801868 (and d!2126871 b!6768235)))

(assert (=> bs!1801868 (= (= (head!13605 (t!379793 s!2326)) (h!72408 s!2326)) (= lambda!380964 lambda!380803))))

(declare-fun bs!1801869 () Bool)

(assert (= bs!1801869 (and d!2126871 d!2126809)))

(assert (=> bs!1801869 (= (= (head!13605 (t!379793 s!2326)) (head!13605 s!2326)) (= lambda!380964 lambda!380954))))

(declare-fun bs!1801870 () Bool)

(assert (= bs!1801870 (and d!2126871 d!2126297)))

(assert (=> bs!1801870 (= (= (head!13605 (t!379793 s!2326)) (h!72408 s!2326)) (= lambda!380964 lambda!380880))))

(declare-fun bs!1801871 () Bool)

(assert (= bs!1801871 (and d!2126871 d!2126277)))

(assert (=> bs!1801871 (= (= (head!13605 (t!379793 s!2326)) (h!72408 s!2326)) (= lambda!380964 lambda!380878))))

(declare-fun bs!1801872 () Bool)

(assert (= bs!1801872 (and d!2126871 d!2126107)))

(assert (=> bs!1801872 (= (= (head!13605 (t!379793 s!2326)) (h!72408 s!2326)) (= lambda!380964 lambda!380806))))

(assert (=> d!2126871 true))

(assert (=> d!2126871 (= (derivationStepZipper!2539 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) (head!13605 (t!379793 s!2326))) (flatMap!2076 (derivationStepZipper!2539 lt!2443188 (h!72408 s!2326)) lambda!380964))))

(declare-fun bs!1801873 () Bool)

(assert (= bs!1801873 d!2126871))

(assert (=> bs!1801873 m!7519020))

(declare-fun m!7520936 () Bool)

(assert (=> bs!1801873 m!7520936))

(assert (=> b!6768293 d!2126871))

(declare-fun d!2126873 () Bool)

(assert (=> d!2126873 (= (head!13605 (t!379793 s!2326)) (h!72408 (t!379793 s!2326)))))

(assert (=> b!6768293 d!2126873))

(declare-fun d!2126875 () Bool)

(assert (=> d!2126875 (= (tail!12690 (t!379793 s!2326)) (t!379793 (t!379793 s!2326)))))

(assert (=> b!6768293 d!2126875))

(assert (=> b!6768944 d!2126675))

(assert (=> b!6768944 d!2126677))

(declare-fun d!2126877 () Bool)

(assert (=> d!2126877 (= (isUnion!1393 lt!2443296) ((_ is Union!16595) lt!2443296))))

(assert (=> b!6768761 d!2126877))

(declare-fun d!2126879 () Bool)

(assert (=> d!2126879 true))

(declare-fun setRes!46296 () Bool)

(assert (=> d!2126879 setRes!46296))

(declare-fun condSetEmpty!46296 () Bool)

(declare-fun res!2768148 () (InoxSet Context!11958))

(assert (=> d!2126879 (= condSetEmpty!46296 (= res!2768148 ((as const (Array Context!11958 Bool)) false)))))

(assert (=> d!2126879 (= (choose!50434 z!1189 lambda!380803) res!2768148)))

(declare-fun setIsEmpty!46296 () Bool)

(assert (=> setIsEmpty!46296 setRes!46296))

(declare-fun e!4087653 () Bool)

(declare-fun setElem!46296 () Context!11958)

(declare-fun tp!1855044 () Bool)

(declare-fun setNonEmpty!46296 () Bool)

(assert (=> setNonEmpty!46296 (= setRes!46296 (and tp!1855044 (inv!84734 setElem!46296) e!4087653))))

(declare-fun setRest!46296 () (InoxSet Context!11958))

(assert (=> setNonEmpty!46296 (= res!2768148 ((_ map or) (store ((as const (Array Context!11958 Bool)) false) setElem!46296 true) setRest!46296))))

(declare-fun b!6770317 () Bool)

(declare-fun tp!1855045 () Bool)

(assert (=> b!6770317 (= e!4087653 tp!1855045)))

(assert (= (and d!2126879 condSetEmpty!46296) setIsEmpty!46296))

(assert (= (and d!2126879 (not condSetEmpty!46296)) setNonEmpty!46296))

(assert (= setNonEmpty!46296 b!6770317))

(declare-fun m!7520938 () Bool)

(assert (=> setNonEmpty!46296 m!7520938))

(assert (=> d!2126117 d!2126879))

(declare-fun b!6770318 () Bool)

(declare-fun res!2768152 () Bool)

(declare-fun e!4087656 () Bool)

(assert (=> b!6770318 (=> (not res!2768152) (not e!4087656))))

(declare-fun call!613597 () Bool)

(assert (=> b!6770318 (= res!2768152 (not call!613597))))

(declare-fun b!6770319 () Bool)

(declare-fun res!2768154 () Bool)

(assert (=> b!6770319 (=> (not res!2768154) (not e!4087656))))

(assert (=> b!6770319 (= res!2768154 (isEmpty!38317 (tail!12690 (tail!12690 s!2326))))))

(declare-fun b!6770320 () Bool)

(declare-fun res!2768151 () Bool)

(declare-fun e!4087658 () Bool)

(assert (=> b!6770320 (=> res!2768151 e!4087658)))

(assert (=> b!6770320 (= res!2768151 (not (isEmpty!38317 (tail!12690 (tail!12690 s!2326)))))))

(declare-fun b!6770321 () Bool)

(declare-fun e!4087657 () Bool)

(declare-fun lt!2443395 () Bool)

(assert (=> b!6770321 (= e!4087657 (not lt!2443395))))

(declare-fun b!6770322 () Bool)

(assert (=> b!6770322 (= e!4087656 (= (head!13605 (tail!12690 s!2326)) (c!1256657 (derivativeStep!5261 r!7292 (head!13605 s!2326)))))))

(declare-fun b!6770323 () Bool)

(declare-fun e!4087660 () Bool)

(assert (=> b!6770323 (= e!4087660 e!4087658)))

(declare-fun res!2768149 () Bool)

(assert (=> b!6770323 (=> res!2768149 e!4087658)))

(assert (=> b!6770323 (= res!2768149 call!613597)))

(declare-fun b!6770324 () Bool)

(declare-fun e!4087654 () Bool)

(assert (=> b!6770324 (= e!4087654 (nullable!6576 (derivativeStep!5261 r!7292 (head!13605 s!2326))))))

(declare-fun b!6770325 () Bool)

(declare-fun res!2768150 () Bool)

(declare-fun e!4087655 () Bool)

(assert (=> b!6770325 (=> res!2768150 e!4087655)))

(assert (=> b!6770325 (= res!2768150 (not ((_ is ElementMatch!16595) (derivativeStep!5261 r!7292 (head!13605 s!2326)))))))

(assert (=> b!6770325 (= e!4087657 e!4087655)))

(declare-fun b!6770327 () Bool)

(assert (=> b!6770327 (= e!4087655 e!4087660)))

(declare-fun res!2768153 () Bool)

(assert (=> b!6770327 (=> (not res!2768153) (not e!4087660))))

(assert (=> b!6770327 (= res!2768153 (not lt!2443395))))

(declare-fun b!6770328 () Bool)

(declare-fun e!4087659 () Bool)

(assert (=> b!6770328 (= e!4087659 (= lt!2443395 call!613597))))

(declare-fun bm!613592 () Bool)

(assert (=> bm!613592 (= call!613597 (isEmpty!38317 (tail!12690 s!2326)))))

(declare-fun b!6770329 () Bool)

(declare-fun res!2768155 () Bool)

(assert (=> b!6770329 (=> res!2768155 e!4087655)))

(assert (=> b!6770329 (= res!2768155 e!4087656)))

(declare-fun res!2768156 () Bool)

(assert (=> b!6770329 (=> (not res!2768156) (not e!4087656))))

(assert (=> b!6770329 (= res!2768156 lt!2443395)))

(declare-fun b!6770330 () Bool)

(assert (=> b!6770330 (= e!4087654 (matchR!8778 (derivativeStep!5261 (derivativeStep!5261 r!7292 (head!13605 s!2326)) (head!13605 (tail!12690 s!2326))) (tail!12690 (tail!12690 s!2326))))))

(declare-fun b!6770331 () Bool)

(assert (=> b!6770331 (= e!4087658 (not (= (head!13605 (tail!12690 s!2326)) (c!1256657 (derivativeStep!5261 r!7292 (head!13605 s!2326))))))))

(declare-fun d!2126881 () Bool)

(assert (=> d!2126881 e!4087659))

(declare-fun c!1257221 () Bool)

(assert (=> d!2126881 (= c!1257221 ((_ is EmptyExpr!16595) (derivativeStep!5261 r!7292 (head!13605 s!2326))))))

(assert (=> d!2126881 (= lt!2443395 e!4087654)))

(declare-fun c!1257223 () Bool)

(assert (=> d!2126881 (= c!1257223 (isEmpty!38317 (tail!12690 s!2326)))))

(assert (=> d!2126881 (validRegex!8331 (derivativeStep!5261 r!7292 (head!13605 s!2326)))))

(assert (=> d!2126881 (= (matchR!8778 (derivativeStep!5261 r!7292 (head!13605 s!2326)) (tail!12690 s!2326)) lt!2443395)))

(declare-fun b!6770326 () Bool)

(assert (=> b!6770326 (= e!4087659 e!4087657)))

(declare-fun c!1257222 () Bool)

(assert (=> b!6770326 (= c!1257222 ((_ is EmptyLang!16595) (derivativeStep!5261 r!7292 (head!13605 s!2326))))))

(assert (= (and d!2126881 c!1257223) b!6770324))

(assert (= (and d!2126881 (not c!1257223)) b!6770330))

(assert (= (and d!2126881 c!1257221) b!6770328))

(assert (= (and d!2126881 (not c!1257221)) b!6770326))

(assert (= (and b!6770326 c!1257222) b!6770321))

(assert (= (and b!6770326 (not c!1257222)) b!6770325))

(assert (= (and b!6770325 (not res!2768150)) b!6770329))

(assert (= (and b!6770329 res!2768156) b!6770318))

(assert (= (and b!6770318 res!2768152) b!6770319))

(assert (= (and b!6770319 res!2768154) b!6770322))

(assert (= (and b!6770329 (not res!2768155)) b!6770327))

(assert (= (and b!6770327 res!2768153) b!6770323))

(assert (= (and b!6770323 (not res!2768149)) b!6770320))

(assert (= (and b!6770320 (not res!2768151)) b!6770331))

(assert (= (or b!6770328 b!6770318 b!6770323) bm!613592))

(assert (=> b!6770331 m!7519104))

(assert (=> b!6770331 m!7520612))

(assert (=> bm!613592 m!7519104))

(assert (=> bm!613592 m!7519582))

(assert (=> b!6770320 m!7519104))

(assert (=> b!6770320 m!7520614))

(assert (=> b!6770320 m!7520614))

(assert (=> b!6770320 m!7520616))

(assert (=> b!6770330 m!7519104))

(assert (=> b!6770330 m!7520612))

(assert (=> b!6770330 m!7519656))

(assert (=> b!6770330 m!7520612))

(declare-fun m!7520940 () Bool)

(assert (=> b!6770330 m!7520940))

(assert (=> b!6770330 m!7519104))

(assert (=> b!6770330 m!7520614))

(assert (=> b!6770330 m!7520940))

(assert (=> b!6770330 m!7520614))

(declare-fun m!7520942 () Bool)

(assert (=> b!6770330 m!7520942))

(assert (=> b!6770324 m!7519656))

(declare-fun m!7520944 () Bool)

(assert (=> b!6770324 m!7520944))

(assert (=> b!6770319 m!7519104))

(assert (=> b!6770319 m!7520614))

(assert (=> b!6770319 m!7520614))

(assert (=> b!6770319 m!7520616))

(assert (=> b!6770322 m!7519104))

(assert (=> b!6770322 m!7520612))

(assert (=> d!2126881 m!7519104))

(assert (=> d!2126881 m!7519582))

(assert (=> d!2126881 m!7519656))

(declare-fun m!7520946 () Bool)

(assert (=> d!2126881 m!7520946))

(assert (=> b!6769027 d!2126881))

(declare-fun b!6770332 () Bool)

(declare-fun e!4087663 () Regex!16595)

(declare-fun e!4087664 () Regex!16595)

(assert (=> b!6770332 (= e!4087663 e!4087664)))

(declare-fun c!1257226 () Bool)

(assert (=> b!6770332 (= c!1257226 ((_ is Star!16595) r!7292))))

(declare-fun b!6770333 () Bool)

(declare-fun e!4087661 () Regex!16595)

(assert (=> b!6770333 (= e!4087661 (ite (= (head!13605 s!2326) (c!1256657 r!7292)) EmptyExpr!16595 EmptyLang!16595))))

(declare-fun bm!613593 () Bool)

(declare-fun call!613600 () Regex!16595)

(declare-fun call!613599 () Regex!16595)

(assert (=> bm!613593 (= call!613600 call!613599)))

(declare-fun e!4087665 () Regex!16595)

(declare-fun b!6770334 () Bool)

(declare-fun call!613598 () Regex!16595)

(declare-fun call!613601 () Regex!16595)

(assert (=> b!6770334 (= e!4087665 (Union!16595 (Concat!25440 call!613598 (regTwo!33702 r!7292)) call!613601))))

(declare-fun b!6770335 () Bool)

(assert (=> b!6770335 (= e!4087663 (Union!16595 call!613598 call!613599))))

(declare-fun b!6770336 () Bool)

(declare-fun c!1257228 () Bool)

(assert (=> b!6770336 (= c!1257228 (nullable!6576 (regOne!33702 r!7292)))))

(assert (=> b!6770336 (= e!4087664 e!4087665)))

(declare-fun b!6770337 () Bool)

(declare-fun c!1257227 () Bool)

(assert (=> b!6770337 (= c!1257227 ((_ is Union!16595) r!7292))))

(assert (=> b!6770337 (= e!4087661 e!4087663)))

(declare-fun b!6770338 () Bool)

(assert (=> b!6770338 (= e!4087665 (Union!16595 (Concat!25440 call!613601 (regTwo!33702 r!7292)) EmptyLang!16595))))

(declare-fun bm!613594 () Bool)

(assert (=> bm!613594 (= call!613599 (derivativeStep!5261 (ite c!1257227 (regTwo!33703 r!7292) (ite c!1257226 (reg!16924 r!7292) (ite c!1257228 (regTwo!33702 r!7292) (regOne!33702 r!7292)))) (head!13605 s!2326)))))

(declare-fun b!6770339 () Bool)

(assert (=> b!6770339 (= e!4087664 (Concat!25440 call!613600 r!7292))))

(declare-fun d!2126883 () Bool)

(declare-fun lt!2443396 () Regex!16595)

(assert (=> d!2126883 (validRegex!8331 lt!2443396)))

(declare-fun e!4087662 () Regex!16595)

(assert (=> d!2126883 (= lt!2443396 e!4087662)))

(declare-fun c!1257224 () Bool)

(assert (=> d!2126883 (= c!1257224 (or ((_ is EmptyExpr!16595) r!7292) ((_ is EmptyLang!16595) r!7292)))))

(assert (=> d!2126883 (validRegex!8331 r!7292)))

(assert (=> d!2126883 (= (derivativeStep!5261 r!7292 (head!13605 s!2326)) lt!2443396)))

(declare-fun b!6770340 () Bool)

(assert (=> b!6770340 (= e!4087662 EmptyLang!16595)))

(declare-fun b!6770341 () Bool)

(assert (=> b!6770341 (= e!4087662 e!4087661)))

(declare-fun c!1257225 () Bool)

(assert (=> b!6770341 (= c!1257225 ((_ is ElementMatch!16595) r!7292))))

(declare-fun bm!613595 () Bool)

(assert (=> bm!613595 (= call!613601 call!613600)))

(declare-fun bm!613596 () Bool)

(assert (=> bm!613596 (= call!613598 (derivativeStep!5261 (ite c!1257227 (regOne!33703 r!7292) (regOne!33702 r!7292)) (head!13605 s!2326)))))

(assert (= (and d!2126883 c!1257224) b!6770340))

(assert (= (and d!2126883 (not c!1257224)) b!6770341))

(assert (= (and b!6770341 c!1257225) b!6770333))

(assert (= (and b!6770341 (not c!1257225)) b!6770337))

(assert (= (and b!6770337 c!1257227) b!6770335))

(assert (= (and b!6770337 (not c!1257227)) b!6770332))

(assert (= (and b!6770332 c!1257226) b!6770339))

(assert (= (and b!6770332 (not c!1257226)) b!6770336))

(assert (= (and b!6770336 c!1257228) b!6770334))

(assert (= (and b!6770336 (not c!1257228)) b!6770338))

(assert (= (or b!6770334 b!6770338) bm!613595))

(assert (= (or b!6770339 bm!613595) bm!613593))

(assert (= (or b!6770335 bm!613593) bm!613594))

(assert (= (or b!6770335 b!6770334) bm!613596))

(assert (=> b!6770336 m!7519640))

(assert (=> bm!613594 m!7519100))

(declare-fun m!7520948 () Bool)

(assert (=> bm!613594 m!7520948))

(declare-fun m!7520950 () Bool)

(assert (=> d!2126883 m!7520950))

(assert (=> d!2126883 m!7519006))

(assert (=> bm!613596 m!7519100))

(declare-fun m!7520952 () Bool)

(assert (=> bm!613596 m!7520952))

(assert (=> b!6769027 d!2126883))

(assert (=> b!6769027 d!2126739))

(assert (=> b!6769027 d!2126677))

(declare-fun d!2126885 () Bool)

(assert (=> d!2126885 (= (isConcat!1478 lt!2443328) ((_ is Concat!25440) lt!2443328))))

(assert (=> b!6769096 d!2126885))

(declare-fun d!2126887 () Bool)

(assert (=> d!2126887 (= (nullable!6576 (h!72409 (exprs!6479 (h!72410 zl!343)))) (nullableFct!2482 (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun bs!1801874 () Bool)

(assert (= bs!1801874 d!2126887))

(declare-fun m!7520954 () Bool)

(assert (=> bs!1801874 m!7520954))

(assert (=> b!6768353 d!2126887))

(declare-fun bs!1801875 () Bool)

(declare-fun b!6770351 () Bool)

(assert (= bs!1801875 (and b!6770351 b!6770286)))

(declare-fun lambda!380965 () Int)

(assert (=> bs!1801875 (= (and (= (reg!16924 (regTwo!33703 lt!2443204)) (reg!16924 (regTwo!33703 r!7292))) (= (regTwo!33703 lt!2443204) (regTwo!33703 r!7292))) (= lambda!380965 lambda!380961))))

(declare-fun bs!1801876 () Bool)

(assert (= bs!1801876 (and b!6770351 d!2126719)))

(assert (=> bs!1801876 (not (= lambda!380965 lambda!380937))))

(declare-fun bs!1801877 () Bool)

(assert (= bs!1801877 (and b!6770351 b!6769960)))

(assert (=> bs!1801877 (not (= lambda!380965 lambda!380930))))

(declare-fun bs!1801878 () Bool)

(assert (= bs!1801878 (and b!6770351 d!2126145)))

(assert (=> bs!1801878 (not (= lambda!380965 lambda!380829))))

(declare-fun bs!1801879 () Bool)

(assert (= bs!1801879 (and b!6770351 b!6768233)))

(assert (=> bs!1801879 (not (= lambda!380965 lambda!380800))))

(assert (=> bs!1801879 (not (= lambda!380965 lambda!380802))))

(assert (=> bs!1801879 (= (and (= (reg!16924 (regTwo!33703 lt!2443204)) (reg!16924 r!7292)) (= (regTwo!33703 lt!2443204) r!7292)) (= lambda!380965 lambda!380801))))

(declare-fun bs!1801880 () Bool)

(assert (= bs!1801880 (and b!6770351 d!2126819)))

(assert (=> bs!1801880 (not (= lambda!380965 lambda!380959))))

(assert (=> bs!1801878 (= (and (= (reg!16924 (regTwo!33703 lt!2443204)) (reg!16924 r!7292)) (= (regTwo!33703 lt!2443204) (Star!16595 (reg!16924 r!7292)))) (= lambda!380965 lambda!380830))))

(assert (=> bs!1801876 (= (and (= (reg!16924 (regTwo!33703 lt!2443204)) (reg!16924 r!7292)) (= (regTwo!33703 lt!2443204) (Star!16595 (reg!16924 r!7292)))) (= lambda!380965 lambda!380938))))

(declare-fun bs!1801881 () Bool)

(assert (= bs!1801881 (and b!6770351 b!6768909)))

(assert (=> bs!1801881 (not (= lambda!380965 lambda!380874))))

(declare-fun bs!1801882 () Bool)

(assert (= bs!1801882 (and b!6770351 d!2126163)))

(assert (=> bs!1801882 (not (= lambda!380965 lambda!380842))))

(declare-fun bs!1801883 () Bool)

(assert (= bs!1801883 (and b!6770351 d!2126725)))

(assert (=> bs!1801883 (not (= lambda!380965 lambda!380941))))

(declare-fun bs!1801884 () Bool)

(assert (= bs!1801884 (and b!6770351 b!6768912)))

(assert (=> bs!1801884 (= (and (= (reg!16924 (regTwo!33703 lt!2443204)) (reg!16924 lt!2443204)) (= (regTwo!33703 lt!2443204) lt!2443204)) (= lambda!380965 lambda!380873))))

(declare-fun bs!1801885 () Bool)

(assert (= bs!1801885 (and b!6770351 d!2126187)))

(assert (=> bs!1801885 (not (= lambda!380965 lambda!380857))))

(declare-fun bs!1801886 () Bool)

(assert (= bs!1801886 (and b!6770351 b!6769013)))

(assert (=> bs!1801886 (= (and (= (reg!16924 (regTwo!33703 lt!2443204)) (reg!16924 r!7292)) (= (regTwo!33703 lt!2443204) r!7292)) (= lambda!380965 lambda!380881))))

(assert (=> bs!1801880 (not (= lambda!380965 lambda!380960))))

(declare-fun bs!1801887 () Bool)

(assert (= bs!1801887 (and b!6770351 b!6770283)))

(assert (=> bs!1801887 (not (= lambda!380965 lambda!380962))))

(declare-fun bs!1801888 () Bool)

(assert (= bs!1801888 (and b!6770351 b!6769963)))

(assert (=> bs!1801888 (= (and (= (reg!16924 (regTwo!33703 lt!2443204)) (reg!16924 (regOne!33703 lt!2443204))) (= (regTwo!33703 lt!2443204) (regOne!33703 lt!2443204))) (= lambda!380965 lambda!380929))))

(declare-fun bs!1801889 () Bool)

(assert (= bs!1801889 (and b!6770351 b!6770030)))

(assert (=> bs!1801889 (= (and (= (reg!16924 (regTwo!33703 lt!2443204)) (reg!16924 (regOne!33703 r!7292))) (= (regTwo!33703 lt!2443204) (regOne!33703 r!7292))) (= lambda!380965 lambda!380942))))

(declare-fun bs!1801890 () Bool)

(assert (= bs!1801890 (and b!6770351 b!6770027)))

(assert (=> bs!1801890 (not (= lambda!380965 lambda!380943))))

(declare-fun bs!1801891 () Bool)

(assert (= bs!1801891 (and b!6770351 b!6769010)))

(assert (=> bs!1801891 (not (= lambda!380965 lambda!380882))))

(assert (=> bs!1801882 (not (= lambda!380965 lambda!380841))))

(assert (=> b!6770351 true))

(assert (=> b!6770351 true))

(declare-fun bs!1801892 () Bool)

(declare-fun b!6770348 () Bool)

(assert (= bs!1801892 (and b!6770348 b!6770286)))

(declare-fun lambda!380966 () Int)

(assert (=> bs!1801892 (not (= lambda!380966 lambda!380961))))

(declare-fun bs!1801893 () Bool)

(assert (= bs!1801893 (and b!6770348 d!2126719)))

(assert (=> bs!1801893 (not (= lambda!380966 lambda!380937))))

(declare-fun bs!1801894 () Bool)

(assert (= bs!1801894 (and b!6770348 b!6769960)))

(assert (=> bs!1801894 (= (and (= (regOne!33702 (regTwo!33703 lt!2443204)) (regOne!33702 (regOne!33703 lt!2443204))) (= (regTwo!33702 (regTwo!33703 lt!2443204)) (regTwo!33702 (regOne!33703 lt!2443204)))) (= lambda!380966 lambda!380930))))

(declare-fun bs!1801895 () Bool)

(assert (= bs!1801895 (and b!6770348 d!2126145)))

(assert (=> bs!1801895 (not (= lambda!380966 lambda!380829))))

(declare-fun bs!1801896 () Bool)

(assert (= bs!1801896 (and b!6770348 b!6768233)))

(assert (=> bs!1801896 (not (= lambda!380966 lambda!380800))))

(assert (=> bs!1801896 (= (and (= (regOne!33702 (regTwo!33703 lt!2443204)) (reg!16924 r!7292)) (= (regTwo!33702 (regTwo!33703 lt!2443204)) r!7292)) (= lambda!380966 lambda!380802))))

(assert (=> bs!1801896 (not (= lambda!380966 lambda!380801))))

(declare-fun bs!1801897 () Bool)

(assert (= bs!1801897 (and b!6770348 d!2126819)))

(assert (=> bs!1801897 (not (= lambda!380966 lambda!380959))))

(assert (=> bs!1801895 (not (= lambda!380966 lambda!380830))))

(declare-fun bs!1801898 () Bool)

(assert (= bs!1801898 (and b!6770348 b!6770351)))

(assert (=> bs!1801898 (not (= lambda!380966 lambda!380965))))

(assert (=> bs!1801893 (not (= lambda!380966 lambda!380938))))

(declare-fun bs!1801899 () Bool)

(assert (= bs!1801899 (and b!6770348 b!6768909)))

(assert (=> bs!1801899 (= (and (= (regOne!33702 (regTwo!33703 lt!2443204)) (regOne!33702 lt!2443204)) (= (regTwo!33702 (regTwo!33703 lt!2443204)) (regTwo!33702 lt!2443204))) (= lambda!380966 lambda!380874))))

(declare-fun bs!1801900 () Bool)

(assert (= bs!1801900 (and b!6770348 d!2126163)))

(assert (=> bs!1801900 (= (and (= (regOne!33702 (regTwo!33703 lt!2443204)) (reg!16924 r!7292)) (= (regTwo!33702 (regTwo!33703 lt!2443204)) r!7292)) (= lambda!380966 lambda!380842))))

(declare-fun bs!1801901 () Bool)

(assert (= bs!1801901 (and b!6770348 d!2126725)))

(assert (=> bs!1801901 (not (= lambda!380966 lambda!380941))))

(declare-fun bs!1801902 () Bool)

(assert (= bs!1801902 (and b!6770348 b!6768912)))

(assert (=> bs!1801902 (not (= lambda!380966 lambda!380873))))

(declare-fun bs!1801903 () Bool)

(assert (= bs!1801903 (and b!6770348 d!2126187)))

(assert (=> bs!1801903 (not (= lambda!380966 lambda!380857))))

(declare-fun bs!1801904 () Bool)

(assert (= bs!1801904 (and b!6770348 b!6769013)))

(assert (=> bs!1801904 (not (= lambda!380966 lambda!380881))))

(assert (=> bs!1801897 (= (and (= (regOne!33702 (regTwo!33703 lt!2443204)) (reg!16924 r!7292)) (= (regTwo!33702 (regTwo!33703 lt!2443204)) r!7292)) (= lambda!380966 lambda!380960))))

(declare-fun bs!1801905 () Bool)

(assert (= bs!1801905 (and b!6770348 b!6770283)))

(assert (=> bs!1801905 (= (and (= (regOne!33702 (regTwo!33703 lt!2443204)) (regOne!33702 (regTwo!33703 r!7292))) (= (regTwo!33702 (regTwo!33703 lt!2443204)) (regTwo!33702 (regTwo!33703 r!7292)))) (= lambda!380966 lambda!380962))))

(declare-fun bs!1801906 () Bool)

(assert (= bs!1801906 (and b!6770348 b!6769963)))

(assert (=> bs!1801906 (not (= lambda!380966 lambda!380929))))

(declare-fun bs!1801907 () Bool)

(assert (= bs!1801907 (and b!6770348 b!6770030)))

(assert (=> bs!1801907 (not (= lambda!380966 lambda!380942))))

(declare-fun bs!1801908 () Bool)

(assert (= bs!1801908 (and b!6770348 b!6770027)))

(assert (=> bs!1801908 (= (and (= (regOne!33702 (regTwo!33703 lt!2443204)) (regOne!33702 (regOne!33703 r!7292))) (= (regTwo!33702 (regTwo!33703 lt!2443204)) (regTwo!33702 (regOne!33703 r!7292)))) (= lambda!380966 lambda!380943))))

(declare-fun bs!1801909 () Bool)

(assert (= bs!1801909 (and b!6770348 b!6769010)))

(assert (=> bs!1801909 (= (and (= (regOne!33702 (regTwo!33703 lt!2443204)) (regOne!33702 r!7292)) (= (regTwo!33702 (regTwo!33703 lt!2443204)) (regTwo!33702 r!7292))) (= lambda!380966 lambda!380882))))

(assert (=> bs!1801900 (not (= lambda!380966 lambda!380841))))

(assert (=> b!6770348 true))

(assert (=> b!6770348 true))

(declare-fun c!1257232 () Bool)

(declare-fun call!613602 () Bool)

(declare-fun bm!613597 () Bool)

(assert (=> bm!613597 (= call!613602 (Exists!3663 (ite c!1257232 lambda!380965 lambda!380966)))))

(declare-fun b!6770342 () Bool)

(declare-fun res!2768159 () Bool)

(declare-fun e!4087667 () Bool)

(assert (=> b!6770342 (=> res!2768159 e!4087667)))

(declare-fun call!613603 () Bool)

(assert (=> b!6770342 (= res!2768159 call!613603)))

(declare-fun e!4087669 () Bool)

(assert (=> b!6770342 (= e!4087669 e!4087667)))

(declare-fun d!2126889 () Bool)

(declare-fun c!1257229 () Bool)

(assert (=> d!2126889 (= c!1257229 ((_ is EmptyExpr!16595) (regTwo!33703 lt!2443204)))))

(declare-fun e!4087671 () Bool)

(assert (=> d!2126889 (= (matchRSpec!3696 (regTwo!33703 lt!2443204) s!2326) e!4087671)))

(declare-fun b!6770343 () Bool)

(declare-fun c!1257231 () Bool)

(assert (=> b!6770343 (= c!1257231 ((_ is Union!16595) (regTwo!33703 lt!2443204)))))

(declare-fun e!4087670 () Bool)

(declare-fun e!4087672 () Bool)

(assert (=> b!6770343 (= e!4087670 e!4087672)))

(declare-fun b!6770344 () Bool)

(declare-fun e!4087666 () Bool)

(assert (=> b!6770344 (= e!4087666 (matchRSpec!3696 (regTwo!33703 (regTwo!33703 lt!2443204)) s!2326))))

(declare-fun b!6770345 () Bool)

(declare-fun e!4087668 () Bool)

(assert (=> b!6770345 (= e!4087671 e!4087668)))

(declare-fun res!2768157 () Bool)

(assert (=> b!6770345 (= res!2768157 (not ((_ is EmptyLang!16595) (regTwo!33703 lt!2443204))))))

(assert (=> b!6770345 (=> (not res!2768157) (not e!4087668))))

(declare-fun b!6770346 () Bool)

(assert (=> b!6770346 (= e!4087672 e!4087666)))

(declare-fun res!2768158 () Bool)

(assert (=> b!6770346 (= res!2768158 (matchRSpec!3696 (regOne!33703 (regTwo!33703 lt!2443204)) s!2326))))

(assert (=> b!6770346 (=> res!2768158 e!4087666)))

(declare-fun b!6770347 () Bool)

(assert (=> b!6770347 (= e!4087672 e!4087669)))

(assert (=> b!6770347 (= c!1257232 ((_ is Star!16595) (regTwo!33703 lt!2443204)))))

(declare-fun bm!613598 () Bool)

(assert (=> bm!613598 (= call!613603 (isEmpty!38317 s!2326))))

(assert (=> b!6770348 (= e!4087669 call!613602)))

(declare-fun b!6770349 () Bool)

(assert (=> b!6770349 (= e!4087670 (= s!2326 (Cons!65960 (c!1256657 (regTwo!33703 lt!2443204)) Nil!65960)))))

(declare-fun b!6770350 () Bool)

(declare-fun c!1257230 () Bool)

(assert (=> b!6770350 (= c!1257230 ((_ is ElementMatch!16595) (regTwo!33703 lt!2443204)))))

(assert (=> b!6770350 (= e!4087668 e!4087670)))

(assert (=> b!6770351 (= e!4087667 call!613602)))

(declare-fun b!6770352 () Bool)

(assert (=> b!6770352 (= e!4087671 call!613603)))

(assert (= (and d!2126889 c!1257229) b!6770352))

(assert (= (and d!2126889 (not c!1257229)) b!6770345))

(assert (= (and b!6770345 res!2768157) b!6770350))

(assert (= (and b!6770350 c!1257230) b!6770349))

(assert (= (and b!6770350 (not c!1257230)) b!6770343))

(assert (= (and b!6770343 c!1257231) b!6770346))

(assert (= (and b!6770343 (not c!1257231)) b!6770347))

(assert (= (and b!6770346 (not res!2768158)) b!6770344))

(assert (= (and b!6770347 c!1257232) b!6770342))

(assert (= (and b!6770347 (not c!1257232)) b!6770348))

(assert (= (and b!6770342 (not res!2768159)) b!6770351))

(assert (= (or b!6770351 b!6770348) bm!613597))

(assert (= (or b!6770352 b!6770342) bm!613598))

(declare-fun m!7520956 () Bool)

(assert (=> bm!613597 m!7520956))

(declare-fun m!7520958 () Bool)

(assert (=> b!6770344 m!7520958))

(declare-fun m!7520960 () Bool)

(assert (=> b!6770346 m!7520960))

(assert (=> bm!613598 m!7519036))

(assert (=> b!6768905 d!2126889))

(declare-fun d!2126891 () Bool)

(assert (=> d!2126891 (= (isEmpty!38321 lt!2443181) (not ((_ is Some!16481) lt!2443181)))))

(assert (=> d!2126161 d!2126891))

(declare-fun d!2126893 () Bool)

(assert (=> d!2126893 (= ($colon$colon!2406 (exprs!6479 lt!2443210) (ite (or c!1256868 c!1256871) (regTwo!33702 (reg!16924 r!7292)) (reg!16924 r!7292))) (Cons!65961 (ite (or c!1256868 c!1256871) (regTwo!33702 (reg!16924 r!7292)) (reg!16924 r!7292)) (exprs!6479 lt!2443210)))))

(assert (=> bm!613365 d!2126893))

(declare-fun c!1257234 () Bool)

(declare-fun call!613606 () Bool)

(declare-fun bm!613599 () Bool)

(declare-fun c!1257233 () Bool)

(assert (=> bm!613599 (= call!613606 (validRegex!8331 (ite c!1257234 (reg!16924 lt!2443219) (ite c!1257233 (regOne!33703 lt!2443219) (regOne!33702 lt!2443219)))))))

(declare-fun b!6770354 () Bool)

(declare-fun res!2768164 () Bool)

(declare-fun e!4087674 () Bool)

(assert (=> b!6770354 (=> res!2768164 e!4087674)))

(assert (=> b!6770354 (= res!2768164 (not ((_ is Concat!25440) lt!2443219)))))

(declare-fun e!4087677 () Bool)

(assert (=> b!6770354 (= e!4087677 e!4087674)))

(declare-fun b!6770355 () Bool)

(declare-fun e!4087678 () Bool)

(assert (=> b!6770355 (= e!4087674 e!4087678)))

(declare-fun res!2768160 () Bool)

(assert (=> b!6770355 (=> (not res!2768160) (not e!4087678))))

(declare-fun call!613604 () Bool)

(assert (=> b!6770355 (= res!2768160 call!613604)))

(declare-fun b!6770356 () Bool)

(declare-fun res!2768162 () Bool)

(declare-fun e!4087673 () Bool)

(assert (=> b!6770356 (=> (not res!2768162) (not e!4087673))))

(assert (=> b!6770356 (= res!2768162 call!613604)))

(assert (=> b!6770356 (= e!4087677 e!4087673)))

(declare-fun b!6770357 () Bool)

(declare-fun call!613605 () Bool)

(assert (=> b!6770357 (= e!4087678 call!613605)))

(declare-fun b!6770358 () Bool)

(declare-fun e!4087676 () Bool)

(assert (=> b!6770358 (= e!4087676 e!4087677)))

(assert (=> b!6770358 (= c!1257233 ((_ is Union!16595) lt!2443219))))

(declare-fun b!6770359 () Bool)

(assert (=> b!6770359 (= e!4087673 call!613605)))

(declare-fun bm!613600 () Bool)

(assert (=> bm!613600 (= call!613605 (validRegex!8331 (ite c!1257233 (regTwo!33703 lt!2443219) (regTwo!33702 lt!2443219))))))

(declare-fun b!6770360 () Bool)

(declare-fun e!4087679 () Bool)

(assert (=> b!6770360 (= e!4087679 call!613606)))

(declare-fun bm!613601 () Bool)

(assert (=> bm!613601 (= call!613604 call!613606)))

(declare-fun b!6770361 () Bool)

(declare-fun e!4087675 () Bool)

(assert (=> b!6770361 (= e!4087675 e!4087676)))

(assert (=> b!6770361 (= c!1257234 ((_ is Star!16595) lt!2443219))))

(declare-fun b!6770353 () Bool)

(assert (=> b!6770353 (= e!4087676 e!4087679)))

(declare-fun res!2768163 () Bool)

(assert (=> b!6770353 (= res!2768163 (not (nullable!6576 (reg!16924 lt!2443219))))))

(assert (=> b!6770353 (=> (not res!2768163) (not e!4087679))))

(declare-fun d!2126895 () Bool)

(declare-fun res!2768161 () Bool)

(assert (=> d!2126895 (=> res!2768161 e!4087675)))

(assert (=> d!2126895 (= res!2768161 ((_ is ElementMatch!16595) lt!2443219))))

(assert (=> d!2126895 (= (validRegex!8331 lt!2443219) e!4087675)))

(assert (= (and d!2126895 (not res!2768161)) b!6770361))

(assert (= (and b!6770361 c!1257234) b!6770353))

(assert (= (and b!6770361 (not c!1257234)) b!6770358))

(assert (= (and b!6770353 res!2768163) b!6770360))

(assert (= (and b!6770358 c!1257233) b!6770356))

(assert (= (and b!6770358 (not c!1257233)) b!6770354))

(assert (= (and b!6770356 res!2768162) b!6770359))

(assert (= (and b!6770354 (not res!2768164)) b!6770355))

(assert (= (and b!6770355 res!2768160) b!6770357))

(assert (= (or b!6770359 b!6770357) bm!613600))

(assert (= (or b!6770356 b!6770355) bm!613601))

(assert (= (or b!6770360 bm!613601) bm!613599))

(declare-fun m!7520962 () Bool)

(assert (=> bm!613599 m!7520962))

(declare-fun m!7520964 () Bool)

(assert (=> bm!613600 m!7520964))

(declare-fun m!7520966 () Bool)

(assert (=> b!6770353 m!7520966))

(assert (=> d!2126113 d!2126895))

(declare-fun bs!1801910 () Bool)

(declare-fun d!2126897 () Bool)

(assert (= bs!1801910 (and d!2126897 d!2126273)))

(declare-fun lambda!380967 () Int)

(assert (=> bs!1801910 (= lambda!380967 lambda!380877)))

(declare-fun bs!1801911 () Bool)

(assert (= bs!1801911 (and d!2126897 d!2126741)))

(assert (=> bs!1801911 (= lambda!380967 lambda!380944)))

(declare-fun bs!1801912 () Bool)

(assert (= bs!1801912 (and d!2126897 d!2126289)))

(assert (=> bs!1801912 (= lambda!380967 lambda!380879)))

(declare-fun bs!1801913 () Bool)

(assert (= bs!1801913 (and d!2126897 d!2126771)))

(assert (=> bs!1801913 (= lambda!380967 lambda!380948)))

(declare-fun bs!1801914 () Bool)

(assert (= bs!1801914 (and d!2126897 d!2126321)))

(assert (=> bs!1801914 (= lambda!380967 lambda!380885)))

(declare-fun bs!1801915 () Bool)

(assert (= bs!1801915 (and d!2126897 d!2126785)))

(assert (=> bs!1801915 (= lambda!380967 lambda!380950)))

(declare-fun bs!1801916 () Bool)

(assert (= bs!1801916 (and d!2126897 d!2126773)))

(assert (=> bs!1801916 (= lambda!380967 lambda!380949)))

(declare-fun bs!1801917 () Bool)

(assert (= bs!1801917 (and d!2126897 d!2126709)))

(assert (=> bs!1801917 (= lambda!380967 lambda!380931)))

(declare-fun bs!1801918 () Bool)

(assert (= bs!1801918 (and d!2126897 d!2126711)))

(assert (=> bs!1801918 (= lambda!380967 lambda!380932)))

(declare-fun bs!1801919 () Bool)

(assert (= bs!1801919 (and d!2126897 d!2126689)))

(assert (=> bs!1801919 (= lambda!380967 lambda!380928)))

(declare-fun bs!1801920 () Bool)

(assert (= bs!1801920 (and d!2126897 d!2126233)))

(assert (=> bs!1801920 (= lambda!380967 lambda!380868)))

(declare-fun bs!1801921 () Bool)

(assert (= bs!1801921 (and d!2126897 d!2126803)))

(assert (=> bs!1801921 (= lambda!380967 lambda!380953)))

(declare-fun bs!1801922 () Bool)

(assert (= bs!1801922 (and d!2126897 d!2126205)))

(assert (=> bs!1801922 (= lambda!380967 lambda!380863)))

(declare-fun b!6770362 () Bool)

(declare-fun e!4087685 () Regex!16595)

(assert (=> b!6770362 (= e!4087685 (h!72409 (unfocusZipperList!2016 lt!2443209)))))

(declare-fun b!6770363 () Bool)

(declare-fun e!4087683 () Bool)

(declare-fun e!4087680 () Bool)

(assert (=> b!6770363 (= e!4087683 e!4087680)))

(declare-fun c!1257235 () Bool)

(assert (=> b!6770363 (= c!1257235 (isEmpty!38322 (unfocusZipperList!2016 lt!2443209)))))

(declare-fun b!6770364 () Bool)

(declare-fun e!4087681 () Regex!16595)

(assert (=> b!6770364 (= e!4087681 EmptyLang!16595)))

(declare-fun b!6770365 () Bool)

(declare-fun lt!2443397 () Regex!16595)

(assert (=> b!6770365 (= e!4087680 (isEmptyLang!1963 lt!2443397))))

(declare-fun b!6770366 () Bool)

(assert (=> b!6770366 (= e!4087681 (Union!16595 (h!72409 (unfocusZipperList!2016 lt!2443209)) (generalisedUnion!2439 (t!379794 (unfocusZipperList!2016 lt!2443209)))))))

(declare-fun b!6770367 () Bool)

(declare-fun e!4087682 () Bool)

(assert (=> b!6770367 (= e!4087682 (isUnion!1393 lt!2443397))))

(declare-fun b!6770368 () Bool)

(declare-fun e!4087684 () Bool)

(assert (=> b!6770368 (= e!4087684 (isEmpty!38322 (t!379794 (unfocusZipperList!2016 lt!2443209))))))

(declare-fun b!6770370 () Bool)

(assert (=> b!6770370 (= e!4087685 e!4087681)))

(declare-fun c!1257237 () Bool)

(assert (=> b!6770370 (= c!1257237 ((_ is Cons!65961) (unfocusZipperList!2016 lt!2443209)))))

(declare-fun b!6770371 () Bool)

(assert (=> b!6770371 (= e!4087682 (= lt!2443397 (head!13606 (unfocusZipperList!2016 lt!2443209))))))

(declare-fun b!6770369 () Bool)

(assert (=> b!6770369 (= e!4087680 e!4087682)))

(declare-fun c!1257238 () Bool)

(assert (=> b!6770369 (= c!1257238 (isEmpty!38322 (tail!12691 (unfocusZipperList!2016 lt!2443209))))))

(assert (=> d!2126897 e!4087683))

(declare-fun res!2768165 () Bool)

(assert (=> d!2126897 (=> (not res!2768165) (not e!4087683))))

(assert (=> d!2126897 (= res!2768165 (validRegex!8331 lt!2443397))))

(assert (=> d!2126897 (= lt!2443397 e!4087685)))

(declare-fun c!1257236 () Bool)

(assert (=> d!2126897 (= c!1257236 e!4087684)))

(declare-fun res!2768166 () Bool)

(assert (=> d!2126897 (=> (not res!2768166) (not e!4087684))))

(assert (=> d!2126897 (= res!2768166 ((_ is Cons!65961) (unfocusZipperList!2016 lt!2443209)))))

(assert (=> d!2126897 (forall!15789 (unfocusZipperList!2016 lt!2443209) lambda!380967)))

(assert (=> d!2126897 (= (generalisedUnion!2439 (unfocusZipperList!2016 lt!2443209)) lt!2443397)))

(assert (= (and d!2126897 res!2768166) b!6770368))

(assert (= (and d!2126897 c!1257236) b!6770362))

(assert (= (and d!2126897 (not c!1257236)) b!6770370))

(assert (= (and b!6770370 c!1257237) b!6770366))

(assert (= (and b!6770370 (not c!1257237)) b!6770364))

(assert (= (and d!2126897 res!2768165) b!6770363))

(assert (= (and b!6770363 c!1257235) b!6770365))

(assert (= (and b!6770363 (not c!1257235)) b!6770369))

(assert (= (and b!6770369 c!1257238) b!6770371))

(assert (= (and b!6770369 (not c!1257238)) b!6770367))

(assert (=> b!6770363 m!7519138))

(declare-fun m!7520968 () Bool)

(assert (=> b!6770363 m!7520968))

(declare-fun m!7520970 () Bool)

(assert (=> b!6770365 m!7520970))

(declare-fun m!7520972 () Bool)

(assert (=> b!6770367 m!7520972))

(assert (=> b!6770371 m!7519138))

(declare-fun m!7520974 () Bool)

(assert (=> b!6770371 m!7520974))

(declare-fun m!7520976 () Bool)

(assert (=> b!6770368 m!7520976))

(declare-fun m!7520978 () Bool)

(assert (=> b!6770366 m!7520978))

(declare-fun m!7520980 () Bool)

(assert (=> d!2126897 m!7520980))

(assert (=> d!2126897 m!7519138))

(declare-fun m!7520982 () Bool)

(assert (=> d!2126897 m!7520982))

(assert (=> b!6770369 m!7519138))

(declare-fun m!7520984 () Bool)

(assert (=> b!6770369 m!7520984))

(assert (=> b!6770369 m!7520984))

(declare-fun m!7520986 () Bool)

(assert (=> b!6770369 m!7520986))

(assert (=> d!2126113 d!2126897))

(declare-fun bs!1801923 () Bool)

(declare-fun d!2126899 () Bool)

(assert (= bs!1801923 (and d!2126899 d!2126273)))

(declare-fun lambda!380968 () Int)

(assert (=> bs!1801923 (= lambda!380968 lambda!380877)))

(declare-fun bs!1801924 () Bool)

(assert (= bs!1801924 (and d!2126899 d!2126289)))

(assert (=> bs!1801924 (= lambda!380968 lambda!380879)))

(declare-fun bs!1801925 () Bool)

(assert (= bs!1801925 (and d!2126899 d!2126771)))

(assert (=> bs!1801925 (= lambda!380968 lambda!380948)))

(declare-fun bs!1801926 () Bool)

(assert (= bs!1801926 (and d!2126899 d!2126321)))

(assert (=> bs!1801926 (= lambda!380968 lambda!380885)))

(declare-fun bs!1801927 () Bool)

(assert (= bs!1801927 (and d!2126899 d!2126785)))

(assert (=> bs!1801927 (= lambda!380968 lambda!380950)))

(declare-fun bs!1801928 () Bool)

(assert (= bs!1801928 (and d!2126899 d!2126773)))

(assert (=> bs!1801928 (= lambda!380968 lambda!380949)))

(declare-fun bs!1801929 () Bool)

(assert (= bs!1801929 (and d!2126899 d!2126897)))

(assert (=> bs!1801929 (= lambda!380968 lambda!380967)))

(declare-fun bs!1801930 () Bool)

(assert (= bs!1801930 (and d!2126899 d!2126741)))

(assert (=> bs!1801930 (= lambda!380968 lambda!380944)))

(declare-fun bs!1801931 () Bool)

(assert (= bs!1801931 (and d!2126899 d!2126709)))

(assert (=> bs!1801931 (= lambda!380968 lambda!380931)))

(declare-fun bs!1801932 () Bool)

(assert (= bs!1801932 (and d!2126899 d!2126711)))

(assert (=> bs!1801932 (= lambda!380968 lambda!380932)))

(declare-fun bs!1801933 () Bool)

(assert (= bs!1801933 (and d!2126899 d!2126689)))

(assert (=> bs!1801933 (= lambda!380968 lambda!380928)))

(declare-fun bs!1801934 () Bool)

(assert (= bs!1801934 (and d!2126899 d!2126233)))

(assert (=> bs!1801934 (= lambda!380968 lambda!380868)))

(declare-fun bs!1801935 () Bool)

(assert (= bs!1801935 (and d!2126899 d!2126803)))

(assert (=> bs!1801935 (= lambda!380968 lambda!380953)))

(declare-fun bs!1801936 () Bool)

(assert (= bs!1801936 (and d!2126899 d!2126205)))

(assert (=> bs!1801936 (= lambda!380968 lambda!380863)))

(declare-fun lt!2443398 () List!66085)

(assert (=> d!2126899 (forall!15789 lt!2443398 lambda!380968)))

(declare-fun e!4087686 () List!66085)

(assert (=> d!2126899 (= lt!2443398 e!4087686)))

(declare-fun c!1257239 () Bool)

(assert (=> d!2126899 (= c!1257239 ((_ is Cons!65962) lt!2443209))))

(assert (=> d!2126899 (= (unfocusZipperList!2016 lt!2443209) lt!2443398)))

(declare-fun b!6770372 () Bool)

(assert (=> b!6770372 (= e!4087686 (Cons!65961 (generalisedConcat!2192 (exprs!6479 (h!72410 lt!2443209))) (unfocusZipperList!2016 (t!379795 lt!2443209))))))

(declare-fun b!6770373 () Bool)

(assert (=> b!6770373 (= e!4087686 Nil!65961)))

(assert (= (and d!2126899 c!1257239) b!6770372))

(assert (= (and d!2126899 (not c!1257239)) b!6770373))

(declare-fun m!7520988 () Bool)

(assert (=> d!2126899 m!7520988))

(declare-fun m!7520990 () Bool)

(assert (=> b!6770372 m!7520990))

(declare-fun m!7520992 () Bool)

(assert (=> b!6770372 m!7520992))

(assert (=> d!2126113 d!2126899))

(declare-fun d!2126901 () Bool)

(declare-fun c!1257242 () Bool)

(assert (=> d!2126901 (= c!1257242 ((_ is Nil!65960) lt!2443305))))

(declare-fun e!4087689 () (InoxSet C!33460))

(assert (=> d!2126901 (= (content!12841 lt!2443305) e!4087689)))

(declare-fun b!6770378 () Bool)

(assert (=> b!6770378 (= e!4087689 ((as const (Array C!33460 Bool)) false))))

(declare-fun b!6770379 () Bool)

(assert (=> b!6770379 (= e!4087689 ((_ map or) (store ((as const (Array C!33460 Bool)) false) (h!72408 lt!2443305) true) (content!12841 (t!379793 lt!2443305))))))

(assert (= (and d!2126901 c!1257242) b!6770378))

(assert (= (and d!2126901 (not c!1257242)) b!6770379))

(declare-fun m!7520994 () Bool)

(assert (=> b!6770379 m!7520994))

(declare-fun m!7520996 () Bool)

(assert (=> b!6770379 m!7520996))

(assert (=> d!2126255 d!2126901))

(declare-fun d!2126903 () Bool)

(declare-fun c!1257243 () Bool)

(assert (=> d!2126903 (= c!1257243 ((_ is Nil!65960) (_1!36873 lt!2443186)))))

(declare-fun e!4087690 () (InoxSet C!33460))

(assert (=> d!2126903 (= (content!12841 (_1!36873 lt!2443186)) e!4087690)))

(declare-fun b!6770380 () Bool)

(assert (=> b!6770380 (= e!4087690 ((as const (Array C!33460 Bool)) false))))

(declare-fun b!6770381 () Bool)

(assert (=> b!6770381 (= e!4087690 ((_ map or) (store ((as const (Array C!33460 Bool)) false) (h!72408 (_1!36873 lt!2443186)) true) (content!12841 (t!379793 (_1!36873 lt!2443186)))))))

(assert (= (and d!2126903 c!1257243) b!6770380))

(assert (= (and d!2126903 (not c!1257243)) b!6770381))

(declare-fun m!7520998 () Bool)

(assert (=> b!6770381 m!7520998))

(declare-fun m!7521000 () Bool)

(assert (=> b!6770381 m!7521000))

(assert (=> d!2126255 d!2126903))

(declare-fun d!2126905 () Bool)

(declare-fun c!1257244 () Bool)

(assert (=> d!2126905 (= c!1257244 ((_ is Nil!65960) (_2!36873 lt!2443186)))))

(declare-fun e!4087691 () (InoxSet C!33460))

(assert (=> d!2126905 (= (content!12841 (_2!36873 lt!2443186)) e!4087691)))

(declare-fun b!6770382 () Bool)

(assert (=> b!6770382 (= e!4087691 ((as const (Array C!33460 Bool)) false))))

(declare-fun b!6770383 () Bool)

(assert (=> b!6770383 (= e!4087691 ((_ map or) (store ((as const (Array C!33460 Bool)) false) (h!72408 (_2!36873 lt!2443186)) true) (content!12841 (t!379793 (_2!36873 lt!2443186)))))))

(assert (= (and d!2126905 c!1257244) b!6770382))

(assert (= (and d!2126905 (not c!1257244)) b!6770383))

(declare-fun m!7521002 () Bool)

(assert (=> b!6770383 m!7521002))

(declare-fun m!7521004 () Bool)

(assert (=> b!6770383 m!7521004))

(assert (=> d!2126255 d!2126905))

(declare-fun call!613609 () Bool)

(declare-fun c!1257245 () Bool)

(declare-fun c!1257246 () Bool)

(declare-fun bm!613602 () Bool)

(assert (=> bm!613602 (= call!613609 (validRegex!8331 (ite c!1257246 (reg!16924 lt!2443328) (ite c!1257245 (regOne!33703 lt!2443328) (regOne!33702 lt!2443328)))))))

(declare-fun b!6770385 () Bool)

(declare-fun res!2768171 () Bool)

(declare-fun e!4087693 () Bool)

(assert (=> b!6770385 (=> res!2768171 e!4087693)))

(assert (=> b!6770385 (= res!2768171 (not ((_ is Concat!25440) lt!2443328)))))

(declare-fun e!4087696 () Bool)

(assert (=> b!6770385 (= e!4087696 e!4087693)))

(declare-fun b!6770386 () Bool)

(declare-fun e!4087697 () Bool)

(assert (=> b!6770386 (= e!4087693 e!4087697)))

(declare-fun res!2768167 () Bool)

(assert (=> b!6770386 (=> (not res!2768167) (not e!4087697))))

(declare-fun call!613607 () Bool)

(assert (=> b!6770386 (= res!2768167 call!613607)))

(declare-fun b!6770387 () Bool)

(declare-fun res!2768169 () Bool)

(declare-fun e!4087692 () Bool)

(assert (=> b!6770387 (=> (not res!2768169) (not e!4087692))))

(assert (=> b!6770387 (= res!2768169 call!613607)))

(assert (=> b!6770387 (= e!4087696 e!4087692)))

(declare-fun b!6770388 () Bool)

(declare-fun call!613608 () Bool)

(assert (=> b!6770388 (= e!4087697 call!613608)))

(declare-fun b!6770389 () Bool)

(declare-fun e!4087695 () Bool)

(assert (=> b!6770389 (= e!4087695 e!4087696)))

(assert (=> b!6770389 (= c!1257245 ((_ is Union!16595) lt!2443328))))

(declare-fun b!6770390 () Bool)

(assert (=> b!6770390 (= e!4087692 call!613608)))

(declare-fun bm!613603 () Bool)

(assert (=> bm!613603 (= call!613608 (validRegex!8331 (ite c!1257245 (regTwo!33703 lt!2443328) (regTwo!33702 lt!2443328))))))

(declare-fun b!6770391 () Bool)

(declare-fun e!4087698 () Bool)

(assert (=> b!6770391 (= e!4087698 call!613609)))

(declare-fun bm!613604 () Bool)

(assert (=> bm!613604 (= call!613607 call!613609)))

(declare-fun b!6770392 () Bool)

(declare-fun e!4087694 () Bool)

(assert (=> b!6770392 (= e!4087694 e!4087695)))

(assert (=> b!6770392 (= c!1257246 ((_ is Star!16595) lt!2443328))))

(declare-fun b!6770384 () Bool)

(assert (=> b!6770384 (= e!4087695 e!4087698)))

(declare-fun res!2768170 () Bool)

(assert (=> b!6770384 (= res!2768170 (not (nullable!6576 (reg!16924 lt!2443328))))))

(assert (=> b!6770384 (=> (not res!2768170) (not e!4087698))))

(declare-fun d!2126907 () Bool)

(declare-fun res!2768168 () Bool)

(assert (=> d!2126907 (=> res!2768168 e!4087694)))

(assert (=> d!2126907 (= res!2768168 ((_ is ElementMatch!16595) lt!2443328))))

(assert (=> d!2126907 (= (validRegex!8331 lt!2443328) e!4087694)))

(assert (= (and d!2126907 (not res!2768168)) b!6770392))

(assert (= (and b!6770392 c!1257246) b!6770384))

(assert (= (and b!6770392 (not c!1257246)) b!6770389))

(assert (= (and b!6770384 res!2768170) b!6770391))

(assert (= (and b!6770389 c!1257245) b!6770387))

(assert (= (and b!6770389 (not c!1257245)) b!6770385))

(assert (= (and b!6770387 res!2768169) b!6770390))

(assert (= (and b!6770385 (not res!2768171)) b!6770386))

(assert (= (and b!6770386 res!2768167) b!6770388))

(assert (= (or b!6770390 b!6770388) bm!613603))

(assert (= (or b!6770387 b!6770386) bm!613604))

(assert (= (or b!6770391 bm!613604) bm!613602))

(declare-fun m!7521006 () Bool)

(assert (=> bm!613602 m!7521006))

(declare-fun m!7521008 () Bool)

(assert (=> bm!613603 m!7521008))

(declare-fun m!7521010 () Bool)

(assert (=> b!6770384 m!7521010))

(assert (=> d!2126321 d!2126907))

(declare-fun d!2126909 () Bool)

(declare-fun res!2768172 () Bool)

(declare-fun e!4087699 () Bool)

(assert (=> d!2126909 (=> res!2768172 e!4087699)))

(assert (=> d!2126909 (= res!2768172 ((_ is Nil!65961) (exprs!6479 (h!72410 zl!343))))))

(assert (=> d!2126909 (= (forall!15789 (exprs!6479 (h!72410 zl!343)) lambda!380885) e!4087699)))

(declare-fun b!6770393 () Bool)

(declare-fun e!4087700 () Bool)

(assert (=> b!6770393 (= e!4087699 e!4087700)))

(declare-fun res!2768173 () Bool)

(assert (=> b!6770393 (=> (not res!2768173) (not e!4087700))))

(assert (=> b!6770393 (= res!2768173 (dynLambda!26320 lambda!380885 (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun b!6770394 () Bool)

(assert (=> b!6770394 (= e!4087700 (forall!15789 (t!379794 (exprs!6479 (h!72410 zl!343))) lambda!380885))))

(assert (= (and d!2126909 (not res!2768172)) b!6770393))

(assert (= (and b!6770393 res!2768173) b!6770394))

(declare-fun b_lambda!254941 () Bool)

(assert (=> (not b_lambda!254941) (not b!6770393)))

(declare-fun m!7521012 () Bool)

(assert (=> b!6770393 m!7521012))

(declare-fun m!7521014 () Bool)

(assert (=> b!6770394 m!7521014))

(assert (=> d!2126321 d!2126909))

(assert (=> b!6769061 d!2126659))

(assert (=> b!6769061 d!2126661))

(declare-fun b!6770395 () Bool)

(declare-fun e!4087703 () (InoxSet Context!11958))

(assert (=> b!6770395 (= e!4087703 ((as const (Array Context!11958 Bool)) false))))

(declare-fun call!613610 () (InoxSet Context!11958))

(declare-fun b!6770396 () Bool)

(declare-fun e!4087701 () (InoxSet Context!11958))

(assert (=> b!6770396 (= e!4087701 ((_ map or) call!613610 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443194)))))) (h!72408 s!2326))))))

(declare-fun b!6770397 () Bool)

(declare-fun e!4087702 () Bool)

(assert (=> b!6770397 (= e!4087702 (nullable!6576 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443194)))))))))

(declare-fun d!2126911 () Bool)

(declare-fun c!1257247 () Bool)

(assert (=> d!2126911 (= c!1257247 e!4087702)))

(declare-fun res!2768174 () Bool)

(assert (=> d!2126911 (=> (not res!2768174) (not e!4087702))))

(assert (=> d!2126911 (= res!2768174 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443194))))))))

(assert (=> d!2126911 (= (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 lt!2443194))) (h!72408 s!2326)) e!4087701)))

(declare-fun bm!613605 () Bool)

(assert (=> bm!613605 (= call!613610 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443194))))) (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443194)))))) (h!72408 s!2326)))))

(declare-fun b!6770398 () Bool)

(assert (=> b!6770398 (= e!4087701 e!4087703)))

(declare-fun c!1257248 () Bool)

(assert (=> b!6770398 (= c!1257248 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443194))))))))

(declare-fun b!6770399 () Bool)

(assert (=> b!6770399 (= e!4087703 call!613610)))

(assert (= (and d!2126911 res!2768174) b!6770397))

(assert (= (and d!2126911 c!1257247) b!6770396))

(assert (= (and d!2126911 (not c!1257247)) b!6770398))

(assert (= (and b!6770398 c!1257248) b!6770399))

(assert (= (and b!6770398 (not c!1257248)) b!6770395))

(assert (= (or b!6770396 b!6770399) bm!613605))

(declare-fun m!7521016 () Bool)

(assert (=> b!6770396 m!7521016))

(declare-fun m!7521018 () Bool)

(assert (=> b!6770397 m!7521018))

(declare-fun m!7521020 () Bool)

(assert (=> bm!613605 m!7521020))

(assert (=> b!6769041 d!2126911))

(assert (=> d!2126261 d!2126693))

(declare-fun d!2126913 () Bool)

(assert (=> d!2126913 (= (isEmpty!38322 (unfocusZipperList!2016 zl!343)) ((_ is Nil!65961) (unfocusZipperList!2016 zl!343)))))

(assert (=> b!6768757 d!2126913))

(assert (=> d!2126317 d!2126781))

(assert (=> d!2126317 d!2126245))

(assert (=> bm!613335 d!2126157))

(declare-fun b!6770400 () Bool)

(declare-fun c!1257251 () Bool)

(assert (=> b!6770400 (= c!1257251 ((_ is Star!16595) (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))))))

(declare-fun e!4087705 () (InoxSet Context!11958))

(declare-fun e!4087706 () (InoxSet Context!11958))

(assert (=> b!6770400 (= e!4087705 e!4087706)))

(declare-fun b!6770401 () Bool)

(declare-fun e!4087708 () (InoxSet Context!11958))

(declare-fun call!613615 () (InoxSet Context!11958))

(declare-fun call!613613 () (InoxSet Context!11958))

(assert (=> b!6770401 (= e!4087708 ((_ map or) call!613615 call!613613))))

(declare-fun e!4087707 () (InoxSet Context!11958))

(declare-fun b!6770402 () Bool)

(assert (=> b!6770402 (= e!4087707 (store ((as const (Array Context!11958 Bool)) false) (ite (or c!1256867 c!1256868) lt!2443210 (Context!11959 call!613365)) true))))

(declare-fun b!6770403 () Bool)

(declare-fun call!613612 () (InoxSet Context!11958))

(assert (=> b!6770403 (= e!4087706 call!613612)))

(declare-fun bm!613606 () Bool)

(declare-fun call!613616 () (InoxSet Context!11958))

(assert (=> bm!613606 (= call!613616 call!613615)))

(declare-fun bm!613607 () Bool)

(assert (=> bm!613607 (= call!613612 call!613616)))

(declare-fun b!6770404 () Bool)

(declare-fun e!4087709 () (InoxSet Context!11958))

(assert (=> b!6770404 (= e!4087709 ((_ map or) call!613613 call!613616))))

(declare-fun b!6770405 () Bool)

(declare-fun e!4087704 () Bool)

(assert (=> b!6770405 (= e!4087704 (nullable!6576 (regOne!33702 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292))))))))))

(declare-fun c!1257252 () Bool)

(declare-fun d!2126915 () Bool)

(assert (=> d!2126915 (= c!1257252 (and ((_ is ElementMatch!16595) (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))) (= (c!1256657 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))) (h!72408 s!2326))))))

(assert (=> d!2126915 (= (derivationStepZipperDown!1823 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292))))) (ite (or c!1256867 c!1256868) lt!2443210 (Context!11959 call!613365)) (h!72408 s!2326)) e!4087707)))

(declare-fun b!6770406 () Bool)

(assert (=> b!6770406 (= e!4087706 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770407 () Bool)

(assert (=> b!6770407 (= e!4087705 call!613612)))

(declare-fun b!6770408 () Bool)

(declare-fun c!1257250 () Bool)

(assert (=> b!6770408 (= c!1257250 e!4087704)))

(declare-fun res!2768175 () Bool)

(assert (=> b!6770408 (=> (not res!2768175) (not e!4087704))))

(assert (=> b!6770408 (= res!2768175 ((_ is Concat!25440) (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))))))

(assert (=> b!6770408 (= e!4087708 e!4087709)))

(declare-fun bm!613608 () Bool)

(declare-fun call!613611 () List!66085)

(declare-fun call!613614 () List!66085)

(assert (=> bm!613608 (= call!613611 call!613614)))

(declare-fun bm!613609 () Bool)

(declare-fun c!1257249 () Bool)

(declare-fun c!1257253 () Bool)

(assert (=> bm!613609 (= call!613615 (derivationStepZipperDown!1823 (ite c!1257249 (regOne!33703 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))) (ite c!1257250 (regTwo!33702 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))) (ite c!1257253 (regOne!33702 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))) (reg!16924 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292))))))))) (ite (or c!1257249 c!1257250) (ite (or c!1256867 c!1256868) lt!2443210 (Context!11959 call!613365)) (Context!11959 call!613611)) (h!72408 s!2326)))))

(declare-fun b!6770409 () Bool)

(assert (=> b!6770409 (= e!4087709 e!4087705)))

(assert (=> b!6770409 (= c!1257253 ((_ is Concat!25440) (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))))))

(declare-fun b!6770410 () Bool)

(assert (=> b!6770410 (= e!4087707 e!4087708)))

(assert (=> b!6770410 (= c!1257249 ((_ is Union!16595) (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))))))

(declare-fun bm!613610 () Bool)

(assert (=> bm!613610 (= call!613613 (derivationStepZipperDown!1823 (ite c!1257249 (regTwo!33703 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))) (regOne!33702 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292))))))) (ite c!1257249 (ite (or c!1256867 c!1256868) lt!2443210 (Context!11959 call!613365)) (Context!11959 call!613614)) (h!72408 s!2326)))))

(declare-fun bm!613611 () Bool)

(assert (=> bm!613611 (= call!613614 ($colon$colon!2406 (exprs!6479 (ite (or c!1256867 c!1256868) lt!2443210 (Context!11959 call!613365))) (ite (or c!1257250 c!1257253) (regTwo!33702 (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292)))))) (ite c!1256867 (regOne!33703 (reg!16924 r!7292)) (ite c!1256868 (regTwo!33702 (reg!16924 r!7292)) (ite c!1256871 (regOne!33702 (reg!16924 r!7292)) (reg!16924 (reg!16924 r!7292))))))))))

(assert (= (and d!2126915 c!1257252) b!6770402))

(assert (= (and d!2126915 (not c!1257252)) b!6770410))

(assert (= (and b!6770410 c!1257249) b!6770401))

(assert (= (and b!6770410 (not c!1257249)) b!6770408))

(assert (= (and b!6770408 res!2768175) b!6770405))

(assert (= (and b!6770408 c!1257250) b!6770404))

(assert (= (and b!6770408 (not c!1257250)) b!6770409))

(assert (= (and b!6770409 c!1257253) b!6770407))

(assert (= (and b!6770409 (not c!1257253)) b!6770400))

(assert (= (and b!6770400 c!1257251) b!6770403))

(assert (= (and b!6770400 (not c!1257251)) b!6770406))

(assert (= (or b!6770407 b!6770403) bm!613608))

(assert (= (or b!6770407 b!6770403) bm!613607))

(assert (= (or b!6770404 bm!613608) bm!613611))

(assert (= (or b!6770404 bm!613607) bm!613606))

(assert (= (or b!6770401 b!6770404) bm!613610))

(assert (= (or b!6770401 bm!613606) bm!613609))

(declare-fun m!7521022 () Bool)

(assert (=> bm!613611 m!7521022))

(declare-fun m!7521024 () Bool)

(assert (=> bm!613610 m!7521024))

(declare-fun m!7521026 () Bool)

(assert (=> bm!613609 m!7521026))

(declare-fun m!7521028 () Bool)

(assert (=> b!6770402 m!7521028))

(declare-fun m!7521030 () Bool)

(assert (=> b!6770405 m!7521030))

(assert (=> bm!613363 d!2126915))

(assert (=> b!6769016 d!2126675))

(assert (=> b!6769016 d!2126677))

(assert (=> d!2126303 d!2126301))

(assert (=> d!2126303 d!2126299))

(declare-fun d!2126917 () Bool)

(assert (=> d!2126917 (= (matchR!8778 r!7292 s!2326) (matchRSpec!3696 r!7292 s!2326))))

(assert (=> d!2126917 true))

(declare-fun _$88!5550 () Unit!159881)

(assert (=> d!2126917 (= (choose!50445 r!7292 s!2326) _$88!5550)))

(declare-fun bs!1801937 () Bool)

(assert (= bs!1801937 d!2126917))

(assert (=> bs!1801937 m!7519030))

(assert (=> bs!1801937 m!7519028))

(assert (=> d!2126303 d!2126917))

(assert (=> d!2126303 d!2126245))

(assert (=> bs!1801326 d!2126311))

(declare-fun d!2126919 () Bool)

(assert (=> d!2126919 (= (flatMap!2076 z!1189 lambda!380880) (choose!50434 z!1189 lambda!380880))))

(declare-fun bs!1801938 () Bool)

(assert (= bs!1801938 d!2126919))

(declare-fun m!7521032 () Bool)

(assert (=> bs!1801938 m!7521032))

(assert (=> d!2126297 d!2126919))

(declare-fun d!2126921 () Bool)

(assert (=> d!2126921 (= (nullable!6576 (h!72409 (exprs!6479 lt!2443180))) (nullableFct!2482 (h!72409 (exprs!6479 lt!2443180))))))

(declare-fun bs!1801939 () Bool)

(assert (= bs!1801939 d!2126921))

(declare-fun m!7521034 () Bool)

(assert (=> bs!1801939 m!7521034))

(assert (=> b!6768958 d!2126921))

(declare-fun d!2126923 () Bool)

(assert (=> d!2126923 (= (nullable!6576 (regOne!33702 r!7292)) (nullableFct!2482 (regOne!33702 r!7292)))))

(declare-fun bs!1801940 () Bool)

(assert (= bs!1801940 d!2126923))

(declare-fun m!7521036 () Bool)

(assert (=> bs!1801940 m!7521036))

(assert (=> b!6768993 d!2126923))

(assert (=> b!6769050 d!2126737))

(assert (=> d!2126285 d!2126287))

(declare-fun d!2126925 () Bool)

(assert (=> d!2126925 (= (flatMap!2076 lt!2443198 lambda!380803) (dynLambda!26318 lambda!380803 lt!2443180))))

(assert (=> d!2126925 true))

(declare-fun _$13!4157 () Unit!159881)

(assert (=> d!2126925 (= (choose!50435 lt!2443198 lt!2443180 lambda!380803) _$13!4157)))

(declare-fun b_lambda!254943 () Bool)

(assert (=> (not b_lambda!254943) (not d!2126925)))

(declare-fun bs!1801941 () Bool)

(assert (= bs!1801941 d!2126925))

(assert (=> bs!1801941 m!7519088))

(assert (=> bs!1801941 m!7519622))

(assert (=> d!2126285 d!2126925))

(assert (=> b!6769028 d!2126739))

(assert (=> b!6768613 d!2126845))

(declare-fun b!6770411 () Bool)

(declare-fun e!4087710 () List!66084)

(assert (=> b!6770411 (= e!4087710 (_2!36873 lt!2443186))))

(declare-fun d!2126927 () Bool)

(declare-fun e!4087711 () Bool)

(assert (=> d!2126927 e!4087711))

(declare-fun res!2768176 () Bool)

(assert (=> d!2126927 (=> (not res!2768176) (not e!4087711))))

(declare-fun lt!2443399 () List!66084)

(assert (=> d!2126927 (= res!2768176 (= (content!12841 lt!2443399) ((_ map or) (content!12841 (t!379793 (_1!36873 lt!2443186))) (content!12841 (_2!36873 lt!2443186)))))))

(assert (=> d!2126927 (= lt!2443399 e!4087710)))

(declare-fun c!1257254 () Bool)

(assert (=> d!2126927 (= c!1257254 ((_ is Nil!65960) (t!379793 (_1!36873 lt!2443186))))))

(assert (=> d!2126927 (= (++!14749 (t!379793 (_1!36873 lt!2443186)) (_2!36873 lt!2443186)) lt!2443399)))

(declare-fun b!6770414 () Bool)

(assert (=> b!6770414 (= e!4087711 (or (not (= (_2!36873 lt!2443186) Nil!65960)) (= lt!2443399 (t!379793 (_1!36873 lt!2443186)))))))

(declare-fun b!6770413 () Bool)

(declare-fun res!2768177 () Bool)

(assert (=> b!6770413 (=> (not res!2768177) (not e!4087711))))

(assert (=> b!6770413 (= res!2768177 (= (size!40631 lt!2443399) (+ (size!40631 (t!379793 (_1!36873 lt!2443186))) (size!40631 (_2!36873 lt!2443186)))))))

(declare-fun b!6770412 () Bool)

(assert (=> b!6770412 (= e!4087710 (Cons!65960 (h!72408 (t!379793 (_1!36873 lt!2443186))) (++!14749 (t!379793 (t!379793 (_1!36873 lt!2443186))) (_2!36873 lt!2443186))))))

(assert (= (and d!2126927 c!1257254) b!6770411))

(assert (= (and d!2126927 (not c!1257254)) b!6770412))

(assert (= (and d!2126927 res!2768176) b!6770413))

(assert (= (and b!6770413 res!2768177) b!6770414))

(declare-fun m!7521038 () Bool)

(assert (=> d!2126927 m!7521038))

(assert (=> d!2126927 m!7521000))

(assert (=> d!2126927 m!7519546))

(declare-fun m!7521040 () Bool)

(assert (=> b!6770413 m!7521040))

(assert (=> b!6770413 m!7520514))

(assert (=> b!6770413 m!7519552))

(declare-fun m!7521042 () Bool)

(assert (=> b!6770412 m!7521042))

(assert (=> b!6768866 d!2126927))

(assert (=> b!6768802 d!2126321))

(declare-fun bs!1801942 () Bool)

(declare-fun d!2126929 () Bool)

(assert (= bs!1801942 (and d!2126929 d!2126273)))

(declare-fun lambda!380969 () Int)

(assert (=> bs!1801942 (= lambda!380969 lambda!380877)))

(declare-fun bs!1801943 () Bool)

(assert (= bs!1801943 (and d!2126929 d!2126289)))

(assert (=> bs!1801943 (= lambda!380969 lambda!380879)))

(declare-fun bs!1801944 () Bool)

(assert (= bs!1801944 (and d!2126929 d!2126771)))

(assert (=> bs!1801944 (= lambda!380969 lambda!380948)))

(declare-fun bs!1801945 () Bool)

(assert (= bs!1801945 (and d!2126929 d!2126321)))

(assert (=> bs!1801945 (= lambda!380969 lambda!380885)))

(declare-fun bs!1801946 () Bool)

(assert (= bs!1801946 (and d!2126929 d!2126785)))

(assert (=> bs!1801946 (= lambda!380969 lambda!380950)))

(declare-fun bs!1801947 () Bool)

(assert (= bs!1801947 (and d!2126929 d!2126897)))

(assert (=> bs!1801947 (= lambda!380969 lambda!380967)))

(declare-fun bs!1801948 () Bool)

(assert (= bs!1801948 (and d!2126929 d!2126741)))

(assert (=> bs!1801948 (= lambda!380969 lambda!380944)))

(declare-fun bs!1801949 () Bool)

(assert (= bs!1801949 (and d!2126929 d!2126709)))

(assert (=> bs!1801949 (= lambda!380969 lambda!380931)))

(declare-fun bs!1801950 () Bool)

(assert (= bs!1801950 (and d!2126929 d!2126711)))

(assert (=> bs!1801950 (= lambda!380969 lambda!380932)))

(declare-fun bs!1801951 () Bool)

(assert (= bs!1801951 (and d!2126929 d!2126689)))

(assert (=> bs!1801951 (= lambda!380969 lambda!380928)))

(declare-fun bs!1801952 () Bool)

(assert (= bs!1801952 (and d!2126929 d!2126233)))

(assert (=> bs!1801952 (= lambda!380969 lambda!380868)))

(declare-fun bs!1801953 () Bool)

(assert (= bs!1801953 (and d!2126929 d!2126803)))

(assert (=> bs!1801953 (= lambda!380969 lambda!380953)))

(declare-fun bs!1801954 () Bool)

(assert (= bs!1801954 (and d!2126929 d!2126205)))

(assert (=> bs!1801954 (= lambda!380969 lambda!380863)))

(declare-fun bs!1801955 () Bool)

(assert (= bs!1801955 (and d!2126929 d!2126773)))

(assert (=> bs!1801955 (= lambda!380969 lambda!380949)))

(declare-fun bs!1801956 () Bool)

(assert (= bs!1801956 (and d!2126929 d!2126899)))

(assert (=> bs!1801956 (= lambda!380969 lambda!380968)))

(declare-fun lt!2443400 () List!66085)

(assert (=> d!2126929 (forall!15789 lt!2443400 lambda!380969)))

(declare-fun e!4087712 () List!66085)

(assert (=> d!2126929 (= lt!2443400 e!4087712)))

(declare-fun c!1257255 () Bool)

(assert (=> d!2126929 (= c!1257255 ((_ is Cons!65962) (t!379795 zl!343)))))

(assert (=> d!2126929 (= (unfocusZipperList!2016 (t!379795 zl!343)) lt!2443400)))

(declare-fun b!6770415 () Bool)

(assert (=> b!6770415 (= e!4087712 (Cons!65961 (generalisedConcat!2192 (exprs!6479 (h!72410 (t!379795 zl!343)))) (unfocusZipperList!2016 (t!379795 (t!379795 zl!343)))))))

(declare-fun b!6770416 () Bool)

(assert (=> b!6770416 (= e!4087712 Nil!65961)))

(assert (= (and d!2126929 c!1257255) b!6770415))

(assert (= (and d!2126929 (not c!1257255)) b!6770416))

(declare-fun m!7521044 () Bool)

(assert (=> d!2126929 m!7521044))

(declare-fun m!7521046 () Bool)

(assert (=> b!6770415 m!7521046))

(declare-fun m!7521048 () Bool)

(assert (=> b!6770415 m!7521048))

(assert (=> b!6768802 d!2126929))

(assert (=> b!6769073 d!2126775))

(declare-fun b!6770417 () Bool)

(declare-fun e!4087715 () (InoxSet Context!11958))

(assert (=> b!6770417 (= e!4087715 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770418 () Bool)

(declare-fun call!613617 () (InoxSet Context!11958))

(declare-fun e!4087713 () (InoxSet Context!11958))

(assert (=> b!6770418 (= e!4087713 ((_ map or) call!613617 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443210)))))) (h!72408 s!2326))))))

(declare-fun b!6770419 () Bool)

(declare-fun e!4087714 () Bool)

(assert (=> b!6770419 (= e!4087714 (nullable!6576 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443210)))))))))

(declare-fun d!2126931 () Bool)

(declare-fun c!1257256 () Bool)

(assert (=> d!2126931 (= c!1257256 e!4087714)))

(declare-fun res!2768178 () Bool)

(assert (=> d!2126931 (=> (not res!2768178) (not e!4087714))))

(assert (=> d!2126931 (= res!2768178 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443210))))))))

(assert (=> d!2126931 (= (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 lt!2443210))) (h!72408 s!2326)) e!4087713)))

(declare-fun bm!613612 () Bool)

(assert (=> bm!613612 (= call!613617 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443210))))) (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443210)))))) (h!72408 s!2326)))))

(declare-fun b!6770420 () Bool)

(assert (=> b!6770420 (= e!4087713 e!4087715)))

(declare-fun c!1257257 () Bool)

(assert (=> b!6770420 (= c!1257257 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 lt!2443210))))))))

(declare-fun b!6770421 () Bool)

(assert (=> b!6770421 (= e!4087715 call!613617)))

(assert (= (and d!2126931 res!2768178) b!6770419))

(assert (= (and d!2126931 c!1257256) b!6770418))

(assert (= (and d!2126931 (not c!1257256)) b!6770420))

(assert (= (and b!6770420 c!1257257) b!6770421))

(assert (= (and b!6770420 (not c!1257257)) b!6770417))

(assert (= (or b!6770418 b!6770421) bm!613612))

(declare-fun m!7521050 () Bool)

(assert (=> b!6770418 m!7521050))

(declare-fun m!7521052 () Bool)

(assert (=> b!6770419 m!7521052))

(declare-fun m!7521054 () Bool)

(assert (=> bm!613612 m!7521054))

(assert (=> b!6768962 d!2126931))

(declare-fun d!2126933 () Bool)

(assert (=> d!2126933 (= (nullable!6576 (h!72409 (exprs!6479 lt!2443194))) (nullableFct!2482 (h!72409 (exprs!6479 lt!2443194))))))

(declare-fun bs!1801957 () Bool)

(assert (= bs!1801957 d!2126933))

(declare-fun m!7521056 () Bool)

(assert (=> bs!1801957 m!7521056))

(assert (=> b!6769042 d!2126933))

(declare-fun d!2126935 () Bool)

(assert (=> d!2126935 (= (Exists!3663 (ite c!1256829 lambda!380873 lambda!380874)) (choose!50436 (ite c!1256829 lambda!380873 lambda!380874)))))

(declare-fun bs!1801958 () Bool)

(assert (= bs!1801958 d!2126935))

(declare-fun m!7521058 () Bool)

(assert (=> bs!1801958 m!7521058))

(assert (=> bm!613331 d!2126935))

(assert (=> bs!1801329 d!2126281))

(assert (=> b!6769066 d!2126799))

(declare-fun b!6770422 () Bool)

(declare-fun e!4087718 () (InoxSet Context!11958))

(assert (=> b!6770422 (= e!4087718 ((as const (Array Context!11958 Bool)) false))))

(declare-fun e!4087716 () (InoxSet Context!11958))

(declare-fun b!6770423 () Bool)

(declare-fun call!613618 () (InoxSet Context!11958))

(assert (=> b!6770423 (= e!4087716 ((_ map or) call!613618 (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))))) (h!72408 s!2326))))))

(declare-fun b!6770424 () Bool)

(declare-fun e!4087717 () Bool)

(assert (=> b!6770424 (= e!4087717 (nullable!6576 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))))))))

(declare-fun d!2126937 () Bool)

(declare-fun c!1257258 () Bool)

(assert (=> d!2126937 (= c!1257258 e!4087717)))

(declare-fun res!2768179 () Bool)

(assert (=> d!2126937 (=> (not res!2768179) (not e!4087717))))

(assert (=> d!2126937 (= res!2768179 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))))))))

(assert (=> d!2126937 (= (derivationStepZipperUp!1749 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))) (h!72408 s!2326)) e!4087716)))

(declare-fun bm!613613 () Bool)

(assert (=> bm!613613 (= call!613618 (derivationStepZipperDown!1823 (h!72409 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))))) (Context!11959 (t!379794 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961)))))))) (h!72408 s!2326)))))

(declare-fun b!6770425 () Bool)

(assert (=> b!6770425 (= e!4087716 e!4087718)))

(declare-fun c!1257259 () Bool)

(assert (=> b!6770425 (= c!1257259 ((_ is Cons!65961) (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (Context!11959 (Cons!65961 r!7292 Nil!65961))))))))))

(declare-fun b!6770426 () Bool)

(assert (=> b!6770426 (= e!4087718 call!613618)))

(assert (= (and d!2126937 res!2768179) b!6770424))

(assert (= (and d!2126937 c!1257258) b!6770423))

(assert (= (and d!2126937 (not c!1257258)) b!6770425))

(assert (= (and b!6770425 c!1257259) b!6770426))

(assert (= (and b!6770425 (not c!1257259)) b!6770422))

(assert (= (or b!6770423 b!6770426) bm!613613))

(declare-fun m!7521060 () Bool)

(assert (=> b!6770423 m!7521060))

(declare-fun m!7521062 () Bool)

(assert (=> b!6770424 m!7521062))

(declare-fun m!7521064 () Bool)

(assert (=> bm!613613 m!7521064))

(assert (=> b!6769000 d!2126937))

(declare-fun b!6770427 () Bool)

(declare-fun res!2768183 () Bool)

(declare-fun e!4087721 () Bool)

(assert (=> b!6770427 (=> (not res!2768183) (not e!4087721))))

(declare-fun call!613619 () Bool)

(assert (=> b!6770427 (= res!2768183 (not call!613619))))

(declare-fun b!6770428 () Bool)

(declare-fun res!2768185 () Bool)

(assert (=> b!6770428 (=> (not res!2768185) (not e!4087721))))

(assert (=> b!6770428 (= res!2768185 (isEmpty!38317 (tail!12690 (tail!12690 (_2!36873 lt!2443186)))))))

(declare-fun b!6770429 () Bool)

(declare-fun res!2768182 () Bool)

(declare-fun e!4087723 () Bool)

(assert (=> b!6770429 (=> res!2768182 e!4087723)))

(assert (=> b!6770429 (= res!2768182 (not (isEmpty!38317 (tail!12690 (tail!12690 (_2!36873 lt!2443186))))))))

(declare-fun b!6770430 () Bool)

(declare-fun e!4087722 () Bool)

(declare-fun lt!2443401 () Bool)

(assert (=> b!6770430 (= e!4087722 (not lt!2443401))))

(declare-fun b!6770431 () Bool)

(assert (=> b!6770431 (= e!4087721 (= (head!13605 (tail!12690 (_2!36873 lt!2443186))) (c!1256657 (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186))))))))

(declare-fun b!6770432 () Bool)

(declare-fun e!4087725 () Bool)

(assert (=> b!6770432 (= e!4087725 e!4087723)))

(declare-fun res!2768180 () Bool)

(assert (=> b!6770432 (=> res!2768180 e!4087723)))

(assert (=> b!6770432 (= res!2768180 call!613619)))

(declare-fun b!6770433 () Bool)

(declare-fun e!4087719 () Bool)

(assert (=> b!6770433 (= e!4087719 (nullable!6576 (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186)))))))

(declare-fun b!6770434 () Bool)

(declare-fun res!2768181 () Bool)

(declare-fun e!4087720 () Bool)

(assert (=> b!6770434 (=> res!2768181 e!4087720)))

(assert (=> b!6770434 (= res!2768181 (not ((_ is ElementMatch!16595) (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186))))))))

(assert (=> b!6770434 (= e!4087722 e!4087720)))

(declare-fun b!6770436 () Bool)

(assert (=> b!6770436 (= e!4087720 e!4087725)))

(declare-fun res!2768184 () Bool)

(assert (=> b!6770436 (=> (not res!2768184) (not e!4087725))))

(assert (=> b!6770436 (= res!2768184 (not lt!2443401))))

(declare-fun b!6770437 () Bool)

(declare-fun e!4087724 () Bool)

(assert (=> b!6770437 (= e!4087724 (= lt!2443401 call!613619))))

(declare-fun bm!613614 () Bool)

(assert (=> bm!613614 (= call!613619 (isEmpty!38317 (tail!12690 (_2!36873 lt!2443186))))))

(declare-fun b!6770438 () Bool)

(declare-fun res!2768186 () Bool)

(assert (=> b!6770438 (=> res!2768186 e!4087720)))

(assert (=> b!6770438 (= res!2768186 e!4087721)))

(declare-fun res!2768187 () Bool)

(assert (=> b!6770438 (=> (not res!2768187) (not e!4087721))))

(assert (=> b!6770438 (= res!2768187 lt!2443401)))

(declare-fun b!6770439 () Bool)

(assert (=> b!6770439 (= e!4087719 (matchR!8778 (derivativeStep!5261 (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186))) (head!13605 (tail!12690 (_2!36873 lt!2443186)))) (tail!12690 (tail!12690 (_2!36873 lt!2443186)))))))

(declare-fun b!6770440 () Bool)

(assert (=> b!6770440 (= e!4087723 (not (= (head!13605 (tail!12690 (_2!36873 lt!2443186))) (c!1256657 (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186)))))))))

(declare-fun d!2126939 () Bool)

(assert (=> d!2126939 e!4087724))

(declare-fun c!1257260 () Bool)

(assert (=> d!2126939 (= c!1257260 ((_ is EmptyExpr!16595) (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186)))))))

(assert (=> d!2126939 (= lt!2443401 e!4087719)))

(declare-fun c!1257262 () Bool)

(assert (=> d!2126939 (= c!1257262 (isEmpty!38317 (tail!12690 (_2!36873 lt!2443186))))))

(assert (=> d!2126939 (validRegex!8331 (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186))))))

(assert (=> d!2126939 (= (matchR!8778 (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186))) (tail!12690 (_2!36873 lt!2443186))) lt!2443401)))

(declare-fun b!6770435 () Bool)

(assert (=> b!6770435 (= e!4087724 e!4087722)))

(declare-fun c!1257261 () Bool)

(assert (=> b!6770435 (= c!1257261 ((_ is EmptyLang!16595) (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186)))))))

(assert (= (and d!2126939 c!1257262) b!6770433))

(assert (= (and d!2126939 (not c!1257262)) b!6770439))

(assert (= (and d!2126939 c!1257260) b!6770437))

(assert (= (and d!2126939 (not c!1257260)) b!6770435))

(assert (= (and b!6770435 c!1257261) b!6770430))

(assert (= (and b!6770435 (not c!1257261)) b!6770434))

(assert (= (and b!6770434 (not res!2768181)) b!6770438))

(assert (= (and b!6770438 res!2768187) b!6770427))

(assert (= (and b!6770427 res!2768183) b!6770428))

(assert (= (and b!6770428 res!2768185) b!6770431))

(assert (= (and b!6770438 (not res!2768186)) b!6770436))

(assert (= (and b!6770436 res!2768184) b!6770432))

(assert (= (and b!6770432 (not res!2768180)) b!6770429))

(assert (= (and b!6770429 (not res!2768182)) b!6770440))

(assert (= (or b!6770437 b!6770427 b!6770432) bm!613614))

(assert (=> b!6770440 m!7519694))

(declare-fun m!7521066 () Bool)

(assert (=> b!6770440 m!7521066))

(assert (=> bm!613614 m!7519694))

(assert (=> bm!613614 m!7519696))

(assert (=> b!6770429 m!7519694))

(declare-fun m!7521068 () Bool)

(assert (=> b!6770429 m!7521068))

(assert (=> b!6770429 m!7521068))

(declare-fun m!7521070 () Bool)

(assert (=> b!6770429 m!7521070))

(assert (=> b!6770439 m!7519694))

(assert (=> b!6770439 m!7521066))

(assert (=> b!6770439 m!7519698))

(assert (=> b!6770439 m!7521066))

(declare-fun m!7521072 () Bool)

(assert (=> b!6770439 m!7521072))

(assert (=> b!6770439 m!7519694))

(assert (=> b!6770439 m!7521068))

(assert (=> b!6770439 m!7521072))

(assert (=> b!6770439 m!7521068))

(declare-fun m!7521074 () Bool)

(assert (=> b!6770439 m!7521074))

(assert (=> b!6770433 m!7519698))

(declare-fun m!7521076 () Bool)

(assert (=> b!6770433 m!7521076))

(assert (=> b!6770428 m!7519694))

(assert (=> b!6770428 m!7521068))

(assert (=> b!6770428 m!7521068))

(assert (=> b!6770428 m!7521070))

(assert (=> b!6770431 m!7519694))

(assert (=> b!6770431 m!7521066))

(assert (=> d!2126939 m!7519694))

(assert (=> d!2126939 m!7519696))

(assert (=> d!2126939 m!7519698))

(declare-fun m!7521078 () Bool)

(assert (=> d!2126939 m!7521078))

(assert (=> b!6769058 d!2126939))

(declare-fun b!6770441 () Bool)

(declare-fun e!4087728 () Regex!16595)

(declare-fun e!4087729 () Regex!16595)

(assert (=> b!6770441 (= e!4087728 e!4087729)))

(declare-fun c!1257265 () Bool)

(assert (=> b!6770441 (= c!1257265 ((_ is Star!16595) r!7292))))

(declare-fun b!6770442 () Bool)

(declare-fun e!4087726 () Regex!16595)

(assert (=> b!6770442 (= e!4087726 (ite (= (head!13605 (_2!36873 lt!2443186)) (c!1256657 r!7292)) EmptyExpr!16595 EmptyLang!16595))))

(declare-fun bm!613615 () Bool)

(declare-fun call!613622 () Regex!16595)

(declare-fun call!613621 () Regex!16595)

(assert (=> bm!613615 (= call!613622 call!613621)))

(declare-fun call!613620 () Regex!16595)

(declare-fun b!6770443 () Bool)

(declare-fun call!613623 () Regex!16595)

(declare-fun e!4087730 () Regex!16595)

(assert (=> b!6770443 (= e!4087730 (Union!16595 (Concat!25440 call!613620 (regTwo!33702 r!7292)) call!613623))))

(declare-fun b!6770444 () Bool)

(assert (=> b!6770444 (= e!4087728 (Union!16595 call!613620 call!613621))))

(declare-fun b!6770445 () Bool)

(declare-fun c!1257267 () Bool)

(assert (=> b!6770445 (= c!1257267 (nullable!6576 (regOne!33702 r!7292)))))

(assert (=> b!6770445 (= e!4087729 e!4087730)))

(declare-fun b!6770446 () Bool)

(declare-fun c!1257266 () Bool)

(assert (=> b!6770446 (= c!1257266 ((_ is Union!16595) r!7292))))

(assert (=> b!6770446 (= e!4087726 e!4087728)))

(declare-fun b!6770447 () Bool)

(assert (=> b!6770447 (= e!4087730 (Union!16595 (Concat!25440 call!613623 (regTwo!33702 r!7292)) EmptyLang!16595))))

(declare-fun bm!613616 () Bool)

(assert (=> bm!613616 (= call!613621 (derivativeStep!5261 (ite c!1257266 (regTwo!33703 r!7292) (ite c!1257265 (reg!16924 r!7292) (ite c!1257267 (regTwo!33702 r!7292) (regOne!33702 r!7292)))) (head!13605 (_2!36873 lt!2443186))))))

(declare-fun b!6770448 () Bool)

(assert (=> b!6770448 (= e!4087729 (Concat!25440 call!613622 r!7292))))

(declare-fun d!2126941 () Bool)

(declare-fun lt!2443402 () Regex!16595)

(assert (=> d!2126941 (validRegex!8331 lt!2443402)))

(declare-fun e!4087727 () Regex!16595)

(assert (=> d!2126941 (= lt!2443402 e!4087727)))

(declare-fun c!1257263 () Bool)

(assert (=> d!2126941 (= c!1257263 (or ((_ is EmptyExpr!16595) r!7292) ((_ is EmptyLang!16595) r!7292)))))

(assert (=> d!2126941 (validRegex!8331 r!7292)))

(assert (=> d!2126941 (= (derivativeStep!5261 r!7292 (head!13605 (_2!36873 lt!2443186))) lt!2443402)))

(declare-fun b!6770449 () Bool)

(assert (=> b!6770449 (= e!4087727 EmptyLang!16595)))

(declare-fun b!6770450 () Bool)

(assert (=> b!6770450 (= e!4087727 e!4087726)))

(declare-fun c!1257264 () Bool)

(assert (=> b!6770450 (= c!1257264 ((_ is ElementMatch!16595) r!7292))))

(declare-fun bm!613617 () Bool)

(assert (=> bm!613617 (= call!613623 call!613622)))

(declare-fun bm!613618 () Bool)

(assert (=> bm!613618 (= call!613620 (derivativeStep!5261 (ite c!1257266 (regOne!33703 r!7292) (regOne!33702 r!7292)) (head!13605 (_2!36873 lt!2443186))))))

(assert (= (and d!2126941 c!1257263) b!6770449))

(assert (= (and d!2126941 (not c!1257263)) b!6770450))

(assert (= (and b!6770450 c!1257264) b!6770442))

(assert (= (and b!6770450 (not c!1257264)) b!6770446))

(assert (= (and b!6770446 c!1257266) b!6770444))

(assert (= (and b!6770446 (not c!1257266)) b!6770441))

(assert (= (and b!6770441 c!1257265) b!6770448))

(assert (= (and b!6770441 (not c!1257265)) b!6770445))

(assert (= (and b!6770445 c!1257267) b!6770443))

(assert (= (and b!6770445 (not c!1257267)) b!6770447))

(assert (= (or b!6770443 b!6770447) bm!613617))

(assert (= (or b!6770448 bm!613617) bm!613615))

(assert (= (or b!6770444 bm!613615) bm!613616))

(assert (= (or b!6770444 b!6770443) bm!613618))

(assert (=> b!6770445 m!7519640))

(assert (=> bm!613616 m!7519690))

(declare-fun m!7521080 () Bool)

(assert (=> bm!613616 m!7521080))

(declare-fun m!7521082 () Bool)

(assert (=> d!2126941 m!7521082))

(assert (=> d!2126941 m!7519006))

(assert (=> bm!613618 m!7519690))

(declare-fun m!7521084 () Bool)

(assert (=> bm!613618 m!7521084))

(assert (=> b!6769058 d!2126941))

(assert (=> b!6769058 d!2126737))

(assert (=> b!6769058 d!2126673))

(declare-fun b!6770451 () Bool)

(declare-fun c!1257270 () Bool)

(assert (=> b!6770451 (= c!1257270 ((_ is Star!16595) (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun e!4087732 () (InoxSet Context!11958))

(declare-fun e!4087733 () (InoxSet Context!11958))

(assert (=> b!6770451 (= e!4087732 e!4087733)))

(declare-fun b!6770452 () Bool)

(declare-fun e!4087735 () (InoxSet Context!11958))

(declare-fun call!613628 () (InoxSet Context!11958))

(declare-fun call!613626 () (InoxSet Context!11958))

(assert (=> b!6770452 (= e!4087735 ((_ map or) call!613628 call!613626))))

(declare-fun b!6770453 () Bool)

(declare-fun e!4087734 () (InoxSet Context!11958))

(assert (=> b!6770453 (= e!4087734 (store ((as const (Array Context!11958 Bool)) false) (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))) true))))

(declare-fun b!6770454 () Bool)

(declare-fun call!613625 () (InoxSet Context!11958))

(assert (=> b!6770454 (= e!4087733 call!613625)))

(declare-fun bm!613619 () Bool)

(declare-fun call!613629 () (InoxSet Context!11958))

(assert (=> bm!613619 (= call!613629 call!613628)))

(declare-fun bm!613620 () Bool)

(assert (=> bm!613620 (= call!613625 call!613629)))

(declare-fun b!6770455 () Bool)

(declare-fun e!4087736 () (InoxSet Context!11958))

(assert (=> b!6770455 (= e!4087736 ((_ map or) call!613626 call!613629))))

(declare-fun b!6770456 () Bool)

(declare-fun e!4087731 () Bool)

(assert (=> b!6770456 (= e!4087731 (nullable!6576 (regOne!33702 (h!72409 (exprs!6479 (h!72410 zl!343))))))))

(declare-fun d!2126943 () Bool)

(declare-fun c!1257271 () Bool)

(assert (=> d!2126943 (= c!1257271 (and ((_ is ElementMatch!16595) (h!72409 (exprs!6479 (h!72410 zl!343)))) (= (c!1256657 (h!72409 (exprs!6479 (h!72410 zl!343)))) (h!72408 s!2326))))))

(assert (=> d!2126943 (= (derivationStepZipperDown!1823 (h!72409 (exprs!6479 (h!72410 zl!343))) (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))) (h!72408 s!2326)) e!4087734)))

(declare-fun b!6770457 () Bool)

(assert (=> b!6770457 (= e!4087733 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770458 () Bool)

(assert (=> b!6770458 (= e!4087732 call!613625)))

(declare-fun b!6770459 () Bool)

(declare-fun c!1257269 () Bool)

(assert (=> b!6770459 (= c!1257269 e!4087731)))

(declare-fun res!2768188 () Bool)

(assert (=> b!6770459 (=> (not res!2768188) (not e!4087731))))

(assert (=> b!6770459 (= res!2768188 ((_ is Concat!25440) (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(assert (=> b!6770459 (= e!4087735 e!4087736)))

(declare-fun bm!613621 () Bool)

(declare-fun call!613624 () List!66085)

(declare-fun call!613627 () List!66085)

(assert (=> bm!613621 (= call!613624 call!613627)))

(declare-fun c!1257272 () Bool)

(declare-fun bm!613622 () Bool)

(declare-fun c!1257268 () Bool)

(assert (=> bm!613622 (= call!613628 (derivationStepZipperDown!1823 (ite c!1257268 (regOne!33703 (h!72409 (exprs!6479 (h!72410 zl!343)))) (ite c!1257269 (regTwo!33702 (h!72409 (exprs!6479 (h!72410 zl!343)))) (ite c!1257272 (regOne!33702 (h!72409 (exprs!6479 (h!72410 zl!343)))) (reg!16924 (h!72409 (exprs!6479 (h!72410 zl!343))))))) (ite (or c!1257268 c!1257269) (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))) (Context!11959 call!613624)) (h!72408 s!2326)))))

(declare-fun b!6770460 () Bool)

(assert (=> b!6770460 (= e!4087736 e!4087732)))

(assert (=> b!6770460 (= c!1257272 ((_ is Concat!25440) (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun b!6770461 () Bool)

(assert (=> b!6770461 (= e!4087734 e!4087735)))

(assert (=> b!6770461 (= c!1257268 ((_ is Union!16595) (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun bm!613623 () Bool)

(assert (=> bm!613623 (= call!613626 (derivationStepZipperDown!1823 (ite c!1257268 (regTwo!33703 (h!72409 (exprs!6479 (h!72410 zl!343)))) (regOne!33702 (h!72409 (exprs!6479 (h!72410 zl!343))))) (ite c!1257268 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343)))) (Context!11959 call!613627)) (h!72408 s!2326)))))

(declare-fun bm!613624 () Bool)

(assert (=> bm!613624 (= call!613627 ($colon$colon!2406 (exprs!6479 (Context!11959 (t!379794 (exprs!6479 (h!72410 zl!343))))) (ite (or c!1257269 c!1257272) (regTwo!33702 (h!72409 (exprs!6479 (h!72410 zl!343)))) (h!72409 (exprs!6479 (h!72410 zl!343))))))))

(assert (= (and d!2126943 c!1257271) b!6770453))

(assert (= (and d!2126943 (not c!1257271)) b!6770461))

(assert (= (and b!6770461 c!1257268) b!6770452))

(assert (= (and b!6770461 (not c!1257268)) b!6770459))

(assert (= (and b!6770459 res!2768188) b!6770456))

(assert (= (and b!6770459 c!1257269) b!6770455))

(assert (= (and b!6770459 (not c!1257269)) b!6770460))

(assert (= (and b!6770460 c!1257272) b!6770458))

(assert (= (and b!6770460 (not c!1257272)) b!6770451))

(assert (= (and b!6770451 c!1257270) b!6770454))

(assert (= (and b!6770451 (not c!1257270)) b!6770457))

(assert (= (or b!6770458 b!6770454) bm!613621))

(assert (= (or b!6770458 b!6770454) bm!613620))

(assert (= (or b!6770455 bm!613621) bm!613624))

(assert (= (or b!6770455 bm!613620) bm!613619))

(assert (= (or b!6770452 b!6770455) bm!613623))

(assert (= (or b!6770452 bm!613619) bm!613622))

(declare-fun m!7521086 () Bool)

(assert (=> bm!613624 m!7521086))

(declare-fun m!7521088 () Bool)

(assert (=> bm!613623 m!7521088))

(declare-fun m!7521090 () Bool)

(assert (=> bm!613622 m!7521090))

(declare-fun m!7521092 () Bool)

(assert (=> b!6770453 m!7521092))

(declare-fun m!7521094 () Bool)

(assert (=> b!6770456 m!7521094))

(assert (=> bm!613285 d!2126943))

(declare-fun d!2126945 () Bool)

(assert (=> d!2126945 (= (isEmpty!38322 (t!379794 (unfocusZipperList!2016 zl!343))) ((_ is Nil!65961) (t!379794 (unfocusZipperList!2016 zl!343))))))

(assert (=> b!6768762 d!2126945))

(declare-fun d!2126947 () Bool)

(declare-fun c!1257273 () Bool)

(assert (=> d!2126947 (= c!1257273 ((_ is Nil!65962) lt!2443323))))

(declare-fun e!4087737 () (InoxSet Context!11958))

(assert (=> d!2126947 (= (content!12840 lt!2443323) e!4087737)))

(declare-fun b!6770462 () Bool)

(assert (=> b!6770462 (= e!4087737 ((as const (Array Context!11958 Bool)) false))))

(declare-fun b!6770463 () Bool)

(assert (=> b!6770463 (= e!4087737 ((_ map or) (store ((as const (Array Context!11958 Bool)) false) (h!72410 lt!2443323) true) (content!12840 (t!379795 lt!2443323))))))

(assert (= (and d!2126947 c!1257273) b!6770462))

(assert (= (and d!2126947 (not c!1257273)) b!6770463))

(declare-fun m!7521096 () Bool)

(assert (=> b!6770463 m!7521096))

(declare-fun m!7521098 () Bool)

(assert (=> b!6770463 m!7521098))

(assert (=> b!6769045 d!2126947))

(declare-fun d!2126949 () Bool)

(assert (=> d!2126949 (= ($colon$colon!2406 (exprs!6479 (Context!11959 Nil!65961)) (ite (or c!1256854 c!1256857) (regTwo!33702 r!7292) r!7292)) (Cons!65961 (ite (or c!1256854 c!1256857) (regTwo!33702 r!7292) r!7292) (exprs!6479 (Context!11959 Nil!65961))))))

(assert (=> bm!613355 d!2126949))

(declare-fun d!2126951 () Bool)

(assert (=> d!2126951 (= (isEmpty!38322 (t!379794 (exprs!6479 (h!72410 zl!343)))) ((_ is Nil!65961) (t!379794 (exprs!6479 (h!72410 zl!343)))))))

(assert (=> b!6769097 d!2126951))

(declare-fun condSetEmpty!46297 () Bool)

(assert (=> setNonEmpty!46283 (= condSetEmpty!46297 (= setRest!46283 ((as const (Array Context!11958 Bool)) false)))))

(declare-fun setRes!46297 () Bool)

(assert (=> setNonEmpty!46283 (= tp!1854851 setRes!46297)))

(declare-fun setIsEmpty!46297 () Bool)

(assert (=> setIsEmpty!46297 setRes!46297))

(declare-fun e!4087738 () Bool)

(declare-fun setElem!46297 () Context!11958)

(declare-fun tp!1855047 () Bool)

(declare-fun setNonEmpty!46297 () Bool)

(assert (=> setNonEmpty!46297 (= setRes!46297 (and tp!1855047 (inv!84734 setElem!46297) e!4087738))))

(declare-fun setRest!46297 () (InoxSet Context!11958))

(assert (=> setNonEmpty!46297 (= setRest!46283 ((_ map or) (store ((as const (Array Context!11958 Bool)) false) setElem!46297 true) setRest!46297))))

(declare-fun b!6770464 () Bool)

(declare-fun tp!1855046 () Bool)

(assert (=> b!6770464 (= e!4087738 tp!1855046)))

(assert (= (and setNonEmpty!46283 condSetEmpty!46297) setIsEmpty!46297))

(assert (= (and setNonEmpty!46283 (not condSetEmpty!46297)) setNonEmpty!46297))

(assert (= setNonEmpty!46297 b!6770464))

(declare-fun m!7521100 () Bool)

(assert (=> setNonEmpty!46297 m!7521100))

(declare-fun b!6770465 () Bool)

(declare-fun e!4087739 () Bool)

(declare-fun tp!1855048 () Bool)

(declare-fun tp!1855049 () Bool)

(assert (=> b!6770465 (= e!4087739 (and tp!1855048 tp!1855049))))

(assert (=> b!6769149 (= tp!1854850 e!4087739)))

(assert (= (and b!6769149 ((_ is Cons!65961) (exprs!6479 setElem!46283))) b!6770465))

(declare-fun b!6770469 () Bool)

(declare-fun e!4087740 () Bool)

(declare-fun tp!1855054 () Bool)

(declare-fun tp!1855050 () Bool)

(assert (=> b!6770469 (= e!4087740 (and tp!1855054 tp!1855050))))

(declare-fun b!6770467 () Bool)

(declare-fun tp!1855052 () Bool)

(declare-fun tp!1855053 () Bool)

(assert (=> b!6770467 (= e!4087740 (and tp!1855052 tp!1855053))))

(declare-fun b!6770466 () Bool)

(assert (=> b!6770466 (= e!4087740 tp_is_empty!42443)))

(declare-fun b!6770468 () Bool)

(declare-fun tp!1855051 () Bool)

(assert (=> b!6770468 (= e!4087740 tp!1855051)))

(assert (=> b!6769142 (= tp!1854843 e!4087740)))

(assert (= (and b!6769142 ((_ is ElementMatch!16595) (regOne!33702 (reg!16924 r!7292)))) b!6770466))

(assert (= (and b!6769142 ((_ is Concat!25440) (regOne!33702 (reg!16924 r!7292)))) b!6770467))

(assert (= (and b!6769142 ((_ is Star!16595) (regOne!33702 (reg!16924 r!7292)))) b!6770468))

(assert (= (and b!6769142 ((_ is Union!16595) (regOne!33702 (reg!16924 r!7292)))) b!6770469))

(declare-fun b!6770473 () Bool)

(declare-fun e!4087741 () Bool)

(declare-fun tp!1855059 () Bool)

(declare-fun tp!1855055 () Bool)

(assert (=> b!6770473 (= e!4087741 (and tp!1855059 tp!1855055))))

(declare-fun b!6770471 () Bool)

(declare-fun tp!1855057 () Bool)

(declare-fun tp!1855058 () Bool)

(assert (=> b!6770471 (= e!4087741 (and tp!1855057 tp!1855058))))

(declare-fun b!6770470 () Bool)

(assert (=> b!6770470 (= e!4087741 tp_is_empty!42443)))

(declare-fun b!6770472 () Bool)

(declare-fun tp!1855056 () Bool)

(assert (=> b!6770472 (= e!4087741 tp!1855056)))

(assert (=> b!6769142 (= tp!1854844 e!4087741)))

(assert (= (and b!6769142 ((_ is ElementMatch!16595) (regTwo!33702 (reg!16924 r!7292)))) b!6770470))

(assert (= (and b!6769142 ((_ is Concat!25440) (regTwo!33702 (reg!16924 r!7292)))) b!6770471))

(assert (= (and b!6769142 ((_ is Star!16595) (regTwo!33702 (reg!16924 r!7292)))) b!6770472))

(assert (= (and b!6769142 ((_ is Union!16595) (regTwo!33702 (reg!16924 r!7292)))) b!6770473))

(declare-fun b!6770475 () Bool)

(declare-fun e!4087743 () Bool)

(declare-fun tp!1855060 () Bool)

(assert (=> b!6770475 (= e!4087743 tp!1855060)))

(declare-fun e!4087742 () Bool)

(declare-fun tp!1855061 () Bool)

(declare-fun b!6770474 () Bool)

(assert (=> b!6770474 (= e!4087742 (and (inv!84734 (h!72410 (t!379795 (t!379795 zl!343)))) e!4087743 tp!1855061))))

(assert (=> b!6769156 (= tp!1854857 e!4087742)))

(assert (= b!6770474 b!6770475))

(assert (= (and b!6769156 ((_ is Cons!65962) (t!379795 (t!379795 zl!343)))) b!6770474))

(declare-fun m!7521102 () Bool)

(assert (=> b!6770474 m!7521102))

(declare-fun b!6770479 () Bool)

(declare-fun e!4087744 () Bool)

(declare-fun tp!1855066 () Bool)

(declare-fun tp!1855062 () Bool)

(assert (=> b!6770479 (= e!4087744 (and tp!1855066 tp!1855062))))

(declare-fun b!6770477 () Bool)

(declare-fun tp!1855064 () Bool)

(declare-fun tp!1855065 () Bool)

(assert (=> b!6770477 (= e!4087744 (and tp!1855064 tp!1855065))))

(declare-fun b!6770476 () Bool)

(assert (=> b!6770476 (= e!4087744 tp_is_empty!42443)))

(declare-fun b!6770478 () Bool)

(declare-fun tp!1855063 () Bool)

(assert (=> b!6770478 (= e!4087744 tp!1855063)))

(assert (=> b!6769138 (= tp!1854838 e!4087744)))

(assert (= (and b!6769138 ((_ is ElementMatch!16595) (regOne!33702 (regTwo!33703 r!7292)))) b!6770476))

(assert (= (and b!6769138 ((_ is Concat!25440) (regOne!33702 (regTwo!33703 r!7292)))) b!6770477))

(assert (= (and b!6769138 ((_ is Star!16595) (regOne!33702 (regTwo!33703 r!7292)))) b!6770478))

(assert (= (and b!6769138 ((_ is Union!16595) (regOne!33702 (regTwo!33703 r!7292)))) b!6770479))

(declare-fun b!6770483 () Bool)

(declare-fun e!4087745 () Bool)

(declare-fun tp!1855071 () Bool)

(declare-fun tp!1855067 () Bool)

(assert (=> b!6770483 (= e!4087745 (and tp!1855071 tp!1855067))))

(declare-fun b!6770481 () Bool)

(declare-fun tp!1855069 () Bool)

(declare-fun tp!1855070 () Bool)

(assert (=> b!6770481 (= e!4087745 (and tp!1855069 tp!1855070))))

(declare-fun b!6770480 () Bool)

(assert (=> b!6770480 (= e!4087745 tp_is_empty!42443)))

(declare-fun b!6770482 () Bool)

(declare-fun tp!1855068 () Bool)

(assert (=> b!6770482 (= e!4087745 tp!1855068)))

(assert (=> b!6769138 (= tp!1854839 e!4087745)))

(assert (= (and b!6769138 ((_ is ElementMatch!16595) (regTwo!33702 (regTwo!33703 r!7292)))) b!6770480))

(assert (= (and b!6769138 ((_ is Concat!25440) (regTwo!33702 (regTwo!33703 r!7292)))) b!6770481))

(assert (= (and b!6769138 ((_ is Star!16595) (regTwo!33702 (regTwo!33703 r!7292)))) b!6770482))

(assert (= (and b!6769138 ((_ is Union!16595) (regTwo!33702 (regTwo!33703 r!7292)))) b!6770483))

(declare-fun b!6770487 () Bool)

(declare-fun e!4087746 () Bool)

(declare-fun tp!1855076 () Bool)

(declare-fun tp!1855072 () Bool)

(assert (=> b!6770487 (= e!4087746 (and tp!1855076 tp!1855072))))

(declare-fun b!6770485 () Bool)

(declare-fun tp!1855074 () Bool)

(declare-fun tp!1855075 () Bool)

(assert (=> b!6770485 (= e!4087746 (and tp!1855074 tp!1855075))))

(declare-fun b!6770484 () Bool)

(assert (=> b!6770484 (= e!4087746 tp_is_empty!42443)))

(declare-fun b!6770486 () Bool)

(declare-fun tp!1855073 () Bool)

(assert (=> b!6770486 (= e!4087746 tp!1855073)))

(assert (=> b!6769124 (= tp!1854820 e!4087746)))

(assert (= (and b!6769124 ((_ is ElementMatch!16595) (regOne!33702 (regTwo!33702 r!7292)))) b!6770484))

(assert (= (and b!6769124 ((_ is Concat!25440) (regOne!33702 (regTwo!33702 r!7292)))) b!6770485))

(assert (= (and b!6769124 ((_ is Star!16595) (regOne!33702 (regTwo!33702 r!7292)))) b!6770486))

(assert (= (and b!6769124 ((_ is Union!16595) (regOne!33702 (regTwo!33702 r!7292)))) b!6770487))

(declare-fun b!6770491 () Bool)

(declare-fun e!4087747 () Bool)

(declare-fun tp!1855081 () Bool)

(declare-fun tp!1855077 () Bool)

(assert (=> b!6770491 (= e!4087747 (and tp!1855081 tp!1855077))))

(declare-fun b!6770489 () Bool)

(declare-fun tp!1855079 () Bool)

(declare-fun tp!1855080 () Bool)

(assert (=> b!6770489 (= e!4087747 (and tp!1855079 tp!1855080))))

(declare-fun b!6770488 () Bool)

(assert (=> b!6770488 (= e!4087747 tp_is_empty!42443)))

(declare-fun b!6770490 () Bool)

(declare-fun tp!1855078 () Bool)

(assert (=> b!6770490 (= e!4087747 tp!1855078)))

(assert (=> b!6769124 (= tp!1854821 e!4087747)))

(assert (= (and b!6769124 ((_ is ElementMatch!16595) (regTwo!33702 (regTwo!33702 r!7292)))) b!6770488))

(assert (= (and b!6769124 ((_ is Concat!25440) (regTwo!33702 (regTwo!33702 r!7292)))) b!6770489))

(assert (= (and b!6769124 ((_ is Star!16595) (regTwo!33702 (regTwo!33702 r!7292)))) b!6770490))

(assert (= (and b!6769124 ((_ is Union!16595) (regTwo!33702 (regTwo!33702 r!7292)))) b!6770491))

(declare-fun b!6770495 () Bool)

(declare-fun e!4087748 () Bool)

(declare-fun tp!1855086 () Bool)

(declare-fun tp!1855082 () Bool)

(assert (=> b!6770495 (= e!4087748 (and tp!1855086 tp!1855082))))

(declare-fun b!6770493 () Bool)

(declare-fun tp!1855084 () Bool)

(declare-fun tp!1855085 () Bool)

(assert (=> b!6770493 (= e!4087748 (and tp!1855084 tp!1855085))))

(declare-fun b!6770492 () Bool)

(assert (=> b!6770492 (= e!4087748 tp_is_empty!42443)))

(declare-fun b!6770494 () Bool)

(declare-fun tp!1855083 () Bool)

(assert (=> b!6770494 (= e!4087748 tp!1855083)))

(assert (=> b!6769139 (= tp!1854837 e!4087748)))

(assert (= (and b!6769139 ((_ is ElementMatch!16595) (reg!16924 (regTwo!33703 r!7292)))) b!6770492))

(assert (= (and b!6769139 ((_ is Concat!25440) (reg!16924 (regTwo!33703 r!7292)))) b!6770493))

(assert (= (and b!6769139 ((_ is Star!16595) (reg!16924 (regTwo!33703 r!7292)))) b!6770494))

(assert (= (and b!6769139 ((_ is Union!16595) (reg!16924 (regTwo!33703 r!7292)))) b!6770495))

(declare-fun b!6770499 () Bool)

(declare-fun e!4087749 () Bool)

(declare-fun tp!1855091 () Bool)

(declare-fun tp!1855087 () Bool)

(assert (=> b!6770499 (= e!4087749 (and tp!1855091 tp!1855087))))

(declare-fun b!6770497 () Bool)

(declare-fun tp!1855089 () Bool)

(declare-fun tp!1855090 () Bool)

(assert (=> b!6770497 (= e!4087749 (and tp!1855089 tp!1855090))))

(declare-fun b!6770496 () Bool)

(assert (=> b!6770496 (= e!4087749 tp_is_empty!42443)))

(declare-fun b!6770498 () Bool)

(declare-fun tp!1855088 () Bool)

(assert (=> b!6770498 (= e!4087749 tp!1855088)))

(assert (=> b!6769125 (= tp!1854819 e!4087749)))

(assert (= (and b!6769125 ((_ is ElementMatch!16595) (reg!16924 (regTwo!33702 r!7292)))) b!6770496))

(assert (= (and b!6769125 ((_ is Concat!25440) (reg!16924 (regTwo!33702 r!7292)))) b!6770497))

(assert (= (and b!6769125 ((_ is Star!16595) (reg!16924 (regTwo!33702 r!7292)))) b!6770498))

(assert (= (and b!6769125 ((_ is Union!16595) (reg!16924 (regTwo!33702 r!7292)))) b!6770499))

(declare-fun b!6770503 () Bool)

(declare-fun e!4087750 () Bool)

(declare-fun tp!1855096 () Bool)

(declare-fun tp!1855092 () Bool)

(assert (=> b!6770503 (= e!4087750 (and tp!1855096 tp!1855092))))

(declare-fun b!6770501 () Bool)

(declare-fun tp!1855094 () Bool)

(declare-fun tp!1855095 () Bool)

(assert (=> b!6770501 (= e!4087750 (and tp!1855094 tp!1855095))))

(declare-fun b!6770500 () Bool)

(assert (=> b!6770500 (= e!4087750 tp_is_empty!42443)))

(declare-fun b!6770502 () Bool)

(declare-fun tp!1855093 () Bool)

(assert (=> b!6770502 (= e!4087750 tp!1855093)))

(assert (=> b!6769140 (= tp!1854840 e!4087750)))

(assert (= (and b!6769140 ((_ is ElementMatch!16595) (regOne!33703 (regTwo!33703 r!7292)))) b!6770500))

(assert (= (and b!6769140 ((_ is Concat!25440) (regOne!33703 (regTwo!33703 r!7292)))) b!6770501))

(assert (= (and b!6769140 ((_ is Star!16595) (regOne!33703 (regTwo!33703 r!7292)))) b!6770502))

(assert (= (and b!6769140 ((_ is Union!16595) (regOne!33703 (regTwo!33703 r!7292)))) b!6770503))

(declare-fun b!6770507 () Bool)

(declare-fun e!4087751 () Bool)

(declare-fun tp!1855101 () Bool)

(declare-fun tp!1855097 () Bool)

(assert (=> b!6770507 (= e!4087751 (and tp!1855101 tp!1855097))))

(declare-fun b!6770505 () Bool)

(declare-fun tp!1855099 () Bool)

(declare-fun tp!1855100 () Bool)

(assert (=> b!6770505 (= e!4087751 (and tp!1855099 tp!1855100))))

(declare-fun b!6770504 () Bool)

(assert (=> b!6770504 (= e!4087751 tp_is_empty!42443)))

(declare-fun b!6770506 () Bool)

(declare-fun tp!1855098 () Bool)

(assert (=> b!6770506 (= e!4087751 tp!1855098)))

(assert (=> b!6769140 (= tp!1854836 e!4087751)))

(assert (= (and b!6769140 ((_ is ElementMatch!16595) (regTwo!33703 (regTwo!33703 r!7292)))) b!6770504))

(assert (= (and b!6769140 ((_ is Concat!25440) (regTwo!33703 (regTwo!33703 r!7292)))) b!6770505))

(assert (= (and b!6769140 ((_ is Star!16595) (regTwo!33703 (regTwo!33703 r!7292)))) b!6770506))

(assert (= (and b!6769140 ((_ is Union!16595) (regTwo!33703 (regTwo!33703 r!7292)))) b!6770507))

(declare-fun b!6770511 () Bool)

(declare-fun e!4087752 () Bool)

(declare-fun tp!1855106 () Bool)

(declare-fun tp!1855102 () Bool)

(assert (=> b!6770511 (= e!4087752 (and tp!1855106 tp!1855102))))

(declare-fun b!6770509 () Bool)

(declare-fun tp!1855104 () Bool)

(declare-fun tp!1855105 () Bool)

(assert (=> b!6770509 (= e!4087752 (and tp!1855104 tp!1855105))))

(declare-fun b!6770508 () Bool)

(assert (=> b!6770508 (= e!4087752 tp_is_empty!42443)))

(declare-fun b!6770510 () Bool)

(declare-fun tp!1855103 () Bool)

(assert (=> b!6770510 (= e!4087752 tp!1855103)))

(assert (=> b!6769126 (= tp!1854822 e!4087752)))

(assert (= (and b!6769126 ((_ is ElementMatch!16595) (regOne!33703 (regTwo!33702 r!7292)))) b!6770508))

(assert (= (and b!6769126 ((_ is Concat!25440) (regOne!33703 (regTwo!33702 r!7292)))) b!6770509))

(assert (= (and b!6769126 ((_ is Star!16595) (regOne!33703 (regTwo!33702 r!7292)))) b!6770510))

(assert (= (and b!6769126 ((_ is Union!16595) (regOne!33703 (regTwo!33702 r!7292)))) b!6770511))

(declare-fun b!6770515 () Bool)

(declare-fun e!4087753 () Bool)

(declare-fun tp!1855111 () Bool)

(declare-fun tp!1855107 () Bool)

(assert (=> b!6770515 (= e!4087753 (and tp!1855111 tp!1855107))))

(declare-fun b!6770513 () Bool)

(declare-fun tp!1855109 () Bool)

(declare-fun tp!1855110 () Bool)

(assert (=> b!6770513 (= e!4087753 (and tp!1855109 tp!1855110))))

(declare-fun b!6770512 () Bool)

(assert (=> b!6770512 (= e!4087753 tp_is_empty!42443)))

(declare-fun b!6770514 () Bool)

(declare-fun tp!1855108 () Bool)

(assert (=> b!6770514 (= e!4087753 tp!1855108)))

(assert (=> b!6769126 (= tp!1854818 e!4087753)))

(assert (= (and b!6769126 ((_ is ElementMatch!16595) (regTwo!33703 (regTwo!33702 r!7292)))) b!6770512))

(assert (= (and b!6769126 ((_ is Concat!25440) (regTwo!33703 (regTwo!33702 r!7292)))) b!6770513))

(assert (= (and b!6769126 ((_ is Star!16595) (regTwo!33703 (regTwo!33702 r!7292)))) b!6770514))

(assert (= (and b!6769126 ((_ is Union!16595) (regTwo!33703 (regTwo!33702 r!7292)))) b!6770515))

(declare-fun b!6770519 () Bool)

(declare-fun e!4087754 () Bool)

(declare-fun tp!1855116 () Bool)

(declare-fun tp!1855112 () Bool)

(assert (=> b!6770519 (= e!4087754 (and tp!1855116 tp!1855112))))

(declare-fun b!6770517 () Bool)

(declare-fun tp!1855114 () Bool)

(declare-fun tp!1855115 () Bool)

(assert (=> b!6770517 (= e!4087754 (and tp!1855114 tp!1855115))))

(declare-fun b!6770516 () Bool)

(assert (=> b!6770516 (= e!4087754 tp_is_empty!42443)))

(declare-fun b!6770518 () Bool)

(declare-fun tp!1855113 () Bool)

(assert (=> b!6770518 (= e!4087754 tp!1855113)))

(assert (=> b!6769132 (= tp!1854829 e!4087754)))

(assert (= (and b!6769132 ((_ is ElementMatch!16595) (h!72409 (exprs!6479 setElem!46277)))) b!6770516))

(assert (= (and b!6769132 ((_ is Concat!25440) (h!72409 (exprs!6479 setElem!46277)))) b!6770517))

(assert (= (and b!6769132 ((_ is Star!16595) (h!72409 (exprs!6479 setElem!46277)))) b!6770518))

(assert (= (and b!6769132 ((_ is Union!16595) (h!72409 (exprs!6479 setElem!46277)))) b!6770519))

(declare-fun b!6770520 () Bool)

(declare-fun e!4087755 () Bool)

(declare-fun tp!1855117 () Bool)

(declare-fun tp!1855118 () Bool)

(assert (=> b!6770520 (= e!4087755 (and tp!1855117 tp!1855118))))

(assert (=> b!6769132 (= tp!1854830 e!4087755)))

(assert (= (and b!6769132 ((_ is Cons!65961) (t!379794 (exprs!6479 setElem!46277)))) b!6770520))

(declare-fun b!6770521 () Bool)

(declare-fun e!4087756 () Bool)

(declare-fun tp!1855119 () Bool)

(assert (=> b!6770521 (= e!4087756 (and tp_is_empty!42443 tp!1855119))))

(assert (=> b!6769108 (= tp!1854802 e!4087756)))

(assert (= (and b!6769108 ((_ is Cons!65960) (t!379793 (t!379793 s!2326)))) b!6770521))

(declare-fun b!6770525 () Bool)

(declare-fun e!4087757 () Bool)

(declare-fun tp!1855124 () Bool)

(declare-fun tp!1855120 () Bool)

(assert (=> b!6770525 (= e!4087757 (and tp!1855124 tp!1855120))))

(declare-fun b!6770523 () Bool)

(declare-fun tp!1855122 () Bool)

(declare-fun tp!1855123 () Bool)

(assert (=> b!6770523 (= e!4087757 (and tp!1855122 tp!1855123))))

(declare-fun b!6770522 () Bool)

(assert (=> b!6770522 (= e!4087757 tp_is_empty!42443)))

(declare-fun b!6770524 () Bool)

(declare-fun tp!1855121 () Bool)

(assert (=> b!6770524 (= e!4087757 tp!1855121)))

(assert (=> b!6769131 (= tp!1854827 e!4087757)))

(assert (= (and b!6769131 ((_ is ElementMatch!16595) (h!72409 (exprs!6479 (h!72410 zl!343))))) b!6770522))

(assert (= (and b!6769131 ((_ is Concat!25440) (h!72409 (exprs!6479 (h!72410 zl!343))))) b!6770523))

(assert (= (and b!6769131 ((_ is Star!16595) (h!72409 (exprs!6479 (h!72410 zl!343))))) b!6770524))

(assert (= (and b!6769131 ((_ is Union!16595) (h!72409 (exprs!6479 (h!72410 zl!343))))) b!6770525))

(declare-fun b!6770526 () Bool)

(declare-fun e!4087758 () Bool)

(declare-fun tp!1855125 () Bool)

(declare-fun tp!1855126 () Bool)

(assert (=> b!6770526 (= e!4087758 (and tp!1855125 tp!1855126))))

(assert (=> b!6769131 (= tp!1854828 e!4087758)))

(assert (= (and b!6769131 ((_ is Cons!65961) (t!379794 (exprs!6479 (h!72410 zl!343))))) b!6770526))

(declare-fun b!6770530 () Bool)

(declare-fun e!4087759 () Bool)

(declare-fun tp!1855131 () Bool)

(declare-fun tp!1855127 () Bool)

(assert (=> b!6770530 (= e!4087759 (and tp!1855131 tp!1855127))))

(declare-fun b!6770528 () Bool)

(declare-fun tp!1855129 () Bool)

(declare-fun tp!1855130 () Bool)

(assert (=> b!6770528 (= e!4087759 (and tp!1855129 tp!1855130))))

(declare-fun b!6770527 () Bool)

(assert (=> b!6770527 (= e!4087759 tp_is_empty!42443)))

(declare-fun b!6770529 () Bool)

(declare-fun tp!1855128 () Bool)

(assert (=> b!6770529 (= e!4087759 tp!1855128)))

(assert (=> b!6769143 (= tp!1854842 e!4087759)))

(assert (= (and b!6769143 ((_ is ElementMatch!16595) (reg!16924 (reg!16924 r!7292)))) b!6770527))

(assert (= (and b!6769143 ((_ is Concat!25440) (reg!16924 (reg!16924 r!7292)))) b!6770528))

(assert (= (and b!6769143 ((_ is Star!16595) (reg!16924 (reg!16924 r!7292)))) b!6770529))

(assert (= (and b!6769143 ((_ is Union!16595) (reg!16924 (reg!16924 r!7292)))) b!6770530))

(declare-fun b!6770531 () Bool)

(declare-fun e!4087760 () Bool)

(declare-fun tp!1855132 () Bool)

(declare-fun tp!1855133 () Bool)

(assert (=> b!6770531 (= e!4087760 (and tp!1855132 tp!1855133))))

(assert (=> b!6769157 (= tp!1854856 e!4087760)))

(assert (= (and b!6769157 ((_ is Cons!65961) (exprs!6479 (h!72410 (t!379795 zl!343))))) b!6770531))

(declare-fun b!6770535 () Bool)

(declare-fun e!4087761 () Bool)

(declare-fun tp!1855138 () Bool)

(declare-fun tp!1855134 () Bool)

(assert (=> b!6770535 (= e!4087761 (and tp!1855138 tp!1855134))))

(declare-fun b!6770533 () Bool)

(declare-fun tp!1855136 () Bool)

(declare-fun tp!1855137 () Bool)

(assert (=> b!6770533 (= e!4087761 (and tp!1855136 tp!1855137))))

(declare-fun b!6770532 () Bool)

(assert (=> b!6770532 (= e!4087761 tp_is_empty!42443)))

(declare-fun b!6770534 () Bool)

(declare-fun tp!1855135 () Bool)

(assert (=> b!6770534 (= e!4087761 tp!1855135)))

(assert (=> b!6769134 (= tp!1854833 e!4087761)))

(assert (= (and b!6769134 ((_ is ElementMatch!16595) (regOne!33702 (regOne!33703 r!7292)))) b!6770532))

(assert (= (and b!6769134 ((_ is Concat!25440) (regOne!33702 (regOne!33703 r!7292)))) b!6770533))

(assert (= (and b!6769134 ((_ is Star!16595) (regOne!33702 (regOne!33703 r!7292)))) b!6770534))

(assert (= (and b!6769134 ((_ is Union!16595) (regOne!33702 (regOne!33703 r!7292)))) b!6770535))

(declare-fun b!6770539 () Bool)

(declare-fun e!4087762 () Bool)

(declare-fun tp!1855143 () Bool)

(declare-fun tp!1855139 () Bool)

(assert (=> b!6770539 (= e!4087762 (and tp!1855143 tp!1855139))))

(declare-fun b!6770537 () Bool)

(declare-fun tp!1855141 () Bool)

(declare-fun tp!1855142 () Bool)

(assert (=> b!6770537 (= e!4087762 (and tp!1855141 tp!1855142))))

(declare-fun b!6770536 () Bool)

(assert (=> b!6770536 (= e!4087762 tp_is_empty!42443)))

(declare-fun b!6770538 () Bool)

(declare-fun tp!1855140 () Bool)

(assert (=> b!6770538 (= e!4087762 tp!1855140)))

(assert (=> b!6769134 (= tp!1854834 e!4087762)))

(assert (= (and b!6769134 ((_ is ElementMatch!16595) (regTwo!33702 (regOne!33703 r!7292)))) b!6770536))

(assert (= (and b!6769134 ((_ is Concat!25440) (regTwo!33702 (regOne!33703 r!7292)))) b!6770537))

(assert (= (and b!6769134 ((_ is Star!16595) (regTwo!33702 (regOne!33703 r!7292)))) b!6770538))

(assert (= (and b!6769134 ((_ is Union!16595) (regTwo!33702 (regOne!33703 r!7292)))) b!6770539))

(declare-fun b!6770543 () Bool)

(declare-fun e!4087763 () Bool)

(declare-fun tp!1855148 () Bool)

(declare-fun tp!1855144 () Bool)

(assert (=> b!6770543 (= e!4087763 (and tp!1855148 tp!1855144))))

(declare-fun b!6770541 () Bool)

(declare-fun tp!1855146 () Bool)

(declare-fun tp!1855147 () Bool)

(assert (=> b!6770541 (= e!4087763 (and tp!1855146 tp!1855147))))

(declare-fun b!6770540 () Bool)

(assert (=> b!6770540 (= e!4087763 tp_is_empty!42443)))

(declare-fun b!6770542 () Bool)

(declare-fun tp!1855145 () Bool)

(assert (=> b!6770542 (= e!4087763 tp!1855145)))

(assert (=> b!6769120 (= tp!1854815 e!4087763)))

(assert (= (and b!6769120 ((_ is ElementMatch!16595) (regOne!33702 (regOne!33702 r!7292)))) b!6770540))

(assert (= (and b!6769120 ((_ is Concat!25440) (regOne!33702 (regOne!33702 r!7292)))) b!6770541))

(assert (= (and b!6769120 ((_ is Star!16595) (regOne!33702 (regOne!33702 r!7292)))) b!6770542))

(assert (= (and b!6769120 ((_ is Union!16595) (regOne!33702 (regOne!33702 r!7292)))) b!6770543))

(declare-fun b!6770547 () Bool)

(declare-fun e!4087764 () Bool)

(declare-fun tp!1855153 () Bool)

(declare-fun tp!1855149 () Bool)

(assert (=> b!6770547 (= e!4087764 (and tp!1855153 tp!1855149))))

(declare-fun b!6770545 () Bool)

(declare-fun tp!1855151 () Bool)

(declare-fun tp!1855152 () Bool)

(assert (=> b!6770545 (= e!4087764 (and tp!1855151 tp!1855152))))

(declare-fun b!6770544 () Bool)

(assert (=> b!6770544 (= e!4087764 tp_is_empty!42443)))

(declare-fun b!6770546 () Bool)

(declare-fun tp!1855150 () Bool)

(assert (=> b!6770546 (= e!4087764 tp!1855150)))

(assert (=> b!6769120 (= tp!1854816 e!4087764)))

(assert (= (and b!6769120 ((_ is ElementMatch!16595) (regTwo!33702 (regOne!33702 r!7292)))) b!6770544))

(assert (= (and b!6769120 ((_ is Concat!25440) (regTwo!33702 (regOne!33702 r!7292)))) b!6770545))

(assert (= (and b!6769120 ((_ is Star!16595) (regTwo!33702 (regOne!33702 r!7292)))) b!6770546))

(assert (= (and b!6769120 ((_ is Union!16595) (regTwo!33702 (regOne!33702 r!7292)))) b!6770547))

(declare-fun b!6770551 () Bool)

(declare-fun e!4087765 () Bool)

(declare-fun tp!1855158 () Bool)

(declare-fun tp!1855154 () Bool)

(assert (=> b!6770551 (= e!4087765 (and tp!1855158 tp!1855154))))

(declare-fun b!6770549 () Bool)

(declare-fun tp!1855156 () Bool)

(declare-fun tp!1855157 () Bool)

(assert (=> b!6770549 (= e!4087765 (and tp!1855156 tp!1855157))))

(declare-fun b!6770548 () Bool)

(assert (=> b!6770548 (= e!4087765 tp_is_empty!42443)))

(declare-fun b!6770550 () Bool)

(declare-fun tp!1855155 () Bool)

(assert (=> b!6770550 (= e!4087765 tp!1855155)))

(assert (=> b!6769144 (= tp!1854845 e!4087765)))

(assert (= (and b!6769144 ((_ is ElementMatch!16595) (regOne!33703 (reg!16924 r!7292)))) b!6770548))

(assert (= (and b!6769144 ((_ is Concat!25440) (regOne!33703 (reg!16924 r!7292)))) b!6770549))

(assert (= (and b!6769144 ((_ is Star!16595) (regOne!33703 (reg!16924 r!7292)))) b!6770550))

(assert (= (and b!6769144 ((_ is Union!16595) (regOne!33703 (reg!16924 r!7292)))) b!6770551))

(declare-fun b!6770555 () Bool)

(declare-fun e!4087766 () Bool)

(declare-fun tp!1855163 () Bool)

(declare-fun tp!1855159 () Bool)

(assert (=> b!6770555 (= e!4087766 (and tp!1855163 tp!1855159))))

(declare-fun b!6770553 () Bool)

(declare-fun tp!1855161 () Bool)

(declare-fun tp!1855162 () Bool)

(assert (=> b!6770553 (= e!4087766 (and tp!1855161 tp!1855162))))

(declare-fun b!6770552 () Bool)

(assert (=> b!6770552 (= e!4087766 tp_is_empty!42443)))

(declare-fun b!6770554 () Bool)

(declare-fun tp!1855160 () Bool)

(assert (=> b!6770554 (= e!4087766 tp!1855160)))

(assert (=> b!6769144 (= tp!1854841 e!4087766)))

(assert (= (and b!6769144 ((_ is ElementMatch!16595) (regTwo!33703 (reg!16924 r!7292)))) b!6770552))

(assert (= (and b!6769144 ((_ is Concat!25440) (regTwo!33703 (reg!16924 r!7292)))) b!6770553))

(assert (= (and b!6769144 ((_ is Star!16595) (regTwo!33703 (reg!16924 r!7292)))) b!6770554))

(assert (= (and b!6769144 ((_ is Union!16595) (regTwo!33703 (reg!16924 r!7292)))) b!6770555))

(declare-fun b!6770559 () Bool)

(declare-fun e!4087767 () Bool)

(declare-fun tp!1855168 () Bool)

(declare-fun tp!1855164 () Bool)

(assert (=> b!6770559 (= e!4087767 (and tp!1855168 tp!1855164))))

(declare-fun b!6770557 () Bool)

(declare-fun tp!1855166 () Bool)

(declare-fun tp!1855167 () Bool)

(assert (=> b!6770557 (= e!4087767 (and tp!1855166 tp!1855167))))

(declare-fun b!6770556 () Bool)

(assert (=> b!6770556 (= e!4087767 tp_is_empty!42443)))

(declare-fun b!6770558 () Bool)

(declare-fun tp!1855165 () Bool)

(assert (=> b!6770558 (= e!4087767 tp!1855165)))

(assert (=> b!6769135 (= tp!1854832 e!4087767)))

(assert (= (and b!6769135 ((_ is ElementMatch!16595) (reg!16924 (regOne!33703 r!7292)))) b!6770556))

(assert (= (and b!6769135 ((_ is Concat!25440) (reg!16924 (regOne!33703 r!7292)))) b!6770557))

(assert (= (and b!6769135 ((_ is Star!16595) (reg!16924 (regOne!33703 r!7292)))) b!6770558))

(assert (= (and b!6769135 ((_ is Union!16595) (reg!16924 (regOne!33703 r!7292)))) b!6770559))

(declare-fun b!6770563 () Bool)

(declare-fun e!4087768 () Bool)

(declare-fun tp!1855173 () Bool)

(declare-fun tp!1855169 () Bool)

(assert (=> b!6770563 (= e!4087768 (and tp!1855173 tp!1855169))))

(declare-fun b!6770561 () Bool)

(declare-fun tp!1855171 () Bool)

(declare-fun tp!1855172 () Bool)

(assert (=> b!6770561 (= e!4087768 (and tp!1855171 tp!1855172))))

(declare-fun b!6770560 () Bool)

(assert (=> b!6770560 (= e!4087768 tp_is_empty!42443)))

(declare-fun b!6770562 () Bool)

(declare-fun tp!1855170 () Bool)

(assert (=> b!6770562 (= e!4087768 tp!1855170)))

(assert (=> b!6769121 (= tp!1854814 e!4087768)))

(assert (= (and b!6769121 ((_ is ElementMatch!16595) (reg!16924 (regOne!33702 r!7292)))) b!6770560))

(assert (= (and b!6769121 ((_ is Concat!25440) (reg!16924 (regOne!33702 r!7292)))) b!6770561))

(assert (= (and b!6769121 ((_ is Star!16595) (reg!16924 (regOne!33702 r!7292)))) b!6770562))

(assert (= (and b!6769121 ((_ is Union!16595) (reg!16924 (regOne!33702 r!7292)))) b!6770563))

(declare-fun b!6770567 () Bool)

(declare-fun e!4087769 () Bool)

(declare-fun tp!1855178 () Bool)

(declare-fun tp!1855174 () Bool)

(assert (=> b!6770567 (= e!4087769 (and tp!1855178 tp!1855174))))

(declare-fun b!6770565 () Bool)

(declare-fun tp!1855176 () Bool)

(declare-fun tp!1855177 () Bool)

(assert (=> b!6770565 (= e!4087769 (and tp!1855176 tp!1855177))))

(declare-fun b!6770564 () Bool)

(assert (=> b!6770564 (= e!4087769 tp_is_empty!42443)))

(declare-fun b!6770566 () Bool)

(declare-fun tp!1855175 () Bool)

(assert (=> b!6770566 (= e!4087769 tp!1855175)))

(assert (=> b!6769136 (= tp!1854835 e!4087769)))

(assert (= (and b!6769136 ((_ is ElementMatch!16595) (regOne!33703 (regOne!33703 r!7292)))) b!6770564))

(assert (= (and b!6769136 ((_ is Concat!25440) (regOne!33703 (regOne!33703 r!7292)))) b!6770565))

(assert (= (and b!6769136 ((_ is Star!16595) (regOne!33703 (regOne!33703 r!7292)))) b!6770566))

(assert (= (and b!6769136 ((_ is Union!16595) (regOne!33703 (regOne!33703 r!7292)))) b!6770567))

(declare-fun b!6770571 () Bool)

(declare-fun e!4087770 () Bool)

(declare-fun tp!1855183 () Bool)

(declare-fun tp!1855179 () Bool)

(assert (=> b!6770571 (= e!4087770 (and tp!1855183 tp!1855179))))

(declare-fun b!6770569 () Bool)

(declare-fun tp!1855181 () Bool)

(declare-fun tp!1855182 () Bool)

(assert (=> b!6770569 (= e!4087770 (and tp!1855181 tp!1855182))))

(declare-fun b!6770568 () Bool)

(assert (=> b!6770568 (= e!4087770 tp_is_empty!42443)))

(declare-fun b!6770570 () Bool)

(declare-fun tp!1855180 () Bool)

(assert (=> b!6770570 (= e!4087770 tp!1855180)))

(assert (=> b!6769136 (= tp!1854831 e!4087770)))

(assert (= (and b!6769136 ((_ is ElementMatch!16595) (regTwo!33703 (regOne!33703 r!7292)))) b!6770568))

(assert (= (and b!6769136 ((_ is Concat!25440) (regTwo!33703 (regOne!33703 r!7292)))) b!6770569))

(assert (= (and b!6769136 ((_ is Star!16595) (regTwo!33703 (regOne!33703 r!7292)))) b!6770570))

(assert (= (and b!6769136 ((_ is Union!16595) (regTwo!33703 (regOne!33703 r!7292)))) b!6770571))

(declare-fun b!6770575 () Bool)

(declare-fun e!4087771 () Bool)

(declare-fun tp!1855188 () Bool)

(declare-fun tp!1855184 () Bool)

(assert (=> b!6770575 (= e!4087771 (and tp!1855188 tp!1855184))))

(declare-fun b!6770573 () Bool)

(declare-fun tp!1855186 () Bool)

(declare-fun tp!1855187 () Bool)

(assert (=> b!6770573 (= e!4087771 (and tp!1855186 tp!1855187))))

(declare-fun b!6770572 () Bool)

(assert (=> b!6770572 (= e!4087771 tp_is_empty!42443)))

(declare-fun b!6770574 () Bool)

(declare-fun tp!1855185 () Bool)

(assert (=> b!6770574 (= e!4087771 tp!1855185)))

(assert (=> b!6769122 (= tp!1854817 e!4087771)))

(assert (= (and b!6769122 ((_ is ElementMatch!16595) (regOne!33703 (regOne!33702 r!7292)))) b!6770572))

(assert (= (and b!6769122 ((_ is Concat!25440) (regOne!33703 (regOne!33702 r!7292)))) b!6770573))

(assert (= (and b!6769122 ((_ is Star!16595) (regOne!33703 (regOne!33702 r!7292)))) b!6770574))

(assert (= (and b!6769122 ((_ is Union!16595) (regOne!33703 (regOne!33702 r!7292)))) b!6770575))

(declare-fun b!6770579 () Bool)

(declare-fun e!4087772 () Bool)

(declare-fun tp!1855193 () Bool)

(declare-fun tp!1855189 () Bool)

(assert (=> b!6770579 (= e!4087772 (and tp!1855193 tp!1855189))))

(declare-fun b!6770577 () Bool)

(declare-fun tp!1855191 () Bool)

(declare-fun tp!1855192 () Bool)

(assert (=> b!6770577 (= e!4087772 (and tp!1855191 tp!1855192))))

(declare-fun b!6770576 () Bool)

(assert (=> b!6770576 (= e!4087772 tp_is_empty!42443)))

(declare-fun b!6770578 () Bool)

(declare-fun tp!1855190 () Bool)

(assert (=> b!6770578 (= e!4087772 tp!1855190)))

(assert (=> b!6769122 (= tp!1854813 e!4087772)))

(assert (= (and b!6769122 ((_ is ElementMatch!16595) (regTwo!33703 (regOne!33702 r!7292)))) b!6770576))

(assert (= (and b!6769122 ((_ is Concat!25440) (regTwo!33703 (regOne!33702 r!7292)))) b!6770577))

(assert (= (and b!6769122 ((_ is Star!16595) (regTwo!33703 (regOne!33702 r!7292)))) b!6770578))

(assert (= (and b!6769122 ((_ is Union!16595) (regTwo!33703 (regOne!33702 r!7292)))) b!6770579))

(declare-fun b_lambda!254945 () Bool)

(assert (= b_lambda!254939 (or d!2126273 b_lambda!254945)))

(declare-fun bs!1801959 () Bool)

(declare-fun d!2126953 () Bool)

(assert (= bs!1801959 (and d!2126953 d!2126273)))

(assert (=> bs!1801959 (= (dynLambda!26320 lambda!380877 (h!72409 (exprs!6479 (h!72410 zl!343)))) (validRegex!8331 (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(declare-fun m!7521104 () Bool)

(assert (=> bs!1801959 m!7521104))

(assert (=> b!6770274 d!2126953))

(declare-fun b_lambda!254947 () Bool)

(assert (= b_lambda!254941 (or d!2126321 b_lambda!254947)))

(declare-fun bs!1801960 () Bool)

(declare-fun d!2126955 () Bool)

(assert (= bs!1801960 (and d!2126955 d!2126321)))

(assert (=> bs!1801960 (= (dynLambda!26320 lambda!380885 (h!72409 (exprs!6479 (h!72410 zl!343)))) (validRegex!8331 (h!72409 (exprs!6479 (h!72410 zl!343)))))))

(assert (=> bs!1801960 m!7521104))

(assert (=> b!6770393 d!2126955))

(declare-fun b_lambda!254949 () Bool)

(assert (= b_lambda!254933 (or b!6768235 b_lambda!254949)))

(assert (=> d!2126763 d!2126325))

(declare-fun b_lambda!254951 () Bool)

(assert (= b_lambda!254929 (or d!2126205 b_lambda!254951)))

(declare-fun bs!1801961 () Bool)

(declare-fun d!2126957 () Bool)

(assert (= bs!1801961 (and d!2126957 d!2126205)))

(assert (=> bs!1801961 (= (dynLambda!26320 lambda!380863 (h!72409 (unfocusZipperList!2016 zl!343))) (validRegex!8331 (h!72409 (unfocusZipperList!2016 zl!343))))))

(declare-fun m!7521106 () Bool)

(assert (=> bs!1801961 m!7521106))

(assert (=> b!6769939 d!2126957))

(declare-fun b_lambda!254953 () Bool)

(assert (= b_lambda!254927 (or d!2126233 b_lambda!254953)))

(declare-fun bs!1801962 () Bool)

(declare-fun d!2126959 () Bool)

(assert (= bs!1801962 (and d!2126959 d!2126233)))

(assert (=> bs!1801962 (= (dynLambda!26320 lambda!380868 (h!72409 lt!2443302)) (validRegex!8331 (h!72409 lt!2443302)))))

(declare-fun m!7521108 () Bool)

(assert (=> bs!1801962 m!7521108))

(assert (=> b!6769882 d!2126959))

(declare-fun b_lambda!254955 () Bool)

(assert (= b_lambda!254943 (or b!6768235 b_lambda!254955)))

(assert (=> d!2126925 d!2126327))

(declare-fun b_lambda!254957 () Bool)

(assert (= b_lambda!254937 (or b!6768235 b_lambda!254957)))

(assert (=> d!2126805 d!2126323))

(declare-fun b_lambda!254959 () Bool)

(assert (= b_lambda!254935 (or d!2126289 b_lambda!254959)))

(declare-fun bs!1801963 () Bool)

(declare-fun d!2126961 () Bool)

(assert (= bs!1801963 (and d!2126961 d!2126289)))

(assert (=> bs!1801963 (= (dynLambda!26320 lambda!380879 (h!72409 (exprs!6479 setElem!46277))) (validRegex!8331 (h!72409 (exprs!6479 setElem!46277))))))

(declare-fun m!7521110 () Bool)

(assert (=> bs!1801963 m!7521110))

(assert (=> b!6770177 d!2126961))

(declare-fun b_lambda!254961 () Bool)

(assert (= b_lambda!254931 (or b!6768235 b_lambda!254961)))

(assert (=> d!2126753 d!2126329))

(check-sat (not b!6770254) (not b!6770294) (not bm!613590) (not bm!613556) (not b!6770319) (not b!6770248) (not d!2126757) (not bm!613594) (not d!2126689) (not b!6770149) (not bm!613521) (not b!6770521) (not bm!613566) (not b!6770147) (not b!6770539) (not b!6769945) (not b!6770344) (not d!2126799) (not bm!613574) (not b!6769897) (not b!6770069) (not b!6770207) (not b!6770472) (not b!6769944) (not b!6770558) (not b!6770301) (not b_lambda!254945) (not bm!613613) (not b!6770365) (not b!6770330) (not b!6770199) (not b!6770526) (not bm!613541) (not d!2126753) (not b!6770578) (not b!6770507) (not d!2126933) (not b!6770210) (not bm!613573) (not b!6770412) (not d!2126657) (not b!6770553) (not d!2126817) (not b!6769988) (not bm!613498) (not bm!613515) (not b_lambda!254949) (not b!6770263) (not b!6770237) (not b!6770047) (not b!6770126) (not b!6770131) (not b!6770122) (not d!2126919) (not b!6770381) (not b!6769948) (not b_lambda!254957) (not b!6770073) (not b!6769940) (not bm!613531) (not b!6770477) (not d!2126777) (not b!6770502) (not b!6770046) (not b!6770574) (not b!6770289) (not b!6770518) (not b!6770206) (not d!2126925) (not b!6770290) (not d!2126719) (not b!6770519) (not b!6770315) (not b!6770473) (not bm!613534) (not d!2126819) (not b!6769943) (not bm!613520) (not b!6770251) (not bm!613602) (not b!6770456) (not b!6770525) (not bm!613611) (not d!2126861) (not bm!613528) (not d!2126923) (not b!6770503) (not b_lambda!254953) (not b!6770569) (not bm!613591) (not b!6770469) (not d!2126807) (not d!2126815) (not b!6770215) (not bm!613565) (not bm!613603) (not b!6770165) (not b!6769990) (not b!6770216) (not b!6770491) (not b!6770281) (not b!6770418) (not b!6770514) (not b!6770148) (not d!2126665) (not b!6770178) (not d!2126897) (not b!6770275) (not b!6770433) (not b!6770135) (not b!6769869) (not b!6770534) (not b!6770554) (not b!6770353) (not d!2126833) (not b!6770240) (not bm!613592) (not b!6770550) (not b!6770061) (not setNonEmpty!46293) (not b!6770494) (not b!6770384) (not b!6770498) (not b_lambda!254885) (not d!2126847) (not bm!613529) (not b_lambda!254959) (not bm!613559) (not d!2126835) (not b!6770383) (not b!6770242) (not bm!613497) (not d!2126935) (not d!2126871) (not b!6770513) (not bm!613555) (not b!6769985) (not b!6770262) (not d!2126887) (not d!2126773) (not d!2126669) (not b!6770546) (not b!6769946) (not b!6770213) (not b!6770481) (not b!6770471) (not b!6770431) (not b!6770001) (not b!6770429) (not d!2126723) (not bm!613623) (not b!6770032) (not b!6770499) (not b!6770537) (not b!6770127) (not d!2126735) (not setNonEmpty!46295) (not b!6770497) (not b!6770394) (not d!2126803) (not b!6770276) (not d!2126765) (not d!2126845) (not b!6770506) (not b!6769930) (not bm!613542) (not b!6769898) (not b!6769889) (not b!6770528) (not b!6770474) (not d!2126929) (not b_lambda!254951) (not d!2126809) (not bm!613505) (not d!2126829) tp_is_empty!42443 (not b!6770368) (not b!6770559) (not b!6770563) (not b!6770545) (not b!6770336) (not b!6770372) (not d!2126763) (not b!6769888) (not b!6770183) (not b!6770495) (not b!6770080) (not d!2126749) (not b!6770300) (not b!6769947) (not b!6770535) (not bm!613599) (not d!2126939) (not b!6770224) (not b!6770490) (not b!6769883) (not bm!613526) (not b!6770182) (not bs!1801960) (not b!6770130) (not b!6770577) (not d!2126715) (not b!6770486) (not b!6770346) (not b!6770180) (not b!6770313) (not b!6770322) (not d!2126881) (not b!6770530) (not b!6770551) (not b!6770479) (not d!2126851) (not b!6770238) (not b!6770439) (not b!6770379) (not b!6770124) (not b!6770154) (not b!6769958) (not b!6770397) (not b!6770579) (not b!6770158) (not b!6770211) (not bm!613584) (not bm!613513) (not b!6770138) (not b!6770523) (not b!6770547) (not b!6770151) (not b!6770153) (not bm!613605) (not b!6770219) (not d!2126725) (not b!6769975) (not b!6770156) (not d!2126647) (not b!6770575) (not b!6770538) (not bm!613572) (not b!6770464) (not bm!613597) (not b!6770501) (not b!6769991) (not b!6769989) (not b!6770557) (not b!6770542) (not b!6770314) (not b!6770225) (not b!6770222) (not b!6770324) (not b!6769949) (not d!2126921) (not b!6770419) (not b!6770227) (not d!2126867) (not b!6770071) (not bm!613614) (not b!6770405) (not b!6770105) (not bm!613532) (not b!6770164) (not b!6770125) (not b!6770549) (not bm!613512) (not b!6770415) (not b!6770493) (not b!6770424) (not b!6770423) (not bm!613583) (not b!6770307) (not b!6770529) (not b!6770487) (not setNonEmpty!46294) (not bm!613540) (not b!6770279) (not bm!613585) (not b!6770146) (not b!6770511) (not b!6770467) (not bm!613600) (not b!6770520) (not b!6770524) (not b!6770463) (not b!6770226) (not b_lambda!254961) (not d!2126805) (not b!6770445) (not b!6769896) (not bs!1801963) (not b!6770025) (not d!2126899) (not setNonEmpty!46297) (not b!6769987) (not bm!613612) (not b!6770468) (not d!2126869) (not d!2126717) (not d!2126793) (not bm!613560) (not b!6770510) (not b!6770143) (not b!6769970) (not b!6769956) (not b!6770220) (not b!6770292) (not bm!613553) (not b!6770562) (not b!6770366) (not bm!613510) (not bm!613589) (not bm!613577) (not bm!613616) (not b_lambda!254887) (not b!6770478) (not b!6770531) (not bm!613543) (not d!2126823) (not b!6769993) (not b!6770413) (not b!6770483) (not b!6770396) (not b!6770079) (not d!2126785) (not setNonEmpty!46296) (not b!6770320) (not bm!613575) (not bm!613518) (not bm!613527) (not d!2126727) (not b_lambda!254889) (not b!6770134) (not b!6770555) (not b_lambda!254947) (not bm!613609) (not bm!613504) (not b!6770331) (not bm!613596) (not b!6770268) (not b!6770111) (not d!2126941) (not b!6769974) (not d!2126849) (not b!6770517) (not b_lambda!254883) (not d!2126927) (not b!6770112) (not b!6769904) (not b!6770566) (not bs!1801962) (not d!2126655) (not bm!613610) (not d!2126759) (not bm!613598) (not b!6770567) (not b_lambda!254955) (not b!6770068) (not b!6769972) (not b!6770256) (not d!2126771) (not bm!613516) (not b!6770475) (not b!6770428) (not b!6770515) (not b!6770505) (not d!2126865) (not b!6770565) (not bm!613535) (not b!6769915) (not d!2126711) (not bm!613557) (not b!6770465) (not b!6770571) (not b!6770316) (not bm!613624) (not b!6770023) (not bm!613622) (not bm!613580) (not b!6770541) (not b!6770533) (not bm!613578) (not bm!613618) (not b!6770440) (not bm!613509) (not b!6769952) (not bm!613564) (not d!2126883) (not b!6770573) (not d!2126741) (not d!2126825) (not b!6770139) (not b!6770128) (not bm!613567) (not bm!613511) (not b!6770371) (not b!6770363) (not b!6770543) (not b!6770489) (not b!6770145) (not bs!1801961) (not b!6770252) (not b!6770485) (not b!6770482) (not d!2126791) (not bm!613530) (not bs!1801959) (not b!6770317) (not d!2126795) (not b!6770561) (not bm!613519) (not b!6769921) (not d!2126709) (not d!2126917) (not b!6770249) (not b!6770369) (not bm!613571) (not d!2126827) (not b!6770223) (not b!6770570) (not b!6770367) (not bm!613503) (not b!6770509) (not bm!613582) (not b!6770179) (not b!6770221) (not d!2126839) (not b!6769994) (not d!2126787) (not b!6770171) (not d!2126651))
(check-sat)
