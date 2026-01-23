; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554474 () Bool)

(assert start!554474)

(declare-fun b!5246505 () Bool)

(assert (=> b!5246505 true))

(assert (=> b!5246505 true))

(declare-fun lambda!264043 () Int)

(declare-fun lambda!264042 () Int)

(assert (=> b!5246505 (not (= lambda!264043 lambda!264042))))

(assert (=> b!5246505 true))

(assert (=> b!5246505 true))

(declare-fun b!5246484 () Bool)

(assert (=> b!5246484 true))

(declare-fun b!5246478 () Bool)

(declare-datatypes ((Unit!152806 0))(
  ( (Unit!152807) )
))
(declare-fun e!3264222 () Unit!152806)

(declare-fun Unit!152808 () Unit!152806)

(assert (=> b!5246478 (= e!3264222 Unit!152808)))

(declare-datatypes ((C!29968 0))(
  ( (C!29969 (val!24686 Int)) )
))
(declare-datatypes ((List!60846 0))(
  ( (Nil!60722) (Cons!60722 (h!67170 C!29968) (t!374029 List!60846)) )
))
(declare-fun s!2326 () List!60846)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14849 0))(
  ( (ElementMatch!14849 (c!907257 C!29968)) (Concat!23694 (regOne!30210 Regex!14849) (regTwo!30210 Regex!14849)) (EmptyExpr!14849) (Star!14849 (reg!15178 Regex!14849)) (EmptyLang!14849) (Union!14849 (regOne!30211 Regex!14849) (regTwo!30211 Regex!14849)) )
))
(declare-datatypes ((List!60847 0))(
  ( (Nil!60723) (Cons!60723 (h!67171 Regex!14849) (t!374030 List!60847)) )
))
(declare-datatypes ((Context!8466 0))(
  ( (Context!8467 (exprs!4733 List!60847)) )
))
(declare-fun lt!2150000 () (InoxSet Context!8466))

(declare-fun lt!2150001 () Unit!152806)

(declare-fun lt!2149990 () (InoxSet Context!8466))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!86 ((InoxSet Context!8466) (InoxSet Context!8466) List!60846) Unit!152806)

(assert (=> b!5246478 (= lt!2150001 (lemmaZipperConcatMatchesSameAsBothZippers!86 lt!2149990 lt!2150000 (t!374029 s!2326)))))

(declare-fun res!2226485 () Bool)

(declare-fun matchZipper!1093 ((InoxSet Context!8466) List!60846) Bool)

(assert (=> b!5246478 (= res!2226485 (matchZipper!1093 lt!2149990 (t!374029 s!2326)))))

(declare-fun e!3264230 () Bool)

(assert (=> b!5246478 (=> res!2226485 e!3264230)))

(assert (=> b!5246478 (= (matchZipper!1093 ((_ map or) lt!2149990 lt!2150000) (t!374029 s!2326)) e!3264230)))

(declare-fun b!5246479 () Bool)

(declare-fun e!3264220 () Bool)

(declare-fun e!3264223 () Bool)

(assert (=> b!5246479 (= e!3264220 e!3264223)))

(declare-fun res!2226460 () Bool)

(assert (=> b!5246479 (=> res!2226460 e!3264223)))

(declare-datatypes ((List!60848 0))(
  ( (Nil!60724) (Cons!60724 (h!67172 Context!8466) (t!374031 List!60848)) )
))
(declare-fun lt!2149988 () List!60848)

(declare-fun lt!2149973 () Int)

(declare-fun zipperDepthTotal!30 (List!60848) Int)

(assert (=> b!5246479 (= res!2226460 (>= (zipperDepthTotal!30 lt!2149988) lt!2149973))))

(declare-fun lt!2149991 () Context!8466)

(assert (=> b!5246479 (= lt!2149988 (Cons!60724 lt!2149991 Nil!60724))))

(declare-fun setIsEmpty!33479 () Bool)

(declare-fun setRes!33479 () Bool)

(assert (=> setIsEmpty!33479 setRes!33479))

(declare-fun b!5246481 () Bool)

(declare-fun e!3264221 () Unit!152806)

(declare-fun Unit!152809 () Unit!152806)

(assert (=> b!5246481 (= e!3264221 Unit!152809)))

(declare-fun lt!2149965 () (InoxSet Context!8466))

(declare-fun lt!2149966 () Unit!152806)

(assert (=> b!5246481 (= lt!2149966 (lemmaZipperConcatMatchesSameAsBothZippers!86 lt!2149965 lt!2150000 (t!374029 s!2326)))))

(declare-fun res!2226484 () Bool)

(assert (=> b!5246481 (= res!2226484 (matchZipper!1093 lt!2149965 (t!374029 s!2326)))))

(declare-fun e!3264238 () Bool)

(assert (=> b!5246481 (=> res!2226484 e!3264238)))

(assert (=> b!5246481 (= (matchZipper!1093 ((_ map or) lt!2149965 lt!2150000) (t!374029 s!2326)) e!3264238)))

(declare-fun b!5246482 () Bool)

(declare-fun e!3264224 () Bool)

(declare-fun tp!1468457 () Bool)

(declare-fun tp!1468459 () Bool)

(assert (=> b!5246482 (= e!3264224 (and tp!1468457 tp!1468459))))

(declare-fun b!5246483 () Bool)

(declare-fun tp!1468456 () Bool)

(assert (=> b!5246483 (= e!3264224 tp!1468456)))

(declare-fun e!3264216 () Bool)

(declare-fun e!3264234 () Bool)

(assert (=> b!5246484 (= e!3264216 e!3264234)))

(declare-fun res!2226483 () Bool)

(assert (=> b!5246484 (=> res!2226483 e!3264234)))

(declare-fun r!7292 () Regex!14849)

(get-info :version)

(assert (=> b!5246484 (= res!2226483 (or (and ((_ is ElementMatch!14849) (regOne!30210 r!7292)) (= (c!907257 (regOne!30210 r!7292)) (h!67170 s!2326))) (not ((_ is Union!14849) (regOne!30210 r!7292)))))))

(declare-fun lt!2149984 () Unit!152806)

(assert (=> b!5246484 (= lt!2149984 e!3264222)))

(declare-fun c!907254 () Bool)

(declare-fun zl!343 () List!60848)

(declare-fun nullable!5018 (Regex!14849) Bool)

