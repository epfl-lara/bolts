; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559414 () Bool)

(assert start!559414)

(declare-fun b!5303400 () Bool)

(assert (=> b!5303400 true))

(assert (=> b!5303400 true))

(declare-fun lambda!269558 () Int)

(declare-fun lambda!269557 () Int)

(assert (=> b!5303400 (not (= lambda!269558 lambda!269557))))

(assert (=> b!5303400 true))

(assert (=> b!5303400 true))

(declare-fun b!5303408 () Bool)

(assert (=> b!5303408 true))

(declare-fun bs!1229870 () Bool)

(declare-fun b!5303425 () Bool)

(assert (= bs!1229870 (and b!5303425 b!5303400)))

(declare-fun lambda!269560 () Int)

(declare-datatypes ((C!30168 0))(
  ( (C!30169 (val!24786 Int)) )
))
(declare-datatypes ((Regex!14949 0))(
  ( (ElementMatch!14949 (c!920761 C!30168)) (Concat!23794 (regOne!30410 Regex!14949) (regTwo!30410 Regex!14949)) (EmptyExpr!14949) (Star!14949 (reg!15278 Regex!14949)) (EmptyLang!14949) (Union!14949 (regOne!30411 Regex!14949) (regTwo!30411 Regex!14949)) )
))
(declare-fun r!7292 () Regex!14949)

(declare-fun lt!2166994 () Regex!14949)

(assert (=> bs!1229870 (= (and (= (regOne!30410 (regOne!30410 r!7292)) (regOne!30410 r!7292)) (= lt!2166994 (regTwo!30410 r!7292))) (= lambda!269560 lambda!269557))))

(assert (=> bs!1229870 (not (= lambda!269560 lambda!269558))))

(assert (=> b!5303425 true))

(assert (=> b!5303425 true))

(assert (=> b!5303425 true))

(declare-fun lambda!269561 () Int)

(assert (=> bs!1229870 (not (= lambda!269561 lambda!269557))))

(assert (=> bs!1229870 (= (and (= (regOne!30410 (regOne!30410 r!7292)) (regOne!30410 r!7292)) (= lt!2166994 (regTwo!30410 r!7292))) (= lambda!269561 lambda!269558))))

(assert (=> b!5303425 (not (= lambda!269561 lambda!269560))))

(assert (=> b!5303425 true))

(assert (=> b!5303425 true))

(assert (=> b!5303425 true))

(declare-fun lambda!269562 () Int)

(declare-fun lt!2166974 () Regex!14949)

(assert (=> bs!1229870 (= (and (= (regTwo!30410 (regOne!30410 r!7292)) (regOne!30410 r!7292)) (= lt!2166974 (regTwo!30410 r!7292))) (= lambda!269562 lambda!269557))))

(assert (=> bs!1229870 (not (= lambda!269562 lambda!269558))))

(assert (=> b!5303425 (= (and (= (regTwo!30410 (regOne!30410 r!7292)) (regOne!30410 (regOne!30410 r!7292))) (= lt!2166974 lt!2166994)) (= lambda!269562 lambda!269560))))

(assert (=> b!5303425 (not (= lambda!269562 lambda!269561))))

(assert (=> b!5303425 true))

(assert (=> b!5303425 true))

(assert (=> b!5303425 true))

(declare-fun lambda!269563 () Int)

(assert (=> b!5303425 (not (= lambda!269563 lambda!269560))))

(assert (=> b!5303425 (not (= lambda!269563 lambda!269562))))

(assert (=> b!5303425 (= (and (= (regTwo!30410 (regOne!30410 r!7292)) (regOne!30410 (regOne!30410 r!7292))) (= lt!2166974 lt!2166994)) (= lambda!269563 lambda!269561))))

(assert (=> bs!1229870 (= (and (= (regTwo!30410 (regOne!30410 r!7292)) (regOne!30410 r!7292)) (= lt!2166974 (regTwo!30410 r!7292))) (= lambda!269563 lambda!269558))))

(assert (=> bs!1229870 (not (= lambda!269563 lambda!269557))))

(assert (=> b!5303425 true))

(assert (=> b!5303425 true))

(assert (=> b!5303425 true))

(declare-fun e!3296088 () Bool)

(declare-fun e!3296089 () Bool)

(assert (=> b!5303400 (= e!3296088 e!3296089)))

(declare-fun res!2249556 () Bool)

(assert (=> b!5303400 (=> res!2249556 e!3296089)))

(declare-datatypes ((List!61146 0))(
  ( (Nil!61022) (Cons!61022 (h!67470 C!30168) (t!374351 List!61146)) )
))
(declare-fun s!2326 () List!61146)

(declare-fun lt!2166982 () Bool)

(declare-fun lt!2166995 () Bool)

(get-info :version)

(assert (=> b!5303400 (= res!2249556 (or (not (= lt!2166995 lt!2166982)) ((_ is Nil!61022) s!2326)))))

(declare-fun Exists!2130 (Int) Bool)

(assert (=> b!5303400 (= (Exists!2130 lambda!269557) (Exists!2130 lambda!269558))))

(declare-datatypes ((Unit!153314 0))(
  ( (Unit!153315) )
))
(declare-fun lt!2166990 () Unit!153314)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!784 (Regex!14949 Regex!14949 List!61146) Unit!153314)

(assert (=> b!5303400 (= lt!2166990 (lemmaExistCutMatchRandMatchRSpecEquivalent!784 (regOne!30410 r!7292) (regTwo!30410 r!7292) s!2326))))

(assert (=> b!5303400 (= lt!2166982 (Exists!2130 lambda!269557))))

(declare-datatypes ((tuple2!64296 0))(
  ( (tuple2!64297 (_1!35451 List!61146) (_2!35451 List!61146)) )
))
(declare-datatypes ((Option!15060 0))(
  ( (None!15059) (Some!15059 (v!51088 tuple2!64296)) )
))
(declare-fun isDefined!11763 (Option!15060) Bool)

(declare-fun findConcatSeparation!1474 (Regex!14949 Regex!14949 List!61146 List!61146 List!61146) Option!15060)

(assert (=> b!5303400 (= lt!2166982 (isDefined!11763 (findConcatSeparation!1474 (regOne!30410 r!7292) (regTwo!30410 r!7292) Nil!61022 s!2326 s!2326)))))

(declare-fun lt!2167003 () Unit!153314)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1238 (Regex!14949 Regex!14949 List!61146) Unit!153314)

(assert (=> b!5303400 (= lt!2167003 (lemmaFindConcatSeparationEquivalentToExists!1238 (regOne!30410 r!7292) (regTwo!30410 r!7292) s!2326))))

(declare-fun b!5303401 () Bool)

(declare-fun e!3296093 () Bool)

(declare-fun e!3296095 () Bool)

(assert (=> b!5303401 (= e!3296093 e!3296095)))

(declare-fun res!2249567 () Bool)

(assert (=> b!5303401 (=> res!2249567 e!3296095)))

(declare-datatypes ((List!61147 0))(
  ( (Nil!61023) (Cons!61023 (h!67471 Regex!14949) (t!374352 List!61147)) )
))
(declare-datatypes ((Context!8666 0))(
  ( (Context!8667 (exprs!4833 List!61147)) )
))
(declare-datatypes ((List!61148 0))(
  ( (Nil!61024) (Cons!61024 (h!67472 Context!8666) (t!374353 List!61148)) )
))
(declare-fun zl!343 () List!61148)

(declare-fun lt!2167000 () Regex!14949)

(assert (=> b!5303401 (= res!2249567 (not (= (exprs!4833 (h!67472 zl!343)) (Cons!61023 lt!2167000 (t!374352 (exprs!4833 (h!67472 zl!343)))))))))

(assert (=> b!5303401 (= lt!2167000 (Concat!23794 (regOne!30410 (regOne!30410 r!7292)) (regTwo!30410 (regOne!30410 r!7292))))))

(declare-fun e!3296085 () Bool)

(declare-fun tp!1478629 () Bool)

(declare-fun e!3296090 () Bool)

(declare-fun b!5303402 () Bool)

(declare-fun inv!80619 (Context!8666) Bool)

(assert (=> b!5303402 (= e!3296090 (and (inv!80619 (h!67472 zl!343)) e!3296085 tp!1478629))))

(declare-fun b!5303403 () Bool)

(declare-fun e!3296091 () Bool)

(declare-fun validRegex!6685 (Regex!14949) Bool)

(assert (=> b!5303403 (= e!3296091 (validRegex!6685 (Concat!23794 lt!2167000 (regTwo!30410 r!7292))))))

(declare-fun b!5303404 () Bool)

(declare-fun e!3296103 () Unit!153314)

(declare-fun Unit!153316 () Unit!153314)

(assert (=> b!5303404 (= e!3296103 Unit!153316)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2167001 () (InoxSet Context!8666))

(declare-fun lt!2166984 () Unit!153314)

(declare-fun lt!2167013 () (InoxSet Context!8666))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!186 ((InoxSet Context!8666) (InoxSet Context!8666) List!61146) Unit!153314)

(assert (=> b!5303404 (= lt!2166984 (lemmaZipperConcatMatchesSameAsBothZippers!186 lt!2167013 lt!2167001 (t!374351 s!2326)))))

(declare-fun res!2249541 () Bool)

(declare-fun matchZipper!1193 ((InoxSet Context!8666) List!61146) Bool)

(assert (=> b!5303404 (= res!2249541 (matchZipper!1193 lt!2167013 (t!374351 s!2326)))))

(declare-fun e!3296101 () Bool)

(assert (=> b!5303404 (=> res!2249541 e!3296101)))

(assert (=> b!5303404 (= (matchZipper!1193 ((_ map or) lt!2167013 lt!2167001) (t!374351 s!2326)) e!3296101)))

(declare-fun setIsEmpty!34079 () Bool)

(declare-fun setRes!34079 () Bool)

(assert (=> setIsEmpty!34079 setRes!34079))

(declare-fun b!5303405 () Bool)

(declare-fun e!3296086 () Bool)

(declare-fun tp_is_empty!39151 () Bool)

(assert (=> b!5303405 (= e!3296086 tp_is_empty!39151)))

(declare-fun b!5303406 () Bool)

(declare-fun e!3296092 () Bool)

(declare-fun lt!2167005 () (InoxSet Context!8666))

(assert (=> b!5303406 (= e!3296092 (matchZipper!1193 lt!2167005 (t!374351 s!2326)))))

(declare-fun b!5303407 () Bool)

(declare-fun res!2249554 () Bool)

(assert (=> b!5303407 (=> res!2249554 e!3296088)))

(declare-fun generalisedConcat!618 (List!61147) Regex!14949)

(assert (=> b!5303407 (= res!2249554 (not (= r!7292 (generalisedConcat!618 (exprs!4833 (h!67472 zl!343))))))))

(declare-fun e!3296099 () Bool)

(assert (=> b!5303408 (= e!3296089 e!3296099)))

(declare-fun res!2249557 () Bool)

(assert (=> b!5303408 (=> res!2249557 e!3296099)))

(assert (=> b!5303408 (= res!2249557 (or (and ((_ is ElementMatch!14949) (regOne!30410 r!7292)) (= (c!920761 (regOne!30410 r!7292)) (h!67470 s!2326))) ((_ is Union!14949) (regOne!30410 r!7292)) (not ((_ is Concat!23794) (regOne!30410 r!7292)))))))

(declare-fun lt!2166981 () Unit!153314)

(assert (=> b!5303408 (= lt!2166981 e!3296103)))

(declare-fun c!920760 () Bool)

(declare-fun nullable!5118 (Regex!14949) Bool)