(assert (=> b!5246484 (= c!907254 (nullable!5018 (h!67171 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8466))

(declare-fun lambda!264044 () Int)

(declare-fun flatMap!576 ((InoxSet Context!8466) Int) (InoxSet Context!8466))

(declare-fun derivationStepZipperUp!221 (Context!8466 C!29968) (InoxSet Context!8466))

(assert (=> b!5246484 (= (flatMap!576 z!1189 lambda!264044) (derivationStepZipperUp!221 (h!67172 zl!343) (h!67170 s!2326)))))

(declare-fun lt!2150002 () Unit!152806)

(declare-fun lemmaFlatMapOnSingletonSet!108 ((InoxSet Context!8466) Context!8466 Int) Unit!152806)

(assert (=> b!5246484 (= lt!2150002 (lemmaFlatMapOnSingletonSet!108 z!1189 (h!67172 zl!343) lambda!264044))))

(declare-fun lt!2149994 () Context!8466)

(assert (=> b!5246484 (= lt!2150000 (derivationStepZipperUp!221 lt!2149994 (h!67170 s!2326)))))

(declare-fun derivationStepZipperDown!297 (Regex!14849 Context!8466 C!29968) (InoxSet Context!8466))

(assert (=> b!5246484 (= lt!2149990 (derivationStepZipperDown!297 (h!67171 (exprs!4733 (h!67172 zl!343))) lt!2149994 (h!67170 s!2326)))))

(assert (=> b!5246484 (= lt!2149994 (Context!8467 (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun lt!2149987 () (InoxSet Context!8466))

(assert (=> b!5246484 (= lt!2149987 (derivationStepZipperUp!221 (Context!8467 (Cons!60723 (h!67171 (exprs!4733 (h!67172 zl!343))) (t!374030 (exprs!4733 (h!67172 zl!343))))) (h!67170 s!2326)))))

(declare-fun b!5246485 () Bool)

(declare-fun e!3264218 () Unit!152806)

(declare-fun Unit!152810 () Unit!152806)

(assert (=> b!5246485 (= e!3264218 Unit!152810)))

(declare-fun lt!2149983 () (InoxSet Context!8466))

(declare-fun lt!2149999 () Unit!152806)

(assert (=> b!5246485 (= lt!2149999 (lemmaZipperConcatMatchesSameAsBothZippers!86 lt!2149983 lt!2150000 (t!374029 s!2326)))))

(declare-fun res!2226470 () Bool)

(declare-fun lt!2149976 () Bool)

(assert (=> b!5246485 (= res!2226470 lt!2149976)))

(declare-fun e!3264228 () Bool)

(assert (=> b!5246485 (=> res!2226470 e!3264228)))

(assert (=> b!5246485 (= (matchZipper!1093 ((_ map or) lt!2149983 lt!2150000) (t!374029 s!2326)) e!3264228)))

(declare-fun b!5246486 () Bool)

(declare-fun res!2226472 () Bool)

(declare-fun e!3264237 () Bool)

(assert (=> b!5246486 (=> res!2226472 e!3264237)))

(declare-fun lt!2149958 () Regex!14849)

(assert (=> b!5246486 (= res!2226472 (or (not (= lt!2149958 r!7292)) (not (= (exprs!4733 (h!67172 zl!343)) (Cons!60723 (regOne!30210 r!7292) (t!374030 (exprs!4733 (h!67172 zl!343))))))))))

(declare-fun tp!1468458 () Bool)

(declare-fun setElem!33479 () Context!8466)

(declare-fun e!3264226 () Bool)

(declare-fun setNonEmpty!33479 () Bool)

(declare-fun inv!80369 (Context!8466) Bool)

(assert (=> setNonEmpty!33479 (= setRes!33479 (and tp!1468458 (inv!80369 setElem!33479) e!3264226))))

(declare-fun setRest!33479 () (InoxSet Context!8466))

(assert (=> setNonEmpty!33479 (= z!1189 ((_ map or) (store ((as const (Array Context!8466 Bool)) false) setElem!33479 true) setRest!33479))))

(declare-fun b!5246487 () Bool)

(declare-fun e!3264217 () Bool)

(declare-fun e!3264227 () Bool)

(assert (=> b!5246487 (= e!3264217 e!3264227)))

(declare-fun res!2226480 () Bool)

(assert (=> b!5246487 (=> (not res!2226480) (not e!3264227))))

(assert (=> b!5246487 (= res!2226480 (= r!7292 lt!2149958))))

(declare-fun unfocusZipper!591 (List!60848) Regex!14849)

(assert (=> b!5246487 (= lt!2149958 (unfocusZipper!591 zl!343))))

(declare-fun b!5246488 () Bool)

(declare-fun tp_is_empty!38951 () Bool)

(assert (=> b!5246488 (= e!3264224 tp_is_empty!38951)))

(declare-fun b!5246489 () Bool)

(declare-fun res!2226481 () Bool)

(declare-fun e!3264231 () Bool)

(assert (=> b!5246489 (=> res!2226481 e!3264231)))

(assert (=> b!5246489 (= res!2226481 (not ((_ is Cons!60723) (exprs!4733 (h!67172 zl!343)))))))

(declare-fun b!5246490 () Bool)

(assert (=> b!5246490 (= e!3264228 (matchZipper!1093 lt!2150000 (t!374029 s!2326)))))

(declare-fun b!5246491 () Bool)

(assert (=> b!5246491 (= e!3264237 e!3264220)))

(declare-fun res!2226461 () Bool)

(assert (=> b!5246491 (=> res!2226461 e!3264220)))

(declare-fun lt!2149960 () Int)

(assert (=> b!5246491 (= res!2226461 (>= lt!2149960 lt!2149973))))

(assert (=> b!5246491 (= lt!2149973 (zipperDepthTotal!30 zl!343))))

(declare-fun lt!2149982 () List!60848)

(assert (=> b!5246491 (= lt!2149960 (zipperDepthTotal!30 lt!2149982))))

(declare-fun lt!2149996 () Context!8466)

(assert (=> b!5246491 (= lt!2149982 (Cons!60724 lt!2149996 Nil!60724))))

(declare-fun b!5246492 () Bool)

(declare-fun e!3264232 () Bool)

(declare-fun lt!2149989 () (InoxSet Context!8466))

(assert (=> b!5246492 (= e!3264232 (matchZipper!1093 lt!2149989 s!2326))))

(declare-fun b!5246493 () Bool)

(declare-fun e!3264225 () Bool)

(declare-fun e!3264233 () Bool)

(assert (=> b!5246493 (= e!3264225 e!3264233)))

(declare-fun res!2226463 () Bool)

(assert (=> b!5246493 (=> res!2226463 e!3264233)))

(declare-fun e!3264214 () Bool)

(assert (=> b!5246493 (= res!2226463 e!3264214)))

(declare-fun res!2226469 () Bool)

(assert (=> b!5246493 (=> (not res!2226469) (not e!3264214))))

(assert (=> b!5246493 (= res!2226469 (not (= (matchZipper!1093 lt!2149990 (t!374029 s!2326)) lt!2149976)))))

(declare-fun lt!2149985 () (InoxSet Context!8466))

(declare-fun e!3264236 () Bool)

(assert (=> b!5246493 (= (matchZipper!1093 lt!2149985 (t!374029 s!2326)) e!3264236)))

(declare-fun res!2226477 () Bool)

(assert (=> b!5246493 (=> res!2226477 e!3264236)))

(assert (=> b!5246493 (= res!2226477 lt!2149976)))

(assert (=> b!5246493 (= lt!2149976 (matchZipper!1093 lt!2149983 (t!374029 s!2326)))))

(declare-fun lt!2149957 () Unit!152806)

(assert (=> b!5246493 (= lt!2149957 (lemmaZipperConcatMatchesSameAsBothZippers!86 lt!2149983 lt!2149965 (t!374029 s!2326)))))

(declare-fun b!5246494 () Bool)

(declare-fun res!2226482 () Bool)

(assert (=> b!5246494 (=> (not res!2226482) (not e!3264217))))

(declare-fun toList!8633 ((InoxSet Context!8466)) List!60848)

(assert (=> b!5246494 (= res!2226482 (= (toList!8633 z!1189) zl!343))))

(declare-fun b!5246495 () Bool)

(declare-fun e!3264235 () Bool)

(declare-fun lt!2149967 () List!60847)

(declare-fun lambda!264045 () Int)

(declare-fun forall!14273 (List!60847 Int) Bool)

(assert (=> b!5246495 (= e!3264235 (forall!14273 lt!2149967 lambda!264045))))

(declare-fun b!5246496 () Bool)

(assert (=> b!5246496 (= e!3264236 (matchZipper!1093 lt!2149965 (t!374029 s!2326)))))

(declare-fun b!5246497 () Bool)

(declare-fun Unit!152811 () Unit!152806)

(assert (=> b!5246497 (= e!3264218 Unit!152811)))

(declare-fun b!5246480 () Bool)

(declare-fun Unit!152812 () Unit!152806)

(assert (=> b!5246480 (= e!3264222 Unit!152812)))

(declare-fun res!2226462 () Bool)

(assert (=> start!554474 (=> (not res!2226462) (not e!3264217))))

(declare-fun validRegex!6585 (Regex!14849) Bool)

(assert (=> start!554474 (= res!2226462 (validRegex!6585 r!7292))))

(assert (=> start!554474 e!3264217))

(assert (=> start!554474 e!3264224))

(declare-fun condSetEmpty!33479 () Bool)

(assert (=> start!554474 (= condSetEmpty!33479 (= z!1189 ((as const (Array Context!8466 Bool)) false)))))

(assert (=> start!554474 setRes!33479))

(declare-fun e!3264229 () Bool)

(assert (=> start!554474 e!3264229))

(declare-fun e!3264215 () Bool)

(assert (=> start!554474 e!3264215))

(declare-fun b!5246498 () Bool)

(declare-fun res!2226474 () Bool)

(assert (=> b!5246498 (=> res!2226474 e!3264231)))

(declare-fun generalisedConcat!518 (List!60847) Regex!14849)

(assert (=> b!5246498 (= res!2226474 (not (= r!7292 (generalisedConcat!518 (exprs!4733 (h!67172 zl!343))))))))

(declare-fun b!5246499 () Bool)

(assert (=> b!5246499 (= e!3264233 e!3264237)))

(declare-fun res!2226467 () Bool)

(assert (=> b!5246499 (=> res!2226467 e!3264237)))

(declare-fun lt!2149971 () Bool)

(assert (=> b!5246499 (= res!2226467 (not (= lt!2149971 e!3264232)))))

(declare-fun res!2226466 () Bool)

(assert (=> b!5246499 (=> res!2226466 e!3264232)))

(declare-fun lt!2149975 () Bool)

(assert (=> b!5246499 (= res!2226466 lt!2149975)))

(assert (=> b!5246499 (= lt!2149971 (matchZipper!1093 z!1189 s!2326))))

(declare-fun lt!2149995 () (InoxSet Context!8466))

(assert (=> b!5246499 (= lt!2149975 (matchZipper!1093 lt!2149995 s!2326))))

(declare-fun lt!2149974 () Unit!152806)

(assert (=> b!5246499 (= lt!2149974 e!3264221)))

(declare-fun c!907256 () Bool)

(assert (=> b!5246499 (= c!907256 (nullable!5018 (regTwo!30211 (regOne!30210 r!7292))))))

(assert (=> b!5246499 (= (flatMap!576 lt!2149989 lambda!264044) (derivationStepZipperUp!221 lt!2149991 (h!67170 s!2326)))))

(declare-fun lt!2149969 () Unit!152806)

(assert (=> b!5246499 (= lt!2149969 (lemmaFlatMapOnSingletonSet!108 lt!2149989 lt!2149991 lambda!264044))))

(declare-fun lt!2149964 () (InoxSet Context!8466))

(assert (=> b!5246499 (= lt!2149964 (derivationStepZipperUp!221 lt!2149991 (h!67170 s!2326)))))

(declare-fun lt!2149980 () Unit!152806)

(assert (=> b!5246499 (= lt!2149980 e!3264218)))

(declare-fun c!907255 () Bool)

(assert (=> b!5246499 (= c!907255 (nullable!5018 (regOne!30211 (regOne!30210 r!7292))))))

(assert (=> b!5246499 (= (flatMap!576 lt!2149995 lambda!264044) (derivationStepZipperUp!221 lt!2149996 (h!67170 s!2326)))))

(declare-fun lt!2149981 () Unit!152806)

(assert (=> b!5246499 (= lt!2149981 (lemmaFlatMapOnSingletonSet!108 lt!2149995 lt!2149996 lambda!264044))))

(declare-fun lt!2149993 () (InoxSet Context!8466))

(assert (=> b!5246499 (= lt!2149993 (derivationStepZipperUp!221 lt!2149996 (h!67170 s!2326)))))

(assert (=> b!5246499 (= lt!2149989 (store ((as const (Array Context!8466 Bool)) false) lt!2149991 true))))

(assert (=> b!5246499 (= lt!2149991 (Context!8467 lt!2149967))))

(assert (=> b!5246499 (= lt!2149967 (Cons!60723 (regTwo!30211 (regOne!30210 r!7292)) (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(assert (=> b!5246499 (= lt!2149995 (store ((as const (Array Context!8466 Bool)) false) lt!2149996 true))))

(declare-fun lt!2149972 () List!60847)

(assert (=> b!5246499 (= lt!2149996 (Context!8467 lt!2149972))))

(assert (=> b!5246499 (= lt!2149972 (Cons!60723 (regOne!30211 (regOne!30210 r!7292)) (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun b!5246500 () Bool)

(assert (=> b!5246500 (= e!3264214 (not (matchZipper!1093 lt!2149965 (t!374029 s!2326))))))

(declare-fun b!5246501 () Bool)

(assert (=> b!5246501 (= e!3264234 e!3264225)))

(declare-fun res!2226475 () Bool)

(assert (=> b!5246501 (=> res!2226475 e!3264225)))

(assert (=> b!5246501 (= res!2226475 (not (= lt!2149990 lt!2149985)))))

(assert (=> b!5246501 (= lt!2149985 ((_ map or) lt!2149983 lt!2149965))))

(assert (=> b!5246501 (= lt!2149965 (derivationStepZipperDown!297 (regTwo!30211 (regOne!30210 r!7292)) lt!2149994 (h!67170 s!2326)))))

(assert (=> b!5246501 (= lt!2149983 (derivationStepZipperDown!297 (regOne!30211 (regOne!30210 r!7292)) lt!2149994 (h!67170 s!2326)))))

(declare-fun b!5246502 () Bool)

(declare-fun res!2226468 () Bool)

(assert (=> b!5246502 (=> res!2226468 e!3264231)))

(declare-fun generalisedUnion!778 (List!60847) Regex!14849)

(declare-fun unfocusZipperList!291 (List!60848) List!60847)

(assert (=> b!5246502 (= res!2226468 (not (= r!7292 (generalisedUnion!778 (unfocusZipperList!291 zl!343)))))))

(declare-fun b!5246503 () Bool)

(declare-fun e!3264219 () Bool)

(declare-fun tp!1468463 () Bool)

(assert (=> b!5246503 (= e!3264219 tp!1468463)))

(declare-fun b!5246504 () Bool)

(assert (=> b!5246504 (= e!3264230 (matchZipper!1093 lt!2150000 (t!374029 s!2326)))))

(assert (=> b!5246505 (= e!3264231 e!3264216)))

(declare-fun res!2226479 () Bool)

(assert (=> b!5246505 (=> res!2226479 e!3264216)))

(declare-fun lt!2149959 () Bool)

(declare-fun lt!2149997 () Bool)

(assert (=> b!5246505 (= res!2226479 (or (not (= lt!2149997 lt!2149959)) ((_ is Nil!60722) s!2326)))))

(declare-fun Exists!2030 (Int) Bool)

(assert (=> b!5246505 (= (Exists!2030 lambda!264042) (Exists!2030 lambda!264043))))

(declare-fun lt!2149963 () Unit!152806)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!684 (Regex!14849 Regex!14849 List!60846) Unit!152806)

(assert (=> b!5246505 (= lt!2149963 (lemmaExistCutMatchRandMatchRSpecEquivalent!684 (regOne!30210 r!7292) (regTwo!30210 r!7292) s!2326))))

(assert (=> b!5246505 (= lt!2149959 (Exists!2030 lambda!264042))))

(declare-datatypes ((tuple2!64096 0))(
  ( (tuple2!64097 (_1!35351 List!60846) (_2!35351 List!60846)) )
))
(declare-datatypes ((Option!14960 0))(
  ( (None!14959) (Some!14959 (v!50988 tuple2!64096)) )
))
(declare-fun isDefined!11663 (Option!14960) Bool)

(declare-fun findConcatSeparation!1374 (Regex!14849 Regex!14849 List!60846 List!60846 List!60846) Option!14960)

(assert (=> b!5246505 (= lt!2149959 (isDefined!11663 (findConcatSeparation!1374 (regOne!30210 r!7292) (regTwo!30210 r!7292) Nil!60722 s!2326 s!2326)))))

(declare-fun lt!2149962 () Unit!152806)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1138 (Regex!14849 Regex!14849 List!60846) Unit!152806)

(assert (=> b!5246505 (= lt!2149962 (lemmaFindConcatSeparationEquivalentToExists!1138 (regOne!30210 r!7292) (regTwo!30210 r!7292) s!2326))))

(declare-fun b!5246506 () Bool)

(assert (=> b!5246506 (= e!3264223 e!3264235)))

(declare-fun res!2226471 () Bool)

(assert (=> b!5246506 (=> res!2226471 e!3264235)))

(declare-fun lt!2149961 () Bool)

(declare-fun lt!2149998 () Bool)

(assert (=> b!5246506 (= res!2226471 (or (and (not (= lt!2149971 lt!2149998)) (not lt!2149961)) (not (= r!7292 (Concat!23694 (Union!14849 (regOne!30211 (regOne!30210 r!7292)) (regTwo!30211 (regOne!30210 r!7292))) (regTwo!30210 r!7292))))))))

(declare-fun lt!2149979 () Regex!14849)

(declare-fun matchRSpec!1952 (Regex!14849 List!60846) Bool)

(assert (=> b!5246506 (= lt!2149961 (matchRSpec!1952 lt!2149979 s!2326))))

(declare-fun lt!2149968 () Unit!152806)

(declare-fun mainMatchTheorem!1952 (Regex!14849 List!60846) Unit!152806)

(assert (=> b!5246506 (= lt!2149968 (mainMatchTheorem!1952 lt!2149979 s!2326))))

(declare-fun lt!2149978 () Regex!14849)

(assert (=> b!5246506 (= lt!2149998 (matchRSpec!1952 lt!2149978 s!2326))))

(declare-fun lt!2149977 () Unit!152806)

(assert (=> b!5246506 (= lt!2149977 (mainMatchTheorem!1952 lt!2149978 s!2326))))

(assert (=> b!5246506 (= lt!2149961 (matchZipper!1093 lt!2149989 s!2326))))

(declare-fun matchR!7034 (Regex!14849 List!60846) Bool)

(assert (=> b!5246506 (= lt!2149961 (matchR!7034 lt!2149979 s!2326))))

(declare-fun lt!2149992 () Unit!152806)

(declare-fun theoremZipperRegexEquiv!283 ((InoxSet Context!8466) List!60848 Regex!14849 List!60846) Unit!152806)

(assert (=> b!5246506 (= lt!2149992 (theoremZipperRegexEquiv!283 lt!2149989 lt!2149988 lt!2149979 s!2326))))

(assert (=> b!5246506 (= lt!2149979 (generalisedConcat!518 lt!2149967))))

(assert (=> b!5246506 (= lt!2149998 lt!2149975)))

(assert (=> b!5246506 (= lt!2149998 (matchR!7034 lt!2149978 s!2326))))

(declare-fun lt!2149986 () Unit!152806)

(assert (=> b!5246506 (= lt!2149986 (theoremZipperRegexEquiv!283 lt!2149995 lt!2149982 lt!2149978 s!2326))))

(assert (=> b!5246506 (= lt!2149978 (generalisedConcat!518 lt!2149972))))

(declare-fun b!5246507 () Bool)

(declare-fun res!2226465 () Bool)

(assert (=> b!5246507 (=> res!2226465 e!3264231)))

(assert (=> b!5246507 (= res!2226465 (or ((_ is EmptyExpr!14849) r!7292) ((_ is EmptyLang!14849) r!7292) ((_ is ElementMatch!14849) r!7292) ((_ is Union!14849) r!7292) (not ((_ is Concat!23694) r!7292))))))

(declare-fun b!5246508 () Bool)

(assert (=> b!5246508 (= e!3264227 (not e!3264231))))

(declare-fun res!2226473 () Bool)

(assert (=> b!5246508 (=> res!2226473 e!3264231)))

(assert (=> b!5246508 (= res!2226473 (not ((_ is Cons!60724) zl!343)))))

(assert (=> b!5246508 (= lt!2149997 (matchRSpec!1952 r!7292 s!2326))))

(assert (=> b!5246508 (= lt!2149997 (matchR!7034 r!7292 s!2326))))

(declare-fun lt!2149970 () Unit!152806)

(assert (=> b!5246508 (= lt!2149970 (mainMatchTheorem!1952 r!7292 s!2326))))

(declare-fun b!5246509 () Bool)

(declare-fun res!2226476 () Bool)

(assert (=> b!5246509 (=> res!2226476 e!3264231)))

(declare-fun isEmpty!32659 (List!60848) Bool)

(assert (=> b!5246509 (= res!2226476 (not (isEmpty!32659 (t!374031 zl!343))))))

(declare-fun b!5246510 () Bool)

(declare-fun Unit!152813 () Unit!152806)

(assert (=> b!5246510 (= e!3264221 Unit!152813)))

(declare-fun b!5246511 () Bool)

(declare-fun res!2226464 () Bool)

(assert (=> b!5246511 (=> res!2226464 e!3264235)))

(assert (=> b!5246511 (= res!2226464 (not (= lt!2149978 (Concat!23694 (regOne!30211 (regOne!30210 r!7292)) (generalisedConcat!518 (t!374030 (exprs!4733 (h!67172 zl!343))))))))))

(declare-fun b!5246512 () Bool)

(declare-fun tp!1468461 () Bool)

(assert (=> b!5246512 (= e!3264215 (and tp_is_empty!38951 tp!1468461))))

(declare-fun b!5246513 () Bool)

(declare-fun res!2226478 () Bool)

(assert (=> b!5246513 (=> res!2226478 e!3264216)))

(declare-fun isEmpty!32660 (List!60847) Bool)

(assert (=> b!5246513 (= res!2226478 (isEmpty!32660 (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun b!5246514 () Bool)

(declare-fun tp!1468462 () Bool)

(assert (=> b!5246514 (= e!3264229 (and (inv!80369 (h!67172 zl!343)) e!3264219 tp!1468462))))

(declare-fun b!5246515 () Bool)

(declare-fun tp!1468460 () Bool)

(declare-fun tp!1468465 () Bool)

(assert (=> b!5246515 (= e!3264224 (and tp!1468460 tp!1468465))))

(declare-fun b!5246516 () Bool)

(assert (=> b!5246516 (= e!3264238 (matchZipper!1093 lt!2150000 (t!374029 s!2326)))))

(declare-fun b!5246517 () Bool)

(declare-fun tp!1468464 () Bool)

(assert (=> b!5246517 (= e!3264226 tp!1468464)))

(assert (= (and start!554474 res!2226462) b!5246494))

(assert (= (and b!5246494 res!2226482) b!5246487))

(assert (= (and b!5246487 res!2226480) b!5246508))

(assert (= (and b!5246508 (not res!2226473)) b!5246509))

(assert (= (and b!5246509 (not res!2226476)) b!5246498))

(assert (= (and b!5246498 (not res!2226474)) b!5246489))

(assert (= (and b!5246489 (not res!2226481)) b!5246502))

(assert (= (and b!5246502 (not res!2226468)) b!5246507))

(assert (= (and b!5246507 (not res!2226465)) b!5246505))

(assert (= (and b!5246505 (not res!2226479)) b!5246513))

(assert (= (and b!5246513 (not res!2226478)) b!5246484))

(assert (= (and b!5246484 c!907254) b!5246478))

(assert (= (and b!5246484 (not c!907254)) b!5246480))

(assert (= (and b!5246478 (not res!2226485)) b!5246504))

(assert (= (and b!5246484 (not res!2226483)) b!5246501))

(assert (= (and b!5246501 (not res!2226475)) b!5246493))

(assert (= (and b!5246493 (not res!2226477)) b!5246496))

(assert (= (and b!5246493 res!2226469) b!5246500))

(assert (= (and b!5246493 (not res!2226463)) b!5246499))

(assert (= (and b!5246499 c!907255) b!5246485))

(assert (= (and b!5246499 (not c!907255)) b!5246497))

(assert (= (and b!5246485 (not res!2226470)) b!5246490))

(assert (= (and b!5246499 c!907256) b!5246481))

(assert (= (and b!5246499 (not c!907256)) b!5246510))

(assert (= (and b!5246481 (not res!2226484)) b!5246516))

(assert (= (and b!5246499 (not res!2226466)) b!5246492))

(assert (= (and b!5246499 (not res!2226467)) b!5246486))

(assert (= (and b!5246486 (not res!2226472)) b!5246491))

(assert (= (and b!5246491 (not res!2226461)) b!5246479))

(assert (= (and b!5246479 (not res!2226460)) b!5246506))

(assert (= (and b!5246506 (not res!2226471)) b!5246511))

(assert (= (and b!5246511 (not res!2226464)) b!5246495))

(assert (= (and start!554474 ((_ is ElementMatch!14849) r!7292)) b!5246488))

(assert (= (and start!554474 ((_ is Concat!23694) r!7292)) b!5246515))

(assert (= (and start!554474 ((_ is Star!14849) r!7292)) b!5246483))

(assert (= (and start!554474 ((_ is Union!14849) r!7292)) b!5246482))

(assert (= (and start!554474 condSetEmpty!33479) setIsEmpty!33479))

(assert (= (and start!554474 (not condSetEmpty!33479)) setNonEmpty!33479))

(assert (= setNonEmpty!33479 b!5246517))

(assert (= b!5246514 b!5246503))

(assert (= (and start!554474 ((_ is Cons!60724) zl!343)) b!5246514))

(assert (= (and start!554474 ((_ is Cons!60722) s!2326)) b!5246512))

(declare-fun m!6290252 () Bool)

(assert (=> b!5246506 m!6290252))

(declare-fun m!6290254 () Bool)

(assert (=> b!5246506 m!6290254))

(declare-fun m!6290256 () Bool)

(assert (=> b!5246506 m!6290256))

(declare-fun m!6290258 () Bool)

(assert (=> b!5246506 m!6290258))

(declare-fun m!6290260 () Bool)

(assert (=> b!5246506 m!6290260))

(declare-fun m!6290262 () Bool)

(assert (=> b!5246506 m!6290262))

(declare-fun m!6290264 () Bool)

(assert (=> b!5246506 m!6290264))

(declare-fun m!6290266 () Bool)

(assert (=> b!5246506 m!6290266))

(declare-fun m!6290268 () Bool)

(assert (=> b!5246506 m!6290268))

(declare-fun m!6290270 () Bool)

(assert (=> b!5246506 m!6290270))

(declare-fun m!6290272 () Bool)

(assert (=> b!5246506 m!6290272))

(declare-fun m!6290274 () Bool)

(assert (=> setNonEmpty!33479 m!6290274))

(declare-fun m!6290276 () Bool)

(assert (=> b!5246502 m!6290276))

(assert (=> b!5246502 m!6290276))

(declare-fun m!6290278 () Bool)

(assert (=> b!5246502 m!6290278))

(declare-fun m!6290280 () Bool)

(assert (=> b!5246513 m!6290280))

(declare-fun m!6290282 () Bool)

(assert (=> b!5246498 m!6290282))

(declare-fun m!6290284 () Bool)

(assert (=> b!5246499 m!6290284))

(declare-fun m!6290286 () Bool)

(assert (=> b!5246499 m!6290286))

(declare-fun m!6290288 () Bool)

(assert (=> b!5246499 m!6290288))

(declare-fun m!6290290 () Bool)

(assert (=> b!5246499 m!6290290))

(declare-fun m!6290292 () Bool)

(assert (=> b!5246499 m!6290292))

(declare-fun m!6290294 () Bool)

(assert (=> b!5246499 m!6290294))

(declare-fun m!6290296 () Bool)

(assert (=> b!5246499 m!6290296))

(declare-fun m!6290298 () Bool)

(assert (=> b!5246499 m!6290298))

(declare-fun m!6290300 () Bool)

(assert (=> b!5246499 m!6290300))

(declare-fun m!6290302 () Bool)

(assert (=> b!5246499 m!6290302))

(declare-fun m!6290304 () Bool)

(assert (=> b!5246499 m!6290304))

(declare-fun m!6290306 () Bool)

(assert (=> b!5246499 m!6290306))

(declare-fun m!6290308 () Bool)

(assert (=> b!5246511 m!6290308))

(declare-fun m!6290310 () Bool)

(assert (=> b!5246509 m!6290310))

(declare-fun m!6290312 () Bool)

(assert (=> b!5246496 m!6290312))

(declare-fun m!6290314 () Bool)

(assert (=> b!5246505 m!6290314))

(declare-fun m!6290316 () Bool)

(assert (=> b!5246505 m!6290316))

(declare-fun m!6290318 () Bool)

(assert (=> b!5246505 m!6290318))

(assert (=> b!5246505 m!6290314))

(declare-fun m!6290320 () Bool)

(assert (=> b!5246505 m!6290320))

(declare-fun m!6290322 () Bool)

(assert (=> b!5246505 m!6290322))

(assert (=> b!5246505 m!6290316))

(declare-fun m!6290324 () Bool)

(assert (=> b!5246505 m!6290324))

(declare-fun m!6290326 () Bool)

(assert (=> b!5246504 m!6290326))

(declare-fun m!6290328 () Bool)

(assert (=> b!5246491 m!6290328))

(declare-fun m!6290330 () Bool)

(assert (=> b!5246491 m!6290330))

(declare-fun m!6290332 () Bool)

(assert (=> b!5246484 m!6290332))

(declare-fun m!6290334 () Bool)

(assert (=> b!5246484 m!6290334))

(declare-fun m!6290336 () Bool)

(assert (=> b!5246484 m!6290336))

(declare-fun m!6290338 () Bool)

(assert (=> b!5246484 m!6290338))

(declare-fun m!6290340 () Bool)

(assert (=> b!5246484 m!6290340))

(declare-fun m!6290342 () Bool)

(assert (=> b!5246484 m!6290342))

(declare-fun m!6290344 () Bool)

(assert (=> b!5246484 m!6290344))

(declare-fun m!6290346 () Bool)

(assert (=> b!5246485 m!6290346))

(declare-fun m!6290348 () Bool)

(assert (=> b!5246485 m!6290348))

(declare-fun m!6290350 () Bool)

(assert (=> b!5246493 m!6290350))

(declare-fun m!6290352 () Bool)

(assert (=> b!5246493 m!6290352))

(declare-fun m!6290354 () Bool)

(assert (=> b!5246493 m!6290354))

(declare-fun m!6290356 () Bool)

(assert (=> b!5246493 m!6290356))

(assert (=> b!5246500 m!6290312))

(assert (=> b!5246490 m!6290326))

(declare-fun m!6290358 () Bool)

(assert (=> b!5246501 m!6290358))

(declare-fun m!6290360 () Bool)

(assert (=> b!5246501 m!6290360))

(declare-fun m!6290362 () Bool)

(assert (=> start!554474 m!6290362))

(declare-fun m!6290364 () Bool)

(assert (=> b!5246508 m!6290364))

(declare-fun m!6290366 () Bool)

(assert (=> b!5246508 m!6290366))

(declare-fun m!6290368 () Bool)

(assert (=> b!5246508 m!6290368))

(declare-fun m!6290370 () Bool)

(assert (=> b!5246514 m!6290370))

(declare-fun m!6290372 () Bool)

(assert (=> b!5246487 m!6290372))

(declare-fun m!6290374 () Bool)

(assert (=> b!5246481 m!6290374))

(assert (=> b!5246481 m!6290312))

(declare-fun m!6290376 () Bool)

(assert (=> b!5246481 m!6290376))

(declare-fun m!6290378 () Bool)

(assert (=> b!5246478 m!6290378))

(assert (=> b!5246478 m!6290350))

(declare-fun m!6290380 () Bool)

(assert (=> b!5246478 m!6290380))

(declare-fun m!6290382 () Bool)

(assert (=> b!5246479 m!6290382))

(assert (=> b!5246492 m!6290258))

(declare-fun m!6290384 () Bool)

(assert (=> b!5246494 m!6290384))

(declare-fun m!6290386 () Bool)

(assert (=> b!5246495 m!6290386))

(assert (=> b!5246516 m!6290326))

(check-sat (not b!5246484) (not b!5246490) (not b!5246517) (not b!5246516) (not b!5246491) (not b!5246493) (not b!5246505) (not b!5246502) (not b!5246515) (not b!5246479) (not b!5246509) (not b!5246478) (not b!5246492) (not b!5246504) (not b!5246503) (not b!5246485) (not b!5246482) (not b!5246499) (not b!5246494) (not b!5246513) (not b!5246487) (not b!5246481) (not b!5246483) (not b!5246512) (not b!5246506) (not b!5246498) (not b!5246501) (not start!554474) (not b!5246514) (not b!5246508) tp_is_empty!38951 (not setNonEmpty!33479) (not b!5246495) (not b!5246511) (not b!5246500) (not b!5246496))
(check-sat)
(get-model)

(declare-fun d!1690532 () Bool)

(assert (=> d!1690532 (= (matchR!7034 lt!2149979 s!2326) (matchZipper!1093 lt!2149989 s!2326))))

(declare-fun lt!2150055 () Unit!152806)

(declare-fun choose!39077 ((InoxSet Context!8466) List!60848 Regex!14849 List!60846) Unit!152806)

(assert (=> d!1690532 (= lt!2150055 (choose!39077 lt!2149989 lt!2149988 lt!2149979 s!2326))))

(assert (=> d!1690532 (validRegex!6585 lt!2149979)))

(assert (=> d!1690532 (= (theoremZipperRegexEquiv!283 lt!2149989 lt!2149988 lt!2149979 s!2326) lt!2150055)))

(declare-fun bs!1217555 () Bool)

(assert (= bs!1217555 d!1690532))

(assert (=> bs!1217555 m!6290252))

(assert (=> bs!1217555 m!6290258))

(declare-fun m!6290672 () Bool)

(assert (=> bs!1217555 m!6290672))

(declare-fun m!6290674 () Bool)

(assert (=> bs!1217555 m!6290674))

(assert (=> b!5246506 d!1690532))

(declare-fun d!1690534 () Bool)

(assert (=> d!1690534 (= (matchR!7034 lt!2149978 s!2326) (matchZipper!1093 lt!2149995 s!2326))))

(declare-fun lt!2150056 () Unit!152806)

(assert (=> d!1690534 (= lt!2150056 (choose!39077 lt!2149995 lt!2149982 lt!2149978 s!2326))))

(assert (=> d!1690534 (validRegex!6585 lt!2149978)))

(assert (=> d!1690534 (= (theoremZipperRegexEquiv!283 lt!2149995 lt!2149982 lt!2149978 s!2326) lt!2150056)))

(declare-fun bs!1217556 () Bool)

(assert (= bs!1217556 d!1690534))

(assert (=> bs!1217556 m!6290268))

(assert (=> bs!1217556 m!6290288))

(declare-fun m!6290676 () Bool)

(assert (=> bs!1217556 m!6290676))

(declare-fun m!6290678 () Bool)

(assert (=> bs!1217556 m!6290678))

(assert (=> b!5246506 d!1690534))

(declare-fun bs!1217557 () Bool)

(declare-fun d!1690536 () Bool)

(assert (= bs!1217557 (and d!1690536 b!5246495)))

(declare-fun lambda!264081 () Int)

(assert (=> bs!1217557 (= lambda!264081 lambda!264045)))

(declare-fun b!5246891 () Bool)

(declare-fun e!3264453 () Bool)

(declare-fun e!3264452 () Bool)

(assert (=> b!5246891 (= e!3264453 e!3264452)))

(declare-fun c!907382 () Bool)

(assert (=> b!5246891 (= c!907382 (isEmpty!32660 lt!2149967))))

(declare-fun b!5246892 () Bool)

(declare-fun e!3264451 () Bool)

(declare-fun lt!2150060 () Regex!14849)

(declare-fun isConcat!322 (Regex!14849) Bool)

(assert (=> b!5246892 (= e!3264451 (isConcat!322 lt!2150060))))

(declare-fun b!5246893 () Bool)

(declare-fun head!11246 (List!60847) Regex!14849)

(assert (=> b!5246893 (= e!3264451 (= lt!2150060 (head!11246 lt!2149967)))))

(assert (=> d!1690536 e!3264453))

(declare-fun res!2226611 () Bool)

(assert (=> d!1690536 (=> (not res!2226611) (not e!3264453))))

(assert (=> d!1690536 (= res!2226611 (validRegex!6585 lt!2150060))))

(declare-fun e!3264454 () Regex!14849)

(assert (=> d!1690536 (= lt!2150060 e!3264454)))

(declare-fun c!907380 () Bool)

(declare-fun e!3264456 () Bool)

(assert (=> d!1690536 (= c!907380 e!3264456)))

(declare-fun res!2226612 () Bool)

(assert (=> d!1690536 (=> (not res!2226612) (not e!3264456))))

(assert (=> d!1690536 (= res!2226612 ((_ is Cons!60723) lt!2149967))))

(assert (=> d!1690536 (forall!14273 lt!2149967 lambda!264081)))

(assert (=> d!1690536 (= (generalisedConcat!518 lt!2149967) lt!2150060)))

(declare-fun b!5246894 () Bool)

(assert (=> b!5246894 (= e!3264456 (isEmpty!32660 (t!374030 lt!2149967)))))

(declare-fun b!5246895 () Bool)

(assert (=> b!5246895 (= e!3264452 e!3264451)))

(declare-fun c!907379 () Bool)

(declare-fun tail!10343 (List!60847) List!60847)

(assert (=> b!5246895 (= c!907379 (isEmpty!32660 (tail!10343 lt!2149967)))))

(declare-fun b!5246896 () Bool)

(assert (=> b!5246896 (= e!3264454 (h!67171 lt!2149967))))

(declare-fun b!5246897 () Bool)

(declare-fun e!3264455 () Regex!14849)

(assert (=> b!5246897 (= e!3264455 EmptyExpr!14849)))

(declare-fun b!5246898 () Bool)

(assert (=> b!5246898 (= e!3264455 (Concat!23694 (h!67171 lt!2149967) (generalisedConcat!518 (t!374030 lt!2149967))))))

(declare-fun b!5246899 () Bool)

(declare-fun isEmptyExpr!799 (Regex!14849) Bool)

(assert (=> b!5246899 (= e!3264452 (isEmptyExpr!799 lt!2150060))))

(declare-fun b!5246900 () Bool)

(assert (=> b!5246900 (= e!3264454 e!3264455)))

(declare-fun c!907381 () Bool)

(assert (=> b!5246900 (= c!907381 ((_ is Cons!60723) lt!2149967))))

(assert (= (and d!1690536 res!2226612) b!5246894))

(assert (= (and d!1690536 c!907380) b!5246896))

(assert (= (and d!1690536 (not c!907380)) b!5246900))

(assert (= (and b!5246900 c!907381) b!5246898))

(assert (= (and b!5246900 (not c!907381)) b!5246897))

(assert (= (and d!1690536 res!2226611) b!5246891))

(assert (= (and b!5246891 c!907382) b!5246899))

(assert (= (and b!5246891 (not c!907382)) b!5246895))

(assert (= (and b!5246895 c!907379) b!5246893))

(assert (= (and b!5246895 (not c!907379)) b!5246892))

(declare-fun m!6290712 () Bool)

(assert (=> b!5246891 m!6290712))

(declare-fun m!6290714 () Bool)

(assert (=> b!5246898 m!6290714))

(declare-fun m!6290716 () Bool)

(assert (=> b!5246892 m!6290716))

(declare-fun m!6290718 () Bool)

(assert (=> d!1690536 m!6290718))

(declare-fun m!6290720 () Bool)

(assert (=> d!1690536 m!6290720))

(declare-fun m!6290722 () Bool)

(assert (=> b!5246895 m!6290722))

(assert (=> b!5246895 m!6290722))

(declare-fun m!6290724 () Bool)

(assert (=> b!5246895 m!6290724))

(declare-fun m!6290726 () Bool)

(assert (=> b!5246893 m!6290726))

(declare-fun m!6290728 () Bool)

(assert (=> b!5246894 m!6290728))

(declare-fun m!6290730 () Bool)

(assert (=> b!5246899 m!6290730))

(assert (=> b!5246506 d!1690536))

(declare-fun bs!1217575 () Bool)

(declare-fun b!5247017 () Bool)

(assert (= bs!1217575 (and b!5247017 b!5246505)))

(declare-fun lambda!264088 () Int)

(assert (=> bs!1217575 (not (= lambda!264088 lambda!264042))))

(assert (=> bs!1217575 (not (= lambda!264088 lambda!264043))))

(assert (=> b!5247017 true))

(assert (=> b!5247017 true))

(declare-fun bs!1217577 () Bool)

(declare-fun b!5247015 () Bool)

(assert (= bs!1217577 (and b!5247015 b!5246505)))

(declare-fun lambda!264089 () Int)

(assert (=> bs!1217577 (not (= lambda!264089 lambda!264042))))

(assert (=> bs!1217577 (= (and (= (regOne!30210 lt!2149978) (regOne!30210 r!7292)) (= (regTwo!30210 lt!2149978) (regTwo!30210 r!7292))) (= lambda!264089 lambda!264043))))

(declare-fun bs!1217578 () Bool)

(assert (= bs!1217578 (and b!5247015 b!5247017)))

(assert (=> bs!1217578 (not (= lambda!264089 lambda!264088))))

(assert (=> b!5247015 true))

(assert (=> b!5247015 true))

(declare-fun d!1690548 () Bool)

(declare-fun c!907420 () Bool)

(assert (=> d!1690548 (= c!907420 ((_ is EmptyExpr!14849) lt!2149978))))

(declare-fun e!3264525 () Bool)

(assert (=> d!1690548 (= (matchRSpec!1952 lt!2149978 s!2326) e!3264525)))

(declare-fun bm!371740 () Bool)

(declare-fun call!371746 () Bool)

(declare-fun c!907421 () Bool)

(assert (=> bm!371740 (= call!371746 (Exists!2030 (ite c!907421 lambda!264088 lambda!264089)))))

(declare-fun b!5247010 () Bool)

(declare-fun e!3264526 () Bool)

(assert (=> b!5247010 (= e!3264526 (matchRSpec!1952 (regTwo!30211 lt!2149978) s!2326))))

(declare-fun b!5247011 () Bool)

(declare-fun e!3264531 () Bool)

(assert (=> b!5247011 (= e!3264531 e!3264526)))

(declare-fun res!2226652 () Bool)

(assert (=> b!5247011 (= res!2226652 (matchRSpec!1952 (regOne!30211 lt!2149978) s!2326))))

(assert (=> b!5247011 (=> res!2226652 e!3264526)))

(declare-fun b!5247012 () Bool)

(declare-fun call!371745 () Bool)

(assert (=> b!5247012 (= e!3264525 call!371745)))

(declare-fun b!5247013 () Bool)

(declare-fun c!907419 () Bool)

(assert (=> b!5247013 (= c!907419 ((_ is Union!14849) lt!2149978))))

(declare-fun e!3264529 () Bool)

(assert (=> b!5247013 (= e!3264529 e!3264531)))

(declare-fun bm!371741 () Bool)

(declare-fun isEmpty!32663 (List!60846) Bool)

(assert (=> bm!371741 (= call!371745 (isEmpty!32663 s!2326))))

(declare-fun b!5247014 () Bool)

(declare-fun res!2226654 () Bool)

(declare-fun e!3264528 () Bool)

(assert (=> b!5247014 (=> res!2226654 e!3264528)))

(assert (=> b!5247014 (= res!2226654 call!371745)))

(declare-fun e!3264527 () Bool)

(assert (=> b!5247014 (= e!3264527 e!3264528)))

(assert (=> b!5247015 (= e!3264527 call!371746)))

(declare-fun b!5247016 () Bool)

(assert (=> b!5247016 (= e!3264529 (= s!2326 (Cons!60722 (c!907257 lt!2149978) Nil!60722)))))

(assert (=> b!5247017 (= e!3264528 call!371746)))

(declare-fun b!5247018 () Bool)

(assert (=> b!5247018 (= e!3264531 e!3264527)))

(assert (=> b!5247018 (= c!907421 ((_ is Star!14849) lt!2149978))))

(declare-fun b!5247019 () Bool)

(declare-fun e!3264530 () Bool)

(assert (=> b!5247019 (= e!3264525 e!3264530)))

(declare-fun res!2226653 () Bool)

(assert (=> b!5247019 (= res!2226653 (not ((_ is EmptyLang!14849) lt!2149978)))))

(assert (=> b!5247019 (=> (not res!2226653) (not e!3264530))))

(declare-fun b!5247020 () Bool)

(declare-fun c!907418 () Bool)

(assert (=> b!5247020 (= c!907418 ((_ is ElementMatch!14849) lt!2149978))))

(assert (=> b!5247020 (= e!3264530 e!3264529)))

(assert (= (and d!1690548 c!907420) b!5247012))

(assert (= (and d!1690548 (not c!907420)) b!5247019))

(assert (= (and b!5247019 res!2226653) b!5247020))

(assert (= (and b!5247020 c!907418) b!5247016))

(assert (= (and b!5247020 (not c!907418)) b!5247013))

(assert (= (and b!5247013 c!907419) b!5247011))

(assert (= (and b!5247013 (not c!907419)) b!5247018))

(assert (= (and b!5247011 (not res!2226652)) b!5247010))

(assert (= (and b!5247018 c!907421) b!5247014))

(assert (= (and b!5247018 (not c!907421)) b!5247015))

(assert (= (and b!5247014 (not res!2226654)) b!5247017))

(assert (= (or b!5247017 b!5247015) bm!371740))

(assert (= (or b!5247012 b!5247014) bm!371741))

(declare-fun m!6290798 () Bool)

(assert (=> bm!371740 m!6290798))

(declare-fun m!6290800 () Bool)

(assert (=> b!5247010 m!6290800))

(declare-fun m!6290804 () Bool)

(assert (=> b!5247011 m!6290804))

(declare-fun m!6290806 () Bool)

(assert (=> bm!371741 m!6290806))

(assert (=> b!5246506 d!1690548))

(declare-fun bs!1217579 () Bool)

(declare-fun d!1690580 () Bool)

(assert (= bs!1217579 (and d!1690580 b!5246495)))

(declare-fun lambda!264090 () Int)

(assert (=> bs!1217579 (= lambda!264090 lambda!264045)))

(declare-fun bs!1217581 () Bool)

(assert (= bs!1217581 (and d!1690580 d!1690536)))

(assert (=> bs!1217581 (= lambda!264090 lambda!264081)))

(declare-fun b!5247035 () Bool)

(declare-fun e!3264541 () Bool)

(declare-fun e!3264540 () Bool)

(assert (=> b!5247035 (= e!3264541 e!3264540)))

(declare-fun c!907428 () Bool)

(assert (=> b!5247035 (= c!907428 (isEmpty!32660 lt!2149972))))

(declare-fun b!5247036 () Bool)

(declare-fun e!3264539 () Bool)

(declare-fun lt!2150069 () Regex!14849)

(assert (=> b!5247036 (= e!3264539 (isConcat!322 lt!2150069))))

(declare-fun b!5247037 () Bool)

(assert (=> b!5247037 (= e!3264539 (= lt!2150069 (head!11246 lt!2149972)))))

(assert (=> d!1690580 e!3264541))

(declare-fun res!2226663 () Bool)

(assert (=> d!1690580 (=> (not res!2226663) (not e!3264541))))

(assert (=> d!1690580 (= res!2226663 (validRegex!6585 lt!2150069))))

(declare-fun e!3264542 () Regex!14849)

(assert (=> d!1690580 (= lt!2150069 e!3264542)))

(declare-fun c!907426 () Bool)

(declare-fun e!3264544 () Bool)

(assert (=> d!1690580 (= c!907426 e!3264544)))

(declare-fun res!2226664 () Bool)

(assert (=> d!1690580 (=> (not res!2226664) (not e!3264544))))

(assert (=> d!1690580 (= res!2226664 ((_ is Cons!60723) lt!2149972))))

(assert (=> d!1690580 (forall!14273 lt!2149972 lambda!264090)))

(assert (=> d!1690580 (= (generalisedConcat!518 lt!2149972) lt!2150069)))

(declare-fun b!5247038 () Bool)

(assert (=> b!5247038 (= e!3264544 (isEmpty!32660 (t!374030 lt!2149972)))))

(declare-fun b!5247039 () Bool)

(assert (=> b!5247039 (= e!3264540 e!3264539)))

(declare-fun c!907425 () Bool)

(assert (=> b!5247039 (= c!907425 (isEmpty!32660 (tail!10343 lt!2149972)))))

(declare-fun b!5247040 () Bool)

(assert (=> b!5247040 (= e!3264542 (h!67171 lt!2149972))))

(declare-fun b!5247041 () Bool)

(declare-fun e!3264543 () Regex!14849)

(assert (=> b!5247041 (= e!3264543 EmptyExpr!14849)))

(declare-fun b!5247042 () Bool)

(assert (=> b!5247042 (= e!3264543 (Concat!23694 (h!67171 lt!2149972) (generalisedConcat!518 (t!374030 lt!2149972))))))

(declare-fun b!5247043 () Bool)

(assert (=> b!5247043 (= e!3264540 (isEmptyExpr!799 lt!2150069))))

(declare-fun b!5247044 () Bool)

(assert (=> b!5247044 (= e!3264542 e!3264543)))

(declare-fun c!907427 () Bool)

(assert (=> b!5247044 (= c!907427 ((_ is Cons!60723) lt!2149972))))

(assert (= (and d!1690580 res!2226664) b!5247038))

(assert (= (and d!1690580 c!907426) b!5247040))

(assert (= (and d!1690580 (not c!907426)) b!5247044))

(assert (= (and b!5247044 c!907427) b!5247042))

(assert (= (and b!5247044 (not c!907427)) b!5247041))

(assert (= (and d!1690580 res!2226663) b!5247035))

(assert (= (and b!5247035 c!907428) b!5247043))

(assert (= (and b!5247035 (not c!907428)) b!5247039))

(assert (= (and b!5247039 c!907425) b!5247037))

(assert (= (and b!5247039 (not c!907425)) b!5247036))

(declare-fun m!6290814 () Bool)

(assert (=> b!5247035 m!6290814))

(declare-fun m!6290816 () Bool)

(assert (=> b!5247042 m!6290816))

(declare-fun m!6290818 () Bool)

(assert (=> b!5247036 m!6290818))

(declare-fun m!6290820 () Bool)

(assert (=> d!1690580 m!6290820))

(declare-fun m!6290822 () Bool)

(assert (=> d!1690580 m!6290822))

(declare-fun m!6290824 () Bool)

(assert (=> b!5247039 m!6290824))

(assert (=> b!5247039 m!6290824))

(declare-fun m!6290826 () Bool)

(assert (=> b!5247039 m!6290826))

(declare-fun m!6290828 () Bool)

(assert (=> b!5247037 m!6290828))

(declare-fun m!6290830 () Bool)

(assert (=> b!5247038 m!6290830))

(declare-fun m!6290832 () Bool)

(assert (=> b!5247043 m!6290832))

(assert (=> b!5246506 d!1690580))

(declare-fun d!1690586 () Bool)

(assert (=> d!1690586 (= (matchR!7034 lt!2149979 s!2326) (matchRSpec!1952 lt!2149979 s!2326))))

(declare-fun lt!2150076 () Unit!152806)

(declare-fun choose!39078 (Regex!14849 List!60846) Unit!152806)

(assert (=> d!1690586 (= lt!2150076 (choose!39078 lt!2149979 s!2326))))

(assert (=> d!1690586 (validRegex!6585 lt!2149979)))

(assert (=> d!1690586 (= (mainMatchTheorem!1952 lt!2149979 s!2326) lt!2150076)))

(declare-fun bs!1217583 () Bool)

(assert (= bs!1217583 d!1690586))

(assert (=> bs!1217583 m!6290252))

(assert (=> bs!1217583 m!6290272))

(declare-fun m!6290838 () Bool)

(assert (=> bs!1217583 m!6290838))

(assert (=> bs!1217583 m!6290674))

(assert (=> b!5246506 d!1690586))

(declare-fun d!1690588 () Bool)

(declare-fun c!907431 () Bool)

(assert (=> d!1690588 (= c!907431 (isEmpty!32663 s!2326))))

(declare-fun e!3264570 () Bool)

(assert (=> d!1690588 (= (matchZipper!1093 lt!2149989 s!2326) e!3264570)))

(declare-fun b!5247103 () Bool)

(declare-fun nullableZipper!1264 ((InoxSet Context!8466)) Bool)

(assert (=> b!5247103 (= e!3264570 (nullableZipper!1264 lt!2149989))))

(declare-fun b!5247104 () Bool)

(declare-fun derivationStepZipper!1108 ((InoxSet Context!8466) C!29968) (InoxSet Context!8466))

(declare-fun head!11247 (List!60846) C!29968)

(declare-fun tail!10344 (List!60846) List!60846)

(assert (=> b!5247104 (= e!3264570 (matchZipper!1093 (derivationStepZipper!1108 lt!2149989 (head!11247 s!2326)) (tail!10344 s!2326)))))

(assert (= (and d!1690588 c!907431) b!5247103))

(assert (= (and d!1690588 (not c!907431)) b!5247104))

(assert (=> d!1690588 m!6290806))

(declare-fun m!6290842 () Bool)

(assert (=> b!5247103 m!6290842))

(declare-fun m!6290844 () Bool)

(assert (=> b!5247104 m!6290844))

(assert (=> b!5247104 m!6290844))

(declare-fun m!6290846 () Bool)

(assert (=> b!5247104 m!6290846))

(declare-fun m!6290848 () Bool)

(assert (=> b!5247104 m!6290848))

(assert (=> b!5247104 m!6290846))

(assert (=> b!5247104 m!6290848))

(declare-fun m!6290850 () Bool)

(assert (=> b!5247104 m!6290850))

(assert (=> b!5246506 d!1690588))

(declare-fun b!5247133 () Bool)

(declare-fun e!3264586 () Bool)

(declare-fun e!3264589 () Bool)

(assert (=> b!5247133 (= e!3264586 e!3264589)))

(declare-fun res!2226687 () Bool)

(assert (=> b!5247133 (=> (not res!2226687) (not e!3264589))))

(declare-fun lt!2150079 () Bool)

(assert (=> b!5247133 (= res!2226687 (not lt!2150079))))

(declare-fun b!5247134 () Bool)

(declare-fun res!2226682 () Bool)

(declare-fun e!3264591 () Bool)

(assert (=> b!5247134 (=> (not res!2226682) (not e!3264591))))

(declare-fun call!371750 () Bool)

(assert (=> b!5247134 (= res!2226682 (not call!371750))))

(declare-fun b!5247135 () Bool)

(declare-fun e!3264588 () Bool)

(assert (=> b!5247135 (= e!3264589 e!3264588)))

(declare-fun res!2226681 () Bool)

(assert (=> b!5247135 (=> res!2226681 e!3264588)))

(assert (=> b!5247135 (= res!2226681 call!371750)))

(declare-fun d!1690598 () Bool)

(declare-fun e!3264590 () Bool)

(assert (=> d!1690598 e!3264590))

(declare-fun c!907438 () Bool)

(assert (=> d!1690598 (= c!907438 ((_ is EmptyExpr!14849) lt!2149979))))

(declare-fun e!3264585 () Bool)

(assert (=> d!1690598 (= lt!2150079 e!3264585)))

(declare-fun c!907440 () Bool)

(assert (=> d!1690598 (= c!907440 (isEmpty!32663 s!2326))))

(assert (=> d!1690598 (validRegex!6585 lt!2149979)))

(assert (=> d!1690598 (= (matchR!7034 lt!2149979 s!2326) lt!2150079)))

(declare-fun b!5247136 () Bool)

(declare-fun res!2226686 () Bool)

(assert (=> b!5247136 (=> res!2226686 e!3264586)))

(assert (=> b!5247136 (= res!2226686 (not ((_ is ElementMatch!14849) lt!2149979)))))

(declare-fun e!3264587 () Bool)

(assert (=> b!5247136 (= e!3264587 e!3264586)))

(declare-fun b!5247137 () Bool)

(declare-fun derivativeStep!4085 (Regex!14849 C!29968) Regex!14849)

(assert (=> b!5247137 (= e!3264585 (matchR!7034 (derivativeStep!4085 lt!2149979 (head!11247 s!2326)) (tail!10344 s!2326)))))

(declare-fun b!5247138 () Bool)

(assert (=> b!5247138 (= e!3264591 (= (head!11247 s!2326) (c!907257 lt!2149979)))))

(declare-fun b!5247139 () Bool)

(assert (=> b!5247139 (= e!3264590 (= lt!2150079 call!371750))))

(declare-fun b!5247140 () Bool)

(declare-fun res!2226685 () Bool)

(assert (=> b!5247140 (=> res!2226685 e!3264588)))

(assert (=> b!5247140 (= res!2226685 (not (isEmpty!32663 (tail!10344 s!2326))))))

(declare-fun b!5247141 () Bool)

(assert (=> b!5247141 (= e!3264587 (not lt!2150079))))

(declare-fun b!5247142 () Bool)

(assert (=> b!5247142 (= e!3264590 e!3264587)))

(declare-fun c!907439 () Bool)

(assert (=> b!5247142 (= c!907439 ((_ is EmptyLang!14849) lt!2149979))))

(declare-fun b!5247143 () Bool)

(assert (=> b!5247143 (= e!3264585 (nullable!5018 lt!2149979))))

(declare-fun b!5247144 () Bool)

(declare-fun res!2226688 () Bool)

(assert (=> b!5247144 (=> res!2226688 e!3264586)))

(assert (=> b!5247144 (= res!2226688 e!3264591)))

(declare-fun res!2226684 () Bool)

(assert (=> b!5247144 (=> (not res!2226684) (not e!3264591))))

(assert (=> b!5247144 (= res!2226684 lt!2150079)))

(declare-fun b!5247145 () Bool)

(declare-fun res!2226683 () Bool)

(assert (=> b!5247145 (=> (not res!2226683) (not e!3264591))))

(assert (=> b!5247145 (= res!2226683 (isEmpty!32663 (tail!10344 s!2326)))))

(declare-fun bm!371745 () Bool)

(assert (=> bm!371745 (= call!371750 (isEmpty!32663 s!2326))))

(declare-fun b!5247146 () Bool)

(assert (=> b!5247146 (= e!3264588 (not (= (head!11247 s!2326) (c!907257 lt!2149979))))))

(assert (= (and d!1690598 c!907440) b!5247143))

(assert (= (and d!1690598 (not c!907440)) b!5247137))

(assert (= (and d!1690598 c!907438) b!5247139))

(assert (= (and d!1690598 (not c!907438)) b!5247142))

(assert (= (and b!5247142 c!907439) b!5247141))

(assert (= (and b!5247142 (not c!907439)) b!5247136))

(assert (= (and b!5247136 (not res!2226686)) b!5247144))

(assert (= (and b!5247144 res!2226684) b!5247134))

(assert (= (and b!5247134 res!2226682) b!5247145))

(assert (= (and b!5247145 res!2226683) b!5247138))

(assert (= (and b!5247144 (not res!2226688)) b!5247133))

(assert (= (and b!5247133 res!2226687) b!5247135))

(assert (= (and b!5247135 (not res!2226681)) b!5247140))

(assert (= (and b!5247140 (not res!2226685)) b!5247146))

(assert (= (or b!5247139 b!5247134 b!5247135) bm!371745))

(assert (=> b!5247146 m!6290844))

(assert (=> b!5247145 m!6290848))

(assert (=> b!5247145 m!6290848))

(declare-fun m!6290854 () Bool)

(assert (=> b!5247145 m!6290854))

(assert (=> bm!371745 m!6290806))

(assert (=> d!1690598 m!6290806))

(assert (=> d!1690598 m!6290674))

(assert (=> b!5247138 m!6290844))

(assert (=> b!5247140 m!6290848))

(assert (=> b!5247140 m!6290848))

(assert (=> b!5247140 m!6290854))

(assert (=> b!5247137 m!6290844))

(assert (=> b!5247137 m!6290844))

(declare-fun m!6290856 () Bool)

(assert (=> b!5247137 m!6290856))

(assert (=> b!5247137 m!6290848))

(assert (=> b!5247137 m!6290856))

(assert (=> b!5247137 m!6290848))

(declare-fun m!6290858 () Bool)

(assert (=> b!5247137 m!6290858))

(declare-fun m!6290860 () Bool)

(assert (=> b!5247143 m!6290860))

(assert (=> b!5246506 d!1690598))

(declare-fun b!5247147 () Bool)

(declare-fun e!3264593 () Bool)

(declare-fun e!3264596 () Bool)

(assert (=> b!5247147 (= e!3264593 e!3264596)))

(declare-fun res!2226695 () Bool)

(assert (=> b!5247147 (=> (not res!2226695) (not e!3264596))))

(declare-fun lt!2150080 () Bool)

(assert (=> b!5247147 (= res!2226695 (not lt!2150080))))

(declare-fun b!5247148 () Bool)

(declare-fun res!2226690 () Bool)

(declare-fun e!3264598 () Bool)

(assert (=> b!5247148 (=> (not res!2226690) (not e!3264598))))

(declare-fun call!371751 () Bool)

(assert (=> b!5247148 (= res!2226690 (not call!371751))))

(declare-fun b!5247149 () Bool)

(declare-fun e!3264595 () Bool)

(assert (=> b!5247149 (= e!3264596 e!3264595)))

(declare-fun res!2226689 () Bool)

(assert (=> b!5247149 (=> res!2226689 e!3264595)))

(assert (=> b!5247149 (= res!2226689 call!371751)))

(declare-fun d!1690600 () Bool)

(declare-fun e!3264597 () Bool)

(assert (=> d!1690600 e!3264597))

(declare-fun c!907441 () Bool)

(assert (=> d!1690600 (= c!907441 ((_ is EmptyExpr!14849) lt!2149978))))

(declare-fun e!3264592 () Bool)

(assert (=> d!1690600 (= lt!2150080 e!3264592)))

(declare-fun c!907443 () Bool)

(assert (=> d!1690600 (= c!907443 (isEmpty!32663 s!2326))))

(assert (=> d!1690600 (validRegex!6585 lt!2149978)))

(assert (=> d!1690600 (= (matchR!7034 lt!2149978 s!2326) lt!2150080)))

(declare-fun b!5247150 () Bool)

(declare-fun res!2226694 () Bool)

(assert (=> b!5247150 (=> res!2226694 e!3264593)))

(assert (=> b!5247150 (= res!2226694 (not ((_ is ElementMatch!14849) lt!2149978)))))

(declare-fun e!3264594 () Bool)

(assert (=> b!5247150 (= e!3264594 e!3264593)))

(declare-fun b!5247151 () Bool)

(assert (=> b!5247151 (= e!3264592 (matchR!7034 (derivativeStep!4085 lt!2149978 (head!11247 s!2326)) (tail!10344 s!2326)))))

(declare-fun b!5247152 () Bool)

(assert (=> b!5247152 (= e!3264598 (= (head!11247 s!2326) (c!907257 lt!2149978)))))

(declare-fun b!5247153 () Bool)

(assert (=> b!5247153 (= e!3264597 (= lt!2150080 call!371751))))

(declare-fun b!5247154 () Bool)

(declare-fun res!2226693 () Bool)

(assert (=> b!5247154 (=> res!2226693 e!3264595)))

(assert (=> b!5247154 (= res!2226693 (not (isEmpty!32663 (tail!10344 s!2326))))))

(declare-fun b!5247155 () Bool)

(assert (=> b!5247155 (= e!3264594 (not lt!2150080))))

(declare-fun b!5247156 () Bool)

(assert (=> b!5247156 (= e!3264597 e!3264594)))

(declare-fun c!907442 () Bool)

(assert (=> b!5247156 (= c!907442 ((_ is EmptyLang!14849) lt!2149978))))

(declare-fun b!5247157 () Bool)

(assert (=> b!5247157 (= e!3264592 (nullable!5018 lt!2149978))))

(declare-fun b!5247158 () Bool)

(declare-fun res!2226696 () Bool)

(assert (=> b!5247158 (=> res!2226696 e!3264593)))

(assert (=> b!5247158 (= res!2226696 e!3264598)))

(declare-fun res!2226692 () Bool)

(assert (=> b!5247158 (=> (not res!2226692) (not e!3264598))))

(assert (=> b!5247158 (= res!2226692 lt!2150080)))

(declare-fun b!5247159 () Bool)

(declare-fun res!2226691 () Bool)

(assert (=> b!5247159 (=> (not res!2226691) (not e!3264598))))

(assert (=> b!5247159 (= res!2226691 (isEmpty!32663 (tail!10344 s!2326)))))

(declare-fun bm!371746 () Bool)

(assert (=> bm!371746 (= call!371751 (isEmpty!32663 s!2326))))

(declare-fun b!5247160 () Bool)

(assert (=> b!5247160 (= e!3264595 (not (= (head!11247 s!2326) (c!907257 lt!2149978))))))

(assert (= (and d!1690600 c!907443) b!5247157))

(assert (= (and d!1690600 (not c!907443)) b!5247151))

(assert (= (and d!1690600 c!907441) b!5247153))

(assert (= (and d!1690600 (not c!907441)) b!5247156))

(assert (= (and b!5247156 c!907442) b!5247155))

(assert (= (and b!5247156 (not c!907442)) b!5247150))

(assert (= (and b!5247150 (not res!2226694)) b!5247158))

(assert (= (and b!5247158 res!2226692) b!5247148))

(assert (= (and b!5247148 res!2226690) b!5247159))

(assert (= (and b!5247159 res!2226691) b!5247152))

(assert (= (and b!5247158 (not res!2226696)) b!5247147))

(assert (= (and b!5247147 res!2226695) b!5247149))

(assert (= (and b!5247149 (not res!2226689)) b!5247154))

(assert (= (and b!5247154 (not res!2226693)) b!5247160))

(assert (= (or b!5247153 b!5247148 b!5247149) bm!371746))

(assert (=> b!5247160 m!6290844))

(assert (=> b!5247159 m!6290848))

(assert (=> b!5247159 m!6290848))

(assert (=> b!5247159 m!6290854))

(assert (=> bm!371746 m!6290806))

(assert (=> d!1690600 m!6290806))

(assert (=> d!1690600 m!6290678))

(assert (=> b!5247152 m!6290844))

(assert (=> b!5247154 m!6290848))

(assert (=> b!5247154 m!6290848))

(assert (=> b!5247154 m!6290854))

(assert (=> b!5247151 m!6290844))

(assert (=> b!5247151 m!6290844))

(declare-fun m!6290862 () Bool)

(assert (=> b!5247151 m!6290862))

(assert (=> b!5247151 m!6290848))

(assert (=> b!5247151 m!6290862))

(assert (=> b!5247151 m!6290848))

(declare-fun m!6290864 () Bool)

(assert (=> b!5247151 m!6290864))

(declare-fun m!6290866 () Bool)

(assert (=> b!5247157 m!6290866))

(assert (=> b!5246506 d!1690600))

(declare-fun d!1690602 () Bool)

(assert (=> d!1690602 (= (matchR!7034 lt!2149978 s!2326) (matchRSpec!1952 lt!2149978 s!2326))))

(declare-fun lt!2150081 () Unit!152806)

(assert (=> d!1690602 (= lt!2150081 (choose!39078 lt!2149978 s!2326))))

(assert (=> d!1690602 (validRegex!6585 lt!2149978)))

(assert (=> d!1690602 (= (mainMatchTheorem!1952 lt!2149978 s!2326) lt!2150081)))

(declare-fun bs!1217588 () Bool)

(assert (= bs!1217588 d!1690602))

(assert (=> bs!1217588 m!6290268))

(assert (=> bs!1217588 m!6290262))

(declare-fun m!6290868 () Bool)

(assert (=> bs!1217588 m!6290868))

(assert (=> bs!1217588 m!6290678))

(assert (=> b!5246506 d!1690602))

(declare-fun bs!1217589 () Bool)

(declare-fun b!5247168 () Bool)

(assert (= bs!1217589 (and b!5247168 b!5246505)))

(declare-fun lambda!264091 () Int)

(assert (=> bs!1217589 (not (= lambda!264091 lambda!264042))))

(assert (=> bs!1217589 (not (= lambda!264091 lambda!264043))))

(declare-fun bs!1217590 () Bool)

(assert (= bs!1217590 (and b!5247168 b!5247017)))

(assert (=> bs!1217590 (= (and (= (reg!15178 lt!2149979) (reg!15178 lt!2149978)) (= lt!2149979 lt!2149978)) (= lambda!264091 lambda!264088))))

(declare-fun bs!1217591 () Bool)

(assert (= bs!1217591 (and b!5247168 b!5247015)))

(assert (=> bs!1217591 (not (= lambda!264091 lambda!264089))))

(assert (=> b!5247168 true))

(assert (=> b!5247168 true))

(declare-fun bs!1217592 () Bool)

(declare-fun b!5247166 () Bool)

(assert (= bs!1217592 (and b!5247166 b!5246505)))

(declare-fun lambda!264092 () Int)

(assert (=> bs!1217592 (= (and (= (regOne!30210 lt!2149979) (regOne!30210 r!7292)) (= (regTwo!30210 lt!2149979) (regTwo!30210 r!7292))) (= lambda!264092 lambda!264043))))

(declare-fun bs!1217593 () Bool)

(assert (= bs!1217593 (and b!5247166 b!5247017)))

(assert (=> bs!1217593 (not (= lambda!264092 lambda!264088))))

(declare-fun bs!1217594 () Bool)

(assert (= bs!1217594 (and b!5247166 b!5247015)))

(assert (=> bs!1217594 (= (and (= (regOne!30210 lt!2149979) (regOne!30210 lt!2149978)) (= (regTwo!30210 lt!2149979) (regTwo!30210 lt!2149978))) (= lambda!264092 lambda!264089))))

(declare-fun bs!1217595 () Bool)

(assert (= bs!1217595 (and b!5247166 b!5247168)))

(assert (=> bs!1217595 (not (= lambda!264092 lambda!264091))))

(assert (=> bs!1217592 (not (= lambda!264092 lambda!264042))))

(assert (=> b!5247166 true))

(assert (=> b!5247166 true))

(declare-fun d!1690604 () Bool)

(declare-fun c!907446 () Bool)

(assert (=> d!1690604 (= c!907446 ((_ is EmptyExpr!14849) lt!2149979))))

(declare-fun e!3264599 () Bool)

(assert (=> d!1690604 (= (matchRSpec!1952 lt!2149979 s!2326) e!3264599)))

(declare-fun c!907447 () Bool)

(declare-fun call!371753 () Bool)

(declare-fun bm!371747 () Bool)

(assert (=> bm!371747 (= call!371753 (Exists!2030 (ite c!907447 lambda!264091 lambda!264092)))))

(declare-fun b!5247161 () Bool)

(declare-fun e!3264600 () Bool)

(assert (=> b!5247161 (= e!3264600 (matchRSpec!1952 (regTwo!30211 lt!2149979) s!2326))))

(declare-fun b!5247162 () Bool)

(declare-fun e!3264605 () Bool)

(assert (=> b!5247162 (= e!3264605 e!3264600)))

(declare-fun res!2226697 () Bool)

(assert (=> b!5247162 (= res!2226697 (matchRSpec!1952 (regOne!30211 lt!2149979) s!2326))))

(assert (=> b!5247162 (=> res!2226697 e!3264600)))

(declare-fun b!5247163 () Bool)

(declare-fun call!371752 () Bool)

(assert (=> b!5247163 (= e!3264599 call!371752)))

(declare-fun b!5247164 () Bool)

(declare-fun c!907445 () Bool)

(assert (=> b!5247164 (= c!907445 ((_ is Union!14849) lt!2149979))))

(declare-fun e!3264603 () Bool)

(assert (=> b!5247164 (= e!3264603 e!3264605)))

(declare-fun bm!371748 () Bool)

(assert (=> bm!371748 (= call!371752 (isEmpty!32663 s!2326))))

(declare-fun b!5247165 () Bool)

(declare-fun res!2226699 () Bool)

(declare-fun e!3264602 () Bool)

(assert (=> b!5247165 (=> res!2226699 e!3264602)))

(assert (=> b!5247165 (= res!2226699 call!371752)))

(declare-fun e!3264601 () Bool)

(assert (=> b!5247165 (= e!3264601 e!3264602)))

(assert (=> b!5247166 (= e!3264601 call!371753)))

(declare-fun b!5247167 () Bool)

(assert (=> b!5247167 (= e!3264603 (= s!2326 (Cons!60722 (c!907257 lt!2149979) Nil!60722)))))

(assert (=> b!5247168 (= e!3264602 call!371753)))

(declare-fun b!5247169 () Bool)

(assert (=> b!5247169 (= e!3264605 e!3264601)))

(assert (=> b!5247169 (= c!907447 ((_ is Star!14849) lt!2149979))))

(declare-fun b!5247170 () Bool)

(declare-fun e!3264604 () Bool)

(assert (=> b!5247170 (= e!3264599 e!3264604)))

(declare-fun res!2226698 () Bool)

(assert (=> b!5247170 (= res!2226698 (not ((_ is EmptyLang!14849) lt!2149979)))))

(assert (=> b!5247170 (=> (not res!2226698) (not e!3264604))))

(declare-fun b!5247171 () Bool)

(declare-fun c!907444 () Bool)

(assert (=> b!5247171 (= c!907444 ((_ is ElementMatch!14849) lt!2149979))))

(assert (=> b!5247171 (= e!3264604 e!3264603)))

(assert (= (and d!1690604 c!907446) b!5247163))

(assert (= (and d!1690604 (not c!907446)) b!5247170))

(assert (= (and b!5247170 res!2226698) b!5247171))

(assert (= (and b!5247171 c!907444) b!5247167))

(assert (= (and b!5247171 (not c!907444)) b!5247164))

(assert (= (and b!5247164 c!907445) b!5247162))

(assert (= (and b!5247164 (not c!907445)) b!5247169))

(assert (= (and b!5247162 (not res!2226697)) b!5247161))

(assert (= (and b!5247169 c!907447) b!5247165))

(assert (= (and b!5247169 (not c!907447)) b!5247166))

(assert (= (and b!5247165 (not res!2226699)) b!5247168))

(assert (= (or b!5247168 b!5247166) bm!371747))

(assert (= (or b!5247163 b!5247165) bm!371748))

(declare-fun m!6290870 () Bool)

(assert (=> bm!371747 m!6290870))

(declare-fun m!6290872 () Bool)

(assert (=> b!5247161 m!6290872))

(declare-fun m!6290874 () Bool)

(assert (=> b!5247162 m!6290874))

(assert (=> bm!371748 m!6290806))

(assert (=> b!5246506 d!1690604))

(declare-fun b!5247190 () Bool)

(declare-fun res!2226710 () Bool)

(declare-fun e!3264620 () Bool)

(assert (=> b!5247190 (=> (not res!2226710) (not e!3264620))))

(declare-fun lt!2150090 () Option!14960)

(declare-fun get!20874 (Option!14960) tuple2!64096)

(assert (=> b!5247190 (= res!2226710 (matchR!7034 (regTwo!30210 r!7292) (_2!35351 (get!20874 lt!2150090))))))

(declare-fun b!5247191 () Bool)

(declare-fun e!3264616 () Option!14960)

(assert (=> b!5247191 (= e!3264616 (Some!14959 (tuple2!64097 Nil!60722 s!2326)))))

(declare-fun b!5247192 () Bool)

(declare-fun res!2226713 () Bool)

(assert (=> b!5247192 (=> (not res!2226713) (not e!3264620))))

(assert (=> b!5247192 (= res!2226713 (matchR!7034 (regOne!30210 r!7292) (_1!35351 (get!20874 lt!2150090))))))

(declare-fun b!5247193 () Bool)

(declare-fun e!3264618 () Option!14960)

(assert (=> b!5247193 (= e!3264616 e!3264618)))

(declare-fun c!907453 () Bool)

(assert (=> b!5247193 (= c!907453 ((_ is Nil!60722) s!2326))))

(declare-fun b!5247195 () Bool)

(declare-fun e!3264617 () Bool)

(assert (=> b!5247195 (= e!3264617 (matchR!7034 (regTwo!30210 r!7292) s!2326))))

(declare-fun b!5247196 () Bool)

(declare-fun ++!13244 (List!60846 List!60846) List!60846)

(assert (=> b!5247196 (= e!3264620 (= (++!13244 (_1!35351 (get!20874 lt!2150090)) (_2!35351 (get!20874 lt!2150090))) s!2326))))

(declare-fun b!5247194 () Bool)

(assert (=> b!5247194 (= e!3264618 None!14959)))

(declare-fun d!1690606 () Bool)

(declare-fun e!3264619 () Bool)

(assert (=> d!1690606 e!3264619))

(declare-fun res!2226712 () Bool)

(assert (=> d!1690606 (=> res!2226712 e!3264619)))

(assert (=> d!1690606 (= res!2226712 e!3264620)))

(declare-fun res!2226714 () Bool)

(assert (=> d!1690606 (=> (not res!2226714) (not e!3264620))))

(assert (=> d!1690606 (= res!2226714 (isDefined!11663 lt!2150090))))

(assert (=> d!1690606 (= lt!2150090 e!3264616)))

(declare-fun c!907452 () Bool)

(assert (=> d!1690606 (= c!907452 e!3264617)))

(declare-fun res!2226711 () Bool)

(assert (=> d!1690606 (=> (not res!2226711) (not e!3264617))))

(assert (=> d!1690606 (= res!2226711 (matchR!7034 (regOne!30210 r!7292) Nil!60722))))

(assert (=> d!1690606 (validRegex!6585 (regOne!30210 r!7292))))

(assert (=> d!1690606 (= (findConcatSeparation!1374 (regOne!30210 r!7292) (regTwo!30210 r!7292) Nil!60722 s!2326 s!2326) lt!2150090)))

(declare-fun b!5247197 () Bool)

(declare-fun lt!2150088 () Unit!152806)

(declare-fun lt!2150089 () Unit!152806)

(assert (=> b!5247197 (= lt!2150088 lt!2150089)))

(assert (=> b!5247197 (= (++!13244 (++!13244 Nil!60722 (Cons!60722 (h!67170 s!2326) Nil!60722)) (t!374029 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1659 (List!60846 C!29968 List!60846 List!60846) Unit!152806)

(assert (=> b!5247197 (= lt!2150089 (lemmaMoveElementToOtherListKeepsConcatEq!1659 Nil!60722 (h!67170 s!2326) (t!374029 s!2326) s!2326))))

(assert (=> b!5247197 (= e!3264618 (findConcatSeparation!1374 (regOne!30210 r!7292) (regTwo!30210 r!7292) (++!13244 Nil!60722 (Cons!60722 (h!67170 s!2326) Nil!60722)) (t!374029 s!2326) s!2326))))

(declare-fun b!5247198 () Bool)

(assert (=> b!5247198 (= e!3264619 (not (isDefined!11663 lt!2150090)))))

(assert (= (and d!1690606 res!2226711) b!5247195))

(assert (= (and d!1690606 c!907452) b!5247191))

(assert (= (and d!1690606 (not c!907452)) b!5247193))

(assert (= (and b!5247193 c!907453) b!5247194))

(assert (= (and b!5247193 (not c!907453)) b!5247197))

(assert (= (and d!1690606 res!2226714) b!5247192))

(assert (= (and b!5247192 res!2226713) b!5247190))

(assert (= (and b!5247190 res!2226710) b!5247196))

(assert (= (and d!1690606 (not res!2226712)) b!5247198))

(declare-fun m!6290876 () Bool)

(assert (=> d!1690606 m!6290876))

(declare-fun m!6290878 () Bool)

(assert (=> d!1690606 m!6290878))

(declare-fun m!6290880 () Bool)

(assert (=> d!1690606 m!6290880))

(declare-fun m!6290882 () Bool)

(assert (=> b!5247195 m!6290882))

(declare-fun m!6290884 () Bool)

(assert (=> b!5247192 m!6290884))

(declare-fun m!6290886 () Bool)

(assert (=> b!5247192 m!6290886))

(assert (=> b!5247196 m!6290884))

(declare-fun m!6290888 () Bool)

(assert (=> b!5247196 m!6290888))

(assert (=> b!5247198 m!6290876))

(declare-fun m!6290890 () Bool)

(assert (=> b!5247197 m!6290890))

(assert (=> b!5247197 m!6290890))

(declare-fun m!6290892 () Bool)

(assert (=> b!5247197 m!6290892))

(declare-fun m!6290894 () Bool)

(assert (=> b!5247197 m!6290894))

(assert (=> b!5247197 m!6290890))

(declare-fun m!6290896 () Bool)

(assert (=> b!5247197 m!6290896))

(assert (=> b!5247190 m!6290884))

(declare-fun m!6290898 () Bool)

(assert (=> b!5247190 m!6290898))

(assert (=> b!5246505 d!1690606))

(declare-fun d!1690608 () Bool)

(declare-fun choose!39079 (Int) Bool)

(assert (=> d!1690608 (= (Exists!2030 lambda!264042) (choose!39079 lambda!264042))))

(declare-fun bs!1217596 () Bool)

(assert (= bs!1217596 d!1690608))

(declare-fun m!6290900 () Bool)

(assert (=> bs!1217596 m!6290900))

(assert (=> b!5246505 d!1690608))

(declare-fun bs!1217597 () Bool)

(declare-fun d!1690610 () Bool)

(assert (= bs!1217597 (and d!1690610 b!5246505)))

(declare-fun lambda!264097 () Int)

(assert (=> bs!1217597 (not (= lambda!264097 lambda!264043))))

(declare-fun bs!1217598 () Bool)

(assert (= bs!1217598 (and d!1690610 b!5247166)))

(assert (=> bs!1217598 (not (= lambda!264097 lambda!264092))))

(declare-fun bs!1217599 () Bool)

(assert (= bs!1217599 (and d!1690610 b!5247017)))

(assert (=> bs!1217599 (not (= lambda!264097 lambda!264088))))

(declare-fun bs!1217600 () Bool)

(assert (= bs!1217600 (and d!1690610 b!5247015)))

(assert (=> bs!1217600 (not (= lambda!264097 lambda!264089))))

(declare-fun bs!1217601 () Bool)

(assert (= bs!1217601 (and d!1690610 b!5247168)))

(assert (=> bs!1217601 (not (= lambda!264097 lambda!264091))))

(assert (=> bs!1217597 (= lambda!264097 lambda!264042)))

(assert (=> d!1690610 true))

(assert (=> d!1690610 true))

(assert (=> d!1690610 true))

(declare-fun lambda!264098 () Int)

(assert (=> bs!1217597 (= lambda!264098 lambda!264043)))

(assert (=> bs!1217598 (= (and (= (regOne!30210 r!7292) (regOne!30210 lt!2149979)) (= (regTwo!30210 r!7292) (regTwo!30210 lt!2149979))) (= lambda!264098 lambda!264092))))

(assert (=> bs!1217599 (not (= lambda!264098 lambda!264088))))

(declare-fun bs!1217602 () Bool)

(assert (= bs!1217602 d!1690610))

(assert (=> bs!1217602 (not (= lambda!264098 lambda!264097))))

(assert (=> bs!1217600 (= (and (= (regOne!30210 r!7292) (regOne!30210 lt!2149978)) (= (regTwo!30210 r!7292) (regTwo!30210 lt!2149978))) (= lambda!264098 lambda!264089))))

(assert (=> bs!1217601 (not (= lambda!264098 lambda!264091))))

(assert (=> bs!1217597 (not (= lambda!264098 lambda!264042))))

(assert (=> d!1690610 true))

(assert (=> d!1690610 true))

(assert (=> d!1690610 true))

(assert (=> d!1690610 (= (Exists!2030 lambda!264097) (Exists!2030 lambda!264098))))

(declare-fun lt!2150093 () Unit!152806)

(declare-fun choose!39081 (Regex!14849 Regex!14849 List!60846) Unit!152806)

(assert (=> d!1690610 (= lt!2150093 (choose!39081 (regOne!30210 r!7292) (regTwo!30210 r!7292) s!2326))))

(assert (=> d!1690610 (validRegex!6585 (regOne!30210 r!7292))))

(assert (=> d!1690610 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!684 (regOne!30210 r!7292) (regTwo!30210 r!7292) s!2326) lt!2150093)))

(declare-fun m!6290902 () Bool)

(assert (=> bs!1217602 m!6290902))

(declare-fun m!6290904 () Bool)

(assert (=> bs!1217602 m!6290904))

(declare-fun m!6290906 () Bool)

(assert (=> bs!1217602 m!6290906))

(assert (=> bs!1217602 m!6290880))

(assert (=> b!5246505 d!1690610))

(declare-fun d!1690612 () Bool)

(declare-fun isEmpty!32664 (Option!14960) Bool)

(assert (=> d!1690612 (= (isDefined!11663 (findConcatSeparation!1374 (regOne!30210 r!7292) (regTwo!30210 r!7292) Nil!60722 s!2326 s!2326)) (not (isEmpty!32664 (findConcatSeparation!1374 (regOne!30210 r!7292) (regTwo!30210 r!7292) Nil!60722 s!2326 s!2326))))))

(declare-fun bs!1217603 () Bool)

(assert (= bs!1217603 d!1690612))

(assert (=> bs!1217603 m!6290316))

(declare-fun m!6290908 () Bool)

(assert (=> bs!1217603 m!6290908))

(assert (=> b!5246505 d!1690612))

(declare-fun bs!1217604 () Bool)

(declare-fun d!1690614 () Bool)

(assert (= bs!1217604 (and d!1690614 d!1690610)))

(declare-fun lambda!264101 () Int)

(assert (=> bs!1217604 (not (= lambda!264101 lambda!264098))))

(declare-fun bs!1217605 () Bool)

(assert (= bs!1217605 (and d!1690614 b!5246505)))

(assert (=> bs!1217605 (not (= lambda!264101 lambda!264043))))

(declare-fun bs!1217606 () Bool)

(assert (= bs!1217606 (and d!1690614 b!5247166)))

(assert (=> bs!1217606 (not (= lambda!264101 lambda!264092))))

(declare-fun bs!1217607 () Bool)

(assert (= bs!1217607 (and d!1690614 b!5247017)))

(assert (=> bs!1217607 (not (= lambda!264101 lambda!264088))))

(assert (=> bs!1217604 (= lambda!264101 lambda!264097)))

(declare-fun bs!1217608 () Bool)

(assert (= bs!1217608 (and d!1690614 b!5247015)))

(assert (=> bs!1217608 (not (= lambda!264101 lambda!264089))))

(declare-fun bs!1217609 () Bool)

(assert (= bs!1217609 (and d!1690614 b!5247168)))

(assert (=> bs!1217609 (not (= lambda!264101 lambda!264091))))

(assert (=> bs!1217605 (= lambda!264101 lambda!264042)))

(assert (=> d!1690614 true))

(assert (=> d!1690614 true))

(assert (=> d!1690614 true))

(assert (=> d!1690614 (= (isDefined!11663 (findConcatSeparation!1374 (regOne!30210 r!7292) (regTwo!30210 r!7292) Nil!60722 s!2326 s!2326)) (Exists!2030 lambda!264101))))

(declare-fun lt!2150096 () Unit!152806)

(declare-fun choose!39082 (Regex!14849 Regex!14849 List!60846) Unit!152806)

(assert (=> d!1690614 (= lt!2150096 (choose!39082 (regOne!30210 r!7292) (regTwo!30210 r!7292) s!2326))))

(assert (=> d!1690614 (validRegex!6585 (regOne!30210 r!7292))))

(assert (=> d!1690614 (= (lemmaFindConcatSeparationEquivalentToExists!1138 (regOne!30210 r!7292) (regTwo!30210 r!7292) s!2326) lt!2150096)))

(declare-fun bs!1217610 () Bool)

(assert (= bs!1217610 d!1690614))

(assert (=> bs!1217610 m!6290316))

(assert (=> bs!1217610 m!6290318))

(declare-fun m!6290910 () Bool)

(assert (=> bs!1217610 m!6290910))

(declare-fun m!6290912 () Bool)

(assert (=> bs!1217610 m!6290912))

(assert (=> bs!1217610 m!6290316))

(assert (=> bs!1217610 m!6290880))

(assert (=> b!5246505 d!1690614))

(declare-fun d!1690616 () Bool)

(assert (=> d!1690616 (= (Exists!2030 lambda!264043) (choose!39079 lambda!264043))))

(declare-fun bs!1217611 () Bool)

(assert (= bs!1217611 d!1690616))

(declare-fun m!6290914 () Bool)

(assert (=> bs!1217611 m!6290914))

(assert (=> b!5246505 d!1690616))

(declare-fun d!1690618 () Bool)

(declare-fun e!3264629 () Bool)

(assert (=> d!1690618 (= (matchZipper!1093 ((_ map or) lt!2149983 lt!2150000) (t!374029 s!2326)) e!3264629)))

(declare-fun res!2226729 () Bool)

(assert (=> d!1690618 (=> res!2226729 e!3264629)))

(assert (=> d!1690618 (= res!2226729 (matchZipper!1093 lt!2149983 (t!374029 s!2326)))))

(declare-fun lt!2150099 () Unit!152806)

(declare-fun choose!39083 ((InoxSet Context!8466) (InoxSet Context!8466) List!60846) Unit!152806)

(assert (=> d!1690618 (= lt!2150099 (choose!39083 lt!2149983 lt!2150000 (t!374029 s!2326)))))

(assert (=> d!1690618 (= (lemmaZipperConcatMatchesSameAsBothZippers!86 lt!2149983 lt!2150000 (t!374029 s!2326)) lt!2150099)))

(declare-fun b!5247213 () Bool)

(assert (=> b!5247213 (= e!3264629 (matchZipper!1093 lt!2150000 (t!374029 s!2326)))))

(assert (= (and d!1690618 (not res!2226729)) b!5247213))

(assert (=> d!1690618 m!6290348))

(assert (=> d!1690618 m!6290354))

(declare-fun m!6290916 () Bool)

(assert (=> d!1690618 m!6290916))

(assert (=> b!5247213 m!6290326))

(assert (=> b!5246485 d!1690618))

(declare-fun d!1690620 () Bool)

(declare-fun c!907454 () Bool)

(assert (=> d!1690620 (= c!907454 (isEmpty!32663 (t!374029 s!2326)))))

(declare-fun e!3264630 () Bool)

(assert (=> d!1690620 (= (matchZipper!1093 ((_ map or) lt!2149983 lt!2150000) (t!374029 s!2326)) e!3264630)))

(declare-fun b!5247214 () Bool)

(assert (=> b!5247214 (= e!3264630 (nullableZipper!1264 ((_ map or) lt!2149983 lt!2150000)))))

(declare-fun b!5247215 () Bool)

(assert (=> b!5247215 (= e!3264630 (matchZipper!1093 (derivationStepZipper!1108 ((_ map or) lt!2149983 lt!2150000) (head!11247 (t!374029 s!2326))) (tail!10344 (t!374029 s!2326))))))

(assert (= (and d!1690620 c!907454) b!5247214))

(assert (= (and d!1690620 (not c!907454)) b!5247215))

(declare-fun m!6290918 () Bool)

(assert (=> d!1690620 m!6290918))

(declare-fun m!6290920 () Bool)

(assert (=> b!5247214 m!6290920))

(declare-fun m!6290922 () Bool)

(assert (=> b!5247215 m!6290922))

(assert (=> b!5247215 m!6290922))

(declare-fun m!6290924 () Bool)

(assert (=> b!5247215 m!6290924))

(declare-fun m!6290926 () Bool)

(assert (=> b!5247215 m!6290926))

(assert (=> b!5247215 m!6290924))

(assert (=> b!5247215 m!6290926))

(declare-fun m!6290928 () Bool)

(assert (=> b!5247215 m!6290928))

(assert (=> b!5246485 d!1690620))

(declare-fun d!1690622 () Bool)

(declare-fun nullableFct!1416 (Regex!14849) Bool)

(assert (=> d!1690622 (= (nullable!5018 (h!67171 (exprs!4733 (h!67172 zl!343)))) (nullableFct!1416 (h!67171 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun bs!1217612 () Bool)

(assert (= bs!1217612 d!1690622))

(declare-fun m!6290930 () Bool)

(assert (=> bs!1217612 m!6290930))

(assert (=> b!5246484 d!1690622))

(declare-fun b!5247238 () Bool)

(declare-fun e!3264645 () (InoxSet Context!8466))

(declare-fun call!371766 () (InoxSet Context!8466))

(declare-fun call!371771 () (InoxSet Context!8466))

(assert (=> b!5247238 (= e!3264645 ((_ map or) call!371766 call!371771))))

(declare-fun bm!371761 () Bool)

(declare-fun call!371768 () List!60847)

(declare-fun c!907469 () Bool)

(assert (=> bm!371761 (= call!371766 (derivationStepZipperDown!297 (ite c!907469 (regTwo!30211 (h!67171 (exprs!4733 (h!67172 zl!343)))) (regOne!30210 (h!67171 (exprs!4733 (h!67172 zl!343))))) (ite c!907469 lt!2149994 (Context!8467 call!371768)) (h!67170 s!2326)))))

(declare-fun b!5247239 () Bool)

(declare-fun c!907465 () Bool)

(declare-fun e!3264643 () Bool)

(assert (=> b!5247239 (= c!907465 e!3264643)))

(declare-fun res!2226732 () Bool)

(assert (=> b!5247239 (=> (not res!2226732) (not e!3264643))))

(assert (=> b!5247239 (= res!2226732 ((_ is Concat!23694) (h!67171 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun e!3264647 () (InoxSet Context!8466))

(assert (=> b!5247239 (= e!3264647 e!3264645)))

(declare-fun c!907468 () Bool)

(declare-fun bm!371762 () Bool)

(declare-fun $colon$colon!1313 (List!60847 Regex!14849) List!60847)

(assert (=> bm!371762 (= call!371768 ($colon$colon!1313 (exprs!4733 lt!2149994) (ite (or c!907465 c!907468) (regTwo!30210 (h!67171 (exprs!4733 (h!67172 zl!343)))) (h!67171 (exprs!4733 (h!67172 zl!343))))))))

(declare-fun bm!371763 () Bool)

(declare-fun call!371767 () List!60847)

(declare-fun call!371769 () (InoxSet Context!8466))

(assert (=> bm!371763 (= call!371769 (derivationStepZipperDown!297 (ite c!907469 (regOne!30211 (h!67171 (exprs!4733 (h!67172 zl!343)))) (ite c!907465 (regTwo!30210 (h!67171 (exprs!4733 (h!67172 zl!343)))) (ite c!907468 (regOne!30210 (h!67171 (exprs!4733 (h!67172 zl!343)))) (reg!15178 (h!67171 (exprs!4733 (h!67172 zl!343))))))) (ite (or c!907469 c!907465) lt!2149994 (Context!8467 call!371767)) (h!67170 s!2326)))))

(declare-fun b!5247240 () Bool)

(declare-fun e!3264648 () (InoxSet Context!8466))

(declare-fun call!371770 () (InoxSet Context!8466))

(assert (=> b!5247240 (= e!3264648 call!371770)))

(declare-fun b!5247241 () Bool)

(assert (=> b!5247241 (= e!3264647 ((_ map or) call!371769 call!371766))))

(declare-fun d!1690624 () Bool)

(declare-fun c!907466 () Bool)

(assert (=> d!1690624 (= c!907466 (and ((_ is ElementMatch!14849) (h!67171 (exprs!4733 (h!67172 zl!343)))) (= (c!907257 (h!67171 (exprs!4733 (h!67172 zl!343)))) (h!67170 s!2326))))))

(declare-fun e!3264644 () (InoxSet Context!8466))

(assert (=> d!1690624 (= (derivationStepZipperDown!297 (h!67171 (exprs!4733 (h!67172 zl!343))) lt!2149994 (h!67170 s!2326)) e!3264644)))

(declare-fun bm!371764 () Bool)

(assert (=> bm!371764 (= call!371770 call!371771)))

(declare-fun b!5247242 () Bool)

(declare-fun e!3264646 () (InoxSet Context!8466))

(assert (=> b!5247242 (= e!3264646 call!371770)))

(declare-fun b!5247243 () Bool)

(assert (=> b!5247243 (= e!3264644 e!3264647)))

(assert (=> b!5247243 (= c!907469 ((_ is Union!14849) (h!67171 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun b!5247244 () Bool)

(assert (=> b!5247244 (= e!3264648 ((as const (Array Context!8466 Bool)) false))))

(declare-fun b!5247245 () Bool)

(declare-fun c!907467 () Bool)

(assert (=> b!5247245 (= c!907467 ((_ is Star!14849) (h!67171 (exprs!4733 (h!67172 zl!343)))))))

(assert (=> b!5247245 (= e!3264646 e!3264648)))

(declare-fun bm!371765 () Bool)

(assert (=> bm!371765 (= call!371767 call!371768)))

(declare-fun b!5247246 () Bool)

(assert (=> b!5247246 (= e!3264643 (nullable!5018 (regOne!30210 (h!67171 (exprs!4733 (h!67172 zl!343))))))))

(declare-fun b!5247247 () Bool)

(assert (=> b!5247247 (= e!3264645 e!3264646)))

(assert (=> b!5247247 (= c!907468 ((_ is Concat!23694) (h!67171 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun b!5247248 () Bool)

(assert (=> b!5247248 (= e!3264644 (store ((as const (Array Context!8466 Bool)) false) lt!2149994 true))))

(declare-fun bm!371766 () Bool)

(assert (=> bm!371766 (= call!371771 call!371769)))

(assert (= (and d!1690624 c!907466) b!5247248))

(assert (= (and d!1690624 (not c!907466)) b!5247243))

(assert (= (and b!5247243 c!907469) b!5247241))

(assert (= (and b!5247243 (not c!907469)) b!5247239))

(assert (= (and b!5247239 res!2226732) b!5247246))

(assert (= (and b!5247239 c!907465) b!5247238))

(assert (= (and b!5247239 (not c!907465)) b!5247247))

(assert (= (and b!5247247 c!907468) b!5247242))

(assert (= (and b!5247247 (not c!907468)) b!5247245))

(assert (= (and b!5247245 c!907467) b!5247240))

(assert (= (and b!5247245 (not c!907467)) b!5247244))

(assert (= (or b!5247242 b!5247240) bm!371765))

(assert (= (or b!5247242 b!5247240) bm!371764))

(assert (= (or b!5247238 bm!371765) bm!371762))

(assert (= (or b!5247238 bm!371764) bm!371766))

(assert (= (or b!5247241 b!5247238) bm!371761))

(assert (= (or b!5247241 bm!371766) bm!371763))

(declare-fun m!6290932 () Bool)

(assert (=> bm!371761 m!6290932))

(declare-fun m!6290934 () Bool)

(assert (=> bm!371763 m!6290934))

(declare-fun m!6290936 () Bool)

(assert (=> bm!371762 m!6290936))

(declare-fun m!6290938 () Bool)

(assert (=> b!5247246 m!6290938))

(declare-fun m!6290940 () Bool)

(assert (=> b!5247248 m!6290940))

(assert (=> b!5246484 d!1690624))

(declare-fun b!5247259 () Bool)

(declare-fun e!3264656 () (InoxSet Context!8466))

(declare-fun call!371774 () (InoxSet Context!8466))

(assert (=> b!5247259 (= e!3264656 ((_ map or) call!371774 (derivationStepZipperUp!221 (Context!8467 (t!374030 (exprs!4733 (h!67172 zl!343)))) (h!67170 s!2326))))))

(declare-fun b!5247260 () Bool)

(declare-fun e!3264657 () (InoxSet Context!8466))

(assert (=> b!5247260 (= e!3264657 ((as const (Array Context!8466 Bool)) false))))

(declare-fun d!1690626 () Bool)

(declare-fun c!907474 () Bool)

(declare-fun e!3264655 () Bool)

(assert (=> d!1690626 (= c!907474 e!3264655)))

(declare-fun res!2226735 () Bool)

(assert (=> d!1690626 (=> (not res!2226735) (not e!3264655))))

(assert (=> d!1690626 (= res!2226735 ((_ is Cons!60723) (exprs!4733 (h!67172 zl!343))))))

(assert (=> d!1690626 (= (derivationStepZipperUp!221 (h!67172 zl!343) (h!67170 s!2326)) e!3264656)))

(declare-fun b!5247261 () Bool)

(assert (=> b!5247261 (= e!3264655 (nullable!5018 (h!67171 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun bm!371769 () Bool)

(assert (=> bm!371769 (= call!371774 (derivationStepZipperDown!297 (h!67171 (exprs!4733 (h!67172 zl!343))) (Context!8467 (t!374030 (exprs!4733 (h!67172 zl!343)))) (h!67170 s!2326)))))

(declare-fun b!5247262 () Bool)

(assert (=> b!5247262 (= e!3264657 call!371774)))

(declare-fun b!5247263 () Bool)

(assert (=> b!5247263 (= e!3264656 e!3264657)))

(declare-fun c!907475 () Bool)

(assert (=> b!5247263 (= c!907475 ((_ is Cons!60723) (exprs!4733 (h!67172 zl!343))))))

(assert (= (and d!1690626 res!2226735) b!5247261))

(assert (= (and d!1690626 c!907474) b!5247259))

(assert (= (and d!1690626 (not c!907474)) b!5247263))

(assert (= (and b!5247263 c!907475) b!5247262))

(assert (= (and b!5247263 (not c!907475)) b!5247260))

(assert (= (or b!5247259 b!5247262) bm!371769))

(declare-fun m!6290942 () Bool)

(assert (=> b!5247259 m!6290942))

(assert (=> b!5247261 m!6290344))

(declare-fun m!6290944 () Bool)

(assert (=> bm!371769 m!6290944))

(assert (=> b!5246484 d!1690626))

(declare-fun b!5247264 () Bool)

(declare-fun e!3264659 () (InoxSet Context!8466))

(declare-fun call!371775 () (InoxSet Context!8466))

(assert (=> b!5247264 (= e!3264659 ((_ map or) call!371775 (derivationStepZipperUp!221 (Context!8467 (t!374030 (exprs!4733 (Context!8467 (Cons!60723 (h!67171 (exprs!4733 (h!67172 zl!343))) (t!374030 (exprs!4733 (h!67172 zl!343)))))))) (h!67170 s!2326))))))

(declare-fun b!5247265 () Bool)

(declare-fun e!3264660 () (InoxSet Context!8466))

(assert (=> b!5247265 (= e!3264660 ((as const (Array Context!8466 Bool)) false))))

(declare-fun d!1690628 () Bool)

(declare-fun c!907476 () Bool)

(declare-fun e!3264658 () Bool)

(assert (=> d!1690628 (= c!907476 e!3264658)))

(declare-fun res!2226736 () Bool)

(assert (=> d!1690628 (=> (not res!2226736) (not e!3264658))))

(assert (=> d!1690628 (= res!2226736 ((_ is Cons!60723) (exprs!4733 (Context!8467 (Cons!60723 (h!67171 (exprs!4733 (h!67172 zl!343))) (t!374030 (exprs!4733 (h!67172 zl!343))))))))))

(assert (=> d!1690628 (= (derivationStepZipperUp!221 (Context!8467 (Cons!60723 (h!67171 (exprs!4733 (h!67172 zl!343))) (t!374030 (exprs!4733 (h!67172 zl!343))))) (h!67170 s!2326)) e!3264659)))

(declare-fun b!5247266 () Bool)

(assert (=> b!5247266 (= e!3264658 (nullable!5018 (h!67171 (exprs!4733 (Context!8467 (Cons!60723 (h!67171 (exprs!4733 (h!67172 zl!343))) (t!374030 (exprs!4733 (h!67172 zl!343)))))))))))

(declare-fun bm!371770 () Bool)

(assert (=> bm!371770 (= call!371775 (derivationStepZipperDown!297 (h!67171 (exprs!4733 (Context!8467 (Cons!60723 (h!67171 (exprs!4733 (h!67172 zl!343))) (t!374030 (exprs!4733 (h!67172 zl!343))))))) (Context!8467 (t!374030 (exprs!4733 (Context!8467 (Cons!60723 (h!67171 (exprs!4733 (h!67172 zl!343))) (t!374030 (exprs!4733 (h!67172 zl!343)))))))) (h!67170 s!2326)))))

(declare-fun b!5247267 () Bool)

(assert (=> b!5247267 (= e!3264660 call!371775)))

(declare-fun b!5247268 () Bool)

(assert (=> b!5247268 (= e!3264659 e!3264660)))

(declare-fun c!907477 () Bool)

(assert (=> b!5247268 (= c!907477 ((_ is Cons!60723) (exprs!4733 (Context!8467 (Cons!60723 (h!67171 (exprs!4733 (h!67172 zl!343))) (t!374030 (exprs!4733 (h!67172 zl!343))))))))))

(assert (= (and d!1690628 res!2226736) b!5247266))

(assert (= (and d!1690628 c!907476) b!5247264))

(assert (= (and d!1690628 (not c!907476)) b!5247268))

(assert (= (and b!5247268 c!907477) b!5247267))

(assert (= (and b!5247268 (not c!907477)) b!5247265))

(assert (= (or b!5247264 b!5247267) bm!371770))

(declare-fun m!6290946 () Bool)

(assert (=> b!5247264 m!6290946))

(declare-fun m!6290948 () Bool)

(assert (=> b!5247266 m!6290948))

(declare-fun m!6290950 () Bool)

(assert (=> bm!371770 m!6290950))

(assert (=> b!5246484 d!1690628))

(declare-fun d!1690630 () Bool)

(declare-fun dynLambda!23998 (Int Context!8466) (InoxSet Context!8466))

(assert (=> d!1690630 (= (flatMap!576 z!1189 lambda!264044) (dynLambda!23998 lambda!264044 (h!67172 zl!343)))))

(declare-fun lt!2150102 () Unit!152806)

(declare-fun choose!39084 ((InoxSet Context!8466) Context!8466 Int) Unit!152806)

(assert (=> d!1690630 (= lt!2150102 (choose!39084 z!1189 (h!67172 zl!343) lambda!264044))))

(assert (=> d!1690630 (= z!1189 (store ((as const (Array Context!8466 Bool)) false) (h!67172 zl!343) true))))

(assert (=> d!1690630 (= (lemmaFlatMapOnSingletonSet!108 z!1189 (h!67172 zl!343) lambda!264044) lt!2150102)))

(declare-fun b_lambda!202733 () Bool)

(assert (=> (not b_lambda!202733) (not d!1690630)))

(declare-fun bs!1217613 () Bool)

(assert (= bs!1217613 d!1690630))

(assert (=> bs!1217613 m!6290338))

(declare-fun m!6290952 () Bool)

(assert (=> bs!1217613 m!6290952))

(declare-fun m!6290954 () Bool)

(assert (=> bs!1217613 m!6290954))

(declare-fun m!6290956 () Bool)

(assert (=> bs!1217613 m!6290956))

(assert (=> b!5246484 d!1690630))

(declare-fun d!1690632 () Bool)

(declare-fun choose!39085 ((InoxSet Context!8466) Int) (InoxSet Context!8466))

(assert (=> d!1690632 (= (flatMap!576 z!1189 lambda!264044) (choose!39085 z!1189 lambda!264044))))

(declare-fun bs!1217614 () Bool)

(assert (= bs!1217614 d!1690632))

(declare-fun m!6290958 () Bool)

(assert (=> bs!1217614 m!6290958))

(assert (=> b!5246484 d!1690632))

(declare-fun call!371776 () (InoxSet Context!8466))

(declare-fun e!3264662 () (InoxSet Context!8466))

(declare-fun b!5247269 () Bool)

(assert (=> b!5247269 (= e!3264662 ((_ map or) call!371776 (derivationStepZipperUp!221 (Context!8467 (t!374030 (exprs!4733 lt!2149994))) (h!67170 s!2326))))))

(declare-fun b!5247270 () Bool)

(declare-fun e!3264663 () (InoxSet Context!8466))

(assert (=> b!5247270 (= e!3264663 ((as const (Array Context!8466 Bool)) false))))

(declare-fun d!1690634 () Bool)

(declare-fun c!907478 () Bool)

(declare-fun e!3264661 () Bool)

(assert (=> d!1690634 (= c!907478 e!3264661)))

(declare-fun res!2226737 () Bool)

(assert (=> d!1690634 (=> (not res!2226737) (not e!3264661))))

(assert (=> d!1690634 (= res!2226737 ((_ is Cons!60723) (exprs!4733 lt!2149994)))))

(assert (=> d!1690634 (= (derivationStepZipperUp!221 lt!2149994 (h!67170 s!2326)) e!3264662)))

(declare-fun b!5247271 () Bool)

(assert (=> b!5247271 (= e!3264661 (nullable!5018 (h!67171 (exprs!4733 lt!2149994))))))

(declare-fun bm!371771 () Bool)

(assert (=> bm!371771 (= call!371776 (derivationStepZipperDown!297 (h!67171 (exprs!4733 lt!2149994)) (Context!8467 (t!374030 (exprs!4733 lt!2149994))) (h!67170 s!2326)))))

(declare-fun b!5247272 () Bool)

(assert (=> b!5247272 (= e!3264663 call!371776)))

(declare-fun b!5247273 () Bool)

(assert (=> b!5247273 (= e!3264662 e!3264663)))

(declare-fun c!907479 () Bool)

(assert (=> b!5247273 (= c!907479 ((_ is Cons!60723) (exprs!4733 lt!2149994)))))

(assert (= (and d!1690634 res!2226737) b!5247271))

(assert (= (and d!1690634 c!907478) b!5247269))

(assert (= (and d!1690634 (not c!907478)) b!5247273))

(assert (= (and b!5247273 c!907479) b!5247272))

(assert (= (and b!5247273 (not c!907479)) b!5247270))

(assert (= (or b!5247269 b!5247272) bm!371771))

(declare-fun m!6290960 () Bool)

(assert (=> b!5247269 m!6290960))

(declare-fun m!6290962 () Bool)

(assert (=> b!5247271 m!6290962))

(declare-fun m!6290964 () Bool)

(assert (=> bm!371771 m!6290964))

(assert (=> b!5246484 d!1690634))

(declare-fun d!1690636 () Bool)

(declare-fun c!907480 () Bool)

(assert (=> d!1690636 (= c!907480 (isEmpty!32663 (t!374029 s!2326)))))

(declare-fun e!3264664 () Bool)

(assert (=> d!1690636 (= (matchZipper!1093 lt!2150000 (t!374029 s!2326)) e!3264664)))

(declare-fun b!5247274 () Bool)

(assert (=> b!5247274 (= e!3264664 (nullableZipper!1264 lt!2150000))))

(declare-fun b!5247275 () Bool)

(assert (=> b!5247275 (= e!3264664 (matchZipper!1093 (derivationStepZipper!1108 lt!2150000 (head!11247 (t!374029 s!2326))) (tail!10344 (t!374029 s!2326))))))

(assert (= (and d!1690636 c!907480) b!5247274))

(assert (= (and d!1690636 (not c!907480)) b!5247275))

(assert (=> d!1690636 m!6290918))

(declare-fun m!6290966 () Bool)

(assert (=> b!5247274 m!6290966))

(assert (=> b!5247275 m!6290922))

(assert (=> b!5247275 m!6290922))

(declare-fun m!6290968 () Bool)

(assert (=> b!5247275 m!6290968))

(assert (=> b!5247275 m!6290926))

(assert (=> b!5247275 m!6290968))

(assert (=> b!5247275 m!6290926))

(declare-fun m!6290970 () Bool)

(assert (=> b!5247275 m!6290970))

(assert (=> b!5246504 d!1690636))

(declare-fun bs!1217615 () Bool)

(declare-fun d!1690638 () Bool)

(assert (= bs!1217615 (and d!1690638 b!5246495)))

(declare-fun lambda!264104 () Int)

(assert (=> bs!1217615 (= lambda!264104 lambda!264045)))

(declare-fun bs!1217616 () Bool)

(assert (= bs!1217616 (and d!1690638 d!1690536)))

(assert (=> bs!1217616 (= lambda!264104 lambda!264081)))

(declare-fun bs!1217617 () Bool)

(assert (= bs!1217617 (and d!1690638 d!1690580)))

(assert (=> bs!1217617 (= lambda!264104 lambda!264090)))

(declare-fun b!5247296 () Bool)

(declare-fun e!3264677 () Bool)

(declare-fun lt!2150105 () Regex!14849)

(declare-fun isUnion!240 (Regex!14849) Bool)

(assert (=> b!5247296 (= e!3264677 (isUnion!240 lt!2150105))))

(declare-fun b!5247297 () Bool)

(declare-fun e!3264678 () Regex!14849)

(assert (=> b!5247297 (= e!3264678 EmptyLang!14849)))

(declare-fun b!5247298 () Bool)

(declare-fun e!3264682 () Bool)

(assert (=> b!5247298 (= e!3264682 (isEmpty!32660 (t!374030 (unfocusZipperList!291 zl!343))))))

(declare-fun b!5247299 () Bool)

(assert (=> b!5247299 (= e!3264677 (= lt!2150105 (head!11246 (unfocusZipperList!291 zl!343))))))

(declare-fun b!5247300 () Bool)

(declare-fun e!3264680 () Bool)

(assert (=> b!5247300 (= e!3264680 e!3264677)))

(declare-fun c!907491 () Bool)

(assert (=> b!5247300 (= c!907491 (isEmpty!32660 (tail!10343 (unfocusZipperList!291 zl!343))))))

(declare-fun b!5247301 () Bool)

(assert (=> b!5247301 (= e!3264678 (Union!14849 (h!67171 (unfocusZipperList!291 zl!343)) (generalisedUnion!778 (t!374030 (unfocusZipperList!291 zl!343)))))))

(declare-fun b!5247302 () Bool)

(declare-fun e!3264681 () Regex!14849)

(assert (=> b!5247302 (= e!3264681 (h!67171 (unfocusZipperList!291 zl!343)))))

(declare-fun e!3264679 () Bool)

(assert (=> d!1690638 e!3264679))

(declare-fun res!2226742 () Bool)

(assert (=> d!1690638 (=> (not res!2226742) (not e!3264679))))

(assert (=> d!1690638 (= res!2226742 (validRegex!6585 lt!2150105))))

(assert (=> d!1690638 (= lt!2150105 e!3264681)))

(declare-fun c!907490 () Bool)

(assert (=> d!1690638 (= c!907490 e!3264682)))

(declare-fun res!2226743 () Bool)

(assert (=> d!1690638 (=> (not res!2226743) (not e!3264682))))

(assert (=> d!1690638 (= res!2226743 ((_ is Cons!60723) (unfocusZipperList!291 zl!343)))))

(assert (=> d!1690638 (forall!14273 (unfocusZipperList!291 zl!343) lambda!264104)))

(assert (=> d!1690638 (= (generalisedUnion!778 (unfocusZipperList!291 zl!343)) lt!2150105)))

(declare-fun b!5247303 () Bool)

(declare-fun isEmptyLang!808 (Regex!14849) Bool)

(assert (=> b!5247303 (= e!3264680 (isEmptyLang!808 lt!2150105))))

(declare-fun b!5247304 () Bool)

(assert (=> b!5247304 (= e!3264681 e!3264678)))

(declare-fun c!907489 () Bool)

(assert (=> b!5247304 (= c!907489 ((_ is Cons!60723) (unfocusZipperList!291 zl!343)))))

(declare-fun b!5247305 () Bool)

(assert (=> b!5247305 (= e!3264679 e!3264680)))

(declare-fun c!907492 () Bool)

(assert (=> b!5247305 (= c!907492 (isEmpty!32660 (unfocusZipperList!291 zl!343)))))

(assert (= (and d!1690638 res!2226743) b!5247298))

(assert (= (and d!1690638 c!907490) b!5247302))

(assert (= (and d!1690638 (not c!907490)) b!5247304))

(assert (= (and b!5247304 c!907489) b!5247301))

(assert (= (and b!5247304 (not c!907489)) b!5247297))

(assert (= (and d!1690638 res!2226742) b!5247305))

(assert (= (and b!5247305 c!907492) b!5247303))

(assert (= (and b!5247305 (not c!907492)) b!5247300))

(assert (= (and b!5247300 c!907491) b!5247299))

(assert (= (and b!5247300 (not c!907491)) b!5247296))

(declare-fun m!6290972 () Bool)

(assert (=> b!5247301 m!6290972))

(declare-fun m!6290974 () Bool)

(assert (=> b!5247296 m!6290974))

(assert (=> b!5247305 m!6290276))

(declare-fun m!6290976 () Bool)

(assert (=> b!5247305 m!6290976))

(assert (=> b!5247300 m!6290276))

(declare-fun m!6290978 () Bool)

(assert (=> b!5247300 m!6290978))

(assert (=> b!5247300 m!6290978))

(declare-fun m!6290980 () Bool)

(assert (=> b!5247300 m!6290980))

(assert (=> b!5247299 m!6290276))

(declare-fun m!6290982 () Bool)

(assert (=> b!5247299 m!6290982))

(declare-fun m!6290984 () Bool)

(assert (=> b!5247303 m!6290984))

(declare-fun m!6290986 () Bool)

(assert (=> d!1690638 m!6290986))

(assert (=> d!1690638 m!6290276))

(declare-fun m!6290988 () Bool)

(assert (=> d!1690638 m!6290988))

(declare-fun m!6290990 () Bool)

(assert (=> b!5247298 m!6290990))

(assert (=> b!5246502 d!1690638))

(declare-fun bs!1217618 () Bool)

(declare-fun d!1690640 () Bool)

(assert (= bs!1217618 (and d!1690640 b!5246495)))

(declare-fun lambda!264107 () Int)

(assert (=> bs!1217618 (= lambda!264107 lambda!264045)))

(declare-fun bs!1217619 () Bool)

(assert (= bs!1217619 (and d!1690640 d!1690536)))

(assert (=> bs!1217619 (= lambda!264107 lambda!264081)))

(declare-fun bs!1217620 () Bool)

(assert (= bs!1217620 (and d!1690640 d!1690580)))

(assert (=> bs!1217620 (= lambda!264107 lambda!264090)))

(declare-fun bs!1217621 () Bool)

(assert (= bs!1217621 (and d!1690640 d!1690638)))

(assert (=> bs!1217621 (= lambda!264107 lambda!264104)))

(declare-fun lt!2150108 () List!60847)

(assert (=> d!1690640 (forall!14273 lt!2150108 lambda!264107)))

(declare-fun e!3264685 () List!60847)

(assert (=> d!1690640 (= lt!2150108 e!3264685)))

(declare-fun c!907495 () Bool)

(assert (=> d!1690640 (= c!907495 ((_ is Cons!60724) zl!343))))

(assert (=> d!1690640 (= (unfocusZipperList!291 zl!343) lt!2150108)))

(declare-fun b!5247310 () Bool)

(assert (=> b!5247310 (= e!3264685 (Cons!60723 (generalisedConcat!518 (exprs!4733 (h!67172 zl!343))) (unfocusZipperList!291 (t!374031 zl!343))))))

(declare-fun b!5247311 () Bool)

(assert (=> b!5247311 (= e!3264685 Nil!60723)))

(assert (= (and d!1690640 c!907495) b!5247310))

(assert (= (and d!1690640 (not c!907495)) b!5247311))

(declare-fun m!6290992 () Bool)

(assert (=> d!1690640 m!6290992))

(assert (=> b!5247310 m!6290282))

(declare-fun m!6290994 () Bool)

(assert (=> b!5247310 m!6290994))

(assert (=> b!5246502 d!1690640))

(declare-fun b!5247312 () Bool)

(declare-fun e!3264688 () (InoxSet Context!8466))

(declare-fun call!371777 () (InoxSet Context!8466))

(declare-fun call!371782 () (InoxSet Context!8466))

(assert (=> b!5247312 (= e!3264688 ((_ map or) call!371777 call!371782))))

(declare-fun call!371779 () List!60847)

(declare-fun bm!371772 () Bool)

(declare-fun c!907500 () Bool)

(assert (=> bm!371772 (= call!371777 (derivationStepZipperDown!297 (ite c!907500 (regTwo!30211 (regTwo!30211 (regOne!30210 r!7292))) (regOne!30210 (regTwo!30211 (regOne!30210 r!7292)))) (ite c!907500 lt!2149994 (Context!8467 call!371779)) (h!67170 s!2326)))))

(declare-fun b!5247313 () Bool)

(declare-fun c!907496 () Bool)

(declare-fun e!3264686 () Bool)

(assert (=> b!5247313 (= c!907496 e!3264686)))

(declare-fun res!2226744 () Bool)

(assert (=> b!5247313 (=> (not res!2226744) (not e!3264686))))

(assert (=> b!5247313 (= res!2226744 ((_ is Concat!23694) (regTwo!30211 (regOne!30210 r!7292))))))

(declare-fun e!3264690 () (InoxSet Context!8466))

(assert (=> b!5247313 (= e!3264690 e!3264688)))

(declare-fun c!907499 () Bool)

(declare-fun bm!371773 () Bool)

(assert (=> bm!371773 (= call!371779 ($colon$colon!1313 (exprs!4733 lt!2149994) (ite (or c!907496 c!907499) (regTwo!30210 (regTwo!30211 (regOne!30210 r!7292))) (regTwo!30211 (regOne!30210 r!7292)))))))

(declare-fun bm!371774 () Bool)

(declare-fun call!371780 () (InoxSet Context!8466))

(declare-fun call!371778 () List!60847)

(assert (=> bm!371774 (= call!371780 (derivationStepZipperDown!297 (ite c!907500 (regOne!30211 (regTwo!30211 (regOne!30210 r!7292))) (ite c!907496 (regTwo!30210 (regTwo!30211 (regOne!30210 r!7292))) (ite c!907499 (regOne!30210 (regTwo!30211 (regOne!30210 r!7292))) (reg!15178 (regTwo!30211 (regOne!30210 r!7292)))))) (ite (or c!907500 c!907496) lt!2149994 (Context!8467 call!371778)) (h!67170 s!2326)))))

(declare-fun b!5247314 () Bool)

(declare-fun e!3264691 () (InoxSet Context!8466))

(declare-fun call!371781 () (InoxSet Context!8466))

(assert (=> b!5247314 (= e!3264691 call!371781)))

(declare-fun b!5247315 () Bool)

(assert (=> b!5247315 (= e!3264690 ((_ map or) call!371780 call!371777))))

(declare-fun d!1690642 () Bool)

(declare-fun c!907497 () Bool)

(assert (=> d!1690642 (= c!907497 (and ((_ is ElementMatch!14849) (regTwo!30211 (regOne!30210 r!7292))) (= (c!907257 (regTwo!30211 (regOne!30210 r!7292))) (h!67170 s!2326))))))

(declare-fun e!3264687 () (InoxSet Context!8466))

(assert (=> d!1690642 (= (derivationStepZipperDown!297 (regTwo!30211 (regOne!30210 r!7292)) lt!2149994 (h!67170 s!2326)) e!3264687)))

(declare-fun bm!371775 () Bool)

(assert (=> bm!371775 (= call!371781 call!371782)))

(declare-fun b!5247316 () Bool)

(declare-fun e!3264689 () (InoxSet Context!8466))

(assert (=> b!5247316 (= e!3264689 call!371781)))

(declare-fun b!5247317 () Bool)

(assert (=> b!5247317 (= e!3264687 e!3264690)))

(assert (=> b!5247317 (= c!907500 ((_ is Union!14849) (regTwo!30211 (regOne!30210 r!7292))))))

(declare-fun b!5247318 () Bool)

(assert (=> b!5247318 (= e!3264691 ((as const (Array Context!8466 Bool)) false))))

(declare-fun b!5247319 () Bool)

(declare-fun c!907498 () Bool)

(assert (=> b!5247319 (= c!907498 ((_ is Star!14849) (regTwo!30211 (regOne!30210 r!7292))))))

(assert (=> b!5247319 (= e!3264689 e!3264691)))

(declare-fun bm!371776 () Bool)

(assert (=> bm!371776 (= call!371778 call!371779)))

(declare-fun b!5247320 () Bool)

(assert (=> b!5247320 (= e!3264686 (nullable!5018 (regOne!30210 (regTwo!30211 (regOne!30210 r!7292)))))))

(declare-fun b!5247321 () Bool)

(assert (=> b!5247321 (= e!3264688 e!3264689)))

(assert (=> b!5247321 (= c!907499 ((_ is Concat!23694) (regTwo!30211 (regOne!30210 r!7292))))))

(declare-fun b!5247322 () Bool)

(assert (=> b!5247322 (= e!3264687 (store ((as const (Array Context!8466 Bool)) false) lt!2149994 true))))

(declare-fun bm!371777 () Bool)

(assert (=> bm!371777 (= call!371782 call!371780)))

(assert (= (and d!1690642 c!907497) b!5247322))

(assert (= (and d!1690642 (not c!907497)) b!5247317))

(assert (= (and b!5247317 c!907500) b!5247315))

(assert (= (and b!5247317 (not c!907500)) b!5247313))

(assert (= (and b!5247313 res!2226744) b!5247320))

(assert (= (and b!5247313 c!907496) b!5247312))

(assert (= (and b!5247313 (not c!907496)) b!5247321))

(assert (= (and b!5247321 c!907499) b!5247316))

(assert (= (and b!5247321 (not c!907499)) b!5247319))

(assert (= (and b!5247319 c!907498) b!5247314))

(assert (= (and b!5247319 (not c!907498)) b!5247318))

(assert (= (or b!5247316 b!5247314) bm!371776))

(assert (= (or b!5247316 b!5247314) bm!371775))

(assert (= (or b!5247312 bm!371776) bm!371773))

(assert (= (or b!5247312 bm!371775) bm!371777))

(assert (= (or b!5247315 b!5247312) bm!371772))

(assert (= (or b!5247315 bm!371777) bm!371774))

(declare-fun m!6290996 () Bool)

(assert (=> bm!371772 m!6290996))

(declare-fun m!6290998 () Bool)

(assert (=> bm!371774 m!6290998))

(declare-fun m!6291000 () Bool)

(assert (=> bm!371773 m!6291000))

(declare-fun m!6291002 () Bool)

(assert (=> b!5247320 m!6291002))

(assert (=> b!5247322 m!6290940))

(assert (=> b!5246501 d!1690642))

(declare-fun b!5247323 () Bool)

(declare-fun e!3264694 () (InoxSet Context!8466))

(declare-fun call!371783 () (InoxSet Context!8466))

(declare-fun call!371788 () (InoxSet Context!8466))

(assert (=> b!5247323 (= e!3264694 ((_ map or) call!371783 call!371788))))

(declare-fun c!907505 () Bool)

(declare-fun bm!371778 () Bool)

(declare-fun call!371785 () List!60847)

(assert (=> bm!371778 (= call!371783 (derivationStepZipperDown!297 (ite c!907505 (regTwo!30211 (regOne!30211 (regOne!30210 r!7292))) (regOne!30210 (regOne!30211 (regOne!30210 r!7292)))) (ite c!907505 lt!2149994 (Context!8467 call!371785)) (h!67170 s!2326)))))

(declare-fun b!5247324 () Bool)

(declare-fun c!907501 () Bool)

(declare-fun e!3264692 () Bool)

(assert (=> b!5247324 (= c!907501 e!3264692)))

(declare-fun res!2226745 () Bool)

(assert (=> b!5247324 (=> (not res!2226745) (not e!3264692))))

(assert (=> b!5247324 (= res!2226745 ((_ is Concat!23694) (regOne!30211 (regOne!30210 r!7292))))))

(declare-fun e!3264696 () (InoxSet Context!8466))

(assert (=> b!5247324 (= e!3264696 e!3264694)))

(declare-fun bm!371779 () Bool)

(declare-fun c!907504 () Bool)

(assert (=> bm!371779 (= call!371785 ($colon$colon!1313 (exprs!4733 lt!2149994) (ite (or c!907501 c!907504) (regTwo!30210 (regOne!30211 (regOne!30210 r!7292))) (regOne!30211 (regOne!30210 r!7292)))))))

(declare-fun bm!371780 () Bool)

(declare-fun call!371784 () List!60847)

(declare-fun call!371786 () (InoxSet Context!8466))

(assert (=> bm!371780 (= call!371786 (derivationStepZipperDown!297 (ite c!907505 (regOne!30211 (regOne!30211 (regOne!30210 r!7292))) (ite c!907501 (regTwo!30210 (regOne!30211 (regOne!30210 r!7292))) (ite c!907504 (regOne!30210 (regOne!30211 (regOne!30210 r!7292))) (reg!15178 (regOne!30211 (regOne!30210 r!7292)))))) (ite (or c!907505 c!907501) lt!2149994 (Context!8467 call!371784)) (h!67170 s!2326)))))

(declare-fun b!5247325 () Bool)

(declare-fun e!3264697 () (InoxSet Context!8466))

(declare-fun call!371787 () (InoxSet Context!8466))

(assert (=> b!5247325 (= e!3264697 call!371787)))

(declare-fun b!5247326 () Bool)

(assert (=> b!5247326 (= e!3264696 ((_ map or) call!371786 call!371783))))

(declare-fun d!1690644 () Bool)

(declare-fun c!907502 () Bool)

(assert (=> d!1690644 (= c!907502 (and ((_ is ElementMatch!14849) (regOne!30211 (regOne!30210 r!7292))) (= (c!907257 (regOne!30211 (regOne!30210 r!7292))) (h!67170 s!2326))))))

(declare-fun e!3264693 () (InoxSet Context!8466))

(assert (=> d!1690644 (= (derivationStepZipperDown!297 (regOne!30211 (regOne!30210 r!7292)) lt!2149994 (h!67170 s!2326)) e!3264693)))

(declare-fun bm!371781 () Bool)

(assert (=> bm!371781 (= call!371787 call!371788)))

(declare-fun b!5247327 () Bool)

(declare-fun e!3264695 () (InoxSet Context!8466))

(assert (=> b!5247327 (= e!3264695 call!371787)))

(declare-fun b!5247328 () Bool)

(assert (=> b!5247328 (= e!3264693 e!3264696)))

(assert (=> b!5247328 (= c!907505 ((_ is Union!14849) (regOne!30211 (regOne!30210 r!7292))))))

(declare-fun b!5247329 () Bool)

(assert (=> b!5247329 (= e!3264697 ((as const (Array Context!8466 Bool)) false))))

(declare-fun b!5247330 () Bool)

(declare-fun c!907503 () Bool)

(assert (=> b!5247330 (= c!907503 ((_ is Star!14849) (regOne!30211 (regOne!30210 r!7292))))))

(assert (=> b!5247330 (= e!3264695 e!3264697)))

(declare-fun bm!371782 () Bool)

(assert (=> bm!371782 (= call!371784 call!371785)))

(declare-fun b!5247331 () Bool)

(assert (=> b!5247331 (= e!3264692 (nullable!5018 (regOne!30210 (regOne!30211 (regOne!30210 r!7292)))))))

(declare-fun b!5247332 () Bool)

(assert (=> b!5247332 (= e!3264694 e!3264695)))

(assert (=> b!5247332 (= c!907504 ((_ is Concat!23694) (regOne!30211 (regOne!30210 r!7292))))))

(declare-fun b!5247333 () Bool)

(assert (=> b!5247333 (= e!3264693 (store ((as const (Array Context!8466 Bool)) false) lt!2149994 true))))

(declare-fun bm!371783 () Bool)

(assert (=> bm!371783 (= call!371788 call!371786)))

(assert (= (and d!1690644 c!907502) b!5247333))

(assert (= (and d!1690644 (not c!907502)) b!5247328))

(assert (= (and b!5247328 c!907505) b!5247326))

(assert (= (and b!5247328 (not c!907505)) b!5247324))

(assert (= (and b!5247324 res!2226745) b!5247331))

(assert (= (and b!5247324 c!907501) b!5247323))

(assert (= (and b!5247324 (not c!907501)) b!5247332))

(assert (= (and b!5247332 c!907504) b!5247327))

(assert (= (and b!5247332 (not c!907504)) b!5247330))

(assert (= (and b!5247330 c!907503) b!5247325))

(assert (= (and b!5247330 (not c!907503)) b!5247329))

(assert (= (or b!5247327 b!5247325) bm!371782))

(assert (= (or b!5247327 b!5247325) bm!371781))

(assert (= (or b!5247323 bm!371782) bm!371779))

(assert (= (or b!5247323 bm!371781) bm!371783))

(assert (= (or b!5247326 b!5247323) bm!371778))

(assert (= (or b!5247326 bm!371783) bm!371780))

(declare-fun m!6291004 () Bool)

(assert (=> bm!371778 m!6291004))

(declare-fun m!6291006 () Bool)

(assert (=> bm!371780 m!6291006))

(declare-fun m!6291008 () Bool)

(assert (=> bm!371779 m!6291008))

(declare-fun m!6291010 () Bool)

(assert (=> b!5247331 m!6291010))

(assert (=> b!5247333 m!6290940))

(assert (=> b!5246501 d!1690644))

(declare-fun d!1690646 () Bool)

(declare-fun e!3264698 () Bool)

(assert (=> d!1690646 (= (matchZipper!1093 ((_ map or) lt!2149965 lt!2150000) (t!374029 s!2326)) e!3264698)))

(declare-fun res!2226746 () Bool)

(assert (=> d!1690646 (=> res!2226746 e!3264698)))

(assert (=> d!1690646 (= res!2226746 (matchZipper!1093 lt!2149965 (t!374029 s!2326)))))

(declare-fun lt!2150109 () Unit!152806)

(assert (=> d!1690646 (= lt!2150109 (choose!39083 lt!2149965 lt!2150000 (t!374029 s!2326)))))

(assert (=> d!1690646 (= (lemmaZipperConcatMatchesSameAsBothZippers!86 lt!2149965 lt!2150000 (t!374029 s!2326)) lt!2150109)))

(declare-fun b!5247334 () Bool)

(assert (=> b!5247334 (= e!3264698 (matchZipper!1093 lt!2150000 (t!374029 s!2326)))))

(assert (= (and d!1690646 (not res!2226746)) b!5247334))

(assert (=> d!1690646 m!6290376))

(assert (=> d!1690646 m!6290312))

(declare-fun m!6291012 () Bool)

(assert (=> d!1690646 m!6291012))

(assert (=> b!5247334 m!6290326))

(assert (=> b!5246481 d!1690646))

(declare-fun d!1690648 () Bool)

(declare-fun c!907506 () Bool)

(assert (=> d!1690648 (= c!907506 (isEmpty!32663 (t!374029 s!2326)))))

(declare-fun e!3264699 () Bool)

(assert (=> d!1690648 (= (matchZipper!1093 lt!2149965 (t!374029 s!2326)) e!3264699)))

(declare-fun b!5247335 () Bool)

(assert (=> b!5247335 (= e!3264699 (nullableZipper!1264 lt!2149965))))

(declare-fun b!5247336 () Bool)

(assert (=> b!5247336 (= e!3264699 (matchZipper!1093 (derivationStepZipper!1108 lt!2149965 (head!11247 (t!374029 s!2326))) (tail!10344 (t!374029 s!2326))))))

(assert (= (and d!1690648 c!907506) b!5247335))

(assert (= (and d!1690648 (not c!907506)) b!5247336))

(assert (=> d!1690648 m!6290918))

(declare-fun m!6291014 () Bool)

(assert (=> b!5247335 m!6291014))

(assert (=> b!5247336 m!6290922))

(assert (=> b!5247336 m!6290922))

(declare-fun m!6291016 () Bool)

(assert (=> b!5247336 m!6291016))

(assert (=> b!5247336 m!6290926))

(assert (=> b!5247336 m!6291016))

(assert (=> b!5247336 m!6290926))

(declare-fun m!6291018 () Bool)

(assert (=> b!5247336 m!6291018))

(assert (=> b!5246481 d!1690648))

(declare-fun d!1690650 () Bool)

(declare-fun c!907507 () Bool)

(assert (=> d!1690650 (= c!907507 (isEmpty!32663 (t!374029 s!2326)))))

(declare-fun e!3264700 () Bool)

(assert (=> d!1690650 (= (matchZipper!1093 ((_ map or) lt!2149965 lt!2150000) (t!374029 s!2326)) e!3264700)))

(declare-fun b!5247337 () Bool)

(assert (=> b!5247337 (= e!3264700 (nullableZipper!1264 ((_ map or) lt!2149965 lt!2150000)))))

(declare-fun b!5247338 () Bool)

(assert (=> b!5247338 (= e!3264700 (matchZipper!1093 (derivationStepZipper!1108 ((_ map or) lt!2149965 lt!2150000) (head!11247 (t!374029 s!2326))) (tail!10344 (t!374029 s!2326))))))

(assert (= (and d!1690650 c!907507) b!5247337))

(assert (= (and d!1690650 (not c!907507)) b!5247338))

(assert (=> d!1690650 m!6290918))

(declare-fun m!6291020 () Bool)

(assert (=> b!5247337 m!6291020))

(assert (=> b!5247338 m!6290922))

(assert (=> b!5247338 m!6290922))

(declare-fun m!6291022 () Bool)

(assert (=> b!5247338 m!6291022))

(assert (=> b!5247338 m!6290926))

(assert (=> b!5247338 m!6291022))

(assert (=> b!5247338 m!6290926))

(declare-fun m!6291024 () Bool)

(assert (=> b!5247338 m!6291024))

(assert (=> b!5246481 d!1690650))

(assert (=> b!5246500 d!1690648))

(declare-fun d!1690652 () Bool)

(declare-fun c!907508 () Bool)

(assert (=> d!1690652 (= c!907508 (isEmpty!32663 s!2326))))

(declare-fun e!3264701 () Bool)

(assert (=> d!1690652 (= (matchZipper!1093 lt!2149995 s!2326) e!3264701)))

(declare-fun b!5247339 () Bool)

(assert (=> b!5247339 (= e!3264701 (nullableZipper!1264 lt!2149995))))

(declare-fun b!5247340 () Bool)

(assert (=> b!5247340 (= e!3264701 (matchZipper!1093 (derivationStepZipper!1108 lt!2149995 (head!11247 s!2326)) (tail!10344 s!2326)))))

(assert (= (and d!1690652 c!907508) b!5247339))

(assert (= (and d!1690652 (not c!907508)) b!5247340))

(assert (=> d!1690652 m!6290806))

(declare-fun m!6291026 () Bool)

(assert (=> b!5247339 m!6291026))

(assert (=> b!5247340 m!6290844))

(assert (=> b!5247340 m!6290844))

(declare-fun m!6291028 () Bool)

(assert (=> b!5247340 m!6291028))

(assert (=> b!5247340 m!6290848))

(assert (=> b!5247340 m!6291028))

(assert (=> b!5247340 m!6290848))

(declare-fun m!6291030 () Bool)

(assert (=> b!5247340 m!6291030))

(assert (=> b!5246499 d!1690652))

(declare-fun d!1690654 () Bool)

(assert (=> d!1690654 (= (nullable!5018 (regTwo!30211 (regOne!30210 r!7292))) (nullableFct!1416 (regTwo!30211 (regOne!30210 r!7292))))))

(declare-fun bs!1217622 () Bool)

(assert (= bs!1217622 d!1690654))

(declare-fun m!6291032 () Bool)

(assert (=> bs!1217622 m!6291032))

(assert (=> b!5246499 d!1690654))

(declare-fun d!1690656 () Bool)

(assert (=> d!1690656 (= (flatMap!576 lt!2149995 lambda!264044) (dynLambda!23998 lambda!264044 lt!2149996))))

(declare-fun lt!2150110 () Unit!152806)

(assert (=> d!1690656 (= lt!2150110 (choose!39084 lt!2149995 lt!2149996 lambda!264044))))

(assert (=> d!1690656 (= lt!2149995 (store ((as const (Array Context!8466 Bool)) false) lt!2149996 true))))

(assert (=> d!1690656 (= (lemmaFlatMapOnSingletonSet!108 lt!2149995 lt!2149996 lambda!264044) lt!2150110)))

(declare-fun b_lambda!202735 () Bool)

(assert (=> (not b_lambda!202735) (not d!1690656)))

(declare-fun bs!1217623 () Bool)

(assert (= bs!1217623 d!1690656))

(assert (=> bs!1217623 m!6290298))

(declare-fun m!6291034 () Bool)

(assert (=> bs!1217623 m!6291034))

(declare-fun m!6291036 () Bool)

(assert (=> bs!1217623 m!6291036))

(assert (=> bs!1217623 m!6290302))

(assert (=> b!5246499 d!1690656))

(declare-fun d!1690658 () Bool)

(declare-fun c!907509 () Bool)

(assert (=> d!1690658 (= c!907509 (isEmpty!32663 s!2326))))

(declare-fun e!3264702 () Bool)

(assert (=> d!1690658 (= (matchZipper!1093 z!1189 s!2326) e!3264702)))

(declare-fun b!5247341 () Bool)

(assert (=> b!5247341 (= e!3264702 (nullableZipper!1264 z!1189))))

(declare-fun b!5247342 () Bool)

(assert (=> b!5247342 (= e!3264702 (matchZipper!1093 (derivationStepZipper!1108 z!1189 (head!11247 s!2326)) (tail!10344 s!2326)))))

(assert (= (and d!1690658 c!907509) b!5247341))

(assert (= (and d!1690658 (not c!907509)) b!5247342))

(assert (=> d!1690658 m!6290806))

(declare-fun m!6291038 () Bool)

(assert (=> b!5247341 m!6291038))

(assert (=> b!5247342 m!6290844))

(assert (=> b!5247342 m!6290844))

(declare-fun m!6291040 () Bool)

(assert (=> b!5247342 m!6291040))

(assert (=> b!5247342 m!6290848))

(assert (=> b!5247342 m!6291040))

(assert (=> b!5247342 m!6290848))

(declare-fun m!6291042 () Bool)

(assert (=> b!5247342 m!6291042))

(assert (=> b!5246499 d!1690658))

(declare-fun d!1690660 () Bool)

(assert (=> d!1690660 (= (flatMap!576 lt!2149989 lambda!264044) (choose!39085 lt!2149989 lambda!264044))))

(declare-fun bs!1217624 () Bool)

(assert (= bs!1217624 d!1690660))

(declare-fun m!6291044 () Bool)

(assert (=> bs!1217624 m!6291044))

(assert (=> b!5246499 d!1690660))

(declare-fun e!3264704 () (InoxSet Context!8466))

(declare-fun b!5247343 () Bool)

(declare-fun call!371789 () (InoxSet Context!8466))

(assert (=> b!5247343 (= e!3264704 ((_ map or) call!371789 (derivationStepZipperUp!221 (Context!8467 (t!374030 (exprs!4733 lt!2149996))) (h!67170 s!2326))))))

(declare-fun b!5247344 () Bool)

(declare-fun e!3264705 () (InoxSet Context!8466))

(assert (=> b!5247344 (= e!3264705 ((as const (Array Context!8466 Bool)) false))))

(declare-fun d!1690662 () Bool)

(declare-fun c!907510 () Bool)

(declare-fun e!3264703 () Bool)

(assert (=> d!1690662 (= c!907510 e!3264703)))

(declare-fun res!2226747 () Bool)

(assert (=> d!1690662 (=> (not res!2226747) (not e!3264703))))

(assert (=> d!1690662 (= res!2226747 ((_ is Cons!60723) (exprs!4733 lt!2149996)))))

(assert (=> d!1690662 (= (derivationStepZipperUp!221 lt!2149996 (h!67170 s!2326)) e!3264704)))

(declare-fun b!5247345 () Bool)

(assert (=> b!5247345 (= e!3264703 (nullable!5018 (h!67171 (exprs!4733 lt!2149996))))))

(declare-fun bm!371784 () Bool)

(assert (=> bm!371784 (= call!371789 (derivationStepZipperDown!297 (h!67171 (exprs!4733 lt!2149996)) (Context!8467 (t!374030 (exprs!4733 lt!2149996))) (h!67170 s!2326)))))

(declare-fun b!5247346 () Bool)

(assert (=> b!5247346 (= e!3264705 call!371789)))

(declare-fun b!5247347 () Bool)

(assert (=> b!5247347 (= e!3264704 e!3264705)))

(declare-fun c!907511 () Bool)

(assert (=> b!5247347 (= c!907511 ((_ is Cons!60723) (exprs!4733 lt!2149996)))))

(assert (= (and d!1690662 res!2226747) b!5247345))

(assert (= (and d!1690662 c!907510) b!5247343))

(assert (= (and d!1690662 (not c!907510)) b!5247347))

(assert (= (and b!5247347 c!907511) b!5247346))

(assert (= (and b!5247347 (not c!907511)) b!5247344))

(assert (= (or b!5247343 b!5247346) bm!371784))

(declare-fun m!6291046 () Bool)

(assert (=> b!5247343 m!6291046))

(declare-fun m!6291048 () Bool)

(assert (=> b!5247345 m!6291048))

(declare-fun m!6291050 () Bool)

(assert (=> bm!371784 m!6291050))

(assert (=> b!5246499 d!1690662))

(declare-fun d!1690664 () Bool)

(assert (=> d!1690664 (= (flatMap!576 lt!2149995 lambda!264044) (choose!39085 lt!2149995 lambda!264044))))

(declare-fun bs!1217625 () Bool)

(assert (= bs!1217625 d!1690664))

(declare-fun m!6291052 () Bool)

(assert (=> bs!1217625 m!6291052))

(assert (=> b!5246499 d!1690664))

(declare-fun d!1690666 () Bool)

(assert (=> d!1690666 (= (nullable!5018 (regOne!30211 (regOne!30210 r!7292))) (nullableFct!1416 (regOne!30211 (regOne!30210 r!7292))))))

(declare-fun bs!1217626 () Bool)

(assert (= bs!1217626 d!1690666))

(declare-fun m!6291054 () Bool)

(assert (=> bs!1217626 m!6291054))

(assert (=> b!5246499 d!1690666))

(declare-fun b!5247348 () Bool)

(declare-fun call!371790 () (InoxSet Context!8466))

(declare-fun e!3264707 () (InoxSet Context!8466))

(assert (=> b!5247348 (= e!3264707 ((_ map or) call!371790 (derivationStepZipperUp!221 (Context!8467 (t!374030 (exprs!4733 lt!2149991))) (h!67170 s!2326))))))

(declare-fun b!5247349 () Bool)

(declare-fun e!3264708 () (InoxSet Context!8466))

(assert (=> b!5247349 (= e!3264708 ((as const (Array Context!8466 Bool)) false))))

(declare-fun d!1690668 () Bool)

(declare-fun c!907512 () Bool)

(declare-fun e!3264706 () Bool)

(assert (=> d!1690668 (= c!907512 e!3264706)))

(declare-fun res!2226748 () Bool)

(assert (=> d!1690668 (=> (not res!2226748) (not e!3264706))))

(assert (=> d!1690668 (= res!2226748 ((_ is Cons!60723) (exprs!4733 lt!2149991)))))

(assert (=> d!1690668 (= (derivationStepZipperUp!221 lt!2149991 (h!67170 s!2326)) e!3264707)))

(declare-fun b!5247350 () Bool)

(assert (=> b!5247350 (= e!3264706 (nullable!5018 (h!67171 (exprs!4733 lt!2149991))))))

(declare-fun bm!371785 () Bool)

(assert (=> bm!371785 (= call!371790 (derivationStepZipperDown!297 (h!67171 (exprs!4733 lt!2149991)) (Context!8467 (t!374030 (exprs!4733 lt!2149991))) (h!67170 s!2326)))))

(declare-fun b!5247351 () Bool)

(assert (=> b!5247351 (= e!3264708 call!371790)))

(declare-fun b!5247352 () Bool)

(assert (=> b!5247352 (= e!3264707 e!3264708)))

(declare-fun c!907513 () Bool)

(assert (=> b!5247352 (= c!907513 ((_ is Cons!60723) (exprs!4733 lt!2149991)))))

(assert (= (and d!1690668 res!2226748) b!5247350))

(assert (= (and d!1690668 c!907512) b!5247348))

(assert (= (and d!1690668 (not c!907512)) b!5247352))

(assert (= (and b!5247352 c!907513) b!5247351))

(assert (= (and b!5247352 (not c!907513)) b!5247349))

(assert (= (or b!5247348 b!5247351) bm!371785))

(declare-fun m!6291056 () Bool)

(assert (=> b!5247348 m!6291056))

(declare-fun m!6291058 () Bool)

(assert (=> b!5247350 m!6291058))

(declare-fun m!6291060 () Bool)

(assert (=> bm!371785 m!6291060))

(assert (=> b!5246499 d!1690668))

(declare-fun d!1690670 () Bool)

(assert (=> d!1690670 (= (flatMap!576 lt!2149989 lambda!264044) (dynLambda!23998 lambda!264044 lt!2149991))))

(declare-fun lt!2150111 () Unit!152806)

(assert (=> d!1690670 (= lt!2150111 (choose!39084 lt!2149989 lt!2149991 lambda!264044))))

(assert (=> d!1690670 (= lt!2149989 (store ((as const (Array Context!8466 Bool)) false) lt!2149991 true))))

(assert (=> d!1690670 (= (lemmaFlatMapOnSingletonSet!108 lt!2149989 lt!2149991 lambda!264044) lt!2150111)))

(declare-fun b_lambda!202737 () Bool)

(assert (=> (not b_lambda!202737) (not d!1690670)))

(declare-fun bs!1217627 () Bool)

(assert (= bs!1217627 d!1690670))

(assert (=> bs!1217627 m!6290294))

(declare-fun m!6291062 () Bool)

(assert (=> bs!1217627 m!6291062))

(declare-fun m!6291064 () Bool)

(assert (=> bs!1217627 m!6291064))

(assert (=> bs!1217627 m!6290292))

(assert (=> b!5246499 d!1690670))

(declare-fun d!1690672 () Bool)

(declare-fun lt!2150114 () Int)

(assert (=> d!1690672 (>= lt!2150114 0)))

(declare-fun e!3264711 () Int)

(assert (=> d!1690672 (= lt!2150114 e!3264711)))

(declare-fun c!907516 () Bool)

(assert (=> d!1690672 (= c!907516 ((_ is Cons!60724) lt!2149988))))

(assert (=> d!1690672 (= (zipperDepthTotal!30 lt!2149988) lt!2150114)))

(declare-fun b!5247357 () Bool)

(declare-fun contextDepthTotal!22 (Context!8466) Int)

(assert (=> b!5247357 (= e!3264711 (+ (contextDepthTotal!22 (h!67172 lt!2149988)) (zipperDepthTotal!30 (t!374031 lt!2149988))))))

(declare-fun b!5247358 () Bool)

(assert (=> b!5247358 (= e!3264711 0)))

(assert (= (and d!1690672 c!907516) b!5247357))

(assert (= (and d!1690672 (not c!907516)) b!5247358))

(declare-fun m!6291066 () Bool)

(assert (=> b!5247357 m!6291066))

(declare-fun m!6291068 () Bool)

(assert (=> b!5247357 m!6291068))

(assert (=> b!5246479 d!1690672))

(declare-fun bs!1217628 () Bool)

(declare-fun d!1690674 () Bool)

(assert (= bs!1217628 (and d!1690674 d!1690638)))

(declare-fun lambda!264108 () Int)

(assert (=> bs!1217628 (= lambda!264108 lambda!264104)))

(declare-fun bs!1217629 () Bool)

(assert (= bs!1217629 (and d!1690674 d!1690580)))

(assert (=> bs!1217629 (= lambda!264108 lambda!264090)))

(declare-fun bs!1217630 () Bool)

(assert (= bs!1217630 (and d!1690674 d!1690536)))

(assert (=> bs!1217630 (= lambda!264108 lambda!264081)))

(declare-fun bs!1217631 () Bool)

(assert (= bs!1217631 (and d!1690674 d!1690640)))

(assert (=> bs!1217631 (= lambda!264108 lambda!264107)))

(declare-fun bs!1217632 () Bool)

(assert (= bs!1217632 (and d!1690674 b!5246495)))

(assert (=> bs!1217632 (= lambda!264108 lambda!264045)))

(declare-fun b!5247359 () Bool)

(declare-fun e!3264714 () Bool)

(declare-fun e!3264713 () Bool)

(assert (=> b!5247359 (= e!3264714 e!3264713)))

(declare-fun c!907520 () Bool)

(assert (=> b!5247359 (= c!907520 (isEmpty!32660 (exprs!4733 (h!67172 zl!343))))))

(declare-fun b!5247360 () Bool)

(declare-fun e!3264712 () Bool)

(declare-fun lt!2150115 () Regex!14849)

(assert (=> b!5247360 (= e!3264712 (isConcat!322 lt!2150115))))

(declare-fun b!5247361 () Bool)

(assert (=> b!5247361 (= e!3264712 (= lt!2150115 (head!11246 (exprs!4733 (h!67172 zl!343)))))))

(assert (=> d!1690674 e!3264714))

(declare-fun res!2226749 () Bool)

(assert (=> d!1690674 (=> (not res!2226749) (not e!3264714))))

(assert (=> d!1690674 (= res!2226749 (validRegex!6585 lt!2150115))))

(declare-fun e!3264715 () Regex!14849)

(assert (=> d!1690674 (= lt!2150115 e!3264715)))

(declare-fun c!907518 () Bool)

(declare-fun e!3264717 () Bool)

(assert (=> d!1690674 (= c!907518 e!3264717)))

(declare-fun res!2226750 () Bool)

(assert (=> d!1690674 (=> (not res!2226750) (not e!3264717))))

(assert (=> d!1690674 (= res!2226750 ((_ is Cons!60723) (exprs!4733 (h!67172 zl!343))))))

(assert (=> d!1690674 (forall!14273 (exprs!4733 (h!67172 zl!343)) lambda!264108)))

(assert (=> d!1690674 (= (generalisedConcat!518 (exprs!4733 (h!67172 zl!343))) lt!2150115)))

(declare-fun b!5247362 () Bool)

(assert (=> b!5247362 (= e!3264717 (isEmpty!32660 (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun b!5247363 () Bool)

(assert (=> b!5247363 (= e!3264713 e!3264712)))

(declare-fun c!907517 () Bool)

(assert (=> b!5247363 (= c!907517 (isEmpty!32660 (tail!10343 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun b!5247364 () Bool)

(assert (=> b!5247364 (= e!3264715 (h!67171 (exprs!4733 (h!67172 zl!343))))))

(declare-fun b!5247365 () Bool)

(declare-fun e!3264716 () Regex!14849)

(assert (=> b!5247365 (= e!3264716 EmptyExpr!14849)))

(declare-fun b!5247366 () Bool)

(assert (=> b!5247366 (= e!3264716 (Concat!23694 (h!67171 (exprs!4733 (h!67172 zl!343))) (generalisedConcat!518 (t!374030 (exprs!4733 (h!67172 zl!343))))))))

(declare-fun b!5247367 () Bool)

(assert (=> b!5247367 (= e!3264713 (isEmptyExpr!799 lt!2150115))))

(declare-fun b!5247368 () Bool)

(assert (=> b!5247368 (= e!3264715 e!3264716)))

(declare-fun c!907519 () Bool)

(assert (=> b!5247368 (= c!907519 ((_ is Cons!60723) (exprs!4733 (h!67172 zl!343))))))

(assert (= (and d!1690674 res!2226750) b!5247362))

(assert (= (and d!1690674 c!907518) b!5247364))

(assert (= (and d!1690674 (not c!907518)) b!5247368))

(assert (= (and b!5247368 c!907519) b!5247366))

(assert (= (and b!5247368 (not c!907519)) b!5247365))

(assert (= (and d!1690674 res!2226749) b!5247359))

(assert (= (and b!5247359 c!907520) b!5247367))

(assert (= (and b!5247359 (not c!907520)) b!5247363))

(assert (= (and b!5247363 c!907517) b!5247361))

(assert (= (and b!5247363 (not c!907517)) b!5247360))

(declare-fun m!6291070 () Bool)

(assert (=> b!5247359 m!6291070))

(assert (=> b!5247366 m!6290308))

(declare-fun m!6291072 () Bool)

(assert (=> b!5247360 m!6291072))

(declare-fun m!6291074 () Bool)

(assert (=> d!1690674 m!6291074))

(declare-fun m!6291076 () Bool)

(assert (=> d!1690674 m!6291076))

(declare-fun m!6291078 () Bool)

(assert (=> b!5247363 m!6291078))

(assert (=> b!5247363 m!6291078))

(declare-fun m!6291080 () Bool)

(assert (=> b!5247363 m!6291080))

(declare-fun m!6291082 () Bool)

(assert (=> b!5247361 m!6291082))

(assert (=> b!5247362 m!6290280))

(declare-fun m!6291084 () Bool)

(assert (=> b!5247367 m!6291084))

(assert (=> b!5246498 d!1690674))

(declare-fun b!5247387 () Bool)

(declare-fun e!3264735 () Bool)

(declare-fun e!3264732 () Bool)

(assert (=> b!5247387 (= e!3264735 e!3264732)))

(declare-fun c!907525 () Bool)

(assert (=> b!5247387 (= c!907525 ((_ is Star!14849) r!7292))))

(declare-fun bm!371792 () Bool)

(declare-fun call!371798 () Bool)

(declare-fun c!907526 () Bool)

(assert (=> bm!371792 (= call!371798 (validRegex!6585 (ite c!907526 (regTwo!30211 r!7292) (regTwo!30210 r!7292))))))

(declare-fun b!5247388 () Bool)

(declare-fun e!3264737 () Bool)

(assert (=> b!5247388 (= e!3264737 call!371798)))

(declare-fun b!5247389 () Bool)

(declare-fun res!2226764 () Bool)

(assert (=> b!5247389 (=> (not res!2226764) (not e!3264737))))

(declare-fun call!371797 () Bool)

(assert (=> b!5247389 (= res!2226764 call!371797)))

(declare-fun e!3264738 () Bool)

(assert (=> b!5247389 (= e!3264738 e!3264737)))

(declare-fun b!5247390 () Bool)

(declare-fun e!3264733 () Bool)

(declare-fun call!371799 () Bool)

(assert (=> b!5247390 (= e!3264733 call!371799)))

(declare-fun b!5247391 () Bool)

(declare-fun res!2226761 () Bool)

(declare-fun e!3264734 () Bool)

(assert (=> b!5247391 (=> res!2226761 e!3264734)))

(assert (=> b!5247391 (= res!2226761 (not ((_ is Concat!23694) r!7292)))))

(assert (=> b!5247391 (= e!3264738 e!3264734)))

(declare-fun bm!371793 () Bool)

(assert (=> bm!371793 (= call!371797 call!371799)))

(declare-fun b!5247393 () Bool)

(declare-fun e!3264736 () Bool)

(assert (=> b!5247393 (= e!3264734 e!3264736)))

(declare-fun res!2226763 () Bool)

(assert (=> b!5247393 (=> (not res!2226763) (not e!3264736))))

(assert (=> b!5247393 (= res!2226763 call!371797)))

(declare-fun b!5247394 () Bool)

(assert (=> b!5247394 (= e!3264732 e!3264738)))

(assert (=> b!5247394 (= c!907526 ((_ is Union!14849) r!7292))))

(declare-fun bm!371794 () Bool)

(assert (=> bm!371794 (= call!371799 (validRegex!6585 (ite c!907525 (reg!15178 r!7292) (ite c!907526 (regOne!30211 r!7292) (regOne!30210 r!7292)))))))

(declare-fun b!5247395 () Bool)

(assert (=> b!5247395 (= e!3264736 call!371798)))

(declare-fun d!1690676 () Bool)

(declare-fun res!2226762 () Bool)

(assert (=> d!1690676 (=> res!2226762 e!3264735)))

(assert (=> d!1690676 (= res!2226762 ((_ is ElementMatch!14849) r!7292))))

(assert (=> d!1690676 (= (validRegex!6585 r!7292) e!3264735)))

(declare-fun b!5247392 () Bool)

(assert (=> b!5247392 (= e!3264732 e!3264733)))

(declare-fun res!2226765 () Bool)

(assert (=> b!5247392 (= res!2226765 (not (nullable!5018 (reg!15178 r!7292))))))

(assert (=> b!5247392 (=> (not res!2226765) (not e!3264733))))

(assert (= (and d!1690676 (not res!2226762)) b!5247387))

(assert (= (and b!5247387 c!907525) b!5247392))

(assert (= (and b!5247387 (not c!907525)) b!5247394))

(assert (= (and b!5247392 res!2226765) b!5247390))

(assert (= (and b!5247394 c!907526) b!5247389))

(assert (= (and b!5247394 (not c!907526)) b!5247391))

(assert (= (and b!5247389 res!2226764) b!5247388))

(assert (= (and b!5247391 (not res!2226761)) b!5247393))

(assert (= (and b!5247393 res!2226763) b!5247395))

(assert (= (or b!5247388 b!5247395) bm!371792))

(assert (= (or b!5247389 b!5247393) bm!371793))

(assert (= (or b!5247390 bm!371793) bm!371794))

(declare-fun m!6291086 () Bool)

(assert (=> bm!371792 m!6291086))

(declare-fun m!6291088 () Bool)

(assert (=> bm!371794 m!6291088))

(declare-fun m!6291090 () Bool)

(assert (=> b!5247392 m!6291090))

(assert (=> start!554474 d!1690676))

(declare-fun e!3264739 () Bool)

(declare-fun d!1690678 () Bool)

(assert (=> d!1690678 (= (matchZipper!1093 ((_ map or) lt!2149990 lt!2150000) (t!374029 s!2326)) e!3264739)))

(declare-fun res!2226766 () Bool)

(assert (=> d!1690678 (=> res!2226766 e!3264739)))

(assert (=> d!1690678 (= res!2226766 (matchZipper!1093 lt!2149990 (t!374029 s!2326)))))

(declare-fun lt!2150116 () Unit!152806)

(assert (=> d!1690678 (= lt!2150116 (choose!39083 lt!2149990 lt!2150000 (t!374029 s!2326)))))

(assert (=> d!1690678 (= (lemmaZipperConcatMatchesSameAsBothZippers!86 lt!2149990 lt!2150000 (t!374029 s!2326)) lt!2150116)))

(declare-fun b!5247396 () Bool)

(assert (=> b!5247396 (= e!3264739 (matchZipper!1093 lt!2150000 (t!374029 s!2326)))))

(assert (= (and d!1690678 (not res!2226766)) b!5247396))

(assert (=> d!1690678 m!6290380))

(assert (=> d!1690678 m!6290350))

(declare-fun m!6291092 () Bool)

(assert (=> d!1690678 m!6291092))

(assert (=> b!5247396 m!6290326))

(assert (=> b!5246478 d!1690678))

(declare-fun d!1690680 () Bool)

(declare-fun c!907527 () Bool)

(assert (=> d!1690680 (= c!907527 (isEmpty!32663 (t!374029 s!2326)))))

(declare-fun e!3264740 () Bool)

(assert (=> d!1690680 (= (matchZipper!1093 lt!2149990 (t!374029 s!2326)) e!3264740)))

(declare-fun b!5247397 () Bool)

(assert (=> b!5247397 (= e!3264740 (nullableZipper!1264 lt!2149990))))

(declare-fun b!5247398 () Bool)

(assert (=> b!5247398 (= e!3264740 (matchZipper!1093 (derivationStepZipper!1108 lt!2149990 (head!11247 (t!374029 s!2326))) (tail!10344 (t!374029 s!2326))))))

(assert (= (and d!1690680 c!907527) b!5247397))

(assert (= (and d!1690680 (not c!907527)) b!5247398))

(assert (=> d!1690680 m!6290918))

(declare-fun m!6291094 () Bool)

(assert (=> b!5247397 m!6291094))

(assert (=> b!5247398 m!6290922))

(assert (=> b!5247398 m!6290922))

(declare-fun m!6291096 () Bool)

(assert (=> b!5247398 m!6291096))

(assert (=> b!5247398 m!6290926))

(assert (=> b!5247398 m!6291096))

(assert (=> b!5247398 m!6290926))

(declare-fun m!6291098 () Bool)

(assert (=> b!5247398 m!6291098))

(assert (=> b!5246478 d!1690680))

(declare-fun d!1690682 () Bool)

(declare-fun c!907528 () Bool)

(assert (=> d!1690682 (= c!907528 (isEmpty!32663 (t!374029 s!2326)))))

(declare-fun e!3264741 () Bool)

(assert (=> d!1690682 (= (matchZipper!1093 ((_ map or) lt!2149990 lt!2150000) (t!374029 s!2326)) e!3264741)))

(declare-fun b!5247399 () Bool)

(assert (=> b!5247399 (= e!3264741 (nullableZipper!1264 ((_ map or) lt!2149990 lt!2150000)))))

(declare-fun b!5247400 () Bool)

(assert (=> b!5247400 (= e!3264741 (matchZipper!1093 (derivationStepZipper!1108 ((_ map or) lt!2149990 lt!2150000) (head!11247 (t!374029 s!2326))) (tail!10344 (t!374029 s!2326))))))

(assert (= (and d!1690682 c!907528) b!5247399))

(assert (= (and d!1690682 (not c!907528)) b!5247400))

(assert (=> d!1690682 m!6290918))

(declare-fun m!6291100 () Bool)

(assert (=> b!5247399 m!6291100))

(assert (=> b!5247400 m!6290922))

(assert (=> b!5247400 m!6290922))

(declare-fun m!6291102 () Bool)

(assert (=> b!5247400 m!6291102))

(assert (=> b!5247400 m!6290926))

(assert (=> b!5247400 m!6291102))

(assert (=> b!5247400 m!6290926))

(declare-fun m!6291104 () Bool)

(assert (=> b!5247400 m!6291104))

(assert (=> b!5246478 d!1690682))

(assert (=> b!5246496 d!1690648))

(declare-fun d!1690684 () Bool)

(declare-fun res!2226771 () Bool)

(declare-fun e!3264746 () Bool)

(assert (=> d!1690684 (=> res!2226771 e!3264746)))

(assert (=> d!1690684 (= res!2226771 ((_ is Nil!60723) lt!2149967))))

(assert (=> d!1690684 (= (forall!14273 lt!2149967 lambda!264045) e!3264746)))

(declare-fun b!5247405 () Bool)

(declare-fun e!3264747 () Bool)

(assert (=> b!5247405 (= e!3264746 e!3264747)))

(declare-fun res!2226772 () Bool)

(assert (=> b!5247405 (=> (not res!2226772) (not e!3264747))))

(declare-fun dynLambda!23999 (Int Regex!14849) Bool)

(assert (=> b!5247405 (= res!2226772 (dynLambda!23999 lambda!264045 (h!67171 lt!2149967)))))

(declare-fun b!5247406 () Bool)

(assert (=> b!5247406 (= e!3264747 (forall!14273 (t!374030 lt!2149967) lambda!264045))))

(assert (= (and d!1690684 (not res!2226771)) b!5247405))

(assert (= (and b!5247405 res!2226772) b!5247406))

(declare-fun b_lambda!202739 () Bool)

(assert (=> (not b_lambda!202739) (not b!5247405)))

(declare-fun m!6291106 () Bool)

(assert (=> b!5247405 m!6291106))

(declare-fun m!6291108 () Bool)

(assert (=> b!5247406 m!6291108))

(assert (=> b!5246495 d!1690684))

(assert (=> b!5246516 d!1690636))

(declare-fun d!1690686 () Bool)

(declare-fun e!3264750 () Bool)

(assert (=> d!1690686 e!3264750))

(declare-fun res!2226775 () Bool)

(assert (=> d!1690686 (=> (not res!2226775) (not e!3264750))))

(declare-fun lt!2150119 () List!60848)

(declare-fun noDuplicate!1220 (List!60848) Bool)

(assert (=> d!1690686 (= res!2226775 (noDuplicate!1220 lt!2150119))))

(declare-fun choose!39086 ((InoxSet Context!8466)) List!60848)

(assert (=> d!1690686 (= lt!2150119 (choose!39086 z!1189))))

(assert (=> d!1690686 (= (toList!8633 z!1189) lt!2150119)))

(declare-fun b!5247409 () Bool)

(declare-fun content!10787 (List!60848) (InoxSet Context!8466))

(assert (=> b!5247409 (= e!3264750 (= (content!10787 lt!2150119) z!1189))))

(assert (= (and d!1690686 res!2226775) b!5247409))

(declare-fun m!6291110 () Bool)

(assert (=> d!1690686 m!6291110))

(declare-fun m!6291112 () Bool)

(assert (=> d!1690686 m!6291112))

(declare-fun m!6291114 () Bool)

(assert (=> b!5247409 m!6291114))

(assert (=> b!5246494 d!1690686))

(assert (=> b!5246493 d!1690680))

(declare-fun d!1690688 () Bool)

(declare-fun c!907529 () Bool)

(assert (=> d!1690688 (= c!907529 (isEmpty!32663 (t!374029 s!2326)))))

(declare-fun e!3264751 () Bool)

(assert (=> d!1690688 (= (matchZipper!1093 lt!2149985 (t!374029 s!2326)) e!3264751)))

(declare-fun b!5247410 () Bool)

(assert (=> b!5247410 (= e!3264751 (nullableZipper!1264 lt!2149985))))

(declare-fun b!5247411 () Bool)

(assert (=> b!5247411 (= e!3264751 (matchZipper!1093 (derivationStepZipper!1108 lt!2149985 (head!11247 (t!374029 s!2326))) (tail!10344 (t!374029 s!2326))))))

(assert (= (and d!1690688 c!907529) b!5247410))

(assert (= (and d!1690688 (not c!907529)) b!5247411))

(assert (=> d!1690688 m!6290918))

(declare-fun m!6291116 () Bool)

(assert (=> b!5247410 m!6291116))

(assert (=> b!5247411 m!6290922))

(assert (=> b!5247411 m!6290922))

(declare-fun m!6291118 () Bool)

(assert (=> b!5247411 m!6291118))

(assert (=> b!5247411 m!6290926))

(assert (=> b!5247411 m!6291118))

(assert (=> b!5247411 m!6290926))

(declare-fun m!6291120 () Bool)

(assert (=> b!5247411 m!6291120))

(assert (=> b!5246493 d!1690688))

(declare-fun d!1690690 () Bool)

(declare-fun c!907530 () Bool)

(assert (=> d!1690690 (= c!907530 (isEmpty!32663 (t!374029 s!2326)))))

(declare-fun e!3264752 () Bool)

(assert (=> d!1690690 (= (matchZipper!1093 lt!2149983 (t!374029 s!2326)) e!3264752)))

(declare-fun b!5247412 () Bool)

(assert (=> b!5247412 (= e!3264752 (nullableZipper!1264 lt!2149983))))

(declare-fun b!5247413 () Bool)

(assert (=> b!5247413 (= e!3264752 (matchZipper!1093 (derivationStepZipper!1108 lt!2149983 (head!11247 (t!374029 s!2326))) (tail!10344 (t!374029 s!2326))))))

(assert (= (and d!1690690 c!907530) b!5247412))

(assert (= (and d!1690690 (not c!907530)) b!5247413))

(assert (=> d!1690690 m!6290918))

(declare-fun m!6291122 () Bool)

(assert (=> b!5247412 m!6291122))

(assert (=> b!5247413 m!6290922))

(assert (=> b!5247413 m!6290922))

(declare-fun m!6291124 () Bool)

(assert (=> b!5247413 m!6291124))

(assert (=> b!5247413 m!6290926))

(assert (=> b!5247413 m!6291124))

(assert (=> b!5247413 m!6290926))

(declare-fun m!6291126 () Bool)

(assert (=> b!5247413 m!6291126))

(assert (=> b!5246493 d!1690690))

(declare-fun d!1690692 () Bool)

(declare-fun e!3264753 () Bool)

(assert (=> d!1690692 (= (matchZipper!1093 ((_ map or) lt!2149983 lt!2149965) (t!374029 s!2326)) e!3264753)))

(declare-fun res!2226776 () Bool)

(assert (=> d!1690692 (=> res!2226776 e!3264753)))

(assert (=> d!1690692 (= res!2226776 (matchZipper!1093 lt!2149983 (t!374029 s!2326)))))

(declare-fun lt!2150120 () Unit!152806)

(assert (=> d!1690692 (= lt!2150120 (choose!39083 lt!2149983 lt!2149965 (t!374029 s!2326)))))

(assert (=> d!1690692 (= (lemmaZipperConcatMatchesSameAsBothZippers!86 lt!2149983 lt!2149965 (t!374029 s!2326)) lt!2150120)))

(declare-fun b!5247414 () Bool)

(assert (=> b!5247414 (= e!3264753 (matchZipper!1093 lt!2149965 (t!374029 s!2326)))))

(assert (= (and d!1690692 (not res!2226776)) b!5247414))

(declare-fun m!6291128 () Bool)

(assert (=> d!1690692 m!6291128))

(assert (=> d!1690692 m!6290354))

(declare-fun m!6291130 () Bool)

(assert (=> d!1690692 m!6291130))

(assert (=> b!5247414 m!6290312))

(assert (=> b!5246493 d!1690692))

(declare-fun bs!1217633 () Bool)

(declare-fun d!1690694 () Bool)

(assert (= bs!1217633 (and d!1690694 d!1690580)))

(declare-fun lambda!264111 () Int)

(assert (=> bs!1217633 (= lambda!264111 lambda!264090)))

(declare-fun bs!1217634 () Bool)

(assert (= bs!1217634 (and d!1690694 d!1690536)))

(assert (=> bs!1217634 (= lambda!264111 lambda!264081)))

(declare-fun bs!1217635 () Bool)

(assert (= bs!1217635 (and d!1690694 d!1690640)))

(assert (=> bs!1217635 (= lambda!264111 lambda!264107)))

(declare-fun bs!1217636 () Bool)

(assert (= bs!1217636 (and d!1690694 b!5246495)))

(assert (=> bs!1217636 (= lambda!264111 lambda!264045)))

(declare-fun bs!1217637 () Bool)

(assert (= bs!1217637 (and d!1690694 d!1690638)))

(assert (=> bs!1217637 (= lambda!264111 lambda!264104)))

(declare-fun bs!1217638 () Bool)

(assert (= bs!1217638 (and d!1690694 d!1690674)))

(assert (=> bs!1217638 (= lambda!264111 lambda!264108)))

(assert (=> d!1690694 (= (inv!80369 (h!67172 zl!343)) (forall!14273 (exprs!4733 (h!67172 zl!343)) lambda!264111))))

(declare-fun bs!1217639 () Bool)

(assert (= bs!1217639 d!1690694))

(declare-fun m!6291132 () Bool)

(assert (=> bs!1217639 m!6291132))

(assert (=> b!5246514 d!1690694))

(declare-fun d!1690696 () Bool)

(assert (=> d!1690696 (= (isEmpty!32660 (t!374030 (exprs!4733 (h!67172 zl!343)))) ((_ is Nil!60723) (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(assert (=> b!5246513 d!1690696))

(assert (=> b!5246492 d!1690588))

(declare-fun d!1690698 () Bool)

(declare-fun lt!2150121 () Int)

(assert (=> d!1690698 (>= lt!2150121 0)))

(declare-fun e!3264754 () Int)

(assert (=> d!1690698 (= lt!2150121 e!3264754)))

(declare-fun c!907531 () Bool)

(assert (=> d!1690698 (= c!907531 ((_ is Cons!60724) zl!343))))

(assert (=> d!1690698 (= (zipperDepthTotal!30 zl!343) lt!2150121)))

(declare-fun b!5247415 () Bool)

(assert (=> b!5247415 (= e!3264754 (+ (contextDepthTotal!22 (h!67172 zl!343)) (zipperDepthTotal!30 (t!374031 zl!343))))))

(declare-fun b!5247416 () Bool)

(assert (=> b!5247416 (= e!3264754 0)))

(assert (= (and d!1690698 c!907531) b!5247415))

(assert (= (and d!1690698 (not c!907531)) b!5247416))

(declare-fun m!6291134 () Bool)

(assert (=> b!5247415 m!6291134))

(declare-fun m!6291136 () Bool)

(assert (=> b!5247415 m!6291136))

(assert (=> b!5246491 d!1690698))

(declare-fun d!1690700 () Bool)

(declare-fun lt!2150122 () Int)

(assert (=> d!1690700 (>= lt!2150122 0)))

(declare-fun e!3264755 () Int)

(assert (=> d!1690700 (= lt!2150122 e!3264755)))

(declare-fun c!907532 () Bool)

(assert (=> d!1690700 (= c!907532 ((_ is Cons!60724) lt!2149982))))

(assert (=> d!1690700 (= (zipperDepthTotal!30 lt!2149982) lt!2150122)))

(declare-fun b!5247417 () Bool)

(assert (=> b!5247417 (= e!3264755 (+ (contextDepthTotal!22 (h!67172 lt!2149982)) (zipperDepthTotal!30 (t!374031 lt!2149982))))))

(declare-fun b!5247418 () Bool)

(assert (=> b!5247418 (= e!3264755 0)))

(assert (= (and d!1690700 c!907532) b!5247417))

(assert (= (and d!1690700 (not c!907532)) b!5247418))

(declare-fun m!6291138 () Bool)

(assert (=> b!5247417 m!6291138))

(declare-fun m!6291140 () Bool)

(assert (=> b!5247417 m!6291140))

(assert (=> b!5246491 d!1690700))

(declare-fun bs!1217640 () Bool)

(declare-fun d!1690702 () Bool)

(assert (= bs!1217640 (and d!1690702 d!1690580)))

(declare-fun lambda!264112 () Int)

(assert (=> bs!1217640 (= lambda!264112 lambda!264090)))

(declare-fun bs!1217641 () Bool)

(assert (= bs!1217641 (and d!1690702 d!1690536)))

(assert (=> bs!1217641 (= lambda!264112 lambda!264081)))

(declare-fun bs!1217642 () Bool)

(assert (= bs!1217642 (and d!1690702 d!1690640)))

(assert (=> bs!1217642 (= lambda!264112 lambda!264107)))

(declare-fun bs!1217643 () Bool)

(assert (= bs!1217643 (and d!1690702 d!1690694)))

(assert (=> bs!1217643 (= lambda!264112 lambda!264111)))

(declare-fun bs!1217644 () Bool)

(assert (= bs!1217644 (and d!1690702 b!5246495)))

(assert (=> bs!1217644 (= lambda!264112 lambda!264045)))

(declare-fun bs!1217645 () Bool)

(assert (= bs!1217645 (and d!1690702 d!1690638)))

(assert (=> bs!1217645 (= lambda!264112 lambda!264104)))

(declare-fun bs!1217646 () Bool)

(assert (= bs!1217646 (and d!1690702 d!1690674)))

(assert (=> bs!1217646 (= lambda!264112 lambda!264108)))

(declare-fun b!5247419 () Bool)

(declare-fun e!3264758 () Bool)

(declare-fun e!3264757 () Bool)

(assert (=> b!5247419 (= e!3264758 e!3264757)))

(declare-fun c!907536 () Bool)

(assert (=> b!5247419 (= c!907536 (isEmpty!32660 (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun b!5247420 () Bool)

(declare-fun e!3264756 () Bool)

(declare-fun lt!2150123 () Regex!14849)

(assert (=> b!5247420 (= e!3264756 (isConcat!322 lt!2150123))))

(declare-fun b!5247421 () Bool)

(assert (=> b!5247421 (= e!3264756 (= lt!2150123 (head!11246 (t!374030 (exprs!4733 (h!67172 zl!343))))))))

(assert (=> d!1690702 e!3264758))

(declare-fun res!2226777 () Bool)

(assert (=> d!1690702 (=> (not res!2226777) (not e!3264758))))

(assert (=> d!1690702 (= res!2226777 (validRegex!6585 lt!2150123))))

(declare-fun e!3264759 () Regex!14849)

(assert (=> d!1690702 (= lt!2150123 e!3264759)))

(declare-fun c!907534 () Bool)

(declare-fun e!3264761 () Bool)

(assert (=> d!1690702 (= c!907534 e!3264761)))

(declare-fun res!2226778 () Bool)

(assert (=> d!1690702 (=> (not res!2226778) (not e!3264761))))

(assert (=> d!1690702 (= res!2226778 ((_ is Cons!60723) (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(assert (=> d!1690702 (forall!14273 (t!374030 (exprs!4733 (h!67172 zl!343))) lambda!264112)))

(assert (=> d!1690702 (= (generalisedConcat!518 (t!374030 (exprs!4733 (h!67172 zl!343)))) lt!2150123)))

(declare-fun b!5247422 () Bool)

(assert (=> b!5247422 (= e!3264761 (isEmpty!32660 (t!374030 (t!374030 (exprs!4733 (h!67172 zl!343))))))))

(declare-fun b!5247423 () Bool)

(assert (=> b!5247423 (= e!3264757 e!3264756)))

(declare-fun c!907533 () Bool)

(assert (=> b!5247423 (= c!907533 (isEmpty!32660 (tail!10343 (t!374030 (exprs!4733 (h!67172 zl!343))))))))

(declare-fun b!5247424 () Bool)

(assert (=> b!5247424 (= e!3264759 (h!67171 (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(declare-fun b!5247425 () Bool)

(declare-fun e!3264760 () Regex!14849)

(assert (=> b!5247425 (= e!3264760 EmptyExpr!14849)))

(declare-fun b!5247426 () Bool)

(assert (=> b!5247426 (= e!3264760 (Concat!23694 (h!67171 (t!374030 (exprs!4733 (h!67172 zl!343)))) (generalisedConcat!518 (t!374030 (t!374030 (exprs!4733 (h!67172 zl!343)))))))))

(declare-fun b!5247427 () Bool)

(assert (=> b!5247427 (= e!3264757 (isEmptyExpr!799 lt!2150123))))

(declare-fun b!5247428 () Bool)

(assert (=> b!5247428 (= e!3264759 e!3264760)))

(declare-fun c!907535 () Bool)

(assert (=> b!5247428 (= c!907535 ((_ is Cons!60723) (t!374030 (exprs!4733 (h!67172 zl!343)))))))

(assert (= (and d!1690702 res!2226778) b!5247422))

(assert (= (and d!1690702 c!907534) b!5247424))

(assert (= (and d!1690702 (not c!907534)) b!5247428))

(assert (= (and b!5247428 c!907535) b!5247426))

(assert (= (and b!5247428 (not c!907535)) b!5247425))

(assert (= (and d!1690702 res!2226777) b!5247419))

(assert (= (and b!5247419 c!907536) b!5247427))

(assert (= (and b!5247419 (not c!907536)) b!5247423))

(assert (= (and b!5247423 c!907533) b!5247421))

(assert (= (and b!5247423 (not c!907533)) b!5247420))

(assert (=> b!5247419 m!6290280))

(declare-fun m!6291142 () Bool)

(assert (=> b!5247426 m!6291142))

(declare-fun m!6291144 () Bool)

(assert (=> b!5247420 m!6291144))

(declare-fun m!6291146 () Bool)

(assert (=> d!1690702 m!6291146))

(declare-fun m!6291148 () Bool)

(assert (=> d!1690702 m!6291148))

(declare-fun m!6291150 () Bool)

(assert (=> b!5247423 m!6291150))

(assert (=> b!5247423 m!6291150))

(declare-fun m!6291152 () Bool)

(assert (=> b!5247423 m!6291152))

(declare-fun m!6291154 () Bool)

(assert (=> b!5247421 m!6291154))

(declare-fun m!6291156 () Bool)

(assert (=> b!5247422 m!6291156))

(declare-fun m!6291158 () Bool)

(assert (=> b!5247427 m!6291158))

(assert (=> b!5246511 d!1690702))

(assert (=> b!5246490 d!1690636))

(declare-fun d!1690704 () Bool)

(assert (=> d!1690704 (= (isEmpty!32659 (t!374031 zl!343)) ((_ is Nil!60724) (t!374031 zl!343)))))

(assert (=> b!5246509 d!1690704))

(declare-fun d!1690706 () Bool)

(declare-fun lt!2150126 () Regex!14849)

(assert (=> d!1690706 (validRegex!6585 lt!2150126)))

(assert (=> d!1690706 (= lt!2150126 (generalisedUnion!778 (unfocusZipperList!291 zl!343)))))

(assert (=> d!1690706 (= (unfocusZipper!591 zl!343) lt!2150126)))

(declare-fun bs!1217647 () Bool)

(assert (= bs!1217647 d!1690706))

(declare-fun m!6291160 () Bool)

(assert (=> bs!1217647 m!6291160))

(assert (=> bs!1217647 m!6290276))

(assert (=> bs!1217647 m!6290276))

(assert (=> bs!1217647 m!6290278))

(assert (=> b!5246487 d!1690706))

(declare-fun bs!1217648 () Bool)

(declare-fun b!5247436 () Bool)

(assert (= bs!1217648 (and b!5247436 d!1690610)))

(declare-fun lambda!264113 () Int)

(assert (=> bs!1217648 (not (= lambda!264113 lambda!264098))))

(declare-fun bs!1217649 () Bool)

(assert (= bs!1217649 (and b!5247436 b!5246505)))

(assert (=> bs!1217649 (not (= lambda!264113 lambda!264043))))

(declare-fun bs!1217650 () Bool)

(assert (= bs!1217650 (and b!5247436 d!1690614)))

(assert (=> bs!1217650 (not (= lambda!264113 lambda!264101))))

(declare-fun bs!1217651 () Bool)

(assert (= bs!1217651 (and b!5247436 b!5247166)))

(assert (=> bs!1217651 (not (= lambda!264113 lambda!264092))))

(declare-fun bs!1217652 () Bool)

(assert (= bs!1217652 (and b!5247436 b!5247017)))

(assert (=> bs!1217652 (= (and (= (reg!15178 r!7292) (reg!15178 lt!2149978)) (= r!7292 lt!2149978)) (= lambda!264113 lambda!264088))))

(assert (=> bs!1217648 (not (= lambda!264113 lambda!264097))))

(declare-fun bs!1217653 () Bool)

(assert (= bs!1217653 (and b!5247436 b!5247015)))

(assert (=> bs!1217653 (not (= lambda!264113 lambda!264089))))

(declare-fun bs!1217654 () Bool)

(assert (= bs!1217654 (and b!5247436 b!5247168)))

(assert (=> bs!1217654 (= (and (= (reg!15178 r!7292) (reg!15178 lt!2149979)) (= r!7292 lt!2149979)) (= lambda!264113 lambda!264091))))

(assert (=> bs!1217649 (not (= lambda!264113 lambda!264042))))

(assert (=> b!5247436 true))

(assert (=> b!5247436 true))

(declare-fun bs!1217655 () Bool)

(declare-fun b!5247434 () Bool)

(assert (= bs!1217655 (and b!5247434 d!1690610)))

(declare-fun lambda!264114 () Int)

(assert (=> bs!1217655 (= lambda!264114 lambda!264098)))

(declare-fun bs!1217656 () Bool)

(assert (= bs!1217656 (and b!5247434 b!5246505)))

(assert (=> bs!1217656 (= lambda!264114 lambda!264043)))

(declare-fun bs!1217657 () Bool)

(assert (= bs!1217657 (and b!5247434 d!1690614)))

(assert (=> bs!1217657 (not (= lambda!264114 lambda!264101))))

(declare-fun bs!1217658 () Bool)

(assert (= bs!1217658 (and b!5247434 b!5247017)))

(assert (=> bs!1217658 (not (= lambda!264114 lambda!264088))))

(assert (=> bs!1217655 (not (= lambda!264114 lambda!264097))))

(declare-fun bs!1217659 () Bool)

(assert (= bs!1217659 (and b!5247434 b!5247015)))

(assert (=> bs!1217659 (= (and (= (regOne!30210 r!7292) (regOne!30210 lt!2149978)) (= (regTwo!30210 r!7292) (regTwo!30210 lt!2149978))) (= lambda!264114 lambda!264089))))

(declare-fun bs!1217660 () Bool)

(assert (= bs!1217660 (and b!5247434 b!5247166)))

(assert (=> bs!1217660 (= (and (= (regOne!30210 r!7292) (regOne!30210 lt!2149979)) (= (regTwo!30210 r!7292) (regTwo!30210 lt!2149979))) (= lambda!264114 lambda!264092))))

(declare-fun bs!1217661 () Bool)

(assert (= bs!1217661 (and b!5247434 b!5247436)))

(assert (=> bs!1217661 (not (= lambda!264114 lambda!264113))))

(declare-fun bs!1217662 () Bool)

(assert (= bs!1217662 (and b!5247434 b!5247168)))

(assert (=> bs!1217662 (not (= lambda!264114 lambda!264091))))

(assert (=> bs!1217656 (not (= lambda!264114 lambda!264042))))

(assert (=> b!5247434 true))

(assert (=> b!5247434 true))

(declare-fun d!1690708 () Bool)

(declare-fun c!907539 () Bool)

(assert (=> d!1690708 (= c!907539 ((_ is EmptyExpr!14849) r!7292))))

(declare-fun e!3264762 () Bool)

(assert (=> d!1690708 (= (matchRSpec!1952 r!7292 s!2326) e!3264762)))

(declare-fun bm!371795 () Bool)

(declare-fun c!907540 () Bool)

(declare-fun call!371801 () Bool)

(assert (=> bm!371795 (= call!371801 (Exists!2030 (ite c!907540 lambda!264113 lambda!264114)))))

(declare-fun b!5247429 () Bool)

(declare-fun e!3264763 () Bool)

(assert (=> b!5247429 (= e!3264763 (matchRSpec!1952 (regTwo!30211 r!7292) s!2326))))

(declare-fun b!5247430 () Bool)

(declare-fun e!3264768 () Bool)

(assert (=> b!5247430 (= e!3264768 e!3264763)))

(declare-fun res!2226779 () Bool)

(assert (=> b!5247430 (= res!2226779 (matchRSpec!1952 (regOne!30211 r!7292) s!2326))))

(assert (=> b!5247430 (=> res!2226779 e!3264763)))

(declare-fun b!5247431 () Bool)

(declare-fun call!371800 () Bool)

(assert (=> b!5247431 (= e!3264762 call!371800)))

(declare-fun b!5247432 () Bool)

(declare-fun c!907538 () Bool)

(assert (=> b!5247432 (= c!907538 ((_ is Union!14849) r!7292))))

(declare-fun e!3264766 () Bool)

(assert (=> b!5247432 (= e!3264766 e!3264768)))

(declare-fun bm!371796 () Bool)

(assert (=> bm!371796 (= call!371800 (isEmpty!32663 s!2326))))

(declare-fun b!5247433 () Bool)

(declare-fun res!2226781 () Bool)

(declare-fun e!3264765 () Bool)

(assert (=> b!5247433 (=> res!2226781 e!3264765)))

(assert (=> b!5247433 (= res!2226781 call!371800)))

(declare-fun e!3264764 () Bool)

(assert (=> b!5247433 (= e!3264764 e!3264765)))

(assert (=> b!5247434 (= e!3264764 call!371801)))

(declare-fun b!5247435 () Bool)

(assert (=> b!5247435 (= e!3264766 (= s!2326 (Cons!60722 (c!907257 r!7292) Nil!60722)))))

(assert (=> b!5247436 (= e!3264765 call!371801)))

(declare-fun b!5247437 () Bool)

(assert (=> b!5247437 (= e!3264768 e!3264764)))

(assert (=> b!5247437 (= c!907540 ((_ is Star!14849) r!7292))))

(declare-fun b!5247438 () Bool)

(declare-fun e!3264767 () Bool)

(assert (=> b!5247438 (= e!3264762 e!3264767)))

(declare-fun res!2226780 () Bool)

(assert (=> b!5247438 (= res!2226780 (not ((_ is EmptyLang!14849) r!7292)))))

(assert (=> b!5247438 (=> (not res!2226780) (not e!3264767))))

(declare-fun b!5247439 () Bool)

(declare-fun c!907537 () Bool)

(assert (=> b!5247439 (= c!907537 ((_ is ElementMatch!14849) r!7292))))

(assert (=> b!5247439 (= e!3264767 e!3264766)))

(assert (= (and d!1690708 c!907539) b!5247431))

(assert (= (and d!1690708 (not c!907539)) b!5247438))

(assert (= (and b!5247438 res!2226780) b!5247439))

(assert (= (and b!5247439 c!907537) b!5247435))

(assert (= (and b!5247439 (not c!907537)) b!5247432))

(assert (= (and b!5247432 c!907538) b!5247430))

(assert (= (and b!5247432 (not c!907538)) b!5247437))

(assert (= (and b!5247430 (not res!2226779)) b!5247429))

(assert (= (and b!5247437 c!907540) b!5247433))

(assert (= (and b!5247437 (not c!907540)) b!5247434))

(assert (= (and b!5247433 (not res!2226781)) b!5247436))

(assert (= (or b!5247436 b!5247434) bm!371795))

(assert (= (or b!5247431 b!5247433) bm!371796))

(declare-fun m!6291162 () Bool)

(assert (=> bm!371795 m!6291162))

(declare-fun m!6291164 () Bool)

(assert (=> b!5247429 m!6291164))

(declare-fun m!6291166 () Bool)

(assert (=> b!5247430 m!6291166))

(assert (=> bm!371796 m!6290806))

(assert (=> b!5246508 d!1690708))

(declare-fun b!5247440 () Bool)

(declare-fun e!3264770 () Bool)

(declare-fun e!3264773 () Bool)

(assert (=> b!5247440 (= e!3264770 e!3264773)))

(declare-fun res!2226788 () Bool)

(assert (=> b!5247440 (=> (not res!2226788) (not e!3264773))))

(declare-fun lt!2150127 () Bool)

(assert (=> b!5247440 (= res!2226788 (not lt!2150127))))

(declare-fun b!5247441 () Bool)

(declare-fun res!2226783 () Bool)

(declare-fun e!3264775 () Bool)

(assert (=> b!5247441 (=> (not res!2226783) (not e!3264775))))

(declare-fun call!371802 () Bool)

(assert (=> b!5247441 (= res!2226783 (not call!371802))))

(declare-fun b!5247442 () Bool)

(declare-fun e!3264772 () Bool)

(assert (=> b!5247442 (= e!3264773 e!3264772)))

(declare-fun res!2226782 () Bool)

(assert (=> b!5247442 (=> res!2226782 e!3264772)))

(assert (=> b!5247442 (= res!2226782 call!371802)))

(declare-fun d!1690710 () Bool)

(declare-fun e!3264774 () Bool)

(assert (=> d!1690710 e!3264774))

(declare-fun c!907541 () Bool)

(assert (=> d!1690710 (= c!907541 ((_ is EmptyExpr!14849) r!7292))))

(declare-fun e!3264769 () Bool)

(assert (=> d!1690710 (= lt!2150127 e!3264769)))

(declare-fun c!907543 () Bool)

(assert (=> d!1690710 (= c!907543 (isEmpty!32663 s!2326))))

(assert (=> d!1690710 (validRegex!6585 r!7292)))

(assert (=> d!1690710 (= (matchR!7034 r!7292 s!2326) lt!2150127)))

(declare-fun b!5247443 () Bool)

(declare-fun res!2226787 () Bool)

(assert (=> b!5247443 (=> res!2226787 e!3264770)))

(assert (=> b!5247443 (= res!2226787 (not ((_ is ElementMatch!14849) r!7292)))))

(declare-fun e!3264771 () Bool)

(assert (=> b!5247443 (= e!3264771 e!3264770)))

(declare-fun b!5247444 () Bool)

(assert (=> b!5247444 (= e!3264769 (matchR!7034 (derivativeStep!4085 r!7292 (head!11247 s!2326)) (tail!10344 s!2326)))))

(declare-fun b!5247445 () Bool)

(assert (=> b!5247445 (= e!3264775 (= (head!11247 s!2326) (c!907257 r!7292)))))

(declare-fun b!5247446 () Bool)

(assert (=> b!5247446 (= e!3264774 (= lt!2150127 call!371802))))

(declare-fun b!5247447 () Bool)

(declare-fun res!2226786 () Bool)

(assert (=> b!5247447 (=> res!2226786 e!3264772)))

(assert (=> b!5247447 (= res!2226786 (not (isEmpty!32663 (tail!10344 s!2326))))))

(declare-fun b!5247448 () Bool)

(assert (=> b!5247448 (= e!3264771 (not lt!2150127))))

(declare-fun b!5247449 () Bool)

(assert (=> b!5247449 (= e!3264774 e!3264771)))

(declare-fun c!907542 () Bool)

(assert (=> b!5247449 (= c!907542 ((_ is EmptyLang!14849) r!7292))))

(declare-fun b!5247450 () Bool)

(assert (=> b!5247450 (= e!3264769 (nullable!5018 r!7292))))

(declare-fun b!5247451 () Bool)

(declare-fun res!2226789 () Bool)

(assert (=> b!5247451 (=> res!2226789 e!3264770)))

(assert (=> b!5247451 (= res!2226789 e!3264775)))

(declare-fun res!2226785 () Bool)

(assert (=> b!5247451 (=> (not res!2226785) (not e!3264775))))

(assert (=> b!5247451 (= res!2226785 lt!2150127)))

(declare-fun b!5247452 () Bool)

(declare-fun res!2226784 () Bool)

(assert (=> b!5247452 (=> (not res!2226784) (not e!3264775))))

(assert (=> b!5247452 (= res!2226784 (isEmpty!32663 (tail!10344 s!2326)))))

(declare-fun bm!371797 () Bool)

(assert (=> bm!371797 (= call!371802 (isEmpty!32663 s!2326))))

(declare-fun b!5247453 () Bool)

(assert (=> b!5247453 (= e!3264772 (not (= (head!11247 s!2326) (c!907257 r!7292))))))

(assert (= (and d!1690710 c!907543) b!5247450))

(assert (= (and d!1690710 (not c!907543)) b!5247444))

(assert (= (and d!1690710 c!907541) b!5247446))

(assert (= (and d!1690710 (not c!907541)) b!5247449))

(assert (= (and b!5247449 c!907542) b!5247448))

(assert (= (and b!5247449 (not c!907542)) b!5247443))

(assert (= (and b!5247443 (not res!2226787)) b!5247451))

(assert (= (and b!5247451 res!2226785) b!5247441))

(assert (= (and b!5247441 res!2226783) b!5247452))

(assert (= (and b!5247452 res!2226784) b!5247445))

(assert (= (and b!5247451 (not res!2226789)) b!5247440))

(assert (= (and b!5247440 res!2226788) b!5247442))

(assert (= (and b!5247442 (not res!2226782)) b!5247447))

(assert (= (and b!5247447 (not res!2226786)) b!5247453))

(assert (= (or b!5247446 b!5247441 b!5247442) bm!371797))

(assert (=> b!5247453 m!6290844))

(assert (=> b!5247452 m!6290848))

(assert (=> b!5247452 m!6290848))

(assert (=> b!5247452 m!6290854))

(assert (=> bm!371797 m!6290806))

(assert (=> d!1690710 m!6290806))

(assert (=> d!1690710 m!6290362))

(assert (=> b!5247445 m!6290844))

(assert (=> b!5247447 m!6290848))

(assert (=> b!5247447 m!6290848))

(assert (=> b!5247447 m!6290854))

(assert (=> b!5247444 m!6290844))

(assert (=> b!5247444 m!6290844))

(declare-fun m!6291168 () Bool)

(assert (=> b!5247444 m!6291168))

(assert (=> b!5247444 m!6290848))

(assert (=> b!5247444 m!6291168))

(assert (=> b!5247444 m!6290848))

(declare-fun m!6291170 () Bool)

(assert (=> b!5247444 m!6291170))

(declare-fun m!6291172 () Bool)

(assert (=> b!5247450 m!6291172))

(assert (=> b!5246508 d!1690710))

(declare-fun d!1690712 () Bool)

(assert (=> d!1690712 (= (matchR!7034 r!7292 s!2326) (matchRSpec!1952 r!7292 s!2326))))

(declare-fun lt!2150128 () Unit!152806)

(assert (=> d!1690712 (= lt!2150128 (choose!39078 r!7292 s!2326))))

(assert (=> d!1690712 (validRegex!6585 r!7292)))

(assert (=> d!1690712 (= (mainMatchTheorem!1952 r!7292 s!2326) lt!2150128)))

(declare-fun bs!1217663 () Bool)

(assert (= bs!1217663 d!1690712))

(assert (=> bs!1217663 m!6290366))

(assert (=> bs!1217663 m!6290364))

(declare-fun m!6291174 () Bool)

(assert (=> bs!1217663 m!6291174))

(assert (=> bs!1217663 m!6290362))

(assert (=> b!5246508 d!1690712))

(declare-fun bs!1217664 () Bool)

(declare-fun d!1690714 () Bool)

(assert (= bs!1217664 (and d!1690714 d!1690580)))

(declare-fun lambda!264115 () Int)

(assert (=> bs!1217664 (= lambda!264115 lambda!264090)))

(declare-fun bs!1217665 () Bool)

(assert (= bs!1217665 (and d!1690714 d!1690536)))

(assert (=> bs!1217665 (= lambda!264115 lambda!264081)))

(declare-fun bs!1217666 () Bool)

(assert (= bs!1217666 (and d!1690714 d!1690640)))

(assert (=> bs!1217666 (= lambda!264115 lambda!264107)))

(declare-fun bs!1217667 () Bool)

(assert (= bs!1217667 (and d!1690714 d!1690702)))

(assert (=> bs!1217667 (= lambda!264115 lambda!264112)))

(declare-fun bs!1217668 () Bool)

(assert (= bs!1217668 (and d!1690714 d!1690694)))

(assert (=> bs!1217668 (= lambda!264115 lambda!264111)))

(declare-fun bs!1217669 () Bool)

(assert (= bs!1217669 (and d!1690714 b!5246495)))

(assert (=> bs!1217669 (= lambda!264115 lambda!264045)))

(declare-fun bs!1217670 () Bool)

(assert (= bs!1217670 (and d!1690714 d!1690638)))

(assert (=> bs!1217670 (= lambda!264115 lambda!264104)))

(declare-fun bs!1217671 () Bool)

(assert (= bs!1217671 (and d!1690714 d!1690674)))

(assert (=> bs!1217671 (= lambda!264115 lambda!264108)))

(assert (=> d!1690714 (= (inv!80369 setElem!33479) (forall!14273 (exprs!4733 setElem!33479) lambda!264115))))

(declare-fun bs!1217672 () Bool)

(assert (= bs!1217672 d!1690714))

(declare-fun m!6291176 () Bool)

(assert (=> bs!1217672 m!6291176))

(assert (=> setNonEmpty!33479 d!1690714))

(declare-fun b!5247465 () Bool)

(declare-fun e!3264778 () Bool)

(declare-fun tp!1468535 () Bool)

(declare-fun tp!1468536 () Bool)

(assert (=> b!5247465 (= e!3264778 (and tp!1468535 tp!1468536))))

(declare-fun b!5247467 () Bool)

(declare-fun tp!1468538 () Bool)

(declare-fun tp!1468534 () Bool)

(assert (=> b!5247467 (= e!3264778 (and tp!1468538 tp!1468534))))

(declare-fun b!5247464 () Bool)

(assert (=> b!5247464 (= e!3264778 tp_is_empty!38951)))

(assert (=> b!5246515 (= tp!1468460 e!3264778)))

(declare-fun b!5247466 () Bool)

(declare-fun tp!1468537 () Bool)

(assert (=> b!5247466 (= e!3264778 tp!1468537)))

(assert (= (and b!5246515 ((_ is ElementMatch!14849) (regOne!30210 r!7292))) b!5247464))

(assert (= (and b!5246515 ((_ is Concat!23694) (regOne!30210 r!7292))) b!5247465))

(assert (= (and b!5246515 ((_ is Star!14849) (regOne!30210 r!7292))) b!5247466))

(assert (= (and b!5246515 ((_ is Union!14849) (regOne!30210 r!7292))) b!5247467))

(declare-fun b!5247469 () Bool)

(declare-fun e!3264779 () Bool)

(declare-fun tp!1468540 () Bool)

(declare-fun tp!1468541 () Bool)

(assert (=> b!5247469 (= e!3264779 (and tp!1468540 tp!1468541))))

(declare-fun b!5247471 () Bool)

(declare-fun tp!1468543 () Bool)

(declare-fun tp!1468539 () Bool)

(assert (=> b!5247471 (= e!3264779 (and tp!1468543 tp!1468539))))

(declare-fun b!5247468 () Bool)

(assert (=> b!5247468 (= e!3264779 tp_is_empty!38951)))

(assert (=> b!5246515 (= tp!1468465 e!3264779)))

(declare-fun b!5247470 () Bool)

(declare-fun tp!1468542 () Bool)

(assert (=> b!5247470 (= e!3264779 tp!1468542)))

(assert (= (and b!5246515 ((_ is ElementMatch!14849) (regTwo!30210 r!7292))) b!5247468))

(assert (= (and b!5246515 ((_ is Concat!23694) (regTwo!30210 r!7292))) b!5247469))

(assert (= (and b!5246515 ((_ is Star!14849) (regTwo!30210 r!7292))) b!5247470))

(assert (= (and b!5246515 ((_ is Union!14849) (regTwo!30210 r!7292))) b!5247471))

(declare-fun b!5247476 () Bool)

(declare-fun e!3264782 () Bool)

(declare-fun tp!1468548 () Bool)

(declare-fun tp!1468549 () Bool)

(assert (=> b!5247476 (= e!3264782 (and tp!1468548 tp!1468549))))

(assert (=> b!5246503 (= tp!1468463 e!3264782)))

(assert (= (and b!5246503 ((_ is Cons!60723) (exprs!4733 (h!67172 zl!343)))) b!5247476))

(declare-fun b!5247484 () Bool)

(declare-fun e!3264788 () Bool)

(declare-fun tp!1468554 () Bool)

(assert (=> b!5247484 (= e!3264788 tp!1468554)))

(declare-fun b!5247483 () Bool)

(declare-fun e!3264787 () Bool)

(declare-fun tp!1468555 () Bool)

(assert (=> b!5247483 (= e!3264787 (and (inv!80369 (h!67172 (t!374031 zl!343))) e!3264788 tp!1468555))))

(assert (=> b!5246514 (= tp!1468462 e!3264787)))

(assert (= b!5247483 b!5247484))

(assert (= (and b!5246514 ((_ is Cons!60724) (t!374031 zl!343))) b!5247483))

(declare-fun m!6291178 () Bool)

(assert (=> b!5247483 m!6291178))

(declare-fun b!5247486 () Bool)

(declare-fun e!3264789 () Bool)

(declare-fun tp!1468557 () Bool)

(declare-fun tp!1468558 () Bool)

(assert (=> b!5247486 (= e!3264789 (and tp!1468557 tp!1468558))))

(declare-fun b!5247488 () Bool)

(declare-fun tp!1468560 () Bool)

(declare-fun tp!1468556 () Bool)

(assert (=> b!5247488 (= e!3264789 (and tp!1468560 tp!1468556))))

(declare-fun b!5247485 () Bool)

(assert (=> b!5247485 (= e!3264789 tp_is_empty!38951)))

(assert (=> b!5246483 (= tp!1468456 e!3264789)))

(declare-fun b!5247487 () Bool)

(declare-fun tp!1468559 () Bool)

(assert (=> b!5247487 (= e!3264789 tp!1468559)))

(assert (= (and b!5246483 ((_ is ElementMatch!14849) (reg!15178 r!7292))) b!5247485))

(assert (= (and b!5246483 ((_ is Concat!23694) (reg!15178 r!7292))) b!5247486))

(assert (= (and b!5246483 ((_ is Star!14849) (reg!15178 r!7292))) b!5247487))

(assert (= (and b!5246483 ((_ is Union!14849) (reg!15178 r!7292))) b!5247488))

(declare-fun b!5247490 () Bool)

(declare-fun e!3264790 () Bool)

(declare-fun tp!1468562 () Bool)

(declare-fun tp!1468563 () Bool)

(assert (=> b!5247490 (= e!3264790 (and tp!1468562 tp!1468563))))

(declare-fun b!5247492 () Bool)

(declare-fun tp!1468565 () Bool)

(declare-fun tp!1468561 () Bool)

(assert (=> b!5247492 (= e!3264790 (and tp!1468565 tp!1468561))))

(declare-fun b!5247489 () Bool)

(assert (=> b!5247489 (= e!3264790 tp_is_empty!38951)))

(assert (=> b!5246482 (= tp!1468457 e!3264790)))

(declare-fun b!5247491 () Bool)

(declare-fun tp!1468564 () Bool)

(assert (=> b!5247491 (= e!3264790 tp!1468564)))

(assert (= (and b!5246482 ((_ is ElementMatch!14849) (regOne!30211 r!7292))) b!5247489))

(assert (= (and b!5246482 ((_ is Concat!23694) (regOne!30211 r!7292))) b!5247490))

(assert (= (and b!5246482 ((_ is Star!14849) (regOne!30211 r!7292))) b!5247491))

(assert (= (and b!5246482 ((_ is Union!14849) (regOne!30211 r!7292))) b!5247492))

(declare-fun b!5247494 () Bool)

(declare-fun e!3264791 () Bool)

(declare-fun tp!1468567 () Bool)

(declare-fun tp!1468568 () Bool)

(assert (=> b!5247494 (= e!3264791 (and tp!1468567 tp!1468568))))

(declare-fun b!5247496 () Bool)

(declare-fun tp!1468570 () Bool)

(declare-fun tp!1468566 () Bool)

(assert (=> b!5247496 (= e!3264791 (and tp!1468570 tp!1468566))))

(declare-fun b!5247493 () Bool)

(assert (=> b!5247493 (= e!3264791 tp_is_empty!38951)))

(assert (=> b!5246482 (= tp!1468459 e!3264791)))

(declare-fun b!5247495 () Bool)

(declare-fun tp!1468569 () Bool)

(assert (=> b!5247495 (= e!3264791 tp!1468569)))

(assert (= (and b!5246482 ((_ is ElementMatch!14849) (regTwo!30211 r!7292))) b!5247493))

(assert (= (and b!5246482 ((_ is Concat!23694) (regTwo!30211 r!7292))) b!5247494))

(assert (= (and b!5246482 ((_ is Star!14849) (regTwo!30211 r!7292))) b!5247495))

(assert (= (and b!5246482 ((_ is Union!14849) (regTwo!30211 r!7292))) b!5247496))

(declare-fun condSetEmpty!33485 () Bool)

(assert (=> setNonEmpty!33479 (= condSetEmpty!33485 (= setRest!33479 ((as const (Array Context!8466 Bool)) false)))))

(declare-fun setRes!33485 () Bool)

(assert (=> setNonEmpty!33479 (= tp!1468458 setRes!33485)))

(declare-fun setIsEmpty!33485 () Bool)

(assert (=> setIsEmpty!33485 setRes!33485))

(declare-fun setElem!33485 () Context!8466)

(declare-fun tp!1468575 () Bool)

(declare-fun e!3264794 () Bool)

(declare-fun setNonEmpty!33485 () Bool)

(assert (=> setNonEmpty!33485 (= setRes!33485 (and tp!1468575 (inv!80369 setElem!33485) e!3264794))))

(declare-fun setRest!33485 () (InoxSet Context!8466))

(assert (=> setNonEmpty!33485 (= setRest!33479 ((_ map or) (store ((as const (Array Context!8466 Bool)) false) setElem!33485 true) setRest!33485))))

(declare-fun b!5247501 () Bool)

(declare-fun tp!1468576 () Bool)

(assert (=> b!5247501 (= e!3264794 tp!1468576)))

(assert (= (and setNonEmpty!33479 condSetEmpty!33485) setIsEmpty!33485))

(assert (= (and setNonEmpty!33479 (not condSetEmpty!33485)) setNonEmpty!33485))

(assert (= setNonEmpty!33485 b!5247501))

(declare-fun m!6291180 () Bool)

(assert (=> setNonEmpty!33485 m!6291180))

(declare-fun b!5247502 () Bool)

(declare-fun e!3264795 () Bool)

(declare-fun tp!1468577 () Bool)

(declare-fun tp!1468578 () Bool)

(assert (=> b!5247502 (= e!3264795 (and tp!1468577 tp!1468578))))

(assert (=> b!5246517 (= tp!1468464 e!3264795)))

(assert (= (and b!5246517 ((_ is Cons!60723) (exprs!4733 setElem!33479))) b!5247502))

(declare-fun b!5247507 () Bool)

(declare-fun e!3264798 () Bool)

(declare-fun tp!1468581 () Bool)

(assert (=> b!5247507 (= e!3264798 (and tp_is_empty!38951 tp!1468581))))

(assert (=> b!5246512 (= tp!1468461 e!3264798)))

(assert (= (and b!5246512 ((_ is Cons!60722) (t!374029 s!2326))) b!5247507))

(declare-fun b_lambda!202741 () Bool)

(assert (= b_lambda!202733 (or b!5246484 b_lambda!202741)))

(declare-fun bs!1217673 () Bool)

(declare-fun d!1690716 () Bool)

(assert (= bs!1217673 (and d!1690716 b!5246484)))

(assert (=> bs!1217673 (= (dynLambda!23998 lambda!264044 (h!67172 zl!343)) (derivationStepZipperUp!221 (h!67172 zl!343) (h!67170 s!2326)))))

(assert (=> bs!1217673 m!6290334))

(assert (=> d!1690630 d!1690716))

(declare-fun b_lambda!202743 () Bool)

(assert (= b_lambda!202737 (or b!5246484 b_lambda!202743)))

(declare-fun bs!1217674 () Bool)

(declare-fun d!1690718 () Bool)

(assert (= bs!1217674 (and d!1690718 b!5246484)))

(assert (=> bs!1217674 (= (dynLambda!23998 lambda!264044 lt!2149991) (derivationStepZipperUp!221 lt!2149991 (h!67170 s!2326)))))

(assert (=> bs!1217674 m!6290304))

(assert (=> d!1690670 d!1690718))

(declare-fun b_lambda!202745 () Bool)

(assert (= b_lambda!202739 (or b!5246495 b_lambda!202745)))

(declare-fun bs!1217675 () Bool)

(declare-fun d!1690720 () Bool)

(assert (= bs!1217675 (and d!1690720 b!5246495)))

(assert (=> bs!1217675 (= (dynLambda!23999 lambda!264045 (h!67171 lt!2149967)) (validRegex!6585 (h!67171 lt!2149967)))))

(declare-fun m!6291182 () Bool)

(assert (=> bs!1217675 m!6291182))

(assert (=> b!5247405 d!1690720))

(declare-fun b_lambda!202747 () Bool)

(assert (= b_lambda!202735 (or b!5246484 b_lambda!202747)))

(declare-fun bs!1217676 () Bool)

(declare-fun d!1690722 () Bool)

(assert (= bs!1217676 (and d!1690722 b!5246484)))

(assert (=> bs!1217676 (= (dynLambda!23998 lambda!264044 lt!2149996) (derivationStepZipperUp!221 lt!2149996 (h!67170 s!2326)))))

(assert (=> bs!1217676 m!6290306))

(assert (=> d!1690656 d!1690722))

(check-sat (not d!1690636) (not b!5247398) (not bm!371772) (not b!5247507) (not b!5247162) (not b!5247445) (not b!5247367) (not bm!371745) (not b!5246892) (not b!5247411) (not b!5247299) (not b!5247343) (not bm!371774) (not b!5247348) (not d!1690620) (not b!5247103) (not b!5247038) (not d!1690650) (not d!1690664) (not b!5247300) (not b!5247406) (not b!5247042) (not d!1690670) (not b!5247137) (not b!5247266) (not d!1690680) (not b!5247359) (not b!5247471) (not b!5247444) (not b!5247036) (not b!5247488) (not b!5247010) (not b!5247335) (not bm!371771) (not bm!371796) (not b!5247271) (not bm!371794) (not b!5247195) (not b!5247350) (not b!5247011) (not b!5247467) (not b!5247397) (not d!1690602) (not b!5247421) (not d!1690612) (not b!5246893) (not b!5247496) (not b!5247426) (not b!5247476) (not b!5247465) (not d!1690608) (not b!5247413) (not b!5247396) (not bm!371761) (not bs!1217676) (not bs!1217674) (not b!5247152) (not d!1690686) (not d!1690682) (not d!1690588) (not b!5247305) (not b!5247146) (not bm!371763) (not b!5247298) (not b!5247159) (not b!5247261) (not d!1690580) (not b!5247412) (not b!5247483) (not b!5247161) (not d!1690532) (not b!5247215) (not b!5247340) (not bm!371779) (not d!1690678) (not b!5247494) (not b!5247274) (not b!5247339) (not b!5247490) (not b!5247366) (not d!1690648) (not b!5247466) (not b!5247410) (not b!5247487) (not b!5247414) (not d!1690606) (not b!5247360) (not b!5247196) (not b!5247452) (not d!1690534) (not bs!1217675) (not b!5247341) (not d!1690630) (not d!1690702) (not b!5247417) (not b!5246894) (not b!5247491) (not b_lambda!202745) (not d!1690692) (not b!5247143) (not b!5247361) (not d!1690710) (not setNonEmpty!33485) (not b!5246891) (not b_lambda!202747) (not d!1690616) tp_is_empty!38951 (not b!5247337) (not bm!371792) (not b!5247301) (not d!1690658) (not b!5247246) (not d!1690600) (not b_lambda!202743) (not b!5247320) (not d!1690714) (not b!5247138) (not b!5247502) (not b!5247151) (not b!5247190) (not bm!371778) (not b!5247275) (not b!5246898) (not b!5247264) (not bm!371746) (not d!1690632) (not bm!371770) (not d!1690660) (not b!5247429) (not d!1690674) (not b!5247450) (not d!1690706) (not b!5246899) (not d!1690638) (not d!1690640) (not bm!371795) (not b!5247470) (not d!1690690) (not b!5247310) (not d!1690656) (not bm!371797) (not b!5247430) (not b!5247104) (not d!1690536) (not b!5247198) (not b!5247419) (not d!1690688) (not d!1690614) (not d!1690654) (not b!5247303) (not b!5247501) (not b!5247400) (not b!5247345) (not b!5247392) (not b!5246895) (not b!5247336) (not bm!371785) (not b!5247192) (not b!5247197) (not b!5247334) (not b!5247415) (not b!5247269) (not d!1690618) (not b!5247427) (not b!5247035) (not bm!371780) (not b!5247154) (not b!5247422) (not b!5247160) (not b!5247342) (not b!5247037) (not bm!371784) (not d!1690598) (not b!5247140) (not d!1690586) (not b!5247362) (not d!1690652) (not bm!371773) (not b!5247409) (not b!5247447) (not b!5247420) (not bm!371741) (not d!1690666) (not bm!371748) (not b!5247043) (not b!5247039) (not b!5247469) (not b!5247214) (not b!5247357) (not b!5247495) (not b!5247399) (not b!5247486) (not b_lambda!202741) (not b!5247259) (not b!5247296) (not bs!1217673) (not bm!371747) (not d!1690646) (not b!5247363) (not b!5247484) (not bm!371769) (not b!5247157) (not d!1690622) (not b!5247331) (not bm!371762) (not b!5247492) (not d!1690694) (not d!1690712) (not b!5247213) (not b!5247338) (not bm!371740) (not b!5247423) (not b!5247453) (not b!5247145) (not d!1690610))
(check-sat)