(assert (=> b!5303408 (= c!920760 (nullable!5118 (h!67471 (exprs!4833 (h!67472 zl!343)))))))

(declare-fun lambda!269559 () Int)

(declare-fun z!1189 () (InoxSet Context!8666))

(declare-fun flatMap!676 ((InoxSet Context!8666) Int) (InoxSet Context!8666))

(declare-fun derivationStepZipperUp!321 (Context!8666 C!30168) (InoxSet Context!8666))

(assert (=> b!5303408 (= (flatMap!676 z!1189 lambda!269559) (derivationStepZipperUp!321 (h!67472 zl!343) (h!67470 s!2326)))))

(declare-fun lt!2167011 () Unit!153314)

(declare-fun lemmaFlatMapOnSingletonSet!208 ((InoxSet Context!8666) Context!8666 Int) Unit!153314)

(assert (=> b!5303408 (= lt!2167011 (lemmaFlatMapOnSingletonSet!208 z!1189 (h!67472 zl!343) lambda!269559))))

(declare-fun lt!2166980 () Context!8666)

(assert (=> b!5303408 (= lt!2167001 (derivationStepZipperUp!321 lt!2166980 (h!67470 s!2326)))))

(declare-fun derivationStepZipperDown!397 (Regex!14949 Context!8666 C!30168) (InoxSet Context!8666))

(assert (=> b!5303408 (= lt!2167013 (derivationStepZipperDown!397 (h!67471 (exprs!4833 (h!67472 zl!343))) lt!2166980 (h!67470 s!2326)))))

(assert (=> b!5303408 (= lt!2166980 (Context!8667 (t!374352 (exprs!4833 (h!67472 zl!343)))))))

(declare-fun lt!2166992 () (InoxSet Context!8666))

(assert (=> b!5303408 (= lt!2166992 (derivationStepZipperUp!321 (Context!8667 (Cons!61023 (h!67471 (exprs!4833 (h!67472 zl!343))) (t!374352 (exprs!4833 (h!67472 zl!343))))) (h!67470 s!2326)))))

(declare-fun b!5303409 () Bool)

(declare-fun e!3296094 () Bool)

(assert (=> b!5303409 (= e!3296094 (not e!3296088))))

(declare-fun res!2249559 () Bool)

(assert (=> b!5303409 (=> res!2249559 e!3296088)))

(assert (=> b!5303409 (= res!2249559 (not ((_ is Cons!61024) zl!343)))))

(declare-fun matchRSpec!2052 (Regex!14949 List!61146) Bool)

(assert (=> b!5303409 (= lt!2166995 (matchRSpec!2052 r!7292 s!2326))))

(declare-fun matchR!7134 (Regex!14949 List!61146) Bool)

(assert (=> b!5303409 (= lt!2166995 (matchR!7134 r!7292 s!2326))))

(declare-fun lt!2167015 () Unit!153314)

(declare-fun mainMatchTheorem!2052 (Regex!14949 List!61146) Unit!153314)

(assert (=> b!5303409 (= lt!2167015 (mainMatchTheorem!2052 r!7292 s!2326))))

(declare-fun b!5303410 () Bool)

(declare-fun res!2249545 () Bool)

(assert (=> b!5303410 (=> res!2249545 e!3296088)))

(assert (=> b!5303410 (= res!2249545 (not ((_ is Cons!61023) (exprs!4833 (h!67472 zl!343)))))))

(declare-fun b!5303411 () Bool)

(declare-fun res!2249551 () Bool)

(assert (=> b!5303411 (=> res!2249551 e!3296099)))

(assert (=> b!5303411 (= res!2249551 (not (nullable!5118 (regOne!30410 (regOne!30410 r!7292)))))))

(declare-fun b!5303412 () Bool)

(declare-fun e!3296102 () Bool)

(declare-fun e!3296097 () Bool)

(assert (=> b!5303412 (= e!3296102 e!3296097)))

(declare-fun res!2249562 () Bool)

(assert (=> b!5303412 (=> res!2249562 e!3296097)))

(declare-fun lt!2166987 () (InoxSet Context!8666))

(declare-fun lt!2166999 () (InoxSet Context!8666))

(assert (=> b!5303412 (= res!2249562 (not (= lt!2166987 lt!2166999)))))

(declare-fun lt!2166997 () (InoxSet Context!8666))

(assert (=> b!5303412 (= lt!2166999 ((_ map or) lt!2166997 lt!2167005))))

(declare-fun lt!2166996 () Context!8666)

(assert (=> b!5303412 (= lt!2167005 (derivationStepZipperUp!321 lt!2166996 (h!67470 s!2326)))))

(declare-fun lt!2167012 () (InoxSet Context!8666))

(declare-fun lt!2166979 () Context!8666)

(assert (=> b!5303412 (= (flatMap!676 lt!2167012 lambda!269559) (derivationStepZipperUp!321 lt!2166979 (h!67470 s!2326)))))

(declare-fun lt!2166991 () Unit!153314)

(assert (=> b!5303412 (= lt!2166991 (lemmaFlatMapOnSingletonSet!208 lt!2167012 lt!2166979 lambda!269559))))

(declare-fun lt!2167006 () (InoxSet Context!8666))

(assert (=> b!5303412 (= lt!2167006 (derivationStepZipperUp!321 lt!2166979 (h!67470 s!2326)))))

(declare-fun derivationStepZipper!1192 ((InoxSet Context!8666) C!30168) (InoxSet Context!8666))

(assert (=> b!5303412 (= lt!2166987 (derivationStepZipper!1192 lt!2167012 (h!67470 s!2326)))))

(declare-fun lt!2166993 () (InoxSet Context!8666))

(assert (=> b!5303412 (= lt!2166993 (store ((as const (Array Context!8666 Bool)) false) lt!2166996 true))))

(assert (=> b!5303412 (= lt!2167012 (store ((as const (Array Context!8666 Bool)) false) lt!2166979 true))))

(declare-fun lt!2167010 () List!61147)

(assert (=> b!5303412 (= lt!2166979 (Context!8667 lt!2167010))))

(declare-fun lt!2167016 () List!61147)

(assert (=> b!5303412 (= lt!2167010 (Cons!61023 (regOne!30410 (regOne!30410 r!7292)) lt!2167016))))

(declare-fun res!2249553 () Bool)

(assert (=> start!559414 (=> (not res!2249553) (not e!3296094))))

(assert (=> start!559414 (= res!2249553 (validRegex!6685 r!7292))))

(assert (=> start!559414 e!3296094))

(assert (=> start!559414 e!3296086))

(declare-fun condSetEmpty!34079 () Bool)

(assert (=> start!559414 (= condSetEmpty!34079 (= z!1189 ((as const (Array Context!8666 Bool)) false)))))

(assert (=> start!559414 setRes!34079))

(assert (=> start!559414 e!3296090))

(declare-fun e!3296105 () Bool)

(assert (=> start!559414 e!3296105))

(declare-fun b!5303413 () Bool)

(declare-fun e!3296106 () Bool)

(assert (=> b!5303413 (= e!3296095 e!3296106)))

(declare-fun res!2249546 () Bool)

(assert (=> b!5303413 (=> res!2249546 e!3296106)))

(declare-fun lt!2166975 () List!61148)

(declare-fun zipperDepthTotal!110 (List!61148) Int)

(assert (=> b!5303413 (= res!2249546 (>= (zipperDepthTotal!110 lt!2166975) (zipperDepthTotal!110 zl!343)))))

(assert (=> b!5303413 (= lt!2166975 (Cons!61024 lt!2166979 Nil!61024))))

(declare-fun b!5303414 () Bool)

(declare-fun tp!1478624 () Bool)

(assert (=> b!5303414 (= e!3296086 tp!1478624)))

(declare-fun b!5303415 () Bool)

(declare-fun res!2249555 () Bool)

(assert (=> b!5303415 (=> res!2249555 e!3296088)))

(declare-fun isEmpty!32983 (List!61148) Bool)

(assert (=> b!5303415 (= res!2249555 (not (isEmpty!32983 (t!374353 zl!343))))))

(declare-fun b!5303416 () Bool)

(declare-fun res!2249565 () Bool)

(assert (=> b!5303416 (=> res!2249565 e!3296095)))

(declare-fun contextDepthTotal!90 (Context!8666) Int)

(assert (=> b!5303416 (= res!2249565 (>= (contextDepthTotal!90 lt!2166979) (contextDepthTotal!90 (h!67472 zl!343))))))

(declare-fun b!5303417 () Bool)

(declare-fun tp!1478633 () Bool)

(declare-fun tp!1478627 () Bool)

(assert (=> b!5303417 (= e!3296086 (and tp!1478633 tp!1478627))))

(declare-fun b!5303418 () Bool)

(assert (=> b!5303418 (= e!3296101 (matchZipper!1193 lt!2167001 (t!374351 s!2326)))))

(declare-fun b!5303419 () Bool)

(declare-fun e!3296087 () Bool)

(declare-fun tp!1478631 () Bool)

(assert (=> b!5303419 (= e!3296087 tp!1478631)))

(declare-fun b!5303420 () Bool)

(declare-fun res!2249563 () Bool)

(assert (=> b!5303420 (=> res!2249563 e!3296088)))

(assert (=> b!5303420 (= res!2249563 (or ((_ is EmptyExpr!14949) r!7292) ((_ is EmptyLang!14949) r!7292) ((_ is ElementMatch!14949) r!7292) ((_ is Union!14949) r!7292) (not ((_ is Concat!23794) r!7292))))))

(declare-fun b!5303421 () Bool)

(assert (=> b!5303421 (= e!3296097 e!3296093)))

(declare-fun res!2249558 () Bool)

(assert (=> b!5303421 (=> res!2249558 e!3296093)))

(declare-fun e!3296096 () Bool)

(assert (=> b!5303421 (= res!2249558 e!3296096)))

(declare-fun res!2249552 () Bool)

(assert (=> b!5303421 (=> (not res!2249552) (not e!3296096))))

(declare-fun lt!2167002 () Bool)

(assert (=> b!5303421 (= res!2249552 (not (= lt!2167002 (matchZipper!1193 lt!2166987 (t!374351 s!2326)))))))

(assert (=> b!5303421 (= (matchZipper!1193 lt!2166999 (t!374351 s!2326)) e!3296092)))

(declare-fun res!2249540 () Bool)

(assert (=> b!5303421 (=> res!2249540 e!3296092)))

(declare-fun lt!2166985 () Bool)

(assert (=> b!5303421 (= res!2249540 lt!2166985)))

(declare-fun lt!2166988 () Unit!153314)

(assert (=> b!5303421 (= lt!2166988 (lemmaZipperConcatMatchesSameAsBothZippers!186 lt!2166997 lt!2167005 (t!374351 s!2326)))))

(assert (=> b!5303421 (= (flatMap!676 lt!2166993 lambda!269559) (derivationStepZipperUp!321 lt!2166996 (h!67470 s!2326)))))

(declare-fun lt!2167022 () Unit!153314)

(assert (=> b!5303421 (= lt!2167022 (lemmaFlatMapOnSingletonSet!208 lt!2166993 lt!2166996 lambda!269559))))

(declare-fun b!5303422 () Bool)

(declare-fun e!3296100 () Bool)

(assert (=> b!5303422 (= e!3296100 e!3296102)))

(declare-fun res!2249550 () Bool)

(assert (=> b!5303422 (=> res!2249550 e!3296102)))

(declare-fun e!3296098 () Bool)

(assert (=> b!5303422 (= res!2249550 e!3296098)))

(declare-fun res!2249564 () Bool)

(assert (=> b!5303422 (=> (not res!2249564) (not e!3296098))))

(assert (=> b!5303422 (= res!2249564 (not (= lt!2167002 lt!2166985)))))

(assert (=> b!5303422 (= lt!2167002 (matchZipper!1193 lt!2167013 (t!374351 s!2326)))))

(declare-fun lt!2166989 () (InoxSet Context!8666))

(declare-fun e!3296104 () Bool)

(assert (=> b!5303422 (= (matchZipper!1193 lt!2166989 (t!374351 s!2326)) e!3296104)))

(declare-fun res!2249547 () Bool)

(assert (=> b!5303422 (=> res!2249547 e!3296104)))

(assert (=> b!5303422 (= res!2249547 lt!2166985)))

(assert (=> b!5303422 (= lt!2166985 (matchZipper!1193 lt!2166997 (t!374351 s!2326)))))

(declare-fun lt!2166977 () (InoxSet Context!8666))

(declare-fun lt!2166986 () Unit!153314)

(assert (=> b!5303422 (= lt!2166986 (lemmaZipperConcatMatchesSameAsBothZippers!186 lt!2166997 lt!2166977 (t!374351 s!2326)))))

(declare-fun b!5303423 () Bool)

(assert (=> b!5303423 (= e!3296099 e!3296100)))

(declare-fun res!2249561 () Bool)

(assert (=> b!5303423 (=> res!2249561 e!3296100)))

(assert (=> b!5303423 (= res!2249561 (not (= lt!2167013 lt!2166989)))))

(assert (=> b!5303423 (= lt!2166989 ((_ map or) lt!2166997 lt!2166977))))

(assert (=> b!5303423 (= lt!2166977 (derivationStepZipperDown!397 (regTwo!30410 (regOne!30410 r!7292)) lt!2166980 (h!67470 s!2326)))))

(assert (=> b!5303423 (= lt!2166997 (derivationStepZipperDown!397 (regOne!30410 (regOne!30410 r!7292)) lt!2166996 (h!67470 s!2326)))))

(assert (=> b!5303423 (= lt!2166996 (Context!8667 lt!2167016))))

(assert (=> b!5303423 (= lt!2167016 (Cons!61023 (regTwo!30410 (regOne!30410 r!7292)) (t!374352 (exprs!4833 (h!67472 zl!343)))))))

(declare-fun b!5303424 () Bool)

(assert (=> b!5303424 (= e!3296104 (matchZipper!1193 lt!2166977 (t!374351 s!2326)))))

(assert (=> b!5303425 (= e!3296106 e!3296091)))

(declare-fun res!2249560 () Bool)

(assert (=> b!5303425 (=> res!2249560 e!3296091)))

(declare-fun lt!2166998 () Bool)

(declare-fun lt!2167017 () Bool)

(declare-fun lt!2167009 () Bool)

(declare-fun lt!2167020 () Bool)

(declare-fun lt!2166976 () Bool)

(assert (=> b!5303425 (= res!2249560 (or (not (= lt!2167017 (or lt!2166976 lt!2167009))) (not (= lt!2167017 (or lt!2167020 lt!2166998)))))))

(assert (=> b!5303425 (= lt!2167017 (matchZipper!1193 z!1189 s!2326))))

(assert (=> b!5303425 (= (Exists!2130 lambda!269562) (Exists!2130 lambda!269563))))

(declare-fun lt!2167014 () Unit!153314)

(assert (=> b!5303425 (= lt!2167014 (lemmaExistCutMatchRandMatchRSpecEquivalent!784 (regTwo!30410 (regOne!30410 r!7292)) lt!2166974 s!2326))))

(assert (=> b!5303425 (= (isDefined!11763 (findConcatSeparation!1474 (regTwo!30410 (regOne!30410 r!7292)) lt!2166974 Nil!61022 s!2326 s!2326)) (Exists!2130 lambda!269562))))

(declare-fun lt!2167007 () Unit!153314)

(assert (=> b!5303425 (= lt!2167007 (lemmaFindConcatSeparationEquivalentToExists!1238 (regTwo!30410 (regOne!30410 r!7292)) lt!2166974 s!2326))))

(assert (=> b!5303425 (= lt!2166974 (generalisedConcat!618 (t!374352 (exprs!4833 (h!67472 zl!343)))))))

(assert (=> b!5303425 (= lt!2166998 (matchRSpec!2052 lt!2166994 s!2326))))

(declare-fun lt!2167004 () Unit!153314)

(assert (=> b!5303425 (= lt!2167004 (mainMatchTheorem!2052 lt!2166994 s!2326))))

(assert (=> b!5303425 (= (Exists!2130 lambda!269560) (Exists!2130 lambda!269561))))

(declare-fun lt!2167018 () Unit!153314)

(assert (=> b!5303425 (= lt!2167018 (lemmaExistCutMatchRandMatchRSpecEquivalent!784 (regOne!30410 (regOne!30410 r!7292)) lt!2166994 s!2326))))

(assert (=> b!5303425 (= (isDefined!11763 (findConcatSeparation!1474 (regOne!30410 (regOne!30410 r!7292)) lt!2166994 Nil!61022 s!2326 s!2326)) (Exists!2130 lambda!269560))))

(declare-fun lt!2166983 () Unit!153314)

(assert (=> b!5303425 (= lt!2166983 (lemmaFindConcatSeparationEquivalentToExists!1238 (regOne!30410 (regOne!30410 r!7292)) lt!2166994 s!2326))))

(declare-fun lt!2166978 () Regex!14949)

(assert (=> b!5303425 (= lt!2167020 (matchRSpec!2052 lt!2166978 s!2326))))

(declare-fun lt!2167008 () Unit!153314)

(assert (=> b!5303425 (= lt!2167008 (mainMatchTheorem!2052 lt!2166978 s!2326))))

(assert (=> b!5303425 (= lt!2166998 lt!2167009)))

(assert (=> b!5303425 (= lt!2167009 (matchZipper!1193 lt!2166993 s!2326))))

(assert (=> b!5303425 (= lt!2166998 (matchR!7134 lt!2166994 s!2326))))

(declare-fun lt!2167021 () Unit!153314)

(declare-fun theoremZipperRegexEquiv!359 ((InoxSet Context!8666) List!61148 Regex!14949 List!61146) Unit!153314)

(assert (=> b!5303425 (= lt!2167021 (theoremZipperRegexEquiv!359 lt!2166993 (Cons!61024 lt!2166996 Nil!61024) lt!2166994 s!2326))))

(assert (=> b!5303425 (= lt!2166994 (generalisedConcat!618 lt!2167016))))

(assert (=> b!5303425 (= lt!2167020 lt!2166976)))

(assert (=> b!5303425 (= lt!2166976 (matchZipper!1193 lt!2167012 s!2326))))

(assert (=> b!5303425 (= lt!2167020 (matchR!7134 lt!2166978 s!2326))))

(declare-fun lt!2167019 () Unit!153314)

(assert (=> b!5303425 (= lt!2167019 (theoremZipperRegexEquiv!359 lt!2167012 lt!2166975 lt!2166978 s!2326))))

(assert (=> b!5303425 (= lt!2166978 (generalisedConcat!618 lt!2167010))))

(declare-fun b!5303426 () Bool)

(declare-fun Unit!153317 () Unit!153314)

(assert (=> b!5303426 (= e!3296103 Unit!153317)))

(declare-fun b!5303427 () Bool)

(declare-fun res!2249548 () Bool)

(assert (=> b!5303427 (=> res!2249548 e!3296106)))

(declare-fun zipperDepth!66 (List!61148) Int)

(assert (=> b!5303427 (= res!2249548 (> (zipperDepth!66 lt!2166975) (zipperDepth!66 zl!343)))))

(declare-fun b!5303428 () Bool)

(declare-fun res!2249544 () Bool)

(assert (=> b!5303428 (=> (not res!2249544) (not e!3296094))))

(declare-fun unfocusZipper!691 (List!61148) Regex!14949)

(assert (=> b!5303428 (= res!2249544 (= r!7292 (unfocusZipper!691 zl!343)))))

(declare-fun b!5303429 () Bool)

(declare-fun res!2249566 () Bool)

(assert (=> b!5303429 (=> res!2249566 e!3296088)))

(declare-fun generalisedUnion!878 (List!61147) Regex!14949)

(declare-fun unfocusZipperList!391 (List!61148) List!61147)

(assert (=> b!5303429 (= res!2249566 (not (= r!7292 (generalisedUnion!878 (unfocusZipperList!391 zl!343)))))))

(declare-fun b!5303430 () Bool)

(declare-fun tp!1478630 () Bool)

(declare-fun tp!1478632 () Bool)

(assert (=> b!5303430 (= e!3296086 (and tp!1478630 tp!1478632))))

(declare-fun b!5303431 () Bool)

(assert (=> b!5303431 (= e!3296098 (not (matchZipper!1193 lt!2166977 (t!374351 s!2326))))))

(declare-fun b!5303432 () Bool)

(declare-fun res!2249542 () Bool)

(assert (=> b!5303432 (=> res!2249542 e!3296089)))

(declare-fun isEmpty!32984 (List!61147) Bool)

(assert (=> b!5303432 (= res!2249542 (isEmpty!32984 (t!374352 (exprs!4833 (h!67472 zl!343)))))))

(declare-fun b!5303433 () Bool)

(declare-fun res!2249549 () Bool)

(assert (=> b!5303433 (=> (not res!2249549) (not e!3296094))))

(declare-fun toList!8733 ((InoxSet Context!8666)) List!61148)

(assert (=> b!5303433 (= res!2249549 (= (toList!8733 z!1189) zl!343))))

(declare-fun b!5303434 () Bool)

(declare-fun tp!1478625 () Bool)

(assert (=> b!5303434 (= e!3296085 tp!1478625)))

(declare-fun b!5303435 () Bool)

(assert (=> b!5303435 (= e!3296096 (not (matchZipper!1193 (derivationStepZipper!1192 lt!2166993 (h!67470 s!2326)) (t!374351 s!2326))))))

(declare-fun b!5303436 () Bool)

(declare-fun res!2249543 () Bool)

(assert (=> b!5303436 (=> res!2249543 e!3296091)))

(assert (=> b!5303436 (= res!2249543 (not (= lt!2166995 (matchR!7134 (Concat!23794 (regOne!30410 r!7292) (regTwo!30410 r!7292)) s!2326))))))

(declare-fun setNonEmpty!34079 () Bool)

(declare-fun tp!1478628 () Bool)

(declare-fun setElem!34079 () Context!8666)

(assert (=> setNonEmpty!34079 (= setRes!34079 (and tp!1478628 (inv!80619 setElem!34079) e!3296087))))

(declare-fun setRest!34079 () (InoxSet Context!8666))

(assert (=> setNonEmpty!34079 (= z!1189 ((_ map or) (store ((as const (Array Context!8666 Bool)) false) setElem!34079 true) setRest!34079))))

(declare-fun b!5303437 () Bool)

(declare-fun tp!1478626 () Bool)

(assert (=> b!5303437 (= e!3296105 (and tp_is_empty!39151 tp!1478626))))

(assert (= (and start!559414 res!2249553) b!5303433))

(assert (= (and b!5303433 res!2249549) b!5303428))

(assert (= (and b!5303428 res!2249544) b!5303409))

(assert (= (and b!5303409 (not res!2249559)) b!5303415))

(assert (= (and b!5303415 (not res!2249555)) b!5303407))

(assert (= (and b!5303407 (not res!2249554)) b!5303410))

(assert (= (and b!5303410 (not res!2249545)) b!5303429))

(assert (= (and b!5303429 (not res!2249566)) b!5303420))

(assert (= (and b!5303420 (not res!2249563)) b!5303400))

(assert (= (and b!5303400 (not res!2249556)) b!5303432))

(assert (= (and b!5303432 (not res!2249542)) b!5303408))

(assert (= (and b!5303408 c!920760) b!5303404))

(assert (= (and b!5303408 (not c!920760)) b!5303426))

(assert (= (and b!5303404 (not res!2249541)) b!5303418))

(assert (= (and b!5303408 (not res!2249557)) b!5303411))

(assert (= (and b!5303411 (not res!2249551)) b!5303423))

(assert (= (and b!5303423 (not res!2249561)) b!5303422))

(assert (= (and b!5303422 (not res!2249547)) b!5303424))

(assert (= (and b!5303422 res!2249564) b!5303431))

(assert (= (and b!5303422 (not res!2249550)) b!5303412))

(assert (= (and b!5303412 (not res!2249562)) b!5303421))

(assert (= (and b!5303421 (not res!2249540)) b!5303406))

(assert (= (and b!5303421 res!2249552) b!5303435))

(assert (= (and b!5303421 (not res!2249558)) b!5303401))

(assert (= (and b!5303401 (not res!2249567)) b!5303416))

(assert (= (and b!5303416 (not res!2249565)) b!5303413))

(assert (= (and b!5303413 (not res!2249546)) b!5303427))

(assert (= (and b!5303427 (not res!2249548)) b!5303425))

(assert (= (and b!5303425 (not res!2249560)) b!5303436))

(assert (= (and b!5303436 (not res!2249543)) b!5303403))

(assert (= (and start!559414 ((_ is ElementMatch!14949) r!7292)) b!5303405))

(assert (= (and start!559414 ((_ is Concat!23794) r!7292)) b!5303417))

(assert (= (and start!559414 ((_ is Star!14949) r!7292)) b!5303414))

(assert (= (and start!559414 ((_ is Union!14949) r!7292)) b!5303430))

(assert (= (and start!559414 condSetEmpty!34079) setIsEmpty!34079))

(assert (= (and start!559414 (not condSetEmpty!34079)) setNonEmpty!34079))

(assert (= setNonEmpty!34079 b!5303419))

(assert (= b!5303402 b!5303434))

(assert (= (and start!559414 ((_ is Cons!61024) zl!343)) b!5303402))

(assert (= (and start!559414 ((_ is Cons!61022) s!2326)) b!5303437))

(declare-fun m!6340660 () Bool)

(assert (=> b!5303418 m!6340660))

(declare-fun m!6340662 () Bool)

(assert (=> b!5303408 m!6340662))

(declare-fun m!6340664 () Bool)

(assert (=> b!5303408 m!6340664))

(declare-fun m!6340666 () Bool)

(assert (=> b!5303408 m!6340666))

(declare-fun m!6340668 () Bool)

(assert (=> b!5303408 m!6340668))

(declare-fun m!6340670 () Bool)

(assert (=> b!5303408 m!6340670))

(declare-fun m!6340672 () Bool)

(assert (=> b!5303408 m!6340672))

(declare-fun m!6340674 () Bool)

(assert (=> b!5303408 m!6340674))

(declare-fun m!6340676 () Bool)

(assert (=> b!5303422 m!6340676))

(declare-fun m!6340678 () Bool)

(assert (=> b!5303422 m!6340678))

(declare-fun m!6340680 () Bool)

(assert (=> b!5303422 m!6340680))

(declare-fun m!6340682 () Bool)

(assert (=> b!5303422 m!6340682))

(declare-fun m!6340684 () Bool)

(assert (=> b!5303402 m!6340684))

(declare-fun m!6340686 () Bool)

(assert (=> b!5303413 m!6340686))

(declare-fun m!6340688 () Bool)

(assert (=> b!5303413 m!6340688))

(declare-fun m!6340690 () Bool)

(assert (=> b!5303406 m!6340690))

(declare-fun m!6340692 () Bool)

(assert (=> b!5303421 m!6340692))

(declare-fun m!6340694 () Bool)

(assert (=> b!5303421 m!6340694))

(declare-fun m!6340696 () Bool)

(assert (=> b!5303421 m!6340696))

(declare-fun m!6340698 () Bool)

(assert (=> b!5303421 m!6340698))

(declare-fun m!6340700 () Bool)

(assert (=> b!5303421 m!6340700))

(declare-fun m!6340702 () Bool)

(assert (=> b!5303421 m!6340702))

(declare-fun m!6340704 () Bool)

(assert (=> b!5303404 m!6340704))

(assert (=> b!5303404 m!6340676))

(declare-fun m!6340706 () Bool)

(assert (=> b!5303404 m!6340706))

(declare-fun m!6340708 () Bool)

(assert (=> b!5303428 m!6340708))

(declare-fun m!6340710 () Bool)

(assert (=> b!5303425 m!6340710))

(declare-fun m!6340712 () Bool)

(assert (=> b!5303425 m!6340712))

(declare-fun m!6340714 () Bool)

(assert (=> b!5303425 m!6340714))

(declare-fun m!6340716 () Bool)

(assert (=> b!5303425 m!6340716))

(declare-fun m!6340718 () Bool)

(assert (=> b!5303425 m!6340718))

(declare-fun m!6340720 () Bool)

(assert (=> b!5303425 m!6340720))

(declare-fun m!6340722 () Bool)

(assert (=> b!5303425 m!6340722))

(assert (=> b!5303425 m!6340716))

(declare-fun m!6340724 () Bool)

(assert (=> b!5303425 m!6340724))

(declare-fun m!6340726 () Bool)

(assert (=> b!5303425 m!6340726))

(declare-fun m!6340728 () Bool)

(assert (=> b!5303425 m!6340728))

(assert (=> b!5303425 m!6340710))

(declare-fun m!6340730 () Bool)

(assert (=> b!5303425 m!6340730))

(declare-fun m!6340732 () Bool)

(assert (=> b!5303425 m!6340732))

(declare-fun m!6340734 () Bool)

(assert (=> b!5303425 m!6340734))

(declare-fun m!6340736 () Bool)

(assert (=> b!5303425 m!6340736))

(declare-fun m!6340738 () Bool)

(assert (=> b!5303425 m!6340738))

(declare-fun m!6340740 () Bool)

(assert (=> b!5303425 m!6340740))

(declare-fun m!6340742 () Bool)

(assert (=> b!5303425 m!6340742))

(declare-fun m!6340744 () Bool)

(assert (=> b!5303425 m!6340744))

(declare-fun m!6340746 () Bool)

(assert (=> b!5303425 m!6340746))

(declare-fun m!6340748 () Bool)

(assert (=> b!5303425 m!6340748))

(assert (=> b!5303425 m!6340746))

(declare-fun m!6340750 () Bool)

(assert (=> b!5303425 m!6340750))

(declare-fun m!6340752 () Bool)

(assert (=> b!5303425 m!6340752))

(declare-fun m!6340754 () Bool)

(assert (=> b!5303425 m!6340754))

(declare-fun m!6340756 () Bool)

(assert (=> b!5303425 m!6340756))

(declare-fun m!6340758 () Bool)

(assert (=> b!5303425 m!6340758))

(declare-fun m!6340760 () Bool)

(assert (=> b!5303425 m!6340760))

(assert (=> b!5303425 m!6340756))

(declare-fun m!6340762 () Bool)

(assert (=> b!5303423 m!6340762))

(declare-fun m!6340764 () Bool)

(assert (=> b!5303423 m!6340764))

(declare-fun m!6340766 () Bool)

(assert (=> b!5303407 m!6340766))

(declare-fun m!6340768 () Bool)

(assert (=> b!5303436 m!6340768))

(declare-fun m!6340770 () Bool)

(assert (=> b!5303424 m!6340770))

(declare-fun m!6340772 () Bool)

(assert (=> b!5303412 m!6340772))

(declare-fun m!6340774 () Bool)

(assert (=> b!5303412 m!6340774))

(declare-fun m!6340776 () Bool)

(assert (=> b!5303412 m!6340776))

(declare-fun m!6340778 () Bool)

(assert (=> b!5303412 m!6340778))

(declare-fun m!6340780 () Bool)

(assert (=> b!5303412 m!6340780))

(assert (=> b!5303412 m!6340696))

(declare-fun m!6340782 () Bool)

(assert (=> b!5303412 m!6340782))

(assert (=> b!5303431 m!6340770))

(declare-fun m!6340784 () Bool)

(assert (=> b!5303435 m!6340784))

(assert (=> b!5303435 m!6340784))

(declare-fun m!6340786 () Bool)

(assert (=> b!5303435 m!6340786))

(declare-fun m!6340788 () Bool)

(assert (=> b!5303415 m!6340788))

(declare-fun m!6340790 () Bool)

(assert (=> b!5303429 m!6340790))

(assert (=> b!5303429 m!6340790))

(declare-fun m!6340792 () Bool)

(assert (=> b!5303429 m!6340792))

(declare-fun m!6340794 () Bool)

(assert (=> b!5303427 m!6340794))

(declare-fun m!6340796 () Bool)

(assert (=> b!5303427 m!6340796))

(declare-fun m!6340798 () Bool)

(assert (=> b!5303433 m!6340798))

(declare-fun m!6340800 () Bool)

(assert (=> start!559414 m!6340800))

(declare-fun m!6340802 () Bool)

(assert (=> b!5303416 m!6340802))

(declare-fun m!6340804 () Bool)

(assert (=> b!5303416 m!6340804))

(declare-fun m!6340806 () Bool)

(assert (=> b!5303432 m!6340806))

(declare-fun m!6340808 () Bool)

(assert (=> b!5303403 m!6340808))

(declare-fun m!6340810 () Bool)

(assert (=> b!5303409 m!6340810))

(declare-fun m!6340812 () Bool)

(assert (=> b!5303409 m!6340812))

(declare-fun m!6340814 () Bool)

(assert (=> b!5303409 m!6340814))

(declare-fun m!6340816 () Bool)

(assert (=> b!5303400 m!6340816))

(declare-fun m!6340818 () Bool)

(assert (=> b!5303400 m!6340818))

(declare-fun m!6340820 () Bool)

(assert (=> b!5303400 m!6340820))

(declare-fun m!6340822 () Bool)

(assert (=> b!5303400 m!6340822))

(declare-fun m!6340824 () Bool)

(assert (=> b!5303400 m!6340824))

(assert (=> b!5303400 m!6340816))

(assert (=> b!5303400 m!6340818))

(declare-fun m!6340826 () Bool)

(assert (=> b!5303400 m!6340826))

(declare-fun m!6340828 () Bool)

(assert (=> setNonEmpty!34079 m!6340828))

(declare-fun m!6340830 () Bool)

(assert (=> b!5303411 m!6340830))

(check-sat (not b!5303418) tp_is_empty!39151 (not b!5303431) (not b!5303408) (not b!5303403) (not b!5303424) (not b!5303437) (not b!5303417) (not b!5303434) (not b!5303415) (not b!5303409) (not b!5303429) (not b!5303416) (not b!5303411) (not b!5303435) (not b!5303400) (not b!5303402) (not b!5303414) (not b!5303422) (not b!5303433) (not b!5303428) (not b!5303425) (not b!5303407) (not b!5303430) (not b!5303432) (not b!5303423) (not b!5303413) (not b!5303412) (not setNonEmpty!34079) (not b!5303427) (not b!5303419) (not b!5303406) (not b!5303436) (not b!5303421) (not start!559414) (not b!5303404))
(check-sat)
